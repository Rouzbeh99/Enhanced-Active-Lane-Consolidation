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
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()) #12, !dbg !374
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #12, !dbg !374
  %2 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !377, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %2, metadata !373, metadata !DIExpression()) #12, !dbg !374
  %3 = icmp eq %struct.reslib_t* %2, null, !dbg !383
  br i1 %3, label %14, label %4, !dbg !383

4:                                                ; preds = %10, %1
  %5 = phi %struct.reslib_t* [ %12, %10 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %5, i64 0, i32 1, !dbg !384
  %7 = load i8*, i8** %6, align 8, !dbg !384, !tbaa !388
  %8 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %7, i8* nonnull dereferenceable(1) %0) #13, !dbg !391
  %9 = icmp eq i32 %8, 0, !dbg !392
  br i1 %9, label %20, label %10, !dbg !393

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %5, i64 0, i32 0, !dbg !394
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #12, !dbg !374
  %12 = load %struct.reslib_t*, %struct.reslib_t** %11, align 8, !dbg !377, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %12, metadata !373, metadata !DIExpression()) #12, !dbg !374
  %13 = icmp eq %struct.reslib_t* %12, null, !dbg !383
  br i1 %13, label %14, label %4, !dbg !383, !llvm.loop !395

14:                                               ; preds = %10, %1
  %15 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %0), !dbg !397
  call void @llvm.dbg.value(metadata %struct.reslib_t* %15, metadata !366, metadata !DIExpression()), !dbg !367
  %16 = icmp eq %struct.reslib_t* %15, null, !dbg !400
  br i1 %16, label %17, label %20, !dbg !401

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !402, !tbaa !379
  %19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #14, !dbg !404
  tail call void @exit(i32 1) #15, !dbg !405
  unreachable, !dbg !405

20:                                               ; preds = %14, %4
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
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
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %43) #12, !dbg !635
  call void @llvm.dbg.declare(metadata [256 x i8]* %42, metadata !423, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i8* %0, metadata !577, metadata !DIExpression()) #12, !dbg !637
  call void @llvm.dbg.value(metadata i8* %43, metadata !582, metadata !DIExpression()) #12, !dbg !637
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %37, i64 0, i64 0, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %44) #12, !dbg !638
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %38, i64 0, i64 0, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #12, !dbg !638
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %39, i64 0, i64 0, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %46) #12, !dbg !638
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %40, i64 0, i64 0, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %47) #12, !dbg !638
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0, !dbg !639
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #12, !dbg !639
  %49 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #13, !dbg !640
  %50 = icmp eq i8* %49, null, !dbg !642
  br i1 %50, label %68, label %51, !dbg !643

51:                                               ; preds = %1
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %47, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %0) #12, !dbg !644
  call void @llvm.dbg.value(metadata i8* %47, metadata !646, metadata !DIExpression()) #12, !dbg !652
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #12, !dbg !652
  %53 = load i8, i8* %47, align 16, !dbg !654, !tbaa !656
  %54 = icmp eq i8 %53, 47, !dbg !657
  br i1 %54, label %59, label %55, !dbg !658

55:                                               ; preds = %51
  %56 = bitcast [100 x i8]* %40 to i16*, !dbg !659
  %57 = load i16, i16* %56, align 16, !dbg !659
  %58 = icmp eq i16 %57, 12078, !dbg !659
  br i1 %58, label %59, label %61, !dbg !660

59:                                               ; preds = %55, %51
  %60 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %47) #12, !dbg !661
  br label %63, !dbg !661

61:                                               ; preds = %55
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %47) #12, !dbg !662
  br label %63

63:                                               ; preds = %61, %59
  %64 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !663
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !583, metadata !DIExpression()) #12, !dbg !637
  %65 = icmp eq %struct._IO_FILE* %64, null, !dbg !665
  br i1 %65, label %66, label %83, !dbg !666

66:                                               ; preds = %63
  %67 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %48) #12, !dbg !667
  br label %291, !dbg !669

68:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !646, metadata !DIExpression()) #12, !dbg !670
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #12, !dbg !670
  %69 = load i8, i8* %0, align 1, !dbg !673, !tbaa !656
  %70 = icmp eq i8 %69, 47, !dbg !674
  br i1 %70, label %74, label %71, !dbg !675

71:                                               ; preds = %68
  %72 = tail call i32 @strncmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* nonnull %0, i64 2) #13, !dbg !676
  %73 = icmp eq i32 %72, 0, !dbg !676
  br i1 %73, label %74, label %76, !dbg !677

74:                                               ; preds = %71, %68
  %75 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %0) #12, !dbg !678
  br label %78, !dbg !678

76:                                               ; preds = %71
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %0) #12, !dbg !679
  br label %78

78:                                               ; preds = %76, %74
  %79 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !680
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %79, metadata !583, metadata !DIExpression()) #12, !dbg !637
  %80 = icmp eq %struct._IO_FILE* %79, null, !dbg !682
  br i1 %80, label %81, label %83, !dbg !683

81:                                               ; preds = %78
  %82 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %48) #12, !dbg !684
  br label %291, !dbg !686

83:                                               ; preds = %78, %63
  %84 = phi %struct._IO_FILE* [ %64, %63 ], [ %79, %78 ], !dbg !687
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %84, metadata !583, metadata !DIExpression()) #12, !dbg !637
  %85 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 32) #12, !dbg !688
  %86 = bitcast i8* %85 to %struct.reslib_t*, !dbg !690
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #12, !dbg !637
  %87 = icmp eq i8* %85, null, !dbg !691
  br i1 %87, label %88, label %91, !dbg !692

88:                                               ; preds = %83
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %0) #12, !dbg !693
  %90 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !695
  br label %291, !dbg !696

91:                                               ; preds = %83
  %92 = call i64 @strlen(i8* nonnull dereferenceable(1) %0) #13, !dbg !697
  call void @llvm.dbg.value(metadata i64 %92, metadata !586, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #12, !dbg !637
  %93 = shl i64 %92, 32, !dbg !698
  %94 = add i64 %93, 4294967296, !dbg !698
  %95 = ashr exact i64 %94, 32, !dbg !698
  %96 = call noalias i8* @malloc(i64 %95) #12, !dbg !700
  call void @llvm.dbg.value(metadata i8* %96, metadata !587, metadata !DIExpression()) #12, !dbg !637
  %97 = icmp eq i8* %96, null, !dbg !701
  br i1 %97, label %98, label %101, !dbg !702

98:                                               ; preds = %91
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* %0) #12, !dbg !703
  %100 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !705
  br label %291, !dbg !706

101:                                              ; preds = %91
  %102 = call i8* @strcpy(i8* nonnull %96, i8* nonnull dereferenceable(1) %0) #12, !dbg !707
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
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %107, i8 0, i64 16, i1 false) #12, !dbg !716
  store i8 0, i8* %43, align 16, !dbg !717, !tbaa !656
  %111 = call i8* @strstr(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #13, !dbg !718
  %112 = icmp eq i8* %111, null, !dbg !720
  br i1 %112, label %113, label %240, !dbg !721

113:                                              ; preds = %101
  %114 = call i8* @fgets(i8* nonnull %44, i32 128, %struct._IO_FILE* nonnull %84) #12, !dbg !722
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
  %128 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %45, i8* nonnull %46) #12, !dbg !749
  call void @llvm.dbg.value(metadata i32 %128, metadata !585, metadata !DIExpression()) #12, !dbg !637
  switch i32 %128, label %251 [
    i32 -1, label %233
    i32 2, label %129
  ], !dbg !750

129:                                              ; preds = %127
  %130 = call i32 @bcmp(i8* nonnull dereferenceable(5) %45, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 5) #12, !dbg !751
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
  %137 = call i32 @bcmp(i8* nonnull dereferenceable(3) %46, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 3) #12, !dbg !763
  %138 = icmp eq i32 %137, 0, !dbg !765
  br i1 %138, label %139, label %251, !dbg !766

139:                                              ; preds = %136
  store i32 3, i32* %108, align 8, !dbg !767, !tbaa !409
  br label %233

140:                                              ; preds = %129
  %141 = call i32 @bcmp(i8* nonnull dereferenceable(9) %45, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i64 9) #12, !dbg !768
  %142 = icmp eq i32 %141, 0, !dbg !769
  br i1 %142, label %143, label %151, !dbg !770

143:                                              ; preds = %140
  %144 = call i32 @bcmp(i8* nonnull dereferenceable(7) %46, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 7) #12, !dbg !771
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
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #12, !dbg !782
  call void @llvm.dbg.value(metadata i8* %43, metadata !651, metadata !DIExpression()) #12, !dbg !782
  %154 = load i8, i8* %46, align 16, !dbg !785, !tbaa !656
  %155 = icmp eq i8 %154, 47, !dbg !786
  %156 = load i16, i16* %118, align 16, !dbg !787
  %157 = icmp eq i16 %156, 12078, !dbg !787
  %158 = or i1 %155, %157, !dbg !788
  br i1 %158, label %159, label %161, !dbg !788

159:                                              ; preds = %153
  %160 = call i8* @strcpy(i8* nonnull dereferenceable(1) %43, i8* nonnull %46) #12, !dbg !789
  br label %233, !dbg !789

161:                                              ; preds = %153
  %162 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %43, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #12, !dbg !790
  br label %233

163:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #12, !dbg !791
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #12, !dbg !791
  %164 = load i8, i8* %46, align 16, !dbg !794, !tbaa !656
  %165 = icmp eq i8 %164, 47, !dbg !795
  %166 = load i16, i16* %118, align 16, !dbg !796
  %167 = icmp eq i16 %166, 12078, !dbg !796
  %168 = or i1 %165, %167, !dbg !797
  br i1 %168, label %169, label %171, !dbg !797

169:                                              ; preds = %163
  %170 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #12, !dbg !798
  br label %173, !dbg !798

171:                                              ; preds = %163
  %172 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #12, !dbg !799
  br label %173

173:                                              ; preds = %171, %169
  %174 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !800
  %175 = icmp eq %struct._IO_FILE* %174, null, !dbg !802
  br i1 %175, label %176, label %233, !dbg !803

176:                                              ; preds = %173
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* nonnull %46) #12, !dbg !804
  %178 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !806
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !584, metadata !DIExpression()) #12, !dbg !637
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #12, !dbg !637
  call void @llvm.dbg.label(metadata !593) #12, !dbg !807
  %179 = call i32 @fclose(%struct._IO_FILE* %84) #12, !dbg !808
  br label %267, !dbg !809

180:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #12, !dbg !812
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #12, !dbg !812
  %181 = load i8, i8* %46, align 16, !dbg !813, !tbaa !656
  %182 = icmp eq i8 %181, 47, !dbg !814
  %183 = load i16, i16* %118, align 16, !dbg !815
  %184 = icmp eq i16 %183, 12078, !dbg !815
  %185 = or i1 %182, %184, !dbg !816
  br i1 %185, label %186, label %188, !dbg !816

186:                                              ; preds = %180
  %187 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #12, !dbg !817
  br label %190, !dbg !817

188:                                              ; preds = %180
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #12, !dbg !818
  br label %190

190:                                              ; preds = %188, %186
  %191 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !819
  %192 = icmp eq %struct._IO_FILE* %191, null, !dbg !821
  br i1 %192, label %193, label %233, !dbg !822

193:                                              ; preds = %190
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %46) #12, !dbg !823
  %195 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !825
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !584, metadata !DIExpression()) #12, !dbg !637
  br label %251, !dbg !826

196:                                              ; preds = %151
  %197 = call i32 @bcmp(i8* nonnull dereferenceable(3) %45, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 3) #12, !dbg !827
  %198 = icmp eq i32 %197, 0, !dbg !829
  br i1 %198, label %199, label %215, !dbg !830

199:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #12, !dbg !831
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #12, !dbg !831
  %200 = load i8, i8* %46, align 16, !dbg !834, !tbaa !656
  %201 = icmp eq i8 %200, 47, !dbg !835
  %202 = load i16, i16* %118, align 16, !dbg !836
  %203 = icmp eq i16 %202, 12078, !dbg !836
  %204 = or i1 %201, %203, !dbg !837
  br i1 %204, label %205, label %207, !dbg !837

205:                                              ; preds = %199
  %206 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #12, !dbg !838
  br label %209, !dbg !838

207:                                              ; preds = %199
  %208 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #12, !dbg !839
  br label %209

209:                                              ; preds = %207, %205
  %210 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !840
  %211 = icmp eq %struct._IO_FILE* %210, null, !dbg !842
  br i1 %211, label %212, label %233, !dbg !843

212:                                              ; preds = %209
  %213 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* nonnull %46) #12, !dbg !844
  %214 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !846
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !584, metadata !DIExpression()) #12, !dbg !637
  br label %251, !dbg !847

215:                                              ; preds = %196
  %216 = icmp eq i32 %152, 6908003, !dbg !848
  br i1 %216, label %217, label %251, !dbg !850

217:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8* %46, metadata !646, metadata !DIExpression()) #12, !dbg !851
  call void @llvm.dbg.value(metadata i8* %48, metadata !651, metadata !DIExpression()) #12, !dbg !851
  %218 = load i8, i8* %46, align 16, !dbg !854, !tbaa !656
  %219 = icmp eq i8 %218, 47, !dbg !855
  %220 = load i16, i16* %118, align 16, !dbg !856
  %221 = icmp eq i16 %220, 12078, !dbg !856
  %222 = or i1 %219, %221, !dbg !857
  br i1 %222, label %223, label %225, !dbg !857

223:                                              ; preds = %217
  %224 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #12, !dbg !858
  br label %227, !dbg !858

225:                                              ; preds = %217
  %226 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #12, !dbg !859
  br label %227

227:                                              ; preds = %225, %223
  %228 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !860
  %229 = icmp eq %struct._IO_FILE* %228, null, !dbg !862
  br i1 %229, label %230, label %233, !dbg !863

230:                                              ; preds = %227
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %46) #12, !dbg !864
  %232 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !866
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !584, metadata !DIExpression()) #12, !dbg !637
  br label %251, !dbg !867

233:                                              ; preds = %227, %209, %190, %173, %161, %159, %150, %146, %139, %135, %134, %127, %120
  %234 = phi %struct._IO_FILE* [ %121, %120 ], [ %121, %139 ], [ %121, %135 ], [ %121, %134 ], [ %121, %146 ], [ %121, %150 ], [ %121, %209 ], [ %121, %227 ], [ %121, %190 ], [ %174, %173 ], [ %121, %159 ], [ %121, %161 ], [ %121, %127 ], !dbg !637
  %235 = phi %struct._IO_FILE* [ %122, %120 ], [ %122, %139 ], [ %122, %135 ], [ %122, %134 ], [ %122, %146 ], [ %122, %150 ], [ %122, %209 ], [ %122, %227 ], [ %191, %190 ], [ %122, %173 ], [ %122, %159 ], [ %122, %161 ], [ %122, %127 ], !dbg !637
  %236 = phi %struct._IO_FILE* [ %123, %120 ], [ %123, %139 ], [ %123, %135 ], [ %123, %134 ], [ %123, %146 ], [ %123, %150 ], [ %210, %209 ], [ %123, %227 ], [ %123, %190 ], [ %123, %173 ], [ %123, %159 ], [ %123, %161 ], [ %123, %127 ], !dbg !637
  %237 = phi %struct._IO_FILE* [ %124, %120 ], [ %124, %139 ], [ %124, %135 ], [ %124, %134 ], [ %124, %146 ], [ %124, %150 ], [ %124, %209 ], [ %228, %227 ], [ %124, %190 ], [ %124, %173 ], [ %124, %159 ], [ %124, %161 ], [ %124, %127 ], !dbg !637
  %238 = call i8* @fgets(i8* nonnull %44, i32 128, %struct._IO_FILE* %84) #12, !dbg !722
  %239 = icmp eq i8* %238, null, !dbg !724
  br i1 %239, label %259, label %120, !dbg !724, !llvm.loop !868

240:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i8* %47, metadata !646, metadata !DIExpression()) #12, !dbg !870
  call void @llvm.dbg.value(metadata i8* %43, metadata !651, metadata !DIExpression()) #12, !dbg !870
  %241 = load i8, i8* %47, align 16, !dbg !873, !tbaa !656
  %242 = icmp eq i8 %241, 47, !dbg !874
  br i1 %242, label %247, label %243, !dbg !875

243:                                              ; preds = %240
  %244 = bitcast [100 x i8]* %40 to i16*, !dbg !876
  %245 = load i16, i16* %244, align 16, !dbg !876
  %246 = icmp eq i16 %245, 12078, !dbg !876
  br i1 %246, label %247, label %249, !dbg !877

247:                                              ; preds = %243, %240
  %248 = call i8* @strcpy(i8* nonnull dereferenceable(1) %43, i8* nonnull %47) #12, !dbg !878
  br label %257, !dbg !878

249:                                              ; preds = %243
  %250 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %43, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %47) #12, !dbg !879
  br label %257

251:                                              ; preds = %230, %215, %212, %193, %147, %136, %127
  %252 = phi %struct._IO_FILE* [ %122, %212 ], [ %122, %230 ], [ null, %193 ], [ %122, %127 ], [ %122, %136 ], [ %122, %147 ], [ %122, %215 ], !dbg !637
  %253 = phi %struct._IO_FILE* [ null, %212 ], [ %123, %230 ], [ %123, %193 ], [ %123, %127 ], [ %123, %136 ], [ %123, %147 ], [ %123, %215 ], !dbg !637
  %254 = phi %struct._IO_FILE* [ %124, %212 ], [ null, %230 ], [ %124, %193 ], [ %124, %127 ], [ %124, %136 ], [ %124, %147 ], [ %124, %215 ], !dbg !637
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #12, !dbg !637
  call void @llvm.dbg.label(metadata !593) #12, !dbg !807
  %255 = call i32 @fclose(%struct._IO_FILE* %84) #12, !dbg !808
  %256 = icmp eq %struct._IO_FILE* %121, null, !dbg !880
  br i1 %256, label %267, label %265, !dbg !809

257:                                              ; preds = %249, %247
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #12, !dbg !637
  call void @llvm.dbg.label(metadata !593) #12, !dbg !807
  %258 = call i32 @fclose(%struct._IO_FILE* nonnull %84) #12, !dbg !808
  br label %291, !dbg !882

259:                                              ; preds = %233, %113
  %260 = phi %struct._IO_FILE* [ null, %113 ], [ %234, %233 ], !dbg !741
  %261 = phi %struct._IO_FILE* [ null, %113 ], [ %235, %233 ], !dbg !742
  %262 = phi %struct._IO_FILE* [ null, %113 ], [ %236, %233 ], !dbg !743
  %263 = phi %struct._IO_FILE* [ null, %113 ], [ %237, %233 ], !dbg !744
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !584, metadata !DIExpression()) #12, !dbg !637
  call void @llvm.dbg.label(metadata !593) #12, !dbg !807
  %264 = call i32 @fclose(%struct._IO_FILE* %84) #12, !dbg !808
  br label %291, !dbg !882

265:                                              ; preds = %251
  %266 = call i32 @fclose(%struct._IO_FILE* nonnull %121) #12, !dbg !883
  br label %267, !dbg !883

267:                                              ; preds = %265, %251, %176
  %268 = phi %struct._IO_FILE* [ %124, %176 ], [ %254, %265 ], [ %254, %251 ]
  %269 = phi %struct._IO_FILE* [ %123, %176 ], [ %253, %265 ], [ %253, %251 ]
  %270 = phi %struct._IO_FILE* [ %122, %176 ], [ %252, %265 ], [ %252, %251 ]
  %271 = phi %struct._IO_FILE* [ null, %176 ], [ %121, %265 ], [ null, %251 ]
  %272 = icmp eq %struct._IO_FILE* %270, null, !dbg !884
  br i1 %272, label %275, label %273, !dbg !886

273:                                              ; preds = %267
  %274 = call i32 @fclose(%struct._IO_FILE* nonnull %270) #12, !dbg !887
  br label %275, !dbg !887

275:                                              ; preds = %273, %267
  %276 = icmp eq %struct._IO_FILE* %269, null, !dbg !888
  br i1 %276, label %279, label %277, !dbg !890

277:                                              ; preds = %275
  %278 = call i32 @fclose(%struct._IO_FILE* nonnull %269) #12, !dbg !891
  br label %279, !dbg !891

279:                                              ; preds = %277, %275
  %280 = icmp eq %struct._IO_FILE* %268, null, !dbg !892
  br i1 %280, label %283, label %281, !dbg !894

281:                                              ; preds = %279
  %282 = call i32 @fclose(%struct._IO_FILE* nonnull %268) #12, !dbg !895
  br label %283, !dbg !895

283:                                              ; preds = %281, %279
  %284 = call i64 @strlen(i8* nonnull %44) #13, !dbg !896
  %285 = trunc i64 %284 to i32, !dbg !896
  %286 = add i32 %285, -1, !dbg !896
  call void @llvm.dbg.value(metadata i32 %286, metadata !586, metadata !DIExpression()) #12, !dbg !637
  %287 = icmp slt i32 %286, 20, !dbg !897
  %288 = select i1 %287, i32 %286, i32 20, !dbg !897
  call void @llvm.dbg.value(metadata i32 %288, metadata !586, metadata !DIExpression()) #12, !dbg !637
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %288, i32 %288, i8* nonnull %44) #12, !dbg !898
  %290 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !899
  br label %291, !dbg !900

291:                                              ; preds = %283, %259, %257, %98, %88, %81, %66
  %292 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %260, %259 ], [ %271, %283 ], [ null, %257 ], [ undef, %66 ]
  %293 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %261, %259 ], [ %270, %283 ], [ null, %257 ], [ undef, %66 ]
  %294 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %262, %259 ], [ %269, %283 ], [ null, %257 ], [ undef, %66 ]
  %295 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %263, %259 ], [ %268, %283 ], [ null, %257 ], [ undef, %66 ]
  %296 = phi %struct.reslib_t* [ null, %81 ], [ null, %88 ], [ null, %98 ], [ %86, %259 ], [ null, %283 ], [ %86, %257 ], [ null, %66 ], !dbg !637
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #12, !dbg !901
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %47) #12, !dbg !901
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %46) #12, !dbg !901
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #12, !dbg !901
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %44) #12, !dbg !901
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !422, metadata !DIExpression()), !dbg !634
  %297 = icmp eq %struct.reslib_t* %296, null, !dbg !902
  br i1 %297, label %759, label %298, !dbg !903

298:                                              ; preds = %291
  %299 = load i1, i1* @initatoms.init, align 4, !dbg !904
  br i1 %299, label %314, label %300, !dbg !907

300:                                              ; preds = %298
  store i1 true, i1* @initatoms.init, align 4, !dbg !908
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !329, metadata !DIExpression()) #12, !dbg !909
  call void @llvm.dbg.value(metadata i32 0, metadata !328, metadata !DIExpression()) #12, !dbg !909
  br label %301, !dbg !910

301:                                              ; preds = %310, %300
  %302 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %300 ], [ %312, %310 ]
  %303 = phi i32 [ 0, %300 ], [ %311, %310 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %302, metadata !329, metadata !DIExpression()) #12, !dbg !909
  call void @llvm.dbg.value(metadata i32 %303, metadata !328, metadata !DIExpression()) #12, !dbg !909
  call void @NAB_initatom(%struct.atom_t* nonnull %302, i32 1) #12, !dbg !912
  %304 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #12, !dbg !915
  %305 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %302, i64 0, i32 0, !dbg !916
  store i8* %304, i8** %305, align 8, !dbg !917, !tbaa !918
  %306 = icmp eq i8* %304, null, !dbg !921
  br i1 %306, label %307, label %310, !dbg !923

307:                                              ; preds = %301
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !924, !tbaa !379
  %309 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %308) #16, !dbg !926
  call void @exit(i32 1) #15, !dbg !927
  unreachable, !dbg !927

310:                                              ; preds = %301
  %311 = add nuw nsw i32 %303, 1, !dbg !928
  call void @llvm.dbg.value(metadata i32 %311, metadata !328, metadata !DIExpression()) #12, !dbg !909
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %302, i64 1, !dbg !929
  call void @llvm.dbg.value(metadata %struct.atom_t* %312, metadata !329, metadata !DIExpression()) #12, !dbg !909
  %313 = icmp eq i32 %311, 1000, !dbg !930
  br i1 %313, label %314, label %301, !dbg !910, !llvm.loop !931

314:                                              ; preds = %310, %298
  %315 = load i8, i8* %43, align 16, !dbg !933, !tbaa !656
  %316 = icmp eq i8 %315, 0, !dbg !933
  br i1 %316, label %420, label %317, !dbg !934

317:                                              ; preds = %314
  call void @llvm.dbg.value(metadata i8* %43, metadata !499, metadata !DIExpression()) #12, !dbg !935
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !500, metadata !DIExpression()) #12, !dbg !935
  %318 = bitcast i32* %20 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %318) #12, !dbg !936
  %319 = bitcast i32* %21 to i8*, !dbg !936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %319) #12, !dbg !936
  %320 = bitcast [100 x i32]* %22 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %320) #12, !dbg !937
  %321 = bitcast [100 x i32]* %23 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %321) #12, !dbg !937
  %322 = bitcast [100 x i32]* %24 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %322) #12, !dbg !937
  %323 = bitcast [100 x i32]* %25 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %323) #12, !dbg !937
  %324 = bitcast [100 x i32]* %26 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %324) #12, !dbg !937
  %325 = bitcast [100 x i32]* %27 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %325) #12, !dbg !938
  %326 = bitcast [100 x i32]* %28 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %326) #12, !dbg !938
  %327 = bitcast [100 x double]* %29 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %327) #12, !dbg !939
  %328 = bitcast [100 x double]* %30 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %328) #12, !dbg !939
  %329 = bitcast [100 x double]* %31 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %329) #12, !dbg !939
  %330 = bitcast [100 x double]* %32 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %330) #12, !dbg !939
  %331 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %33, i64 0, i64 0, i64 0, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %331) #12, !dbg !940
  %332 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %34, i64 0, i64 0, i64 0, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %332) #12, !dbg !940
  %333 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 0, i64 0, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %333) #12, !dbg !940
  %334 = getelementptr inbounds [255 x i8], [255 x i8]* %36, i64 0, i64 0, !dbg !941
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %334) #12, !dbg !941
  store i32 0, i32* @n_atoms, align 4, !dbg !942, !tbaa !943
  %335 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* nonnull %43, i32 1) #12, !dbg !944
  call void @llvm.dbg.value(metadata %struct.DATABASEt* %335, metadata !506, metadata !DIExpression()) #12, !dbg !935
  %336 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 0, !dbg !945
  call void @llvm.dbg.value(metadata i32* %21, metadata !503, metadata !DIExpression(DW_OP_deref)) #12, !dbg !935
  %337 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* nonnull %21, [10 x i8]* nonnull %336, i32 10) #12, !dbg !946
  call void @llvm.dbg.value(metadata i8 %337, metadata !530, metadata !DIExpression()) #12, !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !505, metadata !DIExpression()) #12, !dbg !935
  %338 = load i32, i32* %21, align 4, !dbg !947, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %338, metadata !503, metadata !DIExpression()) #12, !dbg !935
  %339 = icmp sgt i32 %338, 0, !dbg !950
  br i1 %339, label %340, label %419, !dbg !951

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

354:                                              ; preds = %414, %340
  %355 = phi i64 [ 0, %340 ], [ %415, %414 ]
  call void @llvm.dbg.value(metadata i64 %355, metadata !505, metadata !DIExpression()) #12, !dbg !935
  %356 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 %355, i64 0, !dbg !954
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %334, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %356) #12, !dbg !955
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* %335) #12, !dbg !956
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* %335, i8* nonnull %334) #12, !dbg !957
  call void @llvm.dbg.value(metadata i32* %20, metadata !502, metadata !DIExpression(DW_OP_deref)) #12, !dbg !935
  %358 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* nonnull %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 1) #12, !dbg !958
  call void @llvm.dbg.value(metadata i8 %358, metadata !530, metadata !DIExpression()) #12, !dbg !935
  %359 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* nonnull @n_atoms, i32 3, i32* nonnull %341, i64 4, i32 4, i32* nonnull %342, i64 4, i32 5, i32* nonnull %343, i64 4, i32 6, i32* nonnull %344, i64 4, i32 7, i32* nonnull %345, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 8, double* nonnull %346, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, [10 x i8]* nonnull %347, i32 10, i32 2, [10 x i8]* nonnull %348, i32 10, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #12, !dbg !959
  call void @llvm.dbg.value(metadata i8 %359, metadata !530, metadata !DIExpression()) #12, !dbg !935
  %360 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* nonnull @n_atoms, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, double* nonnull %349, i64 8, i32 2, double* nonnull %350, i64 8, i32 3, double* nonnull %351, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #12, !dbg !960
  call void @llvm.dbg.value(metadata i8 %360, metadata !530, metadata !DIExpression()) #12, !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !504, metadata !DIExpression()) #12, !dbg !935
  %361 = load i32, i32* @n_atoms, align 4, !dbg !961, !tbaa !943
  %362 = icmp sgt i32 %361, 0, !dbg !964
  br i1 %362, label %363, label %397, !dbg !965

363:                                              ; preds = %363, %354
  %364 = phi i64 [ %390, %363 ], [ 0, %354 ]
  call void @llvm.dbg.value(metadata i64 %364, metadata !504, metadata !DIExpression()) #12, !dbg !935
  %365 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, !dbg !966
  call void @llvm.dbg.value(metadata %struct.atom_t* %365, metadata !501, metadata !DIExpression()) #12, !dbg !935
  call void @NAB_initatom(%struct.atom_t* nonnull %365, i32 0) #12, !dbg !968
  %366 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %365, i64 0, i32 0, !dbg !969
  %367 = load i8*, i8** %366, align 16, !dbg !969, !tbaa !918
  %368 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %33, i64 0, i64 %364, i64 0, !dbg !970
  %369 = call i8* @strcpy(i8* nonnull dereferenceable(1) %367, i8* nonnull %368) #12, !dbg !971
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
  call void @llvm.dbg.value(metadata i64 %390, metadata !504, metadata !DIExpression()) #12, !dbg !935
  %391 = load i32, i32* @n_atoms, align 4, !dbg !961, !tbaa !943
  %392 = sext i32 %391 to i64, !dbg !964
  %393 = icmp slt i64 %390, %392, !dbg !964
  br i1 %393, label %363, label %394, !dbg !965, !llvm.loop !987

394:                                              ; preds = %363
  %395 = icmp sgt i32 %391, 0, !dbg !989
  br i1 %395, label %396, label %397, !dbg !991

396:                                              ; preds = %394
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !992
  br label %397, !dbg !992

397:                                              ; preds = %396, %394, %354
  %398 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* nonnull @n_bonds, i32 1, i32* nonnull %352, i64 4, i32 2, i32* nonnull %353, i64 4, i32 3, i32* nonnull %343, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #12, !dbg !993
  call void @llvm.dbg.value(metadata i8 %398, metadata !530, metadata !DIExpression()) #12, !dbg !935
  call void @llvm.dbg.value(metadata i32 0, metadata !504, metadata !DIExpression()) #12, !dbg !935
  %399 = load i32, i32* @n_bonds, align 4, !dbg !994, !tbaa !943
  %400 = icmp sgt i32 %399, 0, !dbg !997
  br i1 %400, label %401, label %414, !dbg !998

401:                                              ; preds = %397
  %402 = zext i32 %399 to i64, !dbg !998
  br label %403, !dbg !998

403:                                              ; preds = %403, %401
  %404 = phi i64 [ 0, %401 ], [ %411, %403 ]
  call void @llvm.dbg.value(metadata i64 %404, metadata !504, metadata !DIExpression()) #12, !dbg !935
  %405 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %404, !dbg !999
  %406 = load i32, i32* %405, align 4, !dbg !999, !tbaa !943
  %407 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %404, i64 0, !dbg !1001
  store i32 %406, i32* %407, align 8, !dbg !1002, !tbaa !943
  %408 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %404, !dbg !1003
  %409 = load i32, i32* %408, align 4, !dbg !1003, !tbaa !943
  %410 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %404, i64 1, !dbg !1004
  store i32 %409, i32* %410, align 4, !dbg !1005, !tbaa !943
  %411 = add nuw nsw i64 %404, 1, !dbg !1006
  call void @llvm.dbg.value(metadata i64 %411, metadata !504, metadata !DIExpression()) #12, !dbg !935
  %412 = icmp eq i64 %411, %402, !dbg !997
  br i1 %412, label %413, label %403, !dbg !998, !llvm.loop !1007

413:                                              ; preds = %403
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1009
  br label %414, !dbg !1009

