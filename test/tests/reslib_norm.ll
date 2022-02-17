; ModuleID = 'reslib.ll'
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

; Function Attrs: nounwind uwtable
define dso_local i8* @getreslibkind(i8* %0) #0 {
  %2 = call %struct.reslib_t* @known_reslib(i8* %0)
  %3 = icmp eq %struct.reslib_t* %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = call %struct.reslib_t* @read_reslib(i8* %0)
  %6 = icmp eq %struct.reslib_t* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0)
  call void @exit(i32 1) #6
  unreachable

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10, %1
  %.01 = phi %struct.reslib_t* [ %5, %10 ], [ %2, %1 ]
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i32 0, i32 2
  %13 = load i32, i32* %12, align 8, !tbaa !6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %32

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i32 0, i32 2
  %18 = load i32, i32* %17, align 8, !tbaa !6
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %32

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i32 0, i32 2
  %23 = load i32, i32* %22, align 8, !tbaa !6
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i32 0, i32 2
  %28 = load i32, i32* %27, align 8, !tbaa !6
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %30, %25, %20, %15
  %.0 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %15 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %20 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %25 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %30 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %31 ]
  ret i8* %.0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @known_reslib(i8* %0) #0 {
  %2 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !tbaa !2
  %3 = icmp ne %struct.reslib_t* %2, null
  br i1 %3, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %1
  br label %4

4:                                                ; preds = %.lr.ph, %11
  %.013 = phi %struct.reslib_t* [ %2, %.lr.ph ], [ %13, %11 ]
  %5 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.013, i32 0, i32 1
  %6 = load i8*, i8** %5, align 8, !tbaa !9
  %7 = call i32 @strcmp(i8* %6, i8* %0) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  %.01.lcssa2 = phi %struct.reslib_t* [ %.013, %4 ]
  br label %16

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.013, i32 0, i32 0
  %13 = load %struct.reslib_t*, %struct.reslib_t** %12, align 8, !tbaa !10
  %14 = icmp ne %struct.reslib_t* %13, null
  br i1 %14, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %11
  br label %15

15:                                               ; preds = %._crit_edge, %1
  br label %16

16:                                               ; preds = %15, %9
  %.0 = phi %struct.reslib_t* [ %.01.lcssa2, %9 ], [ null, %15 ]
  ret %struct.reslib_t* %.0
}

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @read_reslib(i8* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = bitcast %struct._IO_FILE** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #8
  %8 = bitcast %struct._IO_FILE** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #8
  %9 = bitcast %struct._IO_FILE** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #8
  %10 = bitcast %struct._IO_FILE** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #8
  %11 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %11) #8
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %13 = call %struct.reslib_t* @read_reslib_header(i8* %0, %struct._IO_FILE** %2, %struct._IO_FILE** %3, %struct._IO_FILE** %4, %struct._IO_FILE** %5, i8* %12)
  %14 = icmp eq %struct.reslib_t* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %44

16:                                               ; preds = %1
  call void @initatoms()
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %18 = load i8, i8* %17, align 16, !tbaa !11
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  call void @off2reslib(i8* %21, %struct.reslib_t* %13)
  br label %29

22:                                               ; preds = %16
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !2
  call void @pdb2reslib(%struct._IO_FILE* %23, %struct.reslib_t* %13)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !2
  call void @bnd2reslib(%struct._IO_FILE* %24, %struct.reslib_t* %13)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !2
  %26 = call i32 @fclose(%struct._IO_FILE* %25)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !2
  %28 = call i32 @fclose(%struct._IO_FILE* %27)
  br label %29

29:                                               ; preds = %22, %20
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !2
  %31 = icmp ne %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !2
  call void @qr2reslib(%struct._IO_FILE* %33, %struct.reslib_t* %13)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !2
  %35 = call i32 @fclose(%struct._IO_FILE* %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !tbaa !2
  %38 = icmp ne %struct._IO_FILE* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !tbaa !2
  call void @chi2reslib(%struct._IO_FILE* %40, %struct.reslib_t* %13)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !tbaa !2
  %42 = call i32 @fclose(%struct._IO_FILE* %41)
  br label %43

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %15
  %.0 = phi %struct.reslib_t* [ null, %15 ], [ %13, %43 ]
  %45 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %45) #8
  %46 = bitcast %struct._IO_FILE** %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #8
  %47 = bitcast %struct._IO_FILE** %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #8
  %48 = bitcast %struct._IO_FILE** %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #8
  %49 = bitcast %struct._IO_FILE** %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #8
  ret %struct.reslib_t* %.0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* %1) #0 {
  %3 = call %struct.reslib_t* @known_reslib(i8* %0)
  %4 = icmp eq %struct.reslib_t* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = call %struct.reslib_t* @read_reslib(i8* %0)
  %7 = icmp eq %struct.reslib_t* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0)
  call void @exit(i32 1) #6
  unreachable

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %2
  %.0 = phi %struct.reslib_t* [ %6, %11 ], [ %3, %2 ]
  %13 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2
  store i32 0, i32* %13, align 8, !tbaa !6
  %14 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2
  store i32 1, i32* %20, align 8, !tbaa !6
  br label %39

21:                                               ; preds = %16
  %22 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #7
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2
  store i32 2, i32* %28, align 8, !tbaa !6
  br label %38

29:                                               ; preds = %24
  %30 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #7
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2
  store i32 3, i32* %36, align 8, !tbaa !6
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %19
  %40 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2
  %41 = load i32, i32* %40, align 8, !tbaa !6
  ret i32 %41
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) #0 {
  %3 = alloca [5 x i8], align 1
  %4 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 5, i8* %4) #8
  %5 = call %struct.reslib_t* @known_reslib(i8* %1)
  %6 = icmp eq %struct.reslib_t* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = call %struct.reslib_t* @read_reslib(i8* %1)
  %9 = icmp eq %struct.reslib_t* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @exit(i32 1) #6
  unreachable

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %2
  %.02 = phi %struct.reslib_t* [ %8, %11 ], [ %5, %2 ]
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %14 = call i8* @strcpy(i8* %13, i8* %0) #8
  %15 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i32 0, i32 2
  %16 = load i32, i32* %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #7
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %23 = call i8* @strcpy(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #8
  br label %45

24:                                               ; preds = %18
  %25 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #7
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %29 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #8
  br label %44

30:                                               ; preds = %24
  %31 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #7
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %35 = call i8* @strcpy(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #8
  br label %43

36:                                               ; preds = %30
  %37 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #7
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #8
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %21
  br label %79

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i32 0, i32 2
  %48 = load i32, i32* %47, align 8, !tbaa !6
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #7
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %55 = call i8* @strcpy(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #8
  br label %77

56:                                               ; preds = %50
  %57 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #7
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %61 = call i8* @strcpy(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #8
  br label %76

62:                                               ; preds = %56
  %63 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #7
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %67 = call i8* @strcpy(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #8
  br label %75

68:                                               ; preds = %62
  %69 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #7
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %73 = call i8* @strcpy(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #8
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %46
  br label %79

79:                                               ; preds = %78, %45
  %80 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #7
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %84 = call i8* @strcat(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8
  br label %92

85:                                               ; preds = %79
  %86 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #7
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %90 = call i8* @strcat(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #8
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %82
  %93 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i32 0, i32 4
  %94 = load %struct.residue_t*, %struct.residue_t** %93, align 8, !tbaa !12
  %95 = icmp ne %struct.residue_t* %94, null
  br i1 %95, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %92
  br label %96

96:                                               ; preds = %.lr.ph, %109
  %.015 = phi %struct.residue_t* [ %94, %.lr.ph ], [ %111, %109 ]
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8, !tbaa !13
  %99 = call i32 @strcmp(i8* %98, i8* %0) #7
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8, !tbaa !13
  %104 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %105 = call i32 @strcmp(i8* %103, i8* %104) #7
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101, %96
  %.01.lcssa3 = phi %struct.residue_t* [ %.015, %101 ], [ %.015, %96 ]
  br label %113

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i32 0, i32 0
  %111 = load %struct.residue_t*, %struct.residue_t** %110, align 8, !tbaa !15
  %112 = icmp ne %struct.residue_t* %111, null
  br i1 %112, label %96, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %109
  %split = phi %struct.residue_t* [ %111, %109 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %92
  %.01.lcssa = phi %struct.residue_t* [ %split, %..loopexit_crit_edge ], [ %94, %92 ]
  br label %113

113:                                              ; preds = %.loopexit, %107
  %.014 = phi %struct.residue_t* [ %.01.lcssa, %.loopexit ], [ %.01.lcssa3, %107 ]
  %114 = icmp eq %struct.residue_t* %.014, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %0, i8* %1) #8
  %117 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %120

118:                                              ; preds = %113
  %119 = call %struct.residue_t* @copyresidue(%struct.residue_t* %.014)
  br label %120

120:                                              ; preds = %118, %115
  %.0 = phi %struct.residue_t* [ null, %115 ], [ %119, %118 ]
  %121 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 5, i8* %121) #8
  ret %struct.residue_t* %.0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #5

declare dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) #0 {
  %2 = call noalias i8* @malloc(i64 128) #8
  %3 = bitcast i8* %2 to %struct.residue_t*
  %4 = icmp eq %struct.residue_t* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %7) #8
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %391

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %12 = load i32, i32* %11, align 8, !tbaa !16
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 176
  %15 = call noalias i8* @malloc(i64 %14) #8
  %16 = bitcast i8* %15 to %struct.atom_t*
  %17 = icmp eq %struct.atom_t* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8, !tbaa !13
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %20) #8
  %22 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %391

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %25 = load i32, i32* %24, align 8, !tbaa !16
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = call noalias i8* @malloc(i64 %27) #8
  %29 = bitcast i8* %28 to i32*
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8, !tbaa !13
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %33) #8
  %35 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %391

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11
  %38 = load i32, i32* %37, align 8, !tbaa !17
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11
  %42 = load i32, i32* %41, align 8, !tbaa !17
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = call noalias i8* @malloc(i64 %44) #8
  %46 = bitcast i8* %45 to [2 x i32]*
  %47 = icmp eq [2 x i32]* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8, !tbaa !13
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %50) #8
  %52 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %391

53:                                               ; preds = %40
  br label %55

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %53
  %.07 = phi [2 x i32]* [ %46, %53 ], [ null, %54 ]
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13
  %57 = load i32, i32* %56, align 8, !tbaa !18
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13
  %61 = load i32, i32* %60, align 8, !tbaa !18
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 24
  %64 = call noalias i8* @malloc(i64 %63) #8
  %65 = bitcast i8* %64 to %struct.chiral_t*
  %66 = icmp eq %struct.chiral_t* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8, !tbaa !13
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %69) #8
  %71 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %391

72:                                               ; preds = %59
  br label %74

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %72
  %.05 = phi %struct.chiral_t* [ %65, %72 ], [ null, %73 ]
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 0
  store %struct.residue_t* null, %struct.residue_t** %75, align 8, !tbaa !15
  %76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8, !tbaa !13
  %78 = call i64 @strlen(i8* %77) #7
  %79 = add i64 %78, 1
  %80 = call noalias i8* @malloc(i64 %79) #8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8, !tbaa !13
  %88 = call i8* @strcpy(i8* %80, i8* %87) #8
  %89 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 4
  store i8* %80, i8** %89, align 8, !tbaa !13
  %90 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 5
  %91 = load i8*, i8** %90, align 8, !tbaa !19
  %92 = call i64 @strlen(i8* %91) #7
  %93 = add i64 %92, 1
  %94 = call noalias i8* @malloc(i64 %93) #8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8, !tbaa !19
  %102 = call i8* @strcpy(i8* %94, i8* %101) #8
  %103 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 5
  store i8* %94, i8** %103, align 8, !tbaa !19
  %104 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 1
  %105 = load i32, i32* %104, align 8, !tbaa !20
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 1
  store i32 %105, i32* %106, align 8, !tbaa !20
  %107 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 2
  store i32 0, i32* %107, align 4, !tbaa !21
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 3
  store i32 0, i32* %108, align 8, !tbaa !22
  %109 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 6
  %110 = load i32, i32* %109, align 8, !tbaa !23
  %111 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 6
  store i32 %110, i32* %111, align 8, !tbaa !23
  %112 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 9
  store %struct.strand_t* null, %struct.strand_t** %112, align 8, !tbaa !24
  %113 = call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* %0)
  %114 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 10
  store %struct.extbond_t* %113, %struct.extbond_t** %114, align 8, !tbaa !25
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11
  %116 = load i32, i32* %115, align 8, !tbaa !17
  %117 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 11
  store i32 %116, i32* %117, align 8, !tbaa !17
  %118 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 12
  store [2 x i32]* %.07, [2 x i32]** %118, align 8, !tbaa !26
  %119 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11
  %120 = load i32, i32* %119, align 8, !tbaa !17
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 0, %121
  br i1 %122, label %.lr.ph, label %146

