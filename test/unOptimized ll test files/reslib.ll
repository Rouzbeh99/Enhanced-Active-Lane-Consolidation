; ModuleID = 'reslib.c'
source_filename = "reslib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.reslib_t = type { %struct.reslib_t*, i8*, i32, i32, %struct.residue_t* }
%struct.residue_t = type { %struct.residue_t*, i32, i32, i32, i8*, i8*, i32, i32, i32, %struct.strand_t*, %struct.extbond_t*, i32, [2 x i32]*, i32, %struct.chiral_t*, i32, i32*, %struct.atom_t* }
%struct.strand_t = type { i8*, i32, i32, %struct.molecule_t*, %struct.strand_t*, i32, i32, %struct.residue_t** }
%struct.molecule_t = type { [4 x [3 x double]], i32, %struct.strand_t*, i32, i32, i32, %struct.parm* }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, [3 x double], double, double, double, double, double, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double* }
%struct.extbond_t = type { %struct.extbond_t*, i32, i32, i32 }
%struct.chiral_t = type { [4 x i32], double }
%struct.atom_t = type { i8*, i8*, i32, i32, [8 x i32], %struct.residue_t*, double, double, double, double, i8*, i32, double, double, i32, i32, i8*, [3 x double], double }
%struct.DATABASEt = type { i32, %struct._IO_FILE*, [256 x i8], i32, i32, [10 x [256 x i8]], i8, i8*, i32, [1000 x i8], i32, [256 x i8], i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"getreslibkind: unknown reslib %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dna\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rna\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DNA\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ADE\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"GUA\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"DG\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"THY\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"CYT\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"URA\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@e_msg = internal global [256 x i8] zeroinitializer, align 16
@.str.23 = private unnamed_addr constant [21 x i8] c"%s not in library %s\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"Residue %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"new residue %s\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"atoms in new residue %s\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"atom index in new residue %s\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"bonds in new residue %s\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"chirality in residue %s\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"copyresidue: can't allocate new r_resname.\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"copyresidue: can't allocate new r_resid.\0A\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"copyresidue: can't allocate anp.\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"new strand %s\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"copystrand pointer array\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"strandname %s\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"copymolecule\00", align 1
@reslibs = internal global %struct.reslib_t* null, align 8
@.str.38 = private unnamed_addr constant [5 x i8] c".lib\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"../leap/lib/%s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Can't open residue library %s.\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"new reslib %s\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"name for new reslib %s\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"atomtype\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"united\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"pdb\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"pdb file %s\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"bnd\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"bnd file %s\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"qr file %s\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"chi\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"chi file %s\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"%-*.*s\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Incorrect line in residue library header %s...\0A\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"%s/reslib/%s\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c".\00", align 1
@initatoms.init = internal global i32 1, align 4
@atoms = internal global [1000 x %struct.atom_t] zeroinitializer, align 16
@.str.64 = private unnamed_addr constant [39 x i8] c"initatoms: can't allocate a_atomname.\0A\00", align 1
@n_atoms = internal global i32 0, align 4
@.str.65 = private unnamed_addr constant [7 x i8] c"!index\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"entry.%s.\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"unit.name\00", align 1
@lr_name = internal global [8 x i8] zeroinitializer, align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"unit.atoms\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"unit.positions\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"unit.connectivity\00", align 1
@n_bonds = internal global i32 0, align 4
@bonds = internal global [1000 x [2 x i32]] zeroinitializer, align 16
@.str.71 = private unnamed_addr constant [24 x i8] c"residue %s in reslib %s\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"atoms in residue %s in reslib %s\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"addres2reslib: can't allocate new r_resname.\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"addres2reslib: can't allocate new r_resid.\0A\00", align 1
@.str.75 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"addres2reslib: can't allocate anp.\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"bonds of residue %s\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"%s not in reslib %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"REMARK\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"%s %d %s %s %d %lf %lf %lf\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"REMARK RESLIB %s %s\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"UNITED\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"ALLATOM\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"# %s\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"Incorrect header line in bond file: %s...\0A\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.89 = private unnamed_addr constant [41 x i8] c"Incorrect data line in bond file: %s...\0A\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"REM\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"%s %d %s %s %d %lf %lf\00", align 1
@n_chi = internal global i32 0, align 4
@.str.92 = private unnamed_addr constant [44 x i8] c"chi2reslib: bad line in chirality file: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"chi2reslib: res %s not in %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"chi2reslib: atom \22%s\22 not in residue \22%s\22\0A\00", align 1
@chi = internal global [500 x %struct.chiral_t] zeroinitializer, align 16
@.str.96 = private unnamed_addr constant [44 x i8] c"addchi2reslib: can't alloc r_chiral for %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"addchi2reslib: res %s not reslib %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getreslibkind(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.reslib_t*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.reslib_t* @known_reslib(i8* %6)
  store %struct.reslib_t* %7, %struct.reslib_t** %5, align 8
  %8 = icmp eq %struct.reslib_t* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.reslib_t* @read_reslib(i8* %10)
  store %struct.reslib_t* %11, %struct.reslib_t** %5, align 8
  %12 = icmp eq %struct.reslib_t* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %15)
  call void @exit(i32 1) #5
  unreachable

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.reslib_t*, %struct.reslib_t** %5, align 8
  %20 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %43

24:                                               ; preds = %18
  %25 = load %struct.reslib_t*, %struct.reslib_t** %5, align 8
  %26 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %43

30:                                               ; preds = %24
  %31 = load %struct.reslib_t*, %struct.reslib_t** %5, align 8
  %32 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %43

36:                                               ; preds = %30
  %37 = load %struct.reslib_t*, %struct.reslib_t** %5, align 8
  %38 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %43

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %43

43:                                               ; preds = %42, %41, %35, %29, %23
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reslib_t* @known_reslib(i8* %0) #0 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.reslib_t*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8
  store %struct.reslib_t* %5, %struct.reslib_t** %4, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  %8 = icmp ne %struct.reslib_t* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  %11 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcmp(i8* %12, i8* %13) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  store %struct.reslib_t* %17, %struct.reslib_t** %2, align 8
  br label %24

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  %21 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %20, i32 0, i32 0
  %22 = load %struct.reslib_t*, %struct.reslib_t** %21, align 8
  store %struct.reslib_t* %22, %struct.reslib_t** %4, align 8
  br label %6

23:                                               ; preds = %6
  store %struct.reslib_t* null, %struct.reslib_t** %2, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  ret %struct.reslib_t* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reslib_t* @read_reslib(i8* %0) #0 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct.reslib_t*, align 8
  %9 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %12 = call %struct.reslib_t* @read_reslib_header(i8* %10, %struct._IO_FILE** %4, %struct._IO_FILE** %5, %struct._IO_FILE** %6, %struct._IO_FILE** %7, i8* %11)
  store %struct.reslib_t* %12, %struct.reslib_t** %8, align 8
  %13 = icmp eq %struct.reslib_t* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.reslib_t* null, %struct.reslib_t** %2, align 8
  br label %49

15:                                               ; preds = %1
  call void @initatoms()
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %17 = load i8, i8* %16, align 16
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %21 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  call void @off2reslib(i8* %20, %struct.reslib_t* %21)
  br label %31

22:                                               ; preds = %15
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %24 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  call void @pdb2reslib(%struct._IO_FILE* %23, %struct.reslib_t* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %26 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  call void @bnd2reslib(%struct._IO_FILE* %25, %struct.reslib_t* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = call i32 @fclose(%struct._IO_FILE* %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %30 = call i32 @fclose(%struct._IO_FILE* %29)
  br label %31

31:                                               ; preds = %22, %19
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %33 = icmp ne %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %36 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  call void @qr2reslib(%struct._IO_FILE* %35, %struct.reslib_t* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %38 = call i32 @fclose(%struct._IO_FILE* %37)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %41 = icmp ne %struct._IO_FILE* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %44 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  call void @chi2reslib(%struct._IO_FILE* %43, %struct.reslib_t* %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %46 = call i32 @fclose(%struct._IO_FILE* %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  store %struct.reslib_t* %48, %struct.reslib_t** %2, align 8
  br label %49

49:                                               ; preds = %47, %14
  %50 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  ret %struct.reslib_t* %50
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.reslib_t*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.reslib_t* @known_reslib(i8* %7)
  store %struct.reslib_t* %8, %struct.reslib_t** %6, align 8
  %9 = icmp eq %struct.reslib_t* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.reslib_t* @read_reslib(i8* %11)
  store %struct.reslib_t* %12, %struct.reslib_t** %6, align 8
  %13 = icmp eq %struct.reslib_t* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %16)
  call void @exit(i32 1) #5
  unreachable

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8
  %21 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8
  %31 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  br label %56

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #6
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8
  %42 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %41, i32 0, i32 2
  store i32 2, i32* %42, align 8
  br label %55

43:                                               ; preds = %36
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8
  %53 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %52, i32 0, i32 2
  store i32 3, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8
  %58 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  ret i32 %59
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca %struct.reslib_t*, align 8
  %9 = alloca %struct.residue_t*, align 8
  %10 = alloca %struct.residue_t*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.reslib_t* @known_reslib(i8* %11)
  store %struct.reslib_t* %12, %struct.reslib_t** %8, align 8
  %13 = icmp eq %struct.reslib_t* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.reslib_t* @read_reslib(i8* %15)
  store %struct.reslib_t* %16, %struct.reslib_t** %8, align 8
  %17 = icmp eq %struct.reslib_t* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @exit(i32 1) #5
  unreachable

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @strcpy(i8* %21, i8* %22) #7
  %24 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  %25 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %60

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #6
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %34 = call i8* @strcpy(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #7
  br label %59

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #6
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #7
  br label %58

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #6
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %48 = call i8* @strcpy(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #7
  br label %57

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #6
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %55 = call i8* @strcpy(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #7
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %32
  br label %98

60:                                               ; preds = %20
  %61 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  %62 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %97

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #6
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %71 = call i8* @strcpy(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #7
  br label %96

72:                                               ; preds = %65
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #6
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %78 = call i8* @strcpy(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #7
  br label %95

79:                                               ; preds = %72
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strncmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #6
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %85 = call i8* @strcpy(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #7
  br label %94

86:                                               ; preds = %79
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @strncmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #6
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %92 = call i8* @strcpy(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #7
  br label %93

93:                                               ; preds = %90, %86
  br label %94

94:                                               ; preds = %93, %83
  br label %95

95:                                               ; preds = %94, %76
  br label %96

96:                                               ; preds = %95, %69
  br label %97

97:                                               ; preds = %96, %60
  br label %98

98:                                               ; preds = %97, %59
  %99 = load i8*, i8** %4, align 8
  %100 = call i8* @strstr(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #6
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %104 = call i8* @strcat(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #7
  br label %113

105:                                              ; preds = %98
  %106 = load i8*, i8** %4, align 8
  %107 = call i8* @strstr(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #6
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %111 = call i8* @strcat(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #7
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %102
  %114 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8
  %115 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %114, i32 0, i32 4
  %116 = load %struct.residue_t*, %struct.residue_t** %115, align 8
  store %struct.residue_t* %116, %struct.residue_t** %9, align 8
  br label %117

117:                                              ; preds = %136, %113
  %118 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %119 = icmp ne %struct.residue_t* %118, null
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %122 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @strcmp(i8* %123, i8* %124) #6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %120
  %128 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %129 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %132 = call i32 @strcmp(i8* %130, i8* %131) #6
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127, %120
  br label %140

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %138 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %137, i32 0, i32 0
  %139 = load %struct.residue_t*, %struct.residue_t** %138, align 8
  store %struct.residue_t* %139, %struct.residue_t** %9, align 8
  br label %117

140:                                              ; preds = %134, %117
  %141 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %142 = icmp eq %struct.residue_t* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i8*, i8** %4, align 8
  %145 = load i8*, i8** %5, align 8
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %144, i8* %145) #7
  %147 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.residue_t* null, %struct.residue_t** %3, align 8
  br label %152

148:                                              ; preds = %140
  %149 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %150 = call %struct.residue_t* @copyresidue(%struct.residue_t* %149)
  store %struct.residue_t* %150, %struct.residue_t** %10, align 8
  %151 = load %struct.residue_t*, %struct.residue_t** %10, align 8
  store %struct.residue_t* %151, %struct.residue_t** %3, align 8
  br label %152

152:                                              ; preds = %148, %143
  %153 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  ret %struct.residue_t* %153
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

declare dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) #0 {
  %2 = alloca %struct.residue_t*, align 8
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.residue_t*, align 8
  %10 = alloca %struct.atom_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [2 x i32]*, align 8
  %14 = alloca %struct.chiral_t*, align 8
  store %struct.residue_t* %0, %struct.residue_t** %3, align 8
  %15 = call noalias i8* @malloc(i64 128) #7
  %16 = bitcast i8* %15 to %struct.residue_t*
  store %struct.residue_t* %16, %struct.residue_t** %9, align 8
  %17 = icmp eq %struct.residue_t* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %21) #7
  %23 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.residue_t* null, %struct.residue_t** %2, align 8
  br label %632

24:                                               ; preds = %1
  %25 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 176
  %30 = call noalias i8* @malloc(i64 %29) #7
  %31 = bitcast i8* %30 to %struct.atom_t*
  store %struct.atom_t* %31, %struct.atom_t** %10, align 8
  %32 = icmp eq %struct.atom_t* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %36) #7
  %38 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.residue_t* null, %struct.residue_t** %2, align 8
  br label %632

39:                                               ; preds = %24
  %40 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = call noalias i8* @malloc(i64 %44) #7
  %46 = bitcast i8* %45 to i32*
  store i32* %46, i32** %8, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %51) #7
  %53 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.residue_t* null, %struct.residue_t** %2, align 8
  br label %632

54:                                               ; preds = %39
  %55 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %61 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = call noalias i8* @malloc(i64 %64) #7
  %66 = bitcast i8* %65 to [2 x i32]*
  store [2 x i32]* %66, [2 x i32]** %13, align 8
  %67 = icmp eq [2 x i32]* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %70 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %71) #7
  %73 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.residue_t* null, %struct.residue_t** %2, align 8
  br label %632

74:                                               ; preds = %59
  br label %76

75:                                               ; preds = %54
  store [2 x i32]* null, [2 x i32]** %13, align 8
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %77, i32 0, i32 13
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 24
  %87 = call noalias i8* @malloc(i64 %86) #7
  %88 = bitcast i8* %87 to %struct.chiral_t*
  store %struct.chiral_t* %88, %struct.chiral_t** %14, align 8
  %89 = icmp eq %struct.chiral_t* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %93) #7
  %95 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.residue_t* null, %struct.residue_t** %2, align 8
  br label %632

96:                                               ; preds = %81
  br label %98

97:                                               ; preds = %76
  store %struct.chiral_t* null, %struct.chiral_t** %14, align 8
  br label %98

98:                                               ; preds = %97, %96
  %99 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %99, i32 0, i32 0
  store %struct.residue_t* null, %struct.residue_t** %100, align 8
  %101 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @strlen(i8* %103) #6
  %105 = add i64 %104, 1
  %106 = call noalias i8* @malloc(i64 %105) #7
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

112:                                              ; preds = %98
  %113 = load i8*, i8** %12, align 8
  %114 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @strcpy(i8* %113, i8* %116) #7
  %118 = load i8*, i8** %12, align 8
  %119 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %122 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strlen(i8* %123) #6
  %125 = add i64 %124, 1
  %126 = call noalias i8* @malloc(i64 %125) #7
  store i8* %126, i8** %12, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %112
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

132:                                              ; preds = %112
  %133 = load i8*, i8** %12, align 8
  %134 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %135 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @strcpy(i8* %133, i8* %136) #7
  %138 = load i8*, i8** %12, align 8
  %139 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %140 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  %141 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %142 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %145 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %147 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %146, i32 0, i32 2
  store i32 0, i32* %147, align 4
  %148 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %149 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %148, i32 0, i32 3
  store i32 0, i32* %149, align 8
  %150 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %151 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %154 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %156 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %155, i32 0, i32 9
  store %struct.strand_t* null, %struct.strand_t** %156, align 8
  %157 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %158 = call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* %157)
  %159 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %159, i32 0, i32 10
  store %struct.extbond_t* %158, %struct.extbond_t** %160, align 8
  %161 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %162 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %165 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %164, i32 0, i32 11
  store i32 %163, i32* %165, align 8
  %166 = load [2 x i32]*, [2 x i32]** %13, align 8
  %167 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %168 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %167, i32 0, i32 12
  store [2 x i32]* %166, [2 x i32]** %168, align 8
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %206, %132
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %209

175:                                              ; preds = %169
  %176 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %177 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %176, i32 0, i32 12
  %178 = load [2 x i32]*, [2 x i32]** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %178, i64 %180
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %181, i64 0, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %185 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %184, i32 0, i32 12
  %186 = load [2 x i32]*, [2 x i32]** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %186, i64 %188
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %189, i64 0, i64 0
  store i32 %183, i32* %190, align 4
  %191 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %192 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %191, i32 0, i32 12
  %193 = load [2 x i32]*, [2 x i32]** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %193, i64 %195
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %200 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %199, i32 0, i32 12
  %201 = load [2 x i32]*, [2 x i32]** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %201, i64 %203
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %204, i64 0, i64 1
  store i32 %198, i32* %205, align 4
  br label %206

206:                                              ; preds = %175
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %5, align 4
  br label %169

209:                                              ; preds = %169
  %210 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %211 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %210, i32 0, i32 13
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %214 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %213, i32 0, i32 13
  store i32 %212, i32* %214, align 8
  %215 = load %struct.chiral_t*, %struct.chiral_t** %14, align 8
  %216 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %217 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %216, i32 0, i32 14
  store %struct.chiral_t* %215, %struct.chiral_t** %217, align 8
  %218 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %219 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i32 0, i32 14
  %220 = load %struct.chiral_t*, %struct.chiral_t** %219, align 8
  store %struct.chiral_t* %220, %struct.chiral_t** %14, align 8
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %262, %209
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %224 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %223, i32 0, i32 13
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %267

227:                                              ; preds = %221
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %248, %227
  %229 = load i32, i32* %4, align 4
  %230 = icmp slt i32 %229, 4
  br i1 %230, label %231, label %251

231:                                              ; preds = %228
  %232 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %233 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %232, i32 0, i32 14
  %234 = load %struct.chiral_t*, %struct.chiral_t** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %234, i64 %236
  %238 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %237, i32 0, i32 0
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %238, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.chiral_t*, %struct.chiral_t** %14, align 8
  %244 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %243, i32 0, i32 0
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %244, i64 0, i64 %246
  store i32 %242, i32* %247, align 4
  br label %248

248:                                              ; preds = %231
  %249 = load i32, i32* %4, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %4, align 4
  br label %228

251:                                              ; preds = %228
  %252 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %253 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %252, i32 0, i32 14
  %254 = load %struct.chiral_t*, %struct.chiral_t** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %254, i64 %256
  %258 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %257, i32 0, i32 1
  %259 = load double, double* %258, align 8
  %260 = load %struct.chiral_t*, %struct.chiral_t** %14, align 8
  %261 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %260, i32 0, i32 1
  store double %259, double* %261, align 8
  br label %262

262:                                              ; preds = %251
  %263 = load i32, i32* %6, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %6, align 4
  %265 = load %struct.chiral_t*, %struct.chiral_t** %14, align 8
  %266 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %265, i32 1
  store %struct.chiral_t* %266, %struct.chiral_t** %14, align 8
  br label %221

267:                                              ; preds = %221
  %268 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %269 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %272 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %271, i32 0, i32 7
  store i32 %270, i32* %272, align 4
  %273 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %274 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %277 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %276, i32 0, i32 8
  store i32 %275, i32* %277, align 8
  %278 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %279 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %278, i32 0, i32 15
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %282 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %281, i32 0, i32 15
  store i32 %280, i32* %282, align 8
  %283 = load i32*, i32** %8, align 8
  %284 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %285 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %284, i32 0, i32 16
  store i32* %283, i32** %285, align 8
  %286 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %287 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %286, i32 0, i32 16
  %288 = load i32*, i32** %287, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %315

290:                                              ; preds = %267
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %311, %290
  %292 = load i32, i32* %4, align 4
  %293 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %294 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %293, i32 0, i32 15
  %295 = load i32, i32* %294, align 8
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %314

297:                                              ; preds = %291
  %298 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %299 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %298, i32 0, i32 16
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %4, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %306 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %305, i32 0, i32 16
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %4, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %304, i32* %310, align 4
  br label %311

311:                                              ; preds = %297
  %312 = load i32, i32* %4, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %4, align 4
  br label %291

314:                                              ; preds = %291
  br label %334

315:                                              ; preds = %267
  store i32 0, i32* %4, align 4
  br label %316

316:                                              ; preds = %330, %315
  %317 = load i32, i32* %4, align 4
  %318 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %319 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %318, i32 0, i32 15
  %320 = load i32, i32* %319, align 8
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %322, label %333

322:                                              ; preds = %316
  %323 = load i32, i32* %4, align 4
  %324 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %325 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %324, i32 0, i32 16
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %4, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %323, i32* %329, align 4
  br label %330

330:                                              ; preds = %322
  %331 = load i32, i32* %4, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %4, align 4
  br label %316

333:                                              ; preds = %316
  br label %334

334:                                              ; preds = %333, %314
  %335 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %336 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %337 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %336, i32 0, i32 17
  store %struct.atom_t* %335, %struct.atom_t** %337, align 8
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %627, %334
  %339 = load i32, i32* %4, align 4
  %340 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %341 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %340, i32 0, i32 15
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %630

344:                                              ; preds = %338
  %345 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %346 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %345, i32 0, i32 17
  %347 = load %struct.atom_t*, %struct.atom_t** %346, align 8
  %348 = load i32, i32* %4, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %347, i64 %349
  %351 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %350, i32 0, i32 0
  %352 = load i8*, i8** %351, align 8
  %353 = call i64 @strlen(i8* %352) #6
  %354 = add i64 %353, 1
  %355 = call noalias i8* @malloc(i64 %354) #7
  store i8* %355, i8** %11, align 8
  %356 = load i8*, i8** %11, align 8
  %357 = icmp eq i8* %356, null
  br i1 %357, label %358, label %361

358:                                              ; preds = %344
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %360 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

361:                                              ; preds = %344
  %362 = load i8*, i8** %11, align 8
  %363 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %364 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %363, i32 0, i32 17
  %365 = load %struct.atom_t*, %struct.atom_t** %364, align 8
  %366 = load i32, i32* %4, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %365, i64 %367
  %369 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8
  %371 = call i8* @strcpy(i8* %362, i8* %370) #7
  %372 = load i8*, i8** %11, align 8
  %373 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %374 = load i32, i32* %4, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %373, i64 %375
  %377 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %376, i32 0, i32 0
  store i8* %372, i8** %377, align 8
  %378 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %379 = load i32, i32* %4, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %378, i64 %380
  %382 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %381, i32 0, i32 1
  store i8* null, i8** %382, align 8
  %383 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %384 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %383, i32 0, i32 17
  %385 = load %struct.atom_t*, %struct.atom_t** %384, align 8
  %386 = load i32, i32* %4, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %385, i64 %387
  %389 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %392 = load i32, i32* %4, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %391, i64 %393
  %395 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %394, i32 0, i32 2
  store i32 %390, i32* %395, align 8
  %396 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %397 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %396, i32 0, i32 17
  %398 = load %struct.atom_t*, %struct.atom_t** %397, align 8
  %399 = load i32, i32* %4, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %398, i64 %400
  %402 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %405 = load i32, i32* %4, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %404, i64 %406
  %408 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %407, i32 0, i32 3
  store i32 %403, i32* %408, align 4
  store i32 0, i32* %7, align 4
  br label %409

409:                                              ; preds = %432, %361
  %410 = load i32, i32* %7, align 4
  %411 = icmp slt i32 %410, 8
  br i1 %411, label %412, label %435

412:                                              ; preds = %409
  %413 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %414 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %413, i32 0, i32 17
  %415 = load %struct.atom_t*, %struct.atom_t** %414, align 8
  %416 = load i32, i32* %4, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %415, i64 %417
  %419 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %418, i32 0, i32 4
  %420 = load i32, i32* %7, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [8 x i32], [8 x i32]* %419, i64 0, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %425 = load i32, i32* %4, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %424, i64 %426
  %428 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %427, i32 0, i32 4
  %429 = load i32, i32* %7, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [8 x i32], [8 x i32]* %428, i64 0, i64 %430
  store i32 %423, i32* %431, align 4
  br label %432

432:                                              ; preds = %412
  %433 = load i32, i32* %7, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %7, align 4
  br label %409

435:                                              ; preds = %409
  %436 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %437 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %438 = load i32, i32* %4, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %437, i64 %439
  %441 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %440, i32 0, i32 5
  store %struct.residue_t* %436, %struct.residue_t** %441, align 8
  %442 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %443 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %442, i32 0, i32 17
  %444 = load %struct.atom_t*, %struct.atom_t** %443, align 8
  %445 = load i32, i32* %4, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %444, i64 %446
  %448 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %447, i32 0, i32 6
  %449 = load double, double* %448, align 8
  %450 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %451 = load i32, i32* %4, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %450, i64 %452
  %454 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %453, i32 0, i32 6
  store double %449, double* %454, align 8
  %455 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %456 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %455, i32 0, i32 17
  %457 = load %struct.atom_t*, %struct.atom_t** %456, align 8
  %458 = load i32, i32* %4, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %457, i64 %459
  %461 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %460, i32 0, i32 7
  %462 = load double, double* %461, align 8
  %463 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %464 = load i32, i32* %4, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %463, i64 %465
  %467 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %466, i32 0, i32 7
  store double %462, double* %467, align 8
  %468 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %469 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %468, i32 0, i32 17
  %470 = load %struct.atom_t*, %struct.atom_t** %469, align 8
  %471 = load i32, i32* %4, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %470, i64 %472
  %474 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %473, i32 0, i32 8
  %475 = load double, double* %474, align 8
  %476 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %477 = load i32, i32* %4, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %476, i64 %478
  %480 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %479, i32 0, i32 8
  store double %475, double* %480, align 8
  %481 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %482 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %481, i32 0, i32 17
  %483 = load %struct.atom_t*, %struct.atom_t** %482, align 8
  %484 = load i32, i32* %4, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %483, i64 %485
  %487 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %486, i32 0, i32 9
  %488 = load double, double* %487, align 8
  %489 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %490 = load i32, i32* %4, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %489, i64 %491
  %493 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %492, i32 0, i32 9
  store double %488, double* %493, align 8
  %494 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %495 = load i32, i32* %4, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %494, i64 %496
  %498 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %497, i32 0, i32 10
  store i8* null, i8** %498, align 8
  %499 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %500 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %499, i32 0, i32 17
  %501 = load %struct.atom_t*, %struct.atom_t** %500, align 8
  %502 = load i32, i32* %4, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %501, i64 %503
  %505 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %504, i32 0, i32 11
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %508 = load i32, i32* %4, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %507, i64 %509
  %511 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %510, i32 0, i32 11
  store i32 %506, i32* %511, align 8
  %512 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %513 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %512, i32 0, i32 17
  %514 = load %struct.atom_t*, %struct.atom_t** %513, align 8
  %515 = load i32, i32* %4, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %514, i64 %516
  %518 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %517, i32 0, i32 12
  %519 = load double, double* %518, align 8
  %520 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %521 = load i32, i32* %4, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %520, i64 %522
  %524 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %523, i32 0, i32 12
  store double %519, double* %524, align 8
  %525 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %526 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %525, i32 0, i32 17
  %527 = load %struct.atom_t*, %struct.atom_t** %526, align 8
  %528 = load i32, i32* %4, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %527, i64 %529
  %531 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %530, i32 0, i32 13
  %532 = load double, double* %531, align 8
  %533 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %534 = load i32, i32* %4, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %533, i64 %535
  %537 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %536, i32 0, i32 13
  store double %532, double* %537, align 8
  %538 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %539 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %538, i32 0, i32 17
  %540 = load %struct.atom_t*, %struct.atom_t** %539, align 8
  %541 = load i32, i32* %4, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %540, i64 %542
  %544 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %543, i32 0, i32 14
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %547 = load i32, i32* %4, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %546, i64 %548
  %550 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %549, i32 0, i32 14
  store i32 %545, i32* %550, align 8
  %551 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %552 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %551, i32 0, i32 17
  %553 = load %struct.atom_t*, %struct.atom_t** %552, align 8
  %554 = load i32, i32* %4, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %553, i64 %555
  %557 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %556, i32 0, i32 15
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %560 = load i32, i32* %4, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %559, i64 %561
  %563 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %562, i32 0, i32 15
  store i32 %558, i32* %563, align 4
  %564 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %565 = load i32, i32* %4, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %564, i64 %566
  %568 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %567, i32 0, i32 16
  store i8* null, i8** %568, align 8
  %569 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %570 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %569, i32 0, i32 17
  %571 = load %struct.atom_t*, %struct.atom_t** %570, align 8
  %572 = load i32, i32* %4, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %571, i64 %573
  %575 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %574, i32 0, i32 17
  %576 = getelementptr inbounds [3 x double], [3 x double]* %575, i64 0, i64 0
  %577 = load double, double* %576, align 8
  %578 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %579 = load i32, i32* %4, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %578, i64 %580
  %582 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %581, i32 0, i32 17
  %583 = getelementptr inbounds [3 x double], [3 x double]* %582, i64 0, i64 0
  store double %577, double* %583, align 8
  %584 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %585 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %584, i32 0, i32 17
  %586 = load %struct.atom_t*, %struct.atom_t** %585, align 8
  %587 = load i32, i32* %4, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %586, i64 %588
  %590 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %589, i32 0, i32 17
  %591 = getelementptr inbounds [3 x double], [3 x double]* %590, i64 0, i64 1
  %592 = load double, double* %591, align 8
  %593 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %594 = load i32, i32* %4, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %593, i64 %595
  %597 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %596, i32 0, i32 17
  %598 = getelementptr inbounds [3 x double], [3 x double]* %597, i64 0, i64 1
  store double %592, double* %598, align 8
  %599 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %600 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %599, i32 0, i32 17
  %601 = load %struct.atom_t*, %struct.atom_t** %600, align 8
  %602 = load i32, i32* %4, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %601, i64 %603
  %605 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %604, i32 0, i32 17
  %606 = getelementptr inbounds [3 x double], [3 x double]* %605, i64 0, i64 2
  %607 = load double, double* %606, align 8
  %608 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %609 = load i32, i32* %4, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %608, i64 %610
  %612 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %611, i32 0, i32 17
  %613 = getelementptr inbounds [3 x double], [3 x double]* %612, i64 0, i64 2
  store double %607, double* %613, align 8
  %614 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %615 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %614, i32 0, i32 17
  %616 = load %struct.atom_t*, %struct.atom_t** %615, align 8
  %617 = load i32, i32* %4, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %616, i64 %618
  %620 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %619, i32 0, i32 18
  %621 = load double, double* %620, align 8
  %622 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %623 = load i32, i32* %4, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %622, i64 %624
  %626 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %625, i32 0, i32 18
  store double %621, double* %626, align 8
  br label %627

627:                                              ; preds = %435
  %628 = load i32, i32* %4, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %4, align 4
  br label %338

630:                                              ; preds = %338
  %631 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  store %struct.residue_t* %631, %struct.residue_t** %2, align 8
  br label %632

632:                                              ; preds = %630, %90, %68, %48, %33, %18
  %633 = load %struct.residue_t*, %struct.residue_t** %2, align 8
  ret %struct.residue_t* %633
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct.extbond_t* @copyextbonds(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* %0) #0 {
  %2 = alloca %struct.strand_t*, align 8
  %3 = alloca %struct.strand_t*, align 8
  %4 = alloca %struct.strand_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.strand_t* %0, %struct.strand_t** %3, align 8
  %7 = call noalias i8* @malloc(i64 48) #7
  %8 = bitcast i8* %7 to %struct.strand_t*
  store %struct.strand_t* %8, %struct.strand_t** %4, align 8
  %9 = icmp eq %struct.strand_t* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %13) #7
  %15 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.strand_t* null, %struct.strand_t** %2, align 8
  br label %134

16:                                               ; preds = %1
  %17 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = call noalias i8* @malloc(i64 %21) #7
  %23 = bitcast i8* %22 to %struct.residue_t**
  %24 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i32 0, i32 7
  store %struct.residue_t** %23, %struct.residue_t*** %25, align 8
  %26 = icmp eq %struct.residue_t** %23, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0))
  store %struct.strand_t* null, %struct.strand_t** %2, align 8
  br label %134

29:                                               ; preds = %16
  %30 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32) #6
  %34 = add i64 %33, 1
  %35 = mul i64 %34, 1
  %36 = call noalias i8* @malloc(i64 %35) #7
  store i8* %36, i8** %5, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %41) #7
  %43 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.strand_t* null, %struct.strand_t** %2, align 8
  br label %134

44:                                               ; preds = %29
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strcpy(i8* %50, i8* %53) #7
  %55 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %59 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %64 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %66 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %65, i32 0, i32 3
  store %struct.molecule_t* null, %struct.molecule_t** %66, align 8
  %67 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %67, i32 0, i32 4
  store %struct.strand_t* null, %struct.strand_t** %68, align 8
  %69 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %73 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %75 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %78 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %129, %44
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %82 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %132

85:                                               ; preds = %79
  %86 = load %struct.strand_t*, %struct.strand_t** %3, align 8
  %87 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %86, i32 0, i32 7
  %88 = load %struct.residue_t**, %struct.residue_t*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %88, i64 %90
  %92 = load %struct.residue_t*, %struct.residue_t** %91, align 8
  %93 = call %struct.residue_t* @copyresidue(%struct.residue_t* %92)
  %94 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %95 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %94, i32 0, i32 7
  %96 = load %struct.residue_t**, %struct.residue_t*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %96, i64 %98
  store %struct.residue_t* %93, %struct.residue_t** %99, align 8
  %100 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %101 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %102 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %101, i32 0, i32 7
  %103 = load %struct.residue_t**, %struct.residue_t*** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %103, i64 %105
  %107 = load %struct.residue_t*, %struct.residue_t** %106, align 8
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %107, i32 0, i32 9
  store %struct.strand_t* %100, %struct.strand_t** %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %85
  %112 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %113 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %112, i32 0, i32 7
  %114 = load %struct.residue_t**, %struct.residue_t*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %114, i64 %116
  %118 = load %struct.residue_t*, %struct.residue_t** %117, align 8
  %119 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  %120 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %119, i32 0, i32 7
  %121 = load %struct.residue_t**, %struct.residue_t*** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %121, i64 %124
  %126 = load %struct.residue_t*, %struct.residue_t** %125, align 8
  %127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %126, i32 0, i32 0
  store %struct.residue_t* %118, %struct.residue_t** %127, align 8
  br label %128

128:                                              ; preds = %111, %85
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %79

132:                                              ; preds = %79
  %133 = load %struct.strand_t*, %struct.strand_t** %4, align 8
  store %struct.strand_t* %133, %struct.strand_t** %2, align 8
  br label %134

134:                                              ; preds = %132, %38, %27, %10
  %135 = load %struct.strand_t*, %struct.strand_t** %2, align 8
  ret %struct.strand_t* %135
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) #0 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.strand_t*, align 8
  %7 = alloca %struct.strand_t*, align 8
  %8 = alloca %struct.strand_t*, align 8
  %9 = alloca %struct.molecule_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  %10 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  call void @upd_molnumbers(%struct.molecule_t* %10)
  %11 = call noalias i8* @malloc(i64 136) #7
  %12 = bitcast i8* %11 to %struct.molecule_t*
  store %struct.molecule_t* %12, %struct.molecule_t** %9, align 8
  %13 = icmp eq %struct.molecule_t* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #7
  %16 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.molecule_t* null, %struct.molecule_t** %2, align 8
  br label %127

17:                                               ; preds = %1
  %18 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %19 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %24 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %27 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %29 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %32 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %37 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %39 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %38, i32 0, i32 6
  %40 = load %struct.parm*, %struct.parm** %39, align 8
  %41 = icmp ne %struct.parm* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %17
  %43 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %44 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %43, i32 0, i32 6
  %45 = load %struct.parm*, %struct.parm** %44, align 8
  %46 = call %struct.parm* @copyparm(%struct.parm* %45)
  %47 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %48 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %47, i32 0, i32 6
  store %struct.parm* %46, %struct.parm** %48, align 8
  br label %52

49:                                               ; preds = %17
  %50 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %51 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %50, i32 0, i32 6
  store %struct.parm* null, %struct.parm** %51, align 8
  br label %52

52:                                               ; preds = %49, %42
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %82, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp sle i32 %54, 3
  br i1 %55, label %56, label %85

56:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %78, %56
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %58, 2
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %62 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %61, i32 0, i32 0
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %62, i64 0, i64 %64
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 0, i64 %67
  %69 = load double, double* %68, align 8
  %70 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %71 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %70, i32 0, i32 0
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %71, i64 0, i64 %73
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 0, i64 %76
  store double %69, double* %77, align 8
  br label %78

78:                                               ; preds = %60
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %57

81:                                               ; preds = %57
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %53

85:                                               ; preds = %53
  %86 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8
  %87 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %86, i32 0, i32 2
  %88 = load %struct.strand_t*, %struct.strand_t** %87, align 8
  store %struct.strand_t* %88, %struct.strand_t** %6, align 8
  %89 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %90 = icmp ne %struct.strand_t* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %93 = call %struct.strand_t* @copystrand(%struct.strand_t* %92)
  store %struct.strand_t* %93, %struct.strand_t** %7, align 8
  %94 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %95 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %96 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %95, i32 0, i32 3
  store %struct.molecule_t* %94, %struct.molecule_t** %96, align 8
  %97 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %98 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %99 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %98, i32 0, i32 2
  store %struct.strand_t* %97, %struct.strand_t** %99, align 8
  %100 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %101 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %100, i32 0, i32 4
  %102 = load %struct.strand_t*, %struct.strand_t** %101, align 8
  store %struct.strand_t* %102, %struct.strand_t** %6, align 8
  br label %103

103:                                              ; preds = %91, %85
  br label %104

104:                                              ; preds = %116, %103
  %105 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %106 = icmp ne %struct.strand_t* %105, null
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %109 = call %struct.strand_t* @copystrand(%struct.strand_t* %108)
  store %struct.strand_t* %109, %struct.strand_t** %8, align 8
  %110 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %111 = icmp ne %struct.strand_t* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.strand_t*, %struct.strand_t** %8, align 8
  %114 = load %struct.strand_t*, %struct.strand_t** %7, align 8
  %115 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %114, i32 0, i32 4
  store %struct.strand_t* %113, %struct.strand_t** %115, align 8
  br label %116

116:                                              ; preds = %112, %107
  %117 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  %118 = load %struct.strand_t*, %struct.strand_t** %8, align 8
  %119 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %118, i32 0, i32 3
  store %struct.molecule_t* %117, %struct.molecule_t** %119, align 8
  %120 = load %struct.strand_t*, %struct.strand_t** %8, align 8
  store %struct.strand_t* %120, %struct.strand_t** %7, align 8
  %121 = load %struct.strand_t*, %struct.strand_t** %6, align 8
  %122 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %121, i32 0, i32 4
  %123 = load %struct.strand_t*, %struct.strand_t** %122, align 8
  store %struct.strand_t* %123, %struct.strand_t** %6, align 8
  br label %104

124:                                              ; preds = %104
  %125 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  call void @upd_molnumbers(%struct.molecule_t* %125)
  %126 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8
  store %struct.molecule_t* %126, %struct.molecule_t** %2, align 8
  br label %127

127:                                              ; preds = %124, %14
  %128 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8
  ret %struct.molecule_t* %128
}

declare dso_local void @upd_molnumbers(%struct.molecule_t*) #1

declare dso_local %struct.parm* @copyparm(%struct.parm*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reslib_t* @read_reslib_header(i8* %0, %struct._IO_FILE** %1, %struct._IO_FILE** %2, %struct._IO_FILE** %3, %struct._IO_FILE** %4, i8* %5) #0 {
  %7 = alloca %struct.reslib_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE**, align 8
  %10 = alloca %struct._IO_FILE**, align 8
  %11 = alloca %struct._IO_FILE**, align 8
  %12 = alloca %struct._IO_FILE**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca %struct.reslib_t*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca [128 x i8], align 16
  %20 = alloca [20 x i8], align 16
  %21 = alloca [100 x i8], align 16
  %22 = alloca [100 x i8], align 16
  %23 = alloca [256 x i8], align 16
  store i8* %0, i8** %8, align 8
  store %struct._IO_FILE** %1, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE** %2, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE** %3, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE** %4, %struct._IO_FILE*** %12, align 8
  store i8* %5, i8** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #6
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %6
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %29) #7
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  call void @mk_fname(i8* %31, i8* %32)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %34 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %34, %struct._IO_FILE** %14, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %38 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* %37)
  store %struct.reslib_t* null, %struct.reslib_t** %7, align 8
  br label %312

39:                                               ; preds = %27
  br label %50

40:                                               ; preds = %6
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  call void @mk_fname(i8* %41, i8* %42)
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %44 = call %struct._IO_FILE* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %44, %struct._IO_FILE** %14, align 8
  %45 = icmp eq %struct._IO_FILE* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %48 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* %47)
  store %struct.reslib_t* null, %struct.reslib_t** %7, align 8
  br label %312

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %39
  %51 = call noalias i8* @malloc(i64 32) #7
  %52 = bitcast i8* %51 to %struct.reslib_t*
  store %struct.reslib_t* %52, %struct.reslib_t** %15, align 8
  %53 = icmp eq %struct.reslib_t* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %55) #7
  %57 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.reslib_t* null, %struct.reslib_t** %7, align 8
  br label %312

