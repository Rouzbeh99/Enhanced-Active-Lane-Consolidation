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

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
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
@reslibs = internal unnamed_addr global %struct.reslib_t* null, align 8, !dbg !320
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
@.str.51 = private unnamed_addr constant [12 x i8] c"pdb file %s\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"bnd file %s\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"qr file %s\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"chi file %s\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"%-*.*s\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Incorrect line in residue library header %s...\0A\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"%s/reslib/%s\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c".\00", align 1
@initatoms.init = internal unnamed_addr global i1 false, align 4, !dbg !355
@atoms = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !330
@.str.64 = private unnamed_addr constant [39 x i8] c"initatoms: can't allocate a_atomname.\0A\00", align 1
@n_atoms = internal global i32 0, align 4, !dbg !335
@.str.65 = private unnamed_addr constant [7 x i8] c"!index\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"entry.%s.\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"unit.name\00", align 1
@lr_name = internal global [8 x i8] zeroinitializer, align 1, !dbg !337
@.str.68 = private unnamed_addr constant [11 x i8] c"unit.atoms\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"unit.positions\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"unit.connectivity\00", align 1
@n_bonds = internal global i32 0, align 4, !dbg !340
@bonds = internal unnamed_addr global [1000 x [2 x i32]] zeroinitializer, align 16, !dbg !342
@.str.71 = private unnamed_addr constant [24 x i8] c"residue %s in reslib %s\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"atoms in residue %s in reslib %s\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"addres2reslib: can't allocate new r_resname.\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"addres2reslib: can't allocate new r_resid.\0A\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"addres2reslib: can't allocate anp.\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"bonds of residue %s\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"%s not in reslib %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"REMARK\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"%s %d %s %s %d %lf %lf %lf\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"REMARK RESLIB %s %s\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"UNITED\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"# %s\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"Incorrect header line in bond file: %s...\0A\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.89 = private unnamed_addr constant [41 x i8] c"Incorrect data line in bond file: %s...\0A\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"REM\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"%s %d %s %s %d %lf %lf\00", align 1
@n_chi = internal unnamed_addr global i32 0, align 4, !dbg !345
@.str.92 = private unnamed_addr constant [44 x i8] c"chi2reslib: bad line in chirality file: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"chi2reslib: res %s not in %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"chi2reslib: atom \22%s\22 not in residue \22%s\22\0A\00", align 1
@chi = internal unnamed_addr global [500 x %struct.chiral_t] zeroinitializer, align 16, !dbg !347
@.str.96 = private unnamed_addr constant [44 x i8] c"addchi2reslib: can't alloc r_chiral for %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"addchi2reslib: res %s not reslib %s\0A\00", align 1
@switch.table.getreslibkind = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)], align 8

; Function Attrs: nounwind uwtable
define dso_local i8* @getreslibkind(i8* %0) local_unnamed_addr #0 !dbg !360 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !364, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()) #10, !dbg !374
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #10, !dbg !374
  %2 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !377, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %2, metadata !373, metadata !DIExpression()) #10, !dbg !374
  %3 = icmp eq %struct.reslib_t* %2, null, !dbg !383
  br i1 %3, label %14, label %4, !dbg !383

4:                                                ; preds = %1, %10
  %5 = phi %struct.reslib_t* [ %12, %10 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %5, i64 0, i32 1, !dbg !384
  %7 = load i8*, i8** %6, align 8, !dbg !384, !tbaa !388
  %8 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %7, i8* nonnull dereferenceable(1) %0) #11, !dbg !391
  %9 = icmp eq i32 %8, 0, !dbg !392
  br i1 %9, label %20, label %10, !dbg !393

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %5, i64 0, i32 0, !dbg !394
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #10, !dbg !374
  %12 = load %struct.reslib_t*, %struct.reslib_t** %11, align 8, !dbg !377, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %12, metadata !373, metadata !DIExpression()) #10, !dbg !374
  %13 = icmp eq %struct.reslib_t* %12, null, !dbg !383
  br i1 %13, label %14, label %4, !dbg !383, !llvm.loop !395

14:                                               ; preds = %10, %1
  %15 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %0), !dbg !397
  call void @llvm.dbg.value(metadata %struct.reslib_t* %15, metadata !366, metadata !DIExpression()), !dbg !367
  %16 = icmp eq %struct.reslib_t* %15, null, !dbg !400
  br i1 %16, label %17, label %20, !dbg !401

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !402, !tbaa !379
  %19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #12, !dbg !404
  tail call void @exit(i32 1) #13, !dbg !405
  unreachable, !dbg !405

20:                                               ; preds = %4, %14
  %21 = phi %struct.reslib_t* [ %15, %14 ], [ %5, %4 ], !dbg !406
  call void @llvm.dbg.value(metadata %struct.reslib_t* %21, metadata !366, metadata !DIExpression()), !dbg !367
  %22 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %21, i64 0, i32 2, !dbg !407
  %23 = load i32, i32* %22, align 8, !dbg !407, !tbaa !409
  %24 = add i32 %23, -1, !dbg !410
  %25 = icmp ult i32 %24, 3, !dbg !410
  br i1 %25, label %26, label %30, !dbg !410

26:                                               ; preds = %20
  %27 = sext i32 %24 to i64, !dbg !410
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.getreslibkind, i64 0, i64 %27, !dbg !410
  %29 = load i8*, i8** %28, align 8, !dbg !410
  ret i8* %29, !dbg !410

30:                                               ; preds = %20
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), !dbg !411
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.reslib_t* @read_reslib(i8* %0) unnamed_addr #0 !dbg !412 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %2, metadata !424, metadata !DIExpression()), !dbg !445
  %3 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %3, metadata !436, metadata !DIExpression()), !dbg !449
  %4 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !437, metadata !DIExpression()), !dbg !450
  %5 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !438, metadata !DIExpression()), !dbg !451
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %12, metadata !452, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata [10 x i8]* %12, metadata !472, metadata !DIExpression()), !dbg !486
  %13 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %13, metadata !458, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata [10 x i8]* %13, metadata !478, metadata !DIExpression()), !dbg !491
  %14 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %14, metadata !462, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata [10 x i8]* %14, metadata !479, metadata !DIExpression()), !dbg !493
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %22, metadata !494, metadata !DIExpression()), !dbg !554
  %23 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %23, metadata !531, metadata !DIExpression()), !dbg !557
  %24 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %24, metadata !535, metadata !DIExpression()), !dbg !558
  %25 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %25, metadata !536, metadata !DIExpression()), !dbg !559
  %26 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %26, metadata !537, metadata !DIExpression()), !dbg !560
  %27 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %27, metadata !538, metadata !DIExpression()), !dbg !561
  %28 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %28, metadata !539, metadata !DIExpression()), !dbg !562
  %29 = alloca [100 x double], align 16
  call void @llvm.dbg.declare(metadata [100 x double]* %29, metadata !540, metadata !DIExpression()), !dbg !563
  %30 = alloca [100 x double], align 16
  call void @llvm.dbg.declare(metadata [100 x double]* %30, metadata !542, metadata !DIExpression()), !dbg !564
  %31 = alloca [100 x double], align 16
  call void @llvm.dbg.declare(metadata [100 x double]* %31, metadata !543, metadata !DIExpression()), !dbg !565
  %32 = alloca [100 x double], align 16
  call void @llvm.dbg.declare(metadata [100 x double]* %32, metadata !544, metadata !DIExpression()), !dbg !566
  %33 = alloca [100 x [10 x i8]], align 16
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %33, metadata !545, metadata !DIExpression()), !dbg !567
  %34 = alloca [100 x [10 x i8]], align 16
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %34, metadata !548, metadata !DIExpression()), !dbg !568
  %35 = alloca [100 x [10 x i8]], align 16
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %35, metadata !549, metadata !DIExpression()), !dbg !569
  %36 = alloca [255 x i8], align 16
  call void @llvm.dbg.declare(metadata [255 x i8]* %36, metadata !550, metadata !DIExpression()), !dbg !570
  %37 = alloca [128 x i8], align 16
  call void @llvm.dbg.declare(metadata [128 x i8]* %37, metadata !571, metadata !DIExpression()), !dbg !597
  %38 = alloca [20 x i8], align 16
  call void @llvm.dbg.declare(metadata [20 x i8]* %38, metadata !432, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.declare(metadata [20 x i8]* %38, metadata !601, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.declare(metadata [20 x i8]* %38, metadata !588, metadata !DIExpression()), !dbg !612
  %39 = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata [100 x i8]* %39, metadata !613, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata [100 x i8]* %39, metadata !589, metadata !DIExpression()), !dbg !626
  %40 = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata [100 x i8]* %40, metadata !620, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata [100 x i8]* %40, metadata !591, metadata !DIExpression()), !dbg !628
  %41 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !431, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !457, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !606, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !477, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !592, metadata !DIExpression()), !dbg !633
  %42 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !414, metadata !DIExpression()), !dbg !634
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 0, !dbg !635
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %43) #10, !dbg !635
  call void @llvm.dbg.declare(metadata [256 x i8]* %42, metadata !423, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i8* %0, metadata !577, metadata !DIExpression()) #10, !dbg !637
  call void @llvm.dbg.value(metadata i8* %43, metadata !582, metadata !DIExpression()) #10, !dbg !637
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %37, i64 0, i64 0, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %44) #10, !dbg !638
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %38, i64 0, i64 0, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #10, !dbg !638
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %39, i64 0, i64 0, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %46) #10, !dbg !638
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %40, i64 0, i64 0, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %47) #10, !dbg !638
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0, !dbg !639
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !639
  %49 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !640
  %50 = icmp eq i8* %49, null, !dbg !642
  br i1 %50, label %68, label %51, !dbg !643

51:                                               ; preds = %1
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %47, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %0) #10, !dbg !644
  call void @llvm.dbg.value(metadata i8* %47, metadata !646, metadata !DIExpression()) #10, !dbg !652
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #10, !dbg !652
  %53 = load i8, i8* %47, align 16, !dbg !654, !tbaa !656
  %54 = icmp eq i8 %53, 47, !dbg !657
  br i1 %54, label %59, label %55, !dbg !658

55:                                               ; preds = %51
  %56 = bitcast [100 x i8]* %40 to i16*, !dbg !659
  %57 = load i16, i16* %56, align 16, !dbg !659
  %58 = icmp eq i16 %57, 12078, !dbg !659
  br i1 %58, label %59, label %61, !dbg !660

59:                                               ; preds = %55, %51
  %60 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %47) #10, !dbg !661
  br label %63, !dbg !661

61:                                               ; preds = %55
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %47) #10, !dbg !662
  br label %63

63:                                               ; preds = %61, %59
  %64 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !663
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !583, metadata !DIExpression()) #10, !dbg !637
  %65 = icmp eq %struct._IO_FILE* %64, null, !dbg !665
  br i1 %65, label %66, label %83, !dbg !666

66:                                               ; preds = %63
  %67 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %48) #10, !dbg !667
  br label %291, !dbg !669

68:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !646, metadata !DIExpression()) #10, !dbg !670
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #10, !dbg !670
  %69 = load i8, i8* %0, align 1, !dbg !673, !tbaa !656
  %70 = icmp eq i8 %69, 47, !dbg !674
  br i1 %70, label %74, label %71, !dbg !675

71:                                               ; preds = %68
  %72 = tail call i32 @strncmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* nonnull %0, i64 2) #11, !dbg !676
  %73 = icmp eq i32 %72, 0, !dbg !676
  br i1 %73, label %74, label %76, !dbg !677

74:                                               ; preds = %71, %68
  %75 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %0) #10, !dbg !678
  br label %78, !dbg !678

76:                                               ; preds = %71
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %0) #10, !dbg !679
  br label %78

78:                                               ; preds = %76, %74
  %79 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !680
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %79, metadata !583, metadata !DIExpression()) #10, !dbg !637
  %80 = icmp eq %struct._IO_FILE* %79, null, !dbg !682
  br i1 %80, label %81, label %83, !dbg !683

81:                                               ; preds = %78
  %82 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %48) #10, !dbg !684
  br label %291, !dbg !686

83:                                               ; preds = %78, %63
  %84 = phi %struct._IO_FILE* [ %64, %63 ], [ %79, %78 ], !dbg !687
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %84, metadata !583, metadata !DIExpression()) #10, !dbg !637
  %85 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 32) #10, !dbg !688
  %86 = bitcast i8* %85 to %struct.reslib_t*, !dbg !690
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #10, !dbg !637
  %87 = icmp eq i8* %85, null, !dbg !691
  br i1 %87, label %88, label %91, !dbg !692

88:                                               ; preds = %83
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %0) #10, !dbg !693
  %90 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !695
  br label %291, !dbg !696

91:                                               ; preds = %83
  %92 = call i64 @strlen(i8* nonnull dereferenceable(1) %0) #11, !dbg !697
  call void @llvm.dbg.value(metadata i64 %92, metadata !586, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !637
  %93 = shl i64 %92, 32, !dbg !698
  %94 = add i64 %93, 4294967296, !dbg !698
  %95 = ashr exact i64 %94, 32, !dbg !698
  %96 = call noalias i8* @malloc(i64 %95) #10, !dbg !700
  call void @llvm.dbg.value(metadata i8* %96, metadata !587, metadata !DIExpression()) #10, !dbg !637
  %97 = icmp eq i8* %96, null, !dbg !701
  br i1 %97, label %98, label %101, !dbg !702

98:                                               ; preds = %91
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* %0) #10, !dbg !703
  %100 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !705
  br label %291, !dbg !706

101:                                              ; preds = %91
  %102 = call i8* @strcpy(i8* nonnull %96, i8* nonnull dereferenceable(1) %0) #10, !dbg !707
  %103 = load i64, i64* bitcast (%struct.reslib_t** @reslibs to i64*), align 8, !dbg !708, !tbaa !379
  %104 = bitcast i8* %85 to i64*, !dbg !709
  store i64 %103, i64* %104, align 8, !dbg !709, !tbaa !710
  store i8* %85, i8** bitcast (%struct.reslib_t** @reslibs to i8**), align 8, !dbg !711, !tbaa !379
  %105 = getelementptr inbounds i8, i8* %85, i64 8, !dbg !712
  %106 = bitcast i8* %105 to i8**, !dbg !712
  store i8* %96, i8** %106, align 8, !dbg !713, !tbaa !388
  %107 = getelementptr inbounds i8, i8* %85, i64 16, !dbg !714
  %108 = bitcast i8* %107 to i32*, !dbg !714
  %109 = getelementptr inbounds i8, i8* %85, i64 20, !dbg !715
  %110 = bitcast i8* %109 to i32*, !dbg !715
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %107, i8 0, i64 16, i1 false) #10, !dbg !716
  store i8 0, i8* %43, align 16, !dbg !717, !tbaa !656
  %111 = call i8* @strstr(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !718
  %112 = icmp eq i8* %111, null, !dbg !720
  br i1 %112, label %113, label %240, !dbg !721

113:                                              ; preds = %101
  %114 = call i8* @fgets(i8* nonnull %44, i32 128, %struct._IO_FILE* nonnull %84) #10, !dbg !722
  %115 = icmp eq i8* %114, null, !dbg !724
  br i1 %115, label %259, label %116, !dbg !724

116:                                              ; preds = %113
  %117 = bitcast [20 x i8]* %38 to i32*, !dbg !725
  %118 = bitcast [100 x i8]* %39 to i16*, !dbg !732
  %119 = bitcast [100 x i8]* %39 to i32*, !dbg !737
  br label %120, !dbg !724

120:                                              ; preds = %233, %116
  %121 = phi %struct._IO_FILE* [ null, %116 ], [ %234, %233 ], !dbg !741
  %122 = phi %struct._IO_FILE* [ null, %116 ], [ %235, %233 ], !dbg !742
  %123 = phi %struct._IO_FILE* [ null, %116 ], [ %236, %233 ], !dbg !743
  %124 = phi %struct._IO_FILE* [ null, %116 ], [ %237, %233 ], !dbg !744
  %125 = load i8, i8* %44, align 16, !dbg !745, !tbaa !656
  %126 = icmp eq i8 %125, 35, !dbg !747
  br i1 %126, label %233, label %127, !dbg !748

127:                                              ; preds = %120
  %128 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %45, i8* nonnull %46) #10, !dbg !749
  call void @llvm.dbg.value(metadata i32 %128, metadata !585, metadata !DIExpression()) #10, !dbg !637
  switch i32 %128, label %251 [
    i32 -1, label %233
    i32 2, label %129
  ], !dbg !750

129:                                              ; preds = %127
  %130 = call i32 @bcmp(i8* nonnull dereferenceable(5) %45, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 5) #10, !dbg !751
  %131 = icmp eq i32 %130, 0, !dbg !752
  br i1 %131, label %132, label %140, !dbg !753

132:                                              ; preds = %129
  %133 = load i32, i32* %119, align 16, !dbg !754
  switch i32 %133, label %136 [
    i32 6385252, label %134
    i32 6385266, label %135
  ], !dbg !757

134:                                              ; preds = %132
  store i32 1, i32* %108, align 8, !dbg !758, !tbaa !409
  br label %233, !dbg !759

135:                                              ; preds = %132
  store i32 2, i32* %108, align 8, !dbg !760, !tbaa !409
  br label %233, !dbg !762

136:                                              ; preds = %132
  %137 = call i32 @bcmp(i8* nonnull dereferenceable(3) %46, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 3) #10, !dbg !763
  %138 = icmp eq i32 %137, 0, !dbg !765
  br i1 %138, label %139, label %251, !dbg !766

139:                                              ; preds = %136
  store i32 3, i32* %108, align 8, !dbg !767, !tbaa !409
  br label %233

140:                                              ; preds = %129
  %141 = call i32 @bcmp(i8* nonnull dereferenceable(9) %45, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i64 9) #10, !dbg !768
  %142 = icmp eq i32 %141, 0, !dbg !769
  br i1 %142, label %143, label %151, !dbg !770

143:                                              ; preds = %140
  %144 = call i32 @bcmp(i8* nonnull dereferenceable(7) %46, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 7) #10, !dbg !771
  %145 = icmp eq i32 %144, 0, !dbg !772
  br i1 %145, label %146, label %147, !dbg !773

146:                                              ; preds = %143
  store i32 1, i32* %110, align 4, !dbg !774, !tbaa !775
  br label %233, !dbg !776

147:                                              ; preds = %143
  %148 = load i32, i32* %119, align 16, !dbg !777
  %149 = icmp eq i32 %148, 7105633, !dbg !777
  br i1 %149, label %150, label %251, !dbg !778

150:                                              ; preds = %147
  store i32 2, i32* %110, align 4, !dbg !779, !tbaa !775
  br label %233

151:                                              ; preds = %140
  %152 = load i32, i32* %117, align 16, !dbg !780
  switch i32 %152, label %196 [
    i32 6710895, label %153
    i32 6448240, label %163
    i32 6581858, label %180
  ], !dbg !781

153:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #10, !dbg !782
  call void @llvm.dbg.value(metadata i8* %43, metadata !651, metadata !DIExpression()) #10, !dbg !782
  %154 = load i8, i8* %46, align 16, !dbg !785, !tbaa !656
  %155 = icmp eq i8 %154, 47, !dbg !786
  %156 = load i16, i16* %118, align 16, !dbg !787
  %157 = icmp eq i16 %156, 12078, !dbg !787
  %158 = or i1 %155, %157, !dbg !788
  br i1 %158, label %159, label %161, !dbg !788

159:                                              ; preds = %153
  %160 = call i8* @strcpy(i8* nonnull dereferenceable(1) %43, i8* nonnull %46) #10, !dbg !789
  br label %233, !dbg !789

161:                                              ; preds = %153
  %162 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %43, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !790
  br label %233

163:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #10, !dbg !791
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #10, !dbg !791
  %164 = load i8, i8* %46, align 16, !dbg !794, !tbaa !656
  %165 = icmp eq i8 %164, 47, !dbg !795
  %166 = load i16, i16* %118, align 16, !dbg !796
  %167 = icmp eq i16 %166, 12078, !dbg !796
  %168 = or i1 %165, %167, !dbg !797
  br i1 %168, label %169, label %171, !dbg !797

169:                                              ; preds = %163
  %170 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #10, !dbg !798
  br label %173, !dbg !798

171:                                              ; preds = %163
  %172 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !799
  br label %173

173:                                              ; preds = %171, %169
  %174 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !800
  %175 = icmp eq %struct._IO_FILE* %174, null, !dbg !802
  br i1 %175, label %176, label %233, !dbg !803

176:                                              ; preds = %173
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* nonnull %46) #10, !dbg !804
  %178 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !806
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !584, metadata !DIExpression()) #10, !dbg !637
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #10, !dbg !637
  call void @llvm.dbg.label(metadata !593) #10, !dbg !807
  %179 = call i32 @fclose(%struct._IO_FILE* %84) #10, !dbg !808
  br label %267, !dbg !809

180:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #10, !dbg !812
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #10, !dbg !812
  %181 = load i8, i8* %46, align 16, !dbg !813, !tbaa !656
  %182 = icmp eq i8 %181, 47, !dbg !814
  %183 = load i16, i16* %118, align 16, !dbg !815
  %184 = icmp eq i16 %183, 12078, !dbg !815
  %185 = or i1 %182, %184, !dbg !816
  br i1 %185, label %186, label %188, !dbg !816

186:                                              ; preds = %180
  %187 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #10, !dbg !817
  br label %190, !dbg !817

188:                                              ; preds = %180
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !818
  br label %190

190:                                              ; preds = %188, %186
  %191 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !819
  %192 = icmp eq %struct._IO_FILE* %191, null, !dbg !821
  br i1 %192, label %193, label %233, !dbg !822

193:                                              ; preds = %190
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %46) #10, !dbg !823
  %195 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !825
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !584, metadata !DIExpression()) #10, !dbg !637
  br label %251, !dbg !826

196:                                              ; preds = %151
  %197 = call i32 @bcmp(i8* nonnull dereferenceable(3) %45, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 3) #10, !dbg !827
  %198 = icmp eq i32 %197, 0, !dbg !829
  br i1 %198, label %199, label %215, !dbg !830

199:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #10, !dbg !831
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #10, !dbg !831
  %200 = load i8, i8* %46, align 16, !dbg !834, !tbaa !656
  %201 = icmp eq i8 %200, 47, !dbg !835
  %202 = load i16, i16* %118, align 16, !dbg !836
  %203 = icmp eq i16 %202, 12078, !dbg !836
  %204 = or i1 %201, %203, !dbg !837
  br i1 %204, label %205, label %207, !dbg !837

205:                                              ; preds = %199
  %206 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #10, !dbg !838
  br label %209, !dbg !838

207:                                              ; preds = %199
  %208 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !839
  br label %209

209:                                              ; preds = %207, %205
  %210 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !840
  %211 = icmp eq %struct._IO_FILE* %210, null, !dbg !842
  br i1 %211, label %212, label %233, !dbg !843

212:                                              ; preds = %209
  %213 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* nonnull %46) #10, !dbg !844
  %214 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !846
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !584, metadata !DIExpression()) #10, !dbg !637
  br label %251, !dbg !847

215:                                              ; preds = %196
  %216 = icmp eq i32 %152, 6908003, !dbg !848
  br i1 %216, label %217, label %251, !dbg !850

217:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #10, !dbg !851
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #10, !dbg !851
  %218 = load i8, i8* %46, align 16, !dbg !854, !tbaa !656
  %219 = icmp eq i8 %218, 47, !dbg !855
  %220 = load i16, i16* %118, align 16, !dbg !856
  %221 = icmp eq i16 %220, 12078, !dbg !856
  %222 = or i1 %219, %221, !dbg !857
  br i1 %222, label %223, label %225, !dbg !857

223:                                              ; preds = %217
  %224 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #10, !dbg !858
  br label %227, !dbg !858

225:                                              ; preds = %217
  %226 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !859
  br label %227

227:                                              ; preds = %225, %223
  %228 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !860
  %229 = icmp eq %struct._IO_FILE* %228, null, !dbg !862
  br i1 %229, label %230, label %233, !dbg !863

230:                                              ; preds = %227
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %46) #10, !dbg !864
  %232 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !866
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !584, metadata !DIExpression()) #10, !dbg !637
  br label %251, !dbg !867

233:                                              ; preds = %227, %209, %190, %173, %161, %159, %150, %146, %139, %135, %134, %127, %120
  %234 = phi %struct._IO_FILE* [ %121, %120 ], [ %121, %139 ], [ %121, %135 ], [ %121, %134 ], [ %121, %146 ], [ %121, %150 ], [ %121, %209 ], [ %121, %227 ], [ %121, %190 ], [ %174, %173 ], [ %121, %159 ], [ %121, %161 ], [ %121, %127 ], !dbg !637
  %235 = phi %struct._IO_FILE* [ %122, %120 ], [ %122, %139 ], [ %122, %135 ], [ %122, %134 ], [ %122, %146 ], [ %122, %150 ], [ %122, %209 ], [ %122, %227 ], [ %191, %190 ], [ %122, %173 ], [ %122, %159 ], [ %122, %161 ], [ %122, %127 ], !dbg !637
  %236 = phi %struct._IO_FILE* [ %123, %120 ], [ %123, %139 ], [ %123, %135 ], [ %123, %134 ], [ %123, %146 ], [ %123, %150 ], [ %210, %209 ], [ %123, %227 ], [ %123, %190 ], [ %123, %173 ], [ %123, %159 ], [ %123, %161 ], [ %123, %127 ], !dbg !637
  %237 = phi %struct._IO_FILE* [ %124, %120 ], [ %124, %139 ], [ %124, %135 ], [ %124, %134 ], [ %124, %146 ], [ %124, %150 ], [ %124, %209 ], [ %228, %227 ], [ %124, %190 ], [ %124, %173 ], [ %124, %159 ], [ %124, %161 ], [ %124, %127 ], !dbg !637
  %238 = call i8* @fgets(i8* nonnull %44, i32 128, %struct._IO_FILE* %84) #10, !dbg !722
  %239 = icmp eq i8* %238, null, !dbg !724
  br i1 %239, label %259, label %120, !dbg !724, !llvm.loop !868

240:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i8* %47, metadata !646, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata i8* %43, metadata !651, metadata !DIExpression()) #10, !dbg !870
  %241 = load i8, i8* %47, align 16, !dbg !873, !tbaa !656
  %242 = icmp eq i8 %241, 47, !dbg !874
  br i1 %242, label %247, label %243, !dbg !875

243:                                              ; preds = %240
  %244 = bitcast [100 x i8]* %40 to i16*, !dbg !876
  %245 = load i16, i16* %244, align 16, !dbg !876
  %246 = icmp eq i16 %245, 12078, !dbg !876
  br i1 %246, label %247, label %249, !dbg !877

247:                                              ; preds = %243, %240
  %248 = call i8* @strcpy(i8* nonnull dereferenceable(1) %43, i8* nonnull %47) #10, !dbg !878
  br label %257, !dbg !878

249:                                              ; preds = %243
  %250 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %43, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %47) #10, !dbg !879
  br label %257

251:                                              ; preds = %215, %147, %136, %127, %230, %212, %193
  %252 = phi %struct._IO_FILE* [ %122, %212 ], [ %122, %230 ], [ null, %193 ], [ %122, %127 ], [ %122, %136 ], [ %122, %147 ], [ %122, %215 ], !dbg !637
  %253 = phi %struct._IO_FILE* [ null, %212 ], [ %123, %230 ], [ %123, %193 ], [ %123, %127 ], [ %123, %136 ], [ %123, %147 ], [ %123, %215 ], !dbg !637
  %254 = phi %struct._IO_FILE* [ %124, %212 ], [ null, %230 ], [ %124, %193 ], [ %124, %127 ], [ %124, %136 ], [ %124, %147 ], [ %124, %215 ], !dbg !637
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #10, !dbg !637
  call void @llvm.dbg.label(metadata !593) #10, !dbg !807
  %255 = call i32 @fclose(%struct._IO_FILE* %84) #10, !dbg !808
  %256 = icmp eq %struct._IO_FILE* %121, null, !dbg !880
  br i1 %256, label %267, label %265, !dbg !809

257:                                              ; preds = %249, %247
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #10, !dbg !637
  call void @llvm.dbg.label(metadata !593) #10, !dbg !807
  %258 = call i32 @fclose(%struct._IO_FILE* nonnull %84) #10, !dbg !808
  br label %291, !dbg !882

259:                                              ; preds = %233, %113
  %260 = phi %struct._IO_FILE* [ null, %113 ], [ %234, %233 ], !dbg !741
  %261 = phi %struct._IO_FILE* [ null, %113 ], [ %235, %233 ], !dbg !742
  %262 = phi %struct._IO_FILE* [ null, %113 ], [ %236, %233 ], !dbg !743
  %263 = phi %struct._IO_FILE* [ null, %113 ], [ %237, %233 ], !dbg !744
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #10, !dbg !637
  call void @llvm.dbg.label(metadata !593) #10, !dbg !807
  %264 = call i32 @fclose(%struct._IO_FILE* %84) #10, !dbg !808
  br label %291, !dbg !882

265:                                              ; preds = %251
  %266 = call i32 @fclose(%struct._IO_FILE* nonnull %121) #10, !dbg !883
  br label %267, !dbg !883

267:                                              ; preds = %176, %265, %251
  %268 = phi %struct._IO_FILE* [ %124, %176 ], [ %254, %265 ], [ %254, %251 ]
  %269 = phi %struct._IO_FILE* [ %123, %176 ], [ %253, %265 ], [ %253, %251 ]
  %270 = phi %struct._IO_FILE* [ %122, %176 ], [ %252, %265 ], [ %252, %251 ]
  %271 = phi %struct._IO_FILE* [ null, %176 ], [ %121, %265 ], [ null, %251 ]
  %272 = icmp eq %struct._IO_FILE* %270, null, !dbg !884
  br i1 %272, label %275, label %273, !dbg !886

273:                                              ; preds = %267
  %274 = call i32 @fclose(%struct._IO_FILE* nonnull %270) #10, !dbg !887
  br label %275, !dbg !887

275:                                              ; preds = %273, %267
  %276 = icmp eq %struct._IO_FILE* %269, null, !dbg !888
  br i1 %276, label %279, label %277, !dbg !890

277:                                              ; preds = %275
  %278 = call i32 @fclose(%struct._IO_FILE* nonnull %269) #10, !dbg !891
  br label %279, !dbg !891

279:                                              ; preds = %277, %275
  %280 = icmp eq %struct._IO_FILE* %268, null, !dbg !892
  br i1 %280, label %283, label %281, !dbg !894

281:                                              ; preds = %279
  %282 = call i32 @fclose(%struct._IO_FILE* nonnull %268) #10, !dbg !895
  br label %283, !dbg !895

283:                                              ; preds = %281, %279
  %284 = call i64 @strlen(i8* nonnull %44) #11, !dbg !896
  %285 = trunc i64 %284 to i32, !dbg !896
  %286 = add i32 %285, -1, !dbg !896
  call void @llvm.dbg.value(metadata i32 %286, metadata !586, metadata !DIExpression()) #10, !dbg !637
  %287 = icmp slt i32 %286, 20, !dbg !897
  %288 = select i1 %287, i32 %286, i32 20, !dbg !897
  call void @llvm.dbg.value(metadata i32 %288, metadata !586, metadata !DIExpression()) #10, !dbg !637
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %288, i32 %288, i8* nonnull %44) #10, !dbg !898
  %290 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !899
  br label %291, !dbg !900

291:                                              ; preds = %66, %81, %88, %98, %257, %259, %283
  %292 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %260, %259 ], [ %271, %283 ], [ null, %257 ], [ undef, %66 ]
  %293 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %261, %259 ], [ %270, %283 ], [ null, %257 ], [ undef, %66 ]
  %294 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %262, %259 ], [ %269, %283 ], [ null, %257 ], [ undef, %66 ]
  %295 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %263, %259 ], [ %268, %283 ], [ null, %257 ], [ undef, %66 ]
  %296 = phi %struct.reslib_t* [ null, %81 ], [ null, %88 ], [ null, %98 ], [ %86, %259 ], [ null, %283 ], [ %86, %257 ], [ null, %66 ], !dbg !637
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !901
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %47) #10, !dbg !901
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %46) #10, !dbg !901
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #10, !dbg !901
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %44) #10, !dbg !901
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !422, metadata !DIExpression()), !dbg !634
  %297 = icmp eq %struct.reslib_t* %296, null, !dbg !902
  br i1 %297, label %836, label %298, !dbg !903

298:                                              ; preds = %291
  %299 = load i1, i1* @initatoms.init, align 4, !dbg !904
  br i1 %299, label %314, label %300, !dbg !907

300:                                              ; preds = %298
  store i1 true, i1* @initatoms.init, align 4, !dbg !908
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !329, metadata !DIExpression()) #10, !dbg !909
  call void @llvm.dbg.value(metadata i32 0, metadata !328, metadata !DIExpression()) #10, !dbg !909
  br label %301, !dbg !910

301:                                              ; preds = %310, %300
  %302 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %300 ], [ %312, %310 ]
  %303 = phi i32 [ 0, %300 ], [ %311, %310 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %302, metadata !329, metadata !DIExpression()) #10, !dbg !909
  call void @llvm.dbg.value(metadata i32 %303, metadata !328, metadata !DIExpression()) #10, !dbg !909
  call void @NAB_initatom(%struct.atom_t* nonnull %302, i32 1) #10, !dbg !912
  %304 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #10, !dbg !915
  %305 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %302, i64 0, i32 0, !dbg !916
  store i8* %304, i8** %305, align 8, !dbg !917, !tbaa !918
  %306 = icmp eq i8* %304, null, !dbg !921
  br i1 %306, label %307, label %310, !dbg !923

307:                                              ; preds = %301
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !924, !tbaa !379
  %309 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %308) #14, !dbg !926
  call void @exit(i32 1) #13, !dbg !927
  unreachable, !dbg !927

310:                                              ; preds = %301
  %311 = add nuw nsw i32 %303, 1, !dbg !928
  call void @llvm.dbg.value(metadata i32 %311, metadata !328, metadata !DIExpression()) #10, !dbg !909
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %302, i64 1, !dbg !929
  call void @llvm.dbg.value(metadata %struct.atom_t* %312, metadata !329, metadata !DIExpression()) #10, !dbg !909
  %313 = icmp eq i32 %311, 1000, !dbg !930
  br i1 %313, label %314, label %301, !dbg !910, !llvm.loop !931

314:                                              ; preds = %310, %298
  %315 = load i8, i8* %43, align 16, !dbg !933, !tbaa !656
  %316 = icmp eq i8 %315, 0, !dbg !933
  br i1 %316, label %497, label %317, !dbg !934

317:                                              ; preds = %314
  call void @llvm.dbg.value(metadata i8* %43, metadata !499, metadata !DIExpression()) #10, !dbg !935
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !500, metadata !DIExpression()) #10, !dbg !935
  %318 = bitcast i32* %20 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %318) #10, !dbg !936
  %319 = bitcast i32* %21 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %319) #10, !dbg !936
  %320 = bitcast [100 x i32]* %22 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %320) #10, !dbg !937
  %321 = bitcast [100 x i32]* %23 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %321) #10, !dbg !937
  %322 = bitcast [100 x i32]* %24 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %322) #10, !dbg !937
  %323 = bitcast [100 x i32]* %25 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %323) #10, !dbg !937
  %324 = bitcast [100 x i32]* %26 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %324) #10, !dbg !937
  %325 = bitcast [100 x i32]* %27 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %325) #10, !dbg !938
  %326 = bitcast [100 x i32]* %28 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %326) #10, !dbg !938
  %327 = bitcast [100 x double]* %29 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %327) #10, !dbg !939
  %328 = bitcast [100 x double]* %30 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %328) #10, !dbg !939
  %329 = bitcast [100 x double]* %31 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %329) #10, !dbg !939
  %330 = bitcast [100 x double]* %32 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %330) #10, !dbg !939
  %331 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %33, i64 0, i64 0, i64 0, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %331) #10, !dbg !940
  %332 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %34, i64 0, i64 0, i64 0, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %332) #10, !dbg !940
  %333 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 0, i64 0, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %333) #10, !dbg !940
  %334 = getelementptr inbounds [255 x i8], [255 x i8]* %36, i64 0, i64 0, !dbg !941
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %334) #10, !dbg !941
  store i32 0, i32* @n_atoms, align 4, !dbg !942, !tbaa !943
  %335 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* nonnull %43, i32 1) #10, !dbg !944
  call void @llvm.dbg.value(metadata %struct.DATABASEt* %335, metadata !506, metadata !DIExpression()) #10, !dbg !935
  %336 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 0, !dbg !945
  call void @llvm.dbg.value(metadata i32* %21, metadata !503, metadata !DIExpression(DW_OP_deref)) #10, !dbg !935
  %337 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* nonnull %21, [10 x i8]* nonnull %336, i32 10) #10, !dbg !946
  call void @llvm.dbg.value(metadata i8 %337, metadata !530, metadata !DIExpression()) #10, !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !505, metadata !DIExpression()) #10, !dbg !935
  %338 = load i32, i32* %21, align 4, !dbg !947, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %338, metadata !503, metadata !DIExpression()) #10, !dbg !935
  %339 = icmp sgt i32 %338, 0, !dbg !950
  br i1 %339, label %340, label %496, !dbg !951

340:                                              ; preds = %317
  %341 = getelementptr inbounds [100 x i32], [100 x i32]* %22, i64 0, i64 0, !dbg !952
  %342 = getelementptr inbounds [100 x i32], [100 x i32]* %23, i64 0, i64 0, !dbg !952
  %343 = getelementptr inbounds [100 x i32], [100 x i32]* %24, i64 0, i64 0, !dbg !952
  %344 = getelementptr inbounds [100 x i32], [100 x i32]* %25, i64 0, i64 0, !dbg !952
  %345 = getelementptr inbounds [100 x i32], [100 x i32]* %26, i64 0, i64 0, !dbg !952
  %346 = getelementptr inbounds [100 x double], [100 x double]* %29, i64 0, i64 0, !dbg !952
  %347 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %33, i64 0, i64 0, !dbg !952
  %348 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %34, i64 0, i64 0, !dbg !952
  %349 = getelementptr inbounds [100 x double], [100 x double]* %30, i64 0, i64 0, !dbg !952
  %350 = getelementptr inbounds [100 x double], [100 x double]* %31, i64 0, i64 0, !dbg !952
  %351 = getelementptr inbounds [100 x double], [100 x double]* %32, i64 0, i64 0, !dbg !952
  %352 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 0, !dbg !952
  %353 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 0, !dbg !952
  br label %354, !dbg !951

354:                                              ; preds = %491, %340
  %355 = phi i64 [ 0, %340 ], [ %492, %491 ]
  call void @llvm.dbg.value(metadata i64 %355, metadata !505, metadata !DIExpression()) #10, !dbg !935
  %356 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 %355, i64 0, !dbg !954
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %334, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %356) #10, !dbg !955
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* %335) #10, !dbg !956
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* %335, i8* nonnull %334) #10, !dbg !957
  call void @llvm.dbg.value(metadata i32* %20, metadata !502, metadata !DIExpression(DW_OP_deref)) #10, !dbg !935
  %358 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* nonnull %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 1) #10, !dbg !958
  call void @llvm.dbg.value(metadata i8 %358, metadata !530, metadata !DIExpression()) #10, !dbg !935
  %359 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* nonnull @n_atoms, i32 3, i32* nonnull %341, i64 4, i32 4, i32* nonnull %342, i64 4, i32 5, i32* nonnull %343, i64 4, i32 6, i32* nonnull %344, i64 4, i32 7, i32* nonnull %345, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 8, double* nonnull %346, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, [10 x i8]* nonnull %347, i32 10, i32 2, [10 x i8]* nonnull %348, i32 10, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #10, !dbg !959
  call void @llvm.dbg.value(metadata i8 %359, metadata !530, metadata !DIExpression()) #10, !dbg !935
  %360 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* nonnull @n_atoms, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, double* nonnull %349, i64 8, i32 2, double* nonnull %350, i64 8, i32 3, double* nonnull %351, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #10, !dbg !960
  call void @llvm.dbg.value(metadata i8 %360, metadata !530, metadata !DIExpression()) #10, !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !504, metadata !DIExpression()) #10, !dbg !935
  %361 = load i32, i32* @n_atoms, align 4, !dbg !961, !tbaa !943
  %362 = icmp sgt i32 %361, 0, !dbg !964
  br i1 %362, label %363, label %397, !dbg !965

363:                                              ; preds = %354, %363
  %364 = phi i64 [ %390, %363 ], [ 0, %354 ]
  call void @llvm.dbg.value(metadata i64 %364, metadata !504, metadata !DIExpression()) #10, !dbg !935
  %365 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, !dbg !966
  call void @llvm.dbg.value(metadata %struct.atom_t* %365, metadata !501, metadata !DIExpression()) #10, !dbg !935
  call void @NAB_initatom(%struct.atom_t* nonnull %365, i32 0) #10, !dbg !968
  %366 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %365, i64 0, i32 0, !dbg !969
  %367 = load i8*, i8** %366, align 16, !dbg !969, !tbaa !918
  %368 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %33, i64 0, i64 %364, i64 0, !dbg !970
  %369 = call i8* @strcpy(i8* nonnull dereferenceable(1) %367, i8* nonnull %368) #10, !dbg !971
  %370 = getelementptr inbounds [100 x double], [100 x double]* %29, i64 0, i64 %364, !dbg !972
  %371 = bitcast double* %370 to i64*, !dbg !972
  %372 = load i64, i64* %371, align 8, !dbg !972, !tbaa !973
  %373 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, i32 6, !dbg !974
  %374 = bitcast double* %373 to i64*, !dbg !975
  store i64 %372, i64* %374, align 16, !dbg !975, !tbaa !976
  %375 = getelementptr inbounds [100 x double], [100 x double]* %30, i64 0, i64 %364, !dbg !977
  %376 = bitcast double* %375 to i64*, !dbg !977
  %377 = load i64, i64* %376, align 8, !dbg !977, !tbaa !973
  %378 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, i32 17, !dbg !978
  %379 = bitcast [3 x double]* %378 to i64*, !dbg !979
  store i64 %377, i64* %379, align 16, !dbg !979, !tbaa !973
  %380 = getelementptr inbounds [100 x double], [100 x double]* %31, i64 0, i64 %364, !dbg !980
  %381 = bitcast double* %380 to i64*, !dbg !980
  %382 = load i64, i64* %381, align 8, !dbg !980, !tbaa !973
  %383 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, i32 17, i64 1, !dbg !981
  %384 = bitcast double* %383 to i64*, !dbg !982
  store i64 %382, i64* %384, align 8, !dbg !982, !tbaa !973
  %385 = getelementptr inbounds [100 x double], [100 x double]* %32, i64 0, i64 %364, !dbg !983
  %386 = bitcast double* %385 to i64*, !dbg !983
  %387 = load i64, i64* %386, align 8, !dbg !983, !tbaa !973
  %388 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, i32 17, i64 2, !dbg !984
  %389 = bitcast double* %388 to i64*, !dbg !985
  store i64 %387, i64* %389, align 16, !dbg !985, !tbaa !973
  %390 = add nuw nsw i64 %364, 1, !dbg !986
  call void @llvm.dbg.value(metadata i64 %390, metadata !504, metadata !DIExpression()) #10, !dbg !935
  %391 = load i32, i32* @n_atoms, align 4, !dbg !961, !tbaa !943
  %392 = sext i32 %391 to i64, !dbg !964
  %393 = icmp slt i64 %390, %392, !dbg !964
  br i1 %393, label %363, label %394, !dbg !965, !llvm.loop !987

394:                                              ; preds = %363
  %395 = icmp sgt i32 %391, 0, !dbg !989
  br i1 %395, label %396, label %397, !dbg !991

396:                                              ; preds = %394
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !992
  br label %397, !dbg !992

397:                                              ; preds = %396, %394, %354
  %398 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* nonnull @n_bonds, i32 1, i32* nonnull %352, i64 4, i32 2, i32* nonnull %353, i64 4, i32 3, i32* nonnull %343, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #10, !dbg !993
  call void @llvm.dbg.value(metadata i8 %398, metadata !530, metadata !DIExpression()) #10, !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !504, metadata !DIExpression()) #10, !dbg !935
  %399 = load i32, i32* @n_bonds, align 4, !dbg !994, !tbaa !943
  %400 = icmp sgt i32 %399, 0, !dbg !997
  br i1 %400, label %401, label %491, !dbg !998

401:                                              ; preds = %397
  %402 = zext i32 %399 to i64, !dbg !998
  %403 = icmp ult i32 %399, 4, !dbg !998
  br i1 %403, label %478, label %404, !dbg !998

404:                                              ; preds = %401
  %405 = and i64 %402, 4294967292, !dbg !998
  %406 = add nsw i64 %405, -4, !dbg !998
  %407 = lshr exact i64 %406, 2, !dbg !998
  %408 = add nuw nsw i64 %407, 1, !dbg !998
  %409 = and i64 %408, 3, !dbg !998
  %410 = icmp ult i64 %406, 12, !dbg !998
  br i1 %410, label %458, label %411, !dbg !998

411:                                              ; preds = %404
  %412 = sub nsw i64 %408, %409, !dbg !998
  br label %413, !dbg !998

413:                                              ; preds = %413, %411
  %414 = phi i64 [ 0, %411 ], [ %455, %413 ], !dbg !999
  %415 = phi i64 [ %412, %411 ], [ %456, %413 ]
  %416 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %414, !dbg !1000
  %417 = bitcast i32* %416 to <4 x i32>*, !dbg !1000
  %418 = load <4 x i32>, <4 x i32>* %417, align 16, !dbg !1000, !tbaa !943
  %419 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %414, !dbg !1002
  %420 = bitcast i32* %419 to <4 x i32>*, !dbg !1002
  %421 = load <4 x i32>, <4 x i32>* %420, align 16, !dbg !1002, !tbaa !943
  %422 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %414, i64 0, !dbg !1003
  %423 = bitcast i32* %422 to <8 x i32>*, !dbg !1003
  %424 = shufflevector <4 x i32> %418, <4 x i32> %421, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1004
  store <8 x i32> %424, <8 x i32>* %423, align 16, !dbg !1004, !tbaa !943
  %425 = or i64 %414, 4, !dbg !999
  %426 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %425, !dbg !1000
  %427 = bitcast i32* %426 to <4 x i32>*, !dbg !1000
  %428 = load <4 x i32>, <4 x i32>* %427, align 16, !dbg !1000, !tbaa !943
  %429 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %425, !dbg !1002
  %430 = bitcast i32* %429 to <4 x i32>*, !dbg !1002
  %431 = load <4 x i32>, <4 x i32>* %430, align 16, !dbg !1002, !tbaa !943
  %432 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %425, i64 0, !dbg !1003
  %433 = bitcast i32* %432 to <8 x i32>*, !dbg !1003
  %434 = shufflevector <4 x i32> %428, <4 x i32> %431, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1004
  store <8 x i32> %434, <8 x i32>* %433, align 16, !dbg !1004, !tbaa !943
  %435 = or i64 %414, 8, !dbg !999
  %436 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %435, !dbg !1000
  %437 = bitcast i32* %436 to <4 x i32>*, !dbg !1000
  %438 = load <4 x i32>, <4 x i32>* %437, align 16, !dbg !1000, !tbaa !943
  %439 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %435, !dbg !1002
  %440 = bitcast i32* %439 to <4 x i32>*, !dbg !1002
  %441 = load <4 x i32>, <4 x i32>* %440, align 16, !dbg !1002, !tbaa !943
  %442 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %435, i64 0, !dbg !1003
  %443 = bitcast i32* %442 to <8 x i32>*, !dbg !1003
  %444 = shufflevector <4 x i32> %438, <4 x i32> %441, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1004
  store <8 x i32> %444, <8 x i32>* %443, align 16, !dbg !1004, !tbaa !943
  %445 = or i64 %414, 12, !dbg !999
  %446 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %445, !dbg !1000
  %447 = bitcast i32* %446 to <4 x i32>*, !dbg !1000
  %448 = load <4 x i32>, <4 x i32>* %447, align 16, !dbg !1000, !tbaa !943
  %449 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %445, !dbg !1002
  %450 = bitcast i32* %449 to <4 x i32>*, !dbg !1002
  %451 = load <4 x i32>, <4 x i32>* %450, align 16, !dbg !1002, !tbaa !943
  %452 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %445, i64 0, !dbg !1003
  %453 = bitcast i32* %452 to <8 x i32>*, !dbg !1003
  %454 = shufflevector <4 x i32> %448, <4 x i32> %451, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1004
  store <8 x i32> %454, <8 x i32>* %453, align 16, !dbg !1004, !tbaa !943
  %455 = add i64 %414, 16, !dbg !999
  %456 = add i64 %415, -4, !dbg !999
  %457 = icmp eq i64 %456, 0, !dbg !999
  br i1 %457, label %458, label %413, !dbg !999, !llvm.loop !1005

458:                                              ; preds = %413, %404
  %459 = phi i64 [ 0, %404 ], [ %455, %413 ]
  %460 = icmp eq i64 %409, 0, !dbg !999
  br i1 %460, label %476, label %461, !dbg !999

461:                                              ; preds = %458, %461
  %462 = phi i64 [ %473, %461 ], [ %459, %458 ], !dbg !999
  %463 = phi i64 [ %474, %461 ], [ %409, %458 ]
  %464 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %462, !dbg !1000
  %465 = bitcast i32* %464 to <4 x i32>*, !dbg !1000
  %466 = load <4 x i32>, <4 x i32>* %465, align 16, !dbg !1000, !tbaa !943
  %467 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %462, !dbg !1002
  %468 = bitcast i32* %467 to <4 x i32>*, !dbg !1002
  %469 = load <4 x i32>, <4 x i32>* %468, align 16, !dbg !1002, !tbaa !943
  %470 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %462, i64 0, !dbg !1003
  %471 = bitcast i32* %470 to <8 x i32>*, !dbg !1003
  %472 = shufflevector <4 x i32> %466, <4 x i32> %469, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1004
  store <8 x i32> %472, <8 x i32>* %471, align 16, !dbg !1004, !tbaa !943
  %473 = add i64 %462, 4, !dbg !999
  %474 = add i64 %463, -1, !dbg !999
  %475 = icmp eq i64 %474, 0, !dbg !999
  br i1 %475, label %476, label %461, !dbg !999, !llvm.loop !1008

476:                                              ; preds = %461, %458
  %477 = icmp eq i64 %405, %402, !dbg !998
  br i1 %477, label %490, label %478, !dbg !998

478:                                              ; preds = %476, %401
  %479 = phi i64 [ 0, %401 ], [ %405, %476 ]
  br label %480, !dbg !998

480:                                              ; preds = %478, %480
  %481 = phi i64 [ %488, %480 ], [ %479, %478 ]
  call void @llvm.dbg.value(metadata i64 %481, metadata !504, metadata !DIExpression()) #10, !dbg !935
  %482 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %481, !dbg !1000
  %483 = load i32, i32* %482, align 4, !dbg !1000, !tbaa !943
  %484 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %481, i64 0, !dbg !1010
  store i32 %483, i32* %484, align 8, !dbg !1011, !tbaa !943
  %485 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %481, !dbg !1002
  %486 = load i32, i32* %485, align 4, !dbg !1002, !tbaa !943
  %487 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %481, i64 1, !dbg !1003
  store i32 %486, i32* %487, align 4, !dbg !1004, !tbaa !943
  %488 = add nuw nsw i64 %481, 1, !dbg !999
  call void @llvm.dbg.value(metadata i64 %488, metadata !504, metadata !DIExpression()) #10, !dbg !935
  %489 = icmp eq i64 %488, %402, !dbg !997
  br i1 %489, label %490, label %480, !dbg !998, !llvm.loop !1012

490:                                              ; preds = %480, %476
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1014
  br label %491, !dbg !1014

491:                                              ; preds = %490, %397
  %492 = add nuw nsw i64 %355, 1, !dbg !1016
  call void @llvm.dbg.value(metadata i64 %492, metadata !505, metadata !DIExpression()) #10, !dbg !935
  %493 = load i32, i32* %21, align 4, !dbg !947, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %493, metadata !503, metadata !DIExpression()) #10, !dbg !935
  %494 = sext i32 %493 to i64, !dbg !950
  %495 = icmp slt i64 %492, %494, !dbg !950
  br i1 %495, label %354, label %496, !dbg !951, !llvm.loop !1017

496:                                              ; preds = %491, %317
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %334) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %333) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %332) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %331) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %330) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %329) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %328) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %327) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %326) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %325) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %324) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %323) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %322) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %321) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %320) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %319) #10, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %318) #10, !dbg !1019
  br label %636, !dbg !1020

497:                                              ; preds = %314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !415, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !475, metadata !DIExpression()) #10, !dbg !1021
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !476, metadata !DIExpression()) #10, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1022
  %498 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %498) #10, !dbg !1023
  %499 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %499) #10, !dbg !1023
  %500 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %500) #10, !dbg !1023
  %501 = bitcast i32* %15 to i8*, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %501) #10, !dbg !1024
  %502 = bitcast i32* %16 to i8*, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %502) #10, !dbg !1024
  %503 = bitcast double* %17 to i8*, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %503) #10, !dbg !1025
  %504 = bitcast double* %18 to i8*, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %504) #10, !dbg !1025
  %505 = bitcast double* %19 to i8*, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %505) #10, !dbg !1025
  store i32 0, i32* @n_atoms, align 4, !dbg !1026, !tbaa !943
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1027, !tbaa !656
  %506 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %292) #10, !dbg !1028
  %507 = icmp eq i8* %506, null, !dbg !1029
  br i1 %507, label %577, label %508, !dbg !1029

508:                                              ; preds = %497
  %509 = bitcast [256 x i8]* %41 to i32*, !dbg !1030
  %510 = bitcast double* %17 to i64*, !dbg !1032
  %511 = bitcast double* %18 to i64*, !dbg !1032
  %512 = bitcast double* %19 to i64*, !dbg !1032
  %513 = bitcast [100 x i8]* %39 to i32*, !dbg !1034
  %514 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 2, !dbg !1036
  %515 = bitcast [100 x i8]* %40 to i64*, !dbg !1038
  %516 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 3, !dbg !1038
  br label %517, !dbg !1029

517:                                              ; preds = %574, %508
  %518 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1041
  %519 = icmp eq i32 %518, 0, !dbg !1042
  br i1 %519, label %520, label %540, !dbg !1043

520:                                              ; preds = %517
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !618, metadata !DIExpression()) #10, !dbg !1044
  call void @llvm.dbg.value(metadata i8* %48, metadata !619, metadata !DIExpression()) #10, !dbg !1044
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %46) #10, !dbg !1045
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %47) #10, !dbg !1045
  %521 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !1046
  %522 = icmp eq i32 %521, 2, !dbg !1048
  br i1 %522, label %523, label %539, !dbg !1049

523:                                              ; preds = %520
  %524 = load i32, i32* %513, align 16, !dbg !1050
  switch i32 %524, label %526 [
    i32 4279876, label %529
    i32 4279890, label %525
  ], !dbg !1051

525:                                              ; preds = %523
  br label %529, !dbg !1052

526:                                              ; preds = %523
  %527 = call i32 @bcmp(i8* nonnull dereferenceable(3) %46, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 3) #10, !dbg !1053
  %528 = icmp eq i32 %527, 0, !dbg !1055
  br i1 %528, label %529, label %531, !dbg !1056

529:                                              ; preds = %526, %523, %525
  %530 = phi i32 [ 2, %525 ], [ 1, %523 ], [ 3, %526 ]
  store i32 %530, i32* %514, align 8, !dbg !1034, !tbaa !409
  br label %531, !dbg !1057

531:                                              ; preds = %529, %526
  %532 = call i32 @bcmp(i8* nonnull dereferenceable(7) %47, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i64 7) #10, !dbg !1057
  %533 = icmp eq i32 %532, 0, !dbg !1058
  br i1 %533, label %534, label %535, !dbg !1059

534:                                              ; preds = %531
  store i32 1, i32* %516, align 4, !dbg !1060, !tbaa !775
  br label %539, !dbg !1061

535:                                              ; preds = %531
  %536 = load i64, i64* %515, align 16, !dbg !1062
  %537 = icmp eq i64 %536, 21760796498086977, !dbg !1062
  br i1 %537, label %538, label %539, !dbg !1063

538:                                              ; preds = %535
  store i32 2, i32* %516, align 4, !dbg !1064, !tbaa !775
  br label %539, !dbg !1065

539:                                              ; preds = %538, %535, %534, %520
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %47) #10, !dbg !1066
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %46) #10, !dbg !1066
  br label %574, !dbg !1067

540:                                              ; preds = %517
  %541 = load i32, i32* %509, align 16, !dbg !1068
  %542 = icmp eq i32 %541, 1297044545, !dbg !1068
  br i1 %542, label %546, label %543, !dbg !1069

543:                                              ; preds = %540
  %544 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1070
  %545 = icmp eq i32 %544, 0, !dbg !1071
  br i1 %545, label %546, label %574, !dbg !1072

546:                                              ; preds = %543, %540
  call void @llvm.dbg.value(metadata i32* %15, metadata !480, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1021
  call void @llvm.dbg.value(metadata i32* %16, metadata !481, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1021
  call void @llvm.dbg.value(metadata double* %17, metadata !482, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1021
  call void @llvm.dbg.value(metadata double* %18, metadata !483, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1021
  call void @llvm.dbg.value(metadata double* %19, metadata !484, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1021
  %547 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %498, i32* nonnull %15, i8* nonnull %499, i8* nonnull %500, i32* nonnull %16, double* nonnull %17, double* nonnull %18, double* nonnull %19) #10, !dbg !1073
  %548 = call i32 @strcmp(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %500) #11, !dbg !1074
  %549 = icmp eq i32 %548, 0, !dbg !1076
  br i1 %549, label %556, label %550, !dbg !1077

550:                                              ; preds = %546
  %551 = load i32, i32* @n_atoms, align 4, !dbg !1078, !tbaa !943
  %552 = icmp sgt i32 %551, 0, !dbg !1081
  br i1 %552, label %553, label %554, !dbg !1082

553:                                              ; preds = %550
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1083
  store i32 0, i32* @n_atoms, align 4, !dbg !1085, !tbaa !943
  br label %554, !dbg !1086

554:                                              ; preds = %553, %550
  %555 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %500) #10, !dbg !1087
  br label %556, !dbg !1088

556:                                              ; preds = %554, %546
  %557 = load i32, i32* @n_atoms, align 4, !dbg !1089, !tbaa !943
  %558 = sext i32 %557 to i64, !dbg !1090
  %559 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %558, !dbg !1090
  call void @llvm.dbg.value(metadata %struct.atom_t* %559, metadata !485, metadata !DIExpression()) #10, !dbg !1021
  call void @NAB_initatom(%struct.atom_t* nonnull %559, i32 0) #10, !dbg !1091
  %560 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %559, i64 0, i32 0, !dbg !1092
  %561 = load i8*, i8** %560, align 16, !dbg !1092, !tbaa !918
  %562 = call i8* @strcpy(i8* nonnull dereferenceable(1) %561, i8* nonnull %499) #10, !dbg !1093
  %563 = load i64, i64* %510, align 8, !dbg !1094, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !482, metadata !DIExpression()) #10, !dbg !1021
  %564 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %558, i32 17, !dbg !1095
  %565 = bitcast [3 x double]* %564 to i64*, !dbg !1096
  store i64 %563, i64* %565, align 16, !dbg !1096, !tbaa !973
  %566 = load i64, i64* %511, align 8, !dbg !1097, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !483, metadata !DIExpression()) #10, !dbg !1021
  %567 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %558, i32 17, i64 1, !dbg !1098
  %568 = bitcast double* %567 to i64*, !dbg !1099
  store i64 %566, i64* %568, align 8, !dbg !1099, !tbaa !973
  %569 = load i64, i64* %512, align 8, !dbg !1100, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !484, metadata !DIExpression()) #10, !dbg !1021
  %570 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %558, i32 17, i64 2, !dbg !1101
  %571 = bitcast double* %570 to i64*, !dbg !1102
  store i64 %569, i64* %571, align 16, !dbg !1102, !tbaa !973
  %572 = load i32, i32* @n_atoms, align 4, !dbg !1103, !tbaa !943
  %573 = add nsw i32 %572, 1, !dbg !1103
  store i32 %573, i32* @n_atoms, align 4, !dbg !1103, !tbaa !943
  br label %574, !dbg !1104

574:                                              ; preds = %556, %543, %539
  %575 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %292) #10, !dbg !1028
  %576 = icmp eq i8* %575, null, !dbg !1029
  br i1 %576, label %577, label %517, !dbg !1029, !llvm.loop !1105

577:                                              ; preds = %574, %497
  %578 = load i32, i32* @n_atoms, align 4, !dbg !1107, !tbaa !943
  %579 = icmp sgt i32 %578, 0, !dbg !1109
  br i1 %579, label %580, label %581, !dbg !1110

580:                                              ; preds = %577
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1111
  br label %581, !dbg !1111

581:                                              ; preds = %577, %580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %505) #10, !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %504) #10, !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %503) #10, !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %502) #10, !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %501) #10, !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %500) #10, !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %499) #10, !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %498) #10, !dbg !1112
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1112
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !419, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !604, metadata !DIExpression()) #10, !dbg !1113
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !605, metadata !DIExpression()) #10, !dbg !1113
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1114
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1115
  %582 = bitcast i32* %10 to i8*, !dbg !1116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %582) #10, !dbg !1116
  %583 = bitcast i32* %11 to i8*, !dbg !1116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %583) #10, !dbg !1116
  store i32 0, i32* @n_bonds, align 4, !dbg !1117, !tbaa !943
  store i8 0, i8* %45, align 16, !dbg !1118, !tbaa !656
  %584 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %293) #10, !dbg !1119
  %585 = icmp eq i8* %584, null, !dbg !1120
  br i1 %585, label %629, label %586, !dbg !1120

586:                                              ; preds = %581, %626
  %587 = load i8, i8* %48, align 16, !dbg !1121, !tbaa !656
  %588 = icmp eq i8 %587, 35, !dbg !1124
  br i1 %588, label %589, label %607, !dbg !1125

589:                                              ; preds = %586
  %590 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1126
  %591 = icmp eq i32 %590, 1, !dbg !1129
  br i1 %591, label %600, label %592, !dbg !1130

592:                                              ; preds = %589
  %593 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1131
  %594 = trunc i64 %593 to i32, !dbg !1131
  %595 = add i32 %594, -1, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %595, metadata !607, metadata !DIExpression()) #10, !dbg !1113
  %596 = icmp slt i32 %595, 20, !dbg !1133
  %597 = select i1 %596, i32 %595, i32 20, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %597, metadata !607, metadata !DIExpression()) #10, !dbg !1113
  %598 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %597, i32 %597, i8* nonnull %48) #10, !dbg !1134
  %599 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1135
  br label %633, !dbg !1136

600:                                              ; preds = %589
  %601 = load i32, i32* @n_bonds, align 4, !dbg !1137, !tbaa !943
  %602 = icmp sgt i32 %601, 0, !dbg !1139
  br i1 %602, label %603, label %605, !dbg !1140

603:                                              ; preds = %600
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1141
  %604 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1143
  store i32 0, i32* @n_bonds, align 4, !dbg !1144, !tbaa !943
  br label %626, !dbg !1145

605:                                              ; preds = %600
  %606 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1146
  br label %626

607:                                              ; preds = %586
  call void @llvm.dbg.value(metadata i32* %10, metadata !608, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1113
  call void @llvm.dbg.value(metadata i32* %11, metadata !609, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1113
  %608 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11) #10, !dbg !1147
  %609 = icmp eq i32 %608, 2, !dbg !1150
  br i1 %609, label %618, label %610, !dbg !1151

610:                                              ; preds = %607
  %611 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1152
  %612 = trunc i64 %611 to i32, !dbg !1152
  %613 = add i32 %612, -1, !dbg !1152
  call void @llvm.dbg.value(metadata i32 %613, metadata !607, metadata !DIExpression()) #10, !dbg !1113
  %614 = icmp slt i32 %613, 20, !dbg !1154
  %615 = select i1 %614, i32 %613, i32 20, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %615, metadata !607, metadata !DIExpression()) #10, !dbg !1113
  %616 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %615, i32 %615, i8* nonnull %48) #10, !dbg !1155
  %617 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1156
  br label %633, !dbg !1157

618:                                              ; preds = %607
  %619 = load i32, i32* %10, align 4, !dbg !1158, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %619, metadata !608, metadata !DIExpression()) #10, !dbg !1113
  %620 = load i32, i32* @n_bonds, align 4, !dbg !1160, !tbaa !943
  %621 = sext i32 %620 to i64, !dbg !1161
  %622 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %621, i64 0, !dbg !1161
  store i32 %619, i32* %622, align 8, !dbg !1162, !tbaa !943
  %623 = load i32, i32* %11, align 4, !dbg !1163, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %623, metadata !609, metadata !DIExpression()) #10, !dbg !1113
  %624 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %621, i64 1, !dbg !1164
  store i32 %623, i32* %624, align 4, !dbg !1165, !tbaa !943
  %625 = add nsw i32 %620, 1, !dbg !1166
  store i32 %625, i32* @n_bonds, align 4, !dbg !1166, !tbaa !943
  br label %626

626:                                              ; preds = %618, %605, %603
  %627 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %293) #10, !dbg !1119
  %628 = icmp eq i8* %627, null, !dbg !1120
  br i1 %628, label %629, label %586, !dbg !1120, !llvm.loop !1167

629:                                              ; preds = %626, %581
  %630 = load i32, i32* @n_bonds, align 4, !dbg !1169, !tbaa !943
  %631 = icmp sgt i32 %630, 0, !dbg !1171
  br i1 %631, label %632, label %633, !dbg !1172

632:                                              ; preds = %629
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1173
  br label %633, !dbg !1173

633:                                              ; preds = %592, %610, %629, %632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %583) #10, !dbg !1174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %582) #10, !dbg !1174
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1174
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1174
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !415, metadata !DIExpression()), !dbg !634
  %634 = call i32 @fclose(%struct._IO_FILE* %292), !dbg !1175
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !419, metadata !DIExpression()), !dbg !634
  %635 = call i32 @fclose(%struct._IO_FILE* %293), !dbg !1176
  br label %636

636:                                              ; preds = %633, %496
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !420, metadata !DIExpression()), !dbg !634
  %637 = icmp eq %struct._IO_FILE* %294, null, !dbg !1177
  br i1 %637, label %695, label %638, !dbg !1178

638:                                              ; preds = %636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !455, metadata !DIExpression()) #10, !dbg !1179
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !456, metadata !DIExpression()) #10, !dbg !1179
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1180
  %639 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !1181
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %639) #10, !dbg !1181
  %640 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !1181
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %640) #10, !dbg !1181
  %641 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1181
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %641) #10, !dbg !1181
  %642 = bitcast i32* %6 to i8*, !dbg !1182
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %642) #10, !dbg !1182
  %643 = bitcast i32* %7 to i8*, !dbg !1182
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %643) #10, !dbg !1182
  %644 = bitcast double* %8 to i8*, !dbg !1183
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %644) #10, !dbg !1183
  %645 = bitcast double* %9 to i8*, !dbg !1183
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %645) #10, !dbg !1183
  store i32 0, i32* @n_atoms, align 4, !dbg !1184, !tbaa !943
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1185, !tbaa !656
  %646 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %294) #10, !dbg !1186
  %647 = icmp eq i8* %646, null, !dbg !1187
  br i1 %647, label %689, label %648, !dbg !1187

648:                                              ; preds = %638
  %649 = bitcast [256 x i8]* %41 to i32*, !dbg !1188
  %650 = bitcast double* %8 to i64*, !dbg !1192
  %651 = bitcast double* %9 to i64*, !dbg !1192
  br label %652, !dbg !1187

652:                                              ; preds = %686, %648
  %653 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* nonnull dereferenceable(3) %48, i64 3) #10, !dbg !1194
  %654 = icmp eq i32 %653, 0, !dbg !1195
  br i1 %654, label %686, label %655, !dbg !1196

655:                                              ; preds = %652
  %656 = load i32, i32* %649, align 16, !dbg !1197
  %657 = icmp eq i32 %656, 1297044545, !dbg !1197
  br i1 %657, label %661, label %658, !dbg !1198

658:                                              ; preds = %655
  %659 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1199
  %660 = icmp eq i32 %659, 0, !dbg !1200
  br i1 %660, label %661, label %686, !dbg !1201

661:                                              ; preds = %658, %655
  call void @llvm.dbg.value(metadata i32* %6, metadata !463, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1179
  call void @llvm.dbg.value(metadata i32* %7, metadata !464, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1179
  call void @llvm.dbg.value(metadata double* %8, metadata !465, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1179
  call void @llvm.dbg.value(metadata double* %9, metadata !466, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1179
  %662 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %639, i32* nonnull %6, i8* nonnull %640, i8* nonnull %641, i32* nonnull %7, double* nonnull %8, double* nonnull %9) #10, !dbg !1202
  %663 = call i32 @strcmp(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %641) #11, !dbg !1203
  %664 = icmp eq i32 %663, 0, !dbg !1205
  br i1 %664, label %671, label %665, !dbg !1206

665:                                              ; preds = %661
  %666 = load i32, i32* @n_atoms, align 4, !dbg !1207, !tbaa !943
  %667 = icmp sgt i32 %666, 0, !dbg !1210
  br i1 %667, label %668, label %669, !dbg !1211

668:                                              ; preds = %665
  call fastcc void @addqr2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1212
  store i32 0, i32* @n_atoms, align 4, !dbg !1214, !tbaa !943
  br label %669, !dbg !1215

669:                                              ; preds = %668, %665
  %670 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %641) #10, !dbg !1216
  br label %671, !dbg !1217

671:                                              ; preds = %669, %661
  %672 = load i32, i32* @n_atoms, align 4, !dbg !1218, !tbaa !943
  %673 = sext i32 %672 to i64, !dbg !1219
  %674 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %673, !dbg !1219
  call void @llvm.dbg.value(metadata %struct.atom_t* %674, metadata !467, metadata !DIExpression()) #10, !dbg !1179
  call void @NAB_initatom(%struct.atom_t* nonnull %674, i32 0) #10, !dbg !1220
  %675 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %674, i64 0, i32 0, !dbg !1221
  %676 = load i8*, i8** %675, align 16, !dbg !1221, !tbaa !918
  %677 = call i8* @strcpy(i8* nonnull dereferenceable(1) %676, i8* nonnull %640) #10, !dbg !1222
  %678 = load i64, i64* %650, align 8, !dbg !1223, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !465, metadata !DIExpression()) #10, !dbg !1179
  %679 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %673, i32 6, !dbg !1224
  %680 = bitcast double* %679 to i64*, !dbg !1225
  store i64 %678, i64* %680, align 16, !dbg !1225, !tbaa !976
  %681 = load i64, i64* %651, align 8, !dbg !1226, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !466, metadata !DIExpression()) #10, !dbg !1179
  %682 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %673, i32 7, !dbg !1227
  %683 = bitcast double* %682 to i64*, !dbg !1228
  store i64 %681, i64* %683, align 8, !dbg !1228, !tbaa !1229
  %684 = load i32, i32* @n_atoms, align 4, !dbg !1230, !tbaa !943
  %685 = add nsw i32 %684, 1, !dbg !1230
  store i32 %685, i32* @n_atoms, align 4, !dbg !1230, !tbaa !943
  br label %686, !dbg !1231

686:                                              ; preds = %671, %658, %652
  %687 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %294) #10, !dbg !1186
  %688 = icmp eq i8* %687, null, !dbg !1187
  br i1 %688, label %689, label %652, !dbg !1187, !llvm.loop !1232

689:                                              ; preds = %686, %638
  %690 = load i32, i32* @n_atoms, align 4, !dbg !1234, !tbaa !943
  %691 = icmp sgt i32 %690, 0, !dbg !1236
  br i1 %691, label %692, label %693, !dbg !1237

692:                                              ; preds = %689
  call fastcc void @addqr2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1238
  br label %693, !dbg !1238

693:                                              ; preds = %689, %692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %645) #10, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %644) #10, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %643) #10, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %642) #10, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %641) #10, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %640) #10, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %639) #10, !dbg !1239
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1239
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !420, metadata !DIExpression()), !dbg !634
  %694 = call i32 @fclose(%struct._IO_FILE* nonnull %294), !dbg !1240
  br label %695, !dbg !1241

695:                                              ; preds = %636, %693
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !421, metadata !DIExpression()), !dbg !634
  %696 = icmp eq %struct._IO_FILE* %295, null, !dbg !1242
  br i1 %696, label %836, label %697, !dbg !1243

697:                                              ; preds = %695
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !429, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !430, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1246
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %698 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !1247
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %698) #10, !dbg !1247
  %699 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0, !dbg !1247
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %699) #10, !dbg !1247
  %700 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1247
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %700) #10, !dbg !1247
  %701 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1247
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %701) #10, !dbg !1247
  store i32 0, i32* @n_chi, align 4, !dbg !1248, !tbaa !943
  store i8 0, i8* %45, align 16, !dbg !1249, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %702 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %295) #10, !dbg !1250
  %703 = icmp eq i8* %702, null, !dbg !1251
  br i1 %703, label %830, label %704, !dbg !1251

704:                                              ; preds = %697
  %705 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 4, !dbg !1252
  br label %706, !dbg !1251

706:                                              ; preds = %826, %704
  %707 = phi %struct.residue_t* [ null, %704 ], [ %827, %826 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %708 = load i8, i8* %48, align 16, !dbg !1259, !tbaa !656
  %709 = icmp eq i8 %708, 35, !dbg !1260
  br i1 %709, label %710, label %746, !dbg !1261

710:                                              ; preds = %706
  %711 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1262
  %712 = icmp eq i32 %711, 1, !dbg !1263
  br i1 %712, label %722, label %713, !dbg !1264

713:                                              ; preds = %710
  %714 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1265
  %715 = trunc i64 %714 to i32, !dbg !1265
  %716 = add i32 %715, -1, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %716, metadata !433, metadata !DIExpression()) #10, !dbg !1244
  %717 = icmp slt i32 %716, 20, !dbg !1267
  %718 = select i1 %717, i32 %716, i32 20, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %718, metadata !433, metadata !DIExpression()) #10, !dbg !1244
  %719 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %718, i32 %718, i8* nonnull %48) #10, !dbg !1268
  %720 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1269, !tbaa !379
  %721 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %720, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1270
  br label %834, !dbg !1271

722:                                              ; preds = %710
  %723 = load i32, i32* @n_chi, align 4, !dbg !1272, !tbaa !943
  %724 = icmp sgt i32 %723, 0, !dbg !1274
  br i1 %724, label %725, label %726, !dbg !1275

725:                                              ; preds = %722
  call fastcc void @addchi2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1276
  store i32 0, i32* @n_chi, align 4, !dbg !1278, !tbaa !943
  br label %726, !dbg !1279

726:                                              ; preds = %725, %722
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !435, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %727 = load %struct.residue_t*, %struct.residue_t** %705, align 8, !dbg !1252, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %727, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %728 = icmp eq %struct.residue_t* %727, null, !dbg !1280
  br i1 %728, label %739, label %729, !dbg !1280

729:                                              ; preds = %726, %735
  %730 = phi %struct.residue_t* [ %737, %735 ], [ %727, %726 ]
  %731 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %730, i64 0, i32 4, !dbg !1281
  %732 = load i8*, i8** %731, align 8, !dbg !1281, !tbaa !1285
  %733 = call i32 @strcmp(i8* nonnull dereferenceable(1) %732, i8* nonnull %45) #11, !dbg !1287
  %734 = icmp eq i32 %733, 0, !dbg !1287
  br i1 %734, label %744, label %735, !dbg !1288

735:                                              ; preds = %729
  %736 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %730, i64 0, i32 0, !dbg !1289
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %737 = load %struct.residue_t*, %struct.residue_t** %736, align 8, !dbg !1252, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %737, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %738 = icmp eq %struct.residue_t* %737, null, !dbg !1280
  br i1 %738, label %739, label %729, !dbg !1280, !llvm.loop !1290

739:                                              ; preds = %726, %735
  %740 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1292, !tbaa !379
  %741 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 1, !dbg !1295
  %742 = load i8*, i8** %741, align 8, !dbg !1295, !tbaa !388
  %743 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %740, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %45, i8* %742) #14, !dbg !1296
  br label %834, !dbg !1297

744:                                              ; preds = %729
  call void @llvm.dbg.value(metadata %struct.residue_t* %730, metadata !435, metadata !DIExpression()) #10, !dbg !1244
  %745 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1298
  br label %826, !dbg !1299

746:                                              ; preds = %706
  %747 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %698, i8* nonnull %699, i8* nonnull %700, i8* nonnull %701) #10, !dbg !1300
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !1302, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %698, metadata !1307, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i32 0, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i32 0, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  %748 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 15, !dbg !1312
  %749 = load i32, i32* %748, align 8, !dbg !1312, !tbaa !1315
  %750 = icmp sgt i32 %749, 0, !dbg !1316
  br i1 %750, label %751, label %764, !dbg !1317

751:                                              ; preds = %746
  %752 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 17, !dbg !1318
  %753 = load %struct.atom_t*, %struct.atom_t** %752, align 8, !dbg !1321, !tbaa !1322
  %754 = zext i32 %749 to i64, !dbg !1316
  br label %757, !dbg !1317

755:                                              ; preds = %757
  call void @llvm.dbg.value(metadata i64 %763, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  %756 = icmp eq i64 %763, %754, !dbg !1316
  br i1 %756, label %764, label %757, !dbg !1317, !llvm.loop !1323

757:                                              ; preds = %755, %751
  %758 = phi i64 [ 0, %751 ], [ %763, %755 ]
  call void @llvm.dbg.value(metadata i64 %758, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  %759 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %753, i64 %758, i32 0, !dbg !1325
  %760 = load i8*, i8** %759, align 8, !dbg !1325, !tbaa !918
  %761 = call i32 @strcmp(i8* nonnull dereferenceable(1) %760, i8* nonnull dereferenceable(1) %698) #11, !dbg !1326
  %762 = icmp eq i32 %761, 0, !dbg !1326
  %763 = add nuw nsw i64 %758, 1, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %763, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  br i1 %762, label %769, label %755, !dbg !1328

764:                                              ; preds = %746, %755
  %765 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1329, !tbaa !379
  %766 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 4, !dbg !1331
  %767 = load i8*, i8** %766, align 8, !dbg !1331, !tbaa !1285
  %768 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %765, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %698, i8* %767) #14, !dbg !1332
  call void @exit(i32 1) #13, !dbg !1333
  unreachable, !dbg !1333

769:                                              ; preds = %757
  call void @llvm.dbg.value(metadata i64 %758, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %758, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %758, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %758, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %758, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %758, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %758, metadata !1308, metadata !DIExpression()) #10, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !443, metadata !DIExpression()) #10, !dbg !1244
  %770 = trunc i64 %758 to i32, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %770, metadata !439, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !1302, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %699, metadata !1307, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i32 0, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i32 0, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  br label %773, !dbg !1338

771:                                              ; preds = %773
  call void @llvm.dbg.value(metadata i64 %779, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  %772 = icmp eq i64 %779, %754, !dbg !1339
  br i1 %772, label %780, label %773, !dbg !1338, !llvm.loop !1340

773:                                              ; preds = %771, %769
  %774 = phi i64 [ 0, %769 ], [ %779, %771 ]
  call void @llvm.dbg.value(metadata i64 %774, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  %775 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %753, i64 %774, i32 0, !dbg !1342
  %776 = load i8*, i8** %775, align 8, !dbg !1342, !tbaa !918
  %777 = call i32 @strcmp(i8* nonnull dereferenceable(1) %776, i8* nonnull dereferenceable(1) %699) #11, !dbg !1343
  %778 = icmp eq i32 %777, 0, !dbg !1343
  %779 = add nuw nsw i64 %774, 1, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %779, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  br i1 %778, label %785, label %771, !dbg !1345

780:                                              ; preds = %771
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %781 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1346, !tbaa !379
  %782 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 4, !dbg !1348
  %783 = load i8*, i8** %782, align 8, !dbg !1348, !tbaa !1285
  %784 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %781, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %699, i8* %783) #14, !dbg !1349
  call void @exit(i32 1) #13, !dbg !1350
  unreachable, !dbg !1350

785:                                              ; preds = %773
  call void @llvm.dbg.value(metadata i64 %774, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %774, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %774, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %774, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %774, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %774, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %774, metadata !1308, metadata !DIExpression()) #10, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !443, metadata !DIExpression()) #10, !dbg !1244
  %786 = trunc i64 %774 to i32, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %786, metadata !440, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !1302, metadata !DIExpression()) #10, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %700, metadata !1307, metadata !DIExpression()) #10, !dbg !1352
  call void @llvm.dbg.value(metadata i32 0, metadata !1308, metadata !DIExpression()) #10, !dbg !1352
  call void @llvm.dbg.value(metadata i32 0, metadata !1308, metadata !DIExpression()) #10, !dbg !1352
  br label %789, !dbg !1355

787:                                              ; preds = %789
  call void @llvm.dbg.value(metadata i64 %795, metadata !1308, metadata !DIExpression()) #10, !dbg !1352
  %788 = icmp eq i64 %795, %754, !dbg !1356
  br i1 %788, label %796, label %789, !dbg !1355, !llvm.loop !1357

789:                                              ; preds = %787, %785
  %790 = phi i64 [ 0, %785 ], [ %795, %787 ]
  call void @llvm.dbg.value(metadata i64 %790, metadata !1308, metadata !DIExpression()) #10, !dbg !1352
  %791 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %753, i64 %790, i32 0, !dbg !1359
  %792 = load i8*, i8** %791, align 8, !dbg !1359, !tbaa !918
  %793 = call i32 @strcmp(i8* nonnull dereferenceable(1) %792, i8* nonnull dereferenceable(1) %700) #11, !dbg !1360
  %794 = icmp eq i32 %793, 0, !dbg !1360
  %795 = add nuw nsw i64 %790, 1, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %795, metadata !1308, metadata !DIExpression()) #10, !dbg !1352
  br i1 %794, label %803, label %787, !dbg !1362

796:                                              ; preds = %787
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %797 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1363, !tbaa !379
  %798 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 4, !dbg !1365
  %799 = load i8*, i8** %798, align 8, !dbg !1365, !tbaa !1285
  %800 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %797, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %700, i8* %799) #14, !dbg !1366
  call void @exit(i32 1) #13, !dbg !1367
  unreachable, !dbg !1367

801:                                              ; preds = %803
  call void @llvm.dbg.value(metadata i64 %809, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  %802 = icmp eq i64 %809, %754, !dbg !1371
  br i1 %802, label %810, label %803, !dbg !1372, !llvm.loop !1373

803:                                              ; preds = %789, %801
  %804 = phi i64 [ %809, %801 ], [ 0, %789 ]
  call void @llvm.dbg.value(metadata i64 %804, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  %805 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %753, i64 %804, i32 0, !dbg !1375
  %806 = load i8*, i8** %805, align 8, !dbg !1375, !tbaa !918
  %807 = call i32 @strcmp(i8* nonnull dereferenceable(1) %806, i8* nonnull dereferenceable(1) %701) #11, !dbg !1376
  %808 = icmp eq i32 %807, 0, !dbg !1376
  %809 = add nuw nsw i64 %804, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %809, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  br i1 %808, label %815, label %801, !dbg !1378

810:                                              ; preds = %801
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %811 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1379, !tbaa !379
  %812 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 4, !dbg !1381
  %813 = load i8*, i8** %812, align 8, !dbg !1381, !tbaa !1285
  %814 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %811, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %701, i8* %813) #14, !dbg !1382
  call void @exit(i32 1) #13, !dbg !1383
  unreachable, !dbg !1383

815:                                              ; preds = %803
  call void @llvm.dbg.value(metadata i64 %804, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %804, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %804, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %804, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %804, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %804, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %804, metadata !1308, metadata !DIExpression()) #10, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !443, metadata !DIExpression()) #10, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %790, metadata !441, metadata !DIExpression(DW_OP_constu, 176, DW_OP_mul, DW_OP_constu, 176, DW_OP_div, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %790, metadata !441, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !1244
  %816 = trunc i64 %790 to i32, !dbg !1384
  call void @llvm.dbg.value(metadata i32 %816, metadata !441, metadata !DIExpression()) #10, !dbg !1244
  %817 = trunc i64 %804 to i32, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %817, metadata !442, metadata !DIExpression()) #10, !dbg !1244
  %818 = load i32, i32* @n_chi, align 4, !dbg !1386, !tbaa !943
  %819 = sext i32 %818 to i64, !dbg !1387
  call void @llvm.dbg.value(metadata %struct.chiral_t* undef, metadata !444, metadata !DIExpression()) #10, !dbg !1244
  %820 = add nsw i32 %818, 1, !dbg !1388
  store i32 %820, i32* @n_chi, align 4, !dbg !1388, !tbaa !943
  %821 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 0, i64 0, !dbg !1389
  store i32 %770, i32* %821, align 8, !dbg !1390, !tbaa !943
  %822 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 0, i64 1, !dbg !1391
  store i32 %786, i32* %822, align 4, !dbg !1392, !tbaa !943
  %823 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 0, i64 2, !dbg !1393
  store i32 %816, i32* %823, align 8, !dbg !1394, !tbaa !943
  %824 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 0, i64 3, !dbg !1395
  store i32 %817, i32* %824, align 4, !dbg !1396, !tbaa !943
  %825 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 1, !dbg !1397
  store double 0.000000e+00, double* %825, align 8, !dbg !1398, !tbaa !1399
  br label %826

826:                                              ; preds = %815, %744
  %827 = phi %struct.residue_t* [ %730, %744 ], [ %707, %815 ], !dbg !1244
  call void @llvm.dbg.value(metadata %struct.residue_t* %827, metadata !434, metadata !DIExpression()) #10, !dbg !1244
  %828 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %295) #10, !dbg !1250
  %829 = icmp eq i8* %828, null, !dbg !1251
  br i1 %829, label %830, label %706, !dbg !1251, !llvm.loop !1401

830:                                              ; preds = %826, %697
  %831 = load i32, i32* @n_chi, align 4, !dbg !1403, !tbaa !943
  %832 = icmp sgt i32 %831, 0, !dbg !1405
  br i1 %832, label %833, label %834, !dbg !1406

833:                                              ; preds = %830
  call fastcc void @addchi2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1407
  store i32 0, i32* @n_chi, align 4, !dbg !1409, !tbaa !943
  br label %834, !dbg !1410

834:                                              ; preds = %713, %739, %830, %833
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %701) #10, !dbg !1411
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %700) #10, !dbg !1411
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %699) #10, !dbg !1411
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %698) #10, !dbg !1411
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1411
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1411
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !421, metadata !DIExpression()), !dbg !634
  %835 = call i32 @fclose(%struct._IO_FILE* nonnull %295), !dbg !1412
  br label %836, !dbg !1413

836:                                              ; preds = %834, %695, %291
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %43) #10, !dbg !1414
  ret %struct.reslib_t* %296, !dbg !1414
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* nocapture readonly %1) local_unnamed_addr #0 !dbg !1415 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1419, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8* %1, metadata !1420, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()) #10, !dbg !1424
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #10, !dbg !1424
  %3 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1427, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %3, metadata !373, metadata !DIExpression()) #10, !dbg !1424
  %4 = icmp eq %struct.reslib_t* %3, null, !dbg !1428
  br i1 %4, label %15, label %5, !dbg !1428

5:                                                ; preds = %2, %11
  %6 = phi %struct.reslib_t* [ %13, %11 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %6, i64 0, i32 1, !dbg !1429
  %8 = load i8*, i8** %7, align 8, !dbg !1429, !tbaa !388
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) %0) #11, !dbg !1430
  %10 = icmp eq i32 %9, 0, !dbg !1431
  br i1 %10, label %21, label %11, !dbg !1432

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %6, i64 0, i32 0, !dbg !1433
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #10, !dbg !1424
  %13 = load %struct.reslib_t*, %struct.reslib_t** %12, align 8, !dbg !1427, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %13, metadata !373, metadata !DIExpression()) #10, !dbg !1424
  %14 = icmp eq %struct.reslib_t* %13, null, !dbg !1428
  br i1 %14, label %15, label %5, !dbg !1428, !llvm.loop !1434

15:                                               ; preds = %11, %2
  %16 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %0), !dbg !1436
  call void @llvm.dbg.value(metadata %struct.reslib_t* %16, metadata !1422, metadata !DIExpression()), !dbg !1423
  %17 = icmp eq %struct.reslib_t* %16, null, !dbg !1439
  br i1 %17, label %18, label %21, !dbg !1440

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1441, !tbaa !379
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #12, !dbg !1443
  tail call void @exit(i32 1) #13, !dbg !1444
  unreachable, !dbg !1444

21:                                               ; preds = %5, %15
  %22 = phi %struct.reslib_t* [ %16, %15 ], [ %6, %5 ], !dbg !1445
  call void @llvm.dbg.value(metadata %struct.reslib_t* %22, metadata !1422, metadata !DIExpression()), !dbg !1423
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 2, !dbg !1446
  store i32 0, i32* %23, align 8, !dbg !1447, !tbaa !409
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !1448
  %25 = icmp eq i32 %24, 0, !dbg !1448
  br i1 %25, label %41, label %26, !dbg !1450

26:                                               ; preds = %21
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !1451
  %28 = icmp eq i32 %27, 0, !dbg !1451
  br i1 %28, label %41, label %29, !dbg !1452

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !1453
  %31 = icmp eq i32 %30, 0, !dbg !1453
  br i1 %31, label %41, label %32, !dbg !1455

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !1456
  %34 = icmp eq i32 %33, 0, !dbg !1456
  br i1 %34, label %41, label %35, !dbg !1457

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !1458
  %37 = icmp eq i32 %36, 0, !dbg !1458
  br i1 %37, label %41, label %38, !dbg !1460

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !1461
  %40 = icmp eq i32 %39, 0, !dbg !1461
  br i1 %40, label %41, label %43, !dbg !1462

41:                                               ; preds = %35, %38, %29, %32, %21, %26
  %42 = phi i32 [ 1, %26 ], [ 1, %21 ], [ 2, %32 ], [ 2, %29 ], [ 3, %38 ], [ 3, %35 ]
  store i32 %42, i32* %23, align 8, !dbg !1463, !tbaa !409
  br label %43, !dbg !1464

43:                                               ; preds = %41, %38
  %44 = phi i32 [ 0, %38 ], [ %42, %41 ], !dbg !1465
  ret i32 %44, !dbg !1464
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1466 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1470, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %1, metadata !1471, metadata !DIExpression()), !dbg !1480
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !1481
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %4) #10, !dbg !1481
  call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !1473, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8* %1, metadata !368, metadata !DIExpression()) #10, !dbg !1483
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #10, !dbg !1483
  %5 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1486, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %5, metadata !373, metadata !DIExpression()) #10, !dbg !1483
  %6 = icmp eq %struct.reslib_t* %5, null, !dbg !1487
  br i1 %6, label %17, label %7, !dbg !1487

7:                                                ; preds = %2, %13
  %8 = phi %struct.reslib_t* [ %15, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %8, i64 0, i32 1, !dbg !1488
  %10 = load i8*, i8** %9, align 8, !dbg !1488, !tbaa !388
  %11 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %10, i8* nonnull dereferenceable(1) %1) #11, !dbg !1489
  %12 = icmp eq i32 %11, 0, !dbg !1490
  br i1 %12, label %21, label %13, !dbg !1491

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %8, i64 0, i32 0, !dbg !1492
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #10, !dbg !1483
  %15 = load %struct.reslib_t*, %struct.reslib_t** %14, align 8, !dbg !1486, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %15, metadata !373, metadata !DIExpression()) #10, !dbg !1483
  %16 = icmp eq %struct.reslib_t* %15, null, !dbg !1487
  br i1 %16, label %17, label %7, !dbg !1487, !llvm.loop !1493

17:                                               ; preds = %13, %2
  %18 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %1), !dbg !1495
  call void @llvm.dbg.value(metadata %struct.reslib_t* %18, metadata !1477, metadata !DIExpression()), !dbg !1480
  %19 = icmp eq %struct.reslib_t* %18, null, !dbg !1498
  br i1 %19, label %20, label %21, !dbg !1499

20:                                               ; preds = %17
  tail call void @exit(i32 1) #13, !dbg !1500
  unreachable, !dbg !1500

21:                                               ; preds = %7, %17
  %22 = phi %struct.reslib_t* [ %18, %17 ], [ %8, %7 ], !dbg !1502
  call void @llvm.dbg.value(metadata %struct.reslib_t* %22, metadata !1477, metadata !DIExpression()), !dbg !1480
  %23 = call i8* @strcpy(i8* nonnull %4, i8* nonnull dereferenceable(1) %0) #10, !dbg !1503
  %24 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 2, !dbg !1504
  %25 = load i32, i32* %24, align 8, !dbg !1504, !tbaa !409
  switch i32 %25, label %58 [
    i32 1, label %26
    i32 2, label %42
  ], !dbg !1506

26:                                               ; preds = %21
  %27 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #11, !dbg !1507
  %28 = icmp eq i32 %27, 0, !dbg !1507
  br i1 %28, label %29, label %30, !dbg !1510

29:                                               ; preds = %26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1511
  br label %58, !dbg !1511

30:                                               ; preds = %26
  %31 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #11, !dbg !1512
  %32 = icmp eq i32 %31, 0, !dbg !1512
  br i1 %32, label %33, label %34, !dbg !1514

33:                                               ; preds = %30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1515
  br label %58, !dbg !1515

34:                                               ; preds = %30
  %35 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #11, !dbg !1516
  %36 = icmp eq i32 %35, 0, !dbg !1516
  br i1 %36, label %37, label %38, !dbg !1518

37:                                               ; preds = %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1519
  br label %58, !dbg !1519

38:                                               ; preds = %34
  %39 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #11, !dbg !1520
  %40 = icmp eq i32 %39, 0, !dbg !1520
  br i1 %40, label %41, label %58, !dbg !1522

41:                                               ; preds = %38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1523
  br label %58, !dbg !1523

42:                                               ; preds = %21
  %43 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #11, !dbg !1524
  %44 = icmp eq i32 %43, 0, !dbg !1524
  br i1 %44, label %45, label %46, !dbg !1528

45:                                               ; preds = %42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1529
  br label %58, !dbg !1529

46:                                               ; preds = %42
  %47 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #11, !dbg !1530
  %48 = icmp eq i32 %47, 0, !dbg !1530
  br i1 %48, label %49, label %50, !dbg !1532

49:                                               ; preds = %46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1533
  br label %58, !dbg !1533

50:                                               ; preds = %46
  %51 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #11, !dbg !1534
  %52 = icmp eq i32 %51, 0, !dbg !1534
  br i1 %52, label %53, label %54, !dbg !1536

53:                                               ; preds = %50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1537
  br label %58, !dbg !1537

54:                                               ; preds = %50
  %55 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #11, !dbg !1538
  %56 = icmp eq i32 %55, 0, !dbg !1538
  br i1 %56, label %57, label %58, !dbg !1540

57:                                               ; preds = %54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1541
  br label %58, !dbg !1541

58:                                               ; preds = %21, %38, %54, %49, %57, %53, %45, %29, %37, %41, %33
  %59 = call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 51), !dbg !1542
  %60 = icmp eq i8* %59, null, !dbg !1544
  br i1 %60, label %61, label %64, !dbg !1545

61:                                               ; preds = %58
  %62 = call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 53), !dbg !1546
  %63 = icmp eq i8* %62, null, !dbg !1548
  br i1 %63, label %69, label %64, !dbg !1549

64:                                               ; preds = %61, %58
  %65 = phi i16 [ 51, %58 ], [ 53, %61 ]
  %66 = call i64 @strlen(i8* nonnull %4), !dbg !1550
  %67 = getelementptr [5 x i8], [5 x i8]* %3, i64 0, i64 %66, !dbg !1550
  %68 = bitcast i8* %67 to i16*, !dbg !1550
  store i16 %65, i16* %68, align 1, !dbg !1550
  br label %69, !dbg !1551

69:                                               ; preds = %64, %61
  %70 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 4, !dbg !1551
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1478, metadata !DIExpression()), !dbg !1480
  %71 = load %struct.residue_t*, %struct.residue_t** %70, align 8, !dbg !1553, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %71, metadata !1478, metadata !DIExpression()), !dbg !1480
  %72 = icmp eq %struct.residue_t* %71, null, !dbg !1554
  br i1 %72, label %86, label %73, !dbg !1554

73:                                               ; preds = %69, %82
  %74 = phi %struct.residue_t* [ %84, %82 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %74, i64 0, i32 4, !dbg !1555
  %76 = load i8*, i8** %75, align 8, !dbg !1555, !tbaa !1285
  %77 = call i32 @strcmp(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) %0) #11, !dbg !1559
  %78 = icmp eq i32 %77, 0, !dbg !1560
  br i1 %78, label %89, label %79, !dbg !1561

79:                                               ; preds = %73
  %80 = call i32 @strcmp(i8* nonnull dereferenceable(1) %76, i8* nonnull %4) #11, !dbg !1562
  %81 = icmp eq i32 %80, 0, !dbg !1563
  br i1 %81, label %89, label %82, !dbg !1564

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %74, i64 0, i32 0, !dbg !1565
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1478, metadata !DIExpression()), !dbg !1480
  %84 = load %struct.residue_t*, %struct.residue_t** %83, align 8, !dbg !1553, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %84, metadata !1478, metadata !DIExpression()), !dbg !1480
  %85 = icmp eq %struct.residue_t* %84, null, !dbg !1554
  br i1 %85, label %86, label %73, !dbg !1554, !llvm.loop !1566

86:                                               ; preds = %82, %69
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %0, i8* %1) #10, !dbg !1568
  %88 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1571
  br label %91, !dbg !1572

89:                                               ; preds = %79, %73
  %90 = call %struct.residue_t* @copyresidue(%struct.residue_t* nonnull %74), !dbg !1573
  call void @llvm.dbg.value(metadata %struct.residue_t* %90, metadata !1479, metadata !DIExpression()), !dbg !1480
  br label %91, !dbg !1574

91:                                               ; preds = %89, %86
  %92 = phi %struct.residue_t* [ null, %86 ], [ %90, %89 ], !dbg !1480
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %4) #10, !dbg !1575
  ret %struct.residue_t* %92, !dbg !1575
}

; Function Attrs: nofree nounwind
declare dso_local i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

declare !dbg !7 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) local_unnamed_addr #0 !dbg !1576 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1580, metadata !DIExpression()), !dbg !1592
  %2 = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #10, !dbg !1593
  %3 = bitcast i8* %2 to %struct.residue_t*, !dbg !1595
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !1586, metadata !DIExpression()), !dbg !1592
  %4 = icmp eq i8* %2, null, !dbg !1596
  br i1 %4, label %5, label %10, !dbg !1597

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1598
  %7 = load i8*, i8** %6, align 8, !dbg !1598, !tbaa !1285
  %8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %7) #10, !dbg !1600
  %9 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1601
  br label %489, !dbg !1602

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !1603
  %12 = load i32, i32* %11, align 8, !dbg !1603, !tbaa !1315
  %13 = sext i32 %12 to i64, !dbg !1605
  %14 = mul nsw i64 %13, 176, !dbg !1606
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !1607
  %16 = bitcast i8* %15 to %struct.atom_t*, !dbg !1608
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !1587, metadata !DIExpression()), !dbg !1592
  %17 = icmp eq i8* %15, null, !dbg !1609
  br i1 %17, label %18, label %23, !dbg !1610

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1611
  %20 = load i8*, i8** %19, align 8, !dbg !1611, !tbaa !1285
  %21 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %20) #10, !dbg !1613
  %22 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1614
  br label %489, !dbg !1615

23:                                               ; preds = %10
  %24 = shl nsw i64 %13, 2, !dbg !1616
  %25 = tail call noalias i8* @malloc(i64 %24) #10, !dbg !1618
  call void @llvm.dbg.value(metadata i8* %25, metadata !1585, metadata !DIExpression()), !dbg !1592
  %26 = icmp eq i8* %25, null, !dbg !1619
  br i1 %26, label %27, label %32, !dbg !1620

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1621
  %29 = load i8*, i8** %28, align 8, !dbg !1621, !tbaa !1285
  %30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %29) #10, !dbg !1623
  %31 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1624
  br label %489, !dbg !1625

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !1626
  %34 = load i32, i32* %33, align 8, !dbg !1626, !tbaa !1628
  %35 = icmp sgt i32 %34, 0, !dbg !1629
  br i1 %35, label %36, label %47, !dbg !1630

36:                                               ; preds = %32
  %37 = zext i32 %34 to i64, !dbg !1631
  %38 = shl nuw nsw i64 %37, 3, !dbg !1634
  %39 = tail call noalias i8* @malloc(i64 %38) #10, !dbg !1635
  %40 = bitcast i8* %39 to [2 x i32]*, !dbg !1636
  call void @llvm.dbg.value(metadata [2 x i32]* %40, metadata !1590, metadata !DIExpression()), !dbg !1592
  %41 = icmp eq i8* %39, null, !dbg !1637
  br i1 %41, label %42, label %47, !dbg !1638

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1639
  %44 = load i8*, i8** %43, align 8, !dbg !1639, !tbaa !1285
  %45 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %44) #10, !dbg !1641
  %46 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1642
  br label %489, !dbg !1643

47:                                               ; preds = %32, %36
  %48 = phi [2 x i32]* [ %40, %36 ], [ null, %32 ], !dbg !1644
  call void @llvm.dbg.value(metadata [2 x i32]* %48, metadata !1590, metadata !DIExpression()), !dbg !1592
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !1645
  %50 = load i32, i32* %49, align 8, !dbg !1645, !tbaa !1647
  %51 = icmp sgt i32 %50, 0, !dbg !1648
  br i1 %51, label %52, label %63, !dbg !1649

52:                                               ; preds = %47
  %53 = zext i32 %50 to i64, !dbg !1650
  %54 = mul nuw nsw i64 %53, 24, !dbg !1653
  %55 = tail call noalias i8* @malloc(i64 %54) #10, !dbg !1654
  %56 = bitcast i8* %55 to %struct.chiral_t*, !dbg !1655
  call void @llvm.dbg.value(metadata %struct.chiral_t* %56, metadata !1591, metadata !DIExpression()), !dbg !1592
  %57 = icmp eq i8* %55, null, !dbg !1656
  br i1 %57, label %58, label %63, !dbg !1657

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1658
  %60 = load i8*, i8** %59, align 8, !dbg !1658, !tbaa !1285
  %61 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %60) #10, !dbg !1660
  %62 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1661
  br label %489, !dbg !1662

63:                                               ; preds = %47, %52
  %64 = phi %struct.chiral_t* [ %56, %52 ], [ null, %47 ], !dbg !1663
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !1591, metadata !DIExpression()), !dbg !1592
  %65 = bitcast i8* %2 to %struct.residue_t**, !dbg !1664
  store %struct.residue_t* null, %struct.residue_t** %65, align 8, !dbg !1665, !tbaa !1666
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1667
  %67 = load i8*, i8** %66, align 8, !dbg !1667, !tbaa !1285
  %68 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %67) #11, !dbg !1668
  %69 = add i64 %68, 1, !dbg !1669
  %70 = tail call noalias i8* @malloc(i64 %69) #10, !dbg !1670
  call void @llvm.dbg.value(metadata i8* %70, metadata !1589, metadata !DIExpression()), !dbg !1592
  %71 = icmp eq i8* %70, null, !dbg !1671
  br i1 %71, label %72, label %75, !dbg !1673

72:                                               ; preds = %63
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1674, !tbaa !379
  %74 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %73) #12, !dbg !1676
  tail call void @exit(i32 1) #13, !dbg !1677
  unreachable, !dbg !1677

75:                                               ; preds = %63
  %76 = tail call i8* @strcpy(i8* nonnull %70, i8* nonnull dereferenceable(1) %67) #10, !dbg !1678
  %77 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1679
  %78 = bitcast i8* %77 to i8**, !dbg !1679
  store i8* %70, i8** %78, align 8, !dbg !1680, !tbaa !1285
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !1681
  %80 = load i8*, i8** %79, align 8, !dbg !1681, !tbaa !1682
  %81 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %80) #11, !dbg !1683
  %82 = add i64 %81, 1, !dbg !1684
  %83 = tail call noalias i8* @malloc(i64 %82) #10, !dbg !1685
  call void @llvm.dbg.value(metadata i8* %83, metadata !1589, metadata !DIExpression()), !dbg !1592
  %84 = icmp eq i8* %83, null, !dbg !1686
  br i1 %84, label %85, label %88, !dbg !1688

85:                                               ; preds = %75
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1689, !tbaa !379
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %86) #12, !dbg !1691
  tail call void @exit(i32 1) #13, !dbg !1692
  unreachable, !dbg !1692

88:                                               ; preds = %75
  %89 = tail call i8* @strcpy(i8* nonnull %83, i8* nonnull dereferenceable(1) %80) #10, !dbg !1693
  %90 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1694
  %91 = bitcast i8* %90 to i8**, !dbg !1694
  store i8* %83, i8** %91, align 8, !dbg !1695, !tbaa !1682
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !1696
  %93 = load i32, i32* %92, align 8, !dbg !1696, !tbaa !1697
  %94 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1698
  %95 = bitcast i8* %94 to i32*, !dbg !1698
  store i32 %93, i32* %95, align 8, !dbg !1699, !tbaa !1697
  %96 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1700
  %97 = bitcast i8* %96 to i32*, !dbg !1700
  store i32 0, i32* %97, align 4, !dbg !1701, !tbaa !1702
  %98 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1703
  %99 = bitcast i8* %98 to i32*, !dbg !1703
  store i32 0, i32* %99, align 8, !dbg !1704, !tbaa !1705
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !1706
  %101 = load i32, i32* %100, align 8, !dbg !1706, !tbaa !1707
  %102 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1708
  %103 = bitcast i8* %102 to i32*, !dbg !1708
  store i32 %101, i32* %103, align 8, !dbg !1709, !tbaa !1707
  %104 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !1710
  %105 = bitcast i8* %104 to %struct.strand_t**, !dbg !1710
  store %struct.strand_t* null, %struct.strand_t** %105, align 8, !dbg !1711, !tbaa !1712
  %106 = tail call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* nonnull %0) #10, !dbg !1713
  %107 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !1714
  %108 = bitcast i8* %107 to %struct.extbond_t**, !dbg !1714
  store %struct.extbond_t* %106, %struct.extbond_t** %108, align 8, !dbg !1715, !tbaa !1716
  %109 = load i32, i32* %33, align 8, !dbg !1717, !tbaa !1628
  %110 = getelementptr inbounds i8, i8* %2, i64 72, !dbg !1718
  %111 = bitcast i8* %110 to i32*, !dbg !1718
  store i32 %109, i32* %111, align 8, !dbg !1719, !tbaa !1628
  %112 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !1720
  %113 = bitcast i8* %112 to [2 x i32]**, !dbg !1720
  store [2 x i32]* %48, [2 x i32]** %113, align 8, !dbg !1721, !tbaa !1722
  call void @llvm.dbg.value(metadata i32 0, metadata !1582, metadata !DIExpression()), !dbg !1592
  %114 = icmp sgt i32 %109, 0, !dbg !1723
  br i1 %114, label %115, label %152, !dbg !1726

115:                                              ; preds = %88
  %116 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !1727
  %117 = load [2 x i32]*, [2 x i32]** %116, align 8, !dbg !1727, !tbaa !1722
  %118 = zext i32 %109 to i64, !dbg !1726
  %119 = and i64 %118, 1, !dbg !1726
  %120 = icmp eq i32 %109, 1, !dbg !1726
  br i1 %120, label %142, label %121, !dbg !1726

121:                                              ; preds = %115
  %122 = sub nsw i64 %118, %119, !dbg !1726
  br label %123, !dbg !1726

123:                                              ; preds = %123, %121
  %124 = phi i64 [ 0, %121 ], [ %139, %123 ]
  %125 = phi i64 [ %122, %121 ], [ %140, %123 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1582, metadata !DIExpression()), !dbg !1592
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %124, i64 0, !dbg !1729
  %127 = load i32, i32* %126, align 4, !dbg !1729, !tbaa !943
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %124, i64 0, !dbg !1730
  store i32 %127, i32* %128, align 4, !dbg !1731, !tbaa !943
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %124, i64 1, !dbg !1732
  %130 = load i32, i32* %129, align 4, !dbg !1732, !tbaa !943
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %124, i64 1, !dbg !1733
  store i32 %130, i32* %131, align 4, !dbg !1734, !tbaa !943
  %132 = or i64 %124, 1, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %132, metadata !1582, metadata !DIExpression()), !dbg !1592
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %132, i64 0, !dbg !1729
  %134 = load i32, i32* %133, align 4, !dbg !1729, !tbaa !943
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %132, i64 0, !dbg !1730
  store i32 %134, i32* %135, align 4, !dbg !1731, !tbaa !943
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %132, i64 1, !dbg !1732
  %137 = load i32, i32* %136, align 4, !dbg !1732, !tbaa !943
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %132, i64 1, !dbg !1733
  store i32 %137, i32* %138, align 4, !dbg !1734, !tbaa !943
  %139 = add nuw nsw i64 %124, 2, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %139, metadata !1582, metadata !DIExpression()), !dbg !1592
  %140 = add i64 %125, -2, !dbg !1726
  %141 = icmp eq i64 %140, 0, !dbg !1726
  br i1 %141, label %142, label %123, !dbg !1726, !llvm.loop !1736

142:                                              ; preds = %123, %115
  %143 = phi i64 [ 0, %115 ], [ %139, %123 ]
  %144 = icmp eq i64 %119, 0, !dbg !1726
  br i1 %144, label %152, label %145, !dbg !1726

145:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i64 %143, metadata !1582, metadata !DIExpression()), !dbg !1592
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %143, i64 0, !dbg !1729
  %147 = load i32, i32* %146, align 4, !dbg !1729, !tbaa !943
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %143, i64 0, !dbg !1730
  store i32 %147, i32* %148, align 4, !dbg !1731, !tbaa !943
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %143, i64 1, !dbg !1732
  %150 = load i32, i32* %149, align 4, !dbg !1732, !tbaa !943
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %143, i64 1, !dbg !1733
  store i32 %150, i32* %151, align 4, !dbg !1734, !tbaa !943
  call void @llvm.dbg.value(metadata i64 %143, metadata !1582, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1592
  br label %152, !dbg !1738

152:                                              ; preds = %145, %142, %88
  %153 = load i32, i32* %49, align 8, !dbg !1738, !tbaa !1647
  %154 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !1739
  %155 = bitcast i8* %154 to i32*, !dbg !1739
  store i32 %153, i32* %155, align 8, !dbg !1740, !tbaa !1647
  %156 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !1741
  %157 = bitcast i8* %156 to %struct.chiral_t**, !dbg !1741
  store %struct.chiral_t* %64, %struct.chiral_t** %157, align 8, !dbg !1742, !tbaa !1743
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !1591, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 0, metadata !1583, metadata !DIExpression()), !dbg !1592
  %158 = icmp sgt i32 %153, 0, !dbg !1744
  br i1 %158, label %159, label %187, !dbg !1747

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !1748
  %161 = load %struct.chiral_t*, %struct.chiral_t** %160, align 8, !dbg !1748, !tbaa !1743
  br label %162, !dbg !1747

162:                                              ; preds = %159, %162
  %163 = phi i64 [ 0, %159 ], [ %182, %162 ]
  %164 = phi %struct.chiral_t* [ %64, %159 ], [ %183, %162 ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %164, metadata !1591, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %163, metadata !1583, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1581, metadata !DIExpression()), !dbg !1592
  %165 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 0, i64 0, !dbg !1750
  %166 = load i32, i32* %165, align 4, !dbg !1750, !tbaa !943
  %167 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 0, i64 0, !dbg !1753
  store i32 %166, i32* %167, align 4, !dbg !1754, !tbaa !943
  call void @llvm.dbg.value(metadata i64 1, metadata !1581, metadata !DIExpression()), !dbg !1592
  %168 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 0, i64 1, !dbg !1750
  %169 = load i32, i32* %168, align 4, !dbg !1750, !tbaa !943
  %170 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 0, i64 1, !dbg !1753
  store i32 %169, i32* %170, align 4, !dbg !1754, !tbaa !943
  call void @llvm.dbg.value(metadata i64 2, metadata !1581, metadata !DIExpression()), !dbg !1592
  %171 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 0, i64 2, !dbg !1750
  %172 = load i32, i32* %171, align 4, !dbg !1750, !tbaa !943
  %173 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 0, i64 2, !dbg !1753
  store i32 %172, i32* %173, align 4, !dbg !1754, !tbaa !943
  call void @llvm.dbg.value(metadata i64 3, metadata !1581, metadata !DIExpression()), !dbg !1592
  %174 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 0, i64 3, !dbg !1750
  %175 = load i32, i32* %174, align 4, !dbg !1750, !tbaa !943
  %176 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 0, i64 3, !dbg !1753
  store i32 %175, i32* %176, align 4, !dbg !1754, !tbaa !943
  call void @llvm.dbg.value(metadata i64 4, metadata !1581, metadata !DIExpression()), !dbg !1592
  %177 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 1, !dbg !1755
  %178 = bitcast double* %177 to i64*, !dbg !1755
  %179 = load i64, i64* %178, align 8, !dbg !1755, !tbaa !1399
  %180 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 1, !dbg !1756
  %181 = bitcast double* %180 to i64*, !dbg !1757
  store i64 %179, i64* %181, align 8, !dbg !1757, !tbaa !1399
  %182 = add nuw nsw i64 %163, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %182, metadata !1583, metadata !DIExpression()), !dbg !1592
  %183 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 1, !dbg !1759
  call void @llvm.dbg.value(metadata %struct.chiral_t* %183, metadata !1591, metadata !DIExpression()), !dbg !1592
  %184 = load i32, i32* %49, align 8, !dbg !1760, !tbaa !1647
  %185 = sext i32 %184 to i64, !dbg !1744
  %186 = icmp slt i64 %182, %185, !dbg !1744
  br i1 %186, label %162, label %187, !dbg !1747, !llvm.loop !1761

187:                                              ; preds = %162, %152
  %188 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !1763
  %189 = load i32, i32* %188, align 4, !dbg !1763, !tbaa !1764
  %190 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !1765
  %191 = bitcast i8* %190 to i32*, !dbg !1765
  store i32 %189, i32* %191, align 4, !dbg !1766, !tbaa !1764
  %192 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !1767
  %193 = load i32, i32* %192, align 8, !dbg !1767, !tbaa !1768
  %194 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !1769
  %195 = bitcast i8* %194 to i32*, !dbg !1769
  store i32 %193, i32* %195, align 8, !dbg !1770, !tbaa !1768
  %196 = load i32, i32* %11, align 8, !dbg !1771, !tbaa !1315
  %197 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !1772
  %198 = bitcast i8* %197 to i32*, !dbg !1772
  store i32 %196, i32* %198, align 8, !dbg !1773, !tbaa !1315
  %199 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !1774
  %200 = bitcast i8* %199 to i8**, !dbg !1775
  store i8* %25, i8** %200, align 8, !dbg !1775, !tbaa !1776
  %201 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !1777
  %202 = load i32*, i32** %201, align 8, !dbg !1777, !tbaa !1776
  %203 = bitcast i32* %202 to i8*
  %204 = icmp eq i32* %202, null, !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1581, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 0, metadata !1581, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 0, metadata !1581, metadata !DIExpression()), !dbg !1592
  %205 = icmp sgt i32 %196, 0, !dbg !1780
  %206 = bitcast i8* %25 to i32*, !dbg !1781
  br i1 %204, label %300, label %207, !dbg !1781

207:                                              ; preds = %187
  br i1 %205, label %208, label %381, !dbg !1782

208:                                              ; preds = %207
  %209 = sext i32 %196 to i64, !dbg !1785
  %210 = icmp ult i32 %196, 8, !dbg !1782
  br i1 %210, label %211, label %213, !dbg !1782

211:                                              ; preds = %298, %213, %208
  %212 = phi i64 [ 0, %213 ], [ 0, %208 ], [ %222, %298 ]
  br label %368, !dbg !1782

213:                                              ; preds = %208
  %214 = shl nsw i64 %209, 2, !dbg !1782
  %215 = getelementptr i8, i8* %25, i64 %214, !dbg !1782
  %216 = getelementptr i32, i32* %202, i64 %209, !dbg !1782
  %217 = bitcast i32* %216 to i8*
  %218 = icmp ult i8* %25, %217, !dbg !1782
  %219 = icmp ugt i8* %215, %203, !dbg !1782
  %220 = and i1 %218, %219, !dbg !1782
  br i1 %220, label %211, label %221, !dbg !1782

221:                                              ; preds = %213
  %222 = and i64 %209, -8, !dbg !1782
  %223 = add nsw i64 %222, -8, !dbg !1782
  %224 = lshr exact i64 %223, 3, !dbg !1782
  %225 = add nuw nsw i64 %224, 1, !dbg !1782
  %226 = and i64 %225, 3, !dbg !1782
  %227 = icmp ult i64 %223, 24, !dbg !1782
  br i1 %227, label %279, label %228, !dbg !1782

228:                                              ; preds = %221
  %229 = sub nsw i64 %225, %226, !dbg !1782
  br label %230, !dbg !1782

230:                                              ; preds = %230, %228
  %231 = phi i64 [ 0, %228 ], [ %276, %230 ], !dbg !1787
  %232 = phi i64 [ %229, %228 ], [ %277, %230 ]
  %233 = getelementptr inbounds i32, i32* %202, i64 %231, !dbg !1788
  %234 = bitcast i32* %233 to <4 x i32>*, !dbg !1788
  %235 = load <4 x i32>, <4 x i32>* %234, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %236 = getelementptr inbounds i32, i32* %233, i64 4, !dbg !1788
  %237 = bitcast i32* %236 to <4 x i32>*, !dbg !1788
  %238 = load <4 x i32>, <4 x i32>* %237, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %239 = getelementptr inbounds i32, i32* %206, i64 %231, !dbg !1792
  %240 = bitcast i32* %239 to <4 x i32>*, !dbg !1793
  store <4 x i32> %235, <4 x i32>* %240, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %241 = getelementptr inbounds i32, i32* %239, i64 4, !dbg !1793
  %242 = bitcast i32* %241 to <4 x i32>*, !dbg !1793
  store <4 x i32> %238, <4 x i32>* %242, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %243 = or i64 %231, 8, !dbg !1787
  %244 = getelementptr inbounds i32, i32* %202, i64 %243, !dbg !1788
  %245 = bitcast i32* %244 to <4 x i32>*, !dbg !1788
  %246 = load <4 x i32>, <4 x i32>* %245, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %247 = getelementptr inbounds i32, i32* %244, i64 4, !dbg !1788
  %248 = bitcast i32* %247 to <4 x i32>*, !dbg !1788
  %249 = load <4 x i32>, <4 x i32>* %248, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %250 = getelementptr inbounds i32, i32* %206, i64 %243, !dbg !1792
  %251 = bitcast i32* %250 to <4 x i32>*, !dbg !1793
  store <4 x i32> %246, <4 x i32>* %251, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %252 = getelementptr inbounds i32, i32* %250, i64 4, !dbg !1793
  %253 = bitcast i32* %252 to <4 x i32>*, !dbg !1793
  store <4 x i32> %249, <4 x i32>* %253, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %254 = or i64 %231, 16, !dbg !1787
  %255 = getelementptr inbounds i32, i32* %202, i64 %254, !dbg !1788
  %256 = bitcast i32* %255 to <4 x i32>*, !dbg !1788
  %257 = load <4 x i32>, <4 x i32>* %256, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %258 = getelementptr inbounds i32, i32* %255, i64 4, !dbg !1788
  %259 = bitcast i32* %258 to <4 x i32>*, !dbg !1788
  %260 = load <4 x i32>, <4 x i32>* %259, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %261 = getelementptr inbounds i32, i32* %206, i64 %254, !dbg !1792
  %262 = bitcast i32* %261 to <4 x i32>*, !dbg !1793
  store <4 x i32> %257, <4 x i32>* %262, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %263 = getelementptr inbounds i32, i32* %261, i64 4, !dbg !1793
  %264 = bitcast i32* %263 to <4 x i32>*, !dbg !1793
  store <4 x i32> %260, <4 x i32>* %264, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %265 = or i64 %231, 24, !dbg !1787
  %266 = getelementptr inbounds i32, i32* %202, i64 %265, !dbg !1788
  %267 = bitcast i32* %266 to <4 x i32>*, !dbg !1788
  %268 = load <4 x i32>, <4 x i32>* %267, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %269 = getelementptr inbounds i32, i32* %266, i64 4, !dbg !1788
  %270 = bitcast i32* %269 to <4 x i32>*, !dbg !1788
  %271 = load <4 x i32>, <4 x i32>* %270, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %272 = getelementptr inbounds i32, i32* %206, i64 %265, !dbg !1792
  %273 = bitcast i32* %272 to <4 x i32>*, !dbg !1793
  store <4 x i32> %268, <4 x i32>* %273, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %274 = getelementptr inbounds i32, i32* %272, i64 4, !dbg !1793
  %275 = bitcast i32* %274 to <4 x i32>*, !dbg !1793
  store <4 x i32> %271, <4 x i32>* %275, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %276 = add i64 %231, 32, !dbg !1787
  %277 = add i64 %232, -4, !dbg !1787
  %278 = icmp eq i64 %277, 0, !dbg !1787
  br i1 %278, label %279, label %230, !dbg !1787, !llvm.loop !1796

279:                                              ; preds = %230, %221
  %280 = phi i64 [ 0, %221 ], [ %276, %230 ]
  %281 = icmp eq i64 %226, 0, !dbg !1787
  br i1 %281, label %298, label %282, !dbg !1787

282:                                              ; preds = %279, %282
  %283 = phi i64 [ %295, %282 ], [ %280, %279 ], !dbg !1787
  %284 = phi i64 [ %296, %282 ], [ %226, %279 ]
  %285 = getelementptr inbounds i32, i32* %202, i64 %283, !dbg !1788
  %286 = bitcast i32* %285 to <4 x i32>*, !dbg !1788
  %287 = load <4 x i32>, <4 x i32>* %286, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %288 = getelementptr inbounds i32, i32* %285, i64 4, !dbg !1788
  %289 = bitcast i32* %288 to <4 x i32>*, !dbg !1788
  %290 = load <4 x i32>, <4 x i32>* %289, align 4, !dbg !1788, !tbaa !943, !alias.scope !1789
  %291 = getelementptr inbounds i32, i32* %206, i64 %283, !dbg !1792
  %292 = bitcast i32* %291 to <4 x i32>*, !dbg !1793
  store <4 x i32> %287, <4 x i32>* %292, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %293 = getelementptr inbounds i32, i32* %291, i64 4, !dbg !1793
  %294 = bitcast i32* %293 to <4 x i32>*, !dbg !1793
  store <4 x i32> %290, <4 x i32>* %294, align 4, !dbg !1793, !tbaa !943, !alias.scope !1794, !noalias !1789
  %295 = add i64 %283, 8, !dbg !1787
  %296 = add i64 %284, -1, !dbg !1787
  %297 = icmp eq i64 %296, 0, !dbg !1787
  br i1 %297, label %298, label %282, !dbg !1787, !llvm.loop !1798

298:                                              ; preds = %282, %279
  %299 = icmp eq i64 %222, %209, !dbg !1782
  br i1 %299, label %384, label %211, !dbg !1782

300:                                              ; preds = %187
  br i1 %205, label %301, label %381, !dbg !1799

301:                                              ; preds = %300
  %302 = sext i32 %196 to i64, !dbg !1802
  %303 = icmp ult i32 %196, 8, !dbg !1799
  br i1 %303, label %304, label %306, !dbg !1799

304:                                              ; preds = %366, %301
  %305 = phi i64 [ 0, %301 ], [ %307, %366 ]
  br label %375, !dbg !1799

306:                                              ; preds = %301
  %307 = and i64 %302, -8, !dbg !1799
  %308 = add nsw i64 %307, -8, !dbg !1799
  %309 = lshr exact i64 %308, 3, !dbg !1799
  %310 = add nuw nsw i64 %309, 1, !dbg !1799
  %311 = and i64 %310, 3, !dbg !1799
  %312 = icmp ult i64 %308, 24, !dbg !1799
  br i1 %312, label %349, label %313, !dbg !1799

313:                                              ; preds = %306
  %314 = sub nsw i64 %310, %311, !dbg !1799
  br label %315, !dbg !1799

315:                                              ; preds = %315, %313
  %316 = phi i64 [ 0, %313 ], [ %345, %315 ], !dbg !1804
  %317 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %313 ], [ %346, %315 ], !dbg !1805
  %318 = phi i64 [ %314, %313 ], [ %347, %315 ]
  %319 = getelementptr inbounds i32, i32* %206, i64 %316, !dbg !1806
  %320 = add <4 x i32> %317, <i32 4, i32 4, i32 4, i32 4>, !dbg !1805
  %321 = bitcast i32* %319 to <4 x i32>*, !dbg !1805
  store <4 x i32> %317, <4 x i32>* %321, align 4, !dbg !1805, !tbaa !943
  %322 = getelementptr inbounds i32, i32* %319, i64 4, !dbg !1805
  %323 = bitcast i32* %322 to <4 x i32>*, !dbg !1805
  store <4 x i32> %320, <4 x i32>* %323, align 4, !dbg !1805, !tbaa !943
  %324 = or i64 %316, 8, !dbg !1804
  %325 = add <4 x i32> %317, <i32 8, i32 8, i32 8, i32 8>, !dbg !1805
  %326 = getelementptr inbounds i32, i32* %206, i64 %324, !dbg !1806
  %327 = add <4 x i32> %317, <i32 12, i32 12, i32 12, i32 12>, !dbg !1805
  %328 = bitcast i32* %326 to <4 x i32>*, !dbg !1805
  store <4 x i32> %325, <4 x i32>* %328, align 4, !dbg !1805, !tbaa !943
  %329 = getelementptr inbounds i32, i32* %326, i64 4, !dbg !1805
  %330 = bitcast i32* %329 to <4 x i32>*, !dbg !1805
  store <4 x i32> %327, <4 x i32>* %330, align 4, !dbg !1805, !tbaa !943
  %331 = or i64 %316, 16, !dbg !1804
  %332 = add <4 x i32> %317, <i32 16, i32 16, i32 16, i32 16>, !dbg !1805
  %333 = getelementptr inbounds i32, i32* %206, i64 %331, !dbg !1806
  %334 = add <4 x i32> %317, <i32 20, i32 20, i32 20, i32 20>, !dbg !1805
  %335 = bitcast i32* %333 to <4 x i32>*, !dbg !1805
  store <4 x i32> %332, <4 x i32>* %335, align 4, !dbg !1805, !tbaa !943
  %336 = getelementptr inbounds i32, i32* %333, i64 4, !dbg !1805
  %337 = bitcast i32* %336 to <4 x i32>*, !dbg !1805
  store <4 x i32> %334, <4 x i32>* %337, align 4, !dbg !1805, !tbaa !943
  %338 = or i64 %316, 24, !dbg !1804
  %339 = add <4 x i32> %317, <i32 24, i32 24, i32 24, i32 24>, !dbg !1805
  %340 = getelementptr inbounds i32, i32* %206, i64 %338, !dbg !1806
  %341 = add <4 x i32> %317, <i32 28, i32 28, i32 28, i32 28>, !dbg !1805
  %342 = bitcast i32* %340 to <4 x i32>*, !dbg !1805
  store <4 x i32> %339, <4 x i32>* %342, align 4, !dbg !1805, !tbaa !943
  %343 = getelementptr inbounds i32, i32* %340, i64 4, !dbg !1805
  %344 = bitcast i32* %343 to <4 x i32>*, !dbg !1805
  store <4 x i32> %341, <4 x i32>* %344, align 4, !dbg !1805, !tbaa !943
  %345 = add i64 %316, 32, !dbg !1804
  %346 = add <4 x i32> %317, <i32 32, i32 32, i32 32, i32 32>, !dbg !1805
  %347 = add i64 %318, -4, !dbg !1804
  %348 = icmp eq i64 %347, 0, !dbg !1804
  br i1 %348, label %349, label %315, !dbg !1804, !llvm.loop !1807

349:                                              ; preds = %315, %306
  %350 = phi i64 [ 0, %306 ], [ %345, %315 ]
  %351 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %306 ], [ %346, %315 ]
  %352 = icmp eq i64 %311, 0, !dbg !1804
  br i1 %352, label %366, label %353, !dbg !1804

353:                                              ; preds = %349, %353
  %354 = phi i64 [ %362, %353 ], [ %350, %349 ], !dbg !1804
  %355 = phi <4 x i32> [ %363, %353 ], [ %351, %349 ], !dbg !1805
  %356 = phi i64 [ %364, %353 ], [ %311, %349 ]
  %357 = getelementptr inbounds i32, i32* %206, i64 %354, !dbg !1806
  %358 = add <4 x i32> %355, <i32 4, i32 4, i32 4, i32 4>, !dbg !1805
  %359 = bitcast i32* %357 to <4 x i32>*, !dbg !1805
  store <4 x i32> %355, <4 x i32>* %359, align 4, !dbg !1805, !tbaa !943
  %360 = getelementptr inbounds i32, i32* %357, i64 4, !dbg !1805
  %361 = bitcast i32* %360 to <4 x i32>*, !dbg !1805
  store <4 x i32> %358, <4 x i32>* %361, align 4, !dbg !1805, !tbaa !943
  %362 = add i64 %354, 8, !dbg !1804
  %363 = add <4 x i32> %355, <i32 8, i32 8, i32 8, i32 8>, !dbg !1805
  %364 = add i64 %356, -1, !dbg !1804
  %365 = icmp eq i64 %364, 0, !dbg !1804
  br i1 %365, label %366, label %353, !dbg !1804, !llvm.loop !1809

366:                                              ; preds = %353, %349
  %367 = icmp eq i64 %307, %302, !dbg !1799
  br i1 %367, label %384, label %304, !dbg !1799

368:                                              ; preds = %211, %368
  %369 = phi i64 [ %373, %368 ], [ %212, %211 ]
  call void @llvm.dbg.value(metadata i64 %369, metadata !1581, metadata !DIExpression()), !dbg !1592
  %370 = getelementptr inbounds i32, i32* %202, i64 %369, !dbg !1788
  %371 = load i32, i32* %370, align 4, !dbg !1788, !tbaa !943
  %372 = getelementptr inbounds i32, i32* %206, i64 %369, !dbg !1792
  store i32 %371, i32* %372, align 4, !dbg !1793, !tbaa !943
  %373 = add nuw nsw i64 %369, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %373, metadata !1581, metadata !DIExpression()), !dbg !1592
  %374 = icmp slt i64 %373, %209, !dbg !1810
  br i1 %374, label %368, label %384, !dbg !1782, !llvm.loop !1811

375:                                              ; preds = %304, %375
  %376 = phi i64 [ %379, %375 ], [ %305, %304 ]
  call void @llvm.dbg.value(metadata i64 %376, metadata !1581, metadata !DIExpression()), !dbg !1592
  %377 = getelementptr inbounds i32, i32* %206, i64 %376, !dbg !1806
  %378 = trunc i64 %376 to i32, !dbg !1805
  store i32 %378, i32* %377, align 4, !dbg !1805, !tbaa !943
  %379 = add nuw nsw i64 %376, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %379, metadata !1581, metadata !DIExpression()), !dbg !1592
  %380 = icmp slt i64 %379, %302, !dbg !1812
  br i1 %380, label %375, label %384, !dbg !1799, !llvm.loop !1813

381:                                              ; preds = %207, %300
  %382 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1814
  %383 = bitcast i8* %382 to i8**, !dbg !1815
  store i8* %15, i8** %383, align 8, !dbg !1815, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 0, metadata !1581, metadata !DIExpression()), !dbg !1592
  br label %489, !dbg !1816

384:                                              ; preds = %368, %375, %298, %366
  %385 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1814
  %386 = bitcast i8* %385 to i8**, !dbg !1815
  store i8* %15, i8** %386, align 8, !dbg !1815, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 0, metadata !1581, metadata !DIExpression()), !dbg !1592
  br i1 %205, label %387, label %489, !dbg !1816

387:                                              ; preds = %384
  %388 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1818
  br label %389, !dbg !1816

389:                                              ; preds = %387, %401
  %390 = phi i64 [ 0, %387 ], [ %485, %401 ]
  call void @llvm.dbg.value(metadata i64 %390, metadata !1581, metadata !DIExpression()), !dbg !1592
  %391 = load %struct.atom_t*, %struct.atom_t** %388, align 8, !dbg !1821, !tbaa !1322
  %392 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %391, i64 %390, i32 0, !dbg !1822
  %393 = load i8*, i8** %392, align 8, !dbg !1822, !tbaa !918
  %394 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %393) #11, !dbg !1823
  %395 = add i64 %394, 1, !dbg !1824
  %396 = tail call noalias i8* @malloc(i64 %395) #10, !dbg !1825
  call void @llvm.dbg.value(metadata i8* %396, metadata !1588, metadata !DIExpression()), !dbg !1592
  %397 = icmp eq i8* %396, null, !dbg !1826
  br i1 %397, label %398, label %401, !dbg !1828

398:                                              ; preds = %389
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1829, !tbaa !379
  %400 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %399) #12, !dbg !1831
  tail call void @exit(i32 1) #13, !dbg !1832
  unreachable, !dbg !1832

401:                                              ; preds = %389
  %402 = load i8*, i8** %392, align 8, !dbg !1833, !tbaa !918
  %403 = tail call i8* @strcpy(i8* nonnull %396, i8* nonnull dereferenceable(1) %402) #10, !dbg !1834
  %404 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 0, !dbg !1835
  store i8* %396, i8** %404, align 8, !dbg !1836, !tbaa !918
  %405 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 1, !dbg !1837
  store i8* null, i8** %405, align 8, !dbg !1838, !tbaa !1839
  %406 = load %struct.atom_t*, %struct.atom_t** %388, align 8, !dbg !1840, !tbaa !1322
  %407 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 2, !dbg !1841
  %408 = load i32, i32* %407, align 8, !dbg !1841, !tbaa !1842
  %409 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 2, !dbg !1843
  store i32 %408, i32* %409, align 8, !dbg !1844, !tbaa !1842
  %410 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 3, !dbg !1845
  %411 = load i32, i32* %410, align 4, !dbg !1845, !tbaa !1846
  %412 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 3, !dbg !1847
  store i32 %411, i32* %412, align 4, !dbg !1848, !tbaa !1846
  call void @llvm.dbg.value(metadata i64 0, metadata !1584, metadata !DIExpression()), !dbg !1592
  %413 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 0, !dbg !1849
  %414 = load i32, i32* %413, align 4, !dbg !1849, !tbaa !943
  %415 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 0, !dbg !1852
  store i32 %414, i32* %415, align 4, !dbg !1853, !tbaa !943
  call void @llvm.dbg.value(metadata i64 1, metadata !1584, metadata !DIExpression()), !dbg !1592
  %416 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 1, !dbg !1849
  %417 = load i32, i32* %416, align 4, !dbg !1849, !tbaa !943
  %418 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 1, !dbg !1852
  store i32 %417, i32* %418, align 4, !dbg !1853, !tbaa !943
  call void @llvm.dbg.value(metadata i64 2, metadata !1584, metadata !DIExpression()), !dbg !1592
  %419 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 2, !dbg !1849
  %420 = load i32, i32* %419, align 4, !dbg !1849, !tbaa !943
  %421 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 2, !dbg !1852
  store i32 %420, i32* %421, align 4, !dbg !1853, !tbaa !943
  call void @llvm.dbg.value(metadata i64 3, metadata !1584, metadata !DIExpression()), !dbg !1592
  %422 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 3, !dbg !1849
  %423 = load i32, i32* %422, align 4, !dbg !1849, !tbaa !943
  %424 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 3, !dbg !1852
  store i32 %423, i32* %424, align 4, !dbg !1853, !tbaa !943
  call void @llvm.dbg.value(metadata i64 4, metadata !1584, metadata !DIExpression()), !dbg !1592
  %425 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 4, !dbg !1849
  %426 = load i32, i32* %425, align 4, !dbg !1849, !tbaa !943
  %427 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 4, !dbg !1852
  store i32 %426, i32* %427, align 4, !dbg !1853, !tbaa !943
  call void @llvm.dbg.value(metadata i64 5, metadata !1584, metadata !DIExpression()), !dbg !1592
  %428 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 5, !dbg !1849
  %429 = load i32, i32* %428, align 4, !dbg !1849, !tbaa !943
  %430 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 5, !dbg !1852
  store i32 %429, i32* %430, align 4, !dbg !1853, !tbaa !943
  call void @llvm.dbg.value(metadata i64 6, metadata !1584, metadata !DIExpression()), !dbg !1592
  %431 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 6, !dbg !1849
  %432 = load i32, i32* %431, align 4, !dbg !1849, !tbaa !943
  %433 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 6, !dbg !1852
  store i32 %432, i32* %433, align 4, !dbg !1853, !tbaa !943
  call void @llvm.dbg.value(metadata i64 7, metadata !1584, metadata !DIExpression()), !dbg !1592
  %434 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 7, !dbg !1849
  %435 = load i32, i32* %434, align 4, !dbg !1849, !tbaa !943
  %436 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 7, !dbg !1852
  store i32 %435, i32* %436, align 4, !dbg !1853, !tbaa !943
  call void @llvm.dbg.value(metadata i64 8, metadata !1584, metadata !DIExpression()), !dbg !1592
  %437 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 5, !dbg !1854
  %438 = bitcast %struct.residue_t** %437 to i8**, !dbg !1855
  store i8* %2, i8** %438, align 8, !dbg !1855, !tbaa !1856
  %439 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 6, !dbg !1857
  %440 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 6, !dbg !1858
  %441 = bitcast double* %439 to <2 x i64>*, !dbg !1857
  %442 = load <2 x i64>, <2 x i64>* %441, align 8, !dbg !1857, !tbaa !973
  %443 = bitcast double* %440 to <2 x i64>*, !dbg !1859
  store <2 x i64> %442, <2 x i64>* %443, align 8, !dbg !1859, !tbaa !973
  %444 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 8, !dbg !1860
  %445 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 8, !dbg !1861
  %446 = bitcast double* %444 to <2 x i64>*, !dbg !1860
  %447 = load <2 x i64>, <2 x i64>* %446, align 8, !dbg !1860, !tbaa !973
  %448 = bitcast double* %445 to <2 x i64>*, !dbg !1862
  store <2 x i64> %447, <2 x i64>* %448, align 8, !dbg !1862, !tbaa !973
  %449 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 10, !dbg !1863
  store i8* null, i8** %449, align 8, !dbg !1864, !tbaa !1865
  %450 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 11, !dbg !1866
  %451 = load i32, i32* %450, align 8, !dbg !1866, !tbaa !1867
  %452 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 11, !dbg !1868
  store i32 %451, i32* %452, align 8, !dbg !1869, !tbaa !1867
  %453 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 12, !dbg !1870
  %454 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 12, !dbg !1871
  %455 = bitcast double* %453 to <2 x i64>*, !dbg !1870
  %456 = load <2 x i64>, <2 x i64>* %455, align 8, !dbg !1870, !tbaa !973
  %457 = bitcast double* %454 to <2 x i64>*, !dbg !1872
  store <2 x i64> %456, <2 x i64>* %457, align 8, !dbg !1872, !tbaa !973
  %458 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 14, !dbg !1873
  %459 = load i32, i32* %458, align 8, !dbg !1873, !tbaa !1874
  %460 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 14, !dbg !1875
  store i32 %459, i32* %460, align 8, !dbg !1876, !tbaa !1874
  %461 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 15, !dbg !1877
  %462 = load i32, i32* %461, align 4, !dbg !1877, !tbaa !1878
  %463 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 15, !dbg !1879
  store i32 %462, i32* %463, align 4, !dbg !1880, !tbaa !1878
  %464 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 16, !dbg !1881
  store i8* null, i8** %464, align 8, !dbg !1882, !tbaa !1883
  %465 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 17, i64 0, !dbg !1884
  %466 = bitcast double* %465 to i64*, !dbg !1884
  %467 = load i64, i64* %466, align 8, !dbg !1884, !tbaa !973
  %468 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 17, !dbg !1885
  %469 = bitcast [3 x double]* %468 to i64*, !dbg !1886
  store i64 %467, i64* %469, align 8, !dbg !1886, !tbaa !973
  %470 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 17, i64 1, !dbg !1887
  %471 = bitcast double* %470 to i64*, !dbg !1887
  %472 = load i64, i64* %471, align 8, !dbg !1887, !tbaa !973
  %473 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 17, i64 1, !dbg !1888
  %474 = bitcast double* %473 to i64*, !dbg !1889
  store i64 %472, i64* %474, align 8, !dbg !1889, !tbaa !973
  %475 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 17, i64 2, !dbg !1890
  %476 = bitcast double* %475 to i64*, !dbg !1890
  %477 = load i64, i64* %476, align 8, !dbg !1890, !tbaa !973
  %478 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 17, i64 2, !dbg !1891
  %479 = bitcast double* %478 to i64*, !dbg !1892
  store i64 %477, i64* %479, align 8, !dbg !1892, !tbaa !973
  %480 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 18, !dbg !1893
  %481 = bitcast double* %480 to i64*, !dbg !1893
  %482 = load i64, i64* %481, align 8, !dbg !1893, !tbaa !1894
  %483 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 18, !dbg !1895
  %484 = bitcast double* %483 to i64*, !dbg !1896
  store i64 %482, i64* %484, align 8, !dbg !1896, !tbaa !1894
  %485 = add nuw nsw i64 %390, 1, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %485, metadata !1581, metadata !DIExpression()), !dbg !1592
  %486 = load i32, i32* %11, align 8, !dbg !1898, !tbaa !1315
  %487 = sext i32 %486 to i64, !dbg !1899
  %488 = icmp slt i64 %485, %487, !dbg !1899
  br i1 %488, label %389, label %489, !dbg !1816, !llvm.loop !1900

489:                                              ; preds = %401, %381, %384, %58, %42, %27, %18, %5
  %490 = phi %struct.residue_t* [ null, %5 ], [ null, %18 ], [ null, %27 ], [ null, %42 ], [ null, %58 ], [ %3, %384 ], [ %3, %381 ], [ %3, %401 ], !dbg !1592
  ret %struct.residue_t* %490, !dbg !1902
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #7

declare dso_local %struct.extbond_t* @copyextbonds(...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* nocapture readonly %0) local_unnamed_addr #0 !dbg !1903 {
  call void @llvm.dbg.value(metadata %struct.strand_t* %0, metadata !1907, metadata !DIExpression()), !dbg !1911
  %2 = tail call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #10, !dbg !1912
  %3 = bitcast i8* %2 to %struct.strand_t*, !dbg !1914
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !1908, metadata !DIExpression()), !dbg !1911
  %4 = icmp eq i8* %2, null, !dbg !1915
  br i1 %4, label %5, label %10, !dbg !1916

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1917
  %7 = load i8*, i8** %6, align 8, !dbg !1917, !tbaa !1919
  %8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %7) #10, !dbg !1921
  %9 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1922
  br label %85, !dbg !1923

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1924
  %12 = load i32, i32* %11, align 8, !dbg !1924, !tbaa !1926
  %13 = sext i32 %12 to i64, !dbg !1927
  %14 = shl nsw i64 %13, 3, !dbg !1928
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !1929
  %16 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1930
  %17 = bitcast i8* %16 to %struct.residue_t***, !dbg !1930
  %18 = bitcast i8* %16 to i8**, !dbg !1931
  store i8* %15, i8** %18, align 8, !dbg !1931, !tbaa !1932
  %19 = icmp eq i8* %15, null, !dbg !1933
  br i1 %19, label %20, label %22, !dbg !1934

20:                                               ; preds = %10
  %21 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !1935
  br label %85, !dbg !1937

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1938
  %24 = load i8*, i8** %23, align 8, !dbg !1938, !tbaa !1919
  %25 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %24) #11, !dbg !1940
  %26 = add i64 %25, 1, !dbg !1941
  %27 = tail call noalias i8* @malloc(i64 %26) #10, !dbg !1942
  call void @llvm.dbg.value(metadata i8* %27, metadata !1909, metadata !DIExpression()), !dbg !1911
  %28 = icmp eq i8* %27, null, !dbg !1943
  br i1 %28, label %29, label %32, !dbg !1944

29:                                               ; preds = %22
  %30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %24) #10, !dbg !1945
  %31 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1947
  br label %85, !dbg !1948

32:                                               ; preds = %22
  %33 = bitcast i8* %2 to i8**, !dbg !1949
  store i8* %27, i8** %33, align 8, !dbg !1950, !tbaa !1919
  %34 = tail call i8* @strcpy(i8* nonnull %27, i8* nonnull dereferenceable(1) %24) #10, !dbg !1951
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 1, !dbg !1952
  %36 = load i32, i32* %35, align 8, !dbg !1952, !tbaa !1953
  %37 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1954
  %38 = bitcast i8* %37 to i32*, !dbg !1954
  store i32 %36, i32* %38, align 8, !dbg !1955, !tbaa !1953
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 2, !dbg !1956
  %40 = load i32, i32* %39, align 4, !dbg !1956, !tbaa !1957
  %41 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1958
  %42 = bitcast i8* %41 to i32*, !dbg !1958
  store i32 %40, i32* %42, align 4, !dbg !1959, !tbaa !1957
  %43 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1960
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false), !dbg !1961
  %44 = load i32, i32* %11, align 8, !dbg !1962, !tbaa !1926
  %45 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1963
  %46 = bitcast i8* %45 to i32*, !dbg !1963
  store i32 %44, i32* %46, align 8, !dbg !1964, !tbaa !1926
  %47 = getelementptr inbounds i8, i8* %2, i64 36, !dbg !1965
  %48 = bitcast i8* %47 to i32*, !dbg !1965
  store i32 %44, i32* %48, align 4, !dbg !1966, !tbaa !1967
  call void @llvm.dbg.value(metadata i32 0, metadata !1910, metadata !DIExpression()), !dbg !1911
  %49 = icmp sgt i32 %44, 0, !dbg !1968
  br i1 %49, label %50, label %85, !dbg !1971

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 7, !dbg !1972
  call void @llvm.dbg.value(metadata i64 0, metadata !1910, metadata !DIExpression()), !dbg !1911
  %52 = load %struct.residue_t**, %struct.residue_t*** %51, align 8, !dbg !1974, !tbaa !1932
  %53 = load %struct.residue_t*, %struct.residue_t** %52, align 8, !dbg !1975, !tbaa !379
  %54 = tail call %struct.residue_t* @copyresidue(%struct.residue_t* %53), !dbg !1976
  %55 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1977, !tbaa !1932
  store %struct.residue_t* %54, %struct.residue_t** %55, align 8, !dbg !1978, !tbaa !379
  %56 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1979, !tbaa !1932
  %57 = load %struct.residue_t*, %struct.residue_t** %56, align 8, !dbg !1980, !tbaa !379
  %58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %57, i64 0, i32 9, !dbg !1981
  %59 = bitcast %struct.strand_t** %58 to i8**, !dbg !1982
  store i8* %2, i8** %59, align 8, !dbg !1982, !tbaa !1712
  call void @llvm.dbg.value(metadata i64 1, metadata !1910, metadata !DIExpression()), !dbg !1911
  %60 = load i32, i32* %11, align 8, !dbg !1983, !tbaa !1926
  %61 = icmp sgt i32 %60, 1, !dbg !1968
  br i1 %61, label %62, label %85, !dbg !1971

62:                                               ; preds = %50, %62
  %63 = phi i64 [ %81, %62 ], [ 1, %50 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !1910, metadata !DIExpression()), !dbg !1911
  %64 = load %struct.residue_t**, %struct.residue_t*** %51, align 8, !dbg !1974, !tbaa !1932
  %65 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %64, i64 %63, !dbg !1975
  %66 = load %struct.residue_t*, %struct.residue_t** %65, align 8, !dbg !1975, !tbaa !379
  %67 = tail call %struct.residue_t* @copyresidue(%struct.residue_t* %66), !dbg !1976
  %68 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1977, !tbaa !1932
  %69 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %68, i64 %63, !dbg !1984
  store %struct.residue_t* %67, %struct.residue_t** %69, align 8, !dbg !1978, !tbaa !379
  %70 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1979, !tbaa !1932
  %71 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %70, i64 %63, !dbg !1980
  %72 = load %struct.residue_t*, %struct.residue_t** %71, align 8, !dbg !1980, !tbaa !379
  %73 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i64 0, i32 9, !dbg !1981
  %74 = bitcast %struct.strand_t** %73 to i8**, !dbg !1982
  store i8* %2, i8** %74, align 8, !dbg !1982, !tbaa !1712
  %75 = bitcast %struct.residue_t** %71 to i64*, !dbg !1985
  %76 = load i64, i64* %75, align 8, !dbg !1985, !tbaa !379
  %77 = add nsw i64 %63, -1, !dbg !1987
  %78 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %70, i64 %77, !dbg !1988
  %79 = bitcast %struct.residue_t** %78 to i64**, !dbg !1988
  %80 = load i64*, i64** %79, align 8, !dbg !1988, !tbaa !379
  store i64 %76, i64* %80, align 8, !dbg !1989, !tbaa !1666
  %81 = add nuw nsw i64 %63, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %81, metadata !1910, metadata !DIExpression()), !dbg !1911
  %82 = load i32, i32* %11, align 8, !dbg !1983, !tbaa !1926
  %83 = sext i32 %82 to i64, !dbg !1968
  %84 = icmp slt i64 %81, %83, !dbg !1968
  br i1 %84, label %62, label %85, !dbg !1971, !llvm.loop !1991

85:                                               ; preds = %50, %62, %32, %29, %20, %5
  %86 = phi %struct.strand_t* [ null, %5 ], [ null, %20 ], [ null, %29 ], [ %3, %32 ], [ %3, %62 ], [ %3, %50 ], !dbg !1911
  ret %struct.strand_t* %86, !dbg !1994
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) local_unnamed_addr #0 !dbg !1995 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1999, metadata !DIExpression()), !dbg !2006
  tail call void @upd_molnumbers(%struct.molecule_t* %0) #10, !dbg !2007
  %2 = tail call noalias dereferenceable_or_null(136) i8* @malloc(i64 136) #10, !dbg !2008
  %3 = bitcast i8* %2 to %struct.molecule_t*, !dbg !2010
  call void @llvm.dbg.value(metadata %struct.molecule_t* %3, metadata !2005, metadata !DIExpression()), !dbg !2006
  %4 = icmp eq i8* %2, null, !dbg !2011
  br i1 %4, label %5, label %7, !dbg !2012

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(13) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 13, i1 false), !dbg !2013
  %6 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2015
  br label %69, !dbg !2016

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !2017
  %9 = load i32, i32* %8, align 8, !dbg !2017, !tbaa !2018
  %10 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !2020
  %11 = bitcast i8* %10 to i32*, !dbg !2020
  store i32 %9, i32* %11, align 8, !dbg !2021, !tbaa !2018
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !2022
  %13 = load i32, i32* %12, align 8, !dbg !2022, !tbaa !2023
  %14 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !2024
  %15 = bitcast i8* %14 to i32*, !dbg !2024
  store i32 %13, i32* %15, align 8, !dbg !2025, !tbaa !2023
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !2026
  %17 = load i32, i32* %16, align 4, !dbg !2026, !tbaa !2027
  %18 = getelementptr inbounds i8, i8* %2, i64 116, !dbg !2028
  %19 = bitcast i8* %18 to i32*, !dbg !2028
  store i32 %17, i32* %19, align 4, !dbg !2029, !tbaa !2027
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !2030
  %21 = load i32, i32* %20, align 8, !dbg !2030, !tbaa !2031
  %22 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !2032
  %23 = bitcast i8* %22 to i32*, !dbg !2032
  store i32 %21, i32* %23, align 8, !dbg !2033, !tbaa !2031
  %24 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !2034
  %25 = load %struct.parm*, %struct.parm** %24, align 8, !dbg !2034, !tbaa !2036
  %26 = icmp eq %struct.parm* %25, null, !dbg !2037
  br i1 %26, label %29, label %27, !dbg !2038

27:                                               ; preds = %7
  %28 = tail call %struct.parm* @copyparm(%struct.parm* nonnull %25) #10, !dbg !2039
  br label %29, !dbg !2041

29:                                               ; preds = %7, %27
  %30 = phi %struct.parm* [ %28, %27 ], [ null, %7 ]
  %31 = getelementptr inbounds i8, i8* %2, i64 128, !dbg !2042
  %32 = bitcast i8* %31 to %struct.parm**, !dbg !2042
  store %struct.parm* %30, %struct.parm** %32, align 8, !dbg !2042, !tbaa !2036
  call void @llvm.dbg.value(metadata i32 undef, metadata !2000, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i32 0, metadata !2001, metadata !DIExpression()), !dbg !2006
  %33 = bitcast %struct.molecule_t* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %2, i8* nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !dbg !2043
  %34 = getelementptr i8, i8* %2, i64 24, !dbg !2050
  %35 = getelementptr %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 1, i64 0, !dbg !2050
  %36 = bitcast double* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %34, i8* nonnull align 8 dereferenceable(24) %36, i64 24, i1 false), !dbg !2043
  %37 = getelementptr i8, i8* %2, i64 48, !dbg !2050
  %38 = getelementptr %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 2, i64 0, !dbg !2050
  %39 = bitcast double* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %37, i8* nonnull align 8 dereferenceable(24) %39, i64 24, i1 false), !dbg !2043
  %40 = getelementptr i8, i8* %2, i64 72, !dbg !2050
  %41 = getelementptr %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 3, i64 0, !dbg !2050
  %42 = bitcast double* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %40, i8* nonnull align 8 dereferenceable(24) %42, i64 24, i1 false), !dbg !2043
  call void @llvm.dbg.value(metadata i32 undef, metadata !2001, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i32 undef, metadata !2000, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2006
  %43 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !2051
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8, !dbg !2051, !tbaa !2052
  call void @llvm.dbg.value(metadata %struct.strand_t* %44, metadata !2002, metadata !DIExpression()), !dbg !2006
  %45 = icmp eq %struct.strand_t* %44, null, !dbg !2053
  br i1 %45, label %68, label %46, !dbg !2055

46:                                               ; preds = %29
  %47 = tail call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %44), !dbg !2056
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !2003, metadata !DIExpression()), !dbg !2006
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %47, i64 0, i32 3, !dbg !2058
  %49 = bitcast %struct.molecule_t** %48 to i8**, !dbg !2059
  store i8* %2, i8** %49, align 8, !dbg !2059, !tbaa !2060
  %50 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !2061
  %51 = bitcast i8* %50 to %struct.strand_t**, !dbg !2061
  store %struct.strand_t* %47, %struct.strand_t** %51, align 8, !dbg !2062, !tbaa !2052
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %44, i64 0, i32 4, !dbg !2063
  %53 = load %struct.strand_t*, %struct.strand_t** %52, align 8, !dbg !2063, !tbaa !2064
  call void @llvm.dbg.value(metadata %struct.strand_t* %53, metadata !2002, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !2003, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.strand_t* %53, metadata !2002, metadata !DIExpression()), !dbg !2006
  %54 = icmp eq %struct.strand_t* %53, null, !dbg !2065
  br i1 %54, label %68, label %55, !dbg !2066

55:                                               ; preds = %46, %62
  %56 = phi %struct.strand_t* [ %58, %62 ], [ %47, %46 ]
  %57 = phi %struct.strand_t* [ %66, %62 ], [ %53, %46 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %56, metadata !2003, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !2002, metadata !DIExpression()), !dbg !2006
  %58 = tail call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %57), !dbg !2067
  call void @llvm.dbg.value(metadata %struct.strand_t* %58, metadata !2004, metadata !DIExpression()), !dbg !2006
  %59 = icmp eq %struct.strand_t* %56, null, !dbg !2069
  br i1 %59, label %62, label %60, !dbg !2071

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %56, i64 0, i32 4, !dbg !2072
  store %struct.strand_t* %58, %struct.strand_t** %61, align 8, !dbg !2073, !tbaa !2064
  br label %62, !dbg !2074

62:                                               ; preds = %55, %60
  %63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %58, i64 0, i32 3, !dbg !2075
  %64 = bitcast %struct.molecule_t** %63 to i8**, !dbg !2076
  store i8* %2, i8** %64, align 8, !dbg !2076, !tbaa !2060
  call void @llvm.dbg.value(metadata %struct.strand_t* %58, metadata !2003, metadata !DIExpression()), !dbg !2006
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %57, i64 0, i32 4, !dbg !2077
  %66 = load %struct.strand_t*, %struct.strand_t** %65, align 8, !dbg !2077, !tbaa !2064
  call void @llvm.dbg.value(metadata %struct.strand_t* %66, metadata !2002, metadata !DIExpression()), !dbg !2006
  %67 = icmp eq %struct.strand_t* %66, null, !dbg !2065
  br i1 %67, label %68, label %55, !dbg !2066, !llvm.loop !2078

68:                                               ; preds = %62, %29, %46
  tail call void @upd_molnumbers(%struct.molecule_t* nonnull %3) #10, !dbg !2080
  br label %69, !dbg !2081

69:                                               ; preds = %68, %5
  %70 = phi %struct.molecule_t* [ null, %5 ], [ %3, %68 ], !dbg !2006
  ret %struct.molecule_t* %70, !dbg !2082
}

declare !dbg !229 dso_local void @upd_molnumbers(%struct.molecule_t*) local_unnamed_addr #6

declare !dbg !234 dso_local %struct.parm* @copyparm(%struct.parm*) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !238 dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !308 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !311 dso_local void @NAB_initatom(%struct.atom_t*, i32) local_unnamed_addr #6

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) local_unnamed_addr #6

declare dso_local signext i8 @bDBGetValue(...) local_unnamed_addr #6

declare dso_local void @DBZeroPrefix(...) local_unnamed_addr #6

declare dso_local void @DBPushPrefix(...) local_unnamed_addr #6

declare dso_local signext i8 @bDBGetTable(...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @addres2reslib(%struct.reslib_t* nocapture %0) unnamed_addr #0 !dbg !2083 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2087, metadata !DIExpression()), !dbg !2094
  %2 = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #10, !dbg !2095
  call void @llvm.dbg.value(metadata i8* %2, metadata !2088, metadata !DIExpression()), !dbg !2094
  %3 = icmp eq i8* %2, null, !dbg !2097
  br i1 %3, label %4, label %9, !dbg !2098

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2099
  %6 = load i8*, i8** %5, align 8, !dbg !2099, !tbaa !388
  %7 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %6) #10, !dbg !2101
  %8 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2102
  br label %142, !dbg !2103

9:                                                ; preds = %1
  %10 = load i32, i32* @n_atoms, align 4, !dbg !2104, !tbaa !943
  %11 = sext i32 %10 to i64, !dbg !2104
  %12 = mul nsw i64 %11, 176, !dbg !2106
  %13 = tail call noalias i8* @malloc(i64 %12) #10, !dbg !2107
  call void @llvm.dbg.value(metadata i8* %13, metadata !2089, metadata !DIExpression()), !dbg !2094
  %14 = icmp eq i8* %13, null, !dbg !2108
  br i1 %14, label %15, label %20, !dbg !2109

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2110
  %17 = load i8*, i8** %16, align 8, !dbg !2110, !tbaa !388
  %18 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %17) #10, !dbg !2112
  %19 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2113
  br label %142, !dbg !2114

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2115
  %22 = bitcast %struct.residue_t** %21 to i64*, !dbg !2115
  %23 = load i64, i64* %22, align 8, !dbg !2115, !tbaa !2116
  %24 = bitcast i8* %2 to i64*, !dbg !2117
  store i64 %23, i64* %24, align 8, !dbg !2117, !tbaa !1666
  %25 = bitcast %struct.residue_t** %21 to i8**, !dbg !2118
  store i8* %2, i8** %25, align 8, !dbg !2118, !tbaa !2116
  %26 = tail call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2119
  %27 = add i64 %26, 1, !dbg !2120
  %28 = tail call noalias i8* @malloc(i64 %27) #10, !dbg !2121
  call void @llvm.dbg.value(metadata i8* %28, metadata !2091, metadata !DIExpression()), !dbg !2094
  %29 = icmp eq i8* %28, null, !dbg !2122
  br i1 %29, label %30, label %33, !dbg !2124

30:                                               ; preds = %20
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2125, !tbaa !379
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %31) #12, !dbg !2127
  tail call void @exit(i32 1) #13, !dbg !2128
  unreachable, !dbg !2128

33:                                               ; preds = %20
  %34 = tail call i8* @strcpy(i8* nonnull %28, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #10, !dbg !2129
  %35 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !2130
  %36 = bitcast i8* %35 to i8**, !dbg !2130
  store i8* %28, i8** %36, align 8, !dbg !2131, !tbaa !1285
  %37 = tail call noalias dereferenceable_or_null(1) i8* @malloc(i64 1) #10, !dbg !2132
  call void @llvm.dbg.value(metadata i8* %37, metadata !2091, metadata !DIExpression()), !dbg !2094
  %38 = icmp eq i8* %37, null, !dbg !2133
  br i1 %38, label %39, label %42, !dbg !2135

39:                                               ; preds = %33
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2136, !tbaa !379
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %40) #12, !dbg !2138
  tail call void @exit(i32 1) #13, !dbg !2139
  unreachable, !dbg !2139

42:                                               ; preds = %33
  store i8 0, i8* %37, align 1, !dbg !2140
  %43 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2141
  %44 = bitcast i8* %43 to i8**, !dbg !2141
  store i8* %37, i8** %44, align 8, !dbg !2142, !tbaa !1682
  %45 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2143
  %46 = bitcast i8* %45 to i32*, !dbg !2143
  store i32 0, i32* %46, align 8, !dbg !2144, !tbaa !1697
  %47 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !2145
  %48 = bitcast i8* %47 to i32*, !dbg !2145
  store i32 0, i32* %48, align 4, !dbg !2146, !tbaa !1702
  %49 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2147
  %50 = bitcast i8* %49 to i32*, !dbg !2147
  store i32 0, i32* %50, align 8, !dbg !2148, !tbaa !1705
  %51 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2149
  %52 = bitcast i8* %51 to i32*, !dbg !2149
  store i32 0, i32* %52, align 8, !dbg !2150, !tbaa !1707
  %53 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 2, !dbg !2151
  %54 = load i32, i32* %53, align 8, !dbg !2151, !tbaa !409
  %55 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !2152
  %56 = bitcast i8* %55 to i32*, !dbg !2152
  store i32 %54, i32* %56, align 4, !dbg !2153, !tbaa !1764
  %57 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 3, !dbg !2154
  %58 = load i32, i32* %57, align 4, !dbg !2154, !tbaa !775
  %59 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !2155
  %60 = bitcast i8* %59 to i32*, !dbg !2155
  store i32 %58, i32* %60, align 8, !dbg !2156, !tbaa !1768
  %61 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !2157
  %62 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !2158
  %63 = bitcast i8* %62 to [2 x i32]**, !dbg !2158
  store [2 x i32]* null, [2 x i32]** %63, align 8, !dbg !2159, !tbaa !1722
  %64 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !2160
  %65 = bitcast i8* %64 to i32*, !dbg !2160
  store i32 0, i32* %65, align 8, !dbg !2161, !tbaa !1647
  %66 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !2162
  %67 = bitcast i8* %66 to %struct.chiral_t**, !dbg !2162
  store %struct.chiral_t* null, %struct.chiral_t** %67, align 8, !dbg !2163, !tbaa !1743
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %61, i8 0, i64 20, i1 false), !dbg !2164
  %68 = load i32, i32* @n_atoms, align 4, !dbg !2165, !tbaa !943
  %69 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !2166
  %70 = bitcast i8* %69 to i32*, !dbg !2166
  store i32 %68, i32* %70, align 8, !dbg !2167, !tbaa !1315
  %71 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !2168
  %72 = bitcast i8* %71 to i32**, !dbg !2168
  store i32* null, i32** %72, align 8, !dbg !2169, !tbaa !1776
  %73 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !2170
  %74 = bitcast i8* %73 to %struct.atom_t**, !dbg !2170
  %75 = bitcast i8* %73 to i8**, !dbg !2171
  store i8* %13, i8** %75, align 8, !dbg !2171, !tbaa !1322
  call void @llvm.dbg.value(metadata i32 0, metadata !2092, metadata !DIExpression()), !dbg !2094
  %76 = icmp sgt i32 %68, 0, !dbg !2172
  br i1 %76, label %77, label %142, !dbg !2175

77:                                               ; preds = %42, %88
  %78 = phi i64 [ %138, %88 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !2092, metadata !DIExpression()), !dbg !2094
  %79 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 0, !dbg !2176
  %80 = load i8*, i8** %79, align 16, !dbg !2176, !tbaa !918
  %81 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %80) #11, !dbg !2178
  %82 = add i64 %81, 1, !dbg !2179
  %83 = tail call noalias i8* @malloc(i64 %82) #10, !dbg !2180
  call void @llvm.dbg.value(metadata i8* %83, metadata !2090, metadata !DIExpression()), !dbg !2094
  %84 = icmp eq i8* %83, null, !dbg !2181
  br i1 %84, label %85, label %88, !dbg !2183

85:                                               ; preds = %77
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2184, !tbaa !379
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %86) #12, !dbg !2186
  tail call void @exit(i32 1) #13, !dbg !2187
  unreachable, !dbg !2187

88:                                               ; preds = %77
  %89 = tail call i8* @strcpy(i8* nonnull %83, i8* nonnull dereferenceable(1) %80) #10, !dbg !2188
  %90 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !2189, !tbaa !1322
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 0, !dbg !2190
  store i8* %83, i8** %91, align 8, !dbg !2191, !tbaa !918
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 2, !dbg !2192
  store i32 0, i32* %92, align 8, !dbg !2193, !tbaa !1842
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 3, !dbg !2194
  store i32 0, i32* %93, align 4, !dbg !2195, !tbaa !1846
  call void @llvm.dbg.value(metadata i32 0, metadata !2093, metadata !DIExpression()), !dbg !2094
  %94 = getelementptr %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 4, i64 0, !dbg !2196
  %95 = bitcast i32* %94 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(32) %95, i8 -1, i64 32, i1 false), !dbg !2198
  call void @llvm.dbg.value(metadata i32 undef, metadata !2093, metadata !DIExpression()), !dbg !2094
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 5, !dbg !2200
  %97 = bitcast %struct.residue_t** %96 to i8**, !dbg !2201
  store i8* %2, i8** %97, align 8, !dbg !2201, !tbaa !1856
  %98 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 6, !dbg !2202
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 6, !dbg !2203
  %100 = bitcast double* %98 to <2 x i64>*, !dbg !2202
  %101 = load <2 x i64>, <2 x i64>* %100, align 16, !dbg !2202, !tbaa !973
  %102 = bitcast double* %99 to <2 x i64>*, !dbg !2204
  store <2 x i64> %101, <2 x i64>* %102, align 8, !dbg !2204, !tbaa !973
  %103 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 8, !dbg !2205
  %104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 8, !dbg !2206
  %105 = bitcast double* %103 to <2 x i64>*, !dbg !2205
  %106 = load <2 x i64>, <2 x i64>* %105, align 16, !dbg !2205, !tbaa !973
  %107 = bitcast double* %104 to <2 x i64>*, !dbg !2207
  store <2 x i64> %106, <2 x i64>* %107, align 8, !dbg !2207, !tbaa !973
  %108 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 11, !dbg !2208
  %109 = load i32, i32* %108, align 8, !dbg !2208, !tbaa !1867
  %110 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 11, !dbg !2209
  store i32 %109, i32* %110, align 8, !dbg !2210, !tbaa !1867
  %111 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 12, !dbg !2211
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 12, !dbg !2212
  %113 = bitcast double* %111 to <2 x i64>*, !dbg !2211
  %114 = load <2 x i64>, <2 x i64>* %113, align 16, !dbg !2211, !tbaa !973
  %115 = bitcast double* %112 to <2 x i64>*, !dbg !2213
  store <2 x i64> %114, <2 x i64>* %115, align 8, !dbg !2213, !tbaa !973
  %116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 15, !dbg !2214
  store i32 0, i32* %116, align 4, !dbg !2215, !tbaa !1878
  %117 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 16, !dbg !2216
  store i8* null, i8** %117, align 8, !dbg !2217, !tbaa !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !2093, metadata !DIExpression()), !dbg !2094
  %118 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 17, i64 0, !dbg !2218
  %119 = bitcast double* %118 to i64*, !dbg !2218
  %120 = load i64, i64* %119, align 16, !dbg !2218, !tbaa !973
  %121 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 17, i64 0, !dbg !2221
  %122 = bitcast double* %121 to i64*, !dbg !2222
  store i64 %120, i64* %122, align 8, !dbg !2222, !tbaa !973
  call void @llvm.dbg.value(metadata i64 1, metadata !2093, metadata !DIExpression()), !dbg !2094
  %123 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 17, i64 1, !dbg !2218
  %124 = bitcast double* %123 to i64*, !dbg !2218
  %125 = load i64, i64* %124, align 8, !dbg !2218, !tbaa !973
  %126 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 17, i64 1, !dbg !2221
  %127 = bitcast double* %126 to i64*, !dbg !2222
  store i64 %125, i64* %127, align 8, !dbg !2222, !tbaa !973
  call void @llvm.dbg.value(metadata i64 2, metadata !2093, metadata !DIExpression()), !dbg !2094
  %128 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 17, i64 2, !dbg !2218
  %129 = bitcast double* %128 to i64*, !dbg !2218
  %130 = load i64, i64* %129, align 16, !dbg !2218, !tbaa !973
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 17, i64 2, !dbg !2221
  %132 = bitcast double* %131 to i64*, !dbg !2222
  store i64 %130, i64* %132, align 8, !dbg !2222, !tbaa !973
  call void @llvm.dbg.value(metadata i64 3, metadata !2093, metadata !DIExpression()), !dbg !2094
  %133 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 18, !dbg !2223
  %134 = bitcast double* %133 to i64*, !dbg !2223
  %135 = load i64, i64* %134, align 8, !dbg !2223, !tbaa !1894
  %136 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 18, !dbg !2224
  %137 = bitcast double* %136 to i64*, !dbg !2225
  store i64 %135, i64* %137, align 8, !dbg !2225, !tbaa !1894
  %138 = add nuw nsw i64 %78, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %138, metadata !2092, metadata !DIExpression()), !dbg !2094
  %139 = load i32, i32* @n_atoms, align 4, !dbg !2227, !tbaa !943
  %140 = sext i32 %139 to i64, !dbg !2172
  %141 = icmp slt i64 %138, %140, !dbg !2172
  br i1 %141, label %77, label %142, !dbg !2175, !llvm.loop !2228

142:                                              ; preds = %88, %42, %15, %4
  ret void, !dbg !2230
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addbonds2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2231 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2233, metadata !DIExpression()), !dbg !2242
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2243
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2234, metadata !DIExpression()), !dbg !2242
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2245, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2234, metadata !DIExpression()), !dbg !2242
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2246
  br i1 %4, label %81, label %5, !dbg !2246

5:                                                ; preds = %1, %77
  %6 = phi %struct.residue_t* [ %79, %77 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 4, !dbg !2247
  %8 = load i8*, i8** %7, align 8, !dbg !2247, !tbaa !1285
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2251
  %10 = icmp eq i32 %9, 0, !dbg !2252
  br i1 %10, label %11, label %77, !dbg !2253

11:                                               ; preds = %5
  %12 = load i32, i32* @n_bonds, align 4, !dbg !2254, !tbaa !943
  %13 = sext i32 %12 to i64, !dbg !2254
  %14 = shl nsw i64 %13, 3, !dbg !2257
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !2258
  %16 = bitcast i8* %15 to [2 x i32]*, !dbg !2259
  call void @llvm.dbg.value(metadata [2 x i32]* %16, metadata !2235, metadata !DIExpression()), !dbg !2242
  %17 = icmp eq i8* %15, null, !dbg !2260
  br i1 %17, label %23, label %18, !dbg !2261

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !2236, metadata !DIExpression()), !dbg !2242
  %19 = icmp sgt i32 %12, 0, !dbg !2262
  br i1 %19, label %20, label %72, !dbg !2265

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2266
  %22 = load %struct.atom_t*, %struct.atom_t** %21, align 8, !dbg !2266, !tbaa !1322
  br label %26, !dbg !2265

23:                                               ; preds = %11
  %24 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #10, !dbg !2268
  %25 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2270
  br label %86, !dbg !2271

26:                                               ; preds = %20, %67
  %27 = phi i64 [ 0, %20 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !2236, metadata !DIExpression()), !dbg !2242
  %28 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %27, i64 0, !dbg !2272
  %29 = load i32, i32* %28, align 8, !dbg !2272, !tbaa !943
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %27, i64 0, !dbg !2273
  store i32 %29, i32* %30, align 4, !dbg !2274, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %29, metadata !2238, metadata !DIExpression()), !dbg !2242
  %31 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %27, i64 1, !dbg !2275
  %32 = load i32, i32* %31, align 4, !dbg !2275, !tbaa !943
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %27, i64 1, !dbg !2276
  store i32 %32, i32* %33, align 4, !dbg !2277, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %32, metadata !2239, metadata !DIExpression()), !dbg !2242
  %34 = add nsw i32 %29, -1, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %34, metadata !2238, metadata !DIExpression()), !dbg !2242
  %35 = add nsw i32 %32, -1, !dbg !2279
  call void @llvm.dbg.value(metadata i32 %35, metadata !2239, metadata !DIExpression()), !dbg !2242
  %36 = sext i32 %34 to i64, !dbg !2280
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2240, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 0, metadata !2237, metadata !DIExpression()), !dbg !2242
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 0, !dbg !2281
  %38 = load i32, i32* %37, align 4, !dbg !2281, !tbaa !943
  %39 = icmp eq i32 %38, %35, !dbg !2286
  br i1 %39, label %51, label %44, !dbg !2287

40:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 1, metadata !2237, metadata !DIExpression()), !dbg !2242
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 1, !dbg !2281
  %42 = load i32, i32* %41, align 4, !dbg !2281, !tbaa !943
  %43 = icmp eq i32 %42, %35, !dbg !2286
  br i1 %43, label %51, label %87, !dbg !2287

44:                                               ; preds = %26
  %45 = icmp eq i32 %38, -1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 0, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %45, label %46, label %40, !dbg !2290

46:                                               ; preds = %119, %117, %111, %105, %99, %93, %87, %44
  %47 = phi i32* [ %37, %44 ], [ %41, %87 ], [ %90, %93 ], [ %96, %99 ], [ %102, %105 ], [ %108, %111 ], [ %114, %117 ], [ %120, %119 ], !dbg !2281
  store i32 %35, i32* %47, align 4, !dbg !2291, !tbaa !943
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 3, !dbg !2293
  %49 = load i32, i32* %48, align 4, !dbg !2294, !tbaa !1846
  %50 = add nsw i32 %49, 1, !dbg !2294
  store i32 %50, i32* %48, align 4, !dbg !2294, !tbaa !1846
  br label %51, !dbg !2295

51:                                               ; preds = %119, %26, %40, %89, %95, %101, %107, %113, %46
  %52 = sext i32 %35 to i64, !dbg !2296
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2241, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 0, metadata !2237, metadata !DIExpression()), !dbg !2242
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 0, !dbg !2297
  %54 = load i32, i32* %53, align 4, !dbg !2297, !tbaa !943
  %55 = icmp eq i32 %54, %34, !dbg !2302
  br i1 %55, label %67, label %60, !dbg !2303

56:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i64 1, metadata !2237, metadata !DIExpression()), !dbg !2242
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 1, !dbg !2297
  %58 = load i32, i32* %57, align 4, !dbg !2297, !tbaa !943
  %59 = icmp eq i32 %58, %34, !dbg !2302
  br i1 %59, label %67, label %125, !dbg !2303

60:                                               ; preds = %51
  %61 = icmp eq i32 %54, -1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 0, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %61, label %62, label %56, !dbg !2306

62:                                               ; preds = %157, %155, %149, %143, %137, %131, %125, %60
  %63 = phi i32* [ %53, %60 ], [ %57, %125 ], [ %128, %131 ], [ %134, %137 ], [ %140, %143 ], [ %146, %149 ], [ %152, %155 ], [ %158, %157 ], !dbg !2297
  store i32 %34, i32* %63, align 4, !dbg !2307, !tbaa !943
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 3, !dbg !2309
  %65 = load i32, i32* %64, align 4, !dbg !2310, !tbaa !1846
  %66 = add nsw i32 %65, 1, !dbg !2310
  store i32 %66, i32* %64, align 4, !dbg !2310, !tbaa !1846
  br label %67, !dbg !2311

67:                                               ; preds = %157, %51, %56, %127, %133, %139, %145, %151, %62
  %68 = add nuw nsw i64 %27, 1, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %68, metadata !2236, metadata !DIExpression()), !dbg !2242
  %69 = load i32, i32* @n_bonds, align 4, !dbg !2313, !tbaa !943
  %70 = sext i32 %69 to i64, !dbg !2262
  %71 = icmp slt i64 %68, %70, !dbg !2262
  br i1 %71, label %26, label %72, !dbg !2265, !llvm.loop !2314

72:                                               ; preds = %67, %18
  %73 = phi i32 [ %12, %18 ], [ %69, %67 ], !dbg !2313
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 11, !dbg !2316
  store i32 %73, i32* %74, align 8, !dbg !2317, !tbaa !1628
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 12, !dbg !2318
  %76 = bitcast [2 x i32]** %75 to i8**, !dbg !2319
  store i8* %15, i8** %76, align 8, !dbg !2319, !tbaa !1722
  br label %86, !dbg !2320

77:                                               ; preds = %5
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 0, !dbg !2321
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2234, metadata !DIExpression()), !dbg !2242
  %79 = load %struct.residue_t*, %struct.residue_t** %78, align 8, !dbg !2245, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %79, metadata !2234, metadata !DIExpression()), !dbg !2242
  %80 = icmp eq %struct.residue_t* %79, null, !dbg !2246
  br i1 %80, label %81, label %5, !dbg !2246, !llvm.loop !2322

81:                                               ; preds = %77, %1
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2324
  %83 = load i8*, i8** %82, align 8, !dbg !2324, !tbaa !388
  %84 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %83) #10, !dbg !2325
  %85 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2326
  br label %86, !dbg !2327

86:                                               ; preds = %81, %72, %23
  ret void, !dbg !2328

87:                                               ; preds = %40
  %88 = icmp eq i32 %42, -1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 1, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %88, label %46, label %89, !dbg !2290

89:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i64 2, metadata !2237, metadata !DIExpression()), !dbg !2242
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 2, !dbg !2281
  %91 = load i32, i32* %90, align 4, !dbg !2281, !tbaa !943
  %92 = icmp eq i32 %91, %35, !dbg !2286
  br i1 %92, label %51, label %93, !dbg !2287

93:                                               ; preds = %89
  %94 = icmp eq i32 %91, -1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 2, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %94, label %46, label %95, !dbg !2290

95:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i64 3, metadata !2237, metadata !DIExpression()), !dbg !2242
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 3, !dbg !2281
  %97 = load i32, i32* %96, align 4, !dbg !2281, !tbaa !943
  %98 = icmp eq i32 %97, %35, !dbg !2286
  br i1 %98, label %51, label %99, !dbg !2287

99:                                               ; preds = %95
  %100 = icmp eq i32 %97, -1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 3, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %100, label %46, label %101, !dbg !2290

101:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 4, metadata !2237, metadata !DIExpression()), !dbg !2242
  %102 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 4, !dbg !2281
  %103 = load i32, i32* %102, align 4, !dbg !2281, !tbaa !943
  %104 = icmp eq i32 %103, %35, !dbg !2286
  br i1 %104, label %51, label %105, !dbg !2287

105:                                              ; preds = %101
  %106 = icmp eq i32 %103, -1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 4, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %106, label %46, label %107, !dbg !2290

107:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 5, metadata !2237, metadata !DIExpression()), !dbg !2242
  %108 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 5, !dbg !2281
  %109 = load i32, i32* %108, align 4, !dbg !2281, !tbaa !943
  %110 = icmp eq i32 %109, %35, !dbg !2286
  br i1 %110, label %51, label %111, !dbg !2287

111:                                              ; preds = %107
  %112 = icmp eq i32 %109, -1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 5, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %112, label %46, label %113, !dbg !2290

113:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i64 6, metadata !2237, metadata !DIExpression()), !dbg !2242
  %114 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 6, !dbg !2281
  %115 = load i32, i32* %114, align 4, !dbg !2281, !tbaa !943
  %116 = icmp eq i32 %115, %35, !dbg !2286
  br i1 %116, label %51, label %117, !dbg !2287

117:                                              ; preds = %113
  %118 = icmp eq i32 %115, -1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 6, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %118, label %46, label %119, !dbg !2290

119:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i64 7, metadata !2237, metadata !DIExpression()), !dbg !2242
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 7, !dbg !2281
  %121 = load i32, i32* %120, align 4, !dbg !2281, !tbaa !943
  %122 = icmp ne i32 %121, %35, !dbg !2286
  %123 = icmp eq i32 %121, -1, !dbg !2288
  %124 = and i1 %122, %123, !dbg !2287
  call void @llvm.dbg.value(metadata i64 7, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %124, label %46, label %51, !dbg !2287

125:                                              ; preds = %56
  %126 = icmp eq i32 %58, -1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 1, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %126, label %62, label %127, !dbg !2306

127:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i64 2, metadata !2237, metadata !DIExpression()), !dbg !2242
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 2, !dbg !2297
  %129 = load i32, i32* %128, align 4, !dbg !2297, !tbaa !943
  %130 = icmp eq i32 %129, %34, !dbg !2302
  br i1 %130, label %67, label %131, !dbg !2303

131:                                              ; preds = %127
  %132 = icmp eq i32 %129, -1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 2, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %132, label %62, label %133, !dbg !2306

133:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i64 3, metadata !2237, metadata !DIExpression()), !dbg !2242
  %134 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 3, !dbg !2297
  %135 = load i32, i32* %134, align 4, !dbg !2297, !tbaa !943
  %136 = icmp eq i32 %135, %34, !dbg !2302
  br i1 %136, label %67, label %137, !dbg !2303

137:                                              ; preds = %133
  %138 = icmp eq i32 %135, -1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 3, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %138, label %62, label %139, !dbg !2306

139:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i64 4, metadata !2237, metadata !DIExpression()), !dbg !2242
  %140 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 4, !dbg !2297
  %141 = load i32, i32* %140, align 4, !dbg !2297, !tbaa !943
  %142 = icmp eq i32 %141, %34, !dbg !2302
  br i1 %142, label %67, label %143, !dbg !2303

143:                                              ; preds = %139
  %144 = icmp eq i32 %141, -1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 4, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %144, label %62, label %145, !dbg !2306

145:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i64 5, metadata !2237, metadata !DIExpression()), !dbg !2242
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 5, !dbg !2297
  %147 = load i32, i32* %146, align 4, !dbg !2297, !tbaa !943
  %148 = icmp eq i32 %147, %34, !dbg !2302
  br i1 %148, label %67, label %149, !dbg !2303

149:                                              ; preds = %145
  %150 = icmp eq i32 %147, -1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 5, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %150, label %62, label %151, !dbg !2306

151:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i64 6, metadata !2237, metadata !DIExpression()), !dbg !2242
  %152 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 6, !dbg !2297
  %153 = load i32, i32* %152, align 4, !dbg !2297, !tbaa !943
  %154 = icmp eq i32 %153, %34, !dbg !2302
  br i1 %154, label %67, label %155, !dbg !2303

155:                                              ; preds = %151
  %156 = icmp eq i32 %153, -1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 6, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %156, label %62, label %157, !dbg !2306

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i64 7, metadata !2237, metadata !DIExpression()), !dbg !2242
  %158 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 7, !dbg !2297
  %159 = load i32, i32* %158, align 4, !dbg !2297, !tbaa !943
  %160 = icmp ne i32 %159, %34, !dbg !2302
  %161 = icmp eq i32 %159, -1, !dbg !2304
  %162 = and i1 %160, %161, !dbg !2303
  call void @llvm.dbg.value(metadata i64 7, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2242
  br i1 %162, label %62, label %67, !dbg !2303
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addqr2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2329 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2331, metadata !DIExpression()), !dbg !2336
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2337
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2332, metadata !DIExpression()), !dbg !2336
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2339, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2332, metadata !DIExpression()), !dbg !2336
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2340
  br i1 %4, label %66, label %5, !dbg !2340

5:                                                ; preds = %1, %62
  %6 = phi %struct.residue_t* [ %64, %62 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 4, !dbg !2341
  %8 = load i8*, i8** %7, align 8, !dbg !2341, !tbaa !1285
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2345
  %10 = icmp eq i32 %9, 0, !dbg !2346
  br i1 %10, label %11, label %62, !dbg !2347

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 0, metadata !2333, metadata !DIExpression()), !dbg !2336
  %12 = load i32, i32* @n_atoms, align 4, !dbg !2348, !tbaa !943
  %13 = icmp sgt i32 %12, 0, !dbg !2352
  br i1 %13, label %14, label %71, !dbg !2353

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 15, !dbg !2354
  %16 = load i32, i32* %15, align 8, !dbg !2354, !tbaa !1315
  %17 = icmp sgt i32 %16, 0, !dbg !2354
  %18 = zext i32 %16 to i64, !dbg !2354
  br i1 %17, label %19, label %71, !dbg !2353

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2358
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !2358, !tbaa !1322
  br label %22, !dbg !2353

22:                                               ; preds = %19, %57
  %23 = phi i32 [ %58, %57 ], [ %12, %19 ]
  %24 = phi %struct.atom_t* [ %60, %57 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %19 ]
  %25 = phi i32 [ %59, %57 ], [ 0, %19 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %24, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 %25, metadata !2333, metadata !DIExpression()), !dbg !2336
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 0, !dbg !2359
  %27 = load i8*, i8** %26, align 8, !dbg !2359, !tbaa !918
  call void @llvm.dbg.value(metadata %struct.residue_t* %6, metadata !1302, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %27, metadata !1307, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i32 0, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  br label %28, !dbg !2361

28:                                               ; preds = %35, %22
  %29 = phi i64 [ 0, %22 ], [ %34, %35 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 0, !dbg !2362
  %31 = load i8*, i8** %30, align 8, !dbg !2362, !tbaa !918
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %31, i8* nonnull dereferenceable(1) %27) #11, !dbg !2363
  %33 = icmp eq i32 %32, 0, !dbg !2363
  %34 = add nuw nsw i64 %29, 1, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %34, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  br i1 %33, label %37, label %35, !dbg !2365

35:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %34, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  %36 = icmp eq i64 %34, %18, !dbg !2366
  br i1 %36, label %57, label %28, !dbg !2361, !llvm.loop !2367

37:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %29, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %29, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %29, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %29, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %29, metadata !1308, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2335, metadata !DIExpression()), !dbg !2336
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 6, !dbg !2369
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 6, !dbg !2371
  %40 = bitcast double* %38 to <2 x i64>*, !dbg !2369
  %41 = load <2 x i64>, <2 x i64>* %40, align 8, !dbg !2369, !tbaa !973
  %42 = bitcast double* %39 to <2 x i64>*, !dbg !2372
  store <2 x i64> %41, <2 x i64>* %42, align 8, !dbg !2372, !tbaa !973
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 8, !dbg !2373
  %44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 8, !dbg !2374
  %45 = bitcast double* %43 to <2 x i64>*, !dbg !2373
  %46 = load <2 x i64>, <2 x i64>* %45, align 8, !dbg !2373, !tbaa !973
  %47 = bitcast double* %44 to <2 x i64>*, !dbg !2375
  store <2 x i64> %46, <2 x i64>* %47, align 8, !dbg !2375, !tbaa !973
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 11, !dbg !2376
  %49 = load i32, i32* %48, align 8, !dbg !2376, !tbaa !1867
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 11, !dbg !2377
  store i32 %49, i32* %50, align 8, !dbg !2378, !tbaa !1867
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 12, !dbg !2379
  %52 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 12, !dbg !2380
  %53 = bitcast double* %51 to <2 x i64>*, !dbg !2379
  %54 = load <2 x i64>, <2 x i64>* %53, align 8, !dbg !2379, !tbaa !973
  %55 = bitcast double* %52 to <2 x i64>*, !dbg !2381
  store <2 x i64> %54, <2 x i64>* %55, align 8, !dbg !2381, !tbaa !973
  %56 = load i32, i32* @n_atoms, align 4, !dbg !2348, !tbaa !943
  br label %57, !dbg !2382

57:                                               ; preds = %35, %37
  %58 = phi i32 [ %56, %37 ], [ %23, %35 ], !dbg !2348
  %59 = add nuw nsw i32 %25, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %59, metadata !2333, metadata !DIExpression()), !dbg !2336
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 1, !dbg !2384
  call void @llvm.dbg.value(metadata %struct.atom_t* %60, metadata !2334, metadata !DIExpression()), !dbg !2336
  %61 = icmp slt i32 %59, %58, !dbg !2352
  br i1 %61, label %22, label %71, !dbg !2353, !llvm.loop !2385

62:                                               ; preds = %5
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 0, !dbg !2387
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2332, metadata !DIExpression()), !dbg !2336
  %64 = load %struct.residue_t*, %struct.residue_t** %63, align 8, !dbg !2339, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %64, metadata !2332, metadata !DIExpression()), !dbg !2336
  %65 = icmp eq %struct.residue_t* %64, null, !dbg !2340
  br i1 %65, label %66, label %5, !dbg !2340, !llvm.loop !2388

66:                                               ; preds = %62, %1
  %67 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2390
  %68 = load i8*, i8** %67, align 8, !dbg !2390, !tbaa !388
  %69 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %68) #10, !dbg !2391
  %70 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2392
  br label %71, !dbg !2393

71:                                               ; preds = %57, %14, %11, %66
  ret void, !dbg !2394
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addchi2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2395 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2397, metadata !DIExpression()), !dbg !2407
  %5 = bitcast [4 x [3 x double]]* %2 to i8*, !dbg !2408
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10, !dbg !2408
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %2, metadata !2403, metadata !DIExpression()), !dbg !2409
  %6 = bitcast [4 x [3 x double]]* %3 to i8*, !dbg !2410
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10, !dbg !2410
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %3, metadata !2405, metadata !DIExpression()), !dbg !2411
  %7 = bitcast double* %4 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !2412
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2413
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2398, metadata !DIExpression()), !dbg !2407
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2415, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %9, metadata !2398, metadata !DIExpression()), !dbg !2407
  %10 = icmp eq %struct.residue_t* %9, null, !dbg !2416
  br i1 %10, label %130, label %11, !dbg !2416

11:                                               ; preds = %1, %126
  %12 = phi %struct.residue_t* [ %128, %126 ], [ %9, %1 ]
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !2417
  %14 = load i8*, i8** %13, align 8, !dbg !2417, !tbaa !1285
  %15 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %14, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2421
  %16 = icmp eq i32 %15, 0, !dbg !2421
  br i1 %16, label %17, label %126, !dbg !2422

17:                                               ; preds = %11
  %18 = load i32, i32* @n_chi, align 4, !dbg !2423, !tbaa !943
  %19 = sext i32 %18 to i64, !dbg !2423
  %20 = mul nsw i64 %19, 24, !dbg !2426
  %21 = tail call noalias i8* @malloc(i64 %20) #10, !dbg !2427
  call void @llvm.dbg.value(metadata i8* %21, metadata !2399, metadata !DIExpression()), !dbg !2407
  %22 = icmp eq i8* %21, null, !dbg !2428
  br i1 %22, label %23, label %28, !dbg !2429

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !2417
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2430, !tbaa !379
  %26 = load i8*, i8** %24, align 8, !dbg !2432, !tbaa !1285
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %26) #12, !dbg !2433
  br label %136, !dbg !2434

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %21, metadata !2399, metadata !DIExpression()), !dbg !2407
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 13, !dbg !2435
  store i32 %18, i32* %29, align 8, !dbg !2436, !tbaa !1647
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 14, !dbg !2437
  %31 = bitcast %struct.chiral_t** %30 to i8**, !dbg !2438
  store i8* %21, i8** %31, align 8, !dbg !2438, !tbaa !1743
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8* %21, metadata !2399, metadata !DIExpression()), !dbg !2407
  %32 = icmp sgt i32 %18, 0, !dbg !2439
  br i1 %32, label %33, label %136, !dbg !2442

33:                                               ; preds = %28
  %34 = bitcast i8* %21 to %struct.chiral_t*, !dbg !2443
  call void @llvm.dbg.value(metadata %struct.chiral_t* %34, metadata !2399, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata %struct.chiral_t* %34, metadata !2399, metadata !DIExpression()), !dbg !2407
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 17, !dbg !2444
  %36 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 0, !dbg !2449
  %37 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %3, i64 0, i64 0, i64 0, !dbg !2449
  %38 = bitcast double* %4 to i64*, !dbg !2449
  %39 = bitcast [4 x [3 x double]]* %2 to i64*, !dbg !2444
  %40 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 1, !dbg !2444
  %41 = bitcast double* %40 to i64*, !dbg !2444
  %42 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 2, !dbg !2444
  %43 = bitcast double* %42 to i64*, !dbg !2444
  %44 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 1, !dbg !2444
  %45 = bitcast [3 x double]* %44 to i64*, !dbg !2444
  %46 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 1, i64 1, !dbg !2444
  %47 = bitcast double* %46 to i64*, !dbg !2444
  %48 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 1, i64 2, !dbg !2444
  %49 = bitcast double* %48 to i64*, !dbg !2444
  %50 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 2, !dbg !2444
  %51 = bitcast [3 x double]* %50 to i64*, !dbg !2444
  %52 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 2, i64 1, !dbg !2444
  %53 = bitcast double* %52 to i64*, !dbg !2444
  %54 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 2, i64 2, !dbg !2444
  %55 = bitcast double* %54 to i64*, !dbg !2444
  %56 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 3, !dbg !2444
  %57 = bitcast [3 x double]* %56 to i64*, !dbg !2444
  %58 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 3, i64 1, !dbg !2444
  %59 = bitcast double* %58 to i64*, !dbg !2444
  %60 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 3, i64 2, !dbg !2444
  %61 = bitcast double* %60 to i64*, !dbg !2444
  br label %62, !dbg !2442

62:                                               ; preds = %33, %62
  %63 = phi i64 [ 0, %33 ], [ %122, %62 ]
  %64 = phi %struct.chiral_t* [ %34, %33 ], [ %121, %62 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !2401, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !2399, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 0, metadata !2400, metadata !DIExpression()), !dbg !2407
  %65 = load %struct.atom_t*, %struct.atom_t** %35, align 8, !dbg !2444, !tbaa !1322
  call void @llvm.dbg.value(metadata i64 0, metadata !2400, metadata !DIExpression()), !dbg !2407
  %66 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %63, i32 0, i64 0, !dbg !2450
  %67 = load i32, i32* %66, align 8, !dbg !2450, !tbaa !943
  %68 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 0, i64 0, !dbg !2451
  store i32 %67, i32* %68, align 4, !dbg !2452, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %67, metadata !2402, metadata !DIExpression()), !dbg !2407
  %69 = sext i32 %67 to i64, !dbg !2453
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %69, i32 17, i64 0, !dbg !2453
  %71 = bitcast double* %70 to i64*, !dbg !2453
  %72 = load i64, i64* %71, align 8, !dbg !2453, !tbaa !973
  store i64 %72, i64* %39, align 16, !dbg !2454, !tbaa !973
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %69, i32 17, i64 1, !dbg !2455
  %74 = bitcast double* %73 to i64*, !dbg !2455
  %75 = load i64, i64* %74, align 8, !dbg !2455, !tbaa !973
  store i64 %75, i64* %41, align 8, !dbg !2456, !tbaa !973
  %76 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %69, i32 17, i64 2, !dbg !2457
  %77 = bitcast double* %76 to i64*, !dbg !2457
  %78 = load i64, i64* %77, align 8, !dbg !2457, !tbaa !973
  store i64 %78, i64* %43, align 16, !dbg !2458, !tbaa !973
  call void @llvm.dbg.value(metadata i64 1, metadata !2400, metadata !DIExpression()), !dbg !2407
  %79 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %63, i32 0, i64 1, !dbg !2450
  %80 = load i32, i32* %79, align 4, !dbg !2450, !tbaa !943
  %81 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 0, i64 1, !dbg !2451
  store i32 %80, i32* %81, align 4, !dbg !2452, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %80, metadata !2402, metadata !DIExpression()), !dbg !2407
  %82 = sext i32 %80 to i64, !dbg !2453
  %83 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %82, i32 17, i64 0, !dbg !2453
  %84 = bitcast double* %83 to i64*, !dbg !2453
  %85 = load i64, i64* %84, align 8, !dbg !2453, !tbaa !973
  store i64 %85, i64* %45, align 8, !dbg !2454, !tbaa !973
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %82, i32 17, i64 1, !dbg !2455
  %87 = bitcast double* %86 to i64*, !dbg !2455
  %88 = load i64, i64* %87, align 8, !dbg !2455, !tbaa !973
  store i64 %88, i64* %47, align 8, !dbg !2456, !tbaa !973
  %89 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %82, i32 17, i64 2, !dbg !2457
  %90 = bitcast double* %89 to i64*, !dbg !2457
  %91 = load i64, i64* %90, align 8, !dbg !2457, !tbaa !973
  store i64 %91, i64* %49, align 8, !dbg !2458, !tbaa !973
  call void @llvm.dbg.value(metadata i64 2, metadata !2400, metadata !DIExpression()), !dbg !2407
  %92 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %63, i32 0, i64 2, !dbg !2450
  %93 = load i32, i32* %92, align 8, !dbg !2450, !tbaa !943
  %94 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 0, i64 2, !dbg !2451
  store i32 %93, i32* %94, align 4, !dbg !2452, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %93, metadata !2402, metadata !DIExpression()), !dbg !2407
  %95 = sext i32 %93 to i64, !dbg !2453
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %95, i32 17, i64 0, !dbg !2453
  %97 = bitcast double* %96 to i64*, !dbg !2453
  %98 = load i64, i64* %97, align 8, !dbg !2453, !tbaa !973
  store i64 %98, i64* %51, align 16, !dbg !2454, !tbaa !973
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %95, i32 17, i64 1, !dbg !2455
  %100 = bitcast double* %99 to i64*, !dbg !2455
  %101 = load i64, i64* %100, align 8, !dbg !2455, !tbaa !973
  store i64 %101, i64* %53, align 8, !dbg !2456, !tbaa !973
  %102 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %95, i32 17, i64 2, !dbg !2457
  %103 = bitcast double* %102 to i64*, !dbg !2457
  %104 = load i64, i64* %103, align 8, !dbg !2457, !tbaa !973
  store i64 %104, i64* %55, align 16, !dbg !2458, !tbaa !973
  call void @llvm.dbg.value(metadata i64 3, metadata !2400, metadata !DIExpression()), !dbg !2407
  %105 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %63, i32 0, i64 3, !dbg !2450
  %106 = load i32, i32* %105, align 4, !dbg !2450, !tbaa !943
  %107 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 0, i64 3, !dbg !2451
  store i32 %106, i32* %107, align 4, !dbg !2452, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %106, metadata !2402, metadata !DIExpression()), !dbg !2407
  %108 = sext i32 %106 to i64, !dbg !2453
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %108, i32 17, i64 0, !dbg !2453
  %110 = bitcast double* %109 to i64*, !dbg !2453
  %111 = load i64, i64* %110, align 8, !dbg !2453, !tbaa !973
  store i64 %111, i64* %57, align 8, !dbg !2454, !tbaa !973
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %108, i32 17, i64 1, !dbg !2455
  %113 = bitcast double* %112 to i64*, !dbg !2455
  %114 = load i64, i64* %113, align 8, !dbg !2455, !tbaa !973
  store i64 %114, i64* %59, align 8, !dbg !2456, !tbaa !973
  %115 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %108, i32 17, i64 2, !dbg !2457
  %116 = bitcast double* %115 to i64*, !dbg !2457
  %117 = load i64, i64* %116, align 8, !dbg !2457, !tbaa !973
  store i64 %117, i64* %61, align 8, !dbg !2458, !tbaa !973
  call void @llvm.dbg.value(metadata i64 4, metadata !2400, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata double* %4, metadata !2406, metadata !DIExpression(DW_OP_deref)), !dbg !2407
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* nonnull %36, double* nonnull %37, double* nonnull %4) #10, !dbg !2459
  %118 = load i64, i64* %38, align 8, !dbg !2460, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !2406, metadata !DIExpression()), !dbg !2407
  %119 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 1, !dbg !2461
  %120 = bitcast double* %119 to i64*, !dbg !2462
  store i64 %118, i64* %120, align 8, !dbg !2462, !tbaa !1399
  %121 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 1, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.chiral_t* %121, metadata !2399, metadata !DIExpression()), !dbg !2407
  %122 = add nuw nsw i64 %63, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %122, metadata !2401, metadata !DIExpression()), !dbg !2407
  %123 = load i32, i32* @n_chi, align 4, !dbg !2465, !tbaa !943
  %124 = sext i32 %123 to i64, !dbg !2439
  %125 = icmp slt i64 %122, %124, !dbg !2439
  br i1 %125, label %62, label %136, !dbg !2442, !llvm.loop !2466

126:                                              ; preds = %11
  %127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 0, !dbg !2468
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2398, metadata !DIExpression()), !dbg !2407
  %128 = load %struct.residue_t*, %struct.residue_t** %127, align 8, !dbg !2415, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %128, metadata !2398, metadata !DIExpression()), !dbg !2407
  %129 = icmp eq %struct.residue_t* %128, null, !dbg !2416
  br i1 %129, label %130, label %11, !dbg !2416, !llvm.loop !2469

130:                                              ; preds = %126, %1
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2471, !tbaa !379
  %132 = load i8*, i8** inttoptr (i64 24 to i8**), align 8, !dbg !2472, !tbaa !1285
  %133 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2473
  %134 = load i8*, i8** %133, align 8, !dbg !2473, !tbaa !388
  %135 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %132, i8* %134) #12, !dbg !2474
  br label %136, !dbg !2475

136:                                              ; preds = %62, %28, %130, %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !2475
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10, !dbg !2475
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10, !dbg !2475
  ret void, !dbg !2475
}

declare !dbg !315 dso_local void @chirvol(i32, i32, i32, i32, i32, double*, double*, double*) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!356, !357, !358}
!llvm.ident = !{!359}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "e_msg", scope: !2, file: !3, line: 46, type: !352, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !319, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "reslib.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!4 = !{}
!5 = !{!6, !7, !14, !169, !201, !228, !183, !190, !12, !53, !168, !229, !232, !234, !238, !298, !308, !311, !104, !315}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DISubprogram(name: "rt_errormsg_s", scope: !8, file: !8, line: 2, type: !9, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!8 = !DIFile(filename: "./traceback.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DISubprogram(name: "copyresidue", scope: !3, file: !3, line: 54, type: !15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !19, line: 63, size: 1024, elements: !20)
!19 = !DIFile(filename: "./nabtypes.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!20 = !{!21, !22, !24, !25, !26, !29, !30, !31, !32, !33, !171, !181, !182, !188, !189, !198, !199, !200}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !18, file: !19, line: 64, baseType: !17, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !18, file: !19, line: 65, baseType: !23, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !19, line: 6, baseType: !11)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !18, file: !19, line: 66, baseType: !23, size: 32, offset: 96)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !18, file: !19, line: 67, baseType: !23, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !18, file: !19, line: 68, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !19, line: 17, baseType: !13)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !18, file: !19, line: 69, baseType: !27, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !18, file: !19, line: 70, baseType: !23, size: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !18, file: !19, line: 71, baseType: !23, size: 32, offset: 352)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !18, file: !19, line: 72, baseType: !23, size: 32, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !18, file: !19, line: 73, baseType: !34, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !19, line: 84, size: 384, elements: !36)
!36 = !{!37, !38, !39, !40, !164, !165, !166, !167}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !35, file: !19, line: 85, baseType: !27, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !35, file: !19, line: 86, baseType: !23, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !35, file: !19, line: 87, baseType: !23, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !35, file: !19, line: 88, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !19, line: 118, size: 1088, elements: !43)
!43 = !{!44, !51, !52, !55, !56, !57, !58}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !42, file: !19, line: 119, baseType: !45, size: 768)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !19, line: 13, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 768, elements: !48)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !{!49, !50}
!49 = !DISubrange(count: 4)
!50 = !DISubrange(count: 3)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !42, file: !19, line: 120, baseType: !23, size: 32, offset: 768)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !42, file: !19, line: 121, baseType: !53, size: 64, offset: 832)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !19, line: 93, baseType: !35)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !42, file: !19, line: 122, baseType: !23, size: 32, offset: 896)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !42, file: !19, line: 123, baseType: !23, size: 32, offset: 928)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !42, file: !19, line: 124, baseType: !23, size: 32, offset: 960)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !42, file: !19, line: 125, baseType: !59, size: 64, offset: 1024)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !19, line: 115, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !19, line: 95, size: 5760, elements: !62)
!62 = !{!63, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !123, !124, !125, !126, !127, !128, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !61, file: !19, line: 96, baseType: !64, size: 648)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 648, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 81)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !61, file: !19, line: 97, baseType: !23, size: 32, offset: 672)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !61, file: !19, line: 97, baseType: !23, size: 32, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !61, file: !19, line: 97, baseType: !23, size: 32, offset: 736)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !61, file: !19, line: 98, baseType: !23, size: 32, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !61, file: !19, line: 98, baseType: !23, size: 32, offset: 800)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !61, file: !19, line: 98, baseType: !23, size: 32, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !61, file: !19, line: 98, baseType: !23, size: 32, offset: 864)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !61, file: !19, line: 98, baseType: !23, size: 32, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !61, file: !19, line: 98, baseType: !23, size: 32, offset: 928)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !61, file: !19, line: 99, baseType: !23, size: 32, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !61, file: !19, line: 99, baseType: !23, size: 32, offset: 992)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !61, file: !19, line: 99, baseType: !23, size: 32, offset: 1024)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !61, file: !19, line: 99, baseType: !23, size: 32, offset: 1056)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !61, file: !19, line: 99, baseType: !23, size: 32, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !61, file: !19, line: 99, baseType: !23, size: 32, offset: 1120)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !61, file: !19, line: 100, baseType: !23, size: 32, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !61, file: !19, line: 100, baseType: !23, size: 32, offset: 1184)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !61, file: !19, line: 100, baseType: !23, size: 32, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !61, file: !19, line: 100, baseType: !23, size: 32, offset: 1248)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !61, file: !19, line: 100, baseType: !23, size: 32, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !61, file: !19, line: 100, baseType: !23, size: 32, offset: 1312)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !61, file: !19, line: 101, baseType: !23, size: 32, offset: 1344)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !61, file: !19, line: 101, baseType: !23, size: 32, offset: 1376)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !61, file: !19, line: 101, baseType: !23, size: 32, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !61, file: !19, line: 101, baseType: !23, size: 32, offset: 1440)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !61, file: !19, line: 101, baseType: !23, size: 32, offset: 1472)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !61, file: !19, line: 101, baseType: !23, size: 32, offset: 1504)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !61, file: !19, line: 101, baseType: !23, size: 32, offset: 1536)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !61, file: !19, line: 101, baseType: !23, size: 32, offset: 1568)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !61, file: !19, line: 102, baseType: !23, size: 32, offset: 1600)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !61, file: !19, line: 102, baseType: !23, size: 32, offset: 1632)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !61, file: !19, line: 102, baseType: !23, size: 32, offset: 1664)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !61, file: !19, line: 103, baseType: !27, size: 64, offset: 1728)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !61, file: !19, line: 103, baseType: !27, size: 64, offset: 1792)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !61, file: !19, line: 103, baseType: !27, size: 64, offset: 1856)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !61, file: !19, line: 103, baseType: !27, size: 64, offset: 1920)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 1984)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 2048)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 2112)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 2176)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 2240)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 2304)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 2368)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 2432)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !61, file: !19, line: 104, baseType: !104, size: 64, offset: 2496)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !61, file: !19, line: 105, baseType: !104, size: 64, offset: 2560)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !61, file: !19, line: 105, baseType: !104, size: 64, offset: 2624)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !61, file: !19, line: 105, baseType: !104, size: 64, offset: 2688)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !61, file: !19, line: 105, baseType: !104, size: 64, offset: 2752)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !61, file: !19, line: 105, baseType: !104, size: 64, offset: 2816)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !61, file: !19, line: 105, baseType: !104, size: 64, offset: 2880)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !61, file: !19, line: 105, baseType: !104, size: 64, offset: 2944)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !61, file: !19, line: 106, baseType: !121, size: 192, offset: 3008)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 192, elements: !122)
!122 = !{!50}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !61, file: !19, line: 106, baseType: !47, size: 64, offset: 3200)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !61, file: !19, line: 106, baseType: !47, size: 64, offset: 3264)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !61, file: !19, line: 106, baseType: !47, size: 64, offset: 3328)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !61, file: !19, line: 106, baseType: !47, size: 64, offset: 3392)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !61, file: !19, line: 106, baseType: !47, size: 64, offset: 3456)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !61, file: !19, line: 107, baseType: !129, size: 64, offset: 3520)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !61, file: !19, line: 107, baseType: !129, size: 64, offset: 3584)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !61, file: !19, line: 107, baseType: !129, size: 64, offset: 3648)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !61, file: !19, line: 107, baseType: !129, size: 64, offset: 3712)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !61, file: !19, line: 107, baseType: !129, size: 64, offset: 3776)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !61, file: !19, line: 107, baseType: !129, size: 64, offset: 3840)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !61, file: !19, line: 108, baseType: !129, size: 64, offset: 3904)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !61, file: !19, line: 108, baseType: !129, size: 64, offset: 3968)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !61, file: !19, line: 108, baseType: !129, size: 64, offset: 4032)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !61, file: !19, line: 108, baseType: !129, size: 64, offset: 4096)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !61, file: !19, line: 108, baseType: !129, size: 64, offset: 4160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !61, file: !19, line: 108, baseType: !129, size: 64, offset: 4224)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !61, file: !19, line: 109, baseType: !129, size: 64, offset: 4288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !61, file: !19, line: 109, baseType: !129, size: 64, offset: 4352)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !61, file: !19, line: 109, baseType: !129, size: 64, offset: 4416)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !61, file: !19, line: 109, baseType: !129, size: 64, offset: 4480)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !61, file: !19, line: 109, baseType: !129, size: 64, offset: 4544)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !61, file: !19, line: 110, baseType: !129, size: 64, offset: 4608)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !61, file: !19, line: 110, baseType: !129, size: 64, offset: 4672)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !61, file: !19, line: 110, baseType: !129, size: 64, offset: 4736)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !61, file: !19, line: 110, baseType: !129, size: 64, offset: 4800)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !61, file: !19, line: 110, baseType: !129, size: 64, offset: 4864)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !61, file: !19, line: 111, baseType: !129, size: 64, offset: 4928)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !61, file: !19, line: 111, baseType: !129, size: 64, offset: 4992)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !61, file: !19, line: 111, baseType: !129, size: 64, offset: 5056)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !61, file: !19, line: 111, baseType: !129, size: 64, offset: 5120)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !61, file: !19, line: 111, baseType: !129, size: 64, offset: 5184)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !61, file: !19, line: 111, baseType: !129, size: 64, offset: 5248)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !61, file: !19, line: 112, baseType: !129, size: 64, offset: 5312)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !61, file: !19, line: 112, baseType: !129, size: 64, offset: 5376)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !61, file: !19, line: 112, baseType: !129, size: 64, offset: 5440)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !61, file: !19, line: 112, baseType: !129, size: 64, offset: 5504)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !61, file: !19, line: 113, baseType: !129, size: 64, offset: 5568)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !61, file: !19, line: 113, baseType: !129, size: 64, offset: 5632)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !61, file: !19, line: 114, baseType: !104, size: 64, offset: 5696)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !35, file: !19, line: 89, baseType: !34, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !35, file: !19, line: 90, baseType: !23, size: 32, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !35, file: !19, line: 91, baseType: !23, size: 32, offset: 288)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !35, file: !19, line: 92, baseType: !168, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !19, line: 82, baseType: !18)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !18, file: !19, line: 74, baseType: !172, size: 64, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !19, line: 52, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !19, line: 47, size: 192, elements: !175)
!175 = !{!176, !178, !179, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !174, file: !19, line: 48, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !174, file: !19, line: 49, baseType: !23, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !174, file: !19, line: 50, baseType: !23, size: 32, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !174, file: !19, line: 51, baseType: !23, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !18, file: !19, line: 75, baseType: !23, size: 32, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !18, file: !19, line: 76, baseType: !183, size: 64, offset: 640)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !19, line: 54, baseType: !185)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 2)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !18, file: !19, line: 77, baseType: !23, size: 32, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !18, file: !19, line: 78, baseType: !190, size: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !19, line: 61, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !19, line: 58, size: 192, elements: !193)
!193 = !{!194, !197}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !192, file: !19, line: 59, baseType: !195, size: 128)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !196)
!196 = !{!49}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !192, file: !19, line: 60, baseType: !47, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !18, file: !19, line: 79, baseType: !23, size: 32, offset: 832)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !18, file: !19, line: 80, baseType: !129, size: 64, offset: 896)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !18, file: !19, line: 81, baseType: !201, size: 64, offset: 960)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !19, line: 45, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !19, line: 25, size: 1408, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !227}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !203, file: !19, line: 26, baseType: !27, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !203, file: !19, line: 27, baseType: !27, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !203, file: !19, line: 28, baseType: !23, size: 32, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !203, file: !19, line: 29, baseType: !23, size: 32, offset: 160)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !203, file: !19, line: 30, baseType: !210, size: 256, offset: 192)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !203, file: !19, line: 31, baseType: !17, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !203, file: !19, line: 32, baseType: !47, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !203, file: !19, line: 33, baseType: !47, size: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !203, file: !19, line: 34, baseType: !47, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !203, file: !19, line: 35, baseType: !47, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !203, file: !19, line: 36, baseType: !27, size: 64, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !203, file: !19, line: 37, baseType: !23, size: 32, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !203, file: !19, line: 38, baseType: !47, size: 64, offset: 896)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !203, file: !19, line: 39, baseType: !47, size: 64, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !203, file: !19, line: 40, baseType: !23, size: 32, offset: 1024)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !203, file: !19, line: 41, baseType: !23, size: 32, offset: 1056)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !203, file: !19, line: 42, baseType: !27, size: 64, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !203, file: !19, line: 43, baseType: !226, size: 192, offset: 1152)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !19, line: 12, baseType: !121)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !203, file: !19, line: 44, baseType: !47, size: 64, offset: 1344)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!229 = !DISubprogram(name: "upd_molnumbers", scope: !3, file: !3, line: 16, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !41}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !19, line: 126, baseType: !42)
!234 = !DISubprogram(name: "copyparm", scope: !3, file: !3, line: 53, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!238 = !DISubprogram(name: "fclose", scope: !239, file: !239, line: 213, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!239 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!240 = !DISubroutineType(types: !241)
!241 = !{!11, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !244, line: 49, size: 1728, elements: !245)
!244 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !261, !262, !263, !264, !268, !270, !272, !276, !279, !281, !284, !287, !288, !289, !293, !294}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !243, file: !244, line: 51, baseType: !11, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !243, file: !244, line: 54, baseType: !12, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !243, file: !244, line: 55, baseType: !12, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !243, file: !244, line: 56, baseType: !12, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !243, file: !244, line: 57, baseType: !12, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !243, file: !244, line: 58, baseType: !12, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !243, file: !244, line: 59, baseType: !12, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !243, file: !244, line: 60, baseType: !12, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !243, file: !244, line: 61, baseType: !12, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !243, file: !244, line: 64, baseType: !12, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !243, file: !244, line: 65, baseType: !12, size: 64, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !243, file: !244, line: 66, baseType: !12, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !243, file: !244, line: 68, baseType: !259, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !244, line: 36, flags: DIFlagFwdDecl)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !243, file: !244, line: 70, baseType: !242, size: 64, offset: 832)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !243, file: !244, line: 72, baseType: !11, size: 32, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !243, file: !244, line: 73, baseType: !11, size: 32, offset: 928)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !243, file: !244, line: 74, baseType: !265, size: 64, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !266, line: 152, baseType: !267)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!267 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !243, file: !244, line: 77, baseType: !269, size: 16, offset: 1024)
!269 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !243, file: !244, line: 78, baseType: !271, size: 8, offset: 1040)
!271 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !243, file: !244, line: 79, baseType: !273, size: 8, offset: 1048)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 1)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !243, file: !244, line: 81, baseType: !277, size: 64, offset: 1088)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !244, line: 43, baseType: null)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !243, file: !244, line: 89, baseType: !280, size: 64, offset: 1152)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !266, line: 153, baseType: !267)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !243, file: !244, line: 91, baseType: !282, size: 64, offset: 1216)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !244, line: 37, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !243, file: !244, line: 92, baseType: !285, size: 64, offset: 1280)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !244, line: 38, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !243, file: !244, line: 93, baseType: !242, size: 64, offset: 1344)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !243, file: !244, line: 94, baseType: !6, size: 64, offset: 1408)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !243, file: !244, line: 95, baseType: !290, size: 64, offset: 1472)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !291, line: 46, baseType: !292)
!291 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!292 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !243, file: !244, line: 96, baseType: !11, size: 32, offset: 1536)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !243, file: !244, line: 98, baseType: !295, size: 160, offset: 1568)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 20)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESLIB_T", file: !3, line: 26, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reslib_t", file: !3, line: 20, size: 256, elements: !301)
!301 = !{!302, !304, !305, !306, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rl_next", scope: !300, file: !3, line: 21, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rl_name", scope: !300, file: !3, line: 22, baseType: !12, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rl_r_kind", scope: !300, file: !3, line: 23, baseType: !11, size: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rl_r_atomkind", scope: !300, file: !3, line: 24, baseType: !11, size: 32, offset: 160)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rl_rlist", scope: !300, file: !3, line: 25, baseType: !169, size: 64, offset: 192)
!308 = !DISubprogram(name: "fgets", scope: !239, file: !239, line: 564, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!309 = !DISubroutineType(types: !310)
!310 = !{!12, !12, !11, !242}
!311 = !DISubprogram(name: "NAB_initatom", scope: !3, file: !3, line: 48, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314, !11}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!315 = !DISubprogram(name: "chirvol", scope: !316, file: !316, line: 1, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!316 = !DIFile(filename: "./chirvol.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!317 = !DISubroutineType(types: !318)
!318 = !{null, !11, !11, !11, !11, !11, !104, !104, !104}
!319 = !{!0, !320, !322, !330, !335, !337, !340, !342, !345, !347}
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "reslibs", scope: !2, file: !3, line: 44, type: !298, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "init", scope: !324, file: !3, line: 474, type: !11, isLocal: true, isDefinition: true)
!324 = distinct !DISubprogram(name: "initatoms", scope: !3, file: !3, line: 472, type: !325, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{null}
!327 = !{!328, !329}
!328 = !DILocalVariable(name: "i", scope: !324, file: !3, line: 475, type: !11)
!329 = !DILocalVariable(name: "ap", scope: !324, file: !3, line: 476, type: !201)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "atoms", scope: !2, file: !3, line: 34, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1408000, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 1000)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "n_atoms", scope: !2, file: !3, line: 33, type: !11, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "lr_name", scope: !2, file: !3, line: 32, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !211)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "n_bonds", scope: !2, file: !3, line: 37, type: !11, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "bonds", scope: !2, file: !3, line: 38, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64000, elements: !333)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "n_chi", scope: !2, file: !3, line: 41, type: !11, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "chi", scope: !2, file: !3, line: 42, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 96000, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 500)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 256)
!355 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!356 = !{i32 7, !"Dwarf Version", i32 4}
!357 = !{i32 2, !"Debug Info Version", i32 3}
!358 = !{i32 1, !"wchar_size", i32 4}
!359 = !{!"clang version 10.0.0-4ubuntu1 "}
!360 = distinct !DISubprogram(name: "getreslibkind", scope: !3, file: !3, line: 78, type: !361, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!12, !12}
!363 = !{!364, !365, !366}
!364 = !DILocalVariable(name: "reslib", arg: 1, scope: !360, file: !3, line: 78, type: !12)
!365 = !DILocalVariable(name: "nhp", scope: !360, file: !3, line: 80, type: !12)
!366 = !DILocalVariable(name: "rlp", scope: !360, file: !3, line: 81, type: !298)
!367 = !DILocation(line: 0, scope: !360)
!368 = !DILocalVariable(name: "reslib", arg: 1, scope: !369, file: !3, line: 422, type: !12)
!369 = distinct !DISubprogram(name: "known_reslib", scope: !3, file: !3, line: 422, type: !370, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{!298, !12}
!372 = !{!368, !373}
!373 = !DILocalVariable(name: "rlp", scope: !369, file: !3, line: 424, type: !298)
!374 = !DILocation(line: 0, scope: !369, inlinedAt: !375)
!375 = distinct !DILocation(line: 83, column: 14, scope: !376)
!376 = distinct !DILexicalBlock(scope: !360, file: !3, line: 83, column: 6)
!377 = !DILocation(line: 0, scope: !378, inlinedAt: !375)
!378 = distinct !DILexicalBlock(scope: !369, file: !3, line: 426, column: 2)
!379 = !{!380, !380, i64 0}
!380 = !{!"any pointer", !381, i64 0}
!381 = !{!"omnipotent char", !382, i64 0}
!382 = !{!"Simple C/C++ TBAA"}
!383 = !DILocation(line: 426, column: 2, scope: !378, inlinedAt: !375)
!384 = !DILocation(line: 427, column: 20, scope: !385, inlinedAt: !375)
!385 = distinct !DILexicalBlock(scope: !386, file: !3, line: 427, column: 7)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 426, column: 47)
!387 = distinct !DILexicalBlock(scope: !378, file: !3, line: 426, column: 2)
!388 = !{!389, !380, i64 8}
!389 = !{!"reslib_t", !380, i64 0, !380, i64 8, !390, i64 16, !390, i64 20, !380, i64 24}
!390 = !{!"int", !381, i64 0}
!391 = !DILocation(line: 427, column: 7, scope: !385, inlinedAt: !375)
!392 = !DILocation(line: 427, column: 38, scope: !385, inlinedAt: !375)
!393 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !375)
!394 = !DILocation(line: 426, column: 38, scope: !387, inlinedAt: !375)
!395 = distinct !{!395, !383, !396}
!396 = !DILocation(line: 430, column: 2, scope: !378, inlinedAt: !375)
!397 = !DILocation(line: 84, column: 15, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 84, column: 7)
!399 = distinct !DILexicalBlock(scope: !376, file: !3, line: 83, column: 48)
!400 = !DILocation(line: 84, column: 39, scope: !398)
!401 = !DILocation(line: 84, column: 7, scope: !399)
!402 = !DILocation(line: 85, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !3, line: 84, column: 48)
!404 = !DILocation(line: 85, column: 4, scope: !403)
!405 = !DILocation(line: 87, column: 4, scope: !403)
!406 = !DILocation(line: 0, scope: !376)
!407 = !DILocation(line: 90, column: 11, scope: !408)
!408 = distinct !DILexicalBlock(scope: !360, file: !3, line: 90, column: 6)
!409 = !{!389, !390, i64 16}
!410 = !DILocation(line: 90, column: 6, scope: !360)
!411 = !DILocation(line: 101, column: 1, scope: !360)
!412 = distinct !DISubprogram(name: "read_reslib", scope: !3, file: !3, line: 434, type: !370, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !413)
!413 = !{!414, !415, !419, !420, !421, !422, !423}
!414 = !DILocalVariable(name: "reslib", arg: 1, scope: !412, file: !3, line: 434, type: !12)
!415 = !DILocalVariable(name: "pfp", scope: !412, file: !3, line: 436, type: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !418, line: 7, baseType: !243)
!418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!419 = !DILocalVariable(name: "bfp", scope: !412, file: !3, line: 437, type: !416)
!420 = !DILocalVariable(name: "qfp", scope: !412, file: !3, line: 438, type: !416)
!421 = !DILocalVariable(name: "cfp", scope: !412, file: !3, line: 439, type: !416)
!422 = !DILocalVariable(name: "rlp", scope: !412, file: !3, line: 440, type: !298)
!423 = !DILocalVariable(name: "offname", scope: !412, file: !3, line: 441, type: !352)
!424 = !DILocalVariable(name: "anm1", scope: !425, file: !3, line: 854, type: !339)
!425 = distinct !DISubprogram(name: "chi2reslib", scope: !3, file: !3, line: 848, type: !426, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !416, !298}
!428 = !{!429, !430, !431, !432, !433, !434, !435, !424, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!429 = !DILocalVariable(name: "cfp", arg: 1, scope: !425, file: !3, line: 848, type: !416)
!430 = !DILocalVariable(name: "rlp", arg: 2, scope: !425, file: !3, line: 848, type: !298)
!431 = !DILocalVariable(name: "line", scope: !425, file: !3, line: 850, type: !352)
!432 = !DILocalVariable(name: "r_name", scope: !425, file: !3, line: 851, type: !295)
!433 = !DILocalVariable(name: "llen", scope: !425, file: !3, line: 852, type: !11)
!434 = !DILocalVariable(name: "res", scope: !425, file: !3, line: 853, type: !169)
!435 = !DILocalVariable(name: "res1", scope: !425, file: !3, line: 853, type: !169)
!436 = !DILocalVariable(name: "anm2", scope: !425, file: !3, line: 854, type: !339)
!437 = !DILocalVariable(name: "anm3", scope: !425, file: !3, line: 854, type: !339)
!438 = !DILocalVariable(name: "anm4", scope: !425, file: !3, line: 854, type: !339)
!439 = !DILocalVariable(name: "a1", scope: !425, file: !3, line: 855, type: !11)
!440 = !DILocalVariable(name: "a2", scope: !425, file: !3, line: 855, type: !11)
!441 = !DILocalVariable(name: "a3", scope: !425, file: !3, line: 855, type: !11)
!442 = !DILocalVariable(name: "a4", scope: !425, file: !3, line: 855, type: !11)
!443 = !DILocalVariable(name: "ap", scope: !425, file: !3, line: 856, type: !201)
!444 = !DILocalVariable(name: "cp", scope: !425, file: !3, line: 857, type: !190)
!445 = !DILocation(line: 854, column: 7, scope: !425, inlinedAt: !446)
!446 = distinct !DILocation(line: 465, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 464, column: 11)
!448 = distinct !DILexicalBlock(scope: !412, file: !3, line: 464, column: 6)
!449 = !DILocation(line: 854, column: 18, scope: !425, inlinedAt: !446)
!450 = !DILocation(line: 854, column: 29, scope: !425, inlinedAt: !446)
!451 = !DILocation(line: 854, column: 40, scope: !425, inlinedAt: !446)
!452 = !DILocalVariable(name: "ltype", scope: !453, file: !3, line: 940, type: !459)
!453 = distinct !DISubprogram(name: "qr2reslib", scope: !3, file: !3, line: 937, type: !426, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !454)
!454 = !{!455, !456, !457, !452, !458, !462, !463, !464, !465, !466, !467}
!455 = !DILocalVariable(name: "qfp", arg: 1, scope: !453, file: !3, line: 937, type: !416)
!456 = !DILocalVariable(name: "rlp", arg: 2, scope: !453, file: !3, line: 937, type: !298)
!457 = !DILocalVariable(name: "line", scope: !453, file: !3, line: 939, type: !352)
!458 = !DILocalVariable(name: "a_name", scope: !453, file: !3, line: 940, type: !459)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 10)
!462 = !DILocalVariable(name: "r_name", scope: !453, file: !3, line: 940, type: !459)
!463 = !DILocalVariable(name: "a_num", scope: !453, file: !3, line: 941, type: !11)
!464 = !DILocalVariable(name: "r_num", scope: !453, file: !3, line: 941, type: !11)
!465 = !DILocalVariable(name: "q", scope: !453, file: !3, line: 942, type: !47)
!466 = !DILocalVariable(name: "r", scope: !453, file: !3, line: 942, type: !47)
!467 = !DILocalVariable(name: "ap", scope: !453, file: !3, line: 943, type: !201)
!468 = !DILocation(line: 940, column: 7, scope: !453, inlinedAt: !469)
!469 = distinct !DILocation(line: 460, column: 3, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 459, column: 11)
!471 = distinct !DILexicalBlock(scope: !412, file: !3, line: 459, column: 6)
!472 = !DILocalVariable(name: "ltype", scope: !473, file: !3, line: 765, type: !459)
!473 = distinct !DISubprogram(name: "pdb2reslib", scope: !3, file: !3, line: 762, type: !426, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!474 = !{!475, !476, !477, !472, !478, !479, !480, !481, !482, !483, !484, !485}
!475 = !DILocalVariable(name: "rfp", arg: 1, scope: !473, file: !3, line: 762, type: !416)
!476 = !DILocalVariable(name: "rlp", arg: 2, scope: !473, file: !3, line: 762, type: !298)
!477 = !DILocalVariable(name: "line", scope: !473, file: !3, line: 764, type: !352)
!478 = !DILocalVariable(name: "a_name", scope: !473, file: !3, line: 765, type: !459)
!479 = !DILocalVariable(name: "r_name", scope: !473, file: !3, line: 765, type: !459)
!480 = !DILocalVariable(name: "a_num", scope: !473, file: !3, line: 766, type: !11)
!481 = !DILocalVariable(name: "r_num", scope: !473, file: !3, line: 766, type: !11)
!482 = !DILocalVariable(name: "x", scope: !473, file: !3, line: 767, type: !47)
!483 = !DILocalVariable(name: "y", scope: !473, file: !3, line: 767, type: !47)
!484 = !DILocalVariable(name: "z", scope: !473, file: !3, line: 767, type: !47)
!485 = !DILocalVariable(name: "ap", scope: !473, file: !3, line: 768, type: !201)
!486 = !DILocation(line: 765, column: 7, scope: !473, inlinedAt: !487)
!487 = distinct !DILocation(line: 453, column: 3, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 452, column: 7)
!489 = distinct !DILexicalBlock(scope: !412, file: !3, line: 450, column: 7)
!490 = !DILocation(line: 940, column: 20, scope: !453, inlinedAt: !469)
!491 = !DILocation(line: 765, column: 20, scope: !473, inlinedAt: !487)
!492 = !DILocation(line: 940, column: 34, scope: !453, inlinedAt: !469)
!493 = !DILocation(line: 765, column: 34, scope: !473, inlinedAt: !487)
!494 = !DILocalVariable(name: "typex", scope: !495, file: !3, line: 653, type: !532)
!495 = distinct !DISubprogram(name: "off2reslib", scope: !3, file: !3, line: 647, type: !496, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !12, !298}
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !530, !494, !531, !535, !536, !537, !538, !539, !540, !542, !543, !544, !545, !548, !549, !550}
!499 = !DILocalVariable(name: "offname", arg: 1, scope: !495, file: !3, line: 647, type: !12)
!500 = !DILocalVariable(name: "rlp", arg: 2, scope: !495, file: !3, line: 647, type: !298)
!501 = !DILocalVariable(name: "ap", scope: !495, file: !3, line: 649, type: !201)
!502 = !DILocalVariable(name: "n_names", scope: !495, file: !3, line: 650, type: !11)
!503 = !DILocalVariable(name: "n_resnames", scope: !495, file: !3, line: 650, type: !11)
!504 = !DILocalVariable(name: "i", scope: !495, file: !3, line: 650, type: !11)
!505 = !DILocalVariable(name: "ires", scope: !495, file: !3, line: 650, type: !11)
!506 = !DILocalVariable(name: "db", scope: !495, file: !3, line: 651, type: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASE", file: !508, line: 84, baseType: !509)
!508 = !DIFile(filename: "./database.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASEt", file: !508, line: 82, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 65, size: 33024, elements: !512)
!512 = !{!513, !514, !515, !517, !518, !519, !521, !523, !524, !525, !527, !528, !529}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "iAccessMode", scope: !511, file: !508, line: 66, baseType: !11, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fDataBase", scope: !511, file: !508, line: 67, baseType: !416, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sFileName", scope: !511, file: !508, line: 68, baseType: !516, size: 2048, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !508, line: 48, baseType: !352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "iOpenMode", scope: !511, file: !508, line: 69, baseType: !11, size: 32, offset: 2176)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefix", scope: !511, file: !508, line: 70, baseType: !11, size: 32, offset: 2208)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "saPrefixStack", scope: !511, file: !508, line: 71, baseType: !520, size: 20480, offset: 2240)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 20480, elements: !460)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "bCompactFileAtClose", scope: !511, file: !508, line: 72, baseType: !522, size: 8, offset: 22720)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !508, line: 47, baseType: !13)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dEntries", scope: !511, file: !508, line: 73, baseType: !6, size: 64, offset: 22784)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "iCurrentLine", scope: !511, file: !508, line: 74, baseType: !11, size: 32, offset: 22848)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sLookAhead", scope: !511, file: !508, line: 75, baseType: !526, size: 8000, offset: 22880)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !333)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "iLastSequentialOperation", scope: !511, file: !508, line: 76, baseType: !11, size: 32, offset: 30880)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sLoopPrefix", scope: !511, file: !508, line: 79, baseType: !516, size: 2048, offset: 30912)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dlEntryLoop", scope: !511, file: !508, line: 80, baseType: !11, size: 32, offset: 32960)
!530 = !DILocalVariable(name: "bresult", scope: !495, file: !3, line: 652, type: !522)
!531 = !DILocalVariable(name: "resx", scope: !495, file: !3, line: 653, type: !532)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 3200, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 100)
!535 = !DILocalVariable(name: "flags", scope: !495, file: !3, line: 653, type: !532)
!536 = !DILocalVariable(name: "seq", scope: !495, file: !3, line: 654, type: !532)
!537 = !DILocalVariable(name: "elmnt", scope: !495, file: !3, line: 654, type: !532)
!538 = !DILocalVariable(name: "atom1x", scope: !495, file: !3, line: 655, type: !532)
!539 = !DILocalVariable(name: "atom2x", scope: !495, file: !3, line: 655, type: !532)
!540 = !DILocalVariable(name: "chg", scope: !495, file: !3, line: 656, type: !541)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 6400, elements: !533)
!542 = !DILocalVariable(name: "x", scope: !495, file: !3, line: 656, type: !541)
!543 = !DILocalVariable(name: "y", scope: !495, file: !3, line: 656, type: !541)
!544 = !DILocalVariable(name: "z", scope: !495, file: !3, line: 656, type: !541)
!545 = !DILocalVariable(name: "a_name", scope: !495, file: !3, line: 657, type: !546)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !547)
!547 = !{!534, !461}
!548 = !DILocalVariable(name: "type", scope: !495, file: !3, line: 657, type: !546)
!549 = !DILocalVariable(name: "res_name", scope: !495, file: !3, line: 657, type: !546)
!550 = !DILocalVariable(name: "prefix", scope: !495, file: !3, line: 658, type: !551)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2040, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 255)
!554 = !DILocation(line: 653, column: 6, scope: !495, inlinedAt: !555)
!555 = distinct !DILocation(line: 451, column: 3, scope: !556)
!556 = distinct !DILexicalBlock(scope: !489, file: !3, line: 450, column: 17)
!557 = !DILocation(line: 653, column: 20, scope: !495, inlinedAt: !555)
!558 = !DILocation(line: 653, column: 33, scope: !495, inlinedAt: !555)
!559 = !DILocation(line: 654, column: 3, scope: !495, inlinedAt: !555)
!560 = !DILocation(line: 654, column: 15, scope: !495, inlinedAt: !555)
!561 = !DILocation(line: 655, column: 6, scope: !495, inlinedAt: !555)
!562 = !DILocation(line: 655, column: 21, scope: !495, inlinedAt: !555)
!563 = !DILocation(line: 656, column: 9, scope: !495, inlinedAt: !555)
!564 = !DILocation(line: 656, column: 21, scope: !495, inlinedAt: !555)
!565 = !DILocation(line: 656, column: 31, scope: !495, inlinedAt: !555)
!566 = !DILocation(line: 656, column: 41, scope: !495, inlinedAt: !555)
!567 = !DILocation(line: 657, column: 7, scope: !495, inlinedAt: !555)
!568 = !DILocation(line: 657, column: 28, scope: !495, inlinedAt: !555)
!569 = !DILocation(line: 657, column: 47, scope: !495, inlinedAt: !555)
!570 = !DILocation(line: 658, column: 7, scope: !495, inlinedAt: !555)
!571 = !DILocalVariable(name: "line", scope: !572, file: !3, line: 499, type: !594)
!572 = distinct !DISubprogram(name: "read_reslib_header", scope: !3, file: !3, line: 492, type: !573, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!573 = !DISubroutineType(types: !574)
!574 = !{!298, !12, !575, !575, !575, !575, !12}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !571, !588, !589, !591, !592, !593}
!577 = !DILocalVariable(name: "reslib", arg: 1, scope: !572, file: !3, line: 492, type: !12)
!578 = !DILocalVariable(name: "pfp", arg: 2, scope: !572, file: !3, line: 493, type: !575)
!579 = !DILocalVariable(name: "bfp", arg: 3, scope: !572, file: !3, line: 493, type: !575)
!580 = !DILocalVariable(name: "qfp", arg: 4, scope: !572, file: !3, line: 493, type: !575)
!581 = !DILocalVariable(name: "cfp", arg: 5, scope: !572, file: !3, line: 493, type: !575)
!582 = !DILocalVariable(name: "offname", arg: 6, scope: !572, file: !3, line: 493, type: !12)
!583 = !DILocalVariable(name: "rfp", scope: !572, file: !3, line: 495, type: !416)
!584 = !DILocalVariable(name: "rlp", scope: !572, file: !3, line: 496, type: !298)
!585 = !DILocalVariable(name: "nw", scope: !572, file: !3, line: 497, type: !11)
!586 = !DILocalVariable(name: "nsize", scope: !572, file: !3, line: 497, type: !11)
!587 = !DILocalVariable(name: "np", scope: !572, file: !3, line: 498, type: !12)
!588 = !DILocalVariable(name: "keyword", scope: !572, file: !3, line: 499, type: !295)
!589 = !DILocalVariable(name: "value", scope: !572, file: !3, line: 499, type: !590)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !533)
!591 = !DILocalVariable(name: "newname", scope: !572, file: !3, line: 499, type: !590)
!592 = !DILocalVariable(name: "fname", scope: !572, file: !3, line: 500, type: !352)
!593 = !DILabel(scope: !572, name: "clean_up", file: !3, line: 621)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 128)
!597 = !DILocation(line: 499, column: 7, scope: !572, inlinedAt: !598)
!598 = distinct !DILocation(line: 443, column: 14, scope: !599)
!599 = distinct !DILexicalBlock(scope: !412, file: !3, line: 443, column: 6)
!600 = !DILocation(line: 851, column: 7, scope: !425, inlinedAt: !446)
!601 = !DILocalVariable(name: "r_name", scope: !602, file: !3, line: 808, type: !295)
!602 = distinct !DISubprogram(name: "bnd2reslib", scope: !3, file: !3, line: 805, type: !426, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!603 = !{!604, !605, !606, !601, !607, !608, !609}
!604 = !DILocalVariable(name: "bfp", arg: 1, scope: !602, file: !3, line: 805, type: !416)
!605 = !DILocalVariable(name: "rlp", arg: 2, scope: !602, file: !3, line: 805, type: !298)
!606 = !DILocalVariable(name: "line", scope: !602, file: !3, line: 807, type: !352)
!607 = !DILocalVariable(name: "llen", scope: !602, file: !3, line: 809, type: !11)
!608 = !DILocalVariable(name: "bi", scope: !602, file: !3, line: 810, type: !11)
!609 = !DILocalVariable(name: "bj", scope: !602, file: !3, line: 810, type: !11)
!610 = !DILocation(line: 808, column: 7, scope: !602, inlinedAt: !611)
!611 = distinct !DILocation(line: 454, column: 3, scope: !488)
!612 = !DILocation(line: 499, column: 20, scope: !572, inlinedAt: !598)
!613 = !DILocalVariable(name: "rkind", scope: !614, file: !3, line: 980, type: !590)
!614 = distinct !DISubprogram(name: "setrlibattrs", scope: !3, file: !3, line: 978, type: !615, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !298, !12}
!617 = !{!618, !619, !613, !620}
!618 = !DILocalVariable(name: "rlp", arg: 1, scope: !614, file: !3, line: 978, type: !298)
!619 = !DILocalVariable(name: "line", arg: 2, scope: !614, file: !3, line: 978, type: !12)
!620 = !DILocalVariable(name: "rakind", scope: !614, file: !3, line: 980, type: !590)
!621 = !DILocation(line: 980, column: 7, scope: !614, inlinedAt: !622)
!622 = distinct !DILocation(line: 774, column: 4, scope: !623, inlinedAt: !487)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 773, column: 42)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 773, column: 7)
!625 = distinct !DILexicalBlock(scope: !473, file: !3, line: 772, column: 45)
!626 = !DILocation(line: 499, column: 35, scope: !572, inlinedAt: !598)
!627 = !DILocation(line: 980, column: 21, scope: !614, inlinedAt: !622)
!628 = !DILocation(line: 499, column: 49, scope: !572, inlinedAt: !598)
!629 = !DILocation(line: 850, column: 7, scope: !425, inlinedAt: !446)
!630 = !DILocation(line: 939, column: 7, scope: !453, inlinedAt: !469)
!631 = !DILocation(line: 807, column: 7, scope: !602, inlinedAt: !611)
!632 = !DILocation(line: 764, column: 7, scope: !473, inlinedAt: !487)
!633 = !DILocation(line: 500, column: 7, scope: !572, inlinedAt: !598)
!634 = !DILocation(line: 0, scope: !412)
!635 = !DILocation(line: 441, column: 2, scope: !412)
!636 = !DILocation(line: 441, column: 7, scope: !412)
!637 = !DILocation(line: 0, scope: !572, inlinedAt: !598)
!638 = !DILocation(line: 499, column: 2, scope: !572, inlinedAt: !598)
!639 = !DILocation(line: 500, column: 2, scope: !572, inlinedAt: !598)
!640 = !DILocation(line: 502, column: 6, scope: !641, inlinedAt: !598)
!641 = distinct !DILexicalBlock(scope: !572, file: !3, line: 502, column: 6)
!642 = !DILocation(line: 502, column: 31, scope: !641, inlinedAt: !598)
!643 = !DILocation(line: 502, column: 6, scope: !572, inlinedAt: !598)
!644 = !DILocation(line: 503, column: 3, scope: !645, inlinedAt: !598)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 502, column: 40)
!646 = !DILocalVariable(name: "sname", arg: 1, scope: !647, file: !3, line: 637, type: !12)
!647 = distinct !DISubprogram(name: "mk_fname", scope: !3, file: !3, line: 637, type: !648, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !12, !12}
!650 = !{!646, !651}
!651 = !DILocalVariable(name: "fname", arg: 2, scope: !647, file: !3, line: 637, type: !12)
!652 = !DILocation(line: 0, scope: !647, inlinedAt: !653)
!653 = distinct !DILocation(line: 504, column: 3, scope: !645, inlinedAt: !598)
!654 = !DILocation(line: 640, column: 6, scope: !655, inlinedAt: !653)
!655 = distinct !DILexicalBlock(scope: !647, file: !3, line: 640, column: 6)
!656 = !{!381, !381, i64 0}
!657 = !DILocation(line: 640, column: 13, scope: !655, inlinedAt: !653)
!658 = !DILocation(line: 640, column: 20, scope: !655, inlinedAt: !653)
!659 = !DILocation(line: 641, column: 4, scope: !655, inlinedAt: !653)
!660 = !DILocation(line: 640, column: 6, scope: !647, inlinedAt: !653)
!661 = !DILocation(line: 642, column: 3, scope: !655, inlinedAt: !653)
!662 = !DILocation(line: 644, column: 3, scope: !655, inlinedAt: !653)
!663 = !DILocation(line: 505, column: 15, scope: !664, inlinedAt: !598)
!664 = distinct !DILexicalBlock(scope: !645, file: !3, line: 505, column: 7)
!665 = !DILocation(line: 505, column: 37, scope: !664, inlinedAt: !598)
!666 = !DILocation(line: 505, column: 7, scope: !645, inlinedAt: !598)
!667 = !DILocation(line: 506, column: 4, scope: !668, inlinedAt: !598)
!668 = distinct !DILexicalBlock(scope: !664, file: !3, line: 505, column: 46)
!669 = !DILocation(line: 507, column: 4, scope: !668, inlinedAt: !598)
!670 = !DILocation(line: 0, scope: !647, inlinedAt: !671)
!671 = distinct !DILocation(line: 510, column: 3, scope: !672, inlinedAt: !598)
!672 = distinct !DILexicalBlock(scope: !641, file: !3, line: 509, column: 7)
!673 = !DILocation(line: 640, column: 6, scope: !655, inlinedAt: !671)
!674 = !DILocation(line: 640, column: 13, scope: !655, inlinedAt: !671)
!675 = !DILocation(line: 640, column: 20, scope: !655, inlinedAt: !671)
!676 = !DILocation(line: 641, column: 4, scope: !655, inlinedAt: !671)
!677 = !DILocation(line: 640, column: 6, scope: !647, inlinedAt: !671)
!678 = !DILocation(line: 642, column: 3, scope: !655, inlinedAt: !671)
!679 = !DILocation(line: 644, column: 3, scope: !655, inlinedAt: !671)
!680 = !DILocation(line: 511, column: 15, scope: !681, inlinedAt: !598)
!681 = distinct !DILexicalBlock(scope: !672, file: !3, line: 511, column: 7)
!682 = !DILocation(line: 511, column: 37, scope: !681, inlinedAt: !598)
!683 = !DILocation(line: 511, column: 7, scope: !672, inlinedAt: !598)
!684 = !DILocation(line: 512, column: 4, scope: !685, inlinedAt: !598)
!685 = distinct !DILexicalBlock(scope: !681, file: !3, line: 511, column: 46)
!686 = !DILocation(line: 513, column: 4, scope: !685, inlinedAt: !598)
!687 = !DILocation(line: 0, scope: !641, inlinedAt: !598)
!688 = !DILocation(line: 517, column: 28, scope: !689, inlinedAt: !598)
!689 = distinct !DILexicalBlock(scope: !572, file: !3, line: 517, column: 6)
!690 = !DILocation(line: 517, column: 14, scope: !689, inlinedAt: !598)
!691 = !DILocation(line: 517, column: 59, scope: !689, inlinedAt: !598)
!692 = !DILocation(line: 517, column: 6, scope: !572, inlinedAt: !598)
!693 = !DILocation(line: 518, column: 3, scope: !694, inlinedAt: !598)
!694 = distinct !DILexicalBlock(scope: !689, file: !3, line: 517, column: 68)
!695 = !DILocation(line: 519, column: 3, scope: !694, inlinedAt: !598)
!696 = !DILocation(line: 520, column: 3, scope: !694, inlinedAt: !598)
!697 = !DILocation(line: 523, column: 10, scope: !572, inlinedAt: !598)
!698 = !DILocation(line: 524, column: 31, scope: !699, inlinedAt: !598)
!699 = distinct !DILexicalBlock(scope: !572, file: !3, line: 524, column: 6)
!700 = !DILocation(line: 524, column: 23, scope: !699, inlinedAt: !598)
!701 = !DILocation(line: 524, column: 58, scope: !699, inlinedAt: !598)
!702 = !DILocation(line: 524, column: 6, scope: !572, inlinedAt: !598)
!703 = !DILocation(line: 525, column: 3, scope: !704, inlinedAt: !598)
!704 = distinct !DILexicalBlock(scope: !699, file: !3, line: 524, column: 67)
!705 = !DILocation(line: 526, column: 3, scope: !704, inlinedAt: !598)
!706 = !DILocation(line: 527, column: 3, scope: !704, inlinedAt: !598)
!707 = !DILocation(line: 529, column: 2, scope: !572, inlinedAt: !598)
!708 = !DILocation(line: 530, column: 17, scope: !572, inlinedAt: !598)
!709 = !DILocation(line: 530, column: 15, scope: !572, inlinedAt: !598)
!710 = !{!389, !380, i64 0}
!711 = !DILocation(line: 531, column: 10, scope: !572, inlinedAt: !598)
!712 = !DILocation(line: 532, column: 7, scope: !572, inlinedAt: !598)
!713 = !DILocation(line: 532, column: 15, scope: !572, inlinedAt: !598)
!714 = !DILocation(line: 533, column: 7, scope: !572, inlinedAt: !598)
!715 = !DILocation(line: 534, column: 7, scope: !572, inlinedAt: !598)
!716 = !DILocation(line: 534, column: 21, scope: !572, inlinedAt: !598)
!717 = !DILocation(line: 541, column: 11, scope: !572, inlinedAt: !598)
!718 = !DILocation(line: 543, column: 7, scope: !719, inlinedAt: !598)
!719 = distinct !DILexicalBlock(scope: !572, file: !3, line: 543, column: 7)
!720 = !DILocation(line: 543, column: 32, scope: !719, inlinedAt: !598)
!721 = !DILocation(line: 543, column: 7, scope: !572, inlinedAt: !598)
!722 = !DILocation(line: 544, column: 10, scope: !723, inlinedAt: !598)
!723 = distinct !DILexicalBlock(scope: !719, file: !3, line: 543, column: 41)
!724 = !DILocation(line: 544, column: 3, scope: !723, inlinedAt: !598)
!725 = !DILocation(line: 0, scope: !726, inlinedAt: !598)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 574, column: 14)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 565, column: 14)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 554, column: 14)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 551, column: 14)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 547, column: 8)
!731 = distinct !DILexicalBlock(scope: !723, file: !3, line: 544, column: 46)
!732 = !DILocation(line: 0, scope: !655, inlinedAt: !733)
!733 = distinct !DILocation(line: 586, column: 5, scope: !734, inlinedAt: !598)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 585, column: 45)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 585, column: 14)
!736 = distinct !DILexicalBlock(scope: !726, file: !3, line: 576, column: 14)
!737 = !DILocation(line: 0, scope: !738, inlinedAt: !598)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 568, column: 14)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 566, column: 9)
!740 = distinct !DILexicalBlock(scope: !727, file: !3, line: 565, column: 50)
!741 = !DILocation(line: 537, column: 7, scope: !572, inlinedAt: !598)
!742 = !DILocation(line: 538, column: 7, scope: !572, inlinedAt: !598)
!743 = !DILocation(line: 539, column: 7, scope: !572, inlinedAt: !598)
!744 = !DILocation(line: 540, column: 7, scope: !572, inlinedAt: !598)
!745 = !DILocation(line: 545, column: 8, scope: !746, inlinedAt: !598)
!746 = distinct !DILexicalBlock(scope: !731, file: !3, line: 545, column: 8)
!747 = !DILocation(line: 545, column: 14, scope: !746, inlinedAt: !598)
!748 = !DILocation(line: 545, column: 8, scope: !731, inlinedAt: !598)
!749 = !DILocation(line: 547, column: 15, scope: !730, inlinedAt: !598)
!750 = !DILocation(line: 547, column: 8, scope: !731, inlinedAt: !598)
!751 = !DILocation(line: 554, column: 14, scope: !728, inlinedAt: !598)
!752 = !DILocation(line: 554, column: 40, scope: !728, inlinedAt: !598)
!753 = !DILocation(line: 554, column: 14, scope: !729, inlinedAt: !598)
!754 = !DILocation(line: 555, column: 9, scope: !755, inlinedAt: !598)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 555, column: 9)
!756 = distinct !DILexicalBlock(scope: !728, file: !3, line: 554, column: 46)
!757 = !DILocation(line: 555, column: 9, scope: !756, inlinedAt: !598)
!758 = !DILocation(line: 556, column: 21, scope: !755, inlinedAt: !598)
!759 = !DILocation(line: 556, column: 6, scope: !755, inlinedAt: !598)
!760 = !DILocation(line: 558, column: 21, scope: !761, inlinedAt: !598)
!761 = distinct !DILexicalBlock(scope: !755, file: !3, line: 557, column: 14)
!762 = !DILocation(line: 558, column: 6, scope: !761, inlinedAt: !598)
!763 = !DILocation(line: 559, column: 14, scope: !764, inlinedAt: !598)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 559, column: 14)
!765 = !DILocation(line: 559, column: 36, scope: !764, inlinedAt: !598)
!766 = !DILocation(line: 559, column: 14, scope: !761, inlinedAt: !598)
!767 = !DILocation(line: 560, column: 21, scope: !764, inlinedAt: !598)
!768 = !DILocation(line: 565, column: 14, scope: !727, inlinedAt: !598)
!769 = !DILocation(line: 565, column: 44, scope: !727, inlinedAt: !598)
!770 = !DILocation(line: 565, column: 14, scope: !728, inlinedAt: !598)
!771 = !DILocation(line: 566, column: 9, scope: !739, inlinedAt: !598)
!772 = !DILocation(line: 566, column: 35, scope: !739, inlinedAt: !598)
!773 = !DILocation(line: 566, column: 9, scope: !740, inlinedAt: !598)
!774 = !DILocation(line: 567, column: 25, scope: !739, inlinedAt: !598)
!775 = !{!389, !390, i64 20}
!776 = !DILocation(line: 567, column: 6, scope: !739, inlinedAt: !598)
!777 = !DILocation(line: 568, column: 14, scope: !738, inlinedAt: !598)
!778 = !DILocation(line: 568, column: 14, scope: !739, inlinedAt: !598)
!779 = !DILocation(line: 569, column: 25, scope: !738, inlinedAt: !598)
!780 = !DILocation(line: 574, column: 14, scope: !726, inlinedAt: !598)
!781 = !DILocation(line: 574, column: 14, scope: !727, inlinedAt: !598)
!782 = !DILocation(line: 0, scope: !647, inlinedAt: !783)
!783 = distinct !DILocation(line: 575, column: 5, scope: !784, inlinedAt: !598)
!784 = distinct !DILexicalBlock(scope: !726, file: !3, line: 574, column: 45)
!785 = !DILocation(line: 640, column: 6, scope: !655, inlinedAt: !783)
!786 = !DILocation(line: 640, column: 13, scope: !655, inlinedAt: !783)
!787 = !DILocation(line: 641, column: 4, scope: !655, inlinedAt: !783)
!788 = !DILocation(line: 640, column: 20, scope: !655, inlinedAt: !783)
!789 = !DILocation(line: 642, column: 3, scope: !655, inlinedAt: !783)
!790 = !DILocation(line: 644, column: 3, scope: !655, inlinedAt: !783)
!791 = !DILocation(line: 0, scope: !647, inlinedAt: !792)
!792 = distinct !DILocation(line: 577, column: 5, scope: !793, inlinedAt: !598)
!793 = distinct !DILexicalBlock(scope: !736, file: !3, line: 576, column: 45)
!794 = !DILocation(line: 640, column: 6, scope: !655, inlinedAt: !792)
!795 = !DILocation(line: 640, column: 13, scope: !655, inlinedAt: !792)
!796 = !DILocation(line: 641, column: 4, scope: !655, inlinedAt: !792)
!797 = !DILocation(line: 640, column: 20, scope: !655, inlinedAt: !792)
!798 = !DILocation(line: 642, column: 3, scope: !655, inlinedAt: !792)
!799 = !DILocation(line: 644, column: 3, scope: !655, inlinedAt: !792)
!800 = !DILocation(line: 578, column: 18, scope: !801, inlinedAt: !598)
!801 = distinct !DILexicalBlock(scope: !793, file: !3, line: 578, column: 9)
!802 = !DILocation(line: 578, column: 40, scope: !801, inlinedAt: !598)
!803 = !DILocation(line: 578, column: 9, scope: !793, inlinedAt: !598)
!804 = !DILocation(line: 579, column: 6, scope: !805, inlinedAt: !598)
!805 = distinct !DILexicalBlock(scope: !801, file: !3, line: 578, column: 49)
!806 = !DILocation(line: 580, column: 6, scope: !805, inlinedAt: !598)
!807 = !DILocation(line: 621, column: 1, scope: !572, inlinedAt: !598)
!808 = !DILocation(line: 622, column: 2, scope: !572, inlinedAt: !598)
!809 = !DILocation(line: 624, column: 7, scope: !810, inlinedAt: !598)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 623, column: 19)
!811 = distinct !DILexicalBlock(scope: !572, file: !3, line: 623, column: 6)
!812 = !DILocation(line: 0, scope: !647, inlinedAt: !733)
!813 = !DILocation(line: 640, column: 6, scope: !655, inlinedAt: !733)
!814 = !DILocation(line: 640, column: 13, scope: !655, inlinedAt: !733)
!815 = !DILocation(line: 641, column: 4, scope: !655, inlinedAt: !733)
!816 = !DILocation(line: 640, column: 20, scope: !655, inlinedAt: !733)
!817 = !DILocation(line: 642, column: 3, scope: !655, inlinedAt: !733)
!818 = !DILocation(line: 644, column: 3, scope: !655, inlinedAt: !733)
!819 = !DILocation(line: 587, column: 18, scope: !820, inlinedAt: !598)
!820 = distinct !DILexicalBlock(scope: !734, file: !3, line: 587, column: 9)
!821 = !DILocation(line: 587, column: 40, scope: !820, inlinedAt: !598)
!822 = !DILocation(line: 587, column: 9, scope: !734, inlinedAt: !598)
!823 = !DILocation(line: 588, column: 6, scope: !824, inlinedAt: !598)
!824 = distinct !DILexicalBlock(scope: !820, file: !3, line: 587, column: 49)
!825 = !DILocation(line: 589, column: 6, scope: !824, inlinedAt: !598)
!826 = !DILocation(line: 592, column: 6, scope: !824, inlinedAt: !598)
!827 = !DILocation(line: 594, column: 14, scope: !828, inlinedAt: !598)
!828 = distinct !DILexicalBlock(scope: !735, file: !3, line: 594, column: 14)
!829 = !DILocation(line: 594, column: 38, scope: !828, inlinedAt: !598)
!830 = !DILocation(line: 594, column: 14, scope: !735, inlinedAt: !598)
!831 = !DILocation(line: 0, scope: !647, inlinedAt: !832)
!832 = distinct !DILocation(line: 595, column: 5, scope: !833, inlinedAt: !598)
!833 = distinct !DILexicalBlock(scope: !828, file: !3, line: 594, column: 44)
!834 = !DILocation(line: 640, column: 6, scope: !655, inlinedAt: !832)
!835 = !DILocation(line: 640, column: 13, scope: !655, inlinedAt: !832)
!836 = !DILocation(line: 641, column: 4, scope: !655, inlinedAt: !832)
!837 = !DILocation(line: 640, column: 20, scope: !655, inlinedAt: !832)
!838 = !DILocation(line: 642, column: 3, scope: !655, inlinedAt: !832)
!839 = !DILocation(line: 644, column: 3, scope: !655, inlinedAt: !832)
!840 = !DILocation(line: 596, column: 18, scope: !841, inlinedAt: !598)
!841 = distinct !DILexicalBlock(scope: !833, file: !3, line: 596, column: 9)
!842 = !DILocation(line: 596, column: 40, scope: !841, inlinedAt: !598)
!843 = !DILocation(line: 596, column: 9, scope: !833, inlinedAt: !598)
!844 = !DILocation(line: 597, column: 6, scope: !845, inlinedAt: !598)
!845 = distinct !DILexicalBlock(scope: !841, file: !3, line: 596, column: 49)
!846 = !DILocation(line: 598, column: 6, scope: !845, inlinedAt: !598)
!847 = !DILocation(line: 601, column: 6, scope: !845, inlinedAt: !598)
!848 = !DILocation(line: 603, column: 14, scope: !849, inlinedAt: !598)
!849 = distinct !DILexicalBlock(scope: !828, file: !3, line: 603, column: 14)
!850 = !DILocation(line: 603, column: 14, scope: !828, inlinedAt: !598)
!851 = !DILocation(line: 0, scope: !647, inlinedAt: !852)
!852 = distinct !DILocation(line: 604, column: 5, scope: !853, inlinedAt: !598)
!853 = distinct !DILexicalBlock(scope: !849, file: !3, line: 603, column: 45)
!854 = !DILocation(line: 640, column: 6, scope: !655, inlinedAt: !852)
!855 = !DILocation(line: 640, column: 13, scope: !655, inlinedAt: !852)
!856 = !DILocation(line: 641, column: 4, scope: !655, inlinedAt: !852)
!857 = !DILocation(line: 640, column: 20, scope: !655, inlinedAt: !852)
!858 = !DILocation(line: 642, column: 3, scope: !655, inlinedAt: !852)
!859 = !DILocation(line: 644, column: 3, scope: !655, inlinedAt: !852)
!860 = !DILocation(line: 605, column: 18, scope: !861, inlinedAt: !598)
!861 = distinct !DILexicalBlock(scope: !853, file: !3, line: 605, column: 9)
!862 = !DILocation(line: 605, column: 40, scope: !861, inlinedAt: !598)
!863 = !DILocation(line: 605, column: 9, scope: !853, inlinedAt: !598)
!864 = !DILocation(line: 606, column: 6, scope: !865, inlinedAt: !598)
!865 = distinct !DILexicalBlock(scope: !861, file: !3, line: 605, column: 49)
!866 = !DILocation(line: 607, column: 6, scope: !865, inlinedAt: !598)
!867 = !DILocation(line: 610, column: 6, scope: !865, inlinedAt: !598)
!868 = distinct !{!868, !724, !869}
!869 = !DILocation(line: 616, column: 3, scope: !723, inlinedAt: !598)
!870 = !DILocation(line: 0, scope: !647, inlinedAt: !871)
!871 = distinct !DILocation(line: 618, column: 3, scope: !872, inlinedAt: !598)
!872 = distinct !DILexicalBlock(scope: !719, file: !3, line: 617, column: 7)
!873 = !DILocation(line: 640, column: 6, scope: !655, inlinedAt: !871)
!874 = !DILocation(line: 640, column: 13, scope: !655, inlinedAt: !871)
!875 = !DILocation(line: 640, column: 20, scope: !655, inlinedAt: !871)
!876 = !DILocation(line: 641, column: 4, scope: !655, inlinedAt: !871)
!877 = !DILocation(line: 640, column: 6, scope: !647, inlinedAt: !871)
!878 = !DILocation(line: 642, column: 3, scope: !655, inlinedAt: !871)
!879 = !DILocation(line: 644, column: 3, scope: !655, inlinedAt: !871)
!880 = !DILocation(line: 624, column: 7, scope: !881, inlinedAt: !598)
!881 = distinct !DILexicalBlock(scope: !810, file: !3, line: 624, column: 7)
!882 = !DILocation(line: 623, column: 6, scope: !572, inlinedAt: !598)
!883 = !DILocation(line: 624, column: 14, scope: !881, inlinedAt: !598)
!884 = !DILocation(line: 625, column: 7, scope: !885, inlinedAt: !598)
!885 = distinct !DILexicalBlock(scope: !810, file: !3, line: 625, column: 7)
!886 = !DILocation(line: 625, column: 7, scope: !810, inlinedAt: !598)
!887 = !DILocation(line: 625, column: 14, scope: !885, inlinedAt: !598)
!888 = !DILocation(line: 626, column: 7, scope: !889, inlinedAt: !598)
!889 = distinct !DILexicalBlock(scope: !810, file: !3, line: 626, column: 7)
!890 = !DILocation(line: 626, column: 7, scope: !810, inlinedAt: !598)
!891 = !DILocation(line: 626, column: 14, scope: !889, inlinedAt: !598)
!892 = !DILocation(line: 627, column: 7, scope: !893, inlinedAt: !598)
!893 = distinct !DILexicalBlock(scope: !810, file: !3, line: 627, column: 7)
!894 = !DILocation(line: 627, column: 7, scope: !810, inlinedAt: !598)
!895 = !DILocation(line: 627, column: 14, scope: !893, inlinedAt: !598)
!896 = !DILocation(line: 628, column: 11, scope: !810, inlinedAt: !598)
!897 = !DILocation(line: 629, column: 11, scope: !810, inlinedAt: !598)
!898 = !DILocation(line: 630, column: 3, scope: !810, inlinedAt: !598)
!899 = !DILocation(line: 631, column: 3, scope: !810, inlinedAt: !598)
!900 = !DILocation(line: 632, column: 2, scope: !810, inlinedAt: !598)
!901 = !DILocation(line: 635, column: 1, scope: !572, inlinedAt: !598)
!902 = !DILocation(line: 444, column: 15, scope: !599)
!903 = !DILocation(line: 443, column: 6, scope: !412)
!904 = !DILocation(line: 478, column: 7, scope: !905, inlinedAt: !906)
!905 = distinct !DILexicalBlock(scope: !324, file: !3, line: 478, column: 6)
!906 = distinct !DILocation(line: 449, column: 2, scope: !412)
!907 = !DILocation(line: 478, column: 6, scope: !324, inlinedAt: !906)
!908 = !DILocation(line: 480, column: 7, scope: !324, inlinedAt: !906)
!909 = !DILocation(line: 0, scope: !324, inlinedAt: !906)
!910 = !DILocation(line: 481, column: 2, scope: !911, inlinedAt: !906)
!911 = distinct !DILexicalBlock(scope: !324, file: !3, line: 481, column: 2)
!912 = !DILocation(line: 482, column: 3, scope: !913, inlinedAt: !906)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 481, column: 51)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 481, column: 2)
!915 = !DILocation(line: 483, column: 30, scope: !913, inlinedAt: !906)
!916 = !DILocation(line: 483, column: 7, scope: !913, inlinedAt: !906)
!917 = !DILocation(line: 483, column: 18, scope: !913, inlinedAt: !906)
!918 = !{!919, !380, i64 0}
!919 = !{!"atom_t", !380, i64 0, !380, i64 8, !390, i64 16, !390, i64 20, !381, i64 24, !380, i64 56, !920, i64 64, !920, i64 72, !920, i64 80, !920, i64 88, !380, i64 96, !390, i64 104, !920, i64 112, !920, i64 120, !390, i64 128, !390, i64 132, !380, i64 136, !381, i64 144, !920, i64 168}
!920 = !{!"double", !381, i64 0}
!921 = !DILocation(line: 484, column: 22, scope: !922, inlinedAt: !906)
!922 = distinct !DILexicalBlock(scope: !913, file: !3, line: 484, column: 7)
!923 = !DILocation(line: 484, column: 7, scope: !913, inlinedAt: !906)
!924 = !DILocation(line: 485, column: 13, scope: !925, inlinedAt: !906)
!925 = distinct !DILexicalBlock(scope: !922, file: !3, line: 484, column: 31)
!926 = !DILocation(line: 485, column: 4, scope: !925, inlinedAt: !906)
!927 = !DILocation(line: 487, column: 4, scope: !925, inlinedAt: !906)
!928 = !DILocation(line: 481, column: 41, scope: !914, inlinedAt: !906)
!929 = !DILocation(line: 481, column: 47, scope: !914, inlinedAt: !906)
!930 = !DILocation(line: 481, column: 28, scope: !914, inlinedAt: !906)
!931 = distinct !{!931, !910, !932}
!932 = !DILocation(line: 489, column: 2, scope: !911, inlinedAt: !906)
!933 = !DILocation(line: 450, column: 7, scope: !489)
!934 = !DILocation(line: 450, column: 7, scope: !412)
!935 = !DILocation(line: 0, scope: !495, inlinedAt: !555)
!936 = !DILocation(line: 650, column: 2, scope: !495, inlinedAt: !555)
!937 = !DILocation(line: 653, column: 2, scope: !495, inlinedAt: !555)
!938 = !DILocation(line: 655, column: 2, scope: !495, inlinedAt: !555)
!939 = !DILocation(line: 656, column: 2, scope: !495, inlinedAt: !555)
!940 = !DILocation(line: 657, column: 2, scope: !495, inlinedAt: !555)
!941 = !DILocation(line: 658, column: 2, scope: !495, inlinedAt: !555)
!942 = !DILocation(line: 660, column: 10, scope: !495, inlinedAt: !555)
!943 = !{!390, !390, i64 0}
!944 = !DILocation(line: 661, column: 7, scope: !495, inlinedAt: !555)
!945 = !DILocation(line: 665, column: 52, scope: !495, inlinedAt: !555)
!946 = !DILocation(line: 665, column: 12, scope: !495, inlinedAt: !555)
!947 = !DILocation(line: 667, column: 23, scope: !948, inlinedAt: !555)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 667, column: 2)
!949 = distinct !DILexicalBlock(scope: !495, file: !3, line: 667, column: 2)
!950 = !DILocation(line: 667, column: 21, scope: !948, inlinedAt: !555)
!951 = !DILocation(line: 667, column: 2, scope: !949, inlinedAt: !555)
!952 = !DILocation(line: 0, scope: !953, inlinedAt: !555)
!953 = distinct !DILexicalBlock(scope: !948, file: !3, line: 667, column: 43)
!954 = !DILocation(line: 671, column: 33, scope: !953, inlinedAt: !555)
!955 = !DILocation(line: 671, column: 3, scope: !953, inlinedAt: !555)
!956 = !DILocation(line: 672, column: 3, scope: !953, inlinedAt: !555)
!957 = !DILocation(line: 673, column: 3, scope: !953, inlinedAt: !555)
!958 = !DILocation(line: 674, column: 13, scope: !953, inlinedAt: !555)
!959 = !DILocation(line: 678, column: 13, scope: !953, inlinedAt: !555)
!960 = !DILocation(line: 699, column: 13, scope: !953, inlinedAt: !555)
!961 = !DILocation(line: 718, column: 18, scope: !962, inlinedAt: !555)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 718, column: 3)
!963 = distinct !DILexicalBlock(scope: !953, file: !3, line: 718, column: 3)
!964 = !DILocation(line: 718, column: 16, scope: !962, inlinedAt: !555)
!965 = !DILocation(line: 718, column: 3, scope: !963, inlinedAt: !555)
!966 = !DILocation(line: 719, column: 10, scope: !967, inlinedAt: !555)
!967 = distinct !DILexicalBlock(scope: !962, file: !3, line: 718, column: 32)
!968 = !DILocation(line: 720, column: 4, scope: !967, inlinedAt: !555)
!969 = !DILocation(line: 721, column: 16, scope: !967, inlinedAt: !555)
!970 = !DILocation(line: 721, column: 28, scope: !967, inlinedAt: !555)
!971 = !DILocation(line: 721, column: 4, scope: !967, inlinedAt: !555)
!972 = !DILocation(line: 722, column: 21, scope: !967, inlinedAt: !555)
!973 = !{!920, !920, i64 0}
!974 = !DILocation(line: 722, column: 8, scope: !967, inlinedAt: !555)
!975 = !DILocation(line: 722, column: 19, scope: !967, inlinedAt: !555)
!976 = !{!919, !920, i64 64}
!977 = !DILocation(line: 723, column: 21, scope: !967, inlinedAt: !555)
!978 = !DILocation(line: 723, column: 8, scope: !967, inlinedAt: !555)
!979 = !DILocation(line: 723, column: 19, scope: !967, inlinedAt: !555)
!980 = !DILocation(line: 724, column: 21, scope: !967, inlinedAt: !555)
!981 = !DILocation(line: 724, column: 4, scope: !967, inlinedAt: !555)
!982 = !DILocation(line: 724, column: 19, scope: !967, inlinedAt: !555)
!983 = !DILocation(line: 725, column: 21, scope: !967, inlinedAt: !555)
!984 = !DILocation(line: 725, column: 4, scope: !967, inlinedAt: !555)
!985 = !DILocation(line: 725, column: 19, scope: !967, inlinedAt: !555)
!986 = !DILocation(line: 718, column: 28, scope: !962, inlinedAt: !555)
!987 = distinct !{!987, !965, !988}
!988 = !DILocation(line: 726, column: 3, scope: !963, inlinedAt: !555)
!989 = !DILocation(line: 728, column: 15, scope: !990, inlinedAt: !555)
!990 = distinct !DILexicalBlock(scope: !953, file: !3, line: 728, column: 7)
!991 = !DILocation(line: 728, column: 7, scope: !953, inlinedAt: !555)
!992 = !DILocation(line: 729, column: 4, scope: !990, inlinedAt: !555)
!993 = !DILocation(line: 733, column: 13, scope: !953, inlinedAt: !555)
!994 = !DILocation(line: 752, column: 18, scope: !995, inlinedAt: !555)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 752, column: 3)
!996 = distinct !DILexicalBlock(scope: !953, file: !3, line: 752, column: 3)
!997 = !DILocation(line: 752, column: 16, scope: !995, inlinedAt: !555)
!998 = !DILocation(line: 752, column: 3, scope: !996, inlinedAt: !555)
!999 = !DILocation(line: 752, column: 28, scope: !995, inlinedAt: !555)
!1000 = !DILocation(line: 753, column: 22, scope: !1001, inlinedAt: !555)
!1001 = distinct !DILexicalBlock(scope: !995, file: !3, line: 752, column: 32)
!1002 = !DILocation(line: 754, column: 22, scope: !1001, inlinedAt: !555)
!1003 = !DILocation(line: 754, column: 4, scope: !1001, inlinedAt: !555)
!1004 = !DILocation(line: 754, column: 20, scope: !1001, inlinedAt: !555)
!1005 = distinct !{!1005, !998, !1006, !1007}
!1006 = !DILocation(line: 755, column: 3, scope: !996, inlinedAt: !555)
!1007 = !{!"llvm.loop.isvectorized", i32 1}
!1008 = distinct !{!1008, !1009}
!1009 = !{!"llvm.loop.unroll.disable"}
!1010 = !DILocation(line: 753, column: 4, scope: !1001, inlinedAt: !555)
!1011 = !DILocation(line: 753, column: 20, scope: !1001, inlinedAt: !555)
!1012 = distinct !{!1012, !998, !1006, !1013, !1007}
!1013 = !{!"llvm.loop.unroll.runtime.disable"}
!1014 = !DILocation(line: 758, column: 10, scope: !1015, inlinedAt: !555)
!1015 = distinct !DILexicalBlock(scope: !953, file: !3, line: 757, column: 10)
!1016 = !DILocation(line: 667, column: 39, scope: !948, inlinedAt: !555)
!1017 = distinct !{!1017, !951, !1018}
!1018 = !DILocation(line: 759, column: 2, scope: !949, inlinedAt: !555)
!1019 = !DILocation(line: 760, column: 1, scope: !495, inlinedAt: !555)
!1020 = !DILocation(line: 452, column: 2, scope: !556)
!1021 = !DILocation(line: 0, scope: !473, inlinedAt: !487)
!1022 = !DILocation(line: 764, column: 2, scope: !473, inlinedAt: !487)
!1023 = !DILocation(line: 765, column: 2, scope: !473, inlinedAt: !487)
!1024 = !DILocation(line: 766, column: 2, scope: !473, inlinedAt: !487)
!1025 = !DILocation(line: 767, column: 2, scope: !473, inlinedAt: !487)
!1026 = !DILocation(line: 770, column: 10, scope: !473, inlinedAt: !487)
!1027 = !DILocation(line: 771, column: 11, scope: !473, inlinedAt: !487)
!1028 = !DILocation(line: 772, column: 9, scope: !473, inlinedAt: !487)
!1029 = !DILocation(line: 772, column: 2, scope: !473, inlinedAt: !487)
!1030 = !DILocation(line: 0, scope: !1031, inlinedAt: !487)
!1031 = distinct !DILexicalBlock(scope: !624, file: !3, line: 775, column: 13)
!1032 = !DILocation(line: 0, scope: !1033, inlinedAt: !487)
!1033 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 776, column: 39)
!1034 = !DILocation(line: 0, scope: !1035, inlinedAt: !622)
!1035 = distinct !DILexicalBlock(scope: !614, file: !3, line: 984, column: 6)
!1036 = !DILocation(line: 0, scope: !1037, inlinedAt: !622)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 986, column: 11)
!1038 = !DILocation(line: 0, scope: !1039, inlinedAt: !622)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 992, column: 11)
!1040 = distinct !DILexicalBlock(scope: !614, file: !3, line: 990, column: 6)
!1041 = !DILocation(line: 773, column: 7, scope: !624, inlinedAt: !487)
!1042 = !DILocation(line: 773, column: 36, scope: !624, inlinedAt: !487)
!1043 = !DILocation(line: 773, column: 7, scope: !625, inlinedAt: !487)
!1044 = !DILocation(line: 0, scope: !614, inlinedAt: !622)
!1045 = !DILocation(line: 980, column: 2, scope: !614, inlinedAt: !622)
!1046 = !DILocation(line: 982, column: 6, scope: !1047, inlinedAt: !622)
!1047 = distinct !DILexicalBlock(scope: !614, file: !3, line: 982, column: 6)
!1048 = !DILocation(line: 982, column: 59, scope: !1047, inlinedAt: !622)
!1049 = !DILocation(line: 982, column: 6, scope: !614, inlinedAt: !622)
!1050 = !DILocation(line: 984, column: 6, scope: !1035, inlinedAt: !622)
!1051 = !DILocation(line: 984, column: 6, scope: !614, inlinedAt: !622)
!1052 = !DILocation(line: 987, column: 3, scope: !1037, inlinedAt: !622)
!1053 = !DILocation(line: 988, column: 11, scope: !1054, inlinedAt: !622)
!1054 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 988, column: 11)
!1055 = !DILocation(line: 988, column: 33, scope: !1054, inlinedAt: !622)
!1056 = !DILocation(line: 988, column: 11, scope: !1037, inlinedAt: !622)
!1057 = !DILocation(line: 990, column: 6, scope: !1040, inlinedAt: !622)
!1058 = !DILocation(line: 990, column: 33, scope: !1040, inlinedAt: !622)
!1059 = !DILocation(line: 990, column: 6, scope: !614, inlinedAt: !622)
!1060 = !DILocation(line: 991, column: 22, scope: !1040, inlinedAt: !622)
!1061 = !DILocation(line: 991, column: 3, scope: !1040, inlinedAt: !622)
!1062 = !DILocation(line: 992, column: 11, scope: !1039, inlinedAt: !622)
!1063 = !DILocation(line: 992, column: 11, scope: !1040, inlinedAt: !622)
!1064 = !DILocation(line: 993, column: 22, scope: !1039, inlinedAt: !622)
!1065 = !DILocation(line: 993, column: 3, scope: !1039, inlinedAt: !622)
!1066 = !DILocation(line: 994, column: 1, scope: !614, inlinedAt: !622)
!1067 = !DILocation(line: 775, column: 3, scope: !623, inlinedAt: !487)
!1068 = !DILocation(line: 775, column: 13, scope: !1031, inlinedAt: !487)
!1069 = !DILocation(line: 775, column: 45, scope: !1031, inlinedAt: !487)
!1070 = !DILocation(line: 776, column: 4, scope: !1031, inlinedAt: !487)
!1071 = !DILocation(line: 776, column: 33, scope: !1031, inlinedAt: !487)
!1072 = !DILocation(line: 775, column: 13, scope: !624, inlinedAt: !487)
!1073 = !DILocation(line: 778, column: 4, scope: !1033, inlinedAt: !487)
!1074 = !DILocation(line: 785, column: 8, scope: !1075, inlinedAt: !487)
!1075 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 785, column: 8)
!1076 = !DILocation(line: 785, column: 34, scope: !1075, inlinedAt: !487)
!1077 = !DILocation(line: 785, column: 8, scope: !1033, inlinedAt: !487)
!1078 = !DILocation(line: 786, column: 9, scope: !1079, inlinedAt: !487)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 786, column: 9)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 785, column: 40)
!1081 = !DILocation(line: 786, column: 17, scope: !1079, inlinedAt: !487)
!1082 = !DILocation(line: 786, column: 9, scope: !1080, inlinedAt: !487)
!1083 = !DILocation(line: 787, column: 6, scope: !1084, inlinedAt: !487)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 786, column: 22)
!1085 = !DILocation(line: 788, column: 14, scope: !1084, inlinedAt: !487)
!1086 = !DILocation(line: 789, column: 5, scope: !1084, inlinedAt: !487)
!1087 = !DILocation(line: 790, column: 5, scope: !1080, inlinedAt: !487)
!1088 = !DILocation(line: 791, column: 4, scope: !1080, inlinedAt: !487)
!1089 = !DILocation(line: 792, column: 17, scope: !1033, inlinedAt: !487)
!1090 = !DILocation(line: 792, column: 10, scope: !1033, inlinedAt: !487)
!1091 = !DILocation(line: 793, column: 4, scope: !1033, inlinedAt: !487)
!1092 = !DILocation(line: 794, column: 16, scope: !1033, inlinedAt: !487)
!1093 = !DILocation(line: 794, column: 4, scope: !1033, inlinedAt: !487)
!1094 = !DILocation(line: 795, column: 21, scope: !1033, inlinedAt: !487)
!1095 = !DILocation(line: 795, column: 8, scope: !1033, inlinedAt: !487)
!1096 = !DILocation(line: 795, column: 19, scope: !1033, inlinedAt: !487)
!1097 = !DILocation(line: 796, column: 21, scope: !1033, inlinedAt: !487)
!1098 = !DILocation(line: 796, column: 4, scope: !1033, inlinedAt: !487)
!1099 = !DILocation(line: 796, column: 19, scope: !1033, inlinedAt: !487)
!1100 = !DILocation(line: 797, column: 21, scope: !1033, inlinedAt: !487)
!1101 = !DILocation(line: 797, column: 4, scope: !1033, inlinedAt: !487)
!1102 = !DILocation(line: 797, column: 19, scope: !1033, inlinedAt: !487)
!1103 = !DILocation(line: 798, column: 11, scope: !1033, inlinedAt: !487)
!1104 = !DILocation(line: 799, column: 3, scope: !1033, inlinedAt: !487)
!1105 = distinct !{!1105, !1029, !1106}
!1106 = !DILocation(line: 800, column: 2, scope: !473, inlinedAt: !487)
!1107 = !DILocation(line: 801, column: 6, scope: !1108, inlinedAt: !487)
!1108 = distinct !DILexicalBlock(scope: !473, file: !3, line: 801, column: 6)
!1109 = !DILocation(line: 801, column: 14, scope: !1108, inlinedAt: !487)
!1110 = !DILocation(line: 801, column: 6, scope: !473, inlinedAt: !487)
!1111 = !DILocation(line: 802, column: 3, scope: !1108, inlinedAt: !487)
!1112 = !DILocation(line: 803, column: 1, scope: !473, inlinedAt: !487)
!1113 = !DILocation(line: 0, scope: !602, inlinedAt: !611)
!1114 = !DILocation(line: 807, column: 2, scope: !602, inlinedAt: !611)
!1115 = !DILocation(line: 808, column: 2, scope: !602, inlinedAt: !611)
!1116 = !DILocation(line: 810, column: 2, scope: !602, inlinedAt: !611)
!1117 = !DILocation(line: 812, column: 10, scope: !602, inlinedAt: !611)
!1118 = !DILocation(line: 813, column: 10, scope: !602, inlinedAt: !611)
!1119 = !DILocation(line: 814, column: 9, scope: !602, inlinedAt: !611)
!1120 = !DILocation(line: 814, column: 2, scope: !602, inlinedAt: !611)
!1121 = !DILocation(line: 815, column: 7, scope: !1122, inlinedAt: !611)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 815, column: 7)
!1123 = distinct !DILexicalBlock(scope: !602, file: !3, line: 814, column: 45)
!1124 = !DILocation(line: 815, column: 13, scope: !1122, inlinedAt: !611)
!1125 = !DILocation(line: 815, column: 7, scope: !1123, inlinedAt: !611)
!1126 = !DILocation(line: 816, column: 8, scope: !1127, inlinedAt: !611)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 816, column: 8)
!1128 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 815, column: 21)
!1129 = !DILocation(line: 816, column: 39, scope: !1127, inlinedAt: !611)
!1130 = !DILocation(line: 816, column: 8, scope: !1128, inlinedAt: !611)
!1131 = !DILocation(line: 817, column: 12, scope: !1132, inlinedAt: !611)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 816, column: 45)
!1133 = !DILocation(line: 818, column: 12, scope: !1132, inlinedAt: !611)
!1134 = !DILocation(line: 819, column: 5, scope: !1132, inlinedAt: !611)
!1135 = !DILocation(line: 820, column: 5, scope: !1132, inlinedAt: !611)
!1136 = !DILocation(line: 822, column: 5, scope: !1132, inlinedAt: !611)
!1137 = !DILocation(line: 823, column: 14, scope: !1138, inlinedAt: !611)
!1138 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 823, column: 14)
!1139 = !DILocation(line: 823, column: 22, scope: !1138, inlinedAt: !611)
!1140 = !DILocation(line: 823, column: 14, scope: !1127, inlinedAt: !611)
!1141 = !DILocation(line: 824, column: 5, scope: !1142, inlinedAt: !611)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 823, column: 27)
!1143 = !DILocation(line: 825, column: 5, scope: !1142, inlinedAt: !611)
!1144 = !DILocation(line: 826, column: 13, scope: !1142, inlinedAt: !611)
!1145 = !DILocation(line: 827, column: 4, scope: !1142, inlinedAt: !611)
!1146 = !DILocation(line: 828, column: 5, scope: !1138, inlinedAt: !611)
!1147 = !DILocation(line: 830, column: 8, scope: !1148, inlinedAt: !611)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 830, column: 8)
!1149 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 829, column: 8)
!1150 = !DILocation(line: 830, column: 42, scope: !1148, inlinedAt: !611)
!1151 = !DILocation(line: 830, column: 8, scope: !1149, inlinedAt: !611)
!1152 = !DILocation(line: 831, column: 12, scope: !1153, inlinedAt: !611)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 830, column: 48)
!1154 = !DILocation(line: 832, column: 12, scope: !1153, inlinedAt: !611)
!1155 = !DILocation(line: 833, column: 5, scope: !1153, inlinedAt: !611)
!1156 = !DILocation(line: 834, column: 5, scope: !1153, inlinedAt: !611)
!1157 = !DILocation(line: 836, column: 5, scope: !1153, inlinedAt: !611)
!1158 = !DILocation(line: 838, column: 29, scope: !1159, inlinedAt: !611)
!1159 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 837, column: 9)
!1160 = !DILocation(line: 838, column: 12, scope: !1159, inlinedAt: !611)
!1161 = !DILocation(line: 838, column: 5, scope: !1159, inlinedAt: !611)
!1162 = !DILocation(line: 838, column: 27, scope: !1159, inlinedAt: !611)
!1163 = !DILocation(line: 839, column: 29, scope: !1159, inlinedAt: !611)
!1164 = !DILocation(line: 839, column: 5, scope: !1159, inlinedAt: !611)
!1165 = !DILocation(line: 839, column: 27, scope: !1159, inlinedAt: !611)
!1166 = !DILocation(line: 840, column: 12, scope: !1159, inlinedAt: !611)
!1167 = distinct !{!1167, !1120, !1168}
!1168 = !DILocation(line: 843, column: 2, scope: !602, inlinedAt: !611)
!1169 = !DILocation(line: 844, column: 6, scope: !1170, inlinedAt: !611)
!1170 = distinct !DILexicalBlock(scope: !602, file: !3, line: 844, column: 6)
!1171 = !DILocation(line: 844, column: 14, scope: !1170, inlinedAt: !611)
!1172 = !DILocation(line: 844, column: 6, scope: !602, inlinedAt: !611)
!1173 = !DILocation(line: 845, column: 3, scope: !1170, inlinedAt: !611)
!1174 = !DILocation(line: 846, column: 1, scope: !602, inlinedAt: !611)
!1175 = !DILocation(line: 455, column: 3, scope: !488)
!1176 = !DILocation(line: 456, column: 3, scope: !488)
!1177 = !DILocation(line: 459, column: 6, scope: !471)
!1178 = !DILocation(line: 459, column: 6, scope: !412)
!1179 = !DILocation(line: 0, scope: !453, inlinedAt: !469)
!1180 = !DILocation(line: 939, column: 2, scope: !453, inlinedAt: !469)
!1181 = !DILocation(line: 940, column: 2, scope: !453, inlinedAt: !469)
!1182 = !DILocation(line: 941, column: 2, scope: !453, inlinedAt: !469)
!1183 = !DILocation(line: 942, column: 2, scope: !453, inlinedAt: !469)
!1184 = !DILocation(line: 945, column: 10, scope: !453, inlinedAt: !469)
!1185 = !DILocation(line: 946, column: 11, scope: !453, inlinedAt: !469)
!1186 = !DILocation(line: 947, column: 9, scope: !453, inlinedAt: !469)
!1187 = !DILocation(line: 947, column: 2, scope: !453, inlinedAt: !469)
!1188 = !DILocation(line: 0, scope: !1189, inlinedAt: !469)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 950, column: 13)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 948, column: 7)
!1191 = distinct !DILexicalBlock(scope: !453, file: !3, line: 947, column: 45)
!1192 = !DILocation(line: 0, scope: !1193, inlinedAt: !469)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 951, column: 39)
!1194 = !DILocation(line: 948, column: 7, scope: !1190, inlinedAt: !469)
!1195 = !DILocation(line: 948, column: 33, scope: !1190, inlinedAt: !469)
!1196 = !DILocation(line: 948, column: 7, scope: !1191, inlinedAt: !469)
!1197 = !DILocation(line: 950, column: 13, scope: !1189, inlinedAt: !469)
!1198 = !DILocation(line: 950, column: 45, scope: !1189, inlinedAt: !469)
!1199 = !DILocation(line: 951, column: 4, scope: !1189, inlinedAt: !469)
!1200 = !DILocation(line: 951, column: 33, scope: !1189, inlinedAt: !469)
!1201 = !DILocation(line: 950, column: 13, scope: !1190, inlinedAt: !469)
!1202 = !DILocation(line: 953, column: 4, scope: !1193, inlinedAt: !469)
!1203 = !DILocation(line: 959, column: 8, scope: !1204, inlinedAt: !469)
!1204 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 959, column: 8)
!1205 = !DILocation(line: 959, column: 34, scope: !1204, inlinedAt: !469)
!1206 = !DILocation(line: 959, column: 8, scope: !1193, inlinedAt: !469)
!1207 = !DILocation(line: 960, column: 9, scope: !1208, inlinedAt: !469)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 960, column: 9)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 959, column: 40)
!1210 = !DILocation(line: 960, column: 17, scope: !1208, inlinedAt: !469)
!1211 = !DILocation(line: 960, column: 9, scope: !1209, inlinedAt: !469)
!1212 = !DILocation(line: 961, column: 6, scope: !1213, inlinedAt: !469)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 960, column: 22)
!1214 = !DILocation(line: 962, column: 14, scope: !1213, inlinedAt: !469)
!1215 = !DILocation(line: 963, column: 5, scope: !1213, inlinedAt: !469)
!1216 = !DILocation(line: 964, column: 5, scope: !1209, inlinedAt: !469)
!1217 = !DILocation(line: 965, column: 4, scope: !1209, inlinedAt: !469)
!1218 = !DILocation(line: 966, column: 17, scope: !1193, inlinedAt: !469)
!1219 = !DILocation(line: 966, column: 10, scope: !1193, inlinedAt: !469)
!1220 = !DILocation(line: 967, column: 4, scope: !1193, inlinedAt: !469)
!1221 = !DILocation(line: 968, column: 16, scope: !1193, inlinedAt: !469)
!1222 = !DILocation(line: 968, column: 4, scope: !1193, inlinedAt: !469)
!1223 = !DILocation(line: 969, column: 19, scope: !1193, inlinedAt: !469)
!1224 = !DILocation(line: 969, column: 8, scope: !1193, inlinedAt: !469)
!1225 = !DILocation(line: 969, column: 17, scope: !1193, inlinedAt: !469)
!1226 = !DILocation(line: 970, column: 19, scope: !1193, inlinedAt: !469)
!1227 = !DILocation(line: 970, column: 8, scope: !1193, inlinedAt: !469)
!1228 = !DILocation(line: 970, column: 17, scope: !1193, inlinedAt: !469)
!1229 = !{!919, !920, i64 72}
!1230 = !DILocation(line: 971, column: 11, scope: !1193, inlinedAt: !469)
!1231 = !DILocation(line: 972, column: 3, scope: !1193, inlinedAt: !469)
!1232 = distinct !{!1232, !1187, !1233}
!1233 = !DILocation(line: 973, column: 2, scope: !453, inlinedAt: !469)
!1234 = !DILocation(line: 974, column: 6, scope: !1235, inlinedAt: !469)
!1235 = distinct !DILexicalBlock(scope: !453, file: !3, line: 974, column: 6)
!1236 = !DILocation(line: 974, column: 14, scope: !1235, inlinedAt: !469)
!1237 = !DILocation(line: 974, column: 6, scope: !453, inlinedAt: !469)
!1238 = !DILocation(line: 975, column: 3, scope: !1235, inlinedAt: !469)
!1239 = !DILocation(line: 976, column: 1, scope: !453, inlinedAt: !469)
!1240 = !DILocation(line: 461, column: 3, scope: !470)
!1241 = !DILocation(line: 462, column: 2, scope: !470)
!1242 = !DILocation(line: 464, column: 6, scope: !448)
!1243 = !DILocation(line: 464, column: 6, scope: !412)
!1244 = !DILocation(line: 0, scope: !425, inlinedAt: !446)
!1245 = !DILocation(line: 850, column: 2, scope: !425, inlinedAt: !446)
!1246 = !DILocation(line: 851, column: 2, scope: !425, inlinedAt: !446)
!1247 = !DILocation(line: 854, column: 2, scope: !425, inlinedAt: !446)
!1248 = !DILocation(line: 859, column: 8, scope: !425, inlinedAt: !446)
!1249 = !DILocation(line: 860, column: 10, scope: !425, inlinedAt: !446)
!1250 = !DILocation(line: 861, column: 9, scope: !425, inlinedAt: !446)
!1251 = !DILocation(line: 861, column: 2, scope: !425, inlinedAt: !446)
!1252 = !DILocation(line: 0, scope: !1253, inlinedAt: !446)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 877, column: 5)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 871, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 863, column: 8)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 862, column: 21)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 862, column: 7)
!1258 = distinct !DILexicalBlock(scope: !425, file: !3, line: 861, column: 45)
!1259 = !DILocation(line: 862, column: 7, scope: !1257, inlinedAt: !446)
!1260 = !DILocation(line: 862, column: 13, scope: !1257, inlinedAt: !446)
!1261 = !DILocation(line: 862, column: 7, scope: !1258, inlinedAt: !446)
!1262 = !DILocation(line: 863, column: 8, scope: !1255, inlinedAt: !446)
!1263 = !DILocation(line: 863, column: 39, scope: !1255, inlinedAt: !446)
!1264 = !DILocation(line: 863, column: 8, scope: !1256, inlinedAt: !446)
!1265 = !DILocation(line: 864, column: 12, scope: !1266, inlinedAt: !446)
!1266 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 863, column: 45)
!1267 = !DILocation(line: 865, column: 12, scope: !1266, inlinedAt: !446)
!1268 = !DILocation(line: 866, column: 5, scope: !1266, inlinedAt: !446)
!1269 = !DILocation(line: 867, column: 14, scope: !1266, inlinedAt: !446)
!1270 = !DILocation(line: 867, column: 5, scope: !1266, inlinedAt: !446)
!1271 = !DILocation(line: 870, column: 5, scope: !1266, inlinedAt: !446)
!1272 = !DILocation(line: 872, column: 9, scope: !1273, inlinedAt: !446)
!1273 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 872, column: 9)
!1274 = !DILocation(line: 872, column: 15, scope: !1273, inlinedAt: !446)
!1275 = !DILocation(line: 872, column: 9, scope: !1254, inlinedAt: !446)
!1276 = !DILocation(line: 873, column: 6, scope: !1277, inlinedAt: !446)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 872, column: 20)
!1278 = !DILocation(line: 874, column: 12, scope: !1277, inlinedAt: !446)
!1279 = !DILocation(line: 875, column: 5, scope: !1277, inlinedAt: !446)
!1280 = !DILocation(line: 877, column: 5, scope: !1253, inlinedAt: !446)
!1281 = !DILocation(line: 879, column: 24, scope: !1282, inlinedAt: !446)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 879, column: 10)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 878, column: 25)
!1284 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 877, column: 5)
!1285 = !{!1286, !380, i64 24}
!1286 = !{!"residue_t", !380, i64 0, !390, i64 8, !390, i64 12, !390, i64 16, !380, i64 24, !380, i64 32, !390, i64 40, !390, i64 44, !390, i64 48, !380, i64 56, !380, i64 64, !390, i64 72, !380, i64 80, !390, i64 88, !380, i64 96, !390, i64 104, !380, i64 112, !380, i64 120}
!1287 = !DILocation(line: 879, column: 11, scope: !1282, inlinedAt: !446)
!1288 = !DILocation(line: 879, column: 10, scope: !1283, inlinedAt: !446)
!1289 = !DILocation(line: 878, column: 17, scope: !1284, inlinedAt: !446)
!1290 = distinct !{!1290, !1280, !1291}
!1291 = !DILocation(line: 883, column: 5, scope: !1253, inlinedAt: !446)
!1292 = !DILocation(line: 885, column: 15, scope: !1293, inlinedAt: !446)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 884, column: 16)
!1294 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 884, column: 9)
!1295 = !DILocation(line: 887, column: 20, scope: !1293, inlinedAt: !446)
!1296 = !DILocation(line: 885, column: 6, scope: !1293, inlinedAt: !446)
!1297 = !DILocation(line: 888, column: 6, scope: !1293, inlinedAt: !446)
!1298 = !DILocation(line: 890, column: 5, scope: !1254, inlinedAt: !446)
!1299 = !DILocation(line: 892, column: 3, scope: !1256, inlinedAt: !446)
!1300 = !DILocation(line: 893, column: 4, scope: !1301, inlinedAt: !446)
!1301 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 892, column: 8)
!1302 = !DILocalVariable(name: "res", arg: 1, scope: !1303, file: !3, line: 1202, type: !169)
!1303 = distinct !DISubprogram(name: "findatom", scope: !3, file: !3, line: 1202, type: !1304, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!201, !169, !12}
!1306 = !{!1302, !1307, !1308}
!1307 = !DILocalVariable(name: "aname", arg: 2, scope: !1303, file: !3, line: 1202, type: !12)
!1308 = !DILocalVariable(name: "a", scope: !1303, file: !3, line: 1204, type: !11)
!1309 = !DILocation(line: 0, scope: !1303, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 894, column: 16, scope: !1311, inlinedAt: !446)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 894, column: 8)
!1312 = !DILocation(line: 1206, column: 23, scope: !1313, inlinedAt: !1310)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 1206, column: 2)
!1314 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 1206, column: 2)
!1315 = !{!1286, !390, i64 104}
!1316 = !DILocation(line: 1206, column: 16, scope: !1313, inlinedAt: !1310)
!1317 = !DILocation(line: 1206, column: 2, scope: !1314, inlinedAt: !1310)
!1318 = !DILocation(line: 1207, column: 21, scope: !1319, inlinedAt: !1310)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 1207, column: 7)
!1320 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1206, column: 38)
!1321 = !DILocation(line: 0, scope: !1319, inlinedAt: !1310)
!1322 = !{!1286, !380, i64 120}
!1323 = distinct !{!1323, !1317, !1324}
!1324 = !DILocation(line: 1209, column: 2, scope: !1314, inlinedAt: !1310)
!1325 = !DILocation(line: 1207, column: 34, scope: !1319, inlinedAt: !1310)
!1326 = !DILocation(line: 1207, column: 8, scope: !1319, inlinedAt: !1310)
!1327 = !DILocation(line: 1206, column: 34, scope: !1313, inlinedAt: !1310)
!1328 = !DILocation(line: 1207, column: 7, scope: !1320, inlinedAt: !1310)
!1329 = !DILocation(line: 895, column: 14, scope: !1330, inlinedAt: !446)
!1330 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 894, column: 41)
!1331 = !DILocation(line: 897, column: 17, scope: !1330, inlinedAt: !446)
!1332 = !DILocation(line: 895, column: 5, scope: !1330, inlinedAt: !446)
!1333 = !DILocation(line: 898, column: 5, scope: !1330, inlinedAt: !446)
!1334 = !DILocation(line: 900, column: 10, scope: !1311, inlinedAt: !446)
!1335 = !DILocation(line: 0, scope: !1303, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 901, column: 16, scope: !1337, inlinedAt: !446)
!1337 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 901, column: 8)
!1338 = !DILocation(line: 1206, column: 2, scope: !1314, inlinedAt: !1336)
!1339 = !DILocation(line: 1206, column: 16, scope: !1313, inlinedAt: !1336)
!1340 = distinct !{!1340, !1338, !1341}
!1341 = !DILocation(line: 1209, column: 2, scope: !1314, inlinedAt: !1336)
!1342 = !DILocation(line: 1207, column: 34, scope: !1319, inlinedAt: !1336)
!1343 = !DILocation(line: 1207, column: 8, scope: !1319, inlinedAt: !1336)
!1344 = !DILocation(line: 1206, column: 34, scope: !1313, inlinedAt: !1336)
!1345 = !DILocation(line: 1207, column: 7, scope: !1320, inlinedAt: !1336)
!1346 = !DILocation(line: 902, column: 14, scope: !1347, inlinedAt: !446)
!1347 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 901, column: 41)
!1348 = !DILocation(line: 904, column: 17, scope: !1347, inlinedAt: !446)
!1349 = !DILocation(line: 902, column: 5, scope: !1347, inlinedAt: !446)
!1350 = !DILocation(line: 905, column: 5, scope: !1347, inlinedAt: !446)
!1351 = !DILocation(line: 907, column: 10, scope: !1337, inlinedAt: !446)
!1352 = !DILocation(line: 0, scope: !1303, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 908, column: 16, scope: !1354, inlinedAt: !446)
!1354 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 908, column: 8)
!1355 = !DILocation(line: 1206, column: 2, scope: !1314, inlinedAt: !1353)
!1356 = !DILocation(line: 1206, column: 16, scope: !1313, inlinedAt: !1353)
!1357 = distinct !{!1357, !1355, !1358}
!1358 = !DILocation(line: 1209, column: 2, scope: !1314, inlinedAt: !1353)
!1359 = !DILocation(line: 1207, column: 34, scope: !1319, inlinedAt: !1353)
!1360 = !DILocation(line: 1207, column: 8, scope: !1319, inlinedAt: !1353)
!1361 = !DILocation(line: 1206, column: 34, scope: !1313, inlinedAt: !1353)
!1362 = !DILocation(line: 1207, column: 7, scope: !1320, inlinedAt: !1353)
!1363 = !DILocation(line: 909, column: 14, scope: !1364, inlinedAt: !446)
!1364 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 908, column: 41)
!1365 = !DILocation(line: 911, column: 17, scope: !1364, inlinedAt: !446)
!1366 = !DILocation(line: 909, column: 5, scope: !1364, inlinedAt: !446)
!1367 = !DILocation(line: 912, column: 5, scope: !1364, inlinedAt: !446)
!1368 = !DILocation(line: 0, scope: !1303, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 915, column: 16, scope: !1370, inlinedAt: !446)
!1370 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 915, column: 8)
!1371 = !DILocation(line: 1206, column: 16, scope: !1313, inlinedAt: !1369)
!1372 = !DILocation(line: 1206, column: 2, scope: !1314, inlinedAt: !1369)
!1373 = distinct !{!1373, !1372, !1374}
!1374 = !DILocation(line: 1209, column: 2, scope: !1314, inlinedAt: !1369)
!1375 = !DILocation(line: 1207, column: 34, scope: !1319, inlinedAt: !1369)
!1376 = !DILocation(line: 1207, column: 8, scope: !1319, inlinedAt: !1369)
!1377 = !DILocation(line: 1206, column: 34, scope: !1313, inlinedAt: !1369)
!1378 = !DILocation(line: 1207, column: 7, scope: !1320, inlinedAt: !1369)
!1379 = !DILocation(line: 916, column: 14, scope: !1380, inlinedAt: !446)
!1380 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 915, column: 41)
!1381 = !DILocation(line: 918, column: 17, scope: !1380, inlinedAt: !446)
!1382 = !DILocation(line: 916, column: 5, scope: !1380, inlinedAt: !446)
!1383 = !DILocation(line: 919, column: 5, scope: !1380, inlinedAt: !446)
!1384 = !DILocation(line: 914, column: 10, scope: !1354, inlinedAt: !446)
!1385 = !DILocation(line: 921, column: 10, scope: !1370, inlinedAt: !446)
!1386 = !DILocation(line: 922, column: 15, scope: !1301, inlinedAt: !446)
!1387 = !DILocation(line: 922, column: 10, scope: !1301, inlinedAt: !446)
!1388 = !DILocation(line: 923, column: 9, scope: !1301, inlinedAt: !446)
!1389 = !DILocation(line: 924, column: 4, scope: !1301, inlinedAt: !446)
!1390 = !DILocation(line: 924, column: 20, scope: !1301, inlinedAt: !446)
!1391 = !DILocation(line: 925, column: 4, scope: !1301, inlinedAt: !446)
!1392 = !DILocation(line: 925, column: 20, scope: !1301, inlinedAt: !446)
!1393 = !DILocation(line: 926, column: 4, scope: !1301, inlinedAt: !446)
!1394 = !DILocation(line: 926, column: 20, scope: !1301, inlinedAt: !446)
!1395 = !DILocation(line: 927, column: 4, scope: !1301, inlinedAt: !446)
!1396 = !DILocation(line: 927, column: 20, scope: !1301, inlinedAt: !446)
!1397 = !DILocation(line: 928, column: 8, scope: !1301, inlinedAt: !446)
!1398 = !DILocation(line: 928, column: 15, scope: !1301, inlinedAt: !446)
!1399 = !{!1400, !920, i64 16}
!1400 = !{!"chiral_t", !381, i64 0, !920, i64 16}
!1401 = distinct !{!1401, !1251, !1402}
!1402 = !DILocation(line: 930, column: 2, scope: !425, inlinedAt: !446)
!1403 = !DILocation(line: 931, column: 6, scope: !1404, inlinedAt: !446)
!1404 = distinct !DILexicalBlock(scope: !425, file: !3, line: 931, column: 6)
!1405 = !DILocation(line: 931, column: 12, scope: !1404, inlinedAt: !446)
!1406 = !DILocation(line: 931, column: 6, scope: !425, inlinedAt: !446)
!1407 = !DILocation(line: 932, column: 3, scope: !1408, inlinedAt: !446)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 931, column: 17)
!1409 = !DILocation(line: 933, column: 9, scope: !1408, inlinedAt: !446)
!1410 = !DILocation(line: 934, column: 2, scope: !1408, inlinedAt: !446)
!1411 = !DILocation(line: 935, column: 1, scope: !425, inlinedAt: !446)
!1412 = !DILocation(line: 466, column: 3, scope: !447)
!1413 = !DILocation(line: 467, column: 2, scope: !447)
!1414 = !DILocation(line: 470, column: 1, scope: !412)
!1415 = distinct !DISubprogram(name: "setreslibkind", scope: !3, file: !3, line: 103, type: !1416, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!11, !12, !12}
!1418 = !{!1419, !1420, !1421, !1422}
!1419 = !DILocalVariable(name: "reslib", arg: 1, scope: !1415, file: !3, line: 103, type: !12)
!1420 = !DILocalVariable(name: "kind", arg: 2, scope: !1415, file: !3, line: 103, type: !12)
!1421 = !DILocalVariable(name: "nhp", scope: !1415, file: !3, line: 105, type: !12)
!1422 = !DILocalVariable(name: "rlp", scope: !1415, file: !3, line: 106, type: !298)
!1423 = !DILocation(line: 0, scope: !1415)
!1424 = !DILocation(line: 0, scope: !369, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 108, column: 14, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 108, column: 6)
!1427 = !DILocation(line: 0, scope: !378, inlinedAt: !1425)
!1428 = !DILocation(line: 426, column: 2, scope: !378, inlinedAt: !1425)
!1429 = !DILocation(line: 427, column: 20, scope: !385, inlinedAt: !1425)
!1430 = !DILocation(line: 427, column: 7, scope: !385, inlinedAt: !1425)
!1431 = !DILocation(line: 427, column: 38, scope: !385, inlinedAt: !1425)
!1432 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !1425)
!1433 = !DILocation(line: 426, column: 38, scope: !387, inlinedAt: !1425)
!1434 = distinct !{!1434, !1428, !1435}
!1435 = !DILocation(line: 430, column: 2, scope: !378, inlinedAt: !1425)
!1436 = !DILocation(line: 109, column: 16, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 109, column: 8)
!1438 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 108, column: 48)
!1439 = !DILocation(line: 109, column: 40, scope: !1437)
!1440 = !DILocation(line: 109, column: 8, scope: !1438)
!1441 = !DILocation(line: 110, column: 15, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 109, column: 49)
!1443 = !DILocation(line: 110, column: 6, scope: !1442)
!1444 = !DILocation(line: 112, column: 6, scope: !1442)
!1445 = !DILocation(line: 0, scope: !1426)
!1446 = !DILocation(line: 115, column: 7, scope: !1415)
!1447 = !DILocation(line: 115, column: 17, scope: !1415)
!1448 = !DILocation(line: 116, column: 8, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 116, column: 7)
!1450 = !DILocation(line: 116, column: 30, scope: !1449)
!1451 = !DILocation(line: 116, column: 34, scope: !1449)
!1452 = !DILocation(line: 116, column: 7, scope: !1415)
!1453 = !DILocation(line: 118, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 118, column: 12)
!1455 = !DILocation(line: 118, column: 35, scope: !1454)
!1456 = !DILocation(line: 118, column: 39, scope: !1454)
!1457 = !DILocation(line: 118, column: 12, scope: !1449)
!1458 = !DILocation(line: 120, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 120, column: 12)
!1460 = !DILocation(line: 120, column: 34, scope: !1459)
!1461 = !DILocation(line: 120, column: 38, scope: !1459)
!1462 = !DILocation(line: 120, column: 12, scope: !1454)
!1463 = !DILocation(line: 0, scope: !1449)
!1464 = !DILocation(line: 123, column: 9, scope: !1415)
!1465 = !DILocation(line: 123, column: 22, scope: !1415)
!1466 = distinct !DISubprogram(name: "getresidue", scope: !3, file: !3, line: 126, type: !1467, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!169, !12, !12}
!1469 = !{!1470, !1471, !1472, !1473, !1477, !1478, !1479}
!1470 = !DILocalVariable(name: "rname", arg: 1, scope: !1466, file: !3, line: 126, type: !12)
!1471 = !DILocalVariable(name: "reslib", arg: 2, scope: !1466, file: !3, line: 126, type: !12)
!1472 = !DILocalVariable(name: "nhp", scope: !1466, file: !3, line: 128, type: !12)
!1473 = !DILocalVariable(name: "leapname", scope: !1466, file: !3, line: 128, type: !1474)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 40, elements: !1475)
!1475 = !{!1476}
!1476 = !DISubrange(count: 5)
!1477 = !DILocalVariable(name: "rlp", scope: !1466, file: !3, line: 129, type: !298)
!1478 = !DILocalVariable(name: "res", scope: !1466, file: !3, line: 130, type: !169)
!1479 = !DILocalVariable(name: "nres", scope: !1466, file: !3, line: 130, type: !169)
!1480 = !DILocation(line: 0, scope: !1466)
!1481 = !DILocation(line: 128, column: 2, scope: !1466)
!1482 = !DILocation(line: 128, column: 13, scope: !1466)
!1483 = !DILocation(line: 0, scope: !369, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 132, column: 14, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 132, column: 6)
!1486 = !DILocation(line: 0, scope: !378, inlinedAt: !1484)
!1487 = !DILocation(line: 426, column: 2, scope: !378, inlinedAt: !1484)
!1488 = !DILocation(line: 427, column: 20, scope: !385, inlinedAt: !1484)
!1489 = !DILocation(line: 427, column: 7, scope: !385, inlinedAt: !1484)
!1490 = !DILocation(line: 427, column: 38, scope: !385, inlinedAt: !1484)
!1491 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !1484)
!1492 = !DILocation(line: 426, column: 38, scope: !387, inlinedAt: !1484)
!1493 = distinct !{!1493, !1487, !1494}
!1494 = !DILocation(line: 430, column: 2, scope: !378, inlinedAt: !1484)
!1495 = !DILocation(line: 133, column: 15, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 133, column: 7)
!1497 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 132, column: 48)
!1498 = !DILocation(line: 133, column: 39, scope: !1496)
!1499 = !DILocation(line: 133, column: 7, scope: !1497)
!1500 = !DILocation(line: 134, column: 4, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 133, column: 48)
!1502 = !DILocation(line: 0, scope: !1485)
!1503 = !DILocation(line: 138, column: 2, scope: !1466)
!1504 = !DILocation(line: 139, column: 12, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 139, column: 7)
!1506 = !DILocation(line: 139, column: 7, scope: !1466)
!1507 = !DILocation(line: 140, column: 14, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 140, column: 13)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 139, column: 33)
!1510 = !DILocation(line: 140, column: 13, scope: !1509)
!1511 = !DILocation(line: 141, column: 4, scope: !1508)
!1512 = !DILocation(line: 142, column: 14, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 142, column: 13)
!1514 = !DILocation(line: 142, column: 13, scope: !1508)
!1515 = !DILocation(line: 143, column: 4, scope: !1513)
!1516 = !DILocation(line: 144, column: 14, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 144, column: 13)
!1518 = !DILocation(line: 144, column: 13, scope: !1513)
!1519 = !DILocation(line: 145, column: 4, scope: !1517)
!1520 = !DILocation(line: 146, column: 14, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 146, column: 13)
!1522 = !DILocation(line: 146, column: 13, scope: !1517)
!1523 = !DILocation(line: 147, column: 4, scope: !1521)
!1524 = !DILocation(line: 150, column: 14, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 150, column: 13)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 149, column: 38)
!1527 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 149, column: 12)
!1528 = !DILocation(line: 150, column: 13, scope: !1526)
!1529 = !DILocation(line: 151, column: 4, scope: !1525)
!1530 = !DILocation(line: 152, column: 14, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 152, column: 13)
!1532 = !DILocation(line: 152, column: 13, scope: !1525)
!1533 = !DILocation(line: 153, column: 4, scope: !1531)
!1534 = !DILocation(line: 154, column: 14, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 154, column: 13)
!1536 = !DILocation(line: 154, column: 13, scope: !1531)
!1537 = !DILocation(line: 155, column: 4, scope: !1535)
!1538 = !DILocation(line: 156, column: 14, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 156, column: 13)
!1540 = !DILocation(line: 156, column: 13, scope: !1535)
!1541 = !DILocation(line: 157, column: 4, scope: !1539)
!1542 = !DILocation(line: 159, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 159, column: 7)
!1544 = !DILocation(line: 159, column: 28, scope: !1543)
!1545 = !DILocation(line: 159, column: 7, scope: !1466)
!1546 = !DILocation(line: 161, column: 12, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 161, column: 12)
!1548 = !DILocation(line: 161, column: 33, scope: !1547)
!1549 = !DILocation(line: 161, column: 12, scope: !1543)
!1550 = !DILocation(line: 0, scope: !1543)
!1551 = !DILocation(line: 163, column: 18, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 163, column: 2)
!1553 = !DILocation(line: 0, scope: !1552)
!1554 = !DILocation(line: 163, column: 2, scope: !1552)
!1555 = !DILocation(line: 164, column: 21, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 164, column: 6)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 163, column: 53)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 163, column: 2)
!1559 = !DILocation(line: 164, column: 8, scope: !1556)
!1560 = !DILocation(line: 164, column: 40, scope: !1556)
!1561 = !DILocation(line: 164, column: 47, scope: !1556)
!1562 = !DILocation(line: 165, column: 6, scope: !1556)
!1563 = !DILocation(line: 165, column: 41, scope: !1556)
!1564 = !DILocation(line: 164, column: 6, scope: !1557)
!1565 = !DILocation(line: 163, column: 45, scope: !1558)
!1566 = distinct !{!1566, !1554, !1567}
!1567 = !DILocation(line: 167, column: 2, scope: !1552)
!1568 = !DILocation(line: 170, column: 3, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 169, column: 19)
!1570 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 169, column: 6)
!1571 = !DILocation(line: 171, column: 3, scope: !1569)
!1572 = !DILocation(line: 172, column: 3, scope: !1569)
!1573 = !DILocation(line: 175, column: 9, scope: !1466)
!1574 = !DILocation(line: 177, column: 2, scope: !1466)
!1575 = !DILocation(line: 178, column: 1, scope: !1466)
!1576 = distinct !DISubprogram(name: "copyresidue", scope: !3, file: !3, line: 180, type: !1577, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!169, !169}
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591}
!1580 = !DILocalVariable(name: "res", arg: 1, scope: !1576, file: !3, line: 180, type: !169)
!1581 = !DILocalVariable(name: "a", scope: !1576, file: !3, line: 182, type: !11)
!1582 = !DILocalVariable(name: "b", scope: !1576, file: !3, line: 182, type: !11)
!1583 = !DILocalVariable(name: "c", scope: !1576, file: !3, line: 182, type: !11)
!1584 = !DILocalVariable(name: "i", scope: !1576, file: !3, line: 182, type: !11)
!1585 = !DILocalVariable(name: "aip", scope: !1576, file: !3, line: 183, type: !228)
!1586 = !DILocalVariable(name: "nres", scope: !1576, file: !3, line: 184, type: !169)
!1587 = !DILocalVariable(name: "ap", scope: !1576, file: !3, line: 185, type: !201)
!1588 = !DILocalVariable(name: "anp", scope: !1576, file: !3, line: 186, type: !12)
!1589 = !DILocalVariable(name: "rnp", scope: !1576, file: !3, line: 186, type: !12)
!1590 = !DILocalVariable(name: "bp", scope: !1576, file: !3, line: 187, type: !183)
!1591 = !DILocalVariable(name: "cp", scope: !1576, file: !3, line: 188, type: !190)
!1592 = !DILocation(line: 0, scope: !1576)
!1593 = !DILocation(line: 190, column: 26, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 190, column: 5)
!1595 = !DILocation(line: 190, column: 13, scope: !1594)
!1596 = !DILocation(line: 191, column: 3, scope: !1594)
!1597 = !DILocation(line: 190, column: 5, scope: !1576)
!1598 = !DILocation(line: 193, column: 42, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 192, column: 2)
!1600 = !DILocation(line: 193, column: 3, scope: !1599)
!1601 = !DILocation(line: 194, column: 3, scope: !1599)
!1602 = !DILocation(line: 195, column: 3, scope: !1599)
!1603 = !DILocation(line: 198, column: 37, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 198, column: 6)
!1605 = !DILocation(line: 198, column: 32, scope: !1604)
!1606 = !DILocation(line: 198, column: 45, scope: !1604)
!1607 = !DILocation(line: 198, column: 25, scope: !1604)
!1608 = !DILocation(line: 198, column: 13, scope: !1604)
!1609 = !DILocation(line: 199, column: 3, scope: !1604)
!1610 = !DILocation(line: 198, column: 6, scope: !1576)
!1611 = !DILocation(line: 201, column: 51, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 200, column: 2)
!1613 = !DILocation(line: 201, column: 3, scope: !1612)
!1614 = !DILocation(line: 202, column: 3, scope: !1612)
!1615 = !DILocation(line: 203, column: 3, scope: !1612)
!1616 = !DILocation(line: 206, column: 43, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 206, column: 6)
!1618 = !DILocation(line: 206, column: 23, scope: !1617)
!1619 = !DILocation(line: 206, column: 58, scope: !1617)
!1620 = !DILocation(line: 206, column: 6, scope: !1576)
!1621 = !DILocation(line: 209, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 207, column: 2)
!1623 = !DILocation(line: 208, column: 3, scope: !1622)
!1624 = !DILocation(line: 210, column: 3, scope: !1622)
!1625 = !DILocation(line: 211, column: 3, scope: !1622)
!1626 = !DILocation(line: 214, column: 11, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 214, column: 6)
!1628 = !{!1286, !390, i64 72}
!1629 = !DILocation(line: 214, column: 23, scope: !1627)
!1630 = !DILocation(line: 214, column: 6, scope: !1576)
!1631 = !DILocation(line: 216, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 215, column: 7)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 214, column: 28)
!1634 = !DILocation(line: 216, column: 27, scope: !1632)
!1635 = !DILocation(line: 216, column: 4, scope: !1632)
!1636 = !DILocation(line: 215, column: 14, scope: !1632)
!1637 = !DILocation(line: 217, column: 4, scope: !1632)
!1638 = !DILocation(line: 215, column: 7, scope: !1633)
!1639 = !DILocation(line: 220, column: 37, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 218, column: 3)
!1641 = !DILocation(line: 219, column: 4, scope: !1640)
!1642 = !DILocation(line: 221, column: 4, scope: !1640)
!1643 = !DILocation(line: 222, column: 4, scope: !1640)
!1644 = !DILocation(line: 0, scope: !1627)
!1645 = !DILocation(line: 227, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 227, column: 6)
!1647 = !{!1286, !390, i64 88}
!1648 = !DILocation(line: 227, column: 21, scope: !1646)
!1649 = !DILocation(line: 227, column: 6, scope: !1576)
!1650 = !DILocation(line: 229, column: 11, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 228, column: 7)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 227, column: 26)
!1653 = !DILocation(line: 229, column: 25, scope: !1651)
!1654 = !DILocation(line: 229, column: 4, scope: !1651)
!1655 = !DILocation(line: 228, column: 14, scope: !1651)
!1656 = !DILocation(line: 230, column: 4, scope: !1651)
!1657 = !DILocation(line: 228, column: 7, scope: !1652)
!1658 = !DILocation(line: 233, column: 37, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 231, column: 3)
!1660 = !DILocation(line: 232, column: 4, scope: !1659)
!1661 = !DILocation(line: 234, column: 4, scope: !1659)
!1662 = !DILocation(line: 235, column: 4, scope: !1659)
!1663 = !DILocation(line: 0, scope: !1646)
!1664 = !DILocation(line: 240, column: 8, scope: !1576)
!1665 = !DILocation(line: 240, column: 15, scope: !1576)
!1666 = !{!1286, !380, i64 0}
!1667 = !DILocation(line: 242, column: 37, scope: !1576)
!1668 = !DILocation(line: 242, column: 25, scope: !1576)
!1669 = !DILocation(line: 242, column: 47, scope: !1576)
!1670 = !DILocation(line: 242, column: 18, scope: !1576)
!1671 = !DILocation(line: 243, column: 10, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 243, column: 6)
!1673 = !DILocation(line: 243, column: 6, scope: !1576)
!1674 = !DILocation(line: 244, column: 12, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 243, column: 19)
!1676 = !DILocation(line: 244, column: 3, scope: !1675)
!1677 = !DILocation(line: 246, column: 3, scope: !1675)
!1678 = !DILocation(line: 248, column: 2, scope: !1576)
!1679 = !DILocation(line: 249, column: 8, scope: !1576)
!1680 = !DILocation(line: 249, column: 18, scope: !1576)
!1681 = !DILocation(line: 251, column: 37, scope: !1576)
!1682 = !{!1286, !380, i64 32}
!1683 = !DILocation(line: 251, column: 25, scope: !1576)
!1684 = !DILocation(line: 251, column: 45, scope: !1576)
!1685 = !DILocation(line: 251, column: 18, scope: !1576)
!1686 = !DILocation(line: 252, column: 10, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 252, column: 6)
!1688 = !DILocation(line: 252, column: 6, scope: !1576)
!1689 = !DILocation(line: 253, column: 12, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 252, column: 19)
!1691 = !DILocation(line: 253, column: 3, scope: !1690)
!1692 = !DILocation(line: 254, column: 3, scope: !1690)
!1693 = !DILocation(line: 256, column: 2, scope: !1576)
!1694 = !DILocation(line: 257, column: 8, scope: !1576)
!1695 = !DILocation(line: 257, column: 16, scope: !1576)
!1696 = !DILocation(line: 259, column: 21, scope: !1576)
!1697 = !{!1286, !390, i64 8}
!1698 = !DILocation(line: 259, column: 8, scope: !1576)
!1699 = !DILocation(line: 259, column: 14, scope: !1576)
!1700 = !DILocation(line: 260, column: 8, scope: !1576)
!1701 = !DILocation(line: 260, column: 18, scope: !1576)
!1702 = !{!1286, !390, i64 12}
!1703 = !DILocation(line: 261, column: 8, scope: !1576)
!1704 = !DILocation(line: 261, column: 17, scope: !1576)
!1705 = !{!1286, !390, i64 16}
!1706 = !DILocation(line: 262, column: 22, scope: !1576)
!1707 = !{!1286, !390, i64 40}
!1708 = !DILocation(line: 262, column: 8, scope: !1576)
!1709 = !DILocation(line: 262, column: 15, scope: !1576)
!1710 = !DILocation(line: 263, column: 8, scope: !1576)
!1711 = !DILocation(line: 263, column: 17, scope: !1576)
!1712 = !{!1286, !380, i64 56}
!1713 = !DILocation(line: 264, column: 21, scope: !1576)
!1714 = !DILocation(line: 264, column: 8, scope: !1576)
!1715 = !DILocation(line: 264, column: 19, scope: !1576)
!1716 = !{!1286, !380, i64 64}
!1717 = !DILocation(line: 265, column: 27, scope: !1576)
!1718 = !DILocation(line: 265, column: 8, scope: !1576)
!1719 = !DILocation(line: 265, column: 20, scope: !1576)
!1720 = !DILocation(line: 266, column: 8, scope: !1576)
!1721 = !DILocation(line: 266, column: 19, scope: !1576)
!1722 = !{!1286, !380, i64 80}
!1723 = !DILocation(line: 267, column: 16, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 267, column: 2)
!1725 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 267, column: 2)
!1726 = !DILocation(line: 267, column: 2, scope: !1725)
!1727 = !DILocation(line: 0, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 267, column: 41)
!1729 = !DILocation(line: 268, column: 32, scope: !1728)
!1730 = !DILocation(line: 268, column: 3, scope: !1728)
!1731 = !DILocation(line: 268, column: 30, scope: !1728)
!1732 = !DILocation(line: 269, column: 32, scope: !1728)
!1733 = !DILocation(line: 269, column: 3, scope: !1728)
!1734 = !DILocation(line: 269, column: 30, scope: !1728)
!1735 = !DILocation(line: 267, column: 37, scope: !1724)
!1736 = distinct !{!1736, !1726, !1737}
!1737 = !DILocation(line: 270, column: 2, scope: !1725)
!1738 = !DILocation(line: 271, column: 25, scope: !1576)
!1739 = !DILocation(line: 271, column: 8, scope: !1576)
!1740 = !DILocation(line: 271, column: 18, scope: !1576)
!1741 = !DILocation(line: 272, column: 8, scope: !1576)
!1742 = !DILocation(line: 272, column: 17, scope: !1576)
!1743 = !{!1286, !380, i64 96}
!1744 = !DILocation(line: 273, column: 37, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 273, column: 2)
!1746 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 273, column: 2)
!1747 = !DILocation(line: 273, column: 2, scope: !1746)
!1748 = !DILocation(line: 0, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 273, column: 66)
!1750 = !DILocation(line: 275, column: 22, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 274, column: 3)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 274, column: 3)
!1753 = !DILocation(line: 275, column: 4, scope: !1751)
!1754 = !DILocation(line: 275, column: 20, scope: !1751)
!1755 = !DILocation(line: 276, column: 35, scope: !1749)
!1756 = !DILocation(line: 276, column: 7, scope: !1749)
!1757 = !DILocation(line: 276, column: 14, scope: !1749)
!1758 = !DILocation(line: 273, column: 56, scope: !1745)
!1759 = !DILocation(line: 273, column: 62, scope: !1745)
!1760 = !DILocation(line: 273, column: 44, scope: !1745)
!1761 = distinct !{!1761, !1747, !1762}
!1762 = !DILocation(line: 277, column: 2, scope: !1746)
!1763 = !DILocation(line: 278, column: 22, scope: !1576)
!1764 = !{!1286, !390, i64 44}
!1765 = !DILocation(line: 278, column: 8, scope: !1576)
!1766 = !DILocation(line: 278, column: 15, scope: !1576)
!1767 = !DILocation(line: 279, column: 26, scope: !1576)
!1768 = !{!1286, !390, i64 48}
!1769 = !DILocation(line: 279, column: 8, scope: !1576)
!1770 = !DILocation(line: 279, column: 19, scope: !1576)
!1771 = !DILocation(line: 280, column: 24, scope: !1576)
!1772 = !DILocation(line: 280, column: 8, scope: !1576)
!1773 = !DILocation(line: 280, column: 17, scope: !1576)
!1774 = !DILocation(line: 281, column: 8, scope: !1576)
!1775 = !DILocation(line: 281, column: 17, scope: !1576)
!1776 = !{!1286, !380, i64 112}
!1777 = !DILocation(line: 282, column: 11, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 282, column: 6)
!1779 = !DILocation(line: 282, column: 6, scope: !1778)
!1780 = !DILocation(line: 0, scope: !1778)
!1781 = !DILocation(line: 282, column: 6, scope: !1576)
!1782 = !DILocation(line: 283, column: 3, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 283, column: 3)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 282, column: 21)
!1785 = !DILocation(line: 0, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 283, column: 3)
!1787 = !DILocation(line: 283, column: 35, scope: !1786)
!1788 = !DILocation(line: 284, column: 26, scope: !1786)
!1789 = !{!1790}
!1790 = distinct !{!1790, !1791}
!1791 = distinct !{!1791, !"LVerDomain"}
!1792 = !DILocation(line: 284, column: 4, scope: !1786)
!1793 = !DILocation(line: 284, column: 24, scope: !1786)
!1794 = !{!1795}
!1795 = distinct !{!1795, !1791}
!1796 = distinct !{!1796, !1782, !1797, !1007}
!1797 = !DILocation(line: 284, column: 43, scope: !1783)
!1798 = distinct !{!1798, !1009}
!1799 = !DILocation(line: 286, column: 3, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 286, column: 3)
!1801 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 285, column: 7)
!1802 = !DILocation(line: 0, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 286, column: 3)
!1804 = !DILocation(line: 286, column: 35, scope: !1803)
!1805 = !DILocation(line: 287, column: 24, scope: !1803)
!1806 = !DILocation(line: 287, column: 4, scope: !1803)
!1807 = distinct !{!1807, !1799, !1808, !1007}
!1808 = !DILocation(line: 287, column: 26, scope: !1800)
!1809 = distinct !{!1809, !1009}
!1810 = !DILocation(line: 283, column: 17, scope: !1786)
!1811 = distinct !{!1811, !1782, !1797, !1007}
!1812 = !DILocation(line: 286, column: 17, scope: !1803)
!1813 = distinct !{!1813, !1799, !1808, !1013, !1007}
!1814 = !DILocation(line: 289, column: 8, scope: !1576)
!1815 = !DILocation(line: 289, column: 16, scope: !1576)
!1816 = !DILocation(line: 290, column: 2, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 290, column: 2)
!1818 = !DILocation(line: 0, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 290, column: 38)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 290, column: 2)
!1821 = !DILocation(line: 292, column: 37, scope: !1819)
!1822 = !DILocation(line: 292, column: 48, scope: !1819)
!1823 = !DILocation(line: 292, column: 24, scope: !1819)
!1824 = !DILocation(line: 292, column: 60, scope: !1819)
!1825 = !DILocation(line: 292, column: 17, scope: !1819)
!1826 = !DILocation(line: 293, column: 11, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 293, column: 7)
!1828 = !DILocation(line: 293, column: 7, scope: !1819)
!1829 = !DILocation(line: 294, column: 13, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 293, column: 20)
!1831 = !DILocation(line: 294, column: 4, scope: !1830)
!1832 = !DILocation(line: 295, column: 4, scope: !1830)
!1833 = !DILocation(line: 297, column: 34, scope: !1819)
!1834 = !DILocation(line: 297, column: 3, scope: !1819)
!1835 = !DILocation(line: 298, column: 11, scope: !1819)
!1836 = !DILocation(line: 298, column: 22, scope: !1819)
!1837 = !DILocation(line: 299, column: 11, scope: !1819)
!1838 = !DILocation(line: 299, column: 22, scope: !1819)
!1839 = !{!919, !380, i64 8}
!1840 = !DILocation(line: 300, column: 25, scope: !1819)
!1841 = !DILocation(line: 300, column: 38, scope: !1819)
!1842 = !{!919, !390, i64 16}
!1843 = !DILocation(line: 300, column: 11, scope: !1819)
!1844 = !DILocation(line: 300, column: 18, scope: !1819)
!1845 = !DILocation(line: 301, column: 42, scope: !1819)
!1846 = !{!919, !390, i64 20}
!1847 = !DILocation(line: 301, column: 11, scope: !1819)
!1848 = !DILocation(line: 301, column: 22, scope: !1819)
!1849 = !DILocation(line: 303, column: 25, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 302, column: 3)
!1851 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 302, column: 3)
!1852 = !DILocation(line: 303, column: 4, scope: !1850)
!1853 = !DILocation(line: 303, column: 23, scope: !1850)
!1854 = !DILocation(line: 304, column: 11, scope: !1819)
!1855 = !DILocation(line: 304, column: 22, scope: !1819)
!1856 = !{!919, !380, i64 56}
!1857 = !DILocation(line: 305, column: 42, scope: !1819)
!1858 = !DILocation(line: 305, column: 11, scope: !1819)
!1859 = !DILocation(line: 305, column: 22, scope: !1819)
!1860 = !DILocation(line: 307, column: 42, scope: !1819)
!1861 = !DILocation(line: 307, column: 11, scope: !1819)
!1862 = !DILocation(line: 307, column: 22, scope: !1819)
!1863 = !DILocation(line: 309, column: 11, scope: !1819)
!1864 = !DILocation(line: 309, column: 22, scope: !1819)
!1865 = !{!919, !380, i64 96}
!1866 = !DILocation(line: 310, column: 42, scope: !1819)
!1867 = !{!919, !390, i64 104}
!1868 = !DILocation(line: 310, column: 11, scope: !1819)
!1869 = !DILocation(line: 310, column: 22, scope: !1819)
!1870 = !DILocation(line: 311, column: 42, scope: !1819)
!1871 = !DILocation(line: 311, column: 11, scope: !1819)
!1872 = !DILocation(line: 311, column: 22, scope: !1819)
!1873 = !DILocation(line: 313, column: 42, scope: !1819)
!1874 = !{!919, !390, i64 128}
!1875 = !DILocation(line: 313, column: 11, scope: !1819)
!1876 = !DILocation(line: 313, column: 22, scope: !1819)
!1877 = !DILocation(line: 314, column: 42, scope: !1819)
!1878 = !{!919, !390, i64 132}
!1879 = !DILocation(line: 314, column: 11, scope: !1819)
!1880 = !DILocation(line: 314, column: 22, scope: !1819)
!1881 = !DILocation(line: 315, column: 11, scope: !1819)
!1882 = !DILocation(line: 315, column: 22, scope: !1819)
!1883 = !{!919, !380, i64 136}
!1884 = !DILocation(line: 316, column: 24, scope: !1819)
!1885 = !DILocation(line: 316, column: 11, scope: !1819)
!1886 = !DILocation(line: 316, column: 22, scope: !1819)
!1887 = !DILocation(line: 317, column: 24, scope: !1819)
!1888 = !DILocation(line: 317, column: 3, scope: !1819)
!1889 = !DILocation(line: 317, column: 22, scope: !1819)
!1890 = !DILocation(line: 318, column: 24, scope: !1819)
!1891 = !DILocation(line: 318, column: 3, scope: !1819)
!1892 = !DILocation(line: 318, column: 22, scope: !1819)
!1893 = !DILocation(line: 319, column: 42, scope: !1819)
!1894 = !{!919, !920, i64 168}
!1895 = !DILocation(line: 319, column: 11, scope: !1819)
!1896 = !DILocation(line: 319, column: 22, scope: !1819)
!1897 = !DILocation(line: 290, column: 34, scope: !1820)
!1898 = !DILocation(line: 290, column: 23, scope: !1820)
!1899 = !DILocation(line: 290, column: 16, scope: !1820)
!1900 = distinct !{!1900, !1816, !1901}
!1901 = !DILocation(line: 320, column: 2, scope: !1817)
!1902 = !DILocation(line: 323, column: 1, scope: !1576)
!1903 = distinct !DISubprogram(name: "copystrand", scope: !3, file: !3, line: 325, type: !1904, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!53, !53}
!1906 = !{!1907, !1908, !1909, !1910}
!1907 = !DILocalVariable(name: "str", arg: 1, scope: !1903, file: !3, line: 325, type: !53)
!1908 = !DILocalVariable(name: "newstrand", scope: !1903, file: !3, line: 327, type: !53)
!1909 = !DILocalVariable(name: "namebuf", scope: !1903, file: !3, line: 328, type: !12)
!1910 = !DILocalVariable(name: "resctr", scope: !1903, file: !3, line: 329, type: !11)
!1911 = !DILocation(line: 0, scope: !1903)
!1912 = !DILocation(line: 331, column: 33, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 331, column: 5)
!1914 = !DILocation(line: 331, column: 19, scope: !1913)
!1915 = !DILocation(line: 331, column: 64, scope: !1913)
!1916 = !DILocation(line: 331, column: 5, scope: !1903)
!1917 = !DILocation(line: 332, column: 41, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 331, column: 72)
!1919 = !{!1920, !380, i64 0}
!1920 = !{!"strand_t", !380, i64 0, !390, i64 8, !390, i64 12, !380, i64 16, !380, i64 24, !390, i64 32, !390, i64 36, !380, i64 40}
!1921 = !DILocation(line: 332, column: 3, scope: !1918)
!1922 = !DILocation(line: 333, column: 3, scope: !1918)
!1923 = !DILocation(line: 334, column: 3, scope: !1918)
!1924 = !DILocation(line: 338, column: 16, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 337, column: 13)
!1926 = !{!1920, !390, i64 32}
!1927 = !DILocation(line: 338, column: 11, scope: !1925)
!1928 = !DILocation(line: 338, column: 28, scope: !1925)
!1929 = !DILocation(line: 338, column: 3, scope: !1925)
!1930 = !DILocation(line: 337, column: 26, scope: !1925)
!1931 = !DILocation(line: 337, column: 37, scope: !1925)
!1932 = !{!1920, !380, i64 40}
!1933 = !DILocation(line: 338, column: 56, scope: !1925)
!1934 = !DILocation(line: 337, column: 13, scope: !1903)
!1935 = !DILocation(line: 340, column: 17, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 339, column: 2)
!1937 = !DILocation(line: 341, column: 17, scope: !1936)
!1938 = !DILocation(line: 344, column: 51, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 344, column: 6)
!1940 = !DILocation(line: 344, column: 38, scope: !1939)
!1941 = !DILocation(line: 344, column: 66, scope: !1939)
!1942 = !DILocation(line: 344, column: 28, scope: !1939)
!1943 = !DILocation(line: 345, column: 24, scope: !1939)
!1944 = !DILocation(line: 344, column: 6, scope: !1903)
!1945 = !DILocation(line: 347, column: 3, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 346, column: 2)
!1947 = !DILocation(line: 348, column: 3, scope: !1946)
!1948 = !DILocation(line: 349, column: 3, scope: !1946)
!1949 = !DILocation(line: 351, column: 13, scope: !1903)
!1950 = !DILocation(line: 351, column: 26, scope: !1903)
!1951 = !DILocation(line: 352, column: 2, scope: !1903)
!1952 = !DILocation(line: 353, column: 32, scope: !1903)
!1953 = !{!1920, !390, i64 8}
!1954 = !DILocation(line: 353, column: 13, scope: !1903)
!1955 = !DILocation(line: 353, column: 25, scope: !1903)
!1956 = !DILocation(line: 354, column: 27, scope: !1903)
!1957 = !{!1920, !390, i64 12}
!1958 = !DILocation(line: 354, column: 13, scope: !1903)
!1959 = !DILocation(line: 354, column: 20, scope: !1903)
!1960 = !DILocation(line: 355, column: 13, scope: !1903)
!1961 = !DILocation(line: 356, column: 20, scope: !1903)
!1962 = !DILocation(line: 357, column: 32, scope: !1903)
!1963 = !DILocation(line: 357, column: 13, scope: !1903)
!1964 = !DILocation(line: 357, column: 25, scope: !1903)
!1965 = !DILocation(line: 358, column: 13, scope: !1903)
!1966 = !DILocation(line: 358, column: 24, scope: !1903)
!1967 = !{!1920, !390, i64 36}
!1968 = !DILocation(line: 359, column: 34, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 359, column: 9)
!1970 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 359, column: 9)
!1971 = !DILocation(line: 359, column: 9, scope: !1970)
!1972 = !DILocation(line: 0, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 359, column: 65)
!1974 = !DILocation(line: 361, column: 22, scope: !1973)
!1975 = !DILocation(line: 361, column: 17, scope: !1973)
!1976 = !DILocation(line: 361, column: 4, scope: !1973)
!1977 = !DILocation(line: 360, column: 28, scope: !1973)
!1978 = !DILocation(line: 360, column: 49, scope: !1973)
!1979 = !DILocation(line: 362, column: 28, scope: !1973)
!1980 = !DILocation(line: 362, column: 17, scope: !1973)
!1981 = !DILocation(line: 362, column: 50, scope: !1973)
!1982 = !DILocation(line: 362, column: 59, scope: !1973)
!1983 = !DILocation(line: 359, column: 41, scope: !1969)
!1984 = !DILocation(line: 360, column: 17, scope: !1973)
!1985 = !DILocation(line: 365, column: 5, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 363, column: 22)
!1987 = !DILocation(line: 364, column: 55, scope: !1986)
!1988 = !DILocation(line: 364, column: 25, scope: !1986)
!1989 = !DILocation(line: 364, column: 69, scope: !1986)
!1990 = !DILocation(line: 359, column: 60, scope: !1969)
!1991 = distinct !{!1991, !1971, !1992, !1993}
!1992 = !DILocation(line: 366, column: 9, scope: !1970)
!1993 = !{!"llvm.loop.peeled.count", i32 1}
!1994 = !DILocation(line: 368, column: 1, scope: !1903)
!1995 = distinct !DISubprogram(name: "copymolecule", scope: !3, file: !3, line: 370, type: !1996, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!232, !232}
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005}
!1999 = !DILocalVariable(name: "mol", arg: 1, scope: !1995, file: !3, line: 370, type: !232)
!2000 = !DILocalVariable(name: "row", scope: !1995, file: !3, line: 372, type: !11)
!2001 = !DILocalVariable(name: "col", scope: !1995, file: !3, line: 372, type: !11)
!2002 = !DILocalVariable(name: "strptr", scope: !1995, file: !3, line: 373, type: !53)
!2003 = !DILocalVariable(name: "newstr", scope: !1995, file: !3, line: 373, type: !53)
!2004 = !DILocalVariable(name: "nextstr", scope: !1995, file: !3, line: 373, type: !53)
!2005 = !DILocalVariable(name: "newmol", scope: !1995, file: !3, line: 374, type: !232)
!2006 = !DILocation(line: 0, scope: !1995)
!2007 = !DILocation(line: 376, column: 9, scope: !1995)
!2008 = !DILocation(line: 378, column: 39, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 378, column: 12)
!2010 = !DILocation(line: 378, column: 23, scope: !2009)
!2011 = !DILocation(line: 378, column: 72, scope: !2009)
!2012 = !DILocation(line: 378, column: 12, scope: !1995)
!2013 = !DILocation(line: 379, column: 17, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 378, column: 80)
!2015 = !DILocation(line: 380, column: 17, scope: !2014)
!2016 = !DILocation(line: 381, column: 17, scope: !2014)
!2017 = !DILocation(line: 384, column: 35, scope: !1995)
!2018 = !{!2019, !390, i64 96}
!2019 = !{!"molecule_t", !381, i64 0, !390, i64 96, !380, i64 104, !390, i64 112, !390, i64 116, !390, i64 120, !380, i64 128}
!2020 = !DILocation(line: 384, column: 17, scope: !1995)
!2021 = !DILocation(line: 384, column: 28, scope: !1995)
!2022 = !DILocation(line: 385, column: 36, scope: !1995)
!2023 = !{!2019, !390, i64 112}
!2024 = !DILocation(line: 385, column: 17, scope: !1995)
!2025 = !DILocation(line: 385, column: 29, scope: !1995)
!2026 = !DILocation(line: 386, column: 33, scope: !1995)
!2027 = !{!2019, !390, i64 116}
!2028 = !DILocation(line: 386, column: 17, scope: !1995)
!2029 = !DILocation(line: 386, column: 26, scope: !1995)
!2030 = !DILocation(line: 387, column: 33, scope: !1995)
!2031 = !{!2019, !390, i64 120}
!2032 = !DILocation(line: 387, column: 17, scope: !1995)
!2033 = !DILocation(line: 387, column: 26, scope: !1995)
!2034 = !DILocation(line: 389, column: 19, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 389, column: 14)
!2036 = !{!2019, !380, i64 128}
!2037 = !DILocation(line: 389, column: 25, scope: !2035)
!2038 = !DILocation(line: 389, column: 14, scope: !1995)
!2039 = !DILocation(line: 390, column: 33, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 389, column: 35)
!2041 = !DILocation(line: 391, column: 9, scope: !2040)
!2042 = !DILocation(line: 0, scope: !2035)
!2043 = !DILocation(line: 397, column: 51, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 396, column: 50)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 396, column: 17)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 396, column: 17)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 395, column: 42)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 395, column: 9)
!2049 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 395, column: 9)
!2050 = !DILocation(line: 0, scope: !2044)
!2051 = !DILocation(line: 401, column: 23, scope: !1995)
!2052 = !{!2019, !380, i64 104}
!2053 = !DILocation(line: 402, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 402, column: 14)
!2055 = !DILocation(line: 402, column: 14, scope: !1995)
!2056 = !DILocation(line: 403, column: 26, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 402, column: 30)
!2058 = !DILocation(line: 404, column: 25, scope: !2057)
!2059 = !DILocation(line: 404, column: 36, scope: !2057)
!2060 = !{!1920, !380, i64 16}
!2061 = !DILocation(line: 405, column: 25, scope: !2057)
!2062 = !DILocation(line: 405, column: 35, scope: !2057)
!2063 = !DILocation(line: 406, column: 34, scope: !2057)
!2064 = !{!1920, !380, i64 24}
!2065 = !DILocation(line: 409, column: 24, scope: !1995)
!2066 = !DILocation(line: 409, column: 9, scope: !1995)
!2067 = !DILocation(line: 410, column: 27, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 409, column: 34)
!2069 = !DILocation(line: 411, column: 22, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 411, column: 22)
!2071 = !DILocation(line: 411, column: 22, scope: !2068)
!2072 = !DILocation(line: 412, column: 33, scope: !2070)
!2073 = !DILocation(line: 412, column: 40, scope: !2070)
!2074 = !DILocation(line: 412, column: 25, scope: !2070)
!2075 = !DILocation(line: 413, column: 26, scope: !2068)
!2076 = !DILocation(line: 413, column: 37, scope: !2068)
!2077 = !DILocation(line: 415, column: 34, scope: !2068)
!2078 = distinct !{!2078, !2066, !2079}
!2079 = !DILocation(line: 416, column: 9, scope: !1995)
!2080 = !DILocation(line: 418, column: 9, scope: !1995)
!2081 = !DILocation(line: 419, column: 9, scope: !1995)
!2082 = !DILocation(line: 420, column: 1, scope: !1995)
!2083 = distinct !DISubprogram(name: "addres2reslib", scope: !3, file: !3, line: 996, type: !2084, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !298}
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2087 = !DILocalVariable(name: "rlp", arg: 1, scope: !2083, file: !3, line: 996, type: !298)
!2088 = !DILocalVariable(name: "res", scope: !2083, file: !3, line: 998, type: !169)
!2089 = !DILocalVariable(name: "ap", scope: !2083, file: !3, line: 999, type: !201)
!2090 = !DILocalVariable(name: "anp", scope: !2083, file: !3, line: 1000, type: !12)
!2091 = !DILocalVariable(name: "rnp", scope: !2083, file: !3, line: 1000, type: !12)
!2092 = !DILocalVariable(name: "a", scope: !2083, file: !3, line: 1001, type: !11)
!2093 = !DILocalVariable(name: "i", scope: !2083, file: !3, line: 1001, type: !11)
!2094 = !DILocation(line: 0, scope: !2083)
!2095 = !DILocation(line: 1003, column: 29, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1003, column: 6)
!2097 = !DILocation(line: 1003, column: 61, scope: !2096)
!2098 = !DILocation(line: 1003, column: 6, scope: !2083)
!2099 = !DILocation(line: 1005, column: 18, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1003, column: 70)
!2101 = !DILocation(line: 1004, column: 3, scope: !2100)
!2102 = !DILocation(line: 1006, column: 3, scope: !2100)
!2103 = !DILocation(line: 1007, column: 3, scope: !2100)
!2104 = !DILocation(line: 1009, column: 33, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1009, column: 6)
!2106 = !DILocation(line: 1009, column: 41, scope: !2105)
!2107 = !DILocation(line: 1009, column: 25, scope: !2105)
!2108 = !DILocation(line: 1009, column: 64, scope: !2105)
!2109 = !DILocation(line: 1009, column: 6, scope: !2083)
!2110 = !DILocation(line: 1011, column: 18, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 1009, column: 73)
!2112 = !DILocation(line: 1010, column: 3, scope: !2111)
!2113 = !DILocation(line: 1012, column: 3, scope: !2111)
!2114 = !DILocation(line: 1013, column: 3, scope: !2111)
!2115 = !DILocation(line: 1015, column: 21, scope: !2083)
!2116 = !{!389, !380, i64 24}
!2117 = !DILocation(line: 1015, column: 14, scope: !2083)
!2118 = !DILocation(line: 1016, column: 16, scope: !2083)
!2119 = !DILocation(line: 1018, column: 26, scope: !2083)
!2120 = !DILocation(line: 1018, column: 44, scope: !2083)
!2121 = !DILocation(line: 1018, column: 18, scope: !2083)
!2122 = !DILocation(line: 1019, column: 10, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1019, column: 6)
!2124 = !DILocation(line: 1019, column: 6, scope: !2083)
!2125 = !DILocation(line: 1020, column: 12, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 1019, column: 19)
!2127 = !DILocation(line: 1020, column: 3, scope: !2126)
!2128 = !DILocation(line: 1022, column: 3, scope: !2126)
!2129 = !DILocation(line: 1024, column: 2, scope: !2083)
!2130 = !DILocation(line: 1025, column: 7, scope: !2083)
!2131 = !DILocation(line: 1025, column: 17, scope: !2083)
!2132 = !DILocation(line: 1027, column: 18, scope: !2083)
!2133 = !DILocation(line: 1028, column: 10, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1028, column: 6)
!2135 = !DILocation(line: 1028, column: 6, scope: !2083)
!2136 = !DILocation(line: 1029, column: 12, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1028, column: 19)
!2138 = !DILocation(line: 1029, column: 3, scope: !2137)
!2139 = !DILocation(line: 1031, column: 3, scope: !2137)
!2140 = !DILocation(line: 1033, column: 2, scope: !2083)
!2141 = !DILocation(line: 1034, column: 7, scope: !2083)
!2142 = !DILocation(line: 1034, column: 15, scope: !2083)
!2143 = !DILocation(line: 1036, column: 7, scope: !2083)
!2144 = !DILocation(line: 1036, column: 13, scope: !2083)
!2145 = !DILocation(line: 1037, column: 7, scope: !2083)
!2146 = !DILocation(line: 1037, column: 17, scope: !2083)
!2147 = !DILocation(line: 1038, column: 7, scope: !2083)
!2148 = !DILocation(line: 1038, column: 16, scope: !2083)
!2149 = !DILocation(line: 1039, column: 7, scope: !2083)
!2150 = !DILocation(line: 1039, column: 14, scope: !2083)
!2151 = !DILocation(line: 1040, column: 21, scope: !2083)
!2152 = !DILocation(line: 1040, column: 7, scope: !2083)
!2153 = !DILocation(line: 1040, column: 14, scope: !2083)
!2154 = !DILocation(line: 1041, column: 25, scope: !2083)
!2155 = !DILocation(line: 1041, column: 7, scope: !2083)
!2156 = !DILocation(line: 1041, column: 18, scope: !2083)
!2157 = !DILocation(line: 1042, column: 7, scope: !2083)
!2158 = !DILocation(line: 1045, column: 7, scope: !2083)
!2159 = !DILocation(line: 1045, column: 18, scope: !2083)
!2160 = !DILocation(line: 1046, column: 7, scope: !2083)
!2161 = !DILocation(line: 1046, column: 17, scope: !2083)
!2162 = !DILocation(line: 1047, column: 7, scope: !2083)
!2163 = !DILocation(line: 1047, column: 16, scope: !2083)
!2164 = !DILocation(line: 1043, column: 18, scope: !2083)
!2165 = !DILocation(line: 1048, column: 18, scope: !2083)
!2166 = !DILocation(line: 1048, column: 7, scope: !2083)
!2167 = !DILocation(line: 1048, column: 16, scope: !2083)
!2168 = !DILocation(line: 1049, column: 7, scope: !2083)
!2169 = !DILocation(line: 1049, column: 16, scope: !2083)
!2170 = !DILocation(line: 1050, column: 7, scope: !2083)
!2171 = !DILocation(line: 1050, column: 15, scope: !2083)
!2172 = !DILocation(line: 1051, column: 16, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1051, column: 2)
!2174 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1051, column: 2)
!2175 = !DILocation(line: 1051, column: 2, scope: !2174)
!2176 = !DILocation(line: 1052, column: 46, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1051, column: 32)
!2178 = !DILocation(line: 1052, column: 27, scope: !2177)
!2179 = !DILocation(line: 1052, column: 59, scope: !2177)
!2180 = !DILocation(line: 1052, column: 19, scope: !2177)
!2181 = !DILocation(line: 1053, column: 11, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 1053, column: 7)
!2183 = !DILocation(line: 1053, column: 7, scope: !2177)
!2184 = !DILocation(line: 1054, column: 13, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 1053, column: 20)
!2186 = !DILocation(line: 1054, column: 4, scope: !2185)
!2187 = !DILocation(line: 1056, column: 4, scope: !2185)
!2188 = !DILocation(line: 1059, column: 3, scope: !2177)
!2189 = !DILocation(line: 1060, column: 8, scope: !2177)
!2190 = !DILocation(line: 1060, column: 21, scope: !2177)
!2191 = !DILocation(line: 1060, column: 32, scope: !2177)
!2192 = !DILocation(line: 1061, column: 21, scope: !2177)
!2193 = !DILocation(line: 1061, column: 32, scope: !2177)
!2194 = !DILocation(line: 1062, column: 21, scope: !2177)
!2195 = !DILocation(line: 1062, column: 32, scope: !2177)
!2196 = !DILocation(line: 1063, column: 3, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 1063, column: 3)
!2198 = !DILocation(line: 1064, column: 37, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 1063, column: 3)
!2200 = !DILocation(line: 1065, column: 21, scope: !2177)
!2201 = !DILocation(line: 1065, column: 32, scope: !2177)
!2202 = !DILocation(line: 1066, column: 45, scope: !2177)
!2203 = !DILocation(line: 1066, column: 21, scope: !2177)
!2204 = !DILocation(line: 1066, column: 32, scope: !2177)
!2205 = !DILocation(line: 1068, column: 45, scope: !2177)
!2206 = !DILocation(line: 1068, column: 21, scope: !2177)
!2207 = !DILocation(line: 1068, column: 32, scope: !2177)
!2208 = !DILocation(line: 1070, column: 45, scope: !2177)
!2209 = !DILocation(line: 1070, column: 21, scope: !2177)
!2210 = !DILocation(line: 1070, column: 32, scope: !2177)
!2211 = !DILocation(line: 1071, column: 45, scope: !2177)
!2212 = !DILocation(line: 1071, column: 21, scope: !2177)
!2213 = !DILocation(line: 1071, column: 32, scope: !2177)
!2214 = !DILocation(line: 1073, column: 21, scope: !2177)
!2215 = !DILocation(line: 1073, column: 32, scope: !2177)
!2216 = !DILocation(line: 1074, column: 21, scope: !2177)
!2217 = !DILocation(line: 1074, column: 32, scope: !2177)
!2218 = !DILocation(line: 1076, column: 35, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 1075, column: 3)
!2220 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 1075, column: 3)
!2221 = !DILocation(line: 1076, column: 4, scope: !2219)
!2222 = !DILocation(line: 1076, column: 33, scope: !2219)
!2223 = !DILocation(line: 1077, column: 45, scope: !2177)
!2224 = !DILocation(line: 1077, column: 21, scope: !2177)
!2225 = !DILocation(line: 1077, column: 32, scope: !2177)
!2226 = !DILocation(line: 1051, column: 28, scope: !2173)
!2227 = !DILocation(line: 1051, column: 18, scope: !2173)
!2228 = distinct !{!2228, !2175, !2229}
!2229 = !DILocation(line: 1078, column: 2, scope: !2174)
!2230 = !DILocation(line: 1079, column: 1, scope: !2083)
!2231 = distinct !DISubprogram(name: "addbonds2reslib", scope: !3, file: !3, line: 1081, type: !2084, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241}
!2233 = !DILocalVariable(name: "rlp", arg: 1, scope: !2231, file: !3, line: 1081, type: !298)
!2234 = !DILocalVariable(name: "res", scope: !2231, file: !3, line: 1083, type: !169)
!2235 = !DILocalVariable(name: "bp", scope: !2231, file: !3, line: 1084, type: !183)
!2236 = !DILocalVariable(name: "b", scope: !2231, file: !3, line: 1085, type: !11)
!2237 = !DILocalVariable(name: "a", scope: !2231, file: !3, line: 1086, type: !11)
!2238 = !DILocalVariable(name: "ai", scope: !2231, file: !3, line: 1086, type: !11)
!2239 = !DILocalVariable(name: "aj", scope: !2231, file: !3, line: 1086, type: !11)
!2240 = !DILocalVariable(name: "api", scope: !2231, file: !3, line: 1087, type: !201)
!2241 = !DILocalVariable(name: "apj", scope: !2231, file: !3, line: 1087, type: !201)
!2242 = !DILocation(line: 0, scope: !2231)
!2243 = !DILocation(line: 1089, column: 18, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 1089, column: 2)
!2245 = !DILocation(line: 0, scope: !2244)
!2246 = !DILocation(line: 1089, column: 2, scope: !2244)
!2247 = !DILocation(line: 1090, column: 20, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1090, column: 7)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 1089, column: 52)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 1089, column: 2)
!2251 = !DILocation(line: 1090, column: 7, scope: !2248)
!2252 = !DILocation(line: 1090, column: 41, scope: !2248)
!2253 = !DILocation(line: 1090, column: 7, scope: !2249)
!2254 = !DILocation(line: 1092, column: 13, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1091, column: 8)
!2256 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 1090, column: 47)
!2257 = !DILocation(line: 1092, column: 21, scope: !2255)
!2258 = !DILocation(line: 1092, column: 5, scope: !2255)
!2259 = !DILocation(line: 1091, column: 15, scope: !2255)
!2260 = !DILocation(line: 1093, column: 5, scope: !2255)
!2261 = !DILocation(line: 1091, column: 8, scope: !2256)
!2262 = !DILocation(line: 1099, column: 18, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1099, column: 4)
!2264 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1099, column: 4)
!2265 = !DILocation(line: 1099, column: 4, scope: !2264)
!2266 = !DILocation(line: 0, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1099, column: 34)
!2268 = !DILocation(line: 1094, column: 5, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 1093, column: 14)
!2270 = !DILocation(line: 1096, column: 5, scope: !2269)
!2271 = !DILocation(line: 1097, column: 5, scope: !2269)
!2272 = !DILocation(line: 1100, column: 25, scope: !2267)
!2273 = !DILocation(line: 1100, column: 10, scope: !2267)
!2274 = !DILocation(line: 1100, column: 23, scope: !2267)
!2275 = !DILocation(line: 1101, column: 25, scope: !2267)
!2276 = !DILocation(line: 1101, column: 10, scope: !2267)
!2277 = !DILocation(line: 1101, column: 23, scope: !2267)
!2278 = !DILocation(line: 1102, column: 7, scope: !2267)
!2279 = !DILocation(line: 1103, column: 7, scope: !2267)
!2280 = !DILocation(line: 1104, column: 12, scope: !2267)
!2281 = !DILocation(line: 1106, column: 10, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 1106, column: 10)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1105, column: 42)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 1105, column: 5)
!2285 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1105, column: 5)
!2286 = !DILocation(line: 1106, column: 30, scope: !2282)
!2287 = !DILocation(line: 1106, column: 10, scope: !2283)
!2288 = !DILocation(line: 1108, column: 35, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1108, column: 15)
!2290 = !DILocation(line: 1108, column: 15, scope: !2282)
!2291 = !DILocation(line: 1109, column: 27, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 1108, column: 45)
!2293 = !DILocation(line: 1110, column: 12, scope: !2292)
!2294 = !DILocation(line: 1110, column: 22, scope: !2292)
!2295 = !DILocation(line: 1111, column: 7, scope: !2292)
!2296 = !DILocation(line: 1114, column: 12, scope: !2267)
!2297 = !DILocation(line: 1116, column: 10, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 1116, column: 10)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1115, column: 42)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 1115, column: 5)
!2301 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 1115, column: 5)
!2302 = !DILocation(line: 1116, column: 30, scope: !2298)
!2303 = !DILocation(line: 1116, column: 10, scope: !2299)
!2304 = !DILocation(line: 1118, column: 35, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1118, column: 15)
!2306 = !DILocation(line: 1118, column: 15, scope: !2298)
!2307 = !DILocation(line: 1119, column: 27, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 1118, column: 45)
!2309 = !DILocation(line: 1120, column: 12, scope: !2308)
!2310 = !DILocation(line: 1120, column: 22, scope: !2308)
!2311 = !DILocation(line: 1121, column: 7, scope: !2308)
!2312 = !DILocation(line: 1099, column: 30, scope: !2263)
!2313 = !DILocation(line: 1099, column: 20, scope: !2263)
!2314 = distinct !{!2314, !2265, !2315}
!2315 = !DILocation(line: 1124, column: 4, scope: !2264)
!2316 = !DILocation(line: 1125, column: 9, scope: !2256)
!2317 = !DILocation(line: 1125, column: 21, scope: !2256)
!2318 = !DILocation(line: 1126, column: 9, scope: !2256)
!2319 = !DILocation(line: 1126, column: 20, scope: !2256)
!2320 = !DILocation(line: 1127, column: 4, scope: !2256)
!2321 = !DILocation(line: 1089, column: 44, scope: !2250)
!2322 = distinct !{!2322, !2246, !2323}
!2323 = !DILocation(line: 1129, column: 2, scope: !2244)
!2324 = !DILocation(line: 1130, column: 57, scope: !2231)
!2325 = !DILocation(line: 1130, column: 2, scope: !2231)
!2326 = !DILocation(line: 1131, column: 2, scope: !2231)
!2327 = !DILocation(line: 1132, column: 2, scope: !2231)
!2328 = !DILocation(line: 1133, column: 1, scope: !2231)
!2329 = distinct !DISubprogram(name: "addqr2reslib", scope: !3, file: !3, line: 1135, type: !2084, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2330 = !{!2331, !2332, !2333, !2334, !2335}
!2331 = !DILocalVariable(name: "rlp", arg: 1, scope: !2329, file: !3, line: 1135, type: !298)
!2332 = !DILocalVariable(name: "res", scope: !2329, file: !3, line: 1137, type: !169)
!2333 = !DILocalVariable(name: "a", scope: !2329, file: !3, line: 1138, type: !11)
!2334 = !DILocalVariable(name: "ap", scope: !2329, file: !3, line: 1139, type: !201)
!2335 = !DILocalVariable(name: "apr", scope: !2329, file: !3, line: 1139, type: !201)
!2336 = !DILocation(line: 0, scope: !2329)
!2337 = !DILocation(line: 1141, column: 18, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 1141, column: 2)
!2339 = !DILocation(line: 0, scope: !2338)
!2340 = !DILocation(line: 1141, column: 2, scope: !2338)
!2341 = !DILocation(line: 1142, column: 20, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 1142, column: 7)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 1141, column: 52)
!2344 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 1141, column: 2)
!2345 = !DILocation(line: 1142, column: 7, scope: !2342)
!2346 = !DILocation(line: 1142, column: 41, scope: !2342)
!2347 = !DILocation(line: 1142, column: 7, scope: !2343)
!2348 = !DILocation(line: 1143, column: 32, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 1143, column: 4)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1143, column: 4)
!2351 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 1142, column: 47)
!2352 = !DILocation(line: 1143, column: 30, scope: !2349)
!2353 = !DILocation(line: 1143, column: 4, scope: !2350)
!2354 = !DILocation(line: 0, scope: !1313, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 1144, column: 16, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 1144, column: 9)
!2357 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1143, column: 52)
!2358 = !DILocation(line: 0, scope: !1319, inlinedAt: !2355)
!2359 = !DILocation(line: 1144, column: 35, scope: !2356)
!2360 = !DILocation(line: 0, scope: !1303, inlinedAt: !2355)
!2361 = !DILocation(line: 1206, column: 2, scope: !1314, inlinedAt: !2355)
!2362 = !DILocation(line: 1207, column: 34, scope: !1319, inlinedAt: !2355)
!2363 = !DILocation(line: 1207, column: 8, scope: !1319, inlinedAt: !2355)
!2364 = !DILocation(line: 1206, column: 34, scope: !1313, inlinedAt: !2355)
!2365 = !DILocation(line: 1207, column: 7, scope: !1320, inlinedAt: !2355)
!2366 = !DILocation(line: 1206, column: 16, scope: !1313, inlinedAt: !2355)
!2367 = distinct !{!2367, !2361, !2368}
!2368 = !DILocation(line: 1209, column: 2, scope: !1314, inlinedAt: !2355)
!2369 = !DILocation(line: 1146, column: 26, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 1144, column: 50)
!2371 = !DILocation(line: 1146, column: 11, scope: !2370)
!2372 = !DILocation(line: 1146, column: 20, scope: !2370)
!2373 = !DILocation(line: 1148, column: 26, scope: !2370)
!2374 = !DILocation(line: 1148, column: 11, scope: !2370)
!2375 = !DILocation(line: 1148, column: 20, scope: !2370)
!2376 = !DILocation(line: 1150, column: 26, scope: !2370)
!2377 = !DILocation(line: 1150, column: 11, scope: !2370)
!2378 = !DILocation(line: 1150, column: 20, scope: !2370)
!2379 = !DILocation(line: 1151, column: 26, scope: !2370)
!2380 = !DILocation(line: 1151, column: 11, scope: !2370)
!2381 = !DILocation(line: 1151, column: 20, scope: !2370)
!2382 = !DILocation(line: 1153, column: 5, scope: !2370)
!2383 = !DILocation(line: 1143, column: 42, scope: !2349)
!2384 = !DILocation(line: 1143, column: 48, scope: !2349)
!2385 = distinct !{!2385, !2353, !2386}
!2386 = !DILocation(line: 1154, column: 4, scope: !2350)
!2387 = !DILocation(line: 1141, column: 44, scope: !2344)
!2388 = distinct !{!2388, !2340, !2389}
!2389 = !DILocation(line: 1157, column: 2, scope: !2338)
!2390 = !DILocation(line: 1158, column: 57, scope: !2329)
!2391 = !DILocation(line: 1158, column: 2, scope: !2329)
!2392 = !DILocation(line: 1159, column: 2, scope: !2329)
!2393 = !DILocation(line: 1160, column: 2, scope: !2329)
!2394 = !DILocation(line: 1161, column: 1, scope: !2329)
!2395 = distinct !DISubprogram(name: "addchi2reslib", scope: !3, file: !3, line: 1163, type: !2084, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2405, !2406}
!2397 = !DILocalVariable(name: "rlp", arg: 1, scope: !2395, file: !3, line: 1163, type: !298)
!2398 = !DILocalVariable(name: "res", scope: !2395, file: !3, line: 1165, type: !169)
!2399 = !DILocalVariable(name: "cp", scope: !2395, file: !3, line: 1166, type: !190)
!2400 = !DILocalVariable(name: "a", scope: !2395, file: !3, line: 1167, type: !11)
!2401 = !DILocalVariable(name: "c", scope: !2395, file: !3, line: 1167, type: !11)
!2402 = !DILocalVariable(name: "ca", scope: !2395, file: !3, line: 1167, type: !11)
!2403 = !DILocalVariable(name: "pos", scope: !2395, file: !3, line: 1168, type: !2404)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 768, elements: !196)
!2405 = !DILocalVariable(name: "dvol", scope: !2395, file: !3, line: 1169, type: !2404)
!2406 = !DILocalVariable(name: "vol", scope: !2395, file: !3, line: 1170, type: !47)
!2407 = !DILocation(line: 0, scope: !2395)
!2408 = !DILocation(line: 1168, column: 2, scope: !2395)
!2409 = !DILocation(line: 1168, column: 11, scope: !2395)
!2410 = !DILocation(line: 1169, column: 2, scope: !2395)
!2411 = !DILocation(line: 1169, column: 11, scope: !2395)
!2412 = !DILocation(line: 1170, column: 2, scope: !2395)
!2413 = !DILocation(line: 1172, column: 18, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1172, column: 2)
!2415 = !DILocation(line: 0, scope: !2414)
!2416 = !DILocation(line: 1172, column: 2, scope: !2414)
!2417 = !DILocation(line: 1173, column: 21, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 1173, column: 7)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1172, column: 52)
!2420 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1172, column: 2)
!2421 = !DILocation(line: 1173, column: 8, scope: !2418)
!2422 = !DILocation(line: 1173, column: 7, scope: !2419)
!2423 = !DILocation(line: 1175, column: 13, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1174, column: 8)
!2425 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 1173, column: 43)
!2426 = !DILocation(line: 1175, column: 19, scope: !2424)
!2427 = !DILocation(line: 1175, column: 5, scope: !2424)
!2428 = !DILocation(line: 1176, column: 5, scope: !2424)
!2429 = !DILocation(line: 1174, column: 8, scope: !2425)
!2430 = !DILocation(line: 1177, column: 14, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1176, column: 14)
!2432 = !DILocation(line: 1179, column: 11, scope: !2431)
!2433 = !DILocation(line: 1177, column: 5, scope: !2431)
!2434 = !DILocation(line: 1180, column: 5, scope: !2431)
!2435 = !DILocation(line: 1182, column: 9, scope: !2425)
!2436 = !DILocation(line: 1182, column: 19, scope: !2425)
!2437 = !DILocation(line: 1183, column: 9, scope: !2425)
!2438 = !DILocation(line: 1183, column: 18, scope: !2425)
!2439 = !DILocation(line: 1184, column: 18, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 1184, column: 4)
!2441 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1184, column: 4)
!2442 = !DILocation(line: 1184, column: 4, scope: !2441)
!2443 = !DILocation(line: 1174, column: 15, scope: !2424)
!2444 = !DILocation(line: 0, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1185, column: 29)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 1185, column: 5)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1185, column: 5)
!2448 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1184, column: 32)
!2449 = !DILocation(line: 0, scope: !2448)
!2450 = !DILocation(line: 1186, column: 27, scope: !2445)
!2451 = !DILocation(line: 1186, column: 11, scope: !2445)
!2452 = !DILocation(line: 1186, column: 25, scope: !2445)
!2453 = !DILocation(line: 1187, column: 18, scope: !2445)
!2454 = !DILocation(line: 1187, column: 16, scope: !2445)
!2455 = !DILocation(line: 1188, column: 18, scope: !2445)
!2456 = !DILocation(line: 1188, column: 16, scope: !2445)
!2457 = !DILocation(line: 1189, column: 18, scope: !2445)
!2458 = !DILocation(line: 1189, column: 16, scope: !2445)
!2459 = !DILocation(line: 1191, column: 5, scope: !2448)
!2460 = !DILocation(line: 1192, column: 18, scope: !2448)
!2461 = !DILocation(line: 1192, column: 9, scope: !2448)
!2462 = !DILocation(line: 1192, column: 16, scope: !2448)
!2463 = !DILocation(line: 1193, column: 7, scope: !2448)
!2464 = !DILocation(line: 1184, column: 28, scope: !2440)
!2465 = !DILocation(line: 1184, column: 20, scope: !2440)
!2466 = distinct !{!2466, !2442, !2467}
!2467 = !DILocation(line: 1194, column: 4, scope: !2441)
!2468 = !DILocation(line: 1172, column: 44, scope: !2420)
!2469 = distinct !{!2469, !2416, !2470}
!2470 = !DILocation(line: 1197, column: 2, scope: !2414)
!2471 = !DILocation(line: 1198, column: 11, scope: !2395)
!2472 = !DILocation(line: 1199, column: 8, scope: !2395)
!2473 = !DILocation(line: 1199, column: 24, scope: !2395)
!2474 = !DILocation(line: 1198, column: 2, scope: !2395)
!2475 = !DILocation(line: 1200, column: 1, scope: !2395)