.lr.ph:                                           ; preds = %99
  br label %123

123:                                              ; preds = %.lr.ph, %142
  %indvars.iv21 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %142 ]
  %124 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 12
  %125 = load [2 x i32]*, [2 x i32]** %124, align 8, !tbaa !26
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %125, i64 %indvars.iv21
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 0, i64 0
  %128 = load i32, i32* %127, align 4, !tbaa !27
  %129 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 12
  %130 = load [2 x i32]*, [2 x i32]** %129, align 8, !tbaa !26
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 %indvars.iv21
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %131, i64 0, i64 0
  store i32 %128, i32* %132, align 4, !tbaa !27
  %133 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 12
  %134 = load [2 x i32]*, [2 x i32]** %133, align 8, !tbaa !26
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %134, i64 %indvars.iv21
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %135, i64 0, i64 1
  %137 = load i32, i32* %136, align 4, !tbaa !27
  %138 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 12
  %139 = load [2 x i32]*, [2 x i32]** %138, align 8, !tbaa !26
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %139, i64 %indvars.iv21
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 1
  store i32 %137, i32* %141, align 4, !tbaa !27
  br label %142

142:                                              ; preds = %123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv21, 1
  %143 = load i32, i32* %119, align 8, !tbaa !17
  %144 = sext i32 %143 to i64
  %145 = icmp slt i64 %indvars.iv.next, %144
  br i1 %145, label %123, label %._crit_edge

._crit_edge:                                      ; preds = %142
  br label %146

146:                                              ; preds = %._crit_edge, %99
  %147 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13
  %148 = load i32, i32* %147, align 8, !tbaa !18
  %149 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 13
  store i32 %148, i32* %149, align 8, !tbaa !18
  %150 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 14
  store %struct.chiral_t* %.05, %struct.chiral_t** %150, align 8, !tbaa !28
  %151 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 14
  %152 = load %struct.chiral_t*, %struct.chiral_t** %151, align 8, !tbaa !28
  %153 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13
  %154 = load i32, i32* %153, align 8, !tbaa !18
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 0, %155
  br i1 %156, label %.lr.ph26, label %180

.lr.ph26:                                         ; preds = %146
  br label %157

157:                                              ; preds = %.lr.ph26, %175
  %.1624 = phi %struct.chiral_t* [ %152, %.lr.ph26 ], [ %176, %175 ]
  %indvars.iv1023 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next11, %175 ]
  br label %158

158:                                              ; preds = %157, %167
  %indvars.iv822 = phi i64 [ 0, %157 ], [ %indvars.iv.next9, %167 ]
  %159 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 14
  %160 = load %struct.chiral_t*, %struct.chiral_t** %159, align 8, !tbaa !28
  %161 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %160, i64 %indvars.iv1023
  %162 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i32 0, i32 0
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %162, i64 0, i64 %indvars.iv822
  %164 = load i32, i32* %163, align 4, !tbaa !27
  %165 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1624, i32 0, i32 0
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %165, i64 0, i64 %indvars.iv822
  store i32 %164, i32* %166, align 4, !tbaa !27
  br label %167

167:                                              ; preds = %158
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv822, 1
  %exitcond = icmp ne i64 %indvars.iv.next9, 4
  br i1 %exitcond, label %158, label %168

168:                                              ; preds = %167
  %169 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 14
  %170 = load %struct.chiral_t*, %struct.chiral_t** %169, align 8, !tbaa !28
  %171 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %170, i64 %indvars.iv1023
  %172 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %171, i32 0, i32 1
  %173 = load double, double* %172, align 8, !tbaa !29
  %174 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1624, i32 0, i32 1
  store double %173, double* %174, align 8, !tbaa !29
  br label %175

175:                                              ; preds = %168
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv1023, 1
  %176 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1624, i32 1
  %177 = load i32, i32* %153, align 8, !tbaa !18
  %178 = sext i32 %177 to i64
  %179 = icmp slt i64 %indvars.iv.next11, %178
  br i1 %179, label %157, label %._crit_edge27

._crit_edge27:                                    ; preds = %175
  br label %180

180:                                              ; preds = %._crit_edge27, %146
  %181 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 7
  %182 = load i32, i32* %181, align 4, !tbaa !32
  %183 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 7
  store i32 %182, i32* %183, align 4, !tbaa !32
  %184 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 8
  %185 = load i32, i32* %184, align 8, !tbaa !33
  %186 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 8
  store i32 %185, i32* %186, align 8, !tbaa !33
  %187 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %188 = load i32, i32* %187, align 8, !tbaa !16
  %189 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 15
  store i32 %188, i32* %189, align 8, !tbaa !16
  %190 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 16
  store i32* %29, i32** %190, align 8, !tbaa !34
  %191 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16
  %192 = load i32*, i32** %191, align 8, !tbaa !34
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %212

194:                                              ; preds = %180
  %195 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %196 = load i32, i32* %195, align 8, !tbaa !16
  %197 = sext i32 %196 to i64
  %198 = icmp slt i64 0, %197
  br i1 %198, label %.lr.ph34, label %211

.lr.ph34:                                         ; preds = %194
  br label %199

199:                                              ; preds = %.lr.ph34, %207
  %indvars.iv1432 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next15, %207 ]
  %200 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16
  %201 = load i32*, i32** %200, align 8, !tbaa !34
  %202 = getelementptr inbounds i32, i32* %201, i64 %indvars.iv1432
  %203 = load i32, i32* %202, align 4, !tbaa !27
  %204 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 16
  %205 = load i32*, i32** %204, align 8, !tbaa !34
  %206 = getelementptr inbounds i32, i32* %205, i64 %indvars.iv1432
  store i32 %203, i32* %206, align 4, !tbaa !27
  br label %207

207:                                              ; preds = %199
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv1432, 1
  %208 = load i32, i32* %195, align 8, !tbaa !16
  %209 = sext i32 %208 to i64
  %210 = icmp slt i64 %indvars.iv.next15, %209
  br i1 %210, label %199, label %._crit_edge35

._crit_edge35:                                    ; preds = %207
  br label %211

211:                                              ; preds = %._crit_edge35, %194
  br label %227

212:                                              ; preds = %180
  %213 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %214 = load i32, i32* %213, align 8, !tbaa !16
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 0, %215
  br i1 %216, label %.lr.ph30, label %226

.lr.ph30:                                         ; preds = %212
  br label %217

217:                                              ; preds = %.lr.ph30, %222
  %indvars.iv1228 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next13, %222 ]
  %218 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 16
  %219 = load i32*, i32** %218, align 8, !tbaa !34
  %220 = getelementptr inbounds i32, i32* %219, i64 %indvars.iv1228
  %221 = trunc i64 %indvars.iv1228 to i32
  store i32 %221, i32* %220, align 4, !tbaa !27
  br label %222

222:                                              ; preds = %217
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1228, 1
  %223 = load i32, i32* %213, align 8, !tbaa !16
  %224 = sext i32 %223 to i64
  %225 = icmp slt i64 %indvars.iv.next13, %224
  br i1 %225, label %217, label %._crit_edge31

._crit_edge31:                                    ; preds = %222
  br label %226

226:                                              ; preds = %._crit_edge31, %212
  br label %227

227:                                              ; preds = %226, %211
  %228 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  store %struct.atom_t* %16, %struct.atom_t** %228, align 8, !tbaa !35
  %229 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %230 = load i32, i32* %229, align 8, !tbaa !16
  %231 = sext i32 %230 to i64
  %232 = icmp slt i64 0, %231
  br i1 %232, label %.lr.ph39, label %390

.lr.ph39:                                         ; preds = %227
  br label %233

233:                                              ; preds = %.lr.ph39, %386
  %indvars.iv1937 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next20, %386 ]
  %234 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %235 = load %struct.atom_t*, %struct.atom_t** %234, align 8, !tbaa !35
  %236 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %235, i64 %indvars.iv1937
  %237 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8, !tbaa !36
  %239 = call i64 @strlen(i8* %238) #7
  %240 = add i64 %239, 1
  %241 = call noalias i8* @malloc(i64 %240) #8
  %242 = icmp eq i8* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %233
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

246:                                              ; preds = %233
  %247 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %248 = load %struct.atom_t*, %struct.atom_t** %247, align 8, !tbaa !35
  %249 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %248, i64 %indvars.iv1937
  %250 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8, !tbaa !36
  %252 = call i8* @strcpy(i8* %241, i8* %251) #8
  %253 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %254 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %253, i32 0, i32 0
  store i8* %241, i8** %254, align 8, !tbaa !36
  %255 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %256 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %255, i32 0, i32 1
  store i8* null, i8** %256, align 8, !tbaa !38
  %257 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %258 = load %struct.atom_t*, %struct.atom_t** %257, align 8, !tbaa !35
  %259 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %258, i64 %indvars.iv1937
  %260 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8, !tbaa !39
  %262 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %263 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8, !tbaa !39
  %264 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %265 = load %struct.atom_t*, %struct.atom_t** %264, align 8, !tbaa !35
  %266 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %265, i64 %indvars.iv1937
  %267 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4, !tbaa !40
  %269 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %270 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4, !tbaa !40
  br label %271

271:                                              ; preds = %246, %281
  %indvars.iv1636 = phi i64 [ 0, %246 ], [ %indvars.iv.next17, %281 ]
  %272 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %273 = load %struct.atom_t*, %struct.atom_t** %272, align 8, !tbaa !35
  %274 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %273, i64 %indvars.iv1937
  %275 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %274, i32 0, i32 4
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %275, i64 0, i64 %indvars.iv1636
  %277 = load i32, i32* %276, align 4, !tbaa !27
  %278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %279 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %278, i32 0, i32 4
  %280 = getelementptr inbounds [8 x i32], [8 x i32]* %279, i64 0, i64 %indvars.iv1636
  store i32 %277, i32* %280, align 4, !tbaa !27
  br label %281

281:                                              ; preds = %271
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv1636, 1
  %exitcond18 = icmp ne i64 %indvars.iv.next17, 8
  br i1 %exitcond18, label %271, label %282