58:                                               ; preds = %50
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @strlen(i8* %59) #6
  %61 = add i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 1
  %66 = call noalias i8* @malloc(i64 %65) #7
  store i8* %66, i8** %18, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* %69) #7
  %71 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.reslib_t* null, %struct.reslib_t** %7, align 8
  br label %312

72:                                               ; preds = %58
  %73 = load i8*, i8** %18, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @strcpy(i8* %73, i8* %74) #7
  %76 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8
  %77 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %78 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %77, i32 0, i32 0
  store %struct.reslib_t* %76, %struct.reslib_t** %78, align 8
  %79 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  store %struct.reslib_t* %79, %struct.reslib_t** @reslibs, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %84 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %86 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %88 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %87, i32 0, i32 4
  store %struct.residue_t* null, %struct.residue_t** %88, align 8
  %89 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %89, align 8
  %90 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %90, align 8
  %91 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %91, align 8
  %92 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %92, align 8
  %93 = load i8*, i8** %13, align 8
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @strstr(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #6
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %252

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %250, %115, %108, %97
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %101 = call i8* @fgets(i8* %99, i32 128, %struct._IO_FILE* %100)
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %251

103:                                              ; preds = %98
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %105 = load i8, i8* %104, align 16
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 35
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %98

109:                                              ; preds = %103
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %111 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %113 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* %111, i8* %112) #7
  store i32 %113, i32* %16, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %98

