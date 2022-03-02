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
@e_msg = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
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
@reslibs = internal global %struct.reslib_t* null, align 8, !dbg !235
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
@initatoms.init = internal global i32 1, align 4, !dbg !237
@atoms = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !242
@.str.64 = private unnamed_addr constant [39 x i8] c"initatoms: can't allocate a_atomname.\0A\00", align 1
@n_atoms = internal global i32 0, align 4, !dbg !247
@.str.65 = private unnamed_addr constant [7 x i8] c"!index\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"entry.%s.\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"unit.name\00", align 1
@lr_name = internal global [8 x i8] zeroinitializer, align 1, !dbg !249
@.str.68 = private unnamed_addr constant [11 x i8] c"unit.atoms\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"unit.positions\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"unit.connectivity\00", align 1
@n_bonds = internal global i32 0, align 4, !dbg !252
@bonds = internal global [1000 x [2 x i32]] zeroinitializer, align 16, !dbg !254
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
@n_chi = internal global i32 0, align 4, !dbg !257
@.str.92 = private unnamed_addr constant [44 x i8] c"chi2reslib: bad line in chirality file: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"chi2reslib: res %s not in %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"chi2reslib: atom \22%s\22 not in residue \22%s\22\0A\00", align 1
@chi = internal global [500 x %struct.chiral_t] zeroinitializer, align 16, !dbg !259
@.str.96 = private unnamed_addr constant [44 x i8] c"addchi2reslib: can't alloc r_chiral for %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"addchi2reslib: res %s not reslib %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getreslibkind(i8* %0) #0 !dbg !271 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.reslib_t*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i8** %4, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %5, metadata !278, metadata !DIExpression()), !dbg !279
  %6 = load i8*, i8** %3, align 8, !dbg !280
  %7 = call %struct.reslib_t* @known_reslib(i8* %6), !dbg !282
  store %struct.reslib_t* %7, %struct.reslib_t** %5, align 8, !dbg !283
  %8 = icmp eq %struct.reslib_t* %7, null, !dbg !284
  br i1 %8, label %9, label %18, !dbg !285

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8, !dbg !286
  %11 = call %struct.reslib_t* @read_reslib(i8* %10), !dbg !289
  store %struct.reslib_t* %11, %struct.reslib_t** %5, align 8, !dbg !290
  %12 = icmp eq %struct.reslib_t* %11, null, !dbg !291
  br i1 %12, label %13, label %17, !dbg !292

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !293
  %15 = load i8*, i8** %3, align 8, !dbg !295
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %15), !dbg !296
  call void @exit(i32 1) #6, !dbg !297
  unreachable, !dbg !297

17:                                               ; preds = %9
  br label %18, !dbg !298

18:                                               ; preds = %17, %1
  %19 = load %struct.reslib_t*, %struct.reslib_t** %5, align 8, !dbg !299
  %20 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %19, i32 0, i32 2, !dbg !301
  %21 = load i32, i32* %20, align 8, !dbg !301
  %22 = icmp eq i32 %21, 0, !dbg !302
  br i1 %22, label %23, label %24, !dbg !303

23:                                               ; preds = %18
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8, !dbg !304
  br label %43, !dbg !304

24:                                               ; preds = %18
  %25 = load %struct.reslib_t*, %struct.reslib_t** %5, align 8, !dbg !305
  %26 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %25, i32 0, i32 2, !dbg !307
  %27 = load i32, i32* %26, align 8, !dbg !307
  %28 = icmp eq i32 %27, 1, !dbg !308
  br i1 %28, label %29, label %30, !dbg !309

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8, !dbg !310
  br label %43, !dbg !310

30:                                               ; preds = %24
  %31 = load %struct.reslib_t*, %struct.reslib_t** %5, align 8, !dbg !311
  %32 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %31, i32 0, i32 2, !dbg !313
  %33 = load i32, i32* %32, align 8, !dbg !313
  %34 = icmp eq i32 %33, 2, !dbg !314
  br i1 %34, label %35, label %36, !dbg !315

35:                                               ; preds = %30
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8, !dbg !316
  br label %43, !dbg !316

36:                                               ; preds = %30
  %37 = load %struct.reslib_t*, %struct.reslib_t** %5, align 8, !dbg !317
  %38 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %37, i32 0, i32 2, !dbg !319
  %39 = load i32, i32* %38, align 8, !dbg !319
  %40 = icmp eq i32 %39, 3, !dbg !320
  br i1 %40, label %41, label %42, !dbg !321

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8, !dbg !322
  br label %43, !dbg !322

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8, !dbg !323
  br label %43, !dbg !323

43:                                               ; preds = %42, %41, %35, %29, %23
  %44 = load i8*, i8** %2, align 8, !dbg !324
  ret i8* %44, !dbg !324
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reslib_t* @known_reslib(i8* %0) #0 !dbg !325 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.reslib_t*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %4, metadata !330, metadata !DIExpression()), !dbg !331
  %5 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !332
  store %struct.reslib_t* %5, %struct.reslib_t** %4, align 8, !dbg !334
  br label %6, !dbg !335

6:                                                ; preds = %19, %1
  %7 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !336
  %8 = icmp ne %struct.reslib_t* %7, null, !dbg !338
  br i1 %8, label %9, label %23, !dbg !338

9:                                                ; preds = %6
  %10 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !339
  %11 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %10, i32 0, i32 1, !dbg !342
  %12 = load i8*, i8** %11, align 8, !dbg !342
  %13 = load i8*, i8** %3, align 8, !dbg !343
  %14 = call i32 @strcmp(i8* %12, i8* %13) #7, !dbg !344
  %15 = icmp eq i32 %14, 0, !dbg !345
  br i1 %15, label %16, label %18, !dbg !346

16:                                               ; preds = %9
  %17 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !347
  store %struct.reslib_t* %17, %struct.reslib_t** %2, align 8, !dbg !349
  br label %24, !dbg !349

18:                                               ; preds = %9
  br label %19, !dbg !350

19:                                               ; preds = %18
  %20 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !351
  %21 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %20, i32 0, i32 0, !dbg !352
  %22 = load %struct.reslib_t*, %struct.reslib_t** %21, align 8, !dbg !352
  store %struct.reslib_t* %22, %struct.reslib_t** %4, align 8, !dbg !353
  br label %6, !dbg !354, !llvm.loop !355

23:                                               ; preds = %6
  store %struct.reslib_t* null, %struct.reslib_t** %2, align 8, !dbg !357
  br label %24, !dbg !357

24:                                               ; preds = %23, %16
  %25 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !358
  ret %struct.reslib_t* %25, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reslib_t* @read_reslib(i8* %0) #0 !dbg !359 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct.reslib_t*, align 8
  %9 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !362, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %7, metadata !427, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %8, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata [256 x i8]* %9, metadata !431, metadata !DIExpression()), !dbg !432
  %10 = load i8*, i8** %3, align 8, !dbg !433
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !435
  %12 = call %struct.reslib_t* @read_reslib_header(i8* %10, %struct._IO_FILE** %4, %struct._IO_FILE** %5, %struct._IO_FILE** %6, %struct._IO_FILE** %7, i8* %11), !dbg !436
  store %struct.reslib_t* %12, %struct.reslib_t** %8, align 8, !dbg !437
  %13 = icmp eq %struct.reslib_t* %12, null, !dbg !438
  br i1 %13, label %14, label %15, !dbg !439

14:                                               ; preds = %1
  store %struct.reslib_t* null, %struct.reslib_t** %2, align 8, !dbg !440
  br label %49, !dbg !440

15:                                               ; preds = %1
  call void @initatoms(), !dbg !442
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !443
  %17 = load i8, i8* %16, align 16, !dbg !443
  %18 = icmp ne i8 %17, 0, !dbg !443
  br i1 %18, label %19, label %22, !dbg !445

19:                                               ; preds = %15
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0, !dbg !446
  %21 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !448
  call void @off2reslib(i8* %20, %struct.reslib_t* %21), !dbg !449
  br label %31, !dbg !450

22:                                               ; preds = %15
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !451
  %24 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !453
  call void @pdb2reslib(%struct._IO_FILE* %23, %struct.reslib_t* %24), !dbg !454
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !455
  %26 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !456
  call void @bnd2reslib(%struct._IO_FILE* %25, %struct.reslib_t* %26), !dbg !457
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !458
  %28 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !459
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !460
  %30 = call i32 @fclose(%struct._IO_FILE* %29), !dbg !461
  br label %31

31:                                               ; preds = %22, %19
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !462
  %33 = icmp ne %struct._IO_FILE* %32, null, !dbg !462
  br i1 %33, label %34, label %39, !dbg !464

34:                                               ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !465
  %36 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !467
  call void @qr2reslib(%struct._IO_FILE* %35, %struct.reslib_t* %36), !dbg !468
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !469
  %38 = call i32 @fclose(%struct._IO_FILE* %37), !dbg !470
  br label %39, !dbg !471

39:                                               ; preds = %34, %31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !472
  %41 = icmp ne %struct._IO_FILE* %40, null, !dbg !472
  br i1 %41, label %42, label %47, !dbg !474

42:                                               ; preds = %39
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !475
  %44 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !477
  call void @chi2reslib(%struct._IO_FILE* %43, %struct.reslib_t* %44), !dbg !478
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8, !dbg !479
  %46 = call i32 @fclose(%struct._IO_FILE* %45), !dbg !480
  br label %47, !dbg !481

47:                                               ; preds = %42, %39
  %48 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !482
  store %struct.reslib_t* %48, %struct.reslib_t** %2, align 8, !dbg !483
  br label %49, !dbg !483

49:                                               ; preds = %47, %14
  %50 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !484
  ret %struct.reslib_t* %50, !dbg !484
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* %1) #0 !dbg !485 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.reslib_t*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !488, metadata !DIExpression()), !dbg !489
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata i8** %5, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %6, metadata !494, metadata !DIExpression()), !dbg !495
  %7 = load i8*, i8** %3, align 8, !dbg !496
  %8 = call %struct.reslib_t* @known_reslib(i8* %7), !dbg !498
  store %struct.reslib_t* %8, %struct.reslib_t** %6, align 8, !dbg !499
  %9 = icmp eq %struct.reslib_t* %8, null, !dbg !500
  br i1 %9, label %10, label %19, !dbg !501

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !502
  %12 = call %struct.reslib_t* @read_reslib(i8* %11), !dbg !505
  store %struct.reslib_t* %12, %struct.reslib_t** %6, align 8, !dbg !506
  %13 = icmp eq %struct.reslib_t* %12, null, !dbg !507
  br i1 %13, label %14, label %18, !dbg !508

14:                                               ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !509
  %16 = load i8*, i8** %3, align 8, !dbg !511
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %16), !dbg !512
  call void @exit(i32 1) #6, !dbg !513
  unreachable, !dbg !513

18:                                               ; preds = %10
  br label %19, !dbg !514

19:                                               ; preds = %18, %2
  %20 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8, !dbg !515
  %21 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %20, i32 0, i32 2, !dbg !516
  store i32 0, i32* %21, align 8, !dbg !517
  %22 = load i8*, i8** %4, align 8, !dbg !518
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !520
  %24 = icmp ne i32 %23, 0, !dbg !520
  br i1 %24, label %25, label %29, !dbg !521

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8, !dbg !522
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !523
  %28 = icmp ne i32 %27, 0, !dbg !523
  br i1 %28, label %32, label %29, !dbg !524

29:                                               ; preds = %25, %19
  %30 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8, !dbg !525
  %31 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %30, i32 0, i32 2, !dbg !526
  store i32 1, i32* %31, align 8, !dbg !527
  br label %56, !dbg !525

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8, !dbg !528
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !530
  %35 = icmp ne i32 %34, 0, !dbg !530
  br i1 %35, label %36, label %40, !dbg !531

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8, !dbg !532
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !533
  %39 = icmp ne i32 %38, 0, !dbg !533
  br i1 %39, label %43, label %40, !dbg !534

40:                                               ; preds = %36, %32
  %41 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8, !dbg !535
  %42 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %41, i32 0, i32 2, !dbg !536
  store i32 2, i32* %42, align 8, !dbg !537
  br label %55, !dbg !535

43:                                               ; preds = %36
  %44 = load i8*, i8** %4, align 8, !dbg !538
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !540
  %46 = icmp ne i32 %45, 0, !dbg !540
  br i1 %46, label %47, label %51, !dbg !541

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8, !dbg !542
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !543
  %50 = icmp ne i32 %49, 0, !dbg !543
  br i1 %50, label %54, label %51, !dbg !544

51:                                               ; preds = %47, %43
  %52 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8, !dbg !545
  %53 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %52, i32 0, i32 2, !dbg !546
  store i32 3, i32* %53, align 8, !dbg !547
  br label %54, !dbg !545

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.reslib_t*, %struct.reslib_t** %6, align 8, !dbg !548
  %58 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %57, i32 0, i32 2, !dbg !549
  %59 = load i32, i32* %58, align 8, !dbg !549
  ret i32 %59, !dbg !550
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) #0 !dbg !551 {
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [5 x i8], align 1
  %8 = alloca %struct.reslib_t*, align 8
  %9 = alloca %struct.residue_t*, align 8
  %10 = alloca %struct.residue_t*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !554, metadata !DIExpression()), !dbg !555
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata i8** %6, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata [5 x i8]* %7, metadata !560, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %8, metadata !565, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata %struct.residue_t** %9, metadata !567, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.declare(metadata %struct.residue_t** %10, metadata !569, metadata !DIExpression()), !dbg !570
  %11 = load i8*, i8** %5, align 8, !dbg !571
  %12 = call %struct.reslib_t* @known_reslib(i8* %11), !dbg !573
  store %struct.reslib_t* %12, %struct.reslib_t** %8, align 8, !dbg !574
  %13 = icmp eq %struct.reslib_t* %12, null, !dbg !575
  br i1 %13, label %14, label %20, !dbg !576

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8, !dbg !577
  %16 = call %struct.reslib_t* @read_reslib(i8* %15), !dbg !580
  store %struct.reslib_t* %16, %struct.reslib_t** %8, align 8, !dbg !581
  %17 = icmp eq %struct.reslib_t* %16, null, !dbg !582
  br i1 %17, label %18, label %19, !dbg !583

18:                                               ; preds = %14
  call void @exit(i32 1) #6, !dbg !584
  unreachable, !dbg !584

19:                                               ; preds = %14
  br label %20, !dbg !586

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !587
  %22 = load i8*, i8** %4, align 8, !dbg !588
  %23 = call i8* @strcpy(i8* %21, i8* %22) #8, !dbg !589
  %24 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !590
  %25 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %24, i32 0, i32 2, !dbg !592
  %26 = load i32, i32* %25, align 8, !dbg !592
  %27 = icmp eq i32 %26, 1, !dbg !593
  br i1 %27, label %28, label %60, !dbg !594

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8, !dbg !595
  %30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #7, !dbg !598
  %31 = icmp ne i32 %30, 0, !dbg !598
  br i1 %31, label %35, label %32, !dbg !599

32:                                               ; preds = %28
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !600
  %34 = call i8* @strcpy(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !601
  br label %59, !dbg !601

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8, !dbg !602
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #7, !dbg !604
  %38 = icmp ne i32 %37, 0, !dbg !604
  br i1 %38, label %42, label %39, !dbg !605

39:                                               ; preds = %35
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !606
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !607
  br label %58, !dbg !607

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8, !dbg !608
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #7, !dbg !610
  %45 = icmp ne i32 %44, 0, !dbg !610
  br i1 %45, label %49, label %46, !dbg !611

46:                                               ; preds = %42
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !612
  %48 = call i8* @strcpy(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !613
  br label %57, !dbg !613

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8, !dbg !614
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #7, !dbg !616
  %52 = icmp ne i32 %51, 0, !dbg !616
  br i1 %52, label %56, label %53, !dbg !617

53:                                               ; preds = %49
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !618
  %55 = call i8* @strcpy(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !619
  br label %56, !dbg !619

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %39
  br label %59

59:                                               ; preds = %58, %32
  br label %98, !dbg !620

60:                                               ; preds = %20
  %61 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !621
  %62 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %61, i32 0, i32 2, !dbg !623
  %63 = load i32, i32* %62, align 8, !dbg !623
  %64 = icmp eq i32 %63, 2, !dbg !624
  br i1 %64, label %65, label %97, !dbg !625

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8, !dbg !626
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #7, !dbg !629
  %68 = icmp ne i32 %67, 0, !dbg !629
  br i1 %68, label %72, label %69, !dbg !630

69:                                               ; preds = %65
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !631
  %71 = call i8* @strcpy(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !632
  br label %96, !dbg !632

72:                                               ; preds = %65
  %73 = load i8*, i8** %4, align 8, !dbg !633
  %74 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #7, !dbg !635
  %75 = icmp ne i32 %74, 0, !dbg !635
  br i1 %75, label %79, label %76, !dbg !636

76:                                               ; preds = %72
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !637
  %78 = call i8* @strcpy(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !638
  br label %95, !dbg !638

79:                                               ; preds = %72
  %80 = load i8*, i8** %4, align 8, !dbg !639
  %81 = call i32 @strncmp(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #7, !dbg !641
  %82 = icmp ne i32 %81, 0, !dbg !641
  br i1 %82, label %86, label %83, !dbg !642

83:                                               ; preds = %79
  %84 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !643
  %85 = call i8* @strcpy(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !644
  br label %94, !dbg !644

86:                                               ; preds = %79
  %87 = load i8*, i8** %4, align 8, !dbg !645
  %88 = call i32 @strncmp(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #7, !dbg !647
  %89 = icmp ne i32 %88, 0, !dbg !647
  br i1 %89, label %93, label %90, !dbg !648

90:                                               ; preds = %86
  %91 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !649
  %92 = call i8* @strcpy(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !650
  br label %93, !dbg !650

93:                                               ; preds = %90, %86
  br label %94

94:                                               ; preds = %93, %83
  br label %95

95:                                               ; preds = %94, %76
  br label %96

96:                                               ; preds = %95, %69
  br label %97, !dbg !651

97:                                               ; preds = %96, %60
  br label %98

98:                                               ; preds = %97, %59
  %99 = load i8*, i8** %4, align 8, !dbg !652
  %100 = call i8* @strstr(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !654
  %101 = icmp ne i8* %100, null, !dbg !655
  br i1 %101, label %102, label %105, !dbg !656

102:                                              ; preds = %98
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !657
  %104 = call i8* @strcat(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !658
  br label %113, !dbg !658

105:                                              ; preds = %98
  %106 = load i8*, i8** %4, align 8, !dbg !659
  %107 = call i8* @strstr(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !661
  %108 = icmp ne i8* %107, null, !dbg !662
  br i1 %108, label %109, label %112, !dbg !663

109:                                              ; preds = %105
  %110 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !664
  %111 = call i8* @strcat(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !665
  br label %112, !dbg !665

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %102
  %114 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !666
  %115 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %114, i32 0, i32 4, !dbg !668
  %116 = load %struct.residue_t*, %struct.residue_t** %115, align 8, !dbg !668
  store %struct.residue_t* %116, %struct.residue_t** %9, align 8, !dbg !669
  br label %117, !dbg !670

117:                                              ; preds = %136, %113
  %118 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !671
  %119 = icmp ne %struct.residue_t* %118, null, !dbg !673
  br i1 %119, label %120, label %140, !dbg !673

120:                                              ; preds = %117
  %121 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !674
  %122 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %121, i32 0, i32 4, !dbg !677
  %123 = load i8*, i8** %122, align 8, !dbg !677
  %124 = load i8*, i8** %4, align 8, !dbg !678
  %125 = call i32 @strcmp(i8* %123, i8* %124) #7, !dbg !679
  %126 = icmp eq i32 %125, 0, !dbg !680
  br i1 %126, label %134, label %127, !dbg !681

127:                                              ; preds = %120
  %128 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !682
  %129 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %128, i32 0, i32 4, !dbg !683
  %130 = load i8*, i8** %129, align 8, !dbg !683
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0, !dbg !684
  %132 = call i32 @strcmp(i8* %130, i8* %131) #7, !dbg !685
  %133 = icmp eq i32 %132, 0, !dbg !686
  br i1 %133, label %134, label %135, !dbg !687

134:                                              ; preds = %127, %120
  br label %140, !dbg !688

135:                                              ; preds = %127
  br label %136, !dbg !689

136:                                              ; preds = %135
  %137 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !690
  %138 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %137, i32 0, i32 0, !dbg !691
  %139 = load %struct.residue_t*, %struct.residue_t** %138, align 8, !dbg !691
  store %struct.residue_t* %139, %struct.residue_t** %9, align 8, !dbg !692
  br label %117, !dbg !693, !llvm.loop !694

140:                                              ; preds = %134, %117
  %141 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !696
  %142 = icmp eq %struct.residue_t* %141, null, !dbg !698
  br i1 %142, label %143, label %148, !dbg !699

143:                                              ; preds = %140
  %144 = load i8*, i8** %4, align 8, !dbg !700
  %145 = load i8*, i8** %5, align 8, !dbg !702
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %144, i8* %145) #8, !dbg !703
  %147 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !704
  store %struct.residue_t* null, %struct.residue_t** %3, align 8, !dbg !705
  br label %152, !dbg !705

148:                                              ; preds = %140
  %149 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !706
  %150 = call %struct.residue_t* @copyresidue(%struct.residue_t* %149), !dbg !707
  store %struct.residue_t* %150, %struct.residue_t** %10, align 8, !dbg !708
  %151 = load %struct.residue_t*, %struct.residue_t** %10, align 8, !dbg !709
  store %struct.residue_t* %151, %struct.residue_t** %3, align 8, !dbg !710
  br label %152, !dbg !710

152:                                              ; preds = %148, %143
  %153 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !711
  ret %struct.residue_t* %153, !dbg !711
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) #0 !dbg !712 {
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
  call void @llvm.dbg.declare(metadata %struct.residue_t** %3, metadata !715, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata i32* %4, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata i32* %5, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata i32* %6, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata i32* %7, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata i32** %8, metadata !725, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.declare(metadata %struct.residue_t** %9, metadata !727, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.declare(metadata %struct.atom_t** %10, metadata !729, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.declare(metadata i8** %11, metadata !731, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.declare(metadata i8** %12, metadata !733, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.declare(metadata [2 x i32]** %13, metadata !735, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.declare(metadata %struct.chiral_t** %14, metadata !737, metadata !DIExpression()), !dbg !738
  %15 = call noalias i8* @malloc(i64 128) #8, !dbg !739
  %16 = bitcast i8* %15 to %struct.residue_t*, !dbg !741
  store %struct.residue_t* %16, %struct.residue_t** %9, align 8, !dbg !742
  %17 = icmp eq %struct.residue_t* %16, null, !dbg !743
  br i1 %17, label %18, label %24, !dbg !744

18:                                               ; preds = %1
  %19 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !745
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i32 0, i32 4, !dbg !747
  %21 = load i8*, i8** %20, align 8, !dbg !747
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %21) #8, !dbg !748
  %23 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !749
  store %struct.residue_t* null, %struct.residue_t** %2, align 8, !dbg !750
  br label %632, !dbg !750

24:                                               ; preds = %1
  %25 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !751
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 15, !dbg !753
  %27 = load i32, i32* %26, align 8, !dbg !753
  %28 = sext i32 %27 to i64, !dbg !751
  %29 = mul i64 %28, 176, !dbg !754
  %30 = call noalias i8* @malloc(i64 %29) #8, !dbg !755
  %31 = bitcast i8* %30 to %struct.atom_t*, !dbg !756
  store %struct.atom_t* %31, %struct.atom_t** %10, align 8, !dbg !757
  %32 = icmp eq %struct.atom_t* %31, null, !dbg !758
  br i1 %32, label %33, label %39, !dbg !759

33:                                               ; preds = %24
  %34 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !760
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i32 0, i32 4, !dbg !762
  %36 = load i8*, i8** %35, align 8, !dbg !762
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %36) #8, !dbg !763
  %38 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !764
  store %struct.residue_t* null, %struct.residue_t** %2, align 8, !dbg !765
  br label %632, !dbg !765

39:                                               ; preds = %24
  %40 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !766
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 15, !dbg !768
  %42 = load i32, i32* %41, align 8, !dbg !768
  %43 = sext i32 %42 to i64, !dbg !766
  %44 = mul i64 %43, 4, !dbg !769
  %45 = call noalias i8* @malloc(i64 %44) #8, !dbg !770
  %46 = bitcast i8* %45 to i32*, !dbg !771
  store i32* %46, i32** %8, align 8, !dbg !772
  %47 = icmp eq i32* %46, null, !dbg !773
  br i1 %47, label %48, label %54, !dbg !774

48:                                               ; preds = %39
  %49 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !775
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %49, i32 0, i32 4, !dbg !777
  %51 = load i8*, i8** %50, align 8, !dbg !777
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %51) #8, !dbg !778
  %53 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !779
  store %struct.residue_t* null, %struct.residue_t** %2, align 8, !dbg !780
  br label %632, !dbg !780

54:                                               ; preds = %39
  %55 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !781
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %55, i32 0, i32 11, !dbg !783
  %57 = load i32, i32* %56, align 8, !dbg !783
  %58 = icmp sgt i32 %57, 0, !dbg !784
  br i1 %58, label %59, label %75, !dbg !785

59:                                               ; preds = %54
  %60 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !786
  %61 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i32 0, i32 11, !dbg !789
  %62 = load i32, i32* %61, align 8, !dbg !789
  %63 = sext i32 %62 to i64, !dbg !786
  %64 = mul i64 %63, 8, !dbg !790
  %65 = call noalias i8* @malloc(i64 %64) #8, !dbg !791
  %66 = bitcast i8* %65 to [2 x i32]*, !dbg !792
  store [2 x i32]* %66, [2 x i32]** %13, align 8, !dbg !793
  %67 = icmp eq [2 x i32]* %66, null, !dbg !794
  br i1 %67, label %68, label %74, !dbg !795

68:                                               ; preds = %59
  %69 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !796
  %70 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %69, i32 0, i32 4, !dbg !798
  %71 = load i8*, i8** %70, align 8, !dbg !798
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %71) #8, !dbg !799
  %73 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !800
  store %struct.residue_t* null, %struct.residue_t** %2, align 8, !dbg !801
  br label %632, !dbg !801

74:                                               ; preds = %59
  br label %76, !dbg !802

75:                                               ; preds = %54
  store [2 x i32]* null, [2 x i32]** %13, align 8, !dbg !803
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !804
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %77, i32 0, i32 13, !dbg !806
  %79 = load i32, i32* %78, align 8, !dbg !806
  %80 = icmp sgt i32 %79, 0, !dbg !807
  br i1 %80, label %81, label %97, !dbg !808

81:                                               ; preds = %76
  %82 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !809
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %82, i32 0, i32 13, !dbg !812
  %84 = load i32, i32* %83, align 8, !dbg !812
  %85 = sext i32 %84 to i64, !dbg !809
  %86 = mul i64 %85, 24, !dbg !813
  %87 = call noalias i8* @malloc(i64 %86) #8, !dbg !814
  %88 = bitcast i8* %87 to %struct.chiral_t*, !dbg !815
  store %struct.chiral_t* %88, %struct.chiral_t** %14, align 8, !dbg !816
  %89 = icmp eq %struct.chiral_t* %88, null, !dbg !817
  br i1 %89, label %90, label %96, !dbg !818

90:                                               ; preds = %81
  %91 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !819
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i32 0, i32 4, !dbg !821
  %93 = load i8*, i8** %92, align 8, !dbg !821
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %93) #8, !dbg !822
  %95 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !823
  store %struct.residue_t* null, %struct.residue_t** %2, align 8, !dbg !824
  br label %632, !dbg !824

96:                                               ; preds = %81
  br label %98, !dbg !825

97:                                               ; preds = %76
  store %struct.chiral_t* null, %struct.chiral_t** %14, align 8, !dbg !826
  br label %98

98:                                               ; preds = %97, %96
  %99 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !827
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %99, i32 0, i32 0, !dbg !828
  store %struct.residue_t* null, %struct.residue_t** %100, align 8, !dbg !829
  %101 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !830
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %101, i32 0, i32 4, !dbg !831
  %103 = load i8*, i8** %102, align 8, !dbg !831
  %104 = call i64 @strlen(i8* %103) #7, !dbg !832
  %105 = add i64 %104, 1, !dbg !833
  %106 = call noalias i8* @malloc(i64 %105) #8, !dbg !834
  store i8* %106, i8** %12, align 8, !dbg !835
  %107 = load i8*, i8** %12, align 8, !dbg !836
  %108 = icmp eq i8* %107, null, !dbg !838
  br i1 %108, label %109, label %112, !dbg !839

109:                                              ; preds = %98
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !840
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0)), !dbg !842
  call void @exit(i32 1) #6, !dbg !843
  unreachable, !dbg !843

112:                                              ; preds = %98
  %113 = load i8*, i8** %12, align 8, !dbg !844
  %114 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !845
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %114, i32 0, i32 4, !dbg !846
  %116 = load i8*, i8** %115, align 8, !dbg !846
  %117 = call i8* @strcpy(i8* %113, i8* %116) #8, !dbg !847
  %118 = load i8*, i8** %12, align 8, !dbg !848
  %119 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !849
  %120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i32 0, i32 4, !dbg !850
  store i8* %118, i8** %120, align 8, !dbg !851
  %121 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !852
  %122 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %121, i32 0, i32 5, !dbg !853
  %123 = load i8*, i8** %122, align 8, !dbg !853
  %124 = call i64 @strlen(i8* %123) #7, !dbg !854
  %125 = add i64 %124, 1, !dbg !855
  %126 = call noalias i8* @malloc(i64 %125) #8, !dbg !856
  store i8* %126, i8** %12, align 8, !dbg !857
  %127 = load i8*, i8** %12, align 8, !dbg !858
  %128 = icmp eq i8* %127, null, !dbg !860
  br i1 %128, label %129, label %132, !dbg !861

129:                                              ; preds = %112
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !862
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0)), !dbg !864
  call void @exit(i32 1) #6, !dbg !865
  unreachable, !dbg !865

132:                                              ; preds = %112
  %133 = load i8*, i8** %12, align 8, !dbg !866
  %134 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !867
  %135 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %134, i32 0, i32 5, !dbg !868
  %136 = load i8*, i8** %135, align 8, !dbg !868
  %137 = call i8* @strcpy(i8* %133, i8* %136) #8, !dbg !869
  %138 = load i8*, i8** %12, align 8, !dbg !870
  %139 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !871
  %140 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %139, i32 0, i32 5, !dbg !872
  store i8* %138, i8** %140, align 8, !dbg !873
  %141 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !874
  %142 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %141, i32 0, i32 1, !dbg !875
  %143 = load i32, i32* %142, align 8, !dbg !875
  %144 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !876
  %145 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %144, i32 0, i32 1, !dbg !877
  store i32 %143, i32* %145, align 8, !dbg !878
  %146 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !879
  %147 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %146, i32 0, i32 2, !dbg !880
  store i32 0, i32* %147, align 4, !dbg !881
  %148 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !882
  %149 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %148, i32 0, i32 3, !dbg !883
  store i32 0, i32* %149, align 8, !dbg !884
  %150 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !885
  %151 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %150, i32 0, i32 6, !dbg !886
  %152 = load i32, i32* %151, align 8, !dbg !886
  %153 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !887
  %154 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i32 0, i32 6, !dbg !888
  store i32 %152, i32* %154, align 8, !dbg !889
  %155 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !890
  %156 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %155, i32 0, i32 9, !dbg !891
  store %struct.strand_t* null, %struct.strand_t** %156, align 8, !dbg !892
  %157 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !893
  %158 = call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* %157), !dbg !894
  %159 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !895
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %159, i32 0, i32 10, !dbg !896
  store %struct.extbond_t* %158, %struct.extbond_t** %160, align 8, !dbg !897
  %161 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !898
  %162 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %161, i32 0, i32 11, !dbg !899
  %163 = load i32, i32* %162, align 8, !dbg !899
  %164 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !900
  %165 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %164, i32 0, i32 11, !dbg !901
  store i32 %163, i32* %165, align 8, !dbg !902
  %166 = load [2 x i32]*, [2 x i32]** %13, align 8, !dbg !903
  %167 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !904
  %168 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %167, i32 0, i32 12, !dbg !905
  store [2 x i32]* %166, [2 x i32]** %168, align 8, !dbg !906
  store i32 0, i32* %5, align 4, !dbg !907
  br label %169, !dbg !909

169:                                              ; preds = %206, %132
  %170 = load i32, i32* %5, align 4, !dbg !910
  %171 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !912
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %171, i32 0, i32 11, !dbg !913
  %173 = load i32, i32* %172, align 8, !dbg !913
  %174 = icmp slt i32 %170, %173, !dbg !914
  br i1 %174, label %175, label %209, !dbg !915

175:                                              ; preds = %169
  %176 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !916
  %177 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %176, i32 0, i32 12, !dbg !918
  %178 = load [2 x i32]*, [2 x i32]** %177, align 8, !dbg !918
  %179 = load i32, i32* %5, align 4, !dbg !919
  %180 = sext i32 %179 to i64, !dbg !916
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %178, i64 %180, !dbg !916
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %181, i64 0, i64 0, !dbg !916
  %183 = load i32, i32* %182, align 4, !dbg !916
  %184 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !920
  %185 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %184, i32 0, i32 12, !dbg !921
  %186 = load [2 x i32]*, [2 x i32]** %185, align 8, !dbg !921
  %187 = load i32, i32* %5, align 4, !dbg !922
  %188 = sext i32 %187 to i64, !dbg !920
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %186, i64 %188, !dbg !920
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %189, i64 0, i64 0, !dbg !920
  store i32 %183, i32* %190, align 4, !dbg !923
  %191 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !924
  %192 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %191, i32 0, i32 12, !dbg !925
  %193 = load [2 x i32]*, [2 x i32]** %192, align 8, !dbg !925
  %194 = load i32, i32* %5, align 4, !dbg !926
  %195 = sext i32 %194 to i64, !dbg !924
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %193, i64 %195, !dbg !924
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i64 0, i64 1, !dbg !924
  %198 = load i32, i32* %197, align 4, !dbg !924
  %199 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !927
  %200 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %199, i32 0, i32 12, !dbg !928
  %201 = load [2 x i32]*, [2 x i32]** %200, align 8, !dbg !928
  %202 = load i32, i32* %5, align 4, !dbg !929
  %203 = sext i32 %202 to i64, !dbg !927
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %201, i64 %203, !dbg !927
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %204, i64 0, i64 1, !dbg !927
  store i32 %198, i32* %205, align 4, !dbg !930
  br label %206, !dbg !931

206:                                              ; preds = %175
  %207 = load i32, i32* %5, align 4, !dbg !932
  %208 = add nsw i32 %207, 1, !dbg !932
  store i32 %208, i32* %5, align 4, !dbg !932
  br label %169, !dbg !933, !llvm.loop !934

209:                                              ; preds = %169
  %210 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !936
  %211 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %210, i32 0, i32 13, !dbg !937
  %212 = load i32, i32* %211, align 8, !dbg !937
  %213 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !938
  %214 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %213, i32 0, i32 13, !dbg !939
  store i32 %212, i32* %214, align 8, !dbg !940
  %215 = load %struct.chiral_t*, %struct.chiral_t** %14, align 8, !dbg !941
  %216 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !942
  %217 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %216, i32 0, i32 14, !dbg !943
  store %struct.chiral_t* %215, %struct.chiral_t** %217, align 8, !dbg !944
  %218 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !945
  %219 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i32 0, i32 14, !dbg !947
  %220 = load %struct.chiral_t*, %struct.chiral_t** %219, align 8, !dbg !947
  store %struct.chiral_t* %220, %struct.chiral_t** %14, align 8, !dbg !948
  store i32 0, i32* %6, align 4, !dbg !949
  br label %221, !dbg !950

221:                                              ; preds = %262, %209
  %222 = load i32, i32* %6, align 4, !dbg !951
  %223 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !953
  %224 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %223, i32 0, i32 13, !dbg !954
  %225 = load i32, i32* %224, align 8, !dbg !954
  %226 = icmp slt i32 %222, %225, !dbg !955
  br i1 %226, label %227, label %267, !dbg !956

227:                                              ; preds = %221
  store i32 0, i32* %4, align 4, !dbg !957
  br label %228, !dbg !960

228:                                              ; preds = %248, %227
  %229 = load i32, i32* %4, align 4, !dbg !961
  %230 = icmp slt i32 %229, 4, !dbg !963
  br i1 %230, label %231, label %251, !dbg !964

231:                                              ; preds = %228
  %232 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !965
  %233 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %232, i32 0, i32 14, !dbg !966
  %234 = load %struct.chiral_t*, %struct.chiral_t** %233, align 8, !dbg !966
  %235 = load i32, i32* %6, align 4, !dbg !967
  %236 = sext i32 %235 to i64, !dbg !965
  %237 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %234, i64 %236, !dbg !965
  %238 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %237, i32 0, i32 0, !dbg !968
  %239 = load i32, i32* %4, align 4, !dbg !969
  %240 = sext i32 %239 to i64, !dbg !965
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %238, i64 0, i64 %240, !dbg !965
  %242 = load i32, i32* %241, align 4, !dbg !965
  %243 = load %struct.chiral_t*, %struct.chiral_t** %14, align 8, !dbg !970
  %244 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %243, i32 0, i32 0, !dbg !971
  %245 = load i32, i32* %4, align 4, !dbg !972
  %246 = sext i32 %245 to i64, !dbg !970
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %244, i64 0, i64 %246, !dbg !970
  store i32 %242, i32* %247, align 4, !dbg !973
  br label %248, !dbg !970

248:                                              ; preds = %231
  %249 = load i32, i32* %4, align 4, !dbg !974
  %250 = add nsw i32 %249, 1, !dbg !974
  store i32 %250, i32* %4, align 4, !dbg !974
  br label %228, !dbg !975, !llvm.loop !976

251:                                              ; preds = %228
  %252 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !978
  %253 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %252, i32 0, i32 14, !dbg !979
  %254 = load %struct.chiral_t*, %struct.chiral_t** %253, align 8, !dbg !979
  %255 = load i32, i32* %6, align 4, !dbg !980
  %256 = sext i32 %255 to i64, !dbg !978
  %257 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %254, i64 %256, !dbg !978
  %258 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %257, i32 0, i32 1, !dbg !981
  %259 = load double, double* %258, align 8, !dbg !981
  %260 = load %struct.chiral_t*, %struct.chiral_t** %14, align 8, !dbg !982
  %261 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %260, i32 0, i32 1, !dbg !983
  store double %259, double* %261, align 8, !dbg !984
  br label %262, !dbg !985

262:                                              ; preds = %251
  %263 = load i32, i32* %6, align 4, !dbg !986
  %264 = add nsw i32 %263, 1, !dbg !986
  store i32 %264, i32* %6, align 4, !dbg !986
  %265 = load %struct.chiral_t*, %struct.chiral_t** %14, align 8, !dbg !987
  %266 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %265, i32 1, !dbg !987
  store %struct.chiral_t* %266, %struct.chiral_t** %14, align 8, !dbg !987
  br label %221, !dbg !988, !llvm.loop !989

267:                                              ; preds = %221
  %268 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !991
  %269 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %268, i32 0, i32 7, !dbg !992
  %270 = load i32, i32* %269, align 4, !dbg !992
  %271 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !993
  %272 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %271, i32 0, i32 7, !dbg !994
  store i32 %270, i32* %272, align 4, !dbg !995
  %273 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !996
  %274 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %273, i32 0, i32 8, !dbg !997
  %275 = load i32, i32* %274, align 8, !dbg !997
  %276 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !998
  %277 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %276, i32 0, i32 8, !dbg !999
  store i32 %275, i32* %277, align 8, !dbg !1000
  %278 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1001
  %279 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %278, i32 0, i32 15, !dbg !1002
  %280 = load i32, i32* %279, align 8, !dbg !1002
  %281 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !1003
  %282 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %281, i32 0, i32 15, !dbg !1004
  store i32 %280, i32* %282, align 8, !dbg !1005
  %283 = load i32*, i32** %8, align 8, !dbg !1006
  %284 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !1007
  %285 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %284, i32 0, i32 16, !dbg !1008
  store i32* %283, i32** %285, align 8, !dbg !1009
  %286 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1010
  %287 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %286, i32 0, i32 16, !dbg !1012
  %288 = load i32*, i32** %287, align 8, !dbg !1012
  %289 = icmp ne i32* %288, null, !dbg !1010
  br i1 %289, label %290, label %315, !dbg !1013

290:                                              ; preds = %267
  store i32 0, i32* %4, align 4, !dbg !1014
  br label %291, !dbg !1017

291:                                              ; preds = %311, %290
  %292 = load i32, i32* %4, align 4, !dbg !1018
  %293 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1020
  %294 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %293, i32 0, i32 15, !dbg !1021
  %295 = load i32, i32* %294, align 8, !dbg !1021
  %296 = icmp slt i32 %292, %295, !dbg !1022
  br i1 %296, label %297, label %314, !dbg !1023

297:                                              ; preds = %291
  %298 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1024
  %299 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %298, i32 0, i32 16, !dbg !1025
  %300 = load i32*, i32** %299, align 8, !dbg !1025
  %301 = load i32, i32* %4, align 4, !dbg !1026
  %302 = sext i32 %301 to i64, !dbg !1024
  %303 = getelementptr inbounds i32, i32* %300, i64 %302, !dbg !1024
  %304 = load i32, i32* %303, align 4, !dbg !1024
  %305 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !1027
  %306 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %305, i32 0, i32 16, !dbg !1028
  %307 = load i32*, i32** %306, align 8, !dbg !1028
  %308 = load i32, i32* %4, align 4, !dbg !1029
  %309 = sext i32 %308 to i64, !dbg !1027
  %310 = getelementptr inbounds i32, i32* %307, i64 %309, !dbg !1027
  store i32 %304, i32* %310, align 4, !dbg !1030
  br label %311, !dbg !1027

311:                                              ; preds = %297
  %312 = load i32, i32* %4, align 4, !dbg !1031
  %313 = add nsw i32 %312, 1, !dbg !1031
  store i32 %313, i32* %4, align 4, !dbg !1031
  br label %291, !dbg !1032, !llvm.loop !1033

314:                                              ; preds = %291
  br label %334, !dbg !1035

315:                                              ; preds = %267
  store i32 0, i32* %4, align 4, !dbg !1036
  br label %316, !dbg !1039

316:                                              ; preds = %330, %315
  %317 = load i32, i32* %4, align 4, !dbg !1040
  %318 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1042
  %319 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %318, i32 0, i32 15, !dbg !1043
  %320 = load i32, i32* %319, align 8, !dbg !1043
  %321 = icmp slt i32 %317, %320, !dbg !1044
  br i1 %321, label %322, label %333, !dbg !1045

322:                                              ; preds = %316
  %323 = load i32, i32* %4, align 4, !dbg !1046
  %324 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !1047
  %325 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %324, i32 0, i32 16, !dbg !1048
  %326 = load i32*, i32** %325, align 8, !dbg !1048
  %327 = load i32, i32* %4, align 4, !dbg !1049
  %328 = sext i32 %327 to i64, !dbg !1047
  %329 = getelementptr inbounds i32, i32* %326, i64 %328, !dbg !1047
  store i32 %323, i32* %329, align 4, !dbg !1050
  br label %330, !dbg !1047

330:                                              ; preds = %322
  %331 = load i32, i32* %4, align 4, !dbg !1051
  %332 = add nsw i32 %331, 1, !dbg !1051
  store i32 %332, i32* %4, align 4, !dbg !1051
  br label %316, !dbg !1052, !llvm.loop !1053

333:                                              ; preds = %316
  br label %334

334:                                              ; preds = %333, %314
  %335 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1055
  %336 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !1056
  %337 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %336, i32 0, i32 17, !dbg !1057
  store %struct.atom_t* %335, %struct.atom_t** %337, align 8, !dbg !1058
  store i32 0, i32* %4, align 4, !dbg !1059
  br label %338, !dbg !1061

338:                                              ; preds = %627, %334
  %339 = load i32, i32* %4, align 4, !dbg !1062
  %340 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1064
  %341 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %340, i32 0, i32 15, !dbg !1065
  %342 = load i32, i32* %341, align 8, !dbg !1065
  %343 = icmp slt i32 %339, %342, !dbg !1066
  br i1 %343, label %344, label %630, !dbg !1067

344:                                              ; preds = %338
  %345 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1068
  %346 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %345, i32 0, i32 17, !dbg !1070
  %347 = load %struct.atom_t*, %struct.atom_t** %346, align 8, !dbg !1070
  %348 = load i32, i32* %4, align 4, !dbg !1071
  %349 = sext i32 %348 to i64, !dbg !1068
  %350 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %347, i64 %349, !dbg !1068
  %351 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %350, i32 0, i32 0, !dbg !1072
  %352 = load i8*, i8** %351, align 8, !dbg !1072
  %353 = call i64 @strlen(i8* %352) #7, !dbg !1073
  %354 = add i64 %353, 1, !dbg !1074
  %355 = call noalias i8* @malloc(i64 %354) #8, !dbg !1075
  store i8* %355, i8** %11, align 8, !dbg !1076
  %356 = load i8*, i8** %11, align 8, !dbg !1077
  %357 = icmp eq i8* %356, null, !dbg !1079
  br i1 %357, label %358, label %361, !dbg !1080

358:                                              ; preds = %344
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1081
  %360 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0)), !dbg !1083
  call void @exit(i32 1) #6, !dbg !1084
  unreachable, !dbg !1084

361:                                              ; preds = %344
  %362 = load i8*, i8** %11, align 8, !dbg !1085
  %363 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1086
  %364 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %363, i32 0, i32 17, !dbg !1087
  %365 = load %struct.atom_t*, %struct.atom_t** %364, align 8, !dbg !1087
  %366 = load i32, i32* %4, align 4, !dbg !1088
  %367 = sext i32 %366 to i64, !dbg !1086
  %368 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %365, i64 %367, !dbg !1086
  %369 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %368, i32 0, i32 0, !dbg !1089
  %370 = load i8*, i8** %369, align 8, !dbg !1089
  %371 = call i8* @strcpy(i8* %362, i8* %370) #8, !dbg !1090
  %372 = load i8*, i8** %11, align 8, !dbg !1091
  %373 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1092
  %374 = load i32, i32* %4, align 4, !dbg !1093
  %375 = sext i32 %374 to i64, !dbg !1092
  %376 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %373, i64 %375, !dbg !1092
  %377 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %376, i32 0, i32 0, !dbg !1094
  store i8* %372, i8** %377, align 8, !dbg !1095
  %378 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1096
  %379 = load i32, i32* %4, align 4, !dbg !1097
  %380 = sext i32 %379 to i64, !dbg !1096
  %381 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %378, i64 %380, !dbg !1096
  %382 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %381, i32 0, i32 1, !dbg !1098
  store i8* null, i8** %382, align 8, !dbg !1099
  %383 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1100
  %384 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %383, i32 0, i32 17, !dbg !1101
  %385 = load %struct.atom_t*, %struct.atom_t** %384, align 8, !dbg !1101
  %386 = load i32, i32* %4, align 4, !dbg !1102
  %387 = sext i32 %386 to i64, !dbg !1100
  %388 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %385, i64 %387, !dbg !1100
  %389 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %388, i32 0, i32 2, !dbg !1103
  %390 = load i32, i32* %389, align 8, !dbg !1103
  %391 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1104
  %392 = load i32, i32* %4, align 4, !dbg !1105
  %393 = sext i32 %392 to i64, !dbg !1104
  %394 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %391, i64 %393, !dbg !1104
  %395 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %394, i32 0, i32 2, !dbg !1106
  store i32 %390, i32* %395, align 8, !dbg !1107
  %396 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1108
  %397 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %396, i32 0, i32 17, !dbg !1109
  %398 = load %struct.atom_t*, %struct.atom_t** %397, align 8, !dbg !1109
  %399 = load i32, i32* %4, align 4, !dbg !1110
  %400 = sext i32 %399 to i64, !dbg !1108
  %401 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %398, i64 %400, !dbg !1108
  %402 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %401, i32 0, i32 3, !dbg !1111
  %403 = load i32, i32* %402, align 4, !dbg !1111
  %404 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1112
  %405 = load i32, i32* %4, align 4, !dbg !1113
  %406 = sext i32 %405 to i64, !dbg !1112
  %407 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %404, i64 %406, !dbg !1112
  %408 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %407, i32 0, i32 3, !dbg !1114
  store i32 %403, i32* %408, align 4, !dbg !1115
  store i32 0, i32* %7, align 4, !dbg !1116
  br label %409, !dbg !1118

409:                                              ; preds = %432, %361
  %410 = load i32, i32* %7, align 4, !dbg !1119
  %411 = icmp slt i32 %410, 8, !dbg !1121
  br i1 %411, label %412, label %435, !dbg !1122

412:                                              ; preds = %409
  %413 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1123
  %414 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %413, i32 0, i32 17, !dbg !1124
  %415 = load %struct.atom_t*, %struct.atom_t** %414, align 8, !dbg !1124
  %416 = load i32, i32* %4, align 4, !dbg !1125
  %417 = sext i32 %416 to i64, !dbg !1123
  %418 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %415, i64 %417, !dbg !1123
  %419 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %418, i32 0, i32 4, !dbg !1126
  %420 = load i32, i32* %7, align 4, !dbg !1127
  %421 = sext i32 %420 to i64, !dbg !1123
  %422 = getelementptr inbounds [8 x i32], [8 x i32]* %419, i64 0, i64 %421, !dbg !1123
  %423 = load i32, i32* %422, align 4, !dbg !1123
  %424 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1128
  %425 = load i32, i32* %4, align 4, !dbg !1129
  %426 = sext i32 %425 to i64, !dbg !1128
  %427 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %424, i64 %426, !dbg !1128
  %428 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %427, i32 0, i32 4, !dbg !1130
  %429 = load i32, i32* %7, align 4, !dbg !1131
  %430 = sext i32 %429 to i64, !dbg !1128
  %431 = getelementptr inbounds [8 x i32], [8 x i32]* %428, i64 0, i64 %430, !dbg !1128
  store i32 %423, i32* %431, align 4, !dbg !1132
  br label %432, !dbg !1128

432:                                              ; preds = %412
  %433 = load i32, i32* %7, align 4, !dbg !1133
  %434 = add nsw i32 %433, 1, !dbg !1133
  store i32 %434, i32* %7, align 4, !dbg !1133
  br label %409, !dbg !1134, !llvm.loop !1135

435:                                              ; preds = %409
  %436 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !1137
  %437 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1138
  %438 = load i32, i32* %4, align 4, !dbg !1139
  %439 = sext i32 %438 to i64, !dbg !1138
  %440 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %437, i64 %439, !dbg !1138
  %441 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %440, i32 0, i32 5, !dbg !1140
  store %struct.residue_t* %436, %struct.residue_t** %441, align 8, !dbg !1141
  %442 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1142
  %443 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %442, i32 0, i32 17, !dbg !1143
  %444 = load %struct.atom_t*, %struct.atom_t** %443, align 8, !dbg !1143
  %445 = load i32, i32* %4, align 4, !dbg !1144
  %446 = sext i32 %445 to i64, !dbg !1142
  %447 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %444, i64 %446, !dbg !1142
  %448 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %447, i32 0, i32 6, !dbg !1145
  %449 = load double, double* %448, align 8, !dbg !1145
  %450 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1146
  %451 = load i32, i32* %4, align 4, !dbg !1147
  %452 = sext i32 %451 to i64, !dbg !1146
  %453 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %450, i64 %452, !dbg !1146
  %454 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %453, i32 0, i32 6, !dbg !1148
  store double %449, double* %454, align 8, !dbg !1149
  %455 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1150
  %456 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %455, i32 0, i32 17, !dbg !1151
  %457 = load %struct.atom_t*, %struct.atom_t** %456, align 8, !dbg !1151
  %458 = load i32, i32* %4, align 4, !dbg !1152
  %459 = sext i32 %458 to i64, !dbg !1150
  %460 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %457, i64 %459, !dbg !1150
  %461 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %460, i32 0, i32 7, !dbg !1153
  %462 = load double, double* %461, align 8, !dbg !1153
  %463 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1154
  %464 = load i32, i32* %4, align 4, !dbg !1155
  %465 = sext i32 %464 to i64, !dbg !1154
  %466 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %463, i64 %465, !dbg !1154
  %467 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %466, i32 0, i32 7, !dbg !1156
  store double %462, double* %467, align 8, !dbg !1157
  %468 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1158
  %469 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %468, i32 0, i32 17, !dbg !1159
  %470 = load %struct.atom_t*, %struct.atom_t** %469, align 8, !dbg !1159
  %471 = load i32, i32* %4, align 4, !dbg !1160
  %472 = sext i32 %471 to i64, !dbg !1158
  %473 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %470, i64 %472, !dbg !1158
  %474 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %473, i32 0, i32 8, !dbg !1161
  %475 = load double, double* %474, align 8, !dbg !1161
  %476 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1162
  %477 = load i32, i32* %4, align 4, !dbg !1163
  %478 = sext i32 %477 to i64, !dbg !1162
  %479 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %476, i64 %478, !dbg !1162
  %480 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %479, i32 0, i32 8, !dbg !1164
  store double %475, double* %480, align 8, !dbg !1165
  %481 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1166
  %482 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %481, i32 0, i32 17, !dbg !1167
  %483 = load %struct.atom_t*, %struct.atom_t** %482, align 8, !dbg !1167
  %484 = load i32, i32* %4, align 4, !dbg !1168
  %485 = sext i32 %484 to i64, !dbg !1166
  %486 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %483, i64 %485, !dbg !1166
  %487 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %486, i32 0, i32 9, !dbg !1169
  %488 = load double, double* %487, align 8, !dbg !1169
  %489 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1170
  %490 = load i32, i32* %4, align 4, !dbg !1171
  %491 = sext i32 %490 to i64, !dbg !1170
  %492 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %489, i64 %491, !dbg !1170
  %493 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %492, i32 0, i32 9, !dbg !1172
  store double %488, double* %493, align 8, !dbg !1173
  %494 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1174
  %495 = load i32, i32* %4, align 4, !dbg !1175
  %496 = sext i32 %495 to i64, !dbg !1174
  %497 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %494, i64 %496, !dbg !1174
  %498 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %497, i32 0, i32 10, !dbg !1176
  store i8* null, i8** %498, align 8, !dbg !1177
  %499 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1178
  %500 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %499, i32 0, i32 17, !dbg !1179
  %501 = load %struct.atom_t*, %struct.atom_t** %500, align 8, !dbg !1179
  %502 = load i32, i32* %4, align 4, !dbg !1180
  %503 = sext i32 %502 to i64, !dbg !1178
  %504 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %501, i64 %503, !dbg !1178
  %505 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %504, i32 0, i32 11, !dbg !1181
  %506 = load i32, i32* %505, align 8, !dbg !1181
  %507 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1182
  %508 = load i32, i32* %4, align 4, !dbg !1183
  %509 = sext i32 %508 to i64, !dbg !1182
  %510 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %507, i64 %509, !dbg !1182
  %511 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %510, i32 0, i32 11, !dbg !1184
  store i32 %506, i32* %511, align 8, !dbg !1185
  %512 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1186
  %513 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %512, i32 0, i32 17, !dbg !1187
  %514 = load %struct.atom_t*, %struct.atom_t** %513, align 8, !dbg !1187
  %515 = load i32, i32* %4, align 4, !dbg !1188
  %516 = sext i32 %515 to i64, !dbg !1186
  %517 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %514, i64 %516, !dbg !1186
  %518 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %517, i32 0, i32 12, !dbg !1189
  %519 = load double, double* %518, align 8, !dbg !1189
  %520 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1190
  %521 = load i32, i32* %4, align 4, !dbg !1191
  %522 = sext i32 %521 to i64, !dbg !1190
  %523 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %520, i64 %522, !dbg !1190
  %524 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %523, i32 0, i32 12, !dbg !1192
  store double %519, double* %524, align 8, !dbg !1193
  %525 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1194
  %526 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %525, i32 0, i32 17, !dbg !1195
  %527 = load %struct.atom_t*, %struct.atom_t** %526, align 8, !dbg !1195
  %528 = load i32, i32* %4, align 4, !dbg !1196
  %529 = sext i32 %528 to i64, !dbg !1194
  %530 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %527, i64 %529, !dbg !1194
  %531 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %530, i32 0, i32 13, !dbg !1197
  %532 = load double, double* %531, align 8, !dbg !1197
  %533 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1198
  %534 = load i32, i32* %4, align 4, !dbg !1199
  %535 = sext i32 %534 to i64, !dbg !1198
  %536 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %533, i64 %535, !dbg !1198
  %537 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %536, i32 0, i32 13, !dbg !1200
  store double %532, double* %537, align 8, !dbg !1201
  %538 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1202
  %539 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %538, i32 0, i32 17, !dbg !1203
  %540 = load %struct.atom_t*, %struct.atom_t** %539, align 8, !dbg !1203
  %541 = load i32, i32* %4, align 4, !dbg !1204
  %542 = sext i32 %541 to i64, !dbg !1202
  %543 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %540, i64 %542, !dbg !1202
  %544 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %543, i32 0, i32 14, !dbg !1205
  %545 = load i32, i32* %544, align 8, !dbg !1205
  %546 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1206
  %547 = load i32, i32* %4, align 4, !dbg !1207
  %548 = sext i32 %547 to i64, !dbg !1206
  %549 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %546, i64 %548, !dbg !1206
  %550 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %549, i32 0, i32 14, !dbg !1208
  store i32 %545, i32* %550, align 8, !dbg !1209
  %551 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1210
  %552 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %551, i32 0, i32 17, !dbg !1211
  %553 = load %struct.atom_t*, %struct.atom_t** %552, align 8, !dbg !1211
  %554 = load i32, i32* %4, align 4, !dbg !1212
  %555 = sext i32 %554 to i64, !dbg !1210
  %556 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %553, i64 %555, !dbg !1210
  %557 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %556, i32 0, i32 15, !dbg !1213
  %558 = load i32, i32* %557, align 4, !dbg !1213
  %559 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1214
  %560 = load i32, i32* %4, align 4, !dbg !1215
  %561 = sext i32 %560 to i64, !dbg !1214
  %562 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %559, i64 %561, !dbg !1214
  %563 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %562, i32 0, i32 15, !dbg !1216
  store i32 %558, i32* %563, align 4, !dbg !1217
  %564 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1218
  %565 = load i32, i32* %4, align 4, !dbg !1219
  %566 = sext i32 %565 to i64, !dbg !1218
  %567 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %564, i64 %566, !dbg !1218
  %568 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %567, i32 0, i32 16, !dbg !1220
  store i8* null, i8** %568, align 8, !dbg !1221
  %569 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1222
  %570 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %569, i32 0, i32 17, !dbg !1223
  %571 = load %struct.atom_t*, %struct.atom_t** %570, align 8, !dbg !1223
  %572 = load i32, i32* %4, align 4, !dbg !1224
  %573 = sext i32 %572 to i64, !dbg !1222
  %574 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %571, i64 %573, !dbg !1222
  %575 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %574, i32 0, i32 17, !dbg !1225
  %576 = getelementptr inbounds [3 x double], [3 x double]* %575, i64 0, i64 0, !dbg !1222
  %577 = load double, double* %576, align 8, !dbg !1222
  %578 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1226
  %579 = load i32, i32* %4, align 4, !dbg !1227
  %580 = sext i32 %579 to i64, !dbg !1226
  %581 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %578, i64 %580, !dbg !1226
  %582 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %581, i32 0, i32 17, !dbg !1228
  %583 = getelementptr inbounds [3 x double], [3 x double]* %582, i64 0, i64 0, !dbg !1226
  store double %577, double* %583, align 8, !dbg !1229
  %584 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1230
  %585 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %584, i32 0, i32 17, !dbg !1231
  %586 = load %struct.atom_t*, %struct.atom_t** %585, align 8, !dbg !1231
  %587 = load i32, i32* %4, align 4, !dbg !1232
  %588 = sext i32 %587 to i64, !dbg !1230
  %589 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %586, i64 %588, !dbg !1230
  %590 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %589, i32 0, i32 17, !dbg !1233
  %591 = getelementptr inbounds [3 x double], [3 x double]* %590, i64 0, i64 1, !dbg !1230
  %592 = load double, double* %591, align 8, !dbg !1230
  %593 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1234
  %594 = load i32, i32* %4, align 4, !dbg !1235
  %595 = sext i32 %594 to i64, !dbg !1234
  %596 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %593, i64 %595, !dbg !1234
  %597 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %596, i32 0, i32 17, !dbg !1236
  %598 = getelementptr inbounds [3 x double], [3 x double]* %597, i64 0, i64 1, !dbg !1234
  store double %592, double* %598, align 8, !dbg !1237
  %599 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1238
  %600 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %599, i32 0, i32 17, !dbg !1239
  %601 = load %struct.atom_t*, %struct.atom_t** %600, align 8, !dbg !1239
  %602 = load i32, i32* %4, align 4, !dbg !1240
  %603 = sext i32 %602 to i64, !dbg !1238
  %604 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %601, i64 %603, !dbg !1238
  %605 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %604, i32 0, i32 17, !dbg !1241
  %606 = getelementptr inbounds [3 x double], [3 x double]* %605, i64 0, i64 2, !dbg !1238
  %607 = load double, double* %606, align 8, !dbg !1238
  %608 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1242
  %609 = load i32, i32* %4, align 4, !dbg !1243
  %610 = sext i32 %609 to i64, !dbg !1242
  %611 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %608, i64 %610, !dbg !1242
  %612 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %611, i32 0, i32 17, !dbg !1244
  %613 = getelementptr inbounds [3 x double], [3 x double]* %612, i64 0, i64 2, !dbg !1242
  store double %607, double* %613, align 8, !dbg !1245
  %614 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !1246
  %615 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %614, i32 0, i32 17, !dbg !1247
  %616 = load %struct.atom_t*, %struct.atom_t** %615, align 8, !dbg !1247
  %617 = load i32, i32* %4, align 4, !dbg !1248
  %618 = sext i32 %617 to i64, !dbg !1246
  %619 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %616, i64 %618, !dbg !1246
  %620 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %619, i32 0, i32 18, !dbg !1249
  %621 = load double, double* %620, align 8, !dbg !1249
  %622 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !1250
  %623 = load i32, i32* %4, align 4, !dbg !1251
  %624 = sext i32 %623 to i64, !dbg !1250
  %625 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %622, i64 %624, !dbg !1250
  %626 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %625, i32 0, i32 18, !dbg !1252
  store double %621, double* %626, align 8, !dbg !1253
  br label %627, !dbg !1254

627:                                              ; preds = %435
  %628 = load i32, i32* %4, align 4, !dbg !1255
  %629 = add nsw i32 %628, 1, !dbg !1255
  store i32 %629, i32* %4, align 4, !dbg !1255
  br label %338, !dbg !1256, !llvm.loop !1257

630:                                              ; preds = %338
  %631 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !1259
  store %struct.residue_t* %631, %struct.residue_t** %2, align 8, !dbg !1260
  br label %632, !dbg !1260

632:                                              ; preds = %630, %90, %68, %48, %33, %18
  %633 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !1261
  ret %struct.residue_t* %633, !dbg !1261
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct.extbond_t* @copyextbonds(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* %0) #0 !dbg !1262 {
  %2 = alloca %struct.strand_t*, align 8
  %3 = alloca %struct.strand_t*, align 8
  %4 = alloca %struct.strand_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.strand_t* %0, %struct.strand_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.strand_t** %3, metadata !1265, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.declare(metadata %struct.strand_t** %4, metadata !1267, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1269, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1271, metadata !DIExpression()), !dbg !1272
  %7 = call noalias i8* @malloc(i64 48) #8, !dbg !1273
  %8 = bitcast i8* %7 to %struct.strand_t*, !dbg !1275
  store %struct.strand_t* %8, %struct.strand_t** %4, align 8, !dbg !1276
  %9 = icmp eq %struct.strand_t* %8, null, !dbg !1277
  br i1 %9, label %10, label %16, !dbg !1278

10:                                               ; preds = %1
  %11 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1279
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %11, i32 0, i32 0, !dbg !1281
  %13 = load i8*, i8** %12, align 8, !dbg !1281
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %13) #8, !dbg !1282
  %15 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1283
  store %struct.strand_t* null, %struct.strand_t** %2, align 8, !dbg !1284
  br label %134, !dbg !1284

16:                                               ; preds = %1
  %17 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1285
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i32 0, i32 5, !dbg !1287
  %19 = load i32, i32* %18, align 8, !dbg !1287
  %20 = sext i32 %19 to i64, !dbg !1285
  %21 = mul i64 %20, 8, !dbg !1288
  %22 = call noalias i8* @malloc(i64 %21) #8, !dbg !1289
  %23 = bitcast i8* %22 to %struct.residue_t**, !dbg !1290
  %24 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1291
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %24, i32 0, i32 7, !dbg !1292
  store %struct.residue_t** %23, %struct.residue_t*** %25, align 8, !dbg !1293
  %26 = icmp eq %struct.residue_t** %23, null, !dbg !1294
  br i1 %26, label %27, label %29, !dbg !1295

27:                                               ; preds = %16
  %28 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)), !dbg !1296
  store %struct.strand_t* null, %struct.strand_t** %2, align 8, !dbg !1298
  br label %134, !dbg !1298

29:                                               ; preds = %16
  %30 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1299
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i32 0, i32 0, !dbg !1301
  %32 = load i8*, i8** %31, align 8, !dbg !1301
  %33 = call i64 @strlen(i8* %32) #7, !dbg !1302
  %34 = add i64 %33, 1, !dbg !1303
  %35 = mul i64 %34, 1, !dbg !1304
  %36 = call noalias i8* @malloc(i64 %35) #8, !dbg !1305
  store i8* %36, i8** %5, align 8, !dbg !1306
  %37 = icmp eq i8* %36, null, !dbg !1307
  br i1 %37, label %38, label %44, !dbg !1308

38:                                               ; preds = %29
  %39 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1309
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i32 0, i32 0, !dbg !1311
  %41 = load i8*, i8** %40, align 8, !dbg !1311
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %41) #8, !dbg !1312
  %43 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1313
  store %struct.strand_t* null, %struct.strand_t** %2, align 8, !dbg !1314
  br label %134, !dbg !1314

44:                                               ; preds = %29
  %45 = load i8*, i8** %5, align 8, !dbg !1315
  %46 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1316
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %46, i32 0, i32 0, !dbg !1317
  store i8* %45, i8** %47, align 8, !dbg !1318
  %48 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1319
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %48, i32 0, i32 0, !dbg !1320
  %50 = load i8*, i8** %49, align 8, !dbg !1320
  %51 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1321
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i32 0, i32 0, !dbg !1322
  %53 = load i8*, i8** %52, align 8, !dbg !1322
  %54 = call i8* @strcpy(i8* %50, i8* %53) #8, !dbg !1323
  %55 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1324
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %55, i32 0, i32 1, !dbg !1325
  %57 = load i32, i32* %56, align 8, !dbg !1325
  %58 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1326
  %59 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %58, i32 0, i32 1, !dbg !1327
  store i32 %57, i32* %59, align 8, !dbg !1328
  %60 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1329
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %60, i32 0, i32 2, !dbg !1330
  %62 = load i32, i32* %61, align 4, !dbg !1330
  %63 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1331
  %64 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %63, i32 0, i32 2, !dbg !1332
  store i32 %62, i32* %64, align 4, !dbg !1333
  %65 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1334
  %66 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %65, i32 0, i32 3, !dbg !1335
  store %struct.molecule_t* null, %struct.molecule_t** %66, align 8, !dbg !1336
  %67 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1337
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %67, i32 0, i32 4, !dbg !1338
  store %struct.strand_t* null, %struct.strand_t** %68, align 8, !dbg !1339
  %69 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1340
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %69, i32 0, i32 5, !dbg !1341
  %71 = load i32, i32* %70, align 8, !dbg !1341
  %72 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1342
  %73 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %72, i32 0, i32 5, !dbg !1343
  store i32 %71, i32* %73, align 8, !dbg !1344
  %74 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1345
  %75 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %74, i32 0, i32 5, !dbg !1346
  %76 = load i32, i32* %75, align 8, !dbg !1346
  %77 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1347
  %78 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %77, i32 0, i32 6, !dbg !1348
  store i32 %76, i32* %78, align 4, !dbg !1349
  store i32 0, i32* %6, align 4, !dbg !1350
  br label %79, !dbg !1352

79:                                               ; preds = %129, %44
  %80 = load i32, i32* %6, align 4, !dbg !1353
  %81 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1355
  %82 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %81, i32 0, i32 5, !dbg !1356
  %83 = load i32, i32* %82, align 8, !dbg !1356
  %84 = icmp slt i32 %80, %83, !dbg !1357
  br i1 %84, label %85, label %132, !dbg !1358

85:                                               ; preds = %79
  %86 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1359
  %87 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %86, i32 0, i32 7, !dbg !1361
  %88 = load %struct.residue_t**, %struct.residue_t*** %87, align 8, !dbg !1361
  %89 = load i32, i32* %6, align 4, !dbg !1362
  %90 = sext i32 %89 to i64, !dbg !1359
  %91 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %88, i64 %90, !dbg !1359
  %92 = load %struct.residue_t*, %struct.residue_t** %91, align 8, !dbg !1359
  %93 = call %struct.residue_t* @copyresidue(%struct.residue_t* %92), !dbg !1363
  %94 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1364
  %95 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %94, i32 0, i32 7, !dbg !1365
  %96 = load %struct.residue_t**, %struct.residue_t*** %95, align 8, !dbg !1365
  %97 = load i32, i32* %6, align 4, !dbg !1366
  %98 = sext i32 %97 to i64, !dbg !1364
  %99 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %96, i64 %98, !dbg !1364
  store %struct.residue_t* %93, %struct.residue_t** %99, align 8, !dbg !1367
  %100 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1368
  %101 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1369
  %102 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %101, i32 0, i32 7, !dbg !1370
  %103 = load %struct.residue_t**, %struct.residue_t*** %102, align 8, !dbg !1370
  %104 = load i32, i32* %6, align 4, !dbg !1371
  %105 = sext i32 %104 to i64, !dbg !1369
  %106 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %103, i64 %105, !dbg !1369
  %107 = load %struct.residue_t*, %struct.residue_t** %106, align 8, !dbg !1369
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %107, i32 0, i32 9, !dbg !1372
  store %struct.strand_t* %100, %struct.strand_t** %108, align 8, !dbg !1373
  %109 = load i32, i32* %6, align 4, !dbg !1374
  %110 = icmp sgt i32 %109, 0, !dbg !1376
  br i1 %110, label %111, label %128, !dbg !1377

111:                                              ; preds = %85
  %112 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1378
  %113 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %112, i32 0, i32 7, !dbg !1379
  %114 = load %struct.residue_t**, %struct.residue_t*** %113, align 8, !dbg !1379
  %115 = load i32, i32* %6, align 4, !dbg !1380
  %116 = sext i32 %115 to i64, !dbg !1378
  %117 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %114, i64 %116, !dbg !1378
  %118 = load %struct.residue_t*, %struct.residue_t** %117, align 8, !dbg !1378
  %119 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1381
  %120 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %119, i32 0, i32 7, !dbg !1382
  %121 = load %struct.residue_t**, %struct.residue_t*** %120, align 8, !dbg !1382
  %122 = load i32, i32* %6, align 4, !dbg !1383
  %123 = sub nsw i32 %122, 1, !dbg !1384
  %124 = sext i32 %123 to i64, !dbg !1381
  %125 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %121, i64 %124, !dbg !1381
  %126 = load %struct.residue_t*, %struct.residue_t** %125, align 8, !dbg !1381
  %127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %126, i32 0, i32 0, !dbg !1385
  store %struct.residue_t* %118, %struct.residue_t** %127, align 8, !dbg !1386
  br label %128, !dbg !1381

128:                                              ; preds = %111, %85
  br label %129, !dbg !1387

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4, !dbg !1388
  %131 = add nsw i32 %130, 1, !dbg !1388
  store i32 %131, i32* %6, align 4, !dbg !1388
  br label %79, !dbg !1389, !llvm.loop !1390

132:                                              ; preds = %79
  %133 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1392
  store %struct.strand_t* %133, %struct.strand_t** %2, align 8, !dbg !1393
  br label %134, !dbg !1393

134:                                              ; preds = %132, %38, %27, %10
  %135 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !1394
  ret %struct.strand_t* %135, !dbg !1394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) #0 !dbg !1395 {
  %2 = alloca %struct.molecule_t*, align 8
  %3 = alloca %struct.molecule_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.strand_t*, align 8
  %7 = alloca %struct.strand_t*, align 8
  %8 = alloca %struct.strand_t*, align 8
  %9 = alloca %struct.molecule_t*, align 8
  store %struct.molecule_t* %0, %struct.molecule_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %3, metadata !1398, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1400, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1402, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.declare(metadata %struct.strand_t** %6, metadata !1404, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.declare(metadata %struct.strand_t** %7, metadata !1406, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.declare(metadata %struct.strand_t** %8, metadata !1408, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %9, metadata !1410, metadata !DIExpression()), !dbg !1411
  %10 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1412
  call void @upd_molnumbers(%struct.molecule_t* %10), !dbg !1413
  %11 = call noalias i8* @malloc(i64 136) #8, !dbg !1414
  %12 = bitcast i8* %11 to %struct.molecule_t*, !dbg !1416
  store %struct.molecule_t* %12, %struct.molecule_t** %9, align 8, !dbg !1417
  %13 = icmp eq %struct.molecule_t* %12, null, !dbg !1418
  br i1 %13, label %14, label %17, !dbg !1419

14:                                               ; preds = %1
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !1420
  %16 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1422
  store %struct.molecule_t* null, %struct.molecule_t** %2, align 8, !dbg !1423
  br label %127, !dbg !1423

17:                                               ; preds = %1
  %18 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1424
  %19 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %18, i32 0, i32 1, !dbg !1425
  %20 = load i32, i32* %19, align 8, !dbg !1425
  %21 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1426
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %21, i32 0, i32 1, !dbg !1427
  store i32 %20, i32* %22, align 8, !dbg !1428
  %23 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1429
  %24 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %23, i32 0, i32 3, !dbg !1430
  %25 = load i32, i32* %24, align 8, !dbg !1430
  %26 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1431
  %27 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %26, i32 0, i32 3, !dbg !1432
  store i32 %25, i32* %27, align 8, !dbg !1433
  %28 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1434
  %29 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %28, i32 0, i32 4, !dbg !1435
  %30 = load i32, i32* %29, align 4, !dbg !1435
  %31 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1436
  %32 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %31, i32 0, i32 4, !dbg !1437
  store i32 %30, i32* %32, align 4, !dbg !1438
  %33 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1439
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %33, i32 0, i32 5, !dbg !1440
  %35 = load i32, i32* %34, align 8, !dbg !1440
  %36 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1441
  %37 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %36, i32 0, i32 5, !dbg !1442
  store i32 %35, i32* %37, align 8, !dbg !1443
  %38 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1444
  %39 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %38, i32 0, i32 6, !dbg !1446
  %40 = load %struct.parm*, %struct.parm** %39, align 8, !dbg !1446
  %41 = icmp ne %struct.parm* %40, null, !dbg !1447
  br i1 %41, label %42, label %49, !dbg !1448

42:                                               ; preds = %17
  %43 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1449
  %44 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %43, i32 0, i32 6, !dbg !1451
  %45 = load %struct.parm*, %struct.parm** %44, align 8, !dbg !1451
  %46 = call %struct.parm* @copyparm(%struct.parm* %45), !dbg !1452
  %47 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1453
  %48 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %47, i32 0, i32 6, !dbg !1454
  store %struct.parm* %46, %struct.parm** %48, align 8, !dbg !1455
  br label %52, !dbg !1456

49:                                               ; preds = %17
  %50 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1457
  %51 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %50, i32 0, i32 6, !dbg !1458
  store %struct.parm* null, %struct.parm** %51, align 8, !dbg !1459
  br label %52

52:                                               ; preds = %49, %42
  store i32 0, i32* %4, align 4, !dbg !1460
  br label %53, !dbg !1462

53:                                               ; preds = %82, %52
  %54 = load i32, i32* %4, align 4, !dbg !1463
  %55 = icmp sle i32 %54, 3, !dbg !1465
  br i1 %55, label %56, label %85, !dbg !1466

56:                                               ; preds = %53
  store i32 0, i32* %5, align 4, !dbg !1467
  br label %57, !dbg !1470

57:                                               ; preds = %78, %56
  %58 = load i32, i32* %5, align 4, !dbg !1471
  %59 = icmp sle i32 %58, 2, !dbg !1473
  br i1 %59, label %60, label %81, !dbg !1474

60:                                               ; preds = %57
  %61 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1475
  %62 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %61, i32 0, i32 0, !dbg !1477
  %63 = load i32, i32* %4, align 4, !dbg !1478
  %64 = sext i32 %63 to i64, !dbg !1475
  %65 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %62, i64 0, i64 %64, !dbg !1475
  %66 = load i32, i32* %5, align 4, !dbg !1479
  %67 = sext i32 %66 to i64, !dbg !1475
  %68 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 0, i64 %67, !dbg !1475
  %69 = load double, double* %68, align 8, !dbg !1475
  %70 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1480
  %71 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %70, i32 0, i32 0, !dbg !1481
  %72 = load i32, i32* %4, align 4, !dbg !1482
  %73 = sext i32 %72 to i64, !dbg !1480
  %74 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %71, i64 0, i64 %73, !dbg !1480
  %75 = load i32, i32* %5, align 4, !dbg !1483
  %76 = sext i32 %75 to i64, !dbg !1480
  %77 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 0, i64 %76, !dbg !1480
  store double %69, double* %77, align 8, !dbg !1484
  br label %78, !dbg !1485

78:                                               ; preds = %60
  %79 = load i32, i32* %5, align 4, !dbg !1486
  %80 = add nsw i32 %79, 1, !dbg !1486
  store i32 %80, i32* %5, align 4, !dbg !1486
  br label %57, !dbg !1487, !llvm.loop !1488

81:                                               ; preds = %57
  br label %82, !dbg !1490

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4, !dbg !1491
  %84 = add nsw i32 %83, 1, !dbg !1491
  store i32 %84, i32* %4, align 4, !dbg !1491
  br label %53, !dbg !1492, !llvm.loop !1493

85:                                               ; preds = %53
  %86 = load %struct.molecule_t*, %struct.molecule_t** %3, align 8, !dbg !1495
  %87 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %86, i32 0, i32 2, !dbg !1496
  %88 = load %struct.strand_t*, %struct.strand_t** %87, align 8, !dbg !1496
  store %struct.strand_t* %88, %struct.strand_t** %6, align 8, !dbg !1497
  %89 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1498
  %90 = icmp ne %struct.strand_t* %89, null, !dbg !1500
  br i1 %90, label %91, label %103, !dbg !1501

91:                                               ; preds = %85
  %92 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1502
  %93 = call %struct.strand_t* @copystrand(%struct.strand_t* %92), !dbg !1504
  store %struct.strand_t* %93, %struct.strand_t** %7, align 8, !dbg !1505
  %94 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1506
  %95 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1507
  %96 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %95, i32 0, i32 3, !dbg !1508
  store %struct.molecule_t* %94, %struct.molecule_t** %96, align 8, !dbg !1509
  %97 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1510
  %98 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1511
  %99 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %98, i32 0, i32 2, !dbg !1512
  store %struct.strand_t* %97, %struct.strand_t** %99, align 8, !dbg !1513
  %100 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1514
  %101 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %100, i32 0, i32 4, !dbg !1515
  %102 = load %struct.strand_t*, %struct.strand_t** %101, align 8, !dbg !1515
  store %struct.strand_t* %102, %struct.strand_t** %6, align 8, !dbg !1516
  br label %103, !dbg !1517

103:                                              ; preds = %91, %85
  br label %104, !dbg !1518

104:                                              ; preds = %116, %103
  %105 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1519
  %106 = icmp ne %struct.strand_t* %105, null, !dbg !1520
  br i1 %106, label %107, label %124, !dbg !1518

107:                                              ; preds = %104
  %108 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1521
  %109 = call %struct.strand_t* @copystrand(%struct.strand_t* %108), !dbg !1523
  store %struct.strand_t* %109, %struct.strand_t** %8, align 8, !dbg !1524
  %110 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1525
  %111 = icmp ne %struct.strand_t* %110, null, !dbg !1525
  br i1 %111, label %112, label %116, !dbg !1527

112:                                              ; preds = %107
  %113 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !1528
  %114 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1529
  %115 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %114, i32 0, i32 4, !dbg !1530
  store %struct.strand_t* %113, %struct.strand_t** %115, align 8, !dbg !1531
  br label %116, !dbg !1529

116:                                              ; preds = %112, %107
  %117 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1532
  %118 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !1533
  %119 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %118, i32 0, i32 3, !dbg !1534
  store %struct.molecule_t* %117, %struct.molecule_t** %119, align 8, !dbg !1535
  %120 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !1536
  store %struct.strand_t* %120, %struct.strand_t** %7, align 8, !dbg !1537
  %121 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1538
  %122 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %121, i32 0, i32 4, !dbg !1539
  %123 = load %struct.strand_t*, %struct.strand_t** %122, align 8, !dbg !1539
  store %struct.strand_t* %123, %struct.strand_t** %6, align 8, !dbg !1540
  br label %104, !dbg !1518, !llvm.loop !1541

124:                                              ; preds = %104
  %125 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1543
  call void @upd_molnumbers(%struct.molecule_t* %125), !dbg !1544
  %126 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !1545
  store %struct.molecule_t* %126, %struct.molecule_t** %2, align 8, !dbg !1546
  br label %127, !dbg !1546

127:                                              ; preds = %124, %14
  %128 = load %struct.molecule_t*, %struct.molecule_t** %2, align 8, !dbg !1547
  ret %struct.molecule_t* %128, !dbg !1547
}

declare dso_local void @upd_molnumbers(%struct.molecule_t*) #2

declare dso_local %struct.parm* @copyparm(%struct.parm*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reslib_t* @read_reslib_header(i8* %0, %struct._IO_FILE** %1, %struct._IO_FILE** %2, %struct._IO_FILE** %3, %struct._IO_FILE** %4, i8* %5) #0 !dbg !1548 {
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
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1552, metadata !DIExpression()), !dbg !1553
  store %struct._IO_FILE** %1, %struct._IO_FILE*** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %9, metadata !1554, metadata !DIExpression()), !dbg !1555
  store %struct._IO_FILE** %2, %struct._IO_FILE*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %10, metadata !1556, metadata !DIExpression()), !dbg !1557
  store %struct._IO_FILE** %3, %struct._IO_FILE*** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %11, metadata !1558, metadata !DIExpression()), !dbg !1559
  store %struct._IO_FILE** %4, %struct._IO_FILE*** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE*** %12, metadata !1560, metadata !DIExpression()), !dbg !1561
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1562, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %15, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1568, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1570, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1572, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.declare(metadata [128 x i8]* %19, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.declare(metadata [20 x i8]* %20, metadata !1579, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.declare(metadata [100 x i8]* %21, metadata !1581, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.declare(metadata [100 x i8]* %22, metadata !1586, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.declare(metadata [256 x i8]* %23, metadata !1588, metadata !DIExpression()), !dbg !1589
  %24 = load i8*, i8** %8, align 8, !dbg !1590
  %25 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !1592
  %26 = icmp ne i8* %25, null, !dbg !1593
  br i1 %26, label %27, label %40, !dbg !1594

27:                                               ; preds = %6
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0, !dbg !1595
  %29 = load i8*, i8** %8, align 8, !dbg !1597
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %29) #8, !dbg !1598
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0, !dbg !1599
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1600
  call void @mk_fname(i8* %31, i8* %32), !dbg !1601
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1602
  %34 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1604
  store %struct._IO_FILE* %34, %struct._IO_FILE** %14, align 8, !dbg !1605
  %35 = icmp eq %struct._IO_FILE* %34, null, !dbg !1606
  br i1 %35, label %36, label %39, !dbg !1607

36:                                               ; preds = %27
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1608
  %38 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* %37), !dbg !1610
  store %struct.reslib_t* null, %struct.reslib_t** %7, align 8, !dbg !1611
  br label %312, !dbg !1611

39:                                               ; preds = %27
  br label %50, !dbg !1612

40:                                               ; preds = %6
  %41 = load i8*, i8** %8, align 8, !dbg !1613
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1615
  call void @mk_fname(i8* %41, i8* %42), !dbg !1616
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1617
  %44 = call %struct._IO_FILE* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1619
  store %struct._IO_FILE* %44, %struct._IO_FILE** %14, align 8, !dbg !1620
  %45 = icmp eq %struct._IO_FILE* %44, null, !dbg !1621
  br i1 %45, label %46, label %49, !dbg !1622

46:                                               ; preds = %40
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1623
  %48 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* %47), !dbg !1625
  store %struct.reslib_t* null, %struct.reslib_t** %7, align 8, !dbg !1626
  br label %312, !dbg !1626

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %39
  %51 = call noalias i8* @malloc(i64 32) #8, !dbg !1627
  %52 = bitcast i8* %51 to %struct.reslib_t*, !dbg !1629
  store %struct.reslib_t* %52, %struct.reslib_t** %15, align 8, !dbg !1630
  %53 = icmp eq %struct.reslib_t* %52, null, !dbg !1631
  br i1 %53, label %54, label %58, !dbg !1632

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8, !dbg !1633
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %55) #8, !dbg !1635
  %57 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1636
  store %struct.reslib_t* null, %struct.reslib_t** %7, align 8, !dbg !1637
  br label %312, !dbg !1637

58:                                               ; preds = %50
  %59 = load i8*, i8** %8, align 8, !dbg !1638
  %60 = call i64 @strlen(i8* %59) #7, !dbg !1639
  %61 = add i64 %60, 1, !dbg !1640
  %62 = trunc i64 %61 to i32, !dbg !1639
  store i32 %62, i32* %17, align 4, !dbg !1641
  %63 = load i32, i32* %17, align 4, !dbg !1642
  %64 = sext i32 %63 to i64, !dbg !1642
  %65 = mul i64 %64, 1, !dbg !1644
  %66 = call noalias i8* @malloc(i64 %65) #8, !dbg !1645
  store i8* %66, i8** %18, align 8, !dbg !1646
  %67 = icmp eq i8* %66, null, !dbg !1647
  br i1 %67, label %68, label %72, !dbg !1648

68:                                               ; preds = %58
  %69 = load i8*, i8** %8, align 8, !dbg !1649
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* %69) #8, !dbg !1651
  %71 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1652
  store %struct.reslib_t* null, %struct.reslib_t** %7, align 8, !dbg !1653
  br label %312, !dbg !1653

72:                                               ; preds = %58
  %73 = load i8*, i8** %18, align 8, !dbg !1654
  %74 = load i8*, i8** %8, align 8, !dbg !1655
  %75 = call i8* @strcpy(i8* %73, i8* %74) #8, !dbg !1656
  %76 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1657
  %77 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1658
  %78 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %77, i32 0, i32 0, !dbg !1659
  store %struct.reslib_t* %76, %struct.reslib_t** %78, align 8, !dbg !1660
  %79 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1661
  store %struct.reslib_t* %79, %struct.reslib_t** @reslibs, align 8, !dbg !1662
  %80 = load i8*, i8** %18, align 8, !dbg !1663
  %81 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1664
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %81, i32 0, i32 1, !dbg !1665
  store i8* %80, i8** %82, align 8, !dbg !1666
  %83 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1667
  %84 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %83, i32 0, i32 2, !dbg !1668
  store i32 0, i32* %84, align 8, !dbg !1669
  %85 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1670
  %86 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %85, i32 0, i32 3, !dbg !1671
  store i32 0, i32* %86, align 4, !dbg !1672
  %87 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1673
  %88 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %87, i32 0, i32 4, !dbg !1674
  store %struct.residue_t* null, %struct.residue_t** %88, align 8, !dbg !1675
  %89 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8, !dbg !1676
  store %struct._IO_FILE* null, %struct._IO_FILE** %89, align 8, !dbg !1677
  %90 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8, !dbg !1678
  store %struct._IO_FILE* null, %struct._IO_FILE** %90, align 8, !dbg !1679
  %91 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8, !dbg !1680
  store %struct._IO_FILE* null, %struct._IO_FILE** %91, align 8, !dbg !1681
  %92 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8, !dbg !1682
  store %struct._IO_FILE* null, %struct._IO_FILE** %92, align 8, !dbg !1683
  %93 = load i8*, i8** %13, align 8, !dbg !1684
  store i8 0, i8* %93, align 1, !dbg !1685
  %94 = load i8*, i8** %8, align 8, !dbg !1686
  %95 = call i8* @strstr(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !1688
  %96 = icmp eq i8* %95, null, !dbg !1689
  br i1 %96, label %97, label %252, !dbg !1690

97:                                               ; preds = %72
  br label %98, !dbg !1691

98:                                               ; preds = %250, %115, %108, %97
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1693
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1694
  %101 = call i8* @fgets(i8* %99, i32 128, %struct._IO_FILE* %100), !dbg !1695
  %102 = icmp ne i8* %101, null, !dbg !1691
  br i1 %102, label %103, label %251, !dbg !1691

103:                                              ; preds = %98
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1696
  %105 = load i8, i8* %104, align 16, !dbg !1696
  %106 = sext i8 %105 to i32, !dbg !1696
  %107 = icmp eq i32 %106, 35, !dbg !1699
  br i1 %107, label %108, label %109, !dbg !1700

108:                                              ; preds = %103
  br label %98, !dbg !1701, !llvm.loop !1702

109:                                              ; preds = %103
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1704
  %111 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0, !dbg !1706
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1707
  %113 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* %111, i8* %112) #8, !dbg !1708
  store i32 %113, i32* %16, align 4, !dbg !1709
  %114 = icmp eq i32 %113, -1, !dbg !1710
  br i1 %114, label %115, label %116, !dbg !1711

115:                                              ; preds = %109
  br label %98, !dbg !1712, !llvm.loop !1702

116:                                              ; preds = %109
  %117 = load i32, i32* %16, align 4, !dbg !1714
  %118 = icmp ne i32 %117, 2, !dbg !1716
  br i1 %118, label %119, label %120, !dbg !1717

119:                                              ; preds = %116
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8, !dbg !1718
  br label %256, !dbg !1720

120:                                              ; preds = %116
  %121 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0, !dbg !1721
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !1723
  %123 = icmp eq i32 %122, 0, !dbg !1724
  br i1 %123, label %124, label %149, !dbg !1725

124:                                              ; preds = %120
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1726
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1729
  %127 = icmp eq i32 %126, 0, !dbg !1730
  br i1 %127, label %128, label %131, !dbg !1731

128:                                              ; preds = %124
  %129 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1732
  %130 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %129, i32 0, i32 2, !dbg !1733
  store i32 1, i32* %130, align 8, !dbg !1734
  br label %148, !dbg !1732

131:                                              ; preds = %124
  %132 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1735
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !1737
  %134 = icmp eq i32 %133, 0, !dbg !1738
  br i1 %134, label %135, label %138, !dbg !1739

135:                                              ; preds = %131
  %136 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1740
  %137 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %136, i32 0, i32 2, !dbg !1741
  store i32 2, i32* %137, align 8, !dbg !1742
  br label %147, !dbg !1740

138:                                              ; preds = %131
  %139 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1743
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !1745
  %141 = icmp eq i32 %140, 0, !dbg !1746
  br i1 %141, label %142, label %145, !dbg !1747

142:                                              ; preds = %138
  %143 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1748
  %144 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %143, i32 0, i32 2, !dbg !1749
  store i32 3, i32* %144, align 8, !dbg !1750
  br label %146, !dbg !1748

145:                                              ; preds = %138
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8, !dbg !1751
  br label %256, !dbg !1753

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %135
  br label %148

148:                                              ; preds = %147, %128
  br label %248, !dbg !1754

149:                                              ; preds = %120
  %150 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0, !dbg !1755
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !1757
  %152 = icmp eq i32 %151, 0, !dbg !1758
  br i1 %152, label %153, label %170, !dbg !1759

153:                                              ; preds = %149
  %154 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1760
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0)) #7, !dbg !1763
  %156 = icmp eq i32 %155, 0, !dbg !1764
  br i1 %156, label %157, label %160, !dbg !1765

157:                                              ; preds = %153
  %158 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1766
  %159 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %158, i32 0, i32 3, !dbg !1767
  store i32 1, i32* %159, align 4, !dbg !1768
  br label %169, !dbg !1766

160:                                              ; preds = %153
  %161 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1769
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !1771
  %163 = icmp eq i32 %162, 0, !dbg !1772
  br i1 %163, label %164, label %167, !dbg !1773

164:                                              ; preds = %160
  %165 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1774
  %166 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %165, i32 0, i32 3, !dbg !1775
  store i32 2, i32* %166, align 4, !dbg !1776
  br label %168, !dbg !1774

167:                                              ; preds = %160
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8, !dbg !1777
  br label %256, !dbg !1779

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168, %157
  br label %247, !dbg !1780

170:                                              ; preds = %149
  %171 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0, !dbg !1781
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)) #7, !dbg !1783
  %173 = icmp eq i32 %172, 0, !dbg !1784
  br i1 %173, label %174, label %177, !dbg !1785

174:                                              ; preds = %170
  %175 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1786
  %176 = load i8*, i8** %13, align 8, !dbg !1788
  call void @mk_fname(i8* %175, i8* %176), !dbg !1789
  br label %246, !dbg !1790

177:                                              ; preds = %170
  %178 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0, !dbg !1791
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0)) #7, !dbg !1793
  %180 = icmp eq i32 %179, 0, !dbg !1794
  br i1 %180, label %181, label %193, !dbg !1795

181:                                              ; preds = %177
  %182 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1796
  %183 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1798
  call void @mk_fname(i8* %182, i8* %183), !dbg !1799
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1800
  %185 = call %struct._IO_FILE* @fopen(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1802
  %186 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8, !dbg !1803
  store %struct._IO_FILE* %185, %struct._IO_FILE** %186, align 8, !dbg !1804
  %187 = icmp eq %struct._IO_FILE* %185, null, !dbg !1805
  br i1 %187, label %188, label %192, !dbg !1806

188:                                              ; preds = %181
  %189 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1807
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* %189) #8, !dbg !1809
  %191 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1810
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8, !dbg !1811
  br label %256, !dbg !1812

192:                                              ; preds = %181
  br label %245, !dbg !1813

193:                                              ; preds = %177
  %194 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0, !dbg !1814
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #7, !dbg !1816
  %196 = icmp eq i32 %195, 0, !dbg !1817
  br i1 %196, label %197, label %209, !dbg !1818

197:                                              ; preds = %193
  %198 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1819
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1821
  call void @mk_fname(i8* %198, i8* %199), !dbg !1822
  %200 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1823
  %201 = call %struct._IO_FILE* @fopen(i8* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1825
  %202 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8, !dbg !1826
  store %struct._IO_FILE* %201, %struct._IO_FILE** %202, align 8, !dbg !1827
  %203 = icmp eq %struct._IO_FILE* %201, null, !dbg !1828
  br i1 %203, label %204, label %208, !dbg !1829

204:                                              ; preds = %197
  %205 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1830
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* %205) #8, !dbg !1832
  %207 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1833
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8, !dbg !1834
  br label %256, !dbg !1835

208:                                              ; preds = %197
  br label %244, !dbg !1836

209:                                              ; preds = %193
  %210 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0, !dbg !1837
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #7, !dbg !1839
  %212 = icmp eq i32 %211, 0, !dbg !1840
  br i1 %212, label %213, label %225, !dbg !1841

213:                                              ; preds = %209
  %214 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1842
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1844
  call void @mk_fname(i8* %214, i8* %215), !dbg !1845
  %216 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1846
  %217 = call %struct._IO_FILE* @fopen(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1848
  %218 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8, !dbg !1849
  store %struct._IO_FILE* %217, %struct._IO_FILE** %218, align 8, !dbg !1850
  %219 = icmp eq %struct._IO_FILE* %217, null, !dbg !1851
  br i1 %219, label %220, label %224, !dbg !1852

220:                                              ; preds = %213
  %221 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1853
  %222 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* %221) #8, !dbg !1855
  %223 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1856
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8, !dbg !1857
  br label %256, !dbg !1858

224:                                              ; preds = %213
  br label %243, !dbg !1859

225:                                              ; preds = %209
  %226 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0, !dbg !1860
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !1862
  %228 = icmp eq i32 %227, 0, !dbg !1863
  br i1 %228, label %229, label %241, !dbg !1864

229:                                              ; preds = %225
  %230 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1865
  %231 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1867
  call void @mk_fname(i8* %230, i8* %231), !dbg !1868
  %232 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i64 0, i64 0, !dbg !1869
  %233 = call %struct._IO_FILE* @fopen(i8* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1871
  %234 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8, !dbg !1872
  store %struct._IO_FILE* %233, %struct._IO_FILE** %234, align 8, !dbg !1873
  %235 = icmp eq %struct._IO_FILE* %233, null, !dbg !1874
  br i1 %235, label %236, label %240, !dbg !1875

236:                                              ; preds = %229
  %237 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0, !dbg !1876
  %238 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* %237) #8, !dbg !1878
  %239 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1879
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8, !dbg !1880
  br label %256, !dbg !1881

240:                                              ; preds = %229
  br label %242, !dbg !1882

241:                                              ; preds = %225
  store %struct.reslib_t* null, %struct.reslib_t** %15, align 8, !dbg !1883
  br label %256, !dbg !1885

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
  br label %98, !dbg !1691, !llvm.loop !1702

251:                                              ; preds = %98
  br label %255, !dbg !1886

252:                                              ; preds = %72
  %253 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 0, !dbg !1887
  %254 = load i8*, i8** %13, align 8, !dbg !1889
  call void @mk_fname(i8* %253, i8* %254), !dbg !1890
  br label %255

255:                                              ; preds = %252, %251
  br label %256, !dbg !1891

256:                                              ; preds = %255, %241, %236, %220, %204, %188, %167, %145, %119
  call void @llvm.dbg.label(metadata !1892), !dbg !1893
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !1894
  %258 = call i32 @fclose(%struct._IO_FILE* %257), !dbg !1895
  %259 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1896
  %260 = icmp eq %struct.reslib_t* %259, null, !dbg !1898
  br i1 %260, label %261, label %310, !dbg !1899

261:                                              ; preds = %256
  %262 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8, !dbg !1900
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %262, align 8, !dbg !1903
  %264 = icmp ne %struct._IO_FILE* %263, null, !dbg !1903
  br i1 %264, label %265, label %269, !dbg !1904

265:                                              ; preds = %261
  %266 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8, !dbg !1905
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** %266, align 8, !dbg !1906
  %268 = call i32 @fclose(%struct._IO_FILE* %267), !dbg !1907
  br label %269, !dbg !1907

269:                                              ; preds = %265, %261
  %270 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8, !dbg !1908
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %270, align 8, !dbg !1910
  %272 = icmp ne %struct._IO_FILE* %271, null, !dbg !1910
  br i1 %272, label %273, label %277, !dbg !1911

273:                                              ; preds = %269
  %274 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8, !dbg !1912
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %274, align 8, !dbg !1913
  %276 = call i32 @fclose(%struct._IO_FILE* %275), !dbg !1914
  br label %277, !dbg !1914

277:                                              ; preds = %273, %269
  %278 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8, !dbg !1915
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %278, align 8, !dbg !1917
  %280 = icmp ne %struct._IO_FILE* %279, null, !dbg !1917
  br i1 %280, label %281, label %285, !dbg !1918

281:                                              ; preds = %277
  %282 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8, !dbg !1919
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %282, align 8, !dbg !1920
  %284 = call i32 @fclose(%struct._IO_FILE* %283), !dbg !1921
  br label %285, !dbg !1921

285:                                              ; preds = %281, %277
  %286 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8, !dbg !1922
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** %286, align 8, !dbg !1924
  %288 = icmp ne %struct._IO_FILE* %287, null, !dbg !1924
  br i1 %288, label %289, label %293, !dbg !1925

289:                                              ; preds = %285
  %290 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8, !dbg !1926
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %290, align 8, !dbg !1927
  %292 = call i32 @fclose(%struct._IO_FILE* %291), !dbg !1928
  br label %293, !dbg !1928

293:                                              ; preds = %289, %285
  %294 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1929
  %295 = call i64 @strlen(i8* %294) #7, !dbg !1930
  %296 = sub i64 %295, 1, !dbg !1931
  %297 = trunc i64 %296 to i32, !dbg !1930
  store i32 %297, i32* %17, align 4, !dbg !1932
  %298 = load i32, i32* %17, align 4, !dbg !1933
  %299 = icmp sgt i32 %298, 20, !dbg !1934
  br i1 %299, label %300, label %301, !dbg !1933

300:                                              ; preds = %293
  br label %303, !dbg !1933

301:                                              ; preds = %293
  %302 = load i32, i32* %17, align 4, !dbg !1935
  br label %303, !dbg !1933

303:                                              ; preds = %301, %300
  %304 = phi i32 [ 20, %300 ], [ %302, %301 ], !dbg !1933
  store i32 %304, i32* %17, align 4, !dbg !1936
  %305 = load i32, i32* %17, align 4, !dbg !1937
  %306 = load i32, i32* %17, align 4, !dbg !1938
  %307 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0, !dbg !1939
  %308 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %305, i32 %306, i8* %307) #8, !dbg !1940
  %309 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1941
  br label %310, !dbg !1942

310:                                              ; preds = %303, %256
  %311 = load %struct.reslib_t*, %struct.reslib_t** %15, align 8, !dbg !1943
  store %struct.reslib_t* %311, %struct.reslib_t** %7, align 8, !dbg !1944
  br label %312, !dbg !1944

312:                                              ; preds = %310, %68, %54, %46, %36
  %313 = load %struct.reslib_t*, %struct.reslib_t** %7, align 8, !dbg !1945
  ret %struct.reslib_t* %313, !dbg !1945
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initatoms() #0 !dbg !239 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.atom_t*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1946, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.declare(metadata %struct.atom_t** %2, metadata !1948, metadata !DIExpression()), !dbg !1949
  %3 = load i32, i32* @initatoms.init, align 4, !dbg !1950
  %4 = icmp ne i32 %3, 0, !dbg !1950
  br i1 %4, label %6, label %5, !dbg !1952

5:                                                ; preds = %0
  br label %28, !dbg !1953

6:                                                ; preds = %0
  store i32 0, i32* @initatoms.init, align 4, !dbg !1954
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %struct.atom_t** %2, align 8, !dbg !1955
  store i32 0, i32* %1, align 4, !dbg !1957
  br label %7, !dbg !1958

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %1, align 4, !dbg !1959
  %9 = icmp slt i32 %8, 1000, !dbg !1961
  br i1 %9, label %10, label %28, !dbg !1962

10:                                               ; preds = %7
  %11 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !1963
  call void @NAB_initatom(%struct.atom_t* %11, i32 1), !dbg !1965
  %12 = call noalias i8* @malloc(i64 8) #8, !dbg !1966
  %13 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !1967
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i32 0, i32 0, !dbg !1968
  store i8* %12, i8** %14, align 8, !dbg !1969
  %15 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !1970
  %16 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %15, i32 0, i32 0, !dbg !1972
  %17 = load i8*, i8** %16, align 8, !dbg !1972
  %18 = icmp eq i8* %17, null, !dbg !1973
  br i1 %18, label %19, label %22, !dbg !1974

19:                                               ; preds = %10
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1975
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0)), !dbg !1977
  call void @exit(i32 1) #6, !dbg !1978
  unreachable, !dbg !1978

22:                                               ; preds = %10
  br label %23, !dbg !1979

23:                                               ; preds = %22
  %24 = load i32, i32* %1, align 4, !dbg !1980
  %25 = add nsw i32 %24, 1, !dbg !1980
  store i32 %25, i32* %1, align 4, !dbg !1980
  %26 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !1981
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 1, !dbg !1981
  store %struct.atom_t* %27, %struct.atom_t** %2, align 8, !dbg !1981
  br label %7, !dbg !1982, !llvm.loop !1983

28:                                               ; preds = %7, %5
  ret void, !dbg !1985
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @off2reslib(i8* %0, %struct.reslib_t* %1) #0 !dbg !1986 {
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
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1989, metadata !DIExpression()), !dbg !1990
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %4, metadata !1991, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.declare(metadata %struct.atom_t** %5, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1995, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1997, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1999, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2001, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.declare(metadata %struct.DATABASEt** %10, metadata !2003, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2030, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.declare(metadata [100 x i32]* %12, metadata !2032, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.declare(metadata [100 x i32]* %13, metadata !2035, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.declare(metadata [100 x i32]* %14, metadata !2037, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.declare(metadata [100 x i32]* %15, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.declare(metadata [100 x i32]* %16, metadata !2041, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.declare(metadata [100 x i32]* %17, metadata !2043, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.declare(metadata [100 x i32]* %18, metadata !2045, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.declare(metadata [100 x double]* %19, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.declare(metadata [100 x double]* %20, metadata !2050, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.declare(metadata [100 x double]* %21, metadata !2052, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.declare(metadata [100 x double]* %22, metadata !2054, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %23, metadata !2056, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %24, metadata !2060, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %25, metadata !2062, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.declare(metadata [255 x i8]* %26, metadata !2064, metadata !DIExpression()), !dbg !2068
  store i32 0, i32* @n_atoms, align 4, !dbg !2069
  %27 = load i8*, i8** %3, align 8, !dbg !2070
  %28 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* %27, i32 1), !dbg !2071
  store %struct.DATABASEt* %28, %struct.DATABASEt** %10, align 8, !dbg !2072
  %29 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8, !dbg !2073
  %30 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %25, i64 0, i64 0, !dbg !2074
  %31 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* %7, [10 x i8]* %30, i32 10), !dbg !2075
  store i8 %31, i8* %11, align 1, !dbg !2076
  store i32 0, i32* %9, align 4, !dbg !2077
  br label %32, !dbg !2079

32:                                               ; preds = %151, %2
  %33 = load i32, i32* %9, align 4, !dbg !2080
  %34 = load i32, i32* %7, align 4, !dbg !2082
  %35 = icmp slt i32 %33, %34, !dbg !2083
  br i1 %35, label %36, label %154, !dbg !2084

36:                                               ; preds = %32
  %37 = getelementptr inbounds [255 x i8], [255 x i8]* %26, i64 0, i64 0, !dbg !2085
  %38 = load i32, i32* %9, align 4, !dbg !2087
  %39 = sext i32 %38 to i64, !dbg !2088
  %40 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %25, i64 0, i64 %39, !dbg !2088
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %40, i64 0, i64 0, !dbg !2088
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* %41) #8, !dbg !2089
  %43 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8, !dbg !2090
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* %43), !dbg !2091
  %44 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8, !dbg !2092
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %26, i64 0, i64 0, !dbg !2093
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* %44, i8* %45), !dbg !2094
  %46 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8, !dbg !2095
  %47 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 1), !dbg !2096
  store i8 %47, i8* %11, align 1, !dbg !2097
  %48 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8, !dbg !2098
  %49 = getelementptr inbounds [100 x i32], [100 x i32]* %12, i64 0, i64 0, !dbg !2099
  %50 = getelementptr inbounds [100 x i32], [100 x i32]* %13, i64 0, i64 0, !dbg !2100
  %51 = getelementptr inbounds [100 x i32], [100 x i32]* %14, i64 0, i64 0, !dbg !2101
  %52 = getelementptr inbounds [100 x i32], [100 x i32]* %15, i64 0, i64 0, !dbg !2102
  %53 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 0, !dbg !2103
  %54 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 0, !dbg !2104
  %55 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %23, i64 0, i64 0, !dbg !2105
  %56 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %24, i64 0, i64 0, !dbg !2106
  %57 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* @n_atoms, i32 3, i32* %49, i64 4, i32 4, i32* %50, i64 4, i32 5, i32* %51, i64 4, i32 6, i32* %52, i64 4, i32 7, i32* %53, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 8, double* %54, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, [10 x i8]* %55, i32 10, i32 2, [10 x i8]* %56, i32 10, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0), !dbg !2107
  store i8 %57, i8* %11, align 1, !dbg !2108
  %58 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8, !dbg !2109
  %59 = getelementptr inbounds [100 x double], [100 x double]* %20, i64 0, i64 0, !dbg !2110
  %60 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 0, !dbg !2111
  %61 = getelementptr inbounds [100 x double], [100 x double]* %22, i64 0, i64 0, !dbg !2112
  %62 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* @n_atoms, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, double* %59, i64 8, i32 2, double* %60, i64 8, i32 3, double* %61, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0), !dbg !2113
  store i8 %62, i8* %11, align 1, !dbg !2114
  store i32 0, i32* %8, align 4, !dbg !2115
  br label %63, !dbg !2117

63:                                               ; preds = %107, %36
  %64 = load i32, i32* %8, align 4, !dbg !2118
  %65 = load i32, i32* @n_atoms, align 4, !dbg !2120
  %66 = icmp slt i32 %64, %65, !dbg !2121
  br i1 %66, label %67, label %110, !dbg !2122

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4, !dbg !2123
  %69 = sext i32 %68 to i64, !dbg !2125
  %70 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %69, !dbg !2125
  store %struct.atom_t* %70, %struct.atom_t** %5, align 8, !dbg !2126
  %71 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2127
  call void @NAB_initatom(%struct.atom_t* %71, i32 0), !dbg !2128
  %72 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2129
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %72, i32 0, i32 0, !dbg !2130
  %74 = load i8*, i8** %73, align 8, !dbg !2130
  %75 = load i32, i32* %8, align 4, !dbg !2131
  %76 = sext i32 %75 to i64, !dbg !2132
  %77 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %23, i64 0, i64 %76, !dbg !2132
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %77, i64 0, i64 0, !dbg !2132
  %79 = call i8* @strcpy(i8* %74, i8* %78) #8, !dbg !2133
  %80 = load i32, i32* %8, align 4, !dbg !2134
  %81 = sext i32 %80 to i64, !dbg !2135
  %82 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %81, !dbg !2135
  %83 = load double, double* %82, align 8, !dbg !2135
  %84 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2136
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %84, i32 0, i32 6, !dbg !2137
  store double %83, double* %85, align 8, !dbg !2138
  %86 = load i32, i32* %8, align 4, !dbg !2139
  %87 = sext i32 %86 to i64, !dbg !2140
  %88 = getelementptr inbounds [100 x double], [100 x double]* %20, i64 0, i64 %87, !dbg !2140
  %89 = load double, double* %88, align 8, !dbg !2140
  %90 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2141
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i32 0, i32 17, !dbg !2142
  %92 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 0, i64 0, !dbg !2141
  store double %89, double* %92, align 8, !dbg !2143
  %93 = load i32, i32* %8, align 4, !dbg !2144
  %94 = sext i32 %93 to i64, !dbg !2145
  %95 = getelementptr inbounds [100 x double], [100 x double]* %21, i64 0, i64 %94, !dbg !2145
  %96 = load double, double* %95, align 8, !dbg !2145
  %97 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2146
  %98 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %97, i32 0, i32 17, !dbg !2147
  %99 = getelementptr inbounds [3 x double], [3 x double]* %98, i64 0, i64 1, !dbg !2146
  store double %96, double* %99, align 8, !dbg !2148
  %100 = load i32, i32* %8, align 4, !dbg !2149
  %101 = sext i32 %100 to i64, !dbg !2150
  %102 = getelementptr inbounds [100 x double], [100 x double]* %22, i64 0, i64 %101, !dbg !2150
  %103 = load double, double* %102, align 8, !dbg !2150
  %104 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2151
  %105 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %104, i32 0, i32 17, !dbg !2152
  %106 = getelementptr inbounds [3 x double], [3 x double]* %105, i64 0, i64 2, !dbg !2151
  store double %103, double* %106, align 8, !dbg !2153
  br label %107, !dbg !2154

107:                                              ; preds = %67
  %108 = load i32, i32* %8, align 4, !dbg !2155
  %109 = add nsw i32 %108, 1, !dbg !2155
  store i32 %109, i32* %8, align 4, !dbg !2155
  br label %63, !dbg !2156, !llvm.loop !2157

110:                                              ; preds = %63
  %111 = load i32, i32* @n_atoms, align 4, !dbg !2159
  %112 = icmp sgt i32 %111, 0, !dbg !2161
  br i1 %112, label %113, label %115, !dbg !2162

113:                                              ; preds = %110
  %114 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2163
  call void @addres2reslib(%struct.reslib_t* %114), !dbg !2164
  br label %115, !dbg !2164

115:                                              ; preds = %113, %110
  %116 = load %struct.DATABASEt*, %struct.DATABASEt** %10, align 8, !dbg !2165
  %117 = getelementptr inbounds [100 x i32], [100 x i32]* %17, i64 0, i64 0, !dbg !2166
  %118 = getelementptr inbounds [100 x i32], [100 x i32]* %18, i64 0, i64 0, !dbg !2167
  %119 = getelementptr inbounds [100 x i32], [100 x i32]* %14, i64 0, i64 0, !dbg !2168
  %120 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* @n_bonds, i32 1, i32* %117, i64 4, i32 2, i32* %118, i64 4, i32 3, i32* %119, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0), !dbg !2169
  store i8 %120, i8* %11, align 1, !dbg !2170
  store i32 0, i32* %8, align 4, !dbg !2171
  br label %121, !dbg !2173

121:                                              ; preds = %142, %115
  %122 = load i32, i32* %8, align 4, !dbg !2174
  %123 = load i32, i32* @n_bonds, align 4, !dbg !2176
  %124 = icmp slt i32 %122, %123, !dbg !2177
  br i1 %124, label %125, label %145, !dbg !2178

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4, !dbg !2179
  %127 = sext i32 %126 to i64, !dbg !2181
  %128 = getelementptr inbounds [100 x i32], [100 x i32]* %17, i64 0, i64 %127, !dbg !2181
  %129 = load i32, i32* %128, align 4, !dbg !2181
  %130 = load i32, i32* %8, align 4, !dbg !2182
  %131 = sext i32 %130 to i64, !dbg !2183
  %132 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %131, !dbg !2183
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %132, i64 0, i64 0, !dbg !2183
  store i32 %129, i32* %133, align 8, !dbg !2184
  %134 = load i32, i32* %8, align 4, !dbg !2185
  %135 = sext i32 %134 to i64, !dbg !2186
  %136 = getelementptr inbounds [100 x i32], [100 x i32]* %18, i64 0, i64 %135, !dbg !2186
  %137 = load i32, i32* %136, align 4, !dbg !2186
  %138 = load i32, i32* %8, align 4, !dbg !2187
  %139 = sext i32 %138 to i64, !dbg !2188
  %140 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %139, !dbg !2188
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 1, !dbg !2188
  store i32 %137, i32* %141, align 4, !dbg !2189
  br label %142, !dbg !2190

142:                                              ; preds = %125
  %143 = load i32, i32* %8, align 4, !dbg !2191
  %144 = add nsw i32 %143, 1, !dbg !2191
  store i32 %144, i32* %8, align 4, !dbg !2191
  br label %121, !dbg !2192, !llvm.loop !2193

145:                                              ; preds = %121
  %146 = load i32, i32* @n_bonds, align 4, !dbg !2195
  %147 = icmp sgt i32 %146, 0, !dbg !2197
  br i1 %147, label %148, label %150, !dbg !2198

148:                                              ; preds = %145
  %149 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2199
  call void @addbonds2reslib(%struct.reslib_t* %149), !dbg !2200
  br label %150, !dbg !2200

150:                                              ; preds = %148, %145
  br label %151, !dbg !2201

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4, !dbg !2202
  %153 = add nsw i32 %152, 1, !dbg !2202
  store i32 %153, i32* %9, align 4, !dbg !2202
  br label %32, !dbg !2203, !llvm.loop !2204

154:                                              ; preds = %32
  ret void, !dbg !2206
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdb2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !2207 {
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
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2210, metadata !DIExpression()), !dbg !2211
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %4, metadata !2212, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !2214, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata [10 x i8]* %7, metadata !2219, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.declare(metadata [10 x i8]* %8, metadata !2221, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2223, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.declare(metadata double* %11, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.declare(metadata double* %12, metadata !2229, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.declare(metadata double* %13, metadata !2231, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.declare(metadata %struct.atom_t** %14, metadata !2233, metadata !DIExpression()), !dbg !2234
  store i32 0, i32* @n_atoms, align 4, !dbg !2235
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !2236
  br label %15, !dbg !2237

15:                                               ; preds = %77, %2
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2238
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2239
  %18 = call i8* @fgets(i8* %16, i32 256, %struct._IO_FILE* %17), !dbg !2240
  %19 = icmp ne i8* %18, null, !dbg !2237
  br i1 %19, label %20, label %78, !dbg !2237

20:                                               ; preds = %15
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2241
  %22 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* %21, i64 6) #7, !dbg !2244
  %23 = icmp eq i32 %22, 0, !dbg !2245
  br i1 %23, label %24, label %27, !dbg !2246

24:                                               ; preds = %20
  %25 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2247
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2249
  call void @setrlibattrs(%struct.reslib_t* %25, i8* %26), !dbg !2250
  br label %77, !dbg !2251

27:                                               ; preds = %20
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2252
  %29 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* %28, i64 4) #7, !dbg !2254
  %30 = icmp eq i32 %29, 0, !dbg !2255
  br i1 %30, label %35, label %31, !dbg !2256

31:                                               ; preds = %27
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2257
  %33 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* %32, i64 6) #7, !dbg !2258
  %34 = icmp eq i32 %33, 0, !dbg !2259
  br i1 %34, label %35, label %76, !dbg !2260

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2261
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !2263
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !2264
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !2265
  %40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* %37, i32* %9, i8* %38, i8* %39, i32* %10, double* %11, double* %12, double* %13) #8, !dbg !2266
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !2267
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %41) #7, !dbg !2269
  %43 = icmp ne i32 %42, 0, !dbg !2270
  br i1 %43, label %44, label %52, !dbg !2271

44:                                               ; preds = %35
  %45 = load i32, i32* @n_atoms, align 4, !dbg !2272
  %46 = icmp sgt i32 %45, 0, !dbg !2275
  br i1 %46, label %47, label %49, !dbg !2276

47:                                               ; preds = %44
  %48 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2277
  call void @addres2reslib(%struct.reslib_t* %48), !dbg !2279
  store i32 0, i32* @n_atoms, align 4, !dbg !2280
  br label %49, !dbg !2281

49:                                               ; preds = %47, %44
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !2282
  %51 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %50) #8, !dbg !2283
  br label %52, !dbg !2284

52:                                               ; preds = %49, %35
  %53 = load i32, i32* @n_atoms, align 4, !dbg !2285
  %54 = sext i32 %53 to i64, !dbg !2286
  %55 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %54, !dbg !2286
  store %struct.atom_t* %55, %struct.atom_t** %14, align 8, !dbg !2287
  %56 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2288
  call void @NAB_initatom(%struct.atom_t* %56, i32 0), !dbg !2289
  %57 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2290
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 0, !dbg !2291
  %59 = load i8*, i8** %58, align 8, !dbg !2291
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !2292
  %61 = call i8* @strcpy(i8* %59, i8* %60) #8, !dbg !2293
  %62 = load double, double* %11, align 8, !dbg !2294
  %63 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2295
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %63, i32 0, i32 17, !dbg !2296
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 0, !dbg !2295
  store double %62, double* %65, align 8, !dbg !2297
  %66 = load double, double* %12, align 8, !dbg !2298
  %67 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2299
  %68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 17, !dbg !2300
  %69 = getelementptr inbounds [3 x double], [3 x double]* %68, i64 0, i64 1, !dbg !2299
  store double %66, double* %69, align 8, !dbg !2301
  %70 = load double, double* %13, align 8, !dbg !2302
  %71 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2303
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %71, i32 0, i32 17, !dbg !2304
  %73 = getelementptr inbounds [3 x double], [3 x double]* %72, i64 0, i64 2, !dbg !2303
  store double %70, double* %73, align 8, !dbg !2305
  %74 = load i32, i32* @n_atoms, align 4, !dbg !2306
  %75 = add nsw i32 %74, 1, !dbg !2306
  store i32 %75, i32* @n_atoms, align 4, !dbg !2306
  br label %76, !dbg !2307

76:                                               ; preds = %52, %31
  br label %77

77:                                               ; preds = %76, %24
  br label %15, !dbg !2237, !llvm.loop !2308

78:                                               ; preds = %15
  %79 = load i32, i32* @n_atoms, align 4, !dbg !2310
  %80 = icmp sgt i32 %79, 0, !dbg !2312
  br i1 %80, label %81, label %83, !dbg !2313

81:                                               ; preds = %78
  %82 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2314
  call void @addres2reslib(%struct.reslib_t* %82), !dbg !2315
  br label %83, !dbg !2315

83:                                               ; preds = %81, %78
  ret void, !dbg !2316
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnd2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !2317 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.reslib_t*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2318, metadata !DIExpression()), !dbg !2319
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %4, metadata !2320, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !2322, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.declare(metadata [20 x i8]* %6, metadata !2324, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2326, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2328, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2330, metadata !DIExpression()), !dbg !2331
  store i32 0, i32* @n_bonds, align 4, !dbg !2332
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2333
  store i8 0, i8* %10, align 16, !dbg !2334
  br label %11, !dbg !2335

11:                                               ; preds = %90, %2
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2336
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2337
  %14 = call i8* @fgets(i8* %12, i32 256, %struct._IO_FILE* %13), !dbg !2338
  %15 = icmp ne i8* %14, null, !dbg !2335
  br i1 %15, label %16, label %91, !dbg !2335

16:                                               ; preds = %11
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2339
  %18 = load i8, i8* %17, align 16, !dbg !2339
  %19 = sext i8 %18 to i32, !dbg !2339
  %20 = icmp eq i32 %19, 35, !dbg !2342
  br i1 %20, label %21, label %55, !dbg !2343

21:                                               ; preds = %16
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2344
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2347
  %24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* %23) #8, !dbg !2348
  %25 = icmp ne i32 %24, 1, !dbg !2349
  br i1 %25, label %26, label %43, !dbg !2350

26:                                               ; preds = %21
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2351
  %28 = call i64 @strlen(i8* %27) #7, !dbg !2353
  %29 = sub i64 %28, 1, !dbg !2354
  %30 = trunc i64 %29 to i32, !dbg !2353
  store i32 %30, i32* %7, align 4, !dbg !2355
  %31 = load i32, i32* %7, align 4, !dbg !2356
  %32 = icmp sgt i32 %31, 20, !dbg !2357
  br i1 %32, label %33, label %34, !dbg !2356

33:                                               ; preds = %26
  br label %36, !dbg !2356

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4, !dbg !2358
  br label %36, !dbg !2356

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 20, %33 ], [ %35, %34 ], !dbg !2356
  store i32 %37, i32* %7, align 4, !dbg !2359
  %38 = load i32, i32* %7, align 4, !dbg !2360
  %39 = load i32, i32* %7, align 4, !dbg !2361
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2362
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %38, i32 %39, i8* %40) #8, !dbg !2363
  %42 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2364
  br label %96, !dbg !2365

43:                                               ; preds = %21
  %44 = load i32, i32* @n_bonds, align 4, !dbg !2366
  %45 = icmp sgt i32 %44, 0, !dbg !2368
  br i1 %45, label %46, label %50, !dbg !2369

46:                                               ; preds = %43
  %47 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2370
  call void @addbonds2reslib(%struct.reslib_t* %47), !dbg !2372
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2373
  %49 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %48) #8, !dbg !2374
  store i32 0, i32* @n_bonds, align 4, !dbg !2375
  br label %53, !dbg !2376

50:                                               ; preds = %43
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2377
  %52 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %51) #8, !dbg !2378
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53
  br label %90, !dbg !2379

55:                                               ; preds = %16
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2380
  %57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* %8, i32* %9) #8, !dbg !2383
  %58 = icmp ne i32 %57, 2, !dbg !2384
  br i1 %58, label %59, label %76, !dbg !2385

59:                                               ; preds = %55
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2386
  %61 = call i64 @strlen(i8* %60) #7, !dbg !2388
  %62 = sub i64 %61, 1, !dbg !2389
  %63 = trunc i64 %62 to i32, !dbg !2388
  store i32 %63, i32* %7, align 4, !dbg !2390
  %64 = load i32, i32* %7, align 4, !dbg !2391
  %65 = icmp sgt i32 %64, 20, !dbg !2392
  br i1 %65, label %66, label %67, !dbg !2391

66:                                               ; preds = %59
  br label %69, !dbg !2391

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4, !dbg !2393
  br label %69, !dbg !2391

69:                                               ; preds = %67, %66
  %70 = phi i32 [ 20, %66 ], [ %68, %67 ], !dbg !2391
  store i32 %70, i32* %7, align 4, !dbg !2394
  %71 = load i32, i32* %7, align 4, !dbg !2395
  %72 = load i32, i32* %7, align 4, !dbg !2396
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2397
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %71, i32 %72, i8* %73) #8, !dbg !2398
  %75 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2399
  br label %96, !dbg !2400

76:                                               ; preds = %55
  %77 = load i32, i32* %8, align 4, !dbg !2401
  %78 = load i32, i32* @n_bonds, align 4, !dbg !2403
  %79 = sext i32 %78 to i64, !dbg !2404
  %80 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %79, !dbg !2404
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i64 0, i64 0, !dbg !2404
  store i32 %77, i32* %81, align 8, !dbg !2405
  %82 = load i32, i32* %9, align 4, !dbg !2406
  %83 = load i32, i32* @n_bonds, align 4, !dbg !2407
  %84 = sext i32 %83 to i64, !dbg !2408
  %85 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %84, !dbg !2408
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 1, !dbg !2408
  store i32 %82, i32* %86, align 4, !dbg !2409
  %87 = load i32, i32* @n_bonds, align 4, !dbg !2410
  %88 = add nsw i32 %87, 1, !dbg !2410
  store i32 %88, i32* @n_bonds, align 4, !dbg !2410
  br label %89

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %54
  br label %11, !dbg !2335, !llvm.loop !2411

91:                                               ; preds = %11
  %92 = load i32, i32* @n_bonds, align 4, !dbg !2413
  %93 = icmp sgt i32 %92, 0, !dbg !2415
  br i1 %93, label %94, label %96, !dbg !2416

94:                                               ; preds = %91
  %95 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2417
  call void @addbonds2reslib(%struct.reslib_t* %95), !dbg !2418
  br label %96, !dbg !2418

96:                                               ; preds = %94, %91, %69, %36
  ret void, !dbg !2419
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qr2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !2420 {
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
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2421, metadata !DIExpression()), !dbg !2422
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %4, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !2425, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !2427, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.declare(metadata [10 x i8]* %7, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.declare(metadata [10 x i8]* %8, metadata !2431, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2433, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2435, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.declare(metadata double* %11, metadata !2437, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.declare(metadata double* %12, metadata !2439, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.declare(metadata %struct.atom_t** %13, metadata !2441, metadata !DIExpression()), !dbg !2442
  store i32 0, i32* @n_atoms, align 4, !dbg !2443
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !2444
  br label %14, !dbg !2445

14:                                               ; preds = %68, %23, %2
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2446
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2447
  %17 = call i8* @fgets(i8* %15, i32 256, %struct._IO_FILE* %16), !dbg !2448
  %18 = icmp ne i8* %17, null, !dbg !2445
  br i1 %18, label %19, label %69, !dbg !2445

19:                                               ; preds = %14
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2449
  %21 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* %20, i64 3) #7, !dbg !2452
  %22 = icmp eq i32 %21, 0, !dbg !2453
  br i1 %22, label %23, label %24, !dbg !2454

23:                                               ; preds = %19
  br label %14, !dbg !2455, !llvm.loop !2457

24:                                               ; preds = %19
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2459
  %26 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* %25, i64 4) #7, !dbg !2461
  %27 = icmp eq i32 %26, 0, !dbg !2462
  br i1 %27, label %32, label %28, !dbg !2463

28:                                               ; preds = %24
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2464
  %30 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* %29, i64 6) #7, !dbg !2465
  %31 = icmp eq i32 %30, 0, !dbg !2466
  br i1 %31, label %32, label %67, !dbg !2467

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2468
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !2470
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !2471
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !2472
  %37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* %34, i32* %9, i8* %35, i8* %36, i32* %10, double* %11, double* %12) #8, !dbg !2473
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !2474
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %38) #7, !dbg !2476
  %40 = icmp ne i32 %39, 0, !dbg !2477
  br i1 %40, label %41, label %49, !dbg !2478

41:                                               ; preds = %32
  %42 = load i32, i32* @n_atoms, align 4, !dbg !2479
  %43 = icmp sgt i32 %42, 0, !dbg !2482
  br i1 %43, label %44, label %46, !dbg !2483

44:                                               ; preds = %41
  %45 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2484
  call void @addqr2reslib(%struct.reslib_t* %45), !dbg !2486
  store i32 0, i32* @n_atoms, align 4, !dbg !2487
  br label %46, !dbg !2488

46:                                               ; preds = %44, %41
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !2489
  %48 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %47) #8, !dbg !2490
  br label %49, !dbg !2491

49:                                               ; preds = %46, %32
  %50 = load i32, i32* @n_atoms, align 4, !dbg !2492
  %51 = sext i32 %50 to i64, !dbg !2493
  %52 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %51, !dbg !2493
  store %struct.atom_t* %52, %struct.atom_t** %13, align 8, !dbg !2494
  %53 = load %struct.atom_t*, %struct.atom_t** %13, align 8, !dbg !2495
  call void @NAB_initatom(%struct.atom_t* %53, i32 0), !dbg !2496
  %54 = load %struct.atom_t*, %struct.atom_t** %13, align 8, !dbg !2497
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i32 0, i32 0, !dbg !2498
  %56 = load i8*, i8** %55, align 8, !dbg !2498
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !2499
  %58 = call i8* @strcpy(i8* %56, i8* %57) #8, !dbg !2500
  %59 = load double, double* %11, align 8, !dbg !2501
  %60 = load %struct.atom_t*, %struct.atom_t** %13, align 8, !dbg !2502
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i32 0, i32 6, !dbg !2503
  store double %59, double* %61, align 8, !dbg !2504
  %62 = load double, double* %12, align 8, !dbg !2505
  %63 = load %struct.atom_t*, %struct.atom_t** %13, align 8, !dbg !2506
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %63, i32 0, i32 7, !dbg !2507
  store double %62, double* %64, align 8, !dbg !2508
  %65 = load i32, i32* @n_atoms, align 4, !dbg !2509
  %66 = add nsw i32 %65, 1, !dbg !2509
  store i32 %66, i32* @n_atoms, align 4, !dbg !2509
  br label %67, !dbg !2510

67:                                               ; preds = %49, %28
  br label %68

68:                                               ; preds = %67
  br label %14, !dbg !2445, !llvm.loop !2457

69:                                               ; preds = %14
  %70 = load i32, i32* @n_atoms, align 4, !dbg !2511
  %71 = icmp sgt i32 %70, 0, !dbg !2513
  br i1 %71, label %72, label %74, !dbg !2514

72:                                               ; preds = %69
  %73 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2515
  call void @addqr2reslib(%struct.reslib_t* %73), !dbg !2516
  br label %74, !dbg !2516

74:                                               ; preds = %72, %69
  ret void, !dbg !2517
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chi2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !2518 {
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
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !2519, metadata !DIExpression()), !dbg !2520
  store %struct.reslib_t* %1, %struct.reslib_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %4, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.declare(metadata [20 x i8]* %6, metadata !2525, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.declare(metadata %struct.residue_t** %8, metadata !2529, metadata !DIExpression()), !dbg !2530
  store %struct.residue_t* null, %struct.residue_t** %8, align 8, !dbg !2530
  call void @llvm.dbg.declare(metadata %struct.residue_t** %9, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata [8 x i8]* %10, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.declare(metadata [8 x i8]* %11, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.declare(metadata [8 x i8]* %12, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.declare(metadata [8 x i8]* %13, metadata !2539, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2543, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2547, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.declare(metadata %struct.atom_t** %18, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata %struct.chiral_t** %19, metadata !2551, metadata !DIExpression()), !dbg !2552
  store i32 0, i32* @n_chi, align 4, !dbg !2553
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2554
  store i8 0, i8* %20, align 16, !dbg !2555
  br label %21, !dbg !2556

21:                                               ; preds = %212, %2
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2557
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !2558
  %24 = call i8* @fgets(i8* %22, i32 256, %struct._IO_FILE* %23), !dbg !2559
  %25 = icmp ne i8* %24, null, !dbg !2556
  br i1 %25, label %26, label %213, !dbg !2556

26:                                               ; preds = %21
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2560
  %28 = load i8, i8* %27, align 16, !dbg !2560
  %29 = sext i8 %28 to i32, !dbg !2560
  %30 = icmp eq i32 %29, 35, !dbg !2563
  br i1 %30, label %31, label %94, !dbg !2564

31:                                               ; preds = %26
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2565
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2568
  %34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* %33) #8, !dbg !2569
  %35 = icmp ne i32 %34, 1, !dbg !2570
  br i1 %35, label %36, label %54, !dbg !2571

36:                                               ; preds = %31
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2572
  %38 = call i64 @strlen(i8* %37) #7, !dbg !2574
  %39 = sub i64 %38, 1, !dbg !2575
  %40 = trunc i64 %39 to i32, !dbg !2574
  store i32 %40, i32* %7, align 4, !dbg !2576
  %41 = load i32, i32* %7, align 4, !dbg !2577
  %42 = icmp sgt i32 %41, 20, !dbg !2578
  br i1 %42, label %43, label %44, !dbg !2577

43:                                               ; preds = %36
  br label %46, !dbg !2577

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4, !dbg !2579
  br label %46, !dbg !2577

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 20, %43 ], [ %45, %44 ], !dbg !2577
  store i32 %47, i32* %7, align 4, !dbg !2580
  %48 = load i32, i32* %7, align 4, !dbg !2581
  %49 = load i32, i32* %7, align 4, !dbg !2582
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2583
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %48, i32 %49, i8* %50) #8, !dbg !2584
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2585
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2586
  br label %218, !dbg !2587

54:                                               ; preds = %31
  %55 = load i32, i32* @n_chi, align 4, !dbg !2588
  %56 = icmp sgt i32 %55, 0, !dbg !2591
  br i1 %56, label %57, label %59, !dbg !2592

57:                                               ; preds = %54
  %58 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2593
  call void @addchi2reslib(%struct.reslib_t* %58), !dbg !2595
  store i32 0, i32* @n_chi, align 4, !dbg !2596
  br label %59, !dbg !2597

59:                                               ; preds = %57, %54
  store %struct.residue_t* null, %struct.residue_t** %9, align 8, !dbg !2598
  %60 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2599
  %61 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %60, i32 0, i32 4, !dbg !2601
  %62 = load %struct.residue_t*, %struct.residue_t** %61, align 8, !dbg !2601
  store %struct.residue_t* %62, %struct.residue_t** %8, align 8, !dbg !2602
  br label %63, !dbg !2603

63:                                               ; preds = %76, %59
  %64 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2604
  %65 = icmp ne %struct.residue_t* %64, null, !dbg !2606
  br i1 %65, label %66, label %80, !dbg !2606

66:                                               ; preds = %63
  %67 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2607
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %67, i32 0, i32 4, !dbg !2610
  %69 = load i8*, i8** %68, align 8, !dbg !2610
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2611
  %71 = call i32 @strcmp(i8* %69, i8* %70) #7, !dbg !2612
  %72 = icmp ne i32 %71, 0, !dbg !2612
  br i1 %72, label %75, label %73, !dbg !2613

73:                                               ; preds = %66
  %74 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2614
  store %struct.residue_t* %74, %struct.residue_t** %9, align 8, !dbg !2616
  br label %80, !dbg !2617

75:                                               ; preds = %66
  br label %76, !dbg !2618

76:                                               ; preds = %75
  %77 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2619
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %77, i32 0, i32 0, !dbg !2620
  %79 = load %struct.residue_t*, %struct.residue_t** %78, align 8, !dbg !2620
  store %struct.residue_t* %79, %struct.residue_t** %8, align 8, !dbg !2621
  br label %63, !dbg !2622, !llvm.loop !2623

80:                                               ; preds = %73, %63
  %81 = load %struct.residue_t*, %struct.residue_t** %9, align 8, !dbg !2625
  %82 = icmp ne %struct.residue_t* %81, null, !dbg !2625
  br i1 %82, label %90, label %83, !dbg !2627

83:                                               ; preds = %80
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2628
  %85 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2630
  %86 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2631
  %87 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %86, i32 0, i32 1, !dbg !2632
  %88 = load i8*, i8** %87, align 8, !dbg !2632
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* %85, i8* %88), !dbg !2633
  br label %218, !dbg !2634

90:                                               ; preds = %80
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0, !dbg !2635
  %92 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %91) #8, !dbg !2636
  br label %93

93:                                               ; preds = %90
  br label %212, !dbg !2637

94:                                               ; preds = %26
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !2638
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0, !dbg !2640
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0, !dbg !2641
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !2642
  %99 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0, !dbg !2643
  %100 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* %96, i8* %97, i8* %98, i8* %99) #8, !dbg !2644
  %101 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2645
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0, !dbg !2647
  %103 = call %struct.atom_t* @findatom(%struct.residue_t* %101, i8* %102), !dbg !2648
  store %struct.atom_t* %103, %struct.atom_t** %18, align 8, !dbg !2649
  %104 = icmp ne %struct.atom_t* %103, null, !dbg !2649
  br i1 %104, label %112, label %105, !dbg !2650

105:                                              ; preds = %94
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2651
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0, !dbg !2653
  %108 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2654
  %109 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %108, i32 0, i32 4, !dbg !2655
  %110 = load i8*, i8** %109, align 8, !dbg !2655
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %107, i8* %110), !dbg !2656
  call void @exit(i32 1) #6, !dbg !2657
  unreachable, !dbg !2657

112:                                              ; preds = %94
  %113 = load %struct.atom_t*, %struct.atom_t** %18, align 8, !dbg !2658
  %114 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2659
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %114, i32 0, i32 17, !dbg !2660
  %116 = load %struct.atom_t*, %struct.atom_t** %115, align 8, !dbg !2660
  %117 = ptrtoint %struct.atom_t* %113 to i64, !dbg !2661
  %118 = ptrtoint %struct.atom_t* %116 to i64, !dbg !2661
  %119 = sub i64 %117, %118, !dbg !2661
  %120 = sdiv exact i64 %119, 176, !dbg !2661
  %121 = trunc i64 %120 to i32, !dbg !2658
  store i32 %121, i32* %14, align 4, !dbg !2662
  br label %122

122:                                              ; preds = %112
  %123 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2663
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0, !dbg !2665
  %125 = call %struct.atom_t* @findatom(%struct.residue_t* %123, i8* %124), !dbg !2666
  store %struct.atom_t* %125, %struct.atom_t** %18, align 8, !dbg !2667
  %126 = icmp ne %struct.atom_t* %125, null, !dbg !2667
  br i1 %126, label %134, label %127, !dbg !2668

127:                                              ; preds = %122
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2669
  %129 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0, !dbg !2671
  %130 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2672
  %131 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %130, i32 0, i32 4, !dbg !2673
  %132 = load i8*, i8** %131, align 8, !dbg !2673
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %129, i8* %132), !dbg !2674
  call void @exit(i32 1) #6, !dbg !2675
  unreachable, !dbg !2675

134:                                              ; preds = %122
  %135 = load %struct.atom_t*, %struct.atom_t** %18, align 8, !dbg !2676
  %136 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2677
  %137 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %136, i32 0, i32 17, !dbg !2678
  %138 = load %struct.atom_t*, %struct.atom_t** %137, align 8, !dbg !2678
  %139 = ptrtoint %struct.atom_t* %135 to i64, !dbg !2679
  %140 = ptrtoint %struct.atom_t* %138 to i64, !dbg !2679
  %141 = sub i64 %139, %140, !dbg !2679
  %142 = sdiv exact i64 %141, 176, !dbg !2679
  %143 = trunc i64 %142 to i32, !dbg !2676
  store i32 %143, i32* %15, align 4, !dbg !2680
  br label %144

144:                                              ; preds = %134
  %145 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2681
  %146 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !2683
  %147 = call %struct.atom_t* @findatom(%struct.residue_t* %145, i8* %146), !dbg !2684
  store %struct.atom_t* %147, %struct.atom_t** %18, align 8, !dbg !2685
  %148 = icmp ne %struct.atom_t* %147, null, !dbg !2685
  br i1 %148, label %156, label %149, !dbg !2686

149:                                              ; preds = %144
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2687
  %151 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0, !dbg !2689
  %152 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2690
  %153 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %152, i32 0, i32 4, !dbg !2691
  %154 = load i8*, i8** %153, align 8, !dbg !2691
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %151, i8* %154), !dbg !2692
  call void @exit(i32 1) #6, !dbg !2693
  unreachable, !dbg !2693

156:                                              ; preds = %144
  %157 = load %struct.atom_t*, %struct.atom_t** %18, align 8, !dbg !2694
  %158 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2695
  %159 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %158, i32 0, i32 17, !dbg !2696
  %160 = load %struct.atom_t*, %struct.atom_t** %159, align 8, !dbg !2696
  %161 = ptrtoint %struct.atom_t* %157 to i64, !dbg !2697
  %162 = ptrtoint %struct.atom_t* %160 to i64, !dbg !2697
  %163 = sub i64 %161, %162, !dbg !2697
  %164 = sdiv exact i64 %163, 176, !dbg !2697
  %165 = trunc i64 %164 to i32, !dbg !2694
  store i32 %165, i32* %16, align 4, !dbg !2698
  br label %166

166:                                              ; preds = %156
  %167 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2699
  %168 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0, !dbg !2701
  %169 = call %struct.atom_t* @findatom(%struct.residue_t* %167, i8* %168), !dbg !2702
  store %struct.atom_t* %169, %struct.atom_t** %18, align 8, !dbg !2703
  %170 = icmp ne %struct.atom_t* %169, null, !dbg !2703
  br i1 %170, label %178, label %171, !dbg !2704

171:                                              ; preds = %166
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2705
  %173 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0, !dbg !2707
  %174 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2708
  %175 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %174, i32 0, i32 4, !dbg !2709
  %176 = load i8*, i8** %175, align 8, !dbg !2709
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %172, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %173, i8* %176), !dbg !2710
  call void @exit(i32 1) #6, !dbg !2711
  unreachable, !dbg !2711

178:                                              ; preds = %166
  %179 = load %struct.atom_t*, %struct.atom_t** %18, align 8, !dbg !2712
  %180 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2713
  %181 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %180, i32 0, i32 17, !dbg !2714
  %182 = load %struct.atom_t*, %struct.atom_t** %181, align 8, !dbg !2714
  %183 = ptrtoint %struct.atom_t* %179 to i64, !dbg !2715
  %184 = ptrtoint %struct.atom_t* %182 to i64, !dbg !2715
  %185 = sub i64 %183, %184, !dbg !2715
  %186 = sdiv exact i64 %185, 176, !dbg !2715
  %187 = trunc i64 %186 to i32, !dbg !2712
  store i32 %187, i32* %17, align 4, !dbg !2716
  br label %188

188:                                              ; preds = %178
  %189 = load i32, i32* @n_chi, align 4, !dbg !2717
  %190 = sext i32 %189 to i64, !dbg !2718
  %191 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %190, !dbg !2718
  store %struct.chiral_t* %191, %struct.chiral_t** %19, align 8, !dbg !2719
  %192 = load i32, i32* @n_chi, align 4, !dbg !2720
  %193 = add nsw i32 %192, 1, !dbg !2720
  store i32 %193, i32* @n_chi, align 4, !dbg !2720
  %194 = load i32, i32* %14, align 4, !dbg !2721
  %195 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8, !dbg !2722
  %196 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %195, i32 0, i32 0, !dbg !2723
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %196, i64 0, i64 0, !dbg !2722
  store i32 %194, i32* %197, align 8, !dbg !2724
  %198 = load i32, i32* %15, align 4, !dbg !2725
  %199 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8, !dbg !2726
  %200 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %199, i32 0, i32 0, !dbg !2727
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %200, i64 0, i64 1, !dbg !2726
  store i32 %198, i32* %201, align 4, !dbg !2728
  %202 = load i32, i32* %16, align 4, !dbg !2729
  %203 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8, !dbg !2730
  %204 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %203, i32 0, i32 0, !dbg !2731
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %204, i64 0, i64 2, !dbg !2730
  store i32 %202, i32* %205, align 8, !dbg !2732
  %206 = load i32, i32* %17, align 4, !dbg !2733
  %207 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8, !dbg !2734
  %208 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %207, i32 0, i32 0, !dbg !2735
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %208, i64 0, i64 3, !dbg !2734
  store i32 %206, i32* %209, align 4, !dbg !2736
  %210 = load %struct.chiral_t*, %struct.chiral_t** %19, align 8, !dbg !2737
  %211 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %210, i32 0, i32 1, !dbg !2738
  store double 0.000000e+00, double* %211, align 8, !dbg !2739
  br label %212

212:                                              ; preds = %188, %93
  br label %21, !dbg !2556, !llvm.loop !2740

213:                                              ; preds = %21
  %214 = load i32, i32* @n_chi, align 4, !dbg !2742
  %215 = icmp sgt i32 %214, 0, !dbg !2744
  br i1 %215, label %216, label %218, !dbg !2745

216:                                              ; preds = %213
  %217 = load %struct.reslib_t*, %struct.reslib_t** %4, align 8, !dbg !2746
  call void @addchi2reslib(%struct.reslib_t* %217), !dbg !2748
  store i32 0, i32* @n_chi, align 4, !dbg !2749
  br label %218, !dbg !2750

218:                                              ; preds = %216, %213, %83, %46
  ret void, !dbg !2751
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_fname(i8* %0, i8* %1) #0 !dbg !2752 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2755, metadata !DIExpression()), !dbg !2756
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2757, metadata !DIExpression()), !dbg !2758
  %5 = load i8*, i8** %3, align 8, !dbg !2759
  %6 = load i8, i8* %5, align 1, !dbg !2761
  %7 = sext i8 %6 to i32, !dbg !2761
  %8 = icmp eq i32 %7, 47, !dbg !2762
  br i1 %8, label %13, label %9, !dbg !2763

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8, !dbg !2764
  %11 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %10, i64 2) #7, !dbg !2765
  %12 = icmp ne i32 %11, 0, !dbg !2765
  br i1 %12, label %17, label %13, !dbg !2766

13:                                               ; preds = %9, %2
  %14 = load i8*, i8** %4, align 8, !dbg !2767
  %15 = load i8*, i8** %3, align 8, !dbg !2768
  %16 = call i8* @strcpy(i8* %14, i8* %15) #8, !dbg !2769
  br label %21, !dbg !2769

17:                                               ; preds = %9
  %18 = load i8*, i8** %4, align 8, !dbg !2770
  %19 = load i8*, i8** %3, align 8, !dbg !2771
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* %19) #8, !dbg !2772
  br label %21

21:                                               ; preds = %17, %13
  ret void, !dbg !2773
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @NAB_initatom(%struct.atom_t*, i32) #2

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) #2

declare dso_local signext i8 @bDBGetValue(...) #2

declare dso_local void @DBZeroPrefix(...) #2

declare dso_local void @DBPushPrefix(...) #2

declare dso_local signext i8 @bDBGetTable(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addres2reslib(%struct.reslib_t* %0) #0 !dbg !2774 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca %struct.atom_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.reslib_t* %0, %struct.reslib_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %2, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.declare(metadata %struct.residue_t** %3, metadata !2779, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.declare(metadata %struct.atom_t** %4, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2783, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2787, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2789, metadata !DIExpression()), !dbg !2790
  %9 = call noalias i8* @malloc(i64 128) #8, !dbg !2791
  %10 = bitcast i8* %9 to %struct.residue_t*, !dbg !2793
  store %struct.residue_t* %10, %struct.residue_t** %3, align 8, !dbg !2794
  %11 = icmp eq %struct.residue_t* %10, null, !dbg !2795
  br i1 %11, label %12, label %18, !dbg !2796

12:                                               ; preds = %1
  %13 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !2797
  %14 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %13, i32 0, i32 1, !dbg !2799
  %15 = load i8*, i8** %14, align 8, !dbg !2799
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %15) #8, !dbg !2800
  %17 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2801
  br label %317, !dbg !2802

18:                                               ; preds = %1
  %19 = load i32, i32* @n_atoms, align 4, !dbg !2803
  %20 = sext i32 %19 to i64, !dbg !2803
  %21 = mul i64 %20, 176, !dbg !2805
  %22 = call noalias i8* @malloc(i64 %21) #8, !dbg !2806
  %23 = bitcast i8* %22 to %struct.atom_t*, !dbg !2807
  store %struct.atom_t* %23, %struct.atom_t** %4, align 8, !dbg !2808
  %24 = icmp eq %struct.atom_t* %23, null, !dbg !2809
  br i1 %24, label %25, label %31, !dbg !2810

25:                                               ; preds = %18
  %26 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !2811
  %27 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %26, i32 0, i32 1, !dbg !2813
  %28 = load i8*, i8** %27, align 8, !dbg !2813
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %28) #8, !dbg !2814
  %30 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2815
  br label %317, !dbg !2816

31:                                               ; preds = %18
  %32 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !2817
  %33 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %32, i32 0, i32 4, !dbg !2818
  %34 = load %struct.residue_t*, %struct.residue_t** %33, align 8, !dbg !2818
  %35 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2819
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %35, i32 0, i32 0, !dbg !2820
  store %struct.residue_t* %34, %struct.residue_t** %36, align 8, !dbg !2821
  %37 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2822
  %38 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !2823
  %39 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %38, i32 0, i32 4, !dbg !2824
  store %struct.residue_t* %37, %struct.residue_t** %39, align 8, !dbg !2825
  %40 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7, !dbg !2826
  %41 = add i64 %40, 1, !dbg !2827
  %42 = call noalias i8* @malloc(i64 %41) #8, !dbg !2828
  store i8* %42, i8** %6, align 8, !dbg !2829
  %43 = load i8*, i8** %6, align 8, !dbg !2830
  %44 = icmp eq i8* %43, null, !dbg !2832
  br i1 %44, label %45, label %48, !dbg !2833

45:                                               ; preds = %31
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2834
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0)), !dbg !2836
  call void @exit(i32 1) #6, !dbg !2837
  unreachable, !dbg !2837

48:                                               ; preds = %31
  %49 = load i8*, i8** %6, align 8, !dbg !2838
  %50 = call i8* @strcpy(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #8, !dbg !2839
  %51 = load i8*, i8** %6, align 8, !dbg !2840
  %52 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2841
  %53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %52, i32 0, i32 4, !dbg !2842
  store i8* %51, i8** %53, align 8, !dbg !2843
  %54 = call noalias i8* @malloc(i64 1) #8, !dbg !2844
  store i8* %54, i8** %6, align 8, !dbg !2845
  %55 = load i8*, i8** %6, align 8, !dbg !2846
  %56 = icmp eq i8* %55, null, !dbg !2848
  br i1 %56, label %57, label %60, !dbg !2849

57:                                               ; preds = %48
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2850
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0)), !dbg !2852
  call void @exit(i32 1) #6, !dbg !2853
  unreachable, !dbg !2853

60:                                               ; preds = %48
  %61 = load i8*, i8** %6, align 8, !dbg !2854
  %62 = call i8* @strcpy(i8* %61, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.75, i64 0, i64 0)) #8, !dbg !2855
  %63 = load i8*, i8** %6, align 8, !dbg !2856
  %64 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2857
  %65 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %64, i32 0, i32 5, !dbg !2858
  store i8* %63, i8** %65, align 8, !dbg !2859
  %66 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2860
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %66, i32 0, i32 1, !dbg !2861
  store i32 0, i32* %67, align 8, !dbg !2862
  %68 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2863
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %68, i32 0, i32 2, !dbg !2864
  store i32 0, i32* %69, align 4, !dbg !2865
  %70 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2866
  %71 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %70, i32 0, i32 3, !dbg !2867
  store i32 0, i32* %71, align 8, !dbg !2868
  %72 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2869
  %73 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i32 0, i32 6, !dbg !2870
  store i32 0, i32* %73, align 8, !dbg !2871
  %74 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !2872
  %75 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %74, i32 0, i32 2, !dbg !2873
  %76 = load i32, i32* %75, align 8, !dbg !2873
  %77 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2874
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %77, i32 0, i32 7, !dbg !2875
  store i32 %76, i32* %78, align 4, !dbg !2876
  %79 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !2877
  %80 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %79, i32 0, i32 3, !dbg !2878
  %81 = load i32, i32* %80, align 4, !dbg !2878
  %82 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2879
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %82, i32 0, i32 8, !dbg !2880
  store i32 %81, i32* %83, align 8, !dbg !2881
  %84 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2882
  %85 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %84, i32 0, i32 9, !dbg !2883
  store %struct.strand_t* null, %struct.strand_t** %85, align 8, !dbg !2884
  %86 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2885
  %87 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %86, i32 0, i32 10, !dbg !2886
  store %struct.extbond_t* null, %struct.extbond_t** %87, align 8, !dbg !2887
  %88 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2888
  %89 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %88, i32 0, i32 11, !dbg !2889
  store i32 0, i32* %89, align 8, !dbg !2890
  %90 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2891
  %91 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %90, i32 0, i32 12, !dbg !2892
  store [2 x i32]* null, [2 x i32]** %91, align 8, !dbg !2893
  %92 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2894
  %93 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %92, i32 0, i32 13, !dbg !2895
  store i32 0, i32* %93, align 8, !dbg !2896
  %94 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2897
  %95 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %94, i32 0, i32 14, !dbg !2898
  store %struct.chiral_t* null, %struct.chiral_t** %95, align 8, !dbg !2899
  %96 = load i32, i32* @n_atoms, align 4, !dbg !2900
  %97 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2901
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i32 0, i32 15, !dbg !2902
  store i32 %96, i32* %98, align 8, !dbg !2903
  %99 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2904
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %99, i32 0, i32 16, !dbg !2905
  store i32* null, i32** %100, align 8, !dbg !2906
  %101 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !2907
  %102 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2908
  %103 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %102, i32 0, i32 17, !dbg !2909
  store %struct.atom_t* %101, %struct.atom_t** %103, align 8, !dbg !2910
  store i32 0, i32* %7, align 4, !dbg !2911
  br label %104, !dbg !2913

104:                                              ; preds = %314, %60
  %105 = load i32, i32* %7, align 4, !dbg !2914
  %106 = load i32, i32* @n_atoms, align 4, !dbg !2916
  %107 = icmp slt i32 %105, %106, !dbg !2917
  br i1 %107, label %108, label %317, !dbg !2918

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4, !dbg !2919
  %110 = sext i32 %109 to i64, !dbg !2921
  %111 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %110, !dbg !2921
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %111, i32 0, i32 0, !dbg !2922
  %113 = load i8*, i8** %112, align 16, !dbg !2922
  %114 = call i64 @strlen(i8* %113) #7, !dbg !2923
  %115 = add i64 %114, 1, !dbg !2924
  %116 = call noalias i8* @malloc(i64 %115) #8, !dbg !2925
  store i8* %116, i8** %5, align 8, !dbg !2926
  %117 = load i8*, i8** %5, align 8, !dbg !2927
  %118 = icmp eq i8* %117, null, !dbg !2929
  br i1 %118, label %119, label %122, !dbg !2930

119:                                              ; preds = %108
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2931
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0)), !dbg !2933
  call void @exit(i32 1) #6, !dbg !2934
  unreachable, !dbg !2934

122:                                              ; preds = %108
  %123 = load i8*, i8** %5, align 8, !dbg !2935
  %124 = load i32, i32* %7, align 4, !dbg !2936
  %125 = sext i32 %124 to i64, !dbg !2937
  %126 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %125, !dbg !2937
  %127 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i32 0, i32 0, !dbg !2938
  %128 = load i8*, i8** %127, align 16, !dbg !2938
  %129 = call i8* @strcpy(i8* %123, i8* %128) #8, !dbg !2939
  %130 = load i8*, i8** %5, align 8, !dbg !2940
  %131 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2941
  %132 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %131, i32 0, i32 17, !dbg !2942
  %133 = load %struct.atom_t*, %struct.atom_t** %132, align 8, !dbg !2942
  %134 = load i32, i32* %7, align 4, !dbg !2943
  %135 = sext i32 %134 to i64, !dbg !2941
  %136 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %133, i64 %135, !dbg !2941
  %137 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %136, i32 0, i32 0, !dbg !2944
  store i8* %130, i8** %137, align 8, !dbg !2945
  %138 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2946
  %139 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %138, i32 0, i32 17, !dbg !2947
  %140 = load %struct.atom_t*, %struct.atom_t** %139, align 8, !dbg !2947
  %141 = load i32, i32* %7, align 4, !dbg !2948
  %142 = sext i32 %141 to i64, !dbg !2946
  %143 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %140, i64 %142, !dbg !2946
  %144 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %143, i32 0, i32 2, !dbg !2949
  store i32 0, i32* %144, align 8, !dbg !2950
  %145 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2951
  %146 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %145, i32 0, i32 17, !dbg !2952
  %147 = load %struct.atom_t*, %struct.atom_t** %146, align 8, !dbg !2952
  %148 = load i32, i32* %7, align 4, !dbg !2953
  %149 = sext i32 %148 to i64, !dbg !2951
  %150 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %147, i64 %149, !dbg !2951
  %151 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %150, i32 0, i32 3, !dbg !2954
  store i32 0, i32* %151, align 4, !dbg !2955
  store i32 0, i32* %8, align 4, !dbg !2956
  br label %152, !dbg !2958

152:                                              ; preds = %166, %122
  %153 = load i32, i32* %8, align 4, !dbg !2959
  %154 = icmp slt i32 %153, 8, !dbg !2961
  br i1 %154, label %155, label %169, !dbg !2962

155:                                              ; preds = %152
  %156 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2963
  %157 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %156, i32 0, i32 17, !dbg !2964
  %158 = load %struct.atom_t*, %struct.atom_t** %157, align 8, !dbg !2964
  %159 = load i32, i32* %7, align 4, !dbg !2965
  %160 = sext i32 %159 to i64, !dbg !2963
  %161 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %158, i64 %160, !dbg !2963
  %162 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %161, i32 0, i32 4, !dbg !2966
  %163 = load i32, i32* %8, align 4, !dbg !2967
  %164 = sext i32 %163 to i64, !dbg !2963
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %162, i64 0, i64 %164, !dbg !2963
  store i32 -1, i32* %165, align 4, !dbg !2968
  br label %166, !dbg !2963

166:                                              ; preds = %155
  %167 = load i32, i32* %8, align 4, !dbg !2969
  %168 = add nsw i32 %167, 1, !dbg !2969
  store i32 %168, i32* %8, align 4, !dbg !2969
  br label %152, !dbg !2970, !llvm.loop !2971

169:                                              ; preds = %152
  %170 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2973
  %171 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2974
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %171, i32 0, i32 17, !dbg !2975
  %173 = load %struct.atom_t*, %struct.atom_t** %172, align 8, !dbg !2975
  %174 = load i32, i32* %7, align 4, !dbg !2976
  %175 = sext i32 %174 to i64, !dbg !2974
  %176 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %173, i64 %175, !dbg !2974
  %177 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %176, i32 0, i32 5, !dbg !2977
  store %struct.residue_t* %170, %struct.residue_t** %177, align 8, !dbg !2978
  %178 = load i32, i32* %7, align 4, !dbg !2979
  %179 = sext i32 %178 to i64, !dbg !2980
  %180 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %179, !dbg !2980
  %181 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %180, i32 0, i32 6, !dbg !2981
  %182 = load double, double* %181, align 16, !dbg !2981
  %183 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2982
  %184 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %183, i32 0, i32 17, !dbg !2983
  %185 = load %struct.atom_t*, %struct.atom_t** %184, align 8, !dbg !2983
  %186 = load i32, i32* %7, align 4, !dbg !2984
  %187 = sext i32 %186 to i64, !dbg !2982
  %188 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %185, i64 %187, !dbg !2982
  %189 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %188, i32 0, i32 6, !dbg !2985
  store double %182, double* %189, align 8, !dbg !2986
  %190 = load i32, i32* %7, align 4, !dbg !2987
  %191 = sext i32 %190 to i64, !dbg !2988
  %192 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %191, !dbg !2988
  %193 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %192, i32 0, i32 7, !dbg !2989
  %194 = load double, double* %193, align 8, !dbg !2989
  %195 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2990
  %196 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %195, i32 0, i32 17, !dbg !2991
  %197 = load %struct.atom_t*, %struct.atom_t** %196, align 8, !dbg !2991
  %198 = load i32, i32* %7, align 4, !dbg !2992
  %199 = sext i32 %198 to i64, !dbg !2990
  %200 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %197, i64 %199, !dbg !2990
  %201 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %200, i32 0, i32 7, !dbg !2993
  store double %194, double* %201, align 8, !dbg !2994
  %202 = load i32, i32* %7, align 4, !dbg !2995
  %203 = sext i32 %202 to i64, !dbg !2996
  %204 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %203, !dbg !2996
  %205 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %204, i32 0, i32 8, !dbg !2997
  %206 = load double, double* %205, align 16, !dbg !2997
  %207 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !2998
  %208 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %207, i32 0, i32 17, !dbg !2999
  %209 = load %struct.atom_t*, %struct.atom_t** %208, align 8, !dbg !2999
  %210 = load i32, i32* %7, align 4, !dbg !3000
  %211 = sext i32 %210 to i64, !dbg !2998
  %212 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %209, i64 %211, !dbg !2998
  %213 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %212, i32 0, i32 8, !dbg !3001
  store double %206, double* %213, align 8, !dbg !3002
  %214 = load i32, i32* %7, align 4, !dbg !3003
  %215 = sext i32 %214 to i64, !dbg !3004
  %216 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %215, !dbg !3004
  %217 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %216, i32 0, i32 9, !dbg !3005
  %218 = load double, double* %217, align 8, !dbg !3005
  %219 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3006
  %220 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %219, i32 0, i32 17, !dbg !3007
  %221 = load %struct.atom_t*, %struct.atom_t** %220, align 8, !dbg !3007
  %222 = load i32, i32* %7, align 4, !dbg !3008
  %223 = sext i32 %222 to i64, !dbg !3006
  %224 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %221, i64 %223, !dbg !3006
  %225 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i32 0, i32 9, !dbg !3009
  store double %218, double* %225, align 8, !dbg !3010
  %226 = load i32, i32* %7, align 4, !dbg !3011
  %227 = sext i32 %226 to i64, !dbg !3012
  %228 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %227, !dbg !3012
  %229 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %228, i32 0, i32 11, !dbg !3013
  %230 = load i32, i32* %229, align 8, !dbg !3013
  %231 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3014
  %232 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %231, i32 0, i32 17, !dbg !3015
  %233 = load %struct.atom_t*, %struct.atom_t** %232, align 8, !dbg !3015
  %234 = load i32, i32* %7, align 4, !dbg !3016
  %235 = sext i32 %234 to i64, !dbg !3014
  %236 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %233, i64 %235, !dbg !3014
  %237 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %236, i32 0, i32 11, !dbg !3017
  store i32 %230, i32* %237, align 8, !dbg !3018
  %238 = load i32, i32* %7, align 4, !dbg !3019
  %239 = sext i32 %238 to i64, !dbg !3020
  %240 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %239, !dbg !3020
  %241 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %240, i32 0, i32 12, !dbg !3021
  %242 = load double, double* %241, align 16, !dbg !3021
  %243 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3022
  %244 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %243, i32 0, i32 17, !dbg !3023
  %245 = load %struct.atom_t*, %struct.atom_t** %244, align 8, !dbg !3023
  %246 = load i32, i32* %7, align 4, !dbg !3024
  %247 = sext i32 %246 to i64, !dbg !3022
  %248 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %245, i64 %247, !dbg !3022
  %249 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %248, i32 0, i32 12, !dbg !3025
  store double %242, double* %249, align 8, !dbg !3026
  %250 = load i32, i32* %7, align 4, !dbg !3027
  %251 = sext i32 %250 to i64, !dbg !3028
  %252 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %251, !dbg !3028
  %253 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %252, i32 0, i32 13, !dbg !3029
  %254 = load double, double* %253, align 8, !dbg !3029
  %255 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3030
  %256 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %255, i32 0, i32 17, !dbg !3031
  %257 = load %struct.atom_t*, %struct.atom_t** %256, align 8, !dbg !3031
  %258 = load i32, i32* %7, align 4, !dbg !3032
  %259 = sext i32 %258 to i64, !dbg !3030
  %260 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %257, i64 %259, !dbg !3030
  %261 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %260, i32 0, i32 13, !dbg !3033
  store double %254, double* %261, align 8, !dbg !3034
  %262 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3035
  %263 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %262, i32 0, i32 17, !dbg !3036
  %264 = load %struct.atom_t*, %struct.atom_t** %263, align 8, !dbg !3036
  %265 = load i32, i32* %7, align 4, !dbg !3037
  %266 = sext i32 %265 to i64, !dbg !3035
  %267 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %264, i64 %266, !dbg !3035
  %268 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %267, i32 0, i32 15, !dbg !3038
  store i32 0, i32* %268, align 4, !dbg !3039
  %269 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3040
  %270 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %269, i32 0, i32 17, !dbg !3041
  %271 = load %struct.atom_t*, %struct.atom_t** %270, align 8, !dbg !3041
  %272 = load i32, i32* %7, align 4, !dbg !3042
  %273 = sext i32 %272 to i64, !dbg !3040
  %274 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %271, i64 %273, !dbg !3040
  %275 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %274, i32 0, i32 16, !dbg !3043
  store i8* null, i8** %275, align 8, !dbg !3044
  store i32 0, i32* %8, align 4, !dbg !3045
  br label %276, !dbg !3047

276:                                              ; preds = %298, %169
  %277 = load i32, i32* %8, align 4, !dbg !3048
  %278 = icmp slt i32 %277, 3, !dbg !3050
  br i1 %278, label %279, label %301, !dbg !3051

279:                                              ; preds = %276
  %280 = load i32, i32* %7, align 4, !dbg !3052
  %281 = sext i32 %280 to i64, !dbg !3053
  %282 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %281, !dbg !3053
  %283 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %282, i32 0, i32 17, !dbg !3054
  %284 = load i32, i32* %8, align 4, !dbg !3055
  %285 = sext i32 %284 to i64, !dbg !3053
  %286 = getelementptr inbounds [3 x double], [3 x double]* %283, i64 0, i64 %285, !dbg !3053
  %287 = load double, double* %286, align 8, !dbg !3053
  %288 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3056
  %289 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %288, i32 0, i32 17, !dbg !3057
  %290 = load %struct.atom_t*, %struct.atom_t** %289, align 8, !dbg !3057
  %291 = load i32, i32* %7, align 4, !dbg !3058
  %292 = sext i32 %291 to i64, !dbg !3056
  %293 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %290, i64 %292, !dbg !3056
  %294 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %293, i32 0, i32 17, !dbg !3059
  %295 = load i32, i32* %8, align 4, !dbg !3060
  %296 = sext i32 %295 to i64, !dbg !3056
  %297 = getelementptr inbounds [3 x double], [3 x double]* %294, i64 0, i64 %296, !dbg !3056
  store double %287, double* %297, align 8, !dbg !3061
  br label %298, !dbg !3056

298:                                              ; preds = %279
  %299 = load i32, i32* %8, align 4, !dbg !3062
  %300 = add nsw i32 %299, 1, !dbg !3062
  store i32 %300, i32* %8, align 4, !dbg !3062
  br label %276, !dbg !3063, !llvm.loop !3064

301:                                              ; preds = %276
  %302 = load i32, i32* %7, align 4, !dbg !3066
  %303 = sext i32 %302 to i64, !dbg !3067
  %304 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %303, !dbg !3067
  %305 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %304, i32 0, i32 18, !dbg !3068
  %306 = load double, double* %305, align 8, !dbg !3068
  %307 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3069
  %308 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %307, i32 0, i32 17, !dbg !3070
  %309 = load %struct.atom_t*, %struct.atom_t** %308, align 8, !dbg !3070
  %310 = load i32, i32* %7, align 4, !dbg !3071
  %311 = sext i32 %310 to i64, !dbg !3069
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %309, i64 %311, !dbg !3069
  %313 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %312, i32 0, i32 18, !dbg !3072
  store double %306, double* %313, align 8, !dbg !3073
  br label %314, !dbg !3074

314:                                              ; preds = %301
  %315 = load i32, i32* %7, align 4, !dbg !3075
  %316 = add nsw i32 %315, 1, !dbg !3075
  store i32 %316, i32* %7, align 4, !dbg !3075
  br label %104, !dbg !3076, !llvm.loop !3077

317:                                              ; preds = %104, %25, %12
  ret void, !dbg !3079
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addbonds2reslib(%struct.reslib_t* %0) #0 !dbg !3080 {
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
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %2, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.declare(metadata %struct.residue_t** %3, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.declare(metadata [2 x i32]** %4, metadata !3085, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.declare(metadata %struct.atom_t** %9, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.declare(metadata %struct.atom_t** %10, metadata !3097, metadata !DIExpression()), !dbg !3098
  %11 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !3099
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %11, i32 0, i32 4, !dbg !3101
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !3101
  store %struct.residue_t* %13, %struct.residue_t** %3, align 8, !dbg !3102
  br label %14, !dbg !3103

14:                                               ; preds = %162, %1
  %15 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3104
  %16 = icmp ne %struct.residue_t* %15, null, !dbg !3106
  br i1 %16, label %17, label %166, !dbg !3106

17:                                               ; preds = %14
  %18 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3107
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %18, i32 0, i32 4, !dbg !3110
  %20 = load i8*, i8** %19, align 8, !dbg !3110
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7, !dbg !3111
  %22 = icmp eq i32 %21, 0, !dbg !3112
  br i1 %22, label %23, label %161, !dbg !3113

23:                                               ; preds = %17
  %24 = load i32, i32* @n_bonds, align 4, !dbg !3114
  %25 = sext i32 %24 to i64, !dbg !3114
  %26 = mul i64 %25, 8, !dbg !3117
  %27 = call noalias i8* @malloc(i64 %26) #8, !dbg !3118
  %28 = bitcast i8* %27 to [2 x i32]*, !dbg !3119
  store [2 x i32]* %28, [2 x i32]** %4, align 8, !dbg !3120
  %29 = icmp eq [2 x i32]* %28, null, !dbg !3121
  br i1 %29, label %30, label %33, !dbg !3122

30:                                               ; preds = %23
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #8, !dbg !3123
  %32 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !3125
  br label %172, !dbg !3126

33:                                               ; preds = %23
  store i32 0, i32* %5, align 4, !dbg !3127
  br label %34, !dbg !3129

34:                                               ; preds = %151, %33
  %35 = load i32, i32* %5, align 4, !dbg !3130
  %36 = load i32, i32* @n_bonds, align 4, !dbg !3132
  %37 = icmp slt i32 %35, %36, !dbg !3133
  br i1 %37, label %38, label %154, !dbg !3134

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4, !dbg !3135
  %40 = sext i32 %39 to i64, !dbg !3137
  %41 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %40, !dbg !3137
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 0, !dbg !3137
  %43 = load i32, i32* %42, align 8, !dbg !3137
  %44 = load [2 x i32]*, [2 x i32]** %4, align 8, !dbg !3138
  %45 = load i32, i32* %5, align 4, !dbg !3139
  %46 = sext i32 %45 to i64, !dbg !3138
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 %46, !dbg !3138
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 0, !dbg !3138
  store i32 %43, i32* %48, align 4, !dbg !3140
  store i32 %43, i32* %7, align 4, !dbg !3141
  %49 = load i32, i32* %5, align 4, !dbg !3142
  %50 = sext i32 %49 to i64, !dbg !3143
  %51 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %50, !dbg !3143
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0, i64 1, !dbg !3143
  %53 = load i32, i32* %52, align 4, !dbg !3143
  %54 = load [2 x i32]*, [2 x i32]** %4, align 8, !dbg !3144
  %55 = load i32, i32* %5, align 4, !dbg !3145
  %56 = sext i32 %55 to i64, !dbg !3144
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %54, i64 %56, !dbg !3144
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %57, i64 0, i64 1, !dbg !3144
  store i32 %53, i32* %58, align 4, !dbg !3146
  store i32 %53, i32* %8, align 4, !dbg !3147
  %59 = load i32, i32* %7, align 4, !dbg !3148
  %60 = add nsw i32 %59, -1, !dbg !3148
  store i32 %60, i32* %7, align 4, !dbg !3148
  %61 = load i32, i32* %8, align 4, !dbg !3149
  %62 = add nsw i32 %61, -1, !dbg !3149
  store i32 %62, i32* %8, align 4, !dbg !3149
  %63 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3150
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %63, i32 0, i32 17, !dbg !3151
  %65 = load %struct.atom_t*, %struct.atom_t** %64, align 8, !dbg !3151
  %66 = load i32, i32* %7, align 4, !dbg !3152
  %67 = sext i32 %66 to i64, !dbg !3150
  %68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %67, !dbg !3150
  store %struct.atom_t* %68, %struct.atom_t** %9, align 8, !dbg !3153
  store i32 0, i32* %6, align 4, !dbg !3154
  br label %69, !dbg !3156

69:                                               ; preds = %103, %38
  %70 = load i32, i32* %6, align 4, !dbg !3157
  %71 = icmp slt i32 %70, 8, !dbg !3159
  br i1 %71, label %72, label %106, !dbg !3160

72:                                               ; preds = %69
  %73 = load %struct.atom_t*, %struct.atom_t** %9, align 8, !dbg !3161
  %74 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %73, i32 0, i32 4, !dbg !3164
  %75 = load i32, i32* %6, align 4, !dbg !3165
  %76 = sext i32 %75 to i64, !dbg !3161
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %74, i64 0, i64 %76, !dbg !3161
  %78 = load i32, i32* %77, align 4, !dbg !3161
  %79 = load i32, i32* %8, align 4, !dbg !3166
  %80 = icmp eq i32 %78, %79, !dbg !3167
  br i1 %80, label %81, label %82, !dbg !3168

81:                                               ; preds = %72
  br label %106, !dbg !3169

82:                                               ; preds = %72
  %83 = load %struct.atom_t*, %struct.atom_t** %9, align 8, !dbg !3170
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %83, i32 0, i32 4, !dbg !3172
  %85 = load i32, i32* %6, align 4, !dbg !3173
  %86 = sext i32 %85 to i64, !dbg !3170
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %84, i64 0, i64 %86, !dbg !3170
  %88 = load i32, i32* %87, align 4, !dbg !3170
  %89 = icmp eq i32 %88, -1, !dbg !3174
  br i1 %89, label %90, label %101, !dbg !3175

90:                                               ; preds = %82
  %91 = load i32, i32* %8, align 4, !dbg !3176
  %92 = load %struct.atom_t*, %struct.atom_t** %9, align 8, !dbg !3178
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %92, i32 0, i32 4, !dbg !3179
  %94 = load i32, i32* %6, align 4, !dbg !3180
  %95 = sext i32 %94 to i64, !dbg !3178
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %93, i64 0, i64 %95, !dbg !3178
  store i32 %91, i32* %96, align 4, !dbg !3181
  %97 = load %struct.atom_t*, %struct.atom_t** %9, align 8, !dbg !3182
  %98 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %97, i32 0, i32 3, !dbg !3183
  %99 = load i32, i32* %98, align 4, !dbg !3184
  %100 = add nsw i32 %99, 1, !dbg !3184
  store i32 %100, i32* %98, align 4, !dbg !3184
  br label %106, !dbg !3185

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101
  br label %103, !dbg !3186

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4, !dbg !3187
  %105 = add nsw i32 %104, 1, !dbg !3187
  store i32 %105, i32* %6, align 4, !dbg !3187
  br label %69, !dbg !3188, !llvm.loop !3189

106:                                              ; preds = %90, %81, %69
  %107 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3191
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %107, i32 0, i32 17, !dbg !3192
  %109 = load %struct.atom_t*, %struct.atom_t** %108, align 8, !dbg !3192
  %110 = load i32, i32* %8, align 4, !dbg !3193
  %111 = sext i32 %110 to i64, !dbg !3191
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %109, i64 %111, !dbg !3191
  store %struct.atom_t* %112, %struct.atom_t** %10, align 8, !dbg !3194
  store i32 0, i32* %6, align 4, !dbg !3195
  br label %113, !dbg !3197

113:                                              ; preds = %147, %106
  %114 = load i32, i32* %6, align 4, !dbg !3198
  %115 = icmp slt i32 %114, 8, !dbg !3200
  br i1 %115, label %116, label %150, !dbg !3201

116:                                              ; preds = %113
  %117 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !3202
  %118 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %117, i32 0, i32 4, !dbg !3205
  %119 = load i32, i32* %6, align 4, !dbg !3206
  %120 = sext i32 %119 to i64, !dbg !3202
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %118, i64 0, i64 %120, !dbg !3202
  %122 = load i32, i32* %121, align 4, !dbg !3202
  %123 = load i32, i32* %7, align 4, !dbg !3207
  %124 = icmp eq i32 %122, %123, !dbg !3208
  br i1 %124, label %125, label %126, !dbg !3209

125:                                              ; preds = %116
  br label %150, !dbg !3210

126:                                              ; preds = %116
  %127 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !3211
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i32 0, i32 4, !dbg !3213
  %129 = load i32, i32* %6, align 4, !dbg !3214
  %130 = sext i32 %129 to i64, !dbg !3211
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %128, i64 0, i64 %130, !dbg !3211
  %132 = load i32, i32* %131, align 4, !dbg !3211
  %133 = icmp eq i32 %132, -1, !dbg !3215
  br i1 %133, label %134, label %145, !dbg !3216

134:                                              ; preds = %126
  %135 = load i32, i32* %7, align 4, !dbg !3217
  %136 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !3219
  %137 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %136, i32 0, i32 4, !dbg !3220
  %138 = load i32, i32* %6, align 4, !dbg !3221
  %139 = sext i32 %138 to i64, !dbg !3219
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %137, i64 0, i64 %139, !dbg !3219
  store i32 %135, i32* %140, align 4, !dbg !3222
  %141 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !3223
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %141, i32 0, i32 3, !dbg !3224
  %143 = load i32, i32* %142, align 4, !dbg !3225
  %144 = add nsw i32 %143, 1, !dbg !3225
  store i32 %144, i32* %142, align 4, !dbg !3225
  br label %150, !dbg !3226

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145
  br label %147, !dbg !3227

147:                                              ; preds = %146
  %148 = load i32, i32* %6, align 4, !dbg !3228
  %149 = add nsw i32 %148, 1, !dbg !3228
  store i32 %149, i32* %6, align 4, !dbg !3228
  br label %113, !dbg !3229, !llvm.loop !3230

150:                                              ; preds = %134, %125, %113
  br label %151, !dbg !3232

151:                                              ; preds = %150
  %152 = load i32, i32* %5, align 4, !dbg !3233
  %153 = add nsw i32 %152, 1, !dbg !3233
  store i32 %153, i32* %5, align 4, !dbg !3233
  br label %34, !dbg !3234, !llvm.loop !3235

154:                                              ; preds = %34
  %155 = load i32, i32* @n_bonds, align 4, !dbg !3237
  %156 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3238
  %157 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %156, i32 0, i32 11, !dbg !3239
  store i32 %155, i32* %157, align 8, !dbg !3240
  %158 = load [2 x i32]*, [2 x i32]** %4, align 8, !dbg !3241
  %159 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3242
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %159, i32 0, i32 12, !dbg !3243
  store [2 x i32]* %158, [2 x i32]** %160, align 8, !dbg !3244
  br label %172, !dbg !3245

161:                                              ; preds = %17
  br label %162, !dbg !3246

162:                                              ; preds = %161
  %163 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3247
  %164 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %163, i32 0, i32 0, !dbg !3248
  %165 = load %struct.residue_t*, %struct.residue_t** %164, align 8, !dbg !3248
  store %struct.residue_t* %165, %struct.residue_t** %3, align 8, !dbg !3249
  br label %14, !dbg !3250, !llvm.loop !3251

166:                                              ; preds = %14
  %167 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !3253
  %168 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %167, i32 0, i32 1, !dbg !3254
  %169 = load i8*, i8** %168, align 8, !dbg !3254
  %170 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %169) #8, !dbg !3255
  %171 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !3256
  br label %172, !dbg !3257

172:                                              ; preds = %166, %154, %30
  ret void, !dbg !3258
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setrlibattrs(%struct.reslib_t* %0, i8* %1) #0 !dbg !3259 {
  %3 = alloca %struct.reslib_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  store %struct.reslib_t* %0, %struct.reslib_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %3, metadata !3262, metadata !DIExpression()), !dbg !3263
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.declare(metadata [100 x i8]* %6, metadata !3268, metadata !DIExpression()), !dbg !3269
  %7 = load i8*, i8** %4, align 8, !dbg !3270
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !3272
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0, !dbg !3273
  %10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* %8, i8* %9) #8, !dbg !3274
  %11 = icmp ne i32 %10, 2, !dbg !3275
  br i1 %11, label %12, label %13, !dbg !3276

12:                                               ; preds = %2
  br label %51, !dbg !3277

13:                                               ; preds = %2
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !3278
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !3280
  %16 = icmp eq i32 %15, 0, !dbg !3281
  br i1 %16, label %17, label %20, !dbg !3282

17:                                               ; preds = %13
  %18 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8, !dbg !3283
  %19 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %18, i32 0, i32 2, !dbg !3284
  store i32 1, i32* %19, align 8, !dbg !3285
  br label %36, !dbg !3283

20:                                               ; preds = %13
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !3286
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !3288
  %23 = icmp eq i32 %22, 0, !dbg !3289
  br i1 %23, label %24, label %27, !dbg !3290

24:                                               ; preds = %20
  %25 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8, !dbg !3291
  %26 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %25, i32 0, i32 2, !dbg !3292
  store i32 2, i32* %26, align 8, !dbg !3293
  br label %35, !dbg !3291

27:                                               ; preds = %20
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !3294
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !3296
  %30 = icmp eq i32 %29, 0, !dbg !3297
  br i1 %30, label %31, label %34, !dbg !3298

31:                                               ; preds = %27
  %32 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8, !dbg !3299
  %33 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %32, i32 0, i32 2, !dbg !3300
  store i32 3, i32* %33, align 8, !dbg !3301
  br label %34, !dbg !3299

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %17
  %37 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0, !dbg !3302
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #7, !dbg !3304
  %39 = icmp eq i32 %38, 0, !dbg !3305
  br i1 %39, label %40, label %43, !dbg !3306

40:                                               ; preds = %36
  %41 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8, !dbg !3307
  %42 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %41, i32 0, i32 3, !dbg !3308
  store i32 1, i32* %42, align 4, !dbg !3309
  br label %51, !dbg !3307

43:                                               ; preds = %36
  %44 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0, !dbg !3310
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #7, !dbg !3312
  %46 = icmp eq i32 %45, 0, !dbg !3313
  br i1 %46, label %47, label %50, !dbg !3314

47:                                               ; preds = %43
  %48 = load %struct.reslib_t*, %struct.reslib_t** %3, align 8, !dbg !3315
  %49 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %48, i32 0, i32 3, !dbg !3316
  store i32 2, i32* %49, align 4, !dbg !3317
  br label %50, !dbg !3315

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %40, %12
  ret void, !dbg !3318
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addqr2reslib(%struct.reslib_t* %0) #0 !dbg !3319 {
  %2 = alloca %struct.reslib_t*, align 8
  %3 = alloca %struct.residue_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca %struct.atom_t*, align 8
  store %struct.reslib_t* %0, %struct.reslib_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %2, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.declare(metadata %struct.residue_t** %3, metadata !3322, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3324, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.declare(metadata %struct.atom_t** %5, metadata !3326, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.declare(metadata %struct.atom_t** %6, metadata !3328, metadata !DIExpression()), !dbg !3329
  %7 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !3330
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %7, i32 0, i32 4, !dbg !3332
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !3332
  store %struct.residue_t* %9, %struct.residue_t** %3, align 8, !dbg !3333
  br label %10, !dbg !3334

10:                                               ; preds = %75, %1
  %11 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3335
  %12 = icmp ne %struct.residue_t* %11, null, !dbg !3337
  br i1 %12, label %13, label %79, !dbg !3337

13:                                               ; preds = %10
  %14 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3338
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i32 0, i32 4, !dbg !3341
  %16 = load i8*, i8** %15, align 8, !dbg !3341
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7, !dbg !3342
  %18 = icmp eq i32 %17, 0, !dbg !3343
  br i1 %18, label %19, label %74, !dbg !3344

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4, !dbg !3345
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %struct.atom_t** %5, align 8, !dbg !3348
  br label %20, !dbg !3349

20:                                               ; preds = %68, %19
  %21 = load i32, i32* %4, align 4, !dbg !3350
  %22 = load i32, i32* @n_atoms, align 4, !dbg !3352
  %23 = icmp slt i32 %21, %22, !dbg !3353
  br i1 %23, label %24, label %73, !dbg !3354

24:                                               ; preds = %20
  %25 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3355
  %26 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3358
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 0, i32 0, !dbg !3359
  %28 = load i8*, i8** %27, align 8, !dbg !3359
  %29 = call %struct.atom_t* @findatom(%struct.residue_t* %25, i8* %28), !dbg !3360
  store %struct.atom_t* %29, %struct.atom_t** %6, align 8, !dbg !3361
  %30 = icmp ne %struct.atom_t* %29, null, !dbg !3361
  br i1 %30, label %31, label %67, !dbg !3362

31:                                               ; preds = %24
  %32 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3363
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i32 0, i32 6, !dbg !3365
  %34 = load double, double* %33, align 8, !dbg !3365
  %35 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !3366
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %35, i32 0, i32 6, !dbg !3367
  store double %34, double* %36, align 8, !dbg !3368
  %37 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3369
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %37, i32 0, i32 7, !dbg !3370
  %39 = load double, double* %38, align 8, !dbg !3370
  %40 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !3371
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 7, !dbg !3372
  store double %39, double* %41, align 8, !dbg !3373
  %42 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3374
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i32 0, i32 8, !dbg !3375
  %44 = load double, double* %43, align 8, !dbg !3375
  %45 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !3376
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i32 0, i32 8, !dbg !3377
  store double %44, double* %46, align 8, !dbg !3378
  %47 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3379
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %47, i32 0, i32 9, !dbg !3380
  %49 = load double, double* %48, align 8, !dbg !3380
  %50 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !3381
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %50, i32 0, i32 9, !dbg !3382
  store double %49, double* %51, align 8, !dbg !3383
  %52 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3384
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %52, i32 0, i32 11, !dbg !3385
  %54 = load i32, i32* %53, align 8, !dbg !3385
  %55 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !3386
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %55, i32 0, i32 11, !dbg !3387
  store i32 %54, i32* %56, align 8, !dbg !3388
  %57 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3389
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 12, !dbg !3390
  %59 = load double, double* %58, align 8, !dbg !3390
  %60 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !3391
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i32 0, i32 12, !dbg !3392
  store double %59, double* %61, align 8, !dbg !3393
  %62 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3394
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i32 0, i32 13, !dbg !3395
  %64 = load double, double* %63, align 8, !dbg !3395
  %65 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !3396
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i32 0, i32 13, !dbg !3397
  store double %64, double* %66, align 8, !dbg !3398
  br label %67, !dbg !3399

67:                                               ; preds = %31, %24
  br label %68, !dbg !3400

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4, !dbg !3401
  %70 = add nsw i32 %69, 1, !dbg !3401
  store i32 %70, i32* %4, align 4, !dbg !3401
  %71 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3402
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %71, i32 1, !dbg !3402
  store %struct.atom_t* %72, %struct.atom_t** %5, align 8, !dbg !3402
  br label %20, !dbg !3403, !llvm.loop !3404

73:                                               ; preds = %20
  br label %85, !dbg !3406

74:                                               ; preds = %13
  br label %75, !dbg !3407

75:                                               ; preds = %74
  %76 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3408
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i32 0, i32 0, !dbg !3409
  %78 = load %struct.residue_t*, %struct.residue_t** %77, align 8, !dbg !3409
  store %struct.residue_t* %78, %struct.residue_t** %3, align 8, !dbg !3410
  br label %10, !dbg !3411, !llvm.loop !3412

79:                                               ; preds = %10
  %80 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !3414
  %81 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %80, i32 0, i32 1, !dbg !3415
  %82 = load i8*, i8** %81, align 8, !dbg !3415
  %83 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %82) #8, !dbg !3416
  %84 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !3417
  br label %85, !dbg !3418

85:                                               ; preds = %79, %73
  ret void, !dbg !3419
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atom_t* @findatom(%struct.residue_t* %0, i8* %1) #0 !dbg !3420 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca %struct.residue_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.residue_t* %0, %struct.residue_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.residue_t** %4, metadata !3423, metadata !DIExpression()), !dbg !3424
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3427, metadata !DIExpression()), !dbg !3428
  store i32 0, i32* %6, align 4, !dbg !3429
  br label %7, !dbg !3431

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %6, align 4, !dbg !3432
  %9 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !3434
  %10 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %9, i32 0, i32 15, !dbg !3435
  %11 = load i32, i32* %10, align 8, !dbg !3435
  %12 = icmp slt i32 %8, %11, !dbg !3436
  br i1 %12, label %13, label %36, !dbg !3437

13:                                               ; preds = %7
  %14 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !3438
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i32 0, i32 17, !dbg !3441
  %16 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !3441
  %17 = load i32, i32* %6, align 4, !dbg !3442
  %18 = sext i32 %17 to i64, !dbg !3438
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %18, !dbg !3438
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %19, i32 0, i32 0, !dbg !3443
  %21 = load i8*, i8** %20, align 8, !dbg !3443
  %22 = load i8*, i8** %5, align 8, !dbg !3444
  %23 = call i32 @strcmp(i8* %21, i8* %22) #7, !dbg !3445
  %24 = icmp ne i32 %23, 0, !dbg !3445
  br i1 %24, label %32, label %25, !dbg !3446

25:                                               ; preds = %13
  %26 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !3447
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %26, i32 0, i32 17, !dbg !3448
  %28 = load %struct.atom_t*, %struct.atom_t** %27, align 8, !dbg !3448
  %29 = load i32, i32* %6, align 4, !dbg !3449
  %30 = sext i32 %29 to i64, !dbg !3447
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i64 %30, !dbg !3447
  store %struct.atom_t* %31, %struct.atom_t** %3, align 8, !dbg !3450
  br label %37, !dbg !3450

32:                                               ; preds = %13
  br label %33, !dbg !3451

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4, !dbg !3452
  %35 = add nsw i32 %34, 1, !dbg !3452
  store i32 %35, i32* %6, align 4, !dbg !3452
  br label %7, !dbg !3453, !llvm.loop !3454

36:                                               ; preds = %7
  store %struct.atom_t* null, %struct.atom_t** %3, align 8, !dbg !3456
  br label %37, !dbg !3456

37:                                               ; preds = %36, %25
  %38 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !3457
  ret %struct.atom_t* %38, !dbg !3457
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addchi2reslib(%struct.reslib_t* %0) #0 !dbg !3458 {
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
  call void @llvm.dbg.declare(metadata %struct.reslib_t** %2, metadata !3459, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.declare(metadata %struct.residue_t** %3, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.chiral_t** %4, metadata !3463, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3467, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3469, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %8, metadata !3471, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %9, metadata !3474, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.declare(metadata double* %10, metadata !3476, metadata !DIExpression()), !dbg !3477
  %11 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !3478
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %11, i32 0, i32 4, !dbg !3480
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !3480
  store %struct.residue_t* %13, %struct.residue_t** %3, align 8, !dbg !3481
  br label %14, !dbg !3482

14:                                               ; preds = %122, %1
  %15 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3483
  %16 = icmp ne %struct.residue_t* %15, null, !dbg !3485
  br i1 %16, label %17, label %126, !dbg !3485

17:                                               ; preds = %14
  %18 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3486
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %18, i32 0, i32 4, !dbg !3489
  %20 = load i8*, i8** %19, align 8, !dbg !3489
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #7, !dbg !3490
  %22 = icmp ne i32 %21, 0, !dbg !3490
  br i1 %22, label %121, label %23, !dbg !3491

23:                                               ; preds = %17
  %24 = load i32, i32* @n_chi, align 4, !dbg !3492
  %25 = sext i32 %24 to i64, !dbg !3492
  %26 = mul i64 %25, 24, !dbg !3495
  %27 = call noalias i8* @malloc(i64 %26) #8, !dbg !3496
  %28 = bitcast i8* %27 to %struct.chiral_t*, !dbg !3497
  store %struct.chiral_t* %28, %struct.chiral_t** %4, align 8, !dbg !3498
  %29 = icmp eq %struct.chiral_t* %28, null, !dbg !3499
  br i1 %29, label %30, label %36, !dbg !3500

30:                                               ; preds = %23
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3501
  %32 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3503
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 4, !dbg !3504
  %34 = load i8*, i8** %33, align 8, !dbg !3504
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %34), !dbg !3505
  br label %135, !dbg !3506

36:                                               ; preds = %23
  %37 = load i32, i32* @n_chi, align 4, !dbg !3507
  %38 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3508
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %38, i32 0, i32 13, !dbg !3509
  store i32 %37, i32* %39, align 8, !dbg !3510
  %40 = load %struct.chiral_t*, %struct.chiral_t** %4, align 8, !dbg !3511
  %41 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3512
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %41, i32 0, i32 14, !dbg !3513
  store %struct.chiral_t* %40, %struct.chiral_t** %42, align 8, !dbg !3514
  store i32 0, i32* %6, align 4, !dbg !3515
  br label %43, !dbg !3517

43:                                               ; preds = %117, %36
  %44 = load i32, i32* %6, align 4, !dbg !3518
  %45 = load i32, i32* @n_chi, align 4, !dbg !3520
  %46 = icmp slt i32 %44, %45, !dbg !3521
  br i1 %46, label %47, label %120, !dbg !3522

47:                                               ; preds = %43
  store i32 0, i32* %5, align 4, !dbg !3523
  br label %48, !dbg !3526

48:                                               ; preds = %104, %47
  %49 = load i32, i32* %5, align 4, !dbg !3527
  %50 = icmp slt i32 %49, 4, !dbg !3529
  br i1 %50, label %51, label %107, !dbg !3530

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4, !dbg !3531
  %53 = sext i32 %52 to i64, !dbg !3533
  %54 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %53, !dbg !3533
  %55 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %54, i32 0, i32 0, !dbg !3534
  %56 = load i32, i32* %5, align 4, !dbg !3535
  %57 = sext i32 %56 to i64, !dbg !3533
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i64 0, i64 %57, !dbg !3533
  %59 = load i32, i32* %58, align 4, !dbg !3533
  %60 = load %struct.chiral_t*, %struct.chiral_t** %4, align 8, !dbg !3536
  %61 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %60, i32 0, i32 0, !dbg !3537
  %62 = load i32, i32* %5, align 4, !dbg !3538
  %63 = sext i32 %62 to i64, !dbg !3536
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i64 0, i64 %63, !dbg !3536
  store i32 %59, i32* %64, align 4, !dbg !3539
  store i32 %59, i32* %7, align 4, !dbg !3540
  %65 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3541
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %65, i32 0, i32 17, !dbg !3542
  %67 = load %struct.atom_t*, %struct.atom_t** %66, align 8, !dbg !3542
  %68 = load i32, i32* %7, align 4, !dbg !3543
  %69 = sext i32 %68 to i64, !dbg !3541
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i64 %69, !dbg !3541
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %70, i32 0, i32 17, !dbg !3544
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 0, i64 0, !dbg !3541
  %73 = load double, double* %72, align 8, !dbg !3541
  %74 = load i32, i32* %5, align 4, !dbg !3545
  %75 = sext i32 %74 to i64, !dbg !3546
  %76 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %8, i64 0, i64 %75, !dbg !3546
  %77 = getelementptr inbounds [3 x double], [3 x double]* %76, i64 0, i64 0, !dbg !3546
  store double %73, double* %77, align 8, !dbg !3547
  %78 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3548
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %78, i32 0, i32 17, !dbg !3549
  %80 = load %struct.atom_t*, %struct.atom_t** %79, align 8, !dbg !3549
  %81 = load i32, i32* %7, align 4, !dbg !3550
  %82 = sext i32 %81 to i64, !dbg !3548
  %83 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %80, i64 %82, !dbg !3548
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %83, i32 0, i32 17, !dbg !3551
  %85 = getelementptr inbounds [3 x double], [3 x double]* %84, i64 0, i64 1, !dbg !3548
  %86 = load double, double* %85, align 8, !dbg !3548
  %87 = load i32, i32* %5, align 4, !dbg !3552
  %88 = sext i32 %87 to i64, !dbg !3553
  %89 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %8, i64 0, i64 %88, !dbg !3553
  %90 = getelementptr inbounds [3 x double], [3 x double]* %89, i64 0, i64 1, !dbg !3553
  store double %86, double* %90, align 8, !dbg !3554
  %91 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3555
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i32 0, i32 17, !dbg !3556
  %93 = load %struct.atom_t*, %struct.atom_t** %92, align 8, !dbg !3556
  %94 = load i32, i32* %7, align 4, !dbg !3557
  %95 = sext i32 %94 to i64, !dbg !3555
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %93, i64 %95, !dbg !3555
  %97 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %96, i32 0, i32 17, !dbg !3558
  %98 = getelementptr inbounds [3 x double], [3 x double]* %97, i64 0, i64 2, !dbg !3555
  %99 = load double, double* %98, align 8, !dbg !3555
  %100 = load i32, i32* %5, align 4, !dbg !3559
  %101 = sext i32 %100 to i64, !dbg !3560
  %102 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %8, i64 0, i64 %101, !dbg !3560
  %103 = getelementptr inbounds [3 x double], [3 x double]* %102, i64 0, i64 2, !dbg !3560
  store double %99, double* %103, align 8, !dbg !3561
  br label %104, !dbg !3562

104:                                              ; preds = %51
  %105 = load i32, i32* %5, align 4, !dbg !3563
  %106 = add nsw i32 %105, 1, !dbg !3563
  store i32 %106, i32* %5, align 4, !dbg !3563
  br label %48, !dbg !3564, !llvm.loop !3565

107:                                              ; preds = %48
  %108 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %8, i64 0, i64 0, !dbg !3567
  %109 = bitcast [3 x double]* %108 to double*, !dbg !3568
  %110 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %9, i64 0, i64 0, !dbg !3569
  %111 = bitcast [3 x double]* %110 to double*, !dbg !3570
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* %109, double* %111, double* %10), !dbg !3571
  %112 = load double, double* %10, align 8, !dbg !3572
  %113 = load %struct.chiral_t*, %struct.chiral_t** %4, align 8, !dbg !3573
  %114 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %113, i32 0, i32 1, !dbg !3574
  store double %112, double* %114, align 8, !dbg !3575
  %115 = load %struct.chiral_t*, %struct.chiral_t** %4, align 8, !dbg !3576
  %116 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %115, i32 1, !dbg !3576
  store %struct.chiral_t* %116, %struct.chiral_t** %4, align 8, !dbg !3576
  br label %117, !dbg !3577

117:                                              ; preds = %107
  %118 = load i32, i32* %6, align 4, !dbg !3578
  %119 = add nsw i32 %118, 1, !dbg !3578
  store i32 %119, i32* %6, align 4, !dbg !3578
  br label %43, !dbg !3579, !llvm.loop !3580

120:                                              ; preds = %43
  br label %135, !dbg !3582

121:                                              ; preds = %17
  br label %122, !dbg !3583

122:                                              ; preds = %121
  %123 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3584
  %124 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %123, i32 0, i32 0, !dbg !3585
  %125 = load %struct.residue_t*, %struct.residue_t** %124, align 8, !dbg !3585
  store %struct.residue_t* %125, %struct.residue_t** %3, align 8, !dbg !3586
  br label %14, !dbg !3587, !llvm.loop !3588

126:                                              ; preds = %14
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3590
  %128 = load %struct.residue_t*, %struct.residue_t** %3, align 8, !dbg !3591
  %129 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %128, i32 0, i32 4, !dbg !3592
  %130 = load i8*, i8** %129, align 8, !dbg !3592
  %131 = load %struct.reslib_t*, %struct.reslib_t** %2, align 8, !dbg !3593
  %132 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %131, i32 0, i32 1, !dbg !3594
  %133 = load i8*, i8** %132, align 8, !dbg !3594
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %130, i8* %133), !dbg !3595
  br label %135, !dbg !3596

135:                                              ; preds = %126, %120, %30
  ret void, !dbg !3596
}

declare dso_local void @chirvol(i32, i32, i32, i32, i32, double*, double*, double*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!267, !268, !269}
!llvm.ident = !{!270}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "e_msg", scope: !2, file: !3, line: 46, type: !264, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !234, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "reslib.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!4 = !{}
!5 = !{!6, !7, !193, !220, !175, !182, !221, !47, !162, !222, !224, !98}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !9, line: 82, baseType: !10)
!9 = !DIFile(filename: "./nabtypes.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !9, line: 63, size: 1024, elements: !11)
!11 = !{!12, !14, !17, !18, !19, !23, !24, !25, !26, !27, !163, !173, !174, !180, !181, !190, !191, !192}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !10, file: !9, line: 64, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !10, file: !9, line: 65, baseType: !15, size: 32, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !9, line: 6, baseType: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !10, file: !9, line: 66, baseType: !15, size: 32, offset: 96)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !10, file: !9, line: 67, baseType: !15, size: 32, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !10, file: !9, line: 68, baseType: !20, size: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !9, line: 17, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !10, file: !9, line: 69, baseType: !20, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !10, file: !9, line: 70, baseType: !15, size: 32, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !10, file: !9, line: 71, baseType: !15, size: 32, offset: 352)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !10, file: !9, line: 72, baseType: !15, size: 32, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !10, file: !9, line: 73, baseType: !28, size: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !9, line: 84, size: 384, elements: !30)
!30 = !{!31, !32, !33, !34, !158, !159, !160, !161}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !29, file: !9, line: 85, baseType: !20, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !29, file: !9, line: 86, baseType: !15, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !29, file: !9, line: 87, baseType: !15, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !29, file: !9, line: 88, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !9, line: 118, size: 1088, elements: !37)
!37 = !{!38, !45, !46, !49, !50, !51, !52}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !36, file: !9, line: 119, baseType: !39, size: 768)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !9, line: 13, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 768, elements: !42)
!41 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!42 = !{!43, !44}
!43 = !DISubrange(count: 4)
!44 = !DISubrange(count: 3)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !36, file: !9, line: 120, baseType: !15, size: 32, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !36, file: !9, line: 121, baseType: !47, size: 64, offset: 832)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !9, line: 93, baseType: !29)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !36, file: !9, line: 122, baseType: !15, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !36, file: !9, line: 123, baseType: !15, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !36, file: !9, line: 124, baseType: !15, size: 32, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !36, file: !9, line: 125, baseType: !53, size: 64, offset: 1024)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !9, line: 115, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !9, line: 95, size: 5760, elements: !56)
!56 = !{!57, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !117, !118, !119, !120, !121, !122, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !55, file: !9, line: 96, baseType: !58, size: 648)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 648, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 81)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !55, file: !9, line: 97, baseType: !15, size: 32, offset: 672)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !55, file: !9, line: 97, baseType: !15, size: 32, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !55, file: !9, line: 97, baseType: !15, size: 32, offset: 736)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !55, file: !9, line: 98, baseType: !15, size: 32, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !55, file: !9, line: 98, baseType: !15, size: 32, offset: 800)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !55, file: !9, line: 98, baseType: !15, size: 32, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !55, file: !9, line: 98, baseType: !15, size: 32, offset: 864)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !55, file: !9, line: 98, baseType: !15, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !55, file: !9, line: 98, baseType: !15, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !55, file: !9, line: 99, baseType: !15, size: 32, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !55, file: !9, line: 99, baseType: !15, size: 32, offset: 992)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !55, file: !9, line: 99, baseType: !15, size: 32, offset: 1024)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !55, file: !9, line: 99, baseType: !15, size: 32, offset: 1056)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !55, file: !9, line: 99, baseType: !15, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !55, file: !9, line: 99, baseType: !15, size: 32, offset: 1120)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !55, file: !9, line: 100, baseType: !15, size: 32, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !55, file: !9, line: 100, baseType: !15, size: 32, offset: 1184)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !55, file: !9, line: 100, baseType: !15, size: 32, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !55, file: !9, line: 100, baseType: !15, size: 32, offset: 1248)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !55, file: !9, line: 100, baseType: !15, size: 32, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !55, file: !9, line: 100, baseType: !15, size: 32, offset: 1312)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !55, file: !9, line: 101, baseType: !15, size: 32, offset: 1344)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !55, file: !9, line: 101, baseType: !15, size: 32, offset: 1376)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !55, file: !9, line: 101, baseType: !15, size: 32, offset: 1408)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !55, file: !9, line: 101, baseType: !15, size: 32, offset: 1440)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !55, file: !9, line: 101, baseType: !15, size: 32, offset: 1472)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !55, file: !9, line: 101, baseType: !15, size: 32, offset: 1504)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !55, file: !9, line: 101, baseType: !15, size: 32, offset: 1536)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !55, file: !9, line: 101, baseType: !15, size: 32, offset: 1568)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !55, file: !9, line: 102, baseType: !15, size: 32, offset: 1600)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !55, file: !9, line: 102, baseType: !15, size: 32, offset: 1632)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !55, file: !9, line: 102, baseType: !15, size: 32, offset: 1664)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !55, file: !9, line: 103, baseType: !20, size: 64, offset: 1728)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !55, file: !9, line: 103, baseType: !20, size: 64, offset: 1792)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !55, file: !9, line: 103, baseType: !20, size: 64, offset: 1856)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !55, file: !9, line: 103, baseType: !20, size: 64, offset: 1920)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 1984)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 2048)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 2112)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 2176)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 2240)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 2304)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 2368)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 2432)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !55, file: !9, line: 104, baseType: !98, size: 64, offset: 2496)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !55, file: !9, line: 105, baseType: !98, size: 64, offset: 2560)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !55, file: !9, line: 105, baseType: !98, size: 64, offset: 2624)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !55, file: !9, line: 105, baseType: !98, size: 64, offset: 2688)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !55, file: !9, line: 105, baseType: !98, size: 64, offset: 2752)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !55, file: !9, line: 105, baseType: !98, size: 64, offset: 2816)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !55, file: !9, line: 105, baseType: !98, size: 64, offset: 2880)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !55, file: !9, line: 105, baseType: !98, size: 64, offset: 2944)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !55, file: !9, line: 106, baseType: !115, size: 192, offset: 3008)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, elements: !116)
!116 = !{!44}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !55, file: !9, line: 106, baseType: !41, size: 64, offset: 3200)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !55, file: !9, line: 106, baseType: !41, size: 64, offset: 3264)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !55, file: !9, line: 106, baseType: !41, size: 64, offset: 3328)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !55, file: !9, line: 106, baseType: !41, size: 64, offset: 3392)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !55, file: !9, line: 106, baseType: !41, size: 64, offset: 3456)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !55, file: !9, line: 107, baseType: !123, size: 64, offset: 3520)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !55, file: !9, line: 107, baseType: !123, size: 64, offset: 3584)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !55, file: !9, line: 107, baseType: !123, size: 64, offset: 3648)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !55, file: !9, line: 107, baseType: !123, size: 64, offset: 3712)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !55, file: !9, line: 107, baseType: !123, size: 64, offset: 3776)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !55, file: !9, line: 107, baseType: !123, size: 64, offset: 3840)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !55, file: !9, line: 108, baseType: !123, size: 64, offset: 3904)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !55, file: !9, line: 108, baseType: !123, size: 64, offset: 3968)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !55, file: !9, line: 108, baseType: !123, size: 64, offset: 4032)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !55, file: !9, line: 108, baseType: !123, size: 64, offset: 4096)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !55, file: !9, line: 108, baseType: !123, size: 64, offset: 4160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !55, file: !9, line: 108, baseType: !123, size: 64, offset: 4224)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !55, file: !9, line: 109, baseType: !123, size: 64, offset: 4288)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !55, file: !9, line: 109, baseType: !123, size: 64, offset: 4352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !55, file: !9, line: 109, baseType: !123, size: 64, offset: 4416)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !55, file: !9, line: 109, baseType: !123, size: 64, offset: 4480)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !55, file: !9, line: 109, baseType: !123, size: 64, offset: 4544)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !55, file: !9, line: 110, baseType: !123, size: 64, offset: 4608)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !55, file: !9, line: 110, baseType: !123, size: 64, offset: 4672)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !55, file: !9, line: 110, baseType: !123, size: 64, offset: 4736)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !55, file: !9, line: 110, baseType: !123, size: 64, offset: 4800)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !55, file: !9, line: 110, baseType: !123, size: 64, offset: 4864)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !55, file: !9, line: 111, baseType: !123, size: 64, offset: 4928)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !55, file: !9, line: 111, baseType: !123, size: 64, offset: 4992)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !55, file: !9, line: 111, baseType: !123, size: 64, offset: 5056)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !55, file: !9, line: 111, baseType: !123, size: 64, offset: 5120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !55, file: !9, line: 111, baseType: !123, size: 64, offset: 5184)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !55, file: !9, line: 111, baseType: !123, size: 64, offset: 5248)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !55, file: !9, line: 112, baseType: !123, size: 64, offset: 5312)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !55, file: !9, line: 112, baseType: !123, size: 64, offset: 5376)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !55, file: !9, line: 112, baseType: !123, size: 64, offset: 5440)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !55, file: !9, line: 112, baseType: !123, size: 64, offset: 5504)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !55, file: !9, line: 113, baseType: !123, size: 64, offset: 5568)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !55, file: !9, line: 113, baseType: !123, size: 64, offset: 5632)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !55, file: !9, line: 114, baseType: !98, size: 64, offset: 5696)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !29, file: !9, line: 89, baseType: !28, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !29, file: !9, line: 90, baseType: !15, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !29, file: !9, line: 91, baseType: !15, size: 32, offset: 288)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !29, file: !9, line: 92, baseType: !162, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !10, file: !9, line: 74, baseType: !164, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !9, line: 52, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !9, line: 47, size: 192, elements: !167)
!167 = !{!168, !170, !171, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !166, file: !9, line: 48, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !166, file: !9, line: 49, baseType: !15, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !166, file: !9, line: 50, baseType: !15, size: 32, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !166, file: !9, line: 51, baseType: !15, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !10, file: !9, line: 75, baseType: !15, size: 32, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !10, file: !9, line: 76, baseType: !175, size: 64, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !9, line: 54, baseType: !177)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 2)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !10, file: !9, line: 77, baseType: !15, size: 32, offset: 704)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !10, file: !9, line: 78, baseType: !182, size: 64, offset: 768)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !9, line: 61, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !9, line: 58, size: 192, elements: !185)
!185 = !{!186, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !184, file: !9, line: 59, baseType: !187, size: 128)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !188)
!188 = !{!43}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !184, file: !9, line: 60, baseType: !41, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !10, file: !9, line: 79, baseType: !15, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !10, file: !9, line: 80, baseType: !123, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !10, file: !9, line: 81, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !9, line: 45, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !9, line: 25, size: 1408, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !219}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !195, file: !9, line: 26, baseType: !20, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !195, file: !9, line: 27, baseType: !20, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !195, file: !9, line: 28, baseType: !15, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !195, file: !9, line: 29, baseType: !15, size: 32, offset: 160)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !195, file: !9, line: 30, baseType: !202, size: 256, offset: 192)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 8)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !195, file: !9, line: 31, baseType: !13, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !195, file: !9, line: 32, baseType: !41, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !195, file: !9, line: 33, baseType: !41, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !195, file: !9, line: 34, baseType: !41, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !195, file: !9, line: 35, baseType: !41, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !195, file: !9, line: 36, baseType: !20, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !195, file: !9, line: 37, baseType: !15, size: 32, offset: 832)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !195, file: !9, line: 38, baseType: !41, size: 64, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !195, file: !9, line: 39, baseType: !41, size: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !195, file: !9, line: 40, baseType: !15, size: 32, offset: 1024)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !195, file: !9, line: 41, baseType: !15, size: 32, offset: 1056)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !195, file: !9, line: 42, baseType: !20, size: 64, offset: 1088)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !195, file: !9, line: 43, baseType: !218, size: 192, offset: 1152)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !9, line: 12, baseType: !115)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !195, file: !9, line: 44, baseType: !41, size: 64, offset: 1344)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !9, line: 126, baseType: !36)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESLIB_T", file: !3, line: 26, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reslib_t", file: !3, line: 20, size: 256, elements: !227)
!227 = !{!228, !230, !231, !232, !233}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rl_next", scope: !226, file: !3, line: 21, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rl_name", scope: !226, file: !3, line: 22, baseType: !221, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rl_r_kind", scope: !226, file: !3, line: 23, baseType: !16, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rl_r_atomkind", scope: !226, file: !3, line: 24, baseType: !16, size: 32, offset: 160)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rl_rlist", scope: !226, file: !3, line: 25, baseType: !7, size: 64, offset: 192)
!234 = !{!0, !235, !237, !242, !247, !249, !252, !254, !257, !259}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "reslibs", scope: !2, file: !3, line: 44, type: !224, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "init", scope: !239, file: !3, line: 474, type: !16, isLocal: true, isDefinition: true)
!239 = distinct !DISubprogram(name: "initatoms", scope: !3, file: !3, line: 472, type: !240, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!240 = !DISubroutineType(types: !241)
!241 = !{null}
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "atoms", scope: !2, file: !3, line: 34, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 1408000, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 1000)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "n_atoms", scope: !2, file: !3, line: 33, type: !16, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "lr_name", scope: !2, file: !3, line: 32, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !203)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "n_bonds", scope: !2, file: !3, line: 37, type: !16, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "bonds", scope: !2, file: !3, line: 38, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 64000, elements: !245)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "n_chi", scope: !2, file: !3, line: 41, type: !16, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "chi", scope: !2, file: !3, line: 42, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 96000, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 500)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 256)
!267 = !{i32 7, !"Dwarf Version", i32 4}
!268 = !{i32 2, !"Debug Info Version", i32 3}
!269 = !{i32 1, !"wchar_size", i32 4}
!270 = !{!"clang version 10.0.0-4ubuntu1 "}
!271 = distinct !DISubprogram(name: "getreslibkind", scope: !3, file: !3, line: 78, type: !272, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!272 = !DISubroutineType(types: !273)
!273 = !{!221, !221}
!274 = !DILocalVariable(name: "reslib", arg: 1, scope: !271, file: !3, line: 78, type: !221)
!275 = !DILocation(line: 78, column: 27, scope: !271)
!276 = !DILocalVariable(name: "nhp", scope: !271, file: !3, line: 80, type: !221)
!277 = !DILocation(line: 80, column: 8, scope: !271)
!278 = !DILocalVariable(name: "rlp", scope: !271, file: !3, line: 81, type: !224)
!279 = !DILocation(line: 81, column: 12, scope: !271)
!280 = !DILocation(line: 83, column: 28, scope: !281)
!281 = distinct !DILexicalBlock(scope: !271, file: !3, line: 83, column: 6)
!282 = !DILocation(line: 83, column: 14, scope: !281)
!283 = !DILocation(line: 83, column: 12, scope: !281)
!284 = !DILocation(line: 83, column: 39, scope: !281)
!285 = !DILocation(line: 83, column: 6, scope: !271)
!286 = !DILocation(line: 84, column: 28, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 84, column: 7)
!288 = distinct !DILexicalBlock(scope: !281, file: !3, line: 83, column: 48)
!289 = !DILocation(line: 84, column: 15, scope: !287)
!290 = !DILocation(line: 84, column: 13, scope: !287)
!291 = !DILocation(line: 84, column: 39, scope: !287)
!292 = !DILocation(line: 84, column: 7, scope: !288)
!293 = !DILocation(line: 85, column: 13, scope: !294)
!294 = distinct !DILexicalBlock(scope: !287, file: !3, line: 84, column: 48)
!295 = !DILocation(line: 86, column: 5, scope: !294)
!296 = !DILocation(line: 85, column: 4, scope: !294)
!297 = !DILocation(line: 87, column: 4, scope: !294)
!298 = !DILocation(line: 89, column: 2, scope: !288)
!299 = !DILocation(line: 90, column: 6, scope: !300)
!300 = distinct !DILexicalBlock(scope: !271, file: !3, line: 90, column: 6)
!301 = !DILocation(line: 90, column: 11, scope: !300)
!302 = !DILocation(line: 90, column: 21, scope: !300)
!303 = !DILocation(line: 90, column: 6, scope: !271)
!304 = !DILocation(line: 91, column: 3, scope: !300)
!305 = !DILocation(line: 92, column: 11, scope: !306)
!306 = distinct !DILexicalBlock(scope: !300, file: !3, line: 92, column: 11)
!307 = !DILocation(line: 92, column: 16, scope: !306)
!308 = !DILocation(line: 92, column: 26, scope: !306)
!309 = !DILocation(line: 92, column: 11, scope: !300)
!310 = !DILocation(line: 93, column: 3, scope: !306)
!311 = !DILocation(line: 94, column: 11, scope: !312)
!312 = distinct !DILexicalBlock(scope: !306, file: !3, line: 94, column: 11)
!313 = !DILocation(line: 94, column: 16, scope: !312)
!314 = !DILocation(line: 94, column: 26, scope: !312)
!315 = !DILocation(line: 94, column: 11, scope: !306)
!316 = !DILocation(line: 95, column: 3, scope: !312)
!317 = !DILocation(line: 96, column: 11, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !3, line: 96, column: 11)
!319 = !DILocation(line: 96, column: 16, scope: !318)
!320 = !DILocation(line: 96, column: 26, scope: !318)
!321 = !DILocation(line: 96, column: 11, scope: !312)
!322 = !DILocation(line: 97, column: 3, scope: !318)
!323 = !DILocation(line: 99, column: 3, scope: !318)
!324 = !DILocation(line: 101, column: 1, scope: !271)
!325 = distinct !DISubprogram(name: "known_reslib", scope: !3, file: !3, line: 422, type: !326, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!326 = !DISubroutineType(types: !327)
!327 = !{!224, !221}
!328 = !DILocalVariable(name: "reslib", arg: 1, scope: !325, file: !3, line: 422, type: !221)
!329 = !DILocation(line: 422, column: 37, scope: !325)
!330 = !DILocalVariable(name: "rlp", scope: !325, file: !3, line: 424, type: !224)
!331 = !DILocation(line: 424, column: 12, scope: !325)
!332 = !DILocation(line: 426, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !325, file: !3, line: 426, column: 2)
!334 = !DILocation(line: 426, column: 11, scope: !333)
!335 = !DILocation(line: 426, column: 7, scope: !333)
!336 = !DILocation(line: 426, column: 22, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 426, column: 2)
!338 = !DILocation(line: 426, column: 2, scope: !333)
!339 = !DILocation(line: 427, column: 15, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 427, column: 7)
!341 = distinct !DILexicalBlock(scope: !337, file: !3, line: 426, column: 47)
!342 = !DILocation(line: 427, column: 20, scope: !340)
!343 = !DILocation(line: 427, column: 29, scope: !340)
!344 = !DILocation(line: 427, column: 7, scope: !340)
!345 = !DILocation(line: 427, column: 38, scope: !340)
!346 = !DILocation(line: 427, column: 7, scope: !341)
!347 = !DILocation(line: 428, column: 12, scope: !348)
!348 = distinct !DILexicalBlock(scope: !340, file: !3, line: 427, column: 44)
!349 = !DILocation(line: 428, column: 4, scope: !348)
!350 = !DILocation(line: 430, column: 2, scope: !341)
!351 = !DILocation(line: 426, column: 33, scope: !337)
!352 = !DILocation(line: 426, column: 38, scope: !337)
!353 = !DILocation(line: 426, column: 31, scope: !337)
!354 = !DILocation(line: 426, column: 2, scope: !337)
!355 = distinct !{!355, !338, !356}
!356 = !DILocation(line: 430, column: 2, scope: !333)
!357 = !DILocation(line: 431, column: 2, scope: !325)
!358 = !DILocation(line: 432, column: 1, scope: !325)
!359 = distinct !DISubprogram(name: "read_reslib", scope: !3, file: !3, line: 434, type: !326, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!360 = !DILocalVariable(name: "reslib", arg: 1, scope: !359, file: !3, line: 434, type: !221)
!361 = !DILocation(line: 434, column: 36, scope: !359)
!362 = !DILocalVariable(name: "pfp", scope: !359, file: !3, line: 436, type: !363)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !365, line: 7, baseType: !366)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !367, line: 49, size: 1728, elements: !368)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !384, !386, !387, !388, !392, !394, !396, !400, !403, !405, !408, !411, !412, !413, !417, !418}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !366, file: !367, line: 51, baseType: !16, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !366, file: !367, line: 54, baseType: !221, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !366, file: !367, line: 55, baseType: !221, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !366, file: !367, line: 56, baseType: !221, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !366, file: !367, line: 57, baseType: !221, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !366, file: !367, line: 58, baseType: !221, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !366, file: !367, line: 59, baseType: !221, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !366, file: !367, line: 60, baseType: !221, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !366, file: !367, line: 61, baseType: !221, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !366, file: !367, line: 64, baseType: !221, size: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !366, file: !367, line: 65, baseType: !221, size: 64, offset: 640)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !366, file: !367, line: 66, baseType: !221, size: 64, offset: 704)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !366, file: !367, line: 68, baseType: !382, size: 64, offset: 768)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !367, line: 36, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !366, file: !367, line: 70, baseType: !385, size: 64, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !366, file: !367, line: 72, baseType: !16, size: 32, offset: 896)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !366, file: !367, line: 73, baseType: !16, size: 32, offset: 928)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !366, file: !367, line: 74, baseType: !389, size: 64, offset: 960)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !390, line: 152, baseType: !391)
!390 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!391 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !366, file: !367, line: 77, baseType: !393, size: 16, offset: 1024)
!393 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !366, file: !367, line: 78, baseType: !395, size: 8, offset: 1040)
!395 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !366, file: !367, line: 79, baseType: !397, size: 8, offset: 1048)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 1)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !366, file: !367, line: 81, baseType: !401, size: 64, offset: 1088)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !367, line: 43, baseType: null)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !366, file: !367, line: 89, baseType: !404, size: 64, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !390, line: 153, baseType: !391)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !366, file: !367, line: 91, baseType: !406, size: 64, offset: 1216)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !367, line: 37, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !366, file: !367, line: 92, baseType: !409, size: 64, offset: 1280)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !367, line: 38, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !366, file: !367, line: 93, baseType: !385, size: 64, offset: 1344)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !366, file: !367, line: 94, baseType: !6, size: 64, offset: 1408)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !366, file: !367, line: 95, baseType: !414, size: 64, offset: 1472)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !415, line: 46, baseType: !416)
!415 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!416 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !366, file: !367, line: 96, baseType: !16, size: 32, offset: 1536)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !366, file: !367, line: 98, baseType: !419, size: 160, offset: 1568)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 20)
!422 = !DILocation(line: 436, column: 8, scope: !359)
!423 = !DILocalVariable(name: "bfp", scope: !359, file: !3, line: 437, type: !363)
!424 = !DILocation(line: 437, column: 8, scope: !359)
!425 = !DILocalVariable(name: "qfp", scope: !359, file: !3, line: 438, type: !363)
!426 = !DILocation(line: 438, column: 8, scope: !359)
!427 = !DILocalVariable(name: "cfp", scope: !359, file: !3, line: 439, type: !363)
!428 = !DILocation(line: 439, column: 8, scope: !359)
!429 = !DILocalVariable(name: "rlp", scope: !359, file: !3, line: 440, type: !224)
!430 = !DILocation(line: 440, column: 12, scope: !359)
!431 = !DILocalVariable(name: "offname", scope: !359, file: !3, line: 441, type: !264)
!432 = !DILocation(line: 441, column: 7, scope: !359)
!433 = !DILocation(line: 443, column: 34, scope: !434)
!434 = distinct !DILexicalBlock(scope: !359, file: !3, line: 443, column: 6)
!435 = !DILocation(line: 444, column: 3, scope: !434)
!436 = !DILocation(line: 443, column: 14, scope: !434)
!437 = !DILocation(line: 443, column: 12, scope: !434)
!438 = !DILocation(line: 444, column: 15, scope: !434)
!439 = !DILocation(line: 443, column: 6, scope: !359)
!440 = !DILocation(line: 446, column: 3, scope: !441)
!441 = distinct !DILexicalBlock(scope: !434, file: !3, line: 445, column: 2)
!442 = !DILocation(line: 449, column: 2, scope: !359)
!443 = !DILocation(line: 450, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !359, file: !3, line: 450, column: 7)
!445 = !DILocation(line: 450, column: 7, scope: !359)
!446 = !DILocation(line: 451, column: 15, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !3, line: 450, column: 17)
!448 = !DILocation(line: 451, column: 24, scope: !447)
!449 = !DILocation(line: 451, column: 3, scope: !447)
!450 = !DILocation(line: 452, column: 2, scope: !447)
!451 = !DILocation(line: 453, column: 15, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !3, line: 452, column: 7)
!453 = !DILocation(line: 453, column: 20, scope: !452)
!454 = !DILocation(line: 453, column: 3, scope: !452)
!455 = !DILocation(line: 454, column: 15, scope: !452)
!456 = !DILocation(line: 454, column: 20, scope: !452)
!457 = !DILocation(line: 454, column: 3, scope: !452)
!458 = !DILocation(line: 455, column: 11, scope: !452)
!459 = !DILocation(line: 455, column: 3, scope: !452)
!460 = !DILocation(line: 456, column: 11, scope: !452)
!461 = !DILocation(line: 456, column: 3, scope: !452)
!462 = !DILocation(line: 459, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !359, file: !3, line: 459, column: 6)
!464 = !DILocation(line: 459, column: 6, scope: !359)
!465 = !DILocation(line: 460, column: 14, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 459, column: 11)
!467 = !DILocation(line: 460, column: 19, scope: !466)
!468 = !DILocation(line: 460, column: 3, scope: !466)
!469 = !DILocation(line: 461, column: 11, scope: !466)
!470 = !DILocation(line: 461, column: 3, scope: !466)
!471 = !DILocation(line: 462, column: 2, scope: !466)
!472 = !DILocation(line: 464, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !359, file: !3, line: 464, column: 6)
!474 = !DILocation(line: 464, column: 6, scope: !359)
!475 = !DILocation(line: 465, column: 15, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !3, line: 464, column: 11)
!477 = !DILocation(line: 465, column: 20, scope: !476)
!478 = !DILocation(line: 465, column: 3, scope: !476)
!479 = !DILocation(line: 466, column: 11, scope: !476)
!480 = !DILocation(line: 466, column: 3, scope: !476)
!481 = !DILocation(line: 467, column: 2, scope: !476)
!482 = !DILocation(line: 469, column: 10, scope: !359)
!483 = !DILocation(line: 469, column: 2, scope: !359)
!484 = !DILocation(line: 470, column: 1, scope: !359)
!485 = distinct !DISubprogram(name: "setreslibkind", scope: !3, file: !3, line: 103, type: !486, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!486 = !DISubroutineType(types: !487)
!487 = !{!16, !221, !221}
!488 = !DILocalVariable(name: "reslib", arg: 1, scope: !485, file: !3, line: 103, type: !221)
!489 = !DILocation(line: 103, column: 25, scope: !485)
!490 = !DILocalVariable(name: "kind", arg: 2, scope: !485, file: !3, line: 103, type: !221)
!491 = !DILocation(line: 103, column: 40, scope: !485)
!492 = !DILocalVariable(name: "nhp", scope: !485, file: !3, line: 105, type: !221)
!493 = !DILocation(line: 105, column: 8, scope: !485)
!494 = !DILocalVariable(name: "rlp", scope: !485, file: !3, line: 106, type: !224)
!495 = !DILocation(line: 106, column: 12, scope: !485)
!496 = !DILocation(line: 108, column: 28, scope: !497)
!497 = distinct !DILexicalBlock(scope: !485, file: !3, line: 108, column: 6)
!498 = !DILocation(line: 108, column: 14, scope: !497)
!499 = !DILocation(line: 108, column: 12, scope: !497)
!500 = !DILocation(line: 108, column: 39, scope: !497)
!501 = !DILocation(line: 108, column: 6, scope: !485)
!502 = !DILocation(line: 109, column: 29, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 109, column: 8)
!504 = distinct !DILexicalBlock(scope: !497, file: !3, line: 108, column: 48)
!505 = !DILocation(line: 109, column: 16, scope: !503)
!506 = !DILocation(line: 109, column: 14, scope: !503)
!507 = !DILocation(line: 109, column: 40, scope: !503)
!508 = !DILocation(line: 109, column: 8, scope: !504)
!509 = !DILocation(line: 110, column: 15, scope: !510)
!510 = distinct !DILexicalBlock(scope: !503, file: !3, line: 109, column: 49)
!511 = !DILocation(line: 111, column: 8, scope: !510)
!512 = !DILocation(line: 110, column: 6, scope: !510)
!513 = !DILocation(line: 112, column: 6, scope: !510)
!514 = !DILocation(line: 114, column: 2, scope: !504)
!515 = !DILocation(line: 115, column: 2, scope: !485)
!516 = !DILocation(line: 115, column: 7, scope: !485)
!517 = !DILocation(line: 115, column: 17, scope: !485)
!518 = !DILocation(line: 116, column: 16, scope: !519)
!519 = distinct !DILexicalBlock(scope: !485, file: !3, line: 116, column: 7)
!520 = !DILocation(line: 116, column: 8, scope: !519)
!521 = !DILocation(line: 116, column: 30, scope: !519)
!522 = !DILocation(line: 116, column: 42, scope: !519)
!523 = !DILocation(line: 116, column: 34, scope: !519)
!524 = !DILocation(line: 116, column: 7, scope: !485)
!525 = !DILocation(line: 117, column: 10, scope: !519)
!526 = !DILocation(line: 117, column: 15, scope: !519)
!527 = !DILocation(line: 117, column: 25, scope: !519)
!528 = !DILocation(line: 118, column: 21, scope: !529)
!529 = distinct !DILexicalBlock(scope: !519, file: !3, line: 118, column: 12)
!530 = !DILocation(line: 118, column: 13, scope: !529)
!531 = !DILocation(line: 118, column: 35, scope: !529)
!532 = !DILocation(line: 118, column: 47, scope: !529)
!533 = !DILocation(line: 118, column: 39, scope: !529)
!534 = !DILocation(line: 118, column: 12, scope: !519)
!535 = !DILocation(line: 119, column: 10, scope: !529)
!536 = !DILocation(line: 119, column: 15, scope: !529)
!537 = !DILocation(line: 119, column: 25, scope: !529)
!538 = !DILocation(line: 120, column: 21, scope: !539)
!539 = distinct !DILexicalBlock(scope: !529, file: !3, line: 120, column: 12)
!540 = !DILocation(line: 120, column: 13, scope: !539)
!541 = !DILocation(line: 120, column: 34, scope: !539)
!542 = !DILocation(line: 120, column: 46, scope: !539)
!543 = !DILocation(line: 120, column: 38, scope: !539)
!544 = !DILocation(line: 120, column: 12, scope: !529)
!545 = !DILocation(line: 121, column: 10, scope: !539)
!546 = !DILocation(line: 121, column: 15, scope: !539)
!547 = !DILocation(line: 121, column: 25, scope: !539)
!548 = !DILocation(line: 123, column: 17, scope: !485)
!549 = !DILocation(line: 123, column: 22, scope: !485)
!550 = !DILocation(line: 123, column: 9, scope: !485)
!551 = distinct !DISubprogram(name: "getresidue", scope: !3, file: !3, line: 126, type: !552, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!552 = !DISubroutineType(types: !553)
!553 = !{!7, !221, !221}
!554 = !DILocalVariable(name: "rname", arg: 1, scope: !551, file: !3, line: 126, type: !221)
!555 = !DILocation(line: 126, column: 29, scope: !551)
!556 = !DILocalVariable(name: "reslib", arg: 2, scope: !551, file: !3, line: 126, type: !221)
!557 = !DILocation(line: 126, column: 43, scope: !551)
!558 = !DILocalVariable(name: "nhp", scope: !551, file: !3, line: 128, type: !221)
!559 = !DILocation(line: 128, column: 8, scope: !551)
!560 = !DILocalVariable(name: "leapname", scope: !551, file: !3, line: 128, type: !561)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 40, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 5)
!564 = !DILocation(line: 128, column: 13, scope: !551)
!565 = !DILocalVariable(name: "rlp", scope: !551, file: !3, line: 129, type: !224)
!566 = !DILocation(line: 129, column: 12, scope: !551)
!567 = !DILocalVariable(name: "res", scope: !551, file: !3, line: 130, type: !7)
!568 = !DILocation(line: 130, column: 13, scope: !551)
!569 = !DILocalVariable(name: "nres", scope: !551, file: !3, line: 130, type: !7)
!570 = !DILocation(line: 130, column: 19, scope: !551)
!571 = !DILocation(line: 132, column: 28, scope: !572)
!572 = distinct !DILexicalBlock(scope: !551, file: !3, line: 132, column: 6)
!573 = !DILocation(line: 132, column: 14, scope: !572)
!574 = !DILocation(line: 132, column: 12, scope: !572)
!575 = !DILocation(line: 132, column: 39, scope: !572)
!576 = !DILocation(line: 132, column: 6, scope: !551)
!577 = !DILocation(line: 133, column: 28, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 133, column: 7)
!579 = distinct !DILexicalBlock(scope: !572, file: !3, line: 132, column: 48)
!580 = !DILocation(line: 133, column: 15, scope: !578)
!581 = !DILocation(line: 133, column: 13, scope: !578)
!582 = !DILocation(line: 133, column: 39, scope: !578)
!583 = !DILocation(line: 133, column: 7, scope: !579)
!584 = !DILocation(line: 134, column: 4, scope: !585)
!585 = distinct !DILexicalBlock(scope: !578, file: !3, line: 133, column: 48)
!586 = !DILocation(line: 136, column: 2, scope: !579)
!587 = !DILocation(line: 138, column: 10, scope: !551)
!588 = !DILocation(line: 138, column: 20, scope: !551)
!589 = !DILocation(line: 138, column: 2, scope: !551)
!590 = !DILocation(line: 139, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !551, file: !3, line: 139, column: 7)
!592 = !DILocation(line: 139, column: 12, scope: !591)
!593 = !DILocation(line: 139, column: 22, scope: !591)
!594 = !DILocation(line: 139, column: 7, scope: !551)
!595 = !DILocation(line: 140, column: 23, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 140, column: 13)
!597 = distinct !DILexicalBlock(scope: !591, file: !3, line: 139, column: 33)
!598 = !DILocation(line: 140, column: 14, scope: !596)
!599 = !DILocation(line: 140, column: 13, scope: !597)
!600 = !DILocation(line: 141, column: 12, scope: !596)
!601 = !DILocation(line: 141, column: 4, scope: !596)
!602 = !DILocation(line: 142, column: 23, scope: !603)
!603 = distinct !DILexicalBlock(scope: !596, file: !3, line: 142, column: 13)
!604 = !DILocation(line: 142, column: 14, scope: !603)
!605 = !DILocation(line: 142, column: 13, scope: !596)
!606 = !DILocation(line: 143, column: 12, scope: !603)
!607 = !DILocation(line: 143, column: 4, scope: !603)
!608 = !DILocation(line: 144, column: 23, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !3, line: 144, column: 13)
!610 = !DILocation(line: 144, column: 14, scope: !609)
!611 = !DILocation(line: 144, column: 13, scope: !603)
!612 = !DILocation(line: 145, column: 12, scope: !609)
!613 = !DILocation(line: 145, column: 4, scope: !609)
!614 = !DILocation(line: 146, column: 23, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !3, line: 146, column: 13)
!616 = !DILocation(line: 146, column: 14, scope: !615)
!617 = !DILocation(line: 146, column: 13, scope: !609)
!618 = !DILocation(line: 147, column: 12, scope: !615)
!619 = !DILocation(line: 147, column: 4, scope: !615)
!620 = !DILocation(line: 148, column: 2, scope: !597)
!621 = !DILocation(line: 149, column: 12, scope: !622)
!622 = distinct !DILexicalBlock(scope: !591, file: !3, line: 149, column: 12)
!623 = !DILocation(line: 149, column: 17, scope: !622)
!624 = !DILocation(line: 149, column: 27, scope: !622)
!625 = !DILocation(line: 149, column: 12, scope: !591)
!626 = !DILocation(line: 150, column: 23, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 150, column: 13)
!628 = distinct !DILexicalBlock(scope: !622, file: !3, line: 149, column: 38)
!629 = !DILocation(line: 150, column: 14, scope: !627)
!630 = !DILocation(line: 150, column: 13, scope: !628)
!631 = !DILocation(line: 151, column: 12, scope: !627)
!632 = !DILocation(line: 151, column: 4, scope: !627)
!633 = !DILocation(line: 152, column: 23, scope: !634)
!634 = distinct !DILexicalBlock(scope: !627, file: !3, line: 152, column: 13)
!635 = !DILocation(line: 152, column: 14, scope: !634)
!636 = !DILocation(line: 152, column: 13, scope: !627)
!637 = !DILocation(line: 153, column: 12, scope: !634)
!638 = !DILocation(line: 153, column: 4, scope: !634)
!639 = !DILocation(line: 154, column: 23, scope: !640)
!640 = distinct !DILexicalBlock(scope: !634, file: !3, line: 154, column: 13)
!641 = !DILocation(line: 154, column: 14, scope: !640)
!642 = !DILocation(line: 154, column: 13, scope: !634)
!643 = !DILocation(line: 155, column: 12, scope: !640)
!644 = !DILocation(line: 155, column: 4, scope: !640)
!645 = !DILocation(line: 156, column: 23, scope: !646)
!646 = distinct !DILexicalBlock(scope: !640, file: !3, line: 156, column: 13)
!647 = !DILocation(line: 156, column: 14, scope: !646)
!648 = !DILocation(line: 156, column: 13, scope: !640)
!649 = !DILocation(line: 157, column: 12, scope: !646)
!650 = !DILocation(line: 157, column: 4, scope: !646)
!651 = !DILocation(line: 158, column: 2, scope: !628)
!652 = !DILocation(line: 159, column: 15, scope: !653)
!653 = distinct !DILexicalBlock(scope: !551, file: !3, line: 159, column: 7)
!654 = !DILocation(line: 159, column: 7, scope: !653)
!655 = !DILocation(line: 159, column: 28, scope: !653)
!656 = !DILocation(line: 159, column: 7, scope: !551)
!657 = !DILocation(line: 160, column: 11, scope: !653)
!658 = !DILocation(line: 160, column: 3, scope: !653)
!659 = !DILocation(line: 161, column: 20, scope: !660)
!660 = distinct !DILexicalBlock(scope: !653, file: !3, line: 161, column: 12)
!661 = !DILocation(line: 161, column: 12, scope: !660)
!662 = !DILocation(line: 161, column: 33, scope: !660)
!663 = !DILocation(line: 161, column: 12, scope: !653)
!664 = !DILocation(line: 162, column: 11, scope: !660)
!665 = !DILocation(line: 162, column: 3, scope: !660)
!666 = !DILocation(line: 163, column: 13, scope: !667)
!667 = distinct !DILexicalBlock(scope: !551, file: !3, line: 163, column: 2)
!668 = !DILocation(line: 163, column: 18, scope: !667)
!669 = !DILocation(line: 163, column: 11, scope: !667)
!670 = !DILocation(line: 163, column: 7, scope: !667)
!671 = !DILocation(line: 163, column: 28, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !3, line: 163, column: 2)
!673 = !DILocation(line: 163, column: 2, scope: !667)
!674 = !DILocation(line: 164, column: 16, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 164, column: 6)
!676 = distinct !DILexicalBlock(scope: !672, file: !3, line: 163, column: 53)
!677 = !DILocation(line: 164, column: 21, scope: !675)
!678 = !DILocation(line: 164, column: 32, scope: !675)
!679 = !DILocation(line: 164, column: 8, scope: !675)
!680 = !DILocation(line: 164, column: 40, scope: !675)
!681 = !DILocation(line: 164, column: 47, scope: !675)
!682 = !DILocation(line: 165, column: 14, scope: !675)
!683 = !DILocation(line: 165, column: 19, scope: !675)
!684 = !DILocation(line: 165, column: 30, scope: !675)
!685 = !DILocation(line: 165, column: 6, scope: !675)
!686 = !DILocation(line: 165, column: 41, scope: !675)
!687 = !DILocation(line: 164, column: 6, scope: !676)
!688 = !DILocation(line: 166, column: 4, scope: !675)
!689 = !DILocation(line: 167, column: 2, scope: !676)
!690 = !DILocation(line: 163, column: 40, scope: !672)
!691 = !DILocation(line: 163, column: 45, scope: !672)
!692 = !DILocation(line: 163, column: 38, scope: !672)
!693 = !DILocation(line: 163, column: 2, scope: !672)
!694 = distinct !{!694, !673, !695}
!695 = !DILocation(line: 167, column: 2, scope: !667)
!696 = !DILocation(line: 169, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !551, file: !3, line: 169, column: 6)
!698 = !DILocation(line: 169, column: 10, scope: !697)
!699 = !DILocation(line: 169, column: 6, scope: !551)
!700 = !DILocation(line: 170, column: 43, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !3, line: 169, column: 19)
!702 = !DILocation(line: 170, column: 50, scope: !701)
!703 = !DILocation(line: 170, column: 3, scope: !701)
!704 = !DILocation(line: 171, column: 3, scope: !701)
!705 = !DILocation(line: 172, column: 3, scope: !701)
!706 = !DILocation(line: 175, column: 22, scope: !551)
!707 = !DILocation(line: 175, column: 9, scope: !551)
!708 = !DILocation(line: 175, column: 7, scope: !551)
!709 = !DILocation(line: 177, column: 10, scope: !551)
!710 = !DILocation(line: 177, column: 2, scope: !551)
!711 = !DILocation(line: 178, column: 1, scope: !551)
!712 = distinct !DISubprogram(name: "copyresidue", scope: !3, file: !3, line: 180, type: !713, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!713 = !DISubroutineType(types: !714)
!714 = !{!7, !7}
!715 = !DILocalVariable(name: "res", arg: 1, scope: !712, file: !3, line: 180, type: !7)
!716 = !DILocation(line: 180, column: 36, scope: !712)
!717 = !DILocalVariable(name: "a", scope: !712, file: !3, line: 182, type: !16)
!718 = !DILocation(line: 182, column: 6, scope: !712)
!719 = !DILocalVariable(name: "b", scope: !712, file: !3, line: 182, type: !16)
!720 = !DILocation(line: 182, column: 9, scope: !712)
!721 = !DILocalVariable(name: "c", scope: !712, file: !3, line: 182, type: !16)
!722 = !DILocation(line: 182, column: 12, scope: !712)
!723 = !DILocalVariable(name: "i", scope: !712, file: !3, line: 182, type: !16)
!724 = !DILocation(line: 182, column: 15, scope: !712)
!725 = !DILocalVariable(name: "aip", scope: !712, file: !3, line: 183, type: !220)
!726 = !DILocation(line: 183, column: 7, scope: !712)
!727 = !DILocalVariable(name: "nres", scope: !712, file: !3, line: 184, type: !7)
!728 = !DILocation(line: 184, column: 13, scope: !712)
!729 = !DILocalVariable(name: "ap", scope: !712, file: !3, line: 185, type: !193)
!730 = !DILocation(line: 185, column: 11, scope: !712)
!731 = !DILocalVariable(name: "anp", scope: !712, file: !3, line: 186, type: !221)
!732 = !DILocation(line: 186, column: 9, scope: !712)
!733 = !DILocalVariable(name: "rnp", scope: !712, file: !3, line: 186, type: !221)
!734 = !DILocation(line: 186, column: 15, scope: !712)
!735 = !DILocalVariable(name: "bp", scope: !712, file: !3, line: 187, type: !175)
!736 = !DILocation(line: 187, column: 13, scope: !712)
!737 = !DILocalVariable(name: "cp", scope: !712, file: !3, line: 188, type: !182)
!738 = !DILocation(line: 188, column: 12, scope: !712)
!739 = !DILocation(line: 190, column: 26, scope: !740)
!740 = distinct !DILexicalBlock(scope: !712, file: !3, line: 190, column: 5)
!741 = !DILocation(line: 190, column: 13, scope: !740)
!742 = !DILocation(line: 190, column: 11, scope: !740)
!743 = !DILocation(line: 191, column: 3, scope: !740)
!744 = !DILocation(line: 190, column: 5, scope: !712)
!745 = !DILocation(line: 193, column: 37, scope: !746)
!746 = distinct !DILexicalBlock(scope: !740, file: !3, line: 192, column: 2)
!747 = !DILocation(line: 193, column: 42, scope: !746)
!748 = !DILocation(line: 193, column: 3, scope: !746)
!749 = !DILocation(line: 194, column: 3, scope: !746)
!750 = !DILocation(line: 195, column: 3, scope: !746)
!751 = !DILocation(line: 198, column: 32, scope: !752)
!752 = distinct !DILexicalBlock(scope: !712, file: !3, line: 198, column: 6)
!753 = !DILocation(line: 198, column: 37, scope: !752)
!754 = !DILocation(line: 198, column: 45, scope: !752)
!755 = !DILocation(line: 198, column: 25, scope: !752)
!756 = !DILocation(line: 198, column: 13, scope: !752)
!757 = !DILocation(line: 198, column: 11, scope: !752)
!758 = !DILocation(line: 199, column: 3, scope: !752)
!759 = !DILocation(line: 198, column: 6, scope: !712)
!760 = !DILocation(line: 201, column: 46, scope: !761)
!761 = distinct !DILexicalBlock(scope: !752, file: !3, line: 200, column: 2)
!762 = !DILocation(line: 201, column: 51, scope: !761)
!763 = !DILocation(line: 201, column: 3, scope: !761)
!764 = !DILocation(line: 202, column: 3, scope: !761)
!765 = !DILocation(line: 203, column: 3, scope: !761)
!766 = !DILocation(line: 206, column: 30, scope: !767)
!767 = distinct !DILexicalBlock(scope: !712, file: !3, line: 206, column: 6)
!768 = !DILocation(line: 206, column: 35, scope: !767)
!769 = !DILocation(line: 206, column: 43, scope: !767)
!770 = !DILocation(line: 206, column: 23, scope: !767)
!771 = !DILocation(line: 206, column: 14, scope: !767)
!772 = !DILocation(line: 206, column: 12, scope: !767)
!773 = !DILocation(line: 206, column: 58, scope: !767)
!774 = !DILocation(line: 206, column: 6, scope: !712)
!775 = !DILocation(line: 209, column: 4, scope: !776)
!776 = distinct !DILexicalBlock(scope: !767, file: !3, line: 207, column: 2)
!777 = !DILocation(line: 209, column: 9, scope: !776)
!778 = !DILocation(line: 208, column: 3, scope: !776)
!779 = !DILocation(line: 210, column: 3, scope: !776)
!780 = !DILocation(line: 211, column: 3, scope: !776)
!781 = !DILocation(line: 214, column: 6, scope: !782)
!782 = distinct !DILexicalBlock(scope: !712, file: !3, line: 214, column: 6)
!783 = !DILocation(line: 214, column: 11, scope: !782)
!784 = !DILocation(line: 214, column: 23, scope: !782)
!785 = !DILocation(line: 214, column: 6, scope: !712)
!786 = !DILocation(line: 216, column: 11, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 215, column: 7)
!788 = distinct !DILexicalBlock(scope: !782, file: !3, line: 214, column: 28)
!789 = !DILocation(line: 216, column: 16, scope: !787)
!790 = !DILocation(line: 216, column: 27, scope: !787)
!791 = !DILocation(line: 216, column: 4, scope: !787)
!792 = !DILocation(line: 215, column: 14, scope: !787)
!793 = !DILocation(line: 215, column: 12, scope: !787)
!794 = !DILocation(line: 217, column: 4, scope: !787)
!795 = !DILocation(line: 215, column: 7, scope: !788)
!796 = !DILocation(line: 220, column: 32, scope: !797)
!797 = distinct !DILexicalBlock(scope: !787, file: !3, line: 218, column: 3)
!798 = !DILocation(line: 220, column: 37, scope: !797)
!799 = !DILocation(line: 219, column: 4, scope: !797)
!800 = !DILocation(line: 221, column: 4, scope: !797)
!801 = !DILocation(line: 222, column: 4, scope: !797)
!802 = !DILocation(line: 224, column: 2, scope: !788)
!803 = !DILocation(line: 225, column: 6, scope: !782)
!804 = !DILocation(line: 227, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !712, file: !3, line: 227, column: 6)
!806 = !DILocation(line: 227, column: 11, scope: !805)
!807 = !DILocation(line: 227, column: 21, scope: !805)
!808 = !DILocation(line: 227, column: 6, scope: !712)
!809 = !DILocation(line: 229, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 228, column: 7)
!811 = distinct !DILexicalBlock(scope: !805, file: !3, line: 227, column: 26)
!812 = !DILocation(line: 229, column: 16, scope: !810)
!813 = !DILocation(line: 229, column: 25, scope: !810)
!814 = !DILocation(line: 229, column: 4, scope: !810)
!815 = !DILocation(line: 228, column: 14, scope: !810)
!816 = !DILocation(line: 228, column: 12, scope: !810)
!817 = !DILocation(line: 230, column: 4, scope: !810)
!818 = !DILocation(line: 228, column: 7, scope: !811)
!819 = !DILocation(line: 233, column: 32, scope: !820)
!820 = distinct !DILexicalBlock(scope: !810, file: !3, line: 231, column: 3)
!821 = !DILocation(line: 233, column: 37, scope: !820)
!822 = !DILocation(line: 232, column: 4, scope: !820)
!823 = !DILocation(line: 234, column: 4, scope: !820)
!824 = !DILocation(line: 235, column: 4, scope: !820)
!825 = !DILocation(line: 237, column: 2, scope: !811)
!826 = !DILocation(line: 238, column: 6, scope: !805)
!827 = !DILocation(line: 240, column: 2, scope: !712)
!828 = !DILocation(line: 240, column: 8, scope: !712)
!829 = !DILocation(line: 240, column: 15, scope: !712)
!830 = !DILocation(line: 242, column: 32, scope: !712)
!831 = !DILocation(line: 242, column: 37, scope: !712)
!832 = !DILocation(line: 242, column: 25, scope: !712)
!833 = !DILocation(line: 242, column: 47, scope: !712)
!834 = !DILocation(line: 242, column: 18, scope: !712)
!835 = !DILocation(line: 242, column: 6, scope: !712)
!836 = !DILocation(line: 243, column: 6, scope: !837)
!837 = distinct !DILexicalBlock(scope: !712, file: !3, line: 243, column: 6)
!838 = !DILocation(line: 243, column: 10, scope: !837)
!839 = !DILocation(line: 243, column: 6, scope: !712)
!840 = !DILocation(line: 244, column: 12, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 243, column: 19)
!842 = !DILocation(line: 244, column: 3, scope: !841)
!843 = !DILocation(line: 246, column: 3, scope: !841)
!844 = !DILocation(line: 248, column: 10, scope: !712)
!845 = !DILocation(line: 248, column: 15, scope: !712)
!846 = !DILocation(line: 248, column: 20, scope: !712)
!847 = !DILocation(line: 248, column: 2, scope: !712)
!848 = !DILocation(line: 249, column: 20, scope: !712)
!849 = !DILocation(line: 249, column: 2, scope: !712)
!850 = !DILocation(line: 249, column: 8, scope: !712)
!851 = !DILocation(line: 249, column: 18, scope: !712)
!852 = !DILocation(line: 251, column: 32, scope: !712)
!853 = !DILocation(line: 251, column: 37, scope: !712)
!854 = !DILocation(line: 251, column: 25, scope: !712)
!855 = !DILocation(line: 251, column: 45, scope: !712)
!856 = !DILocation(line: 251, column: 18, scope: !712)
!857 = !DILocation(line: 251, column: 6, scope: !712)
!858 = !DILocation(line: 252, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !712, file: !3, line: 252, column: 6)
!860 = !DILocation(line: 252, column: 10, scope: !859)
!861 = !DILocation(line: 252, column: 6, scope: !712)
!862 = !DILocation(line: 253, column: 12, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !3, line: 252, column: 19)
!864 = !DILocation(line: 253, column: 3, scope: !863)
!865 = !DILocation(line: 254, column: 3, scope: !863)
!866 = !DILocation(line: 256, column: 10, scope: !712)
!867 = !DILocation(line: 256, column: 15, scope: !712)
!868 = !DILocation(line: 256, column: 20, scope: !712)
!869 = !DILocation(line: 256, column: 2, scope: !712)
!870 = !DILocation(line: 257, column: 18, scope: !712)
!871 = !DILocation(line: 257, column: 2, scope: !712)
!872 = !DILocation(line: 257, column: 8, scope: !712)
!873 = !DILocation(line: 257, column: 16, scope: !712)
!874 = !DILocation(line: 259, column: 16, scope: !712)
!875 = !DILocation(line: 259, column: 21, scope: !712)
!876 = !DILocation(line: 259, column: 2, scope: !712)
!877 = !DILocation(line: 259, column: 8, scope: !712)
!878 = !DILocation(line: 259, column: 14, scope: !712)
!879 = !DILocation(line: 260, column: 2, scope: !712)
!880 = !DILocation(line: 260, column: 8, scope: !712)
!881 = !DILocation(line: 260, column: 18, scope: !712)
!882 = !DILocation(line: 261, column: 2, scope: !712)
!883 = !DILocation(line: 261, column: 8, scope: !712)
!884 = !DILocation(line: 261, column: 17, scope: !712)
!885 = !DILocation(line: 262, column: 17, scope: !712)
!886 = !DILocation(line: 262, column: 22, scope: !712)
!887 = !DILocation(line: 262, column: 2, scope: !712)
!888 = !DILocation(line: 262, column: 8, scope: !712)
!889 = !DILocation(line: 262, column: 15, scope: !712)
!890 = !DILocation(line: 263, column: 2, scope: !712)
!891 = !DILocation(line: 263, column: 8, scope: !712)
!892 = !DILocation(line: 263, column: 17, scope: !712)
!893 = !DILocation(line: 264, column: 35, scope: !712)
!894 = !DILocation(line: 264, column: 21, scope: !712)
!895 = !DILocation(line: 264, column: 2, scope: !712)
!896 = !DILocation(line: 264, column: 8, scope: !712)
!897 = !DILocation(line: 264, column: 19, scope: !712)
!898 = !DILocation(line: 265, column: 22, scope: !712)
!899 = !DILocation(line: 265, column: 27, scope: !712)
!900 = !DILocation(line: 265, column: 2, scope: !712)
!901 = !DILocation(line: 265, column: 8, scope: !712)
!902 = !DILocation(line: 265, column: 20, scope: !712)
!903 = !DILocation(line: 266, column: 21, scope: !712)
!904 = !DILocation(line: 266, column: 2, scope: !712)
!905 = !DILocation(line: 266, column: 8, scope: !712)
!906 = !DILocation(line: 266, column: 19, scope: !712)
!907 = !DILocation(line: 267, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !712, file: !3, line: 267, column: 2)
!909 = !DILocation(line: 267, column: 7, scope: !908)
!910 = !DILocation(line: 267, column: 14, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 267, column: 2)
!912 = !DILocation(line: 267, column: 18, scope: !911)
!913 = !DILocation(line: 267, column: 23, scope: !911)
!914 = !DILocation(line: 267, column: 16, scope: !911)
!915 = !DILocation(line: 267, column: 2, scope: !908)
!916 = !DILocation(line: 268, column: 32, scope: !917)
!917 = distinct !DILexicalBlock(scope: !911, file: !3, line: 267, column: 41)
!918 = !DILocation(line: 268, column: 37, scope: !917)
!919 = !DILocation(line: 268, column: 49, scope: !917)
!920 = !DILocation(line: 268, column: 3, scope: !917)
!921 = !DILocation(line: 268, column: 9, scope: !917)
!922 = !DILocation(line: 268, column: 21, scope: !917)
!923 = !DILocation(line: 268, column: 30, scope: !917)
!924 = !DILocation(line: 269, column: 32, scope: !917)
!925 = !DILocation(line: 269, column: 37, scope: !917)
!926 = !DILocation(line: 269, column: 49, scope: !917)
!927 = !DILocation(line: 269, column: 3, scope: !917)
!928 = !DILocation(line: 269, column: 9, scope: !917)
!929 = !DILocation(line: 269, column: 21, scope: !917)
!930 = !DILocation(line: 269, column: 30, scope: !917)
!931 = !DILocation(line: 270, column: 2, scope: !917)
!932 = !DILocation(line: 267, column: 37, scope: !911)
!933 = !DILocation(line: 267, column: 2, scope: !911)
!934 = distinct !{!934, !915, !935}
!935 = !DILocation(line: 270, column: 2, scope: !908)
!936 = !DILocation(line: 271, column: 20, scope: !712)
!937 = !DILocation(line: 271, column: 25, scope: !712)
!938 = !DILocation(line: 271, column: 2, scope: !712)
!939 = !DILocation(line: 271, column: 8, scope: !712)
!940 = !DILocation(line: 271, column: 18, scope: !712)
!941 = !DILocation(line: 272, column: 19, scope: !712)
!942 = !DILocation(line: 272, column: 2, scope: !712)
!943 = !DILocation(line: 272, column: 8, scope: !712)
!944 = !DILocation(line: 272, column: 17, scope: !712)
!945 = !DILocation(line: 273, column: 12, scope: !946)
!946 = distinct !DILexicalBlock(scope: !712, file: !3, line: 273, column: 2)
!947 = !DILocation(line: 273, column: 18, scope: !946)
!948 = !DILocation(line: 273, column: 10, scope: !946)
!949 = !DILocation(line: 273, column: 30, scope: !946)
!950 = !DILocation(line: 273, column: 7, scope: !946)
!951 = !DILocation(line: 273, column: 35, scope: !952)
!952 = distinct !DILexicalBlock(scope: !946, file: !3, line: 273, column: 2)
!953 = !DILocation(line: 273, column: 39, scope: !952)
!954 = !DILocation(line: 273, column: 44, scope: !952)
!955 = !DILocation(line: 273, column: 37, scope: !952)
!956 = !DILocation(line: 273, column: 2, scope: !946)
!957 = !DILocation(line: 274, column: 10, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 274, column: 3)
!959 = distinct !DILexicalBlock(scope: !952, file: !3, line: 273, column: 66)
!960 = !DILocation(line: 274, column: 8, scope: !958)
!961 = !DILocation(line: 274, column: 15, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 274, column: 3)
!963 = !DILocation(line: 274, column: 17, scope: !962)
!964 = !DILocation(line: 274, column: 3, scope: !958)
!965 = !DILocation(line: 275, column: 22, scope: !962)
!966 = !DILocation(line: 275, column: 27, scope: !962)
!967 = !DILocation(line: 275, column: 37, scope: !962)
!968 = !DILocation(line: 275, column: 41, scope: !962)
!969 = !DILocation(line: 275, column: 49, scope: !962)
!970 = !DILocation(line: 275, column: 4, scope: !962)
!971 = !DILocation(line: 275, column: 8, scope: !962)
!972 = !DILocation(line: 275, column: 16, scope: !962)
!973 = !DILocation(line: 275, column: 20, scope: !962)
!974 = !DILocation(line: 274, column: 23, scope: !962)
!975 = !DILocation(line: 274, column: 3, scope: !962)
!976 = distinct !{!976, !964, !977}
!977 = !DILocation(line: 275, column: 51, scope: !958)
!978 = !DILocation(line: 276, column: 16, scope: !959)
!979 = !DILocation(line: 276, column: 21, scope: !959)
!980 = !DILocation(line: 276, column: 31, scope: !959)
!981 = !DILocation(line: 276, column: 35, scope: !959)
!982 = !DILocation(line: 276, column: 3, scope: !959)
!983 = !DILocation(line: 276, column: 7, scope: !959)
!984 = !DILocation(line: 276, column: 14, scope: !959)
!985 = !DILocation(line: 277, column: 2, scope: !959)
!986 = !DILocation(line: 273, column: 56, scope: !952)
!987 = !DILocation(line: 273, column: 62, scope: !952)
!988 = !DILocation(line: 273, column: 2, scope: !952)
!989 = distinct !{!989, !956, !990}
!990 = !DILocation(line: 277, column: 2, scope: !946)
!991 = !DILocation(line: 278, column: 17, scope: !712)
!992 = !DILocation(line: 278, column: 22, scope: !712)
!993 = !DILocation(line: 278, column: 2, scope: !712)
!994 = !DILocation(line: 278, column: 8, scope: !712)
!995 = !DILocation(line: 278, column: 15, scope: !712)
!996 = !DILocation(line: 279, column: 21, scope: !712)
!997 = !DILocation(line: 279, column: 26, scope: !712)
!998 = !DILocation(line: 279, column: 2, scope: !712)
!999 = !DILocation(line: 279, column: 8, scope: !712)
!1000 = !DILocation(line: 279, column: 19, scope: !712)
!1001 = !DILocation(line: 280, column: 19, scope: !712)
!1002 = !DILocation(line: 280, column: 24, scope: !712)
!1003 = !DILocation(line: 280, column: 2, scope: !712)
!1004 = !DILocation(line: 280, column: 8, scope: !712)
!1005 = !DILocation(line: 280, column: 17, scope: !712)
!1006 = !DILocation(line: 281, column: 19, scope: !712)
!1007 = !DILocation(line: 281, column: 2, scope: !712)
!1008 = !DILocation(line: 281, column: 8, scope: !712)
!1009 = !DILocation(line: 281, column: 17, scope: !712)
!1010 = !DILocation(line: 282, column: 6, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !712, file: !3, line: 282, column: 6)
!1012 = !DILocation(line: 282, column: 11, scope: !1011)
!1013 = !DILocation(line: 282, column: 6, scope: !712)
!1014 = !DILocation(line: 283, column: 10, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 283, column: 3)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 282, column: 21)
!1017 = !DILocation(line: 283, column: 8, scope: !1015)
!1018 = !DILocation(line: 283, column: 15, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 283, column: 3)
!1020 = !DILocation(line: 283, column: 19, scope: !1019)
!1021 = !DILocation(line: 283, column: 24, scope: !1019)
!1022 = !DILocation(line: 283, column: 17, scope: !1019)
!1023 = !DILocation(line: 283, column: 3, scope: !1015)
!1024 = !DILocation(line: 284, column: 26, scope: !1019)
!1025 = !DILocation(line: 284, column: 31, scope: !1019)
!1026 = !DILocation(line: 284, column: 41, scope: !1019)
!1027 = !DILocation(line: 284, column: 4, scope: !1019)
!1028 = !DILocation(line: 284, column: 10, scope: !1019)
!1029 = !DILocation(line: 284, column: 20, scope: !1019)
!1030 = !DILocation(line: 284, column: 24, scope: !1019)
!1031 = !DILocation(line: 283, column: 35, scope: !1019)
!1032 = !DILocation(line: 283, column: 3, scope: !1019)
!1033 = distinct !{!1033, !1023, !1034}
!1034 = !DILocation(line: 284, column: 43, scope: !1015)
!1035 = !DILocation(line: 285, column: 2, scope: !1016)
!1036 = !DILocation(line: 286, column: 10, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 286, column: 3)
!1038 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 285, column: 7)
!1039 = !DILocation(line: 286, column: 8, scope: !1037)
!1040 = !DILocation(line: 286, column: 15, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 286, column: 3)
!1042 = !DILocation(line: 286, column: 19, scope: !1041)
!1043 = !DILocation(line: 286, column: 24, scope: !1041)
!1044 = !DILocation(line: 286, column: 17, scope: !1041)
!1045 = !DILocation(line: 286, column: 3, scope: !1037)
!1046 = !DILocation(line: 287, column: 26, scope: !1041)
!1047 = !DILocation(line: 287, column: 4, scope: !1041)
!1048 = !DILocation(line: 287, column: 10, scope: !1041)
!1049 = !DILocation(line: 287, column: 20, scope: !1041)
!1050 = !DILocation(line: 287, column: 24, scope: !1041)
!1051 = !DILocation(line: 286, column: 35, scope: !1041)
!1052 = !DILocation(line: 286, column: 3, scope: !1041)
!1053 = distinct !{!1053, !1045, !1054}
!1054 = !DILocation(line: 287, column: 26, scope: !1037)
!1055 = !DILocation(line: 289, column: 18, scope: !712)
!1056 = !DILocation(line: 289, column: 2, scope: !712)
!1057 = !DILocation(line: 289, column: 8, scope: !712)
!1058 = !DILocation(line: 289, column: 16, scope: !712)
!1059 = !DILocation(line: 290, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !712, file: !3, line: 290, column: 2)
!1061 = !DILocation(line: 290, column: 7, scope: !1060)
!1062 = !DILocation(line: 290, column: 14, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 290, column: 2)
!1064 = !DILocation(line: 290, column: 18, scope: !1063)
!1065 = !DILocation(line: 290, column: 23, scope: !1063)
!1066 = !DILocation(line: 290, column: 16, scope: !1063)
!1067 = !DILocation(line: 290, column: 2, scope: !1060)
!1068 = !DILocation(line: 292, column: 32, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 290, column: 38)
!1070 = !DILocation(line: 292, column: 37, scope: !1069)
!1071 = !DILocation(line: 292, column: 45, scope: !1069)
!1072 = !DILocation(line: 292, column: 48, scope: !1069)
!1073 = !DILocation(line: 292, column: 24, scope: !1069)
!1074 = !DILocation(line: 292, column: 60, scope: !1069)
!1075 = !DILocation(line: 292, column: 17, scope: !1069)
!1076 = !DILocation(line: 292, column: 7, scope: !1069)
!1077 = !DILocation(line: 293, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 293, column: 7)
!1079 = !DILocation(line: 293, column: 11, scope: !1078)
!1080 = !DILocation(line: 293, column: 7, scope: !1069)
!1081 = !DILocation(line: 294, column: 13, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 293, column: 20)
!1083 = !DILocation(line: 294, column: 4, scope: !1082)
!1084 = !DILocation(line: 295, column: 4, scope: !1082)
!1085 = !DILocation(line: 297, column: 11, scope: !1069)
!1086 = !DILocation(line: 297, column: 16, scope: !1069)
!1087 = !DILocation(line: 297, column: 21, scope: !1069)
!1088 = !DILocation(line: 297, column: 30, scope: !1069)
!1089 = !DILocation(line: 297, column: 34, scope: !1069)
!1090 = !DILocation(line: 297, column: 3, scope: !1069)
!1091 = !DILocation(line: 298, column: 24, scope: !1069)
!1092 = !DILocation(line: 298, column: 3, scope: !1069)
!1093 = !DILocation(line: 298, column: 7, scope: !1069)
!1094 = !DILocation(line: 298, column: 11, scope: !1069)
!1095 = !DILocation(line: 298, column: 22, scope: !1069)
!1096 = !DILocation(line: 299, column: 3, scope: !1069)
!1097 = !DILocation(line: 299, column: 7, scope: !1069)
!1098 = !DILocation(line: 299, column: 11, scope: !1069)
!1099 = !DILocation(line: 299, column: 22, scope: !1069)
!1100 = !DILocation(line: 300, column: 20, scope: !1069)
!1101 = !DILocation(line: 300, column: 25, scope: !1069)
!1102 = !DILocation(line: 300, column: 34, scope: !1069)
!1103 = !DILocation(line: 300, column: 38, scope: !1069)
!1104 = !DILocation(line: 300, column: 3, scope: !1069)
!1105 = !DILocation(line: 300, column: 7, scope: !1069)
!1106 = !DILocation(line: 300, column: 11, scope: !1069)
!1107 = !DILocation(line: 300, column: 18, scope: !1069)
!1108 = !DILocation(line: 301, column: 24, scope: !1069)
!1109 = !DILocation(line: 301, column: 29, scope: !1069)
!1110 = !DILocation(line: 301, column: 38, scope: !1069)
!1111 = !DILocation(line: 301, column: 42, scope: !1069)
!1112 = !DILocation(line: 301, column: 3, scope: !1069)
!1113 = !DILocation(line: 301, column: 7, scope: !1069)
!1114 = !DILocation(line: 301, column: 11, scope: !1069)
!1115 = !DILocation(line: 301, column: 22, scope: !1069)
!1116 = !DILocation(line: 302, column: 11, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 302, column: 3)
!1118 = !DILocation(line: 302, column: 9, scope: !1117)
!1119 = !DILocation(line: 302, column: 16, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 302, column: 3)
!1121 = !DILocation(line: 302, column: 18, scope: !1120)
!1122 = !DILocation(line: 302, column: 3, scope: !1117)
!1123 = !DILocation(line: 303, column: 25, scope: !1120)
!1124 = !DILocation(line: 303, column: 30, scope: !1120)
!1125 = !DILocation(line: 303, column: 38, scope: !1120)
!1126 = !DILocation(line: 303, column: 41, scope: !1120)
!1127 = !DILocation(line: 303, column: 51, scope: !1120)
!1128 = !DILocation(line: 303, column: 4, scope: !1120)
!1129 = !DILocation(line: 303, column: 7, scope: !1120)
!1130 = !DILocation(line: 303, column: 10, scope: !1120)
!1131 = !DILocation(line: 303, column: 20, scope: !1120)
!1132 = !DILocation(line: 303, column: 23, scope: !1120)
!1133 = !DILocation(line: 302, column: 38, scope: !1120)
!1134 = !DILocation(line: 302, column: 3, scope: !1120)
!1135 = distinct !{!1135, !1122, !1136}
!1136 = !DILocation(line: 303, column: 52, scope: !1117)
!1137 = !DILocation(line: 304, column: 24, scope: !1069)
!1138 = !DILocation(line: 304, column: 3, scope: !1069)
!1139 = !DILocation(line: 304, column: 7, scope: !1069)
!1140 = !DILocation(line: 304, column: 11, scope: !1069)
!1141 = !DILocation(line: 304, column: 22, scope: !1069)
!1142 = !DILocation(line: 305, column: 24, scope: !1069)
!1143 = !DILocation(line: 305, column: 29, scope: !1069)
!1144 = !DILocation(line: 305, column: 38, scope: !1069)
!1145 = !DILocation(line: 305, column: 42, scope: !1069)
!1146 = !DILocation(line: 305, column: 3, scope: !1069)
!1147 = !DILocation(line: 305, column: 7, scope: !1069)
!1148 = !DILocation(line: 305, column: 11, scope: !1069)
!1149 = !DILocation(line: 305, column: 22, scope: !1069)
!1150 = !DILocation(line: 306, column: 24, scope: !1069)
!1151 = !DILocation(line: 306, column: 29, scope: !1069)
!1152 = !DILocation(line: 306, column: 38, scope: !1069)
!1153 = !DILocation(line: 306, column: 42, scope: !1069)
!1154 = !DILocation(line: 306, column: 3, scope: !1069)
!1155 = !DILocation(line: 306, column: 7, scope: !1069)
!1156 = !DILocation(line: 306, column: 11, scope: !1069)
!1157 = !DILocation(line: 306, column: 22, scope: !1069)
!1158 = !DILocation(line: 307, column: 24, scope: !1069)
!1159 = !DILocation(line: 307, column: 29, scope: !1069)
!1160 = !DILocation(line: 307, column: 38, scope: !1069)
!1161 = !DILocation(line: 307, column: 42, scope: !1069)
!1162 = !DILocation(line: 307, column: 3, scope: !1069)
!1163 = !DILocation(line: 307, column: 7, scope: !1069)
!1164 = !DILocation(line: 307, column: 11, scope: !1069)
!1165 = !DILocation(line: 307, column: 22, scope: !1069)
!1166 = !DILocation(line: 308, column: 24, scope: !1069)
!1167 = !DILocation(line: 308, column: 29, scope: !1069)
!1168 = !DILocation(line: 308, column: 38, scope: !1069)
!1169 = !DILocation(line: 308, column: 42, scope: !1069)
!1170 = !DILocation(line: 308, column: 3, scope: !1069)
!1171 = !DILocation(line: 308, column: 7, scope: !1069)
!1172 = !DILocation(line: 308, column: 11, scope: !1069)
!1173 = !DILocation(line: 308, column: 22, scope: !1069)
!1174 = !DILocation(line: 309, column: 3, scope: !1069)
!1175 = !DILocation(line: 309, column: 7, scope: !1069)
!1176 = !DILocation(line: 309, column: 11, scope: !1069)
!1177 = !DILocation(line: 309, column: 22, scope: !1069)
!1178 = !DILocation(line: 310, column: 24, scope: !1069)
!1179 = !DILocation(line: 310, column: 29, scope: !1069)
!1180 = !DILocation(line: 310, column: 38, scope: !1069)
!1181 = !DILocation(line: 310, column: 42, scope: !1069)
!1182 = !DILocation(line: 310, column: 3, scope: !1069)
!1183 = !DILocation(line: 310, column: 7, scope: !1069)
!1184 = !DILocation(line: 310, column: 11, scope: !1069)
!1185 = !DILocation(line: 310, column: 22, scope: !1069)
!1186 = !DILocation(line: 311, column: 24, scope: !1069)
!1187 = !DILocation(line: 311, column: 29, scope: !1069)
!1188 = !DILocation(line: 311, column: 38, scope: !1069)
!1189 = !DILocation(line: 311, column: 42, scope: !1069)
!1190 = !DILocation(line: 311, column: 3, scope: !1069)
!1191 = !DILocation(line: 311, column: 7, scope: !1069)
!1192 = !DILocation(line: 311, column: 11, scope: !1069)
!1193 = !DILocation(line: 311, column: 22, scope: !1069)
!1194 = !DILocation(line: 312, column: 24, scope: !1069)
!1195 = !DILocation(line: 312, column: 29, scope: !1069)
!1196 = !DILocation(line: 312, column: 38, scope: !1069)
!1197 = !DILocation(line: 312, column: 42, scope: !1069)
!1198 = !DILocation(line: 312, column: 3, scope: !1069)
!1199 = !DILocation(line: 312, column: 7, scope: !1069)
!1200 = !DILocation(line: 312, column: 11, scope: !1069)
!1201 = !DILocation(line: 312, column: 22, scope: !1069)
!1202 = !DILocation(line: 313, column: 24, scope: !1069)
!1203 = !DILocation(line: 313, column: 29, scope: !1069)
!1204 = !DILocation(line: 313, column: 38, scope: !1069)
!1205 = !DILocation(line: 313, column: 42, scope: !1069)
!1206 = !DILocation(line: 313, column: 3, scope: !1069)
!1207 = !DILocation(line: 313, column: 7, scope: !1069)
!1208 = !DILocation(line: 313, column: 11, scope: !1069)
!1209 = !DILocation(line: 313, column: 22, scope: !1069)
!1210 = !DILocation(line: 314, column: 24, scope: !1069)
!1211 = !DILocation(line: 314, column: 29, scope: !1069)
!1212 = !DILocation(line: 314, column: 38, scope: !1069)
!1213 = !DILocation(line: 314, column: 42, scope: !1069)
!1214 = !DILocation(line: 314, column: 3, scope: !1069)
!1215 = !DILocation(line: 314, column: 7, scope: !1069)
!1216 = !DILocation(line: 314, column: 11, scope: !1069)
!1217 = !DILocation(line: 314, column: 22, scope: !1069)
!1218 = !DILocation(line: 315, column: 3, scope: !1069)
!1219 = !DILocation(line: 315, column: 7, scope: !1069)
!1220 = !DILocation(line: 315, column: 11, scope: !1069)
!1221 = !DILocation(line: 315, column: 22, scope: !1069)
!1222 = !DILocation(line: 316, column: 24, scope: !1069)
!1223 = !DILocation(line: 316, column: 29, scope: !1069)
!1224 = !DILocation(line: 316, column: 38, scope: !1069)
!1225 = !DILocation(line: 316, column: 42, scope: !1069)
!1226 = !DILocation(line: 316, column: 3, scope: !1069)
!1227 = !DILocation(line: 316, column: 7, scope: !1069)
!1228 = !DILocation(line: 316, column: 11, scope: !1069)
!1229 = !DILocation(line: 316, column: 22, scope: !1069)
!1230 = !DILocation(line: 317, column: 24, scope: !1069)
!1231 = !DILocation(line: 317, column: 29, scope: !1069)
!1232 = !DILocation(line: 317, column: 38, scope: !1069)
!1233 = !DILocation(line: 317, column: 42, scope: !1069)
!1234 = !DILocation(line: 317, column: 3, scope: !1069)
!1235 = !DILocation(line: 317, column: 7, scope: !1069)
!1236 = !DILocation(line: 317, column: 11, scope: !1069)
!1237 = !DILocation(line: 317, column: 22, scope: !1069)
!1238 = !DILocation(line: 318, column: 24, scope: !1069)
!1239 = !DILocation(line: 318, column: 29, scope: !1069)
!1240 = !DILocation(line: 318, column: 38, scope: !1069)
!1241 = !DILocation(line: 318, column: 42, scope: !1069)
!1242 = !DILocation(line: 318, column: 3, scope: !1069)
!1243 = !DILocation(line: 318, column: 7, scope: !1069)
!1244 = !DILocation(line: 318, column: 11, scope: !1069)
!1245 = !DILocation(line: 318, column: 22, scope: !1069)
!1246 = !DILocation(line: 319, column: 24, scope: !1069)
!1247 = !DILocation(line: 319, column: 29, scope: !1069)
!1248 = !DILocation(line: 319, column: 38, scope: !1069)
!1249 = !DILocation(line: 319, column: 42, scope: !1069)
!1250 = !DILocation(line: 319, column: 3, scope: !1069)
!1251 = !DILocation(line: 319, column: 7, scope: !1069)
!1252 = !DILocation(line: 319, column: 11, scope: !1069)
!1253 = !DILocation(line: 319, column: 22, scope: !1069)
!1254 = !DILocation(line: 320, column: 2, scope: !1069)
!1255 = !DILocation(line: 290, column: 34, scope: !1063)
!1256 = !DILocation(line: 290, column: 2, scope: !1063)
!1257 = distinct !{!1257, !1067, !1258}
!1258 = !DILocation(line: 320, column: 2, scope: !1060)
!1259 = !DILocation(line: 322, column: 10, scope: !712)
!1260 = !DILocation(line: 322, column: 2, scope: !712)
!1261 = !DILocation(line: 323, column: 1, scope: !712)
!1262 = distinct !DISubprogram(name: "copystrand", scope: !3, file: !3, line: 325, type: !1263, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!47, !47}
!1265 = !DILocalVariable(name: "str", arg: 1, scope: !1262, file: !3, line: 325, type: !47)
!1266 = !DILocation(line: 325, column: 33, scope: !1262)
!1267 = !DILocalVariable(name: "newstrand", scope: !1262, file: !3, line: 327, type: !47)
!1268 = !DILocation(line: 327, column: 12, scope: !1262)
!1269 = !DILocalVariable(name: "namebuf", scope: !1262, file: !3, line: 328, type: !221)
!1270 = !DILocation(line: 328, column: 9, scope: !1262)
!1271 = !DILocalVariable(name: "resctr", scope: !1262, file: !3, line: 329, type: !16)
!1272 = !DILocation(line: 329, column: 6, scope: !1262)
!1273 = !DILocation(line: 331, column: 33, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 331, column: 5)
!1275 = !DILocation(line: 331, column: 19, scope: !1274)
!1276 = !DILocation(line: 331, column: 17, scope: !1274)
!1277 = !DILocation(line: 331, column: 64, scope: !1274)
!1278 = !DILocation(line: 331, column: 5, scope: !1262)
!1279 = !DILocation(line: 332, column: 36, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 331, column: 72)
!1281 = !DILocation(line: 332, column: 41, scope: !1280)
!1282 = !DILocation(line: 332, column: 3, scope: !1280)
!1283 = !DILocation(line: 333, column: 3, scope: !1280)
!1284 = !DILocation(line: 334, column: 3, scope: !1280)
!1285 = !DILocation(line: 338, column: 11, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 337, column: 13)
!1287 = !DILocation(line: 338, column: 16, scope: !1286)
!1288 = !DILocation(line: 338, column: 28, scope: !1286)
!1289 = !DILocation(line: 338, column: 3, scope: !1286)
!1290 = !DILocation(line: 337, column: 39, scope: !1286)
!1291 = !DILocation(line: 337, column: 15, scope: !1286)
!1292 = !DILocation(line: 337, column: 26, scope: !1286)
!1293 = !DILocation(line: 337, column: 37, scope: !1286)
!1294 = !DILocation(line: 338, column: 56, scope: !1286)
!1295 = !DILocation(line: 337, column: 13, scope: !1262)
!1296 = !DILocation(line: 340, column: 17, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 339, column: 2)
!1298 = !DILocation(line: 341, column: 17, scope: !1297)
!1299 = !DILocation(line: 344, column: 46, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 344, column: 6)
!1301 = !DILocation(line: 344, column: 51, scope: !1300)
!1302 = !DILocation(line: 344, column: 38, scope: !1300)
!1303 = !DILocation(line: 344, column: 66, scope: !1300)
!1304 = !DILocation(line: 345, column: 3, scope: !1300)
!1305 = !DILocation(line: 344, column: 28, scope: !1300)
!1306 = !DILocation(line: 344, column: 16, scope: !1300)
!1307 = !DILocation(line: 345, column: 24, scope: !1300)
!1308 = !DILocation(line: 344, column: 6, scope: !1262)
!1309 = !DILocation(line: 347, column: 36, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 346, column: 2)
!1311 = !DILocation(line: 347, column: 41, scope: !1310)
!1312 = !DILocation(line: 347, column: 3, scope: !1310)
!1313 = !DILocation(line: 348, column: 3, scope: !1310)
!1314 = !DILocation(line: 349, column: 3, scope: !1310)
!1315 = !DILocation(line: 351, column: 28, scope: !1262)
!1316 = !DILocation(line: 351, column: 2, scope: !1262)
!1317 = !DILocation(line: 351, column: 13, scope: !1262)
!1318 = !DILocation(line: 351, column: 26, scope: !1262)
!1319 = !DILocation(line: 352, column: 9, scope: !1262)
!1320 = !DILocation(line: 352, column: 20, scope: !1262)
!1321 = !DILocation(line: 352, column: 34, scope: !1262)
!1322 = !DILocation(line: 352, column: 39, scope: !1262)
!1323 = !DILocation(line: 352, column: 2, scope: !1262)
!1324 = !DILocation(line: 353, column: 27, scope: !1262)
!1325 = !DILocation(line: 353, column: 32, scope: !1262)
!1326 = !DILocation(line: 353, column: 2, scope: !1262)
!1327 = !DILocation(line: 353, column: 13, scope: !1262)
!1328 = !DILocation(line: 353, column: 25, scope: !1262)
!1329 = !DILocation(line: 354, column: 22, scope: !1262)
!1330 = !DILocation(line: 354, column: 27, scope: !1262)
!1331 = !DILocation(line: 354, column: 2, scope: !1262)
!1332 = !DILocation(line: 354, column: 13, scope: !1262)
!1333 = !DILocation(line: 354, column: 20, scope: !1262)
!1334 = !DILocation(line: 355, column: 2, scope: !1262)
!1335 = !DILocation(line: 355, column: 13, scope: !1262)
!1336 = !DILocation(line: 355, column: 24, scope: !1262)
!1337 = !DILocation(line: 356, column: 2, scope: !1262)
!1338 = !DILocation(line: 356, column: 13, scope: !1262)
!1339 = !DILocation(line: 356, column: 20, scope: !1262)
!1340 = !DILocation(line: 357, column: 27, scope: !1262)
!1341 = !DILocation(line: 357, column: 32, scope: !1262)
!1342 = !DILocation(line: 357, column: 2, scope: !1262)
!1343 = !DILocation(line: 357, column: 13, scope: !1262)
!1344 = !DILocation(line: 357, column: 25, scope: !1262)
!1345 = !DILocation(line: 358, column: 26, scope: !1262)
!1346 = !DILocation(line: 358, column: 31, scope: !1262)
!1347 = !DILocation(line: 358, column: 2, scope: !1262)
!1348 = !DILocation(line: 358, column: 13, scope: !1262)
!1349 = !DILocation(line: 358, column: 24, scope: !1262)
!1350 = !DILocation(line: 359, column: 22, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 359, column: 9)
!1352 = !DILocation(line: 359, column: 15, scope: !1351)
!1353 = !DILocation(line: 359, column: 27, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 359, column: 9)
!1355 = !DILocation(line: 359, column: 36, scope: !1354)
!1356 = !DILocation(line: 359, column: 41, scope: !1354)
!1357 = !DILocation(line: 359, column: 34, scope: !1354)
!1358 = !DILocation(line: 359, column: 9, scope: !1351)
!1359 = !DILocation(line: 361, column: 17, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 359, column: 65)
!1361 = !DILocation(line: 361, column: 22, scope: !1360)
!1362 = !DILocation(line: 361, column: 34, scope: !1360)
!1363 = !DILocation(line: 361, column: 4, scope: !1360)
!1364 = !DILocation(line: 360, column: 17, scope: !1360)
!1365 = !DILocation(line: 360, column: 28, scope: !1360)
!1366 = !DILocation(line: 360, column: 40, scope: !1360)
!1367 = !DILocation(line: 360, column: 49, scope: !1360)
!1368 = !DILocation(line: 362, column: 61, scope: !1360)
!1369 = !DILocation(line: 362, column: 17, scope: !1360)
!1370 = !DILocation(line: 362, column: 28, scope: !1360)
!1371 = !DILocation(line: 362, column: 40, scope: !1360)
!1372 = !DILocation(line: 362, column: 50, scope: !1360)
!1373 = !DILocation(line: 362, column: 59, scope: !1360)
!1374 = !DILocation(line: 363, column: 22, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 363, column: 22)
!1376 = !DILocation(line: 363, column: 29, scope: !1375)
!1377 = !DILocation(line: 363, column: 22, scope: !1360)
!1378 = !DILocation(line: 365, column: 5, scope: !1375)
!1379 = !DILocation(line: 365, column: 16, scope: !1375)
!1380 = !DILocation(line: 365, column: 28, scope: !1375)
!1381 = !DILocation(line: 364, column: 25, scope: !1375)
!1382 = !DILocation(line: 364, column: 36, scope: !1375)
!1383 = !DILocation(line: 364, column: 48, scope: !1375)
!1384 = !DILocation(line: 364, column: 55, scope: !1375)
!1385 = !DILocation(line: 364, column: 62, scope: !1375)
!1386 = !DILocation(line: 364, column: 69, scope: !1375)
!1387 = !DILocation(line: 366, column: 9, scope: !1360)
!1388 = !DILocation(line: 359, column: 60, scope: !1354)
!1389 = !DILocation(line: 359, column: 9, scope: !1354)
!1390 = distinct !{!1390, !1358, !1391}
!1391 = !DILocation(line: 366, column: 9, scope: !1351)
!1392 = !DILocation(line: 367, column: 10, scope: !1262)
!1393 = !DILocation(line: 367, column: 2, scope: !1262)
!1394 = !DILocation(line: 368, column: 1, scope: !1262)
!1395 = distinct !DISubprogram(name: "copymolecule", scope: !3, file: !3, line: 370, type: !1396, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!222, !222}
!1398 = !DILocalVariable(name: "mol", arg: 1, scope: !1395, file: !3, line: 370, type: !222)
!1399 = !DILocation(line: 370, column: 39, scope: !1395)
!1400 = !DILocalVariable(name: "row", scope: !1395, file: !3, line: 372, type: !16)
!1401 = !DILocation(line: 372, column: 17, scope: !1395)
!1402 = !DILocalVariable(name: "col", scope: !1395, file: !3, line: 372, type: !16)
!1403 = !DILocation(line: 372, column: 22, scope: !1395)
!1404 = !DILocalVariable(name: "strptr", scope: !1395, file: !3, line: 373, type: !47)
!1405 = !DILocation(line: 373, column: 26, scope: !1395)
!1406 = !DILocalVariable(name: "newstr", scope: !1395, file: !3, line: 373, type: !47)
!1407 = !DILocation(line: 373, column: 35, scope: !1395)
!1408 = !DILocalVariable(name: "nextstr", scope: !1395, file: !3, line: 373, type: !47)
!1409 = !DILocation(line: 373, column: 44, scope: !1395)
!1410 = !DILocalVariable(name: "newmol", scope: !1395, file: !3, line: 374, type: !222)
!1411 = !DILocation(line: 374, column: 26, scope: !1395)
!1412 = !DILocation(line: 376, column: 25, scope: !1395)
!1413 = !DILocation(line: 376, column: 9, scope: !1395)
!1414 = !DILocation(line: 378, column: 39, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 378, column: 12)
!1416 = !DILocation(line: 378, column: 23, scope: !1415)
!1417 = !DILocation(line: 378, column: 21, scope: !1415)
!1418 = !DILocation(line: 378, column: 72, scope: !1415)
!1419 = !DILocation(line: 378, column: 12, scope: !1395)
!1420 = !DILocation(line: 379, column: 17, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 378, column: 80)
!1422 = !DILocation(line: 380, column: 17, scope: !1421)
!1423 = !DILocation(line: 381, column: 17, scope: !1421)
!1424 = !DILocation(line: 384, column: 30, scope: !1395)
!1425 = !DILocation(line: 384, column: 35, scope: !1395)
!1426 = !DILocation(line: 384, column: 9, scope: !1395)
!1427 = !DILocation(line: 384, column: 17, scope: !1395)
!1428 = !DILocation(line: 384, column: 28, scope: !1395)
!1429 = !DILocation(line: 385, column: 31, scope: !1395)
!1430 = !DILocation(line: 385, column: 36, scope: !1395)
!1431 = !DILocation(line: 385, column: 9, scope: !1395)
!1432 = !DILocation(line: 385, column: 17, scope: !1395)
!1433 = !DILocation(line: 385, column: 29, scope: !1395)
!1434 = !DILocation(line: 386, column: 28, scope: !1395)
!1435 = !DILocation(line: 386, column: 33, scope: !1395)
!1436 = !DILocation(line: 386, column: 9, scope: !1395)
!1437 = !DILocation(line: 386, column: 17, scope: !1395)
!1438 = !DILocation(line: 386, column: 26, scope: !1395)
!1439 = !DILocation(line: 387, column: 28, scope: !1395)
!1440 = !DILocation(line: 387, column: 33, scope: !1395)
!1441 = !DILocation(line: 387, column: 9, scope: !1395)
!1442 = !DILocation(line: 387, column: 17, scope: !1395)
!1443 = !DILocation(line: 387, column: 26, scope: !1395)
!1444 = !DILocation(line: 389, column: 14, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 389, column: 14)
!1446 = !DILocation(line: 389, column: 19, scope: !1445)
!1447 = !DILocation(line: 389, column: 25, scope: !1445)
!1448 = !DILocation(line: 389, column: 14, scope: !1395)
!1449 = !DILocation(line: 390, column: 43, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 389, column: 35)
!1451 = !DILocation(line: 390, column: 48, scope: !1450)
!1452 = !DILocation(line: 390, column: 33, scope: !1450)
!1453 = !DILocation(line: 390, column: 17, scope: !1450)
!1454 = !DILocation(line: 390, column: 25, scope: !1450)
!1455 = !DILocation(line: 390, column: 31, scope: !1450)
!1456 = !DILocation(line: 391, column: 9, scope: !1450)
!1457 = !DILocation(line: 393, column: 17, scope: !1445)
!1458 = !DILocation(line: 393, column: 25, scope: !1445)
!1459 = !DILocation(line: 393, column: 31, scope: !1445)
!1460 = !DILocation(line: 395, column: 19, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 395, column: 9)
!1462 = !DILocation(line: 395, column: 15, scope: !1461)
!1463 = !DILocation(line: 395, column: 24, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 395, column: 9)
!1465 = !DILocation(line: 395, column: 28, scope: !1464)
!1466 = !DILocation(line: 395, column: 9, scope: !1461)
!1467 = !DILocation(line: 396, column: 27, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 396, column: 17)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 395, column: 42)
!1470 = !DILocation(line: 396, column: 23, scope: !1468)
!1471 = !DILocation(line: 396, column: 32, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 396, column: 17)
!1473 = !DILocation(line: 396, column: 36, scope: !1472)
!1474 = !DILocation(line: 396, column: 17, scope: !1468)
!1475 = !DILocation(line: 397, column: 53, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 396, column: 50)
!1477 = !DILocation(line: 397, column: 58, scope: !1476)
!1478 = !DILocation(line: 397, column: 66, scope: !1476)
!1479 = !DILocation(line: 397, column: 71, scope: !1476)
!1480 = !DILocation(line: 397, column: 25, scope: !1476)
!1481 = !DILocation(line: 397, column: 33, scope: !1476)
!1482 = !DILocation(line: 397, column: 41, scope: !1476)
!1483 = !DILocation(line: 397, column: 46, scope: !1476)
!1484 = !DILocation(line: 397, column: 51, scope: !1476)
!1485 = !DILocation(line: 398, column: 17, scope: !1476)
!1486 = !DILocation(line: 396, column: 45, scope: !1472)
!1487 = !DILocation(line: 396, column: 17, scope: !1472)
!1488 = distinct !{!1488, !1474, !1489}
!1489 = !DILocation(line: 398, column: 17, scope: !1468)
!1490 = !DILocation(line: 399, column: 9, scope: !1469)
!1491 = !DILocation(line: 395, column: 37, scope: !1464)
!1492 = !DILocation(line: 395, column: 9, scope: !1464)
!1493 = distinct !{!1493, !1466, !1494}
!1494 = !DILocation(line: 399, column: 9, scope: !1461)
!1495 = !DILocation(line: 401, column: 18, scope: !1395)
!1496 = !DILocation(line: 401, column: 23, scope: !1395)
!1497 = !DILocation(line: 401, column: 16, scope: !1395)
!1498 = !DILocation(line: 402, column: 14, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 402, column: 14)
!1500 = !DILocation(line: 402, column: 21, scope: !1499)
!1501 = !DILocation(line: 402, column: 14, scope: !1395)
!1502 = !DILocation(line: 403, column: 38, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 402, column: 30)
!1504 = !DILocation(line: 403, column: 26, scope: !1503)
!1505 = !DILocation(line: 403, column: 24, scope: !1503)
!1506 = !DILocation(line: 404, column: 38, scope: !1503)
!1507 = !DILocation(line: 404, column: 17, scope: !1503)
!1508 = !DILocation(line: 404, column: 25, scope: !1503)
!1509 = !DILocation(line: 404, column: 36, scope: !1503)
!1510 = !DILocation(line: 405, column: 37, scope: !1503)
!1511 = !DILocation(line: 405, column: 17, scope: !1503)
!1512 = !DILocation(line: 405, column: 25, scope: !1503)
!1513 = !DILocation(line: 405, column: 35, scope: !1503)
!1514 = !DILocation(line: 406, column: 26, scope: !1503)
!1515 = !DILocation(line: 406, column: 34, scope: !1503)
!1516 = !DILocation(line: 406, column: 24, scope: !1503)
!1517 = !DILocation(line: 407, column: 9, scope: !1503)
!1518 = !DILocation(line: 409, column: 9, scope: !1395)
!1519 = !DILocation(line: 409, column: 17, scope: !1395)
!1520 = !DILocation(line: 409, column: 24, scope: !1395)
!1521 = !DILocation(line: 410, column: 39, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 409, column: 34)
!1523 = !DILocation(line: 410, column: 27, scope: !1522)
!1524 = !DILocation(line: 410, column: 25, scope: !1522)
!1525 = !DILocation(line: 411, column: 22, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 411, column: 22)
!1527 = !DILocation(line: 411, column: 22, scope: !1522)
!1528 = !DILocation(line: 412, column: 42, scope: !1526)
!1529 = !DILocation(line: 412, column: 25, scope: !1526)
!1530 = !DILocation(line: 412, column: 33, scope: !1526)
!1531 = !DILocation(line: 412, column: 40, scope: !1526)
!1532 = !DILocation(line: 413, column: 39, scope: !1522)
!1533 = !DILocation(line: 413, column: 17, scope: !1522)
!1534 = !DILocation(line: 413, column: 26, scope: !1522)
!1535 = !DILocation(line: 413, column: 37, scope: !1522)
!1536 = !DILocation(line: 414, column: 26, scope: !1522)
!1537 = !DILocation(line: 414, column: 24, scope: !1522)
!1538 = !DILocation(line: 415, column: 26, scope: !1522)
!1539 = !DILocation(line: 415, column: 34, scope: !1522)
!1540 = !DILocation(line: 415, column: 24, scope: !1522)
!1541 = distinct !{!1541, !1518, !1542}
!1542 = !DILocation(line: 416, column: 9, scope: !1395)
!1543 = !DILocation(line: 418, column: 25, scope: !1395)
!1544 = !DILocation(line: 418, column: 9, scope: !1395)
!1545 = !DILocation(line: 419, column: 17, scope: !1395)
!1546 = !DILocation(line: 419, column: 9, scope: !1395)
!1547 = !DILocation(line: 420, column: 1, scope: !1395)
!1548 = distinct !DISubprogram(name: "read_reslib_header", scope: !3, file: !3, line: 492, type: !1549, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!224, !221, !1551, !1551, !1551, !1551, !221}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!1552 = !DILocalVariable(name: "reslib", arg: 1, scope: !1548, file: !3, line: 492, type: !221)
!1553 = !DILocation(line: 492, column: 43, scope: !1548)
!1554 = !DILocalVariable(name: "pfp", arg: 2, scope: !1548, file: !3, line: 493, type: !1551)
!1555 = !DILocation(line: 493, column: 9, scope: !1548)
!1556 = !DILocalVariable(name: "bfp", arg: 3, scope: !1548, file: !3, line: 493, type: !1551)
!1557 = !DILocation(line: 493, column: 21, scope: !1548)
!1558 = !DILocalVariable(name: "qfp", arg: 4, scope: !1548, file: !3, line: 493, type: !1551)
!1559 = !DILocation(line: 493, column: 33, scope: !1548)
!1560 = !DILocalVariable(name: "cfp", arg: 5, scope: !1548, file: !3, line: 493, type: !1551)
!1561 = !DILocation(line: 493, column: 45, scope: !1548)
!1562 = !DILocalVariable(name: "offname", arg: 6, scope: !1548, file: !3, line: 493, type: !221)
!1563 = !DILocation(line: 493, column: 55, scope: !1548)
!1564 = !DILocalVariable(name: "rfp", scope: !1548, file: !3, line: 495, type: !363)
!1565 = !DILocation(line: 495, column: 8, scope: !1548)
!1566 = !DILocalVariable(name: "rlp", scope: !1548, file: !3, line: 496, type: !224)
!1567 = !DILocation(line: 496, column: 12, scope: !1548)
!1568 = !DILocalVariable(name: "nw", scope: !1548, file: !3, line: 497, type: !16)
!1569 = !DILocation(line: 497, column: 6, scope: !1548)
!1570 = !DILocalVariable(name: "nsize", scope: !1548, file: !3, line: 497, type: !16)
!1571 = !DILocation(line: 497, column: 10, scope: !1548)
!1572 = !DILocalVariable(name: "np", scope: !1548, file: !3, line: 498, type: !221)
!1573 = !DILocation(line: 498, column: 8, scope: !1548)
!1574 = !DILocalVariable(name: "line", scope: !1548, file: !3, line: 499, type: !1575)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !1576)
!1576 = !{!1577}
!1577 = !DISubrange(count: 128)
!1578 = !DILocation(line: 499, column: 7, scope: !1548)
!1579 = !DILocalVariable(name: "keyword", scope: !1548, file: !3, line: 499, type: !419)
!1580 = !DILocation(line: 499, column: 20, scope: !1548)
!1581 = !DILocalVariable(name: "value", scope: !1548, file: !3, line: 499, type: !1582)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 800, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: 100)
!1585 = !DILocation(line: 499, column: 35, scope: !1548)
!1586 = !DILocalVariable(name: "newname", scope: !1548, file: !3, line: 499, type: !1582)
!1587 = !DILocation(line: 499, column: 49, scope: !1548)
!1588 = !DILocalVariable(name: "fname", scope: !1548, file: !3, line: 500, type: !264)
!1589 = !DILocation(line: 500, column: 7, scope: !1548)
!1590 = !DILocation(line: 502, column: 14, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 502, column: 6)
!1592 = !DILocation(line: 502, column: 6, scope: !1591)
!1593 = !DILocation(line: 502, column: 31, scope: !1591)
!1594 = !DILocation(line: 502, column: 6, scope: !1548)
!1595 = !DILocation(line: 503, column: 12, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 502, column: 40)
!1597 = !DILocation(line: 503, column: 39, scope: !1596)
!1598 = !DILocation(line: 503, column: 3, scope: !1596)
!1599 = !DILocation(line: 504, column: 12, scope: !1596)
!1600 = !DILocation(line: 504, column: 21, scope: !1596)
!1601 = !DILocation(line: 504, column: 3, scope: !1596)
!1602 = !DILocation(line: 505, column: 22, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 505, column: 7)
!1604 = !DILocation(line: 505, column: 15, scope: !1603)
!1605 = !DILocation(line: 505, column: 13, scope: !1603)
!1606 = !DILocation(line: 505, column: 37, scope: !1603)
!1607 = !DILocation(line: 505, column: 7, scope: !1596)
!1608 = !DILocation(line: 506, column: 47, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 505, column: 46)
!1610 = !DILocation(line: 506, column: 4, scope: !1609)
!1611 = !DILocation(line: 507, column: 4, scope: !1609)
!1612 = !DILocation(line: 509, column: 2, scope: !1596)
!1613 = !DILocation(line: 510, column: 13, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 509, column: 7)
!1615 = !DILocation(line: 510, column: 21, scope: !1614)
!1616 = !DILocation(line: 510, column: 3, scope: !1614)
!1617 = !DILocation(line: 511, column: 22, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 511, column: 7)
!1619 = !DILocation(line: 511, column: 15, scope: !1618)
!1620 = !DILocation(line: 511, column: 13, scope: !1618)
!1621 = !DILocation(line: 511, column: 37, scope: !1618)
!1622 = !DILocation(line: 511, column: 7, scope: !1614)
!1623 = !DILocation(line: 512, column: 47, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 511, column: 46)
!1625 = !DILocation(line: 512, column: 4, scope: !1624)
!1626 = !DILocation(line: 513, column: 4, scope: !1624)
!1627 = !DILocation(line: 517, column: 28, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 517, column: 6)
!1629 = !DILocation(line: 517, column: 14, scope: !1628)
!1630 = !DILocation(line: 517, column: 12, scope: !1628)
!1631 = !DILocation(line: 517, column: 59, scope: !1628)
!1632 = !DILocation(line: 517, column: 6, scope: !1548)
!1633 = !DILocation(line: 518, column: 36, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 517, column: 68)
!1635 = !DILocation(line: 518, column: 3, scope: !1634)
!1636 = !DILocation(line: 519, column: 3, scope: !1634)
!1637 = !DILocation(line: 520, column: 3, scope: !1634)
!1638 = !DILocation(line: 523, column: 18, scope: !1548)
!1639 = !DILocation(line: 523, column: 10, scope: !1548)
!1640 = !DILocation(line: 523, column: 27, scope: !1548)
!1641 = !DILocation(line: 523, column: 8, scope: !1548)
!1642 = !DILocation(line: 524, column: 31, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 524, column: 6)
!1644 = !DILocation(line: 524, column: 37, scope: !1643)
!1645 = !DILocation(line: 524, column: 23, scope: !1643)
!1646 = !DILocation(line: 524, column: 11, scope: !1643)
!1647 = !DILocation(line: 524, column: 58, scope: !1643)
!1648 = !DILocation(line: 524, column: 6, scope: !1548)
!1649 = !DILocation(line: 525, column: 45, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 524, column: 67)
!1651 = !DILocation(line: 525, column: 3, scope: !1650)
!1652 = !DILocation(line: 526, column: 3, scope: !1650)
!1653 = !DILocation(line: 527, column: 3, scope: !1650)
!1654 = !DILocation(line: 529, column: 10, scope: !1548)
!1655 = !DILocation(line: 529, column: 14, scope: !1548)
!1656 = !DILocation(line: 529, column: 2, scope: !1548)
!1657 = !DILocation(line: 530, column: 17, scope: !1548)
!1658 = !DILocation(line: 530, column: 2, scope: !1548)
!1659 = !DILocation(line: 530, column: 7, scope: !1548)
!1660 = !DILocation(line: 530, column: 15, scope: !1548)
!1661 = !DILocation(line: 531, column: 12, scope: !1548)
!1662 = !DILocation(line: 531, column: 10, scope: !1548)
!1663 = !DILocation(line: 532, column: 17, scope: !1548)
!1664 = !DILocation(line: 532, column: 2, scope: !1548)
!1665 = !DILocation(line: 532, column: 7, scope: !1548)
!1666 = !DILocation(line: 532, column: 15, scope: !1548)
!1667 = !DILocation(line: 533, column: 2, scope: !1548)
!1668 = !DILocation(line: 533, column: 7, scope: !1548)
!1669 = !DILocation(line: 533, column: 17, scope: !1548)
!1670 = !DILocation(line: 534, column: 2, scope: !1548)
!1671 = !DILocation(line: 534, column: 7, scope: !1548)
!1672 = !DILocation(line: 534, column: 21, scope: !1548)
!1673 = !DILocation(line: 535, column: 2, scope: !1548)
!1674 = !DILocation(line: 535, column: 7, scope: !1548)
!1675 = !DILocation(line: 535, column: 16, scope: !1548)
!1676 = !DILocation(line: 537, column: 3, scope: !1548)
!1677 = !DILocation(line: 537, column: 7, scope: !1548)
!1678 = !DILocation(line: 538, column: 3, scope: !1548)
!1679 = !DILocation(line: 538, column: 7, scope: !1548)
!1680 = !DILocation(line: 539, column: 3, scope: !1548)
!1681 = !DILocation(line: 539, column: 7, scope: !1548)
!1682 = !DILocation(line: 540, column: 3, scope: !1548)
!1683 = !DILocation(line: 540, column: 7, scope: !1548)
!1684 = !DILocation(line: 541, column: 3, scope: !1548)
!1685 = !DILocation(line: 541, column: 11, scope: !1548)
!1686 = !DILocation(line: 543, column: 15, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 543, column: 7)
!1688 = !DILocation(line: 543, column: 7, scope: !1687)
!1689 = !DILocation(line: 543, column: 32, scope: !1687)
!1690 = !DILocation(line: 543, column: 7, scope: !1548)
!1691 = !DILocation(line: 544, column: 3, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 543, column: 41)
!1693 = !DILocation(line: 544, column: 17, scope: !1692)
!1694 = !DILocation(line: 544, column: 39, scope: !1692)
!1695 = !DILocation(line: 544, column: 10, scope: !1692)
!1696 = !DILocation(line: 545, column: 8, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 545, column: 8)
!1698 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 544, column: 46)
!1699 = !DILocation(line: 545, column: 14, scope: !1697)
!1700 = !DILocation(line: 545, column: 8, scope: !1698)
!1701 = !DILocation(line: 546, column: 5, scope: !1697)
!1702 = distinct !{!1702, !1691, !1703}
!1703 = !DILocation(line: 616, column: 3, scope: !1692)
!1704 = !DILocation(line: 547, column: 23, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 547, column: 8)
!1706 = !DILocation(line: 547, column: 40, scope: !1705)
!1707 = !DILocation(line: 547, column: 49, scope: !1705)
!1708 = !DILocation(line: 547, column: 15, scope: !1705)
!1709 = !DILocation(line: 547, column: 13, scope: !1705)
!1710 = !DILocation(line: 548, column: 5, scope: !1705)
!1711 = !DILocation(line: 547, column: 8, scope: !1698)
!1712 = !DILocation(line: 550, column: 5, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 549, column: 4)
!1714 = !DILocation(line: 551, column: 14, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 551, column: 14)
!1716 = !DILocation(line: 551, column: 17, scope: !1715)
!1717 = !DILocation(line: 551, column: 14, scope: !1705)
!1718 = !DILocation(line: 552, column: 9, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 551, column: 23)
!1720 = !DILocation(line: 553, column: 5, scope: !1719)
!1721 = !DILocation(line: 554, column: 22, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 554, column: 14)
!1723 = !DILocation(line: 554, column: 14, scope: !1722)
!1724 = !DILocation(line: 554, column: 40, scope: !1722)
!1725 = !DILocation(line: 554, column: 14, scope: !1715)
!1726 = !DILocation(line: 555, column: 17, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 555, column: 9)
!1728 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 554, column: 46)
!1729 = !DILocation(line: 555, column: 9, scope: !1727)
!1730 = !DILocation(line: 555, column: 32, scope: !1727)
!1731 = !DILocation(line: 555, column: 9, scope: !1728)
!1732 = !DILocation(line: 556, column: 6, scope: !1727)
!1733 = !DILocation(line: 556, column: 11, scope: !1727)
!1734 = !DILocation(line: 556, column: 21, scope: !1727)
!1735 = !DILocation(line: 557, column: 22, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 557, column: 14)
!1737 = !DILocation(line: 557, column: 14, scope: !1736)
!1738 = !DILocation(line: 557, column: 37, scope: !1736)
!1739 = !DILocation(line: 557, column: 14, scope: !1727)
!1740 = !DILocation(line: 558, column: 6, scope: !1736)
!1741 = !DILocation(line: 558, column: 11, scope: !1736)
!1742 = !DILocation(line: 558, column: 21, scope: !1736)
!1743 = !DILocation(line: 559, column: 22, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 559, column: 14)
!1745 = !DILocation(line: 559, column: 14, scope: !1744)
!1746 = !DILocation(line: 559, column: 36, scope: !1744)
!1747 = !DILocation(line: 559, column: 14, scope: !1736)
!1748 = !DILocation(line: 560, column: 6, scope: !1744)
!1749 = !DILocation(line: 560, column: 11, scope: !1744)
!1750 = !DILocation(line: 560, column: 21, scope: !1744)
!1751 = !DILocation(line: 562, column: 10, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 561, column: 9)
!1753 = !DILocation(line: 563, column: 6, scope: !1752)
!1754 = !DILocation(line: 565, column: 4, scope: !1728)
!1755 = !DILocation(line: 565, column: 22, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 565, column: 14)
!1757 = !DILocation(line: 565, column: 14, scope: !1756)
!1758 = !DILocation(line: 565, column: 44, scope: !1756)
!1759 = !DILocation(line: 565, column: 14, scope: !1722)
!1760 = !DILocation(line: 566, column: 17, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 566, column: 9)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 565, column: 50)
!1763 = !DILocation(line: 566, column: 9, scope: !1761)
!1764 = !DILocation(line: 566, column: 35, scope: !1761)
!1765 = !DILocation(line: 566, column: 9, scope: !1762)
!1766 = !DILocation(line: 567, column: 6, scope: !1761)
!1767 = !DILocation(line: 567, column: 11, scope: !1761)
!1768 = !DILocation(line: 567, column: 25, scope: !1761)
!1769 = !DILocation(line: 568, column: 22, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 568, column: 14)
!1771 = !DILocation(line: 568, column: 14, scope: !1770)
!1772 = !DILocation(line: 568, column: 37, scope: !1770)
!1773 = !DILocation(line: 568, column: 14, scope: !1761)
!1774 = !DILocation(line: 569, column: 6, scope: !1770)
!1775 = !DILocation(line: 569, column: 11, scope: !1770)
!1776 = !DILocation(line: 569, column: 25, scope: !1770)
!1777 = !DILocation(line: 571, column: 10, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 570, column: 9)
!1779 = !DILocation(line: 572, column: 6, scope: !1778)
!1780 = !DILocation(line: 574, column: 4, scope: !1762)
!1781 = !DILocation(line: 574, column: 22, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 574, column: 14)
!1783 = !DILocation(line: 574, column: 14, scope: !1782)
!1784 = !DILocation(line: 574, column: 39, scope: !1782)
!1785 = !DILocation(line: 574, column: 14, scope: !1756)
!1786 = !DILocation(line: 575, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 574, column: 45)
!1788 = !DILocation(line: 575, column: 22, scope: !1787)
!1789 = !DILocation(line: 575, column: 5, scope: !1787)
!1790 = !DILocation(line: 576, column: 4, scope: !1787)
!1791 = !DILocation(line: 576, column: 22, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 576, column: 14)
!1793 = !DILocation(line: 576, column: 14, scope: !1792)
!1794 = !DILocation(line: 576, column: 39, scope: !1792)
!1795 = !DILocation(line: 576, column: 14, scope: !1782)
!1796 = !DILocation(line: 577, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 576, column: 45)
!1798 = !DILocation(line: 577, column: 22, scope: !1797)
!1799 = !DILocation(line: 577, column: 5, scope: !1797)
!1800 = !DILocation(line: 578, column: 25, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 578, column: 9)
!1802 = !DILocation(line: 578, column: 18, scope: !1801)
!1803 = !DILocation(line: 578, column: 12, scope: !1801)
!1804 = !DILocation(line: 578, column: 16, scope: !1801)
!1805 = !DILocation(line: 578, column: 40, scope: !1801)
!1806 = !DILocation(line: 578, column: 9, scope: !1797)
!1807 = !DILocation(line: 579, column: 37, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 578, column: 49)
!1809 = !DILocation(line: 579, column: 6, scope: !1808)
!1810 = !DILocation(line: 580, column: 6, scope: !1808)
!1811 = !DILocation(line: 582, column: 10, scope: !1808)
!1812 = !DILocation(line: 583, column: 6, scope: !1808)
!1813 = !DILocation(line: 585, column: 4, scope: !1797)
!1814 = !DILocation(line: 585, column: 22, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 585, column: 14)
!1816 = !DILocation(line: 585, column: 14, scope: !1815)
!1817 = !DILocation(line: 585, column: 39, scope: !1815)
!1818 = !DILocation(line: 585, column: 14, scope: !1792)
!1819 = !DILocation(line: 586, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 585, column: 45)
!1821 = !DILocation(line: 586, column: 22, scope: !1820)
!1822 = !DILocation(line: 586, column: 5, scope: !1820)
!1823 = !DILocation(line: 587, column: 25, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 587, column: 9)
!1825 = !DILocation(line: 587, column: 18, scope: !1824)
!1826 = !DILocation(line: 587, column: 12, scope: !1824)
!1827 = !DILocation(line: 587, column: 16, scope: !1824)
!1828 = !DILocation(line: 587, column: 40, scope: !1824)
!1829 = !DILocation(line: 587, column: 9, scope: !1820)
!1830 = !DILocation(line: 588, column: 37, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 587, column: 49)
!1832 = !DILocation(line: 588, column: 6, scope: !1831)
!1833 = !DILocation(line: 589, column: 6, scope: !1831)
!1834 = !DILocation(line: 591, column: 10, scope: !1831)
!1835 = !DILocation(line: 592, column: 6, scope: !1831)
!1836 = !DILocation(line: 594, column: 4, scope: !1820)
!1837 = !DILocation(line: 594, column: 22, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 594, column: 14)
!1839 = !DILocation(line: 594, column: 14, scope: !1838)
!1840 = !DILocation(line: 594, column: 38, scope: !1838)
!1841 = !DILocation(line: 594, column: 14, scope: !1815)
!1842 = !DILocation(line: 595, column: 15, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 594, column: 44)
!1844 = !DILocation(line: 595, column: 22, scope: !1843)
!1845 = !DILocation(line: 595, column: 5, scope: !1843)
!1846 = !DILocation(line: 596, column: 25, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 596, column: 9)
!1848 = !DILocation(line: 596, column: 18, scope: !1847)
!1849 = !DILocation(line: 596, column: 12, scope: !1847)
!1850 = !DILocation(line: 596, column: 16, scope: !1847)
!1851 = !DILocation(line: 596, column: 40, scope: !1847)
!1852 = !DILocation(line: 596, column: 9, scope: !1843)
!1853 = !DILocation(line: 597, column: 36, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 596, column: 49)
!1855 = !DILocation(line: 597, column: 6, scope: !1854)
!1856 = !DILocation(line: 598, column: 6, scope: !1854)
!1857 = !DILocation(line: 600, column: 10, scope: !1854)
!1858 = !DILocation(line: 601, column: 6, scope: !1854)
!1859 = !DILocation(line: 603, column: 4, scope: !1843)
!1860 = !DILocation(line: 603, column: 22, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 603, column: 14)
!1862 = !DILocation(line: 603, column: 14, scope: !1861)
!1863 = !DILocation(line: 603, column: 39, scope: !1861)
!1864 = !DILocation(line: 603, column: 14, scope: !1838)
!1865 = !DILocation(line: 604, column: 15, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 603, column: 45)
!1867 = !DILocation(line: 604, column: 22, scope: !1866)
!1868 = !DILocation(line: 604, column: 5, scope: !1866)
!1869 = !DILocation(line: 605, column: 25, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 605, column: 9)
!1871 = !DILocation(line: 605, column: 18, scope: !1870)
!1872 = !DILocation(line: 605, column: 12, scope: !1870)
!1873 = !DILocation(line: 605, column: 16, scope: !1870)
!1874 = !DILocation(line: 605, column: 40, scope: !1870)
!1875 = !DILocation(line: 605, column: 9, scope: !1866)
!1876 = !DILocation(line: 606, column: 37, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 605, column: 49)
!1878 = !DILocation(line: 606, column: 6, scope: !1877)
!1879 = !DILocation(line: 607, column: 6, scope: !1877)
!1880 = !DILocation(line: 609, column: 10, scope: !1877)
!1881 = !DILocation(line: 610, column: 6, scope: !1877)
!1882 = !DILocation(line: 612, column: 4, scope: !1866)
!1883 = !DILocation(line: 613, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 612, column: 9)
!1885 = !DILocation(line: 614, column: 5, scope: !1884)
!1886 = !DILocation(line: 617, column: 2, scope: !1692)
!1887 = !DILocation(line: 618, column: 13, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 617, column: 7)
!1889 = !DILocation(line: 618, column: 22, scope: !1888)
!1890 = !DILocation(line: 618, column: 3, scope: !1888)
!1891 = !DILocation(line: 543, column: 35, scope: !1687)
!1892 = !DILabel(scope: !1548, name: "clean_up", file: !3, line: 621)
!1893 = !DILocation(line: 621, column: 1, scope: !1548)
!1894 = !DILocation(line: 622, column: 10, scope: !1548)
!1895 = !DILocation(line: 622, column: 2, scope: !1548)
!1896 = !DILocation(line: 623, column: 6, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 623, column: 6)
!1898 = !DILocation(line: 623, column: 10, scope: !1897)
!1899 = !DILocation(line: 623, column: 6, scope: !1548)
!1900 = !DILocation(line: 624, column: 8, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 624, column: 7)
!1902 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 623, column: 19)
!1903 = !DILocation(line: 624, column: 7, scope: !1901)
!1904 = !DILocation(line: 624, column: 7, scope: !1902)
!1905 = !DILocation(line: 624, column: 23, scope: !1901)
!1906 = !DILocation(line: 624, column: 22, scope: !1901)
!1907 = !DILocation(line: 624, column: 14, scope: !1901)
!1908 = !DILocation(line: 625, column: 8, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 625, column: 7)
!1910 = !DILocation(line: 625, column: 7, scope: !1909)
!1911 = !DILocation(line: 625, column: 7, scope: !1902)
!1912 = !DILocation(line: 625, column: 23, scope: !1909)
!1913 = !DILocation(line: 625, column: 22, scope: !1909)
!1914 = !DILocation(line: 625, column: 14, scope: !1909)
!1915 = !DILocation(line: 626, column: 8, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 626, column: 7)
!1917 = !DILocation(line: 626, column: 7, scope: !1916)
!1918 = !DILocation(line: 626, column: 7, scope: !1902)
!1919 = !DILocation(line: 626, column: 23, scope: !1916)
!1920 = !DILocation(line: 626, column: 22, scope: !1916)
!1921 = !DILocation(line: 626, column: 14, scope: !1916)
!1922 = !DILocation(line: 627, column: 8, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 627, column: 7)
!1924 = !DILocation(line: 627, column: 7, scope: !1923)
!1925 = !DILocation(line: 627, column: 7, scope: !1902)
!1926 = !DILocation(line: 627, column: 23, scope: !1923)
!1927 = !DILocation(line: 627, column: 22, scope: !1923)
!1928 = !DILocation(line: 627, column: 14, scope: !1923)
!1929 = !DILocation(line: 628, column: 19, scope: !1902)
!1930 = !DILocation(line: 628, column: 11, scope: !1902)
!1931 = !DILocation(line: 628, column: 26, scope: !1902)
!1932 = !DILocation(line: 628, column: 9, scope: !1902)
!1933 = !DILocation(line: 629, column: 11, scope: !1902)
!1934 = !DILocation(line: 629, column: 17, scope: !1902)
!1935 = !DILocation(line: 629, column: 29, scope: !1902)
!1936 = !DILocation(line: 629, column: 9, scope: !1902)
!1937 = !DILocation(line: 630, column: 29, scope: !1902)
!1938 = !DILocation(line: 630, column: 36, scope: !1902)
!1939 = !DILocation(line: 630, column: 43, scope: !1902)
!1940 = !DILocation(line: 630, column: 3, scope: !1902)
!1941 = !DILocation(line: 631, column: 3, scope: !1902)
!1942 = !DILocation(line: 632, column: 2, scope: !1902)
!1943 = !DILocation(line: 634, column: 10, scope: !1548)
!1944 = !DILocation(line: 634, column: 2, scope: !1548)
!1945 = !DILocation(line: 635, column: 1, scope: !1548)
!1946 = !DILocalVariable(name: "i", scope: !239, file: !3, line: 475, type: !16)
!1947 = !DILocation(line: 475, column: 6, scope: !239)
!1948 = !DILocalVariable(name: "ap", scope: !239, file: !3, line: 476, type: !193)
!1949 = !DILocation(line: 476, column: 10, scope: !239)
!1950 = !DILocation(line: 478, column: 7, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !239, file: !3, line: 478, column: 6)
!1952 = !DILocation(line: 478, column: 6, scope: !239)
!1953 = !DILocation(line: 479, column: 3, scope: !1951)
!1954 = !DILocation(line: 480, column: 7, scope: !239)
!1955 = !DILocation(line: 481, column: 10, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !239, file: !3, line: 481, column: 2)
!1957 = !DILocation(line: 481, column: 21, scope: !1956)
!1958 = !DILocation(line: 481, column: 7, scope: !1956)
!1959 = !DILocation(line: 481, column: 26, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 481, column: 2)
!1961 = !DILocation(line: 481, column: 28, scope: !1960)
!1962 = !DILocation(line: 481, column: 2, scope: !1956)
!1963 = !DILocation(line: 482, column: 17, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 481, column: 51)
!1965 = !DILocation(line: 482, column: 3, scope: !1964)
!1966 = !DILocation(line: 483, column: 30, scope: !1964)
!1967 = !DILocation(line: 483, column: 3, scope: !1964)
!1968 = !DILocation(line: 483, column: 7, scope: !1964)
!1969 = !DILocation(line: 483, column: 18, scope: !1964)
!1970 = !DILocation(line: 484, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 484, column: 7)
!1972 = !DILocation(line: 484, column: 11, scope: !1971)
!1973 = !DILocation(line: 484, column: 22, scope: !1971)
!1974 = !DILocation(line: 484, column: 7, scope: !1964)
!1975 = !DILocation(line: 485, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 484, column: 31)
!1977 = !DILocation(line: 485, column: 4, scope: !1976)
!1978 = !DILocation(line: 487, column: 4, scope: !1976)
!1979 = !DILocation(line: 489, column: 2, scope: !1964)
!1980 = !DILocation(line: 481, column: 41, scope: !1960)
!1981 = !DILocation(line: 481, column: 47, scope: !1960)
!1982 = !DILocation(line: 481, column: 2, scope: !1960)
!1983 = distinct !{!1983, !1962, !1984}
!1984 = !DILocation(line: 489, column: 2, scope: !1956)
!1985 = !DILocation(line: 490, column: 1, scope: !239)
!1986 = distinct !DISubprogram(name: "off2reslib", scope: !3, file: !3, line: 647, type: !1987, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !221, !224}
!1989 = !DILocalVariable(name: "offname", arg: 1, scope: !1986, file: !3, line: 647, type: !221)
!1990 = !DILocation(line: 647, column: 30, scope: !1986)
!1991 = !DILocalVariable(name: "rlp", arg: 2, scope: !1986, file: !3, line: 647, type: !224)
!1992 = !DILocation(line: 647, column: 51, scope: !1986)
!1993 = !DILocalVariable(name: "ap", scope: !1986, file: !3, line: 649, type: !193)
!1994 = !DILocation(line: 649, column: 10, scope: !1986)
!1995 = !DILocalVariable(name: "n_names", scope: !1986, file: !3, line: 650, type: !16)
!1996 = !DILocation(line: 650, column: 8, scope: !1986)
!1997 = !DILocalVariable(name: "n_resnames", scope: !1986, file: !3, line: 650, type: !16)
!1998 = !DILocation(line: 650, column: 17, scope: !1986)
!1999 = !DILocalVariable(name: "i", scope: !1986, file: !3, line: 650, type: !16)
!2000 = !DILocation(line: 650, column: 29, scope: !1986)
!2001 = !DILocalVariable(name: "ires", scope: !1986, file: !3, line: 650, type: !16)
!2002 = !DILocation(line: 650, column: 32, scope: !1986)
!2003 = !DILocalVariable(name: "db", scope: !1986, file: !3, line: 651, type: !2004)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASE", file: !2005, line: 84, baseType: !2006)
!2005 = !DIFile(filename: "./database.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASEt", file: !2005, line: 82, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2005, line: 65, size: 33024, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2014, !2015, !2016, !2020, !2022, !2023, !2024, !2026, !2027, !2028}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "iAccessMode", scope: !2008, file: !2005, line: 66, baseType: !16, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "fDataBase", scope: !2008, file: !2005, line: 67, baseType: !363, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sFileName", scope: !2008, file: !2005, line: 68, baseType: !2013, size: 2048, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !2005, line: 48, baseType: !264)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "iOpenMode", scope: !2008, file: !2005, line: 69, baseType: !16, size: 32, offset: 2176)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefix", scope: !2008, file: !2005, line: 70, baseType: !16, size: 32, offset: 2208)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "saPrefixStack", scope: !2008, file: !2005, line: 71, baseType: !2017, size: 20480, offset: 2240)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2013, size: 20480, elements: !2018)
!2018 = !{!2019}
!2019 = !DISubrange(count: 10)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "bCompactFileAtClose", scope: !2008, file: !2005, line: 72, baseType: !2021, size: 8, offset: 22720)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !2005, line: 47, baseType: !22)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dEntries", scope: !2008, file: !2005, line: 73, baseType: !6, size: 64, offset: 22784)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "iCurrentLine", scope: !2008, file: !2005, line: 74, baseType: !16, size: 32, offset: 22848)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sLookAhead", scope: !2008, file: !2005, line: 75, baseType: !2025, size: 8000, offset: 22880)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8000, elements: !245)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "iLastSequentialOperation", scope: !2008, file: !2005, line: 76, baseType: !16, size: 32, offset: 30880)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sLoopPrefix", scope: !2008, file: !2005, line: 79, baseType: !2013, size: 2048, offset: 30912)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dlEntryLoop", scope: !2008, file: !2005, line: 80, baseType: !16, size: 32, offset: 32960)
!2029 = !DILocation(line: 651, column: 11, scope: !1986)
!2030 = !DILocalVariable(name: "bresult", scope: !1986, file: !3, line: 652, type: !2021)
!2031 = !DILocation(line: 652, column: 7, scope: !1986)
!2032 = !DILocalVariable(name: "typex", scope: !1986, file: !3, line: 653, type: !2033)
!2033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 3200, elements: !1583)
!2034 = !DILocation(line: 653, column: 6, scope: !1986)
!2035 = !DILocalVariable(name: "resx", scope: !1986, file: !3, line: 653, type: !2033)
!2036 = !DILocation(line: 653, column: 20, scope: !1986)
!2037 = !DILocalVariable(name: "flags", scope: !1986, file: !3, line: 653, type: !2033)
!2038 = !DILocation(line: 653, column: 33, scope: !1986)
!2039 = !DILocalVariable(name: "seq", scope: !1986, file: !3, line: 654, type: !2033)
!2040 = !DILocation(line: 654, column: 3, scope: !1986)
!2041 = !DILocalVariable(name: "elmnt", scope: !1986, file: !3, line: 654, type: !2033)
!2042 = !DILocation(line: 654, column: 15, scope: !1986)
!2043 = !DILocalVariable(name: "atom1x", scope: !1986, file: !3, line: 655, type: !2033)
!2044 = !DILocation(line: 655, column: 6, scope: !1986)
!2045 = !DILocalVariable(name: "atom2x", scope: !1986, file: !3, line: 655, type: !2033)
!2046 = !DILocation(line: 655, column: 21, scope: !1986)
!2047 = !DILocalVariable(name: "chg", scope: !1986, file: !3, line: 656, type: !2048)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 6400, elements: !1583)
!2049 = !DILocation(line: 656, column: 9, scope: !1986)
!2050 = !DILocalVariable(name: "x", scope: !1986, file: !3, line: 656, type: !2048)
!2051 = !DILocation(line: 656, column: 21, scope: !1986)
!2052 = !DILocalVariable(name: "y", scope: !1986, file: !3, line: 656, type: !2048)
!2053 = !DILocation(line: 656, column: 31, scope: !1986)
!2054 = !DILocalVariable(name: "z", scope: !1986, file: !3, line: 656, type: !2048)
!2055 = !DILocation(line: 656, column: 41, scope: !1986)
!2056 = !DILocalVariable(name: "a_name", scope: !1986, file: !3, line: 657, type: !2057)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8000, elements: !2058)
!2058 = !{!1584, !2019}
!2059 = !DILocation(line: 657, column: 7, scope: !1986)
!2060 = !DILocalVariable(name: "type", scope: !1986, file: !3, line: 657, type: !2057)
!2061 = !DILocation(line: 657, column: 28, scope: !1986)
!2062 = !DILocalVariable(name: "res_name", scope: !1986, file: !3, line: 657, type: !2057)
!2063 = !DILocation(line: 657, column: 47, scope: !1986)
!2064 = !DILocalVariable(name: "prefix", scope: !1986, file: !3, line: 658, type: !2065)
!2065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2040, elements: !2066)
!2066 = !{!2067}
!2067 = !DISubrange(count: 255)
!2068 = !DILocation(line: 658, column: 7, scope: !1986)
!2069 = !DILocation(line: 660, column: 10, scope: !1986)
!2070 = !DILocation(line: 661, column: 20, scope: !1986)
!2071 = !DILocation(line: 661, column: 7, scope: !1986)
!2072 = !DILocation(line: 661, column: 5, scope: !1986)
!2073 = !DILocation(line: 665, column: 25, scope: !1986)
!2074 = !DILocation(line: 665, column: 52, scope: !1986)
!2075 = !DILocation(line: 665, column: 12, scope: !1986)
!2076 = !DILocation(line: 665, column: 10, scope: !1986)
!2077 = !DILocation(line: 667, column: 12, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 667, column: 2)
!2079 = !DILocation(line: 667, column: 8, scope: !2078)
!2080 = !DILocation(line: 667, column: 16, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 667, column: 2)
!2082 = !DILocation(line: 667, column: 23, scope: !2081)
!2083 = !DILocation(line: 667, column: 21, scope: !2081)
!2084 = !DILocation(line: 667, column: 2, scope: !2078)
!2085 = !DILocation(line: 671, column: 12, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 667, column: 43)
!2087 = !DILocation(line: 671, column: 43, scope: !2086)
!2088 = !DILocation(line: 671, column: 33, scope: !2086)
!2089 = !DILocation(line: 671, column: 3, scope: !2086)
!2090 = !DILocation(line: 672, column: 17, scope: !2086)
!2091 = !DILocation(line: 672, column: 3, scope: !2086)
!2092 = !DILocation(line: 673, column: 17, scope: !2086)
!2093 = !DILocation(line: 673, column: 21, scope: !2086)
!2094 = !DILocation(line: 673, column: 3, scope: !2086)
!2095 = !DILocation(line: 674, column: 26, scope: !2086)
!2096 = !DILocation(line: 674, column: 13, scope: !2086)
!2097 = !DILocation(line: 674, column: 11, scope: !2086)
!2098 = !DILocation(line: 678, column: 26, scope: !2086)
!2099 = !DILocation(line: 679, column: 7, scope: !2086)
!2100 = !DILocation(line: 680, column: 7, scope: !2086)
!2101 = !DILocation(line: 681, column: 7, scope: !2086)
!2102 = !DILocation(line: 682, column: 7, scope: !2086)
!2103 = !DILocation(line: 683, column: 7, scope: !2086)
!2104 = !DILocation(line: 687, column: 7, scope: !2086)
!2105 = !DILocation(line: 691, column: 7, scope: !2086)
!2106 = !DILocation(line: 692, column: 7, scope: !2086)
!2107 = !DILocation(line: 678, column: 13, scope: !2086)
!2108 = !DILocation(line: 678, column: 11, scope: !2086)
!2109 = !DILocation(line: 699, column: 26, scope: !2086)
!2110 = !DILocation(line: 708, column: 7, scope: !2086)
!2111 = !DILocation(line: 709, column: 7, scope: !2086)
!2112 = !DILocation(line: 710, column: 7, scope: !2086)
!2113 = !DILocation(line: 699, column: 13, scope: !2086)
!2114 = !DILocation(line: 699, column: 11, scope: !2086)
!2115 = !DILocation(line: 718, column: 10, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 718, column: 3)
!2117 = !DILocation(line: 718, column: 9, scope: !2116)
!2118 = !DILocation(line: 718, column: 14, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 718, column: 3)
!2120 = !DILocation(line: 718, column: 18, scope: !2119)
!2121 = !DILocation(line: 718, column: 16, scope: !2119)
!2122 = !DILocation(line: 718, column: 3, scope: !2116)
!2123 = !DILocation(line: 719, column: 17, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 718, column: 32)
!2125 = !DILocation(line: 719, column: 10, scope: !2124)
!2126 = !DILocation(line: 719, column: 7, scope: !2124)
!2127 = !DILocation(line: 720, column: 18, scope: !2124)
!2128 = !DILocation(line: 720, column: 4, scope: !2124)
!2129 = !DILocation(line: 721, column: 12, scope: !2124)
!2130 = !DILocation(line: 721, column: 16, scope: !2124)
!2131 = !DILocation(line: 721, column: 36, scope: !2124)
!2132 = !DILocation(line: 721, column: 28, scope: !2124)
!2133 = !DILocation(line: 721, column: 4, scope: !2124)
!2134 = !DILocation(line: 722, column: 26, scope: !2124)
!2135 = !DILocation(line: 722, column: 21, scope: !2124)
!2136 = !DILocation(line: 722, column: 4, scope: !2124)
!2137 = !DILocation(line: 722, column: 8, scope: !2124)
!2138 = !DILocation(line: 722, column: 19, scope: !2124)
!2139 = !DILocation(line: 723, column: 24, scope: !2124)
!2140 = !DILocation(line: 723, column: 21, scope: !2124)
!2141 = !DILocation(line: 723, column: 4, scope: !2124)
!2142 = !DILocation(line: 723, column: 8, scope: !2124)
!2143 = !DILocation(line: 723, column: 19, scope: !2124)
!2144 = !DILocation(line: 724, column: 24, scope: !2124)
!2145 = !DILocation(line: 724, column: 21, scope: !2124)
!2146 = !DILocation(line: 724, column: 4, scope: !2124)
!2147 = !DILocation(line: 724, column: 8, scope: !2124)
!2148 = !DILocation(line: 724, column: 19, scope: !2124)
!2149 = !DILocation(line: 725, column: 24, scope: !2124)
!2150 = !DILocation(line: 725, column: 21, scope: !2124)
!2151 = !DILocation(line: 725, column: 4, scope: !2124)
!2152 = !DILocation(line: 725, column: 8, scope: !2124)
!2153 = !DILocation(line: 725, column: 19, scope: !2124)
!2154 = !DILocation(line: 726, column: 3, scope: !2124)
!2155 = !DILocation(line: 718, column: 28, scope: !2119)
!2156 = !DILocation(line: 718, column: 3, scope: !2119)
!2157 = distinct !{!2157, !2122, !2158}
!2158 = !DILocation(line: 726, column: 3, scope: !2116)
!2159 = !DILocation(line: 728, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 728, column: 7)
!2161 = !DILocation(line: 728, column: 15, scope: !2160)
!2162 = !DILocation(line: 728, column: 7, scope: !2086)
!2163 = !DILocation(line: 729, column: 19, scope: !2160)
!2164 = !DILocation(line: 729, column: 4, scope: !2160)
!2165 = !DILocation(line: 733, column: 26, scope: !2086)
!2166 = !DILocation(line: 734, column: 7, scope: !2086)
!2167 = !DILocation(line: 735, column: 7, scope: !2086)
!2168 = !DILocation(line: 736, column: 7, scope: !2086)
!2169 = !DILocation(line: 733, column: 13, scope: !2086)
!2170 = !DILocation(line: 733, column: 11, scope: !2086)
!2171 = !DILocation(line: 752, column: 10, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 752, column: 3)
!2173 = !DILocation(line: 752, column: 9, scope: !2172)
!2174 = !DILocation(line: 752, column: 14, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 752, column: 3)
!2176 = !DILocation(line: 752, column: 18, scope: !2175)
!2177 = !DILocation(line: 752, column: 16, scope: !2175)
!2178 = !DILocation(line: 752, column: 3, scope: !2172)
!2179 = !DILocation(line: 753, column: 30, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 752, column: 32)
!2181 = !DILocation(line: 753, column: 22, scope: !2180)
!2182 = !DILocation(line: 753, column: 11, scope: !2180)
!2183 = !DILocation(line: 753, column: 4, scope: !2180)
!2184 = !DILocation(line: 753, column: 20, scope: !2180)
!2185 = !DILocation(line: 754, column: 30, scope: !2180)
!2186 = !DILocation(line: 754, column: 22, scope: !2180)
!2187 = !DILocation(line: 754, column: 11, scope: !2180)
!2188 = !DILocation(line: 754, column: 4, scope: !2180)
!2189 = !DILocation(line: 754, column: 20, scope: !2180)
!2190 = !DILocation(line: 755, column: 3, scope: !2180)
!2191 = !DILocation(line: 752, column: 28, scope: !2175)
!2192 = !DILocation(line: 752, column: 3, scope: !2175)
!2193 = distinct !{!2193, !2178, !2194}
!2194 = !DILocation(line: 755, column: 3, scope: !2172)
!2195 = !DILocation(line: 757, column: 10, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 757, column: 10)
!2197 = !DILocation(line: 757, column: 18, scope: !2196)
!2198 = !DILocation(line: 757, column: 10, scope: !2086)
!2199 = !DILocation(line: 758, column: 27, scope: !2196)
!2200 = !DILocation(line: 758, column: 10, scope: !2196)
!2201 = !DILocation(line: 759, column: 2, scope: !2086)
!2202 = !DILocation(line: 667, column: 39, scope: !2081)
!2203 = !DILocation(line: 667, column: 2, scope: !2081)
!2204 = distinct !{!2204, !2084, !2205}
!2205 = !DILocation(line: 759, column: 2, scope: !2078)
!2206 = !DILocation(line: 760, column: 1, scope: !1986)
!2207 = distinct !DISubprogram(name: "pdb2reslib", scope: !3, file: !3, line: 762, type: !2208, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !363, !224}
!2210 = !DILocalVariable(name: "rfp", arg: 1, scope: !2207, file: !3, line: 762, type: !363)
!2211 = !DILocation(line: 762, column: 31, scope: !2207)
!2212 = !DILocalVariable(name: "rlp", arg: 2, scope: !2207, file: !3, line: 762, type: !224)
!2213 = !DILocation(line: 762, column: 46, scope: !2207)
!2214 = !DILocalVariable(name: "line", scope: !2207, file: !3, line: 764, type: !264)
!2215 = !DILocation(line: 764, column: 7, scope: !2207)
!2216 = !DILocalVariable(name: "ltype", scope: !2207, file: !3, line: 765, type: !2217)
!2217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 80, elements: !2018)
!2218 = !DILocation(line: 765, column: 7, scope: !2207)
!2219 = !DILocalVariable(name: "a_name", scope: !2207, file: !3, line: 765, type: !2217)
!2220 = !DILocation(line: 765, column: 20, scope: !2207)
!2221 = !DILocalVariable(name: "r_name", scope: !2207, file: !3, line: 765, type: !2217)
!2222 = !DILocation(line: 765, column: 34, scope: !2207)
!2223 = !DILocalVariable(name: "a_num", scope: !2207, file: !3, line: 766, type: !16)
!2224 = !DILocation(line: 766, column: 6, scope: !2207)
!2225 = !DILocalVariable(name: "r_num", scope: !2207, file: !3, line: 766, type: !16)
!2226 = !DILocation(line: 766, column: 13, scope: !2207)
!2227 = !DILocalVariable(name: "x", scope: !2207, file: !3, line: 767, type: !41)
!2228 = !DILocation(line: 767, column: 9, scope: !2207)
!2229 = !DILocalVariable(name: "y", scope: !2207, file: !3, line: 767, type: !41)
!2230 = !DILocation(line: 767, column: 12, scope: !2207)
!2231 = !DILocalVariable(name: "z", scope: !2207, file: !3, line: 767, type: !41)
!2232 = !DILocation(line: 767, column: 15, scope: !2207)
!2233 = !DILocalVariable(name: "ap", scope: !2207, file: !3, line: 768, type: !193)
!2234 = !DILocation(line: 768, column: 10, scope: !2207)
!2235 = !DILocation(line: 770, column: 10, scope: !2207)
!2236 = !DILocation(line: 771, column: 11, scope: !2207)
!2237 = !DILocation(line: 772, column: 2, scope: !2207)
!2238 = !DILocation(line: 772, column: 16, scope: !2207)
!2239 = !DILocation(line: 772, column: 38, scope: !2207)
!2240 = !DILocation(line: 772, column: 9, scope: !2207)
!2241 = !DILocation(line: 773, column: 26, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 773, column: 7)
!2243 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 772, column: 45)
!2244 = !DILocation(line: 773, column: 7, scope: !2242)
!2245 = !DILocation(line: 773, column: 36, scope: !2242)
!2246 = !DILocation(line: 773, column: 7, scope: !2243)
!2247 = !DILocation(line: 774, column: 18, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 773, column: 42)
!2249 = !DILocation(line: 774, column: 23, scope: !2248)
!2250 = !DILocation(line: 774, column: 4, scope: !2248)
!2251 = !DILocation(line: 775, column: 3, scope: !2248)
!2252 = !DILocation(line: 775, column: 30, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 775, column: 13)
!2254 = !DILocation(line: 775, column: 13, scope: !2253)
!2255 = !DILocation(line: 775, column: 40, scope: !2253)
!2256 = !DILocation(line: 775, column: 45, scope: !2253)
!2257 = !DILocation(line: 776, column: 23, scope: !2253)
!2258 = !DILocation(line: 776, column: 4, scope: !2253)
!2259 = !DILocation(line: 776, column: 33, scope: !2253)
!2260 = !DILocation(line: 775, column: 13, scope: !2242)
!2261 = !DILocation(line: 778, column: 12, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 776, column: 39)
!2263 = !DILocation(line: 782, column: 5, scope: !2262)
!2264 = !DILocation(line: 783, column: 13, scope: !2262)
!2265 = !DILocation(line: 783, column: 21, scope: !2262)
!2266 = !DILocation(line: 778, column: 4, scope: !2262)
!2267 = !DILocation(line: 785, column: 25, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 785, column: 8)
!2269 = !DILocation(line: 785, column: 8, scope: !2268)
!2270 = !DILocation(line: 785, column: 34, scope: !2268)
!2271 = !DILocation(line: 785, column: 8, scope: !2262)
!2272 = !DILocation(line: 786, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 786, column: 9)
!2274 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 785, column: 40)
!2275 = !DILocation(line: 786, column: 17, scope: !2273)
!2276 = !DILocation(line: 786, column: 9, scope: !2274)
!2277 = !DILocation(line: 787, column: 21, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 786, column: 22)
!2279 = !DILocation(line: 787, column: 6, scope: !2278)
!2280 = !DILocation(line: 788, column: 14, scope: !2278)
!2281 = !DILocation(line: 789, column: 5, scope: !2278)
!2282 = !DILocation(line: 790, column: 22, scope: !2274)
!2283 = !DILocation(line: 790, column: 5, scope: !2274)
!2284 = !DILocation(line: 791, column: 4, scope: !2274)
!2285 = !DILocation(line: 792, column: 17, scope: !2262)
!2286 = !DILocation(line: 792, column: 10, scope: !2262)
!2287 = !DILocation(line: 792, column: 7, scope: !2262)
!2288 = !DILocation(line: 793, column: 18, scope: !2262)
!2289 = !DILocation(line: 793, column: 4, scope: !2262)
!2290 = !DILocation(line: 794, column: 12, scope: !2262)
!2291 = !DILocation(line: 794, column: 16, scope: !2262)
!2292 = !DILocation(line: 794, column: 28, scope: !2262)
!2293 = !DILocation(line: 794, column: 4, scope: !2262)
!2294 = !DILocation(line: 795, column: 21, scope: !2262)
!2295 = !DILocation(line: 795, column: 4, scope: !2262)
!2296 = !DILocation(line: 795, column: 8, scope: !2262)
!2297 = !DILocation(line: 795, column: 19, scope: !2262)
!2298 = !DILocation(line: 796, column: 21, scope: !2262)
!2299 = !DILocation(line: 796, column: 4, scope: !2262)
!2300 = !DILocation(line: 796, column: 8, scope: !2262)
!2301 = !DILocation(line: 796, column: 19, scope: !2262)
!2302 = !DILocation(line: 797, column: 21, scope: !2262)
!2303 = !DILocation(line: 797, column: 4, scope: !2262)
!2304 = !DILocation(line: 797, column: 8, scope: !2262)
!2305 = !DILocation(line: 797, column: 19, scope: !2262)
!2306 = !DILocation(line: 798, column: 11, scope: !2262)
!2307 = !DILocation(line: 799, column: 3, scope: !2262)
!2308 = distinct !{!2308, !2237, !2309}
!2309 = !DILocation(line: 800, column: 2, scope: !2207)
!2310 = !DILocation(line: 801, column: 6, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 801, column: 6)
!2312 = !DILocation(line: 801, column: 14, scope: !2311)
!2313 = !DILocation(line: 801, column: 6, scope: !2207)
!2314 = !DILocation(line: 802, column: 18, scope: !2311)
!2315 = !DILocation(line: 802, column: 3, scope: !2311)
!2316 = !DILocation(line: 803, column: 1, scope: !2207)
!2317 = distinct !DISubprogram(name: "bnd2reslib", scope: !3, file: !3, line: 805, type: !2208, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2318 = !DILocalVariable(name: "bfp", arg: 1, scope: !2317, file: !3, line: 805, type: !363)
!2319 = !DILocation(line: 805, column: 31, scope: !2317)
!2320 = !DILocalVariable(name: "rlp", arg: 2, scope: !2317, file: !3, line: 805, type: !224)
!2321 = !DILocation(line: 805, column: 46, scope: !2317)
!2322 = !DILocalVariable(name: "line", scope: !2317, file: !3, line: 807, type: !264)
!2323 = !DILocation(line: 807, column: 7, scope: !2317)
!2324 = !DILocalVariable(name: "r_name", scope: !2317, file: !3, line: 808, type: !419)
!2325 = !DILocation(line: 808, column: 7, scope: !2317)
!2326 = !DILocalVariable(name: "llen", scope: !2317, file: !3, line: 809, type: !16)
!2327 = !DILocation(line: 809, column: 6, scope: !2317)
!2328 = !DILocalVariable(name: "bi", scope: !2317, file: !3, line: 810, type: !16)
!2329 = !DILocation(line: 810, column: 6, scope: !2317)
!2330 = !DILocalVariable(name: "bj", scope: !2317, file: !3, line: 810, type: !16)
!2331 = !DILocation(line: 810, column: 10, scope: !2317)
!2332 = !DILocation(line: 812, column: 10, scope: !2317)
!2333 = !DILocation(line: 813, column: 2, scope: !2317)
!2334 = !DILocation(line: 813, column: 10, scope: !2317)
!2335 = !DILocation(line: 814, column: 2, scope: !2317)
!2336 = !DILocation(line: 814, column: 16, scope: !2317)
!2337 = !DILocation(line: 814, column: 38, scope: !2317)
!2338 = !DILocation(line: 814, column: 9, scope: !2317)
!2339 = !DILocation(line: 815, column: 7, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 815, column: 7)
!2341 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 814, column: 45)
!2342 = !DILocation(line: 815, column: 13, scope: !2340)
!2343 = !DILocation(line: 815, column: 7, scope: !2341)
!2344 = !DILocation(line: 816, column: 16, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 816, column: 8)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 815, column: 21)
!2347 = !DILocation(line: 816, column: 30, scope: !2345)
!2348 = !DILocation(line: 816, column: 8, scope: !2345)
!2349 = !DILocation(line: 816, column: 39, scope: !2345)
!2350 = !DILocation(line: 816, column: 8, scope: !2346)
!2351 = !DILocation(line: 817, column: 20, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 816, column: 45)
!2353 = !DILocation(line: 817, column: 12, scope: !2352)
!2354 = !DILocation(line: 817, column: 27, scope: !2352)
!2355 = !DILocation(line: 817, column: 10, scope: !2352)
!2356 = !DILocation(line: 818, column: 12, scope: !2352)
!2357 = !DILocation(line: 818, column: 17, scope: !2352)
!2358 = !DILocation(line: 818, column: 29, scope: !2352)
!2359 = !DILocation(line: 818, column: 10, scope: !2352)
!2360 = !DILocation(line: 819, column: 31, scope: !2352)
!2361 = !DILocation(line: 819, column: 37, scope: !2352)
!2362 = !DILocation(line: 819, column: 43, scope: !2352)
!2363 = !DILocation(line: 819, column: 5, scope: !2352)
!2364 = !DILocation(line: 820, column: 5, scope: !2352)
!2365 = !DILocation(line: 822, column: 5, scope: !2352)
!2366 = !DILocation(line: 823, column: 14, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 823, column: 14)
!2368 = !DILocation(line: 823, column: 22, scope: !2367)
!2369 = !DILocation(line: 823, column: 14, scope: !2345)
!2370 = !DILocation(line: 824, column: 22, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 823, column: 27)
!2372 = !DILocation(line: 824, column: 5, scope: !2371)
!2373 = !DILocation(line: 825, column: 22, scope: !2371)
!2374 = !DILocation(line: 825, column: 5, scope: !2371)
!2375 = !DILocation(line: 826, column: 13, scope: !2371)
!2376 = !DILocation(line: 827, column: 4, scope: !2371)
!2377 = !DILocation(line: 828, column: 22, scope: !2367)
!2378 = !DILocation(line: 828, column: 5, scope: !2367)
!2379 = !DILocation(line: 829, column: 3, scope: !2346)
!2380 = !DILocation(line: 830, column: 16, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 830, column: 8)
!2382 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 829, column: 8)
!2383 = !DILocation(line: 830, column: 8, scope: !2381)
!2384 = !DILocation(line: 830, column: 42, scope: !2381)
!2385 = !DILocation(line: 830, column: 8, scope: !2382)
!2386 = !DILocation(line: 831, column: 20, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 830, column: 48)
!2388 = !DILocation(line: 831, column: 12, scope: !2387)
!2389 = !DILocation(line: 831, column: 27, scope: !2387)
!2390 = !DILocation(line: 831, column: 10, scope: !2387)
!2391 = !DILocation(line: 832, column: 12, scope: !2387)
!2392 = !DILocation(line: 832, column: 17, scope: !2387)
!2393 = !DILocation(line: 832, column: 29, scope: !2387)
!2394 = !DILocation(line: 832, column: 10, scope: !2387)
!2395 = !DILocation(line: 833, column: 31, scope: !2387)
!2396 = !DILocation(line: 833, column: 37, scope: !2387)
!2397 = !DILocation(line: 833, column: 43, scope: !2387)
!2398 = !DILocation(line: 833, column: 5, scope: !2387)
!2399 = !DILocation(line: 834, column: 5, scope: !2387)
!2400 = !DILocation(line: 836, column: 5, scope: !2387)
!2401 = !DILocation(line: 838, column: 29, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 837, column: 9)
!2403 = !DILocation(line: 838, column: 12, scope: !2402)
!2404 = !DILocation(line: 838, column: 5, scope: !2402)
!2405 = !DILocation(line: 838, column: 27, scope: !2402)
!2406 = !DILocation(line: 839, column: 29, scope: !2402)
!2407 = !DILocation(line: 839, column: 12, scope: !2402)
!2408 = !DILocation(line: 839, column: 5, scope: !2402)
!2409 = !DILocation(line: 839, column: 27, scope: !2402)
!2410 = !DILocation(line: 840, column: 12, scope: !2402)
!2411 = distinct !{!2411, !2335, !2412}
!2412 = !DILocation(line: 843, column: 2, scope: !2317)
!2413 = !DILocation(line: 844, column: 6, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 844, column: 6)
!2415 = !DILocation(line: 844, column: 14, scope: !2414)
!2416 = !DILocation(line: 844, column: 6, scope: !2317)
!2417 = !DILocation(line: 845, column: 20, scope: !2414)
!2418 = !DILocation(line: 845, column: 3, scope: !2414)
!2419 = !DILocation(line: 846, column: 1, scope: !2317)
!2420 = distinct !DISubprogram(name: "qr2reslib", scope: !3, file: !3, line: 937, type: !2208, scopeLine: 938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2421 = !DILocalVariable(name: "qfp", arg: 1, scope: !2420, file: !3, line: 937, type: !363)
!2422 = !DILocation(line: 937, column: 30, scope: !2420)
!2423 = !DILocalVariable(name: "rlp", arg: 2, scope: !2420, file: !3, line: 937, type: !224)
!2424 = !DILocation(line: 937, column: 45, scope: !2420)
!2425 = !DILocalVariable(name: "line", scope: !2420, file: !3, line: 939, type: !264)
!2426 = !DILocation(line: 939, column: 7, scope: !2420)
!2427 = !DILocalVariable(name: "ltype", scope: !2420, file: !3, line: 940, type: !2217)
!2428 = !DILocation(line: 940, column: 7, scope: !2420)
!2429 = !DILocalVariable(name: "a_name", scope: !2420, file: !3, line: 940, type: !2217)
!2430 = !DILocation(line: 940, column: 20, scope: !2420)
!2431 = !DILocalVariable(name: "r_name", scope: !2420, file: !3, line: 940, type: !2217)
!2432 = !DILocation(line: 940, column: 34, scope: !2420)
!2433 = !DILocalVariable(name: "a_num", scope: !2420, file: !3, line: 941, type: !16)
!2434 = !DILocation(line: 941, column: 6, scope: !2420)
!2435 = !DILocalVariable(name: "r_num", scope: !2420, file: !3, line: 941, type: !16)
!2436 = !DILocation(line: 941, column: 13, scope: !2420)
!2437 = !DILocalVariable(name: "q", scope: !2420, file: !3, line: 942, type: !41)
!2438 = !DILocation(line: 942, column: 9, scope: !2420)
!2439 = !DILocalVariable(name: "r", scope: !2420, file: !3, line: 942, type: !41)
!2440 = !DILocation(line: 942, column: 12, scope: !2420)
!2441 = !DILocalVariable(name: "ap", scope: !2420, file: !3, line: 943, type: !193)
!2442 = !DILocation(line: 943, column: 10, scope: !2420)
!2443 = !DILocation(line: 945, column: 10, scope: !2420)
!2444 = !DILocation(line: 946, column: 11, scope: !2420)
!2445 = !DILocation(line: 947, column: 2, scope: !2420)
!2446 = !DILocation(line: 947, column: 16, scope: !2420)
!2447 = !DILocation(line: 947, column: 38, scope: !2420)
!2448 = !DILocation(line: 947, column: 9, scope: !2420)
!2449 = !DILocation(line: 948, column: 23, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 948, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 947, column: 45)
!2452 = !DILocation(line: 948, column: 7, scope: !2450)
!2453 = !DILocation(line: 948, column: 33, scope: !2450)
!2454 = !DILocation(line: 948, column: 7, scope: !2451)
!2455 = !DILocation(line: 949, column: 4, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 948, column: 39)
!2457 = distinct !{!2457, !2445, !2458}
!2458 = !DILocation(line: 973, column: 2, scope: !2420)
!2459 = !DILocation(line: 950, column: 30, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 950, column: 13)
!2461 = !DILocation(line: 950, column: 13, scope: !2460)
!2462 = !DILocation(line: 950, column: 40, scope: !2460)
!2463 = !DILocation(line: 950, column: 45, scope: !2460)
!2464 = !DILocation(line: 951, column: 23, scope: !2460)
!2465 = !DILocation(line: 951, column: 4, scope: !2460)
!2466 = !DILocation(line: 951, column: 33, scope: !2460)
!2467 = !DILocation(line: 950, column: 13, scope: !2450)
!2468 = !DILocation(line: 953, column: 12, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 951, column: 39)
!2470 = !DILocation(line: 957, column: 5, scope: !2469)
!2471 = !DILocation(line: 958, column: 13, scope: !2469)
!2472 = !DILocation(line: 958, column: 21, scope: !2469)
!2473 = !DILocation(line: 953, column: 4, scope: !2469)
!2474 = !DILocation(line: 959, column: 25, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 959, column: 8)
!2476 = !DILocation(line: 959, column: 8, scope: !2475)
!2477 = !DILocation(line: 959, column: 34, scope: !2475)
!2478 = !DILocation(line: 959, column: 8, scope: !2469)
!2479 = !DILocation(line: 960, column: 9, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 960, column: 9)
!2481 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 959, column: 40)
!2482 = !DILocation(line: 960, column: 17, scope: !2480)
!2483 = !DILocation(line: 960, column: 9, scope: !2481)
!2484 = !DILocation(line: 961, column: 20, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 960, column: 22)
!2486 = !DILocation(line: 961, column: 6, scope: !2485)
!2487 = !DILocation(line: 962, column: 14, scope: !2485)
!2488 = !DILocation(line: 963, column: 5, scope: !2485)
!2489 = !DILocation(line: 964, column: 22, scope: !2481)
!2490 = !DILocation(line: 964, column: 5, scope: !2481)
!2491 = !DILocation(line: 965, column: 4, scope: !2481)
!2492 = !DILocation(line: 966, column: 17, scope: !2469)
!2493 = !DILocation(line: 966, column: 10, scope: !2469)
!2494 = !DILocation(line: 966, column: 7, scope: !2469)
!2495 = !DILocation(line: 967, column: 18, scope: !2469)
!2496 = !DILocation(line: 967, column: 4, scope: !2469)
!2497 = !DILocation(line: 968, column: 12, scope: !2469)
!2498 = !DILocation(line: 968, column: 16, scope: !2469)
!2499 = !DILocation(line: 968, column: 28, scope: !2469)
!2500 = !DILocation(line: 968, column: 4, scope: !2469)
!2501 = !DILocation(line: 969, column: 19, scope: !2469)
!2502 = !DILocation(line: 969, column: 4, scope: !2469)
!2503 = !DILocation(line: 969, column: 8, scope: !2469)
!2504 = !DILocation(line: 969, column: 17, scope: !2469)
!2505 = !DILocation(line: 970, column: 19, scope: !2469)
!2506 = !DILocation(line: 970, column: 4, scope: !2469)
!2507 = !DILocation(line: 970, column: 8, scope: !2469)
!2508 = !DILocation(line: 970, column: 17, scope: !2469)
!2509 = !DILocation(line: 971, column: 11, scope: !2469)
!2510 = !DILocation(line: 972, column: 3, scope: !2469)
!2511 = !DILocation(line: 974, column: 6, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 974, column: 6)
!2513 = !DILocation(line: 974, column: 14, scope: !2512)
!2514 = !DILocation(line: 974, column: 6, scope: !2420)
!2515 = !DILocation(line: 975, column: 17, scope: !2512)
!2516 = !DILocation(line: 975, column: 3, scope: !2512)
!2517 = !DILocation(line: 976, column: 1, scope: !2420)
!2518 = distinct !DISubprogram(name: "chi2reslib", scope: !3, file: !3, line: 848, type: !2208, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2519 = !DILocalVariable(name: "cfp", arg: 1, scope: !2518, file: !3, line: 848, type: !363)
!2520 = !DILocation(line: 848, column: 31, scope: !2518)
!2521 = !DILocalVariable(name: "rlp", arg: 2, scope: !2518, file: !3, line: 848, type: !224)
!2522 = !DILocation(line: 848, column: 46, scope: !2518)
!2523 = !DILocalVariable(name: "line", scope: !2518, file: !3, line: 850, type: !264)
!2524 = !DILocation(line: 850, column: 7, scope: !2518)
!2525 = !DILocalVariable(name: "r_name", scope: !2518, file: !3, line: 851, type: !419)
!2526 = !DILocation(line: 851, column: 7, scope: !2518)
!2527 = !DILocalVariable(name: "llen", scope: !2518, file: !3, line: 852, type: !16)
!2528 = !DILocation(line: 852, column: 6, scope: !2518)
!2529 = !DILocalVariable(name: "res", scope: !2518, file: !3, line: 853, type: !7)
!2530 = !DILocation(line: 853, column: 13, scope: !2518)
!2531 = !DILocalVariable(name: "res1", scope: !2518, file: !3, line: 853, type: !7)
!2532 = !DILocation(line: 853, column: 26, scope: !2518)
!2533 = !DILocalVariable(name: "anm1", scope: !2518, file: !3, line: 854, type: !251)
!2534 = !DILocation(line: 854, column: 7, scope: !2518)
!2535 = !DILocalVariable(name: "anm2", scope: !2518, file: !3, line: 854, type: !251)
!2536 = !DILocation(line: 854, column: 18, scope: !2518)
!2537 = !DILocalVariable(name: "anm3", scope: !2518, file: !3, line: 854, type: !251)
!2538 = !DILocation(line: 854, column: 29, scope: !2518)
!2539 = !DILocalVariable(name: "anm4", scope: !2518, file: !3, line: 854, type: !251)
!2540 = !DILocation(line: 854, column: 40, scope: !2518)
!2541 = !DILocalVariable(name: "a1", scope: !2518, file: !3, line: 855, type: !16)
!2542 = !DILocation(line: 855, column: 6, scope: !2518)
!2543 = !DILocalVariable(name: "a2", scope: !2518, file: !3, line: 855, type: !16)
!2544 = !DILocation(line: 855, column: 10, scope: !2518)
!2545 = !DILocalVariable(name: "a3", scope: !2518, file: !3, line: 855, type: !16)
!2546 = !DILocation(line: 855, column: 14, scope: !2518)
!2547 = !DILocalVariable(name: "a4", scope: !2518, file: !3, line: 855, type: !16)
!2548 = !DILocation(line: 855, column: 18, scope: !2518)
!2549 = !DILocalVariable(name: "ap", scope: !2518, file: !3, line: 856, type: !193)
!2550 = !DILocation(line: 856, column: 10, scope: !2518)
!2551 = !DILocalVariable(name: "cp", scope: !2518, file: !3, line: 857, type: !182)
!2552 = !DILocation(line: 857, column: 12, scope: !2518)
!2553 = !DILocation(line: 859, column: 8, scope: !2518)
!2554 = !DILocation(line: 860, column: 2, scope: !2518)
!2555 = !DILocation(line: 860, column: 10, scope: !2518)
!2556 = !DILocation(line: 861, column: 2, scope: !2518)
!2557 = !DILocation(line: 861, column: 16, scope: !2518)
!2558 = !DILocation(line: 861, column: 38, scope: !2518)
!2559 = !DILocation(line: 861, column: 9, scope: !2518)
!2560 = !DILocation(line: 862, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 862, column: 7)
!2562 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 861, column: 45)
!2563 = !DILocation(line: 862, column: 13, scope: !2561)
!2564 = !DILocation(line: 862, column: 7, scope: !2562)
!2565 = !DILocation(line: 863, column: 16, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 863, column: 8)
!2567 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 862, column: 21)
!2568 = !DILocation(line: 863, column: 30, scope: !2566)
!2569 = !DILocation(line: 863, column: 8, scope: !2566)
!2570 = !DILocation(line: 863, column: 39, scope: !2566)
!2571 = !DILocation(line: 863, column: 8, scope: !2567)
!2572 = !DILocation(line: 864, column: 20, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 863, column: 45)
!2574 = !DILocation(line: 864, column: 12, scope: !2573)
!2575 = !DILocation(line: 864, column: 27, scope: !2573)
!2576 = !DILocation(line: 864, column: 10, scope: !2573)
!2577 = !DILocation(line: 865, column: 12, scope: !2573)
!2578 = !DILocation(line: 865, column: 17, scope: !2573)
!2579 = !DILocation(line: 865, column: 29, scope: !2573)
!2580 = !DILocation(line: 865, column: 10, scope: !2573)
!2581 = !DILocation(line: 866, column: 31, scope: !2573)
!2582 = !DILocation(line: 866, column: 37, scope: !2573)
!2583 = !DILocation(line: 866, column: 43, scope: !2573)
!2584 = !DILocation(line: 866, column: 5, scope: !2573)
!2585 = !DILocation(line: 867, column: 14, scope: !2573)
!2586 = !DILocation(line: 867, column: 5, scope: !2573)
!2587 = !DILocation(line: 870, column: 5, scope: !2573)
!2588 = !DILocation(line: 872, column: 9, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 872, column: 9)
!2590 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 871, column: 9)
!2591 = !DILocation(line: 872, column: 15, scope: !2589)
!2592 = !DILocation(line: 872, column: 9, scope: !2590)
!2593 = !DILocation(line: 873, column: 21, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 872, column: 20)
!2595 = !DILocation(line: 873, column: 6, scope: !2594)
!2596 = !DILocation(line: 874, column: 12, scope: !2594)
!2597 = !DILocation(line: 875, column: 5, scope: !2594)
!2598 = !DILocation(line: 876, column: 10, scope: !2590)
!2599 = !DILocation(line: 877, column: 16, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 877, column: 5)
!2601 = !DILocation(line: 877, column: 21, scope: !2600)
!2602 = !DILocation(line: 877, column: 14, scope: !2600)
!2603 = !DILocation(line: 877, column: 10, scope: !2600)
!2604 = !DILocation(line: 877, column: 31, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 877, column: 5)
!2606 = !DILocation(line: 877, column: 5, scope: !2600)
!2607 = !DILocation(line: 879, column: 19, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 879, column: 10)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 878, column: 25)
!2610 = !DILocation(line: 879, column: 24, scope: !2608)
!2611 = !DILocation(line: 879, column: 35, scope: !2608)
!2612 = !DILocation(line: 879, column: 11, scope: !2608)
!2613 = !DILocation(line: 879, column: 10, scope: !2609)
!2614 = !DILocation(line: 880, column: 14, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 879, column: 45)
!2616 = !DILocation(line: 880, column: 12, scope: !2615)
!2617 = !DILocation(line: 881, column: 7, scope: !2615)
!2618 = !DILocation(line: 883, column: 5, scope: !2609)
!2619 = !DILocation(line: 878, column: 12, scope: !2605)
!2620 = !DILocation(line: 878, column: 17, scope: !2605)
!2621 = !DILocation(line: 878, column: 10, scope: !2605)
!2622 = !DILocation(line: 877, column: 5, scope: !2605)
!2623 = distinct !{!2623, !2606, !2624}
!2624 = !DILocation(line: 883, column: 5, scope: !2600)
!2625 = !DILocation(line: 884, column: 10, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 884, column: 9)
!2627 = !DILocation(line: 884, column: 9, scope: !2590)
!2628 = !DILocation(line: 885, column: 15, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 884, column: 16)
!2630 = !DILocation(line: 887, column: 7, scope: !2629)
!2631 = !DILocation(line: 887, column: 15, scope: !2629)
!2632 = !DILocation(line: 887, column: 20, scope: !2629)
!2633 = !DILocation(line: 885, column: 6, scope: !2629)
!2634 = !DILocation(line: 888, column: 6, scope: !2629)
!2635 = !DILocation(line: 890, column: 22, scope: !2590)
!2636 = !DILocation(line: 890, column: 5, scope: !2590)
!2637 = !DILocation(line: 892, column: 3, scope: !2567)
!2638 = !DILocation(line: 893, column: 12, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 892, column: 8)
!2640 = !DILocation(line: 893, column: 33, scope: !2639)
!2641 = !DILocation(line: 893, column: 39, scope: !2639)
!2642 = !DILocation(line: 893, column: 45, scope: !2639)
!2643 = !DILocation(line: 893, column: 51, scope: !2639)
!2644 = !DILocation(line: 893, column: 4, scope: !2639)
!2645 = !DILocation(line: 894, column: 26, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 894, column: 8)
!2647 = !DILocation(line: 894, column: 31, scope: !2646)
!2648 = !DILocation(line: 894, column: 16, scope: !2646)
!2649 = !DILocation(line: 894, column: 14, scope: !2646)
!2650 = !DILocation(line: 894, column: 8, scope: !2639)
!2651 = !DILocation(line: 895, column: 14, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 894, column: 41)
!2653 = !DILocation(line: 897, column: 6, scope: !2652)
!2654 = !DILocation(line: 897, column: 12, scope: !2652)
!2655 = !DILocation(line: 897, column: 17, scope: !2652)
!2656 = !DILocation(line: 895, column: 5, scope: !2652)
!2657 = !DILocation(line: 898, column: 5, scope: !2652)
!2658 = !DILocation(line: 900, column: 10, scope: !2646)
!2659 = !DILocation(line: 900, column: 15, scope: !2646)
!2660 = !DILocation(line: 900, column: 20, scope: !2646)
!2661 = !DILocation(line: 900, column: 13, scope: !2646)
!2662 = !DILocation(line: 900, column: 8, scope: !2646)
!2663 = !DILocation(line: 901, column: 26, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 901, column: 8)
!2665 = !DILocation(line: 901, column: 31, scope: !2664)
!2666 = !DILocation(line: 901, column: 16, scope: !2664)
!2667 = !DILocation(line: 901, column: 14, scope: !2664)
!2668 = !DILocation(line: 901, column: 8, scope: !2639)
!2669 = !DILocation(line: 902, column: 14, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 901, column: 41)
!2671 = !DILocation(line: 904, column: 6, scope: !2670)
!2672 = !DILocation(line: 904, column: 12, scope: !2670)
!2673 = !DILocation(line: 904, column: 17, scope: !2670)
!2674 = !DILocation(line: 902, column: 5, scope: !2670)
!2675 = !DILocation(line: 905, column: 5, scope: !2670)
!2676 = !DILocation(line: 907, column: 10, scope: !2664)
!2677 = !DILocation(line: 907, column: 15, scope: !2664)
!2678 = !DILocation(line: 907, column: 20, scope: !2664)
!2679 = !DILocation(line: 907, column: 13, scope: !2664)
!2680 = !DILocation(line: 907, column: 8, scope: !2664)
!2681 = !DILocation(line: 908, column: 26, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 908, column: 8)
!2683 = !DILocation(line: 908, column: 31, scope: !2682)
!2684 = !DILocation(line: 908, column: 16, scope: !2682)
!2685 = !DILocation(line: 908, column: 14, scope: !2682)
!2686 = !DILocation(line: 908, column: 8, scope: !2639)
!2687 = !DILocation(line: 909, column: 14, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 908, column: 41)
!2689 = !DILocation(line: 911, column: 6, scope: !2688)
!2690 = !DILocation(line: 911, column: 12, scope: !2688)
!2691 = !DILocation(line: 911, column: 17, scope: !2688)
!2692 = !DILocation(line: 909, column: 5, scope: !2688)
!2693 = !DILocation(line: 912, column: 5, scope: !2688)
!2694 = !DILocation(line: 914, column: 10, scope: !2682)
!2695 = !DILocation(line: 914, column: 15, scope: !2682)
!2696 = !DILocation(line: 914, column: 20, scope: !2682)
!2697 = !DILocation(line: 914, column: 13, scope: !2682)
!2698 = !DILocation(line: 914, column: 8, scope: !2682)
!2699 = !DILocation(line: 915, column: 26, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 915, column: 8)
!2701 = !DILocation(line: 915, column: 31, scope: !2700)
!2702 = !DILocation(line: 915, column: 16, scope: !2700)
!2703 = !DILocation(line: 915, column: 14, scope: !2700)
!2704 = !DILocation(line: 915, column: 8, scope: !2639)
!2705 = !DILocation(line: 916, column: 14, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 915, column: 41)
!2707 = !DILocation(line: 918, column: 6, scope: !2706)
!2708 = !DILocation(line: 918, column: 12, scope: !2706)
!2709 = !DILocation(line: 918, column: 17, scope: !2706)
!2710 = !DILocation(line: 916, column: 5, scope: !2706)
!2711 = !DILocation(line: 919, column: 5, scope: !2706)
!2712 = !DILocation(line: 921, column: 10, scope: !2700)
!2713 = !DILocation(line: 921, column: 15, scope: !2700)
!2714 = !DILocation(line: 921, column: 20, scope: !2700)
!2715 = !DILocation(line: 921, column: 13, scope: !2700)
!2716 = !DILocation(line: 921, column: 8, scope: !2700)
!2717 = !DILocation(line: 922, column: 15, scope: !2639)
!2718 = !DILocation(line: 922, column: 10, scope: !2639)
!2719 = !DILocation(line: 922, column: 7, scope: !2639)
!2720 = !DILocation(line: 923, column: 9, scope: !2639)
!2721 = !DILocation(line: 924, column: 22, scope: !2639)
!2722 = !DILocation(line: 924, column: 4, scope: !2639)
!2723 = !DILocation(line: 924, column: 8, scope: !2639)
!2724 = !DILocation(line: 924, column: 20, scope: !2639)
!2725 = !DILocation(line: 925, column: 22, scope: !2639)
!2726 = !DILocation(line: 925, column: 4, scope: !2639)
!2727 = !DILocation(line: 925, column: 8, scope: !2639)
!2728 = !DILocation(line: 925, column: 20, scope: !2639)
!2729 = !DILocation(line: 926, column: 22, scope: !2639)
!2730 = !DILocation(line: 926, column: 4, scope: !2639)
!2731 = !DILocation(line: 926, column: 8, scope: !2639)
!2732 = !DILocation(line: 926, column: 20, scope: !2639)
!2733 = !DILocation(line: 927, column: 22, scope: !2639)
!2734 = !DILocation(line: 927, column: 4, scope: !2639)
!2735 = !DILocation(line: 927, column: 8, scope: !2639)
!2736 = !DILocation(line: 927, column: 20, scope: !2639)
!2737 = !DILocation(line: 928, column: 4, scope: !2639)
!2738 = !DILocation(line: 928, column: 8, scope: !2639)
!2739 = !DILocation(line: 928, column: 15, scope: !2639)
!2740 = distinct !{!2740, !2556, !2741}
!2741 = !DILocation(line: 930, column: 2, scope: !2518)
!2742 = !DILocation(line: 931, column: 6, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 931, column: 6)
!2744 = !DILocation(line: 931, column: 12, scope: !2743)
!2745 = !DILocation(line: 931, column: 6, scope: !2518)
!2746 = !DILocation(line: 932, column: 18, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 931, column: 17)
!2748 = !DILocation(line: 932, column: 3, scope: !2747)
!2749 = !DILocation(line: 933, column: 9, scope: !2747)
!2750 = !DILocation(line: 934, column: 2, scope: !2747)
!2751 = !DILocation(line: 935, column: 1, scope: !2518)
!2752 = distinct !DISubprogram(name: "mk_fname", scope: !3, file: !3, line: 637, type: !2753, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !221, !221}
!2755 = !DILocalVariable(name: "sname", arg: 1, scope: !2752, file: !3, line: 637, type: !221)
!2756 = !DILocation(line: 637, column: 28, scope: !2752)
!2757 = !DILocalVariable(name: "fname", arg: 2, scope: !2752, file: !3, line: 637, type: !221)
!2758 = !DILocation(line: 637, column: 42, scope: !2752)
!2759 = !DILocation(line: 640, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 640, column: 6)
!2761 = !DILocation(line: 640, column: 6, scope: !2760)
!2762 = !DILocation(line: 640, column: 13, scope: !2760)
!2763 = !DILocation(line: 640, column: 20, scope: !2760)
!2764 = !DILocation(line: 641, column: 19, scope: !2760)
!2765 = !DILocation(line: 641, column: 4, scope: !2760)
!2766 = !DILocation(line: 640, column: 6, scope: !2752)
!2767 = !DILocation(line: 642, column: 11, scope: !2760)
!2768 = !DILocation(line: 642, column: 18, scope: !2760)
!2769 = !DILocation(line: 642, column: 3, scope: !2760)
!2770 = !DILocation(line: 644, column: 12, scope: !2760)
!2771 = !DILocation(line: 644, column: 43, scope: !2760)
!2772 = !DILocation(line: 644, column: 3, scope: !2760)
!2773 = !DILocation(line: 645, column: 1, scope: !2752)
!2774 = distinct !DISubprogram(name: "addres2reslib", scope: !3, file: !3, line: 996, type: !2775, scopeLine: 997, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !224}
!2777 = !DILocalVariable(name: "rlp", arg: 1, scope: !2774, file: !3, line: 996, type: !224)
!2778 = !DILocation(line: 996, column: 38, scope: !2774)
!2779 = !DILocalVariable(name: "res", scope: !2774, file: !3, line: 998, type: !7)
!2780 = !DILocation(line: 998, column: 13, scope: !2774)
!2781 = !DILocalVariable(name: "ap", scope: !2774, file: !3, line: 999, type: !193)
!2782 = !DILocation(line: 999, column: 11, scope: !2774)
!2783 = !DILocalVariable(name: "anp", scope: !2774, file: !3, line: 1000, type: !221)
!2784 = !DILocation(line: 1000, column: 9, scope: !2774)
!2785 = !DILocalVariable(name: "rnp", scope: !2774, file: !3, line: 1000, type: !221)
!2786 = !DILocation(line: 1000, column: 15, scope: !2774)
!2787 = !DILocalVariable(name: "a", scope: !2774, file: !3, line: 1001, type: !16)
!2788 = !DILocation(line: 1001, column: 6, scope: !2774)
!2789 = !DILocalVariable(name: "i", scope: !2774, file: !3, line: 1001, type: !16)
!2790 = !DILocation(line: 1001, column: 9, scope: !2774)
!2791 = !DILocation(line: 1003, column: 29, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1003, column: 6)
!2793 = !DILocation(line: 1003, column: 14, scope: !2792)
!2794 = !DILocation(line: 1003, column: 12, scope: !2792)
!2795 = !DILocation(line: 1003, column: 61, scope: !2792)
!2796 = !DILocation(line: 1003, column: 6, scope: !2774)
!2797 = !DILocation(line: 1005, column: 13, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1003, column: 70)
!2799 = !DILocation(line: 1005, column: 18, scope: !2798)
!2800 = !DILocation(line: 1004, column: 3, scope: !2798)
!2801 = !DILocation(line: 1006, column: 3, scope: !2798)
!2802 = !DILocation(line: 1007, column: 3, scope: !2798)
!2803 = !DILocation(line: 1009, column: 33, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1009, column: 6)
!2805 = !DILocation(line: 1009, column: 41, scope: !2804)
!2806 = !DILocation(line: 1009, column: 25, scope: !2804)
!2807 = !DILocation(line: 1009, column: 13, scope: !2804)
!2808 = !DILocation(line: 1009, column: 11, scope: !2804)
!2809 = !DILocation(line: 1009, column: 64, scope: !2804)
!2810 = !DILocation(line: 1009, column: 6, scope: !2774)
!2811 = !DILocation(line: 1011, column: 13, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 1009, column: 73)
!2813 = !DILocation(line: 1011, column: 18, scope: !2812)
!2814 = !DILocation(line: 1010, column: 3, scope: !2812)
!2815 = !DILocation(line: 1012, column: 3, scope: !2812)
!2816 = !DILocation(line: 1013, column: 3, scope: !2812)
!2817 = !DILocation(line: 1015, column: 16, scope: !2774)
!2818 = !DILocation(line: 1015, column: 21, scope: !2774)
!2819 = !DILocation(line: 1015, column: 2, scope: !2774)
!2820 = !DILocation(line: 1015, column: 7, scope: !2774)
!2821 = !DILocation(line: 1015, column: 14, scope: !2774)
!2822 = !DILocation(line: 1016, column: 18, scope: !2774)
!2823 = !DILocation(line: 1016, column: 2, scope: !2774)
!2824 = !DILocation(line: 1016, column: 7, scope: !2774)
!2825 = !DILocation(line: 1016, column: 16, scope: !2774)
!2826 = !DILocation(line: 1018, column: 26, scope: !2774)
!2827 = !DILocation(line: 1018, column: 44, scope: !2774)
!2828 = !DILocation(line: 1018, column: 18, scope: !2774)
!2829 = !DILocation(line: 1018, column: 6, scope: !2774)
!2830 = !DILocation(line: 1019, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1019, column: 6)
!2832 = !DILocation(line: 1019, column: 10, scope: !2831)
!2833 = !DILocation(line: 1019, column: 6, scope: !2774)
!2834 = !DILocation(line: 1020, column: 12, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 1019, column: 19)
!2836 = !DILocation(line: 1020, column: 3, scope: !2835)
!2837 = !DILocation(line: 1022, column: 3, scope: !2835)
!2838 = !DILocation(line: 1024, column: 10, scope: !2774)
!2839 = !DILocation(line: 1024, column: 2, scope: !2774)
!2840 = !DILocation(line: 1025, column: 19, scope: !2774)
!2841 = !DILocation(line: 1025, column: 2, scope: !2774)
!2842 = !DILocation(line: 1025, column: 7, scope: !2774)
!2843 = !DILocation(line: 1025, column: 17, scope: !2774)
!2844 = !DILocation(line: 1027, column: 18, scope: !2774)
!2845 = !DILocation(line: 1027, column: 6, scope: !2774)
!2846 = !DILocation(line: 1028, column: 6, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1028, column: 6)
!2848 = !DILocation(line: 1028, column: 10, scope: !2847)
!2849 = !DILocation(line: 1028, column: 6, scope: !2774)
!2850 = !DILocation(line: 1029, column: 12, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1028, column: 19)
!2852 = !DILocation(line: 1029, column: 3, scope: !2851)
!2853 = !DILocation(line: 1031, column: 3, scope: !2851)
!2854 = !DILocation(line: 1033, column: 10, scope: !2774)
!2855 = !DILocation(line: 1033, column: 2, scope: !2774)
!2856 = !DILocation(line: 1034, column: 17, scope: !2774)
!2857 = !DILocation(line: 1034, column: 2, scope: !2774)
!2858 = !DILocation(line: 1034, column: 7, scope: !2774)
!2859 = !DILocation(line: 1034, column: 15, scope: !2774)
!2860 = !DILocation(line: 1036, column: 2, scope: !2774)
!2861 = !DILocation(line: 1036, column: 7, scope: !2774)
!2862 = !DILocation(line: 1036, column: 13, scope: !2774)
!2863 = !DILocation(line: 1037, column: 2, scope: !2774)
!2864 = !DILocation(line: 1037, column: 7, scope: !2774)
!2865 = !DILocation(line: 1037, column: 17, scope: !2774)
!2866 = !DILocation(line: 1038, column: 2, scope: !2774)
!2867 = !DILocation(line: 1038, column: 7, scope: !2774)
!2868 = !DILocation(line: 1038, column: 16, scope: !2774)
!2869 = !DILocation(line: 1039, column: 2, scope: !2774)
!2870 = !DILocation(line: 1039, column: 7, scope: !2774)
!2871 = !DILocation(line: 1039, column: 14, scope: !2774)
!2872 = !DILocation(line: 1040, column: 16, scope: !2774)
!2873 = !DILocation(line: 1040, column: 21, scope: !2774)
!2874 = !DILocation(line: 1040, column: 2, scope: !2774)
!2875 = !DILocation(line: 1040, column: 7, scope: !2774)
!2876 = !DILocation(line: 1040, column: 14, scope: !2774)
!2877 = !DILocation(line: 1041, column: 20, scope: !2774)
!2878 = !DILocation(line: 1041, column: 25, scope: !2774)
!2879 = !DILocation(line: 1041, column: 2, scope: !2774)
!2880 = !DILocation(line: 1041, column: 7, scope: !2774)
!2881 = !DILocation(line: 1041, column: 18, scope: !2774)
!2882 = !DILocation(line: 1042, column: 2, scope: !2774)
!2883 = !DILocation(line: 1042, column: 7, scope: !2774)
!2884 = !DILocation(line: 1042, column: 16, scope: !2774)
!2885 = !DILocation(line: 1043, column: 2, scope: !2774)
!2886 = !DILocation(line: 1043, column: 7, scope: !2774)
!2887 = !DILocation(line: 1043, column: 18, scope: !2774)
!2888 = !DILocation(line: 1044, column: 2, scope: !2774)
!2889 = !DILocation(line: 1044, column: 7, scope: !2774)
!2890 = !DILocation(line: 1044, column: 19, scope: !2774)
!2891 = !DILocation(line: 1045, column: 2, scope: !2774)
!2892 = !DILocation(line: 1045, column: 7, scope: !2774)
!2893 = !DILocation(line: 1045, column: 18, scope: !2774)
!2894 = !DILocation(line: 1046, column: 2, scope: !2774)
!2895 = !DILocation(line: 1046, column: 7, scope: !2774)
!2896 = !DILocation(line: 1046, column: 17, scope: !2774)
!2897 = !DILocation(line: 1047, column: 2, scope: !2774)
!2898 = !DILocation(line: 1047, column: 7, scope: !2774)
!2899 = !DILocation(line: 1047, column: 16, scope: !2774)
!2900 = !DILocation(line: 1048, column: 18, scope: !2774)
!2901 = !DILocation(line: 1048, column: 2, scope: !2774)
!2902 = !DILocation(line: 1048, column: 7, scope: !2774)
!2903 = !DILocation(line: 1048, column: 16, scope: !2774)
!2904 = !DILocation(line: 1049, column: 2, scope: !2774)
!2905 = !DILocation(line: 1049, column: 7, scope: !2774)
!2906 = !DILocation(line: 1049, column: 16, scope: !2774)
!2907 = !DILocation(line: 1050, column: 17, scope: !2774)
!2908 = !DILocation(line: 1050, column: 2, scope: !2774)
!2909 = !DILocation(line: 1050, column: 7, scope: !2774)
!2910 = !DILocation(line: 1050, column: 15, scope: !2774)
!2911 = !DILocation(line: 1051, column: 9, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 1051, column: 2)
!2913 = !DILocation(line: 1051, column: 7, scope: !2912)
!2914 = !DILocation(line: 1051, column: 14, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 1051, column: 2)
!2916 = !DILocation(line: 1051, column: 18, scope: !2915)
!2917 = !DILocation(line: 1051, column: 16, scope: !2915)
!2918 = !DILocation(line: 1051, column: 2, scope: !2912)
!2919 = !DILocation(line: 1052, column: 42, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1051, column: 32)
!2921 = !DILocation(line: 1052, column: 35, scope: !2920)
!2922 = !DILocation(line: 1052, column: 46, scope: !2920)
!2923 = !DILocation(line: 1052, column: 27, scope: !2920)
!2924 = !DILocation(line: 1052, column: 59, scope: !2920)
!2925 = !DILocation(line: 1052, column: 19, scope: !2920)
!2926 = !DILocation(line: 1052, column: 7, scope: !2920)
!2927 = !DILocation(line: 1053, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1053, column: 7)
!2929 = !DILocation(line: 1053, column: 11, scope: !2928)
!2930 = !DILocation(line: 1053, column: 7, scope: !2920)
!2931 = !DILocation(line: 1054, column: 13, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 1053, column: 20)
!2933 = !DILocation(line: 1054, column: 4, scope: !2932)
!2934 = !DILocation(line: 1056, column: 4, scope: !2932)
!2935 = !DILocation(line: 1059, column: 11, scope: !2920)
!2936 = !DILocation(line: 1059, column: 23, scope: !2920)
!2937 = !DILocation(line: 1059, column: 16, scope: !2920)
!2938 = !DILocation(line: 1059, column: 27, scope: !2920)
!2939 = !DILocation(line: 1059, column: 3, scope: !2920)
!2940 = !DILocation(line: 1060, column: 34, scope: !2920)
!2941 = !DILocation(line: 1060, column: 3, scope: !2920)
!2942 = !DILocation(line: 1060, column: 8, scope: !2920)
!2943 = !DILocation(line: 1060, column: 17, scope: !2920)
!2944 = !DILocation(line: 1060, column: 21, scope: !2920)
!2945 = !DILocation(line: 1060, column: 32, scope: !2920)
!2946 = !DILocation(line: 1061, column: 3, scope: !2920)
!2947 = !DILocation(line: 1061, column: 8, scope: !2920)
!2948 = !DILocation(line: 1061, column: 17, scope: !2920)
!2949 = !DILocation(line: 1061, column: 21, scope: !2920)
!2950 = !DILocation(line: 1061, column: 32, scope: !2920)
!2951 = !DILocation(line: 1062, column: 3, scope: !2920)
!2952 = !DILocation(line: 1062, column: 8, scope: !2920)
!2953 = !DILocation(line: 1062, column: 17, scope: !2920)
!2954 = !DILocation(line: 1062, column: 21, scope: !2920)
!2955 = !DILocation(line: 1062, column: 32, scope: !2920)
!2956 = !DILocation(line: 1063, column: 10, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1063, column: 3)
!2958 = !DILocation(line: 1063, column: 8, scope: !2957)
!2959 = !DILocation(line: 1063, column: 15, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1063, column: 3)
!2961 = !DILocation(line: 1063, column: 17, scope: !2960)
!2962 = !DILocation(line: 1063, column: 3, scope: !2957)
!2963 = !DILocation(line: 1064, column: 4, scope: !2960)
!2964 = !DILocation(line: 1064, column: 9, scope: !2960)
!2965 = !DILocation(line: 1064, column: 18, scope: !2960)
!2966 = !DILocation(line: 1064, column: 22, scope: !2960)
!2967 = !DILocation(line: 1064, column: 33, scope: !2960)
!2968 = !DILocation(line: 1064, column: 37, scope: !2960)
!2969 = !DILocation(line: 1063, column: 37, scope: !2960)
!2970 = !DILocation(line: 1063, column: 3, scope: !2960)
!2971 = distinct !{!2971, !2962, !2972}
!2972 = !DILocation(line: 1064, column: 39, scope: !2957)
!2973 = !DILocation(line: 1065, column: 34, scope: !2920)
!2974 = !DILocation(line: 1065, column: 3, scope: !2920)
!2975 = !DILocation(line: 1065, column: 8, scope: !2920)
!2976 = !DILocation(line: 1065, column: 17, scope: !2920)
!2977 = !DILocation(line: 1065, column: 21, scope: !2920)
!2978 = !DILocation(line: 1065, column: 32, scope: !2920)
!2979 = !DILocation(line: 1066, column: 41, scope: !2920)
!2980 = !DILocation(line: 1066, column: 34, scope: !2920)
!2981 = !DILocation(line: 1066, column: 45, scope: !2920)
!2982 = !DILocation(line: 1066, column: 3, scope: !2920)
!2983 = !DILocation(line: 1066, column: 8, scope: !2920)
!2984 = !DILocation(line: 1066, column: 17, scope: !2920)
!2985 = !DILocation(line: 1066, column: 21, scope: !2920)
!2986 = !DILocation(line: 1066, column: 32, scope: !2920)
!2987 = !DILocation(line: 1067, column: 41, scope: !2920)
!2988 = !DILocation(line: 1067, column: 34, scope: !2920)
!2989 = !DILocation(line: 1067, column: 45, scope: !2920)
!2990 = !DILocation(line: 1067, column: 3, scope: !2920)
!2991 = !DILocation(line: 1067, column: 8, scope: !2920)
!2992 = !DILocation(line: 1067, column: 17, scope: !2920)
!2993 = !DILocation(line: 1067, column: 21, scope: !2920)
!2994 = !DILocation(line: 1067, column: 32, scope: !2920)
!2995 = !DILocation(line: 1068, column: 41, scope: !2920)
!2996 = !DILocation(line: 1068, column: 34, scope: !2920)
!2997 = !DILocation(line: 1068, column: 45, scope: !2920)
!2998 = !DILocation(line: 1068, column: 3, scope: !2920)
!2999 = !DILocation(line: 1068, column: 8, scope: !2920)
!3000 = !DILocation(line: 1068, column: 17, scope: !2920)
!3001 = !DILocation(line: 1068, column: 21, scope: !2920)
!3002 = !DILocation(line: 1068, column: 32, scope: !2920)
!3003 = !DILocation(line: 1069, column: 41, scope: !2920)
!3004 = !DILocation(line: 1069, column: 34, scope: !2920)
!3005 = !DILocation(line: 1069, column: 45, scope: !2920)
!3006 = !DILocation(line: 1069, column: 3, scope: !2920)
!3007 = !DILocation(line: 1069, column: 8, scope: !2920)
!3008 = !DILocation(line: 1069, column: 17, scope: !2920)
!3009 = !DILocation(line: 1069, column: 21, scope: !2920)
!3010 = !DILocation(line: 1069, column: 32, scope: !2920)
!3011 = !DILocation(line: 1070, column: 41, scope: !2920)
!3012 = !DILocation(line: 1070, column: 34, scope: !2920)
!3013 = !DILocation(line: 1070, column: 45, scope: !2920)
!3014 = !DILocation(line: 1070, column: 3, scope: !2920)
!3015 = !DILocation(line: 1070, column: 8, scope: !2920)
!3016 = !DILocation(line: 1070, column: 17, scope: !2920)
!3017 = !DILocation(line: 1070, column: 21, scope: !2920)
!3018 = !DILocation(line: 1070, column: 32, scope: !2920)
!3019 = !DILocation(line: 1071, column: 41, scope: !2920)
!3020 = !DILocation(line: 1071, column: 34, scope: !2920)
!3021 = !DILocation(line: 1071, column: 45, scope: !2920)
!3022 = !DILocation(line: 1071, column: 3, scope: !2920)
!3023 = !DILocation(line: 1071, column: 8, scope: !2920)
!3024 = !DILocation(line: 1071, column: 17, scope: !2920)
!3025 = !DILocation(line: 1071, column: 21, scope: !2920)
!3026 = !DILocation(line: 1071, column: 32, scope: !2920)
!3027 = !DILocation(line: 1072, column: 41, scope: !2920)
!3028 = !DILocation(line: 1072, column: 34, scope: !2920)
!3029 = !DILocation(line: 1072, column: 45, scope: !2920)
!3030 = !DILocation(line: 1072, column: 3, scope: !2920)
!3031 = !DILocation(line: 1072, column: 8, scope: !2920)
!3032 = !DILocation(line: 1072, column: 17, scope: !2920)
!3033 = !DILocation(line: 1072, column: 21, scope: !2920)
!3034 = !DILocation(line: 1072, column: 32, scope: !2920)
!3035 = !DILocation(line: 1073, column: 3, scope: !2920)
!3036 = !DILocation(line: 1073, column: 8, scope: !2920)
!3037 = !DILocation(line: 1073, column: 17, scope: !2920)
!3038 = !DILocation(line: 1073, column: 21, scope: !2920)
!3039 = !DILocation(line: 1073, column: 32, scope: !2920)
!3040 = !DILocation(line: 1074, column: 3, scope: !2920)
!3041 = !DILocation(line: 1074, column: 8, scope: !2920)
!3042 = !DILocation(line: 1074, column: 17, scope: !2920)
!3043 = !DILocation(line: 1074, column: 21, scope: !2920)
!3044 = !DILocation(line: 1074, column: 32, scope: !2920)
!3045 = !DILocation(line: 1075, column: 10, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1075, column: 3)
!3047 = !DILocation(line: 1075, column: 8, scope: !3046)
!3048 = !DILocation(line: 1075, column: 15, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1075, column: 3)
!3050 = !DILocation(line: 1075, column: 17, scope: !3049)
!3051 = !DILocation(line: 1075, column: 3, scope: !3046)
!3052 = !DILocation(line: 1076, column: 42, scope: !3049)
!3053 = !DILocation(line: 1076, column: 35, scope: !3049)
!3054 = !DILocation(line: 1076, column: 46, scope: !3049)
!3055 = !DILocation(line: 1076, column: 53, scope: !3049)
!3056 = !DILocation(line: 1076, column: 4, scope: !3049)
!3057 = !DILocation(line: 1076, column: 9, scope: !3049)
!3058 = !DILocation(line: 1076, column: 18, scope: !3049)
!3059 = !DILocation(line: 1076, column: 22, scope: !3049)
!3060 = !DILocation(line: 1076, column: 29, scope: !3049)
!3061 = !DILocation(line: 1076, column: 33, scope: !3049)
!3062 = !DILocation(line: 1075, column: 24, scope: !3049)
!3063 = !DILocation(line: 1075, column: 3, scope: !3049)
!3064 = distinct !{!3064, !3051, !3065}
!3065 = !DILocation(line: 1076, column: 55, scope: !3046)
!3066 = !DILocation(line: 1077, column: 41, scope: !2920)
!3067 = !DILocation(line: 1077, column: 34, scope: !2920)
!3068 = !DILocation(line: 1077, column: 45, scope: !2920)
!3069 = !DILocation(line: 1077, column: 3, scope: !2920)
!3070 = !DILocation(line: 1077, column: 8, scope: !2920)
!3071 = !DILocation(line: 1077, column: 17, scope: !2920)
!3072 = !DILocation(line: 1077, column: 21, scope: !2920)
!3073 = !DILocation(line: 1077, column: 32, scope: !2920)
!3074 = !DILocation(line: 1078, column: 2, scope: !2920)
!3075 = !DILocation(line: 1051, column: 28, scope: !2915)
!3076 = !DILocation(line: 1051, column: 2, scope: !2915)
!3077 = distinct !{!3077, !2918, !3078}
!3078 = !DILocation(line: 1078, column: 2, scope: !2912)
!3079 = !DILocation(line: 1079, column: 1, scope: !2774)
!3080 = distinct !DISubprogram(name: "addbonds2reslib", scope: !3, file: !3, line: 1081, type: !2775, scopeLine: 1082, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3081 = !DILocalVariable(name: "rlp", arg: 1, scope: !3080, file: !3, line: 1081, type: !224)
!3082 = !DILocation(line: 1081, column: 40, scope: !3080)
!3083 = !DILocalVariable(name: "res", scope: !3080, file: !3, line: 1083, type: !7)
!3084 = !DILocation(line: 1083, column: 13, scope: !3080)
!3085 = !DILocalVariable(name: "bp", scope: !3080, file: !3, line: 1084, type: !175)
!3086 = !DILocation(line: 1084, column: 13, scope: !3080)
!3087 = !DILocalVariable(name: "b", scope: !3080, file: !3, line: 1085, type: !16)
!3088 = !DILocation(line: 1085, column: 6, scope: !3080)
!3089 = !DILocalVariable(name: "a", scope: !3080, file: !3, line: 1086, type: !16)
!3090 = !DILocation(line: 1086, column: 6, scope: !3080)
!3091 = !DILocalVariable(name: "ai", scope: !3080, file: !3, line: 1086, type: !16)
!3092 = !DILocation(line: 1086, column: 9, scope: !3080)
!3093 = !DILocalVariable(name: "aj", scope: !3080, file: !3, line: 1086, type: !16)
!3094 = !DILocation(line: 1086, column: 13, scope: !3080)
!3095 = !DILocalVariable(name: "api", scope: !3080, file: !3, line: 1087, type: !193)
!3096 = !DILocation(line: 1087, column: 10, scope: !3080)
!3097 = !DILocalVariable(name: "apj", scope: !3080, file: !3, line: 1087, type: !193)
!3098 = !DILocation(line: 1087, column: 16, scope: !3080)
!3099 = !DILocation(line: 1089, column: 13, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 1089, column: 2)
!3101 = !DILocation(line: 1089, column: 18, scope: !3100)
!3102 = !DILocation(line: 1089, column: 11, scope: !3100)
!3103 = !DILocation(line: 1089, column: 7, scope: !3100)
!3104 = !DILocation(line: 1089, column: 28, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1089, column: 2)
!3106 = !DILocation(line: 1089, column: 2, scope: !3100)
!3107 = !DILocation(line: 1090, column: 15, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 1090, column: 7)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1089, column: 52)
!3110 = !DILocation(line: 1090, column: 20, scope: !3108)
!3111 = !DILocation(line: 1090, column: 7, scope: !3108)
!3112 = !DILocation(line: 1090, column: 41, scope: !3108)
!3113 = !DILocation(line: 1090, column: 7, scope: !3109)
!3114 = !DILocation(line: 1092, column: 13, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1091, column: 8)
!3116 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1090, column: 47)
!3117 = !DILocation(line: 1092, column: 21, scope: !3115)
!3118 = !DILocation(line: 1092, column: 5, scope: !3115)
!3119 = !DILocation(line: 1091, column: 15, scope: !3115)
!3120 = !DILocation(line: 1091, column: 13, scope: !3115)
!3121 = !DILocation(line: 1093, column: 5, scope: !3115)
!3122 = !DILocation(line: 1091, column: 8, scope: !3116)
!3123 = !DILocation(line: 1094, column: 5, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 1093, column: 14)
!3125 = !DILocation(line: 1096, column: 5, scope: !3124)
!3126 = !DILocation(line: 1097, column: 5, scope: !3124)
!3127 = !DILocation(line: 1099, column: 11, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1099, column: 4)
!3129 = !DILocation(line: 1099, column: 9, scope: !3128)
!3130 = !DILocation(line: 1099, column: 16, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1099, column: 4)
!3132 = !DILocation(line: 1099, column: 20, scope: !3131)
!3133 = !DILocation(line: 1099, column: 18, scope: !3131)
!3134 = !DILocation(line: 1099, column: 4, scope: !3128)
!3135 = !DILocation(line: 1100, column: 32, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 1099, column: 34)
!3137 = !DILocation(line: 1100, column: 25, scope: !3136)
!3138 = !DILocation(line: 1100, column: 10, scope: !3136)
!3139 = !DILocation(line: 1100, column: 14, scope: !3136)
!3140 = !DILocation(line: 1100, column: 23, scope: !3136)
!3141 = !DILocation(line: 1100, column: 8, scope: !3136)
!3142 = !DILocation(line: 1101, column: 32, scope: !3136)
!3143 = !DILocation(line: 1101, column: 25, scope: !3136)
!3144 = !DILocation(line: 1101, column: 10, scope: !3136)
!3145 = !DILocation(line: 1101, column: 14, scope: !3136)
!3146 = !DILocation(line: 1101, column: 23, scope: !3136)
!3147 = !DILocation(line: 1101, column: 8, scope: !3136)
!3148 = !DILocation(line: 1102, column: 7, scope: !3136)
!3149 = !DILocation(line: 1103, column: 7, scope: !3136)
!3150 = !DILocation(line: 1104, column: 12, scope: !3136)
!3151 = !DILocation(line: 1104, column: 17, scope: !3136)
!3152 = !DILocation(line: 1104, column: 26, scope: !3136)
!3153 = !DILocation(line: 1104, column: 9, scope: !3136)
!3154 = !DILocation(line: 1105, column: 12, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1105, column: 5)
!3156 = !DILocation(line: 1105, column: 10, scope: !3155)
!3157 = !DILocation(line: 1105, column: 17, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 1105, column: 5)
!3159 = !DILocation(line: 1105, column: 19, scope: !3158)
!3160 = !DILocation(line: 1105, column: 5, scope: !3155)
!3161 = !DILocation(line: 1106, column: 10, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 1106, column: 10)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1105, column: 42)
!3164 = !DILocation(line: 1106, column: 15, scope: !3162)
!3165 = !DILocation(line: 1106, column: 26, scope: !3162)
!3166 = !DILocation(line: 1106, column: 33, scope: !3162)
!3167 = !DILocation(line: 1106, column: 30, scope: !3162)
!3168 = !DILocation(line: 1106, column: 10, scope: !3163)
!3169 = !DILocation(line: 1107, column: 7, scope: !3162)
!3170 = !DILocation(line: 1108, column: 15, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1108, column: 15)
!3172 = !DILocation(line: 1108, column: 20, scope: !3171)
!3173 = !DILocation(line: 1108, column: 31, scope: !3171)
!3174 = !DILocation(line: 1108, column: 35, scope: !3171)
!3175 = !DILocation(line: 1108, column: 15, scope: !3162)
!3176 = !DILocation(line: 1109, column: 29, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 1108, column: 45)
!3178 = !DILocation(line: 1109, column: 7, scope: !3177)
!3179 = !DILocation(line: 1109, column: 12, scope: !3177)
!3180 = !DILocation(line: 1109, column: 23, scope: !3177)
!3181 = !DILocation(line: 1109, column: 27, scope: !3177)
!3182 = !DILocation(line: 1110, column: 7, scope: !3177)
!3183 = !DILocation(line: 1110, column: 12, scope: !3177)
!3184 = !DILocation(line: 1110, column: 22, scope: !3177)
!3185 = !DILocation(line: 1111, column: 7, scope: !3177)
!3186 = !DILocation(line: 1113, column: 5, scope: !3163)
!3187 = !DILocation(line: 1105, column: 38, scope: !3158)
!3188 = !DILocation(line: 1105, column: 5, scope: !3158)
!3189 = distinct !{!3189, !3160, !3190}
!3190 = !DILocation(line: 1113, column: 5, scope: !3155)
!3191 = !DILocation(line: 1114, column: 12, scope: !3136)
!3192 = !DILocation(line: 1114, column: 17, scope: !3136)
!3193 = !DILocation(line: 1114, column: 26, scope: !3136)
!3194 = !DILocation(line: 1114, column: 9, scope: !3136)
!3195 = !DILocation(line: 1115, column: 12, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1115, column: 5)
!3197 = !DILocation(line: 1115, column: 10, scope: !3196)
!3198 = !DILocation(line: 1115, column: 17, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 1115, column: 5)
!3200 = !DILocation(line: 1115, column: 19, scope: !3199)
!3201 = !DILocation(line: 1115, column: 5, scope: !3196)
!3202 = !DILocation(line: 1116, column: 10, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1116, column: 10)
!3204 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 1115, column: 42)
!3205 = !DILocation(line: 1116, column: 15, scope: !3203)
!3206 = !DILocation(line: 1116, column: 26, scope: !3203)
!3207 = !DILocation(line: 1116, column: 33, scope: !3203)
!3208 = !DILocation(line: 1116, column: 30, scope: !3203)
!3209 = !DILocation(line: 1116, column: 10, scope: !3204)
!3210 = !DILocation(line: 1117, column: 7, scope: !3203)
!3211 = !DILocation(line: 1118, column: 15, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 1118, column: 15)
!3213 = !DILocation(line: 1118, column: 20, scope: !3212)
!3214 = !DILocation(line: 1118, column: 31, scope: !3212)
!3215 = !DILocation(line: 1118, column: 35, scope: !3212)
!3216 = !DILocation(line: 1118, column: 15, scope: !3203)
!3217 = !DILocation(line: 1119, column: 29, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 1118, column: 45)
!3219 = !DILocation(line: 1119, column: 7, scope: !3218)
!3220 = !DILocation(line: 1119, column: 12, scope: !3218)
!3221 = !DILocation(line: 1119, column: 23, scope: !3218)
!3222 = !DILocation(line: 1119, column: 27, scope: !3218)
!3223 = !DILocation(line: 1120, column: 7, scope: !3218)
!3224 = !DILocation(line: 1120, column: 12, scope: !3218)
!3225 = !DILocation(line: 1120, column: 22, scope: !3218)
!3226 = !DILocation(line: 1121, column: 7, scope: !3218)
!3227 = !DILocation(line: 1123, column: 5, scope: !3204)
!3228 = !DILocation(line: 1115, column: 38, scope: !3199)
!3229 = !DILocation(line: 1115, column: 5, scope: !3199)
!3230 = distinct !{!3230, !3201, !3231}
!3231 = !DILocation(line: 1123, column: 5, scope: !3196)
!3232 = !DILocation(line: 1124, column: 4, scope: !3136)
!3233 = !DILocation(line: 1099, column: 30, scope: !3131)
!3234 = !DILocation(line: 1099, column: 4, scope: !3131)
!3235 = distinct !{!3235, !3134, !3236}
!3236 = !DILocation(line: 1124, column: 4, scope: !3128)
!3237 = !DILocation(line: 1125, column: 23, scope: !3116)
!3238 = !DILocation(line: 1125, column: 4, scope: !3116)
!3239 = !DILocation(line: 1125, column: 9, scope: !3116)
!3240 = !DILocation(line: 1125, column: 21, scope: !3116)
!3241 = !DILocation(line: 1126, column: 22, scope: !3116)
!3242 = !DILocation(line: 1126, column: 4, scope: !3116)
!3243 = !DILocation(line: 1126, column: 9, scope: !3116)
!3244 = !DILocation(line: 1126, column: 20, scope: !3116)
!3245 = !DILocation(line: 1127, column: 4, scope: !3116)
!3246 = !DILocation(line: 1129, column: 2, scope: !3109)
!3247 = !DILocation(line: 1089, column: 39, scope: !3105)
!3248 = !DILocation(line: 1089, column: 44, scope: !3105)
!3249 = !DILocation(line: 1089, column: 37, scope: !3105)
!3250 = !DILocation(line: 1089, column: 2, scope: !3105)
!3251 = distinct !{!3251, !3106, !3252}
!3252 = !DILocation(line: 1129, column: 2, scope: !3100)
!3253 = !DILocation(line: 1130, column: 52, scope: !3080)
!3254 = !DILocation(line: 1130, column: 57, scope: !3080)
!3255 = !DILocation(line: 1130, column: 2, scope: !3080)
!3256 = !DILocation(line: 1131, column: 2, scope: !3080)
!3257 = !DILocation(line: 1132, column: 2, scope: !3080)
!3258 = !DILocation(line: 1133, column: 1, scope: !3080)
!3259 = distinct !DISubprogram(name: "setrlibattrs", scope: !3, file: !3, line: 978, type: !3260, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !224, !221}
!3262 = !DILocalVariable(name: "rlp", arg: 1, scope: !3259, file: !3, line: 978, type: !224)
!3263 = !DILocation(line: 978, column: 37, scope: !3259)
!3264 = !DILocalVariable(name: "line", arg: 2, scope: !3259, file: !3, line: 978, type: !221)
!3265 = !DILocation(line: 978, column: 47, scope: !3259)
!3266 = !DILocalVariable(name: "rkind", scope: !3259, file: !3, line: 980, type: !1582)
!3267 = !DILocation(line: 980, column: 7, scope: !3259)
!3268 = !DILocalVariable(name: "rakind", scope: !3259, file: !3, line: 980, type: !1582)
!3269 = !DILocation(line: 980, column: 21, scope: !3259)
!3270 = !DILocation(line: 982, column: 14, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 982, column: 6)
!3272 = !DILocation(line: 982, column: 43, scope: !3271)
!3273 = !DILocation(line: 982, column: 50, scope: !3271)
!3274 = !DILocation(line: 982, column: 6, scope: !3271)
!3275 = !DILocation(line: 982, column: 59, scope: !3271)
!3276 = !DILocation(line: 982, column: 6, scope: !3259)
!3277 = !DILocation(line: 983, column: 3, scope: !3271)
!3278 = !DILocation(line: 984, column: 14, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 984, column: 6)
!3280 = !DILocation(line: 984, column: 6, scope: !3279)
!3281 = !DILocation(line: 984, column: 29, scope: !3279)
!3282 = !DILocation(line: 984, column: 6, scope: !3259)
!3283 = !DILocation(line: 985, column: 3, scope: !3279)
!3284 = !DILocation(line: 985, column: 8, scope: !3279)
!3285 = !DILocation(line: 985, column: 18, scope: !3279)
!3286 = !DILocation(line: 986, column: 19, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 986, column: 11)
!3288 = !DILocation(line: 986, column: 11, scope: !3287)
!3289 = !DILocation(line: 986, column: 34, scope: !3287)
!3290 = !DILocation(line: 986, column: 11, scope: !3279)
!3291 = !DILocation(line: 987, column: 3, scope: !3287)
!3292 = !DILocation(line: 987, column: 8, scope: !3287)
!3293 = !DILocation(line: 987, column: 18, scope: !3287)
!3294 = !DILocation(line: 988, column: 19, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 988, column: 11)
!3296 = !DILocation(line: 988, column: 11, scope: !3295)
!3297 = !DILocation(line: 988, column: 33, scope: !3295)
!3298 = !DILocation(line: 988, column: 11, scope: !3287)
!3299 = !DILocation(line: 989, column: 3, scope: !3295)
!3300 = !DILocation(line: 989, column: 8, scope: !3295)
!3301 = !DILocation(line: 989, column: 18, scope: !3295)
!3302 = !DILocation(line: 990, column: 14, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 990, column: 6)
!3304 = !DILocation(line: 990, column: 6, scope: !3303)
!3305 = !DILocation(line: 990, column: 33, scope: !3303)
!3306 = !DILocation(line: 990, column: 6, scope: !3259)
!3307 = !DILocation(line: 991, column: 3, scope: !3303)
!3308 = !DILocation(line: 991, column: 8, scope: !3303)
!3309 = !DILocation(line: 991, column: 22, scope: !3303)
!3310 = !DILocation(line: 992, column: 19, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 992, column: 11)
!3312 = !DILocation(line: 992, column: 11, scope: !3311)
!3313 = !DILocation(line: 992, column: 39, scope: !3311)
!3314 = !DILocation(line: 992, column: 11, scope: !3303)
!3315 = !DILocation(line: 993, column: 3, scope: !3311)
!3316 = !DILocation(line: 993, column: 8, scope: !3311)
!3317 = !DILocation(line: 993, column: 22, scope: !3311)
!3318 = !DILocation(line: 994, column: 1, scope: !3259)
!3319 = distinct !DISubprogram(name: "addqr2reslib", scope: !3, file: !3, line: 1135, type: !2775, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3320 = !DILocalVariable(name: "rlp", arg: 1, scope: !3319, file: !3, line: 1135, type: !224)
!3321 = !DILocation(line: 1135, column: 37, scope: !3319)
!3322 = !DILocalVariable(name: "res", scope: !3319, file: !3, line: 1137, type: !7)
!3323 = !DILocation(line: 1137, column: 13, scope: !3319)
!3324 = !DILocalVariable(name: "a", scope: !3319, file: !3, line: 1138, type: !16)
!3325 = !DILocation(line: 1138, column: 7, scope: !3319)
!3326 = !DILocalVariable(name: "ap", scope: !3319, file: !3, line: 1139, type: !193)
!3327 = !DILocation(line: 1139, column: 11, scope: !3319)
!3328 = !DILocalVariable(name: "apr", scope: !3319, file: !3, line: 1139, type: !193)
!3329 = !DILocation(line: 1139, column: 16, scope: !3319)
!3330 = !DILocation(line: 1141, column: 13, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 1141, column: 2)
!3332 = !DILocation(line: 1141, column: 18, scope: !3331)
!3333 = !DILocation(line: 1141, column: 11, scope: !3331)
!3334 = !DILocation(line: 1141, column: 7, scope: !3331)
!3335 = !DILocation(line: 1141, column: 28, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 1141, column: 2)
!3337 = !DILocation(line: 1141, column: 2, scope: !3331)
!3338 = !DILocation(line: 1142, column: 15, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1142, column: 7)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1141, column: 52)
!3341 = !DILocation(line: 1142, column: 20, scope: !3339)
!3342 = !DILocation(line: 1142, column: 7, scope: !3339)
!3343 = !DILocation(line: 1142, column: 41, scope: !3339)
!3344 = !DILocation(line: 1142, column: 7, scope: !3340)
!3345 = !DILocation(line: 1143, column: 11, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1143, column: 4)
!3347 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1142, column: 47)
!3348 = !DILocation(line: 1143, column: 19, scope: !3346)
!3349 = !DILocation(line: 1143, column: 9, scope: !3346)
!3350 = !DILocation(line: 1143, column: 28, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 1143, column: 4)
!3352 = !DILocation(line: 1143, column: 32, scope: !3351)
!3353 = !DILocation(line: 1143, column: 30, scope: !3351)
!3354 = !DILocation(line: 1143, column: 4, scope: !3346)
!3355 = !DILocation(line: 1144, column: 26, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1144, column: 9)
!3357 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 1143, column: 52)
!3358 = !DILocation(line: 1144, column: 31, scope: !3356)
!3359 = !DILocation(line: 1144, column: 35, scope: !3356)
!3360 = !DILocation(line: 1144, column: 16, scope: !3356)
!3361 = !DILocation(line: 1144, column: 14, scope: !3356)
!3362 = !DILocation(line: 1144, column: 9, scope: !3357)
!3363 = !DILocation(line: 1146, column: 22, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 1144, column: 50)
!3365 = !DILocation(line: 1146, column: 26, scope: !3364)
!3366 = !DILocation(line: 1146, column: 6, scope: !3364)
!3367 = !DILocation(line: 1146, column: 11, scope: !3364)
!3368 = !DILocation(line: 1146, column: 20, scope: !3364)
!3369 = !DILocation(line: 1147, column: 22, scope: !3364)
!3370 = !DILocation(line: 1147, column: 26, scope: !3364)
!3371 = !DILocation(line: 1147, column: 6, scope: !3364)
!3372 = !DILocation(line: 1147, column: 11, scope: !3364)
!3373 = !DILocation(line: 1147, column: 20, scope: !3364)
!3374 = !DILocation(line: 1148, column: 22, scope: !3364)
!3375 = !DILocation(line: 1148, column: 26, scope: !3364)
!3376 = !DILocation(line: 1148, column: 6, scope: !3364)
!3377 = !DILocation(line: 1148, column: 11, scope: !3364)
!3378 = !DILocation(line: 1148, column: 20, scope: !3364)
!3379 = !DILocation(line: 1149, column: 22, scope: !3364)
!3380 = !DILocation(line: 1149, column: 26, scope: !3364)
!3381 = !DILocation(line: 1149, column: 6, scope: !3364)
!3382 = !DILocation(line: 1149, column: 11, scope: !3364)
!3383 = !DILocation(line: 1149, column: 20, scope: !3364)
!3384 = !DILocation(line: 1150, column: 22, scope: !3364)
!3385 = !DILocation(line: 1150, column: 26, scope: !3364)
!3386 = !DILocation(line: 1150, column: 6, scope: !3364)
!3387 = !DILocation(line: 1150, column: 11, scope: !3364)
!3388 = !DILocation(line: 1150, column: 20, scope: !3364)
!3389 = !DILocation(line: 1151, column: 22, scope: !3364)
!3390 = !DILocation(line: 1151, column: 26, scope: !3364)
!3391 = !DILocation(line: 1151, column: 6, scope: !3364)
!3392 = !DILocation(line: 1151, column: 11, scope: !3364)
!3393 = !DILocation(line: 1151, column: 20, scope: !3364)
!3394 = !DILocation(line: 1152, column: 22, scope: !3364)
!3395 = !DILocation(line: 1152, column: 26, scope: !3364)
!3396 = !DILocation(line: 1152, column: 6, scope: !3364)
!3397 = !DILocation(line: 1152, column: 11, scope: !3364)
!3398 = !DILocation(line: 1152, column: 20, scope: !3364)
!3399 = !DILocation(line: 1153, column: 5, scope: !3364)
!3400 = !DILocation(line: 1154, column: 4, scope: !3357)
!3401 = !DILocation(line: 1143, column: 42, scope: !3351)
!3402 = !DILocation(line: 1143, column: 48, scope: !3351)
!3403 = !DILocation(line: 1143, column: 4, scope: !3351)
!3404 = distinct !{!3404, !3354, !3405}
!3405 = !DILocation(line: 1154, column: 4, scope: !3346)
!3406 = !DILocation(line: 1155, column: 4, scope: !3347)
!3407 = !DILocation(line: 1157, column: 2, scope: !3340)
!3408 = !DILocation(line: 1141, column: 39, scope: !3336)
!3409 = !DILocation(line: 1141, column: 44, scope: !3336)
!3410 = !DILocation(line: 1141, column: 37, scope: !3336)
!3411 = !DILocation(line: 1141, column: 2, scope: !3336)
!3412 = distinct !{!3412, !3337, !3413}
!3413 = !DILocation(line: 1157, column: 2, scope: !3331)
!3414 = !DILocation(line: 1158, column: 52, scope: !3319)
!3415 = !DILocation(line: 1158, column: 57, scope: !3319)
!3416 = !DILocation(line: 1158, column: 2, scope: !3319)
!3417 = !DILocation(line: 1159, column: 2, scope: !3319)
!3418 = !DILocation(line: 1160, column: 2, scope: !3319)
!3419 = !DILocation(line: 1161, column: 1, scope: !3319)
!3420 = distinct !DISubprogram(name: "findatom", scope: !3, file: !3, line: 1202, type: !3421, scopeLine: 1203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!193, !7, !221}
!3423 = !DILocalVariable(name: "res", arg: 1, scope: !3420, file: !3, line: 1202, type: !7)
!3424 = !DILocation(line: 1202, column: 37, scope: !3420)
!3425 = !DILocalVariable(name: "aname", arg: 2, scope: !3420, file: !3, line: 1202, type: !221)
!3426 = !DILocation(line: 1202, column: 47, scope: !3420)
!3427 = !DILocalVariable(name: "a", scope: !3420, file: !3, line: 1204, type: !16)
!3428 = !DILocation(line: 1204, column: 6, scope: !3420)
!3429 = !DILocation(line: 1206, column: 9, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 1206, column: 2)
!3431 = !DILocation(line: 1206, column: 7, scope: !3430)
!3432 = !DILocation(line: 1206, column: 14, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 1206, column: 2)
!3434 = !DILocation(line: 1206, column: 18, scope: !3433)
!3435 = !DILocation(line: 1206, column: 23, scope: !3433)
!3436 = !DILocation(line: 1206, column: 16, scope: !3433)
!3437 = !DILocation(line: 1206, column: 2, scope: !3430)
!3438 = !DILocation(line: 1207, column: 16, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 1207, column: 7)
!3440 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1206, column: 38)
!3441 = !DILocation(line: 1207, column: 21, scope: !3439)
!3442 = !DILocation(line: 1207, column: 30, scope: !3439)
!3443 = !DILocation(line: 1207, column: 34, scope: !3439)
!3444 = !DILocation(line: 1207, column: 46, scope: !3439)
!3445 = !DILocation(line: 1207, column: 8, scope: !3439)
!3446 = !DILocation(line: 1207, column: 7, scope: !3440)
!3447 = !DILocation(line: 1208, column: 13, scope: !3439)
!3448 = !DILocation(line: 1208, column: 18, scope: !3439)
!3449 = !DILocation(line: 1208, column: 27, scope: !3439)
!3450 = !DILocation(line: 1208, column: 4, scope: !3439)
!3451 = !DILocation(line: 1209, column: 2, scope: !3440)
!3452 = !DILocation(line: 1206, column: 34, scope: !3433)
!3453 = !DILocation(line: 1206, column: 2, scope: !3433)
!3454 = distinct !{!3454, !3437, !3455}
!3455 = !DILocation(line: 1209, column: 2, scope: !3430)
!3456 = !DILocation(line: 1210, column: 2, scope: !3420)
!3457 = !DILocation(line: 1211, column: 1, scope: !3420)
!3458 = distinct !DISubprogram(name: "addchi2reslib", scope: !3, file: !3, line: 1163, type: !2775, scopeLine: 1164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3459 = !DILocalVariable(name: "rlp", arg: 1, scope: !3458, file: !3, line: 1163, type: !224)
!3460 = !DILocation(line: 1163, column: 38, scope: !3458)
!3461 = !DILocalVariable(name: "res", scope: !3458, file: !3, line: 1165, type: !7)
!3462 = !DILocation(line: 1165, column: 13, scope: !3458)
!3463 = !DILocalVariable(name: "cp", scope: !3458, file: !3, line: 1166, type: !182)
!3464 = !DILocation(line: 1166, column: 12, scope: !3458)
!3465 = !DILocalVariable(name: "a", scope: !3458, file: !3, line: 1167, type: !16)
!3466 = !DILocation(line: 1167, column: 7, scope: !3458)
!3467 = !DILocalVariable(name: "c", scope: !3458, file: !3, line: 1167, type: !16)
!3468 = !DILocation(line: 1167, column: 10, scope: !3458)
!3469 = !DILocalVariable(name: "ca", scope: !3458, file: !3, line: 1167, type: !16)
!3470 = !DILocation(line: 1167, column: 13, scope: !3458)
!3471 = !DILocalVariable(name: "pos", scope: !3458, file: !3, line: 1168, type: !3472)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 768, elements: !188)
!3473 = !DILocation(line: 1168, column: 11, scope: !3458)
!3474 = !DILocalVariable(name: "dvol", scope: !3458, file: !3, line: 1169, type: !3472)
!3475 = !DILocation(line: 1169, column: 11, scope: !3458)
!3476 = !DILocalVariable(name: "vol", scope: !3458, file: !3, line: 1170, type: !41)
!3477 = !DILocation(line: 1170, column: 10, scope: !3458)
!3478 = !DILocation(line: 1172, column: 13, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 1172, column: 2)
!3480 = !DILocation(line: 1172, column: 18, scope: !3479)
!3481 = !DILocation(line: 1172, column: 11, scope: !3479)
!3482 = !DILocation(line: 1172, column: 7, scope: !3479)
!3483 = !DILocation(line: 1172, column: 28, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 1172, column: 2)
!3485 = !DILocation(line: 1172, column: 2, scope: !3479)
!3486 = !DILocation(line: 1173, column: 16, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1173, column: 7)
!3488 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1172, column: 52)
!3489 = !DILocation(line: 1173, column: 21, scope: !3487)
!3490 = !DILocation(line: 1173, column: 8, scope: !3487)
!3491 = !DILocation(line: 1173, column: 7, scope: !3488)
!3492 = !DILocation(line: 1175, column: 13, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1174, column: 8)
!3494 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1173, column: 43)
!3495 = !DILocation(line: 1175, column: 19, scope: !3493)
!3496 = !DILocation(line: 1175, column: 5, scope: !3493)
!3497 = !DILocation(line: 1174, column: 15, scope: !3493)
!3498 = !DILocation(line: 1174, column: 13, scope: !3493)
!3499 = !DILocation(line: 1176, column: 5, scope: !3493)
!3500 = !DILocation(line: 1174, column: 8, scope: !3494)
!3501 = !DILocation(line: 1177, column: 14, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1176, column: 14)
!3503 = !DILocation(line: 1179, column: 6, scope: !3502)
!3504 = !DILocation(line: 1179, column: 11, scope: !3502)
!3505 = !DILocation(line: 1177, column: 5, scope: !3502)
!3506 = !DILocation(line: 1180, column: 5, scope: !3502)
!3507 = !DILocation(line: 1182, column: 21, scope: !3494)
!3508 = !DILocation(line: 1182, column: 4, scope: !3494)
!3509 = !DILocation(line: 1182, column: 9, scope: !3494)
!3510 = !DILocation(line: 1182, column: 19, scope: !3494)
!3511 = !DILocation(line: 1183, column: 20, scope: !3494)
!3512 = !DILocation(line: 1183, column: 4, scope: !3494)
!3513 = !DILocation(line: 1183, column: 9, scope: !3494)
!3514 = !DILocation(line: 1183, column: 18, scope: !3494)
!3515 = !DILocation(line: 1184, column: 11, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1184, column: 4)
!3517 = !DILocation(line: 1184, column: 9, scope: !3516)
!3518 = !DILocation(line: 1184, column: 16, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 1184, column: 4)
!3520 = !DILocation(line: 1184, column: 20, scope: !3519)
!3521 = !DILocation(line: 1184, column: 18, scope: !3519)
!3522 = !DILocation(line: 1184, column: 4, scope: !3516)
!3523 = !DILocation(line: 1185, column: 12, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1185, column: 5)
!3525 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 1184, column: 32)
!3526 = !DILocation(line: 1185, column: 10, scope: !3524)
!3527 = !DILocation(line: 1185, column: 17, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 1185, column: 5)
!3529 = !DILocation(line: 1185, column: 19, scope: !3528)
!3530 = !DILocation(line: 1185, column: 5, scope: !3524)
!3531 = !DILocation(line: 1186, column: 31, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1185, column: 29)
!3533 = !DILocation(line: 1186, column: 27, scope: !3532)
!3534 = !DILocation(line: 1186, column: 34, scope: !3532)
!3535 = !DILocation(line: 1186, column: 41, scope: !3532)
!3536 = !DILocation(line: 1186, column: 11, scope: !3532)
!3537 = !DILocation(line: 1186, column: 15, scope: !3532)
!3538 = !DILocation(line: 1186, column: 22, scope: !3532)
!3539 = !DILocation(line: 1186, column: 25, scope: !3532)
!3540 = !DILocation(line: 1186, column: 9, scope: !3532)
!3541 = !DILocation(line: 1187, column: 18, scope: !3532)
!3542 = !DILocation(line: 1187, column: 23, scope: !3532)
!3543 = !DILocation(line: 1187, column: 31, scope: !3532)
!3544 = !DILocation(line: 1187, column: 35, scope: !3532)
!3545 = !DILocation(line: 1187, column: 10, scope: !3532)
!3546 = !DILocation(line: 1187, column: 6, scope: !3532)
!3547 = !DILocation(line: 1187, column: 16, scope: !3532)
!3548 = !DILocation(line: 1188, column: 18, scope: !3532)
!3549 = !DILocation(line: 1188, column: 23, scope: !3532)
!3550 = !DILocation(line: 1188, column: 31, scope: !3532)
!3551 = !DILocation(line: 1188, column: 35, scope: !3532)
!3552 = !DILocation(line: 1188, column: 10, scope: !3532)
!3553 = !DILocation(line: 1188, column: 6, scope: !3532)
!3554 = !DILocation(line: 1188, column: 16, scope: !3532)
!3555 = !DILocation(line: 1189, column: 18, scope: !3532)
!3556 = !DILocation(line: 1189, column: 23, scope: !3532)
!3557 = !DILocation(line: 1189, column: 31, scope: !3532)
!3558 = !DILocation(line: 1189, column: 35, scope: !3532)
!3559 = !DILocation(line: 1189, column: 10, scope: !3532)
!3560 = !DILocation(line: 1189, column: 6, scope: !3532)
!3561 = !DILocation(line: 1189, column: 16, scope: !3532)
!3562 = !DILocation(line: 1190, column: 5, scope: !3532)
!3563 = !DILocation(line: 1185, column: 25, scope: !3528)
!3564 = !DILocation(line: 1185, column: 5, scope: !3528)
!3565 = distinct !{!3565, !3530, !3566}
!3566 = !DILocation(line: 1190, column: 5, scope: !3524)
!3567 = !DILocation(line: 1191, column: 39, scope: !3525)
!3568 = !DILocation(line: 1191, column: 29, scope: !3525)
!3569 = !DILocation(line: 1191, column: 54, scope: !3525)
!3570 = !DILocation(line: 1191, column: 44, scope: !3525)
!3571 = !DILocation(line: 1191, column: 5, scope: !3525)
!3572 = !DILocation(line: 1192, column: 18, scope: !3525)
!3573 = !DILocation(line: 1192, column: 5, scope: !3525)
!3574 = !DILocation(line: 1192, column: 9, scope: !3525)
!3575 = !DILocation(line: 1192, column: 16, scope: !3525)
!3576 = !DILocation(line: 1193, column: 7, scope: !3525)
!3577 = !DILocation(line: 1194, column: 4, scope: !3525)
!3578 = !DILocation(line: 1184, column: 28, scope: !3519)
!3579 = !DILocation(line: 1184, column: 4, scope: !3519)
!3580 = distinct !{!3580, !3522, !3581}
!3581 = !DILocation(line: 1194, column: 4, scope: !3516)
!3582 = !DILocation(line: 1195, column: 4, scope: !3494)
!3583 = !DILocation(line: 1197, column: 2, scope: !3488)
!3584 = !DILocation(line: 1172, column: 39, scope: !3484)
!3585 = !DILocation(line: 1172, column: 44, scope: !3484)
!3586 = !DILocation(line: 1172, column: 37, scope: !3484)
!3587 = !DILocation(line: 1172, column: 2, scope: !3484)
!3588 = distinct !{!3588, !3485, !3589}
!3589 = !DILocation(line: 1197, column: 2, scope: !3479)
!3590 = !DILocation(line: 1198, column: 11, scope: !3458)
!3591 = !DILocation(line: 1199, column: 3, scope: !3458)
!3592 = !DILocation(line: 1199, column: 8, scope: !3458)
!3593 = !DILocation(line: 1199, column: 19, scope: !3458)
!3594 = !DILocation(line: 1199, column: 24, scope: !3458)
!3595 = !DILocation(line: 1198, column: 2, scope: !3458)
!3596 = !DILocation(line: 1200, column: 1, scope: !3458)