282:                                              ; preds = %281
  %283 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %284 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %283, i32 0, i32 5
  store %struct.residue_t* %3, %struct.residue_t** %284, align 8, !tbaa !41
  %285 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %286 = load %struct.atom_t*, %struct.atom_t** %285, align 8, !tbaa !35
  %287 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %286, i64 %indvars.iv1937
  %288 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %287, i32 0, i32 6
  %289 = load double, double* %288, align 8, !tbaa !42
  %290 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %291 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %290, i32 0, i32 6
  store double %289, double* %291, align 8, !tbaa !42
  %292 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %293 = load %struct.atom_t*, %struct.atom_t** %292, align 8, !tbaa !35
  %294 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %293, i64 %indvars.iv1937
  %295 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %294, i32 0, i32 7
  %296 = load double, double* %295, align 8, !tbaa !43
  %297 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %298 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %297, i32 0, i32 7
  store double %296, double* %298, align 8, !tbaa !43
  %299 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %300 = load %struct.atom_t*, %struct.atom_t** %299, align 8, !tbaa !35
  %301 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %300, i64 %indvars.iv1937
  %302 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %301, i32 0, i32 8
  %303 = load double, double* %302, align 8, !tbaa !44
  %304 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %305 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %304, i32 0, i32 8
  store double %303, double* %305, align 8, !tbaa !44
  %306 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %307 = load %struct.atom_t*, %struct.atom_t** %306, align 8, !tbaa !35
  %308 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %307, i64 %indvars.iv1937
  %309 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %308, i32 0, i32 9
  %310 = load double, double* %309, align 8, !tbaa !45
  %311 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %311, i32 0, i32 9
  store double %310, double* %312, align 8, !tbaa !45
  %313 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %314 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %313, i32 0, i32 10
  store i8* null, i8** %314, align 8, !tbaa !46
  %315 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %316 = load %struct.atom_t*, %struct.atom_t** %315, align 8, !tbaa !35
  %317 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %316, i64 %indvars.iv1937
  %318 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %317, i32 0, i32 11
  %319 = load i32, i32* %318, align 8, !tbaa !47
  %320 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %321 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %320, i32 0, i32 11
  store i32 %319, i32* %321, align 8, !tbaa !47
  %322 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %323 = load %struct.atom_t*, %struct.atom_t** %322, align 8, !tbaa !35
  %324 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %323, i64 %indvars.iv1937
  %325 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %324, i32 0, i32 12
  %326 = load double, double* %325, align 8, !tbaa !48
  %327 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %328 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %327, i32 0, i32 12
  store double %326, double* %328, align 8, !tbaa !48
  %329 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %330 = load %struct.atom_t*, %struct.atom_t** %329, align 8, !tbaa !35
  %331 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %330, i64 %indvars.iv1937
  %332 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %331, i32 0, i32 13
  %333 = load double, double* %332, align 8, !tbaa !49
  %334 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %335 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %334, i32 0, i32 13
  store double %333, double* %335, align 8, !tbaa !49
  %336 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %337 = load %struct.atom_t*, %struct.atom_t** %336, align 8, !tbaa !35
  %338 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %337, i64 %indvars.iv1937
  %339 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %338, i32 0, i32 14
  %340 = load i32, i32* %339, align 8, !tbaa !50
  %341 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %342 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %341, i32 0, i32 14
  store i32 %340, i32* %342, align 8, !tbaa !50
  %343 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %344 = load %struct.atom_t*, %struct.atom_t** %343, align 8, !tbaa !35
  %345 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %344, i64 %indvars.iv1937
  %346 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %345, i32 0, i32 15
  %347 = load i32, i32* %346, align 4, !tbaa !51
  %348 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %349 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %348, i32 0, i32 15
  store i32 %347, i32* %349, align 4, !tbaa !51
  %350 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %351 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %350, i32 0, i32 16
  store i8* null, i8** %351, align 8, !tbaa !52
  %352 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %353 = load %struct.atom_t*, %struct.atom_t** %352, align 8, !tbaa !35
  %354 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %353, i64 %indvars.iv1937
  %355 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %354, i32 0, i32 17
  %356 = getelementptr inbounds [3 x double], [3 x double]* %355, i64 0, i64 0
  %357 = load double, double* %356, align 8, !tbaa !53
  %358 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %359 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %358, i32 0, i32 17
  %360 = getelementptr inbounds [3 x double], [3 x double]* %359, i64 0, i64 0
  store double %357, double* %360, align 8, !tbaa !53
  %361 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %362 = load %struct.atom_t*, %struct.atom_t** %361, align 8, !tbaa !35
  %363 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %362, i64 %indvars.iv1937
  %364 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 17
  %365 = getelementptr inbounds [3 x double], [3 x double]* %364, i64 0, i64 1
  %366 = load double, double* %365, align 8, !tbaa !53
  %367 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %368 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %367, i32 0, i32 17
  %369 = getelementptr inbounds [3 x double], [3 x double]* %368, i64 0, i64 1
  store double %366, double* %369, align 8, !tbaa !53
  %370 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %371 = load %struct.atom_t*, %struct.atom_t** %370, align 8, !tbaa !35
  %372 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %371, i64 %indvars.iv1937
  %373 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %372, i32 0, i32 17
  %374 = getelementptr inbounds [3 x double], [3 x double]* %373, i64 0, i64 2
  %375 = load double, double* %374, align 8, !tbaa !53
  %376 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %377 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %376, i32 0, i32 17
  %378 = getelementptr inbounds [3 x double], [3 x double]* %377, i64 0, i64 2
  store double %375, double* %378, align 8, !tbaa !53
  %379 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %380 = load %struct.atom_t*, %struct.atom_t** %379, align 8, !tbaa !35
  %381 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %380, i64 %indvars.iv1937
  %382 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %381, i32 0, i32 18
  %383 = load double, double* %382, align 8, !tbaa !54
  %384 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937
  %385 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %384, i32 0, i32 18
  store double %383, double* %385, align 8, !tbaa !54
  br label %386

386:                                              ; preds = %282
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv1937, 1
  %387 = load i32, i32* %229, align 8, !tbaa !16
  %388 = sext i32 %387 to i64
  %389 = icmp slt i64 %indvars.iv.next20, %388
  br i1 %389, label %233, label %._crit_edge40

._crit_edge40:                                    ; preds = %386
  br label %390

390:                                              ; preds = %._crit_edge40, %227
  br label %391

391:                                              ; preds = %390, %67, %48, %31, %18, %5
  %.0 = phi %struct.residue_t* [ null, %5 ], [ null, %18 ], [ null, %31 ], [ null, %48 ], [ null, %67 ], [ %3, %390 ]
  ret %struct.residue_t* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct.extbond_t* @copyextbonds(...) #2

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* %0) #0 {
  %2 = call noalias i8* @malloc(i64 48) #8
  %3 = bitcast i8* %2 to %struct.strand_t*
  %4 = icmp eq %struct.strand_t* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !55
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %7) #8
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %91

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 5
  %12 = load i32, i32* %11, align 8, !tbaa !57
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call noalias i8* @malloc(i64 %14) #8
  %16 = bitcast i8* %15 to %struct.residue_t**
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7
  store %struct.residue_t** %16, %struct.residue_t*** %17, align 8, !tbaa !58
  %18 = icmp eq %struct.residue_t** %16, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0))
  br label %91

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !55
  %24 = call i64 @strlen(i8* %23) #7
  %25 = add i64 %24, 1
  %26 = mul i64 %25, 1
  %27 = call noalias i8* @malloc(i64 %26) #8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8, !tbaa !55
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %31) #8
  %33 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %91

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 0
  store i8* %27, i8** %35, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !55
  %38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8, !tbaa !55
  %40 = call i8* @strcpy(i8* %37, i8* %39) #8
  %41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 1
  %42 = load i32, i32* %41, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 1
  store i32 %42, i32* %43, align 8, !tbaa !59
  %44 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 2
  %45 = load i32, i32* %44, align 4, !tbaa !60
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 2
  store i32 %45, i32* %46, align 4, !tbaa !60
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 3
  store %struct.molecule_t* null, %struct.molecule_t** %47, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 4
  store %struct.strand_t* null, %struct.strand_t** %48, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 5
  %50 = load i32, i32* %49, align 8, !tbaa !57
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 5
  store i32 %50, i32* %51, align 8, !tbaa !57
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 5
  %53 = load i32, i32* %52, align 8, !tbaa !57
  %54 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 6
  store i32 %53, i32* %54, align 4, !tbaa !63
  %55 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 5
  %56 = load i32, i32* %55, align 8, !tbaa !57
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 0, %57
  br i1 %58, label %.lr.ph, label %90

.lr.ph:                                           ; preds = %34
  br label %59

59:                                               ; preds = %.lr.ph, %86
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %86 ]
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 7
  %61 = load %struct.residue_t**, %struct.residue_t*** %60, align 8, !tbaa !58
  %62 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %61, i64 %indvars.iv2
  %63 = load %struct.residue_t*, %struct.residue_t** %62, align 8, !tbaa !2
  %64 = call %struct.residue_t* @copyresidue(%struct.residue_t* %63)
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7
  %66 = load %struct.residue_t**, %struct.residue_t*** %65, align 8, !tbaa !58
  %67 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %66, i64 %indvars.iv2
  store %struct.residue_t* %64, %struct.residue_t** %67, align 8, !tbaa !2
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7
  %69 = load %struct.residue_t**, %struct.residue_t*** %68, align 8, !tbaa !58
  %70 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %69, i64 %indvars.iv2
  %71 = load %struct.residue_t*, %struct.residue_t** %70, align 8, !tbaa !2
  %72 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i32 0, i32 9
  store %struct.strand_t* %3, %struct.strand_t** %72, align 8, !tbaa !24
  %73 = icmp ugt i64 %indvars.iv2, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7
  %76 = load %struct.residue_t**, %struct.residue_t*** %75, align 8, !tbaa !58
  %77 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %76, i64 %indvars.iv2
  %78 = load %struct.residue_t*, %struct.residue_t** %77, align 8, !tbaa !2
  %79 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7
  %80 = load %struct.residue_t**, %struct.residue_t*** %79, align 8, !tbaa !58
  %81 = sub nsw i64 %indvars.iv2, 1
  %82 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %80, i64 %81
  %83 = load %struct.residue_t*, %struct.residue_t** %82, align 8, !tbaa !2
  %84 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 0
  store %struct.residue_t* %78, %struct.residue_t** %84, align 8, !tbaa !15
  br label %85

85:                                               ; preds = %74, %59
  %indvars.iv3 = phi i64 [ %indvars.iv2, %74 ], [ %indvars.iv2, %59 ]
  br label %86

86:                                               ; preds = %85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %87 = load i32, i32* %55, align 8, !tbaa !57
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %indvars.iv.next, %88
  br i1 %89, label %59, label %._crit_edge

._crit_edge:                                      ; preds = %86
  br label %90

90:                                               ; preds = %._crit_edge, %34
  br label %91

91:                                               ; preds = %90, %29, %19, %5
  %.0 = phi %struct.strand_t* [ null, %5 ], [ null, %19 ], [ null, %29 ], [ %3, %90 ]
  ret %struct.strand_t* %.0
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) #0 {
  call void @upd_molnumbers(%struct.molecule_t* %0)
  %2 = call noalias i8* @malloc(i64 136) #8
  %3 = bitcast i8* %2 to %struct.molecule_t*
  %4 = icmp eq %struct.molecule_t* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #8
  %7 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %67

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 3
  store i32 %13, i32* %14, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 4
  %16 = load i32, i32* %15, align 4, !tbaa !67
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 4
  store i32 %16, i32* %17, align 4, !tbaa !67
  %18 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5
  %19 = load i32, i32* %18, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 5
  store i32 %19, i32* %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 6
  %22 = load %struct.parm*, %struct.parm** %21, align 8, !tbaa !69
  %23 = icmp ne %struct.parm* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 6
  %26 = load %struct.parm*, %struct.parm** %25, align 8, !tbaa !69
  %27 = call %struct.parm* @copyparm(%struct.parm* %26)
  %28 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 6
  store %struct.parm* %27, %struct.parm** %28, align 8, !tbaa !69
  br label %31

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 6
  store %struct.parm* null, %struct.parm** %30, align 8, !tbaa !69
  br label %31

31:                                               ; preds = %29, %24
  br label %32

32:                                               ; preds = %31, %43
  %indvars.iv610 = phi i64 [ 0, %31 ], [ %indvars.iv.next7, %43 ]
  br label %33

33:                                               ; preds = %32, %41
  %indvars.iv9 = phi i64 [ 0, %32 ], [ %indvars.iv.next, %41 ]
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 0
  %35 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %34, i64 0, i64 %indvars.iv610
  %36 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 0, i64 %indvars.iv9
  %37 = load double, double* %36, align 8, !tbaa !53
  %38 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 0
  %39 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %38, i64 0, i64 %indvars.iv610
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 0, i64 %indvars.iv9
  store double %37, double* %40, align 8, !tbaa !53
  br label %41

41:                                               ; preds = %33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 3
  br i1 %exitcond, label %33, label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv610, 1
  %exitcond8 = icmp ne i64 %indvars.iv.next7, 4
  br i1 %exitcond8, label %32, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2
  %46 = load %struct.strand_t*, %struct.strand_t** %45, align 8, !tbaa !70
  %47 = icmp ne %struct.strand_t* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = call %struct.strand_t* @copystrand(%struct.strand_t* %46)
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %49, i32 0, i32 3
  store %struct.molecule_t* %3, %struct.molecule_t** %50, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 2
  store %struct.strand_t* %49, %struct.strand_t** %51, align 8, !tbaa !70
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %46, i32 0, i32 4
  %53 = load %struct.strand_t*, %struct.strand_t** %52, align 8, !tbaa !62
  br label %54

54:                                               ; preds = %48, %44
  %.04 = phi %struct.strand_t* [ %49, %48 ], [ undef, %44 ]
  %.03 = phi %struct.strand_t* [ %53, %48 ], [ %46, %44 ]
  %55 = icmp ne %struct.strand_t* %.03, null
  br i1 %55, label %.lr.ph, label %66

.lr.ph:                                           ; preds = %54
  br label %56

56:                                               ; preds = %.lr.ph, %61
  %.112 = phi %struct.strand_t* [ %.03, %.lr.ph ], [ %64, %61 ]
  %.1511 = phi %struct.strand_t* [ %.04, %.lr.ph ], [ %57, %61 ]
  %57 = call %struct.strand_t* @copystrand(%struct.strand_t* %.112)
  %58 = icmp ne %struct.strand_t* %.1511, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1511, i32 0, i32 4
  store %struct.strand_t* %57, %struct.strand_t** %60, align 8, !tbaa !62
  br label %61