414:                                              ; preds = %413, %397
  %415 = add nuw nsw i64 %355, 1, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %415, metadata !505, metadata !DIExpression()) #12, !dbg !935
  %416 = load i32, i32* %21, align 4, !dbg !947, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %416, metadata !503, metadata !DIExpression()) #12, !dbg !935
  %417 = sext i32 %416 to i64, !dbg !950
  %418 = icmp slt i64 %415, %417, !dbg !950
  br i1 %418, label %354, label %419, !dbg !951, !llvm.loop !1012

419:                                              ; preds = %414, %317
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %334) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %333) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %332) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %331) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %330) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %329) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %328) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %327) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %326) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %325) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %324) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %323) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %322) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %321) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %320) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %319) #12, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %318) #12, !dbg !1014
  br label %559, !dbg !1015

420:                                              ; preds = %314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !415, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !475, metadata !DIExpression()) #12, !dbg !1016
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !476, metadata !DIExpression()) #12, !dbg !1016
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #12, !dbg !1017
  %421 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !1018
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %421) #12, !dbg !1018
  %422 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !1018
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %422) #12, !dbg !1018
  %423 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1018
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %423) #12, !dbg !1018
  %424 = bitcast i32* %15 to i8*, !dbg !1019
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %424) #12, !dbg !1019
  %425 = bitcast i32* %16 to i8*, !dbg !1019
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %425) #12, !dbg !1019
  %426 = bitcast double* %17 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %426) #12, !dbg !1020
  %427 = bitcast double* %18 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %427) #12, !dbg !1020
  %428 = bitcast double* %19 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %428) #12, !dbg !1020
  store i32 0, i32* @n_atoms, align 4, !dbg !1021, !tbaa !943
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1022, !tbaa !656
  %429 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %292) #12, !dbg !1023
  %430 = icmp eq i8* %429, null, !dbg !1024
  br i1 %430, label %500, label %431, !dbg !1024

431:                                              ; preds = %420
  %432 = bitcast [256 x i8]* %41 to i32*, !dbg !1025
  %433 = bitcast double* %17 to i64*, !dbg !1027
  %434 = bitcast double* %18 to i64*, !dbg !1027
  %435 = bitcast double* %19 to i64*, !dbg !1027
  %436 = bitcast [100 x i8]* %39 to i32*, !dbg !1029
  %437 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 2, !dbg !1031
  %438 = bitcast [100 x i8]* %40 to i64*, !dbg !1033
  %439 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 3, !dbg !1033
  br label %440, !dbg !1024

440:                                              ; preds = %497, %431
  %441 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #12, !dbg !1036
  %442 = icmp eq i32 %441, 0, !dbg !1037
  br i1 %442, label %443, label %463, !dbg !1038

443:                                              ; preds = %440
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !618, metadata !DIExpression()) #12, !dbg !1039
  call void @llvm.dbg.value(metadata i8* %48, metadata !619, metadata !DIExpression()) #12, !dbg !1039
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %46) #12, !dbg !1040
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %47) #12, !dbg !1040
  %444 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #12, !dbg !1041
  %445 = icmp eq i32 %444, 2, !dbg !1043
  br i1 %445, label %446, label %462, !dbg !1044

446:                                              ; preds = %443
  %447 = load i32, i32* %436, align 16, !dbg !1045
  switch i32 %447, label %449 [
    i32 4279876, label %452
    i32 4279890, label %448
  ], !dbg !1046

448:                                              ; preds = %446
  br label %452, !dbg !1047

449:                                              ; preds = %446
  %450 = call i32 @bcmp(i8* nonnull dereferenceable(3) %46, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 3) #12, !dbg !1048
  %451 = icmp eq i32 %450, 0, !dbg !1050
  br i1 %451, label %452, label %454, !dbg !1051

452:                                              ; preds = %449, %448, %446
  %453 = phi i32 [ 2, %448 ], [ 1, %446 ], [ 3, %449 ]
  store i32 %453, i32* %437, align 8, !dbg !1029, !tbaa !409
  br label %454, !dbg !1052

454:                                              ; preds = %452, %449
  %455 = call i32 @bcmp(i8* nonnull dereferenceable(7) %47, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i64 7) #12, !dbg !1052
  %456 = icmp eq i32 %455, 0, !dbg !1053
  br i1 %456, label %457, label %458, !dbg !1054

457:                                              ; preds = %454
  store i32 1, i32* %439, align 4, !dbg !1055, !tbaa !775
  br label %462, !dbg !1056

458:                                              ; preds = %454
  %459 = load i64, i64* %438, align 16, !dbg !1057
  %460 = icmp eq i64 %459, 21760796498086977, !dbg !1057
  br i1 %460, label %461, label %462, !dbg !1058

461:                                              ; preds = %458
  store i32 2, i32* %439, align 4, !dbg !1059, !tbaa !775
  br label %462, !dbg !1060

462:                                              ; preds = %461, %458, %457, %443
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %47) #12, !dbg !1061
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %46) #12, !dbg !1061
  br label %497, !dbg !1062

463:                                              ; preds = %440
  %464 = load i32, i32* %432, align 16, !dbg !1063
  %465 = icmp eq i32 %464, 1297044545, !dbg !1063
  br i1 %465, label %469, label %466, !dbg !1064

466:                                              ; preds = %463
  %467 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #12, !dbg !1065
  %468 = icmp eq i32 %467, 0, !dbg !1066
  br i1 %468, label %469, label %497, !dbg !1067

469:                                              ; preds = %466, %463
  call void @llvm.dbg.value(metadata i32* %15, metadata !480, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1016
  call void @llvm.dbg.value(metadata i32* %16, metadata !481, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1016
  call void @llvm.dbg.value(metadata double* %17, metadata !482, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1016
  call void @llvm.dbg.value(metadata double* %18, metadata !483, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1016
  call void @llvm.dbg.value(metadata double* %19, metadata !484, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1016
  %470 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %421, i32* nonnull %15, i8* nonnull %422, i8* nonnull %423, i32* nonnull %16, double* nonnull %17, double* nonnull %18, double* nonnull %19) #12, !dbg !1068
  %471 = call i32 @strcmp(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %423) #13, !dbg !1069
  %472 = icmp eq i32 %471, 0, !dbg !1071
  br i1 %472, label %479, label %473, !dbg !1072

473:                                              ; preds = %469
  %474 = load i32, i32* @n_atoms, align 4, !dbg !1073, !tbaa !943
  %475 = icmp sgt i32 %474, 0, !dbg !1076
  br i1 %475, label %476, label %477, !dbg !1077

476:                                              ; preds = %473
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1078
  store i32 0, i32* @n_atoms, align 4, !dbg !1080, !tbaa !943
  br label %477, !dbg !1081

477:                                              ; preds = %476, %473
  %478 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %423) #12, !dbg !1082
  br label %479, !dbg !1083

479:                                              ; preds = %477, %469
  %480 = load i32, i32* @n_atoms, align 4, !dbg !1084, !tbaa !943
  %481 = sext i32 %480 to i64, !dbg !1085
  %482 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %481, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.atom_t* %482, metadata !485, metadata !DIExpression()) #12, !dbg !1016
  call void @NAB_initatom(%struct.atom_t* nonnull %482, i32 0) #12, !dbg !1086
  %483 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %482, i64 0, i32 0, !dbg !1087
  %484 = load i8*, i8** %483, align 16, !dbg !1087, !tbaa !918
  %485 = call i8* @strcpy(i8* nonnull dereferenceable(1) %484, i8* nonnull %422) #12, !dbg !1088
  %486 = load i64, i64* %433, align 8, !dbg !1089, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !482, metadata !DIExpression()) #12, !dbg !1016
  %487 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %481, i32 17, !dbg !1090
  %488 = bitcast [3 x double]* %487 to i64*, !dbg !1091
  store i64 %486, i64* %488, align 16, !dbg !1091, !tbaa !973
  %489 = load i64, i64* %434, align 8, !dbg !1092, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !483, metadata !DIExpression()) #12, !dbg !1016
  %490 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %481, i32 17, i64 1, !dbg !1093
  %491 = bitcast double* %490 to i64*, !dbg !1094
  store i64 %489, i64* %491, align 8, !dbg !1094, !tbaa !973
  %492 = load i64, i64* %435, align 8, !dbg !1095, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !484, metadata !DIExpression()) #12, !dbg !1016
  %493 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %481, i32 17, i64 2, !dbg !1096
  %494 = bitcast double* %493 to i64*, !dbg !1097
  store i64 %492, i64* %494, align 16, !dbg !1097, !tbaa !973
  %495 = load i32, i32* @n_atoms, align 4, !dbg !1098, !tbaa !943
  %496 = add nsw i32 %495, 1, !dbg !1098
  store i32 %496, i32* @n_atoms, align 4, !dbg !1098, !tbaa !943
  br label %497, !dbg !1099

497:                                              ; preds = %479, %466, %462
  %498 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %292) #12, !dbg !1023
  %499 = icmp eq i8* %498, null, !dbg !1024
  br i1 %499, label %500, label %440, !dbg !1024, !llvm.loop !1100

500:                                              ; preds = %497, %420
  %501 = load i32, i32* @n_atoms, align 4, !dbg !1102, !tbaa !943
  %502 = icmp sgt i32 %501, 0, !dbg !1104
  br i1 %502, label %503, label %504, !dbg !1105

503:                                              ; preds = %500
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1106
  br label %504, !dbg !1106

504:                                              ; preds = %503, %500
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %428) #12, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %427) #12, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %426) #12, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %425) #12, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %424) #12, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %423) #12, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %422) #12, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %421) #12, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #12, !dbg !1107
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !419, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !604, metadata !DIExpression()) #12, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !605, metadata !DIExpression()) #12, !dbg !1108
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #12, !dbg !1109
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #12, !dbg !1110
  %505 = bitcast i32* %10 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %505) #12, !dbg !1111
  %506 = bitcast i32* %11 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %506) #12, !dbg !1111
  store i32 0, i32* @n_bonds, align 4, !dbg !1112, !tbaa !943
  store i8 0, i8* %45, align 16, !dbg !1113, !tbaa !656
  %507 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %293) #12, !dbg !1114
  %508 = icmp eq i8* %507, null, !dbg !1115
  br i1 %508, label %552, label %509, !dbg !1115

509:                                              ; preds = %549, %504
  %510 = load i8, i8* %48, align 16, !dbg !1116, !tbaa !656
  %511 = icmp eq i8 %510, 35, !dbg !1119
  br i1 %511, label %512, label %530, !dbg !1120

512:                                              ; preds = %509
  %513 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %45) #12, !dbg !1121
  %514 = icmp eq i32 %513, 1, !dbg !1124
  br i1 %514, label %523, label %515, !dbg !1125

515:                                              ; preds = %512
  %516 = call i64 @strlen(i8* nonnull %48) #13, !dbg !1126
  %517 = trunc i64 %516 to i32, !dbg !1126
  %518 = add i32 %517, -1, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %518, metadata !607, metadata !DIExpression()) #12, !dbg !1108
  %519 = icmp slt i32 %518, 20, !dbg !1128
  %520 = select i1 %519, i32 %518, i32 20, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %520, metadata !607, metadata !DIExpression()) #12, !dbg !1108
  %521 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %520, i32 %520, i8* nonnull %48) #12, !dbg !1129
  %522 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1130
  br label %556, !dbg !1131

523:                                              ; preds = %512
  %524 = load i32, i32* @n_bonds, align 4, !dbg !1132, !tbaa !943
  %525 = icmp sgt i32 %524, 0, !dbg !1134
  br i1 %525, label %526, label %528, !dbg !1135

526:                                              ; preds = %523
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1136
  %527 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #12, !dbg !1138
  store i32 0, i32* @n_bonds, align 4, !dbg !1139, !tbaa !943
  br label %549, !dbg !1140

528:                                              ; preds = %523
  %529 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #12, !dbg !1141
  br label %549

530:                                              ; preds = %509
  call void @llvm.dbg.value(metadata i32* %10, metadata !608, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1108
  call void @llvm.dbg.value(metadata i32* %11, metadata !609, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1108
  %531 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11) #12, !dbg !1142
  %532 = icmp eq i32 %531, 2, !dbg !1145
  br i1 %532, label %541, label %533, !dbg !1146

533:                                              ; preds = %530
  %534 = call i64 @strlen(i8* nonnull %48) #13, !dbg !1147
  %535 = trunc i64 %534 to i32, !dbg !1147
  %536 = add i32 %535, -1, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %536, metadata !607, metadata !DIExpression()) #12, !dbg !1108
  %537 = icmp slt i32 %536, 20, !dbg !1149
  %538 = select i1 %537, i32 %536, i32 20, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %538, metadata !607, metadata !DIExpression()) #12, !dbg !1108
  %539 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %538, i32 %538, i8* nonnull %48) #12, !dbg !1150
  %540 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1151
  br label %556, !dbg !1152

541:                                              ; preds = %530
  %542 = load i32, i32* %10, align 4, !dbg !1153, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %542, metadata !608, metadata !DIExpression()) #12, !dbg !1108
  %543 = load i32, i32* @n_bonds, align 4, !dbg !1155, !tbaa !943
  %544 = sext i32 %543 to i64, !dbg !1156
  %545 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %544, i64 0, !dbg !1156
  store i32 %542, i32* %545, align 8, !dbg !1157, !tbaa !943
  %546 = load i32, i32* %11, align 4, !dbg !1158, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %546, metadata !609, metadata !DIExpression()) #12, !dbg !1108
  %547 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %544, i64 1, !dbg !1159
  store i32 %546, i32* %547, align 4, !dbg !1160, !tbaa !943
  %548 = add nsw i32 %543, 1, !dbg !1161
  store i32 %548, i32* @n_bonds, align 4, !dbg !1161, !tbaa !943
  br label %549

549:                                              ; preds = %541, %528, %526
  %550 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %293) #12, !dbg !1114
  %551 = icmp eq i8* %550, null, !dbg !1115
  br i1 %551, label %552, label %509, !dbg !1115, !llvm.loop !1162

552:                                              ; preds = %549, %504
  %553 = load i32, i32* @n_bonds, align 4, !dbg !1164, !tbaa !943
  %554 = icmp sgt i32 %553, 0, !dbg !1166
  br i1 %554, label %555, label %556, !dbg !1167

555:                                              ; preds = %552
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1168
  br label %556, !dbg !1168

556:                                              ; preds = %555, %552, %533, %515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %506) #12, !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %505) #12, !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #12, !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #12, !dbg !1169
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !415, metadata !DIExpression()), !dbg !634
  %557 = call i32 @fclose(%struct._IO_FILE* %292), !dbg !1170
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !419, metadata !DIExpression()), !dbg !634
  %558 = call i32 @fclose(%struct._IO_FILE* %293), !dbg !1171
  br label %559

559:                                              ; preds = %556, %419
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !420, metadata !DIExpression()), !dbg !634
  %560 = icmp eq %struct._IO_FILE* %294, null, !dbg !1172
  br i1 %560, label %618, label %561, !dbg !1173

561:                                              ; preds = %559
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !455, metadata !DIExpression()) #12, !dbg !1174
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !456, metadata !DIExpression()) #12, !dbg !1174
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #12, !dbg !1175
  %562 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %562) #12, !dbg !1176
  %563 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %563) #12, !dbg !1176
  %564 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %564) #12, !dbg !1176
  %565 = bitcast i32* %6 to i8*, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %565) #12, !dbg !1177
  %566 = bitcast i32* %7 to i8*, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %566) #12, !dbg !1177
  %567 = bitcast double* %8 to i8*, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %567) #12, !dbg !1178
  %568 = bitcast double* %9 to i8*, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %568) #12, !dbg !1178
  store i32 0, i32* @n_atoms, align 4, !dbg !1179, !tbaa !943
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1180, !tbaa !656
  %569 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %294) #12, !dbg !1181
  %570 = icmp eq i8* %569, null, !dbg !1182
  br i1 %570, label %612, label %571, !dbg !1182

571:                                              ; preds = %561
  %572 = bitcast [256 x i8]* %41 to i32*, !dbg !1183
  %573 = bitcast double* %8 to i64*, !dbg !1187
  %574 = bitcast double* %9 to i64*, !dbg !1187
  br label %575, !dbg !1182

575:                                              ; preds = %609, %571
  %576 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* nonnull dereferenceable(3) %48, i64 3) #12, !dbg !1189
  %577 = icmp eq i32 %576, 0, !dbg !1190
  br i1 %577, label %609, label %578, !dbg !1191

578:                                              ; preds = %575
  %579 = load i32, i32* %572, align 16, !dbg !1192
  %580 = icmp eq i32 %579, 1297044545, !dbg !1192
  br i1 %580, label %584, label %581, !dbg !1193

581:                                              ; preds = %578
  %582 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #12, !dbg !1194
  %583 = icmp eq i32 %582, 0, !dbg !1195
  br i1 %583, label %584, label %609, !dbg !1196

584:                                              ; preds = %581, %578
  call void @llvm.dbg.value(metadata i32* %6, metadata !463, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1174
  call void @llvm.dbg.value(metadata i32* %7, metadata !464, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1174
  call void @llvm.dbg.value(metadata double* %8, metadata !465, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1174
  call void @llvm.dbg.value(metadata double* %9, metadata !466, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1174
  %585 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %562, i32* nonnull %6, i8* nonnull %563, i8* nonnull %564, i32* nonnull %7, double* nonnull %8, double* nonnull %9) #12, !dbg !1197
  %586 = call i32 @strcmp(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %564) #13, !dbg !1198
  %587 = icmp eq i32 %586, 0, !dbg !1200
  br i1 %587, label %594, label %588, !dbg !1201

588:                                              ; preds = %584
  %589 = load i32, i32* @n_atoms, align 4, !dbg !1202, !tbaa !943
  %590 = icmp sgt i32 %589, 0, !dbg !1205
  br i1 %590, label %591, label %592, !dbg !1206

591:                                              ; preds = %588
  call fastcc void @addqr2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1207
  store i32 0, i32* @n_atoms, align 4, !dbg !1209, !tbaa !943
  br label %592, !dbg !1210

592:                                              ; preds = %591, %588
  %593 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %564) #12, !dbg !1211
  br label %594, !dbg !1212

594:                                              ; preds = %592, %584
  %595 = load i32, i32* @n_atoms, align 4, !dbg !1213, !tbaa !943
  %596 = sext i32 %595 to i64, !dbg !1214
  %597 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %596, !dbg !1214
  call void @llvm.dbg.value(metadata %struct.atom_t* %597, metadata !467, metadata !DIExpression()) #12, !dbg !1174
  call void @NAB_initatom(%struct.atom_t* nonnull %597, i32 0) #12, !dbg !1215
  %598 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %597, i64 0, i32 0, !dbg !1216
  %599 = load i8*, i8** %598, align 16, !dbg !1216, !tbaa !918
  %600 = call i8* @strcpy(i8* nonnull dereferenceable(1) %599, i8* nonnull %563) #12, !dbg !1217
  %601 = load i64, i64* %573, align 8, !dbg !1218, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !465, metadata !DIExpression()) #12, !dbg !1174
  %602 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %596, i32 6, !dbg !1219
  %603 = bitcast double* %602 to i64*, !dbg !1220
  store i64 %601, i64* %603, align 16, !dbg !1220, !tbaa !976
  %604 = load i64, i64* %574, align 8, !dbg !1221, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !466, metadata !DIExpression()) #12, !dbg !1174
  %605 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %596, i32 7, !dbg !1222
  %606 = bitcast double* %605 to i64*, !dbg !1223
  store i64 %604, i64* %606, align 8, !dbg !1223, !tbaa !1224
  %607 = load i32, i32* @n_atoms, align 4, !dbg !1225, !tbaa !943
  %608 = add nsw i32 %607, 1, !dbg !1225
  store i32 %608, i32* @n_atoms, align 4, !dbg !1225, !tbaa !943
  br label %609, !dbg !1226

609:                                              ; preds = %594, %581, %575
  %610 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %294) #12, !dbg !1181
  %611 = icmp eq i8* %610, null, !dbg !1182
  br i1 %611, label %612, label %575, !dbg !1182, !llvm.loop !1227

612:                                              ; preds = %609, %561
  %613 = load i32, i32* @n_atoms, align 4, !dbg !1229, !tbaa !943
  %614 = icmp sgt i32 %613, 0, !dbg !1231
  br i1 %614, label %615, label %616, !dbg !1232

615:                                              ; preds = %612
  call fastcc void @addqr2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1233
  br label %616, !dbg !1233

616:                                              ; preds = %615, %612
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %568) #12, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %567) #12, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %566) #12, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %565) #12, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %564) #12, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %563) #12, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %562) #12, !dbg !1234
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #12, !dbg !1234
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !420, metadata !DIExpression()), !dbg !634
  %617 = call i32 @fclose(%struct._IO_FILE* nonnull %294), !dbg !1235
  br label %618, !dbg !1236

618:                                              ; preds = %616, %559
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !421, metadata !DIExpression()), !dbg !634
  %619 = icmp eq %struct._IO_FILE* %295, null, !dbg !1237
  br i1 %619, label %759, label %620, !dbg !1238

620:                                              ; preds = %618
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !429, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !430, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #12, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #12, !dbg !1241
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %621 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !1242
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %621) #12, !dbg !1242
  %622 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0, !dbg !1242
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %622) #12, !dbg !1242
  %623 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1242
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %623) #12, !dbg !1242
  %624 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1242
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %624) #12, !dbg !1242
  store i32 0, i32* @n_chi, align 4, !dbg !1243, !tbaa !943
  store i8 0, i8* %45, align 16, !dbg !1244, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %625 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %295) #12, !dbg !1245
  %626 = icmp eq i8* %625, null, !dbg !1246
  br i1 %626, label %753, label %627, !dbg !1246

627:                                              ; preds = %620
  %628 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 4, !dbg !1247
  br label %629, !dbg !1246

629:                                              ; preds = %749, %627
  %630 = phi %struct.residue_t* [ null, %627 ], [ %750, %749 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %631 = load i8, i8* %48, align 16, !dbg !1254, !tbaa !656
  %632 = icmp eq i8 %631, 35, !dbg !1255
  br i1 %632, label %633, label %669, !dbg !1256

633:                                              ; preds = %629
  %634 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %45) #12, !dbg !1257
  %635 = icmp eq i32 %634, 1, !dbg !1258
  br i1 %635, label %645, label %636, !dbg !1259

636:                                              ; preds = %633
  %637 = call i64 @strlen(i8* nonnull %48) #13, !dbg !1260
  %638 = trunc i64 %637 to i32, !dbg !1260
  %639 = add i32 %638, -1, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %639, metadata !433, metadata !DIExpression()) #12, !dbg !1239
  %640 = icmp slt i32 %639, 20, !dbg !1262
  %641 = select i1 %640, i32 %639, i32 20, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %641, metadata !433, metadata !DIExpression()) #12, !dbg !1239
  %642 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %641, i32 %641, i8* nonnull %48) #12, !dbg !1263
  %643 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1264, !tbaa !379
  %644 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %643, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #16, !dbg !1265
  br label %757, !dbg !1266

645:                                              ; preds = %633
  %646 = load i32, i32* @n_chi, align 4, !dbg !1267, !tbaa !943
  %647 = icmp sgt i32 %646, 0, !dbg !1269
  br i1 %647, label %648, label %649, !dbg !1270

648:                                              ; preds = %645
  call fastcc void @addchi2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1271
  store i32 0, i32* @n_chi, align 4, !dbg !1273, !tbaa !943
  br label %649, !dbg !1274

649:                                              ; preds = %648, %645
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !435, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %650 = load %struct.residue_t*, %struct.residue_t** %628, align 8, !dbg !1247, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %650, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %651 = icmp eq %struct.residue_t* %650, null, !dbg !1275
  br i1 %651, label %662, label %652, !dbg !1275

652:                                              ; preds = %658, %649
  %653 = phi %struct.residue_t* [ %660, %658 ], [ %650, %649 ]
  %654 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %653, i64 0, i32 4, !dbg !1276
  %655 = load i8*, i8** %654, align 8, !dbg !1276, !tbaa !1280
  %656 = call i32 @strcmp(i8* nonnull dereferenceable(1) %655, i8* nonnull %45) #13, !dbg !1282
  %657 = icmp eq i32 %656, 0, !dbg !1282
  br i1 %657, label %667, label %658, !dbg !1283

658:                                              ; preds = %652
  %659 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %653, i64 0, i32 0, !dbg !1284
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %660 = load %struct.residue_t*, %struct.residue_t** %659, align 8, !dbg !1247, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %660, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %661 = icmp eq %struct.residue_t* %660, null, !dbg !1275
  br i1 %661, label %662, label %652, !dbg !1275, !llvm.loop !1285

662:                                              ; preds = %658, %649
  %663 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1287, !tbaa !379
  %664 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 1, !dbg !1290
  %665 = load i8*, i8** %664, align 8, !dbg !1290, !tbaa !388
  %666 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %663, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %45, i8* %665) #16, !dbg !1291
  br label %757, !dbg !1292

667:                                              ; preds = %652
  call void @llvm.dbg.value(metadata %struct.residue_t* %653, metadata !435, metadata !DIExpression()) #12, !dbg !1239
  %668 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #12, !dbg !1293
  br label %749, !dbg !1294

669:                                              ; preds = %629
  %670 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %621, i8* nonnull %622, i8* nonnull %623, i8* nonnull %624) #12, !dbg !1295
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !1297, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i8* %621, metadata !1302, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  %671 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 15, !dbg !1307
  %672 = load i32, i32* %671, align 8, !dbg !1307, !tbaa !1310
  %673 = icmp sgt i32 %672, 0, !dbg !1311
  br i1 %673, label %674, label %687, !dbg !1312

674:                                              ; preds = %669
  %675 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 17, !dbg !1313
  %676 = load %struct.atom_t*, %struct.atom_t** %675, align 8, !dbg !1316, !tbaa !1317
  %677 = zext i32 %672 to i64, !dbg !1311
  br label %680, !dbg !1312

678:                                              ; preds = %680
  call void @llvm.dbg.value(metadata i64 %686, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  %679 = icmp eq i64 %686, %677, !dbg !1311
  br i1 %679, label %687, label %680, !dbg !1312, !llvm.loop !1318

680:                                              ; preds = %678, %674
  %681 = phi i64 [ 0, %674 ], [ %686, %678 ]
  call void @llvm.dbg.value(metadata i64 %681, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  %682 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %676, i64 %681, i32 0, !dbg !1320
  %683 = load i8*, i8** %682, align 8, !dbg !1320, !tbaa !918
  %684 = call i32 @strcmp(i8* nonnull dereferenceable(1) %683, i8* nonnull dereferenceable(1) %621) #13, !dbg !1321
  %685 = icmp eq i32 %684, 0, !dbg !1321
  %686 = add nuw nsw i64 %681, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %686, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  br i1 %685, label %692, label %678, !dbg !1323

687:                                              ; preds = %678, %669
  %688 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1324, !tbaa !379
  %689 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 4, !dbg !1326
  %690 = load i8*, i8** %689, align 8, !dbg !1326, !tbaa !1280
  %691 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %688, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %621, i8* %690) #16, !dbg !1327
  call void @exit(i32 1) #15, !dbg !1328
  unreachable, !dbg !1328

692:                                              ; preds = %680
  call void @llvm.dbg.value(metadata i64 %681, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %681, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %681, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %681, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %681, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %681, metadata !1303, metadata !DIExpression()) #12, !dbg !1304
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !443, metadata !DIExpression()) #12, !dbg !1239
  %693 = trunc i64 %681 to i32, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %693, metadata !439, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !1297, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %622, metadata !1302, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  br label %696, !dbg !1333

694:                                              ; preds = %696
  call void @llvm.dbg.value(metadata i64 %702, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  %695 = icmp eq i64 %702, %677, !dbg !1334
  br i1 %695, label %703, label %696, !dbg !1333, !llvm.loop !1335

696:                                              ; preds = %694, %692
  %697 = phi i64 [ 0, %692 ], [ %702, %694 ]
  call void @llvm.dbg.value(metadata i64 %697, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  %698 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %676, i64 %697, i32 0, !dbg !1337
  %699 = load i8*, i8** %698, align 8, !dbg !1337, !tbaa !918
  %700 = call i32 @strcmp(i8* nonnull dereferenceable(1) %699, i8* nonnull dereferenceable(1) %622) #13, !dbg !1338
  %701 = icmp eq i32 %700, 0, !dbg !1338
  %702 = add nuw nsw i64 %697, 1, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %702, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  br i1 %701, label %708, label %694, !dbg !1340

703:                                              ; preds = %694
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %704 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1341, !tbaa !379
  %705 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 4, !dbg !1343
  %706 = load i8*, i8** %705, align 8, !dbg !1343, !tbaa !1280
  %707 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %704, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %622, i8* %706) #16, !dbg !1344
  call void @exit(i32 1) #15, !dbg !1345
  unreachable, !dbg !1345

708:                                              ; preds = %696
  call void @llvm.dbg.value(metadata i64 %697, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %697, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %697, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %697, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %697, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %697, metadata !1303, metadata !DIExpression()) #12, !dbg !1330
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !443, metadata !DIExpression()) #12, !dbg !1239
  %709 = trunc i64 %697 to i32, !dbg !1346
  call void @llvm.dbg.value(metadata i32 %709, metadata !440, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !1297, metadata !DIExpression()) #12, !dbg !1347
  call void @llvm.dbg.value(metadata i8* %623, metadata !1302, metadata !DIExpression()) #12, !dbg !1347
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()) #12, !dbg !1347
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()) #12, !dbg !1347
  br label %712, !dbg !1350

710:                                              ; preds = %712
  call void @llvm.dbg.value(metadata i64 %718, metadata !1303, metadata !DIExpression()) #12, !dbg !1347
  %711 = icmp eq i64 %718, %677, !dbg !1351
  br i1 %711, label %719, label %712, !dbg !1350, !llvm.loop !1352

712:                                              ; preds = %710, %708
  %713 = phi i64 [ 0, %708 ], [ %718, %710 ]
  call void @llvm.dbg.value(metadata i64 %713, metadata !1303, metadata !DIExpression()) #12, !dbg !1347
  %714 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %676, i64 %713, i32 0, !dbg !1354
  %715 = load i8*, i8** %714, align 8, !dbg !1354, !tbaa !918
  %716 = call i32 @strcmp(i8* nonnull dereferenceable(1) %715, i8* nonnull dereferenceable(1) %623) #13, !dbg !1355
  %717 = icmp eq i32 %716, 0, !dbg !1355
  %718 = add nuw nsw i64 %713, 1, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %718, metadata !1303, metadata !DIExpression()) #12, !dbg !1347
  br i1 %717, label %726, label %710, !dbg !1357

719:                                              ; preds = %710
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %720 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1358, !tbaa !379
  %721 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 4, !dbg !1360
  %722 = load i8*, i8** %721, align 8, !dbg !1360, !tbaa !1280
  %723 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %720, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %623, i8* %722) #16, !dbg !1361
  call void @exit(i32 1) #15, !dbg !1362
  unreachable, !dbg !1362

724:                                              ; preds = %726
  call void @llvm.dbg.value(metadata i64 %732, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  %725 = icmp eq i64 %732, %677, !dbg !1366
  br i1 %725, label %733, label %726, !dbg !1367, !llvm.loop !1368

726:                                              ; preds = %724, %712
  %727 = phi i64 [ %732, %724 ], [ 0, %712 ]
  call void @llvm.dbg.value(metadata i64 %727, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  %728 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %676, i64 %727, i32 0, !dbg !1370
  %729 = load i8*, i8** %728, align 8, !dbg !1370, !tbaa !918
  %730 = call i32 @strcmp(i8* nonnull dereferenceable(1) %729, i8* nonnull dereferenceable(1) %624) #13, !dbg !1371
  %731 = icmp eq i32 %730, 0, !dbg !1371
  %732 = add nuw nsw i64 %727, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %732, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  br i1 %731, label %738, label %724, !dbg !1373

733:                                              ; preds = %724
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %734 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1374, !tbaa !379
  %735 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 4, !dbg !1376
  %736 = load i8*, i8** %735, align 8, !dbg !1376, !tbaa !1280
  %737 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %734, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %624, i8* %736) #16, !dbg !1377
  call void @exit(i32 1) #15, !dbg !1378
  unreachable, !dbg !1378

738:                                              ; preds = %726
  call void @llvm.dbg.value(metadata i64 %727, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %727, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %727, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %727, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %727, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %727, metadata !1303, metadata !DIExpression()) #12, !dbg !1363
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !443, metadata !DIExpression()) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %713, metadata !441, metadata !DIExpression(DW_OP_constu, 176, DW_OP_mul, DW_OP_constu, 176, DW_OP_div, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #12, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %713, metadata !441, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #12, !dbg !1239
  %739 = trunc i64 %713 to i32, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %739, metadata !441, metadata !DIExpression()) #12, !dbg !1239
  %740 = trunc i64 %727 to i32, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %740, metadata !442, metadata !DIExpression()) #12, !dbg !1239
  %741 = load i32, i32* @n_chi, align 4, !dbg !1381, !tbaa !943
  %742 = sext i32 %741 to i64, !dbg !1382
  call void @llvm.dbg.value(metadata %struct.chiral_t* undef, metadata !444, metadata !DIExpression()) #12, !dbg !1239
  %743 = add nsw i32 %741, 1, !dbg !1383
  store i32 %743, i32* @n_chi, align 4, !dbg !1383, !tbaa !943
  %744 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 0, i64 0, !dbg !1384
  store i32 %693, i32* %744, align 8, !dbg !1385, !tbaa !943
  %745 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 0, i64 1, !dbg !1386
  store i32 %709, i32* %745, align 4, !dbg !1387, !tbaa !943
  %746 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 0, i64 2, !dbg !1388
  store i32 %739, i32* %746, align 8, !dbg !1389, !tbaa !943
  %747 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 0, i64 3, !dbg !1390
  store i32 %740, i32* %747, align 4, !dbg !1391, !tbaa !943
  %748 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 1, !dbg !1392
  store double 0.000000e+00, double* %748, align 8, !dbg !1393, !tbaa !1394
  br label %749