116:                                              ; preds = %109
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 2
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8
  br label %256

120:                                              ; preds = %116
  %121 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #6
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %120
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %130 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  br label %148

131:                                              ; preds = %124
  %132 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %137 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %136, i32 0, i32 2
  store i32 2, i32* %137, align 8
  br label %147

138:                                              ; preds = %131
  %139 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %144 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %143, i32 0, i32 2
  store i32 3, i32* %144, align 8
  br label %146

145:                                              ; preds = %138
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8
  br label %256

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %135
  br label %148

148:                                              ; preds = %147, %128
  br label %248

149:                                              ; preds = %120
  %150 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #6
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0)) #6
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %159 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %158, i32 0, i32 3
  store i32 1, i32* %159, align 4
  br label %169

160:                                              ; preds = %153
  %161 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #6
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %166 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %165, i32 0, i32 3
  store i32 2, i32* %166, align 4
  br label %168

167:                                              ; preds = %160
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8
  br label %256

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168, %157
  br label %247

170:                                              ; preds = %149
  %171 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)) #6
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %176 = load i8*, i8** %13, align 8
  call void @mk_fname(i8* %175, i8* %176)
  br label %246

177:                                              ; preds = %170
  %178 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0)) #6
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %177
  %182 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  call void @mk_fname(i8* %182, i8* %183)
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %185 = call %struct._IO_FILE* @fopen(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %186 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE* %185, %struct._IO_FILE** %186, align 8
  %187 = icmp eq %struct._IO_FILE* %185, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* %189) #7
  %191 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8
  br label %256