61:                                               ; preds = %59, %56
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %57, i32 0, i32 3
  store %struct.molecule_t* %3, %struct.molecule_t** %62, align 8, !tbaa !61
  %63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.112, i32 0, i32 4
  %64 = load %struct.strand_t*, %struct.strand_t** %63, align 8, !tbaa !62
  %65 = icmp ne %struct.strand_t* %64, null
  br i1 %65, label %56, label %._crit_edge

._crit_edge:                                      ; preds = %61
  br label %66

66:                                               ; preds = %._crit_edge, %54
  call void @upd_molnumbers(%struct.molecule_t* %3)
  br label %67

67:                                               ; preds = %66, %5
  %.0 = phi %struct.molecule_t* [ null, %5 ], [ %3, %66 ]
  ret %struct.molecule_t* %.0
}

declare dso_local void @upd_molnumbers(%struct.molecule_t*) #2

declare dso_local %struct.parm* @copyparm(%struct.parm*) #2

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @read_reslib_header(i8* %0, %struct._IO_FILE** %1, %struct._IO_FILE** %2, %struct._IO_FILE** %3, %struct._IO_FILE** %4, i8* %5) #0 {
  %7 = alloca [128 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = bitcast [128 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %12) #8
  %13 = bitcast [20 x i8]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %13) #8
  %14 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %14) #8
  %15 = bitcast [100 x i8]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %15) #8
  %16 = bitcast [256 x i8]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %16) #8
  %17 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #7
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %0) #8
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  call void @mk_fname(i8* %22, i8* %23)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %25 = call %struct._IO_FILE* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %26 = icmp eq %struct._IO_FILE* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %29 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* %28)
  br label %256

30:                                               ; preds = %19
  br label %40

31:                                               ; preds = %6
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  call void @mk_fname(i8* %0, i8* %32)
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %34 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %38 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* %37)
  br label %256

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %30
  %.02 = phi %struct._IO_FILE* [ %25, %30 ], [ %34, %39 ]
  %41 = call noalias i8* @malloc(i64 32) #8
  %42 = bitcast i8* %41 to %struct.reslib_t*
  %43 = icmp eq %struct.reslib_t* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %0) #8
  %46 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %256

47:                                               ; preds = %40
  %48 = call i64 @strlen(i8* %0) #7
  %49 = add i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 1
  %53 = call noalias i8* @malloc(i64 %52) #8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* %0) #8
  %57 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %256

58:                                               ; preds = %47
  %59 = call i8* @strcpy(i8* %53, i8* %0) #8
  %60 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !tbaa !2
  %61 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 0
  store %struct.reslib_t* %60, %struct.reslib_t** %61, align 8, !tbaa !10
  store %struct.reslib_t* %42, %struct.reslib_t** @reslibs, align 8, !tbaa !2
  %62 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 1
  store i8* %53, i8** %62, align 8, !tbaa !9
  %63 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 2
  store i32 0, i32* %63, align 8, !tbaa !6
  %64 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 3
  store i32 0, i32* %64, align 4, !tbaa !71
  %65 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 4
  store %struct.residue_t* null, %struct.residue_t** %65, align 8, !tbaa !12
  store %struct._IO_FILE* null, %struct._IO_FILE** %1, align 8, !tbaa !2
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !tbaa !2
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !tbaa !2
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8, !tbaa !2
  store i8 0, i8* %5, align 1, !tbaa !11
  %66 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #7
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %212

68:                                               ; preds = %58
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %70 = call i8* @fgets(i8* %69, i32 128, %struct._IO_FILE* %.02)
  %71 = icmp ne i8* %70, null
  br i1 %71, label %.lr.ph, label %211

.lr.ph:                                           ; preds = %68
  br label %72

72:                                               ; preds = %.lr.ph, %.backedge
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %74 = load i8, i8* %73, align 16, !tbaa !11
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 35
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  br label %.backedge

.backedge:                                        ; preds = %77, %86, %210
  %78 = call i8* @fgets(i8* %69, i32 128, %struct._IO_FILE* %.02)
  %79 = icmp ne i8* %78, null
  br i1 %79, label %72, label %._crit_edge

80:                                               ; preds = %72
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %83 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* %82, i8* %83) #8
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %.backedge

87:                                               ; preds = %80
  %88 = icmp ne i32 %84, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %215

90:                                               ; preds = %87
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #7
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 2
  store i32 1, i32* %99, align 8, !tbaa !6
  br label %115

100:                                              ; preds = %94
  %101 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 2
  store i32 2, i32* %105, align 8, !tbaa !6
  br label %114

106:                                              ; preds = %100
  %107 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 2
  store i32 3, i32* %111, align 8, !tbaa !6
  br label %113

112:                                              ; preds = %106
  br label %215

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %98
  br label %208

116:                                              ; preds = %90
  %117 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0)) #7
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 3
  store i32 1, i32* %125, align 4, !tbaa !71
  br label %134

126:                                              ; preds = %120
  %127 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 3
  store i32 2, i32* %131, align 4, !tbaa !71
  br label %133

132:                                              ; preds = %126
  br label %215

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %133, %124
  br label %207

135:                                              ; preds = %116
  %136 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)) #7
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  call void @mk_fname(i8* %140, i8* %5)
  br label %206

141:                                              ; preds = %135
  %142 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0)) #7
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  call void @mk_fname(i8* %146, i8* %147)
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %149 = call %struct._IO_FILE* @fopen(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %149, %struct._IO_FILE** %1, align 8, !tbaa !2
  %150 = icmp eq %struct._IO_FILE* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %153 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* %152) #8
  %154 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %215

155:                                              ; preds = %145
  br label %205

156:                                              ; preds = %141
  %157 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #7
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  call void @mk_fname(i8* %161, i8* %162)
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %164 = call %struct._IO_FILE* @fopen(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %164, %struct._IO_FILE** %2, align 8, !tbaa !2
  %165 = icmp eq %struct._IO_FILE* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %168 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* %167) #8
  %169 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %215

170:                                              ; preds = %160
  br label %204

171:                                              ; preds = %156
  %172 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #7
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %171
  %176 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %177 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  call void @mk_fname(i8* %176, i8* %177)
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %179 = call %struct._IO_FILE* @fopen(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %179, %struct._IO_FILE** %3, align 8, !tbaa !2
  %180 = icmp eq %struct._IO_FILE* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %175
  %182 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* %182) #8
  %184 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %215

185:                                              ; preds = %175
  br label %203

186:                                              ; preds = %171
  %187 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #7
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  call void @mk_fname(i8* %191, i8* %192)
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %194 = call %struct._IO_FILE* @fopen(i8* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  store %struct._IO_FILE* %194, %struct._IO_FILE** %4, align 8, !tbaa !2
  %195 = icmp eq %struct._IO_FILE* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %198 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* %197) #8
  %199 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %215

200:                                              ; preds = %190
  br label %202

201:                                              ; preds = %186
  br label %215

202:                                              ; preds = %200
  br label %203

203:                                              ; preds = %202, %185
  br label %204

204:                                              ; preds = %203, %170
  br label %205

205:                                              ; preds = %204, %155
  br label %206

206:                                              ; preds = %205, %139
  br label %207

207:                                              ; preds = %206, %134
  br label %208

208:                                              ; preds = %207, %115
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge
  br label %211

211:                                              ; preds = %._crit_edge, %68
  br label %214

212:                                              ; preds = %58
  %213 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  call void @mk_fname(i8* %213, i8* %5)
  br label %214

214:                                              ; preds = %212, %211
  br label %215

215:                                              ; preds = %214, %201, %196, %181, %166, %151, %132, %112, %89
  %.01 = phi %struct.reslib_t* [ null, %89 ], [ null, %112 ], [ null, %132 ], [ null, %151 ], [ null, %166 ], [ null, %181 ], [ null, %196 ], [ null, %201 ], [ %42, %214 ]
  %216 = call i32 @fclose(%struct._IO_FILE* %.02)
  %217 = icmp eq %struct.reslib_t* %.01, null
  br i1 %217, label %218, label %255

218:                                              ; preds = %215
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !tbaa !2
  %220 = icmp ne %struct._IO_FILE* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !tbaa !2
  %223 = call i32 @fclose(%struct._IO_FILE* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !2
  %226 = icmp ne %struct._IO_FILE* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !tbaa !2
  %229 = call i32 @fclose(%struct._IO_FILE* %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !2
  %232 = icmp ne %struct._IO_FILE* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !2
  %235 = call i32 @fclose(%struct._IO_FILE* %234)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !2
  %238 = icmp ne %struct._IO_FILE* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !tbaa !2
  %241 = call i32 @fclose(%struct._IO_FILE* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %244 = call i64 @strlen(i8* %243) #7
  %245 = sub i64 %244, 1
  %246 = trunc i64 %245 to i32
  %247 = icmp sgt i32 %246, 20
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %250

249:                                              ; preds = %242
  br label %250

250:                                              ; preds = %249, %248
  %251 = phi i32 [ 20, %248 ], [ %246, %249 ]
  %252 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %253 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %251, i32 %251, i8* %252) #8
  %254 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %255

255:                                              ; preds = %250, %215
  br label %256

256:                                              ; preds = %255, %55, %44, %36, %27
  %.0 = phi %struct.reslib_t* [ null, %27 ], [ null, %44 ], [ null, %55 ], [ %.01, %255 ], [ null, %36 ]
  %257 = bitcast [256 x i8]* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %257) #8
  %258 = bitcast [100 x i8]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %258) #8
  %259 = bitcast [100 x i8]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %259) #8
  %260 = bitcast [20 x i8]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %260) #8
  %261 = bitcast [128 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %261) #8
  ret %struct.reslib_t* %.0
}

; Function Attrs: nounwind uwtable
define internal void @initatoms() #0 {
  %1 = load i32, i32* @initatoms.init, align 4, !tbaa !27
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %19

4:                                                ; preds = %0
  store i32 0, i32* @initatoms.init, align 4, !tbaa !27
  br label %5

5:                                                ; preds = %4, %15
  %.04 = phi i32 [ 0, %4 ], [ %16, %15 ]
  %.013 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %4 ], [ %17, %15 ]
  call void @NAB_initatom(%struct.atom_t* %.013, i32 1)
  %6 = call noalias i8* @malloc(i64 8) #8
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 0
  store i8* %6, i8** %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !36
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.04, 1
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 1
  %exitcond = icmp ne i32 %16, 1000
  br i1 %exitcond, label %5, label %18

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %3
  %.02 = phi i32 [ 0, %18 ], [ 1, %3 ]
  switch i32 %.02, label %21 [
    i32 0, label %20
    i32 1, label %20
  ]

20:                                               ; preds = %19, %19
  ret void

21:                                               ; preds = %19
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @off2reslib(i8* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x i32], align 16
  %6 = alloca [100 x i32], align 16
  %7 = alloca [100 x i32], align 16
  %8 = alloca [100 x i32], align 16
  %9 = alloca [100 x i32], align 16
  %10 = alloca [100 x i32], align 16
  %11 = alloca [100 x i32], align 16
  %12 = alloca [100 x double], align 16
  %13 = alloca [100 x double], align 16
  %14 = alloca [100 x double], align 16
  %15 = alloca [100 x double], align 16
  %16 = alloca [100 x [10 x i8]], align 16
  %17 = alloca [100 x [10 x i8]], align 16
  %18 = alloca [100 x [10 x i8]], align 16
  %19 = alloca [255 x i8], align 16
  %20 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #8
  %21 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #8
  %22 = bitcast [100 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %22) #8
  %23 = bitcast [100 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %23) #8
  %24 = bitcast [100 x i32]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %24) #8
  %25 = bitcast [100 x i32]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %25) #8
  %26 = bitcast [100 x i32]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %26) #8
  %27 = bitcast [100 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %27) #8
  %28 = bitcast [100 x i32]* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %28) #8
  %29 = bitcast [100 x double]* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 800, i8* %29) #8
  %30 = bitcast [100 x double]* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 800, i8* %30) #8
  %31 = bitcast [100 x double]* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 800, i8* %31) #8
  %32 = bitcast [100 x double]* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 800, i8* %32) #8
  %33 = bitcast [100 x [10 x i8]]* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* %33) #8
  %34 = bitcast [100 x [10 x i8]]* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* %34) #8
  %35 = bitcast [100 x [10 x i8]]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* %35) #8
  %36 = bitcast [255 x i8]* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 255, i8* %36) #8
  store i32 0, i32* @n_atoms, align 4, !tbaa !27
  %37 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* %0, i32 1)
  %38 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %18, i64 0, i64 0
  %39 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* %4, [10 x i8]* %38, i32 10)
  %40 = load i32, i32* %4, align 4, !tbaa !27
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 0, %41
  br i1 %42, label %.lr.ph13, label %126

.lr.ph13:                                         ; preds = %2
  br label %43