749:                                              ; preds = %738, %667
  %750 = phi %struct.residue_t* [ %653, %667 ], [ %630, %738 ], !dbg !1239
  call void @llvm.dbg.value(metadata %struct.residue_t* %750, metadata !434, metadata !DIExpression()) #12, !dbg !1239
  %751 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %295) #12, !dbg !1245
  %752 = icmp eq i8* %751, null, !dbg !1246
  br i1 %752, label %753, label %629, !dbg !1246, !llvm.loop !1396

753:                                              ; preds = %749, %620
  %754 = load i32, i32* @n_chi, align 4, !dbg !1398, !tbaa !943
  %755 = icmp sgt i32 %754, 0, !dbg !1400
  br i1 %755, label %756, label %757, !dbg !1401

756:                                              ; preds = %753
  call fastcc void @addchi2reslib(%struct.reslib_t* nonnull %296) #12, !dbg !1402
  store i32 0, i32* @n_chi, align 4, !dbg !1404, !tbaa !943
  br label %757, !dbg !1405

757:                                              ; preds = %756, %753, %662, %636
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %624) #12, !dbg !1406
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %623) #12, !dbg !1406
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %622) #12, !dbg !1406
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %621) #12, !dbg !1406
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #12, !dbg !1406
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #12, !dbg !1406
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !421, metadata !DIExpression()), !dbg !634
  %758 = call i32 @fclose(%struct._IO_FILE* nonnull %295), !dbg !1407
  br label %759, !dbg !1408

759:                                              ; preds = %757, %618, %291
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %43) #12, !dbg !1409
  ret %struct.reslib_t* %296, !dbg !1409
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* nocapture readonly %1) local_unnamed_addr #0 !dbg !1410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8* %1, metadata !1415, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i8* %0, metadata !368, metadata !DIExpression()) #12, !dbg !1419
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #12, !dbg !1419
  %3 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1422, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %3, metadata !373, metadata !DIExpression()) #12, !dbg !1419
  %4 = icmp eq %struct.reslib_t* %3, null, !dbg !1423
  br i1 %4, label %15, label %5, !dbg !1423

5:                                                ; preds = %11, %2
  %6 = phi %struct.reslib_t* [ %13, %11 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %6, i64 0, i32 1, !dbg !1424
  %8 = load i8*, i8** %7, align 8, !dbg !1424, !tbaa !388
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) %0) #13, !dbg !1425
  %10 = icmp eq i32 %9, 0, !dbg !1426
  br i1 %10, label %21, label %11, !dbg !1427

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %6, i64 0, i32 0, !dbg !1428
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #12, !dbg !1419
  %13 = load %struct.reslib_t*, %struct.reslib_t** %12, align 8, !dbg !1422, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %13, metadata !373, metadata !DIExpression()) #12, !dbg !1419
  %14 = icmp eq %struct.reslib_t* %13, null, !dbg !1423
  br i1 %14, label %15, label %5, !dbg !1423, !llvm.loop !1429

15:                                               ; preds = %11, %2
  %16 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %0), !dbg !1431
  call void @llvm.dbg.value(metadata %struct.reslib_t* %16, metadata !1417, metadata !DIExpression()), !dbg !1418
  %17 = icmp eq %struct.reslib_t* %16, null, !dbg !1434
  br i1 %17, label %18, label %21, !dbg !1435

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1436, !tbaa !379
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #14, !dbg !1438
  tail call void @exit(i32 1) #15, !dbg !1439
  unreachable, !dbg !1439

21:                                               ; preds = %15, %5
  %22 = phi %struct.reslib_t* [ %16, %15 ], [ %6, %5 ], !dbg !1440
  call void @llvm.dbg.value(metadata %struct.reslib_t* %22, metadata !1417, metadata !DIExpression()), !dbg !1418
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 2, !dbg !1441
  store i32 0, i32* %23, align 8, !dbg !1442, !tbaa !409
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #13, !dbg !1443
  %25 = icmp eq i32 %24, 0, !dbg !1443
  br i1 %25, label %41, label %26, !dbg !1445

26:                                               ; preds = %21
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !1446
  %28 = icmp eq i32 %27, 0, !dbg !1446
  br i1 %28, label %41, label %29, !dbg !1447

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !1448
  %31 = icmp eq i32 %30, 0, !dbg !1448
  br i1 %31, label %41, label %32, !dbg !1450

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !1451
  %34 = icmp eq i32 %33, 0, !dbg !1451
  br i1 %34, label %41, label %35, !dbg !1452

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !1453
  %37 = icmp eq i32 %36, 0, !dbg !1453
  br i1 %37, label %41, label %38, !dbg !1455

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !1456
  %40 = icmp eq i32 %39, 0, !dbg !1456
  br i1 %40, label %41, label %43, !dbg !1457

41:                                               ; preds = %38, %35, %32, %29, %26, %21
  %42 = phi i32 [ 1, %26 ], [ 1, %21 ], [ 2, %32 ], [ 2, %29 ], [ 3, %38 ], [ 3, %35 ]
  store i32 %42, i32* %23, align 8, !dbg !1458, !tbaa !409
  br label %43, !dbg !1459

43:                                               ; preds = %41, %38
  %44 = phi i32 [ 0, %38 ], [ %42, %41 ], !dbg !1460
  ret i32 %44, !dbg !1459
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1461 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1465, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i8* %1, metadata !1466, metadata !DIExpression()), !dbg !1475
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !1476
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %4) #12, !dbg !1476
  call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !1468, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8* %1, metadata !368, metadata !DIExpression()) #12, !dbg !1478
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #12, !dbg !1478
  %5 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1481, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %5, metadata !373, metadata !DIExpression()) #12, !dbg !1478
  %6 = icmp eq %struct.reslib_t* %5, null, !dbg !1482
  br i1 %6, label %17, label %7, !dbg !1482

7:                                                ; preds = %13, %2
  %8 = phi %struct.reslib_t* [ %15, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %8, i64 0, i32 1, !dbg !1483
  %10 = load i8*, i8** %9, align 8, !dbg !1483, !tbaa !388
  %11 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %10, i8* nonnull dereferenceable(1) %1) #13, !dbg !1484
  %12 = icmp eq i32 %11, 0, !dbg !1485
  br i1 %12, label %21, label %13, !dbg !1486

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %8, i64 0, i32 0, !dbg !1487
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !373, metadata !DIExpression()) #12, !dbg !1478
  %15 = load %struct.reslib_t*, %struct.reslib_t** %14, align 8, !dbg !1481, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %15, metadata !373, metadata !DIExpression()) #12, !dbg !1478
  %16 = icmp eq %struct.reslib_t* %15, null, !dbg !1482
  br i1 %16, label %17, label %7, !dbg !1482, !llvm.loop !1488

17:                                               ; preds = %13, %2
  %18 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %1), !dbg !1490
  call void @llvm.dbg.value(metadata %struct.reslib_t* %18, metadata !1472, metadata !DIExpression()), !dbg !1475
  %19 = icmp eq %struct.reslib_t* %18, null, !dbg !1493
  br i1 %19, label %20, label %21, !dbg !1494

20:                                               ; preds = %17
  tail call void @exit(i32 1) #15, !dbg !1495
  unreachable, !dbg !1495

21:                                               ; preds = %17, %7
  %22 = phi %struct.reslib_t* [ %18, %17 ], [ %8, %7 ], !dbg !1497
  call void @llvm.dbg.value(metadata %struct.reslib_t* %22, metadata !1472, metadata !DIExpression()), !dbg !1475
  %23 = call i8* @strcpy(i8* nonnull %4, i8* nonnull dereferenceable(1) %0) #12, !dbg !1498
  %24 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 2, !dbg !1499
  %25 = load i32, i32* %24, align 8, !dbg !1499, !tbaa !409
  switch i32 %25, label %58 [
    i32 1, label %26
    i32 2, label %42
  ], !dbg !1501

26:                                               ; preds = %21
  %27 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #13, !dbg !1502
  %28 = icmp eq i32 %27, 0, !dbg !1502
  br i1 %28, label %29, label %30, !dbg !1505

29:                                               ; preds = %26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #12, !dbg !1506
  br label %58, !dbg !1506

30:                                               ; preds = %26
  %31 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #13, !dbg !1507
  %32 = icmp eq i32 %31, 0, !dbg !1507
  br i1 %32, label %33, label %34, !dbg !1509

33:                                               ; preds = %30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false) #12, !dbg !1510
  br label %58, !dbg !1510

34:                                               ; preds = %30
  %35 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #13, !dbg !1511
  %36 = icmp eq i32 %35, 0, !dbg !1511
  br i1 %36, label %37, label %38, !dbg !1513

37:                                               ; preds = %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3, i1 false) #12, !dbg !1514
  br label %58, !dbg !1514

38:                                               ; preds = %34
  %39 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #13, !dbg !1515
  %40 = icmp eq i32 %39, 0, !dbg !1515
  br i1 %40, label %41, label %58, !dbg !1517

41:                                               ; preds = %38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 3, i1 false) #12, !dbg !1518
  br label %58, !dbg !1518

42:                                               ; preds = %21
  %43 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #13, !dbg !1519
  %44 = icmp eq i32 %43, 0, !dbg !1519
  br i1 %44, label %45, label %46, !dbg !1523

45:                                               ; preds = %42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 3, i1 false) #12, !dbg !1524
  br label %58, !dbg !1524

46:                                               ; preds = %42
  %47 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #13, !dbg !1525
  %48 = icmp eq i32 %47, 0, !dbg !1525
  br i1 %48, label %49, label %50, !dbg !1527

49:                                               ; preds = %46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 3, i1 false) #12, !dbg !1528
  br label %58, !dbg !1528

50:                                               ; preds = %46
  %51 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #13, !dbg !1529
  %52 = icmp eq i32 %51, 0, !dbg !1529
  br i1 %52, label %53, label %54, !dbg !1531

53:                                               ; preds = %50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i64 3, i1 false) #12, !dbg !1532
  br label %58, !dbg !1532

54:                                               ; preds = %50
  %55 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #13, !dbg !1533
  %56 = icmp eq i32 %55, 0, !dbg !1533
  br i1 %56, label %57, label %58, !dbg !1535

57:                                               ; preds = %54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 3, i1 false) #12, !dbg !1536
  br label %58, !dbg !1536

58:                                               ; preds = %57, %54, %53, %49, %45, %41, %38, %37, %33, %29, %21
  %59 = call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 51), !dbg !1537
  %60 = icmp eq i8* %59, null, !dbg !1539
  br i1 %60, label %61, label %64, !dbg !1540

61:                                               ; preds = %58
  %62 = call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 53), !dbg !1541
  %63 = icmp eq i8* %62, null, !dbg !1543
  br i1 %63, label %69, label %64, !dbg !1544

64:                                               ; preds = %61, %58
  %65 = phi i16 [ 51, %58 ], [ 53, %61 ]
  %66 = call i64 @strlen(i8* nonnull %4), !dbg !1545
  %67 = getelementptr [5 x i8], [5 x i8]* %3, i64 0, i64 %66, !dbg !1545
  %68 = bitcast i8* %67 to i16*, !dbg !1545
  store i16 %65, i16* %68, align 1, !dbg !1545
  br label %69, !dbg !1546

69:                                               ; preds = %64, %61
  %70 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 4, !dbg !1546
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1473, metadata !DIExpression()), !dbg !1475
  %71 = load %struct.residue_t*, %struct.residue_t** %70, align 8, !dbg !1548, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %71, metadata !1473, metadata !DIExpression()), !dbg !1475
  %72 = icmp eq %struct.residue_t* %71, null, !dbg !1549
  br i1 %72, label %86, label %73, !dbg !1549

73:                                               ; preds = %82, %69
  %74 = phi %struct.residue_t* [ %84, %82 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %74, i64 0, i32 4, !dbg !1550
  %76 = load i8*, i8** %75, align 8, !dbg !1550, !tbaa !1280
  %77 = call i32 @strcmp(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) %0) #13, !dbg !1554
  %78 = icmp eq i32 %77, 0, !dbg !1555
  br i1 %78, label %89, label %79, !dbg !1556

79:                                               ; preds = %73
  %80 = call i32 @strcmp(i8* nonnull dereferenceable(1) %76, i8* nonnull %4) #13, !dbg !1557
  %81 = icmp eq i32 %80, 0, !dbg !1558
  br i1 %81, label %89, label %82, !dbg !1559

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %74, i64 0, i32 0, !dbg !1560
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1473, metadata !DIExpression()), !dbg !1475
  %84 = load %struct.residue_t*, %struct.residue_t** %83, align 8, !dbg !1548, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %84, metadata !1473, metadata !DIExpression()), !dbg !1475
  %85 = icmp eq %struct.residue_t* %84, null, !dbg !1549
  br i1 %85, label %86, label %73, !dbg !1549, !llvm.loop !1561

86:                                               ; preds = %82, %69
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %0, i8* %1) #12, !dbg !1563
  %88 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1566
  br label %91, !dbg !1567

89:                                               ; preds = %79, %73
  %90 = call %struct.residue_t* @copyresidue(%struct.residue_t* nonnull %74), !dbg !1568
  call void @llvm.dbg.value(metadata %struct.residue_t* %90, metadata !1474, metadata !DIExpression()), !dbg !1475
  br label %91, !dbg !1569

91:                                               ; preds = %89, %86
  %92 = phi %struct.residue_t* [ null, %86 ], [ %90, %89 ], !dbg !1475
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %4) #12, !dbg !1570
  ret %struct.residue_t* %92, !dbg !1570
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
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) local_unnamed_addr #0 !dbg !1571 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1575, metadata !DIExpression()), !dbg !1587
  %2 = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #12, !dbg !1588
  %3 = bitcast i8* %2 to %struct.residue_t*, !dbg !1590
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !1581, metadata !DIExpression()), !dbg !1587
  %4 = icmp eq i8* %2, null, !dbg !1591
  br i1 %4, label %5, label %10, !dbg !1592

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1593
  %7 = load i8*, i8** %6, align 8, !dbg !1593, !tbaa !1280
  %8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %7) #12, !dbg !1595
  %9 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1596
  br label %306, !dbg !1597

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !1598
  %12 = load i32, i32* %11, align 8, !dbg !1598, !tbaa !1310
  %13 = sext i32 %12 to i64, !dbg !1600
  %14 = mul nsw i64 %13, 176, !dbg !1601
  %15 = tail call noalias i8* @malloc(i64 %14) #12, !dbg !1602
  %16 = bitcast i8* %15 to %struct.atom_t*, !dbg !1603
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !1582, metadata !DIExpression()), !dbg !1587
  %17 = icmp eq i8* %15, null, !dbg !1604
  br i1 %17, label %18, label %23, !dbg !1605

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1606
  %20 = load i8*, i8** %19, align 8, !dbg !1606, !tbaa !1280
  %21 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %20) #12, !dbg !1608
  %22 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1609
  br label %306, !dbg !1610

23:                                               ; preds = %10
  %24 = shl nsw i64 %13, 2, !dbg !1611
  %25 = tail call noalias i8* @malloc(i64 %24) #12, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %25, metadata !1580, metadata !DIExpression()), !dbg !1587
  %26 = icmp eq i8* %25, null, !dbg !1614
  br i1 %26, label %27, label %32, !dbg !1615

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1616
  %29 = load i8*, i8** %28, align 8, !dbg !1616, !tbaa !1280
  %30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %29) #12, !dbg !1618
  %31 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1619
  br label %306, !dbg !1620

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !1621
  %34 = load i32, i32* %33, align 8, !dbg !1621, !tbaa !1623
  %35 = icmp sgt i32 %34, 0, !dbg !1624
  br i1 %35, label %36, label %47, !dbg !1625

36:                                               ; preds = %32
  %37 = zext i32 %34 to i64, !dbg !1626
  %38 = shl nuw nsw i64 %37, 3, !dbg !1629
  %39 = tail call noalias i8* @malloc(i64 %38) #12, !dbg !1630
  %40 = bitcast i8* %39 to [2 x i32]*, !dbg !1631
  call void @llvm.dbg.value(metadata [2 x i32]* %40, metadata !1585, metadata !DIExpression()), !dbg !1587
  %41 = icmp eq i8* %39, null, !dbg !1632
  br i1 %41, label %42, label %47, !dbg !1633

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1634
  %44 = load i8*, i8** %43, align 8, !dbg !1634, !tbaa !1280
  %45 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %44) #12, !dbg !1636
  %46 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1637
  br label %306, !dbg !1638

47:                                               ; preds = %36, %32
  %48 = phi [2 x i32]* [ %40, %36 ], [ null, %32 ], !dbg !1639
  call void @llvm.dbg.value(metadata [2 x i32]* %48, metadata !1585, metadata !DIExpression()), !dbg !1587
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !1640
  %50 = load i32, i32* %49, align 8, !dbg !1640, !tbaa !1642
  %51 = icmp sgt i32 %50, 0, !dbg !1643
  br i1 %51, label %52, label %63, !dbg !1644

52:                                               ; preds = %47
  %53 = zext i32 %50 to i64, !dbg !1645
  %54 = mul nuw nsw i64 %53, 24, !dbg !1648
  %55 = tail call noalias i8* @malloc(i64 %54) #12, !dbg !1649
  %56 = bitcast i8* %55 to %struct.chiral_t*, !dbg !1650
  call void @llvm.dbg.value(metadata %struct.chiral_t* %56, metadata !1586, metadata !DIExpression()), !dbg !1587
  %57 = icmp eq i8* %55, null, !dbg !1651
  br i1 %57, label %58, label %63, !dbg !1652

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1653
  %60 = load i8*, i8** %59, align 8, !dbg !1653, !tbaa !1280
  %61 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %60) #12, !dbg !1655
  %62 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1656
  br label %306, !dbg !1657

63:                                               ; preds = %52, %47
  %64 = phi %struct.chiral_t* [ %56, %52 ], [ null, %47 ], !dbg !1658
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !1586, metadata !DIExpression()), !dbg !1587
  %65 = bitcast i8* %2 to %struct.residue_t**, !dbg !1659
  store %struct.residue_t* null, %struct.residue_t** %65, align 8, !dbg !1660, !tbaa !1661
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1662
  %67 = load i8*, i8** %66, align 8, !dbg !1662, !tbaa !1280
  %68 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %67) #13, !dbg !1663
  %69 = add i64 %68, 1, !dbg !1664
  %70 = tail call noalias i8* @malloc(i64 %69) #12, !dbg !1665
  call void @llvm.dbg.value(metadata i8* %70, metadata !1584, metadata !DIExpression()), !dbg !1587
  %71 = icmp eq i8* %70, null, !dbg !1666
  br i1 %71, label %72, label %75, !dbg !1668

72:                                               ; preds = %63
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1669, !tbaa !379
  %74 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %73) #14, !dbg !1671
  tail call void @exit(i32 1) #15, !dbg !1672
  unreachable, !dbg !1672

75:                                               ; preds = %63
  %76 = tail call i8* @strcpy(i8* nonnull %70, i8* nonnull dereferenceable(1) %67) #12, !dbg !1673
  %77 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1674
  %78 = bitcast i8* %77 to i8**, !dbg !1674
  store i8* %70, i8** %78, align 8, !dbg !1675, !tbaa !1280
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !1676
  %80 = load i8*, i8** %79, align 8, !dbg !1676, !tbaa !1677
  %81 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %80) #13, !dbg !1678
  %82 = add i64 %81, 1, !dbg !1679
  %83 = tail call noalias i8* @malloc(i64 %82) #12, !dbg !1680
  call void @llvm.dbg.value(metadata i8* %83, metadata !1584, metadata !DIExpression()), !dbg !1587
  %84 = icmp eq i8* %83, null, !dbg !1681
  br i1 %84, label %85, label %88, !dbg !1683

85:                                               ; preds = %75
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1684, !tbaa !379
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %86) #14, !dbg !1686
  tail call void @exit(i32 1) #15, !dbg !1687
  unreachable, !dbg !1687

88:                                               ; preds = %75
  %89 = tail call i8* @strcpy(i8* nonnull %83, i8* nonnull dereferenceable(1) %80) #12, !dbg !1688
  %90 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1689
  %91 = bitcast i8* %90 to i8**, !dbg !1689
  store i8* %83, i8** %91, align 8, !dbg !1690, !tbaa !1677
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !1691
  %93 = load i32, i32* %92, align 8, !dbg !1691, !tbaa !1692
  %94 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1693
  %95 = bitcast i8* %94 to i32*, !dbg !1693
  store i32 %93, i32* %95, align 8, !dbg !1694, !tbaa !1692
  %96 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1695
  %97 = bitcast i8* %96 to i32*, !dbg !1695
  store i32 0, i32* %97, align 4, !dbg !1696, !tbaa !1697
  %98 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1698
  %99 = bitcast i8* %98 to i32*, !dbg !1698
  store i32 0, i32* %99, align 8, !dbg !1699, !tbaa !1700
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !1701
  %101 = load i32, i32* %100, align 8, !dbg !1701, !tbaa !1702
  %102 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1703
  %103 = bitcast i8* %102 to i32*, !dbg !1703
  store i32 %101, i32* %103, align 8, !dbg !1704, !tbaa !1702
  %104 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !1705
  %105 = bitcast i8* %104 to %struct.strand_t**, !dbg !1705
  store %struct.strand_t* null, %struct.strand_t** %105, align 8, !dbg !1706, !tbaa !1707
  %106 = tail call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* nonnull %0) #12, !dbg !1708
  %107 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !1709
  %108 = bitcast i8* %107 to %struct.extbond_t**, !dbg !1709
  store %struct.extbond_t* %106, %struct.extbond_t** %108, align 8, !dbg !1710, !tbaa !1711
  %109 = load i32, i32* %33, align 8, !dbg !1712, !tbaa !1623
  %110 = getelementptr inbounds i8, i8* %2, i64 72, !dbg !1713
  %111 = bitcast i8* %110 to i32*, !dbg !1713
  store i32 %109, i32* %111, align 8, !dbg !1714, !tbaa !1623
  %112 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !1715
  %113 = bitcast i8* %112 to [2 x i32]**, !dbg !1715
  store [2 x i32]* %48, [2 x i32]** %113, align 8, !dbg !1716, !tbaa !1717
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1587
  %114 = icmp sgt i32 %109, 0, !dbg !1718
  br i1 %114, label %115, label %129, !dbg !1721

115:                                              ; preds = %88
  %116 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !1722
  %117 = load [2 x i32]*, [2 x i32]** %116, align 8, !dbg !1722, !tbaa !1717
  %118 = zext i32 %109 to i64, !dbg !1721
  br label %119, !dbg !1721

119:                                              ; preds = %119, %115
  %120 = phi i64 [ 0, %115 ], [ %127, %119 ]
  call void @llvm.dbg.value(metadata i64 %120, metadata !1577, metadata !DIExpression()), !dbg !1587
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %120, i64 0, !dbg !1724
  %122 = load i32, i32* %121, align 4, !dbg !1724, !tbaa !943
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %120, i64 0, !dbg !1725
  store i32 %122, i32* %123, align 4, !dbg !1726, !tbaa !943
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %120, i64 1, !dbg !1727
  %125 = load i32, i32* %124, align 4, !dbg !1727, !tbaa !943
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %120, i64 1, !dbg !1728
  store i32 %125, i32* %126, align 4, !dbg !1729, !tbaa !943
  %127 = add nuw nsw i64 %120, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %127, metadata !1577, metadata !DIExpression()), !dbg !1587
  %128 = icmp ult i64 %127, %118, !dbg !1718
  br i1 %128, label %119, label %129, !dbg !1721, !llvm.loop !1731

129:                                              ; preds = %119, %88
  %130 = load i32, i32* %49, align 8, !dbg !1733, !tbaa !1642
  %131 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !1734
  %132 = bitcast i8* %131 to i32*, !dbg !1734
  store i32 %130, i32* %132, align 8, !dbg !1735, !tbaa !1642
  %133 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !1736
  %134 = bitcast i8* %133 to %struct.chiral_t**, !dbg !1736
  store %struct.chiral_t* %64, %struct.chiral_t** %134, align 8, !dbg !1737, !tbaa !1738
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !1586, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1578, metadata !DIExpression()), !dbg !1587
  %135 = icmp sgt i32 %130, 0, !dbg !1739
  br i1 %135, label %136, label %160, !dbg !1742

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !1743
  %138 = load %struct.chiral_t*, %struct.chiral_t** %137, align 8, !dbg !1743, !tbaa !1738
  br label %139, !dbg !1742

139:                                              ; preds = %149, %136
  %140 = phi i64 [ 0, %136 ], [ %155, %149 ]
  %141 = phi %struct.chiral_t* [ %64, %136 ], [ %156, %149 ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %141, metadata !1586, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %140, metadata !1578, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1576, metadata !DIExpression()), !dbg !1587
  br label %142, !dbg !1745

142:                                              ; preds = %142, %139
  %143 = phi i64 [ 0, %139 ], [ %147, %142 ]
  call void @llvm.dbg.value(metadata i64 %143, metadata !1576, metadata !DIExpression()), !dbg !1587
  %144 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %138, i64 %140, i32 0, i64 %143, !dbg !1747
  %145 = load i32, i32* %144, align 4, !dbg !1747, !tbaa !943
  %146 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %141, i64 0, i32 0, i64 %143, !dbg !1749
  store i32 %145, i32* %146, align 4, !dbg !1750, !tbaa !943
  %147 = add nuw nsw i64 %143, 1, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %147, metadata !1576, metadata !DIExpression()), !dbg !1587
  %148 = icmp eq i64 %147, 4, !dbg !1752
  br i1 %148, label %149, label %142, !dbg !1745, !llvm.loop !1753

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %138, i64 %140, i32 1, !dbg !1755
  %151 = bitcast double* %150 to i64*, !dbg !1755
  %152 = load i64, i64* %151, align 8, !dbg !1755, !tbaa !1394
  %153 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %141, i64 0, i32 1, !dbg !1756
  %154 = bitcast double* %153 to i64*, !dbg !1757
  store i64 %152, i64* %154, align 8, !dbg !1757, !tbaa !1394
  %155 = add nuw nsw i64 %140, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %155, metadata !1578, metadata !DIExpression()), !dbg !1587
  %156 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %141, i64 1, !dbg !1759
  call void @llvm.dbg.value(metadata %struct.chiral_t* %156, metadata !1586, metadata !DIExpression()), !dbg !1587
  %157 = load i32, i32* %49, align 8, !dbg !1760, !tbaa !1642
  %158 = sext i32 %157 to i64, !dbg !1739
  %159 = icmp slt i64 %155, %158, !dbg !1739
  br i1 %159, label %139, label %160, !dbg !1742, !llvm.loop !1761

160:                                              ; preds = %149, %129
  %161 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !1763
  %162 = load i32, i32* %161, align 4, !dbg !1763, !tbaa !1764
  %163 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !1765
  %164 = bitcast i8* %163 to i32*, !dbg !1765
  store i32 %162, i32* %164, align 4, !dbg !1766, !tbaa !1764
  %165 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !1767
  %166 = load i32, i32* %165, align 8, !dbg !1767, !tbaa !1768
  %167 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !1769
  %168 = bitcast i8* %167 to i32*, !dbg !1769
  store i32 %166, i32* %168, align 8, !dbg !1770, !tbaa !1768
  %169 = load i32, i32* %11, align 8, !dbg !1771, !tbaa !1310
  %170 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !1772
  %171 = bitcast i8* %170 to i32*, !dbg !1772
  store i32 %169, i32* %171, align 8, !dbg !1773, !tbaa !1310
  %172 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !1774
  %173 = bitcast i8* %172 to i8**, !dbg !1775
  store i8* %25, i8** %173, align 8, !dbg !1775, !tbaa !1776
  %174 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !1777
  %175 = load i32*, i32** %174, align 8, !dbg !1777, !tbaa !1776
  %176 = icmp eq i32* %175, null, !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1576, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1576, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1576, metadata !DIExpression()), !dbg !1587
  %177 = icmp sgt i32 %169, 0, !dbg !1780
  %178 = bitcast i8* %25 to i32*, !dbg !1781
  br i1 %176, label %182, label %179, !dbg !1781

179:                                              ; preds = %160
  br i1 %177, label %180, label %198, !dbg !1782

180:                                              ; preds = %179
  %181 = sext i32 %169 to i64, !dbg !1785
  br label %185, !dbg !1782

182:                                              ; preds = %160
  br i1 %177, label %183, label %198, !dbg !1787

183:                                              ; preds = %182
  %184 = sext i32 %169 to i64, !dbg !1790
  br label %192, !dbg !1787

185:                                              ; preds = %185, %180
  %186 = phi i64 [ 0, %180 ], [ %190, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !1576, metadata !DIExpression()), !dbg !1587
  %187 = getelementptr inbounds i32, i32* %175, i64 %186, !dbg !1792
  %188 = load i32, i32* %187, align 4, !dbg !1792, !tbaa !943
  %189 = getelementptr inbounds i32, i32* %178, i64 %186, !dbg !1793
  store i32 %188, i32* %189, align 4, !dbg !1794, !tbaa !943
  %190 = add nuw nsw i64 %186, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %190, metadata !1576, metadata !DIExpression()), !dbg !1587
  %191 = icmp slt i64 %190, %181, !dbg !1796
  br i1 %191, label %185, label %201, !dbg !1782, !llvm.loop !1797

192:                                              ; preds = %192, %183
  %193 = phi i64 [ 0, %183 ], [ %196, %192 ]
  call void @llvm.dbg.value(metadata i64 %193, metadata !1576, metadata !DIExpression()), !dbg !1587
  %194 = getelementptr inbounds i32, i32* %178, i64 %193, !dbg !1799
  %195 = trunc i64 %193 to i32, !dbg !1800
  store i32 %195, i32* %194, align 4, !dbg !1800, !tbaa !943
  %196 = add nuw nsw i64 %193, 1, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %196, metadata !1576, metadata !DIExpression()), !dbg !1587
  %197 = icmp slt i64 %196, %184, !dbg !1802
  br i1 %197, label %192, label %201, !dbg !1787, !llvm.loop !1803

198:                                              ; preds = %182, %179
  %199 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1805
  %200 = bitcast i8* %199 to i8**, !dbg !1806
  store i8* %15, i8** %200, align 8, !dbg !1806, !tbaa !1317
  call void @llvm.dbg.value(metadata i32 0, metadata !1576, metadata !DIExpression()), !dbg !1587
  br label %306, !dbg !1807

201:                                              ; preds = %192, %185
  %202 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1805
  %203 = bitcast i8* %202 to i8**, !dbg !1806
  store i8* %15, i8** %203, align 8, !dbg !1806, !tbaa !1317
  call void @llvm.dbg.value(metadata i32 0, metadata !1576, metadata !DIExpression()), !dbg !1587
  br i1 %177, label %204, label %306, !dbg !1807

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1809
  %206 = load %struct.atom_t*, %struct.atom_t** %205, align 8, !dbg !1812, !tbaa !1317
  br label %207, !dbg !1807

207:                                              ; preds = %238, %204
  %208 = phi %struct.atom_t* [ %206, %204 ], [ %224, %238 ], !dbg !1812
  %209 = phi i64 [ 0, %204 ], [ %302, %238 ]
  call void @llvm.dbg.value(metadata i64 %209, metadata !1576, metadata !DIExpression()), !dbg !1587
  %210 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %208, i64 %209, i32 0, !dbg !1813
  %211 = load i8*, i8** %210, align 8, !dbg !1813, !tbaa !918
  %212 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %211) #13, !dbg !1814
  %213 = add i64 %212, 1, !dbg !1815
  %214 = tail call noalias i8* @malloc(i64 %213) #12, !dbg !1816
  call void @llvm.dbg.value(metadata i8* %214, metadata !1583, metadata !DIExpression()), !dbg !1587
  %215 = icmp eq i8* %214, null, !dbg !1817
  br i1 %215, label %216, label %219, !dbg !1819