192:                                              ; preds = %181
  br label %245

193:                                              ; preds = %177
  %194 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #6
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  call void @mk_fname(i8* %198, i8* %199)
  %200 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %201 = call %struct._IO_FILE* @fopen(i8* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %202 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE* %201, %struct._IO_FILE** %202, align 8
  %203 = icmp eq %struct._IO_FILE* %201, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* %205) #7
  %207 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8
  br label %256

208:                                              ; preds = %197
  br label %244

209:                                              ; preds = %193
  %210 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #6
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  call void @mk_fname(i8* %214, i8* %215)
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %217 = call %struct._IO_FILE* @fopen(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %218 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE* %217, %struct._IO_FILE** %218, align 8
  %219 = icmp eq %struct._IO_FILE* %217, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %222 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* %221) #7
  %223 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8
  br label %256

224:                                              ; preds = %213
  br label %243

225:                                              ; preds = %209
  %226 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #6
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %225
  %230 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %231 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  call void @mk_fname(i8* %230, i8* %231)
  %232 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0
  %233 = call %struct._IO_FILE* @fopen(i8* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %234 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  store %struct._IO_FILE* %233, %struct._IO_FILE** %234, align 8
  %235 = icmp eq %struct._IO_FILE* %233, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %238 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* %237) #7
  %239 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8
  br label %256