43:                                               ; preds = %.lr.ph13, %122
  %indvars.iv411 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next5, %122 ]
  %44 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0
  %45 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %18, i64 0, i64 %indvars.iv411
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %45, i64 0, i64 0
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* %46) #8
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* %37)
  %48 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* %37, i8* %48)
  %49 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 1)
  %50 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0
  %51 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0
  %52 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %53 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0
  %54 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0
  %55 = getelementptr inbounds [100 x double], [100 x double]* %12, i64 0, i64 0
  %56 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %16, i64 0, i64 0
  %57 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %17, i64 0, i64 0
  %58 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* @n_atoms, i32 3, i32* %50, i64 4, i32 4, i32* %51, i64 4, i32 5, i32* %52, i64 4, i32 6, i32* %53, i64 4, i32 7, i32* %54, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 8, double* %55, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, [10 x i8]* %56, i32 10, i32 2, [10 x i8]* %57, i32 10, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0)
  %59 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 0
  %60 = getelementptr inbounds [100 x double], [100 x double]* %14, i64 0, i64 0
  %61 = getelementptr inbounds [100 x double], [100 x double]* %15, i64 0, i64 0
  %62 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* @n_atoms, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, double* %59, i64 8, i32 2, double* %60, i64 8, i32 3, double* %61, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0)
  %63 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 0, %64
  br i1 %65, label %.lr.ph, label %92

.lr.ph:                                           ; preds = %43
  br label %66

66:                                               ; preds = %.lr.ph, %88
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %88 ]
  %67 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv6
  call void @NAB_initatom(%struct.atom_t* %67, i32 0)
  %68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8, !tbaa !36
  %70 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %16, i64 0, i64 %indvars.iv6
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %70, i64 0, i64 0
  %72 = call i8* @strcpy(i8* %69, i8* %71) #8
  %73 = getelementptr inbounds [100 x double], [100 x double]* %12, i64 0, i64 %indvars.iv6
  %74 = load double, double* %73, align 8, !tbaa !53
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 6
  store double %74, double* %75, align 8, !tbaa !42
  %76 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %indvars.iv6
  %77 = load double, double* %76, align 8, !tbaa !53
  %78 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 17
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 0
  store double %77, double* %79, align 8, !tbaa !53
  %80 = getelementptr inbounds [100 x double], [100 x double]* %14, i64 0, i64 %indvars.iv6
  %81 = load double, double* %80, align 8, !tbaa !53
  %82 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 17
  %83 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 1
  store double %81, double* %83, align 8, !tbaa !53
  %84 = getelementptr inbounds [100 x double], [100 x double]* %15, i64 0, i64 %indvars.iv6
  %85 = load double, double* %84, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 17
  %87 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 2
  store double %85, double* %87, align 8, !tbaa !53
  br label %88

88:                                               ; preds = %66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1
  %89 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %indvars.iv.next, %90
  br i1 %91, label %66, label %._crit_edge

._crit_edge:                                      ; preds = %88
  br label %92

92:                                               ; preds = %._crit_edge, %43
  %93 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  call void @addres2reslib(%struct.reslib_t* %1)
  br label %96

96:                                               ; preds = %95, %92
  %97 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0
  %98 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0
  %99 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0
  %100 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* @n_bonds, i32 1, i32* %97, i64 4, i32 2, i32* %98, i64 4, i32 3, i32* %99, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0)
  %101 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 0, %102
  br i1 %103, label %.lr.ph9, label %117

.lr.ph9:                                          ; preds = %96
  br label %104

104:                                              ; preds = %.lr.ph9, %113
  %indvars.iv27 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next3, %113 ]
  %105 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 %indvars.iv27
  %106 = load i32, i32* %105, align 4, !tbaa !27
  %107 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv27
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0
  store i32 %106, i32* %108, align 8, !tbaa !27
  %109 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 %indvars.iv27
  %110 = load i32, i32* %109, align 4, !tbaa !27
  %111 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv27
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %111, i64 0, i64 1
  store i32 %110, i32* %112, align 4, !tbaa !27
  br label %113

113:                                              ; preds = %104
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv27, 1
  %114 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %indvars.iv.next3, %115
  br i1 %116, label %104, label %._crit_edge10

._crit_edge10:                                    ; preds = %113
  br label %117

117:                                              ; preds = %._crit_edge10, %96
  %118 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  call void @addbonds2reslib(%struct.reslib_t* %1)
  br label %121

121:                                              ; preds = %120, %117
  br label %122

122:                                              ; preds = %121
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv411, 1
  %123 = load i32, i32* %4, align 4, !tbaa !27
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %indvars.iv.next5, %124
  br i1 %125, label %43, label %._crit_edge14

._crit_edge14:                                    ; preds = %122
  br label %126

126:                                              ; preds = %._crit_edge14, %2
  %127 = bitcast [255 x i8]* %19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 255, i8* %127) #8
  %128 = bitcast [100 x [10 x i8]]* %18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* %128) #8
  %129 = bitcast [100 x [10 x i8]]* %17 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* %129) #8
  %130 = bitcast [100 x [10 x i8]]* %16 to i8*
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* %130) #8
  %131 = bitcast [100 x double]* %15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 800, i8* %131) #8
  %132 = bitcast [100 x double]* %14 to i8*
  call void @llvm.lifetime.end.p0i8(i64 800, i8* %132) #8
  %133 = bitcast [100 x double]* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 800, i8* %133) #8
  %134 = bitcast [100 x double]* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 800, i8* %134) #8
  %135 = bitcast [100 x i32]* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %135) #8
  %136 = bitcast [100 x i32]* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %136) #8
  %137 = bitcast [100 x i32]* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %137) #8
  %138 = bitcast [100 x i32]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %138) #8
  %139 = bitcast [100 x i32]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %139) #8
  %140 = bitcast [100 x i32]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %140) #8
  %141 = bitcast [100 x i32]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %141) #8
  %142 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #8
  %143 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pdb2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %12) #8
  %13 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %13) #8
  %14 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %14) #8
  %15 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %15) #8
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #8
  %17 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #8
  %18 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #8
  %19 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #8
  %20 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #8
  store i32 0, i32* @n_atoms, align 4, !tbaa !27
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !tbaa !11
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %22 = call i8* @fgets(i8* %21, i32 256, %struct._IO_FILE* %0)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %.lr.ph, label %77

.lr.ph:                                           ; preds = %2
  br label %24

24:                                               ; preds = %.lr.ph, %74
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %26 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* %25, i64 6) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  call void @setrlibattrs(%struct.reslib_t* %1, i8* %29)
  br label %74

30:                                               ; preds = %24
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %32 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* %31, i64 4) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %36 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* %35, i64 6) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* %40, i32* %7, i8* %41, i8* %42, i32* %8, double* %9, double* %10, double* %11) #8
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %45 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %44) #7
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void @addres2reslib(%struct.reslib_t* %1)
  store i32 0, i32* @n_atoms, align 4, !tbaa !27
  br label %51

51:                                               ; preds = %50, %47
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %53 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %52) #8
  br label %54

54:                                               ; preds = %51, %38
  %55 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %56
  call void @NAB_initatom(%struct.atom_t* %57, i32 0)
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8, !tbaa !36
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %61 = call i8* @strcpy(i8* %59, i8* %60) #8
  %62 = load double, double* %9, align 8, !tbaa !53
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 17
  %64 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 0, i64 0
  store double %62, double* %64, align 8, !tbaa !53
  %65 = load double, double* %10, align 8, !tbaa !53
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 17
  %67 = getelementptr inbounds [3 x double], [3 x double]* %66, i64 0, i64 1
  store double %65, double* %67, align 8, !tbaa !53
  %68 = load double, double* %11, align 8, !tbaa !53
  %69 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 17
  %70 = getelementptr inbounds [3 x double], [3 x double]* %69, i64 0, i64 2
  store double %68, double* %70, align 8, !tbaa !53
  %71 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @n_atoms, align 4, !tbaa !27
  br label %73

73:                                               ; preds = %54, %34
  br label %74

74:                                               ; preds = %73, %28
  %75 = call i8* @fgets(i8* %21, i32 256, %struct._IO_FILE* %0)
  %76 = icmp ne i8* %75, null
  br i1 %76, label %24, label %._crit_edge

._crit_edge:                                      ; preds = %74
  br label %77

77:                                               ; preds = %._crit_edge, %2
  %78 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @addres2reslib(%struct.reslib_t* %1)
  br label %81

81:                                               ; preds = %80, %77
  %82 = bitcast double* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #8
  %83 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #8
  %84 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #8
  %85 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #8
  %86 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #8
  %87 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %87) #8
  %88 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %88) #8
  %89 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %89) #8
  %90 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %90) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bnd2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %7) #8
  %8 = bitcast [20 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %8) #8
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #8
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #8
  store i32 0, i32* @n_bonds, align 4, !tbaa !27
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %11, align 16, !tbaa !11
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %13 = call i8* @fgets(i8* %12, i32 256, %struct._IO_FILE* %0)
  %14 = icmp ne i8* %13, null
  br i1 %14, label %.lr.ph, label %83

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %80
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %17 = load i8, i8* %16, align 16, !tbaa !11
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 35
  br i1 %19, label %20, label %49

20:                                               ; preds = %15
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* %22) #8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %27 = call i64 @strlen(i8* %26) #7
  %28 = sub i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %29, 20
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %31
  %34 = phi i32 [ 20, %31 ], [ %29, %32 ]
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %34, i32 %34, i8* %35) #8
  %37 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %88

38:                                               ; preds = %20
  %39 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  call void @addbonds2reslib(%struct.reslib_t* %1)
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %43 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %42) #8
  store i32 0, i32* @n_bonds, align 4, !tbaa !27
  br label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %46 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %45) #8
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47
  br label %80

49:                                               ; preds = %15
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %51 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* %5, i32* %6) #8
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %55 = call i64 @strlen(i8* %54) #7
  %56 = sub i64 %55, 1
  %57 = trunc i64 %56 to i32
  %58 = icmp sgt i32 %57, 20
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %59
  %62 = phi i32 [ 20, %59 ], [ %57, %60 ]
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %62, i32 %62, i8* %63) #8
  %65 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %88

66:                                               ; preds = %49
  %67 = load i32, i32* %5, align 4, !tbaa !27
  %68 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0
  store i32 %67, i32* %71, align 8, !tbaa !27
  %72 = load i32, i32* %6, align 4, !tbaa !27
  %73 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %74
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 0, i64 1
  store i32 %72, i32* %76, align 4, !tbaa !27
  %77 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @n_bonds, align 4, !tbaa !27
  br label %79

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %48
  %81 = call i8* @fgets(i8* %12, i32 256, %struct._IO_FILE* %0)
  %82 = icmp ne i8* %81, null
  br i1 %82, label %15, label %._crit_edge

._crit_edge:                                      ; preds = %80
  br label %83

83:                                               ; preds = %._crit_edge, %2
  %84 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  call void @addbonds2reslib(%struct.reslib_t* %1)
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %61, %33
  %.0 = phi i32 [ 1, %33 ], [ 1, %61 ], [ 0, %87 ]
  %89 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #8
  %90 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #8
  %91 = bitcast [20 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %91) #8
  %92 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %92) #8
  switch i32 %.0, label %94 [
    i32 0, label %93
    i32 1, label %93
  ]

93:                                               ; preds = %88, %88
  ret void

94:                                               ; preds = %88
  unreachable
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @qr2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %11) #8
  %12 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %12) #8
  %13 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %13) #8
  %14 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %14) #8
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #8
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #8
  %17 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #8
  %18 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #8
  store i32 0, i32* @n_atoms, align 4, !tbaa !27
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !tbaa !11
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %20 = call i8* @fgets(i8* %19, i32 256, %struct._IO_FILE* %0)
  %21 = icmp ne i8* %20, null
  br i1 %21, label %.lr.ph, label %69

.lr.ph:                                           ; preds = %2
  br label %22

22:                                               ; preds = %.lr.ph, %.backedge
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %24 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* %23, i64 3) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  br label %.backedge

.backedge:                                        ; preds = %26, %68
  %27 = call i8* @fgets(i8* %19, i32 256, %struct._IO_FILE* %0)
  %28 = icmp ne i8* %27, null
  br i1 %28, label %22, label %._crit_edge

29:                                               ; preds = %22
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %31 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* %30, i64 4) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %35 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* %34, i64 6) #7
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %42 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* %39, i32* %7, i8* %40, i8* %41, i32* %8, double* %9, double* %10) #8
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %44 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %43) #7
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  call void @addqr2reslib(%struct.reslib_t* %1)
  store i32 0, i32* @n_atoms, align 4, !tbaa !27
  br label %50