216:                                              ; preds = %207
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1820, !tbaa !379
  %218 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %217) #14, !dbg !1822
  tail call void @exit(i32 1) #15, !dbg !1823
  unreachable, !dbg !1823

219:                                              ; preds = %207
  %220 = load i8*, i8** %210, align 8, !dbg !1824, !tbaa !918
  %221 = tail call i8* @strcpy(i8* nonnull %214, i8* nonnull dereferenceable(1) %220) #12, !dbg !1825
  %222 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 0, !dbg !1826
  store i8* %214, i8** %222, align 8, !dbg !1827, !tbaa !918
  %223 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 1, !dbg !1828
  store i8* null, i8** %223, align 8, !dbg !1829, !tbaa !1830
  %224 = load %struct.atom_t*, %struct.atom_t** %205, align 8, !dbg !1831, !tbaa !1317
  %225 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 2, !dbg !1832
  %226 = load i32, i32* %225, align 8, !dbg !1832, !tbaa !1833
  %227 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 2, !dbg !1834
  store i32 %226, i32* %227, align 8, !dbg !1835, !tbaa !1833
  %228 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 3, !dbg !1836
  %229 = load i32, i32* %228, align 4, !dbg !1836, !tbaa !1837
  %230 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 3, !dbg !1838
  store i32 %229, i32* %230, align 4, !dbg !1839, !tbaa !1837
  call void @llvm.dbg.value(metadata i32 0, metadata !1579, metadata !DIExpression()), !dbg !1587
  br label %231, !dbg !1840

231:                                              ; preds = %231, %219
  %232 = phi i64 [ 0, %219 ], [ %236, %231 ]
  call void @llvm.dbg.value(metadata i64 %232, metadata !1579, metadata !DIExpression()), !dbg !1587
  %233 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 4, i64 %232, !dbg !1842
  %234 = load i32, i32* %233, align 4, !dbg !1842, !tbaa !943
  %235 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 4, i64 %232, !dbg !1844
  store i32 %234, i32* %235, align 4, !dbg !1845, !tbaa !943
  %236 = add nuw nsw i64 %232, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %236, metadata !1579, metadata !DIExpression()), !dbg !1587
  %237 = icmp eq i64 %236, 8, !dbg !1847
  br i1 %237, label %238, label %231, !dbg !1840, !llvm.loop !1848

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 5, !dbg !1850
  %240 = bitcast %struct.residue_t** %239 to i8**, !dbg !1851
  store i8* %2, i8** %240, align 8, !dbg !1851, !tbaa !1852
  %241 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 6, !dbg !1853
  %242 = bitcast double* %241 to i64*, !dbg !1853
  %243 = load i64, i64* %242, align 8, !dbg !1853, !tbaa !976
  %244 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 6, !dbg !1854
  %245 = bitcast double* %244 to i64*, !dbg !1855
  store i64 %243, i64* %245, align 8, !dbg !1855, !tbaa !976
  %246 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 7, !dbg !1856
  %247 = bitcast double* %246 to i64*, !dbg !1856
  %248 = load i64, i64* %247, align 8, !dbg !1856, !tbaa !1224
  %249 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 7, !dbg !1857
  %250 = bitcast double* %249 to i64*, !dbg !1858
  store i64 %248, i64* %250, align 8, !dbg !1858, !tbaa !1224
  %251 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 8, !dbg !1859
  %252 = bitcast double* %251 to i64*, !dbg !1859
  %253 = load i64, i64* %252, align 8, !dbg !1859, !tbaa !1860
  %254 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 8, !dbg !1861
  %255 = bitcast double* %254 to i64*, !dbg !1862
  store i64 %253, i64* %255, align 8, !dbg !1862, !tbaa !1860
  %256 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 9, !dbg !1863
  %257 = bitcast double* %256 to i64*, !dbg !1863
  %258 = load i64, i64* %257, align 8, !dbg !1863, !tbaa !1864
  %259 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 9, !dbg !1865
  %260 = bitcast double* %259 to i64*, !dbg !1866
  store i64 %258, i64* %260, align 8, !dbg !1866, !tbaa !1864
  %261 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 10, !dbg !1867
  store i8* null, i8** %261, align 8, !dbg !1868, !tbaa !1869
  %262 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 11, !dbg !1870
  %263 = load i32, i32* %262, align 8, !dbg !1870, !tbaa !1871
  %264 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 11, !dbg !1872
  store i32 %263, i32* %264, align 8, !dbg !1873, !tbaa !1871
  %265 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 12, !dbg !1874
  %266 = bitcast double* %265 to i64*, !dbg !1874
  %267 = load i64, i64* %266, align 8, !dbg !1874, !tbaa !1875
  %268 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 12, !dbg !1876
  %269 = bitcast double* %268 to i64*, !dbg !1877
  store i64 %267, i64* %269, align 8, !dbg !1877, !tbaa !1875
  %270 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 13, !dbg !1878
  %271 = bitcast double* %270 to i64*, !dbg !1878
  %272 = load i64, i64* %271, align 8, !dbg !1878, !tbaa !1879
  %273 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 13, !dbg !1880
  %274 = bitcast double* %273 to i64*, !dbg !1881
  store i64 %272, i64* %274, align 8, !dbg !1881, !tbaa !1879
  %275 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 14, !dbg !1882
  %276 = load i32, i32* %275, align 8, !dbg !1882, !tbaa !1883
  %277 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 14, !dbg !1884
  store i32 %276, i32* %277, align 8, !dbg !1885, !tbaa !1883
  %278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 15, !dbg !1886
  %279 = load i32, i32* %278, align 4, !dbg !1886, !tbaa !1887
  %280 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 15, !dbg !1888
  store i32 %279, i32* %280, align 4, !dbg !1889, !tbaa !1887
  %281 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 16, !dbg !1890
  store i8* null, i8** %281, align 8, !dbg !1891, !tbaa !1892
  %282 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 17, i64 0, !dbg !1893
  %283 = bitcast double* %282 to i64*, !dbg !1893
  %284 = load i64, i64* %283, align 8, !dbg !1893, !tbaa !973
  %285 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 17, !dbg !1894
  %286 = bitcast [3 x double]* %285 to i64*, !dbg !1895
  store i64 %284, i64* %286, align 8, !dbg !1895, !tbaa !973
  %287 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 17, i64 1, !dbg !1896
  %288 = bitcast double* %287 to i64*, !dbg !1896
  %289 = load i64, i64* %288, align 8, !dbg !1896, !tbaa !973
  %290 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 17, i64 1, !dbg !1897
  %291 = bitcast double* %290 to i64*, !dbg !1898
  store i64 %289, i64* %291, align 8, !dbg !1898, !tbaa !973
  %292 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 17, i64 2, !dbg !1899
  %293 = bitcast double* %292 to i64*, !dbg !1899
  %294 = load i64, i64* %293, align 8, !dbg !1899, !tbaa !973
  %295 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 17, i64 2, !dbg !1900
  %296 = bitcast double* %295 to i64*, !dbg !1901
  store i64 %294, i64* %296, align 8, !dbg !1901, !tbaa !973
  %297 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 18, !dbg !1902
  %298 = bitcast double* %297 to i64*, !dbg !1902
  %299 = load i64, i64* %298, align 8, !dbg !1902, !tbaa !1903
  %300 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 18, !dbg !1904
  %301 = bitcast double* %300 to i64*, !dbg !1905
  store i64 %299, i64* %301, align 8, !dbg !1905, !tbaa !1903
  %302 = add nuw nsw i64 %209, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %302, metadata !1576, metadata !DIExpression()), !dbg !1587
  %303 = load i32, i32* %11, align 8, !dbg !1907, !tbaa !1310
  %304 = sext i32 %303 to i64, !dbg !1908
  %305 = icmp slt i64 %302, %304, !dbg !1908
  br i1 %305, label %207, label %306, !dbg !1807, !llvm.loop !1909

306:                                              ; preds = %238, %201, %198, %58, %42, %27, %18, %5
  %307 = phi %struct.residue_t* [ null, %5 ], [ null, %18 ], [ null, %27 ], [ null, %42 ], [ null, %58 ], [ %3, %201 ], [ %3, %198 ], [ %3, %238 ], !dbg !1587
  ret %struct.residue_t* %307, !dbg !1911
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #7

declare dso_local %struct.extbond_t* @copyextbonds(...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* nocapture readonly %0) local_unnamed_addr #0 !dbg !1912 {
  call void @llvm.dbg.value(metadata %struct.strand_t* %0, metadata !1916, metadata !DIExpression()), !dbg !1920
  %2 = tail call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #12, !dbg !1921
  %3 = bitcast i8* %2 to %struct.strand_t*, !dbg !1923
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !1917, metadata !DIExpression()), !dbg !1920
  %4 = icmp eq i8* %2, null, !dbg !1924
  br i1 %4, label %5, label %10, !dbg !1925

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1926
  %7 = load i8*, i8** %6, align 8, !dbg !1926, !tbaa !1928
  %8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %7) #12, !dbg !1930
  %9 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1931
  br label %78, !dbg !1932

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1933
  %12 = load i32, i32* %11, align 8, !dbg !1933, !tbaa !1935
  %13 = sext i32 %12 to i64, !dbg !1936
  %14 = shl nsw i64 %13, 3, !dbg !1937
  %15 = tail call noalias i8* @malloc(i64 %14) #12, !dbg !1938
  %16 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1939
  %17 = bitcast i8* %16 to %struct.residue_t***, !dbg !1939
  %18 = bitcast i8* %16 to i8**, !dbg !1940
  store i8* %15, i8** %18, align 8, !dbg !1940, !tbaa !1941
  %19 = icmp eq i8* %15, null, !dbg !1942
  br i1 %19, label %20, label %22, !dbg !1943

20:                                               ; preds = %10
  %21 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !1944
  br label %78, !dbg !1946

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1947
  %24 = load i8*, i8** %23, align 8, !dbg !1947, !tbaa !1928
  %25 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %24) #13, !dbg !1949
  %26 = add i64 %25, 1, !dbg !1950
  %27 = tail call noalias i8* @malloc(i64 %26) #12, !dbg !1951
  call void @llvm.dbg.value(metadata i8* %27, metadata !1918, metadata !DIExpression()), !dbg !1920
  %28 = icmp eq i8* %27, null, !dbg !1952
  br i1 %28, label %29, label %32, !dbg !1953

29:                                               ; preds = %22
  %30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %24) #12, !dbg !1954
  %31 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !1956
  br label %78, !dbg !1957

32:                                               ; preds = %22
  %33 = bitcast i8* %2 to i8**, !dbg !1958
  store i8* %27, i8** %33, align 8, !dbg !1959, !tbaa !1928
  %34 = tail call i8* @strcpy(i8* nonnull %27, i8* nonnull dereferenceable(1) %24) #12, !dbg !1960
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 1, !dbg !1961
  %36 = load i32, i32* %35, align 8, !dbg !1961, !tbaa !1962
  %37 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1963
  %38 = bitcast i8* %37 to i32*, !dbg !1963
  store i32 %36, i32* %38, align 8, !dbg !1964, !tbaa !1962
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 2, !dbg !1965
  %40 = load i32, i32* %39, align 4, !dbg !1965, !tbaa !1966
  %41 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1967
  %42 = bitcast i8* %41 to i32*, !dbg !1967
  store i32 %40, i32* %42, align 4, !dbg !1968, !tbaa !1966
  %43 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1969
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false), !dbg !1970
  %44 = load i32, i32* %11, align 8, !dbg !1971, !tbaa !1935
  %45 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1972
  %46 = bitcast i8* %45 to i32*, !dbg !1972
  store i32 %44, i32* %46, align 8, !dbg !1973, !tbaa !1935
  %47 = getelementptr inbounds i8, i8* %2, i64 36, !dbg !1974
  %48 = bitcast i8* %47 to i32*, !dbg !1974
  store i32 %44, i32* %48, align 4, !dbg !1975, !tbaa !1976
  call void @llvm.dbg.value(metadata i32 0, metadata !1919, metadata !DIExpression()), !dbg !1920
  %49 = icmp sgt i32 %44, 0, !dbg !1977
  br i1 %49, label %50, label %78, !dbg !1980

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 7, !dbg !1981
  br label %52, !dbg !1980

52:                                               ; preds = %73, %50
  %53 = phi i64 [ 0, %50 ], [ %74, %73 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !1919, metadata !DIExpression()), !dbg !1920
  %54 = load %struct.residue_t**, %struct.residue_t*** %51, align 8, !dbg !1983, !tbaa !1941
  %55 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %54, i64 %53, !dbg !1984
  %56 = load %struct.residue_t*, %struct.residue_t** %55, align 8, !dbg !1984, !tbaa !379
  %57 = tail call %struct.residue_t* @copyresidue(%struct.residue_t* %56), !dbg !1985
  %58 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1986, !tbaa !1941
  %59 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %58, i64 %53, !dbg !1987
  store %struct.residue_t* %57, %struct.residue_t** %59, align 8, !dbg !1988, !tbaa !379
  %60 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1989, !tbaa !1941
  %61 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %60, i64 %53, !dbg !1990
  %62 = load %struct.residue_t*, %struct.residue_t** %61, align 8, !dbg !1990, !tbaa !379
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %62, i64 0, i32 9, !dbg !1991
  %64 = bitcast %struct.strand_t** %63 to i8**, !dbg !1992
  store i8* %2, i8** %64, align 8, !dbg !1992, !tbaa !1707
  %65 = icmp eq i64 %53, 0, !dbg !1993
  br i1 %65, label %73, label %66, !dbg !1995

66:                                               ; preds = %52
  %67 = bitcast %struct.residue_t** %61 to i64*, !dbg !1996
  %68 = load i64, i64* %67, align 8, !dbg !1996, !tbaa !379
  %69 = add nsw i64 %53, -1, !dbg !1997
  %70 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %60, i64 %69, !dbg !1998
  %71 = bitcast %struct.residue_t** %70 to i64**, !dbg !1998
  %72 = load i64*, i64** %71, align 8, !dbg !1998, !tbaa !379
  store i64 %68, i64* %72, align 8, !dbg !1999, !tbaa !1661
  br label %73, !dbg !1998

73:                                               ; preds = %66, %52
  %74 = add nuw nsw i64 %53, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %74, metadata !1919, metadata !DIExpression()), !dbg !1920
  %75 = load i32, i32* %11, align 8, !dbg !2001, !tbaa !1935
  %76 = sext i32 %75 to i64, !dbg !1977
  %77 = icmp slt i64 %74, %76, !dbg !1977
  br i1 %77, label %52, label %78, !dbg !1980, !llvm.loop !2002

78:                                               ; preds = %73, %32, %29, %20, %5
  %79 = phi %struct.strand_t* [ null, %5 ], [ null, %20 ], [ null, %29 ], [ %3, %32 ], [ %3, %73 ], !dbg !1920
  ret %struct.strand_t* %79, !dbg !2004
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) local_unnamed_addr #0 !dbg !2005 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2009, metadata !DIExpression()), !dbg !2016
  tail call void @upd_molnumbers(%struct.molecule_t* %0) #12, !dbg !2017
  %2 = tail call noalias dereferenceable_or_null(136) i8* @malloc(i64 136) #12, !dbg !2018
  %3 = bitcast i8* %2 to %struct.molecule_t*, !dbg !2020
  call void @llvm.dbg.value(metadata %struct.molecule_t* %3, metadata !2015, metadata !DIExpression()), !dbg !2016
  %4 = icmp eq i8* %2, null, !dbg !2021
  br i1 %4, label %5, label %7, !dbg !2022

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(13) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 13, i1 false), !dbg !2023
  %6 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !2025
  br label %68, !dbg !2026

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !2027
  %9 = load i32, i32* %8, align 8, !dbg !2027, !tbaa !2028
  %10 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !2030
  %11 = bitcast i8* %10 to i32*, !dbg !2030
  store i32 %9, i32* %11, align 8, !dbg !2031, !tbaa !2028
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !2032
  %13 = load i32, i32* %12, align 8, !dbg !2032, !tbaa !2033
  %14 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !2034
  %15 = bitcast i8* %14 to i32*, !dbg !2034
  store i32 %13, i32* %15, align 8, !dbg !2035, !tbaa !2033
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !2036
  %17 = load i32, i32* %16, align 4, !dbg !2036, !tbaa !2037
  %18 = getelementptr inbounds i8, i8* %2, i64 116, !dbg !2038
  %19 = bitcast i8* %18 to i32*, !dbg !2038
  store i32 %17, i32* %19, align 4, !dbg !2039, !tbaa !2037
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !2040
  %21 = load i32, i32* %20, align 8, !dbg !2040, !tbaa !2041
  %22 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !2042
  %23 = bitcast i8* %22 to i32*, !dbg !2042
  store i32 %21, i32* %23, align 8, !dbg !2043, !tbaa !2041
  %24 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !2044
  %25 = load %struct.parm*, %struct.parm** %24, align 8, !dbg !2044, !tbaa !2046
  %26 = icmp eq %struct.parm* %25, null, !dbg !2047
  br i1 %26, label %29, label %27, !dbg !2048

27:                                               ; preds = %7
  %28 = tail call %struct.parm* @copyparm(%struct.parm* nonnull %25) #12, !dbg !2049
  br label %29, !dbg !2051

29:                                               ; preds = %27, %7
  %30 = phi %struct.parm* [ %28, %27 ], [ null, %7 ]
  %31 = getelementptr inbounds i8, i8* %2, i64 128, !dbg !2052
  %32 = bitcast i8* %31 to %struct.parm**, !dbg !2052
  store %struct.parm* %30, %struct.parm** %32, align 8, !dbg !2052, !tbaa !2046
  call void @llvm.dbg.value(metadata i32 0, metadata !2010, metadata !DIExpression()), !dbg !2016
  br label %33, !dbg !2053

33:                                               ; preds = %33, %29
  %34 = phi i64 [ 0, %29 ], [ %39, %33 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2010, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2016
  %35 = mul nuw nsw i64 %34, 24, !dbg !2055
  %36 = getelementptr i8, i8* %2, i64 %35, !dbg !2055
  %37 = getelementptr %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 %34, i64 0, !dbg !2055
  %38 = bitcast double* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %36, i8* nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !dbg !2061
  call void @llvm.dbg.value(metadata i32 undef, metadata !2011, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 undef, metadata !2010, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2016
  %39 = add nuw nsw i64 %34, 1, !dbg !2053
  %40 = icmp eq i64 %39, 4, !dbg !2062
  br i1 %40, label %41, label %33, !dbg !2053, !llvm.loop !2063

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !2065
  %43 = load %struct.strand_t*, %struct.strand_t** %42, align 8, !dbg !2065, !tbaa !2066
  call void @llvm.dbg.value(metadata %struct.strand_t* %43, metadata !2012, metadata !DIExpression()), !dbg !2016
  %44 = icmp eq %struct.strand_t* %43, null, !dbg !2067
  br i1 %44, label %67, label %45, !dbg !2069

45:                                               ; preds = %41
  %46 = tail call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %43), !dbg !2070
  call void @llvm.dbg.value(metadata %struct.strand_t* %46, metadata !2013, metadata !DIExpression()), !dbg !2016
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %46, i64 0, i32 3, !dbg !2072
  %48 = bitcast %struct.molecule_t** %47 to i8**, !dbg !2073
  store i8* %2, i8** %48, align 8, !dbg !2073, !tbaa !2074
  %49 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !2075
  %50 = bitcast i8* %49 to %struct.strand_t**, !dbg !2075
  store %struct.strand_t* %46, %struct.strand_t** %50, align 8, !dbg !2076, !tbaa !2066
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %43, i64 0, i32 4, !dbg !2077
  %52 = load %struct.strand_t*, %struct.strand_t** %51, align 8, !dbg !2077, !tbaa !2078
  call void @llvm.dbg.value(metadata %struct.strand_t* %52, metadata !2012, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata %struct.strand_t* %46, metadata !2013, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata %struct.strand_t* %52, metadata !2012, metadata !DIExpression()), !dbg !2016
  %53 = icmp eq %struct.strand_t* %52, null, !dbg !2079
  br i1 %53, label %67, label %54, !dbg !2080

54:                                               ; preds = %61, %45
  %55 = phi %struct.strand_t* [ %57, %61 ], [ %46, %45 ]
  %56 = phi %struct.strand_t* [ %65, %61 ], [ %52, %45 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %55, metadata !2013, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata %struct.strand_t* %56, metadata !2012, metadata !DIExpression()), !dbg !2016
  %57 = tail call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %56), !dbg !2081
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !2014, metadata !DIExpression()), !dbg !2016
  %58 = icmp eq %struct.strand_t* %55, null, !dbg !2083
  br i1 %58, label %61, label %59, !dbg !2085

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %55, i64 0, i32 4, !dbg !2086
  store %struct.strand_t* %57, %struct.strand_t** %60, align 8, !dbg !2087, !tbaa !2078
  br label %61, !dbg !2088

61:                                               ; preds = %59, %54
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %57, i64 0, i32 3, !dbg !2089
  %63 = bitcast %struct.molecule_t** %62 to i8**, !dbg !2090
  store i8* %2, i8** %63, align 8, !dbg !2090, !tbaa !2074
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !2013, metadata !DIExpression()), !dbg !2016
  %64 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %56, i64 0, i32 4, !dbg !2091
  %65 = load %struct.strand_t*, %struct.strand_t** %64, align 8, !dbg !2091, !tbaa !2078
  call void @llvm.dbg.value(metadata %struct.strand_t* %65, metadata !2012, metadata !DIExpression()), !dbg !2016
  %66 = icmp eq %struct.strand_t* %65, null, !dbg !2079
  br i1 %66, label %67, label %54, !dbg !2080, !llvm.loop !2092

67:                                               ; preds = %61, %45, %41
  tail call void @upd_molnumbers(%struct.molecule_t* nonnull %3) #12, !dbg !2094
  br label %68, !dbg !2095

68:                                               ; preds = %67, %5
  %69 = phi %struct.molecule_t* [ null, %5 ], [ %3, %67 ], !dbg !2016
  ret %struct.molecule_t* %69, !dbg !2096
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !311 dso_local void @NAB_initatom(%struct.atom_t*, i32) local_unnamed_addr #6

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) local_unnamed_addr #6

declare dso_local signext i8 @bDBGetValue(...) local_unnamed_addr #6

declare dso_local void @DBZeroPrefix(...) local_unnamed_addr #6

declare dso_local void @DBPushPrefix(...) local_unnamed_addr #6

declare dso_local signext i8 @bDBGetTable(...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @addres2reslib(%struct.reslib_t* nocapture %0) unnamed_addr #0 !dbg !2097 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2101, metadata !DIExpression()), !dbg !2108
  %2 = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #12, !dbg !2109
  call void @llvm.dbg.value(metadata i8* %2, metadata !2102, metadata !DIExpression()), !dbg !2108
  %3 = icmp eq i8* %2, null, !dbg !2111
  br i1 %3, label %4, label %9, !dbg !2112

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2113
  %6 = load i8*, i8** %5, align 8, !dbg !2113, !tbaa !388
  %7 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %6) #12, !dbg !2115
  %8 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !2116
  br label %152, !dbg !2117

9:                                                ; preds = %1
  %10 = load i32, i32* @n_atoms, align 4, !dbg !2118, !tbaa !943
  %11 = sext i32 %10 to i64, !dbg !2118
  %12 = mul nsw i64 %11, 176, !dbg !2120
  %13 = tail call noalias i8* @malloc(i64 %12) #12, !dbg !2121
  call void @llvm.dbg.value(metadata i8* %13, metadata !2103, metadata !DIExpression()), !dbg !2108
  %14 = icmp eq i8* %13, null, !dbg !2122
  br i1 %14, label %15, label %20, !dbg !2123

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2124
  %17 = load i8*, i8** %16, align 8, !dbg !2124, !tbaa !388
  %18 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %17) #12, !dbg !2126
  %19 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !2127
  br label %152, !dbg !2128

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2129
  %22 = bitcast %struct.residue_t** %21 to i64*, !dbg !2129
  %23 = load i64, i64* %22, align 8, !dbg !2129, !tbaa !2130
  %24 = bitcast i8* %2 to i64*, !dbg !2131
  store i64 %23, i64* %24, align 8, !dbg !2131, !tbaa !1661
  %25 = bitcast %struct.residue_t** %21 to i8**, !dbg !2132
  store i8* %2, i8** %25, align 8, !dbg !2132, !tbaa !2130
  %26 = tail call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #13, !dbg !2133
  %27 = add i64 %26, 1, !dbg !2134
  %28 = tail call noalias i8* @malloc(i64 %27) #12, !dbg !2135
  call void @llvm.dbg.value(metadata i8* %28, metadata !2105, metadata !DIExpression()), !dbg !2108
  %29 = icmp eq i8* %28, null, !dbg !2136
  br i1 %29, label %30, label %33, !dbg !2138

30:                                               ; preds = %20
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2139, !tbaa !379
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %31) #14, !dbg !2141
  tail call void @exit(i32 1) #15, !dbg !2142
  unreachable, !dbg !2142

33:                                               ; preds = %20
  %34 = tail call i8* @strcpy(i8* nonnull %28, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #12, !dbg !2143
  %35 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !2144
  %36 = bitcast i8* %35 to i8**, !dbg !2144
  store i8* %28, i8** %36, align 8, !dbg !2145, !tbaa !1280
  %37 = tail call noalias dereferenceable_or_null(1) i8* @malloc(i64 1) #12, !dbg !2146
  call void @llvm.dbg.value(metadata i8* %37, metadata !2105, metadata !DIExpression()), !dbg !2108
  %38 = icmp eq i8* %37, null, !dbg !2147
  br i1 %38, label %39, label %42, !dbg !2149

39:                                               ; preds = %33
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2150, !tbaa !379
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %40) #14, !dbg !2152
  tail call void @exit(i32 1) #15, !dbg !2153
  unreachable, !dbg !2153

42:                                               ; preds = %33
  store i8 0, i8* %37, align 1, !dbg !2154
  %43 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2155
  %44 = bitcast i8* %43 to i8**, !dbg !2155
  store i8* %37, i8** %44, align 8, !dbg !2156, !tbaa !1677
  %45 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2157
  %46 = bitcast i8* %45 to i32*, !dbg !2157
  store i32 0, i32* %46, align 8, !dbg !2158, !tbaa !1692
  %47 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !2159
  %48 = bitcast i8* %47 to i32*, !dbg !2159
  store i32 0, i32* %48, align 4, !dbg !2160, !tbaa !1697
  %49 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2161
  %50 = bitcast i8* %49 to i32*, !dbg !2161
  store i32 0, i32* %50, align 8, !dbg !2162, !tbaa !1700
  %51 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2163
  %52 = bitcast i8* %51 to i32*, !dbg !2163
  store i32 0, i32* %52, align 8, !dbg !2164, !tbaa !1702
  %53 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 2, !dbg !2165
  %54 = load i32, i32* %53, align 8, !dbg !2165, !tbaa !409
  %55 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !2166
  %56 = bitcast i8* %55 to i32*, !dbg !2166
  store i32 %54, i32* %56, align 4, !dbg !2167, !tbaa !1764
  %57 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 3, !dbg !2168
  %58 = load i32, i32* %57, align 4, !dbg !2168, !tbaa !775
  %59 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !2169
  %60 = bitcast i8* %59 to i32*, !dbg !2169
  store i32 %58, i32* %60, align 8, !dbg !2170, !tbaa !1768
  %61 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !2171
  %62 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !2172
  %63 = bitcast i8* %62 to [2 x i32]**, !dbg !2172
  store [2 x i32]* null, [2 x i32]** %63, align 8, !dbg !2173, !tbaa !1717
  %64 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !2174
  %65 = bitcast i8* %64 to i32*, !dbg !2174
  store i32 0, i32* %65, align 8, !dbg !2175, !tbaa !1642
  %66 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !2176
  %67 = bitcast i8* %66 to %struct.chiral_t**, !dbg !2176
  store %struct.chiral_t* null, %struct.chiral_t** %67, align 8, !dbg !2177, !tbaa !1738
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %61, i8 0, i64 20, i1 false), !dbg !2178
  %68 = load i32, i32* @n_atoms, align 4, !dbg !2179, !tbaa !943
  %69 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !2180
  %70 = bitcast i8* %69 to i32*, !dbg !2180
  store i32 %68, i32* %70, align 8, !dbg !2181, !tbaa !1310
  %71 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !2182
  %72 = bitcast i8* %71 to i32**, !dbg !2182
  store i32* null, i32** %72, align 8, !dbg !2183, !tbaa !1776
  %73 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !2184
  %74 = bitcast i8* %73 to %struct.atom_t**, !dbg !2184
  %75 = bitcast i8* %73 to i8**, !dbg !2185
  store i8* %13, i8** %75, align 8, !dbg !2185, !tbaa !1317
  call void @llvm.dbg.value(metadata i32 0, metadata !2106, metadata !DIExpression()), !dbg !2108
  %76 = icmp sgt i32 %68, 0, !dbg !2186
  br i1 %76, label %77, label %152, !dbg !2189

77:                                               ; preds = %142, %42
  %78 = phi i64 [ %148, %142 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !2106, metadata !DIExpression()), !dbg !2108
  %79 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 0, !dbg !2190
  %80 = load i8*, i8** %79, align 16, !dbg !2190, !tbaa !918
  %81 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %80) #13, !dbg !2192
  %82 = add i64 %81, 1, !dbg !2193
  %83 = tail call noalias i8* @malloc(i64 %82) #12, !dbg !2194
  call void @llvm.dbg.value(metadata i8* %83, metadata !2104, metadata !DIExpression()), !dbg !2108
  %84 = icmp eq i8* %83, null, !dbg !2195
  br i1 %84, label %85, label %88, !dbg !2197

85:                                               ; preds = %77
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2198, !tbaa !379
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %86) #14, !dbg !2200
  tail call void @exit(i32 1) #15, !dbg !2201
  unreachable, !dbg !2201

88:                                               ; preds = %77
  %89 = tail call i8* @strcpy(i8* nonnull %83, i8* nonnull dereferenceable(1) %80) #12, !dbg !2202
  %90 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !2203, !tbaa !1317
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 0, !dbg !2204
  store i8* %83, i8** %91, align 8, !dbg !2205, !tbaa !918
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 2, !dbg !2206
  store i32 0, i32* %92, align 8, !dbg !2207, !tbaa !1833
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 3, !dbg !2208
  store i32 0, i32* %93, align 4, !dbg !2209, !tbaa !1837
  call void @llvm.dbg.value(metadata i32 0, metadata !2107, metadata !DIExpression()), !dbg !2108
  %94 = getelementptr %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 4, i64 0, !dbg !2210
  %95 = bitcast i32* %94 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(32) %95, i8 -1, i64 32, i1 false), !dbg !2212
  call void @llvm.dbg.value(metadata i32 undef, metadata !2107, metadata !DIExpression()), !dbg !2108
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 5, !dbg !2214
  %97 = bitcast %struct.residue_t** %96 to i8**, !dbg !2215
  store i8* %2, i8** %97, align 8, !dbg !2215, !tbaa !1852
  %98 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 6, !dbg !2216
  %99 = bitcast double* %98 to i64*, !dbg !2216
  %100 = load i64, i64* %99, align 16, !dbg !2216, !tbaa !976
  %101 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 6, !dbg !2217
  %102 = bitcast double* %101 to i64*, !dbg !2218
  store i64 %100, i64* %102, align 8, !dbg !2218, !tbaa !976
  %103 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 7, !dbg !2219
  %104 = bitcast double* %103 to i64*, !dbg !2219
  %105 = load i64, i64* %104, align 8, !dbg !2219, !tbaa !1224
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 7, !dbg !2220
  %107 = bitcast double* %106 to i64*, !dbg !2221
  store i64 %105, i64* %107, align 8, !dbg !2221, !tbaa !1224
  %108 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 8, !dbg !2222
  %109 = bitcast double* %108 to i64*, !dbg !2222
  %110 = load i64, i64* %109, align 16, !dbg !2222, !tbaa !1860
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 8, !dbg !2223
  %112 = bitcast double* %111 to i64*, !dbg !2224
  store i64 %110, i64* %112, align 8, !dbg !2224, !tbaa !1860
  %113 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 9, !dbg !2225
  %114 = bitcast double* %113 to i64*, !dbg !2225
  %115 = load i64, i64* %114, align 8, !dbg !2225, !tbaa !1864
  %116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 9, !dbg !2226
  %117 = bitcast double* %116 to i64*, !dbg !2227
  store i64 %115, i64* %117, align 8, !dbg !2227, !tbaa !1864
  %118 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 11, !dbg !2228
  %119 = load i32, i32* %118, align 8, !dbg !2228, !tbaa !1871
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 11, !dbg !2229
  store i32 %119, i32* %120, align 8, !dbg !2230, !tbaa !1871
  %121 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 12, !dbg !2231
  %122 = bitcast double* %121 to i64*, !dbg !2231
  %123 = load i64, i64* %122, align 16, !dbg !2231, !tbaa !1875
  %124 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 12, !dbg !2232
  %125 = bitcast double* %124 to i64*, !dbg !2233
  store i64 %123, i64* %125, align 8, !dbg !2233, !tbaa !1875
  %126 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 13, !dbg !2234
  %127 = bitcast double* %126 to i64*, !dbg !2234
  %128 = load i64, i64* %127, align 8, !dbg !2234, !tbaa !1879
  %129 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 13, !dbg !2235
  %130 = bitcast double* %129 to i64*, !dbg !2236
  store i64 %128, i64* %130, align 8, !dbg !2236, !tbaa !1879
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 15, !dbg !2237
  store i32 0, i32* %131, align 4, !dbg !2238, !tbaa !1887
  %132 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 16, !dbg !2239
  store i8* null, i8** %132, align 8, !dbg !2240, !tbaa !1892
  call void @llvm.dbg.value(metadata i32 0, metadata !2107, metadata !DIExpression()), !dbg !2108
  br label %133, !dbg !2241