240:                                              ; preds = %229
  br label %242

241:                                              ; preds = %225
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8
  br label %256

242:                                              ; preds = %240
  br label %243

243:                                              ; preds = %242, %224
  br label %244

244:                                              ; preds = %243, %208
  br label %245

245:                                              ; preds = %244, %192
  br label %246

246:                                              ; preds = %245, %174
  br label %247

247:                                              ; preds = %246, %169
  br label %248

248:                                              ; preds = %247, %148
  br label %249

249:                                              ; preds = %248
  br label %250

250:                                              ; preds = %249
  br label %98

251:                                              ; preds = %98
  br label %255

252:                                              ; preds = %72
  %253 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0
  %254 = load i8*, i8** %13, align 8
  call void @mk_fname(i8* %253, i8* %254)
  br label %255

255:                                              ; preds = %252, %251
  br label %256

256:                                              ; preds = %255, %241, %236, %220, %204, %188, %167, %145, %119
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %258 = call i32 @fclose(%struct._IO_FILE* %257)
  %259 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  %260 = icmp eq %struct.reslib_t* %259, null
  br i1 %260, label %261, label %310

261:                                              ; preds = %256
  %262 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %262, align 8
  %264 = icmp ne %struct._IO_FILE* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %266, align 8
  %268 = call i32 @fclose(%struct._IO_FILE* %267)
  br label %269

269:                                              ; preds = %265, %261
  %270 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %270, align 8
  %272 = icmp ne %struct._IO_FILE* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %274, align 8
  %276 = call i32 @fclose(%struct._IO_FILE* %275)
  br label %277

277:                                              ; preds = %273, %269
  %278 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %278, align 8
  %280 = icmp ne %struct._IO_FILE* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %282, align 8
  %284 = call i32 @fclose(%struct._IO_FILE* %283)
  br label %285

285:                                              ; preds = %281, %277
  %286 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** %286, align 8
  %288 = icmp ne %struct._IO_FILE* %287, null
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %290, align 8
  %292 = call i32 @fclose(%struct._IO_FILE* %291)
  br label %293

293:                                              ; preds = %289, %285
  %294 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %295 = call i64 @strlen(i8* %294) #6
  %296 = sub i64 %295, 1
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %17, align 4
  %298 = load i32, i32* %17, align 4
  %299 = icmp sgt i32 %298, 20
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  br label %303

301:                                              ; preds = %293
  %302 = load i32, i32* %17, align 4
  br label %303

303:                                              ; preds = %301, %300
  %304 = phi i32 [ 20, %300 ], [ %302, %301 ]
  store i32 %304, i32* %17, align 4
  %305 = load i32, i32* %17, align 4
  %306 = load i32, i32* %17, align 4
  %307 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %308 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %305, i32 %306, i8* %307) #7
  %309 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %310

310:                                              ; preds = %303, %256
  %311 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8
  store %struct.reslib_t* %311, %struct.reslib_t** %7, align 8
  br label %312

312:                                              ; preds = %310, %68, %54, %46, %36
  %313 = load %struct.reslib_t*, %struct.reslib_t** %7, align 8
  ret %struct.reslib_t* %313
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initatoms() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.atom_t*, align 8
  %3 = load i32, i32* @initatoms.init, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %28

6:                                                ; preds = %0
  store i32 0, i32* @initatoms.init, align 4
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %struct.atom_t** %2, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 1000
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  call void @NAB_initatom(%struct.atom_t* %11, i32 1)
  %12 = call noalias i8* @malloc(i64 8) #7
  %13 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %16 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  %26 = load %struct.atom_t*, %struct.atom_t** %2, align 8
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 1
  store %struct.atom_t* %27, %struct.atom_t** %2, align 8
  br label %7

28:                                               ; preds = %5, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @off2reslib(i8* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.reslib_t*, align 8
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.DATABASEt*, align 8
  %11 = alloca i8, align 1
  %12 = alloca [100 x i32], align 16
  %13 = alloca [100 x i32], align 16
  %14 = alloca [100 x i32], align 16
  %15 = alloca [100 x i32], align 16
  %16 = alloca [100 x i32], align 16
  %17 = alloca [100 x i32], align 16
  %18 = alloca [100 x i32], align 16
  %19 = alloca [100 x double], align 16
  %20 = alloca [100 x double], align 16
  %21 = alloca [100 x double], align 16
  %22 = alloca [100 x double], align 16
  %23 = alloca [100 x [10 x i8]], align 16
  %24 = alloca [100 x [10 x i8]], align 16
  %25 = alloca [100 x [10 x i8]], align 16
  %26 = alloca [255 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  store i32 0, i32* @n_atoms, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* %27, i32 1)
  store %struct.DATABASEt* %28, %struct.DATABASEt** %10, align 8
  %29 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8
  %30 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %25, i64 0, i64 0
  %31 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* %7, [10 x i8]* %30, i32 10)
  store i8 %31, i8* %11, align 1
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %151, %2
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %154

36:                                               ; preds = %32
  %37 = getelementptr inbounds [255 x i8], [255 x i8]* %26, i64 0, i64 0
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %25, i64 0, i64 %39
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %40, i64 0, i64 0
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* %41) #7
  %43 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* %43)
  %44 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %26, i64 0, i64 0
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* %44, i8* %45)
  %46 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8
  %47 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 1)
  store i8 %47, i8* %11, align 1
  %48 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8
  %49 = getelementptr inbounds [100 x i32], [100 x i32]* %12, i64 0, i64 0
  %50 = getelementptr inbounds [100 x i32], [100 x i32]* %13, i64 0, i64 0
  %51 = getelementptr inbounds [100 x i32], [100 x i32]* %14, i64 0, i64 0
  %52 = getelementptr inbounds [100 x i32], [100 x i32]* %15, i64 0, i64 0
  %53 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 0
  %54 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 0
  %55 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %23, i64 0, i64 0
  %56 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %24, i64 0, i64 0
  %57 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* @n_atoms, i32 3, i32* %49, i64 4, i32 4, i32* %50, i64 4, i32 5, i32* %51, i64 4, i32 6, i32* %52, i64 4, i32 7, i32* %53, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 8, double* %54, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, [10 x i8]* %55, i32 10, i32 2, [10 x i8]* %56, i32 10, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0)
  store i8 %57, i8* %11, align 1
  %58 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8
  %59 = getelementptr inbounds [100 x double], [100 x double]* %20, i64 0, i64 0
  %60 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 0
  %61 = getelementptr inbounds [100 x double], [100 x double]* %22, i64 0, i64 0
  %62 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* @n_atoms, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, double* %59, i64 8, i32 2, double* %60, i64 8, i32 3, double* %61, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0)
  store i8 %62, i8* %11, align 1
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %107, %36
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @n_atoms, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %110

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %69
  store %struct.atom_t* %70, %struct.atom_t** %5, align 8
  %71 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  call void @NAB_initatom(%struct.atom_t* %71, i32 0)
  %72 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %23, i64 0, i64 %76
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %77, i64 0, i64 0
  %79 = call i8* @strcpy(i8* %74, i8* %78) #7
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %81
  %83 = load double, double* %82, align 8
  %84 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %84, i32 0, i32 6
  store double %83, double* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [100 x double], [100 x double]* %20, i64 0, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i32 0, i32 17
  %92 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 0, i64 0
  store double %89, double* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %94
  %96 = load double, double* %95, align 8
  %97 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %98 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %97, i32 0, i32 17
  %99 = getelementptr inbounds [3 x double], [3 x double]* %98, i64 0, i64 1
  store double %96, double* %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [100 x double], [100 x double]* %22, i64 0, i64 %101
  %103 = load double, double* %102, align 8
  %104 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %105 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %104, i32 0, i32 17
  %106 = getelementptr inbounds [3 x double], [3 x double]* %105, i64 0, i64 2
  store double %103, double* %106, align 8
  br label %107

107:                                              ; preds = %67
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %63

110:                                              ; preds = %63
  %111 = load i32, i32* @n_atoms, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addres2reslib(%struct.reslib_t* %114)
  br label %115

115:                                              ; preds = %113, %110
  %116 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8
  %117 = getelementptr inbounds [100 x i32], [100 x i32]* %17, i64 0, i64 0
  %118 = getelementptr inbounds [100 x i32], [100 x i32]* %18, i64 0, i64 0
  %119 = getelementptr inbounds [100 x i32], [100 x i32]* %14, i64 0, i64 0
  %120 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* @n_bonds, i32 1, i32* %117, i64 4, i32 2, i32* %118, i64 4, i32 3, i32* %119, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0)
  store i8 %120, i8* %11, align 1
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %142, %115
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @n_bonds, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %145

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [100 x i32], [100 x i32]* %17, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %131
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %132, i64 0, i64 0
  store i32 %129, i32* %133, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [100 x i32], [100 x i32]* %18, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %139
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 1
  store i32 %137, i32* %141, align 4
  br label %142

142:                                              ; preds = %125
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %121

145:                                              ; preds = %121
  %146 = load i32, i32* @n_bonds, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addbonds2reslib(%struct.reslib_t* %149)
  br label %150

150:                                              ; preds = %148, %145
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %32

154:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdb2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.reslib_t*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [10 x i8], align 1
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.atom_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  store i32 0, i32* @n_atoms, align 4
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1
  br label %15

15:                                               ; preds = %77, %2
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = call i8* @fgets(i8* %16, i32 256, %struct._IO_FILE* %17)
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %78

20:                                               ; preds = %15
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %22 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* %21, i64 6) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  call void @setrlibattrs(%struct.reslib_t* %25, i8* %26)
  br label %77

27:                                               ; preds = %20
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* %28, i64 4) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %33 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* %32, i64 6) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* %37, i32* %9, i8* %38, i8* %39, i32* %10, double* %11, double* %12, double* %13) #7
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %41) #6
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32, i32* @n_atoms, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addres2reslib(%struct.reslib_t* %48)
  store i32 0, i32* @n_atoms, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %51 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %50) #7
  br label %52

52:                                               ; preds = %49, %35
  %53 = load i32, i32* @n_atoms, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %54
  store %struct.atom_t* %55, %struct.atom_t** %14, align 8
  %56 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  call void @NAB_initatom(%struct.atom_t* %56, i32 0)
  %57 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %61 = call i8* @strcpy(i8* %59, i8* %60) #7
  %62 = load double, double* %11, align 8
  %63 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %63, i32 0, i32 17
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 0
  store double %62, double* %65, align 8
  %66 = load double, double* %12, align 8
  %67 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 17
  %69 = getelementptr inbounds [3 x double], [3 x double]* %68, i64 0, i64 1
  store double %66, double* %69, align 8
  %70 = load double, double* %13, align 8
  %71 = load %struct.atom_t*, %struct.atom_t** %14, align 8
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %71, i32 0, i32 17
  %73 = getelementptr inbounds [3 x double], [3 x double]* %72, i64 0, i64 2
  store double %70, double* %73, align 8
  %74 = load i32, i32* @n_atoms, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @n_atoms, align 4
  br label %76

76:                                               ; preds = %52, %31
  br label %77

77:                                               ; preds = %76, %24
  br label %15

78:                                               ; preds = %15
  %79 = load i32, i32* @n_atoms, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addres2reslib(%struct.reslib_t* %82)
  br label %83

83:                                               ; preds = %81, %78
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnd2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.reslib_t*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  store i32 0, i32* @n_bonds, align 4
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %10, align 16
  br label %11

11:                                               ; preds = %90, %2
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %14 = call i8* @fgets(i8* %12, i32 256, %struct._IO_FILE* %13)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %91

16:                                               ; preds = %11
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %18 = load i8, i8* %17, align 16
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 35
  br i1 %20, label %21, label %55

21:                                               ; preds = %16
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* %23) #7
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %28 = call i64 @strlen(i8* %27) #6
  %29 = sub i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 20
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 20, %33 ], [ %35, %34 ]
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %38, i32 %39, i8* %40) #7
  %42 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %96

43:                                               ; preds = %21
  %44 = load i32, i32* @n_bonds, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addbonds2reslib(%struct.reslib_t* %47)
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %49 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %48) #7
  store i32 0, i32* @n_bonds, align 4
  br label %53

50:                                               ; preds = %43
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %52 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %51) #7
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53
  br label %90

55:                                               ; preds = %16
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* %8, i32* %9) #7
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %61 = call i64 @strlen(i8* %60) #6
  %62 = sub i64 %61, 1
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %64, 20
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ 20, %66 ], [ %68, %67 ]
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %71, i32 %72, i8* %73) #7
  %75 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %96

76:                                               ; preds = %55
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @n_bonds, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %79
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i64 0, i64 0
  store i32 %77, i32* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @n_bonds, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %84
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 1
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* @n_bonds, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @n_bonds, align 4
  br label %89

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %54
  br label %11

91:                                               ; preds = %11
  %92 = load i32, i32* @n_bonds, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addbonds2reslib(%struct.reslib_t* %95)
  br label %96

96:                                               ; preds = %36, %69, %94, %91
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qr2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.reslib_t*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [10 x i8], align 1
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.atom_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  store i32 0, i32* @n_atoms, align 4
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1
  br label %14

14:                                               ; preds = %68, %23, %2
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = call i8* @fgets(i8* %15, i32 256, %struct._IO_FILE* %16)
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %69

19:                                               ; preds = %14
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %21 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* %20, i64 3) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %14

24:                                               ; preds = %19
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %26 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* %25, i64 4) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %30 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* %29, i64 6) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* %34, i32* %9, i8* %35, i8* %36, i32* %10, double* %11, double* %12) #7
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %38) #6
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load i32, i32* @n_atoms, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addqr2reslib(%struct.reslib_t* %45)
  store i32 0, i32* @n_atoms, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %48 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %47) #7
  br label %49

49:                                               ; preds = %46, %32
  %50 = load i32, i32* @n_atoms, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %51
  store %struct.atom_t* %52, %struct.atom_t** %13, align 8
  %53 = load %struct.atom_t*, %struct.atom_t** %13, align 8
  call void @NAB_initatom(%struct.atom_t* %53, i32 0)
  %54 = load %struct.atom_t*, %struct.atom_t** %13, align 8
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %58 = call i8* @strcpy(i8* %56, i8* %57) #7
  %59 = load double, double* %11, align 8
  %60 = load %struct.atom_t*, %struct.atom_t** %13, align 8
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i32 0, i32 6
  store double %59, double* %61, align 8
  %62 = load double, double* %12, align 8
  %63 = load %struct.atom_t*, %struct.atom_t** %13, align 8
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %63, i32 0, i32 7
  store double %62, double* %64, align 8
  %65 = load i32, i32* @n_atoms, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @n_atoms, align 4
  br label %67

67:                                               ; preds = %49, %28
  br label %68

68:                                               ; preds = %67
  br label %14

69:                                               ; preds = %14
  %70 = load i32, i32* @n_atoms, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addqr2reslib(%struct.reslib_t* %73)
  br label %74

74:                                               ; preds = %72, %69
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chi2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.reslib_t*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.residue_t*, align 8
  %9 = alloca %struct.residue_t*, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca [8 x i8], align 1
  %12 = alloca [8 x i8], align 1
  %13 = alloca [8 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.atom_t*, align 8
  %19 = alloca %struct.chiral_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  store %struct.residue_t* null, %struct.residue_t** %8, align 8
  store i32 0, i32* @n_chi, align 4
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %20, align 16
  br label %21

21:                                               ; preds = %212, %2
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %24 = call i8* @fgets(i8* %22, i32 256, %struct._IO_FILE* %23)
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %213

26:                                               ; preds = %21
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %28 = load i8, i8* %27, align 16
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %94

31:                                               ; preds = %26
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* %33) #7
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %38 = call i64 @strlen(i8* %37) #6
  %39 = sub i64 %38, 1
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 20
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 20, %43 ], [ %45, %44 ]
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %48, i32 %49, i8* %50) #7
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %218

54:                                               ; preds = %31
  %55 = load i32, i32* @n_chi, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addchi2reslib(%struct.reslib_t* %58)
  store i32 0, i32* @n_chi, align 4
  br label %59

59:                                               ; preds = %57, %54
  store %struct.residue_t* null, %struct.residue_t** %9, align 8
  %60 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  %61 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %60, i32 0, i32 4
  %62 = load %struct.residue_t*, %struct.residue_t** %61, align 8
  store %struct.residue_t* %62, %struct.residue_t** %8, align 8
  br label %63

63:                                               ; preds = %76, %59
  %64 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %65 = icmp ne %struct.residue_t* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %71 = call i32 @strcmp(i8* %69, i8* %70) #6
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  store %struct.residue_t* %74, %struct.residue_t** %9, align 8
  br label %80

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %77, i32 0, i32 0
  %79 = load %struct.residue_t*, %struct.residue_t** %78, align 8
  store %struct.residue_t* %79, %struct.residue_t** %8, align 8
  br label %63

80:                                               ; preds = %73, %63
  %81 = load %struct.residue_t*, %struct.residue_t** %9, align 8
  %82 = icmp ne %struct.residue_t* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %85 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %86 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  %87 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* %85, i8* %88)
  br label %218

90:                                               ; preds = %80
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %92 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %91) #7
  br label %93

93:                                               ; preds = %90
  br label %212

94:                                               ; preds = %26
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %99 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %100 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* %96, i8* %97, i8* %98, i8* %99) #7
  %101 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %103 = call %struct.atom_t* @findatom(%struct.residue_t* %101, i8* %102)
  store %struct.atom_t* %103, %struct.atom_t** %18, align 8
  %104 = icmp ne %struct.atom_t* %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %94
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %108 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %109 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %107, i8* %110)
  call void @exit(i32 1) #5
  unreachable

112:                                              ; preds = %94
  %113 = load %struct.atom_t*, %struct.atom_t** %18, align 8
  %114 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %114, i32 0, i32 17
  %116 = load %struct.atom_t*, %struct.atom_t** %115, align 8
  %117 = ptrtoint %struct.atom_t* %113 to i64
  %118 = ptrtoint %struct.atom_t* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 176
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %112
  %123 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %125 = call %struct.atom_t* @findatom(%struct.residue_t* %123, i8* %124)
  store %struct.atom_t* %125, %struct.atom_t** %18, align 8
  %126 = icmp ne %struct.atom_t* %125, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %122
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %129 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %130 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %131 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %129, i8* %132)
  call void @exit(i32 1) #5
  unreachable

134:                                              ; preds = %122
  %135 = load %struct.atom_t*, %struct.atom_t** %18, align 8
  %136 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %137 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %136, i32 0, i32 17
  %138 = load %struct.atom_t*, %struct.atom_t** %137, align 8
  %139 = ptrtoint %struct.atom_t* %135 to i64
  %140 = ptrtoint %struct.atom_t* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 176
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %134
  %145 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %146 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %147 = call %struct.atom_t* @findatom(%struct.residue_t* %145, i8* %146)
  store %struct.atom_t* %147, %struct.atom_t** %18, align 8
  %148 = icmp ne %struct.atom_t* %147, null
  br i1 %148, label %156, label %149

149:                                              ; preds = %144
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %151 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %152 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %153 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %152, i32 0, i32 4
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %151, i8* %154)
  call void @exit(i32 1) #5
  unreachable

156:                                              ; preds = %144
  %157 = load %struct.atom_t*, %struct.atom_t** %18, align 8
  %158 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %159 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %158, i32 0, i32 17
  %160 = load %struct.atom_t*, %struct.atom_t** %159, align 8
  %161 = ptrtoint %struct.atom_t* %157 to i64
  %162 = ptrtoint %struct.atom_t* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 176
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %16, align 4
  br label %166

166:                                              ; preds = %156
  %167 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %168 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %169 = call %struct.atom_t* @findatom(%struct.residue_t* %167, i8* %168)
  store %struct.atom_t* %169, %struct.atom_t** %18, align 8
  %170 = icmp ne %struct.atom_t* %169, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %166
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %173 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %174 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %175 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %173, i8* %176)
  call void @exit(i32 1) #5
  unreachable