50:                                               ; preds = %49, %46
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %52 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %51) #8
  br label %53

53:                                               ; preds = %50, %37
  %54 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %55
  call void @NAB_initatom(%struct.atom_t* %56, i32 0)
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8, !tbaa !36
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %60 = call i8* @strcpy(i8* %58, i8* %59) #8
  %61 = load double, double* %9, align 8, !tbaa !53
  %62 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 6
  store double %61, double* %62, align 8, !tbaa !42
  %63 = load double, double* %10, align 8, !tbaa !53
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 7
  store double %63, double* %64, align 8, !tbaa !43
  %65 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @n_atoms, align 4, !tbaa !27
  br label %67

67:                                               ; preds = %53, %33
  br label %68

68:                                               ; preds = %67
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge
  br label %69

69:                                               ; preds = %._crit_edge, %2
  %70 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @addqr2reslib(%struct.reslib_t* %1)
  br label %73

73:                                               ; preds = %72, %69
  %74 = bitcast double* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #8
  %75 = bitcast double* %9 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #8
  %76 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #8
  %77 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #8
  %78 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %78) #8
  %79 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %79) #8
  %80 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %80) #8
  %81 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %81) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @chi2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  %9 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %9) #8
  %10 = bitcast [20 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %10) #8
  %11 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #8
  %12 = bitcast [8 x i8]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #8
  %13 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #8
  %14 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #8
  store i32 0, i32* @n_chi, align 4, !tbaa !27
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %15, align 16, !tbaa !11
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %17 = call i8* @fgets(i8* %16, i32 256, %struct._IO_FILE* %0)
  %18 = icmp ne i8* %17, null
  br i1 %18, label %.lr.ph13, label %171

.lr.ph13:                                         ; preds = %2
  br label %19

19:                                               ; preds = %.lr.ph13, %168
  %.0112 = phi %struct.residue_t* [ null, %.lr.ph13 ], [ %.2, %168 ]
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %21 = load i8, i8* %20, align 16, !tbaa !11
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %75

24:                                               ; preds = %19
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* %26) #8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %31 = call i64 @strlen(i8* %30) #7
  %32 = sub i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp sgt i32 %33, 20
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %35
  %38 = phi i32 [ 20, %35 ], [ %33, %36 ]
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %38, i32 %38, i8* %39) #8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %176

43:                                               ; preds = %24
  %44 = load i32, i32* @n_chi, align 4, !tbaa !27
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @addchi2reslib(%struct.reslib_t* %1)
  store i32 0, i32* @n_chi, align 4, !tbaa !27
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %1, i32 0, i32 4
  %49 = load %struct.residue_t*, %struct.residue_t** %48, align 8, !tbaa !12
  %50 = icmp ne %struct.residue_t* %49, null
  br i1 %50, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %47
  br label %51

51:                                               ; preds = %.lr.ph, %59
  %.111 = phi %struct.residue_t* [ %49, %.lr.ph ], [ %61, %59 ]
  %52 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.111, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8, !tbaa !13
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %55 = call i32 @strcmp(i8* %53, i8* %54) #7
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  %.1.lcssa3 = phi %struct.residue_t* [ %.111, %51 ]
  br label %63

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.111, i32 0, i32 0
  %61 = load %struct.residue_t*, %struct.residue_t** %60, align 8, !tbaa !15
  %62 = icmp ne %struct.residue_t* %61, null
  br i1 %62, label %51, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %59
  %split = phi %struct.residue_t* [ %61, %59 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %47
  %.1.lcssa = phi %struct.residue_t* [ %split, %..loopexit_crit_edge ], [ %49, %47 ]
  br label %63

63:                                               ; preds = %.loopexit, %57
  %.14 = phi %struct.residue_t* [ %.1.lcssa3, %57 ], [ %.1.lcssa, %.loopexit ]
  %.02 = phi %struct.residue_t* [ %.1.lcssa3, %57 ], [ null, %.loopexit ]
  %64 = icmp ne %struct.residue_t* %.02, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %63
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %68 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %1, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8, !tbaa !9
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* %67, i8* %69)
  br label %176

71:                                               ; preds = %63
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %73 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %72) #8
  br label %74

74:                                               ; preds = %71
  br label %168

75:                                               ; preds = %19
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %81 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* %77, i8* %78, i8* %79, i8* %80) #8
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %83 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* %82)
  %84 = icmp ne %struct.atom_t* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %75
  %.01.lcssa5 = phi %struct.residue_t* [ %.0112, %75 ]
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %88 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8, !tbaa !13
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %87, i8* %89)
  call void @exit(i32 1) #6
  unreachable

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i32 0, i32 17
  %93 = load %struct.atom_t*, %struct.atom_t** %92, align 8, !tbaa !35
  %94 = ptrtoint %struct.atom_t* %83 to i64
  %95 = ptrtoint %struct.atom_t* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 176
  %98 = trunc i64 %97 to i32
  br label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %101 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* %100)
  %102 = icmp ne %struct.atom_t* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %99
  %.01.lcssa6 = phi %struct.residue_t* [ %.0112, %99 ]
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %105 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa6, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8, !tbaa !13
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %105, i8* %107)
  call void @exit(i32 1) #6
  unreachable

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i32 0, i32 17
  %111 = load %struct.atom_t*, %struct.atom_t** %110, align 8, !tbaa !35
  %112 = ptrtoint %struct.atom_t* %101 to i64
  %113 = ptrtoint %struct.atom_t* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 176
  %116 = trunc i64 %115 to i32
  br label %117

117:                                              ; preds = %109
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %119 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* %118)
  %120 = icmp ne %struct.atom_t* %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %.01.lcssa7 = phi %struct.residue_t* [ %.0112, %117 ]
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %124 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa7, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8, !tbaa !13
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %123, i8* %125)
  call void @exit(i32 1) #6
  unreachable

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i32 0, i32 17
  %129 = load %struct.atom_t*, %struct.atom_t** %128, align 8, !tbaa !35
  %130 = ptrtoint %struct.atom_t* %119 to i64
  %131 = ptrtoint %struct.atom_t* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 176
  %134 = trunc i64 %133 to i32
  br label %135

135:                                              ; preds = %127
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %137 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* %136)
  %138 = icmp ne %struct.atom_t* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %.01.lcssa8 = phi %struct.residue_t* [ %.0112, %135 ]
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %142 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa8, i32 0, i32 4
  %143 = load i8*, i8** %142, align 8, !tbaa !13
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %141, i8* %143)
  call void @exit(i32 1) #6
  unreachable

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i32 0, i32 17
  %147 = load %struct.atom_t*, %struct.atom_t** %146, align 8, !tbaa !35
  %148 = ptrtoint %struct.atom_t* %137 to i64
  %149 = ptrtoint %struct.atom_t* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 176
  %152 = trunc i64 %151 to i32
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* @n_chi, align 4, !tbaa !27
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %155
  %157 = load i32, i32* @n_chi, align 4, !tbaa !27
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @n_chi, align 4, !tbaa !27
  %159 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 0
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %159, i64 0, i64 0
  store i32 %98, i32* %160, align 8, !tbaa !27
  %161 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 0
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %161, i64 0, i64 1
  store i32 %116, i32* %162, align 4, !tbaa !27
  %163 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 0
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %163, i64 0, i64 2
  store i32 %134, i32* %164, align 8, !tbaa !27
  %165 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 0
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %165, i64 0, i64 3
  store i32 %152, i32* %166, align 4, !tbaa !27
  %167 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 1
  store double 0.000000e+00, double* %167, align 8, !tbaa !29
  br label %168

168:                                              ; preds = %153, %74
  %.2 = phi %struct.residue_t* [ %.14, %74 ], [ %.0112, %153 ]
  %169 = call i8* @fgets(i8* %16, i32 256, %struct._IO_FILE* %0)
  %170 = icmp ne i8* %169, null
  br i1 %170, label %19, label %._crit_edge

._crit_edge:                                      ; preds = %168
  br label %171

171:                                              ; preds = %._crit_edge, %2
  %172 = load i32, i32* @n_chi, align 4, !tbaa !27
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  call void @addchi2reslib(%struct.reslib_t* %1)
  store i32 0, i32* @n_chi, align 4, !tbaa !27
  br label %175

175:                                              ; preds = %174, %171
  br label %176

176:                                              ; preds = %175, %65, %37
  %.0 = phi i32 [ 1, %37 ], [ 1, %65 ], [ 0, %175 ]
  %177 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %177) #8
  %178 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %178) #8
  %179 = bitcast [8 x i8]* %6 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %179) #8
  %180 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %180) #8
  %181 = bitcast [20 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %181) #8
  %182 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %182) #8
  switch i32 %.0, label %184 [
    i32 0, label %183
    i32 1, label %183
  ]

183:                                              ; preds = %176, %176
  ret void

184:                                              ; preds = %176
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @mk_fname(i8* %0, i8* %1) #0 {
  %3 = load i8, i8* %0, align 1, !tbaa !11
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 47
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %0, i64 2) #7
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6, %2
  %10 = call i8* @strcpy(i8* %1, i8* %0) #8
  br label %13

11:                                               ; preds = %6
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* %0) #8
  br label %13

13:                                               ; preds = %11, %9
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @NAB_initatom(%struct.atom_t*, i32) #2

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) #2

declare dso_local signext i8 @bDBGetValue(...) #2

declare dso_local void @DBZeroPrefix(...) #2

declare dso_local void @DBPushPrefix(...) #2

declare dso_local signext i8 @bDBGetTable(...) #2

; Function Attrs: nounwind uwtable
define internal void @addres2reslib(%struct.reslib_t* %0) #0 {
  %2 = call noalias i8* @malloc(i64 128) #8
  %3 = bitcast i8* %2 to %struct.residue_t*
  %4 = icmp eq %struct.residue_t* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !9
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %7) #8
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %189

10:                                               ; preds = %1
  %11 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 176
  %14 = call noalias i8* @malloc(i64 %13) #8
  %15 = bitcast i8* %14 to %struct.atom_t*
  %16 = icmp eq %struct.atom_t* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8, !tbaa !9
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %19) #8
  %21 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %189

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 0
  store %struct.residue_t* %24, %struct.residue_t** %25, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4
  store %struct.residue_t* %3, %struct.residue_t** %26, align 8, !tbaa !12
  %27 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7
  %28 = add i64 %27, 1
  %29 = call noalias i8* @malloc(i64 %28) #8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

34:                                               ; preds = %22
  %35 = call i8* @strcpy(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #8
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 4
  store i8* %29, i8** %36, align 8, !tbaa !13
  %37 = call noalias i8* @malloc(i64 1) #8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

42:                                               ; preds = %34
  %43 = call i8* @strcpy(i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.75, i64 0, i64 0)) #8
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 5
  store i8* %37, i8** %44, align 8, !tbaa !19
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 1
  store i32 0, i32* %45, align 8, !tbaa !20
  %46 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 2
  store i32 0, i32* %46, align 4, !tbaa !21
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 3
  store i32 0, i32* %47, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 6
  store i32 0, i32* %48, align 8, !tbaa !23
  %49 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 2
  %50 = load i32, i32* %49, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 7
  store i32 %50, i32* %51, align 4, !tbaa !32
  %52 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 3
  %53 = load i32, i32* %52, align 4, !tbaa !71
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 8
  store i32 %53, i32* %54, align 8, !tbaa !33
  %55 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 9
  store %struct.strand_t* null, %struct.strand_t** %55, align 8, !tbaa !24
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 10
  store %struct.extbond_t* null, %struct.extbond_t** %56, align 8, !tbaa !25
  %57 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 11
  store i32 0, i32* %57, align 8, !tbaa !17
  %58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 12
  store [2 x i32]* null, [2 x i32]** %58, align 8, !tbaa !26
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 13
  store i32 0, i32* %59, align 8, !tbaa !18
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 14
  store %struct.chiral_t* null, %struct.chiral_t** %60, align 8, !tbaa !28
  %61 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %62 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 15
  store i32 %61, i32* %62, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 16
  store i32* null, i32** %63, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  store %struct.atom_t* %15, %struct.atom_t** %64, align 8, !tbaa !35
  %65 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 0, %66
  br i1 %67, label %.lr.ph, label %188

.lr.ph:                                           ; preds = %42
  br label %68

68:                                               ; preds = %.lr.ph, %184
  %indvars.iv610 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next7, %184 ]
  %69 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 16, !tbaa !36
  %72 = call i64 @strlen(i8* %71) #7
  %73 = add i64 %72, 1
  %74 = call noalias i8* @malloc(i64 %73) #8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