133:                                              ; preds = %133, %88
  %134 = phi i64 [ 0, %88 ], [ %140, %133 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !2107, metadata !DIExpression()), !dbg !2108
  %135 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 17, i64 %134, !dbg !2243
  %136 = bitcast double* %135 to i64*, !dbg !2243
  %137 = load i64, i64* %136, align 8, !dbg !2243, !tbaa !973
  %138 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 17, i64 %134, !dbg !2245
  %139 = bitcast double* %138 to i64*, !dbg !2246
  store i64 %137, i64* %139, align 8, !dbg !2246, !tbaa !973
  %140 = add nuw nsw i64 %134, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %140, metadata !2107, metadata !DIExpression()), !dbg !2108
  %141 = icmp eq i64 %140, 3, !dbg !2248
  br i1 %141, label %142, label %133, !dbg !2241, !llvm.loop !2249

142:                                              ; preds = %133
  %143 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 18, !dbg !2251
  %144 = bitcast double* %143 to i64*, !dbg !2251
  %145 = load i64, i64* %144, align 8, !dbg !2251, !tbaa !1903
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 18, !dbg !2252
  %147 = bitcast double* %146 to i64*, !dbg !2253
  store i64 %145, i64* %147, align 8, !dbg !2253, !tbaa !1903
  %148 = add nuw nsw i64 %78, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %148, metadata !2106, metadata !DIExpression()), !dbg !2108
  %149 = load i32, i32* @n_atoms, align 4, !dbg !2255, !tbaa !943
  %150 = sext i32 %149 to i64, !dbg !2186
  %151 = icmp slt i64 %148, %150, !dbg !2186
  br i1 %151, label %77, label %152, !dbg !2189, !llvm.loop !2256

152:                                              ; preds = %142, %42, %15, %4
  ret void, !dbg !2258
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addbonds2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2259 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2261, metadata !DIExpression()), !dbg !2270
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2262, metadata !DIExpression()), !dbg !2270
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2273, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2262, metadata !DIExpression()), !dbg !2270
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2274
  br i1 %4, label %81, label %5, !dbg !2274

5:                                                ; preds = %77, %1
  %6 = phi %struct.residue_t* [ %79, %77 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 4, !dbg !2275
  %8 = load i8*, i8** %7, align 8, !dbg !2275, !tbaa !1280
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #13, !dbg !2279
  %10 = icmp eq i32 %9, 0, !dbg !2280
  br i1 %10, label %11, label %77, !dbg !2281

11:                                               ; preds = %5
  %12 = load i32, i32* @n_bonds, align 4, !dbg !2282, !tbaa !943
  %13 = sext i32 %12 to i64, !dbg !2282
  %14 = shl nsw i64 %13, 3, !dbg !2285
  %15 = tail call noalias i8* @malloc(i64 %14) #12, !dbg !2286
  %16 = bitcast i8* %15 to [2 x i32]*, !dbg !2287
  call void @llvm.dbg.value(metadata [2 x i32]* %16, metadata !2263, metadata !DIExpression()), !dbg !2270
  %17 = icmp eq i8* %15, null, !dbg !2288
  br i1 %17, label %23, label %18, !dbg !2289

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !2264, metadata !DIExpression()), !dbg !2270
  %19 = icmp sgt i32 %12, 0, !dbg !2290
  br i1 %19, label %20, label %72, !dbg !2293

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2294
  %22 = load %struct.atom_t*, %struct.atom_t** %21, align 8, !dbg !2294, !tbaa !1317
  br label %26, !dbg !2293

23:                                               ; preds = %11
  %24 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #12, !dbg !2296
  %25 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !2298
  br label %86, !dbg !2299

26:                                               ; preds = %67, %20
  %27 = phi i64 [ 0, %20 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !2264, metadata !DIExpression()), !dbg !2270
  %28 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %27, i64 0, !dbg !2300
  %29 = load i32, i32* %28, align 8, !dbg !2300, !tbaa !943
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %27, i64 0, !dbg !2301
  store i32 %29, i32* %30, align 4, !dbg !2302, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %29, metadata !2266, metadata !DIExpression()), !dbg !2270
  %31 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %27, i64 1, !dbg !2303
  %32 = load i32, i32* %31, align 4, !dbg !2303, !tbaa !943
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %27, i64 1, !dbg !2304
  store i32 %32, i32* %33, align 4, !dbg !2305, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %32, metadata !2267, metadata !DIExpression()), !dbg !2270
  %34 = add nsw i32 %29, -1, !dbg !2306
  call void @llvm.dbg.value(metadata i32 %34, metadata !2266, metadata !DIExpression()), !dbg !2270
  %35 = add nsw i32 %32, -1, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %35, metadata !2267, metadata !DIExpression()), !dbg !2270
  %36 = sext i32 %34 to i64, !dbg !2308
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 0, metadata !2265, metadata !DIExpression()), !dbg !2270
  br label %40, !dbg !2309

37:                                               ; preds = %45
  %38 = add nuw nsw i64 %41, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i64 %38, metadata !2265, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %38, metadata !2265, metadata !DIExpression()), !dbg !2270
  %39 = icmp eq i64 %38, 8, !dbg !2313
  br i1 %39, label %51, label %40, !dbg !2309, !llvm.loop !2314

40:                                               ; preds = %37, %26
  %41 = phi i64 [ 0, %26 ], [ %38, %37 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2265, metadata !DIExpression()), !dbg !2270
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 %41, !dbg !2316
  %43 = load i32, i32* %42, align 4, !dbg !2316, !tbaa !943
  %44 = icmp eq i32 %43, %35, !dbg !2319
  br i1 %44, label %51, label %45, !dbg !2320

45:                                               ; preds = %40
  %46 = icmp eq i32 %43, -1, !dbg !2321
  call void @llvm.dbg.value(metadata i64 %41, metadata !2265, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2270
  br i1 %46, label %47, label %37, !dbg !2323

47:                                               ; preds = %45
  store i32 %35, i32* %42, align 4, !dbg !2324, !tbaa !943
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 3, !dbg !2326
  %49 = load i32, i32* %48, align 4, !dbg !2327, !tbaa !1837
  %50 = add nsw i32 %49, 1, !dbg !2327
  store i32 %50, i32* %48, align 4, !dbg !2327, !tbaa !1837
  br label %51, !dbg !2328

51:                                               ; preds = %47, %40, %37
  %52 = sext i32 %35 to i64, !dbg !2329
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2269, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i32 0, metadata !2265, metadata !DIExpression()), !dbg !2270
  br label %56, !dbg !2330

53:                                               ; preds = %61
  %54 = add nuw nsw i64 %57, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %54, metadata !2265, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i64 %54, metadata !2265, metadata !DIExpression()), !dbg !2270
  %55 = icmp eq i64 %54, 8, !dbg !2334
  br i1 %55, label %67, label %56, !dbg !2330, !llvm.loop !2335

56:                                               ; preds = %53, %51
  %57 = phi i64 [ 0, %51 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !2265, metadata !DIExpression()), !dbg !2270
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 %57, !dbg !2337
  %59 = load i32, i32* %58, align 4, !dbg !2337, !tbaa !943
  %60 = icmp eq i32 %59, %34, !dbg !2340
  br i1 %60, label %67, label %61, !dbg !2341

61:                                               ; preds = %56
  %62 = icmp eq i32 %59, -1, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %57, metadata !2265, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2270
  br i1 %62, label %63, label %53, !dbg !2344

63:                                               ; preds = %61
  store i32 %34, i32* %58, align 4, !dbg !2345, !tbaa !943
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 3, !dbg !2347
  %65 = load i32, i32* %64, align 4, !dbg !2348, !tbaa !1837
  %66 = add nsw i32 %65, 1, !dbg !2348
  store i32 %66, i32* %64, align 4, !dbg !2348, !tbaa !1837
  br label %67, !dbg !2349

67:                                               ; preds = %63, %56, %53
  %68 = add nuw nsw i64 %27, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %68, metadata !2264, metadata !DIExpression()), !dbg !2270
  %69 = load i32, i32* @n_bonds, align 4, !dbg !2351, !tbaa !943
  %70 = sext i32 %69 to i64, !dbg !2290
  %71 = icmp slt i64 %68, %70, !dbg !2290
  br i1 %71, label %26, label %72, !dbg !2293, !llvm.loop !2352

72:                                               ; preds = %67, %18
  %73 = phi i32 [ %12, %18 ], [ %69, %67 ], !dbg !2351
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 11, !dbg !2354
  store i32 %73, i32* %74, align 8, !dbg !2355, !tbaa !1623
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 12, !dbg !2356
  %76 = bitcast [2 x i32]** %75 to i8**, !dbg !2357
  store i8* %15, i8** %76, align 8, !dbg !2357, !tbaa !1717
  br label %86, !dbg !2358

77:                                               ; preds = %5
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 0, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2262, metadata !DIExpression()), !dbg !2270
  %79 = load %struct.residue_t*, %struct.residue_t** %78, align 8, !dbg !2273, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %79, metadata !2262, metadata !DIExpression()), !dbg !2270
  %80 = icmp eq %struct.residue_t* %79, null, !dbg !2274
  br i1 %80, label %81, label %5, !dbg !2274, !llvm.loop !2360

81:                                               ; preds = %77, %1
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2362
  %83 = load i8*, i8** %82, align 8, !dbg !2362, !tbaa !388
  %84 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %83) #12, !dbg !2363
  %85 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !2364
  br label %86, !dbg !2365

86:                                               ; preds = %81, %72, %23
  ret void, !dbg !2366
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addqr2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2367 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2369, metadata !DIExpression()), !dbg !2374
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2375
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2370, metadata !DIExpression()), !dbg !2374
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2377, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2370, metadata !DIExpression()), !dbg !2374
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2378
  br i1 %4, label %81, label %5, !dbg !2378

5:                                                ; preds = %77, %1
  %6 = phi %struct.residue_t* [ %79, %77 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 4, !dbg !2379
  %8 = load i8*, i8** %7, align 8, !dbg !2379, !tbaa !1280
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #13, !dbg !2383
  %10 = icmp eq i32 %9, 0, !dbg !2384
  br i1 %10, label %11, label %77, !dbg !2385

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()), !dbg !2374
  %12 = load i32, i32* @n_atoms, align 4, !dbg !2386, !tbaa !943
  %13 = icmp sgt i32 %12, 0, !dbg !2390
  br i1 %13, label %14, label %86, !dbg !2391

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 15, !dbg !2392
  %16 = load i32, i32* %15, align 8, !dbg !2392, !tbaa !1310
  %17 = icmp sgt i32 %16, 0, !dbg !2392
  %18 = zext i32 %16 to i64, !dbg !2392
  br i1 %17, label %19, label %86, !dbg !2391

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2396
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !2396, !tbaa !1317
  br label %22, !dbg !2391

22:                                               ; preds = %72, %19
  %23 = phi i32 [ %73, %72 ], [ %12, %19 ]
  %24 = phi %struct.atom_t* [ %75, %72 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %19 ]
  %25 = phi i32 [ %74, %72 ], [ 0, %19 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %24, metadata !2372, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 %25, metadata !2371, metadata !DIExpression()), !dbg !2374
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 0, !dbg !2397
  %27 = load i8*, i8** %26, align 8, !dbg !2397, !tbaa !918
  call void @llvm.dbg.value(metadata %struct.residue_t* %6, metadata !1297, metadata !DIExpression()) #12, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %27, metadata !1302, metadata !DIExpression()) #12, !dbg !2398
  call void @llvm.dbg.value(metadata i32 0, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  br label %28, !dbg !2399

28:                                               ; preds = %35, %22
  %29 = phi i64 [ 0, %22 ], [ %34, %35 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 0, !dbg !2400
  %31 = load i8*, i8** %30, align 8, !dbg !2400, !tbaa !918
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %31, i8* nonnull dereferenceable(1) %27) #13, !dbg !2401
  %33 = icmp eq i32 %32, 0, !dbg !2401
  %34 = add nuw nsw i64 %29, 1, !dbg !2402
  call void @llvm.dbg.value(metadata i64 %34, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  br i1 %33, label %37, label %35, !dbg !2403

35:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %34, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  %36 = icmp eq i64 %34, %18, !dbg !2404
  br i1 %36, label %72, label %28, !dbg !2399, !llvm.loop !2405

37:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %29, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %29, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %29, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %29, metadata !1303, metadata !DIExpression()) #12, !dbg !2398
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2373, metadata !DIExpression()), !dbg !2374
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 6, !dbg !2407
  %39 = bitcast double* %38 to i64*, !dbg !2407
  %40 = load i64, i64* %39, align 8, !dbg !2407, !tbaa !976
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 6, !dbg !2409
  %42 = bitcast double* %41 to i64*, !dbg !2410
  store i64 %40, i64* %42, align 8, !dbg !2410, !tbaa !976
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 7, !dbg !2411
  %44 = bitcast double* %43 to i64*, !dbg !2411
  %45 = load i64, i64* %44, align 8, !dbg !2411, !tbaa !1224
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 7, !dbg !2412
  %47 = bitcast double* %46 to i64*, !dbg !2413
  store i64 %45, i64* %47, align 8, !dbg !2413, !tbaa !1224
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 8, !dbg !2414
  %49 = bitcast double* %48 to i64*, !dbg !2414
  %50 = load i64, i64* %49, align 8, !dbg !2414, !tbaa !1860
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 8, !dbg !2415
  %52 = bitcast double* %51 to i64*, !dbg !2416
  store i64 %50, i64* %52, align 8, !dbg !2416, !tbaa !1860
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 9, !dbg !2417
  %54 = bitcast double* %53 to i64*, !dbg !2417
  %55 = load i64, i64* %54, align 8, !dbg !2417, !tbaa !1864
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 9, !dbg !2418
  %57 = bitcast double* %56 to i64*, !dbg !2419
  store i64 %55, i64* %57, align 8, !dbg !2419, !tbaa !1864
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 11, !dbg !2420
  %59 = load i32, i32* %58, align 8, !dbg !2420, !tbaa !1871
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 11, !dbg !2421
  store i32 %59, i32* %60, align 8, !dbg !2422, !tbaa !1871
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 12, !dbg !2423
  %62 = bitcast double* %61 to i64*, !dbg !2423
  %63 = load i64, i64* %62, align 8, !dbg !2423, !tbaa !1875
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 12, !dbg !2424
  %65 = bitcast double* %64 to i64*, !dbg !2425
  store i64 %63, i64* %65, align 8, !dbg !2425, !tbaa !1875
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 13, !dbg !2426
  %67 = bitcast double* %66 to i64*, !dbg !2426
  %68 = load i64, i64* %67, align 8, !dbg !2426, !tbaa !1879
  %69 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 13, !dbg !2427
  %70 = bitcast double* %69 to i64*, !dbg !2428
  store i64 %68, i64* %70, align 8, !dbg !2428, !tbaa !1879
  %71 = load i32, i32* @n_atoms, align 4, !dbg !2386, !tbaa !943
  br label %72, !dbg !2429

72:                                               ; preds = %37, %35
  %73 = phi i32 [ %71, %37 ], [ %23, %35 ], !dbg !2386
  %74 = add nuw nsw i32 %25, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %74, metadata !2371, metadata !DIExpression()), !dbg !2374
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 1, !dbg !2431
  call void @llvm.dbg.value(metadata %struct.atom_t* %75, metadata !2372, metadata !DIExpression()), !dbg !2374
  %76 = icmp slt i32 %74, %73, !dbg !2390
  br i1 %76, label %22, label %86, !dbg !2391, !llvm.loop !2432

77:                                               ; preds = %5
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 0, !dbg !2434
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2370, metadata !DIExpression()), !dbg !2374
  %79 = load %struct.residue_t*, %struct.residue_t** %78, align 8, !dbg !2377, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %79, metadata !2370, metadata !DIExpression()), !dbg !2374
  %80 = icmp eq %struct.residue_t* %79, null, !dbg !2378
  br i1 %80, label %81, label %5, !dbg !2378, !llvm.loop !2435

81:                                               ; preds = %77, %1
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2437
  %83 = load i8*, i8** %82, align 8, !dbg !2437, !tbaa !388
  %84 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %83) #12, !dbg !2438
  %85 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #12, !dbg !2439
  br label %86, !dbg !2440

86:                                               ; preds = %81, %72, %14, %11
  ret void, !dbg !2441
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addchi2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2442 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2444, metadata !DIExpression()), !dbg !2454
  %5 = bitcast [4 x [3 x double]]* %2 to i8*, !dbg !2455
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #12, !dbg !2455
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %2, metadata !2450, metadata !DIExpression()), !dbg !2456
  %6 = bitcast [4 x [3 x double]]* %3 to i8*, !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #12, !dbg !2457
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %3, metadata !2452, metadata !DIExpression()), !dbg !2458
  %7 = bitcast double* %4 to i8*, !dbg !2459
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12, !dbg !2459
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2460
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2445, metadata !DIExpression()), !dbg !2454
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2462, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %9, metadata !2445, metadata !DIExpression()), !dbg !2454
  %10 = icmp eq %struct.residue_t* %9, null, !dbg !2463
  br i1 %10, label %79, label %11, !dbg !2463

11:                                               ; preds = %75, %1
  %12 = phi %struct.residue_t* [ %77, %75 ], [ %9, %1 ]
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !2464
  %14 = load i8*, i8** %13, align 8, !dbg !2464, !tbaa !1280
  %15 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %14, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #13, !dbg !2468
  %16 = icmp eq i32 %15, 0, !dbg !2468
  br i1 %16, label %17, label %75, !dbg !2469

17:                                               ; preds = %11
  %18 = load i32, i32* @n_chi, align 4, !dbg !2470, !tbaa !943
  %19 = sext i32 %18 to i64, !dbg !2470
  %20 = mul nsw i64 %19, 24, !dbg !2473
  %21 = tail call noalias i8* @malloc(i64 %20) #12, !dbg !2474
  call void @llvm.dbg.value(metadata i8* %21, metadata !2446, metadata !DIExpression()), !dbg !2454
  %22 = icmp eq i8* %21, null, !dbg !2475
  br i1 %22, label %23, label %28, !dbg !2476

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !2464
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2477, !tbaa !379
  %26 = load i8*, i8** %24, align 8, !dbg !2479, !tbaa !1280
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %26) #14, !dbg !2480
  br label %85, !dbg !2481

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %21, metadata !2446, metadata !DIExpression()), !dbg !2454
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 13, !dbg !2482
  store i32 %18, i32* %29, align 8, !dbg !2483, !tbaa !1642
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 14, !dbg !2484
  %31 = bitcast %struct.chiral_t** %30 to i8**, !dbg !2485
  store i8* %21, i8** %31, align 8, !dbg !2485, !tbaa !1738
  call void @llvm.dbg.value(metadata i32 0, metadata !2448, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %21, metadata !2446, metadata !DIExpression()), !dbg !2454
  %32 = icmp sgt i32 %18, 0, !dbg !2486
  br i1 %32, label %33, label %85, !dbg !2489

33:                                               ; preds = %28
  %34 = bitcast i8* %21 to %struct.chiral_t*, !dbg !2490
  call void @llvm.dbg.value(metadata %struct.chiral_t* %34, metadata !2446, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata %struct.chiral_t* %34, metadata !2446, metadata !DIExpression()), !dbg !2454
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 17, !dbg !2491
  %36 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 0, !dbg !2496
  %37 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %3, i64 0, i64 0, i64 0, !dbg !2496
  %38 = bitcast double* %4 to i64*, !dbg !2496
  br label %39, !dbg !2489

39:                                               ; preds = %66, %33
  %40 = phi i64 [ 0, %33 ], [ %71, %66 ]
  %41 = phi %struct.chiral_t* [ %34, %33 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2448, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata %struct.chiral_t* %41, metadata !2446, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 0, metadata !2447, metadata !DIExpression()), !dbg !2454
  %42 = load %struct.atom_t*, %struct.atom_t** %35, align 8, !dbg !2491, !tbaa !1317
  br label %43, !dbg !2497

43:                                               ; preds = %43, %39
  %44 = phi i64 [ 0, %39 ], [ %64, %43 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !2447, metadata !DIExpression()), !dbg !2454
  %45 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %40, i32 0, i64 %44, !dbg !2498
  %46 = load i32, i32* %45, align 4, !dbg !2498, !tbaa !943
  %47 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %41, i64 0, i32 0, i64 %44, !dbg !2499
  store i32 %46, i32* %47, align 4, !dbg !2500, !tbaa !943
  call void @llvm.dbg.value(metadata i32 %46, metadata !2449, metadata !DIExpression()), !dbg !2454
  %48 = sext i32 %46 to i64, !dbg !2501
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %48, i32 17, i64 0, !dbg !2501
  %50 = bitcast double* %49 to i64*, !dbg !2501
  %51 = load i64, i64* %50, align 8, !dbg !2501, !tbaa !973
  %52 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %44, !dbg !2502
  %53 = bitcast [3 x double]* %52 to i64*, !dbg !2503
  store i64 %51, i64* %53, align 8, !dbg !2503, !tbaa !973
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %48, i32 17, i64 1, !dbg !2504
  %55 = bitcast double* %54 to i64*, !dbg !2504
  %56 = load i64, i64* %55, align 8, !dbg !2504, !tbaa !973
  %57 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %44, i64 1, !dbg !2505
  %58 = bitcast double* %57 to i64*, !dbg !2506
  store i64 %56, i64* %58, align 8, !dbg !2506, !tbaa !973
  %59 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %48, i32 17, i64 2, !dbg !2507
  %60 = bitcast double* %59 to i64*, !dbg !2507
  %61 = load i64, i64* %60, align 8, !dbg !2507, !tbaa !973
  %62 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %44, i64 2, !dbg !2508
  %63 = bitcast double* %62 to i64*, !dbg !2509
  store i64 %61, i64* %63, align 8, !dbg !2509, !tbaa !973
  %64 = add nuw nsw i64 %44, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i64 %64, metadata !2447, metadata !DIExpression()), !dbg !2454
  %65 = icmp eq i64 %64, 4, !dbg !2511
  br i1 %65, label %66, label %43, !dbg !2497, !llvm.loop !2512

66:                                               ; preds = %43
  call void @llvm.dbg.value(metadata double* %4, metadata !2453, metadata !DIExpression(DW_OP_deref)), !dbg !2454
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* nonnull %36, double* nonnull %37, double* nonnull %4) #12, !dbg !2514
  %67 = load i64, i64* %38, align 8, !dbg !2515, !tbaa !973
  call void @llvm.dbg.value(metadata double undef, metadata !2453, metadata !DIExpression()), !dbg !2454
  %68 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %41, i64 0, i32 1, !dbg !2516
  %69 = bitcast double* %68 to i64*, !dbg !2517
  store i64 %67, i64* %69, align 8, !dbg !2517, !tbaa !1394
  %70 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %41, i64 1, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.chiral_t* %70, metadata !2446, metadata !DIExpression()), !dbg !2454
  %71 = add nuw nsw i64 %40, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %71, metadata !2448, metadata !DIExpression()), !dbg !2454
  %72 = load i32, i32* @n_chi, align 4, !dbg !2520, !tbaa !943
  %73 = sext i32 %72 to i64, !dbg !2486
  %74 = icmp slt i64 %71, %73, !dbg !2486
  br i1 %74, label %39, label %85, !dbg !2489, !llvm.loop !2521

75:                                               ; preds = %11
  %76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 0, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2445, metadata !DIExpression()), !dbg !2454
  %77 = load %struct.residue_t*, %struct.residue_t** %76, align 8, !dbg !2462, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.residue_t* %77, metadata !2445, metadata !DIExpression()), !dbg !2454
  %78 = icmp eq %struct.residue_t* %77, null, !dbg !2463
  br i1 %78, label %79, label %11, !dbg !2463, !llvm.loop !2524

79:                                               ; preds = %75, %1
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2526, !tbaa !379
  %81 = load i8*, i8** inttoptr (i64 24 to i8**), align 8, !dbg !2527, !tbaa !1280
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2528
  %83 = load i8*, i8** %82, align 8, !dbg !2528, !tbaa !388
  %84 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %81, i8* %83) #14, !dbg !2529
  br label %85, !dbg !2530

85:                                               ; preds = %79, %66, %28, %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12, !dbg !2530
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #12, !dbg !2530
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #12, !dbg !2530
  ret void, !dbg !2530
}