178:                                              ; preds = %166
  %179 = load %struct.atom_t*, %struct.atom_t** %18, align 8
  %180 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  %181 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %180, i32 0, i32 17
  %182 = load %struct.atom_t*, %struct.atom_t** %181, align 8
  %183 = ptrtoint %struct.atom_t* %179 to i64
  %184 = ptrtoint %struct.atom_t* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 176
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %178
  %189 = load i32, i32* @n_chi, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %190
  store %struct.chiral_t* %191, %struct.chiral_t** %19, align 8
  %192 = load i32, i32* @n_chi, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @n_chi, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8
  %196 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %195, i32 0, i32 0
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %196, i64 0, i64 0
  store i32 %194, i32* %197, align 8
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8
  %200 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %199, i32 0, i32 0
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %200, i64 0, i64 1
  store i32 %198, i32* %201, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8
  %204 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %203, i32 0, i32 0
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %204, i64 0, i64 2
  store i32 %202, i32* %205, align 8
  %206 = load i32, i32* %17, align 4
  %207 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8
  %208 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %207, i32 0, i32 0
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %208, i64 0, i64 3
  store i32 %206, i32* %209, align 4
  %210 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8
  %211 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %210, i32 0, i32 1
  store double 0.000000e+00, double* %211, align 8
  br label %212

212:                                              ; preds = %188, %93
  br label %21

213:                                              ; preds = %21
  %214 = load i32, i32* @n_chi, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8
  call void @addchi2reslib(%struct.reslib_t* %217)
  store i32 0, i32* @n_chi, align 4
  br label %218

218:                                              ; preds = %46, %83, %216, %213
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_fname(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 47
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %10, i64 2) #6
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strcpy(i8* %14, i8* %15) #7
  br label %21

17:                                               ; preds = %9
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* %19) #7
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @NAB_initatom(%struct.atom_t*, i32) #1

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) #1

declare dso_local signext i8 @bDBGetValue(...) #1

declare dso_local void @DBZeroPrefix(...) #1

declare dso_local void @DBPushPrefix(...) #1

declare dso_local signext i8 @bDBGetTable(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addres2reslib(%struct.reslib_t* %0) #0 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca %struct.atom_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.reslib_t* %0, %struct.reslib_t** %2, align 8
  %9 = call noalias i8* @malloc(i64 128) #7
  %10 = bitcast i8* %9 to %struct.residue_t*
  store %struct.residue_t* %10, %struct.residue_t** %3, align 8
  %11 = icmp eq %struct.residue_t* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %14 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %15) #7
  %17 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %317

18:                                               ; preds = %1
  %19 = load i32, i32* @n_atoms, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 176
  %22 = call noalias i8* @malloc(i64 %21) #7
  %23 = bitcast i8* %22 to %struct.atom_t*
  store %struct.atom_t* %23, %struct.atom_t** %4, align 8
  %24 = icmp eq %struct.atom_t* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %27 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %28) #7
  %30 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %317

31:                                               ; preds = %18
  %32 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %33 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %32, i32 0, i32 4
  %34 = load %struct.residue_t*, %struct.residue_t** %33, align 8
  %35 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %35, i32 0, i32 0
  store %struct.residue_t* %34, %struct.residue_t** %36, align 8
  %37 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %38 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %39 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %38, i32 0, i32 4
  store %struct.residue_t* %37, %struct.residue_t** %39, align 8
  %40 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #6
  %41 = add i64 %40, 1
  %42 = call noalias i8* @malloc(i64 %41) #7
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

48:                                               ; preds = %31
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @strcpy(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = call noalias i8* @malloc(i64 1) #7
  store i8* %54, i8** %6, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

60:                                               ; preds = %48
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @strcpy(i8* %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.75, i64 0, i64 0)) #7
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %65 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  %68 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %71 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %70, i32 0, i32 3
  store i32 0, i32* %71, align 8
  %72 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %73 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i32 0, i32 6
  store i32 0, i32* %73, align 8
  %74 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %75 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %80 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %85 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %84, i32 0, i32 9
  store %struct.strand_t* null, %struct.strand_t** %85, align 8
  %86 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %87 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %86, i32 0, i32 10
  store %struct.extbond_t* null, %struct.extbond_t** %87, align 8
  %88 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %89 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %88, i32 0, i32 11
  store i32 0, i32* %89, align 8
  %90 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %91 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %90, i32 0, i32 12
  store [2 x i32]* null, [2 x i32]** %91, align 8
  %92 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %93 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %92, i32 0, i32 13
  store i32 0, i32* %93, align 8
  %94 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %95 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %94, i32 0, i32 14
  store %struct.chiral_t* null, %struct.chiral_t** %95, align 8
  %96 = load i32, i32* @n_atoms, align 4
  %97 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i32 0, i32 15
  store i32 %96, i32* %98, align 8
  %99 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %99, i32 0, i32 16
  store i32* null, i32** %100, align 8
  %101 = load %struct.atom_t*, %struct.atom_t** %4, align 8
  %102 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %103 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %102, i32 0, i32 17
  store %struct.atom_t* %101, %struct.atom_t** %103, align 8
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %314, %60
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @n_atoms, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %317

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 16
  %114 = call i64 @strlen(i8* %113) #6
  %115 = add i64 %114, 1
  %116 = call noalias i8* @malloc(i64 %115) #7
  store i8* %116, i8** %5, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

122:                                              ; preds = %108
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %125
  %127 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 16
  %129 = call i8* @strcpy(i8* %123, i8* %128) #7
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %132 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %131, i32 0, i32 17
  %133 = load %struct.atom_t*, %struct.atom_t** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %133, i64 %135
  %137 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %136, i32 0, i32 0
  store i8* %130, i8** %137, align 8
  %138 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %139 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %138, i32 0, i32 17
  %140 = load %struct.atom_t*, %struct.atom_t** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %140, i64 %142
  %144 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %146 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %145, i32 0, i32 17
  %147 = load %struct.atom_t*, %struct.atom_t** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %147, i64 %149
  %151 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %150, i32 0, i32 3
  store i32 0, i32* %151, align 4
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %166, %122
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 8
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  %156 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %157 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %156, i32 0, i32 17
  %158 = load %struct.atom_t*, %struct.atom_t** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %158, i64 %160
  %162 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %161, i32 0, i32 4
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %162, i64 0, i64 %164
  store i32 -1, i32* %165, align 4
  br label %166

166:                                              ; preds = %155
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %152

169:                                              ; preds = %152
  %170 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %171 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %171, i32 0, i32 17
  %173 = load %struct.atom_t*, %struct.atom_t** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %173, i64 %175
  %177 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %176, i32 0, i32 5
  store %struct.residue_t* %170, %struct.residue_t** %177, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %180, i32 0, i32 6
  %182 = load double, double* %181, align 16
  %183 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %184 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %183, i32 0, i32 17
  %185 = load %struct.atom_t*, %struct.atom_t** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %185, i64 %187
  %189 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %188, i32 0, i32 6
  store double %182, double* %189, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %192, i32 0, i32 7
  %194 = load double, double* %193, align 8
  %195 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %196 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %195, i32 0, i32 17
  %197 = load %struct.atom_t*, %struct.atom_t** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %197, i64 %199
  %201 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %200, i32 0, i32 7
  store double %194, double* %201, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %204, i32 0, i32 8
  %206 = load double, double* %205, align 16
  %207 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %208 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %207, i32 0, i32 17
  %209 = load %struct.atom_t*, %struct.atom_t** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %209, i64 %211
  %213 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %212, i32 0, i32 8
  store double %206, double* %213, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %216, i32 0, i32 9
  %218 = load double, double* %217, align 8
  %219 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %220 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %219, i32 0, i32 17
  %221 = load %struct.atom_t*, %struct.atom_t** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %221, i64 %223
  %225 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i32 0, i32 9
  store double %218, double* %225, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %227
  %229 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %232 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %231, i32 0, i32 17
  %233 = load %struct.atom_t*, %struct.atom_t** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %233, i64 %235
  %237 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %236, i32 0, i32 11
  store i32 %230, i32* %237, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %239
  %241 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %240, i32 0, i32 12
  %242 = load double, double* %241, align 16
  %243 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %244 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %243, i32 0, i32 17
  %245 = load %struct.atom_t*, %struct.atom_t** %244, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %245, i64 %247
  %249 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %248, i32 0, i32 12
  store double %242, double* %249, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %251
  %253 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %252, i32 0, i32 13
  %254 = load double, double* %253, align 8
  %255 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %256 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %255, i32 0, i32 17
  %257 = load %struct.atom_t*, %struct.atom_t** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %257, i64 %259
  %261 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %260, i32 0, i32 13
  store double %254, double* %261, align 8
  %262 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %263 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %262, i32 0, i32 17
  %264 = load %struct.atom_t*, %struct.atom_t** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %264, i64 %266
  %268 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %267, i32 0, i32 15
  store i32 0, i32* %268, align 4
  %269 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %270 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %269, i32 0, i32 17
  %271 = load %struct.atom_t*, %struct.atom_t** %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %271, i64 %273
  %275 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %274, i32 0, i32 16
  store i8* null, i8** %275, align 8
  store i32 0, i32* %8, align 4
  br label %276

276:                                              ; preds = %298, %169
  %277 = load i32, i32* %8, align 4
  %278 = icmp slt i32 %277, 3
  br i1 %278, label %279, label %301

279:                                              ; preds = %276
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %281
  %283 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %282, i32 0, i32 17
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [3 x double], [3 x double]* %283, i64 0, i64 %285
  %287 = load double, double* %286, align 8
  %288 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %289 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %288, i32 0, i32 17
  %290 = load %struct.atom_t*, %struct.atom_t** %289, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %290, i64 %292
  %294 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %293, i32 0, i32 17
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [3 x double], [3 x double]* %294, i64 0, i64 %296
  store double %287, double* %297, align 8
  br label %298

298:                                              ; preds = %279
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %276

301:                                              ; preds = %276
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %304, i32 0, i32 18
  %306 = load double, double* %305, align 8
  %307 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %308 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %307, i32 0, i32 17
  %309 = load %struct.atom_t*, %struct.atom_t** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %309, i64 %311
  %313 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %312, i32 0, i32 18
  store double %306, double* %313, align 8
  br label %314

314:                                              ; preds = %301
  %315 = load i32, i32* %7, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %7, align 4
  br label %104

317:                                              ; preds = %12, %25, %104
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addbonds2reslib(%struct.reslib_t* %0) #0 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca [2 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.atom_t*, align 8
  %10 = alloca %struct.atom_t*, align 8
  store %struct.reslib_t* %0, %struct.reslib_t** %2, align 8
  %11 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %11, i32 0, i32 4
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  store %struct.residue_t* %13, %struct.residue_t** %3, align 8
  br label %14

14:                                               ; preds = %162, %1
  %15 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %16 = icmp ne %struct.residue_t* %15, null
  br i1 %16, label %17, label %166

17:                                               ; preds = %14
  %18 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %161

23:                                               ; preds = %17
  %24 = load i32, i32* @n_bonds, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call noalias i8* @malloc(i64 %26) #7
  %28 = bitcast i8* %27 to [2 x i32]*
  store [2 x i32]* %28, [2 x i32]** %4, align 8
  %29 = icmp eq [2 x i32]* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7
  %32 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %172

33:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %151, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @n_bonds, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %154

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %40
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 0
  %43 = load i32, i32* %42, align 8
  %44 = load [2 x i32]*, [2 x i32]** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 %46
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 0
  store i32 %43, i32* %48, align 4
  store i32 %43, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %50
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load [2 x i32]*, [2 x i32]** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %54, i64 %56
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %57, i64 0, i64 1
  store i32 %53, i32* %58, align 4
  store i32 %53, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  %63 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %63, i32 0, i32 17
  %65 = load %struct.atom_t*, %struct.atom_t** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %67
  store %struct.atom_t* %68, %struct.atom_t** %9, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %103, %38
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %106

72:                                               ; preds = %69
  %73 = load %struct.atom_t*, %struct.atom_t** %9, align 8
  %74 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %73, i32 0, i32 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %74, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %106

82:                                               ; preds = %72
  %83 = load %struct.atom_t*, %struct.atom_t** %9, align 8
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %83, i32 0, i32 4
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %84, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.atom_t*, %struct.atom_t** %9, align 8
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %92, i32 0, i32 4
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %93, i64 0, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load %struct.atom_t*, %struct.atom_t** %9, align 8
  %98 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %106

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %69

106:                                              ; preds = %90, %81, %69
  %107 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %107, i32 0, i32 17
  %109 = load %struct.atom_t*, %struct.atom_t** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %109, i64 %111
  store %struct.atom_t* %112, %struct.atom_t** %10, align 8
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %147, %106
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 8
  br i1 %115, label %116, label %150

116:                                              ; preds = %113
  %117 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %118 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %117, i32 0, i32 4
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %118, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %150

126:                                              ; preds = %116
  %127 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i32 0, i32 4
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %128, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %145

134:                                              ; preds = %126
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %137 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %136, i32 0, i32 4
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %137, i64 0, i64 %139
  store i32 %135, i32* %140, align 4
  %141 = load %struct.atom_t*, %struct.atom_t** %10, align 8
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %150

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %113

150:                                              ; preds = %134, %125, %113
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  br label %34

154:                                              ; preds = %34
  %155 = load i32, i32* @n_bonds, align 4
  %156 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %157 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %156, i32 0, i32 11
  store i32 %155, i32* %157, align 8
  %158 = load [2 x i32]*, [2 x i32]** %4, align 8
  %159 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %159, i32 0, i32 12
  store [2 x i32]* %158, [2 x i32]** %160, align 8
  br label %172

161:                                              ; preds = %17
  br label %162

162:                                              ; preds = %161
  %163 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %164 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %163, i32 0, i32 0
  %165 = load %struct.residue_t*, %struct.residue_t** %164, align 8
  store %struct.residue_t* %165, %struct.residue_t** %3, align 8
  br label %14

166:                                              ; preds = %14
  %167 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %168 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %169) #7
  %171 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %172

172:                                              ; preds = %166, %154, %30
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setrlibattrs(%struct.reslib_t* %0, i8* %1) #0 {
  %3 = alloca %struct.reslib_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  store %struct.reslib_t* %0, %struct.reslib_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* %8, i8* %9) #7
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8
  %19 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  br label %36

20:                                               ; preds = %13
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8
  %26 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %25, i32 0, i32 2
  store i32 2, i32* %26, align 8
  br label %35

27:                                               ; preds = %20
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8
  %33 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %32, i32 0, i32 2
  store i32 3, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %17
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8
  %42 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %41, i32 0, i32 3
  store i32 1, i32* %42, align 4
  br label %51

43:                                               ; preds = %36
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8
  %49 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %48, i32 0, i32 3
  store i32 2, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %12, %50, %40
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addqr2reslib(%struct.reslib_t* %0) #0 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca %struct.atom_t*, align 8
  store %struct.reslib_t* %0, %struct.reslib_t** %2, align 8
  %7 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %7, i32 0, i32 4
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8
  store %struct.residue_t* %9, %struct.residue_t** %3, align 8
  br label %10

10:                                               ; preds = %75, %1
  %11 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %12 = icmp ne %struct.residue_t* %11, null
  br i1 %12, label %13, label %79

13:                                               ; preds = %10
  %14 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %struct.atom_t** %5, align 8
  br label %20

20:                                               ; preds = %68, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @n_atoms, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %26 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call %struct.atom_t* @findatom(%struct.residue_t* %25, i8* %28)
  store %struct.atom_t* %29, %struct.atom_t** %6, align 8
  %30 = icmp ne %struct.atom_t* %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %24
  %32 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i32 0, i32 6
  %34 = load double, double* %33, align 8
  %35 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 6
  store double %34, double* %36, align 8
  %37 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i32 0, i32 7
  %39 = load double, double* %38, align 8
  %40 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 7
  store double %39, double* %41, align 8
  %42 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i32 0, i32 8
  %44 = load double, double* %43, align 8
  %45 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i32 0, i32 8
  store double %44, double* %46, align 8
  %47 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %47, i32 0, i32 9
  %49 = load double, double* %48, align 8
  %50 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %50, i32 0, i32 9
  store double %49, double* %51, align 8
  %52 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 8
  %57 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 12
  %59 = load double, double* %58, align 8
  %60 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i32 0, i32 12
  store double %59, double* %61, align 8
  %62 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i32 0, i32 13
  %64 = load double, double* %63, align 8
  %65 = load %struct.atom_t*, %struct.atom_t** %6, align 8
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i32 0, i32 13
  store double %64, double* %66, align 8
  br label %67

67:                                               ; preds = %31, %24
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  %71 = load %struct.atom_t*, %struct.atom_t** %5, align 8
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %71, i32 1
  store %struct.atom_t* %72, %struct.atom_t** %5, align 8
  br label %20

73:                                               ; preds = %20
  br label %85

74:                                               ; preds = %13
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i32 0, i32 0
  %78 = load %struct.residue_t*, %struct.residue_t** %77, align 8
  store %struct.residue_t* %78, %struct.residue_t** %3, align 8
  br label %10

79:                                               ; preds = %10
  %80 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %81 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %82) #7
  %84 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %85

85:                                               ; preds = %79, %73
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atom_t* @findatom(%struct.residue_t* %0, i8* %1) #0 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca %struct.residue_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.residue_t* %0, %struct.residue_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.residue_t*, %struct.residue_t** %4, align 8
  %10 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %9, i32 0, i32 15
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load %struct.residue_t*, %struct.residue_t** %4, align 8
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i32 0, i32 17
  %16 = load %struct.atom_t*, %struct.atom_t** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %18
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i8* %21, i8* %22) #6
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %13
  %26 = load %struct.residue_t*, %struct.residue_t** %4, align 8
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %26, i32 0, i32 17
  %28 = load %struct.atom_t*, %struct.atom_t** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i64 %30
  store %struct.atom_t* %31, %struct.atom_t** %3, align 8
  br label %37

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  store %struct.atom_t* null, %struct.atom_t** %3, align 8
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.atom_t*, %struct.atom_t** %3, align 8
  ret %struct.atom_t* %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addchi2reslib(%struct.reslib_t* %0) #0 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca %struct.chiral_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x [3 x double]], align 16
  %9 = alloca [4 x [3 x double]], align 16
  %10 = alloca double, align 8
  store %struct.reslib_t* %0, %struct.reslib_t** %2, align 8
  %11 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %11, i32 0, i32 4
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8
  store %struct.residue_t* %13, %struct.residue_t** %3, align 8
  br label %14

14:                                               ; preds = %122, %1
  %15 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %16 = icmp ne %struct.residue_t* %15, null
  br i1 %16, label %17, label %126

17:                                               ; preds = %14
  %18 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #6
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %121, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @n_chi, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 24
  %27 = call noalias i8* @malloc(i64 %26) #7
  %28 = bitcast i8* %27 to %struct.chiral_t*
  store %struct.chiral_t* %28, %struct.chiral_t** %4, align 8
  %29 = icmp eq %struct.chiral_t* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %34)
  br label %135

36:                                               ; preds = %23
  %37 = load i32, i32* @n_chi, align 4
  %38 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 8
  %40 = load %struct.chiral_t*, %struct.chiral_t** %4, align 8
  %41 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %41, i32 0, i32 14
  store %struct.chiral_t* %40, %struct.chiral_t** %42, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %117, %36
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @n_chi, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %120

47:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %104, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %107

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %54, i32 0, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.chiral_t*, %struct.chiral_t** %4, align 8
  %61 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %60, i32 0, i32 0
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i64 0, i64 %63
  store i32 %59, i32* %64, align 4
  store i32 %59, i32* %7, align 4
  %65 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %65, i32 0, i32 17
  %67 = load %struct.atom_t*, %struct.atom_t** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i64 %69
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %70, i32 0, i32 17
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 0, i64 0
  %73 = load double, double* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %8, i64 0, i64 %75
  %77 = getelementptr inbounds [3 x double], [3 x double]* %76, i64 0, i64 0
  store double %73, double* %77, align 8
  %78 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %78, i32 0, i32 17
  %80 = load %struct.atom_t*, %struct.atom_t** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %80, i64 %82
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %83, i32 0, i32 17
  %85 = getelementptr inbounds [3 x double], [3 x double]* %84, i64 0, i64 1
  %86 = load double, double* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %8, i64 0, i64 %88
  %90 = getelementptr inbounds [3 x double], [3 x double]* %89, i64 0, i64 1
  store double %86, double* %90, align 8
  %91 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i32 0, i32 17
  %93 = load %struct.atom_t*, %struct.atom_t** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %93, i64 %95
  %97 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %96, i32 0, i32 17
  %98 = getelementptr inbounds [3 x double], [3 x double]* %97, i64 0, i64 2
  %99 = load double, double* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %8, i64 0, i64 %101
  %103 = getelementptr inbounds [3 x double], [3 x double]* %102, i64 0, i64 2
  store double %99, double* %103, align 8
  br label %104

104:                                              ; preds = %51
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %48

107:                                              ; preds = %48
  %108 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %8, i64 0, i64 0
  %109 = bitcast [3 x double]* %108 to double*
  %110 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %9, i64 0, i64 0
  %111 = bitcast [3 x double]* %110 to double*
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* %109, double* %111, double* %10)
  %112 = load double, double* %10, align 8
  %113 = load %struct.chiral_t*, %struct.chiral_t** %4, align 8
  %114 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %113, i32 0, i32 1
  store double %112, double* %114, align 8
  %115 = load %struct.chiral_t*, %struct.chiral_t** %4, align 8
  %116 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %115, i32 1
  store %struct.chiral_t* %116, %struct.chiral_t** %4, align 8
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %43

120:                                              ; preds = %43
  br label %135

121:                                              ; preds = %17
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %124 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %123, i32 0, i32 0
  %125 = load %struct.residue_t*, %struct.residue_t** %124, align 8
  store %struct.residue_t* %125, %struct.residue_t** %3, align 8
  br label %14

126:                                              ; preds = %14
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %128 = load %struct.residue_t*, %struct.residue_t** %3, align 8
  %129 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8
  %132 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %130, i8* %133)
  br label %135

135:                                              ; preds = %126, %120, %30
  ret void
}

declare dso_local void @chirvol(i32, i32, i32, i32, i32, double*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