79:                                               ; preds = %68
  %80 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 16, !tbaa !36
  %83 = call i8* @strcpy(i8* %74, i8* %82) #8
  %84 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %85 = load %struct.atom_t*, %struct.atom_t** %84, align 8, !tbaa !35
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %85, i64 %indvars.iv610
  %87 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i32 0, i32 0
  store i8* %74, i8** %87, align 8, !tbaa !36
  %88 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %89 = load %struct.atom_t*, %struct.atom_t** %88, align 8, !tbaa !35
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %89, i64 %indvars.iv610
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i32 0, i32 2
  store i32 0, i32* %91, align 8, !tbaa !39
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %93 = load %struct.atom_t*, %struct.atom_t** %92, align 8, !tbaa !35
  %94 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %93, i64 %indvars.iv610
  %95 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %94, i32 0, i32 3
  store i32 0, i32* %95, align 4, !tbaa !40
  br label %96

96:                                               ; preds = %79, %102
  %indvars.iv8 = phi i64 [ 0, %79 ], [ %indvars.iv.next, %102 ]
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %98 = load %struct.atom_t*, %struct.atom_t** %97, align 8, !tbaa !35
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %98, i64 %indvars.iv610
  %100 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %99, i32 0, i32 4
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %100, i64 0, i64 %indvars.iv8
  store i32 -1, i32* %101, align 4, !tbaa !27
  br label %102

102:                                              ; preds = %96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 8
  br i1 %exitcond, label %96, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %105 = load %struct.atom_t*, %struct.atom_t** %104, align 8, !tbaa !35
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %105, i64 %indvars.iv610
  %107 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 5
  store %struct.residue_t* %3, %struct.residue_t** %107, align 8, !tbaa !41
  %108 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %108, i32 0, i32 6
  %110 = load double, double* %109, align 16, !tbaa !42
  %111 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %112 = load %struct.atom_t*, %struct.atom_t** %111, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %112, i64 %indvars.iv610
  %114 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %113, i32 0, i32 6
  store double %110, double* %114, align 8, !tbaa !42
  %115 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %115, i32 0, i32 7
  %117 = load double, double* %116, align 8, !tbaa !43
  %118 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %119 = load %struct.atom_t*, %struct.atom_t** %118, align 8, !tbaa !35
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %119, i64 %indvars.iv610
  %121 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %120, i32 0, i32 7
  store double %117, double* %121, align 8, !tbaa !43
  %122 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %123 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %122, i32 0, i32 8
  %124 = load double, double* %123, align 16, !tbaa !44
  %125 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %126 = load %struct.atom_t*, %struct.atom_t** %125, align 8, !tbaa !35
  %127 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i64 %indvars.iv610
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i32 0, i32 8
  store double %124, double* %128, align 8, !tbaa !44
  %129 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %130 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %129, i32 0, i32 9
  %131 = load double, double* %130, align 8, !tbaa !45
  %132 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %133 = load %struct.atom_t*, %struct.atom_t** %132, align 8, !tbaa !35
  %134 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %133, i64 %indvars.iv610
  %135 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %134, i32 0, i32 9
  store double %131, double* %135, align 8, !tbaa !45
  %136 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %137 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 8, !tbaa !47
  %139 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %140 = load %struct.atom_t*, %struct.atom_t** %139, align 8, !tbaa !35
  %141 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %140, i64 %indvars.iv610
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %141, i32 0, i32 11
  store i32 %138, i32* %142, align 8, !tbaa !47
  %143 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %144 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %143, i32 0, i32 12
  %145 = load double, double* %144, align 16, !tbaa !48
  %146 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %147 = load %struct.atom_t*, %struct.atom_t** %146, align 8, !tbaa !35
  %148 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %147, i64 %indvars.iv610
  %149 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %148, i32 0, i32 12
  store double %145, double* %149, align 8, !tbaa !48
  %150 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %151 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %150, i32 0, i32 13
  %152 = load double, double* %151, align 8, !tbaa !49
  %153 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %154 = load %struct.atom_t*, %struct.atom_t** %153, align 8, !tbaa !35
  %155 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %154, i64 %indvars.iv610
  %156 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %155, i32 0, i32 13
  store double %152, double* %156, align 8, !tbaa !49
  %157 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %158 = load %struct.atom_t*, %struct.atom_t** %157, align 8, !tbaa !35
  %159 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %158, i64 %indvars.iv610
  %160 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %159, i32 0, i32 15
  store i32 0, i32* %160, align 4, !tbaa !51
  %161 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %162 = load %struct.atom_t*, %struct.atom_t** %161, align 8, !tbaa !35
  %163 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %162, i64 %indvars.iv610
  %164 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %163, i32 0, i32 16
  store i8* null, i8** %164, align 8, !tbaa !52
  br label %165

165:                                              ; preds = %103, %175
  %indvars.iv39 = phi i64 [ 0, %103 ], [ %indvars.iv.next4, %175 ]
  %166 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %167 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %166, i32 0, i32 17
  %168 = getelementptr inbounds [3 x double], [3 x double]* %167, i64 0, i64 %indvars.iv39
  %169 = load double, double* %168, align 8, !tbaa !53
  %170 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %171 = load %struct.atom_t*, %struct.atom_t** %170, align 8, !tbaa !35
  %172 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv610
  %173 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %172, i32 0, i32 17
  %174 = getelementptr inbounds [3 x double], [3 x double]* %173, i64 0, i64 %indvars.iv39
  store double %169, double* %174, align 8, !tbaa !53
  br label %175

175:                                              ; preds = %165
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next4, 3
  br i1 %exitcond5, label %165, label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610
  %178 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i32 0, i32 18
  %179 = load double, double* %178, align 8, !tbaa !54
  %180 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17
  %181 = load %struct.atom_t*, %struct.atom_t** %180, align 8, !tbaa !35
  %182 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %181, i64 %indvars.iv610
  %183 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %182, i32 0, i32 18
  store double %179, double* %183, align 8, !tbaa !54
  br label %184

184:                                              ; preds = %176
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv610, 1
  %185 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %indvars.iv.next7, %186
  br i1 %187, label %68, label %._crit_edge

._crit_edge:                                      ; preds = %184
  br label %188

188:                                              ; preds = %._crit_edge, %42
  br label %189

189:                                              ; preds = %188, %17, %5
  %.0 = phi i32 [ 1, %5 ], [ 1, %17 ], [ 0, %188 ]
  switch i32 %.0, label %191 [
    i32 0, label %190
    i32 1, label %190
  ]

190:                                              ; preds = %189, %189
  ret void

191:                                              ; preds = %189
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @addbonds2reslib(%struct.reslib_t* %0) #0 {
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !tbaa !12
  %4 = icmp ne %struct.residue_t* %3, null
  br i1 %4, label %.lr.ph, label %104

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %100
  %.014 = phi %struct.residue_t* [ %3, %.lr.ph ], [ %102, %100 ]
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.014, i32 0, i32 4
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %99

10:                                               ; preds = %5
  %.0.lcssa8 = phi %struct.residue_t* [ %.014, %5 ]
  %11 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = call noalias i8* @malloc(i64 %13) #8
  %15 = bitcast i8* %14 to [2 x i32]*
  %16 = icmp eq [2 x i32]* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #8
  %19 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %109

20:                                               ; preds = %10
  %21 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 0, %22
  br i1 %23, label %.lr.ph19, label %95

.lr.ph19:                                         ; preds = %20
  br label %24

24:                                               ; preds = %.lr.ph19, %91
  %indvars.iv1217 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next13, %91 ]
  %25 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv1217
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %27 = load i32, i32* %26, align 8, !tbaa !27
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 %indvars.iv1217
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  store i32 %27, i32* %29, align 4, !tbaa !27
  %30 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv1217
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  %32 = load i32, i32* %31, align 4, !tbaa !27
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 %indvars.iv1217
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 1
  store i32 %32, i32* %34, align 4, !tbaa !27
  %35 = add nsw i32 %27, -1
  %36 = add nsw i32 %32, -1
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0.lcssa8, i32 0, i32 17
  %38 = load %struct.atom_t*, %struct.atom_t** %37, align 8, !tbaa !35
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i64 %39
  br label %41

41:                                               ; preds = %24, %62
  %indvars.iv15 = phi i64 [ 0, %24 ], [ %indvars.iv.next, %62 ]
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %42, i64 0, i64 %indvars.iv15
  %44 = load i32, i32* %43, align 4, !tbaa !27
  %45 = icmp eq i32 %44, %36
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %63

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %48, i64 0, i64 %indvars.iv15
  %50 = load i32, i32* %49, align 4, !tbaa !27
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %.02.lcssa5.wide = phi i64 [ %indvars.iv15, %47 ]
  %53 = trunc i64 %.02.lcssa5.wide to i32
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 %55
  store i32 %36, i32* %56, align 4, !tbaa !27
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 3
  %58 = load i32, i32* %57, align 4, !tbaa !40
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4, !tbaa !40
  br label %63

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv15, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 8
  br i1 %exitcond, label %41, label %.loopexit3

.loopexit3:                                       ; preds = %62
  br label %63

63:                                               ; preds = %.loopexit3, %52, %46
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0.lcssa8, i32 0, i32 17
  %65 = load %struct.atom_t*, %struct.atom_t** %64, align 8, !tbaa !35
  %66 = sext i32 %36 to i64
  %67 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %66
  br label %68

68:                                               ; preds = %63, %89
  %indvars.iv916 = phi i64 [ 0, %63 ], [ %indvars.iv.next10, %89 ]
  %69 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 4
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %69, i64 0, i64 %indvars.iv916
  %71 = load i32, i32* %70, align 4, !tbaa !27
  %72 = icmp eq i32 %71, %35
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %90

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 4
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %75, i64 0, i64 %indvars.iv916
  %77 = load i32, i32* %76, align 4, !tbaa !27
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %.1.lcssa7.wide = phi i64 [ %indvars.iv916, %74 ]
  %80 = trunc i64 %.1.lcssa7.wide to i32
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %81, i64 0, i64 %82
  store i32 %35, i32* %83, align 4, !tbaa !27
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 3
  %85 = load i32, i32* %84, align 4, !tbaa !40
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4, !tbaa !40
  br label %90

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv916, 1
  %exitcond11 = icmp ne i64 %indvars.iv.next10, 8
  br i1 %exitcond11, label %68, label %.loopexit

.loopexit:                                        ; preds = %89
  br label %90

90:                                               ; preds = %.loopexit, %79, %73
  br label %91

91:                                               ; preds = %90
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1217, 1
  %92 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %indvars.iv.next13, %93
  br i1 %94, label %24, label %._crit_edge20

._crit_edge20:                                    ; preds = %91
  br label %95

95:                                               ; preds = %._crit_edge20, %20
  %96 = load i32, i32* @n_bonds, align 4, !tbaa !27
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0.lcssa8, i32 0, i32 11
  store i32 %96, i32* %97, align 8, !tbaa !17
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0.lcssa8, i32 0, i32 12
  store [2 x i32]* %15, [2 x i32]** %98, align 8, !tbaa !26
  br label %109

99:                                               ; preds = %5
  br label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.014, i32 0, i32 0
  %102 = load %struct.residue_t*, %struct.residue_t** %101, align 8, !tbaa !15
  %103 = icmp ne %struct.residue_t* %102, null
  br i1 %103, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %100
  br label %104

104:                                              ; preds = %._crit_edge, %1
  %105 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8, !tbaa !9
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %106) #8
  %108 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %95, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setrlibattrs(%struct.reslib_t* %0, i8* %1) #0 {
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %5) #8
  %6 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %6) #8
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* %7, i8* %8) #8
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %46

12:                                               ; preds = %2
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 2
  store i32 1, i32* %17, align 8, !tbaa !6
  br label %32

18:                                               ; preds = %12
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 2
  store i32 2, i32* %23, align 8, !tbaa !6
  br label %31

24:                                               ; preds = %18
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 2
  store i32 3, i32* %29, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 3
  store i32 1, i32* %37, align 4, !tbaa !71
  br label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 3
  store i32 2, i32* %43, align 4, !tbaa !71
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %45, %11
  %.0 = phi i32 [ 1, %11 ], [ 0, %45 ]
  %47 = bitcast [100 x i8]* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %47) #8
  %48 = bitcast [100 x i8]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %48) #8
  switch i32 %.0, label %50 [
    i32 0, label %49
    i32 1, label %49
  ]

49:                                               ; preds = %46, %46
  ret void