declare !dbg !315 dso_local void @chirvol(i32, i32, i32, i32, i32, double*, double*, double*) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind readonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold nounwind }

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
!999 = !DILocation(line: 753, column: 22, scope: !1000, inlinedAt: !555)
!1000 = distinct !DILexicalBlock(scope: !995, file: !3, line: 752, column: 32)
!1001 = !DILocation(line: 753, column: 4, scope: !1000, inlinedAt: !555)
!1002 = !DILocation(line: 753, column: 20, scope: !1000, inlinedAt: !555)
!1003 = !DILocation(line: 754, column: 22, scope: !1000, inlinedAt: !555)
!1004 = !DILocation(line: 754, column: 4, scope: !1000, inlinedAt: !555)
!1005 = !DILocation(line: 754, column: 20, scope: !1000, inlinedAt: !555)
!1006 = !DILocation(line: 752, column: 28, scope: !995, inlinedAt: !555)
!1007 = distinct !{!1007, !998, !1008}
!1008 = !DILocation(line: 755, column: 3, scope: !996, inlinedAt: !555)
!1009 = !DILocation(line: 758, column: 10, scope: !1010, inlinedAt: !555)
!1010 = distinct !DILexicalBlock(scope: !953, file: !3, line: 757, column: 10)
!1011 = !DILocation(line: 667, column: 39, scope: !948, inlinedAt: !555)
!1012 = distinct !{!1012, !951, !1013}
!1013 = !DILocation(line: 759, column: 2, scope: !949, inlinedAt: !555)
!1014 = !DILocation(line: 760, column: 1, scope: !495, inlinedAt: !555)
!1015 = !DILocation(line: 452, column: 2, scope: !556)
!1016 = !DILocation(line: 0, scope: !473, inlinedAt: !487)
!1017 = !DILocation(line: 764, column: 2, scope: !473, inlinedAt: !487)
!1018 = !DILocation(line: 765, column: 2, scope: !473, inlinedAt: !487)
!1019 = !DILocation(line: 766, column: 2, scope: !473, inlinedAt: !487)
!1020 = !DILocation(line: 767, column: 2, scope: !473, inlinedAt: !487)
!1021 = !DILocation(line: 770, column: 10, scope: !473, inlinedAt: !487)
!1022 = !DILocation(line: 771, column: 11, scope: !473, inlinedAt: !487)
!1023 = !DILocation(line: 772, column: 9, scope: !473, inlinedAt: !487)
!1024 = !DILocation(line: 772, column: 2, scope: !473, inlinedAt: !487)
!1025 = !DILocation(line: 0, scope: !1026, inlinedAt: !487)
!1026 = distinct !DILexicalBlock(scope: !624, file: !3, line: 775, column: 13)
!1027 = !DILocation(line: 0, scope: !1028, inlinedAt: !487)
!1028 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 776, column: 39)
!1029 = !DILocation(line: 0, scope: !1030, inlinedAt: !622)
!1030 = distinct !DILexicalBlock(scope: !614, file: !3, line: 984, column: 6)
!1031 = !DILocation(line: 0, scope: !1032, inlinedAt: !622)
!1032 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 986, column: 11)
!1033 = !DILocation(line: 0, scope: !1034, inlinedAt: !622)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 992, column: 11)
!1035 = distinct !DILexicalBlock(scope: !614, file: !3, line: 990, column: 6)
!1036 = !DILocation(line: 773, column: 7, scope: !624, inlinedAt: !487)
!1037 = !DILocation(line: 773, column: 36, scope: !624, inlinedAt: !487)
!1038 = !DILocation(line: 773, column: 7, scope: !625, inlinedAt: !487)
!1039 = !DILocation(line: 0, scope: !614, inlinedAt: !622)
!1040 = !DILocation(line: 980, column: 2, scope: !614, inlinedAt: !622)
!1041 = !DILocation(line: 982, column: 6, scope: !1042, inlinedAt: !622)
!1042 = distinct !DILexicalBlock(scope: !614, file: !3, line: 982, column: 6)
!1043 = !DILocation(line: 982, column: 59, scope: !1042, inlinedAt: !622)
!1044 = !DILocation(line: 982, column: 6, scope: !614, inlinedAt: !622)
!1045 = !DILocation(line: 984, column: 6, scope: !1030, inlinedAt: !622)
!1046 = !DILocation(line: 984, column: 6, scope: !614, inlinedAt: !622)
!1047 = !DILocation(line: 987, column: 3, scope: !1032, inlinedAt: !622)
!1048 = !DILocation(line: 988, column: 11, scope: !1049, inlinedAt: !622)
!1049 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 988, column: 11)
!1050 = !DILocation(line: 988, column: 33, scope: !1049, inlinedAt: !622)
!1051 = !DILocation(line: 988, column: 11, scope: !1032, inlinedAt: !622)
!1052 = !DILocation(line: 990, column: 6, scope: !1035, inlinedAt: !622)
!1053 = !DILocation(line: 990, column: 33, scope: !1035, inlinedAt: !622)
!1054 = !DILocation(line: 990, column: 6, scope: !614, inlinedAt: !622)
!1055 = !DILocation(line: 991, column: 22, scope: !1035, inlinedAt: !622)
!1056 = !DILocation(line: 991, column: 3, scope: !1035, inlinedAt: !622)
!1057 = !DILocation(line: 992, column: 11, scope: !1034, inlinedAt: !622)
!1058 = !DILocation(line: 992, column: 11, scope: !1035, inlinedAt: !622)
!1059 = !DILocation(line: 993, column: 22, scope: !1034, inlinedAt: !622)
!1060 = !DILocation(line: 993, column: 3, scope: !1034, inlinedAt: !622)
!1061 = !DILocation(line: 994, column: 1, scope: !614, inlinedAt: !622)
!1062 = !DILocation(line: 775, column: 3, scope: !623, inlinedAt: !487)
!1063 = !DILocation(line: 775, column: 13, scope: !1026, inlinedAt: !487)
!1064 = !DILocation(line: 775, column: 45, scope: !1026, inlinedAt: !487)
!1065 = !DILocation(line: 776, column: 4, scope: !1026, inlinedAt: !487)
!1066 = !DILocation(line: 776, column: 33, scope: !1026, inlinedAt: !487)
!1067 = !DILocation(line: 775, column: 13, scope: !624, inlinedAt: !487)
!1068 = !DILocation(line: 778, column: 4, scope: !1028, inlinedAt: !487)
!1069 = !DILocation(line: 785, column: 8, scope: !1070, inlinedAt: !487)
!1070 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 785, column: 8)
!1071 = !DILocation(line: 785, column: 34, scope: !1070, inlinedAt: !487)
!1072 = !DILocation(line: 785, column: 8, scope: !1028, inlinedAt: !487)
!1073 = !DILocation(line: 786, column: 9, scope: !1074, inlinedAt: !487)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 786, column: 9)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 785, column: 40)
!1076 = !DILocation(line: 786, column: 17, scope: !1074, inlinedAt: !487)
!1077 = !DILocation(line: 786, column: 9, scope: !1075, inlinedAt: !487)
!1078 = !DILocation(line: 787, column: 6, scope: !1079, inlinedAt: !487)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 786, column: 22)
!1080 = !DILocation(line: 788, column: 14, scope: !1079, inlinedAt: !487)
!1081 = !DILocation(line: 789, column: 5, scope: !1079, inlinedAt: !487)
!1082 = !DILocation(line: 790, column: 5, scope: !1075, inlinedAt: !487)
!1083 = !DILocation(line: 791, column: 4, scope: !1075, inlinedAt: !487)
!1084 = !DILocation(line: 792, column: 17, scope: !1028, inlinedAt: !487)
!1085 = !DILocation(line: 792, column: 10, scope: !1028, inlinedAt: !487)
!1086 = !DILocation(line: 793, column: 4, scope: !1028, inlinedAt: !487)
!1087 = !DILocation(line: 794, column: 16, scope: !1028, inlinedAt: !487)
!1088 = !DILocation(line: 794, column: 4, scope: !1028, inlinedAt: !487)
!1089 = !DILocation(line: 795, column: 21, scope: !1028, inlinedAt: !487)
!1090 = !DILocation(line: 795, column: 8, scope: !1028, inlinedAt: !487)
!1091 = !DILocation(line: 795, column: 19, scope: !1028, inlinedAt: !487)
!1092 = !DILocation(line: 796, column: 21, scope: !1028, inlinedAt: !487)
!1093 = !DILocation(line: 796, column: 4, scope: !1028, inlinedAt: !487)
!1094 = !DILocation(line: 796, column: 19, scope: !1028, inlinedAt: !487)
!1095 = !DILocation(line: 797, column: 21, scope: !1028, inlinedAt: !487)
!1096 = !DILocation(line: 797, column: 4, scope: !1028, inlinedAt: !487)
!1097 = !DILocation(line: 797, column: 19, scope: !1028, inlinedAt: !487)
!1098 = !DILocation(line: 798, column: 11, scope: !1028, inlinedAt: !487)
!1099 = !DILocation(line: 799, column: 3, scope: !1028, inlinedAt: !487)
!1100 = distinct !{!1100, !1024, !1101}
!1101 = !DILocation(line: 800, column: 2, scope: !473, inlinedAt: !487)
!1102 = !DILocation(line: 801, column: 6, scope: !1103, inlinedAt: !487)
!1103 = distinct !DILexicalBlock(scope: !473, file: !3, line: 801, column: 6)
!1104 = !DILocation(line: 801, column: 14, scope: !1103, inlinedAt: !487)
!1105 = !DILocation(line: 801, column: 6, scope: !473, inlinedAt: !487)
!1106 = !DILocation(line: 802, column: 3, scope: !1103, inlinedAt: !487)
!1107 = !DILocation(line: 803, column: 1, scope: !473, inlinedAt: !487)
!1108 = !DILocation(line: 0, scope: !602, inlinedAt: !611)
!1109 = !DILocation(line: 807, column: 2, scope: !602, inlinedAt: !611)
!1110 = !DILocation(line: 808, column: 2, scope: !602, inlinedAt: !611)
!1111 = !DILocation(line: 810, column: 2, scope: !602, inlinedAt: !611)
!1112 = !DILocation(line: 812, column: 10, scope: !602, inlinedAt: !611)
!1113 = !DILocation(line: 813, column: 10, scope: !602, inlinedAt: !611)
!1114 = !DILocation(line: 814, column: 9, scope: !602, inlinedAt: !611)
!1115 = !DILocation(line: 814, column: 2, scope: !602, inlinedAt: !611)
!1116 = !DILocation(line: 815, column: 7, scope: !1117, inlinedAt: !611)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 815, column: 7)
!1118 = distinct !DILexicalBlock(scope: !602, file: !3, line: 814, column: 45)
!1119 = !DILocation(line: 815, column: 13, scope: !1117, inlinedAt: !611)
!1120 = !DILocation(line: 815, column: 7, scope: !1118, inlinedAt: !611)
!1121 = !DILocation(line: 816, column: 8, scope: !1122, inlinedAt: !611)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 816, column: 8)
!1123 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 815, column: 21)
!1124 = !DILocation(line: 816, column: 39, scope: !1122, inlinedAt: !611)
!1125 = !DILocation(line: 816, column: 8, scope: !1123, inlinedAt: !611)
!1126 = !DILocation(line: 817, column: 12, scope: !1127, inlinedAt: !611)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 816, column: 45)
!1128 = !DILocation(line: 818, column: 12, scope: !1127, inlinedAt: !611)
!1129 = !DILocation(line: 819, column: 5, scope: !1127, inlinedAt: !611)
!1130 = !DILocation(line: 820, column: 5, scope: !1127, inlinedAt: !611)
!1131 = !DILocation(line: 822, column: 5, scope: !1127, inlinedAt: !611)
!1132 = !DILocation(line: 823, column: 14, scope: !1133, inlinedAt: !611)
!1133 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 823, column: 14)
!1134 = !DILocation(line: 823, column: 22, scope: !1133, inlinedAt: !611)
!1135 = !DILocation(line: 823, column: 14, scope: !1122, inlinedAt: !611)
!1136 = !DILocation(line: 824, column: 5, scope: !1137, inlinedAt: !611)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 823, column: 27)
!1138 = !DILocation(line: 825, column: 5, scope: !1137, inlinedAt: !611)
!1139 = !DILocation(line: 826, column: 13, scope: !1137, inlinedAt: !611)
!1140 = !DILocation(line: 827, column: 4, scope: !1137, inlinedAt: !611)
!1141 = !DILocation(line: 828, column: 5, scope: !1133, inlinedAt: !611)
!1142 = !DILocation(line: 830, column: 8, scope: !1143, inlinedAt: !611)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 830, column: 8)
!1144 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 829, column: 8)
!1145 = !DILocation(line: 830, column: 42, scope: !1143, inlinedAt: !611)
!1146 = !DILocation(line: 830, column: 8, scope: !1144, inlinedAt: !611)
!1147 = !DILocation(line: 831, column: 12, scope: !1148, inlinedAt: !611)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 830, column: 48)
!1149 = !DILocation(line: 832, column: 12, scope: !1148, inlinedAt: !611)
!1150 = !DILocation(line: 833, column: 5, scope: !1148, inlinedAt: !611)
!1151 = !DILocation(line: 834, column: 5, scope: !1148, inlinedAt: !611)
!1152 = !DILocation(line: 836, column: 5, scope: !1148, inlinedAt: !611)
!1153 = !DILocation(line: 838, column: 29, scope: !1154, inlinedAt: !611)
!1154 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 837, column: 9)
!1155 = !DILocation(line: 838, column: 12, scope: !1154, inlinedAt: !611)
!1156 = !DILocation(line: 838, column: 5, scope: !1154, inlinedAt: !611)
!1157 = !DILocation(line: 838, column: 27, scope: !1154, inlinedAt: !611)
!1158 = !DILocation(line: 839, column: 29, scope: !1154, inlinedAt: !611)
!1159 = !DILocation(line: 839, column: 5, scope: !1154, inlinedAt: !611)
!1160 = !DILocation(line: 839, column: 27, scope: !1154, inlinedAt: !611)
!1161 = !DILocation(line: 840, column: 12, scope: !1154, inlinedAt: !611)
!1162 = distinct !{!1162, !1115, !1163}
!1163 = !DILocation(line: 843, column: 2, scope: !602, inlinedAt: !611)
!1164 = !DILocation(line: 844, column: 6, scope: !1165, inlinedAt: !611)
!1165 = distinct !DILexicalBlock(scope: !602, file: !3, line: 844, column: 6)
!1166 = !DILocation(line: 844, column: 14, scope: !1165, inlinedAt: !611)
!1167 = !DILocation(line: 844, column: 6, scope: !602, inlinedAt: !611)
!1168 = !DILocation(line: 845, column: 3, scope: !1165, inlinedAt: !611)
!1169 = !DILocation(line: 846, column: 1, scope: !602, inlinedAt: !611)
!1170 = !DILocation(line: 455, column: 3, scope: !488)
!1171 = !DILocation(line: 456, column: 3, scope: !488)
!1172 = !DILocation(line: 459, column: 6, scope: !471)
!1173 = !DILocation(line: 459, column: 6, scope: !412)
!1174 = !DILocation(line: 0, scope: !453, inlinedAt: !469)
!1175 = !DILocation(line: 939, column: 2, scope: !453, inlinedAt: !469)
!1176 = !DILocation(line: 940, column: 2, scope: !453, inlinedAt: !469)
!1177 = !DILocation(line: 941, column: 2, scope: !453, inlinedAt: !469)
!1178 = !DILocation(line: 942, column: 2, scope: !453, inlinedAt: !469)
!1179 = !DILocation(line: 945, column: 10, scope: !453, inlinedAt: !469)
!1180 = !DILocation(line: 946, column: 11, scope: !453, inlinedAt: !469)
!1181 = !DILocation(line: 947, column: 9, scope: !453, inlinedAt: !469)
!1182 = !DILocation(line: 947, column: 2, scope: !453, inlinedAt: !469)
!1183 = !DILocation(line: 0, scope: !1184, inlinedAt: !469)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 950, column: 13)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 948, column: 7)
!1186 = distinct !DILexicalBlock(scope: !453, file: !3, line: 947, column: 45)
!1187 = !DILocation(line: 0, scope: !1188, inlinedAt: !469)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 951, column: 39)
!1189 = !DILocation(line: 948, column: 7, scope: !1185, inlinedAt: !469)
!1190 = !DILocation(line: 948, column: 33, scope: !1185, inlinedAt: !469)
!1191 = !DILocation(line: 948, column: 7, scope: !1186, inlinedAt: !469)
!1192 = !DILocation(line: 950, column: 13, scope: !1184, inlinedAt: !469)
!1193 = !DILocation(line: 950, column: 45, scope: !1184, inlinedAt: !469)
!1194 = !DILocation(line: 951, column: 4, scope: !1184, inlinedAt: !469)
!1195 = !DILocation(line: 951, column: 33, scope: !1184, inlinedAt: !469)
!1196 = !DILocation(line: 950, column: 13, scope: !1185, inlinedAt: !469)
!1197 = !DILocation(line: 953, column: 4, scope: !1188, inlinedAt: !469)
!1198 = !DILocation(line: 959, column: 8, scope: !1199, inlinedAt: !469)
!1199 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 959, column: 8)
!1200 = !DILocation(line: 959, column: 34, scope: !1199, inlinedAt: !469)
!1201 = !DILocation(line: 959, column: 8, scope: !1188, inlinedAt: !469)
!1202 = !DILocation(line: 960, column: 9, scope: !1203, inlinedAt: !469)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 960, column: 9)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 959, column: 40)
!1205 = !DILocation(line: 960, column: 17, scope: !1203, inlinedAt: !469)
!1206 = !DILocation(line: 960, column: 9, scope: !1204, inlinedAt: !469)
!1207 = !DILocation(line: 961, column: 6, scope: !1208, inlinedAt: !469)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 960, column: 22)
!1209 = !DILocation(line: 962, column: 14, scope: !1208, inlinedAt: !469)
!1210 = !DILocation(line: 963, column: 5, scope: !1208, inlinedAt: !469)
!1211 = !DILocation(line: 964, column: 5, scope: !1204, inlinedAt: !469)
!1212 = !DILocation(line: 965, column: 4, scope: !1204, inlinedAt: !469)
!1213 = !DILocation(line: 966, column: 17, scope: !1188, inlinedAt: !469)
!1214 = !DILocation(line: 966, column: 10, scope: !1188, inlinedAt: !469)
!1215 = !DILocation(line: 967, column: 4, scope: !1188, inlinedAt: !469)
!1216 = !DILocation(line: 968, column: 16, scope: !1188, inlinedAt: !469)
!1217 = !DILocation(line: 968, column: 4, scope: !1188, inlinedAt: !469)
!1218 = !DILocation(line: 969, column: 19, scope: !1188, inlinedAt: !469)
!1219 = !DILocation(line: 969, column: 8, scope: !1188, inlinedAt: !469)
!1220 = !DILocation(line: 969, column: 17, scope: !1188, inlinedAt: !469)
!1221 = !DILocation(line: 970, column: 19, scope: !1188, inlinedAt: !469)
!1222 = !DILocation(line: 970, column: 8, scope: !1188, inlinedAt: !469)
!1223 = !DILocation(line: 970, column: 17, scope: !1188, inlinedAt: !469)
!1224 = !{!919, !920, i64 72}
!1225 = !DILocation(line: 971, column: 11, scope: !1188, inlinedAt: !469)
!1226 = !DILocation(line: 972, column: 3, scope: !1188, inlinedAt: !469)
!1227 = distinct !{!1227, !1182, !1228}
!1228 = !DILocation(line: 973, column: 2, scope: !453, inlinedAt: !469)
!1229 = !DILocation(line: 974, column: 6, scope: !1230, inlinedAt: !469)
!1230 = distinct !DILexicalBlock(scope: !453, file: !3, line: 974, column: 6)
!1231 = !DILocation(line: 974, column: 14, scope: !1230, inlinedAt: !469)
!1232 = !DILocation(line: 974, column: 6, scope: !453, inlinedAt: !469)
!1233 = !DILocation(line: 975, column: 3, scope: !1230, inlinedAt: !469)
!1234 = !DILocation(line: 976, column: 1, scope: !453, inlinedAt: !469)
!1235 = !DILocation(line: 461, column: 3, scope: !470)
!1236 = !DILocation(line: 462, column: 2, scope: !470)
!1237 = !DILocation(line: 464, column: 6, scope: !448)
!1238 = !DILocation(line: 464, column: 6, scope: !412)
!1239 = !DILocation(line: 0, scope: !425, inlinedAt: !446)
!1240 = !DILocation(line: 850, column: 2, scope: !425, inlinedAt: !446)
!1241 = !DILocation(line: 851, column: 2, scope: !425, inlinedAt: !446)
!1242 = !DILocation(line: 854, column: 2, scope: !425, inlinedAt: !446)
!1243 = !DILocation(line: 859, column: 8, scope: !425, inlinedAt: !446)
!1244 = !DILocation(line: 860, column: 10, scope: !425, inlinedAt: !446)
!1245 = !DILocation(line: 861, column: 9, scope: !425, inlinedAt: !446)
!1246 = !DILocation(line: 861, column: 2, scope: !425, inlinedAt: !446)
!1247 = !DILocation(line: 0, scope: !1248, inlinedAt: !446)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 877, column: 5)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 871, column: 9)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 863, column: 8)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 862, column: 21)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 862, column: 7)
!1253 = distinct !DILexicalBlock(scope: !425, file: !3, line: 861, column: 45)
!1254 = !DILocation(line: 862, column: 7, scope: !1252, inlinedAt: !446)
!1255 = !DILocation(line: 862, column: 13, scope: !1252, inlinedAt: !446)
!1256 = !DILocation(line: 862, column: 7, scope: !1253, inlinedAt: !446)
!1257 = !DILocation(line: 863, column: 8, scope: !1250, inlinedAt: !446)
!1258 = !DILocation(line: 863, column: 39, scope: !1250, inlinedAt: !446)
!1259 = !DILocation(line: 863, column: 8, scope: !1251, inlinedAt: !446)
!1260 = !DILocation(line: 864, column: 12, scope: !1261, inlinedAt: !446)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 863, column: 45)
!1262 = !DILocation(line: 865, column: 12, scope: !1261, inlinedAt: !446)
!1263 = !DILocation(line: 866, column: 5, scope: !1261, inlinedAt: !446)
!1264 = !DILocation(line: 867, column: 14, scope: !1261, inlinedAt: !446)
!1265 = !DILocation(line: 867, column: 5, scope: !1261, inlinedAt: !446)
!1266 = !DILocation(line: 870, column: 5, scope: !1261, inlinedAt: !446)
!1267 = !DILocation(line: 872, column: 9, scope: !1268, inlinedAt: !446)
!1268 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 872, column: 9)
!1269 = !DILocation(line: 872, column: 15, scope: !1268, inlinedAt: !446)
!1270 = !DILocation(line: 872, column: 9, scope: !1249, inlinedAt: !446)
!1271 = !DILocation(line: 873, column: 6, scope: !1272, inlinedAt: !446)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 872, column: 20)
!1273 = !DILocation(line: 874, column: 12, scope: !1272, inlinedAt: !446)
!1274 = !DILocation(line: 875, column: 5, scope: !1272, inlinedAt: !446)
!1275 = !DILocation(line: 877, column: 5, scope: !1248, inlinedAt: !446)
!1276 = !DILocation(line: 879, column: 24, scope: !1277, inlinedAt: !446)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 879, column: 10)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 878, column: 25)
!1279 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 877, column: 5)
!1280 = !{!1281, !380, i64 24}
!1281 = !{!"residue_t", !380, i64 0, !390, i64 8, !390, i64 12, !390, i64 16, !380, i64 24, !380, i64 32, !390, i64 40, !390, i64 44, !390, i64 48, !380, i64 56, !380, i64 64, !390, i64 72, !380, i64 80, !390, i64 88, !380, i64 96, !390, i64 104, !380, i64 112, !380, i64 120}
!1282 = !DILocation(line: 879, column: 11, scope: !1277, inlinedAt: !446)
!1283 = !DILocation(line: 879, column: 10, scope: !1278, inlinedAt: !446)
!1284 = !DILocation(line: 878, column: 17, scope: !1279, inlinedAt: !446)
!1285 = distinct !{!1285, !1275, !1286}
!1286 = !DILocation(line: 883, column: 5, scope: !1248, inlinedAt: !446)
!1287 = !DILocation(line: 885, column: 15, scope: !1288, inlinedAt: !446)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 884, column: 16)
!1289 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 884, column: 9)
!1290 = !DILocation(line: 887, column: 20, scope: !1288, inlinedAt: !446)
!1291 = !DILocation(line: 885, column: 6, scope: !1288, inlinedAt: !446)
!1292 = !DILocation(line: 888, column: 6, scope: !1288, inlinedAt: !446)
!1293 = !DILocation(line: 890, column: 5, scope: !1249, inlinedAt: !446)
!1294 = !DILocation(line: 892, column: 3, scope: !1251, inlinedAt: !446)
!1295 = !DILocation(line: 893, column: 4, scope: !1296, inlinedAt: !446)
!1296 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 892, column: 8)
!1297 = !DILocalVariable(name: "res", arg: 1, scope: !1298, file: !3, line: 1202, type: !169)
!1298 = distinct !DISubprogram(name: "findatom", scope: !3, file: !3, line: 1202, type: !1299, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!201, !169, !12}
!1301 = !{!1297, !1302, !1303}
!1302 = !DILocalVariable(name: "aname", arg: 2, scope: !1298, file: !3, line: 1202, type: !12)
!1303 = !DILocalVariable(name: "a", scope: !1298, file: !3, line: 1204, type: !11)
!1304 = !DILocation(line: 0, scope: !1298, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 894, column: 16, scope: !1306, inlinedAt: !446)
!1306 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 894, column: 8)
!1307 = !DILocation(line: 1206, column: 23, scope: !1308, inlinedAt: !1305)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1206, column: 2)
!1309 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1206, column: 2)
!1310 = !{!1281, !390, i64 104}
!1311 = !DILocation(line: 1206, column: 16, scope: !1308, inlinedAt: !1305)
!1312 = !DILocation(line: 1206, column: 2, scope: !1309, inlinedAt: !1305)
!1313 = !DILocation(line: 1207, column: 21, scope: !1314, inlinedAt: !1305)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1207, column: 7)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1206, column: 38)
!1316 = !DILocation(line: 0, scope: !1314, inlinedAt: !1305)
!1317 = !{!1281, !380, i64 120}
!1318 = distinct !{!1318, !1312, !1319}
!1319 = !DILocation(line: 1209, column: 2, scope: !1309, inlinedAt: !1305)
!1320 = !DILocation(line: 1207, column: 34, scope: !1314, inlinedAt: !1305)
!1321 = !DILocation(line: 1207, column: 8, scope: !1314, inlinedAt: !1305)
!1322 = !DILocation(line: 1206, column: 34, scope: !1308, inlinedAt: !1305)
!1323 = !DILocation(line: 1207, column: 7, scope: !1315, inlinedAt: !1305)
!1324 = !DILocation(line: 895, column: 14, scope: !1325, inlinedAt: !446)
!1325 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 894, column: 41)
!1326 = !DILocation(line: 897, column: 17, scope: !1325, inlinedAt: !446)
!1327 = !DILocation(line: 895, column: 5, scope: !1325, inlinedAt: !446)
!1328 = !DILocation(line: 898, column: 5, scope: !1325, inlinedAt: !446)
!1329 = !DILocation(line: 900, column: 10, scope: !1306, inlinedAt: !446)
!1330 = !DILocation(line: 0, scope: !1298, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 901, column: 16, scope: !1332, inlinedAt: !446)
!1332 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 901, column: 8)
!1333 = !DILocation(line: 1206, column: 2, scope: !1309, inlinedAt: !1331)
!1334 = !DILocation(line: 1206, column: 16, scope: !1308, inlinedAt: !1331)
!1335 = distinct !{!1335, !1333, !1336}
!1336 = !DILocation(line: 1209, column: 2, scope: !1309, inlinedAt: !1331)
!1337 = !DILocation(line: 1207, column: 34, scope: !1314, inlinedAt: !1331)
!1338 = !DILocation(line: 1207, column: 8, scope: !1314, inlinedAt: !1331)
!1339 = !DILocation(line: 1206, column: 34, scope: !1308, inlinedAt: !1331)
!1340 = !DILocation(line: 1207, column: 7, scope: !1315, inlinedAt: !1331)
!1341 = !DILocation(line: 902, column: 14, scope: !1342, inlinedAt: !446)
!1342 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 901, column: 41)
!1343 = !DILocation(line: 904, column: 17, scope: !1342, inlinedAt: !446)
!1344 = !DILocation(line: 902, column: 5, scope: !1342, inlinedAt: !446)
!1345 = !DILocation(line: 905, column: 5, scope: !1342, inlinedAt: !446)
!1346 = !DILocation(line: 907, column: 10, scope: !1332, inlinedAt: !446)
!1347 = !DILocation(line: 0, scope: !1298, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 908, column: 16, scope: !1349, inlinedAt: !446)
!1349 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 908, column: 8)
!1350 = !DILocation(line: 1206, column: 2, scope: !1309, inlinedAt: !1348)
!1351 = !DILocation(line: 1206, column: 16, scope: !1308, inlinedAt: !1348)
!1352 = distinct !{!1352, !1350, !1353}
!1353 = !DILocation(line: 1209, column: 2, scope: !1309, inlinedAt: !1348)
!1354 = !DILocation(line: 1207, column: 34, scope: !1314, inlinedAt: !1348)
!1355 = !DILocation(line: 1207, column: 8, scope: !1314, inlinedAt: !1348)
!1356 = !DILocation(line: 1206, column: 34, scope: !1308, inlinedAt: !1348)
!1357 = !DILocation(line: 1207, column: 7, scope: !1315, inlinedAt: !1348)
!1358 = !DILocation(line: 909, column: 14, scope: !1359, inlinedAt: !446)
!1359 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 908, column: 41)
!1360 = !DILocation(line: 911, column: 17, scope: !1359, inlinedAt: !446)
!1361 = !DILocation(line: 909, column: 5, scope: !1359, inlinedAt: !446)
!1362 = !DILocation(line: 912, column: 5, scope: !1359, inlinedAt: !446)
!1363 = !DILocation(line: 0, scope: !1298, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 915, column: 16, scope: !1365, inlinedAt: !446)
!1365 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 915, column: 8)
!1366 = !DILocation(line: 1206, column: 16, scope: !1308, inlinedAt: !1364)
!1367 = !DILocation(line: 1206, column: 2, scope: !1309, inlinedAt: !1364)
!1368 = distinct !{!1368, !1367, !1369}
!1369 = !DILocation(line: 1209, column: 2, scope: !1309, inlinedAt: !1364)
!1370 = !DILocation(line: 1207, column: 34, scope: !1314, inlinedAt: !1364)
!1371 = !DILocation(line: 1207, column: 8, scope: !1314, inlinedAt: !1364)
!1372 = !DILocation(line: 1206, column: 34, scope: !1308, inlinedAt: !1364)
!1373 = !DILocation(line: 1207, column: 7, scope: !1315, inlinedAt: !1364)
!1374 = !DILocation(line: 916, column: 14, scope: !1375, inlinedAt: !446)
!1375 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 915, column: 41)
!1376 = !DILocation(line: 918, column: 17, scope: !1375, inlinedAt: !446)
!1377 = !DILocation(line: 916, column: 5, scope: !1375, inlinedAt: !446)
!1378 = !DILocation(line: 919, column: 5, scope: !1375, inlinedAt: !446)
!1379 = !DILocation(line: 914, column: 10, scope: !1349, inlinedAt: !446)
!1380 = !DILocation(line: 921, column: 10, scope: !1365, inlinedAt: !446)
!1381 = !DILocation(line: 922, column: 15, scope: !1296, inlinedAt: !446)
!1382 = !DILocation(line: 922, column: 10, scope: !1296, inlinedAt: !446)
!1383 = !DILocation(line: 923, column: 9, scope: !1296, inlinedAt: !446)
!1384 = !DILocation(line: 924, column: 4, scope: !1296, inlinedAt: !446)
!1385 = !DILocation(line: 924, column: 20, scope: !1296, inlinedAt: !446)
!1386 = !DILocation(line: 925, column: 4, scope: !1296, inlinedAt: !446)
!1387 = !DILocation(line: 925, column: 20, scope: !1296, inlinedAt: !446)
!1388 = !DILocation(line: 926, column: 4, scope: !1296, inlinedAt: !446)
!1389 = !DILocation(line: 926, column: 20, scope: !1296, inlinedAt: !446)
!1390 = !DILocation(line: 927, column: 4, scope: !1296, inlinedAt: !446)
!1391 = !DILocation(line: 927, column: 20, scope: !1296, inlinedAt: !446)
!1392 = !DILocation(line: 928, column: 8, scope: !1296, inlinedAt: !446)
!1393 = !DILocation(line: 928, column: 15, scope: !1296, inlinedAt: !446)
!1394 = !{!1395, !920, i64 16}
!1395 = !{!"chiral_t", !381, i64 0, !920, i64 16}
!1396 = distinct !{!1396, !1246, !1397}
!1397 = !DILocation(line: 930, column: 2, scope: !425, inlinedAt: !446)
!1398 = !DILocation(line: 931, column: 6, scope: !1399, inlinedAt: !446)
!1399 = distinct !DILexicalBlock(scope: !425, file: !3, line: 931, column: 6)
!1400 = !DILocation(line: 931, column: 12, scope: !1399, inlinedAt: !446)
!1401 = !DILocation(line: 931, column: 6, scope: !425, inlinedAt: !446)
!1402 = !DILocation(line: 932, column: 3, scope: !1403, inlinedAt: !446)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 931, column: 17)
!1404 = !DILocation(line: 933, column: 9, scope: !1403, inlinedAt: !446)
!1405 = !DILocation(line: 934, column: 2, scope: !1403, inlinedAt: !446)
!1406 = !DILocation(line: 935, column: 1, scope: !425, inlinedAt: !446)
!1407 = !DILocation(line: 466, column: 3, scope: !447)
!1408 = !DILocation(line: 467, column: 2, scope: !447)
!1409 = !DILocation(line: 470, column: 1, scope: !412)
!1410 = distinct !DISubprogram(name: "setreslibkind", scope: !3, file: !3, line: 103, type: !1411, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!11, !12, !12}
!1413 = !{!1414, !1415, !1416, !1417}
!1414 = !DILocalVariable(name: "reslib", arg: 1, scope: !1410, file: !3, line: 103, type: !12)
!1415 = !DILocalVariable(name: "kind", arg: 2, scope: !1410, file: !3, line: 103, type: !12)
!1416 = !DILocalVariable(name: "nhp", scope: !1410, file: !3, line: 105, type: !12)
!1417 = !DILocalVariable(name: "rlp", scope: !1410, file: !3, line: 106, type: !298)
!1418 = !DILocation(line: 0, scope: !1410)
!1419 = !DILocation(line: 0, scope: !369, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 108, column: 14, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 108, column: 6)
!1422 = !DILocation(line: 0, scope: !378, inlinedAt: !1420)
!1423 = !DILocation(line: 426, column: 2, scope: !378, inlinedAt: !1420)
!1424 = !DILocation(line: 427, column: 20, scope: !385, inlinedAt: !1420)
!1425 = !DILocation(line: 427, column: 7, scope: !385, inlinedAt: !1420)
!1426 = !DILocation(line: 427, column: 38, scope: !385, inlinedAt: !1420)
!1427 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !1420)
!1428 = !DILocation(line: 426, column: 38, scope: !387, inlinedAt: !1420)
!1429 = distinct !{!1429, !1423, !1430}
!1430 = !DILocation(line: 430, column: 2, scope: !378, inlinedAt: !1420)
!1431 = !DILocation(line: 109, column: 16, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 109, column: 8)
!1433 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 108, column: 48)
!1434 = !DILocation(line: 109, column: 40, scope: !1432)
!1435 = !DILocation(line: 109, column: 8, scope: !1433)
!1436 = !DILocation(line: 110, column: 15, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 109, column: 49)
!1438 = !DILocation(line: 110, column: 6, scope: !1437)
!1439 = !DILocation(line: 112, column: 6, scope: !1437)
!1440 = !DILocation(line: 0, scope: !1421)
!1441 = !DILocation(line: 115, column: 7, scope: !1410)
!1442 = !DILocation(line: 115, column: 17, scope: !1410)
!1443 = !DILocation(line: 116, column: 8, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 116, column: 7)
!1445 = !DILocation(line: 116, column: 30, scope: !1444)
!1446 = !DILocation(line: 116, column: 34, scope: !1444)
!1447 = !DILocation(line: 116, column: 7, scope: !1410)
!1448 = !DILocation(line: 118, column: 13, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 118, column: 12)
!1450 = !DILocation(line: 118, column: 35, scope: !1449)
!1451 = !DILocation(line: 118, column: 39, scope: !1449)
!1452 = !DILocation(line: 118, column: 12, scope: !1444)
!1453 = !DILocation(line: 120, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 120, column: 12)
!1455 = !DILocation(line: 120, column: 34, scope: !1454)
!1456 = !DILocation(line: 120, column: 38, scope: !1454)
!1457 = !DILocation(line: 120, column: 12, scope: !1449)
!1458 = !DILocation(line: 0, scope: !1444)
!1459 = !DILocation(line: 123, column: 9, scope: !1410)
!1460 = !DILocation(line: 123, column: 22, scope: !1410)
!1461 = distinct !DISubprogram(name: "getresidue", scope: !3, file: !3, line: 126, type: !1462, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!169, !12, !12}
!1464 = !{!1465, !1466, !1467, !1468, !1472, !1473, !1474}
!1465 = !DILocalVariable(name: "rname", arg: 1, scope: !1461, file: !3, line: 126, type: !12)
!1466 = !DILocalVariable(name: "reslib", arg: 2, scope: !1461, file: !3, line: 126, type: !12)
!1467 = !DILocalVariable(name: "nhp", scope: !1461, file: !3, line: 128, type: !12)
!1468 = !DILocalVariable(name: "leapname", scope: !1461, file: !3, line: 128, type: !1469)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 40, elements: !1470)
!1470 = !{!1471}
!1471 = !DISubrange(count: 5)
!1472 = !DILocalVariable(name: "rlp", scope: !1461, file: !3, line: 129, type: !298)
!1473 = !DILocalVariable(name: "res", scope: !1461, file: !3, line: 130, type: !169)
!1474 = !DILocalVariable(name: "nres", scope: !1461, file: !3, line: 130, type: !169)
!1475 = !DILocation(line: 0, scope: !1461)
!1476 = !DILocation(line: 128, column: 2, scope: !1461)
!1477 = !DILocation(line: 128, column: 13, scope: !1461)
!1478 = !DILocation(line: 0, scope: !369, inlinedAt: !1479)
!1479 = distinct !DILocation(line: 132, column: 14, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 132, column: 6)
!1481 = !DILocation(line: 0, scope: !378, inlinedAt: !1479)
!1482 = !DILocation(line: 426, column: 2, scope: !378, inlinedAt: !1479)
!1483 = !DILocation(line: 427, column: 20, scope: !385, inlinedAt: !1479)
!1484 = !DILocation(line: 427, column: 7, scope: !385, inlinedAt: !1479)
!1485 = !DILocation(line: 427, column: 38, scope: !385, inlinedAt: !1479)
!1486 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !1479)
!1487 = !DILocation(line: 426, column: 38, scope: !387, inlinedAt: !1479)
!1488 = distinct !{!1488, !1482, !1489}
!1489 = !DILocation(line: 430, column: 2, scope: !378, inlinedAt: !1479)
!1490 = !DILocation(line: 133, column: 15, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 133, column: 7)
!1492 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 132, column: 48)
!1493 = !DILocation(line: 133, column: 39, scope: !1491)
!1494 = !DILocation(line: 133, column: 7, scope: !1492)
!1495 = !DILocation(line: 134, column: 4, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 133, column: 48)
!1497 = !DILocation(line: 0, scope: !1480)
!1498 = !DILocation(line: 138, column: 2, scope: !1461)
!1499 = !DILocation(line: 139, column: 12, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 139, column: 7)
!1501 = !DILocation(line: 139, column: 7, scope: !1461)
!1502 = !DILocation(line: 140, column: 14, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 140, column: 13)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 139, column: 33)
!1505 = !DILocation(line: 140, column: 13, scope: !1504)
!1506 = !DILocation(line: 141, column: 4, scope: !1503)
!1507 = !DILocation(line: 142, column: 14, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 142, column: 13)
!1509 = !DILocation(line: 142, column: 13, scope: !1503)
!1510 = !DILocation(line: 143, column: 4, scope: !1508)
!1511 = !DILocation(line: 144, column: 14, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 144, column: 13)
!1513 = !DILocation(line: 144, column: 13, scope: !1508)
!1514 = !DILocation(line: 145, column: 4, scope: !1512)
!1515 = !DILocation(line: 146, column: 14, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 146, column: 13)
!1517 = !DILocation(line: 146, column: 13, scope: !1512)
!1518 = !DILocation(line: 147, column: 4, scope: !1516)
!1519 = !DILocation(line: 150, column: 14, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 150, column: 13)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 149, column: 38)
!1522 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 149, column: 12)
!1523 = !DILocation(line: 150, column: 13, scope: !1521)
!1524 = !DILocation(line: 151, column: 4, scope: !1520)
!1525 = !DILocation(line: 152, column: 14, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 152, column: 13)
!1527 = !DILocation(line: 152, column: 13, scope: !1520)
!1528 = !DILocation(line: 153, column: 4, scope: !1526)
!1529 = !DILocation(line: 154, column: 14, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 154, column: 13)
!1531 = !DILocation(line: 154, column: 13, scope: !1526)
!1532 = !DILocation(line: 155, column: 4, scope: !1530)
!1533 = !DILocation(line: 156, column: 14, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 156, column: 13)
!1535 = !DILocation(line: 156, column: 13, scope: !1530)
!1536 = !DILocation(line: 157, column: 4, scope: !1534)
!1537 = !DILocation(line: 159, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 159, column: 7)
!1539 = !DILocation(line: 159, column: 28, scope: !1538)
!1540 = !DILocation(line: 159, column: 7, scope: !1461)
!1541 = !DILocation(line: 161, column: 12, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 161, column: 12)
!1543 = !DILocation(line: 161, column: 33, scope: !1542)
!1544 = !DILocation(line: 161, column: 12, scope: !1538)
!1545 = !DILocation(line: 0, scope: !1538)
!1546 = !DILocation(line: 163, column: 18, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 163, column: 2)
!1548 = !DILocation(line: 0, scope: !1547)
!1549 = !DILocation(line: 163, column: 2, scope: !1547)
!1550 = !DILocation(line: 164, column: 21, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 164, column: 6)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 163, column: 53)
!1553 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 163, column: 2)
!1554 = !DILocation(line: 164, column: 8, scope: !1551)
!1555 = !DILocation(line: 164, column: 40, scope: !1551)
!1556 = !DILocation(line: 164, column: 47, scope: !1551)
!1557 = !DILocation(line: 165, column: 6, scope: !1551)
!1558 = !DILocation(line: 165, column: 41, scope: !1551)
!1559 = !DILocation(line: 164, column: 6, scope: !1552)
!1560 = !DILocation(line: 163, column: 45, scope: !1553)
!1561 = distinct !{!1561, !1549, !1562}
!1562 = !DILocation(line: 167, column: 2, scope: !1547)
!1563 = !DILocation(line: 170, column: 3, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 169, column: 19)
!1565 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 169, column: 6)
!1566 = !DILocation(line: 171, column: 3, scope: !1564)
!1567 = !DILocation(line: 172, column: 3, scope: !1564)
!1568 = !DILocation(line: 175, column: 9, scope: !1461)
!1569 = !DILocation(line: 177, column: 2, scope: !1461)
!1570 = !DILocation(line: 178, column: 1, scope: !1461)
!1571 = distinct !DISubprogram(name: "copyresidue", scope: !3, file: !3, line: 180, type: !1572, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!169, !169}
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1575 = !DILocalVariable(name: "res", arg: 1, scope: !1571, file: !3, line: 180, type: !169)
!1576 = !DILocalVariable(name: "a", scope: !1571, file: !3, line: 182, type: !11)
!1577 = !DILocalVariable(name: "b", scope: !1571, file: !3, line: 182, type: !11)
!1578 = !DILocalVariable(name: "c", scope: !1571, file: !3, line: 182, type: !11)
!1579 = !DILocalVariable(name: "i", scope: !1571, file: !3, line: 182, type: !11)
!1580 = !DILocalVariable(name: "aip", scope: !1571, file: !3, line: 183, type: !228)
!1581 = !DILocalVariable(name: "nres", scope: !1571, file: !3, line: 184, type: !169)
!1582 = !DILocalVariable(name: "ap", scope: !1571, file: !3, line: 185, type: !201)
!1583 = !DILocalVariable(name: "anp", scope: !1571, file: !3, line: 186, type: !12)
!1584 = !DILocalVariable(name: "rnp", scope: !1571, file: !3, line: 186, type: !12)
!1585 = !DILocalVariable(name: "bp", scope: !1571, file: !3, line: 187, type: !183)
!1586 = !DILocalVariable(name: "cp", scope: !1571, file: !3, line: 188, type: !190)
!1587 = !DILocation(line: 0, scope: !1571)
!1588 = !DILocation(line: 190, column: 26, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 190, column: 5)
!1590 = !DILocation(line: 190, column: 13, scope: !1589)
!1591 = !DILocation(line: 191, column: 3, scope: !1589)
!1592 = !DILocation(line: 190, column: 5, scope: !1571)
!1593 = !DILocation(line: 193, column: 42, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 192, column: 2)
!1595 = !DILocation(line: 193, column: 3, scope: !1594)
!1596 = !DILocation(line: 194, column: 3, scope: !1594)
!1597 = !DILocation(line: 195, column: 3, scope: !1594)
!1598 = !DILocation(line: 198, column: 37, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 198, column: 6)
!1600 = !DILocation(line: 198, column: 32, scope: !1599)
!1601 = !DILocation(line: 198, column: 45, scope: !1599)
!1602 = !DILocation(line: 198, column: 25, scope: !1599)
!1603 = !DILocation(line: 198, column: 13, scope: !1599)
!1604 = !DILocation(line: 199, column: 3, scope: !1599)
!1605 = !DILocation(line: 198, column: 6, scope: !1571)
!1606 = !DILocation(line: 201, column: 51, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 200, column: 2)
!1608 = !DILocation(line: 201, column: 3, scope: !1607)
!1609 = !DILocation(line: 202, column: 3, scope: !1607)
!1610 = !DILocation(line: 203, column: 3, scope: !1607)
!1611 = !DILocation(line: 206, column: 43, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 206, column: 6)
!1613 = !DILocation(line: 206, column: 23, scope: !1612)
!1614 = !DILocation(line: 206, column: 58, scope: !1612)
!1615 = !DILocation(line: 206, column: 6, scope: !1571)
!1616 = !DILocation(line: 209, column: 9, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 207, column: 2)
!1618 = !DILocation(line: 208, column: 3, scope: !1617)
!1619 = !DILocation(line: 210, column: 3, scope: !1617)
!1620 = !DILocation(line: 211, column: 3, scope: !1617)
!1621 = !DILocation(line: 214, column: 11, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 214, column: 6)
!1623 = !{!1281, !390, i64 72}
!1624 = !DILocation(line: 214, column: 23, scope: !1622)
!1625 = !DILocation(line: 214, column: 6, scope: !1571)
!1626 = !DILocation(line: 216, column: 11, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 215, column: 7)
!1628 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 214, column: 28)
!1629 = !DILocation(line: 216, column: 27, scope: !1627)
!1630 = !DILocation(line: 216, column: 4, scope: !1627)
!1631 = !DILocation(line: 215, column: 14, scope: !1627)
!1632 = !DILocation(line: 217, column: 4, scope: !1627)
!1633 = !DILocation(line: 215, column: 7, scope: !1628)
!1634 = !DILocation(line: 220, column: 37, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 218, column: 3)
!1636 = !DILocation(line: 219, column: 4, scope: !1635)
!1637 = !DILocation(line: 221, column: 4, scope: !1635)
!1638 = !DILocation(line: 222, column: 4, scope: !1635)
!1639 = !DILocation(line: 0, scope: !1622)
!1640 = !DILocation(line: 227, column: 11, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 227, column: 6)
!1642 = !{!1281, !390, i64 88}
!1643 = !DILocation(line: 227, column: 21, scope: !1641)
!1644 = !DILocation(line: 227, column: 6, scope: !1571)
!1645 = !DILocation(line: 229, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 228, column: 7)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 227, column: 26)
!1648 = !DILocation(line: 229, column: 25, scope: !1646)
!1649 = !DILocation(line: 229, column: 4, scope: !1646)
!1650 = !DILocation(line: 228, column: 14, scope: !1646)
!1651 = !DILocation(line: 230, column: 4, scope: !1646)
!1652 = !DILocation(line: 228, column: 7, scope: !1647)
!1653 = !DILocation(line: 233, column: 37, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 231, column: 3)
!1655 = !DILocation(line: 232, column: 4, scope: !1654)
!1656 = !DILocation(line: 234, column: 4, scope: !1654)
!1657 = !DILocation(line: 235, column: 4, scope: !1654)
!1658 = !DILocation(line: 0, scope: !1641)
!1659 = !DILocation(line: 240, column: 8, scope: !1571)
!1660 = !DILocation(line: 240, column: 15, scope: !1571)
!1661 = !{!1281, !380, i64 0}
!1662 = !DILocation(line: 242, column: 37, scope: !1571)
!1663 = !DILocation(line: 242, column: 25, scope: !1571)
!1664 = !DILocation(line: 242, column: 47, scope: !1571)
!1665 = !DILocation(line: 242, column: 18, scope: !1571)
!1666 = !DILocation(line: 243, column: 10, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 243, column: 6)
!1668 = !DILocation(line: 243, column: 6, scope: !1571)
!1669 = !DILocation(line: 244, column: 12, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 243, column: 19)
!1671 = !DILocation(line: 244, column: 3, scope: !1670)
!1672 = !DILocation(line: 246, column: 3, scope: !1670)
!1673 = !DILocation(line: 248, column: 2, scope: !1571)
!1674 = !DILocation(line: 249, column: 8, scope: !1571)
!1675 = !DILocation(line: 249, column: 18, scope: !1571)
!1676 = !DILocation(line: 251, column: 37, scope: !1571)
!1677 = !{!1281, !380, i64 32}
!1678 = !DILocation(line: 251, column: 25, scope: !1571)
!1679 = !DILocation(line: 251, column: 45, scope: !1571)
!1680 = !DILocation(line: 251, column: 18, scope: !1571)
!1681 = !DILocation(line: 252, column: 10, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 252, column: 6)
!1683 = !DILocation(line: 252, column: 6, scope: !1571)
!1684 = !DILocation(line: 253, column: 12, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 252, column: 19)
!1686 = !DILocation(line: 253, column: 3, scope: !1685)
!1687 = !DILocation(line: 254, column: 3, scope: !1685)
!1688 = !DILocation(line: 256, column: 2, scope: !1571)
!1689 = !DILocation(line: 257, column: 8, scope: !1571)
!1690 = !DILocation(line: 257, column: 16, scope: !1571)
!1691 = !DILocation(line: 259, column: 21, scope: !1571)
!1692 = !{!1281, !390, i64 8}
!1693 = !DILocation(line: 259, column: 8, scope: !1571)
!1694 = !DILocation(line: 259, column: 14, scope: !1571)
!1695 = !DILocation(line: 260, column: 8, scope: !1571)
!1696 = !DILocation(line: 260, column: 18, scope: !1571)
!1697 = !{!1281, !390, i64 12}
!1698 = !DILocation(line: 261, column: 8, scope: !1571)
!1699 = !DILocation(line: 261, column: 17, scope: !1571)
!1700 = !{!1281, !390, i64 16}
!1701 = !DILocation(line: 262, column: 22, scope: !1571)
!1702 = !{!1281, !390, i64 40}
!1703 = !DILocation(line: 262, column: 8, scope: !1571)
!1704 = !DILocation(line: 262, column: 15, scope: !1571)
!1705 = !DILocation(line: 263, column: 8, scope: !1571)
!1706 = !DILocation(line: 263, column: 17, scope: !1571)
!1707 = !{!1281, !380, i64 56}
!1708 = !DILocation(line: 264, column: 21, scope: !1571)
!1709 = !DILocation(line: 264, column: 8, scope: !1571)
!1710 = !DILocation(line: 264, column: 19, scope: !1571)
!1711 = !{!1281, !380, i64 64}
!1712 = !DILocation(line: 265, column: 27, scope: !1571)
!1713 = !DILocation(line: 265, column: 8, scope: !1571)
!1714 = !DILocation(line: 265, column: 20, scope: !1571)
!1715 = !DILocation(line: 266, column: 8, scope: !1571)
!1716 = !DILocation(line: 266, column: 19, scope: !1571)
!1717 = !{!1281, !380, i64 80}
!1718 = !DILocation(line: 267, column: 16, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 267, column: 2)
!1720 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 267, column: 2)
!1721 = !DILocation(line: 267, column: 2, scope: !1720)
!1722 = !DILocation(line: 0, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 267, column: 41)
!1724 = !DILocation(line: 268, column: 32, scope: !1723)
!1725 = !DILocation(line: 268, column: 3, scope: !1723)
!1726 = !DILocation(line: 268, column: 30, scope: !1723)
!1727 = !DILocation(line: 269, column: 32, scope: !1723)
!1728 = !DILocation(line: 269, column: 3, scope: !1723)
!1729 = !DILocation(line: 269, column: 30, scope: !1723)
!1730 = !DILocation(line: 267, column: 37, scope: !1719)
!1731 = distinct !{!1731, !1721, !1732}
!1732 = !DILocation(line: 270, column: 2, scope: !1720)
!1733 = !DILocation(line: 271, column: 25, scope: !1571)
!1734 = !DILocation(line: 271, column: 8, scope: !1571)
!1735 = !DILocation(line: 271, column: 18, scope: !1571)
!1736 = !DILocation(line: 272, column: 8, scope: !1571)
!1737 = !DILocation(line: 272, column: 17, scope: !1571)
!1738 = !{!1281, !380, i64 96}
!1739 = !DILocation(line: 273, column: 37, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 273, column: 2)
!1741 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 273, column: 2)
!1742 = !DILocation(line: 273, column: 2, scope: !1741)
!1743 = !DILocation(line: 0, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 273, column: 66)
!1745 = !DILocation(line: 274, column: 3, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 274, column: 3)
!1747 = !DILocation(line: 275, column: 22, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 274, column: 3)
!1749 = !DILocation(line: 275, column: 4, scope: !1748)
!1750 = !DILocation(line: 275, column: 20, scope: !1748)
!1751 = !DILocation(line: 274, column: 23, scope: !1748)
!1752 = !DILocation(line: 274, column: 17, scope: !1748)
!1753 = distinct !{!1753, !1745, !1754}
!1754 = !DILocation(line: 275, column: 51, scope: !1746)
!1755 = !DILocation(line: 276, column: 35, scope: !1744)
!1756 = !DILocation(line: 276, column: 7, scope: !1744)
!1757 = !DILocation(line: 276, column: 14, scope: !1744)
!1758 = !DILocation(line: 273, column: 56, scope: !1740)
!1759 = !DILocation(line: 273, column: 62, scope: !1740)
!1760 = !DILocation(line: 273, column: 44, scope: !1740)
!1761 = distinct !{!1761, !1742, !1762}
!1762 = !DILocation(line: 277, column: 2, scope: !1741)
!1763 = !DILocation(line: 278, column: 22, scope: !1571)
!1764 = !{!1281, !390, i64 44}
!1765 = !DILocation(line: 278, column: 8, scope: !1571)
!1766 = !DILocation(line: 278, column: 15, scope: !1571)
!1767 = !DILocation(line: 279, column: 26, scope: !1571)
!1768 = !{!1281, !390, i64 48}
!1769 = !DILocation(line: 279, column: 8, scope: !1571)
!1770 = !DILocation(line: 279, column: 19, scope: !1571)
!1771 = !DILocation(line: 280, column: 24, scope: !1571)
!1772 = !DILocation(line: 280, column: 8, scope: !1571)
!1773 = !DILocation(line: 280, column: 17, scope: !1571)
!1774 = !DILocation(line: 281, column: 8, scope: !1571)
!1775 = !DILocation(line: 281, column: 17, scope: !1571)
!1776 = !{!1281, !380, i64 112}
!1777 = !DILocation(line: 282, column: 11, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 282, column: 6)
!1779 = !DILocation(line: 282, column: 6, scope: !1778)
!1780 = !DILocation(line: 0, scope: !1778)
!1781 = !DILocation(line: 282, column: 6, scope: !1571)
!1782 = !DILocation(line: 283, column: 3, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 283, column: 3)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 282, column: 21)
!1785 = !DILocation(line: 0, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 283, column: 3)
!1787 = !DILocation(line: 286, column: 3, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 286, column: 3)
!1789 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 285, column: 7)
!1790 = !DILocation(line: 0, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 286, column: 3)
!1792 = !DILocation(line: 284, column: 26, scope: !1786)
!1793 = !DILocation(line: 284, column: 4, scope: !1786)
!1794 = !DILocation(line: 284, column: 24, scope: !1786)
!1795 = !DILocation(line: 283, column: 35, scope: !1786)
!1796 = !DILocation(line: 283, column: 17, scope: !1786)
!1797 = distinct !{!1797, !1782, !1798}
!1798 = !DILocation(line: 284, column: 43, scope: !1783)
!1799 = !DILocation(line: 287, column: 4, scope: !1791)
!1800 = !DILocation(line: 287, column: 24, scope: !1791)
!1801 = !DILocation(line: 286, column: 35, scope: !1791)
!1802 = !DILocation(line: 286, column: 17, scope: !1791)
!1803 = distinct !{!1803, !1787, !1804}
!1804 = !DILocation(line: 287, column: 26, scope: !1788)
!1805 = !DILocation(line: 289, column: 8, scope: !1571)
!1806 = !DILocation(line: 289, column: 16, scope: !1571)
!1807 = !DILocation(line: 290, column: 2, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 290, column: 2)
!1809 = !DILocation(line: 0, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 290, column: 38)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 290, column: 2)
!1812 = !DILocation(line: 292, column: 37, scope: !1810)
!1813 = !DILocation(line: 292, column: 48, scope: !1810)
!1814 = !DILocation(line: 292, column: 24, scope: !1810)
!1815 = !DILocation(line: 292, column: 60, scope: !1810)
!1816 = !DILocation(line: 292, column: 17, scope: !1810)
!1817 = !DILocation(line: 293, column: 11, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 293, column: 7)
!1819 = !DILocation(line: 293, column: 7, scope: !1810)
!1820 = !DILocation(line: 294, column: 13, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 293, column: 20)
!1822 = !DILocation(line: 294, column: 4, scope: !1821)
!1823 = !DILocation(line: 295, column: 4, scope: !1821)
!1824 = !DILocation(line: 297, column: 34, scope: !1810)
!1825 = !DILocation(line: 297, column: 3, scope: !1810)
!1826 = !DILocation(line: 298, column: 11, scope: !1810)
!1827 = !DILocation(line: 298, column: 22, scope: !1810)
!1828 = !DILocation(line: 299, column: 11, scope: !1810)
!1829 = !DILocation(line: 299, column: 22, scope: !1810)
!1830 = !{!919, !380, i64 8}
!1831 = !DILocation(line: 300, column: 25, scope: !1810)
!1832 = !DILocation(line: 300, column: 38, scope: !1810)
!1833 = !{!919, !390, i64 16}
!1834 = !DILocation(line: 300, column: 11, scope: !1810)
!1835 = !DILocation(line: 300, column: 18, scope: !1810)
!1836 = !DILocation(line: 301, column: 42, scope: !1810)
!1837 = !{!919, !390, i64 20}
!1838 = !DILocation(line: 301, column: 11, scope: !1810)
!1839 = !DILocation(line: 301, column: 22, scope: !1810)
!1840 = !DILocation(line: 302, column: 3, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 302, column: 3)
!1842 = !DILocation(line: 303, column: 25, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 302, column: 3)
!1844 = !DILocation(line: 303, column: 4, scope: !1843)
!1845 = !DILocation(line: 303, column: 23, scope: !1843)
!1846 = !DILocation(line: 302, column: 38, scope: !1843)
!1847 = !DILocation(line: 302, column: 18, scope: !1843)
!1848 = distinct !{!1848, !1840, !1849}
!1849 = !DILocation(line: 303, column: 52, scope: !1841)
!1850 = !DILocation(line: 304, column: 11, scope: !1810)
!1851 = !DILocation(line: 304, column: 22, scope: !1810)
!1852 = !{!919, !380, i64 56}
!1853 = !DILocation(line: 305, column: 42, scope: !1810)
!1854 = !DILocation(line: 305, column: 11, scope: !1810)
!1855 = !DILocation(line: 305, column: 22, scope: !1810)
!1856 = !DILocation(line: 306, column: 42, scope: !1810)
!1857 = !DILocation(line: 306, column: 11, scope: !1810)
!1858 = !DILocation(line: 306, column: 22, scope: !1810)
!1859 = !DILocation(line: 307, column: 42, scope: !1810)
!1860 = !{!919, !920, i64 80}
!1861 = !DILocation(line: 307, column: 11, scope: !1810)
!1862 = !DILocation(line: 307, column: 22, scope: !1810)
!1863 = !DILocation(line: 308, column: 42, scope: !1810)
!1864 = !{!919, !920, i64 88}
!1865 = !DILocation(line: 308, column: 11, scope: !1810)
!1866 = !DILocation(line: 308, column: 22, scope: !1810)
!1867 = !DILocation(line: 309, column: 11, scope: !1810)
!1868 = !DILocation(line: 309, column: 22, scope: !1810)
!1869 = !{!919, !380, i64 96}
!1870 = !DILocation(line: 310, column: 42, scope: !1810)
!1871 = !{!919, !390, i64 104}
!1872 = !DILocation(line: 310, column: 11, scope: !1810)
!1873 = !DILocation(line: 310, column: 22, scope: !1810)
!1874 = !DILocation(line: 311, column: 42, scope: !1810)
!1875 = !{!919, !920, i64 112}
!1876 = !DILocation(line: 311, column: 11, scope: !1810)
!1877 = !DILocation(line: 311, column: 22, scope: !1810)
!1878 = !DILocation(line: 312, column: 42, scope: !1810)
!1879 = !{!919, !920, i64 120}
!1880 = !DILocation(line: 312, column: 11, scope: !1810)
!1881 = !DILocation(line: 312, column: 22, scope: !1810)
!1882 = !DILocation(line: 313, column: 42, scope: !1810)
!1883 = !{!919, !390, i64 128}
!1884 = !DILocation(line: 313, column: 11, scope: !1810)
!1885 = !DILocation(line: 313, column: 22, scope: !1810)
!1886 = !DILocation(line: 314, column: 42, scope: !1810)
!1887 = !{!919, !390, i64 132}
!1888 = !DILocation(line: 314, column: 11, scope: !1810)
!1889 = !DILocation(line: 314, column: 22, scope: !1810)
!1890 = !DILocation(line: 315, column: 11, scope: !1810)
!1891 = !DILocation(line: 315, column: 22, scope: !1810)
!1892 = !{!919, !380, i64 136}
!1893 = !DILocation(line: 316, column: 24, scope: !1810)
!1894 = !DILocation(line: 316, column: 11, scope: !1810)
!1895 = !DILocation(line: 316, column: 22, scope: !1810)
!1896 = !DILocation(line: 317, column: 24, scope: !1810)
!1897 = !DILocation(line: 317, column: 3, scope: !1810)
!1898 = !DILocation(line: 317, column: 22, scope: !1810)
!1899 = !DILocation(line: 318, column: 24, scope: !1810)
!1900 = !DILocation(line: 318, column: 3, scope: !1810)
!1901 = !DILocation(line: 318, column: 22, scope: !1810)
!1902 = !DILocation(line: 319, column: 42, scope: !1810)
!1903 = !{!919, !920, i64 168}
!1904 = !DILocation(line: 319, column: 11, scope: !1810)
!1905 = !DILocation(line: 319, column: 22, scope: !1810)
!1906 = !DILocation(line: 290, column: 34, scope: !1811)
!1907 = !DILocation(line: 290, column: 23, scope: !1811)
!1908 = !DILocation(line: 290, column: 16, scope: !1811)
!1909 = distinct !{!1909, !1807, !1910}
!1910 = !DILocation(line: 320, column: 2, scope: !1808)
!1911 = !DILocation(line: 323, column: 1, scope: !1571)
!1912 = distinct !DISubprogram(name: "copystrand", scope: !3, file: !3, line: 325, type: !1913, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!53, !53}
!1915 = !{!1916, !1917, !1918, !1919}
!1916 = !DILocalVariable(name: "str", arg: 1, scope: !1912, file: !3, line: 325, type: !53)
!1917 = !DILocalVariable(name: "newstrand", scope: !1912, file: !3, line: 327, type: !53)
!1918 = !DILocalVariable(name: "namebuf", scope: !1912, file: !3, line: 328, type: !12)
!1919 = !DILocalVariable(name: "resctr", scope: !1912, file: !3, line: 329, type: !11)
!1920 = !DILocation(line: 0, scope: !1912)
!1921 = !DILocation(line: 331, column: 33, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 331, column: 5)
!1923 = !DILocation(line: 331, column: 19, scope: !1922)
!1924 = !DILocation(line: 331, column: 64, scope: !1922)
!1925 = !DILocation(line: 331, column: 5, scope: !1912)
!1926 = !DILocation(line: 332, column: 41, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 331, column: 72)
!1928 = !{!1929, !380, i64 0}
!1929 = !{!"strand_t", !380, i64 0, !390, i64 8, !390, i64 12, !380, i64 16, !380, i64 24, !390, i64 32, !390, i64 36, !380, i64 40}
!1930 = !DILocation(line: 332, column: 3, scope: !1927)
!1931 = !DILocation(line: 333, column: 3, scope: !1927)
!1932 = !DILocation(line: 334, column: 3, scope: !1927)
!1933 = !DILocation(line: 338, column: 16, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 337, column: 13)
!1935 = !{!1929, !390, i64 32}
!1936 = !DILocation(line: 338, column: 11, scope: !1934)
!1937 = !DILocation(line: 338, column: 28, scope: !1934)
!1938 = !DILocation(line: 338, column: 3, scope: !1934)
!1939 = !DILocation(line: 337, column: 26, scope: !1934)
!1940 = !DILocation(line: 337, column: 37, scope: !1934)
!1941 = !{!1929, !380, i64 40}
!1942 = !DILocation(line: 338, column: 56, scope: !1934)
!1943 = !DILocation(line: 337, column: 13, scope: !1912)
!1944 = !DILocation(line: 340, column: 17, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 339, column: 2)
!1946 = !DILocation(line: 341, column: 17, scope: !1945)
!1947 = !DILocation(line: 344, column: 51, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 344, column: 6)
!1949 = !DILocation(line: 344, column: 38, scope: !1948)
!1950 = !DILocation(line: 344, column: 66, scope: !1948)
!1951 = !DILocation(line: 344, column: 28, scope: !1948)
!1952 = !DILocation(line: 345, column: 24, scope: !1948)
!1953 = !DILocation(line: 344, column: 6, scope: !1912)
!1954 = !DILocation(line: 347, column: 3, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 346, column: 2)
!1956 = !DILocation(line: 348, column: 3, scope: !1955)
!1957 = !DILocation(line: 349, column: 3, scope: !1955)
!1958 = !DILocation(line: 351, column: 13, scope: !1912)
!1959 = !DILocation(line: 351, column: 26, scope: !1912)
!1960 = !DILocation(line: 352, column: 2, scope: !1912)
!1961 = !DILocation(line: 353, column: 32, scope: !1912)
!1962 = !{!1929, !390, i64 8}
!1963 = !DILocation(line: 353, column: 13, scope: !1912)
!1964 = !DILocation(line: 353, column: 25, scope: !1912)
!1965 = !DILocation(line: 354, column: 27, scope: !1912)
!1966 = !{!1929, !390, i64 12}
!1967 = !DILocation(line: 354, column: 13, scope: !1912)
!1968 = !DILocation(line: 354, column: 20, scope: !1912)
!1969 = !DILocation(line: 355, column: 13, scope: !1912)
!1970 = !DILocation(line: 356, column: 20, scope: !1912)
!1971 = !DILocation(line: 357, column: 32, scope: !1912)
!1972 = !DILocation(line: 357, column: 13, scope: !1912)
!1973 = !DILocation(line: 357, column: 25, scope: !1912)
!1974 = !DILocation(line: 358, column: 13, scope: !1912)
!1975 = !DILocation(line: 358, column: 24, scope: !1912)
!1976 = !{!1929, !390, i64 36}
!1977 = !DILocation(line: 359, column: 34, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 359, column: 9)
!1979 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 359, column: 9)
!1980 = !DILocation(line: 359, column: 9, scope: !1979)
!1981 = !DILocation(line: 0, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 359, column: 65)
!1983 = !DILocation(line: 361, column: 22, scope: !1982)
!1984 = !DILocation(line: 361, column: 17, scope: !1982)
!1985 = !DILocation(line: 361, column: 4, scope: !1982)
!1986 = !DILocation(line: 360, column: 28, scope: !1982)
!1987 = !DILocation(line: 360, column: 17, scope: !1982)
!1988 = !DILocation(line: 360, column: 49, scope: !1982)
!1989 = !DILocation(line: 362, column: 28, scope: !1982)
!1990 = !DILocation(line: 362, column: 17, scope: !1982)
!1991 = !DILocation(line: 362, column: 50, scope: !1982)
!1992 = !DILocation(line: 362, column: 59, scope: !1982)
!1993 = !DILocation(line: 363, column: 29, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 363, column: 22)
!1995 = !DILocation(line: 363, column: 22, scope: !1982)
!1996 = !DILocation(line: 365, column: 5, scope: !1994)
!1997 = !DILocation(line: 364, column: 55, scope: !1994)
!1998 = !DILocation(line: 364, column: 25, scope: !1994)
!1999 = !DILocation(line: 364, column: 69, scope: !1994)
!2000 = !DILocation(line: 359, column: 60, scope: !1978)
!2001 = !DILocation(line: 359, column: 41, scope: !1978)
!2002 = distinct !{!2002, !1980, !2003}
!2003 = !DILocation(line: 366, column: 9, scope: !1979)
!2004 = !DILocation(line: 368, column: 1, scope: !1912)
!2005 = distinct !DISubprogram(name: "copymolecule", scope: !3, file: !3, line: 370, type: !2006, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!232, !232}
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015}
!2009 = !DILocalVariable(name: "mol", arg: 1, scope: !2005, file: !3, line: 370, type: !232)
!2010 = !DILocalVariable(name: "row", scope: !2005, file: !3, line: 372, type: !11)
!2011 = !DILocalVariable(name: "col", scope: !2005, file: !3, line: 372, type: !11)
!2012 = !DILocalVariable(name: "strptr", scope: !2005, file: !3, line: 373, type: !53)
!2013 = !DILocalVariable(name: "newstr", scope: !2005, file: !3, line: 373, type: !53)
!2014 = !DILocalVariable(name: "nextstr", scope: !2005, file: !3, line: 373, type: !53)
!2015 = !DILocalVariable(name: "newmol", scope: !2005, file: !3, line: 374, type: !232)
!2016 = !DILocation(line: 0, scope: !2005)
!2017 = !DILocation(line: 376, column: 9, scope: !2005)
!2018 = !DILocation(line: 378, column: 39, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 378, column: 12)
!2020 = !DILocation(line: 378, column: 23, scope: !2019)
!2021 = !DILocation(line: 378, column: 72, scope: !2019)
!2022 = !DILocation(line: 378, column: 12, scope: !2005)
!2023 = !DILocation(line: 379, column: 17, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 378, column: 80)
!2025 = !DILocation(line: 380, column: 17, scope: !2024)
!2026 = !DILocation(line: 381, column: 17, scope: !2024)
!2027 = !DILocation(line: 384, column: 35, scope: !2005)
!2028 = !{!2029, !390, i64 96}
!2029 = !{!"molecule_t", !381, i64 0, !390, i64 96, !380, i64 104, !390, i64 112, !390, i64 116, !390, i64 120, !380, i64 128}
!2030 = !DILocation(line: 384, column: 17, scope: !2005)
!2031 = !DILocation(line: 384, column: 28, scope: !2005)
!2032 = !DILocation(line: 385, column: 36, scope: !2005)
!2033 = !{!2029, !390, i64 112}
!2034 = !DILocation(line: 385, column: 17, scope: !2005)
!2035 = !DILocation(line: 385, column: 29, scope: !2005)
!2036 = !DILocation(line: 386, column: 33, scope: !2005)
!2037 = !{!2029, !390, i64 116}
!2038 = !DILocation(line: 386, column: 17, scope: !2005)
!2039 = !DILocation(line: 386, column: 26, scope: !2005)
!2040 = !DILocation(line: 387, column: 33, scope: !2005)
!2041 = !{!2029, !390, i64 120}
!2042 = !DILocation(line: 387, column: 17, scope: !2005)
!2043 = !DILocation(line: 387, column: 26, scope: !2005)
!2044 = !DILocation(line: 389, column: 19, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 389, column: 14)
!2046 = !{!2029, !380, i64 128}
!2047 = !DILocation(line: 389, column: 25, scope: !2045)
!2048 = !DILocation(line: 389, column: 14, scope: !2005)
!2049 = !DILocation(line: 390, column: 33, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 389, column: 35)
!2051 = !DILocation(line: 391, column: 9, scope: !2050)
!2052 = !DILocation(line: 0, scope: !2045)
!2053 = !DILocation(line: 395, column: 9, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 395, column: 9)
!2055 = !DILocation(line: 0, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 396, column: 50)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 396, column: 17)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 396, column: 17)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 395, column: 42)
!2060 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 395, column: 9)
!2061 = !DILocation(line: 397, column: 51, scope: !2056)
!2062 = !DILocation(line: 395, column: 28, scope: !2060)
!2063 = distinct !{!2063, !2053, !2064}
!2064 = !DILocation(line: 399, column: 9, scope: !2054)
!2065 = !DILocation(line: 401, column: 23, scope: !2005)
!2066 = !{!2029, !380, i64 104}
!2067 = !DILocation(line: 402, column: 21, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 402, column: 14)
!2069 = !DILocation(line: 402, column: 14, scope: !2005)
!2070 = !DILocation(line: 403, column: 26, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 402, column: 30)
!2072 = !DILocation(line: 404, column: 25, scope: !2071)
!2073 = !DILocation(line: 404, column: 36, scope: !2071)
!2074 = !{!1929, !380, i64 16}
!2075 = !DILocation(line: 405, column: 25, scope: !2071)
!2076 = !DILocation(line: 405, column: 35, scope: !2071)
!2077 = !DILocation(line: 406, column: 34, scope: !2071)
!2078 = !{!1929, !380, i64 24}
!2079 = !DILocation(line: 409, column: 24, scope: !2005)
!2080 = !DILocation(line: 409, column: 9, scope: !2005)
!2081 = !DILocation(line: 410, column: 27, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 409, column: 34)
!2083 = !DILocation(line: 411, column: 22, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 411, column: 22)
!2085 = !DILocation(line: 411, column: 22, scope: !2082)
!2086 = !DILocation(line: 412, column: 33, scope: !2084)
!2087 = !DILocation(line: 412, column: 40, scope: !2084)
!2088 = !DILocation(line: 412, column: 25, scope: !2084)
!2089 = !DILocation(line: 413, column: 26, scope: !2082)
!2090 = !DILocation(line: 413, column: 37, scope: !2082)
!2091 = !DILocation(line: 415, column: 34, scope: !2082)
!2092 = distinct !{!2092, !2080, !2093}
!2093 = !DILocation(line: 416, column: 9, scope: !2005)
!2094 = !DILocation(line: 418, column: 9, scope: !2005)
!2095 = !DILocation(line: 419, column: 9, scope: !2005)
!2096 = !DILocation(line: 420, column: 1, scope: !2005)
!2097 = distinct !DISubprogram(name: "addres2reslib", scope: !3, file: !3, line: 996, type: !2098, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !298}
!2100 = !{!2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2101 = !DILocalVariable(name: "rlp", arg: 1, scope: !2097, file: !3, line: 996, type: !298)
!2102 = !DILocalVariable(name: "res", scope: !2097, file: !3, line: 998, type: !169)
!2103 = !DILocalVariable(name: "ap", scope: !2097, file: !3, line: 999, type: !201)
!2104 = !DILocalVariable(name: "anp", scope: !2097, file: !3, line: 1000, type: !12)
!2105 = !DILocalVariable(name: "rnp", scope: !2097, file: !3, line: 1000, type: !12)
!2106 = !DILocalVariable(name: "a", scope: !2097, file: !3, line: 1001, type: !11)
!2107 = !DILocalVariable(name: "i", scope: !2097, file: !3, line: 1001, type: !11)
!2108 = !DILocation(line: 0, scope: !2097)
!2109 = !DILocation(line: 1003, column: 29, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1003, column: 6)
!2111 = !DILocation(line: 1003, column: 61, scope: !2110)
!2112 = !DILocation(line: 1003, column: 6, scope: !2097)
!2113 = !DILocation(line: 1005, column: 18, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 1003, column: 70)
!2115 = !DILocation(line: 1004, column: 3, scope: !2114)
!2116 = !DILocation(line: 1006, column: 3, scope: !2114)
!2117 = !DILocation(line: 1007, column: 3, scope: !2114)
!2118 = !DILocation(line: 1009, column: 33, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1009, column: 6)
!2120 = !DILocation(line: 1009, column: 41, scope: !2119)
!2121 = !DILocation(line: 1009, column: 25, scope: !2119)
!2122 = !DILocation(line: 1009, column: 64, scope: !2119)
!2123 = !DILocation(line: 1009, column: 6, scope: !2097)
!2124 = !DILocation(line: 1011, column: 18, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 1009, column: 73)
!2126 = !DILocation(line: 1010, column: 3, scope: !2125)
!2127 = !DILocation(line: 1012, column: 3, scope: !2125)
!2128 = !DILocation(line: 1013, column: 3, scope: !2125)
!2129 = !DILocation(line: 1015, column: 21, scope: !2097)
!2130 = !{!389, !380, i64 24}
!2131 = !DILocation(line: 1015, column: 14, scope: !2097)
!2132 = !DILocation(line: 1016, column: 16, scope: !2097)
!2133 = !DILocation(line: 1018, column: 26, scope: !2097)
!2134 = !DILocation(line: 1018, column: 44, scope: !2097)
!2135 = !DILocation(line: 1018, column: 18, scope: !2097)
!2136 = !DILocation(line: 1019, column: 10, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1019, column: 6)
!2138 = !DILocation(line: 1019, column: 6, scope: !2097)
!2139 = !DILocation(line: 1020, column: 12, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1019, column: 19)
!2141 = !DILocation(line: 1020, column: 3, scope: !2140)
!2142 = !DILocation(line: 1022, column: 3, scope: !2140)
!2143 = !DILocation(line: 1024, column: 2, scope: !2097)
!2144 = !DILocation(line: 1025, column: 7, scope: !2097)
!2145 = !DILocation(line: 1025, column: 17, scope: !2097)
!2146 = !DILocation(line: 1027, column: 18, scope: !2097)
!2147 = !DILocation(line: 1028, column: 10, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1028, column: 6)
!2149 = !DILocation(line: 1028, column: 6, scope: !2097)
!2150 = !DILocation(line: 1029, column: 12, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 1028, column: 19)
!2152 = !DILocation(line: 1029, column: 3, scope: !2151)
!2153 = !DILocation(line: 1031, column: 3, scope: !2151)
!2154 = !DILocation(line: 1033, column: 2, scope: !2097)
!2155 = !DILocation(line: 1034, column: 7, scope: !2097)
!2156 = !DILocation(line: 1034, column: 15, scope: !2097)
!2157 = !DILocation(line: 1036, column: 7, scope: !2097)
!2158 = !DILocation(line: 1036, column: 13, scope: !2097)
!2159 = !DILocation(line: 1037, column: 7, scope: !2097)
!2160 = !DILocation(line: 1037, column: 17, scope: !2097)
!2161 = !DILocation(line: 1038, column: 7, scope: !2097)
!2162 = !DILocation(line: 1038, column: 16, scope: !2097)
!2163 = !DILocation(line: 1039, column: 7, scope: !2097)
!2164 = !DILocation(line: 1039, column: 14, scope: !2097)
!2165 = !DILocation(line: 1040, column: 21, scope: !2097)
!2166 = !DILocation(line: 1040, column: 7, scope: !2097)
!2167 = !DILocation(line: 1040, column: 14, scope: !2097)
!2168 = !DILocation(line: 1041, column: 25, scope: !2097)
!2169 = !DILocation(line: 1041, column: 7, scope: !2097)
!2170 = !DILocation(line: 1041, column: 18, scope: !2097)
!2171 = !DILocation(line: 1042, column: 7, scope: !2097)
!2172 = !DILocation(line: 1045, column: 7, scope: !2097)
!2173 = !DILocation(line: 1045, column: 18, scope: !2097)
!2174 = !DILocation(line: 1046, column: 7, scope: !2097)
!2175 = !DILocation(line: 1046, column: 17, scope: !2097)
!2176 = !DILocation(line: 1047, column: 7, scope: !2097)
!2177 = !DILocation(line: 1047, column: 16, scope: !2097)
!2178 = !DILocation(line: 1043, column: 18, scope: !2097)
!2179 = !DILocation(line: 1048, column: 18, scope: !2097)
!2180 = !DILocation(line: 1048, column: 7, scope: !2097)
!2181 = !DILocation(line: 1048, column: 16, scope: !2097)
!2182 = !DILocation(line: 1049, column: 7, scope: !2097)
!2183 = !DILocation(line: 1049, column: 16, scope: !2097)
!2184 = !DILocation(line: 1050, column: 7, scope: !2097)
!2185 = !DILocation(line: 1050, column: 15, scope: !2097)
!2186 = !DILocation(line: 1051, column: 16, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 1051, column: 2)
!2188 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1051, column: 2)
!2189 = !DILocation(line: 1051, column: 2, scope: !2188)
!2190 = !DILocation(line: 1052, column: 46, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1051, column: 32)
!2192 = !DILocation(line: 1052, column: 27, scope: !2191)
!2193 = !DILocation(line: 1052, column: 59, scope: !2191)
!2194 = !DILocation(line: 1052, column: 19, scope: !2191)
!2195 = !DILocation(line: 1053, column: 11, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1053, column: 7)
!2197 = !DILocation(line: 1053, column: 7, scope: !2191)
!2198 = !DILocation(line: 1054, column: 13, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 1053, column: 20)
!2200 = !DILocation(line: 1054, column: 4, scope: !2199)
!2201 = !DILocation(line: 1056, column: 4, scope: !2199)
!2202 = !DILocation(line: 1059, column: 3, scope: !2191)
!2203 = !DILocation(line: 1060, column: 8, scope: !2191)
!2204 = !DILocation(line: 1060, column: 21, scope: !2191)
!2205 = !DILocation(line: 1060, column: 32, scope: !2191)
!2206 = !DILocation(line: 1061, column: 21, scope: !2191)
!2207 = !DILocation(line: 1061, column: 32, scope: !2191)
!2208 = !DILocation(line: 1062, column: 21, scope: !2191)
!2209 = !DILocation(line: 1062, column: 32, scope: !2191)
!2210 = !DILocation(line: 1063, column: 3, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1063, column: 3)
!2212 = !DILocation(line: 1064, column: 37, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 1063, column: 3)
!2214 = !DILocation(line: 1065, column: 21, scope: !2191)
!2215 = !DILocation(line: 1065, column: 32, scope: !2191)
!2216 = !DILocation(line: 1066, column: 45, scope: !2191)
!2217 = !DILocation(line: 1066, column: 21, scope: !2191)
!2218 = !DILocation(line: 1066, column: 32, scope: !2191)
!2219 = !DILocation(line: 1067, column: 45, scope: !2191)
!2220 = !DILocation(line: 1067, column: 21, scope: !2191)
!2221 = !DILocation(line: 1067, column: 32, scope: !2191)
!2222 = !DILocation(line: 1068, column: 45, scope: !2191)
!2223 = !DILocation(line: 1068, column: 21, scope: !2191)
!2224 = !DILocation(line: 1068, column: 32, scope: !2191)
!2225 = !DILocation(line: 1069, column: 45, scope: !2191)
!2226 = !DILocation(line: 1069, column: 21, scope: !2191)
!2227 = !DILocation(line: 1069, column: 32, scope: !2191)
!2228 = !DILocation(line: 1070, column: 45, scope: !2191)
!2229 = !DILocation(line: 1070, column: 21, scope: !2191)
!2230 = !DILocation(line: 1070, column: 32, scope: !2191)
!2231 = !DILocation(line: 1071, column: 45, scope: !2191)
!2232 = !DILocation(line: 1071, column: 21, scope: !2191)
!2233 = !DILocation(line: 1071, column: 32, scope: !2191)
!2234 = !DILocation(line: 1072, column: 45, scope: !2191)
!2235 = !DILocation(line: 1072, column: 21, scope: !2191)
!2236 = !DILocation(line: 1072, column: 32, scope: !2191)
!2237 = !DILocation(line: 1073, column: 21, scope: !2191)
!2238 = !DILocation(line: 1073, column: 32, scope: !2191)
!2239 = !DILocation(line: 1074, column: 21, scope: !2191)
!2240 = !DILocation(line: 1074, column: 32, scope: !2191)
!2241 = !DILocation(line: 1075, column: 3, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1075, column: 3)
!2243 = !DILocation(line: 1076, column: 35, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 1075, column: 3)
!2245 = !DILocation(line: 1076, column: 4, scope: !2244)
!2246 = !DILocation(line: 1076, column: 33, scope: !2244)
!2247 = !DILocation(line: 1075, column: 24, scope: !2244)
!2248 = !DILocation(line: 1075, column: 17, scope: !2244)
!2249 = distinct !{!2249, !2241, !2250}
!2250 = !DILocation(line: 1076, column: 55, scope: !2242)
!2251 = !DILocation(line: 1077, column: 45, scope: !2191)
!2252 = !DILocation(line: 1077, column: 21, scope: !2191)
!2253 = !DILocation(line: 1077, column: 32, scope: !2191)
!2254 = !DILocation(line: 1051, column: 28, scope: !2187)
!2255 = !DILocation(line: 1051, column: 18, scope: !2187)
!2256 = distinct !{!2256, !2189, !2257}
!2257 = !DILocation(line: 1078, column: 2, scope: !2188)
!2258 = !DILocation(line: 1079, column: 1, scope: !2097)
!2259 = distinct !DISubprogram(name: "addbonds2reslib", scope: !3, file: !3, line: 1081, type: !2098, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2261 = !DILocalVariable(name: "rlp", arg: 1, scope: !2259, file: !3, line: 1081, type: !298)
!2262 = !DILocalVariable(name: "res", scope: !2259, file: !3, line: 1083, type: !169)
!2263 = !DILocalVariable(name: "bp", scope: !2259, file: !3, line: 1084, type: !183)
!2264 = !DILocalVariable(name: "b", scope: !2259, file: !3, line: 1085, type: !11)
!2265 = !DILocalVariable(name: "a", scope: !2259, file: !3, line: 1086, type: !11)
!2266 = !DILocalVariable(name: "ai", scope: !2259, file: !3, line: 1086, type: !11)
!2267 = !DILocalVariable(name: "aj", scope: !2259, file: !3, line: 1086, type: !11)
!2268 = !DILocalVariable(name: "api", scope: !2259, file: !3, line: 1087, type: !201)
!2269 = !DILocalVariable(name: "apj", scope: !2259, file: !3, line: 1087, type: !201)
!2270 = !DILocation(line: 0, scope: !2259)
!2271 = !DILocation(line: 1089, column: 18, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1089, column: 2)
!2273 = !DILocation(line: 0, scope: !2272)
!2274 = !DILocation(line: 1089, column: 2, scope: !2272)
!2275 = !DILocation(line: 1090, column: 20, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1090, column: 7)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1089, column: 52)
!2278 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1089, column: 2)
!2279 = !DILocation(line: 1090, column: 7, scope: !2276)
!2280 = !DILocation(line: 1090, column: 41, scope: !2276)
!2281 = !DILocation(line: 1090, column: 7, scope: !2277)
!2282 = !DILocation(line: 1092, column: 13, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1091, column: 8)
!2284 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 1090, column: 47)
!2285 = !DILocation(line: 1092, column: 21, scope: !2283)
!2286 = !DILocation(line: 1092, column: 5, scope: !2283)
!2287 = !DILocation(line: 1091, column: 15, scope: !2283)
!2288 = !DILocation(line: 1093, column: 5, scope: !2283)
!2289 = !DILocation(line: 1091, column: 8, scope: !2284)
!2290 = !DILocation(line: 1099, column: 18, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1099, column: 4)
!2292 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1099, column: 4)
!2293 = !DILocation(line: 1099, column: 4, scope: !2292)
!2294 = !DILocation(line: 0, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1099, column: 34)
!2296 = !DILocation(line: 1094, column: 5, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 1093, column: 14)
!2298 = !DILocation(line: 1096, column: 5, scope: !2297)
!2299 = !DILocation(line: 1097, column: 5, scope: !2297)
!2300 = !DILocation(line: 1100, column: 25, scope: !2295)
!2301 = !DILocation(line: 1100, column: 10, scope: !2295)
!2302 = !DILocation(line: 1100, column: 23, scope: !2295)
!2303 = !DILocation(line: 1101, column: 25, scope: !2295)
!2304 = !DILocation(line: 1101, column: 10, scope: !2295)
!2305 = !DILocation(line: 1101, column: 23, scope: !2295)
!2306 = !DILocation(line: 1102, column: 7, scope: !2295)
!2307 = !DILocation(line: 1103, column: 7, scope: !2295)
!2308 = !DILocation(line: 1104, column: 12, scope: !2295)
!2309 = !DILocation(line: 1105, column: 5, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1105, column: 5)
!2311 = !DILocation(line: 1105, column: 38, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 1105, column: 5)
!2313 = !DILocation(line: 1105, column: 19, scope: !2312)
!2314 = distinct !{!2314, !2309, !2315}
!2315 = !DILocation(line: 1113, column: 5, scope: !2310)
!2316 = !DILocation(line: 1106, column: 10, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 1106, column: 10)
!2318 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 1105, column: 42)
!2319 = !DILocation(line: 1106, column: 30, scope: !2317)
!2320 = !DILocation(line: 1106, column: 10, scope: !2318)
!2321 = !DILocation(line: 1108, column: 35, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1108, column: 15)
!2323 = !DILocation(line: 1108, column: 15, scope: !2317)
!2324 = !DILocation(line: 1109, column: 27, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 1108, column: 45)
!2326 = !DILocation(line: 1110, column: 12, scope: !2325)
!2327 = !DILocation(line: 1110, column: 22, scope: !2325)
!2328 = !DILocation(line: 1111, column: 7, scope: !2325)
!2329 = !DILocation(line: 1114, column: 12, scope: !2295)
!2330 = !DILocation(line: 1115, column: 5, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1115, column: 5)
!2332 = !DILocation(line: 1115, column: 38, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 1115, column: 5)
!2334 = !DILocation(line: 1115, column: 19, scope: !2333)
!2335 = distinct !{!2335, !2330, !2336}
!2336 = !DILocation(line: 1123, column: 5, scope: !2331)
!2337 = !DILocation(line: 1116, column: 10, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 1116, column: 10)
!2339 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1115, column: 42)
!2340 = !DILocation(line: 1116, column: 30, scope: !2338)
!2341 = !DILocation(line: 1116, column: 10, scope: !2339)
!2342 = !DILocation(line: 1118, column: 35, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 1118, column: 15)
!2344 = !DILocation(line: 1118, column: 15, scope: !2338)
!2345 = !DILocation(line: 1119, column: 27, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 1118, column: 45)
!2347 = !DILocation(line: 1120, column: 12, scope: !2346)
!2348 = !DILocation(line: 1120, column: 22, scope: !2346)
!2349 = !DILocation(line: 1121, column: 7, scope: !2346)
!2350 = !DILocation(line: 1099, column: 30, scope: !2291)
!2351 = !DILocation(line: 1099, column: 20, scope: !2291)
!2352 = distinct !{!2352, !2293, !2353}
!2353 = !DILocation(line: 1124, column: 4, scope: !2292)
!2354 = !DILocation(line: 1125, column: 9, scope: !2284)
!2355 = !DILocation(line: 1125, column: 21, scope: !2284)
!2356 = !DILocation(line: 1126, column: 9, scope: !2284)
!2357 = !DILocation(line: 1126, column: 20, scope: !2284)
!2358 = !DILocation(line: 1127, column: 4, scope: !2284)
!2359 = !DILocation(line: 1089, column: 44, scope: !2278)
!2360 = distinct !{!2360, !2274, !2361}
!2361 = !DILocation(line: 1129, column: 2, scope: !2272)
!2362 = !DILocation(line: 1130, column: 57, scope: !2259)
!2363 = !DILocation(line: 1130, column: 2, scope: !2259)
!2364 = !DILocation(line: 1131, column: 2, scope: !2259)
!2365 = !DILocation(line: 1132, column: 2, scope: !2259)
!2366 = !DILocation(line: 1133, column: 1, scope: !2259)
!2367 = distinct !DISubprogram(name: "addqr2reslib", scope: !3, file: !3, line: 1135, type: !2098, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373}
!2369 = !DILocalVariable(name: "rlp", arg: 1, scope: !2367, file: !3, line: 1135, type: !298)
!2370 = !DILocalVariable(name: "res", scope: !2367, file: !3, line: 1137, type: !169)
!2371 = !DILocalVariable(name: "a", scope: !2367, file: !3, line: 1138, type: !11)
!2372 = !DILocalVariable(name: "ap", scope: !2367, file: !3, line: 1139, type: !201)
!2373 = !DILocalVariable(name: "apr", scope: !2367, file: !3, line: 1139, type: !201)
!2374 = !DILocation(line: 0, scope: !2367)
!2375 = !DILocation(line: 1141, column: 18, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 1141, column: 2)
!2377 = !DILocation(line: 0, scope: !2376)
!2378 = !DILocation(line: 1141, column: 2, scope: !2376)
!2379 = !DILocation(line: 1142, column: 20, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1142, column: 7)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 1141, column: 52)
!2382 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1141, column: 2)
!2383 = !DILocation(line: 1142, column: 7, scope: !2380)
!2384 = !DILocation(line: 1142, column: 41, scope: !2380)
!2385 = !DILocation(line: 1142, column: 7, scope: !2381)
!2386 = !DILocation(line: 1143, column: 32, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1143, column: 4)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 1143, column: 4)
!2389 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1142, column: 47)
!2390 = !DILocation(line: 1143, column: 30, scope: !2387)
!2391 = !DILocation(line: 1143, column: 4, scope: !2388)
!2392 = !DILocation(line: 0, scope: !1308, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 1144, column: 16, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1144, column: 9)
!2395 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1143, column: 52)
!2396 = !DILocation(line: 0, scope: !1314, inlinedAt: !2393)
!2397 = !DILocation(line: 1144, column: 35, scope: !2394)
!2398 = !DILocation(line: 0, scope: !1298, inlinedAt: !2393)
!2399 = !DILocation(line: 1206, column: 2, scope: !1309, inlinedAt: !2393)
!2400 = !DILocation(line: 1207, column: 34, scope: !1314, inlinedAt: !2393)
!2401 = !DILocation(line: 1207, column: 8, scope: !1314, inlinedAt: !2393)
!2402 = !DILocation(line: 1206, column: 34, scope: !1308, inlinedAt: !2393)
!2403 = !DILocation(line: 1207, column: 7, scope: !1315, inlinedAt: !2393)
!2404 = !DILocation(line: 1206, column: 16, scope: !1308, inlinedAt: !2393)
!2405 = distinct !{!2405, !2399, !2406}
!2406 = !DILocation(line: 1209, column: 2, scope: !1309, inlinedAt: !2393)
!2407 = !DILocation(line: 1146, column: 26, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1144, column: 50)
!2409 = !DILocation(line: 1146, column: 11, scope: !2408)
!2410 = !DILocation(line: 1146, column: 20, scope: !2408)
!2411 = !DILocation(line: 1147, column: 26, scope: !2408)
!2412 = !DILocation(line: 1147, column: 11, scope: !2408)
!2413 = !DILocation(line: 1147, column: 20, scope: !2408)
!2414 = !DILocation(line: 1148, column: 26, scope: !2408)
!2415 = !DILocation(line: 1148, column: 11, scope: !2408)
!2416 = !DILocation(line: 1148, column: 20, scope: !2408)
!2417 = !DILocation(line: 1149, column: 26, scope: !2408)
!2418 = !DILocation(line: 1149, column: 11, scope: !2408)
!2419 = !DILocation(line: 1149, column: 20, scope: !2408)
!2420 = !DILocation(line: 1150, column: 26, scope: !2408)
!2421 = !DILocation(line: 1150, column: 11, scope: !2408)
!2422 = !DILocation(line: 1150, column: 20, scope: !2408)
!2423 = !DILocation(line: 1151, column: 26, scope: !2408)
!2424 = !DILocation(line: 1151, column: 11, scope: !2408)
!2425 = !DILocation(line: 1151, column: 20, scope: !2408)
!2426 = !DILocation(line: 1152, column: 26, scope: !2408)
!2427 = !DILocation(line: 1152, column: 11, scope: !2408)
!2428 = !DILocation(line: 1152, column: 20, scope: !2408)
!2429 = !DILocation(line: 1153, column: 5, scope: !2408)
!2430 = !DILocation(line: 1143, column: 42, scope: !2387)
!2431 = !DILocation(line: 1143, column: 48, scope: !2387)
!2432 = distinct !{!2432, !2391, !2433}
!2433 = !DILocation(line: 1154, column: 4, scope: !2388)
!2434 = !DILocation(line: 1141, column: 44, scope: !2382)
!2435 = distinct !{!2435, !2378, !2436}
!2436 = !DILocation(line: 1157, column: 2, scope: !2376)
!2437 = !DILocation(line: 1158, column: 57, scope: !2367)
!2438 = !DILocation(line: 1158, column: 2, scope: !2367)
!2439 = !DILocation(line: 1159, column: 2, scope: !2367)
!2440 = !DILocation(line: 1160, column: 2, scope: !2367)
!2441 = !DILocation(line: 1161, column: 1, scope: !2367)
!2442 = distinct !DISubprogram(name: "addchi2reslib", scope: !3, file: !3, line: 1163, type: !2098, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2452, !2453}
!2444 = !DILocalVariable(name: "rlp", arg: 1, scope: !2442, file: !3, line: 1163, type: !298)
!2445 = !DILocalVariable(name: "res", scope: !2442, file: !3, line: 1165, type: !169)
!2446 = !DILocalVariable(name: "cp", scope: !2442, file: !3, line: 1166, type: !190)
!2447 = !DILocalVariable(name: "a", scope: !2442, file: !3, line: 1167, type: !11)
!2448 = !DILocalVariable(name: "c", scope: !2442, file: !3, line: 1167, type: !11)
!2449 = !DILocalVariable(name: "ca", scope: !2442, file: !3, line: 1167, type: !11)
!2450 = !DILocalVariable(name: "pos", scope: !2442, file: !3, line: 1168, type: !2451)
!2451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 768, elements: !196)
!2452 = !DILocalVariable(name: "dvol", scope: !2442, file: !3, line: 1169, type: !2451)
!2453 = !DILocalVariable(name: "vol", scope: !2442, file: !3, line: 1170, type: !47)
!2454 = !DILocation(line: 0, scope: !2442)
!2455 = !DILocation(line: 1168, column: 2, scope: !2442)
!2456 = !DILocation(line: 1168, column: 11, scope: !2442)
!2457 = !DILocation(line: 1169, column: 2, scope: !2442)
!2458 = !DILocation(line: 1169, column: 11, scope: !2442)
!2459 = !DILocation(line: 1170, column: 2, scope: !2442)
!2460 = !DILocation(line: 1172, column: 18, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1172, column: 2)
!2462 = !DILocation(line: 0, scope: !2461)
!2463 = !DILocation(line: 1172, column: 2, scope: !2461)
!2464 = !DILocation(line: 1173, column: 21, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1173, column: 7)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1172, column: 52)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1172, column: 2)
!2468 = !DILocation(line: 1173, column: 8, scope: !2465)
!2469 = !DILocation(line: 1173, column: 7, scope: !2466)
!2470 = !DILocation(line: 1175, column: 13, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1174, column: 8)
!2472 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1173, column: 43)
!2473 = !DILocation(line: 1175, column: 19, scope: !2471)
!2474 = !DILocation(line: 1175, column: 5, scope: !2471)
!2475 = !DILocation(line: 1176, column: 5, scope: !2471)
!2476 = !DILocation(line: 1174, column: 8, scope: !2472)
!2477 = !DILocation(line: 1177, column: 14, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1176, column: 14)
!2479 = !DILocation(line: 1179, column: 11, scope: !2478)
!2480 = !DILocation(line: 1177, column: 5, scope: !2478)
!2481 = !DILocation(line: 1180, column: 5, scope: !2478)
!2482 = !DILocation(line: 1182, column: 9, scope: !2472)
!2483 = !DILocation(line: 1182, column: 19, scope: !2472)
!2484 = !DILocation(line: 1183, column: 9, scope: !2472)
!2485 = !DILocation(line: 1183, column: 18, scope: !2472)
!2486 = !DILocation(line: 1184, column: 18, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 1184, column: 4)
!2488 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1184, column: 4)
!2489 = !DILocation(line: 1184, column: 4, scope: !2488)
!2490 = !DILocation(line: 1174, column: 15, scope: !2471)
!2491 = !DILocation(line: 0, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1185, column: 29)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 1185, column: 5)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1185, column: 5)
!2495 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 1184, column: 32)
!2496 = !DILocation(line: 0, scope: !2495)
!2497 = !DILocation(line: 1185, column: 5, scope: !2494)
!2498 = !DILocation(line: 1186, column: 27, scope: !2492)
!2499 = !DILocation(line: 1186, column: 11, scope: !2492)
!2500 = !DILocation(line: 1186, column: 25, scope: !2492)
!2501 = !DILocation(line: 1187, column: 18, scope: !2492)
!2502 = !DILocation(line: 1187, column: 6, scope: !2492)
!2503 = !DILocation(line: 1187, column: 16, scope: !2492)
!2504 = !DILocation(line: 1188, column: 18, scope: !2492)
!2505 = !DILocation(line: 1188, column: 6, scope: !2492)
!2506 = !DILocation(line: 1188, column: 16, scope: !2492)
!2507 = !DILocation(line: 1189, column: 18, scope: !2492)
!2508 = !DILocation(line: 1189, column: 6, scope: !2492)
!2509 = !DILocation(line: 1189, column: 16, scope: !2492)
!2510 = !DILocation(line: 1185, column: 25, scope: !2493)
!2511 = !DILocation(line: 1185, column: 19, scope: !2493)
!2512 = distinct !{!2512, !2497, !2513}
!2513 = !DILocation(line: 1190, column: 5, scope: !2494)
!2514 = !DILocation(line: 1191, column: 5, scope: !2495)
!2515 = !DILocation(line: 1192, column: 18, scope: !2495)
!2516 = !DILocation(line: 1192, column: 9, scope: !2495)
!2517 = !DILocation(line: 1192, column: 16, scope: !2495)
!2518 = !DILocation(line: 1193, column: 7, scope: !2495)
!2519 = !DILocation(line: 1184, column: 28, scope: !2487)
!2520 = !DILocation(line: 1184, column: 20, scope: !2487)
!2521 = distinct !{!2521, !2489, !2522}
!2522 = !DILocation(line: 1194, column: 4, scope: !2488)
!2523 = !DILocation(line: 1172, column: 44, scope: !2467)
!2524 = distinct !{!2524, !2463, !2525}
!2525 = !DILocation(line: 1197, column: 2, scope: !2461)
!2526 = !DILocation(line: 1198, column: 11, scope: !2442)
!2527 = !DILocation(line: 1199, column: 8, scope: !2442)
!2528 = !DILocation(line: 1199, column: 24, scope: !2442)
!2529 = !DILocation(line: 1198, column: 2, scope: !2442)
!2530 = !DILocation(line: 1200, column: 1, scope: !2442)