50:                                               ; preds = %46
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @addqr2reslib(%struct.reslib_t* %0) #0 {
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !tbaa !12
  %4 = icmp ne %struct.residue_t* %3, null
  br i1 %4, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %48
  %.04 = phi %struct.residue_t* [ %3, %.lr.ph ], [ %50, %48 ]
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.04, i32 0, i32 4
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %5
  %.0.lcssa3 = phi %struct.residue_t* [ %.04, %5 ]
  %11 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %12 = icmp slt i32 0, %11
  br i1 %12, label %.lr.ph8, label %46

.lr.ph8:                                          ; preds = %10
  br label %13

13:                                               ; preds = %.lr.ph8, %41
  %.016 = phi i32 [ 0, %.lr.ph8 ], [ %42, %41 ]
  %.025 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %.lr.ph8 ], [ %43, %41 ]
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !tbaa !36
  %16 = call %struct.atom_t* @findatom(%struct.residue_t* %.0.lcssa3, i8* %15)
  %17 = icmp ne %struct.atom_t* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 6
  %20 = load double, double* %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 6
  store double %20, double* %21, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 7
  %23 = load double, double* %22, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 7
  store double %23, double* %24, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 8
  %26 = load double, double* %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 8
  store double %26, double* %27, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 9
  %29 = load double, double* %28, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 9
  store double %29, double* %30, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 11
  %32 = load i32, i32* %31, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 11
  store i32 %32, i32* %33, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 12
  %35 = load double, double* %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 12
  store double %35, double* %36, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 13
  %38 = load double, double* %37, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 13
  store double %38, double* %39, align 8, !tbaa !49
  br label %40

40:                                               ; preds = %18, %13
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.016, 1
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 1
  %44 = load i32, i32* @n_atoms, align 4, !tbaa !27
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %13, label %._crit_edge9

._crit_edge9:                                     ; preds = %41
  br label %46

46:                                               ; preds = %._crit_edge9, %10
  br label %57

47:                                               ; preds = %5
  br label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.04, i32 0, i32 0
  %50 = load %struct.residue_t*, %struct.residue_t** %49, align 8, !tbaa !15
  %51 = icmp ne %struct.residue_t* %50, null
  br i1 %51, label %5, label %._crit_edge

._crit_edge:                                      ; preds = %48
  br label %52

52:                                               ; preds = %._crit_edge, %1
  %53 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8, !tbaa !9
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %54) #8
  %56 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %46
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.atom_t* @findatom(%struct.residue_t* %0, i8* %1) #0 {
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %4 = load i32, i32* %3, align 8, !tbaa !16
  %5 = sext i32 %4 to i64
  %6 = icmp slt i64 0, %5
  br i1 %6, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %22
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %22 ]
  %8 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %9 = load %struct.atom_t*, %struct.atom_t** %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %indvars.iv3
  %11 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8, !tbaa !36
  %13 = call i32 @strcmp(i8* %12, i8* %1) #7
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %.01.lcssa2.wide = phi i64 [ %indvars.iv3, %7 ]
  %16 = trunc i64 %.01.lcssa2.wide to i32
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %18 = load %struct.atom_t*, %struct.atom_t** %17, align 8, !tbaa !35
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %18, i64 %19
  br label %27

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %23 = load i32, i32* %3, align 8, !tbaa !16
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %indvars.iv.next, %24
  br i1 %25, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %22
  br label %26

26:                                               ; preds = %._crit_edge, %2
  br label %27

27:                                               ; preds = %26, %15
  %.0 = phi %struct.atom_t* [ %20, %15 ], [ null, %26 ]
  ret %struct.atom_t* %.0
}

; Function Attrs: nounwind uwtable
define internal void @addchi2reslib(%struct.reslib_t* %0) #0 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  %5 = bitcast [4 x [3 x double]]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %5) #8
  %6 = bitcast [4 x [3 x double]]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %6) #8
  %7 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #8
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !tbaa !12
  %10 = icmp ne %struct.residue_t* %9, null
  br i1 %10, label %.lr.ph, label %89

.lr.ph:                                           ; preds = %1
  br label %11

11:                                               ; preds = %.lr.ph, %85
  %.018 = phi %struct.residue_t* [ %9, %.lr.ph ], [ %87, %85 ]
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.018, i32 0, i32 4
  %13 = load i8*, i8** %12, align 8, !tbaa !13
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %84, label %16

16:                                               ; preds = %11
  %.01.lcssa5 = phi %struct.residue_t* [ %.018, %11 ]
  %17 = load i32, i32* @n_chi, align 4, !tbaa !27
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 24
  %20 = call noalias i8* @malloc(i64 %19) #8
  %21 = bitcast i8* %20 to %struct.chiral_t*
  %22 = icmp eq %struct.chiral_t* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 4
  %26 = load i8*, i8** %25, align 8, !tbaa !13
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %26)
  br label %96

28:                                               ; preds = %16
  %29 = load i32, i32* @n_chi, align 4, !tbaa !27
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 13
  store i32 %29, i32* %30, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 14
  store %struct.chiral_t* %21, %struct.chiral_t** %31, align 8, !tbaa !28
  %32 = load i32, i32* @n_chi, align 4, !tbaa !27
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 0, %33
  br i1 %34, label %.lr.ph13, label %83

.lr.ph13:                                         ; preds = %28
  br label %35

35:                                               ; preds = %.lr.ph13, %79
  %.0211 = phi %struct.chiral_t* [ %21, %.lr.ph13 ], [ %78, %79 ]
  %indvars.iv610 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next7, %79 ]
  br label %36

36:                                               ; preds = %35, %70
  %indvars.iv9 = phi i64 [ 0, %35 ], [ %indvars.iv.next, %70 ]
  %37 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %indvars.iv610
  %38 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %37, i32 0, i32 0
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 %indvars.iv9
  %40 = load i32, i32* %39, align 4, !tbaa !27
  %41 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0211, i32 0, i32 0
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i64 0, i64 %indvars.iv9
  store i32 %40, i32* %42, align 4, !tbaa !27
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 17
  %44 = load %struct.atom_t*, %struct.atom_t** %43, align 8, !tbaa !35
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %45
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i32 0, i32 17
  %48 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 0, i64 0
  %49 = load double, double* %48, align 8, !tbaa !53
  %50 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv9
  %51 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 0, i64 0
  store double %49, double* %51, align 8, !tbaa !53
  %52 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 17
  %53 = load %struct.atom_t*, %struct.atom_t** %52, align 8, !tbaa !35
  %54 = sext i32 %40 to i64
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %53, i64 %54
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %55, i32 0, i32 17
  %57 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 1
  %58 = load double, double* %57, align 8, !tbaa !53
  %59 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv9
  %60 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 0, i64 1
  store double %58, double* %60, align 8, !tbaa !53
  %61 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 17
  %62 = load %struct.atom_t*, %struct.atom_t** %61, align 8, !tbaa !35
  %63 = sext i32 %40 to i64
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 %63
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %64, i32 0, i32 17
  %66 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 0, i64 2
  %67 = load double, double* %66, align 8, !tbaa !53
  %68 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv9
  %69 = getelementptr inbounds [3 x double], [3 x double]* %68, i64 0, i64 2
  store double %67, double* %69, align 8, !tbaa !53
  br label %70

70:                                               ; preds = %36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %36, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0
  %73 = bitcast [3 x double]* %72 to double*
  %74 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %3, i64 0, i64 0
  %75 = bitcast [3 x double]* %74 to double*
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* %73, double* %75, double* %4)
  %76 = load double, double* %4, align 8, !tbaa !53
  %77 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0211, i32 0, i32 1
  store double %76, double* %77, align 8, !tbaa !29
  %78 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0211, i32 1
  br label %79

79:                                               ; preds = %71
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv610, 1
  %80 = load i32, i32* @n_chi, align 4, !tbaa !27
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %indvars.iv.next7, %81
  br i1 %82, label %35, label %._crit_edge14

._crit_edge14:                                    ; preds = %79
  br label %83

83:                                               ; preds = %._crit_edge14, %28
  br label %96

84:                                               ; preds = %11
  br label %85

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.018, i32 0, i32 0
  %87 = load %struct.residue_t*, %struct.residue_t** %86, align 8, !tbaa !15
  %88 = icmp ne %struct.residue_t* %87, null
  br i1 %88, label %11, label %._crit_edge

._crit_edge:                                      ; preds = %85
  %split = phi %struct.residue_t* [ %87, %85 ]
  br label %89

89:                                               ; preds = %._crit_edge, %1
  %.01.lcssa = phi %struct.residue_t* [ %split, %._crit_edge ], [ %9, %1 ]
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %91 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8, !tbaa !13
  %93 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8, !tbaa !9
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %92, i8* %94)
  br label %96

96:                                               ; preds = %89, %83, %23
  %.0 = phi i32 [ 1, %23 ], [ 1, %83 ], [ 0, %89 ]
  %97 = bitcast double* %4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #8
  %98 = bitcast [4 x [3 x double]]* %3 to i8*
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %98) #8
  %99 = bitcast [4 x [3 x double]]* %2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %99) #8
  switch i32 %.0, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %96, %96
  ret void

101:                                              ; preds = %96
  unreachable
}

declare dso_local void @chirvol(i32, i32, i32, i32, i32, double*, double*, double*) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 16}
!7 = !{!"reslib_t", !3, i64 0, !3, i64 8, !8, i64 16, !8, i64 20, !3, i64 24}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 8}
!10 = !{!7, !3, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!7, !3, i64 24}
!13 = !{!14, !3, i64 24}
!14 = !{!"residue_t", !3, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !3, i64 56, !3, i64 64, !8, i64 72, !3, i64 80, !8, i64 88, !3, i64 96, !8, i64 104, !3, i64 112, !3, i64 120}
!15 = !{!14, !3, i64 0}
!16 = !{!14, !8, i64 104}
!17 = !{!14, !8, i64 72}
!18 = !{!14, !8, i64 88}
!19 = !{!14, !3, i64 32}
!20 = !{!14, !8, i64 8}
!21 = !{!14, !8, i64 12}
!22 = !{!14, !8, i64 16}
!23 = !{!14, !8, i64 40}
!24 = !{!14, !3, i64 56}
!25 = !{!14, !3, i64 64}
!26 = !{!14, !3, i64 80}
!27 = !{!8, !8, i64 0}
!28 = !{!14, !3, i64 96}
!29 = !{!30, !31, i64 16}
!30 = !{!"chiral_t", !4, i64 0, !31, i64 16}
!31 = !{!"double", !4, i64 0}
!32 = !{!14, !8, i64 44}
!33 = !{!14, !8, i64 48}
!34 = !{!14, !3, i64 112}
!35 = !{!14, !3, i64 120}
!36 = !{!37, !3, i64 0}
!37 = !{!"atom_t", !3, i64 0, !3, i64 8, !8, i64 16, !8, i64 20, !4, i64 24, !3, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !3, i64 96, !8, i64 104, !31, i64 112, !31, i64 120, !8, i64 128, !8, i64 132, !3, i64 136, !4, i64 144, !31, i64 168}
!38 = !{!37, !3, i64 8}
!39 = !{!37, !8, i64 16}
!40 = !{!37, !8, i64 20}
!41 = !{!37, !3, i64 56}
!42 = !{!37, !31, i64 64}
!43 = !{!37, !31, i64 72}
!44 = !{!37, !31, i64 80}
!45 = !{!37, !31, i64 88}
!46 = !{!37, !3, i64 96}
!47 = !{!37, !8, i64 104}
!48 = !{!37, !31, i64 112}
!49 = !{!37, !31, i64 120}
!50 = !{!37, !8, i64 128}
!51 = !{!37, !8, i64 132}
!52 = !{!37, !3, i64 136}
!53 = !{!31, !31, i64 0}
!54 = !{!37, !31, i64 168}
!55 = !{!56, !3, i64 0}
!56 = !{!"strand_t", !3, i64 0, !8, i64 8, !8, i64 12, !3, i64 16, !3, i64 24, !8, i64 32, !8, i64 36, !3, i64 40}
!57 = !{!56, !8, i64 32}
!58 = !{!56, !3, i64 40}
!59 = !{!56, !8, i64 8}
!60 = !{!56, !8, i64 12}
!61 = !{!56, !3, i64 16}
!62 = !{!56, !3, i64 24}
!63 = !{!56, !8, i64 36}
!64 = !{!65, !8, i64 96}
!65 = !{!"molecule_t", !4, i64 0, !8, i64 96, !3, i64 104, !8, i64 112, !8, i64 116, !8, i64 120, !3, i64 128}
!66 = !{!65, !8, i64 112}
!67 = !{!65, !8, i64 116}
!68 = !{!65, !8, i64 120}
!69 = !{!65, !3, i64 128}
!70 = !{!65, !3, i64 104}
!71 = !{!7, !8, i64 20}
