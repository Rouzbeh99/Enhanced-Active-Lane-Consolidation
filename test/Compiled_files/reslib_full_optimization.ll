; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/reslib.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/reslib.c"
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
@reslibs = internal unnamed_addr global %struct.reslib_t* null, align 8, !dbg !321
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
@initatoms.init = internal unnamed_addr global i1 false, align 4, !dbg !356
@atoms = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !331
@.str.64 = private unnamed_addr constant [39 x i8] c"initatoms: can't allocate a_atomname.\0A\00", align 1
@n_atoms = internal global i32 0, align 4, !dbg !336
@.str.65 = private unnamed_addr constant [7 x i8] c"!index\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"entry.%s.\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"unit.name\00", align 1
@lr_name = internal global [8 x i8] zeroinitializer, align 1, !dbg !338
@.str.68 = private unnamed_addr constant [11 x i8] c"unit.atoms\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"unit.positions\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"unit.connectivity\00", align 1
@n_bonds = internal global i32 0, align 4, !dbg !341
@bonds = internal unnamed_addr global [1000 x [2 x i32]] zeroinitializer, align 16, !dbg !343
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
@n_chi = internal unnamed_addr global i32 0, align 4, !dbg !346
@.str.92 = private unnamed_addr constant [44 x i8] c"chi2reslib: bad line in chirality file: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"chi2reslib: res %s not in %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"chi2reslib: atom \22%s\22 not in residue \22%s\22\0A\00", align 1
@chi = internal unnamed_addr global [500 x %struct.chiral_t] zeroinitializer, align 16, !dbg !348
@.str.96 = private unnamed_addr constant [44 x i8] c"addchi2reslib: can't alloc r_chiral for %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"addchi2reslib: res %s not reslib %s\0A\00", align 1
@switch.table.getreslibkind = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)], align 8

; Function Attrs: nounwind uwtable
define dso_local i8* @getreslibkind(i8* %0) local_unnamed_addr #0 !dbg !361 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !365, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()) #10, !dbg !375
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !375
  %2 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !378, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %2, metadata !374, metadata !DIExpression()) #10, !dbg !375
  %3 = icmp eq %struct.reslib_t* %2, null, !dbg !384
  br i1 %3, label %14, label %4, !dbg !384

4:                                                ; preds = %1, %10
  %5 = phi %struct.reslib_t* [ %12, %10 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %5, i64 0, i32 1, !dbg !385
  %7 = load i8*, i8** %6, align 8, !dbg !385, !tbaa !389
  %8 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %7, i8* nonnull dereferenceable(1) %0) #11, !dbg !392
  %9 = icmp eq i32 %8, 0, !dbg !393
  br i1 %9, label %20, label %10, !dbg !394

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %5, i64 0, i32 0, !dbg !395
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !375
  %12 = load %struct.reslib_t*, %struct.reslib_t** %11, align 8, !dbg !378, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %12, metadata !374, metadata !DIExpression()) #10, !dbg !375
  %13 = icmp eq %struct.reslib_t* %12, null, !dbg !384
  br i1 %13, label %14, label %4, !dbg !384, !llvm.loop !396

14:                                               ; preds = %10, %1
  %15 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %0), !dbg !398
  call void @llvm.dbg.value(metadata %struct.reslib_t* %15, metadata !367, metadata !DIExpression()), !dbg !368
  %16 = icmp eq %struct.reslib_t* %15, null, !dbg !401
  br i1 %16, label %17, label %20, !dbg !402

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !403, !tbaa !380
  %19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #12, !dbg !405
  tail call void @exit(i32 1) #13, !dbg !406
  unreachable, !dbg !406

20:                                               ; preds = %4, %14
  %21 = phi %struct.reslib_t* [ %15, %14 ], [ %5, %4 ], !dbg !407
  call void @llvm.dbg.value(metadata %struct.reslib_t* %21, metadata !367, metadata !DIExpression()), !dbg !368
  %22 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %21, i64 0, i32 2, !dbg !408
  %23 = load i32, i32* %22, align 8, !dbg !408, !tbaa !410
  %24 = add i32 %23, -1, !dbg !411
  %25 = icmp ult i32 %24, 3, !dbg !411
  br i1 %25, label %26, label %30, !dbg !411

26:                                               ; preds = %20
  %27 = sext i32 %24 to i64, !dbg !411
  %28 = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table.getreslibkind, i64 0, i64 %27, !dbg !411
  %29 = load i8*, i8** %28, align 8, !dbg !411
  ret i8* %29, !dbg !411

30:                                               ; preds = %20
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), !dbg !412
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.reslib_t* @read_reslib(i8* %0) unnamed_addr #0 !dbg !413 {
  %2 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %2, metadata !425, metadata !DIExpression()), !dbg !446
  %3 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %3, metadata !437, metadata !DIExpression()), !dbg !450
  %4 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !438, metadata !DIExpression()), !dbg !451
  %5 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !439, metadata !DIExpression()), !dbg !452
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %12, metadata !453, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata [10 x i8]* %12, metadata !473, metadata !DIExpression()), !dbg !487
  %13 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %13, metadata !459, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata [10 x i8]* %13, metadata !479, metadata !DIExpression()), !dbg !492
  %14 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %14, metadata !463, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata [10 x i8]* %14, metadata !480, metadata !DIExpression()), !dbg !494
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %22, metadata !495, metadata !DIExpression()), !dbg !555
  %23 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %23, metadata !532, metadata !DIExpression()), !dbg !558
  %24 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %24, metadata !536, metadata !DIExpression()), !dbg !559
  %25 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %25, metadata !537, metadata !DIExpression()), !dbg !560
  %26 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %26, metadata !538, metadata !DIExpression()), !dbg !561
  %27 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %27, metadata !539, metadata !DIExpression()), !dbg !562
  %28 = alloca [100 x i32], align 16
  call void @llvm.dbg.declare(metadata [100 x i32]* %28, metadata !540, metadata !DIExpression()), !dbg !563
  %29 = alloca [100 x double], align 16
  call void @llvm.dbg.declare(metadata [100 x double]* %29, metadata !541, metadata !DIExpression()), !dbg !564
  %30 = alloca [100 x double], align 16
  call void @llvm.dbg.declare(metadata [100 x double]* %30, metadata !543, metadata !DIExpression()), !dbg !565
  %31 = alloca [100 x double], align 16
  call void @llvm.dbg.declare(metadata [100 x double]* %31, metadata !544, metadata !DIExpression()), !dbg !566
  %32 = alloca [100 x double], align 16
  call void @llvm.dbg.declare(metadata [100 x double]* %32, metadata !545, metadata !DIExpression()), !dbg !567
  %33 = alloca [100 x [10 x i8]], align 16
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %33, metadata !546, metadata !DIExpression()), !dbg !568
  %34 = alloca [100 x [10 x i8]], align 16
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %34, metadata !549, metadata !DIExpression()), !dbg !569
  %35 = alloca [100 x [10 x i8]], align 16
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %35, metadata !550, metadata !DIExpression()), !dbg !570
  %36 = alloca [255 x i8], align 16
  call void @llvm.dbg.declare(metadata [255 x i8]* %36, metadata !551, metadata !DIExpression()), !dbg !571
  %37 = alloca [128 x i8], align 16
  call void @llvm.dbg.declare(metadata [128 x i8]* %37, metadata !572, metadata !DIExpression()), !dbg !598
  %38 = alloca [20 x i8], align 16
  call void @llvm.dbg.declare(metadata [20 x i8]* %38, metadata !433, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.declare(metadata [20 x i8]* %38, metadata !602, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.declare(metadata [20 x i8]* %38, metadata !589, metadata !DIExpression()), !dbg !613
  %39 = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata [100 x i8]* %39, metadata !614, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.declare(metadata [100 x i8]* %39, metadata !590, metadata !DIExpression()), !dbg !627
  %40 = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata [100 x i8]* %40, metadata !621, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.declare(metadata [100 x i8]* %40, metadata !592, metadata !DIExpression()), !dbg !629
  %41 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !432, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !458, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !607, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !478, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.declare(metadata [256 x i8]* %41, metadata !593, metadata !DIExpression()), !dbg !634
  %42 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !415, metadata !DIExpression()), !dbg !635
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %42, i64 0, i64 0, !dbg !636
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %43) #10, !dbg !636
  call void @llvm.dbg.declare(metadata [256 x i8]* %42, metadata !424, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i8* %0, metadata !578, metadata !DIExpression()) #10, !dbg !638
  call void @llvm.dbg.value(metadata i8* %43, metadata !583, metadata !DIExpression()) #10, !dbg !638
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %37, i64 0, i64 0, !dbg !639
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %44) #10, !dbg !639
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %38, i64 0, i64 0, !dbg !639
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #10, !dbg !639
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %39, i64 0, i64 0, !dbg !639
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %46) #10, !dbg !639
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %40, i64 0, i64 0, !dbg !639
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %47) #10, !dbg !639
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %41, i64 0, i64 0, !dbg !640
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !640
  %49 = tail call i8* @strstr(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !641
  %50 = icmp eq i8* %49, null, !dbg !643
  br i1 %50, label %68, label %51, !dbg !644

51:                                               ; preds = %1
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %47, i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %0) #10, !dbg !645
  call void @llvm.dbg.value(metadata i8* %47, metadata !647, metadata !DIExpression()) #10, !dbg !653
  call void @llvm.dbg.value(metadata i8* %48, metadata !652, metadata !DIExpression()) #10, !dbg !653
  %53 = load i8, i8* %47, align 16, !dbg !655, !tbaa !657
  %54 = icmp eq i8 %53, 47, !dbg !658
  br i1 %54, label %59, label %55, !dbg !659

55:                                               ; preds = %51
  %56 = bitcast [100 x i8]* %40 to i16*, !dbg !660
  %57 = load i16, i16* %56, align 16, !dbg !660
  %58 = icmp eq i16 %57, 12078, !dbg !660
  br i1 %58, label %59, label %61, !dbg !661

59:                                               ; preds = %55, %51
  %60 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %47) #10, !dbg !662
  br label %63, !dbg !662

61:                                               ; preds = %55
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %47) #10, !dbg !663
  br label %63

63:                                               ; preds = %61, %59
  %64 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !664
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %64, metadata !584, metadata !DIExpression()) #10, !dbg !638
  %65 = icmp eq %struct._IO_FILE* %64, null, !dbg !666
  br i1 %65, label %66, label %83, !dbg !667

66:                                               ; preds = %63
  %67 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %48) #10, !dbg !668
  br label %291, !dbg !670

68:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !647, metadata !DIExpression()) #10, !dbg !671
  call void @llvm.dbg.value(metadata i8* %48, metadata !652, metadata !DIExpression()) #10, !dbg !671
  %69 = load i8, i8* %0, align 1, !dbg !674, !tbaa !657
  %70 = icmp eq i8 %69, 47, !dbg !675
  br i1 %70, label %74, label %71, !dbg !676

71:                                               ; preds = %68
  %72 = tail call i32 @strncmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* nonnull %0, i64 2) #11, !dbg !677
  %73 = icmp eq i32 %72, 0, !dbg !677
  br i1 %73, label %74, label %76, !dbg !678

74:                                               ; preds = %71, %68
  %75 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %0) #10, !dbg !679
  br label %78, !dbg !679

76:                                               ; preds = %71
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %0) #10, !dbg !680
  br label %78

78:                                               ; preds = %76, %74
  %79 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !681
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %79, metadata !584, metadata !DIExpression()) #10, !dbg !638
  %80 = icmp eq %struct._IO_FILE* %79, null, !dbg !683
  br i1 %80, label %81, label %83, !dbg !684

81:                                               ; preds = %78
  %82 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %48) #10, !dbg !685
  br label %291, !dbg !687

83:                                               ; preds = %78, %63
  %84 = phi %struct._IO_FILE* [ %64, %63 ], [ %79, %78 ], !dbg !688
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %84, metadata !584, metadata !DIExpression()) #10, !dbg !638
  %85 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 32) #10, !dbg !689
  %86 = bitcast i8* %85 to %struct.reslib_t*, !dbg !691
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !585, metadata !DIExpression()) #10, !dbg !638
  %87 = icmp eq i8* %85, null, !dbg !692
  br i1 %87, label %88, label %91, !dbg !693

88:                                               ; preds = %83
  %89 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %0) #10, !dbg !694
  %90 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !696
  br label %291, !dbg !697

91:                                               ; preds = %83
  %92 = call i64 @strlen(i8* nonnull dereferenceable(1) %0) #11, !dbg !698
  call void @llvm.dbg.value(metadata i64 %92, metadata !587, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #10, !dbg !638
  %93 = shl i64 %92, 32, !dbg !699
  %94 = add i64 %93, 4294967296, !dbg !699
  %95 = ashr exact i64 %94, 32, !dbg !699
  %96 = call noalias i8* @malloc(i64 %95) #10, !dbg !701
  call void @llvm.dbg.value(metadata i8* %96, metadata !588, metadata !DIExpression()) #10, !dbg !638
  %97 = icmp eq i8* %96, null, !dbg !702
  br i1 %97, label %98, label %101, !dbg !703

98:                                               ; preds = %91
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* %0) #10, !dbg !704
  %100 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !706
  br label %291, !dbg !707

101:                                              ; preds = %91
  %102 = call i8* @strcpy(i8* nonnull %96, i8* nonnull dereferenceable(1) %0) #10, !dbg !708
  %103 = load i64, i64* bitcast (%struct.reslib_t** @reslibs to i64*), align 8, !dbg !709, !tbaa !380
  %104 = bitcast i8* %85 to i64*, !dbg !710
  store i64 %103, i64* %104, align 8, !dbg !710, !tbaa !711
  store i8* %85, i8** bitcast (%struct.reslib_t** @reslibs to i8**), align 8, !dbg !712, !tbaa !380
  %105 = getelementptr inbounds i8, i8* %85, i64 8, !dbg !713
  %106 = bitcast i8* %105 to i8**, !dbg !713
  store i8* %96, i8** %106, align 8, !dbg !714, !tbaa !389
  %107 = getelementptr inbounds i8, i8* %85, i64 16, !dbg !715
  %108 = bitcast i8* %107 to i32*, !dbg !715
  %109 = getelementptr inbounds i8, i8* %85, i64 20, !dbg !716
  %110 = bitcast i8* %109 to i32*, !dbg !716
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %107, i8 0, i64 16, i1 false) #10, !dbg !717
  store i8 0, i8* %43, align 16, !dbg !718, !tbaa !657
  %111 = call i8* @strstr(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !719
  %112 = icmp eq i8* %111, null, !dbg !721
  br i1 %112, label %113, label %240, !dbg !722

113:                                              ; preds = %101
  %114 = call i8* @fgets(i8* nonnull %44, i32 128, %struct._IO_FILE* nonnull %84) #10, !dbg !723
  %115 = icmp eq i8* %114, null, !dbg !725
  br i1 %115, label %259, label %116, !dbg !725

116:                                              ; preds = %113
  %117 = bitcast [20 x i8]* %38 to i32*, !dbg !726
  %118 = bitcast [100 x i8]* %39 to i16*, !dbg !733
  %119 = bitcast [100 x i8]* %39 to i32*, !dbg !738
  br label %120, !dbg !725

120:                                              ; preds = %233, %116
  %121 = phi %struct._IO_FILE* [ null, %116 ], [ %234, %233 ], !dbg !742
  %122 = phi %struct._IO_FILE* [ null, %116 ], [ %235, %233 ], !dbg !743
  %123 = phi %struct._IO_FILE* [ null, %116 ], [ %236, %233 ], !dbg !744
  %124 = phi %struct._IO_FILE* [ null, %116 ], [ %237, %233 ], !dbg !745
  %125 = load i8, i8* %44, align 16, !dbg !746, !tbaa !657
  %126 = icmp eq i8 %125, 35, !dbg !748
  br i1 %126, label %233, label %127, !dbg !749

127:                                              ; preds = %120
  %128 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %45, i8* nonnull %46) #10, !dbg !750
  call void @llvm.dbg.value(metadata i32 %128, metadata !586, metadata !DIExpression()) #10, !dbg !638
  switch i32 %128, label %251 [
    i32 -1, label %233
    i32 2, label %129
  ], !dbg !751

129:                                              ; preds = %127
  %130 = call i32 @bcmp(i8* nonnull dereferenceable(5) %45, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 5) #10, !dbg !752
  %131 = icmp eq i32 %130, 0, !dbg !753
  br i1 %131, label %132, label %140, !dbg !754

132:                                              ; preds = %129
  %133 = load i32, i32* %119, align 16, !dbg !755
  switch i32 %133, label %136 [
    i32 6385252, label %134
    i32 6385266, label %135
  ], !dbg !758

134:                                              ; preds = %132
  store i32 1, i32* %108, align 8, !dbg !759, !tbaa !410
  br label %233, !dbg !760

135:                                              ; preds = %132
  store i32 2, i32* %108, align 8, !dbg !761, !tbaa !410
  br label %233, !dbg !763

136:                                              ; preds = %132
  %137 = call i32 @bcmp(i8* nonnull dereferenceable(3) %46, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 3) #10, !dbg !764
  %138 = icmp eq i32 %137, 0, !dbg !766
  br i1 %138, label %139, label %251, !dbg !767

139:                                              ; preds = %136
  store i32 3, i32* %108, align 8, !dbg !768, !tbaa !410
  br label %233

140:                                              ; preds = %129
  %141 = call i32 @bcmp(i8* nonnull dereferenceable(9) %45, i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i64 9) #10, !dbg !769
  %142 = icmp eq i32 %141, 0, !dbg !770
  br i1 %142, label %143, label %151, !dbg !771

143:                                              ; preds = %140
  %144 = call i32 @bcmp(i8* nonnull dereferenceable(7) %46, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 7) #10, !dbg !772
  %145 = icmp eq i32 %144, 0, !dbg !773
  br i1 %145, label %146, label %147, !dbg !774

146:                                              ; preds = %143
  store i32 1, i32* %110, align 4, !dbg !775, !tbaa !776
  br label %233, !dbg !777

147:                                              ; preds = %143
  %148 = load i32, i32* %119, align 16, !dbg !778
  %149 = icmp eq i32 %148, 7105633, !dbg !778
  br i1 %149, label %150, label %251, !dbg !779

150:                                              ; preds = %147
  store i32 2, i32* %110, align 4, !dbg !780, !tbaa !776
  br label %233

151:                                              ; preds = %140
  %152 = load i32, i32* %117, align 16, !dbg !781
  switch i32 %152, label %196 [
    i32 6710895, label %153
    i32 6448240, label %163
    i32 6581858, label %180
  ], !dbg !782

153:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i8* %46, metadata !647, metadata !DIExpression()) #10, !dbg !783
  call void @llvm.dbg.value(metadata i8* %43, metadata !652, metadata !DIExpression()) #10, !dbg !783
  %154 = load i8, i8* %46, align 16, !dbg !786, !tbaa !657
  %155 = icmp eq i8 %154, 47, !dbg !787
  %156 = load i16, i16* %118, align 16, !dbg !788
  %157 = icmp eq i16 %156, 12078, !dbg !788
  %158 = or i1 %155, %157, !dbg !789
  br i1 %158, label %159, label %161, !dbg !789

159:                                              ; preds = %153
  %160 = call i8* @strcpy(i8* nonnull dereferenceable(1) %43, i8* nonnull %46) #10, !dbg !790
  br label %233, !dbg !790

161:                                              ; preds = %153
  %162 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %43, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !791
  br label %233

163:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i8* %46, metadata !647, metadata !DIExpression()) #10, !dbg !792
  call void @llvm.dbg.value(metadata i8* %48, metadata !652, metadata !DIExpression()) #10, !dbg !792
  %164 = load i8, i8* %46, align 16, !dbg !795, !tbaa !657
  %165 = icmp eq i8 %164, 47, !dbg !796
  %166 = load i16, i16* %118, align 16, !dbg !797
  %167 = icmp eq i16 %166, 12078, !dbg !797
  %168 = or i1 %165, %167, !dbg !798
  br i1 %168, label %169, label %171, !dbg !798

169:                                              ; preds = %163
  %170 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #10, !dbg !799
  br label %173, !dbg !799

171:                                              ; preds = %163
  %172 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !800
  br label %173

173:                                              ; preds = %171, %169
  %174 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !801
  %175 = icmp eq %struct._IO_FILE* %174, null, !dbg !803
  br i1 %175, label %176, label %233, !dbg !804

176:                                              ; preds = %173
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* nonnull %46) #10, !dbg !805
  %178 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !807
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !585, metadata !DIExpression()) #10, !dbg !638
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !585, metadata !DIExpression()) #10, !dbg !638
  call void @llvm.dbg.label(metadata !594) #10, !dbg !808
  %179 = call i32 @fclose(%struct._IO_FILE* %84) #10, !dbg !809
  br label %267, !dbg !810

180:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i8* %46, metadata !647, metadata !DIExpression()) #10, !dbg !813
  call void @llvm.dbg.value(metadata i8* %48, metadata !652, metadata !DIExpression()) #10, !dbg !813
  %181 = load i8, i8* %46, align 16, !dbg !814, !tbaa !657
  %182 = icmp eq i8 %181, 47, !dbg !815
  %183 = load i16, i16* %118, align 16, !dbg !816
  %184 = icmp eq i16 %183, 12078, !dbg !816
  %185 = or i1 %182, %184, !dbg !817
  br i1 %185, label %186, label %188, !dbg !817

186:                                              ; preds = %180
  %187 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #10, !dbg !818
  br label %190, !dbg !818

188:                                              ; preds = %180
  %189 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !819
  br label %190

190:                                              ; preds = %188, %186
  %191 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !820
  %192 = icmp eq %struct._IO_FILE* %191, null, !dbg !822
  br i1 %192, label %193, label %233, !dbg !823

193:                                              ; preds = %190
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %46) #10, !dbg !824
  %195 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !826
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !585, metadata !DIExpression()) #10, !dbg !638
  br label %251, !dbg !827

196:                                              ; preds = %151
  %197 = call i32 @bcmp(i8* nonnull dereferenceable(3) %45, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 3) #10, !dbg !828
  %198 = icmp eq i32 %197, 0, !dbg !830
  br i1 %198, label %199, label %215, !dbg !831

199:                                              ; preds = %196
  call void @llvm.dbg.value(metadata i8* %46, metadata !647, metadata !DIExpression()) #10, !dbg !832
  call void @llvm.dbg.value(metadata i8* %48, metadata !652, metadata !DIExpression()) #10, !dbg !832
  %200 = load i8, i8* %46, align 16, !dbg !835, !tbaa !657
  %201 = icmp eq i8 %200, 47, !dbg !836
  %202 = load i16, i16* %118, align 16, !dbg !837
  %203 = icmp eq i16 %202, 12078, !dbg !837
  %204 = or i1 %201, %203, !dbg !838
  br i1 %204, label %205, label %207, !dbg !838

205:                                              ; preds = %199
  %206 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #10, !dbg !839
  br label %209, !dbg !839

207:                                              ; preds = %199
  %208 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !840
  br label %209

209:                                              ; preds = %207, %205
  %210 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !841
  %211 = icmp eq %struct._IO_FILE* %210, null, !dbg !843
  br i1 %211, label %212, label %233, !dbg !844

212:                                              ; preds = %209
  %213 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* nonnull %46) #10, !dbg !845
  %214 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !847
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !585, metadata !DIExpression()) #10, !dbg !638
  br label %251, !dbg !848

215:                                              ; preds = %196
  %216 = icmp eq i32 %152, 6908003, !dbg !849
  br i1 %216, label %217, label %251, !dbg !851

217:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8* %46, metadata !647, metadata !DIExpression()) #10, !dbg !852
  call void @llvm.dbg.value(metadata i8* %48, metadata !652, metadata !DIExpression()) #10, !dbg !852
  %218 = load i8, i8* %46, align 16, !dbg !855, !tbaa !657
  %219 = icmp eq i8 %218, 47, !dbg !856
  %220 = load i16, i16* %118, align 16, !dbg !857
  %221 = icmp eq i16 %220, 12078, !dbg !857
  %222 = or i1 %219, %221, !dbg !858
  br i1 %222, label %223, label %225, !dbg !858

223:                                              ; preds = %217
  %224 = call i8* @strcpy(i8* nonnull dereferenceable(1) %48, i8* nonnull %46) #10, !dbg !859
  br label %227, !dbg !859

225:                                              ; preds = %217
  %226 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %48, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %46) #10, !dbg !860
  br label %227

227:                                              ; preds = %225, %223
  %228 = call %struct._IO_FILE* @fopen(i8* nonnull %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !861
  %229 = icmp eq %struct._IO_FILE* %228, null, !dbg !863
  br i1 %229, label %230, label %233, !dbg !864

230:                                              ; preds = %227
  %231 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %46) #10, !dbg !865
  %232 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !867
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !585, metadata !DIExpression()) #10, !dbg !638
  br label %251, !dbg !868

233:                                              ; preds = %227, %209, %190, %173, %161, %159, %150, %146, %139, %135, %134, %127, %120
  %234 = phi %struct._IO_FILE* [ %121, %120 ], [ %121, %139 ], [ %121, %135 ], [ %121, %134 ], [ %121, %146 ], [ %121, %150 ], [ %121, %209 ], [ %121, %227 ], [ %121, %190 ], [ %174, %173 ], [ %121, %159 ], [ %121, %161 ], [ %121, %127 ], !dbg !638
  %235 = phi %struct._IO_FILE* [ %122, %120 ], [ %122, %139 ], [ %122, %135 ], [ %122, %134 ], [ %122, %146 ], [ %122, %150 ], [ %122, %209 ], [ %122, %227 ], [ %191, %190 ], [ %122, %173 ], [ %122, %159 ], [ %122, %161 ], [ %122, %127 ], !dbg !638
  %236 = phi %struct._IO_FILE* [ %123, %120 ], [ %123, %139 ], [ %123, %135 ], [ %123, %134 ], [ %123, %146 ], [ %123, %150 ], [ %210, %209 ], [ %123, %227 ], [ %123, %190 ], [ %123, %173 ], [ %123, %159 ], [ %123, %161 ], [ %123, %127 ], !dbg !638
  %237 = phi %struct._IO_FILE* [ %124, %120 ], [ %124, %139 ], [ %124, %135 ], [ %124, %134 ], [ %124, %146 ], [ %124, %150 ], [ %124, %209 ], [ %228, %227 ], [ %124, %190 ], [ %124, %173 ], [ %124, %159 ], [ %124, %161 ], [ %124, %127 ], !dbg !638
  %238 = call i8* @fgets(i8* nonnull %44, i32 128, %struct._IO_FILE* %84) #10, !dbg !723
  %239 = icmp eq i8* %238, null, !dbg !725
  br i1 %239, label %259, label %120, !dbg !725, !llvm.loop !869

240:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i8* %47, metadata !647, metadata !DIExpression()) #10, !dbg !871
  call void @llvm.dbg.value(metadata i8* %43, metadata !652, metadata !DIExpression()) #10, !dbg !871
  %241 = load i8, i8* %47, align 16, !dbg !874, !tbaa !657
  %242 = icmp eq i8 %241, 47, !dbg !875
  br i1 %242, label %247, label %243, !dbg !876

243:                                              ; preds = %240
  %244 = bitcast [100 x i8]* %40 to i16*, !dbg !877
  %245 = load i16, i16* %244, align 16, !dbg !877
  %246 = icmp eq i16 %245, 12078, !dbg !877
  br i1 %246, label %247, label %249, !dbg !878

247:                                              ; preds = %243, %240
  %248 = call i8* @strcpy(i8* nonnull dereferenceable(1) %43, i8* nonnull %47) #10, !dbg !879
  br label %257, !dbg !879

249:                                              ; preds = %243
  %250 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %43, i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %47) #10, !dbg !880
  br label %257

251:                                              ; preds = %215, %147, %136, %127, %230, %212, %193
  %252 = phi %struct._IO_FILE* [ %122, %212 ], [ %122, %230 ], [ null, %193 ], [ %122, %127 ], [ %122, %136 ], [ %122, %147 ], [ %122, %215 ], !dbg !638
  %253 = phi %struct._IO_FILE* [ null, %212 ], [ %123, %230 ], [ %123, %193 ], [ %123, %127 ], [ %123, %136 ], [ %123, %147 ], [ %123, %215 ], !dbg !638
  %254 = phi %struct._IO_FILE* [ %124, %212 ], [ null, %230 ], [ %124, %193 ], [ %124, %127 ], [ %124, %136 ], [ %124, %147 ], [ %124, %215 ], !dbg !638
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !585, metadata !DIExpression()) #10, !dbg !638
  call void @llvm.dbg.label(metadata !594) #10, !dbg !808
  %255 = call i32 @fclose(%struct._IO_FILE* %84) #10, !dbg !809
  %256 = icmp eq %struct._IO_FILE* %121, null, !dbg !881
  br i1 %256, label %267, label %265, !dbg !810

257:                                              ; preds = %249, %247
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !585, metadata !DIExpression()) #10, !dbg !638
  call void @llvm.dbg.label(metadata !594) #10, !dbg !808
  %258 = call i32 @fclose(%struct._IO_FILE* nonnull %84) #10, !dbg !809
  br label %291, !dbg !883

259:                                              ; preds = %233, %113
  %260 = phi %struct._IO_FILE* [ null, %113 ], [ %234, %233 ], !dbg !742
  %261 = phi %struct._IO_FILE* [ null, %113 ], [ %235, %233 ], !dbg !743
  %262 = phi %struct._IO_FILE* [ null, %113 ], [ %236, %233 ], !dbg !744
  %263 = phi %struct._IO_FILE* [ null, %113 ], [ %237, %233 ], !dbg !745
  call void @llvm.dbg.value(metadata %struct.reslib_t* %86, metadata !585, metadata !DIExpression()) #10, !dbg !638
  call void @llvm.dbg.label(metadata !594) #10, !dbg !808
  %264 = call i32 @fclose(%struct._IO_FILE* %84) #10, !dbg !809
  br label %291, !dbg !883

265:                                              ; preds = %251
  %266 = call i32 @fclose(%struct._IO_FILE* nonnull %121) #10, !dbg !884
  br label %267, !dbg !884

267:                                              ; preds = %176, %265, %251
  %268 = phi %struct._IO_FILE* [ %124, %176 ], [ %254, %265 ], [ %254, %251 ]
  %269 = phi %struct._IO_FILE* [ %123, %176 ], [ %253, %265 ], [ %253, %251 ]
  %270 = phi %struct._IO_FILE* [ %122, %176 ], [ %252, %265 ], [ %252, %251 ]
  %271 = phi %struct._IO_FILE* [ null, %176 ], [ %121, %265 ], [ null, %251 ]
  %272 = icmp eq %struct._IO_FILE* %270, null, !dbg !885
  br i1 %272, label %275, label %273, !dbg !887

273:                                              ; preds = %267
  %274 = call i32 @fclose(%struct._IO_FILE* nonnull %270) #10, !dbg !888
  br label %275, !dbg !888

275:                                              ; preds = %273, %267
  %276 = icmp eq %struct._IO_FILE* %269, null, !dbg !889
  br i1 %276, label %279, label %277, !dbg !891

277:                                              ; preds = %275
  %278 = call i32 @fclose(%struct._IO_FILE* nonnull %269) #10, !dbg !892
  br label %279, !dbg !892

279:                                              ; preds = %277, %275
  %280 = icmp eq %struct._IO_FILE* %268, null, !dbg !893
  br i1 %280, label %283, label %281, !dbg !895

281:                                              ; preds = %279
  %282 = call i32 @fclose(%struct._IO_FILE* nonnull %268) #10, !dbg !896
  br label %283, !dbg !896

283:                                              ; preds = %281, %279
  %284 = call i64 @strlen(i8* nonnull %44) #11, !dbg !897
  %285 = trunc i64 %284 to i32, !dbg !897
  %286 = add i32 %285, -1, !dbg !897
  call void @llvm.dbg.value(metadata i32 %286, metadata !587, metadata !DIExpression()) #10, !dbg !638
  %287 = icmp slt i32 %286, 20, !dbg !898
  %288 = select i1 %287, i32 %286, i32 20, !dbg !898
  call void @llvm.dbg.value(metadata i32 %288, metadata !587, metadata !DIExpression()) #10, !dbg !638
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %288, i32 %288, i8* nonnull %44) #10, !dbg !899
  %290 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !900
  br label %291, !dbg !901

291:                                              ; preds = %66, %81, %88, %98, %257, %259, %283
  %292 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %260, %259 ], [ %271, %283 ], [ null, %257 ], [ undef, %66 ]
  %293 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %261, %259 ], [ %270, %283 ], [ null, %257 ], [ undef, %66 ]
  %294 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %262, %259 ], [ %269, %283 ], [ null, %257 ], [ undef, %66 ]
  %295 = phi %struct._IO_FILE* [ undef, %81 ], [ undef, %88 ], [ undef, %98 ], [ %263, %259 ], [ %268, %283 ], [ null, %257 ], [ undef, %66 ]
  %296 = phi %struct.reslib_t* [ null, %81 ], [ null, %88 ], [ null, %98 ], [ %86, %259 ], [ null, %283 ], [ %86, %257 ], [ null, %66 ], !dbg !638
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %47) #10, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %46) #10, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #10, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %44) #10, !dbg !902
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !423, metadata !DIExpression()), !dbg !635
  %297 = icmp eq %struct.reslib_t* %296, null, !dbg !903
  br i1 %297, label %836, label %298, !dbg !904

298:                                              ; preds = %291
  %299 = load i1, i1* @initatoms.init, align 4, !dbg !905
  br i1 %299, label %314, label %300, !dbg !908

300:                                              ; preds = %298
  store i1 true, i1* @initatoms.init, align 4, !dbg !909
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !330, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata i32 0, metadata !329, metadata !DIExpression()) #10, !dbg !910
  br label %301, !dbg !911

301:                                              ; preds = %310, %300
  %302 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %300 ], [ %312, %310 ]
  %303 = phi i32 [ 0, %300 ], [ %311, %310 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %302, metadata !330, metadata !DIExpression()) #10, !dbg !910
  call void @llvm.dbg.value(metadata i32 %303, metadata !329, metadata !DIExpression()) #10, !dbg !910
  call void @NAB_initatom(%struct.atom_t* nonnull %302, i32 1) #10, !dbg !913
  %304 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #10, !dbg !916
  %305 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %302, i64 0, i32 0, !dbg !917
  store i8* %304, i8** %305, align 8, !dbg !918, !tbaa !919
  %306 = icmp eq i8* %304, null, !dbg !922
  br i1 %306, label %307, label %310, !dbg !924

307:                                              ; preds = %301
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !925, !tbaa !380
  %309 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %308) #14, !dbg !927
  call void @exit(i32 1) #13, !dbg !928
  unreachable, !dbg !928

310:                                              ; preds = %301
  %311 = add nuw nsw i32 %303, 1, !dbg !929
  call void @llvm.dbg.value(metadata i32 %311, metadata !329, metadata !DIExpression()) #10, !dbg !910
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %302, i64 1, !dbg !930
  call void @llvm.dbg.value(metadata %struct.atom_t* %312, metadata !330, metadata !DIExpression()) #10, !dbg !910
  %313 = icmp eq i32 %311, 1000, !dbg !931
  br i1 %313, label %314, label %301, !dbg !911, !llvm.loop !932

314:                                              ; preds = %310, %298
  %315 = load i8, i8* %43, align 16, !dbg !934, !tbaa !657
  %316 = icmp eq i8 %315, 0, !dbg !934
  br i1 %316, label %497, label %317, !dbg !935

317:                                              ; preds = %314
  call void @llvm.dbg.value(metadata i8* %43, metadata !500, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !501, metadata !DIExpression()) #10, !dbg !936
  %318 = bitcast i32* %20 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %318) #10, !dbg !937
  %319 = bitcast i32* %21 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %319) #10, !dbg !937
  %320 = bitcast [100 x i32]* %22 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %320) #10, !dbg !938
  %321 = bitcast [100 x i32]* %23 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %321) #10, !dbg !938
  %322 = bitcast [100 x i32]* %24 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %322) #10, !dbg !938
  %323 = bitcast [100 x i32]* %25 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %323) #10, !dbg !938
  %324 = bitcast [100 x i32]* %26 to i8*, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %324) #10, !dbg !938
  %325 = bitcast [100 x i32]* %27 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %325) #10, !dbg !939
  %326 = bitcast [100 x i32]* %28 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %326) #10, !dbg !939
  %327 = bitcast [100 x double]* %29 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %327) #10, !dbg !940
  %328 = bitcast [100 x double]* %30 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %328) #10, !dbg !940
  %329 = bitcast [100 x double]* %31 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %329) #10, !dbg !940
  %330 = bitcast [100 x double]* %32 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %330) #10, !dbg !940
  %331 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %33, i64 0, i64 0, i64 0, !dbg !941
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %331) #10, !dbg !941
  %332 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %34, i64 0, i64 0, i64 0, !dbg !941
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %332) #10, !dbg !941
  %333 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 0, i64 0, !dbg !941
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %333) #10, !dbg !941
  %334 = getelementptr inbounds [255 x i8], [255 x i8]* %36, i64 0, i64 0, !dbg !942
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %334) #10, !dbg !942
  store i32 0, i32* @n_atoms, align 4, !dbg !943, !tbaa !944
  %335 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* nonnull %43, i32 1) #10, !dbg !945
  call void @llvm.dbg.value(metadata %struct.DATABASEt* %335, metadata !507, metadata !DIExpression()) #10, !dbg !936
  %336 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 0, !dbg !946
  call void @llvm.dbg.value(metadata i32* %21, metadata !504, metadata !DIExpression(DW_OP_deref)) #10, !dbg !936
  %337 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* nonnull %21, [10 x i8]* nonnull %336, i32 10) #10, !dbg !947
  call void @llvm.dbg.value(metadata i8 %337, metadata !531, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()) #10, !dbg !936
  %338 = load i32, i32* %21, align 4, !dbg !948, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %338, metadata !504, metadata !DIExpression()) #10, !dbg !936
  %339 = icmp sgt i32 %338, 0, !dbg !951
  br i1 %339, label %340, label %496, !dbg !952

340:                                              ; preds = %317
  %341 = getelementptr inbounds [100 x i32], [100 x i32]* %22, i64 0, i64 0, !dbg !953
  %342 = getelementptr inbounds [100 x i32], [100 x i32]* %23, i64 0, i64 0, !dbg !953
  %343 = getelementptr inbounds [100 x i32], [100 x i32]* %24, i64 0, i64 0, !dbg !953
  %344 = getelementptr inbounds [100 x i32], [100 x i32]* %25, i64 0, i64 0, !dbg !953
  %345 = getelementptr inbounds [100 x i32], [100 x i32]* %26, i64 0, i64 0, !dbg !953
  %346 = getelementptr inbounds [100 x double], [100 x double]* %29, i64 0, i64 0, !dbg !953
  %347 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %33, i64 0, i64 0, !dbg !953
  %348 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %34, i64 0, i64 0, !dbg !953
  %349 = getelementptr inbounds [100 x double], [100 x double]* %30, i64 0, i64 0, !dbg !953
  %350 = getelementptr inbounds [100 x double], [100 x double]* %31, i64 0, i64 0, !dbg !953
  %351 = getelementptr inbounds [100 x double], [100 x double]* %32, i64 0, i64 0, !dbg !953
  %352 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 0, !dbg !953
  %353 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 0, !dbg !953
  br label %354, !dbg !952

354:                                              ; preds = %491, %340
  %355 = phi i64 [ 0, %340 ], [ %492, %491 ]
  call void @llvm.dbg.value(metadata i64 %355, metadata !506, metadata !DIExpression()) #10, !dbg !936
  %356 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %35, i64 0, i64 %355, i64 0, !dbg !955
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %334, i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %356) #10, !dbg !956
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* %335) #10, !dbg !957
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* %335, i8* nonnull %334) #10, !dbg !958
  call void @llvm.dbg.value(metadata i32* %20, metadata !503, metadata !DIExpression(DW_OP_deref)) #10, !dbg !936
  %358 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* nonnull %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 1) #10, !dbg !959
  call void @llvm.dbg.value(metadata i8 %358, metadata !531, metadata !DIExpression()) #10, !dbg !936
  %359 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* nonnull @n_atoms, i32 3, i32* nonnull %341, i64 4, i32 4, i32* nonnull %342, i64 4, i32 5, i32* nonnull %343, i64 4, i32 6, i32* nonnull %344, i64 4, i32 7, i32* nonnull %345, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 8, double* nonnull %346, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, [10 x i8]* nonnull %347, i32 10, i32 2, [10 x i8]* nonnull %348, i32 10, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #10, !dbg !960
  call void @llvm.dbg.value(metadata i8 %359, metadata !531, metadata !DIExpression()) #10, !dbg !936
  %360 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* nonnull @n_atoms, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, double* nonnull %349, i64 8, i32 2, double* nonnull %350, i64 8, i32 3, double* nonnull %351, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #10, !dbg !961
  call void @llvm.dbg.value(metadata i8 %360, metadata !531, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i32 0, metadata !505, metadata !DIExpression()) #10, !dbg !936
  %361 = load i32, i32* @n_atoms, align 4, !dbg !962, !tbaa !944
  %362 = icmp sgt i32 %361, 0, !dbg !965
  br i1 %362, label %363, label %397, !dbg !966

363:                                              ; preds = %354, %363
  %364 = phi i64 [ %390, %363 ], [ 0, %354 ]
  call void @llvm.dbg.value(metadata i64 %364, metadata !505, metadata !DIExpression()) #10, !dbg !936
  %365 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, !dbg !967
  call void @llvm.dbg.value(metadata %struct.atom_t* %365, metadata !502, metadata !DIExpression()) #10, !dbg !936
  call void @NAB_initatom(%struct.atom_t* nonnull %365, i32 0) #10, !dbg !969
  %366 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %365, i64 0, i32 0, !dbg !970
  %367 = load i8*, i8** %366, align 16, !dbg !970, !tbaa !919
  %368 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %33, i64 0, i64 %364, i64 0, !dbg !971
  %369 = call i8* @strcpy(i8* nonnull dereferenceable(1) %367, i8* nonnull %368) #10, !dbg !972
  %370 = getelementptr inbounds [100 x double], [100 x double]* %29, i64 0, i64 %364, !dbg !973
  %371 = bitcast double* %370 to i64*, !dbg !973
  %372 = load i64, i64* %371, align 8, !dbg !973, !tbaa !974
  %373 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, i32 6, !dbg !975
  %374 = bitcast double* %373 to i64*, !dbg !976
  store i64 %372, i64* %374, align 16, !dbg !976, !tbaa !977
  %375 = getelementptr inbounds [100 x double], [100 x double]* %30, i64 0, i64 %364, !dbg !978
  %376 = bitcast double* %375 to i64*, !dbg !978
  %377 = load i64, i64* %376, align 8, !dbg !978, !tbaa !974
  %378 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, i32 17, !dbg !979
  %379 = bitcast [3 x double]* %378 to i64*, !dbg !980
  store i64 %377, i64* %379, align 16, !dbg !980, !tbaa !974
  %380 = getelementptr inbounds [100 x double], [100 x double]* %31, i64 0, i64 %364, !dbg !981
  %381 = bitcast double* %380 to i64*, !dbg !981
  %382 = load i64, i64* %381, align 8, !dbg !981, !tbaa !974
  %383 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, i32 17, i64 1, !dbg !982
  %384 = bitcast double* %383 to i64*, !dbg !983
  store i64 %382, i64* %384, align 8, !dbg !983, !tbaa !974
  %385 = getelementptr inbounds [100 x double], [100 x double]* %32, i64 0, i64 %364, !dbg !984
  %386 = bitcast double* %385 to i64*, !dbg !984
  %387 = load i64, i64* %386, align 8, !dbg !984, !tbaa !974
  %388 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %364, i32 17, i64 2, !dbg !985
  %389 = bitcast double* %388 to i64*, !dbg !986
  store i64 %387, i64* %389, align 16, !dbg !986, !tbaa !974
  %390 = add nuw nsw i64 %364, 1, !dbg !987
  call void @llvm.dbg.value(metadata i64 %390, metadata !505, metadata !DIExpression()) #10, !dbg !936
  %391 = load i32, i32* @n_atoms, align 4, !dbg !962, !tbaa !944
  %392 = sext i32 %391 to i64, !dbg !965
  %393 = icmp slt i64 %390, %392, !dbg !965
  br i1 %393, label %363, label %394, !dbg !966, !llvm.loop !988

394:                                              ; preds = %363
  %395 = icmp sgt i32 %391, 0, !dbg !990
  br i1 %395, label %396, label %397, !dbg !992

396:                                              ; preds = %394
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !993
  br label %397, !dbg !993

397:                                              ; preds = %396, %394, %354
  %398 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %335, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* nonnull @n_bonds, i32 1, i32* nonnull %352, i64 4, i32 2, i32* nonnull %353, i64 4, i32 3, i32* nonnull %343, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #10, !dbg !994
  call void @llvm.dbg.value(metadata i8 %398, metadata !531, metadata !DIExpression()) #10, !dbg !936
  call void @llvm.dbg.value(metadata i32 0, metadata !505, metadata !DIExpression()) #10, !dbg !936
  %399 = load i32, i32* @n_bonds, align 4, !dbg !995, !tbaa !944
  %400 = icmp sgt i32 %399, 0, !dbg !998
  br i1 %400, label %401, label %491, !dbg !999

401:                                              ; preds = %397
  %402 = zext i32 %399 to i64, !dbg !999
  %403 = icmp ult i32 %399, 4, !dbg !999
  br i1 %403, label %478, label %404, !dbg !999

404:                                              ; preds = %401
  %405 = and i64 %402, 4294967292, !dbg !999
  %406 = add nsw i64 %405, -4, !dbg !999
  %407 = lshr exact i64 %406, 2, !dbg !999
  %408 = add nuw nsw i64 %407, 1, !dbg !999
  %409 = and i64 %408, 3, !dbg !999
  %410 = icmp ult i64 %406, 12, !dbg !999
  br i1 %410, label %458, label %411, !dbg !999

411:                                              ; preds = %404
  %412 = sub nsw i64 %408, %409, !dbg !999
  br label %413, !dbg !999

413:                                              ; preds = %413, %411
  %414 = phi i64 [ 0, %411 ], [ %455, %413 ], !dbg !1000
  %415 = phi i64 [ %412, %411 ], [ %456, %413 ]
  %416 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %414, !dbg !1001
  %417 = bitcast i32* %416 to <4 x i32>*, !dbg !1001
  %418 = load <4 x i32>, <4 x i32>* %417, align 16, !dbg !1001, !tbaa !944
  %419 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %414, !dbg !1003
  %420 = bitcast i32* %419 to <4 x i32>*, !dbg !1003
  %421 = load <4 x i32>, <4 x i32>* %420, align 16, !dbg !1003, !tbaa !944
  %422 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %414, i64 0, !dbg !1004
  %423 = bitcast i32* %422 to <8 x i32>*, !dbg !1004
  %424 = shufflevector <4 x i32> %418, <4 x i32> %421, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1005
  store <8 x i32> %424, <8 x i32>* %423, align 16, !dbg !1005, !tbaa !944
  %425 = or i64 %414, 4, !dbg !1000
  %426 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %425, !dbg !1001
  %427 = bitcast i32* %426 to <4 x i32>*, !dbg !1001
  %428 = load <4 x i32>, <4 x i32>* %427, align 16, !dbg !1001, !tbaa !944
  %429 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %425, !dbg !1003
  %430 = bitcast i32* %429 to <4 x i32>*, !dbg !1003
  %431 = load <4 x i32>, <4 x i32>* %430, align 16, !dbg !1003, !tbaa !944
  %432 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %425, i64 0, !dbg !1004
  %433 = bitcast i32* %432 to <8 x i32>*, !dbg !1004
  %434 = shufflevector <4 x i32> %428, <4 x i32> %431, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1005
  store <8 x i32> %434, <8 x i32>* %433, align 16, !dbg !1005, !tbaa !944
  %435 = or i64 %414, 8, !dbg !1000
  %436 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %435, !dbg !1001
  %437 = bitcast i32* %436 to <4 x i32>*, !dbg !1001
  %438 = load <4 x i32>, <4 x i32>* %437, align 16, !dbg !1001, !tbaa !944
  %439 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %435, !dbg !1003
  %440 = bitcast i32* %439 to <4 x i32>*, !dbg !1003
  %441 = load <4 x i32>, <4 x i32>* %440, align 16, !dbg !1003, !tbaa !944
  %442 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %435, i64 0, !dbg !1004
  %443 = bitcast i32* %442 to <8 x i32>*, !dbg !1004
  %444 = shufflevector <4 x i32> %438, <4 x i32> %441, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1005
  store <8 x i32> %444, <8 x i32>* %443, align 16, !dbg !1005, !tbaa !944
  %445 = or i64 %414, 12, !dbg !1000
  %446 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %445, !dbg !1001
  %447 = bitcast i32* %446 to <4 x i32>*, !dbg !1001
  %448 = load <4 x i32>, <4 x i32>* %447, align 16, !dbg !1001, !tbaa !944
  %449 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %445, !dbg !1003
  %450 = bitcast i32* %449 to <4 x i32>*, !dbg !1003
  %451 = load <4 x i32>, <4 x i32>* %450, align 16, !dbg !1003, !tbaa !944
  %452 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %445, i64 0, !dbg !1004
  %453 = bitcast i32* %452 to <8 x i32>*, !dbg !1004
  %454 = shufflevector <4 x i32> %448, <4 x i32> %451, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1005
  store <8 x i32> %454, <8 x i32>* %453, align 16, !dbg !1005, !tbaa !944
  %455 = add i64 %414, 16, !dbg !1000
  %456 = add i64 %415, -4, !dbg !1000
  %457 = icmp eq i64 %456, 0, !dbg !1000
  br i1 %457, label %458, label %413, !dbg !1000, !llvm.loop !1006

458:                                              ; preds = %413, %404
  %459 = phi i64 [ 0, %404 ], [ %455, %413 ]
  %460 = icmp eq i64 %409, 0, !dbg !1000
  br i1 %460, label %476, label %461, !dbg !1000

461:                                              ; preds = %458, %461
  %462 = phi i64 [ %473, %461 ], [ %459, %458 ], !dbg !1000
  %463 = phi i64 [ %474, %461 ], [ %409, %458 ]
  %464 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %462, !dbg !1001
  %465 = bitcast i32* %464 to <4 x i32>*, !dbg !1001
  %466 = load <4 x i32>, <4 x i32>* %465, align 16, !dbg !1001, !tbaa !944
  %467 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %462, !dbg !1003
  %468 = bitcast i32* %467 to <4 x i32>*, !dbg !1003
  %469 = load <4 x i32>, <4 x i32>* %468, align 16, !dbg !1003, !tbaa !944
  %470 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %462, i64 0, !dbg !1004
  %471 = bitcast i32* %470 to <8 x i32>*, !dbg !1004
  %472 = shufflevector <4 x i32> %466, <4 x i32> %469, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !1005
  store <8 x i32> %472, <8 x i32>* %471, align 16, !dbg !1005, !tbaa !944
  %473 = add i64 %462, 4, !dbg !1000
  %474 = add i64 %463, -1, !dbg !1000
  %475 = icmp eq i64 %474, 0, !dbg !1000
  br i1 %475, label %476, label %461, !dbg !1000, !llvm.loop !1009

476:                                              ; preds = %461, %458
  %477 = icmp eq i64 %405, %402, !dbg !999
  br i1 %477, label %490, label %478, !dbg !999

478:                                              ; preds = %476, %401
  %479 = phi i64 [ 0, %401 ], [ %405, %476 ]
  br label %480, !dbg !999

480:                                              ; preds = %478, %480
  %481 = phi i64 [ %488, %480 ], [ %479, %478 ]
  call void @llvm.dbg.value(metadata i64 %481, metadata !505, metadata !DIExpression()) #10, !dbg !936
  %482 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %481, !dbg !1001
  %483 = load i32, i32* %482, align 4, !dbg !1001, !tbaa !944
  %484 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %481, i64 0, !dbg !1011
  store i32 %483, i32* %484, align 8, !dbg !1012, !tbaa !944
  %485 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %481, !dbg !1003
  %486 = load i32, i32* %485, align 4, !dbg !1003, !tbaa !944
  %487 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %481, i64 1, !dbg !1004
  store i32 %486, i32* %487, align 4, !dbg !1005, !tbaa !944
  %488 = add nuw nsw i64 %481, 1, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %488, metadata !505, metadata !DIExpression()) #10, !dbg !936
  %489 = icmp eq i64 %488, %402, !dbg !998
  br i1 %489, label %490, label %480, !dbg !999, !llvm.loop !1013

490:                                              ; preds = %480, %476
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1015
  br label %491, !dbg !1015

491:                                              ; preds = %490, %397
  %492 = add nuw nsw i64 %355, 1, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %492, metadata !506, metadata !DIExpression()) #10, !dbg !936
  %493 = load i32, i32* %21, align 4, !dbg !948, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %493, metadata !504, metadata !DIExpression()) #10, !dbg !936
  %494 = sext i32 %493 to i64, !dbg !951
  %495 = icmp slt i64 %492, %494, !dbg !951
  br i1 %495, label %354, label %496, !dbg !952, !llvm.loop !1018

496:                                              ; preds = %491, %317
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %334) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %333) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %332) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %331) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %330) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %329) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %328) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %327) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %326) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %325) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %324) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %323) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %322) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %321) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %320) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %319) #10, !dbg !1020
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %318) #10, !dbg !1020
  br label %636, !dbg !1021

497:                                              ; preds = %314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !416, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !476, metadata !DIExpression()) #10, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !477, metadata !DIExpression()) #10, !dbg !1022
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1023
  %498 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %498) #10, !dbg !1024
  %499 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %499) #10, !dbg !1024
  %500 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1024
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %500) #10, !dbg !1024
  %501 = bitcast i32* %15 to i8*, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %501) #10, !dbg !1025
  %502 = bitcast i32* %16 to i8*, !dbg !1025
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %502) #10, !dbg !1025
  %503 = bitcast double* %17 to i8*, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %503) #10, !dbg !1026
  %504 = bitcast double* %18 to i8*, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %504) #10, !dbg !1026
  %505 = bitcast double* %19 to i8*, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %505) #10, !dbg !1026
  store i32 0, i32* @n_atoms, align 4, !dbg !1027, !tbaa !944
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1028, !tbaa !657
  %506 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %292) #10, !dbg !1029
  %507 = icmp eq i8* %506, null, !dbg !1030
  br i1 %507, label %577, label %508, !dbg !1030

508:                                              ; preds = %497
  %509 = bitcast [256 x i8]* %41 to i32*, !dbg !1031
  %510 = bitcast double* %17 to i64*, !dbg !1033
  %511 = bitcast double* %18 to i64*, !dbg !1033
  %512 = bitcast double* %19 to i64*, !dbg !1033
  %513 = bitcast [100 x i8]* %39 to i32*, !dbg !1035
  %514 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 2, !dbg !1037
  %515 = bitcast [100 x i8]* %40 to i64*, !dbg !1039
  %516 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 3, !dbg !1039
  br label %517, !dbg !1030

517:                                              ; preds = %574, %508
  %518 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1042
  %519 = icmp eq i32 %518, 0, !dbg !1043
  br i1 %519, label %520, label %540, !dbg !1044

520:                                              ; preds = %517
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !619, metadata !DIExpression()) #10, !dbg !1045
  call void @llvm.dbg.value(metadata i8* %48, metadata !620, metadata !DIExpression()) #10, !dbg !1045
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %46) #10, !dbg !1046
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %47) #10, !dbg !1046
  %521 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !1047
  %522 = icmp eq i32 %521, 2, !dbg !1049
  br i1 %522, label %523, label %539, !dbg !1050

523:                                              ; preds = %520
  %524 = load i32, i32* %513, align 16, !dbg !1051
  switch i32 %524, label %526 [
    i32 4279876, label %529
    i32 4279890, label %525
  ], !dbg !1052

525:                                              ; preds = %523
  br label %529, !dbg !1053

526:                                              ; preds = %523
  %527 = call i32 @bcmp(i8* nonnull dereferenceable(3) %46, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 3) #10, !dbg !1054
  %528 = icmp eq i32 %527, 0, !dbg !1056
  br i1 %528, label %529, label %531, !dbg !1057

529:                                              ; preds = %526, %523, %525
  %530 = phi i32 [ 2, %525 ], [ 1, %523 ], [ 3, %526 ]
  store i32 %530, i32* %514, align 8, !dbg !1035, !tbaa !410
  br label %531, !dbg !1058

531:                                              ; preds = %529, %526
  %532 = call i32 @bcmp(i8* nonnull dereferenceable(7) %47, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i64 7) #10, !dbg !1058
  %533 = icmp eq i32 %532, 0, !dbg !1059
  br i1 %533, label %534, label %535, !dbg !1060

534:                                              ; preds = %531
  store i32 1, i32* %516, align 4, !dbg !1061, !tbaa !776
  br label %539, !dbg !1062

535:                                              ; preds = %531
  %536 = load i64, i64* %515, align 16, !dbg !1063
  %537 = icmp eq i64 %536, 21760796498086977, !dbg !1063
  br i1 %537, label %538, label %539, !dbg !1064

538:                                              ; preds = %535
  store i32 2, i32* %516, align 4, !dbg !1065, !tbaa !776
  br label %539, !dbg !1066

539:                                              ; preds = %538, %535, %534, %520
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %47) #10, !dbg !1067
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %46) #10, !dbg !1067
  br label %574, !dbg !1068

540:                                              ; preds = %517
  %541 = load i32, i32* %509, align 16, !dbg !1069
  %542 = icmp eq i32 %541, 1297044545, !dbg !1069
  br i1 %542, label %546, label %543, !dbg !1070

543:                                              ; preds = %540
  %544 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1071
  %545 = icmp eq i32 %544, 0, !dbg !1072
  br i1 %545, label %546, label %574, !dbg !1073

546:                                              ; preds = %543, %540
  call void @llvm.dbg.value(metadata i32* %15, metadata !481, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1022
  call void @llvm.dbg.value(metadata i32* %16, metadata !482, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1022
  call void @llvm.dbg.value(metadata double* %17, metadata !483, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1022
  call void @llvm.dbg.value(metadata double* %18, metadata !484, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1022
  call void @llvm.dbg.value(metadata double* %19, metadata !485, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1022
  %547 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %498, i32* nonnull %15, i8* nonnull %499, i8* nonnull %500, i32* nonnull %16, double* nonnull %17, double* nonnull %18, double* nonnull %19) #10, !dbg !1074
  %548 = call i32 @strcmp(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %500) #11, !dbg !1075
  %549 = icmp eq i32 %548, 0, !dbg !1077
  br i1 %549, label %556, label %550, !dbg !1078

550:                                              ; preds = %546
  %551 = load i32, i32* @n_atoms, align 4, !dbg !1079, !tbaa !944
  %552 = icmp sgt i32 %551, 0, !dbg !1082
  br i1 %552, label %553, label %554, !dbg !1083

553:                                              ; preds = %550
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1084
  store i32 0, i32* @n_atoms, align 4, !dbg !1086, !tbaa !944
  br label %554, !dbg !1087

554:                                              ; preds = %553, %550
  %555 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %500) #10, !dbg !1088
  br label %556, !dbg !1089

556:                                              ; preds = %554, %546
  %557 = load i32, i32* @n_atoms, align 4, !dbg !1090, !tbaa !944
  %558 = sext i32 %557 to i64, !dbg !1091
  %559 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %558, !dbg !1091
  call void @llvm.dbg.value(metadata %struct.atom_t* %559, metadata !486, metadata !DIExpression()) #10, !dbg !1022
  call void @NAB_initatom(%struct.atom_t* nonnull %559, i32 0) #10, !dbg !1092
  %560 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %559, i64 0, i32 0, !dbg !1093
  %561 = load i8*, i8** %560, align 16, !dbg !1093, !tbaa !919
  %562 = call i8* @strcpy(i8* nonnull dereferenceable(1) %561, i8* nonnull %499) #10, !dbg !1094
  %563 = load i64, i64* %510, align 8, !dbg !1095, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !483, metadata !DIExpression()) #10, !dbg !1022
  %564 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %558, i32 17, !dbg !1096
  %565 = bitcast [3 x double]* %564 to i64*, !dbg !1097
  store i64 %563, i64* %565, align 16, !dbg !1097, !tbaa !974
  %566 = load i64, i64* %511, align 8, !dbg !1098, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !484, metadata !DIExpression()) #10, !dbg !1022
  %567 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %558, i32 17, i64 1, !dbg !1099
  %568 = bitcast double* %567 to i64*, !dbg !1100
  store i64 %566, i64* %568, align 8, !dbg !1100, !tbaa !974
  %569 = load i64, i64* %512, align 8, !dbg !1101, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !485, metadata !DIExpression()) #10, !dbg !1022
  %570 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %558, i32 17, i64 2, !dbg !1102
  %571 = bitcast double* %570 to i64*, !dbg !1103
  store i64 %569, i64* %571, align 16, !dbg !1103, !tbaa !974
  %572 = load i32, i32* @n_atoms, align 4, !dbg !1104, !tbaa !944
  %573 = add nsw i32 %572, 1, !dbg !1104
  store i32 %573, i32* @n_atoms, align 4, !dbg !1104, !tbaa !944
  br label %574, !dbg !1105

574:                                              ; preds = %556, %543, %539
  %575 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %292) #10, !dbg !1029
  %576 = icmp eq i8* %575, null, !dbg !1030
  br i1 %576, label %577, label %517, !dbg !1030, !llvm.loop !1106

577:                                              ; preds = %574, %497
  %578 = load i32, i32* @n_atoms, align 4, !dbg !1108, !tbaa !944
  %579 = icmp sgt i32 %578, 0, !dbg !1110
  br i1 %579, label %580, label %581, !dbg !1111

580:                                              ; preds = %577
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1112
  br label %581, !dbg !1112

581:                                              ; preds = %577, %580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %505) #10, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %504) #10, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %503) #10, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %502) #10, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %501) #10, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %500) #10, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %499) #10, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %498) #10, !dbg !1113
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1113
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !420, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !605, metadata !DIExpression()) #10, !dbg !1114
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !606, metadata !DIExpression()) #10, !dbg !1114
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1115
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1116
  %582 = bitcast i32* %10 to i8*, !dbg !1117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %582) #10, !dbg !1117
  %583 = bitcast i32* %11 to i8*, !dbg !1117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %583) #10, !dbg !1117
  store i32 0, i32* @n_bonds, align 4, !dbg !1118, !tbaa !944
  store i8 0, i8* %45, align 16, !dbg !1119, !tbaa !657
  %584 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %293) #10, !dbg !1120
  %585 = icmp eq i8* %584, null, !dbg !1121
  br i1 %585, label %629, label %586, !dbg !1121

586:                                              ; preds = %581, %626
  %587 = load i8, i8* %48, align 16, !dbg !1122, !tbaa !657
  %588 = icmp eq i8 %587, 35, !dbg !1125
  br i1 %588, label %589, label %607, !dbg !1126

589:                                              ; preds = %586
  %590 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1127
  %591 = icmp eq i32 %590, 1, !dbg !1130
  br i1 %591, label %600, label %592, !dbg !1131

592:                                              ; preds = %589
  %593 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1132
  %594 = trunc i64 %593 to i32, !dbg !1132
  %595 = add i32 %594, -1, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %595, metadata !608, metadata !DIExpression()) #10, !dbg !1114
  %596 = icmp slt i32 %595, 20, !dbg !1134
  %597 = select i1 %596, i32 %595, i32 20, !dbg !1134
  call void @llvm.dbg.value(metadata i32 %597, metadata !608, metadata !DIExpression()) #10, !dbg !1114
  %598 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %597, i32 %597, i8* nonnull %48) #10, !dbg !1135
  %599 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1136
  br label %633, !dbg !1137

600:                                              ; preds = %589
  %601 = load i32, i32* @n_bonds, align 4, !dbg !1138, !tbaa !944
  %602 = icmp sgt i32 %601, 0, !dbg !1140
  br i1 %602, label %603, label %605, !dbg !1141

603:                                              ; preds = %600
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1142
  %604 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1144
  store i32 0, i32* @n_bonds, align 4, !dbg !1145, !tbaa !944
  br label %626, !dbg !1146

605:                                              ; preds = %600
  %606 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1147
  br label %626

607:                                              ; preds = %586
  call void @llvm.dbg.value(metadata i32* %10, metadata !609, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1114
  call void @llvm.dbg.value(metadata i32* %11, metadata !610, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1114
  %608 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11) #10, !dbg !1148
  %609 = icmp eq i32 %608, 2, !dbg !1151
  br i1 %609, label %618, label %610, !dbg !1152

610:                                              ; preds = %607
  %611 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1153
  %612 = trunc i64 %611 to i32, !dbg !1153
  %613 = add i32 %612, -1, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %613, metadata !608, metadata !DIExpression()) #10, !dbg !1114
  %614 = icmp slt i32 %613, 20, !dbg !1155
  %615 = select i1 %614, i32 %613, i32 20, !dbg !1155
  call void @llvm.dbg.value(metadata i32 %615, metadata !608, metadata !DIExpression()) #10, !dbg !1114
  %616 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %615, i32 %615, i8* nonnull %48) #10, !dbg !1156
  %617 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1157
  br label %633, !dbg !1158

618:                                              ; preds = %607
  %619 = load i32, i32* %10, align 4, !dbg !1159, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %619, metadata !609, metadata !DIExpression()) #10, !dbg !1114
  %620 = load i32, i32* @n_bonds, align 4, !dbg !1161, !tbaa !944
  %621 = sext i32 %620 to i64, !dbg !1162
  %622 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %621, i64 0, !dbg !1162
  store i32 %619, i32* %622, align 8, !dbg !1163, !tbaa !944
  %623 = load i32, i32* %11, align 4, !dbg !1164, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %623, metadata !610, metadata !DIExpression()) #10, !dbg !1114
  %624 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %621, i64 1, !dbg !1165
  store i32 %623, i32* %624, align 4, !dbg !1166, !tbaa !944
  %625 = add nsw i32 %620, 1, !dbg !1167
  store i32 %625, i32* @n_bonds, align 4, !dbg !1167, !tbaa !944
  br label %626

626:                                              ; preds = %618, %605, %603
  %627 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %293) #10, !dbg !1120
  %628 = icmp eq i8* %627, null, !dbg !1121
  br i1 %628, label %629, label %586, !dbg !1121, !llvm.loop !1168

629:                                              ; preds = %626, %581
  %630 = load i32, i32* @n_bonds, align 4, !dbg !1170, !tbaa !944
  %631 = icmp sgt i32 %630, 0, !dbg !1172
  br i1 %631, label %632, label %633, !dbg !1173

632:                                              ; preds = %629
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1174
  br label %633, !dbg !1174

633:                                              ; preds = %592, %610, %629, %632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %583) #10, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %582) #10, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1175
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !416, metadata !DIExpression()), !dbg !635
  %634 = call i32 @fclose(%struct._IO_FILE* %292), !dbg !1176
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !420, metadata !DIExpression()), !dbg !635
  %635 = call i32 @fclose(%struct._IO_FILE* %293), !dbg !1177
  br label %636

636:                                              ; preds = %633, %496
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !421, metadata !DIExpression()), !dbg !635
  %637 = icmp eq %struct._IO_FILE* %294, null, !dbg !1178
  br i1 %637, label %695, label %638, !dbg !1179

638:                                              ; preds = %636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !456, metadata !DIExpression()) #10, !dbg !1180
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !457, metadata !DIExpression()) #10, !dbg !1180
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1181
  %639 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !1182
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %639) #10, !dbg !1182
  %640 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !1182
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %640) #10, !dbg !1182
  %641 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1182
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %641) #10, !dbg !1182
  %642 = bitcast i32* %6 to i8*, !dbg !1183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %642) #10, !dbg !1183
  %643 = bitcast i32* %7 to i8*, !dbg !1183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %643) #10, !dbg !1183
  %644 = bitcast double* %8 to i8*, !dbg !1184
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %644) #10, !dbg !1184
  %645 = bitcast double* %9 to i8*, !dbg !1184
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %645) #10, !dbg !1184
  store i32 0, i32* @n_atoms, align 4, !dbg !1185, !tbaa !944
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1186, !tbaa !657
  %646 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %294) #10, !dbg !1187
  %647 = icmp eq i8* %646, null, !dbg !1188
  br i1 %647, label %689, label %648, !dbg !1188

648:                                              ; preds = %638
  %649 = bitcast [256 x i8]* %41 to i32*, !dbg !1189
  %650 = bitcast double* %8 to i64*, !dbg !1193
  %651 = bitcast double* %9 to i64*, !dbg !1193
  br label %652, !dbg !1188

652:                                              ; preds = %686, %648
  %653 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* nonnull dereferenceable(3) %48, i64 3) #10, !dbg !1195
  %654 = icmp eq i32 %653, 0, !dbg !1196
  br i1 %654, label %686, label %655, !dbg !1197

655:                                              ; preds = %652
  %656 = load i32, i32* %649, align 16, !dbg !1198
  %657 = icmp eq i32 %656, 1297044545, !dbg !1198
  br i1 %657, label %661, label %658, !dbg !1199

658:                                              ; preds = %655
  %659 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1200
  %660 = icmp eq i32 %659, 0, !dbg !1201
  br i1 %660, label %661, label %686, !dbg !1202

661:                                              ; preds = %658, %655
  call void @llvm.dbg.value(metadata i32* %6, metadata !464, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1180
  call void @llvm.dbg.value(metadata i32* %7, metadata !465, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1180
  call void @llvm.dbg.value(metadata double* %8, metadata !466, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1180
  call void @llvm.dbg.value(metadata double* %9, metadata !467, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1180
  %662 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %639, i32* nonnull %6, i8* nonnull %640, i8* nonnull %641, i32* nonnull %7, double* nonnull %8, double* nonnull %9) #10, !dbg !1203
  %663 = call i32 @strcmp(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %641) #11, !dbg !1204
  %664 = icmp eq i32 %663, 0, !dbg !1206
  br i1 %664, label %671, label %665, !dbg !1207

665:                                              ; preds = %661
  %666 = load i32, i32* @n_atoms, align 4, !dbg !1208, !tbaa !944
  %667 = icmp sgt i32 %666, 0, !dbg !1211
  br i1 %667, label %668, label %669, !dbg !1212

668:                                              ; preds = %665
  call fastcc void @addqr2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1213
  store i32 0, i32* @n_atoms, align 4, !dbg !1215, !tbaa !944
  br label %669, !dbg !1216

669:                                              ; preds = %668, %665
  %670 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %641) #10, !dbg !1217
  br label %671, !dbg !1218

671:                                              ; preds = %669, %661
  %672 = load i32, i32* @n_atoms, align 4, !dbg !1219, !tbaa !944
  %673 = sext i32 %672 to i64, !dbg !1220
  %674 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %673, !dbg !1220
  call void @llvm.dbg.value(metadata %struct.atom_t* %674, metadata !468, metadata !DIExpression()) #10, !dbg !1180
  call void @NAB_initatom(%struct.atom_t* nonnull %674, i32 0) #10, !dbg !1221
  %675 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %674, i64 0, i32 0, !dbg !1222
  %676 = load i8*, i8** %675, align 16, !dbg !1222, !tbaa !919
  %677 = call i8* @strcpy(i8* nonnull dereferenceable(1) %676, i8* nonnull %640) #10, !dbg !1223
  %678 = load i64, i64* %650, align 8, !dbg !1224, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !466, metadata !DIExpression()) #10, !dbg !1180
  %679 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %673, i32 6, !dbg !1225
  %680 = bitcast double* %679 to i64*, !dbg !1226
  store i64 %678, i64* %680, align 16, !dbg !1226, !tbaa !977
  %681 = load i64, i64* %651, align 8, !dbg !1227, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !467, metadata !DIExpression()) #10, !dbg !1180
  %682 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %673, i32 7, !dbg !1228
  %683 = bitcast double* %682 to i64*, !dbg !1229
  store i64 %681, i64* %683, align 8, !dbg !1229, !tbaa !1230
  %684 = load i32, i32* @n_atoms, align 4, !dbg !1231, !tbaa !944
  %685 = add nsw i32 %684, 1, !dbg !1231
  store i32 %685, i32* @n_atoms, align 4, !dbg !1231, !tbaa !944
  br label %686, !dbg !1232

686:                                              ; preds = %671, %658, %652
  %687 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %294) #10, !dbg !1187
  %688 = icmp eq i8* %687, null, !dbg !1188
  br i1 %688, label %689, label %652, !dbg !1188, !llvm.loop !1233

689:                                              ; preds = %686, %638
  %690 = load i32, i32* @n_atoms, align 4, !dbg !1235, !tbaa !944
  %691 = icmp sgt i32 %690, 0, !dbg !1237
  br i1 %691, label %692, label %693, !dbg !1238

692:                                              ; preds = %689
  call fastcc void @addqr2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1239
  br label %693, !dbg !1239

693:                                              ; preds = %689, %692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %645) #10, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %644) #10, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %643) #10, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %642) #10, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %641) #10, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %640) #10, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %639) #10, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !421, metadata !DIExpression()), !dbg !635
  %694 = call i32 @fclose(%struct._IO_FILE* nonnull %294), !dbg !1241
  br label %695, !dbg !1242

695:                                              ; preds = %636, %693
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !422, metadata !DIExpression()), !dbg !635
  %696 = icmp eq %struct._IO_FILE* %295, null, !dbg !1243
  br i1 %696, label %836, label %697, !dbg !1244

697:                                              ; preds = %695
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !430, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !431, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1246
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1247
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %698 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %698) #10, !dbg !1248
  %699 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %699) #10, !dbg !1248
  %700 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %700) #10, !dbg !1248
  %701 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1248
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %701) #10, !dbg !1248
  store i32 0, i32* @n_chi, align 4, !dbg !1249, !tbaa !944
  store i8 0, i8* %45, align 16, !dbg !1250, !tbaa !657
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %702 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %295) #10, !dbg !1251
  %703 = icmp eq i8* %702, null, !dbg !1252
  br i1 %703, label %830, label %704, !dbg !1252

704:                                              ; preds = %697
  %705 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 4, !dbg !1253
  br label %706, !dbg !1252

706:                                              ; preds = %826, %704
  %707 = phi %struct.residue_t* [ null, %704 ], [ %827, %826 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %708 = load i8, i8* %48, align 16, !dbg !1260, !tbaa !657
  %709 = icmp eq i8 %708, 35, !dbg !1261
  br i1 %709, label %710, label %746, !dbg !1262

710:                                              ; preds = %706
  %711 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1263
  %712 = icmp eq i32 %711, 1, !dbg !1264
  br i1 %712, label %722, label %713, !dbg !1265

713:                                              ; preds = %710
  %714 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1266
  %715 = trunc i64 %714 to i32, !dbg !1266
  %716 = add i32 %715, -1, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %716, metadata !434, metadata !DIExpression()) #10, !dbg !1245
  %717 = icmp slt i32 %716, 20, !dbg !1268
  %718 = select i1 %717, i32 %716, i32 20, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %718, metadata !434, metadata !DIExpression()) #10, !dbg !1245
  %719 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %718, i32 %718, i8* nonnull %48) #10, !dbg !1269
  %720 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1270, !tbaa !380
  %721 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %720, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1271
  br label %834, !dbg !1272

722:                                              ; preds = %710
  %723 = load i32, i32* @n_chi, align 4, !dbg !1273, !tbaa !944
  %724 = icmp sgt i32 %723, 0, !dbg !1275
  br i1 %724, label %725, label %726, !dbg !1276

725:                                              ; preds = %722
  call fastcc void @addchi2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1277
  store i32 0, i32* @n_chi, align 4, !dbg !1279, !tbaa !944
  br label %726, !dbg !1280

726:                                              ; preds = %725, %722
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !436, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %727 = load %struct.residue_t*, %struct.residue_t** %705, align 8, !dbg !1253, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %727, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %728 = icmp eq %struct.residue_t* %727, null, !dbg !1281
  br i1 %728, label %739, label %729, !dbg !1281

729:                                              ; preds = %726, %735
  %730 = phi %struct.residue_t* [ %737, %735 ], [ %727, %726 ]
  %731 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %730, i64 0, i32 4, !dbg !1282
  %732 = load i8*, i8** %731, align 8, !dbg !1282, !tbaa !1286
  %733 = call i32 @strcmp(i8* nonnull dereferenceable(1) %732, i8* nonnull %45) #11, !dbg !1288
  %734 = icmp eq i32 %733, 0, !dbg !1288
  br i1 %734, label %744, label %735, !dbg !1289

735:                                              ; preds = %729
  %736 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %730, i64 0, i32 0, !dbg !1290
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %737 = load %struct.residue_t*, %struct.residue_t** %736, align 8, !dbg !1253, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %737, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %738 = icmp eq %struct.residue_t* %737, null, !dbg !1281
  br i1 %738, label %739, label %729, !dbg !1281, !llvm.loop !1291

739:                                              ; preds = %726, %735
  %740 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1293, !tbaa !380
  %741 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 1, !dbg !1296
  %742 = load i8*, i8** %741, align 8, !dbg !1296, !tbaa !389
  %743 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %740, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %45, i8* %742) #14, !dbg !1297
  br label %834, !dbg !1298

744:                                              ; preds = %729
  call void @llvm.dbg.value(metadata %struct.residue_t* %730, metadata !436, metadata !DIExpression()) #10, !dbg !1245
  %745 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1299
  br label %826, !dbg !1300

746:                                              ; preds = %706
  %747 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %698, i8* nonnull %699, i8* nonnull %700, i8* nonnull %701) #10, !dbg !1301
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !1303, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %698, metadata !1308, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  %748 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 15, !dbg !1313
  %749 = load i32, i32* %748, align 8, !dbg !1313, !tbaa !1316
  %750 = icmp sgt i32 %749, 0, !dbg !1317
  br i1 %750, label %751, label %764, !dbg !1318

751:                                              ; preds = %746
  %752 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 17, !dbg !1319
  %753 = load %struct.atom_t*, %struct.atom_t** %752, align 8, !dbg !1322, !tbaa !1323
  %754 = zext i32 %749 to i64, !dbg !1317
  br label %757, !dbg !1318

755:                                              ; preds = %757
  call void @llvm.dbg.value(metadata i64 %763, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  %756 = icmp eq i64 %763, %754, !dbg !1317
  br i1 %756, label %764, label %757, !dbg !1318, !llvm.loop !1324

757:                                              ; preds = %755, %751
  %758 = phi i64 [ 0, %751 ], [ %763, %755 ]
  call void @llvm.dbg.value(metadata i64 %758, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  %759 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %753, i64 %758, i32 0, !dbg !1326
  %760 = load i8*, i8** %759, align 8, !dbg !1326, !tbaa !919
  %761 = call i32 @strcmp(i8* nonnull dereferenceable(1) %760, i8* nonnull dereferenceable(1) %698) #11, !dbg !1327
  %762 = icmp eq i32 %761, 0, !dbg !1327
  %763 = add nuw nsw i64 %758, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %763, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  br i1 %762, label %769, label %755, !dbg !1329

764:                                              ; preds = %746, %755
  %765 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1330, !tbaa !380
  %766 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 4, !dbg !1332
  %767 = load i8*, i8** %766, align 8, !dbg !1332, !tbaa !1286
  %768 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %765, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %698, i8* %767) #14, !dbg !1333
  call void @exit(i32 1) #13, !dbg !1334
  unreachable, !dbg !1334

769:                                              ; preds = %757
  call void @llvm.dbg.value(metadata i64 %758, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %758, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %758, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %758, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %758, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %758, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %758, metadata !1309, metadata !DIExpression()) #10, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !444, metadata !DIExpression()) #10, !dbg !1245
  %770 = trunc i64 %758 to i32, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %770, metadata !440, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !1303, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %699, metadata !1308, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  br label %773, !dbg !1339

771:                                              ; preds = %773
  call void @llvm.dbg.value(metadata i64 %779, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  %772 = icmp eq i64 %779, %754, !dbg !1340
  br i1 %772, label %780, label %773, !dbg !1339, !llvm.loop !1341

773:                                              ; preds = %771, %769
  %774 = phi i64 [ 0, %769 ], [ %779, %771 ]
  call void @llvm.dbg.value(metadata i64 %774, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  %775 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %753, i64 %774, i32 0, !dbg !1343
  %776 = load i8*, i8** %775, align 8, !dbg !1343, !tbaa !919
  %777 = call i32 @strcmp(i8* nonnull dereferenceable(1) %776, i8* nonnull dereferenceable(1) %699) #11, !dbg !1344
  %778 = icmp eq i32 %777, 0, !dbg !1344
  %779 = add nuw nsw i64 %774, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %779, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  br i1 %778, label %785, label %771, !dbg !1346

780:                                              ; preds = %771
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %781 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1347, !tbaa !380
  %782 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 4, !dbg !1349
  %783 = load i8*, i8** %782, align 8, !dbg !1349, !tbaa !1286
  %784 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %781, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %699, i8* %783) #14, !dbg !1350
  call void @exit(i32 1) #13, !dbg !1351
  unreachable, !dbg !1351

785:                                              ; preds = %773
  call void @llvm.dbg.value(metadata i64 %774, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %774, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %774, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %774, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %774, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %774, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %774, metadata !1309, metadata !DIExpression()) #10, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !444, metadata !DIExpression()) #10, !dbg !1245
  %786 = trunc i64 %774 to i32, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %786, metadata !441, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !1303, metadata !DIExpression()) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %700, metadata !1308, metadata !DIExpression()) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()) #10, !dbg !1353
  br label %789, !dbg !1356

787:                                              ; preds = %789
  call void @llvm.dbg.value(metadata i64 %795, metadata !1309, metadata !DIExpression()) #10, !dbg !1353
  %788 = icmp eq i64 %795, %754, !dbg !1357
  br i1 %788, label %796, label %789, !dbg !1356, !llvm.loop !1358

789:                                              ; preds = %787, %785
  %790 = phi i64 [ 0, %785 ], [ %795, %787 ]
  call void @llvm.dbg.value(metadata i64 %790, metadata !1309, metadata !DIExpression()) #10, !dbg !1353
  %791 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %753, i64 %790, i32 0, !dbg !1360
  %792 = load i8*, i8** %791, align 8, !dbg !1360, !tbaa !919
  %793 = call i32 @strcmp(i8* nonnull dereferenceable(1) %792, i8* nonnull dereferenceable(1) %700) #11, !dbg !1361
  %794 = icmp eq i32 %793, 0, !dbg !1361
  %795 = add nuw nsw i64 %790, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %795, metadata !1309, metadata !DIExpression()) #10, !dbg !1353
  br i1 %794, label %803, label %787, !dbg !1363

796:                                              ; preds = %787
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %797 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1364, !tbaa !380
  %798 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 4, !dbg !1366
  %799 = load i8*, i8** %798, align 8, !dbg !1366, !tbaa !1286
  %800 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %797, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %700, i8* %799) #14, !dbg !1367
  call void @exit(i32 1) #13, !dbg !1368
  unreachable, !dbg !1368

801:                                              ; preds = %803
  call void @llvm.dbg.value(metadata i64 %809, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  %802 = icmp eq i64 %809, %754, !dbg !1372
  br i1 %802, label %810, label %803, !dbg !1373, !llvm.loop !1374

803:                                              ; preds = %789, %801
  %804 = phi i64 [ %809, %801 ], [ 0, %789 ]
  call void @llvm.dbg.value(metadata i64 %804, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  %805 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %753, i64 %804, i32 0, !dbg !1376
  %806 = load i8*, i8** %805, align 8, !dbg !1376, !tbaa !919
  %807 = call i32 @strcmp(i8* nonnull dereferenceable(1) %806, i8* nonnull dereferenceable(1) %701) #11, !dbg !1377
  %808 = icmp eq i32 %807, 0, !dbg !1377
  %809 = add nuw nsw i64 %804, 1, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %809, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  br i1 %808, label %815, label %801, !dbg !1379

810:                                              ; preds = %801
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %707, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %811 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1380, !tbaa !380
  %812 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %707, i64 0, i32 4, !dbg !1382
  %813 = load i8*, i8** %812, align 8, !dbg !1382, !tbaa !1286
  %814 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %811, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %701, i8* %813) #14, !dbg !1383
  call void @exit(i32 1) #13, !dbg !1384
  unreachable, !dbg !1384

815:                                              ; preds = %803
  call void @llvm.dbg.value(metadata i64 %804, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %804, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %804, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %804, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %804, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %804, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %804, metadata !1309, metadata !DIExpression()) #10, !dbg !1369
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !444, metadata !DIExpression()) #10, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %790, metadata !442, metadata !DIExpression(DW_OP_constu, 176, DW_OP_mul, DW_OP_constu, 176, DW_OP_div, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %790, metadata !442, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !1245
  %816 = trunc i64 %790 to i32, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %816, metadata !442, metadata !DIExpression()) #10, !dbg !1245
  %817 = trunc i64 %804 to i32, !dbg !1386
  call void @llvm.dbg.value(metadata i32 %817, metadata !443, metadata !DIExpression()) #10, !dbg !1245
  %818 = load i32, i32* @n_chi, align 4, !dbg !1387, !tbaa !944
  %819 = sext i32 %818 to i64, !dbg !1388
  call void @llvm.dbg.value(metadata %struct.chiral_t* undef, metadata !445, metadata !DIExpression()) #10, !dbg !1245
  %820 = add nsw i32 %818, 1, !dbg !1389
  store i32 %820, i32* @n_chi, align 4, !dbg !1389, !tbaa !944
  %821 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 0, i64 0, !dbg !1390
  store i32 %770, i32* %821, align 8, !dbg !1391, !tbaa !944
  %822 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 0, i64 1, !dbg !1392
  store i32 %786, i32* %822, align 4, !dbg !1393, !tbaa !944
  %823 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 0, i64 2, !dbg !1394
  store i32 %816, i32* %823, align 8, !dbg !1395, !tbaa !944
  %824 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 0, i64 3, !dbg !1396
  store i32 %817, i32* %824, align 4, !dbg !1397, !tbaa !944
  %825 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %819, i32 1, !dbg !1398
  store double 0.000000e+00, double* %825, align 8, !dbg !1399, !tbaa !1400
  br label %826

826:                                              ; preds = %815, %744
  %827 = phi %struct.residue_t* [ %730, %744 ], [ %707, %815 ], !dbg !1245
  call void @llvm.dbg.value(metadata %struct.residue_t* %827, metadata !435, metadata !DIExpression()) #10, !dbg !1245
  %828 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %295) #10, !dbg !1251
  %829 = icmp eq i8* %828, null, !dbg !1252
  br i1 %829, label %830, label %706, !dbg !1252, !llvm.loop !1402

830:                                              ; preds = %826, %697
  %831 = load i32, i32* @n_chi, align 4, !dbg !1404, !tbaa !944
  %832 = icmp sgt i32 %831, 0, !dbg !1406
  br i1 %832, label %833, label %834, !dbg !1407

833:                                              ; preds = %830
  call fastcc void @addchi2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1408
  store i32 0, i32* @n_chi, align 4, !dbg !1410, !tbaa !944
  br label %834, !dbg !1411

834:                                              ; preds = %713, %739, %830, %833
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %701) #10, !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %700) #10, !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %699) #10, !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %698) #10, !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1412
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !422, metadata !DIExpression()), !dbg !635
  %835 = call i32 @fclose(%struct._IO_FILE* nonnull %295), !dbg !1413
  br label %836, !dbg !1414

836:                                              ; preds = %834, %695, %291
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %43) #10, !dbg !1415
  ret %struct.reslib_t* %296, !dbg !1415
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* nocapture readonly %1) local_unnamed_addr #0 !dbg !1416 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1420, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8* %1, metadata !1421, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()) #10, !dbg !1425
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !1425
  %3 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1428, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %3, metadata !374, metadata !DIExpression()) #10, !dbg !1425
  %4 = icmp eq %struct.reslib_t* %3, null, !dbg !1429
  br i1 %4, label %15, label %5, !dbg !1429

5:                                                ; preds = %2, %11
  %6 = phi %struct.reslib_t* [ %13, %11 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %6, i64 0, i32 1, !dbg !1430
  %8 = load i8*, i8** %7, align 8, !dbg !1430, !tbaa !389
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) %0) #11, !dbg !1431
  %10 = icmp eq i32 %9, 0, !dbg !1432
  br i1 %10, label %21, label %11, !dbg !1433

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %6, i64 0, i32 0, !dbg !1434
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !1425
  %13 = load %struct.reslib_t*, %struct.reslib_t** %12, align 8, !dbg !1428, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %13, metadata !374, metadata !DIExpression()) #10, !dbg !1425
  %14 = icmp eq %struct.reslib_t* %13, null, !dbg !1429
  br i1 %14, label %15, label %5, !dbg !1429, !llvm.loop !1435

15:                                               ; preds = %11, %2
  %16 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %0), !dbg !1437
  call void @llvm.dbg.value(metadata %struct.reslib_t* %16, metadata !1423, metadata !DIExpression()), !dbg !1424
  %17 = icmp eq %struct.reslib_t* %16, null, !dbg !1440
  br i1 %17, label %18, label %21, !dbg !1441

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1442, !tbaa !380
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #12, !dbg !1444
  tail call void @exit(i32 1) #13, !dbg !1445
  unreachable, !dbg !1445

21:                                               ; preds = %5, %15
  %22 = phi %struct.reslib_t* [ %16, %15 ], [ %6, %5 ], !dbg !1446
  call void @llvm.dbg.value(metadata %struct.reslib_t* %22, metadata !1423, metadata !DIExpression()), !dbg !1424
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 2, !dbg !1447
  store i32 0, i32* %23, align 8, !dbg !1448, !tbaa !410
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !1449
  %25 = icmp eq i32 %24, 0, !dbg !1449
  br i1 %25, label %41, label %26, !dbg !1451

26:                                               ; preds = %21
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !1452
  %28 = icmp eq i32 %27, 0, !dbg !1452
  br i1 %28, label %41, label %29, !dbg !1453

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !1454
  %31 = icmp eq i32 %30, 0, !dbg !1454
  br i1 %31, label %41, label %32, !dbg !1456

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !1457
  %34 = icmp eq i32 %33, 0, !dbg !1457
  br i1 %34, label %41, label %35, !dbg !1458

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !1459
  %37 = icmp eq i32 %36, 0, !dbg !1459
  br i1 %37, label %41, label %38, !dbg !1461

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !1462
  %40 = icmp eq i32 %39, 0, !dbg !1462
  br i1 %40, label %41, label %43, !dbg !1463

41:                                               ; preds = %35, %38, %29, %32, %21, %26
  %42 = phi i32 [ 1, %26 ], [ 1, %21 ], [ 2, %32 ], [ 2, %29 ], [ 3, %38 ], [ 3, %35 ]
  store i32 %42, i32* %23, align 8, !dbg !1464, !tbaa !410
  br label %43, !dbg !1465

43:                                               ; preds = %41, %38
  %44 = phi i32 [ 0, %38 ], [ %42, %41 ], !dbg !1466
  ret i32 %44, !dbg !1465
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1467 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1471, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %1, metadata !1472, metadata !DIExpression()), !dbg !1481
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !1482
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %4) #10, !dbg !1482
  call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !1474, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8* %1, metadata !369, metadata !DIExpression()) #10, !dbg !1484
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !1484
  %5 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1487, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %5, metadata !374, metadata !DIExpression()) #10, !dbg !1484
  %6 = icmp eq %struct.reslib_t* %5, null, !dbg !1488
  br i1 %6, label %17, label %7, !dbg !1488

7:                                                ; preds = %2, %13
  %8 = phi %struct.reslib_t* [ %15, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %8, i64 0, i32 1, !dbg !1489
  %10 = load i8*, i8** %9, align 8, !dbg !1489, !tbaa !389
  %11 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %10, i8* nonnull dereferenceable(1) %1) #11, !dbg !1490
  %12 = icmp eq i32 %11, 0, !dbg !1491
  br i1 %12, label %21, label %13, !dbg !1492

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %8, i64 0, i32 0, !dbg !1493
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !1484
  %15 = load %struct.reslib_t*, %struct.reslib_t** %14, align 8, !dbg !1487, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %15, metadata !374, metadata !DIExpression()) #10, !dbg !1484
  %16 = icmp eq %struct.reslib_t* %15, null, !dbg !1488
  br i1 %16, label %17, label %7, !dbg !1488, !llvm.loop !1494

17:                                               ; preds = %13, %2
  %18 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %1), !dbg !1496
  call void @llvm.dbg.value(metadata %struct.reslib_t* %18, metadata !1478, metadata !DIExpression()), !dbg !1481
  %19 = icmp eq %struct.reslib_t* %18, null, !dbg !1499
  br i1 %19, label %20, label %21, !dbg !1500

20:                                               ; preds = %17
  tail call void @exit(i32 1) #13, !dbg !1501
  unreachable, !dbg !1501

21:                                               ; preds = %7, %17
  %22 = phi %struct.reslib_t* [ %18, %17 ], [ %8, %7 ], !dbg !1503
  call void @llvm.dbg.value(metadata %struct.reslib_t* %22, metadata !1478, metadata !DIExpression()), !dbg !1481
  %23 = call i8* @strcpy(i8* nonnull %4, i8* nonnull dereferenceable(1) %0) #10, !dbg !1504
  %24 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 2, !dbg !1505
  %25 = load i32, i32* %24, align 8, !dbg !1505, !tbaa !410
  switch i32 %25, label %58 [
    i32 1, label %26
    i32 2, label %42
  ], !dbg !1507

26:                                               ; preds = %21
  %27 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #11, !dbg !1508
  %28 = icmp eq i32 %27, 0, !dbg !1508
  br i1 %28, label %29, label %30, !dbg !1511

29:                                               ; preds = %26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1512
  br label %58, !dbg !1512

30:                                               ; preds = %26
  %31 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #11, !dbg !1513
  %32 = icmp eq i32 %31, 0, !dbg !1513
  br i1 %32, label %33, label %34, !dbg !1515

33:                                               ; preds = %30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1516
  br label %58, !dbg !1516

34:                                               ; preds = %30
  %35 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #11, !dbg !1517
  %36 = icmp eq i32 %35, 0, !dbg !1517
  br i1 %36, label %37, label %38, !dbg !1519

37:                                               ; preds = %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1520
  br label %58, !dbg !1520

38:                                               ; preds = %34
  %39 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #11, !dbg !1521
  %40 = icmp eq i32 %39, 0, !dbg !1521
  br i1 %40, label %41, label %58, !dbg !1523

41:                                               ; preds = %38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1524
  br label %58, !dbg !1524

42:                                               ; preds = %21
  %43 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #11, !dbg !1525
  %44 = icmp eq i32 %43, 0, !dbg !1525
  br i1 %44, label %45, label %46, !dbg !1529

45:                                               ; preds = %42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1530
  br label %58, !dbg !1530

46:                                               ; preds = %42
  %47 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #11, !dbg !1531
  %48 = icmp eq i32 %47, 0, !dbg !1531
  br i1 %48, label %49, label %50, !dbg !1533

49:                                               ; preds = %46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1534
  br label %58, !dbg !1534

50:                                               ; preds = %46
  %51 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #11, !dbg !1535
  %52 = icmp eq i32 %51, 0, !dbg !1535
  br i1 %52, label %53, label %54, !dbg !1537

53:                                               ; preds = %50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1538
  br label %58, !dbg !1538

54:                                               ; preds = %50
  %55 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #11, !dbg !1539
  %56 = icmp eq i32 %55, 0, !dbg !1539
  br i1 %56, label %57, label %58, !dbg !1541

57:                                               ; preds = %54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1542
  br label %58, !dbg !1542

58:                                               ; preds = %21, %38, %54, %49, %57, %53, %45, %29, %37, %41, %33
  %59 = call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 51), !dbg !1543
  %60 = icmp eq i8* %59, null, !dbg !1545
  br i1 %60, label %61, label %64, !dbg !1546

61:                                               ; preds = %58
  %62 = call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 53), !dbg !1547
  %63 = icmp eq i8* %62, null, !dbg !1549
  br i1 %63, label %69, label %64, !dbg !1550

64:                                               ; preds = %61, %58
  %65 = phi i16 [ 51, %58 ], [ 53, %61 ]
  %66 = call i64 @strlen(i8* nonnull %4), !dbg !1551
  %67 = getelementptr [5 x i8], [5 x i8]* %3, i64 0, i64 %66, !dbg !1551
  %68 = bitcast i8* %67 to i16*, !dbg !1551
  store i16 %65, i16* %68, align 1, !dbg !1551
  br label %69, !dbg !1552

69:                                               ; preds = %64, %61
  %70 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 4, !dbg !1552
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1479, metadata !DIExpression()), !dbg !1481
  %71 = load %struct.residue_t*, %struct.residue_t** %70, align 8, !dbg !1554, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %71, metadata !1479, metadata !DIExpression()), !dbg !1481
  %72 = icmp eq %struct.residue_t* %71, null, !dbg !1555
  br i1 %72, label %86, label %73, !dbg !1555

73:                                               ; preds = %69, %82
  %74 = phi %struct.residue_t* [ %84, %82 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %74, i64 0, i32 4, !dbg !1556
  %76 = load i8*, i8** %75, align 8, !dbg !1556, !tbaa !1286
  %77 = call i32 @strcmp(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) %0) #11, !dbg !1560
  %78 = icmp eq i32 %77, 0, !dbg !1561
  br i1 %78, label %89, label %79, !dbg !1562

79:                                               ; preds = %73
  %80 = call i32 @strcmp(i8* nonnull dereferenceable(1) %76, i8* nonnull %4) #11, !dbg !1563
  %81 = icmp eq i32 %80, 0, !dbg !1564
  br i1 %81, label %89, label %82, !dbg !1565

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %74, i64 0, i32 0, !dbg !1566
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1479, metadata !DIExpression()), !dbg !1481
  %84 = load %struct.residue_t*, %struct.residue_t** %83, align 8, !dbg !1554, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %84, metadata !1479, metadata !DIExpression()), !dbg !1481
  %85 = icmp eq %struct.residue_t* %84, null, !dbg !1555
  br i1 %85, label %86, label %73, !dbg !1555, !llvm.loop !1567

86:                                               ; preds = %82, %69
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %0, i8* %1) #10, !dbg !1569
  %88 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1572
  br label %91, !dbg !1573

89:                                               ; preds = %79, %73
  %90 = call %struct.residue_t* @copyresidue(%struct.residue_t* nonnull %74), !dbg !1574
  call void @llvm.dbg.value(metadata %struct.residue_t* %90, metadata !1480, metadata !DIExpression()), !dbg !1481
  br label %91, !dbg !1575

91:                                               ; preds = %89, %86
  %92 = phi %struct.residue_t* [ null, %86 ], [ %90, %89 ], !dbg !1481
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %4) #10, !dbg !1576
  ret %struct.residue_t* %92, !dbg !1576
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
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) local_unnamed_addr #0 !dbg !1577 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1581, metadata !DIExpression()), !dbg !1593
  %2 = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #10, !dbg !1594
  %3 = bitcast i8* %2 to %struct.residue_t*, !dbg !1596
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !1587, metadata !DIExpression()), !dbg !1593
  %4 = icmp eq i8* %2, null, !dbg !1597
  br i1 %4, label %5, label %10, !dbg !1598

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1599
  %7 = load i8*, i8** %6, align 8, !dbg !1599, !tbaa !1286
  %8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %7) #10, !dbg !1601
  %9 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1602
  br label %489, !dbg !1603

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !1604
  %12 = load i32, i32* %11, align 8, !dbg !1604, !tbaa !1316
  %13 = sext i32 %12 to i64, !dbg !1606
  %14 = mul nsw i64 %13, 176, !dbg !1607
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !1608
  %16 = bitcast i8* %15 to %struct.atom_t*, !dbg !1609
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !1588, metadata !DIExpression()), !dbg !1593
  %17 = icmp eq i8* %15, null, !dbg !1610
  br i1 %17, label %18, label %23, !dbg !1611

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1612
  %20 = load i8*, i8** %19, align 8, !dbg !1612, !tbaa !1286
  %21 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %20) #10, !dbg !1614
  %22 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1615
  br label %489, !dbg !1616

23:                                               ; preds = %10
  %24 = shl nsw i64 %13, 2, !dbg !1617
  %25 = tail call noalias i8* @malloc(i64 %24) #10, !dbg !1619
  call void @llvm.dbg.value(metadata i8* %25, metadata !1586, metadata !DIExpression()), !dbg !1593
  %26 = icmp eq i8* %25, null, !dbg !1620
  br i1 %26, label %27, label %32, !dbg !1621

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1622
  %29 = load i8*, i8** %28, align 8, !dbg !1622, !tbaa !1286
  %30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %29) #10, !dbg !1624
  %31 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1625
  br label %489, !dbg !1626

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !1627
  %34 = load i32, i32* %33, align 8, !dbg !1627, !tbaa !1629
  %35 = icmp sgt i32 %34, 0, !dbg !1630
  br i1 %35, label %36, label %47, !dbg !1631

36:                                               ; preds = %32
  %37 = zext i32 %34 to i64, !dbg !1632
  %38 = shl nuw nsw i64 %37, 3, !dbg !1635
  %39 = tail call noalias i8* @malloc(i64 %38) #10, !dbg !1636
  %40 = bitcast i8* %39 to [2 x i32]*, !dbg !1637
  call void @llvm.dbg.value(metadata [2 x i32]* %40, metadata !1591, metadata !DIExpression()), !dbg !1593
  %41 = icmp eq i8* %39, null, !dbg !1638
  br i1 %41, label %42, label %47, !dbg !1639

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1640
  %44 = load i8*, i8** %43, align 8, !dbg !1640, !tbaa !1286
  %45 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %44) #10, !dbg !1642
  %46 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1643
  br label %489, !dbg !1644

47:                                               ; preds = %32, %36
  %48 = phi [2 x i32]* [ %40, %36 ], [ null, %32 ], !dbg !1645
  call void @llvm.dbg.value(metadata [2 x i32]* %48, metadata !1591, metadata !DIExpression()), !dbg !1593
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !1646
  %50 = load i32, i32* %49, align 8, !dbg !1646, !tbaa !1648
  %51 = icmp sgt i32 %50, 0, !dbg !1649
  br i1 %51, label %52, label %63, !dbg !1650

52:                                               ; preds = %47
  %53 = zext i32 %50 to i64, !dbg !1651
  %54 = mul nuw nsw i64 %53, 24, !dbg !1654
  %55 = tail call noalias i8* @malloc(i64 %54) #10, !dbg !1655
  %56 = bitcast i8* %55 to %struct.chiral_t*, !dbg !1656
  call void @llvm.dbg.value(metadata %struct.chiral_t* %56, metadata !1592, metadata !DIExpression()), !dbg !1593
  %57 = icmp eq i8* %55, null, !dbg !1657
  br i1 %57, label %58, label %63, !dbg !1658

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1659
  %60 = load i8*, i8** %59, align 8, !dbg !1659, !tbaa !1286
  %61 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %60) #10, !dbg !1661
  %62 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1662
  br label %489, !dbg !1663

63:                                               ; preds = %47, %52
  %64 = phi %struct.chiral_t* [ %56, %52 ], [ null, %47 ], !dbg !1664
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !1592, metadata !DIExpression()), !dbg !1593
  %65 = bitcast i8* %2 to %struct.residue_t**, !dbg !1665
  store %struct.residue_t* null, %struct.residue_t** %65, align 8, !dbg !1666, !tbaa !1667
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1668
  %67 = load i8*, i8** %66, align 8, !dbg !1668, !tbaa !1286
  %68 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %67) #11, !dbg !1669
  %69 = add i64 %68, 1, !dbg !1670
  %70 = tail call noalias i8* @malloc(i64 %69) #10, !dbg !1671
  call void @llvm.dbg.value(metadata i8* %70, metadata !1590, metadata !DIExpression()), !dbg !1593
  %71 = icmp eq i8* %70, null, !dbg !1672
  br i1 %71, label %72, label %75, !dbg !1674

72:                                               ; preds = %63
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1675, !tbaa !380
  %74 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %73) #12, !dbg !1677
  tail call void @exit(i32 1) #13, !dbg !1678
  unreachable, !dbg !1678

75:                                               ; preds = %63
  %76 = tail call i8* @strcpy(i8* nonnull %70, i8* nonnull dereferenceable(1) %67) #10, !dbg !1679
  %77 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1680
  %78 = bitcast i8* %77 to i8**, !dbg !1680
  store i8* %70, i8** %78, align 8, !dbg !1681, !tbaa !1286
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !1682
  %80 = load i8*, i8** %79, align 8, !dbg !1682, !tbaa !1683
  %81 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %80) #11, !dbg !1684
  %82 = add i64 %81, 1, !dbg !1685
  %83 = tail call noalias i8* @malloc(i64 %82) #10, !dbg !1686
  call void @llvm.dbg.value(metadata i8* %83, metadata !1590, metadata !DIExpression()), !dbg !1593
  %84 = icmp eq i8* %83, null, !dbg !1687
  br i1 %84, label %85, label %88, !dbg !1689

85:                                               ; preds = %75
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1690, !tbaa !380
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %86) #12, !dbg !1692
  tail call void @exit(i32 1) #13, !dbg !1693
  unreachable, !dbg !1693

88:                                               ; preds = %75
  %89 = tail call i8* @strcpy(i8* nonnull %83, i8* nonnull dereferenceable(1) %80) #10, !dbg !1694
  %90 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1695
  %91 = bitcast i8* %90 to i8**, !dbg !1695
  store i8* %83, i8** %91, align 8, !dbg !1696, !tbaa !1683
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !1697
  %93 = load i32, i32* %92, align 8, !dbg !1697, !tbaa !1698
  %94 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1699
  %95 = bitcast i8* %94 to i32*, !dbg !1699
  store i32 %93, i32* %95, align 8, !dbg !1700, !tbaa !1698
  %96 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1701
  %97 = bitcast i8* %96 to i32*, !dbg !1701
  store i32 0, i32* %97, align 4, !dbg !1702, !tbaa !1703
  %98 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1704
  %99 = bitcast i8* %98 to i32*, !dbg !1704
  store i32 0, i32* %99, align 8, !dbg !1705, !tbaa !1706
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !1707
  %101 = load i32, i32* %100, align 8, !dbg !1707, !tbaa !1708
  %102 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1709
  %103 = bitcast i8* %102 to i32*, !dbg !1709
  store i32 %101, i32* %103, align 8, !dbg !1710, !tbaa !1708
  %104 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !1711
  %105 = bitcast i8* %104 to %struct.strand_t**, !dbg !1711
  store %struct.strand_t* null, %struct.strand_t** %105, align 8, !dbg !1712, !tbaa !1713
  %106 = tail call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* nonnull %0) #10, !dbg !1714
  %107 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !1715
  %108 = bitcast i8* %107 to %struct.extbond_t**, !dbg !1715
  store %struct.extbond_t* %106, %struct.extbond_t** %108, align 8, !dbg !1716, !tbaa !1717
  %109 = load i32, i32* %33, align 8, !dbg !1718, !tbaa !1629
  %110 = getelementptr inbounds i8, i8* %2, i64 72, !dbg !1719
  %111 = bitcast i8* %110 to i32*, !dbg !1719
  store i32 %109, i32* %111, align 8, !dbg !1720, !tbaa !1629
  %112 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !1721
  %113 = bitcast i8* %112 to [2 x i32]**, !dbg !1721
  store [2 x i32]* %48, [2 x i32]** %113, align 8, !dbg !1722, !tbaa !1723
  call void @llvm.dbg.value(metadata i32 0, metadata !1583, metadata !DIExpression()), !dbg !1593
  %114 = icmp sgt i32 %109, 0, !dbg !1724
  br i1 %114, label %115, label %152, !dbg !1727

115:                                              ; preds = %88
  %116 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !1728
  %117 = load [2 x i32]*, [2 x i32]** %116, align 8, !dbg !1728, !tbaa !1723
  %118 = zext i32 %109 to i64, !dbg !1727
  %119 = and i64 %118, 1, !dbg !1727
  %120 = icmp eq i32 %109, 1, !dbg !1727
  br i1 %120, label %142, label %121, !dbg !1727

121:                                              ; preds = %115
  %122 = sub nsw i64 %118, %119, !dbg !1727
  br label %123, !dbg !1727

123:                                              ; preds = %123, %121
  %124 = phi i64 [ 0, %121 ], [ %139, %123 ]
  %125 = phi i64 [ %122, %121 ], [ %140, %123 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1583, metadata !DIExpression()), !dbg !1593
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %124, i64 0, !dbg !1730
  %127 = load i32, i32* %126, align 4, !dbg !1730, !tbaa !944
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %124, i64 0, !dbg !1731
  store i32 %127, i32* %128, align 4, !dbg !1732, !tbaa !944
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %124, i64 1, !dbg !1733
  %130 = load i32, i32* %129, align 4, !dbg !1733, !tbaa !944
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %124, i64 1, !dbg !1734
  store i32 %130, i32* %131, align 4, !dbg !1735, !tbaa !944
  %132 = or i64 %124, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %132, metadata !1583, metadata !DIExpression()), !dbg !1593
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %132, i64 0, !dbg !1730
  %134 = load i32, i32* %133, align 4, !dbg !1730, !tbaa !944
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %132, i64 0, !dbg !1731
  store i32 %134, i32* %135, align 4, !dbg !1732, !tbaa !944
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %132, i64 1, !dbg !1733
  %137 = load i32, i32* %136, align 4, !dbg !1733, !tbaa !944
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %132, i64 1, !dbg !1734
  store i32 %137, i32* %138, align 4, !dbg !1735, !tbaa !944
  %139 = add nuw nsw i64 %124, 2, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %139, metadata !1583, metadata !DIExpression()), !dbg !1593
  %140 = add i64 %125, -2, !dbg !1727
  %141 = icmp eq i64 %140, 0, !dbg !1727
  br i1 %141, label %142, label %123, !dbg !1727, !llvm.loop !1737

142:                                              ; preds = %123, %115
  %143 = phi i64 [ 0, %115 ], [ %139, %123 ]
  %144 = icmp eq i64 %119, 0, !dbg !1727
  br i1 %144, label %152, label %145, !dbg !1727

145:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i64 %143, metadata !1583, metadata !DIExpression()), !dbg !1593
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %143, i64 0, !dbg !1730
  %147 = load i32, i32* %146, align 4, !dbg !1730, !tbaa !944
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %143, i64 0, !dbg !1731
  store i32 %147, i32* %148, align 4, !dbg !1732, !tbaa !944
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %143, i64 1, !dbg !1733
  %150 = load i32, i32* %149, align 4, !dbg !1733, !tbaa !944
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %143, i64 1, !dbg !1734
  store i32 %150, i32* %151, align 4, !dbg !1735, !tbaa !944
  call void @llvm.dbg.value(metadata i64 %143, metadata !1583, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1593
  br label %152, !dbg !1739

152:                                              ; preds = %145, %142, %88
  %153 = load i32, i32* %49, align 8, !dbg !1739, !tbaa !1648
  %154 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !1740
  %155 = bitcast i8* %154 to i32*, !dbg !1740
  store i32 %153, i32* %155, align 8, !dbg !1741, !tbaa !1648
  %156 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !1742
  %157 = bitcast i8* %156 to %struct.chiral_t**, !dbg !1742
  store %struct.chiral_t* %64, %struct.chiral_t** %157, align 8, !dbg !1743, !tbaa !1744
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !1592, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 0, metadata !1584, metadata !DIExpression()), !dbg !1593
  %158 = icmp sgt i32 %153, 0, !dbg !1745
  br i1 %158, label %159, label %187, !dbg !1748

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !1749
  %161 = load %struct.chiral_t*, %struct.chiral_t** %160, align 8, !dbg !1749, !tbaa !1744
  br label %162, !dbg !1748

162:                                              ; preds = %159, %162
  %163 = phi i64 [ 0, %159 ], [ %182, %162 ]
  %164 = phi %struct.chiral_t* [ %64, %159 ], [ %183, %162 ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %164, metadata !1592, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 %163, metadata !1584, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i64 0, metadata !1582, metadata !DIExpression()), !dbg !1593
  %165 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 0, i64 0, !dbg !1751
  %166 = load i32, i32* %165, align 4, !dbg !1751, !tbaa !944
  %167 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 0, i64 0, !dbg !1754
  store i32 %166, i32* %167, align 4, !dbg !1755, !tbaa !944
  call void @llvm.dbg.value(metadata i64 1, metadata !1582, metadata !DIExpression()), !dbg !1593
  %168 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 0, i64 1, !dbg !1751
  %169 = load i32, i32* %168, align 4, !dbg !1751, !tbaa !944
  %170 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 0, i64 1, !dbg !1754
  store i32 %169, i32* %170, align 4, !dbg !1755, !tbaa !944
  call void @llvm.dbg.value(metadata i64 2, metadata !1582, metadata !DIExpression()), !dbg !1593
  %171 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 0, i64 2, !dbg !1751
  %172 = load i32, i32* %171, align 4, !dbg !1751, !tbaa !944
  %173 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 0, i64 2, !dbg !1754
  store i32 %172, i32* %173, align 4, !dbg !1755, !tbaa !944
  call void @llvm.dbg.value(metadata i64 3, metadata !1582, metadata !DIExpression()), !dbg !1593
  %174 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 0, i64 3, !dbg !1751
  %175 = load i32, i32* %174, align 4, !dbg !1751, !tbaa !944
  %176 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 0, i64 3, !dbg !1754
  store i32 %175, i32* %176, align 4, !dbg !1755, !tbaa !944
  call void @llvm.dbg.value(metadata i64 4, metadata !1582, metadata !DIExpression()), !dbg !1593
  %177 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i64 %163, i32 1, !dbg !1756
  %178 = bitcast double* %177 to i64*, !dbg !1756
  %179 = load i64, i64* %178, align 8, !dbg !1756, !tbaa !1400
  %180 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 0, i32 1, !dbg !1757
  %181 = bitcast double* %180 to i64*, !dbg !1758
  store i64 %179, i64* %181, align 8, !dbg !1758, !tbaa !1400
  %182 = add nuw nsw i64 %163, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %182, metadata !1584, metadata !DIExpression()), !dbg !1593
  %183 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %164, i64 1, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.chiral_t* %183, metadata !1592, metadata !DIExpression()), !dbg !1593
  %184 = load i32, i32* %49, align 8, !dbg !1761, !tbaa !1648
  %185 = sext i32 %184 to i64, !dbg !1745
  %186 = icmp slt i64 %182, %185, !dbg !1745
  br i1 %186, label %162, label %187, !dbg !1748, !llvm.loop !1762

187:                                              ; preds = %162, %152
  %188 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !1764
  %189 = load i32, i32* %188, align 4, !dbg !1764, !tbaa !1765
  %190 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !1766
  %191 = bitcast i8* %190 to i32*, !dbg !1766
  store i32 %189, i32* %191, align 4, !dbg !1767, !tbaa !1765
  %192 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !1768
  %193 = load i32, i32* %192, align 8, !dbg !1768, !tbaa !1769
  %194 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !1770
  %195 = bitcast i8* %194 to i32*, !dbg !1770
  store i32 %193, i32* %195, align 8, !dbg !1771, !tbaa !1769
  %196 = load i32, i32* %11, align 8, !dbg !1772, !tbaa !1316
  %197 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !1773
  %198 = bitcast i8* %197 to i32*, !dbg !1773
  store i32 %196, i32* %198, align 8, !dbg !1774, !tbaa !1316
  %199 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !1775
  %200 = bitcast i8* %199 to i8**, !dbg !1776
  store i8* %25, i8** %200, align 8, !dbg !1776, !tbaa !1777
  %201 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !1778
  %202 = load i32*, i32** %201, align 8, !dbg !1778, !tbaa !1777
  %203 = bitcast i32* %202 to i8*
  %204 = icmp eq i32* %202, null, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1582, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 0, metadata !1582, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 0, metadata !1582, metadata !DIExpression()), !dbg !1593
  %205 = icmp sgt i32 %196, 0, !dbg !1781
  %206 = bitcast i8* %25 to i32*, !dbg !1782
  br i1 %204, label %300, label %207, !dbg !1782

207:                                              ; preds = %187
  br i1 %205, label %208, label %381, !dbg !1783

208:                                              ; preds = %207
  %209 = sext i32 %196 to i64, !dbg !1786
  %210 = icmp ult i32 %196, 8, !dbg !1783
  br i1 %210, label %211, label %213, !dbg !1783

211:                                              ; preds = %298, %213, %208
  %212 = phi i64 [ 0, %213 ], [ 0, %208 ], [ %222, %298 ]
  br label %368, !dbg !1783

213:                                              ; preds = %208
  %214 = shl nsw i64 %209, 2, !dbg !1783
  %215 = getelementptr i8, i8* %25, i64 %214, !dbg !1783
  %216 = getelementptr i32, i32* %202, i64 %209, !dbg !1783
  %217 = bitcast i32* %216 to i8*
  %218 = icmp ult i8* %25, %217, !dbg !1783
  %219 = icmp ugt i8* %215, %203, !dbg !1783
  %220 = and i1 %218, %219, !dbg !1783
  br i1 %220, label %211, label %221, !dbg !1783

221:                                              ; preds = %213
  %222 = and i64 %209, -8, !dbg !1783
  %223 = add nsw i64 %222, -8, !dbg !1783
  %224 = lshr exact i64 %223, 3, !dbg !1783
  %225 = add nuw nsw i64 %224, 1, !dbg !1783
  %226 = and i64 %225, 3, !dbg !1783
  %227 = icmp ult i64 %223, 24, !dbg !1783
  br i1 %227, label %279, label %228, !dbg !1783

228:                                              ; preds = %221
  %229 = sub nsw i64 %225, %226, !dbg !1783
  br label %230, !dbg !1783

230:                                              ; preds = %230, %228
  %231 = phi i64 [ 0, %228 ], [ %276, %230 ], !dbg !1788
  %232 = phi i64 [ %229, %228 ], [ %277, %230 ]
  %233 = getelementptr inbounds i32, i32* %202, i64 %231, !dbg !1789
  %234 = bitcast i32* %233 to <4 x i32>*, !dbg !1789
  %235 = load <4 x i32>, <4 x i32>* %234, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %236 = getelementptr inbounds i32, i32* %233, i64 4, !dbg !1789
  %237 = bitcast i32* %236 to <4 x i32>*, !dbg !1789
  %238 = load <4 x i32>, <4 x i32>* %237, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %239 = getelementptr inbounds i32, i32* %206, i64 %231, !dbg !1793
  %240 = bitcast i32* %239 to <4 x i32>*, !dbg !1794
  store <4 x i32> %235, <4 x i32>* %240, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %241 = getelementptr inbounds i32, i32* %239, i64 4, !dbg !1794
  %242 = bitcast i32* %241 to <4 x i32>*, !dbg !1794
  store <4 x i32> %238, <4 x i32>* %242, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %243 = or i64 %231, 8, !dbg !1788
  %244 = getelementptr inbounds i32, i32* %202, i64 %243, !dbg !1789
  %245 = bitcast i32* %244 to <4 x i32>*, !dbg !1789
  %246 = load <4 x i32>, <4 x i32>* %245, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %247 = getelementptr inbounds i32, i32* %244, i64 4, !dbg !1789
  %248 = bitcast i32* %247 to <4 x i32>*, !dbg !1789
  %249 = load <4 x i32>, <4 x i32>* %248, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %250 = getelementptr inbounds i32, i32* %206, i64 %243, !dbg !1793
  %251 = bitcast i32* %250 to <4 x i32>*, !dbg !1794
  store <4 x i32> %246, <4 x i32>* %251, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %252 = getelementptr inbounds i32, i32* %250, i64 4, !dbg !1794
  %253 = bitcast i32* %252 to <4 x i32>*, !dbg !1794
  store <4 x i32> %249, <4 x i32>* %253, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %254 = or i64 %231, 16, !dbg !1788
  %255 = getelementptr inbounds i32, i32* %202, i64 %254, !dbg !1789
  %256 = bitcast i32* %255 to <4 x i32>*, !dbg !1789
  %257 = load <4 x i32>, <4 x i32>* %256, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %258 = getelementptr inbounds i32, i32* %255, i64 4, !dbg !1789
  %259 = bitcast i32* %258 to <4 x i32>*, !dbg !1789
  %260 = load <4 x i32>, <4 x i32>* %259, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %261 = getelementptr inbounds i32, i32* %206, i64 %254, !dbg !1793
  %262 = bitcast i32* %261 to <4 x i32>*, !dbg !1794
  store <4 x i32> %257, <4 x i32>* %262, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %263 = getelementptr inbounds i32, i32* %261, i64 4, !dbg !1794
  %264 = bitcast i32* %263 to <4 x i32>*, !dbg !1794
  store <4 x i32> %260, <4 x i32>* %264, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %265 = or i64 %231, 24, !dbg !1788
  %266 = getelementptr inbounds i32, i32* %202, i64 %265, !dbg !1789
  %267 = bitcast i32* %266 to <4 x i32>*, !dbg !1789
  %268 = load <4 x i32>, <4 x i32>* %267, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %269 = getelementptr inbounds i32, i32* %266, i64 4, !dbg !1789
  %270 = bitcast i32* %269 to <4 x i32>*, !dbg !1789
  %271 = load <4 x i32>, <4 x i32>* %270, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %272 = getelementptr inbounds i32, i32* %206, i64 %265, !dbg !1793
  %273 = bitcast i32* %272 to <4 x i32>*, !dbg !1794
  store <4 x i32> %268, <4 x i32>* %273, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %274 = getelementptr inbounds i32, i32* %272, i64 4, !dbg !1794
  %275 = bitcast i32* %274 to <4 x i32>*, !dbg !1794
  store <4 x i32> %271, <4 x i32>* %275, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %276 = add i64 %231, 32, !dbg !1788
  %277 = add i64 %232, -4, !dbg !1788
  %278 = icmp eq i64 %277, 0, !dbg !1788
  br i1 %278, label %279, label %230, !dbg !1788, !llvm.loop !1797

279:                                              ; preds = %230, %221
  %280 = phi i64 [ 0, %221 ], [ %276, %230 ]
  %281 = icmp eq i64 %226, 0, !dbg !1788
  br i1 %281, label %298, label %282, !dbg !1788

282:                                              ; preds = %279, %282
  %283 = phi i64 [ %295, %282 ], [ %280, %279 ], !dbg !1788
  %284 = phi i64 [ %296, %282 ], [ %226, %279 ]
  %285 = getelementptr inbounds i32, i32* %202, i64 %283, !dbg !1789
  %286 = bitcast i32* %285 to <4 x i32>*, !dbg !1789
  %287 = load <4 x i32>, <4 x i32>* %286, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %288 = getelementptr inbounds i32, i32* %285, i64 4, !dbg !1789
  %289 = bitcast i32* %288 to <4 x i32>*, !dbg !1789
  %290 = load <4 x i32>, <4 x i32>* %289, align 4, !dbg !1789, !tbaa !944, !alias.scope !1790
  %291 = getelementptr inbounds i32, i32* %206, i64 %283, !dbg !1793
  %292 = bitcast i32* %291 to <4 x i32>*, !dbg !1794
  store <4 x i32> %287, <4 x i32>* %292, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %293 = getelementptr inbounds i32, i32* %291, i64 4, !dbg !1794
  %294 = bitcast i32* %293 to <4 x i32>*, !dbg !1794
  store <4 x i32> %290, <4 x i32>* %294, align 4, !dbg !1794, !tbaa !944, !alias.scope !1795, !noalias !1790
  %295 = add i64 %283, 8, !dbg !1788
  %296 = add i64 %284, -1, !dbg !1788
  %297 = icmp eq i64 %296, 0, !dbg !1788
  br i1 %297, label %298, label %282, !dbg !1788, !llvm.loop !1799

298:                                              ; preds = %282, %279
  %299 = icmp eq i64 %222, %209, !dbg !1783
  br i1 %299, label %384, label %211, !dbg !1783

300:                                              ; preds = %187
  br i1 %205, label %301, label %381, !dbg !1800

301:                                              ; preds = %300
  %302 = sext i32 %196 to i64, !dbg !1803
  %303 = icmp ult i32 %196, 8, !dbg !1800
  br i1 %303, label %304, label %306, !dbg !1800

304:                                              ; preds = %366, %301
  %305 = phi i64 [ 0, %301 ], [ %307, %366 ]
  br label %375, !dbg !1800

306:                                              ; preds = %301
  %307 = and i64 %302, -8, !dbg !1800
  %308 = add nsw i64 %307, -8, !dbg !1800
  %309 = lshr exact i64 %308, 3, !dbg !1800
  %310 = add nuw nsw i64 %309, 1, !dbg !1800
  %311 = and i64 %310, 3, !dbg !1800
  %312 = icmp ult i64 %308, 24, !dbg !1800
  br i1 %312, label %349, label %313, !dbg !1800

313:                                              ; preds = %306
  %314 = sub nsw i64 %310, %311, !dbg !1800
  br label %315, !dbg !1800

315:                                              ; preds = %315, %313
  %316 = phi i64 [ 0, %313 ], [ %345, %315 ], !dbg !1805
  %317 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %313 ], [ %346, %315 ], !dbg !1806
  %318 = phi i64 [ %314, %313 ], [ %347, %315 ]
  %319 = getelementptr inbounds i32, i32* %206, i64 %316, !dbg !1807
  %320 = add <4 x i32> %317, <i32 4, i32 4, i32 4, i32 4>, !dbg !1806
  %321 = bitcast i32* %319 to <4 x i32>*, !dbg !1806
  store <4 x i32> %317, <4 x i32>* %321, align 4, !dbg !1806, !tbaa !944
  %322 = getelementptr inbounds i32, i32* %319, i64 4, !dbg !1806
  %323 = bitcast i32* %322 to <4 x i32>*, !dbg !1806
  store <4 x i32> %320, <4 x i32>* %323, align 4, !dbg !1806, !tbaa !944
  %324 = or i64 %316, 8, !dbg !1805
  %325 = add <4 x i32> %317, <i32 8, i32 8, i32 8, i32 8>, !dbg !1806
  %326 = getelementptr inbounds i32, i32* %206, i64 %324, !dbg !1807
  %327 = add <4 x i32> %317, <i32 12, i32 12, i32 12, i32 12>, !dbg !1806
  %328 = bitcast i32* %326 to <4 x i32>*, !dbg !1806
  store <4 x i32> %325, <4 x i32>* %328, align 4, !dbg !1806, !tbaa !944
  %329 = getelementptr inbounds i32, i32* %326, i64 4, !dbg !1806
  %330 = bitcast i32* %329 to <4 x i32>*, !dbg !1806
  store <4 x i32> %327, <4 x i32>* %330, align 4, !dbg !1806, !tbaa !944
  %331 = or i64 %316, 16, !dbg !1805
  %332 = add <4 x i32> %317, <i32 16, i32 16, i32 16, i32 16>, !dbg !1806
  %333 = getelementptr inbounds i32, i32* %206, i64 %331, !dbg !1807
  %334 = add <4 x i32> %317, <i32 20, i32 20, i32 20, i32 20>, !dbg !1806
  %335 = bitcast i32* %333 to <4 x i32>*, !dbg !1806
  store <4 x i32> %332, <4 x i32>* %335, align 4, !dbg !1806, !tbaa !944
  %336 = getelementptr inbounds i32, i32* %333, i64 4, !dbg !1806
  %337 = bitcast i32* %336 to <4 x i32>*, !dbg !1806
  store <4 x i32> %334, <4 x i32>* %337, align 4, !dbg !1806, !tbaa !944
  %338 = or i64 %316, 24, !dbg !1805
  %339 = add <4 x i32> %317, <i32 24, i32 24, i32 24, i32 24>, !dbg !1806
  %340 = getelementptr inbounds i32, i32* %206, i64 %338, !dbg !1807
  %341 = add <4 x i32> %317, <i32 28, i32 28, i32 28, i32 28>, !dbg !1806
  %342 = bitcast i32* %340 to <4 x i32>*, !dbg !1806
  store <4 x i32> %339, <4 x i32>* %342, align 4, !dbg !1806, !tbaa !944
  %343 = getelementptr inbounds i32, i32* %340, i64 4, !dbg !1806
  %344 = bitcast i32* %343 to <4 x i32>*, !dbg !1806
  store <4 x i32> %341, <4 x i32>* %344, align 4, !dbg !1806, !tbaa !944
  %345 = add i64 %316, 32, !dbg !1805
  %346 = add <4 x i32> %317, <i32 32, i32 32, i32 32, i32 32>, !dbg !1806
  %347 = add i64 %318, -4, !dbg !1805
  %348 = icmp eq i64 %347, 0, !dbg !1805
  br i1 %348, label %349, label %315, !dbg !1805, !llvm.loop !1808

349:                                              ; preds = %315, %306
  %350 = phi i64 [ 0, %306 ], [ %345, %315 ]
  %351 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %306 ], [ %346, %315 ]
  %352 = icmp eq i64 %311, 0, !dbg !1805
  br i1 %352, label %366, label %353, !dbg !1805

353:                                              ; preds = %349, %353
  %354 = phi i64 [ %362, %353 ], [ %350, %349 ], !dbg !1805
  %355 = phi <4 x i32> [ %363, %353 ], [ %351, %349 ], !dbg !1806
  %356 = phi i64 [ %364, %353 ], [ %311, %349 ]
  %357 = getelementptr inbounds i32, i32* %206, i64 %354, !dbg !1807
  %358 = add <4 x i32> %355, <i32 4, i32 4, i32 4, i32 4>, !dbg !1806
  %359 = bitcast i32* %357 to <4 x i32>*, !dbg !1806
  store <4 x i32> %355, <4 x i32>* %359, align 4, !dbg !1806, !tbaa !944
  %360 = getelementptr inbounds i32, i32* %357, i64 4, !dbg !1806
  %361 = bitcast i32* %360 to <4 x i32>*, !dbg !1806
  store <4 x i32> %358, <4 x i32>* %361, align 4, !dbg !1806, !tbaa !944
  %362 = add i64 %354, 8, !dbg !1805
  %363 = add <4 x i32> %355, <i32 8, i32 8, i32 8, i32 8>, !dbg !1806
  %364 = add i64 %356, -1, !dbg !1805
  %365 = icmp eq i64 %364, 0, !dbg !1805
  br i1 %365, label %366, label %353, !dbg !1805, !llvm.loop !1810

366:                                              ; preds = %353, %349
  %367 = icmp eq i64 %307, %302, !dbg !1800
  br i1 %367, label %384, label %304, !dbg !1800

368:                                              ; preds = %211, %368
  %369 = phi i64 [ %373, %368 ], [ %212, %211 ]
  call void @llvm.dbg.value(metadata i64 %369, metadata !1582, metadata !DIExpression()), !dbg !1593
  %370 = getelementptr inbounds i32, i32* %202, i64 %369, !dbg !1789
  %371 = load i32, i32* %370, align 4, !dbg !1789, !tbaa !944
  %372 = getelementptr inbounds i32, i32* %206, i64 %369, !dbg !1793
  store i32 %371, i32* %372, align 4, !dbg !1794, !tbaa !944
  %373 = add nuw nsw i64 %369, 1, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %373, metadata !1582, metadata !DIExpression()), !dbg !1593
  %374 = icmp slt i64 %373, %209, !dbg !1811
  br i1 %374, label %368, label %384, !dbg !1783, !llvm.loop !1812

375:                                              ; preds = %304, %375
  %376 = phi i64 [ %379, %375 ], [ %305, %304 ]
  call void @llvm.dbg.value(metadata i64 %376, metadata !1582, metadata !DIExpression()), !dbg !1593
  %377 = getelementptr inbounds i32, i32* %206, i64 %376, !dbg !1807
  %378 = trunc i64 %376 to i32, !dbg !1806
  store i32 %378, i32* %377, align 4, !dbg !1806, !tbaa !944
  %379 = add nuw nsw i64 %376, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %379, metadata !1582, metadata !DIExpression()), !dbg !1593
  %380 = icmp slt i64 %379, %302, !dbg !1813
  br i1 %380, label %375, label %384, !dbg !1800, !llvm.loop !1814

381:                                              ; preds = %207, %300
  %382 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1815
  %383 = bitcast i8* %382 to i8**, !dbg !1816
  store i8* %15, i8** %383, align 8, !dbg !1816, !tbaa !1323
  call void @llvm.dbg.value(metadata i32 0, metadata !1582, metadata !DIExpression()), !dbg !1593
  br label %489, !dbg !1817

384:                                              ; preds = %368, %375, %298, %366
  %385 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1815
  %386 = bitcast i8* %385 to i8**, !dbg !1816
  store i8* %15, i8** %386, align 8, !dbg !1816, !tbaa !1323
  call void @llvm.dbg.value(metadata i32 0, metadata !1582, metadata !DIExpression()), !dbg !1593
  br i1 %205, label %387, label %489, !dbg !1817

387:                                              ; preds = %384
  %388 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1819
  br label %389, !dbg !1817

389:                                              ; preds = %387, %401
  %390 = phi i64 [ 0, %387 ], [ %485, %401 ]
  call void @llvm.dbg.value(metadata i64 %390, metadata !1582, metadata !DIExpression()), !dbg !1593
  %391 = load %struct.atom_t*, %struct.atom_t** %388, align 8, !dbg !1822, !tbaa !1323
  %392 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %391, i64 %390, i32 0, !dbg !1823
  %393 = load i8*, i8** %392, align 8, !dbg !1823, !tbaa !919
  %394 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %393) #11, !dbg !1824
  %395 = add i64 %394, 1, !dbg !1825
  %396 = tail call noalias i8* @malloc(i64 %395) #10, !dbg !1826
  call void @llvm.dbg.value(metadata i8* %396, metadata !1589, metadata !DIExpression()), !dbg !1593
  %397 = icmp eq i8* %396, null, !dbg !1827
  br i1 %397, label %398, label %401, !dbg !1829

398:                                              ; preds = %389
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1830, !tbaa !380
  %400 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %399) #12, !dbg !1832
  tail call void @exit(i32 1) #13, !dbg !1833
  unreachable, !dbg !1833

401:                                              ; preds = %389
  %402 = load i8*, i8** %392, align 8, !dbg !1834, !tbaa !919
  %403 = tail call i8* @strcpy(i8* nonnull %396, i8* nonnull dereferenceable(1) %402) #10, !dbg !1835
  %404 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 0, !dbg !1836
  store i8* %396, i8** %404, align 8, !dbg !1837, !tbaa !919
  %405 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 1, !dbg !1838
  store i8* null, i8** %405, align 8, !dbg !1839, !tbaa !1840
  %406 = load %struct.atom_t*, %struct.atom_t** %388, align 8, !dbg !1841, !tbaa !1323
  %407 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 2, !dbg !1842
  %408 = load i32, i32* %407, align 8, !dbg !1842, !tbaa !1843
  %409 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 2, !dbg !1844
  store i32 %408, i32* %409, align 8, !dbg !1845, !tbaa !1843
  %410 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 3, !dbg !1846
  %411 = load i32, i32* %410, align 4, !dbg !1846, !tbaa !1847
  %412 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 3, !dbg !1848
  store i32 %411, i32* %412, align 4, !dbg !1849, !tbaa !1847
  call void @llvm.dbg.value(metadata i64 0, metadata !1585, metadata !DIExpression()), !dbg !1593
  %413 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 0, !dbg !1850
  %414 = load i32, i32* %413, align 4, !dbg !1850, !tbaa !944
  %415 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 0, !dbg !1853
  store i32 %414, i32* %415, align 4, !dbg !1854, !tbaa !944
  call void @llvm.dbg.value(metadata i64 1, metadata !1585, metadata !DIExpression()), !dbg !1593
  %416 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 1, !dbg !1850
  %417 = load i32, i32* %416, align 4, !dbg !1850, !tbaa !944
  %418 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 1, !dbg !1853
  store i32 %417, i32* %418, align 4, !dbg !1854, !tbaa !944
  call void @llvm.dbg.value(metadata i64 2, metadata !1585, metadata !DIExpression()), !dbg !1593
  %419 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 2, !dbg !1850
  %420 = load i32, i32* %419, align 4, !dbg !1850, !tbaa !944
  %421 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 2, !dbg !1853
  store i32 %420, i32* %421, align 4, !dbg !1854, !tbaa !944
  call void @llvm.dbg.value(metadata i64 3, metadata !1585, metadata !DIExpression()), !dbg !1593
  %422 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 3, !dbg !1850
  %423 = load i32, i32* %422, align 4, !dbg !1850, !tbaa !944
  %424 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 3, !dbg !1853
  store i32 %423, i32* %424, align 4, !dbg !1854, !tbaa !944
  call void @llvm.dbg.value(metadata i64 4, metadata !1585, metadata !DIExpression()), !dbg !1593
  %425 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 4, !dbg !1850
  %426 = load i32, i32* %425, align 4, !dbg !1850, !tbaa !944
  %427 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 4, !dbg !1853
  store i32 %426, i32* %427, align 4, !dbg !1854, !tbaa !944
  call void @llvm.dbg.value(metadata i64 5, metadata !1585, metadata !DIExpression()), !dbg !1593
  %428 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 5, !dbg !1850
  %429 = load i32, i32* %428, align 4, !dbg !1850, !tbaa !944
  %430 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 5, !dbg !1853
  store i32 %429, i32* %430, align 4, !dbg !1854, !tbaa !944
  call void @llvm.dbg.value(metadata i64 6, metadata !1585, metadata !DIExpression()), !dbg !1593
  %431 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 6, !dbg !1850
  %432 = load i32, i32* %431, align 4, !dbg !1850, !tbaa !944
  %433 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 6, !dbg !1853
  store i32 %432, i32* %433, align 4, !dbg !1854, !tbaa !944
  call void @llvm.dbg.value(metadata i64 7, metadata !1585, metadata !DIExpression()), !dbg !1593
  %434 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 4, i64 7, !dbg !1850
  %435 = load i32, i32* %434, align 4, !dbg !1850, !tbaa !944
  %436 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 4, i64 7, !dbg !1853
  store i32 %435, i32* %436, align 4, !dbg !1854, !tbaa !944
  call void @llvm.dbg.value(metadata i64 8, metadata !1585, metadata !DIExpression()), !dbg !1593
  %437 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 5, !dbg !1855
  %438 = bitcast %struct.residue_t** %437 to i8**, !dbg !1856
  store i8* %2, i8** %438, align 8, !dbg !1856, !tbaa !1857
  %439 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 6, !dbg !1858
  %440 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 6, !dbg !1859
  %441 = bitcast double* %439 to <2 x i64>*, !dbg !1858
  %442 = load <2 x i64>, <2 x i64>* %441, align 8, !dbg !1858, !tbaa !974
  %443 = bitcast double* %440 to <2 x i64>*, !dbg !1860
  store <2 x i64> %442, <2 x i64>* %443, align 8, !dbg !1860, !tbaa !974
  %444 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 8, !dbg !1861
  %445 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 8, !dbg !1862
  %446 = bitcast double* %444 to <2 x i64>*, !dbg !1861
  %447 = load <2 x i64>, <2 x i64>* %446, align 8, !dbg !1861, !tbaa !974
  %448 = bitcast double* %445 to <2 x i64>*, !dbg !1863
  store <2 x i64> %447, <2 x i64>* %448, align 8, !dbg !1863, !tbaa !974
  %449 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 10, !dbg !1864
  store i8* null, i8** %449, align 8, !dbg !1865, !tbaa !1866
  %450 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 11, !dbg !1867
  %451 = load i32, i32* %450, align 8, !dbg !1867, !tbaa !1868
  %452 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 11, !dbg !1869
  store i32 %451, i32* %452, align 8, !dbg !1870, !tbaa !1868
  %453 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 12, !dbg !1871
  %454 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 12, !dbg !1872
  %455 = bitcast double* %453 to <2 x i64>*, !dbg !1871
  %456 = load <2 x i64>, <2 x i64>* %455, align 8, !dbg !1871, !tbaa !974
  %457 = bitcast double* %454 to <2 x i64>*, !dbg !1873
  store <2 x i64> %456, <2 x i64>* %457, align 8, !dbg !1873, !tbaa !974
  %458 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 14, !dbg !1874
  %459 = load i32, i32* %458, align 8, !dbg !1874, !tbaa !1875
  %460 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 14, !dbg !1876
  store i32 %459, i32* %460, align 8, !dbg !1877, !tbaa !1875
  %461 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 15, !dbg !1878
  %462 = load i32, i32* %461, align 4, !dbg !1878, !tbaa !1879
  %463 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 15, !dbg !1880
  store i32 %462, i32* %463, align 4, !dbg !1881, !tbaa !1879
  %464 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 16, !dbg !1882
  store i8* null, i8** %464, align 8, !dbg !1883, !tbaa !1884
  %465 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 17, i64 0, !dbg !1885
  %466 = bitcast double* %465 to i64*, !dbg !1885
  %467 = load i64, i64* %466, align 8, !dbg !1885, !tbaa !974
  %468 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 17, !dbg !1886
  %469 = bitcast [3 x double]* %468 to i64*, !dbg !1887
  store i64 %467, i64* %469, align 8, !dbg !1887, !tbaa !974
  %470 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 17, i64 1, !dbg !1888
  %471 = bitcast double* %470 to i64*, !dbg !1888
  %472 = load i64, i64* %471, align 8, !dbg !1888, !tbaa !974
  %473 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 17, i64 1, !dbg !1889
  %474 = bitcast double* %473 to i64*, !dbg !1890
  store i64 %472, i64* %474, align 8, !dbg !1890, !tbaa !974
  %475 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 17, i64 2, !dbg !1891
  %476 = bitcast double* %475 to i64*, !dbg !1891
  %477 = load i64, i64* %476, align 8, !dbg !1891, !tbaa !974
  %478 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 17, i64 2, !dbg !1892
  %479 = bitcast double* %478 to i64*, !dbg !1893
  store i64 %477, i64* %479, align 8, !dbg !1893, !tbaa !974
  %480 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %406, i64 %390, i32 18, !dbg !1894
  %481 = bitcast double* %480 to i64*, !dbg !1894
  %482 = load i64, i64* %481, align 8, !dbg !1894, !tbaa !1895
  %483 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %390, i32 18, !dbg !1896
  %484 = bitcast double* %483 to i64*, !dbg !1897
  store i64 %482, i64* %484, align 8, !dbg !1897, !tbaa !1895
  %485 = add nuw nsw i64 %390, 1, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %485, metadata !1582, metadata !DIExpression()), !dbg !1593
  %486 = load i32, i32* %11, align 8, !dbg !1899, !tbaa !1316
  %487 = sext i32 %486 to i64, !dbg !1900
  %488 = icmp slt i64 %485, %487, !dbg !1900
  br i1 %488, label %389, label %489, !dbg !1817, !llvm.loop !1901

489:                                              ; preds = %401, %381, %384, %58, %42, %27, %18, %5
  %490 = phi %struct.residue_t* [ null, %5 ], [ null, %18 ], [ null, %27 ], [ null, %42 ], [ null, %58 ], [ %3, %384 ], [ %3, %381 ], [ %3, %401 ], !dbg !1593
  ret %struct.residue_t* %490, !dbg !1903
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #7

declare dso_local %struct.extbond_t* @copyextbonds(...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* nocapture readonly %0) local_unnamed_addr #0 !dbg !1904 {
  call void @llvm.dbg.value(metadata %struct.strand_t* %0, metadata !1908, metadata !DIExpression()), !dbg !1912
  %2 = tail call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #10, !dbg !1913
  %3 = bitcast i8* %2 to %struct.strand_t*, !dbg !1915
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !1909, metadata !DIExpression()), !dbg !1912
  %4 = icmp eq i8* %2, null, !dbg !1916
  br i1 %4, label %5, label %10, !dbg !1917

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1918
  %7 = load i8*, i8** %6, align 8, !dbg !1918, !tbaa !1920
  %8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %7) #10, !dbg !1922
  %9 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1923
  br label %85, !dbg !1924

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1925
  %12 = load i32, i32* %11, align 8, !dbg !1925, !tbaa !1927
  %13 = sext i32 %12 to i64, !dbg !1928
  %14 = shl nsw i64 %13, 3, !dbg !1929
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !1930
  %16 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1931
  %17 = bitcast i8* %16 to %struct.residue_t***, !dbg !1931
  %18 = bitcast i8* %16 to i8**, !dbg !1932
  store i8* %15, i8** %18, align 8, !dbg !1932, !tbaa !1933
  %19 = icmp eq i8* %15, null, !dbg !1934
  br i1 %19, label %20, label %22, !dbg !1935

20:                                               ; preds = %10
  %21 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !1936
  br label %85, !dbg !1938

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1939
  %24 = load i8*, i8** %23, align 8, !dbg !1939, !tbaa !1920
  %25 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %24) #11, !dbg !1941
  %26 = add i64 %25, 1, !dbg !1942
  %27 = tail call noalias i8* @malloc(i64 %26) #10, !dbg !1943
  call void @llvm.dbg.value(metadata i8* %27, metadata !1910, metadata !DIExpression()), !dbg !1912
  %28 = icmp eq i8* %27, null, !dbg !1944
  br i1 %28, label %29, label %32, !dbg !1945

29:                                               ; preds = %22
  %30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %24) #10, !dbg !1946
  %31 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1948
  br label %85, !dbg !1949

32:                                               ; preds = %22
  %33 = bitcast i8* %2 to i8**, !dbg !1950
  store i8* %27, i8** %33, align 8, !dbg !1951, !tbaa !1920
  %34 = tail call i8* @strcpy(i8* nonnull %27, i8* nonnull dereferenceable(1) %24) #10, !dbg !1952
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 1, !dbg !1953
  %36 = load i32, i32* %35, align 8, !dbg !1953, !tbaa !1954
  %37 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1955
  %38 = bitcast i8* %37 to i32*, !dbg !1955
  store i32 %36, i32* %38, align 8, !dbg !1956, !tbaa !1954
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 2, !dbg !1957
  %40 = load i32, i32* %39, align 4, !dbg !1957, !tbaa !1958
  %41 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1959
  %42 = bitcast i8* %41 to i32*, !dbg !1959
  store i32 %40, i32* %42, align 4, !dbg !1960, !tbaa !1958
  %43 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1961
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false), !dbg !1962
  %44 = load i32, i32* %11, align 8, !dbg !1963, !tbaa !1927
  %45 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1964
  %46 = bitcast i8* %45 to i32*, !dbg !1964
  store i32 %44, i32* %46, align 8, !dbg !1965, !tbaa !1927
  %47 = getelementptr inbounds i8, i8* %2, i64 36, !dbg !1966
  %48 = bitcast i8* %47 to i32*, !dbg !1966
  store i32 %44, i32* %48, align 4, !dbg !1967, !tbaa !1968
  call void @llvm.dbg.value(metadata i32 0, metadata !1911, metadata !DIExpression()), !dbg !1912
  %49 = icmp sgt i32 %44, 0, !dbg !1969
  br i1 %49, label %50, label %85, !dbg !1972

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 7, !dbg !1973
  call void @llvm.dbg.value(metadata i64 0, metadata !1911, metadata !DIExpression()), !dbg !1912
  %52 = load %struct.residue_t**, %struct.residue_t*** %51, align 8, !dbg !1975, !tbaa !1933
  %53 = load %struct.residue_t*, %struct.residue_t** %52, align 8, !dbg !1976, !tbaa !380
  %54 = tail call %struct.residue_t* @copyresidue(%struct.residue_t* %53), !dbg !1977
  %55 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1978, !tbaa !1933
  store %struct.residue_t* %54, %struct.residue_t** %55, align 8, !dbg !1979, !tbaa !380
  %56 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1980, !tbaa !1933
  %57 = load %struct.residue_t*, %struct.residue_t** %56, align 8, !dbg !1981, !tbaa !380
  %58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %57, i64 0, i32 9, !dbg !1982
  %59 = bitcast %struct.strand_t** %58 to i8**, !dbg !1983
  store i8* %2, i8** %59, align 8, !dbg !1983, !tbaa !1713
  call void @llvm.dbg.value(metadata i64 1, metadata !1911, metadata !DIExpression()), !dbg !1912
  %60 = load i32, i32* %11, align 8, !dbg !1984, !tbaa !1927
  %61 = icmp sgt i32 %60, 1, !dbg !1969
  br i1 %61, label %62, label %85, !dbg !1972

62:                                               ; preds = %50, %62
  %63 = phi i64 [ %81, %62 ], [ 1, %50 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !1911, metadata !DIExpression()), !dbg !1912
  %64 = load %struct.residue_t**, %struct.residue_t*** %51, align 8, !dbg !1975, !tbaa !1933
  %65 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %64, i64 %63, !dbg !1976
  %66 = load %struct.residue_t*, %struct.residue_t** %65, align 8, !dbg !1976, !tbaa !380
  %67 = tail call %struct.residue_t* @copyresidue(%struct.residue_t* %66), !dbg !1977
  %68 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1978, !tbaa !1933
  %69 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %68, i64 %63, !dbg !1985
  store %struct.residue_t* %67, %struct.residue_t** %69, align 8, !dbg !1979, !tbaa !380
  %70 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1980, !tbaa !1933
  %71 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %70, i64 %63, !dbg !1981
  %72 = load %struct.residue_t*, %struct.residue_t** %71, align 8, !dbg !1981, !tbaa !380
  %73 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i64 0, i32 9, !dbg !1982
  %74 = bitcast %struct.strand_t** %73 to i8**, !dbg !1983
  store i8* %2, i8** %74, align 8, !dbg !1983, !tbaa !1713
  %75 = bitcast %struct.residue_t** %71 to i64*, !dbg !1986
  %76 = load i64, i64* %75, align 8, !dbg !1986, !tbaa !380
  %77 = add nsw i64 %63, -1, !dbg !1988
  %78 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %70, i64 %77, !dbg !1989
  %79 = bitcast %struct.residue_t** %78 to i64**, !dbg !1989
  %80 = load i64*, i64** %79, align 8, !dbg !1989, !tbaa !380
  store i64 %76, i64* %80, align 8, !dbg !1990, !tbaa !1667
  %81 = add nuw nsw i64 %63, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %81, metadata !1911, metadata !DIExpression()), !dbg !1912
  %82 = load i32, i32* %11, align 8, !dbg !1984, !tbaa !1927
  %83 = sext i32 %82 to i64, !dbg !1969
  %84 = icmp slt i64 %81, %83, !dbg !1969
  br i1 %84, label %62, label %85, !dbg !1972, !llvm.loop !1992

85:                                               ; preds = %50, %62, %32, %29, %20, %5
  %86 = phi %struct.strand_t* [ null, %5 ], [ null, %20 ], [ null, %29 ], [ %3, %32 ], [ %3, %62 ], [ %3, %50 ], !dbg !1912
  ret %struct.strand_t* %86, !dbg !1995
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) local_unnamed_addr #0 !dbg !1996 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2000, metadata !DIExpression()), !dbg !2007
  tail call void @upd_molnumbers(%struct.molecule_t* %0) #10, !dbg !2008
  %2 = tail call noalias dereferenceable_or_null(136) i8* @malloc(i64 136) #10, !dbg !2009
  %3 = bitcast i8* %2 to %struct.molecule_t*, !dbg !2011
  call void @llvm.dbg.value(metadata %struct.molecule_t* %3, metadata !2006, metadata !DIExpression()), !dbg !2007
  %4 = icmp eq i8* %2, null, !dbg !2012
  br i1 %4, label %5, label %7, !dbg !2013

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(13) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 13, i1 false), !dbg !2014
  %6 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2016
  br label %69, !dbg !2017

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !2018
  %9 = load i32, i32* %8, align 8, !dbg !2018, !tbaa !2019
  %10 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !2021
  %11 = bitcast i8* %10 to i32*, !dbg !2021
  store i32 %9, i32* %11, align 8, !dbg !2022, !tbaa !2019
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !2023
  %13 = load i32, i32* %12, align 8, !dbg !2023, !tbaa !2024
  %14 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !2025
  %15 = bitcast i8* %14 to i32*, !dbg !2025
  store i32 %13, i32* %15, align 8, !dbg !2026, !tbaa !2024
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !2027
  %17 = load i32, i32* %16, align 4, !dbg !2027, !tbaa !2028
  %18 = getelementptr inbounds i8, i8* %2, i64 116, !dbg !2029
  %19 = bitcast i8* %18 to i32*, !dbg !2029
  store i32 %17, i32* %19, align 4, !dbg !2030, !tbaa !2028
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !2031
  %21 = load i32, i32* %20, align 8, !dbg !2031, !tbaa !2032
  %22 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !2033
  %23 = bitcast i8* %22 to i32*, !dbg !2033
  store i32 %21, i32* %23, align 8, !dbg !2034, !tbaa !2032
  %24 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !2035
  %25 = load %struct.parm*, %struct.parm** %24, align 8, !dbg !2035, !tbaa !2037
  %26 = icmp eq %struct.parm* %25, null, !dbg !2038
  br i1 %26, label %29, label %27, !dbg !2039

27:                                               ; preds = %7
  %28 = tail call %struct.parm* @copyparm(%struct.parm* nonnull %25) #10, !dbg !2040
  br label %29, !dbg !2042

29:                                               ; preds = %7, %27
  %30 = phi %struct.parm* [ %28, %27 ], [ null, %7 ]
  %31 = getelementptr inbounds i8, i8* %2, i64 128, !dbg !2043
  %32 = bitcast i8* %31 to %struct.parm**, !dbg !2043
  store %struct.parm* %30, %struct.parm** %32, align 8, !dbg !2043, !tbaa !2037
  call void @llvm.dbg.value(metadata i32 undef, metadata !2001, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 0, metadata !2002, metadata !DIExpression()), !dbg !2007
  %33 = bitcast %struct.molecule_t* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %2, i8* nonnull align 8 dereferenceable(24) %33, i64 24, i1 false), !dbg !2044
  %34 = getelementptr i8, i8* %2, i64 24, !dbg !2051
  %35 = getelementptr %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 1, i64 0, !dbg !2051
  %36 = bitcast double* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %34, i8* nonnull align 8 dereferenceable(24) %36, i64 24, i1 false), !dbg !2044
  %37 = getelementptr i8, i8* %2, i64 48, !dbg !2051
  %38 = getelementptr %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 2, i64 0, !dbg !2051
  %39 = bitcast double* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %37, i8* nonnull align 8 dereferenceable(24) %39, i64 24, i1 false), !dbg !2044
  %40 = getelementptr i8, i8* %2, i64 72, !dbg !2051
  %41 = getelementptr %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 3, i64 0, !dbg !2051
  %42 = bitcast double* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %40, i8* nonnull align 8 dereferenceable(24) %42, i64 24, i1 false), !dbg !2044
  call void @llvm.dbg.value(metadata i32 undef, metadata !2002, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 undef, metadata !2001, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2007
  %43 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !2052
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8, !dbg !2052, !tbaa !2053
  call void @llvm.dbg.value(metadata %struct.strand_t* %44, metadata !2003, metadata !DIExpression()), !dbg !2007
  %45 = icmp eq %struct.strand_t* %44, null, !dbg !2054
  br i1 %45, label %68, label %46, !dbg !2056

46:                                               ; preds = %29
  %47 = tail call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %44), !dbg !2057
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !2004, metadata !DIExpression()), !dbg !2007
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %47, i64 0, i32 3, !dbg !2059
  %49 = bitcast %struct.molecule_t** %48 to i8**, !dbg !2060
  store i8* %2, i8** %49, align 8, !dbg !2060, !tbaa !2061
  %50 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !2062
  %51 = bitcast i8* %50 to %struct.strand_t**, !dbg !2062
  store %struct.strand_t* %47, %struct.strand_t** %51, align 8, !dbg !2063, !tbaa !2053
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %44, i64 0, i32 4, !dbg !2064
  %53 = load %struct.strand_t*, %struct.strand_t** %52, align 8, !dbg !2064, !tbaa !2065
  call void @llvm.dbg.value(metadata %struct.strand_t* %53, metadata !2003, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct.strand_t* %53, metadata !2003, metadata !DIExpression()), !dbg !2007
  %54 = icmp eq %struct.strand_t* %53, null, !dbg !2066
  br i1 %54, label %68, label %55, !dbg !2067

55:                                               ; preds = %46, %62
  %56 = phi %struct.strand_t* [ %58, %62 ], [ %47, %46 ]
  %57 = phi %struct.strand_t* [ %66, %62 ], [ %53, %46 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %56, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !2003, metadata !DIExpression()), !dbg !2007
  %58 = tail call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %57), !dbg !2068
  call void @llvm.dbg.value(metadata %struct.strand_t* %58, metadata !2005, metadata !DIExpression()), !dbg !2007
  %59 = icmp eq %struct.strand_t* %56, null, !dbg !2070
  br i1 %59, label %62, label %60, !dbg !2072

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %56, i64 0, i32 4, !dbg !2073
  store %struct.strand_t* %58, %struct.strand_t** %61, align 8, !dbg !2074, !tbaa !2065
  br label %62, !dbg !2075

62:                                               ; preds = %55, %60
  %63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %58, i64 0, i32 3, !dbg !2076
  %64 = bitcast %struct.molecule_t** %63 to i8**, !dbg !2077
  store i8* %2, i8** %64, align 8, !dbg !2077, !tbaa !2061
  call void @llvm.dbg.value(metadata %struct.strand_t* %58, metadata !2004, metadata !DIExpression()), !dbg !2007
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %57, i64 0, i32 4, !dbg !2078
  %66 = load %struct.strand_t*, %struct.strand_t** %65, align 8, !dbg !2078, !tbaa !2065
  call void @llvm.dbg.value(metadata %struct.strand_t* %66, metadata !2003, metadata !DIExpression()), !dbg !2007
  %67 = icmp eq %struct.strand_t* %66, null, !dbg !2066
  br i1 %67, label %68, label %55, !dbg !2067, !llvm.loop !2079

68:                                               ; preds = %62, %29, %46
  tail call void @upd_molnumbers(%struct.molecule_t* nonnull %3) #10, !dbg !2081
  br label %69, !dbg !2082

69:                                               ; preds = %68, %5
  %70 = phi %struct.molecule_t* [ null, %5 ], [ %3, %68 ], !dbg !2007
  ret %struct.molecule_t* %70, !dbg !2083
}

declare !dbg !230 dso_local void @upd_molnumbers(%struct.molecule_t*) local_unnamed_addr #6

declare !dbg !235 dso_local %struct.parm* @copyparm(%struct.parm*) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !239 dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !309 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !312 dso_local void @NAB_initatom(%struct.atom_t*, i32) local_unnamed_addr #6

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) local_unnamed_addr #6

declare dso_local signext i8 @bDBGetValue(...) local_unnamed_addr #6

declare dso_local void @DBZeroPrefix(...) local_unnamed_addr #6

declare dso_local void @DBPushPrefix(...) local_unnamed_addr #6

declare dso_local signext i8 @bDBGetTable(...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @addres2reslib(%struct.reslib_t* nocapture %0) unnamed_addr #0 !dbg !2084 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2088, metadata !DIExpression()), !dbg !2095
  %2 = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #10, !dbg !2096
  call void @llvm.dbg.value(metadata i8* %2, metadata !2089, metadata !DIExpression()), !dbg !2095
  %3 = icmp eq i8* %2, null, !dbg !2098
  br i1 %3, label %4, label %9, !dbg !2099

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2100
  %6 = load i8*, i8** %5, align 8, !dbg !2100, !tbaa !389
  %7 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %6) #10, !dbg !2102
  %8 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2103
  br label %142, !dbg !2104

9:                                                ; preds = %1
  %10 = load i32, i32* @n_atoms, align 4, !dbg !2105, !tbaa !944
  %11 = sext i32 %10 to i64, !dbg !2105
  %12 = mul nsw i64 %11, 176, !dbg !2107
  %13 = tail call noalias i8* @malloc(i64 %12) #10, !dbg !2108
  call void @llvm.dbg.value(metadata i8* %13, metadata !2090, metadata !DIExpression()), !dbg !2095
  %14 = icmp eq i8* %13, null, !dbg !2109
  br i1 %14, label %15, label %20, !dbg !2110

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2111
  %17 = load i8*, i8** %16, align 8, !dbg !2111, !tbaa !389
  %18 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %17) #10, !dbg !2113
  %19 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2114
  br label %142, !dbg !2115

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2116
  %22 = bitcast %struct.residue_t** %21 to i64*, !dbg !2116
  %23 = load i64, i64* %22, align 8, !dbg !2116, !tbaa !2117
  %24 = bitcast i8* %2 to i64*, !dbg !2118
  store i64 %23, i64* %24, align 8, !dbg !2118, !tbaa !1667
  %25 = bitcast %struct.residue_t** %21 to i8**, !dbg !2119
  store i8* %2, i8** %25, align 8, !dbg !2119, !tbaa !2117
  %26 = tail call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2120
  %27 = add i64 %26, 1, !dbg !2121
  %28 = tail call noalias i8* @malloc(i64 %27) #10, !dbg !2122
  call void @llvm.dbg.value(metadata i8* %28, metadata !2092, metadata !DIExpression()), !dbg !2095
  %29 = icmp eq i8* %28, null, !dbg !2123
  br i1 %29, label %30, label %33, !dbg !2125

30:                                               ; preds = %20
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2126, !tbaa !380
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %31) #12, !dbg !2128
  tail call void @exit(i32 1) #13, !dbg !2129
  unreachable, !dbg !2129

33:                                               ; preds = %20
  %34 = tail call i8* @strcpy(i8* nonnull %28, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #10, !dbg !2130
  %35 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !2131
  %36 = bitcast i8* %35 to i8**, !dbg !2131
  store i8* %28, i8** %36, align 8, !dbg !2132, !tbaa !1286
  %37 = tail call noalias dereferenceable_or_null(1) i8* @malloc(i64 1) #10, !dbg !2133
  call void @llvm.dbg.value(metadata i8* %37, metadata !2092, metadata !DIExpression()), !dbg !2095
  %38 = icmp eq i8* %37, null, !dbg !2134
  br i1 %38, label %39, label %42, !dbg !2136

39:                                               ; preds = %33
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2137, !tbaa !380
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %40) #12, !dbg !2139
  tail call void @exit(i32 1) #13, !dbg !2140
  unreachable, !dbg !2140

42:                                               ; preds = %33
  store i8 0, i8* %37, align 1, !dbg !2141
  %43 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2142
  %44 = bitcast i8* %43 to i8**, !dbg !2142
  store i8* %37, i8** %44, align 8, !dbg !2143, !tbaa !1683
  %45 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2144
  %46 = bitcast i8* %45 to i32*, !dbg !2144
  store i32 0, i32* %46, align 8, !dbg !2145, !tbaa !1698
  %47 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !2146
  %48 = bitcast i8* %47 to i32*, !dbg !2146
  store i32 0, i32* %48, align 4, !dbg !2147, !tbaa !1703
  %49 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2148
  %50 = bitcast i8* %49 to i32*, !dbg !2148
  store i32 0, i32* %50, align 8, !dbg !2149, !tbaa !1706
  %51 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2150
  %52 = bitcast i8* %51 to i32*, !dbg !2150
  store i32 0, i32* %52, align 8, !dbg !2151, !tbaa !1708
  %53 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 2, !dbg !2152
  %54 = load i32, i32* %53, align 8, !dbg !2152, !tbaa !410
  %55 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !2153
  %56 = bitcast i8* %55 to i32*, !dbg !2153
  store i32 %54, i32* %56, align 4, !dbg !2154, !tbaa !1765
  %57 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 3, !dbg !2155
  %58 = load i32, i32* %57, align 4, !dbg !2155, !tbaa !776
  %59 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !2156
  %60 = bitcast i8* %59 to i32*, !dbg !2156
  store i32 %58, i32* %60, align 8, !dbg !2157, !tbaa !1769
  %61 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !2158
  %62 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !2159
  %63 = bitcast i8* %62 to [2 x i32]**, !dbg !2159
  store [2 x i32]* null, [2 x i32]** %63, align 8, !dbg !2160, !tbaa !1723
  %64 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !2161
  %65 = bitcast i8* %64 to i32*, !dbg !2161
  store i32 0, i32* %65, align 8, !dbg !2162, !tbaa !1648
  %66 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !2163
  %67 = bitcast i8* %66 to %struct.chiral_t**, !dbg !2163
  store %struct.chiral_t* null, %struct.chiral_t** %67, align 8, !dbg !2164, !tbaa !1744
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %61, i8 0, i64 20, i1 false), !dbg !2165
  %68 = load i32, i32* @n_atoms, align 4, !dbg !2166, !tbaa !944
  %69 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !2167
  %70 = bitcast i8* %69 to i32*, !dbg !2167
  store i32 %68, i32* %70, align 8, !dbg !2168, !tbaa !1316
  %71 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !2169
  %72 = bitcast i8* %71 to i32**, !dbg !2169
  store i32* null, i32** %72, align 8, !dbg !2170, !tbaa !1777
  %73 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !2171
  %74 = bitcast i8* %73 to %struct.atom_t**, !dbg !2171
  %75 = bitcast i8* %73 to i8**, !dbg !2172
  store i8* %13, i8** %75, align 8, !dbg !2172, !tbaa !1323
  call void @llvm.dbg.value(metadata i32 0, metadata !2093, metadata !DIExpression()), !dbg !2095
  %76 = icmp sgt i32 %68, 0, !dbg !2173
  br i1 %76, label %77, label %142, !dbg !2176

77:                                               ; preds = %42, %88
  %78 = phi i64 [ %138, %88 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !2093, metadata !DIExpression()), !dbg !2095
  %79 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 0, !dbg !2177
  %80 = load i8*, i8** %79, align 16, !dbg !2177, !tbaa !919
  %81 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %80) #11, !dbg !2179
  %82 = add i64 %81, 1, !dbg !2180
  %83 = tail call noalias i8* @malloc(i64 %82) #10, !dbg !2181
  call void @llvm.dbg.value(metadata i8* %83, metadata !2091, metadata !DIExpression()), !dbg !2095
  %84 = icmp eq i8* %83, null, !dbg !2182
  br i1 %84, label %85, label %88, !dbg !2184

85:                                               ; preds = %77
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2185, !tbaa !380
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %86) #12, !dbg !2187
  tail call void @exit(i32 1) #13, !dbg !2188
  unreachable, !dbg !2188

88:                                               ; preds = %77
  %89 = tail call i8* @strcpy(i8* nonnull %83, i8* nonnull dereferenceable(1) %80) #10, !dbg !2189
  %90 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !2190, !tbaa !1323
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 0, !dbg !2191
  store i8* %83, i8** %91, align 8, !dbg !2192, !tbaa !919
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 2, !dbg !2193
  store i32 0, i32* %92, align 8, !dbg !2194, !tbaa !1843
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 3, !dbg !2195
  store i32 0, i32* %93, align 4, !dbg !2196, !tbaa !1847
  call void @llvm.dbg.value(metadata i32 0, metadata !2094, metadata !DIExpression()), !dbg !2095
  %94 = getelementptr %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 4, i64 0, !dbg !2197
  %95 = bitcast i32* %94 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(32) %95, i8 -1, i64 32, i1 false), !dbg !2199
  call void @llvm.dbg.value(metadata i32 undef, metadata !2094, metadata !DIExpression()), !dbg !2095
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 5, !dbg !2201
  %97 = bitcast %struct.residue_t** %96 to i8**, !dbg !2202
  store i8* %2, i8** %97, align 8, !dbg !2202, !tbaa !1857
  %98 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 6, !dbg !2203
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 6, !dbg !2204
  %100 = bitcast double* %98 to <2 x i64>*, !dbg !2203
  %101 = load <2 x i64>, <2 x i64>* %100, align 16, !dbg !2203, !tbaa !974
  %102 = bitcast double* %99 to <2 x i64>*, !dbg !2205
  store <2 x i64> %101, <2 x i64>* %102, align 8, !dbg !2205, !tbaa !974
  %103 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 8, !dbg !2206
  %104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 8, !dbg !2207
  %105 = bitcast double* %103 to <2 x i64>*, !dbg !2206
  %106 = load <2 x i64>, <2 x i64>* %105, align 16, !dbg !2206, !tbaa !974
  %107 = bitcast double* %104 to <2 x i64>*, !dbg !2208
  store <2 x i64> %106, <2 x i64>* %107, align 8, !dbg !2208, !tbaa !974
  %108 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 11, !dbg !2209
  %109 = load i32, i32* %108, align 8, !dbg !2209, !tbaa !1868
  %110 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 11, !dbg !2210
  store i32 %109, i32* %110, align 8, !dbg !2211, !tbaa !1868
  %111 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 12, !dbg !2212
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 12, !dbg !2213
  %113 = bitcast double* %111 to <2 x i64>*, !dbg !2212
  %114 = load <2 x i64>, <2 x i64>* %113, align 16, !dbg !2212, !tbaa !974
  %115 = bitcast double* %112 to <2 x i64>*, !dbg !2214
  store <2 x i64> %114, <2 x i64>* %115, align 8, !dbg !2214, !tbaa !974
  %116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 15, !dbg !2215
  store i32 0, i32* %116, align 4, !dbg !2216, !tbaa !1879
  %117 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 16, !dbg !2217
  store i8* null, i8** %117, align 8, !dbg !2218, !tbaa !1884
  call void @llvm.dbg.value(metadata i64 0, metadata !2094, metadata !DIExpression()), !dbg !2095
  %118 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 17, i64 0, !dbg !2219
  %119 = bitcast double* %118 to i64*, !dbg !2219
  %120 = load i64, i64* %119, align 16, !dbg !2219, !tbaa !974
  %121 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 17, i64 0, !dbg !2222
  %122 = bitcast double* %121 to i64*, !dbg !2223
  store i64 %120, i64* %122, align 8, !dbg !2223, !tbaa !974
  call void @llvm.dbg.value(metadata i64 1, metadata !2094, metadata !DIExpression()), !dbg !2095
  %123 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 17, i64 1, !dbg !2219
  %124 = bitcast double* %123 to i64*, !dbg !2219
  %125 = load i64, i64* %124, align 8, !dbg !2219, !tbaa !974
  %126 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 17, i64 1, !dbg !2222
  %127 = bitcast double* %126 to i64*, !dbg !2223
  store i64 %125, i64* %127, align 8, !dbg !2223, !tbaa !974
  call void @llvm.dbg.value(metadata i64 2, metadata !2094, metadata !DIExpression()), !dbg !2095
  %128 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 17, i64 2, !dbg !2219
  %129 = bitcast double* %128 to i64*, !dbg !2219
  %130 = load i64, i64* %129, align 16, !dbg !2219, !tbaa !974
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 17, i64 2, !dbg !2222
  %132 = bitcast double* %131 to i64*, !dbg !2223
  store i64 %130, i64* %132, align 8, !dbg !2223, !tbaa !974
  call void @llvm.dbg.value(metadata i64 3, metadata !2094, metadata !DIExpression()), !dbg !2095
  %133 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 18, !dbg !2224
  %134 = bitcast double* %133 to i64*, !dbg !2224
  %135 = load i64, i64* %134, align 8, !dbg !2224, !tbaa !1895
  %136 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 18, !dbg !2225
  %137 = bitcast double* %136 to i64*, !dbg !2226
  store i64 %135, i64* %137, align 8, !dbg !2226, !tbaa !1895
  %138 = add nuw nsw i64 %78, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %138, metadata !2093, metadata !DIExpression()), !dbg !2095
  %139 = load i32, i32* @n_atoms, align 4, !dbg !2228, !tbaa !944
  %140 = sext i32 %139 to i64, !dbg !2173
  %141 = icmp slt i64 %138, %140, !dbg !2173
  br i1 %141, label %77, label %142, !dbg !2176, !llvm.loop !2229

142:                                              ; preds = %88, %42, %15, %4
  ret void, !dbg !2231
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addbonds2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2232 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2234, metadata !DIExpression()), !dbg !2243
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2244
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2235, metadata !DIExpression()), !dbg !2243
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2246, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2235, metadata !DIExpression()), !dbg !2243
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2247
  br i1 %4, label %81, label %5, !dbg !2247

5:                                                ; preds = %1, %77
  %6 = phi %struct.residue_t* [ %79, %77 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 4, !dbg !2248
  %8 = load i8*, i8** %7, align 8, !dbg !2248, !tbaa !1286
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2252
  %10 = icmp eq i32 %9, 0, !dbg !2253
  br i1 %10, label %11, label %77, !dbg !2254

11:                                               ; preds = %5
  %12 = load i32, i32* @n_bonds, align 4, !dbg !2255, !tbaa !944
  %13 = sext i32 %12 to i64, !dbg !2255
  %14 = shl nsw i64 %13, 3, !dbg !2258
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !2259
  %16 = bitcast i8* %15 to [2 x i32]*, !dbg !2260
  call void @llvm.dbg.value(metadata [2 x i32]* %16, metadata !2236, metadata !DIExpression()), !dbg !2243
  %17 = icmp eq i8* %15, null, !dbg !2261
  br i1 %17, label %23, label %18, !dbg !2262

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !2237, metadata !DIExpression()), !dbg !2243
  %19 = icmp sgt i32 %12, 0, !dbg !2263
  br i1 %19, label %20, label %72, !dbg !2266

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2267
  %22 = load %struct.atom_t*, %struct.atom_t** %21, align 8, !dbg !2267, !tbaa !1323
  br label %26, !dbg !2266

23:                                               ; preds = %11
  %24 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #10, !dbg !2269
  %25 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2271
  br label %86, !dbg !2272

26:                                               ; preds = %20, %67
  %27 = phi i64 [ 0, %20 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !2237, metadata !DIExpression()), !dbg !2243
  %28 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %27, i64 0, !dbg !2273
  %29 = load i32, i32* %28, align 8, !dbg !2273, !tbaa !944
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %27, i64 0, !dbg !2274
  store i32 %29, i32* %30, align 4, !dbg !2275, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %29, metadata !2239, metadata !DIExpression()), !dbg !2243
  %31 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %27, i64 1, !dbg !2276
  %32 = load i32, i32* %31, align 4, !dbg !2276, !tbaa !944
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %27, i64 1, !dbg !2277
  store i32 %32, i32* %33, align 4, !dbg !2278, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %32, metadata !2240, metadata !DIExpression()), !dbg !2243
  %34 = add nsw i32 %29, -1, !dbg !2279
  call void @llvm.dbg.value(metadata i32 %34, metadata !2239, metadata !DIExpression()), !dbg !2243
  %35 = add nsw i32 %32, -1, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %35, metadata !2240, metadata !DIExpression()), !dbg !2243
  %36 = sext i32 %34 to i64, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2241, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 0, metadata !2238, metadata !DIExpression()), !dbg !2243
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 0, !dbg !2282
  %38 = load i32, i32* %37, align 4, !dbg !2282, !tbaa !944
  %39 = icmp eq i32 %38, %35, !dbg !2287
  br i1 %39, label %51, label %44, !dbg !2288

40:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 1, metadata !2238, metadata !DIExpression()), !dbg !2243
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 1, !dbg !2282
  %42 = load i32, i32* %41, align 4, !dbg !2282, !tbaa !944
  %43 = icmp eq i32 %42, %35, !dbg !2287
  br i1 %43, label %51, label %87, !dbg !2288

44:                                               ; preds = %26
  %45 = icmp eq i32 %38, -1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 0, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %45, label %46, label %40, !dbg !2291

46:                                               ; preds = %119, %117, %111, %105, %99, %93, %87, %44
  %47 = phi i32* [ %37, %44 ], [ %41, %87 ], [ %90, %93 ], [ %96, %99 ], [ %102, %105 ], [ %108, %111 ], [ %114, %117 ], [ %120, %119 ], !dbg !2282
  store i32 %35, i32* %47, align 4, !dbg !2292, !tbaa !944
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 3, !dbg !2294
  %49 = load i32, i32* %48, align 4, !dbg !2295, !tbaa !1847
  %50 = add nsw i32 %49, 1, !dbg !2295
  store i32 %50, i32* %48, align 4, !dbg !2295, !tbaa !1847
  br label %51, !dbg !2296

51:                                               ; preds = %119, %26, %40, %89, %95, %101, %107, %113, %46
  %52 = sext i32 %35 to i64, !dbg !2297
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2242, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i64 0, metadata !2238, metadata !DIExpression()), !dbg !2243
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 0, !dbg !2298
  %54 = load i32, i32* %53, align 4, !dbg !2298, !tbaa !944
  %55 = icmp eq i32 %54, %34, !dbg !2303
  br i1 %55, label %67, label %60, !dbg !2304

56:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i64 1, metadata !2238, metadata !DIExpression()), !dbg !2243
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 1, !dbg !2298
  %58 = load i32, i32* %57, align 4, !dbg !2298, !tbaa !944
  %59 = icmp eq i32 %58, %34, !dbg !2303
  br i1 %59, label %67, label %125, !dbg !2304

60:                                               ; preds = %51
  %61 = icmp eq i32 %54, -1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 0, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %61, label %62, label %56, !dbg !2307

62:                                               ; preds = %157, %155, %149, %143, %137, %131, %125, %60
  %63 = phi i32* [ %53, %60 ], [ %57, %125 ], [ %128, %131 ], [ %134, %137 ], [ %140, %143 ], [ %146, %149 ], [ %152, %155 ], [ %158, %157 ], !dbg !2298
  store i32 %34, i32* %63, align 4, !dbg !2308, !tbaa !944
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 3, !dbg !2310
  %65 = load i32, i32* %64, align 4, !dbg !2311, !tbaa !1847
  %66 = add nsw i32 %65, 1, !dbg !2311
  store i32 %66, i32* %64, align 4, !dbg !2311, !tbaa !1847
  br label %67, !dbg !2312

67:                                               ; preds = %157, %51, %56, %127, %133, %139, %145, %151, %62
  %68 = add nuw nsw i64 %27, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %68, metadata !2237, metadata !DIExpression()), !dbg !2243
  %69 = load i32, i32* @n_bonds, align 4, !dbg !2314, !tbaa !944
  %70 = sext i32 %69 to i64, !dbg !2263
  %71 = icmp slt i64 %68, %70, !dbg !2263
  br i1 %71, label %26, label %72, !dbg !2266, !llvm.loop !2315

72:                                               ; preds = %67, %18
  %73 = phi i32 [ %12, %18 ], [ %69, %67 ], !dbg !2314
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 11, !dbg !2317
  store i32 %73, i32* %74, align 8, !dbg !2318, !tbaa !1629
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 12, !dbg !2319
  %76 = bitcast [2 x i32]** %75 to i8**, !dbg !2320
  store i8* %15, i8** %76, align 8, !dbg !2320, !tbaa !1723
  br label %86, !dbg !2321

77:                                               ; preds = %5
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 0, !dbg !2322
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2235, metadata !DIExpression()), !dbg !2243
  %79 = load %struct.residue_t*, %struct.residue_t** %78, align 8, !dbg !2246, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %79, metadata !2235, metadata !DIExpression()), !dbg !2243
  %80 = icmp eq %struct.residue_t* %79, null, !dbg !2247
  br i1 %80, label %81, label %5, !dbg !2247, !llvm.loop !2323

81:                                               ; preds = %77, %1
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2325
  %83 = load i8*, i8** %82, align 8, !dbg !2325, !tbaa !389
  %84 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %83) #10, !dbg !2326
  %85 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2327
  br label %86, !dbg !2328

86:                                               ; preds = %81, %72, %23
  ret void, !dbg !2329

87:                                               ; preds = %40
  %88 = icmp eq i32 %42, -1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 1, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %88, label %46, label %89, !dbg !2291

89:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i64 2, metadata !2238, metadata !DIExpression()), !dbg !2243
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 2, !dbg !2282
  %91 = load i32, i32* %90, align 4, !dbg !2282, !tbaa !944
  %92 = icmp eq i32 %91, %35, !dbg !2287
  br i1 %92, label %51, label %93, !dbg !2288

93:                                               ; preds = %89
  %94 = icmp eq i32 %91, -1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 2, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %94, label %46, label %95, !dbg !2291

95:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i64 3, metadata !2238, metadata !DIExpression()), !dbg !2243
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 3, !dbg !2282
  %97 = load i32, i32* %96, align 4, !dbg !2282, !tbaa !944
  %98 = icmp eq i32 %97, %35, !dbg !2287
  br i1 %98, label %51, label %99, !dbg !2288

99:                                               ; preds = %95
  %100 = icmp eq i32 %97, -1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 3, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %100, label %46, label %101, !dbg !2291

101:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 4, metadata !2238, metadata !DIExpression()), !dbg !2243
  %102 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 4, !dbg !2282
  %103 = load i32, i32* %102, align 4, !dbg !2282, !tbaa !944
  %104 = icmp eq i32 %103, %35, !dbg !2287
  br i1 %104, label %51, label %105, !dbg !2288

105:                                              ; preds = %101
  %106 = icmp eq i32 %103, -1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 4, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %106, label %46, label %107, !dbg !2291

107:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 5, metadata !2238, metadata !DIExpression()), !dbg !2243
  %108 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 5, !dbg !2282
  %109 = load i32, i32* %108, align 4, !dbg !2282, !tbaa !944
  %110 = icmp eq i32 %109, %35, !dbg !2287
  br i1 %110, label %51, label %111, !dbg !2288

111:                                              ; preds = %107
  %112 = icmp eq i32 %109, -1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 5, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %112, label %46, label %113, !dbg !2291

113:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i64 6, metadata !2238, metadata !DIExpression()), !dbg !2243
  %114 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 6, !dbg !2282
  %115 = load i32, i32* %114, align 4, !dbg !2282, !tbaa !944
  %116 = icmp eq i32 %115, %35, !dbg !2287
  br i1 %116, label %51, label %117, !dbg !2288

117:                                              ; preds = %113
  %118 = icmp eq i32 %115, -1, !dbg !2289
  call void @llvm.dbg.value(metadata i64 6, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %118, label %46, label %119, !dbg !2291

119:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i64 7, metadata !2238, metadata !DIExpression()), !dbg !2243
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 7, !dbg !2282
  %121 = load i32, i32* %120, align 4, !dbg !2282, !tbaa !944
  %122 = icmp ne i32 %121, %35, !dbg !2287
  %123 = icmp eq i32 %121, -1, !dbg !2289
  %124 = and i1 %122, %123, !dbg !2288
  call void @llvm.dbg.value(metadata i64 7, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %124, label %46, label %51, !dbg !2288

125:                                              ; preds = %56
  %126 = icmp eq i32 %58, -1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 1, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %126, label %62, label %127, !dbg !2307

127:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i64 2, metadata !2238, metadata !DIExpression()), !dbg !2243
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 2, !dbg !2298
  %129 = load i32, i32* %128, align 4, !dbg !2298, !tbaa !944
  %130 = icmp eq i32 %129, %34, !dbg !2303
  br i1 %130, label %67, label %131, !dbg !2304

131:                                              ; preds = %127
  %132 = icmp eq i32 %129, -1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 2, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %132, label %62, label %133, !dbg !2307

133:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i64 3, metadata !2238, metadata !DIExpression()), !dbg !2243
  %134 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 3, !dbg !2298
  %135 = load i32, i32* %134, align 4, !dbg !2298, !tbaa !944
  %136 = icmp eq i32 %135, %34, !dbg !2303
  br i1 %136, label %67, label %137, !dbg !2304

137:                                              ; preds = %133
  %138 = icmp eq i32 %135, -1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 3, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %138, label %62, label %139, !dbg !2307

139:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i64 4, metadata !2238, metadata !DIExpression()), !dbg !2243
  %140 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 4, !dbg !2298
  %141 = load i32, i32* %140, align 4, !dbg !2298, !tbaa !944
  %142 = icmp eq i32 %141, %34, !dbg !2303
  br i1 %142, label %67, label %143, !dbg !2304

143:                                              ; preds = %139
  %144 = icmp eq i32 %141, -1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 4, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %144, label %62, label %145, !dbg !2307

145:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i64 5, metadata !2238, metadata !DIExpression()), !dbg !2243
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 5, !dbg !2298
  %147 = load i32, i32* %146, align 4, !dbg !2298, !tbaa !944
  %148 = icmp eq i32 %147, %34, !dbg !2303
  br i1 %148, label %67, label %149, !dbg !2304

149:                                              ; preds = %145
  %150 = icmp eq i32 %147, -1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 5, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %150, label %62, label %151, !dbg !2307

151:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i64 6, metadata !2238, metadata !DIExpression()), !dbg !2243
  %152 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 6, !dbg !2298
  %153 = load i32, i32* %152, align 4, !dbg !2298, !tbaa !944
  %154 = icmp eq i32 %153, %34, !dbg !2303
  br i1 %154, label %67, label %155, !dbg !2304

155:                                              ; preds = %151
  %156 = icmp eq i32 %153, -1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 6, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %156, label %62, label %157, !dbg !2307

157:                                              ; preds = %155
  call void @llvm.dbg.value(metadata i64 7, metadata !2238, metadata !DIExpression()), !dbg !2243
  %158 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 7, !dbg !2298
  %159 = load i32, i32* %158, align 4, !dbg !2298, !tbaa !944
  %160 = icmp ne i32 %159, %34, !dbg !2303
  %161 = icmp eq i32 %159, -1, !dbg !2305
  %162 = and i1 %160, %161, !dbg !2304
  call void @llvm.dbg.value(metadata i64 7, metadata !2238, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2243
  br i1 %162, label %62, label %67, !dbg !2304
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addqr2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2330 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2332, metadata !DIExpression()), !dbg !2337
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2338
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2333, metadata !DIExpression()), !dbg !2337
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2340, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2333, metadata !DIExpression()), !dbg !2337
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2341
  br i1 %4, label %66, label %5, !dbg !2341

5:                                                ; preds = %1, %62
  %6 = phi %struct.residue_t* [ %64, %62 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 4, !dbg !2342
  %8 = load i8*, i8** %7, align 8, !dbg !2342, !tbaa !1286
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2346
  %10 = icmp eq i32 %9, 0, !dbg !2347
  br i1 %10, label %11, label %62, !dbg !2348

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !2335, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32 0, metadata !2334, metadata !DIExpression()), !dbg !2337
  %12 = load i32, i32* @n_atoms, align 4, !dbg !2349, !tbaa !944
  %13 = icmp sgt i32 %12, 0, !dbg !2353
  br i1 %13, label %14, label %71, !dbg !2354

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 15, !dbg !2355
  %16 = load i32, i32* %15, align 8, !dbg !2355, !tbaa !1316
  %17 = icmp sgt i32 %16, 0, !dbg !2355
  %18 = zext i32 %16 to i64, !dbg !2355
  br i1 %17, label %19, label %71, !dbg !2354

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2359
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !2359, !tbaa !1323
  br label %22, !dbg !2354

22:                                               ; preds = %19, %57
  %23 = phi i32 [ %58, %57 ], [ %12, %19 ]
  %24 = phi %struct.atom_t* [ %60, %57 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %19 ]
  %25 = phi i32 [ %59, %57 ], [ 0, %19 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %24, metadata !2335, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32 %25, metadata !2334, metadata !DIExpression()), !dbg !2337
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 0, !dbg !2360
  %27 = load i8*, i8** %26, align 8, !dbg !2360, !tbaa !919
  call void @llvm.dbg.value(metadata %struct.residue_t* %6, metadata !1303, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata i8* %27, metadata !1308, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  br label %28, !dbg !2362

28:                                               ; preds = %35, %22
  %29 = phi i64 [ 0, %22 ], [ %34, %35 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 0, !dbg !2363
  %31 = load i8*, i8** %30, align 8, !dbg !2363, !tbaa !919
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %31, i8* nonnull dereferenceable(1) %27) #11, !dbg !2364
  %33 = icmp eq i32 %32, 0, !dbg !2364
  %34 = add nuw nsw i64 %29, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %34, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  br i1 %33, label %37, label %35, !dbg !2366

35:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %34, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  %36 = icmp eq i64 %34, %18, !dbg !2367
  br i1 %36, label %57, label %28, !dbg !2362, !llvm.loop !2368

37:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %29, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %29, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %29, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %29, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %29, metadata !1309, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2336, metadata !DIExpression()), !dbg !2337
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 6, !dbg !2370
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 6, !dbg !2372
  %40 = bitcast double* %38 to <2 x i64>*, !dbg !2370
  %41 = load <2 x i64>, <2 x i64>* %40, align 8, !dbg !2370, !tbaa !974
  %42 = bitcast double* %39 to <2 x i64>*, !dbg !2373
  store <2 x i64> %41, <2 x i64>* %42, align 8, !dbg !2373, !tbaa !974
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 8, !dbg !2374
  %44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 8, !dbg !2375
  %45 = bitcast double* %43 to <2 x i64>*, !dbg !2374
  %46 = load <2 x i64>, <2 x i64>* %45, align 8, !dbg !2374, !tbaa !974
  %47 = bitcast double* %44 to <2 x i64>*, !dbg !2376
  store <2 x i64> %46, <2 x i64>* %47, align 8, !dbg !2376, !tbaa !974
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 11, !dbg !2377
  %49 = load i32, i32* %48, align 8, !dbg !2377, !tbaa !1868
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 11, !dbg !2378
  store i32 %49, i32* %50, align 8, !dbg !2379, !tbaa !1868
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 12, !dbg !2380
  %52 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 12, !dbg !2381
  %53 = bitcast double* %51 to <2 x i64>*, !dbg !2380
  %54 = load <2 x i64>, <2 x i64>* %53, align 8, !dbg !2380, !tbaa !974
  %55 = bitcast double* %52 to <2 x i64>*, !dbg !2382
  store <2 x i64> %54, <2 x i64>* %55, align 8, !dbg !2382, !tbaa !974
  %56 = load i32, i32* @n_atoms, align 4, !dbg !2349, !tbaa !944
  br label %57, !dbg !2383

57:                                               ; preds = %35, %37
  %58 = phi i32 [ %56, %37 ], [ %23, %35 ], !dbg !2349
  %59 = add nuw nsw i32 %25, 1, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %59, metadata !2334, metadata !DIExpression()), !dbg !2337
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 1, !dbg !2385
  call void @llvm.dbg.value(metadata %struct.atom_t* %60, metadata !2335, metadata !DIExpression()), !dbg !2337
  %61 = icmp slt i32 %59, %58, !dbg !2353
  br i1 %61, label %22, label %71, !dbg !2354, !llvm.loop !2386

62:                                               ; preds = %5
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 0, !dbg !2388
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2333, metadata !DIExpression()), !dbg !2337
  %64 = load %struct.residue_t*, %struct.residue_t** %63, align 8, !dbg !2340, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %64, metadata !2333, metadata !DIExpression()), !dbg !2337
  %65 = icmp eq %struct.residue_t* %64, null, !dbg !2341
  br i1 %65, label %66, label %5, !dbg !2341, !llvm.loop !2389

66:                                               ; preds = %62, %1
  %67 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2391
  %68 = load i8*, i8** %67, align 8, !dbg !2391, !tbaa !389
  %69 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %68) #10, !dbg !2392
  %70 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2393
  br label %71, !dbg !2394

71:                                               ; preds = %57, %14, %11, %66
  ret void, !dbg !2395
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addchi2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2396 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2398, metadata !DIExpression()), !dbg !2408
  %5 = bitcast [4 x [3 x double]]* %2 to i8*, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10, !dbg !2409
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %2, metadata !2404, metadata !DIExpression()), !dbg !2410
  %6 = bitcast [4 x [3 x double]]* %3 to i8*, !dbg !2411
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10, !dbg !2411
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %3, metadata !2406, metadata !DIExpression()), !dbg !2412
  %7 = bitcast double* %4 to i8*, !dbg !2413
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !2413
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2414
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2399, metadata !DIExpression()), !dbg !2408
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2416, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %9, metadata !2399, metadata !DIExpression()), !dbg !2408
  %10 = icmp eq %struct.residue_t* %9, null, !dbg !2417
  br i1 %10, label %130, label %11, !dbg !2417

11:                                               ; preds = %1, %126
  %12 = phi %struct.residue_t* [ %128, %126 ], [ %9, %1 ]
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !2418
  %14 = load i8*, i8** %13, align 8, !dbg !2418, !tbaa !1286
  %15 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %14, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2422
  %16 = icmp eq i32 %15, 0, !dbg !2422
  br i1 %16, label %17, label %126, !dbg !2423

17:                                               ; preds = %11
  %18 = load i32, i32* @n_chi, align 4, !dbg !2424, !tbaa !944
  %19 = sext i32 %18 to i64, !dbg !2424
  %20 = mul nsw i64 %19, 24, !dbg !2427
  %21 = tail call noalias i8* @malloc(i64 %20) #10, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %21, metadata !2400, metadata !DIExpression()), !dbg !2408
  %22 = icmp eq i8* %21, null, !dbg !2429
  br i1 %22, label %23, label %28, !dbg !2430

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !2418
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2431, !tbaa !380
  %26 = load i8*, i8** %24, align 8, !dbg !2433, !tbaa !1286
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %26) #12, !dbg !2434
  br label %136, !dbg !2435

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %21, metadata !2400, metadata !DIExpression()), !dbg !2408
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 13, !dbg !2436
  store i32 %18, i32* %29, align 8, !dbg !2437, !tbaa !1648
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 14, !dbg !2438
  %31 = bitcast %struct.chiral_t** %30 to i8**, !dbg !2439
  store i8* %21, i8** %31, align 8, !dbg !2439, !tbaa !1744
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8* %21, metadata !2400, metadata !DIExpression()), !dbg !2408
  %32 = icmp sgt i32 %18, 0, !dbg !2440
  br i1 %32, label %33, label %136, !dbg !2443

33:                                               ; preds = %28
  %34 = bitcast i8* %21 to %struct.chiral_t*, !dbg !2444
  call void @llvm.dbg.value(metadata %struct.chiral_t* %34, metadata !2400, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata %struct.chiral_t* %34, metadata !2400, metadata !DIExpression()), !dbg !2408
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 17, !dbg !2445
  %36 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 0, !dbg !2450
  %37 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %3, i64 0, i64 0, i64 0, !dbg !2450
  %38 = bitcast double* %4 to i64*, !dbg !2450
  %39 = bitcast [4 x [3 x double]]* %2 to i64*, !dbg !2445
  %40 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 1, !dbg !2445
  %41 = bitcast double* %40 to i64*, !dbg !2445
  %42 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 2, !dbg !2445
  %43 = bitcast double* %42 to i64*, !dbg !2445
  %44 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 1, !dbg !2445
  %45 = bitcast [3 x double]* %44 to i64*, !dbg !2445
  %46 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 1, i64 1, !dbg !2445
  %47 = bitcast double* %46 to i64*, !dbg !2445
  %48 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 1, i64 2, !dbg !2445
  %49 = bitcast double* %48 to i64*, !dbg !2445
  %50 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 2, !dbg !2445
  %51 = bitcast [3 x double]* %50 to i64*, !dbg !2445
  %52 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 2, i64 1, !dbg !2445
  %53 = bitcast double* %52 to i64*, !dbg !2445
  %54 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 2, i64 2, !dbg !2445
  %55 = bitcast double* %54 to i64*, !dbg !2445
  %56 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 3, !dbg !2445
  %57 = bitcast [3 x double]* %56 to i64*, !dbg !2445
  %58 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 3, i64 1, !dbg !2445
  %59 = bitcast double* %58 to i64*, !dbg !2445
  %60 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 3, i64 2, !dbg !2445
  %61 = bitcast double* %60 to i64*, !dbg !2445
  br label %62, !dbg !2443

62:                                               ; preds = %33, %62
  %63 = phi i64 [ 0, %33 ], [ %122, %62 ]
  %64 = phi %struct.chiral_t* [ %34, %33 ], [ %121, %62 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !2402, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !2400, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()), !dbg !2408
  %65 = load %struct.atom_t*, %struct.atom_t** %35, align 8, !dbg !2445, !tbaa !1323
  call void @llvm.dbg.value(metadata i64 0, metadata !2401, metadata !DIExpression()), !dbg !2408
  %66 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %63, i32 0, i64 0, !dbg !2451
  %67 = load i32, i32* %66, align 8, !dbg !2451, !tbaa !944
  %68 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 0, i64 0, !dbg !2452
  store i32 %67, i32* %68, align 4, !dbg !2453, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %67, metadata !2403, metadata !DIExpression()), !dbg !2408
  %69 = sext i32 %67 to i64, !dbg !2454
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %69, i32 17, i64 0, !dbg !2454
  %71 = bitcast double* %70 to i64*, !dbg !2454
  %72 = load i64, i64* %71, align 8, !dbg !2454, !tbaa !974
  store i64 %72, i64* %39, align 16, !dbg !2455, !tbaa !974
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %69, i32 17, i64 1, !dbg !2456
  %74 = bitcast double* %73 to i64*, !dbg !2456
  %75 = load i64, i64* %74, align 8, !dbg !2456, !tbaa !974
  store i64 %75, i64* %41, align 8, !dbg !2457, !tbaa !974
  %76 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %69, i32 17, i64 2, !dbg !2458
  %77 = bitcast double* %76 to i64*, !dbg !2458
  %78 = load i64, i64* %77, align 8, !dbg !2458, !tbaa !974
  store i64 %78, i64* %43, align 16, !dbg !2459, !tbaa !974
  call void @llvm.dbg.value(metadata i64 1, metadata !2401, metadata !DIExpression()), !dbg !2408
  %79 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %63, i32 0, i64 1, !dbg !2451
  %80 = load i32, i32* %79, align 4, !dbg !2451, !tbaa !944
  %81 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 0, i64 1, !dbg !2452
  store i32 %80, i32* %81, align 4, !dbg !2453, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %80, metadata !2403, metadata !DIExpression()), !dbg !2408
  %82 = sext i32 %80 to i64, !dbg !2454
  %83 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %82, i32 17, i64 0, !dbg !2454
  %84 = bitcast double* %83 to i64*, !dbg !2454
  %85 = load i64, i64* %84, align 8, !dbg !2454, !tbaa !974
  store i64 %85, i64* %45, align 8, !dbg !2455, !tbaa !974
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %82, i32 17, i64 1, !dbg !2456
  %87 = bitcast double* %86 to i64*, !dbg !2456
  %88 = load i64, i64* %87, align 8, !dbg !2456, !tbaa !974
  store i64 %88, i64* %47, align 8, !dbg !2457, !tbaa !974
  %89 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %82, i32 17, i64 2, !dbg !2458
  %90 = bitcast double* %89 to i64*, !dbg !2458
  %91 = load i64, i64* %90, align 8, !dbg !2458, !tbaa !974
  store i64 %91, i64* %49, align 8, !dbg !2459, !tbaa !974
  call void @llvm.dbg.value(metadata i64 2, metadata !2401, metadata !DIExpression()), !dbg !2408
  %92 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %63, i32 0, i64 2, !dbg !2451
  %93 = load i32, i32* %92, align 8, !dbg !2451, !tbaa !944
  %94 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 0, i64 2, !dbg !2452
  store i32 %93, i32* %94, align 4, !dbg !2453, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %93, metadata !2403, metadata !DIExpression()), !dbg !2408
  %95 = sext i32 %93 to i64, !dbg !2454
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %95, i32 17, i64 0, !dbg !2454
  %97 = bitcast double* %96 to i64*, !dbg !2454
  %98 = load i64, i64* %97, align 8, !dbg !2454, !tbaa !974
  store i64 %98, i64* %51, align 16, !dbg !2455, !tbaa !974
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %95, i32 17, i64 1, !dbg !2456
  %100 = bitcast double* %99 to i64*, !dbg !2456
  %101 = load i64, i64* %100, align 8, !dbg !2456, !tbaa !974
  store i64 %101, i64* %53, align 8, !dbg !2457, !tbaa !974
  %102 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %95, i32 17, i64 2, !dbg !2458
  %103 = bitcast double* %102 to i64*, !dbg !2458
  %104 = load i64, i64* %103, align 8, !dbg !2458, !tbaa !974
  store i64 %104, i64* %55, align 16, !dbg !2459, !tbaa !974
  call void @llvm.dbg.value(metadata i64 3, metadata !2401, metadata !DIExpression()), !dbg !2408
  %105 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %63, i32 0, i64 3, !dbg !2451
  %106 = load i32, i32* %105, align 4, !dbg !2451, !tbaa !944
  %107 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 0, i64 3, !dbg !2452
  store i32 %106, i32* %107, align 4, !dbg !2453, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %106, metadata !2403, metadata !DIExpression()), !dbg !2408
  %108 = sext i32 %106 to i64, !dbg !2454
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %108, i32 17, i64 0, !dbg !2454
  %110 = bitcast double* %109 to i64*, !dbg !2454
  %111 = load i64, i64* %110, align 8, !dbg !2454, !tbaa !974
  store i64 %111, i64* %57, align 8, !dbg !2455, !tbaa !974
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %108, i32 17, i64 1, !dbg !2456
  %113 = bitcast double* %112 to i64*, !dbg !2456
  %114 = load i64, i64* %113, align 8, !dbg !2456, !tbaa !974
  store i64 %114, i64* %59, align 8, !dbg !2457, !tbaa !974
  %115 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %108, i32 17, i64 2, !dbg !2458
  %116 = bitcast double* %115 to i64*, !dbg !2458
  %117 = load i64, i64* %116, align 8, !dbg !2458, !tbaa !974
  store i64 %117, i64* %61, align 8, !dbg !2459, !tbaa !974
  call void @llvm.dbg.value(metadata i64 4, metadata !2401, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata double* %4, metadata !2407, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* nonnull %36, double* nonnull %37, double* nonnull %4) #10, !dbg !2460
  %118 = load i64, i64* %38, align 8, !dbg !2461, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !2407, metadata !DIExpression()), !dbg !2408
  %119 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 0, i32 1, !dbg !2462
  %120 = bitcast double* %119 to i64*, !dbg !2463
  store i64 %118, i64* %120, align 8, !dbg !2463, !tbaa !1400
  %121 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %64, i64 1, !dbg !2464
  call void @llvm.dbg.value(metadata %struct.chiral_t* %121, metadata !2400, metadata !DIExpression()), !dbg !2408
  %122 = add nuw nsw i64 %63, 1, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %122, metadata !2402, metadata !DIExpression()), !dbg !2408
  %123 = load i32, i32* @n_chi, align 4, !dbg !2466, !tbaa !944
  %124 = sext i32 %123 to i64, !dbg !2440
  %125 = icmp slt i64 %122, %124, !dbg !2440
  br i1 %125, label %62, label %136, !dbg !2443, !llvm.loop !2467

126:                                              ; preds = %11
  %127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 0, !dbg !2469
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2399, metadata !DIExpression()), !dbg !2408
  %128 = load %struct.residue_t*, %struct.residue_t** %127, align 8, !dbg !2416, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %128, metadata !2399, metadata !DIExpression()), !dbg !2408
  %129 = icmp eq %struct.residue_t* %128, null, !dbg !2417
  br i1 %129, label %130, label %11, !dbg !2417, !llvm.loop !2470

130:                                              ; preds = %126, %1
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2472, !tbaa !380
  %132 = load i8*, i8** inttoptr (i64 24 to i8**), align 8, !dbg !2473, !tbaa !1286
  %133 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2474
  %134 = load i8*, i8** %133, align 8, !dbg !2474, !tbaa !389
  %135 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %132, i8* %134) #12, !dbg !2475
  br label %136, !dbg !2476

136:                                              ; preds = %62, %28, %130, %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !2476
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10, !dbg !2476
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10, !dbg !2476
  ret void, !dbg !2476
}

declare !dbg !316 dso_local void @chirvol(i32, i32, i32, i32, i32, double*, double*, double*) local_unnamed_addr #6

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
!llvm.module.flags = !{!357, !358, !359}
!llvm.ident = !{!360}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "e_msg", scope: !2, file: !15, line: 46, type: !353, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !320, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/reslib.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files")
!4 = !{}
!5 = !{!6, !7, !14, !170, !202, !229, !184, !191, !12, !54, !169, !230, !233, !235, !239, !299, !309, !312, !105, !316}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DISubprogram(name: "rt_errormsg_s", scope: !8, file: !8, line: 2, type: !9, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!8 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/traceback.h", directory: "/home/rouzbeh/Graduate/Research")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DISubprogram(name: "copyresidue", scope: !15, file: !15, line: 54, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!15 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/reslib.c", directory: "/home/rouzbeh/Graduate/Research")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !20, line: 63, size: 1024, elements: !21)
!20 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/Research")
!21 = !{!22, !23, !25, !26, !27, !30, !31, !32, !33, !34, !172, !182, !183, !189, !190, !199, !200, !201}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !19, file: !20, line: 64, baseType: !18, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !19, file: !20, line: 65, baseType: !24, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !20, line: 6, baseType: !11)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !19, file: !20, line: 66, baseType: !24, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !19, file: !20, line: 67, baseType: !24, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !19, file: !20, line: 68, baseType: !28, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !20, line: 17, baseType: !13)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !19, file: !20, line: 69, baseType: !28, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !19, file: !20, line: 70, baseType: !24, size: 32, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !19, file: !20, line: 71, baseType: !24, size: 32, offset: 352)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !19, file: !20, line: 72, baseType: !24, size: 32, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !19, file: !20, line: 73, baseType: !35, size: 64, offset: 448)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !20, line: 84, size: 384, elements: !37)
!37 = !{!38, !39, !40, !41, !165, !166, !167, !168}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !36, file: !20, line: 85, baseType: !28, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !36, file: !20, line: 86, baseType: !24, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !36, file: !20, line: 87, baseType: !24, size: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !36, file: !20, line: 88, baseType: !42, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !20, line: 118, size: 1088, elements: !44)
!44 = !{!45, !52, !53, !56, !57, !58, !59}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !43, file: !20, line: 119, baseType: !46, size: 768)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !20, line: 13, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 768, elements: !49)
!48 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!49 = !{!50, !51}
!50 = !DISubrange(count: 4)
!51 = !DISubrange(count: 3)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !43, file: !20, line: 120, baseType: !24, size: 32, offset: 768)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !43, file: !20, line: 121, baseType: !54, size: 64, offset: 832)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !20, line: 93, baseType: !36)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !43, file: !20, line: 122, baseType: !24, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !43, file: !20, line: 123, baseType: !24, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !43, file: !20, line: 124, baseType: !24, size: 32, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !43, file: !20, line: 125, baseType: !60, size: 64, offset: 1024)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !20, line: 115, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !20, line: 95, size: 5760, elements: !63)
!63 = !{!64, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !124, !125, !126, !127, !128, !129, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !62, file: !20, line: 96, baseType: !65, size: 648)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 648, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 81)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !62, file: !20, line: 97, baseType: !24, size: 32, offset: 672)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !62, file: !20, line: 97, baseType: !24, size: 32, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !62, file: !20, line: 97, baseType: !24, size: 32, offset: 736)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !62, file: !20, line: 98, baseType: !24, size: 32, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !62, file: !20, line: 98, baseType: !24, size: 32, offset: 800)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !62, file: !20, line: 98, baseType: !24, size: 32, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !62, file: !20, line: 98, baseType: !24, size: 32, offset: 864)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !62, file: !20, line: 98, baseType: !24, size: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !62, file: !20, line: 98, baseType: !24, size: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !62, file: !20, line: 99, baseType: !24, size: 32, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !62, file: !20, line: 99, baseType: !24, size: 32, offset: 992)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !62, file: !20, line: 99, baseType: !24, size: 32, offset: 1024)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !62, file: !20, line: 99, baseType: !24, size: 32, offset: 1056)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !62, file: !20, line: 99, baseType: !24, size: 32, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !62, file: !20, line: 99, baseType: !24, size: 32, offset: 1120)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !62, file: !20, line: 100, baseType: !24, size: 32, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !62, file: !20, line: 100, baseType: !24, size: 32, offset: 1184)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !62, file: !20, line: 100, baseType: !24, size: 32, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !62, file: !20, line: 100, baseType: !24, size: 32, offset: 1248)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !62, file: !20, line: 100, baseType: !24, size: 32, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !62, file: !20, line: 100, baseType: !24, size: 32, offset: 1312)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !62, file: !20, line: 101, baseType: !24, size: 32, offset: 1344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !62, file: !20, line: 101, baseType: !24, size: 32, offset: 1376)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !62, file: !20, line: 101, baseType: !24, size: 32, offset: 1408)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !62, file: !20, line: 101, baseType: !24, size: 32, offset: 1440)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !62, file: !20, line: 101, baseType: !24, size: 32, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !62, file: !20, line: 101, baseType: !24, size: 32, offset: 1504)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !62, file: !20, line: 101, baseType: !24, size: 32, offset: 1536)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !62, file: !20, line: 101, baseType: !24, size: 32, offset: 1568)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !62, file: !20, line: 102, baseType: !24, size: 32, offset: 1600)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !62, file: !20, line: 102, baseType: !24, size: 32, offset: 1632)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !62, file: !20, line: 102, baseType: !24, size: 32, offset: 1664)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !62, file: !20, line: 103, baseType: !28, size: 64, offset: 1728)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !62, file: !20, line: 103, baseType: !28, size: 64, offset: 1792)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !62, file: !20, line: 103, baseType: !28, size: 64, offset: 1856)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !62, file: !20, line: 103, baseType: !28, size: 64, offset: 1920)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 1984)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 2048)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 2112)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 2176)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 2240)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 2304)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 2368)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 2432)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !62, file: !20, line: 104, baseType: !105, size: 64, offset: 2496)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !62, file: !20, line: 105, baseType: !105, size: 64, offset: 2560)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !62, file: !20, line: 105, baseType: !105, size: 64, offset: 2624)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !62, file: !20, line: 105, baseType: !105, size: 64, offset: 2688)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !62, file: !20, line: 105, baseType: !105, size: 64, offset: 2752)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !62, file: !20, line: 105, baseType: !105, size: 64, offset: 2816)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !62, file: !20, line: 105, baseType: !105, size: 64, offset: 2880)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !62, file: !20, line: 105, baseType: !105, size: 64, offset: 2944)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !62, file: !20, line: 106, baseType: !122, size: 192, offset: 3008)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 192, elements: !123)
!123 = !{!51}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !62, file: !20, line: 106, baseType: !48, size: 64, offset: 3200)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !62, file: !20, line: 106, baseType: !48, size: 64, offset: 3264)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !62, file: !20, line: 106, baseType: !48, size: 64, offset: 3328)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !62, file: !20, line: 106, baseType: !48, size: 64, offset: 3392)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !62, file: !20, line: 106, baseType: !48, size: 64, offset: 3456)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !62, file: !20, line: 107, baseType: !130, size: 64, offset: 3520)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !62, file: !20, line: 107, baseType: !130, size: 64, offset: 3584)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !62, file: !20, line: 107, baseType: !130, size: 64, offset: 3648)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !62, file: !20, line: 107, baseType: !130, size: 64, offset: 3712)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !62, file: !20, line: 107, baseType: !130, size: 64, offset: 3776)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !62, file: !20, line: 107, baseType: !130, size: 64, offset: 3840)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !62, file: !20, line: 108, baseType: !130, size: 64, offset: 3904)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !62, file: !20, line: 108, baseType: !130, size: 64, offset: 3968)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !62, file: !20, line: 108, baseType: !130, size: 64, offset: 4032)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !62, file: !20, line: 108, baseType: !130, size: 64, offset: 4096)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !62, file: !20, line: 108, baseType: !130, size: 64, offset: 4160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !62, file: !20, line: 108, baseType: !130, size: 64, offset: 4224)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !62, file: !20, line: 109, baseType: !130, size: 64, offset: 4288)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !62, file: !20, line: 109, baseType: !130, size: 64, offset: 4352)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !62, file: !20, line: 109, baseType: !130, size: 64, offset: 4416)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !62, file: !20, line: 109, baseType: !130, size: 64, offset: 4480)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !62, file: !20, line: 109, baseType: !130, size: 64, offset: 4544)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !62, file: !20, line: 110, baseType: !130, size: 64, offset: 4608)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !62, file: !20, line: 110, baseType: !130, size: 64, offset: 4672)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !62, file: !20, line: 110, baseType: !130, size: 64, offset: 4736)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !62, file: !20, line: 110, baseType: !130, size: 64, offset: 4800)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !62, file: !20, line: 110, baseType: !130, size: 64, offset: 4864)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !62, file: !20, line: 111, baseType: !130, size: 64, offset: 4928)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !62, file: !20, line: 111, baseType: !130, size: 64, offset: 4992)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !62, file: !20, line: 111, baseType: !130, size: 64, offset: 5056)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !62, file: !20, line: 111, baseType: !130, size: 64, offset: 5120)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !62, file: !20, line: 111, baseType: !130, size: 64, offset: 5184)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !62, file: !20, line: 111, baseType: !130, size: 64, offset: 5248)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !62, file: !20, line: 112, baseType: !130, size: 64, offset: 5312)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !62, file: !20, line: 112, baseType: !130, size: 64, offset: 5376)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !62, file: !20, line: 112, baseType: !130, size: 64, offset: 5440)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !62, file: !20, line: 112, baseType: !130, size: 64, offset: 5504)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !62, file: !20, line: 113, baseType: !130, size: 64, offset: 5568)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !62, file: !20, line: 113, baseType: !130, size: 64, offset: 5632)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !62, file: !20, line: 114, baseType: !105, size: 64, offset: 5696)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !36, file: !20, line: 89, baseType: !35, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !36, file: !20, line: 90, baseType: !24, size: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !36, file: !20, line: 91, baseType: !24, size: 32, offset: 288)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !36, file: !20, line: 92, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !20, line: 82, baseType: !19)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !19, file: !20, line: 74, baseType: !173, size: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !20, line: 52, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !20, line: 47, size: 192, elements: !176)
!176 = !{!177, !179, !180, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !175, file: !20, line: 48, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !175, file: !20, line: 49, baseType: !24, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !175, file: !20, line: 50, baseType: !24, size: 32, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !175, file: !20, line: 51, baseType: !24, size: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !19, file: !20, line: 75, baseType: !24, size: 32, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !19, file: !20, line: 76, baseType: !184, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !20, line: 54, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 64, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 2)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !19, file: !20, line: 77, baseType: !24, size: 32, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !19, file: !20, line: 78, baseType: !191, size: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !20, line: 61, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !20, line: 58, size: 192, elements: !194)
!194 = !{!195, !198}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !193, file: !20, line: 59, baseType: !196, size: 128)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !197)
!197 = !{!50}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !193, file: !20, line: 60, baseType: !48, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !19, file: !20, line: 79, baseType: !24, size: 32, offset: 832)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !19, file: !20, line: 80, baseType: !130, size: 64, offset: 896)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !19, file: !20, line: 81, baseType: !202, size: 64, offset: 960)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !20, line: 45, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !20, line: 25, size: 1408, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !228}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !204, file: !20, line: 26, baseType: !28, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !204, file: !20, line: 27, baseType: !28, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !204, file: !20, line: 28, baseType: !24, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !204, file: !20, line: 29, baseType: !24, size: 32, offset: 160)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !204, file: !20, line: 30, baseType: !211, size: 256, offset: 192)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !204, file: !20, line: 31, baseType: !18, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !204, file: !20, line: 32, baseType: !48, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !204, file: !20, line: 33, baseType: !48, size: 64, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !204, file: !20, line: 34, baseType: !48, size: 64, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !204, file: !20, line: 35, baseType: !48, size: 64, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !204, file: !20, line: 36, baseType: !28, size: 64, offset: 768)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !204, file: !20, line: 37, baseType: !24, size: 32, offset: 832)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !204, file: !20, line: 38, baseType: !48, size: 64, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !204, file: !20, line: 39, baseType: !48, size: 64, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !204, file: !20, line: 40, baseType: !24, size: 32, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !204, file: !20, line: 41, baseType: !24, size: 32, offset: 1056)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !204, file: !20, line: 42, baseType: !28, size: 64, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !204, file: !20, line: 43, baseType: !227, size: 192, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !20, line: 12, baseType: !122)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !204, file: !20, line: 44, baseType: !48, size: 64, offset: 1344)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!230 = !DISubprogram(name: "upd_molnumbers", scope: !15, file: !15, line: 16, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !42}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !20, line: 126, baseType: !43)
!235 = !DISubprogram(name: "copyparm", scope: !15, file: !15, line: 53, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!239 = !DISubprogram(name: "fclose", scope: !240, file: !240, line: 213, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!240 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!241 = !DISubroutineType(types: !242)
!242 = !{!11, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !245, line: 49, size: 1728, elements: !246)
!245 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !262, !263, !264, !265, !269, !271, !273, !277, !280, !282, !285, !288, !289, !290, !294, !295}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !244, file: !245, line: 51, baseType: !11, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !244, file: !245, line: 54, baseType: !12, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !244, file: !245, line: 55, baseType: !12, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !244, file: !245, line: 56, baseType: !12, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !244, file: !245, line: 57, baseType: !12, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !244, file: !245, line: 58, baseType: !12, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !244, file: !245, line: 59, baseType: !12, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !244, file: !245, line: 60, baseType: !12, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !244, file: !245, line: 61, baseType: !12, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !244, file: !245, line: 64, baseType: !12, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !244, file: !245, line: 65, baseType: !12, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !244, file: !245, line: 66, baseType: !12, size: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !244, file: !245, line: 68, baseType: !260, size: 64, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !245, line: 36, flags: DIFlagFwdDecl)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !244, file: !245, line: 70, baseType: !243, size: 64, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !244, file: !245, line: 72, baseType: !11, size: 32, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !244, file: !245, line: 73, baseType: !11, size: 32, offset: 928)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !244, file: !245, line: 74, baseType: !266, size: 64, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !267, line: 152, baseType: !268)
!267 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!268 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !244, file: !245, line: 77, baseType: !270, size: 16, offset: 1024)
!270 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !244, file: !245, line: 78, baseType: !272, size: 8, offset: 1040)
!272 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !244, file: !245, line: 79, baseType: !274, size: 8, offset: 1048)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 1)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !244, file: !245, line: 81, baseType: !278, size: 64, offset: 1088)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !245, line: 43, baseType: null)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !244, file: !245, line: 89, baseType: !281, size: 64, offset: 1152)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !267, line: 153, baseType: !268)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !244, file: !245, line: 91, baseType: !283, size: 64, offset: 1216)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !245, line: 37, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !244, file: !245, line: 92, baseType: !286, size: 64, offset: 1280)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !245, line: 38, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !244, file: !245, line: 93, baseType: !243, size: 64, offset: 1344)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !244, file: !245, line: 94, baseType: !6, size: 64, offset: 1408)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !244, file: !245, line: 95, baseType: !291, size: 64, offset: 1472)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 46, baseType: !293)
!292 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!293 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !244, file: !245, line: 96, baseType: !11, size: 32, offset: 1536)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !244, file: !245, line: 98, baseType: !296, size: 160, offset: 1568)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 20)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESLIB_T", file: !15, line: 26, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reslib_t", file: !15, line: 20, size: 256, elements: !302)
!302 = !{!303, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rl_next", scope: !301, file: !15, line: 21, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rl_name", scope: !301, file: !15, line: 22, baseType: !12, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rl_r_kind", scope: !301, file: !15, line: 23, baseType: !11, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rl_r_atomkind", scope: !301, file: !15, line: 24, baseType: !11, size: 32, offset: 160)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rl_rlist", scope: !301, file: !15, line: 25, baseType: !170, size: 64, offset: 192)
!309 = !DISubprogram(name: "fgets", scope: !240, file: !240, line: 564, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!310 = !DISubroutineType(types: !311)
!311 = !{!12, !12, !11, !243}
!312 = !DISubprogram(name: "NAB_initatom", scope: !15, file: !15, line: 48, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315, !11}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!316 = !DISubprogram(name: "chirvol", scope: !317, file: !317, line: 1, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!317 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/chirvol.h", directory: "/home/rouzbeh/Graduate/Research")
!318 = !DISubroutineType(types: !319)
!319 = !{null, !11, !11, !11, !11, !11, !105, !105, !105}
!320 = !{!0, !321, !323, !331, !336, !338, !341, !343, !346, !348}
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "reslibs", scope: !2, file: !15, line: 44, type: !299, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "init", scope: !325, file: !15, line: 474, type: !11, isLocal: true, isDefinition: true)
!325 = distinct !DISubprogram(name: "initatoms", scope: !15, file: !15, line: 472, type: !326, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{null}
!328 = !{!329, !330}
!329 = !DILocalVariable(name: "i", scope: !325, file: !15, line: 475, type: !11)
!330 = !DILocalVariable(name: "ap", scope: !325, file: !15, line: 476, type: !202)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "atoms", scope: !2, file: !15, line: 34, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 1408000, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 1000)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "n_atoms", scope: !2, file: !15, line: 33, type: !11, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "lr_name", scope: !2, file: !15, line: 32, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !212)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "n_bonds", scope: !2, file: !15, line: 37, type: !11, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "bonds", scope: !2, file: !15, line: 38, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 64000, elements: !334)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "n_chi", scope: !2, file: !15, line: 41, type: !11, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "chi", scope: !2, file: !15, line: 42, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 96000, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 500)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 256)
!356 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!357 = !{i32 7, !"Dwarf Version", i32 4}
!358 = !{i32 2, !"Debug Info Version", i32 3}
!359 = !{i32 1, !"wchar_size", i32 4}
!360 = !{!"clang version 10.0.0-4ubuntu1 "}
!361 = distinct !DISubprogram(name: "getreslibkind", scope: !15, file: !15, line: 78, type: !362, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{!12, !12}
!364 = !{!365, !366, !367}
!365 = !DILocalVariable(name: "reslib", arg: 1, scope: !361, file: !15, line: 78, type: !12)
!366 = !DILocalVariable(name: "nhp", scope: !361, file: !15, line: 80, type: !12)
!367 = !DILocalVariable(name: "rlp", scope: !361, file: !15, line: 81, type: !299)
!368 = !DILocation(line: 0, scope: !361)
!369 = !DILocalVariable(name: "reslib", arg: 1, scope: !370, file: !15, line: 422, type: !12)
!370 = distinct !DISubprogram(name: "known_reslib", scope: !15, file: !15, line: 422, type: !371, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!299, !12}
!373 = !{!369, !374}
!374 = !DILocalVariable(name: "rlp", scope: !370, file: !15, line: 424, type: !299)
!375 = !DILocation(line: 0, scope: !370, inlinedAt: !376)
!376 = distinct !DILocation(line: 83, column: 14, scope: !377)
!377 = distinct !DILexicalBlock(scope: !361, file: !15, line: 83, column: 6)
!378 = !DILocation(line: 0, scope: !379, inlinedAt: !376)
!379 = distinct !DILexicalBlock(scope: !370, file: !15, line: 426, column: 2)
!380 = !{!381, !381, i64 0}
!381 = !{!"any pointer", !382, i64 0}
!382 = !{!"omnipotent char", !383, i64 0}
!383 = !{!"Simple C/C++ TBAA"}
!384 = !DILocation(line: 426, column: 2, scope: !379, inlinedAt: !376)
!385 = !DILocation(line: 427, column: 20, scope: !386, inlinedAt: !376)
!386 = distinct !DILexicalBlock(scope: !387, file: !15, line: 427, column: 7)
!387 = distinct !DILexicalBlock(scope: !388, file: !15, line: 426, column: 47)
!388 = distinct !DILexicalBlock(scope: !379, file: !15, line: 426, column: 2)
!389 = !{!390, !381, i64 8}
!390 = !{!"reslib_t", !381, i64 0, !381, i64 8, !391, i64 16, !391, i64 20, !381, i64 24}
!391 = !{!"int", !382, i64 0}
!392 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !376)
!393 = !DILocation(line: 427, column: 38, scope: !386, inlinedAt: !376)
!394 = !DILocation(line: 427, column: 7, scope: !387, inlinedAt: !376)
!395 = !DILocation(line: 426, column: 38, scope: !388, inlinedAt: !376)
!396 = distinct !{!396, !384, !397}
!397 = !DILocation(line: 430, column: 2, scope: !379, inlinedAt: !376)
!398 = !DILocation(line: 84, column: 15, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !15, line: 84, column: 7)
!400 = distinct !DILexicalBlock(scope: !377, file: !15, line: 83, column: 48)
!401 = !DILocation(line: 84, column: 39, scope: !399)
!402 = !DILocation(line: 84, column: 7, scope: !400)
!403 = !DILocation(line: 85, column: 13, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !15, line: 84, column: 48)
!405 = !DILocation(line: 85, column: 4, scope: !404)
!406 = !DILocation(line: 87, column: 4, scope: !404)
!407 = !DILocation(line: 0, scope: !377)
!408 = !DILocation(line: 90, column: 11, scope: !409)
!409 = distinct !DILexicalBlock(scope: !361, file: !15, line: 90, column: 6)
!410 = !{!390, !391, i64 16}
!411 = !DILocation(line: 90, column: 6, scope: !361)
!412 = !DILocation(line: 101, column: 1, scope: !361)
!413 = distinct !DISubprogram(name: "read_reslib", scope: !15, file: !15, line: 434, type: !371, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!414 = !{!415, !416, !420, !421, !422, !423, !424}
!415 = !DILocalVariable(name: "reslib", arg: 1, scope: !413, file: !15, line: 434, type: !12)
!416 = !DILocalVariable(name: "pfp", scope: !413, file: !15, line: 436, type: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !419, line: 7, baseType: !244)
!419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!420 = !DILocalVariable(name: "bfp", scope: !413, file: !15, line: 437, type: !417)
!421 = !DILocalVariable(name: "qfp", scope: !413, file: !15, line: 438, type: !417)
!422 = !DILocalVariable(name: "cfp", scope: !413, file: !15, line: 439, type: !417)
!423 = !DILocalVariable(name: "rlp", scope: !413, file: !15, line: 440, type: !299)
!424 = !DILocalVariable(name: "offname", scope: !413, file: !15, line: 441, type: !353)
!425 = !DILocalVariable(name: "anm1", scope: !426, file: !15, line: 854, type: !340)
!426 = distinct !DISubprogram(name: "chi2reslib", scope: !15, file: !15, line: 848, type: !427, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !417, !299}
!429 = !{!430, !431, !432, !433, !434, !435, !436, !425, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!430 = !DILocalVariable(name: "cfp", arg: 1, scope: !426, file: !15, line: 848, type: !417)
!431 = !DILocalVariable(name: "rlp", arg: 2, scope: !426, file: !15, line: 848, type: !299)
!432 = !DILocalVariable(name: "line", scope: !426, file: !15, line: 850, type: !353)
!433 = !DILocalVariable(name: "r_name", scope: !426, file: !15, line: 851, type: !296)
!434 = !DILocalVariable(name: "llen", scope: !426, file: !15, line: 852, type: !11)
!435 = !DILocalVariable(name: "res", scope: !426, file: !15, line: 853, type: !170)
!436 = !DILocalVariable(name: "res1", scope: !426, file: !15, line: 853, type: !170)
!437 = !DILocalVariable(name: "anm2", scope: !426, file: !15, line: 854, type: !340)
!438 = !DILocalVariable(name: "anm3", scope: !426, file: !15, line: 854, type: !340)
!439 = !DILocalVariable(name: "anm4", scope: !426, file: !15, line: 854, type: !340)
!440 = !DILocalVariable(name: "a1", scope: !426, file: !15, line: 855, type: !11)
!441 = !DILocalVariable(name: "a2", scope: !426, file: !15, line: 855, type: !11)
!442 = !DILocalVariable(name: "a3", scope: !426, file: !15, line: 855, type: !11)
!443 = !DILocalVariable(name: "a4", scope: !426, file: !15, line: 855, type: !11)
!444 = !DILocalVariable(name: "ap", scope: !426, file: !15, line: 856, type: !202)
!445 = !DILocalVariable(name: "cp", scope: !426, file: !15, line: 857, type: !191)
!446 = !DILocation(line: 854, column: 7, scope: !426, inlinedAt: !447)
!447 = distinct !DILocation(line: 465, column: 3, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !15, line: 464, column: 11)
!449 = distinct !DILexicalBlock(scope: !413, file: !15, line: 464, column: 6)
!450 = !DILocation(line: 854, column: 18, scope: !426, inlinedAt: !447)
!451 = !DILocation(line: 854, column: 29, scope: !426, inlinedAt: !447)
!452 = !DILocation(line: 854, column: 40, scope: !426, inlinedAt: !447)
!453 = !DILocalVariable(name: "ltype", scope: !454, file: !15, line: 940, type: !460)
!454 = distinct !DISubprogram(name: "qr2reslib", scope: !15, file: !15, line: 937, type: !427, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!455 = !{!456, !457, !458, !453, !459, !463, !464, !465, !466, !467, !468}
!456 = !DILocalVariable(name: "qfp", arg: 1, scope: !454, file: !15, line: 937, type: !417)
!457 = !DILocalVariable(name: "rlp", arg: 2, scope: !454, file: !15, line: 937, type: !299)
!458 = !DILocalVariable(name: "line", scope: !454, file: !15, line: 939, type: !353)
!459 = !DILocalVariable(name: "a_name", scope: !454, file: !15, line: 940, type: !460)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 10)
!463 = !DILocalVariable(name: "r_name", scope: !454, file: !15, line: 940, type: !460)
!464 = !DILocalVariable(name: "a_num", scope: !454, file: !15, line: 941, type: !11)
!465 = !DILocalVariable(name: "r_num", scope: !454, file: !15, line: 941, type: !11)
!466 = !DILocalVariable(name: "q", scope: !454, file: !15, line: 942, type: !48)
!467 = !DILocalVariable(name: "r", scope: !454, file: !15, line: 942, type: !48)
!468 = !DILocalVariable(name: "ap", scope: !454, file: !15, line: 943, type: !202)
!469 = !DILocation(line: 940, column: 7, scope: !454, inlinedAt: !470)
!470 = distinct !DILocation(line: 460, column: 3, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !15, line: 459, column: 11)
!472 = distinct !DILexicalBlock(scope: !413, file: !15, line: 459, column: 6)
!473 = !DILocalVariable(name: "ltype", scope: !474, file: !15, line: 765, type: !460)
!474 = distinct !DISubprogram(name: "pdb2reslib", scope: !15, file: !15, line: 762, type: !427, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!475 = !{!476, !477, !478, !473, !479, !480, !481, !482, !483, !484, !485, !486}
!476 = !DILocalVariable(name: "rfp", arg: 1, scope: !474, file: !15, line: 762, type: !417)
!477 = !DILocalVariable(name: "rlp", arg: 2, scope: !474, file: !15, line: 762, type: !299)
!478 = !DILocalVariable(name: "line", scope: !474, file: !15, line: 764, type: !353)
!479 = !DILocalVariable(name: "a_name", scope: !474, file: !15, line: 765, type: !460)
!480 = !DILocalVariable(name: "r_name", scope: !474, file: !15, line: 765, type: !460)
!481 = !DILocalVariable(name: "a_num", scope: !474, file: !15, line: 766, type: !11)
!482 = !DILocalVariable(name: "r_num", scope: !474, file: !15, line: 766, type: !11)
!483 = !DILocalVariable(name: "x", scope: !474, file: !15, line: 767, type: !48)
!484 = !DILocalVariable(name: "y", scope: !474, file: !15, line: 767, type: !48)
!485 = !DILocalVariable(name: "z", scope: !474, file: !15, line: 767, type: !48)
!486 = !DILocalVariable(name: "ap", scope: !474, file: !15, line: 768, type: !202)
!487 = !DILocation(line: 765, column: 7, scope: !474, inlinedAt: !488)
!488 = distinct !DILocation(line: 453, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !15, line: 452, column: 7)
!490 = distinct !DILexicalBlock(scope: !413, file: !15, line: 450, column: 7)
!491 = !DILocation(line: 940, column: 20, scope: !454, inlinedAt: !470)
!492 = !DILocation(line: 765, column: 20, scope: !474, inlinedAt: !488)
!493 = !DILocation(line: 940, column: 34, scope: !454, inlinedAt: !470)
!494 = !DILocation(line: 765, column: 34, scope: !474, inlinedAt: !488)
!495 = !DILocalVariable(name: "typex", scope: !496, file: !15, line: 653, type: !533)
!496 = distinct !DISubprogram(name: "off2reslib", scope: !15, file: !15, line: 647, type: !497, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !12, !299}
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507, !531, !495, !532, !536, !537, !538, !539, !540, !541, !543, !544, !545, !546, !549, !550, !551}
!500 = !DILocalVariable(name: "offname", arg: 1, scope: !496, file: !15, line: 647, type: !12)
!501 = !DILocalVariable(name: "rlp", arg: 2, scope: !496, file: !15, line: 647, type: !299)
!502 = !DILocalVariable(name: "ap", scope: !496, file: !15, line: 649, type: !202)
!503 = !DILocalVariable(name: "n_names", scope: !496, file: !15, line: 650, type: !11)
!504 = !DILocalVariable(name: "n_resnames", scope: !496, file: !15, line: 650, type: !11)
!505 = !DILocalVariable(name: "i", scope: !496, file: !15, line: 650, type: !11)
!506 = !DILocalVariable(name: "ires", scope: !496, file: !15, line: 650, type: !11)
!507 = !DILocalVariable(name: "db", scope: !496, file: !15, line: 651, type: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASE", file: !509, line: 84, baseType: !510)
!509 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/database.h", directory: "/home/rouzbeh/Graduate/Research")
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASEt", file: !509, line: 82, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !509, line: 65, size: 33024, elements: !513)
!513 = !{!514, !515, !516, !518, !519, !520, !522, !524, !525, !526, !528, !529, !530}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "iAccessMode", scope: !512, file: !509, line: 66, baseType: !11, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fDataBase", scope: !512, file: !509, line: 67, baseType: !417, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sFileName", scope: !512, file: !509, line: 68, baseType: !517, size: 2048, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !509, line: 48, baseType: !353)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "iOpenMode", scope: !512, file: !509, line: 69, baseType: !11, size: 32, offset: 2176)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefix", scope: !512, file: !509, line: 70, baseType: !11, size: 32, offset: 2208)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "saPrefixStack", scope: !512, file: !509, line: 71, baseType: !521, size: 20480, offset: 2240)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 20480, elements: !461)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "bCompactFileAtClose", scope: !512, file: !509, line: 72, baseType: !523, size: 8, offset: 22720)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !509, line: 47, baseType: !13)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dEntries", scope: !512, file: !509, line: 73, baseType: !6, size: 64, offset: 22784)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "iCurrentLine", scope: !512, file: !509, line: 74, baseType: !11, size: 32, offset: 22848)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sLookAhead", scope: !512, file: !509, line: 75, baseType: !527, size: 8000, offset: 22880)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !334)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "iLastSequentialOperation", scope: !512, file: !509, line: 76, baseType: !11, size: 32, offset: 30880)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sLoopPrefix", scope: !512, file: !509, line: 79, baseType: !517, size: 2048, offset: 30912)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dlEntryLoop", scope: !512, file: !509, line: 80, baseType: !11, size: 32, offset: 32960)
!531 = !DILocalVariable(name: "bresult", scope: !496, file: !15, line: 652, type: !523)
!532 = !DILocalVariable(name: "resx", scope: !496, file: !15, line: 653, type: !533)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 3200, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 100)
!536 = !DILocalVariable(name: "flags", scope: !496, file: !15, line: 653, type: !533)
!537 = !DILocalVariable(name: "seq", scope: !496, file: !15, line: 654, type: !533)
!538 = !DILocalVariable(name: "elmnt", scope: !496, file: !15, line: 654, type: !533)
!539 = !DILocalVariable(name: "atom1x", scope: !496, file: !15, line: 655, type: !533)
!540 = !DILocalVariable(name: "atom2x", scope: !496, file: !15, line: 655, type: !533)
!541 = !DILocalVariable(name: "chg", scope: !496, file: !15, line: 656, type: !542)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 6400, elements: !534)
!543 = !DILocalVariable(name: "x", scope: !496, file: !15, line: 656, type: !542)
!544 = !DILocalVariable(name: "y", scope: !496, file: !15, line: 656, type: !542)
!545 = !DILocalVariable(name: "z", scope: !496, file: !15, line: 656, type: !542)
!546 = !DILocalVariable(name: "a_name", scope: !496, file: !15, line: 657, type: !547)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !548)
!548 = !{!535, !462}
!549 = !DILocalVariable(name: "type", scope: !496, file: !15, line: 657, type: !547)
!550 = !DILocalVariable(name: "res_name", scope: !496, file: !15, line: 657, type: !547)
!551 = !DILocalVariable(name: "prefix", scope: !496, file: !15, line: 658, type: !552)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2040, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 255)
!555 = !DILocation(line: 653, column: 6, scope: !496, inlinedAt: !556)
!556 = distinct !DILocation(line: 451, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !490, file: !15, line: 450, column: 17)
!558 = !DILocation(line: 653, column: 20, scope: !496, inlinedAt: !556)
!559 = !DILocation(line: 653, column: 33, scope: !496, inlinedAt: !556)
!560 = !DILocation(line: 654, column: 3, scope: !496, inlinedAt: !556)
!561 = !DILocation(line: 654, column: 15, scope: !496, inlinedAt: !556)
!562 = !DILocation(line: 655, column: 6, scope: !496, inlinedAt: !556)
!563 = !DILocation(line: 655, column: 21, scope: !496, inlinedAt: !556)
!564 = !DILocation(line: 656, column: 9, scope: !496, inlinedAt: !556)
!565 = !DILocation(line: 656, column: 21, scope: !496, inlinedAt: !556)
!566 = !DILocation(line: 656, column: 31, scope: !496, inlinedAt: !556)
!567 = !DILocation(line: 656, column: 41, scope: !496, inlinedAt: !556)
!568 = !DILocation(line: 657, column: 7, scope: !496, inlinedAt: !556)
!569 = !DILocation(line: 657, column: 28, scope: !496, inlinedAt: !556)
!570 = !DILocation(line: 657, column: 47, scope: !496, inlinedAt: !556)
!571 = !DILocation(line: 658, column: 7, scope: !496, inlinedAt: !556)
!572 = !DILocalVariable(name: "line", scope: !573, file: !15, line: 499, type: !595)
!573 = distinct !DISubprogram(name: "read_reslib_header", scope: !15, file: !15, line: 492, type: !574, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!574 = !DISubroutineType(types: !575)
!575 = !{!299, !12, !576, !576, !576, !576, !12}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !572, !589, !590, !592, !593, !594}
!578 = !DILocalVariable(name: "reslib", arg: 1, scope: !573, file: !15, line: 492, type: !12)
!579 = !DILocalVariable(name: "pfp", arg: 2, scope: !573, file: !15, line: 493, type: !576)
!580 = !DILocalVariable(name: "bfp", arg: 3, scope: !573, file: !15, line: 493, type: !576)
!581 = !DILocalVariable(name: "qfp", arg: 4, scope: !573, file: !15, line: 493, type: !576)
!582 = !DILocalVariable(name: "cfp", arg: 5, scope: !573, file: !15, line: 493, type: !576)
!583 = !DILocalVariable(name: "offname", arg: 6, scope: !573, file: !15, line: 493, type: !12)
!584 = !DILocalVariable(name: "rfp", scope: !573, file: !15, line: 495, type: !417)
!585 = !DILocalVariable(name: "rlp", scope: !573, file: !15, line: 496, type: !299)
!586 = !DILocalVariable(name: "nw", scope: !573, file: !15, line: 497, type: !11)
!587 = !DILocalVariable(name: "nsize", scope: !573, file: !15, line: 497, type: !11)
!588 = !DILocalVariable(name: "np", scope: !573, file: !15, line: 498, type: !12)
!589 = !DILocalVariable(name: "keyword", scope: !573, file: !15, line: 499, type: !296)
!590 = !DILocalVariable(name: "value", scope: !573, file: !15, line: 499, type: !591)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !534)
!592 = !DILocalVariable(name: "newname", scope: !573, file: !15, line: 499, type: !591)
!593 = !DILocalVariable(name: "fname", scope: !573, file: !15, line: 500, type: !353)
!594 = !DILabel(scope: !573, name: "clean_up", file: !15, line: 621)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 128)
!598 = !DILocation(line: 499, column: 7, scope: !573, inlinedAt: !599)
!599 = distinct !DILocation(line: 443, column: 14, scope: !600)
!600 = distinct !DILexicalBlock(scope: !413, file: !15, line: 443, column: 6)
!601 = !DILocation(line: 851, column: 7, scope: !426, inlinedAt: !447)
!602 = !DILocalVariable(name: "r_name", scope: !603, file: !15, line: 808, type: !296)
!603 = distinct !DISubprogram(name: "bnd2reslib", scope: !15, file: !15, line: 805, type: !427, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !604)
!604 = !{!605, !606, !607, !602, !608, !609, !610}
!605 = !DILocalVariable(name: "bfp", arg: 1, scope: !603, file: !15, line: 805, type: !417)
!606 = !DILocalVariable(name: "rlp", arg: 2, scope: !603, file: !15, line: 805, type: !299)
!607 = !DILocalVariable(name: "line", scope: !603, file: !15, line: 807, type: !353)
!608 = !DILocalVariable(name: "llen", scope: !603, file: !15, line: 809, type: !11)
!609 = !DILocalVariable(name: "bi", scope: !603, file: !15, line: 810, type: !11)
!610 = !DILocalVariable(name: "bj", scope: !603, file: !15, line: 810, type: !11)
!611 = !DILocation(line: 808, column: 7, scope: !603, inlinedAt: !612)
!612 = distinct !DILocation(line: 454, column: 3, scope: !489)
!613 = !DILocation(line: 499, column: 20, scope: !573, inlinedAt: !599)
!614 = !DILocalVariable(name: "rkind", scope: !615, file: !15, line: 980, type: !591)
!615 = distinct !DISubprogram(name: "setrlibattrs", scope: !15, file: !15, line: 978, type: !616, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !299, !12}
!618 = !{!619, !620, !614, !621}
!619 = !DILocalVariable(name: "rlp", arg: 1, scope: !615, file: !15, line: 978, type: !299)
!620 = !DILocalVariable(name: "line", arg: 2, scope: !615, file: !15, line: 978, type: !12)
!621 = !DILocalVariable(name: "rakind", scope: !615, file: !15, line: 980, type: !591)
!622 = !DILocation(line: 980, column: 7, scope: !615, inlinedAt: !623)
!623 = distinct !DILocation(line: 774, column: 4, scope: !624, inlinedAt: !488)
!624 = distinct !DILexicalBlock(scope: !625, file: !15, line: 773, column: 42)
!625 = distinct !DILexicalBlock(scope: !626, file: !15, line: 773, column: 7)
!626 = distinct !DILexicalBlock(scope: !474, file: !15, line: 772, column: 45)
!627 = !DILocation(line: 499, column: 35, scope: !573, inlinedAt: !599)
!628 = !DILocation(line: 980, column: 21, scope: !615, inlinedAt: !623)
!629 = !DILocation(line: 499, column: 49, scope: !573, inlinedAt: !599)
!630 = !DILocation(line: 850, column: 7, scope: !426, inlinedAt: !447)
!631 = !DILocation(line: 939, column: 7, scope: !454, inlinedAt: !470)
!632 = !DILocation(line: 807, column: 7, scope: !603, inlinedAt: !612)
!633 = !DILocation(line: 764, column: 7, scope: !474, inlinedAt: !488)
!634 = !DILocation(line: 500, column: 7, scope: !573, inlinedAt: !599)
!635 = !DILocation(line: 0, scope: !413)
!636 = !DILocation(line: 441, column: 2, scope: !413)
!637 = !DILocation(line: 441, column: 7, scope: !413)
!638 = !DILocation(line: 0, scope: !573, inlinedAt: !599)
!639 = !DILocation(line: 499, column: 2, scope: !573, inlinedAt: !599)
!640 = !DILocation(line: 500, column: 2, scope: !573, inlinedAt: !599)
!641 = !DILocation(line: 502, column: 6, scope: !642, inlinedAt: !599)
!642 = distinct !DILexicalBlock(scope: !573, file: !15, line: 502, column: 6)
!643 = !DILocation(line: 502, column: 31, scope: !642, inlinedAt: !599)
!644 = !DILocation(line: 502, column: 6, scope: !573, inlinedAt: !599)
!645 = !DILocation(line: 503, column: 3, scope: !646, inlinedAt: !599)
!646 = distinct !DILexicalBlock(scope: !642, file: !15, line: 502, column: 40)
!647 = !DILocalVariable(name: "sname", arg: 1, scope: !648, file: !15, line: 637, type: !12)
!648 = distinct !DISubprogram(name: "mk_fname", scope: !15, file: !15, line: 637, type: !649, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !12, !12}
!651 = !{!647, !652}
!652 = !DILocalVariable(name: "fname", arg: 2, scope: !648, file: !15, line: 637, type: !12)
!653 = !DILocation(line: 0, scope: !648, inlinedAt: !654)
!654 = distinct !DILocation(line: 504, column: 3, scope: !646, inlinedAt: !599)
!655 = !DILocation(line: 640, column: 6, scope: !656, inlinedAt: !654)
!656 = distinct !DILexicalBlock(scope: !648, file: !15, line: 640, column: 6)
!657 = !{!382, !382, i64 0}
!658 = !DILocation(line: 640, column: 13, scope: !656, inlinedAt: !654)
!659 = !DILocation(line: 640, column: 20, scope: !656, inlinedAt: !654)
!660 = !DILocation(line: 641, column: 4, scope: !656, inlinedAt: !654)
!661 = !DILocation(line: 640, column: 6, scope: !648, inlinedAt: !654)
!662 = !DILocation(line: 642, column: 3, scope: !656, inlinedAt: !654)
!663 = !DILocation(line: 644, column: 3, scope: !656, inlinedAt: !654)
!664 = !DILocation(line: 505, column: 15, scope: !665, inlinedAt: !599)
!665 = distinct !DILexicalBlock(scope: !646, file: !15, line: 505, column: 7)
!666 = !DILocation(line: 505, column: 37, scope: !665, inlinedAt: !599)
!667 = !DILocation(line: 505, column: 7, scope: !646, inlinedAt: !599)
!668 = !DILocation(line: 506, column: 4, scope: !669, inlinedAt: !599)
!669 = distinct !DILexicalBlock(scope: !665, file: !15, line: 505, column: 46)
!670 = !DILocation(line: 507, column: 4, scope: !669, inlinedAt: !599)
!671 = !DILocation(line: 0, scope: !648, inlinedAt: !672)
!672 = distinct !DILocation(line: 510, column: 3, scope: !673, inlinedAt: !599)
!673 = distinct !DILexicalBlock(scope: !642, file: !15, line: 509, column: 7)
!674 = !DILocation(line: 640, column: 6, scope: !656, inlinedAt: !672)
!675 = !DILocation(line: 640, column: 13, scope: !656, inlinedAt: !672)
!676 = !DILocation(line: 640, column: 20, scope: !656, inlinedAt: !672)
!677 = !DILocation(line: 641, column: 4, scope: !656, inlinedAt: !672)
!678 = !DILocation(line: 640, column: 6, scope: !648, inlinedAt: !672)
!679 = !DILocation(line: 642, column: 3, scope: !656, inlinedAt: !672)
!680 = !DILocation(line: 644, column: 3, scope: !656, inlinedAt: !672)
!681 = !DILocation(line: 511, column: 15, scope: !682, inlinedAt: !599)
!682 = distinct !DILexicalBlock(scope: !673, file: !15, line: 511, column: 7)
!683 = !DILocation(line: 511, column: 37, scope: !682, inlinedAt: !599)
!684 = !DILocation(line: 511, column: 7, scope: !673, inlinedAt: !599)
!685 = !DILocation(line: 512, column: 4, scope: !686, inlinedAt: !599)
!686 = distinct !DILexicalBlock(scope: !682, file: !15, line: 511, column: 46)
!687 = !DILocation(line: 513, column: 4, scope: !686, inlinedAt: !599)
!688 = !DILocation(line: 0, scope: !642, inlinedAt: !599)
!689 = !DILocation(line: 517, column: 28, scope: !690, inlinedAt: !599)
!690 = distinct !DILexicalBlock(scope: !573, file: !15, line: 517, column: 6)
!691 = !DILocation(line: 517, column: 14, scope: !690, inlinedAt: !599)
!692 = !DILocation(line: 517, column: 59, scope: !690, inlinedAt: !599)
!693 = !DILocation(line: 517, column: 6, scope: !573, inlinedAt: !599)
!694 = !DILocation(line: 518, column: 3, scope: !695, inlinedAt: !599)
!695 = distinct !DILexicalBlock(scope: !690, file: !15, line: 517, column: 68)
!696 = !DILocation(line: 519, column: 3, scope: !695, inlinedAt: !599)
!697 = !DILocation(line: 520, column: 3, scope: !695, inlinedAt: !599)
!698 = !DILocation(line: 523, column: 10, scope: !573, inlinedAt: !599)
!699 = !DILocation(line: 524, column: 31, scope: !700, inlinedAt: !599)
!700 = distinct !DILexicalBlock(scope: !573, file: !15, line: 524, column: 6)
!701 = !DILocation(line: 524, column: 23, scope: !700, inlinedAt: !599)
!702 = !DILocation(line: 524, column: 58, scope: !700, inlinedAt: !599)
!703 = !DILocation(line: 524, column: 6, scope: !573, inlinedAt: !599)
!704 = !DILocation(line: 525, column: 3, scope: !705, inlinedAt: !599)
!705 = distinct !DILexicalBlock(scope: !700, file: !15, line: 524, column: 67)
!706 = !DILocation(line: 526, column: 3, scope: !705, inlinedAt: !599)
!707 = !DILocation(line: 527, column: 3, scope: !705, inlinedAt: !599)
!708 = !DILocation(line: 529, column: 2, scope: !573, inlinedAt: !599)
!709 = !DILocation(line: 530, column: 17, scope: !573, inlinedAt: !599)
!710 = !DILocation(line: 530, column: 15, scope: !573, inlinedAt: !599)
!711 = !{!390, !381, i64 0}
!712 = !DILocation(line: 531, column: 10, scope: !573, inlinedAt: !599)
!713 = !DILocation(line: 532, column: 7, scope: !573, inlinedAt: !599)
!714 = !DILocation(line: 532, column: 15, scope: !573, inlinedAt: !599)
!715 = !DILocation(line: 533, column: 7, scope: !573, inlinedAt: !599)
!716 = !DILocation(line: 534, column: 7, scope: !573, inlinedAt: !599)
!717 = !DILocation(line: 534, column: 21, scope: !573, inlinedAt: !599)
!718 = !DILocation(line: 541, column: 11, scope: !573, inlinedAt: !599)
!719 = !DILocation(line: 543, column: 7, scope: !720, inlinedAt: !599)
!720 = distinct !DILexicalBlock(scope: !573, file: !15, line: 543, column: 7)
!721 = !DILocation(line: 543, column: 32, scope: !720, inlinedAt: !599)
!722 = !DILocation(line: 543, column: 7, scope: !573, inlinedAt: !599)
!723 = !DILocation(line: 544, column: 10, scope: !724, inlinedAt: !599)
!724 = distinct !DILexicalBlock(scope: !720, file: !15, line: 543, column: 41)
!725 = !DILocation(line: 544, column: 3, scope: !724, inlinedAt: !599)
!726 = !DILocation(line: 0, scope: !727, inlinedAt: !599)
!727 = distinct !DILexicalBlock(scope: !728, file: !15, line: 574, column: 14)
!728 = distinct !DILexicalBlock(scope: !729, file: !15, line: 565, column: 14)
!729 = distinct !DILexicalBlock(scope: !730, file: !15, line: 554, column: 14)
!730 = distinct !DILexicalBlock(scope: !731, file: !15, line: 551, column: 14)
!731 = distinct !DILexicalBlock(scope: !732, file: !15, line: 547, column: 8)
!732 = distinct !DILexicalBlock(scope: !724, file: !15, line: 544, column: 46)
!733 = !DILocation(line: 0, scope: !656, inlinedAt: !734)
!734 = distinct !DILocation(line: 586, column: 5, scope: !735, inlinedAt: !599)
!735 = distinct !DILexicalBlock(scope: !736, file: !15, line: 585, column: 45)
!736 = distinct !DILexicalBlock(scope: !737, file: !15, line: 585, column: 14)
!737 = distinct !DILexicalBlock(scope: !727, file: !15, line: 576, column: 14)
!738 = !DILocation(line: 0, scope: !739, inlinedAt: !599)
!739 = distinct !DILexicalBlock(scope: !740, file: !15, line: 568, column: 14)
!740 = distinct !DILexicalBlock(scope: !741, file: !15, line: 566, column: 9)
!741 = distinct !DILexicalBlock(scope: !728, file: !15, line: 565, column: 50)
!742 = !DILocation(line: 537, column: 7, scope: !573, inlinedAt: !599)
!743 = !DILocation(line: 538, column: 7, scope: !573, inlinedAt: !599)
!744 = !DILocation(line: 539, column: 7, scope: !573, inlinedAt: !599)
!745 = !DILocation(line: 540, column: 7, scope: !573, inlinedAt: !599)
!746 = !DILocation(line: 545, column: 8, scope: !747, inlinedAt: !599)
!747 = distinct !DILexicalBlock(scope: !732, file: !15, line: 545, column: 8)
!748 = !DILocation(line: 545, column: 14, scope: !747, inlinedAt: !599)
!749 = !DILocation(line: 545, column: 8, scope: !732, inlinedAt: !599)
!750 = !DILocation(line: 547, column: 15, scope: !731, inlinedAt: !599)
!751 = !DILocation(line: 547, column: 8, scope: !732, inlinedAt: !599)
!752 = !DILocation(line: 554, column: 14, scope: !729, inlinedAt: !599)
!753 = !DILocation(line: 554, column: 40, scope: !729, inlinedAt: !599)
!754 = !DILocation(line: 554, column: 14, scope: !730, inlinedAt: !599)
!755 = !DILocation(line: 555, column: 9, scope: !756, inlinedAt: !599)
!756 = distinct !DILexicalBlock(scope: !757, file: !15, line: 555, column: 9)
!757 = distinct !DILexicalBlock(scope: !729, file: !15, line: 554, column: 46)
!758 = !DILocation(line: 555, column: 9, scope: !757, inlinedAt: !599)
!759 = !DILocation(line: 556, column: 21, scope: !756, inlinedAt: !599)
!760 = !DILocation(line: 556, column: 6, scope: !756, inlinedAt: !599)
!761 = !DILocation(line: 558, column: 21, scope: !762, inlinedAt: !599)
!762 = distinct !DILexicalBlock(scope: !756, file: !15, line: 557, column: 14)
!763 = !DILocation(line: 558, column: 6, scope: !762, inlinedAt: !599)
!764 = !DILocation(line: 559, column: 14, scope: !765, inlinedAt: !599)
!765 = distinct !DILexicalBlock(scope: !762, file: !15, line: 559, column: 14)
!766 = !DILocation(line: 559, column: 36, scope: !765, inlinedAt: !599)
!767 = !DILocation(line: 559, column: 14, scope: !762, inlinedAt: !599)
!768 = !DILocation(line: 560, column: 21, scope: !765, inlinedAt: !599)
!769 = !DILocation(line: 565, column: 14, scope: !728, inlinedAt: !599)
!770 = !DILocation(line: 565, column: 44, scope: !728, inlinedAt: !599)
!771 = !DILocation(line: 565, column: 14, scope: !729, inlinedAt: !599)
!772 = !DILocation(line: 566, column: 9, scope: !740, inlinedAt: !599)
!773 = !DILocation(line: 566, column: 35, scope: !740, inlinedAt: !599)
!774 = !DILocation(line: 566, column: 9, scope: !741, inlinedAt: !599)
!775 = !DILocation(line: 567, column: 25, scope: !740, inlinedAt: !599)
!776 = !{!390, !391, i64 20}
!777 = !DILocation(line: 567, column: 6, scope: !740, inlinedAt: !599)
!778 = !DILocation(line: 568, column: 14, scope: !739, inlinedAt: !599)
!779 = !DILocation(line: 568, column: 14, scope: !740, inlinedAt: !599)
!780 = !DILocation(line: 569, column: 25, scope: !739, inlinedAt: !599)
!781 = !DILocation(line: 574, column: 14, scope: !727, inlinedAt: !599)
!782 = !DILocation(line: 574, column: 14, scope: !728, inlinedAt: !599)
!783 = !DILocation(line: 0, scope: !648, inlinedAt: !784)
!784 = distinct !DILocation(line: 575, column: 5, scope: !785, inlinedAt: !599)
!785 = distinct !DILexicalBlock(scope: !727, file: !15, line: 574, column: 45)
!786 = !DILocation(line: 640, column: 6, scope: !656, inlinedAt: !784)
!787 = !DILocation(line: 640, column: 13, scope: !656, inlinedAt: !784)
!788 = !DILocation(line: 641, column: 4, scope: !656, inlinedAt: !784)
!789 = !DILocation(line: 640, column: 20, scope: !656, inlinedAt: !784)
!790 = !DILocation(line: 642, column: 3, scope: !656, inlinedAt: !784)
!791 = !DILocation(line: 644, column: 3, scope: !656, inlinedAt: !784)
!792 = !DILocation(line: 0, scope: !648, inlinedAt: !793)
!793 = distinct !DILocation(line: 577, column: 5, scope: !794, inlinedAt: !599)
!794 = distinct !DILexicalBlock(scope: !737, file: !15, line: 576, column: 45)
!795 = !DILocation(line: 640, column: 6, scope: !656, inlinedAt: !793)
!796 = !DILocation(line: 640, column: 13, scope: !656, inlinedAt: !793)
!797 = !DILocation(line: 641, column: 4, scope: !656, inlinedAt: !793)
!798 = !DILocation(line: 640, column: 20, scope: !656, inlinedAt: !793)
!799 = !DILocation(line: 642, column: 3, scope: !656, inlinedAt: !793)
!800 = !DILocation(line: 644, column: 3, scope: !656, inlinedAt: !793)
!801 = !DILocation(line: 578, column: 18, scope: !802, inlinedAt: !599)
!802 = distinct !DILexicalBlock(scope: !794, file: !15, line: 578, column: 9)
!803 = !DILocation(line: 578, column: 40, scope: !802, inlinedAt: !599)
!804 = !DILocation(line: 578, column: 9, scope: !794, inlinedAt: !599)
!805 = !DILocation(line: 579, column: 6, scope: !806, inlinedAt: !599)
!806 = distinct !DILexicalBlock(scope: !802, file: !15, line: 578, column: 49)
!807 = !DILocation(line: 580, column: 6, scope: !806, inlinedAt: !599)
!808 = !DILocation(line: 621, column: 1, scope: !573, inlinedAt: !599)
!809 = !DILocation(line: 622, column: 2, scope: !573, inlinedAt: !599)
!810 = !DILocation(line: 624, column: 7, scope: !811, inlinedAt: !599)
!811 = distinct !DILexicalBlock(scope: !812, file: !15, line: 623, column: 19)
!812 = distinct !DILexicalBlock(scope: !573, file: !15, line: 623, column: 6)
!813 = !DILocation(line: 0, scope: !648, inlinedAt: !734)
!814 = !DILocation(line: 640, column: 6, scope: !656, inlinedAt: !734)
!815 = !DILocation(line: 640, column: 13, scope: !656, inlinedAt: !734)
!816 = !DILocation(line: 641, column: 4, scope: !656, inlinedAt: !734)
!817 = !DILocation(line: 640, column: 20, scope: !656, inlinedAt: !734)
!818 = !DILocation(line: 642, column: 3, scope: !656, inlinedAt: !734)
!819 = !DILocation(line: 644, column: 3, scope: !656, inlinedAt: !734)
!820 = !DILocation(line: 587, column: 18, scope: !821, inlinedAt: !599)
!821 = distinct !DILexicalBlock(scope: !735, file: !15, line: 587, column: 9)
!822 = !DILocation(line: 587, column: 40, scope: !821, inlinedAt: !599)
!823 = !DILocation(line: 587, column: 9, scope: !735, inlinedAt: !599)
!824 = !DILocation(line: 588, column: 6, scope: !825, inlinedAt: !599)
!825 = distinct !DILexicalBlock(scope: !821, file: !15, line: 587, column: 49)
!826 = !DILocation(line: 589, column: 6, scope: !825, inlinedAt: !599)
!827 = !DILocation(line: 592, column: 6, scope: !825, inlinedAt: !599)
!828 = !DILocation(line: 594, column: 14, scope: !829, inlinedAt: !599)
!829 = distinct !DILexicalBlock(scope: !736, file: !15, line: 594, column: 14)
!830 = !DILocation(line: 594, column: 38, scope: !829, inlinedAt: !599)
!831 = !DILocation(line: 594, column: 14, scope: !736, inlinedAt: !599)
!832 = !DILocation(line: 0, scope: !648, inlinedAt: !833)
!833 = distinct !DILocation(line: 595, column: 5, scope: !834, inlinedAt: !599)
!834 = distinct !DILexicalBlock(scope: !829, file: !15, line: 594, column: 44)
!835 = !DILocation(line: 640, column: 6, scope: !656, inlinedAt: !833)
!836 = !DILocation(line: 640, column: 13, scope: !656, inlinedAt: !833)
!837 = !DILocation(line: 641, column: 4, scope: !656, inlinedAt: !833)
!838 = !DILocation(line: 640, column: 20, scope: !656, inlinedAt: !833)
!839 = !DILocation(line: 642, column: 3, scope: !656, inlinedAt: !833)
!840 = !DILocation(line: 644, column: 3, scope: !656, inlinedAt: !833)
!841 = !DILocation(line: 596, column: 18, scope: !842, inlinedAt: !599)
!842 = distinct !DILexicalBlock(scope: !834, file: !15, line: 596, column: 9)
!843 = !DILocation(line: 596, column: 40, scope: !842, inlinedAt: !599)
!844 = !DILocation(line: 596, column: 9, scope: !834, inlinedAt: !599)
!845 = !DILocation(line: 597, column: 6, scope: !846, inlinedAt: !599)
!846 = distinct !DILexicalBlock(scope: !842, file: !15, line: 596, column: 49)
!847 = !DILocation(line: 598, column: 6, scope: !846, inlinedAt: !599)
!848 = !DILocation(line: 601, column: 6, scope: !846, inlinedAt: !599)
!849 = !DILocation(line: 603, column: 14, scope: !850, inlinedAt: !599)
!850 = distinct !DILexicalBlock(scope: !829, file: !15, line: 603, column: 14)
!851 = !DILocation(line: 603, column: 14, scope: !829, inlinedAt: !599)
!852 = !DILocation(line: 0, scope: !648, inlinedAt: !853)
!853 = distinct !DILocation(line: 604, column: 5, scope: !854, inlinedAt: !599)
!854 = distinct !DILexicalBlock(scope: !850, file: !15, line: 603, column: 45)
!855 = !DILocation(line: 640, column: 6, scope: !656, inlinedAt: !853)
!856 = !DILocation(line: 640, column: 13, scope: !656, inlinedAt: !853)
!857 = !DILocation(line: 641, column: 4, scope: !656, inlinedAt: !853)
!858 = !DILocation(line: 640, column: 20, scope: !656, inlinedAt: !853)
!859 = !DILocation(line: 642, column: 3, scope: !656, inlinedAt: !853)
!860 = !DILocation(line: 644, column: 3, scope: !656, inlinedAt: !853)
!861 = !DILocation(line: 605, column: 18, scope: !862, inlinedAt: !599)
!862 = distinct !DILexicalBlock(scope: !854, file: !15, line: 605, column: 9)
!863 = !DILocation(line: 605, column: 40, scope: !862, inlinedAt: !599)
!864 = !DILocation(line: 605, column: 9, scope: !854, inlinedAt: !599)
!865 = !DILocation(line: 606, column: 6, scope: !866, inlinedAt: !599)
!866 = distinct !DILexicalBlock(scope: !862, file: !15, line: 605, column: 49)
!867 = !DILocation(line: 607, column: 6, scope: !866, inlinedAt: !599)
!868 = !DILocation(line: 610, column: 6, scope: !866, inlinedAt: !599)
!869 = distinct !{!869, !725, !870}
!870 = !DILocation(line: 616, column: 3, scope: !724, inlinedAt: !599)
!871 = !DILocation(line: 0, scope: !648, inlinedAt: !872)
!872 = distinct !DILocation(line: 618, column: 3, scope: !873, inlinedAt: !599)
!873 = distinct !DILexicalBlock(scope: !720, file: !15, line: 617, column: 7)
!874 = !DILocation(line: 640, column: 6, scope: !656, inlinedAt: !872)
!875 = !DILocation(line: 640, column: 13, scope: !656, inlinedAt: !872)
!876 = !DILocation(line: 640, column: 20, scope: !656, inlinedAt: !872)
!877 = !DILocation(line: 641, column: 4, scope: !656, inlinedAt: !872)
!878 = !DILocation(line: 640, column: 6, scope: !648, inlinedAt: !872)
!879 = !DILocation(line: 642, column: 3, scope: !656, inlinedAt: !872)
!880 = !DILocation(line: 644, column: 3, scope: !656, inlinedAt: !872)
!881 = !DILocation(line: 624, column: 7, scope: !882, inlinedAt: !599)
!882 = distinct !DILexicalBlock(scope: !811, file: !15, line: 624, column: 7)
!883 = !DILocation(line: 623, column: 6, scope: !573, inlinedAt: !599)
!884 = !DILocation(line: 624, column: 14, scope: !882, inlinedAt: !599)
!885 = !DILocation(line: 625, column: 7, scope: !886, inlinedAt: !599)
!886 = distinct !DILexicalBlock(scope: !811, file: !15, line: 625, column: 7)
!887 = !DILocation(line: 625, column: 7, scope: !811, inlinedAt: !599)
!888 = !DILocation(line: 625, column: 14, scope: !886, inlinedAt: !599)
!889 = !DILocation(line: 626, column: 7, scope: !890, inlinedAt: !599)
!890 = distinct !DILexicalBlock(scope: !811, file: !15, line: 626, column: 7)
!891 = !DILocation(line: 626, column: 7, scope: !811, inlinedAt: !599)
!892 = !DILocation(line: 626, column: 14, scope: !890, inlinedAt: !599)
!893 = !DILocation(line: 627, column: 7, scope: !894, inlinedAt: !599)
!894 = distinct !DILexicalBlock(scope: !811, file: !15, line: 627, column: 7)
!895 = !DILocation(line: 627, column: 7, scope: !811, inlinedAt: !599)
!896 = !DILocation(line: 627, column: 14, scope: !894, inlinedAt: !599)
!897 = !DILocation(line: 628, column: 11, scope: !811, inlinedAt: !599)
!898 = !DILocation(line: 629, column: 11, scope: !811, inlinedAt: !599)
!899 = !DILocation(line: 630, column: 3, scope: !811, inlinedAt: !599)
!900 = !DILocation(line: 631, column: 3, scope: !811, inlinedAt: !599)
!901 = !DILocation(line: 632, column: 2, scope: !811, inlinedAt: !599)
!902 = !DILocation(line: 635, column: 1, scope: !573, inlinedAt: !599)
!903 = !DILocation(line: 444, column: 15, scope: !600)
!904 = !DILocation(line: 443, column: 6, scope: !413)
!905 = !DILocation(line: 478, column: 7, scope: !906, inlinedAt: !907)
!906 = distinct !DILexicalBlock(scope: !325, file: !15, line: 478, column: 6)
!907 = distinct !DILocation(line: 449, column: 2, scope: !413)
!908 = !DILocation(line: 478, column: 6, scope: !325, inlinedAt: !907)
!909 = !DILocation(line: 480, column: 7, scope: !325, inlinedAt: !907)
!910 = !DILocation(line: 0, scope: !325, inlinedAt: !907)
!911 = !DILocation(line: 481, column: 2, scope: !912, inlinedAt: !907)
!912 = distinct !DILexicalBlock(scope: !325, file: !15, line: 481, column: 2)
!913 = !DILocation(line: 482, column: 3, scope: !914, inlinedAt: !907)
!914 = distinct !DILexicalBlock(scope: !915, file: !15, line: 481, column: 51)
!915 = distinct !DILexicalBlock(scope: !912, file: !15, line: 481, column: 2)
!916 = !DILocation(line: 483, column: 30, scope: !914, inlinedAt: !907)
!917 = !DILocation(line: 483, column: 7, scope: !914, inlinedAt: !907)
!918 = !DILocation(line: 483, column: 18, scope: !914, inlinedAt: !907)
!919 = !{!920, !381, i64 0}
!920 = !{!"atom_t", !381, i64 0, !381, i64 8, !391, i64 16, !391, i64 20, !382, i64 24, !381, i64 56, !921, i64 64, !921, i64 72, !921, i64 80, !921, i64 88, !381, i64 96, !391, i64 104, !921, i64 112, !921, i64 120, !391, i64 128, !391, i64 132, !381, i64 136, !382, i64 144, !921, i64 168}
!921 = !{!"double", !382, i64 0}
!922 = !DILocation(line: 484, column: 22, scope: !923, inlinedAt: !907)
!923 = distinct !DILexicalBlock(scope: !914, file: !15, line: 484, column: 7)
!924 = !DILocation(line: 484, column: 7, scope: !914, inlinedAt: !907)
!925 = !DILocation(line: 485, column: 13, scope: !926, inlinedAt: !907)
!926 = distinct !DILexicalBlock(scope: !923, file: !15, line: 484, column: 31)
!927 = !DILocation(line: 485, column: 4, scope: !926, inlinedAt: !907)
!928 = !DILocation(line: 487, column: 4, scope: !926, inlinedAt: !907)
!929 = !DILocation(line: 481, column: 41, scope: !915, inlinedAt: !907)
!930 = !DILocation(line: 481, column: 47, scope: !915, inlinedAt: !907)
!931 = !DILocation(line: 481, column: 28, scope: !915, inlinedAt: !907)
!932 = distinct !{!932, !911, !933}
!933 = !DILocation(line: 489, column: 2, scope: !912, inlinedAt: !907)
!934 = !DILocation(line: 450, column: 7, scope: !490)
!935 = !DILocation(line: 450, column: 7, scope: !413)
!936 = !DILocation(line: 0, scope: !496, inlinedAt: !556)
!937 = !DILocation(line: 650, column: 2, scope: !496, inlinedAt: !556)
!938 = !DILocation(line: 653, column: 2, scope: !496, inlinedAt: !556)
!939 = !DILocation(line: 655, column: 2, scope: !496, inlinedAt: !556)
!940 = !DILocation(line: 656, column: 2, scope: !496, inlinedAt: !556)
!941 = !DILocation(line: 657, column: 2, scope: !496, inlinedAt: !556)
!942 = !DILocation(line: 658, column: 2, scope: !496, inlinedAt: !556)
!943 = !DILocation(line: 660, column: 10, scope: !496, inlinedAt: !556)
!944 = !{!391, !391, i64 0}
!945 = !DILocation(line: 661, column: 7, scope: !496, inlinedAt: !556)
!946 = !DILocation(line: 665, column: 52, scope: !496, inlinedAt: !556)
!947 = !DILocation(line: 665, column: 12, scope: !496, inlinedAt: !556)
!948 = !DILocation(line: 667, column: 23, scope: !949, inlinedAt: !556)
!949 = distinct !DILexicalBlock(scope: !950, file: !15, line: 667, column: 2)
!950 = distinct !DILexicalBlock(scope: !496, file: !15, line: 667, column: 2)
!951 = !DILocation(line: 667, column: 21, scope: !949, inlinedAt: !556)
!952 = !DILocation(line: 667, column: 2, scope: !950, inlinedAt: !556)
!953 = !DILocation(line: 0, scope: !954, inlinedAt: !556)
!954 = distinct !DILexicalBlock(scope: !949, file: !15, line: 667, column: 43)
!955 = !DILocation(line: 671, column: 33, scope: !954, inlinedAt: !556)
!956 = !DILocation(line: 671, column: 3, scope: !954, inlinedAt: !556)
!957 = !DILocation(line: 672, column: 3, scope: !954, inlinedAt: !556)
!958 = !DILocation(line: 673, column: 3, scope: !954, inlinedAt: !556)
!959 = !DILocation(line: 674, column: 13, scope: !954, inlinedAt: !556)
!960 = !DILocation(line: 678, column: 13, scope: !954, inlinedAt: !556)
!961 = !DILocation(line: 699, column: 13, scope: !954, inlinedAt: !556)
!962 = !DILocation(line: 718, column: 18, scope: !963, inlinedAt: !556)
!963 = distinct !DILexicalBlock(scope: !964, file: !15, line: 718, column: 3)
!964 = distinct !DILexicalBlock(scope: !954, file: !15, line: 718, column: 3)
!965 = !DILocation(line: 718, column: 16, scope: !963, inlinedAt: !556)
!966 = !DILocation(line: 718, column: 3, scope: !964, inlinedAt: !556)
!967 = !DILocation(line: 719, column: 10, scope: !968, inlinedAt: !556)
!968 = distinct !DILexicalBlock(scope: !963, file: !15, line: 718, column: 32)
!969 = !DILocation(line: 720, column: 4, scope: !968, inlinedAt: !556)
!970 = !DILocation(line: 721, column: 16, scope: !968, inlinedAt: !556)
!971 = !DILocation(line: 721, column: 28, scope: !968, inlinedAt: !556)
!972 = !DILocation(line: 721, column: 4, scope: !968, inlinedAt: !556)
!973 = !DILocation(line: 722, column: 21, scope: !968, inlinedAt: !556)
!974 = !{!921, !921, i64 0}
!975 = !DILocation(line: 722, column: 8, scope: !968, inlinedAt: !556)
!976 = !DILocation(line: 722, column: 19, scope: !968, inlinedAt: !556)
!977 = !{!920, !921, i64 64}
!978 = !DILocation(line: 723, column: 21, scope: !968, inlinedAt: !556)
!979 = !DILocation(line: 723, column: 8, scope: !968, inlinedAt: !556)
!980 = !DILocation(line: 723, column: 19, scope: !968, inlinedAt: !556)
!981 = !DILocation(line: 724, column: 21, scope: !968, inlinedAt: !556)
!982 = !DILocation(line: 724, column: 4, scope: !968, inlinedAt: !556)
!983 = !DILocation(line: 724, column: 19, scope: !968, inlinedAt: !556)
!984 = !DILocation(line: 725, column: 21, scope: !968, inlinedAt: !556)
!985 = !DILocation(line: 725, column: 4, scope: !968, inlinedAt: !556)
!986 = !DILocation(line: 725, column: 19, scope: !968, inlinedAt: !556)
!987 = !DILocation(line: 718, column: 28, scope: !963, inlinedAt: !556)
!988 = distinct !{!988, !966, !989}
!989 = !DILocation(line: 726, column: 3, scope: !964, inlinedAt: !556)
!990 = !DILocation(line: 728, column: 15, scope: !991, inlinedAt: !556)
!991 = distinct !DILexicalBlock(scope: !954, file: !15, line: 728, column: 7)
!992 = !DILocation(line: 728, column: 7, scope: !954, inlinedAt: !556)
!993 = !DILocation(line: 729, column: 4, scope: !991, inlinedAt: !556)
!994 = !DILocation(line: 733, column: 13, scope: !954, inlinedAt: !556)
!995 = !DILocation(line: 752, column: 18, scope: !996, inlinedAt: !556)
!996 = distinct !DILexicalBlock(scope: !997, file: !15, line: 752, column: 3)
!997 = distinct !DILexicalBlock(scope: !954, file: !15, line: 752, column: 3)
!998 = !DILocation(line: 752, column: 16, scope: !996, inlinedAt: !556)
!999 = !DILocation(line: 752, column: 3, scope: !997, inlinedAt: !556)
!1000 = !DILocation(line: 752, column: 28, scope: !996, inlinedAt: !556)
!1001 = !DILocation(line: 753, column: 22, scope: !1002, inlinedAt: !556)
!1002 = distinct !DILexicalBlock(scope: !996, file: !15, line: 752, column: 32)
!1003 = !DILocation(line: 754, column: 22, scope: !1002, inlinedAt: !556)
!1004 = !DILocation(line: 754, column: 4, scope: !1002, inlinedAt: !556)
!1005 = !DILocation(line: 754, column: 20, scope: !1002, inlinedAt: !556)
!1006 = distinct !{!1006, !999, !1007, !1008}
!1007 = !DILocation(line: 755, column: 3, scope: !997, inlinedAt: !556)
!1008 = !{!"llvm.loop.isvectorized", i32 1}
!1009 = distinct !{!1009, !1010}
!1010 = !{!"llvm.loop.unroll.disable"}
!1011 = !DILocation(line: 753, column: 4, scope: !1002, inlinedAt: !556)
!1012 = !DILocation(line: 753, column: 20, scope: !1002, inlinedAt: !556)
!1013 = distinct !{!1013, !999, !1007, !1014, !1008}
!1014 = !{!"llvm.loop.unroll.runtime.disable"}
!1015 = !DILocation(line: 758, column: 10, scope: !1016, inlinedAt: !556)
!1016 = distinct !DILexicalBlock(scope: !954, file: !15, line: 757, column: 10)
!1017 = !DILocation(line: 667, column: 39, scope: !949, inlinedAt: !556)
!1018 = distinct !{!1018, !952, !1019}
!1019 = !DILocation(line: 759, column: 2, scope: !950, inlinedAt: !556)
!1020 = !DILocation(line: 760, column: 1, scope: !496, inlinedAt: !556)
!1021 = !DILocation(line: 452, column: 2, scope: !557)
!1022 = !DILocation(line: 0, scope: !474, inlinedAt: !488)
!1023 = !DILocation(line: 764, column: 2, scope: !474, inlinedAt: !488)
!1024 = !DILocation(line: 765, column: 2, scope: !474, inlinedAt: !488)
!1025 = !DILocation(line: 766, column: 2, scope: !474, inlinedAt: !488)
!1026 = !DILocation(line: 767, column: 2, scope: !474, inlinedAt: !488)
!1027 = !DILocation(line: 770, column: 10, scope: !474, inlinedAt: !488)
!1028 = !DILocation(line: 771, column: 11, scope: !474, inlinedAt: !488)
!1029 = !DILocation(line: 772, column: 9, scope: !474, inlinedAt: !488)
!1030 = !DILocation(line: 772, column: 2, scope: !474, inlinedAt: !488)
!1031 = !DILocation(line: 0, scope: !1032, inlinedAt: !488)
!1032 = distinct !DILexicalBlock(scope: !625, file: !15, line: 775, column: 13)
!1033 = !DILocation(line: 0, scope: !1034, inlinedAt: !488)
!1034 = distinct !DILexicalBlock(scope: !1032, file: !15, line: 776, column: 39)
!1035 = !DILocation(line: 0, scope: !1036, inlinedAt: !623)
!1036 = distinct !DILexicalBlock(scope: !615, file: !15, line: 984, column: 6)
!1037 = !DILocation(line: 0, scope: !1038, inlinedAt: !623)
!1038 = distinct !DILexicalBlock(scope: !1036, file: !15, line: 986, column: 11)
!1039 = !DILocation(line: 0, scope: !1040, inlinedAt: !623)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !15, line: 992, column: 11)
!1041 = distinct !DILexicalBlock(scope: !615, file: !15, line: 990, column: 6)
!1042 = !DILocation(line: 773, column: 7, scope: !625, inlinedAt: !488)
!1043 = !DILocation(line: 773, column: 36, scope: !625, inlinedAt: !488)
!1044 = !DILocation(line: 773, column: 7, scope: !626, inlinedAt: !488)
!1045 = !DILocation(line: 0, scope: !615, inlinedAt: !623)
!1046 = !DILocation(line: 980, column: 2, scope: !615, inlinedAt: !623)
!1047 = !DILocation(line: 982, column: 6, scope: !1048, inlinedAt: !623)
!1048 = distinct !DILexicalBlock(scope: !615, file: !15, line: 982, column: 6)
!1049 = !DILocation(line: 982, column: 59, scope: !1048, inlinedAt: !623)
!1050 = !DILocation(line: 982, column: 6, scope: !615, inlinedAt: !623)
!1051 = !DILocation(line: 984, column: 6, scope: !1036, inlinedAt: !623)
!1052 = !DILocation(line: 984, column: 6, scope: !615, inlinedAt: !623)
!1053 = !DILocation(line: 987, column: 3, scope: !1038, inlinedAt: !623)
!1054 = !DILocation(line: 988, column: 11, scope: !1055, inlinedAt: !623)
!1055 = distinct !DILexicalBlock(scope: !1038, file: !15, line: 988, column: 11)
!1056 = !DILocation(line: 988, column: 33, scope: !1055, inlinedAt: !623)
!1057 = !DILocation(line: 988, column: 11, scope: !1038, inlinedAt: !623)
!1058 = !DILocation(line: 990, column: 6, scope: !1041, inlinedAt: !623)
!1059 = !DILocation(line: 990, column: 33, scope: !1041, inlinedAt: !623)
!1060 = !DILocation(line: 990, column: 6, scope: !615, inlinedAt: !623)
!1061 = !DILocation(line: 991, column: 22, scope: !1041, inlinedAt: !623)
!1062 = !DILocation(line: 991, column: 3, scope: !1041, inlinedAt: !623)
!1063 = !DILocation(line: 992, column: 11, scope: !1040, inlinedAt: !623)
!1064 = !DILocation(line: 992, column: 11, scope: !1041, inlinedAt: !623)
!1065 = !DILocation(line: 993, column: 22, scope: !1040, inlinedAt: !623)
!1066 = !DILocation(line: 993, column: 3, scope: !1040, inlinedAt: !623)
!1067 = !DILocation(line: 994, column: 1, scope: !615, inlinedAt: !623)
!1068 = !DILocation(line: 775, column: 3, scope: !624, inlinedAt: !488)
!1069 = !DILocation(line: 775, column: 13, scope: !1032, inlinedAt: !488)
!1070 = !DILocation(line: 775, column: 45, scope: !1032, inlinedAt: !488)
!1071 = !DILocation(line: 776, column: 4, scope: !1032, inlinedAt: !488)
!1072 = !DILocation(line: 776, column: 33, scope: !1032, inlinedAt: !488)
!1073 = !DILocation(line: 775, column: 13, scope: !625, inlinedAt: !488)
!1074 = !DILocation(line: 778, column: 4, scope: !1034, inlinedAt: !488)
!1075 = !DILocation(line: 785, column: 8, scope: !1076, inlinedAt: !488)
!1076 = distinct !DILexicalBlock(scope: !1034, file: !15, line: 785, column: 8)
!1077 = !DILocation(line: 785, column: 34, scope: !1076, inlinedAt: !488)
!1078 = !DILocation(line: 785, column: 8, scope: !1034, inlinedAt: !488)
!1079 = !DILocation(line: 786, column: 9, scope: !1080, inlinedAt: !488)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !15, line: 786, column: 9)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !15, line: 785, column: 40)
!1082 = !DILocation(line: 786, column: 17, scope: !1080, inlinedAt: !488)
!1083 = !DILocation(line: 786, column: 9, scope: !1081, inlinedAt: !488)
!1084 = !DILocation(line: 787, column: 6, scope: !1085, inlinedAt: !488)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !15, line: 786, column: 22)
!1086 = !DILocation(line: 788, column: 14, scope: !1085, inlinedAt: !488)
!1087 = !DILocation(line: 789, column: 5, scope: !1085, inlinedAt: !488)
!1088 = !DILocation(line: 790, column: 5, scope: !1081, inlinedAt: !488)
!1089 = !DILocation(line: 791, column: 4, scope: !1081, inlinedAt: !488)
!1090 = !DILocation(line: 792, column: 17, scope: !1034, inlinedAt: !488)
!1091 = !DILocation(line: 792, column: 10, scope: !1034, inlinedAt: !488)
!1092 = !DILocation(line: 793, column: 4, scope: !1034, inlinedAt: !488)
!1093 = !DILocation(line: 794, column: 16, scope: !1034, inlinedAt: !488)
!1094 = !DILocation(line: 794, column: 4, scope: !1034, inlinedAt: !488)
!1095 = !DILocation(line: 795, column: 21, scope: !1034, inlinedAt: !488)
!1096 = !DILocation(line: 795, column: 8, scope: !1034, inlinedAt: !488)
!1097 = !DILocation(line: 795, column: 19, scope: !1034, inlinedAt: !488)
!1098 = !DILocation(line: 796, column: 21, scope: !1034, inlinedAt: !488)
!1099 = !DILocation(line: 796, column: 4, scope: !1034, inlinedAt: !488)
!1100 = !DILocation(line: 796, column: 19, scope: !1034, inlinedAt: !488)
!1101 = !DILocation(line: 797, column: 21, scope: !1034, inlinedAt: !488)
!1102 = !DILocation(line: 797, column: 4, scope: !1034, inlinedAt: !488)
!1103 = !DILocation(line: 797, column: 19, scope: !1034, inlinedAt: !488)
!1104 = !DILocation(line: 798, column: 11, scope: !1034, inlinedAt: !488)
!1105 = !DILocation(line: 799, column: 3, scope: !1034, inlinedAt: !488)
!1106 = distinct !{!1106, !1030, !1107}
!1107 = !DILocation(line: 800, column: 2, scope: !474, inlinedAt: !488)
!1108 = !DILocation(line: 801, column: 6, scope: !1109, inlinedAt: !488)
!1109 = distinct !DILexicalBlock(scope: !474, file: !15, line: 801, column: 6)
!1110 = !DILocation(line: 801, column: 14, scope: !1109, inlinedAt: !488)
!1111 = !DILocation(line: 801, column: 6, scope: !474, inlinedAt: !488)
!1112 = !DILocation(line: 802, column: 3, scope: !1109, inlinedAt: !488)
!1113 = !DILocation(line: 803, column: 1, scope: !474, inlinedAt: !488)
!1114 = !DILocation(line: 0, scope: !603, inlinedAt: !612)
!1115 = !DILocation(line: 807, column: 2, scope: !603, inlinedAt: !612)
!1116 = !DILocation(line: 808, column: 2, scope: !603, inlinedAt: !612)
!1117 = !DILocation(line: 810, column: 2, scope: !603, inlinedAt: !612)
!1118 = !DILocation(line: 812, column: 10, scope: !603, inlinedAt: !612)
!1119 = !DILocation(line: 813, column: 10, scope: !603, inlinedAt: !612)
!1120 = !DILocation(line: 814, column: 9, scope: !603, inlinedAt: !612)
!1121 = !DILocation(line: 814, column: 2, scope: !603, inlinedAt: !612)
!1122 = !DILocation(line: 815, column: 7, scope: !1123, inlinedAt: !612)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !15, line: 815, column: 7)
!1124 = distinct !DILexicalBlock(scope: !603, file: !15, line: 814, column: 45)
!1125 = !DILocation(line: 815, column: 13, scope: !1123, inlinedAt: !612)
!1126 = !DILocation(line: 815, column: 7, scope: !1124, inlinedAt: !612)
!1127 = !DILocation(line: 816, column: 8, scope: !1128, inlinedAt: !612)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !15, line: 816, column: 8)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !15, line: 815, column: 21)
!1130 = !DILocation(line: 816, column: 39, scope: !1128, inlinedAt: !612)
!1131 = !DILocation(line: 816, column: 8, scope: !1129, inlinedAt: !612)
!1132 = !DILocation(line: 817, column: 12, scope: !1133, inlinedAt: !612)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !15, line: 816, column: 45)
!1134 = !DILocation(line: 818, column: 12, scope: !1133, inlinedAt: !612)
!1135 = !DILocation(line: 819, column: 5, scope: !1133, inlinedAt: !612)
!1136 = !DILocation(line: 820, column: 5, scope: !1133, inlinedAt: !612)
!1137 = !DILocation(line: 822, column: 5, scope: !1133, inlinedAt: !612)
!1138 = !DILocation(line: 823, column: 14, scope: !1139, inlinedAt: !612)
!1139 = distinct !DILexicalBlock(scope: !1128, file: !15, line: 823, column: 14)
!1140 = !DILocation(line: 823, column: 22, scope: !1139, inlinedAt: !612)
!1141 = !DILocation(line: 823, column: 14, scope: !1128, inlinedAt: !612)
!1142 = !DILocation(line: 824, column: 5, scope: !1143, inlinedAt: !612)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !15, line: 823, column: 27)
!1144 = !DILocation(line: 825, column: 5, scope: !1143, inlinedAt: !612)
!1145 = !DILocation(line: 826, column: 13, scope: !1143, inlinedAt: !612)
!1146 = !DILocation(line: 827, column: 4, scope: !1143, inlinedAt: !612)
!1147 = !DILocation(line: 828, column: 5, scope: !1139, inlinedAt: !612)
!1148 = !DILocation(line: 830, column: 8, scope: !1149, inlinedAt: !612)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !15, line: 830, column: 8)
!1150 = distinct !DILexicalBlock(scope: !1123, file: !15, line: 829, column: 8)
!1151 = !DILocation(line: 830, column: 42, scope: !1149, inlinedAt: !612)
!1152 = !DILocation(line: 830, column: 8, scope: !1150, inlinedAt: !612)
!1153 = !DILocation(line: 831, column: 12, scope: !1154, inlinedAt: !612)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !15, line: 830, column: 48)
!1155 = !DILocation(line: 832, column: 12, scope: !1154, inlinedAt: !612)
!1156 = !DILocation(line: 833, column: 5, scope: !1154, inlinedAt: !612)
!1157 = !DILocation(line: 834, column: 5, scope: !1154, inlinedAt: !612)
!1158 = !DILocation(line: 836, column: 5, scope: !1154, inlinedAt: !612)
!1159 = !DILocation(line: 838, column: 29, scope: !1160, inlinedAt: !612)
!1160 = distinct !DILexicalBlock(scope: !1149, file: !15, line: 837, column: 9)
!1161 = !DILocation(line: 838, column: 12, scope: !1160, inlinedAt: !612)
!1162 = !DILocation(line: 838, column: 5, scope: !1160, inlinedAt: !612)
!1163 = !DILocation(line: 838, column: 27, scope: !1160, inlinedAt: !612)
!1164 = !DILocation(line: 839, column: 29, scope: !1160, inlinedAt: !612)
!1165 = !DILocation(line: 839, column: 5, scope: !1160, inlinedAt: !612)
!1166 = !DILocation(line: 839, column: 27, scope: !1160, inlinedAt: !612)
!1167 = !DILocation(line: 840, column: 12, scope: !1160, inlinedAt: !612)
!1168 = distinct !{!1168, !1121, !1169}
!1169 = !DILocation(line: 843, column: 2, scope: !603, inlinedAt: !612)
!1170 = !DILocation(line: 844, column: 6, scope: !1171, inlinedAt: !612)
!1171 = distinct !DILexicalBlock(scope: !603, file: !15, line: 844, column: 6)
!1172 = !DILocation(line: 844, column: 14, scope: !1171, inlinedAt: !612)
!1173 = !DILocation(line: 844, column: 6, scope: !603, inlinedAt: !612)
!1174 = !DILocation(line: 845, column: 3, scope: !1171, inlinedAt: !612)
!1175 = !DILocation(line: 846, column: 1, scope: !603, inlinedAt: !612)
!1176 = !DILocation(line: 455, column: 3, scope: !489)
!1177 = !DILocation(line: 456, column: 3, scope: !489)
!1178 = !DILocation(line: 459, column: 6, scope: !472)
!1179 = !DILocation(line: 459, column: 6, scope: !413)
!1180 = !DILocation(line: 0, scope: !454, inlinedAt: !470)
!1181 = !DILocation(line: 939, column: 2, scope: !454, inlinedAt: !470)
!1182 = !DILocation(line: 940, column: 2, scope: !454, inlinedAt: !470)
!1183 = !DILocation(line: 941, column: 2, scope: !454, inlinedAt: !470)
!1184 = !DILocation(line: 942, column: 2, scope: !454, inlinedAt: !470)
!1185 = !DILocation(line: 945, column: 10, scope: !454, inlinedAt: !470)
!1186 = !DILocation(line: 946, column: 11, scope: !454, inlinedAt: !470)
!1187 = !DILocation(line: 947, column: 9, scope: !454, inlinedAt: !470)
!1188 = !DILocation(line: 947, column: 2, scope: !454, inlinedAt: !470)
!1189 = !DILocation(line: 0, scope: !1190, inlinedAt: !470)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !15, line: 950, column: 13)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !15, line: 948, column: 7)
!1192 = distinct !DILexicalBlock(scope: !454, file: !15, line: 947, column: 45)
!1193 = !DILocation(line: 0, scope: !1194, inlinedAt: !470)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !15, line: 951, column: 39)
!1195 = !DILocation(line: 948, column: 7, scope: !1191, inlinedAt: !470)
!1196 = !DILocation(line: 948, column: 33, scope: !1191, inlinedAt: !470)
!1197 = !DILocation(line: 948, column: 7, scope: !1192, inlinedAt: !470)
!1198 = !DILocation(line: 950, column: 13, scope: !1190, inlinedAt: !470)
!1199 = !DILocation(line: 950, column: 45, scope: !1190, inlinedAt: !470)
!1200 = !DILocation(line: 951, column: 4, scope: !1190, inlinedAt: !470)
!1201 = !DILocation(line: 951, column: 33, scope: !1190, inlinedAt: !470)
!1202 = !DILocation(line: 950, column: 13, scope: !1191, inlinedAt: !470)
!1203 = !DILocation(line: 953, column: 4, scope: !1194, inlinedAt: !470)
!1204 = !DILocation(line: 959, column: 8, scope: !1205, inlinedAt: !470)
!1205 = distinct !DILexicalBlock(scope: !1194, file: !15, line: 959, column: 8)
!1206 = !DILocation(line: 959, column: 34, scope: !1205, inlinedAt: !470)
!1207 = !DILocation(line: 959, column: 8, scope: !1194, inlinedAt: !470)
!1208 = !DILocation(line: 960, column: 9, scope: !1209, inlinedAt: !470)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !15, line: 960, column: 9)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !15, line: 959, column: 40)
!1211 = !DILocation(line: 960, column: 17, scope: !1209, inlinedAt: !470)
!1212 = !DILocation(line: 960, column: 9, scope: !1210, inlinedAt: !470)
!1213 = !DILocation(line: 961, column: 6, scope: !1214, inlinedAt: !470)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !15, line: 960, column: 22)
!1215 = !DILocation(line: 962, column: 14, scope: !1214, inlinedAt: !470)
!1216 = !DILocation(line: 963, column: 5, scope: !1214, inlinedAt: !470)
!1217 = !DILocation(line: 964, column: 5, scope: !1210, inlinedAt: !470)
!1218 = !DILocation(line: 965, column: 4, scope: !1210, inlinedAt: !470)
!1219 = !DILocation(line: 966, column: 17, scope: !1194, inlinedAt: !470)
!1220 = !DILocation(line: 966, column: 10, scope: !1194, inlinedAt: !470)
!1221 = !DILocation(line: 967, column: 4, scope: !1194, inlinedAt: !470)
!1222 = !DILocation(line: 968, column: 16, scope: !1194, inlinedAt: !470)
!1223 = !DILocation(line: 968, column: 4, scope: !1194, inlinedAt: !470)
!1224 = !DILocation(line: 969, column: 19, scope: !1194, inlinedAt: !470)
!1225 = !DILocation(line: 969, column: 8, scope: !1194, inlinedAt: !470)
!1226 = !DILocation(line: 969, column: 17, scope: !1194, inlinedAt: !470)
!1227 = !DILocation(line: 970, column: 19, scope: !1194, inlinedAt: !470)
!1228 = !DILocation(line: 970, column: 8, scope: !1194, inlinedAt: !470)
!1229 = !DILocation(line: 970, column: 17, scope: !1194, inlinedAt: !470)
!1230 = !{!920, !921, i64 72}
!1231 = !DILocation(line: 971, column: 11, scope: !1194, inlinedAt: !470)
!1232 = !DILocation(line: 972, column: 3, scope: !1194, inlinedAt: !470)
!1233 = distinct !{!1233, !1188, !1234}
!1234 = !DILocation(line: 973, column: 2, scope: !454, inlinedAt: !470)
!1235 = !DILocation(line: 974, column: 6, scope: !1236, inlinedAt: !470)
!1236 = distinct !DILexicalBlock(scope: !454, file: !15, line: 974, column: 6)
!1237 = !DILocation(line: 974, column: 14, scope: !1236, inlinedAt: !470)
!1238 = !DILocation(line: 974, column: 6, scope: !454, inlinedAt: !470)
!1239 = !DILocation(line: 975, column: 3, scope: !1236, inlinedAt: !470)
!1240 = !DILocation(line: 976, column: 1, scope: !454, inlinedAt: !470)
!1241 = !DILocation(line: 461, column: 3, scope: !471)
!1242 = !DILocation(line: 462, column: 2, scope: !471)
!1243 = !DILocation(line: 464, column: 6, scope: !449)
!1244 = !DILocation(line: 464, column: 6, scope: !413)
!1245 = !DILocation(line: 0, scope: !426, inlinedAt: !447)
!1246 = !DILocation(line: 850, column: 2, scope: !426, inlinedAt: !447)
!1247 = !DILocation(line: 851, column: 2, scope: !426, inlinedAt: !447)
!1248 = !DILocation(line: 854, column: 2, scope: !426, inlinedAt: !447)
!1249 = !DILocation(line: 859, column: 8, scope: !426, inlinedAt: !447)
!1250 = !DILocation(line: 860, column: 10, scope: !426, inlinedAt: !447)
!1251 = !DILocation(line: 861, column: 9, scope: !426, inlinedAt: !447)
!1252 = !DILocation(line: 861, column: 2, scope: !426, inlinedAt: !447)
!1253 = !DILocation(line: 0, scope: !1254, inlinedAt: !447)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !15, line: 877, column: 5)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !15, line: 871, column: 9)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !15, line: 863, column: 8)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !15, line: 862, column: 21)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !15, line: 862, column: 7)
!1259 = distinct !DILexicalBlock(scope: !426, file: !15, line: 861, column: 45)
!1260 = !DILocation(line: 862, column: 7, scope: !1258, inlinedAt: !447)
!1261 = !DILocation(line: 862, column: 13, scope: !1258, inlinedAt: !447)
!1262 = !DILocation(line: 862, column: 7, scope: !1259, inlinedAt: !447)
!1263 = !DILocation(line: 863, column: 8, scope: !1256, inlinedAt: !447)
!1264 = !DILocation(line: 863, column: 39, scope: !1256, inlinedAt: !447)
!1265 = !DILocation(line: 863, column: 8, scope: !1257, inlinedAt: !447)
!1266 = !DILocation(line: 864, column: 12, scope: !1267, inlinedAt: !447)
!1267 = distinct !DILexicalBlock(scope: !1256, file: !15, line: 863, column: 45)
!1268 = !DILocation(line: 865, column: 12, scope: !1267, inlinedAt: !447)
!1269 = !DILocation(line: 866, column: 5, scope: !1267, inlinedAt: !447)
!1270 = !DILocation(line: 867, column: 14, scope: !1267, inlinedAt: !447)
!1271 = !DILocation(line: 867, column: 5, scope: !1267, inlinedAt: !447)
!1272 = !DILocation(line: 870, column: 5, scope: !1267, inlinedAt: !447)
!1273 = !DILocation(line: 872, column: 9, scope: !1274, inlinedAt: !447)
!1274 = distinct !DILexicalBlock(scope: !1255, file: !15, line: 872, column: 9)
!1275 = !DILocation(line: 872, column: 15, scope: !1274, inlinedAt: !447)
!1276 = !DILocation(line: 872, column: 9, scope: !1255, inlinedAt: !447)
!1277 = !DILocation(line: 873, column: 6, scope: !1278, inlinedAt: !447)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !15, line: 872, column: 20)
!1279 = !DILocation(line: 874, column: 12, scope: !1278, inlinedAt: !447)
!1280 = !DILocation(line: 875, column: 5, scope: !1278, inlinedAt: !447)
!1281 = !DILocation(line: 877, column: 5, scope: !1254, inlinedAt: !447)
!1282 = !DILocation(line: 879, column: 24, scope: !1283, inlinedAt: !447)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !15, line: 879, column: 10)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !15, line: 878, column: 25)
!1285 = distinct !DILexicalBlock(scope: !1254, file: !15, line: 877, column: 5)
!1286 = !{!1287, !381, i64 24}
!1287 = !{!"residue_t", !381, i64 0, !391, i64 8, !391, i64 12, !391, i64 16, !381, i64 24, !381, i64 32, !391, i64 40, !391, i64 44, !391, i64 48, !381, i64 56, !381, i64 64, !391, i64 72, !381, i64 80, !391, i64 88, !381, i64 96, !391, i64 104, !381, i64 112, !381, i64 120}
!1288 = !DILocation(line: 879, column: 11, scope: !1283, inlinedAt: !447)
!1289 = !DILocation(line: 879, column: 10, scope: !1284, inlinedAt: !447)
!1290 = !DILocation(line: 878, column: 17, scope: !1285, inlinedAt: !447)
!1291 = distinct !{!1291, !1281, !1292}
!1292 = !DILocation(line: 883, column: 5, scope: !1254, inlinedAt: !447)
!1293 = !DILocation(line: 885, column: 15, scope: !1294, inlinedAt: !447)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !15, line: 884, column: 16)
!1295 = distinct !DILexicalBlock(scope: !1255, file: !15, line: 884, column: 9)
!1296 = !DILocation(line: 887, column: 20, scope: !1294, inlinedAt: !447)
!1297 = !DILocation(line: 885, column: 6, scope: !1294, inlinedAt: !447)
!1298 = !DILocation(line: 888, column: 6, scope: !1294, inlinedAt: !447)
!1299 = !DILocation(line: 890, column: 5, scope: !1255, inlinedAt: !447)
!1300 = !DILocation(line: 892, column: 3, scope: !1257, inlinedAt: !447)
!1301 = !DILocation(line: 893, column: 4, scope: !1302, inlinedAt: !447)
!1302 = distinct !DILexicalBlock(scope: !1258, file: !15, line: 892, column: 8)
!1303 = !DILocalVariable(name: "res", arg: 1, scope: !1304, file: !15, line: 1202, type: !170)
!1304 = distinct !DISubprogram(name: "findatom", scope: !15, file: !15, line: 1202, type: !1305, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1307)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!202, !170, !12}
!1307 = !{!1303, !1308, !1309}
!1308 = !DILocalVariable(name: "aname", arg: 2, scope: !1304, file: !15, line: 1202, type: !12)
!1309 = !DILocalVariable(name: "a", scope: !1304, file: !15, line: 1204, type: !11)
!1310 = !DILocation(line: 0, scope: !1304, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 894, column: 16, scope: !1312, inlinedAt: !447)
!1312 = distinct !DILexicalBlock(scope: !1302, file: !15, line: 894, column: 8)
!1313 = !DILocation(line: 1206, column: 23, scope: !1314, inlinedAt: !1311)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !15, line: 1206, column: 2)
!1315 = distinct !DILexicalBlock(scope: !1304, file: !15, line: 1206, column: 2)
!1316 = !{!1287, !391, i64 104}
!1317 = !DILocation(line: 1206, column: 16, scope: !1314, inlinedAt: !1311)
!1318 = !DILocation(line: 1206, column: 2, scope: !1315, inlinedAt: !1311)
!1319 = !DILocation(line: 1207, column: 21, scope: !1320, inlinedAt: !1311)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !15, line: 1207, column: 7)
!1321 = distinct !DILexicalBlock(scope: !1314, file: !15, line: 1206, column: 38)
!1322 = !DILocation(line: 0, scope: !1320, inlinedAt: !1311)
!1323 = !{!1287, !381, i64 120}
!1324 = distinct !{!1324, !1318, !1325}
!1325 = !DILocation(line: 1209, column: 2, scope: !1315, inlinedAt: !1311)
!1326 = !DILocation(line: 1207, column: 34, scope: !1320, inlinedAt: !1311)
!1327 = !DILocation(line: 1207, column: 8, scope: !1320, inlinedAt: !1311)
!1328 = !DILocation(line: 1206, column: 34, scope: !1314, inlinedAt: !1311)
!1329 = !DILocation(line: 1207, column: 7, scope: !1321, inlinedAt: !1311)
!1330 = !DILocation(line: 895, column: 14, scope: !1331, inlinedAt: !447)
!1331 = distinct !DILexicalBlock(scope: !1312, file: !15, line: 894, column: 41)
!1332 = !DILocation(line: 897, column: 17, scope: !1331, inlinedAt: !447)
!1333 = !DILocation(line: 895, column: 5, scope: !1331, inlinedAt: !447)
!1334 = !DILocation(line: 898, column: 5, scope: !1331, inlinedAt: !447)
!1335 = !DILocation(line: 900, column: 10, scope: !1312, inlinedAt: !447)
!1336 = !DILocation(line: 0, scope: !1304, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 901, column: 16, scope: !1338, inlinedAt: !447)
!1338 = distinct !DILexicalBlock(scope: !1302, file: !15, line: 901, column: 8)
!1339 = !DILocation(line: 1206, column: 2, scope: !1315, inlinedAt: !1337)
!1340 = !DILocation(line: 1206, column: 16, scope: !1314, inlinedAt: !1337)
!1341 = distinct !{!1341, !1339, !1342}
!1342 = !DILocation(line: 1209, column: 2, scope: !1315, inlinedAt: !1337)
!1343 = !DILocation(line: 1207, column: 34, scope: !1320, inlinedAt: !1337)
!1344 = !DILocation(line: 1207, column: 8, scope: !1320, inlinedAt: !1337)
!1345 = !DILocation(line: 1206, column: 34, scope: !1314, inlinedAt: !1337)
!1346 = !DILocation(line: 1207, column: 7, scope: !1321, inlinedAt: !1337)
!1347 = !DILocation(line: 902, column: 14, scope: !1348, inlinedAt: !447)
!1348 = distinct !DILexicalBlock(scope: !1338, file: !15, line: 901, column: 41)
!1349 = !DILocation(line: 904, column: 17, scope: !1348, inlinedAt: !447)
!1350 = !DILocation(line: 902, column: 5, scope: !1348, inlinedAt: !447)
!1351 = !DILocation(line: 905, column: 5, scope: !1348, inlinedAt: !447)
!1352 = !DILocation(line: 907, column: 10, scope: !1338, inlinedAt: !447)
!1353 = !DILocation(line: 0, scope: !1304, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 908, column: 16, scope: !1355, inlinedAt: !447)
!1355 = distinct !DILexicalBlock(scope: !1302, file: !15, line: 908, column: 8)
!1356 = !DILocation(line: 1206, column: 2, scope: !1315, inlinedAt: !1354)
!1357 = !DILocation(line: 1206, column: 16, scope: !1314, inlinedAt: !1354)
!1358 = distinct !{!1358, !1356, !1359}
!1359 = !DILocation(line: 1209, column: 2, scope: !1315, inlinedAt: !1354)
!1360 = !DILocation(line: 1207, column: 34, scope: !1320, inlinedAt: !1354)
!1361 = !DILocation(line: 1207, column: 8, scope: !1320, inlinedAt: !1354)
!1362 = !DILocation(line: 1206, column: 34, scope: !1314, inlinedAt: !1354)
!1363 = !DILocation(line: 1207, column: 7, scope: !1321, inlinedAt: !1354)
!1364 = !DILocation(line: 909, column: 14, scope: !1365, inlinedAt: !447)
!1365 = distinct !DILexicalBlock(scope: !1355, file: !15, line: 908, column: 41)
!1366 = !DILocation(line: 911, column: 17, scope: !1365, inlinedAt: !447)
!1367 = !DILocation(line: 909, column: 5, scope: !1365, inlinedAt: !447)
!1368 = !DILocation(line: 912, column: 5, scope: !1365, inlinedAt: !447)
!1369 = !DILocation(line: 0, scope: !1304, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 915, column: 16, scope: !1371, inlinedAt: !447)
!1371 = distinct !DILexicalBlock(scope: !1302, file: !15, line: 915, column: 8)
!1372 = !DILocation(line: 1206, column: 16, scope: !1314, inlinedAt: !1370)
!1373 = !DILocation(line: 1206, column: 2, scope: !1315, inlinedAt: !1370)
!1374 = distinct !{!1374, !1373, !1375}
!1375 = !DILocation(line: 1209, column: 2, scope: !1315, inlinedAt: !1370)
!1376 = !DILocation(line: 1207, column: 34, scope: !1320, inlinedAt: !1370)
!1377 = !DILocation(line: 1207, column: 8, scope: !1320, inlinedAt: !1370)
!1378 = !DILocation(line: 1206, column: 34, scope: !1314, inlinedAt: !1370)
!1379 = !DILocation(line: 1207, column: 7, scope: !1321, inlinedAt: !1370)
!1380 = !DILocation(line: 916, column: 14, scope: !1381, inlinedAt: !447)
!1381 = distinct !DILexicalBlock(scope: !1371, file: !15, line: 915, column: 41)
!1382 = !DILocation(line: 918, column: 17, scope: !1381, inlinedAt: !447)
!1383 = !DILocation(line: 916, column: 5, scope: !1381, inlinedAt: !447)
!1384 = !DILocation(line: 919, column: 5, scope: !1381, inlinedAt: !447)
!1385 = !DILocation(line: 914, column: 10, scope: !1355, inlinedAt: !447)
!1386 = !DILocation(line: 921, column: 10, scope: !1371, inlinedAt: !447)
!1387 = !DILocation(line: 922, column: 15, scope: !1302, inlinedAt: !447)
!1388 = !DILocation(line: 922, column: 10, scope: !1302, inlinedAt: !447)
!1389 = !DILocation(line: 923, column: 9, scope: !1302, inlinedAt: !447)
!1390 = !DILocation(line: 924, column: 4, scope: !1302, inlinedAt: !447)
!1391 = !DILocation(line: 924, column: 20, scope: !1302, inlinedAt: !447)
!1392 = !DILocation(line: 925, column: 4, scope: !1302, inlinedAt: !447)
!1393 = !DILocation(line: 925, column: 20, scope: !1302, inlinedAt: !447)
!1394 = !DILocation(line: 926, column: 4, scope: !1302, inlinedAt: !447)
!1395 = !DILocation(line: 926, column: 20, scope: !1302, inlinedAt: !447)
!1396 = !DILocation(line: 927, column: 4, scope: !1302, inlinedAt: !447)
!1397 = !DILocation(line: 927, column: 20, scope: !1302, inlinedAt: !447)
!1398 = !DILocation(line: 928, column: 8, scope: !1302, inlinedAt: !447)
!1399 = !DILocation(line: 928, column: 15, scope: !1302, inlinedAt: !447)
!1400 = !{!1401, !921, i64 16}
!1401 = !{!"chiral_t", !382, i64 0, !921, i64 16}
!1402 = distinct !{!1402, !1252, !1403}
!1403 = !DILocation(line: 930, column: 2, scope: !426, inlinedAt: !447)
!1404 = !DILocation(line: 931, column: 6, scope: !1405, inlinedAt: !447)
!1405 = distinct !DILexicalBlock(scope: !426, file: !15, line: 931, column: 6)
!1406 = !DILocation(line: 931, column: 12, scope: !1405, inlinedAt: !447)
!1407 = !DILocation(line: 931, column: 6, scope: !426, inlinedAt: !447)
!1408 = !DILocation(line: 932, column: 3, scope: !1409, inlinedAt: !447)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !15, line: 931, column: 17)
!1410 = !DILocation(line: 933, column: 9, scope: !1409, inlinedAt: !447)
!1411 = !DILocation(line: 934, column: 2, scope: !1409, inlinedAt: !447)
!1412 = !DILocation(line: 935, column: 1, scope: !426, inlinedAt: !447)
!1413 = !DILocation(line: 466, column: 3, scope: !448)
!1414 = !DILocation(line: 467, column: 2, scope: !448)
!1415 = !DILocation(line: 470, column: 1, scope: !413)
!1416 = distinct !DISubprogram(name: "setreslibkind", scope: !15, file: !15, line: 103, type: !1417, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!11, !12, !12}
!1419 = !{!1420, !1421, !1422, !1423}
!1420 = !DILocalVariable(name: "reslib", arg: 1, scope: !1416, file: !15, line: 103, type: !12)
!1421 = !DILocalVariable(name: "kind", arg: 2, scope: !1416, file: !15, line: 103, type: !12)
!1422 = !DILocalVariable(name: "nhp", scope: !1416, file: !15, line: 105, type: !12)
!1423 = !DILocalVariable(name: "rlp", scope: !1416, file: !15, line: 106, type: !299)
!1424 = !DILocation(line: 0, scope: !1416)
!1425 = !DILocation(line: 0, scope: !370, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 108, column: 14, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1416, file: !15, line: 108, column: 6)
!1428 = !DILocation(line: 0, scope: !379, inlinedAt: !1426)
!1429 = !DILocation(line: 426, column: 2, scope: !379, inlinedAt: !1426)
!1430 = !DILocation(line: 427, column: 20, scope: !386, inlinedAt: !1426)
!1431 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !1426)
!1432 = !DILocation(line: 427, column: 38, scope: !386, inlinedAt: !1426)
!1433 = !DILocation(line: 427, column: 7, scope: !387, inlinedAt: !1426)
!1434 = !DILocation(line: 426, column: 38, scope: !388, inlinedAt: !1426)
!1435 = distinct !{!1435, !1429, !1436}
!1436 = !DILocation(line: 430, column: 2, scope: !379, inlinedAt: !1426)
!1437 = !DILocation(line: 109, column: 16, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !15, line: 109, column: 8)
!1439 = distinct !DILexicalBlock(scope: !1427, file: !15, line: 108, column: 48)
!1440 = !DILocation(line: 109, column: 40, scope: !1438)
!1441 = !DILocation(line: 109, column: 8, scope: !1439)
!1442 = !DILocation(line: 110, column: 15, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !15, line: 109, column: 49)
!1444 = !DILocation(line: 110, column: 6, scope: !1443)
!1445 = !DILocation(line: 112, column: 6, scope: !1443)
!1446 = !DILocation(line: 0, scope: !1427)
!1447 = !DILocation(line: 115, column: 7, scope: !1416)
!1448 = !DILocation(line: 115, column: 17, scope: !1416)
!1449 = !DILocation(line: 116, column: 8, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1416, file: !15, line: 116, column: 7)
!1451 = !DILocation(line: 116, column: 30, scope: !1450)
!1452 = !DILocation(line: 116, column: 34, scope: !1450)
!1453 = !DILocation(line: 116, column: 7, scope: !1416)
!1454 = !DILocation(line: 118, column: 13, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !15, line: 118, column: 12)
!1456 = !DILocation(line: 118, column: 35, scope: !1455)
!1457 = !DILocation(line: 118, column: 39, scope: !1455)
!1458 = !DILocation(line: 118, column: 12, scope: !1450)
!1459 = !DILocation(line: 120, column: 13, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !15, line: 120, column: 12)
!1461 = !DILocation(line: 120, column: 34, scope: !1460)
!1462 = !DILocation(line: 120, column: 38, scope: !1460)
!1463 = !DILocation(line: 120, column: 12, scope: !1455)
!1464 = !DILocation(line: 0, scope: !1450)
!1465 = !DILocation(line: 123, column: 9, scope: !1416)
!1466 = !DILocation(line: 123, column: 22, scope: !1416)
!1467 = distinct !DISubprogram(name: "getresidue", scope: !15, file: !15, line: 126, type: !1468, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!170, !12, !12}
!1470 = !{!1471, !1472, !1473, !1474, !1478, !1479, !1480}
!1471 = !DILocalVariable(name: "rname", arg: 1, scope: !1467, file: !15, line: 126, type: !12)
!1472 = !DILocalVariable(name: "reslib", arg: 2, scope: !1467, file: !15, line: 126, type: !12)
!1473 = !DILocalVariable(name: "nhp", scope: !1467, file: !15, line: 128, type: !12)
!1474 = !DILocalVariable(name: "leapname", scope: !1467, file: !15, line: 128, type: !1475)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 40, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 5)
!1478 = !DILocalVariable(name: "rlp", scope: !1467, file: !15, line: 129, type: !299)
!1479 = !DILocalVariable(name: "res", scope: !1467, file: !15, line: 130, type: !170)
!1480 = !DILocalVariable(name: "nres", scope: !1467, file: !15, line: 130, type: !170)
!1481 = !DILocation(line: 0, scope: !1467)
!1482 = !DILocation(line: 128, column: 2, scope: !1467)
!1483 = !DILocation(line: 128, column: 13, scope: !1467)
!1484 = !DILocation(line: 0, scope: !370, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 132, column: 14, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1467, file: !15, line: 132, column: 6)
!1487 = !DILocation(line: 0, scope: !379, inlinedAt: !1485)
!1488 = !DILocation(line: 426, column: 2, scope: !379, inlinedAt: !1485)
!1489 = !DILocation(line: 427, column: 20, scope: !386, inlinedAt: !1485)
!1490 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !1485)
!1491 = !DILocation(line: 427, column: 38, scope: !386, inlinedAt: !1485)
!1492 = !DILocation(line: 427, column: 7, scope: !387, inlinedAt: !1485)
!1493 = !DILocation(line: 426, column: 38, scope: !388, inlinedAt: !1485)
!1494 = distinct !{!1494, !1488, !1495}
!1495 = !DILocation(line: 430, column: 2, scope: !379, inlinedAt: !1485)
!1496 = !DILocation(line: 133, column: 15, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !15, line: 133, column: 7)
!1498 = distinct !DILexicalBlock(scope: !1486, file: !15, line: 132, column: 48)
!1499 = !DILocation(line: 133, column: 39, scope: !1497)
!1500 = !DILocation(line: 133, column: 7, scope: !1498)
!1501 = !DILocation(line: 134, column: 4, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !15, line: 133, column: 48)
!1503 = !DILocation(line: 0, scope: !1486)
!1504 = !DILocation(line: 138, column: 2, scope: !1467)
!1505 = !DILocation(line: 139, column: 12, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1467, file: !15, line: 139, column: 7)
!1507 = !DILocation(line: 139, column: 7, scope: !1467)
!1508 = !DILocation(line: 140, column: 14, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !15, line: 140, column: 13)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !15, line: 139, column: 33)
!1511 = !DILocation(line: 140, column: 13, scope: !1510)
!1512 = !DILocation(line: 141, column: 4, scope: !1509)
!1513 = !DILocation(line: 142, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !15, line: 142, column: 13)
!1515 = !DILocation(line: 142, column: 13, scope: !1509)
!1516 = !DILocation(line: 143, column: 4, scope: !1514)
!1517 = !DILocation(line: 144, column: 14, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !15, line: 144, column: 13)
!1519 = !DILocation(line: 144, column: 13, scope: !1514)
!1520 = !DILocation(line: 145, column: 4, scope: !1518)
!1521 = !DILocation(line: 146, column: 14, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !15, line: 146, column: 13)
!1523 = !DILocation(line: 146, column: 13, scope: !1518)
!1524 = !DILocation(line: 147, column: 4, scope: !1522)
!1525 = !DILocation(line: 150, column: 14, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !15, line: 150, column: 13)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !15, line: 149, column: 38)
!1528 = distinct !DILexicalBlock(scope: !1506, file: !15, line: 149, column: 12)
!1529 = !DILocation(line: 150, column: 13, scope: !1527)
!1530 = !DILocation(line: 151, column: 4, scope: !1526)
!1531 = !DILocation(line: 152, column: 14, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1526, file: !15, line: 152, column: 13)
!1533 = !DILocation(line: 152, column: 13, scope: !1526)
!1534 = !DILocation(line: 153, column: 4, scope: !1532)
!1535 = !DILocation(line: 154, column: 14, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !15, line: 154, column: 13)
!1537 = !DILocation(line: 154, column: 13, scope: !1532)
!1538 = !DILocation(line: 155, column: 4, scope: !1536)
!1539 = !DILocation(line: 156, column: 14, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1536, file: !15, line: 156, column: 13)
!1541 = !DILocation(line: 156, column: 13, scope: !1536)
!1542 = !DILocation(line: 157, column: 4, scope: !1540)
!1543 = !DILocation(line: 159, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1467, file: !15, line: 159, column: 7)
!1545 = !DILocation(line: 159, column: 28, scope: !1544)
!1546 = !DILocation(line: 159, column: 7, scope: !1467)
!1547 = !DILocation(line: 161, column: 12, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !15, line: 161, column: 12)
!1549 = !DILocation(line: 161, column: 33, scope: !1548)
!1550 = !DILocation(line: 161, column: 12, scope: !1544)
!1551 = !DILocation(line: 0, scope: !1544)
!1552 = !DILocation(line: 163, column: 18, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1467, file: !15, line: 163, column: 2)
!1554 = !DILocation(line: 0, scope: !1553)
!1555 = !DILocation(line: 163, column: 2, scope: !1553)
!1556 = !DILocation(line: 164, column: 21, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !15, line: 164, column: 6)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !15, line: 163, column: 53)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !15, line: 163, column: 2)
!1560 = !DILocation(line: 164, column: 8, scope: !1557)
!1561 = !DILocation(line: 164, column: 40, scope: !1557)
!1562 = !DILocation(line: 164, column: 47, scope: !1557)
!1563 = !DILocation(line: 165, column: 6, scope: !1557)
!1564 = !DILocation(line: 165, column: 41, scope: !1557)
!1565 = !DILocation(line: 164, column: 6, scope: !1558)
!1566 = !DILocation(line: 163, column: 45, scope: !1559)
!1567 = distinct !{!1567, !1555, !1568}
!1568 = !DILocation(line: 167, column: 2, scope: !1553)
!1569 = !DILocation(line: 170, column: 3, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !15, line: 169, column: 19)
!1571 = distinct !DILexicalBlock(scope: !1467, file: !15, line: 169, column: 6)
!1572 = !DILocation(line: 171, column: 3, scope: !1570)
!1573 = !DILocation(line: 172, column: 3, scope: !1570)
!1574 = !DILocation(line: 175, column: 9, scope: !1467)
!1575 = !DILocation(line: 177, column: 2, scope: !1467)
!1576 = !DILocation(line: 178, column: 1, scope: !1467)
!1577 = distinct !DISubprogram(name: "copyresidue", scope: !15, file: !15, line: 180, type: !1578, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!170, !170}
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1581 = !DILocalVariable(name: "res", arg: 1, scope: !1577, file: !15, line: 180, type: !170)
!1582 = !DILocalVariable(name: "a", scope: !1577, file: !15, line: 182, type: !11)
!1583 = !DILocalVariable(name: "b", scope: !1577, file: !15, line: 182, type: !11)
!1584 = !DILocalVariable(name: "c", scope: !1577, file: !15, line: 182, type: !11)
!1585 = !DILocalVariable(name: "i", scope: !1577, file: !15, line: 182, type: !11)
!1586 = !DILocalVariable(name: "aip", scope: !1577, file: !15, line: 183, type: !229)
!1587 = !DILocalVariable(name: "nres", scope: !1577, file: !15, line: 184, type: !170)
!1588 = !DILocalVariable(name: "ap", scope: !1577, file: !15, line: 185, type: !202)
!1589 = !DILocalVariable(name: "anp", scope: !1577, file: !15, line: 186, type: !12)
!1590 = !DILocalVariable(name: "rnp", scope: !1577, file: !15, line: 186, type: !12)
!1591 = !DILocalVariable(name: "bp", scope: !1577, file: !15, line: 187, type: !184)
!1592 = !DILocalVariable(name: "cp", scope: !1577, file: !15, line: 188, type: !191)
!1593 = !DILocation(line: 0, scope: !1577)
!1594 = !DILocation(line: 190, column: 26, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 190, column: 5)
!1596 = !DILocation(line: 190, column: 13, scope: !1595)
!1597 = !DILocation(line: 191, column: 3, scope: !1595)
!1598 = !DILocation(line: 190, column: 5, scope: !1577)
!1599 = !DILocation(line: 193, column: 42, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !15, line: 192, column: 2)
!1601 = !DILocation(line: 193, column: 3, scope: !1600)
!1602 = !DILocation(line: 194, column: 3, scope: !1600)
!1603 = !DILocation(line: 195, column: 3, scope: !1600)
!1604 = !DILocation(line: 198, column: 37, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 198, column: 6)
!1606 = !DILocation(line: 198, column: 32, scope: !1605)
!1607 = !DILocation(line: 198, column: 45, scope: !1605)
!1608 = !DILocation(line: 198, column: 25, scope: !1605)
!1609 = !DILocation(line: 198, column: 13, scope: !1605)
!1610 = !DILocation(line: 199, column: 3, scope: !1605)
!1611 = !DILocation(line: 198, column: 6, scope: !1577)
!1612 = !DILocation(line: 201, column: 51, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1605, file: !15, line: 200, column: 2)
!1614 = !DILocation(line: 201, column: 3, scope: !1613)
!1615 = !DILocation(line: 202, column: 3, scope: !1613)
!1616 = !DILocation(line: 203, column: 3, scope: !1613)
!1617 = !DILocation(line: 206, column: 43, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 206, column: 6)
!1619 = !DILocation(line: 206, column: 23, scope: !1618)
!1620 = !DILocation(line: 206, column: 58, scope: !1618)
!1621 = !DILocation(line: 206, column: 6, scope: !1577)
!1622 = !DILocation(line: 209, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !15, line: 207, column: 2)
!1624 = !DILocation(line: 208, column: 3, scope: !1623)
!1625 = !DILocation(line: 210, column: 3, scope: !1623)
!1626 = !DILocation(line: 211, column: 3, scope: !1623)
!1627 = !DILocation(line: 214, column: 11, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 214, column: 6)
!1629 = !{!1287, !391, i64 72}
!1630 = !DILocation(line: 214, column: 23, scope: !1628)
!1631 = !DILocation(line: 214, column: 6, scope: !1577)
!1632 = !DILocation(line: 216, column: 11, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !15, line: 215, column: 7)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !15, line: 214, column: 28)
!1635 = !DILocation(line: 216, column: 27, scope: !1633)
!1636 = !DILocation(line: 216, column: 4, scope: !1633)
!1637 = !DILocation(line: 215, column: 14, scope: !1633)
!1638 = !DILocation(line: 217, column: 4, scope: !1633)
!1639 = !DILocation(line: 215, column: 7, scope: !1634)
!1640 = !DILocation(line: 220, column: 37, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1633, file: !15, line: 218, column: 3)
!1642 = !DILocation(line: 219, column: 4, scope: !1641)
!1643 = !DILocation(line: 221, column: 4, scope: !1641)
!1644 = !DILocation(line: 222, column: 4, scope: !1641)
!1645 = !DILocation(line: 0, scope: !1628)
!1646 = !DILocation(line: 227, column: 11, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 227, column: 6)
!1648 = !{!1287, !391, i64 88}
!1649 = !DILocation(line: 227, column: 21, scope: !1647)
!1650 = !DILocation(line: 227, column: 6, scope: !1577)
!1651 = !DILocation(line: 229, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !15, line: 228, column: 7)
!1653 = distinct !DILexicalBlock(scope: !1647, file: !15, line: 227, column: 26)
!1654 = !DILocation(line: 229, column: 25, scope: !1652)
!1655 = !DILocation(line: 229, column: 4, scope: !1652)
!1656 = !DILocation(line: 228, column: 14, scope: !1652)
!1657 = !DILocation(line: 230, column: 4, scope: !1652)
!1658 = !DILocation(line: 228, column: 7, scope: !1653)
!1659 = !DILocation(line: 233, column: 37, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1652, file: !15, line: 231, column: 3)
!1661 = !DILocation(line: 232, column: 4, scope: !1660)
!1662 = !DILocation(line: 234, column: 4, scope: !1660)
!1663 = !DILocation(line: 235, column: 4, scope: !1660)
!1664 = !DILocation(line: 0, scope: !1647)
!1665 = !DILocation(line: 240, column: 8, scope: !1577)
!1666 = !DILocation(line: 240, column: 15, scope: !1577)
!1667 = !{!1287, !381, i64 0}
!1668 = !DILocation(line: 242, column: 37, scope: !1577)
!1669 = !DILocation(line: 242, column: 25, scope: !1577)
!1670 = !DILocation(line: 242, column: 47, scope: !1577)
!1671 = !DILocation(line: 242, column: 18, scope: !1577)
!1672 = !DILocation(line: 243, column: 10, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 243, column: 6)
!1674 = !DILocation(line: 243, column: 6, scope: !1577)
!1675 = !DILocation(line: 244, column: 12, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !15, line: 243, column: 19)
!1677 = !DILocation(line: 244, column: 3, scope: !1676)
!1678 = !DILocation(line: 246, column: 3, scope: !1676)
!1679 = !DILocation(line: 248, column: 2, scope: !1577)
!1680 = !DILocation(line: 249, column: 8, scope: !1577)
!1681 = !DILocation(line: 249, column: 18, scope: !1577)
!1682 = !DILocation(line: 251, column: 37, scope: !1577)
!1683 = !{!1287, !381, i64 32}
!1684 = !DILocation(line: 251, column: 25, scope: !1577)
!1685 = !DILocation(line: 251, column: 45, scope: !1577)
!1686 = !DILocation(line: 251, column: 18, scope: !1577)
!1687 = !DILocation(line: 252, column: 10, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 252, column: 6)
!1689 = !DILocation(line: 252, column: 6, scope: !1577)
!1690 = !DILocation(line: 253, column: 12, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !15, line: 252, column: 19)
!1692 = !DILocation(line: 253, column: 3, scope: !1691)
!1693 = !DILocation(line: 254, column: 3, scope: !1691)
!1694 = !DILocation(line: 256, column: 2, scope: !1577)
!1695 = !DILocation(line: 257, column: 8, scope: !1577)
!1696 = !DILocation(line: 257, column: 16, scope: !1577)
!1697 = !DILocation(line: 259, column: 21, scope: !1577)
!1698 = !{!1287, !391, i64 8}
!1699 = !DILocation(line: 259, column: 8, scope: !1577)
!1700 = !DILocation(line: 259, column: 14, scope: !1577)
!1701 = !DILocation(line: 260, column: 8, scope: !1577)
!1702 = !DILocation(line: 260, column: 18, scope: !1577)
!1703 = !{!1287, !391, i64 12}
!1704 = !DILocation(line: 261, column: 8, scope: !1577)
!1705 = !DILocation(line: 261, column: 17, scope: !1577)
!1706 = !{!1287, !391, i64 16}
!1707 = !DILocation(line: 262, column: 22, scope: !1577)
!1708 = !{!1287, !391, i64 40}
!1709 = !DILocation(line: 262, column: 8, scope: !1577)
!1710 = !DILocation(line: 262, column: 15, scope: !1577)
!1711 = !DILocation(line: 263, column: 8, scope: !1577)
!1712 = !DILocation(line: 263, column: 17, scope: !1577)
!1713 = !{!1287, !381, i64 56}
!1714 = !DILocation(line: 264, column: 21, scope: !1577)
!1715 = !DILocation(line: 264, column: 8, scope: !1577)
!1716 = !DILocation(line: 264, column: 19, scope: !1577)
!1717 = !{!1287, !381, i64 64}
!1718 = !DILocation(line: 265, column: 27, scope: !1577)
!1719 = !DILocation(line: 265, column: 8, scope: !1577)
!1720 = !DILocation(line: 265, column: 20, scope: !1577)
!1721 = !DILocation(line: 266, column: 8, scope: !1577)
!1722 = !DILocation(line: 266, column: 19, scope: !1577)
!1723 = !{!1287, !381, i64 80}
!1724 = !DILocation(line: 267, column: 16, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !15, line: 267, column: 2)
!1726 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 267, column: 2)
!1727 = !DILocation(line: 267, column: 2, scope: !1726)
!1728 = !DILocation(line: 0, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !15, line: 267, column: 41)
!1730 = !DILocation(line: 268, column: 32, scope: !1729)
!1731 = !DILocation(line: 268, column: 3, scope: !1729)
!1732 = !DILocation(line: 268, column: 30, scope: !1729)
!1733 = !DILocation(line: 269, column: 32, scope: !1729)
!1734 = !DILocation(line: 269, column: 3, scope: !1729)
!1735 = !DILocation(line: 269, column: 30, scope: !1729)
!1736 = !DILocation(line: 267, column: 37, scope: !1725)
!1737 = distinct !{!1737, !1727, !1738}
!1738 = !DILocation(line: 270, column: 2, scope: !1726)
!1739 = !DILocation(line: 271, column: 25, scope: !1577)
!1740 = !DILocation(line: 271, column: 8, scope: !1577)
!1741 = !DILocation(line: 271, column: 18, scope: !1577)
!1742 = !DILocation(line: 272, column: 8, scope: !1577)
!1743 = !DILocation(line: 272, column: 17, scope: !1577)
!1744 = !{!1287, !381, i64 96}
!1745 = !DILocation(line: 273, column: 37, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !15, line: 273, column: 2)
!1747 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 273, column: 2)
!1748 = !DILocation(line: 273, column: 2, scope: !1747)
!1749 = !DILocation(line: 0, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !15, line: 273, column: 66)
!1751 = !DILocation(line: 275, column: 22, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !15, line: 274, column: 3)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !15, line: 274, column: 3)
!1754 = !DILocation(line: 275, column: 4, scope: !1752)
!1755 = !DILocation(line: 275, column: 20, scope: !1752)
!1756 = !DILocation(line: 276, column: 35, scope: !1750)
!1757 = !DILocation(line: 276, column: 7, scope: !1750)
!1758 = !DILocation(line: 276, column: 14, scope: !1750)
!1759 = !DILocation(line: 273, column: 56, scope: !1746)
!1760 = !DILocation(line: 273, column: 62, scope: !1746)
!1761 = !DILocation(line: 273, column: 44, scope: !1746)
!1762 = distinct !{!1762, !1748, !1763}
!1763 = !DILocation(line: 277, column: 2, scope: !1747)
!1764 = !DILocation(line: 278, column: 22, scope: !1577)
!1765 = !{!1287, !391, i64 44}
!1766 = !DILocation(line: 278, column: 8, scope: !1577)
!1767 = !DILocation(line: 278, column: 15, scope: !1577)
!1768 = !DILocation(line: 279, column: 26, scope: !1577)
!1769 = !{!1287, !391, i64 48}
!1770 = !DILocation(line: 279, column: 8, scope: !1577)
!1771 = !DILocation(line: 279, column: 19, scope: !1577)
!1772 = !DILocation(line: 280, column: 24, scope: !1577)
!1773 = !DILocation(line: 280, column: 8, scope: !1577)
!1774 = !DILocation(line: 280, column: 17, scope: !1577)
!1775 = !DILocation(line: 281, column: 8, scope: !1577)
!1776 = !DILocation(line: 281, column: 17, scope: !1577)
!1777 = !{!1287, !381, i64 112}
!1778 = !DILocation(line: 282, column: 11, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 282, column: 6)
!1780 = !DILocation(line: 282, column: 6, scope: !1779)
!1781 = !DILocation(line: 0, scope: !1779)
!1782 = !DILocation(line: 282, column: 6, scope: !1577)
!1783 = !DILocation(line: 283, column: 3, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !15, line: 283, column: 3)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !15, line: 282, column: 21)
!1786 = !DILocation(line: 0, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !15, line: 283, column: 3)
!1788 = !DILocation(line: 283, column: 35, scope: !1787)
!1789 = !DILocation(line: 284, column: 26, scope: !1787)
!1790 = !{!1791}
!1791 = distinct !{!1791, !1792}
!1792 = distinct !{!1792, !"LVerDomain"}
!1793 = !DILocation(line: 284, column: 4, scope: !1787)
!1794 = !DILocation(line: 284, column: 24, scope: !1787)
!1795 = !{!1796}
!1796 = distinct !{!1796, !1792}
!1797 = distinct !{!1797, !1783, !1798, !1008}
!1798 = !DILocation(line: 284, column: 43, scope: !1784)
!1799 = distinct !{!1799, !1010}
!1800 = !DILocation(line: 286, column: 3, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !15, line: 286, column: 3)
!1802 = distinct !DILexicalBlock(scope: !1779, file: !15, line: 285, column: 7)
!1803 = !DILocation(line: 0, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1801, file: !15, line: 286, column: 3)
!1805 = !DILocation(line: 286, column: 35, scope: !1804)
!1806 = !DILocation(line: 287, column: 24, scope: !1804)
!1807 = !DILocation(line: 287, column: 4, scope: !1804)
!1808 = distinct !{!1808, !1800, !1809, !1008}
!1809 = !DILocation(line: 287, column: 26, scope: !1801)
!1810 = distinct !{!1810, !1010}
!1811 = !DILocation(line: 283, column: 17, scope: !1787)
!1812 = distinct !{!1812, !1783, !1798, !1008}
!1813 = !DILocation(line: 286, column: 17, scope: !1804)
!1814 = distinct !{!1814, !1800, !1809, !1014, !1008}
!1815 = !DILocation(line: 289, column: 8, scope: !1577)
!1816 = !DILocation(line: 289, column: 16, scope: !1577)
!1817 = !DILocation(line: 290, column: 2, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1577, file: !15, line: 290, column: 2)
!1819 = !DILocation(line: 0, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !15, line: 290, column: 38)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !15, line: 290, column: 2)
!1822 = !DILocation(line: 292, column: 37, scope: !1820)
!1823 = !DILocation(line: 292, column: 48, scope: !1820)
!1824 = !DILocation(line: 292, column: 24, scope: !1820)
!1825 = !DILocation(line: 292, column: 60, scope: !1820)
!1826 = !DILocation(line: 292, column: 17, scope: !1820)
!1827 = !DILocation(line: 293, column: 11, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1820, file: !15, line: 293, column: 7)
!1829 = !DILocation(line: 293, column: 7, scope: !1820)
!1830 = !DILocation(line: 294, column: 13, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !15, line: 293, column: 20)
!1832 = !DILocation(line: 294, column: 4, scope: !1831)
!1833 = !DILocation(line: 295, column: 4, scope: !1831)
!1834 = !DILocation(line: 297, column: 34, scope: !1820)
!1835 = !DILocation(line: 297, column: 3, scope: !1820)
!1836 = !DILocation(line: 298, column: 11, scope: !1820)
!1837 = !DILocation(line: 298, column: 22, scope: !1820)
!1838 = !DILocation(line: 299, column: 11, scope: !1820)
!1839 = !DILocation(line: 299, column: 22, scope: !1820)
!1840 = !{!920, !381, i64 8}
!1841 = !DILocation(line: 300, column: 25, scope: !1820)
!1842 = !DILocation(line: 300, column: 38, scope: !1820)
!1843 = !{!920, !391, i64 16}
!1844 = !DILocation(line: 300, column: 11, scope: !1820)
!1845 = !DILocation(line: 300, column: 18, scope: !1820)
!1846 = !DILocation(line: 301, column: 42, scope: !1820)
!1847 = !{!920, !391, i64 20}
!1848 = !DILocation(line: 301, column: 11, scope: !1820)
!1849 = !DILocation(line: 301, column: 22, scope: !1820)
!1850 = !DILocation(line: 303, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !15, line: 302, column: 3)
!1852 = distinct !DILexicalBlock(scope: !1820, file: !15, line: 302, column: 3)
!1853 = !DILocation(line: 303, column: 4, scope: !1851)
!1854 = !DILocation(line: 303, column: 23, scope: !1851)
!1855 = !DILocation(line: 304, column: 11, scope: !1820)
!1856 = !DILocation(line: 304, column: 22, scope: !1820)
!1857 = !{!920, !381, i64 56}
!1858 = !DILocation(line: 305, column: 42, scope: !1820)
!1859 = !DILocation(line: 305, column: 11, scope: !1820)
!1860 = !DILocation(line: 305, column: 22, scope: !1820)
!1861 = !DILocation(line: 307, column: 42, scope: !1820)
!1862 = !DILocation(line: 307, column: 11, scope: !1820)
!1863 = !DILocation(line: 307, column: 22, scope: !1820)
!1864 = !DILocation(line: 309, column: 11, scope: !1820)
!1865 = !DILocation(line: 309, column: 22, scope: !1820)
!1866 = !{!920, !381, i64 96}
!1867 = !DILocation(line: 310, column: 42, scope: !1820)
!1868 = !{!920, !391, i64 104}
!1869 = !DILocation(line: 310, column: 11, scope: !1820)
!1870 = !DILocation(line: 310, column: 22, scope: !1820)
!1871 = !DILocation(line: 311, column: 42, scope: !1820)
!1872 = !DILocation(line: 311, column: 11, scope: !1820)
!1873 = !DILocation(line: 311, column: 22, scope: !1820)
!1874 = !DILocation(line: 313, column: 42, scope: !1820)
!1875 = !{!920, !391, i64 128}
!1876 = !DILocation(line: 313, column: 11, scope: !1820)
!1877 = !DILocation(line: 313, column: 22, scope: !1820)
!1878 = !DILocation(line: 314, column: 42, scope: !1820)
!1879 = !{!920, !391, i64 132}
!1880 = !DILocation(line: 314, column: 11, scope: !1820)
!1881 = !DILocation(line: 314, column: 22, scope: !1820)
!1882 = !DILocation(line: 315, column: 11, scope: !1820)
!1883 = !DILocation(line: 315, column: 22, scope: !1820)
!1884 = !{!920, !381, i64 136}
!1885 = !DILocation(line: 316, column: 24, scope: !1820)
!1886 = !DILocation(line: 316, column: 11, scope: !1820)
!1887 = !DILocation(line: 316, column: 22, scope: !1820)
!1888 = !DILocation(line: 317, column: 24, scope: !1820)
!1889 = !DILocation(line: 317, column: 3, scope: !1820)
!1890 = !DILocation(line: 317, column: 22, scope: !1820)
!1891 = !DILocation(line: 318, column: 24, scope: !1820)
!1892 = !DILocation(line: 318, column: 3, scope: !1820)
!1893 = !DILocation(line: 318, column: 22, scope: !1820)
!1894 = !DILocation(line: 319, column: 42, scope: !1820)
!1895 = !{!920, !921, i64 168}
!1896 = !DILocation(line: 319, column: 11, scope: !1820)
!1897 = !DILocation(line: 319, column: 22, scope: !1820)
!1898 = !DILocation(line: 290, column: 34, scope: !1821)
!1899 = !DILocation(line: 290, column: 23, scope: !1821)
!1900 = !DILocation(line: 290, column: 16, scope: !1821)
!1901 = distinct !{!1901, !1817, !1902}
!1902 = !DILocation(line: 320, column: 2, scope: !1818)
!1903 = !DILocation(line: 323, column: 1, scope: !1577)
!1904 = distinct !DISubprogram(name: "copystrand", scope: !15, file: !15, line: 325, type: !1905, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!54, !54}
!1907 = !{!1908, !1909, !1910, !1911}
!1908 = !DILocalVariable(name: "str", arg: 1, scope: !1904, file: !15, line: 325, type: !54)
!1909 = !DILocalVariable(name: "newstrand", scope: !1904, file: !15, line: 327, type: !54)
!1910 = !DILocalVariable(name: "namebuf", scope: !1904, file: !15, line: 328, type: !12)
!1911 = !DILocalVariable(name: "resctr", scope: !1904, file: !15, line: 329, type: !11)
!1912 = !DILocation(line: 0, scope: !1904)
!1913 = !DILocation(line: 331, column: 33, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1904, file: !15, line: 331, column: 5)
!1915 = !DILocation(line: 331, column: 19, scope: !1914)
!1916 = !DILocation(line: 331, column: 64, scope: !1914)
!1917 = !DILocation(line: 331, column: 5, scope: !1904)
!1918 = !DILocation(line: 332, column: 41, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1914, file: !15, line: 331, column: 72)
!1920 = !{!1921, !381, i64 0}
!1921 = !{!"strand_t", !381, i64 0, !391, i64 8, !391, i64 12, !381, i64 16, !381, i64 24, !391, i64 32, !391, i64 36, !381, i64 40}
!1922 = !DILocation(line: 332, column: 3, scope: !1919)
!1923 = !DILocation(line: 333, column: 3, scope: !1919)
!1924 = !DILocation(line: 334, column: 3, scope: !1919)
!1925 = !DILocation(line: 338, column: 16, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1904, file: !15, line: 337, column: 13)
!1927 = !{!1921, !391, i64 32}
!1928 = !DILocation(line: 338, column: 11, scope: !1926)
!1929 = !DILocation(line: 338, column: 28, scope: !1926)
!1930 = !DILocation(line: 338, column: 3, scope: !1926)
!1931 = !DILocation(line: 337, column: 26, scope: !1926)
!1932 = !DILocation(line: 337, column: 37, scope: !1926)
!1933 = !{!1921, !381, i64 40}
!1934 = !DILocation(line: 338, column: 56, scope: !1926)
!1935 = !DILocation(line: 337, column: 13, scope: !1904)
!1936 = !DILocation(line: 340, column: 17, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1926, file: !15, line: 339, column: 2)
!1938 = !DILocation(line: 341, column: 17, scope: !1937)
!1939 = !DILocation(line: 344, column: 51, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1904, file: !15, line: 344, column: 6)
!1941 = !DILocation(line: 344, column: 38, scope: !1940)
!1942 = !DILocation(line: 344, column: 66, scope: !1940)
!1943 = !DILocation(line: 344, column: 28, scope: !1940)
!1944 = !DILocation(line: 345, column: 24, scope: !1940)
!1945 = !DILocation(line: 344, column: 6, scope: !1904)
!1946 = !DILocation(line: 347, column: 3, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1940, file: !15, line: 346, column: 2)
!1948 = !DILocation(line: 348, column: 3, scope: !1947)
!1949 = !DILocation(line: 349, column: 3, scope: !1947)
!1950 = !DILocation(line: 351, column: 13, scope: !1904)
!1951 = !DILocation(line: 351, column: 26, scope: !1904)
!1952 = !DILocation(line: 352, column: 2, scope: !1904)
!1953 = !DILocation(line: 353, column: 32, scope: !1904)
!1954 = !{!1921, !391, i64 8}
!1955 = !DILocation(line: 353, column: 13, scope: !1904)
!1956 = !DILocation(line: 353, column: 25, scope: !1904)
!1957 = !DILocation(line: 354, column: 27, scope: !1904)
!1958 = !{!1921, !391, i64 12}
!1959 = !DILocation(line: 354, column: 13, scope: !1904)
!1960 = !DILocation(line: 354, column: 20, scope: !1904)
!1961 = !DILocation(line: 355, column: 13, scope: !1904)
!1962 = !DILocation(line: 356, column: 20, scope: !1904)
!1963 = !DILocation(line: 357, column: 32, scope: !1904)
!1964 = !DILocation(line: 357, column: 13, scope: !1904)
!1965 = !DILocation(line: 357, column: 25, scope: !1904)
!1966 = !DILocation(line: 358, column: 13, scope: !1904)
!1967 = !DILocation(line: 358, column: 24, scope: !1904)
!1968 = !{!1921, !391, i64 36}
!1969 = !DILocation(line: 359, column: 34, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !15, line: 359, column: 9)
!1971 = distinct !DILexicalBlock(scope: !1904, file: !15, line: 359, column: 9)
!1972 = !DILocation(line: 359, column: 9, scope: !1971)
!1973 = !DILocation(line: 0, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !15, line: 359, column: 65)
!1975 = !DILocation(line: 361, column: 22, scope: !1974)
!1976 = !DILocation(line: 361, column: 17, scope: !1974)
!1977 = !DILocation(line: 361, column: 4, scope: !1974)
!1978 = !DILocation(line: 360, column: 28, scope: !1974)
!1979 = !DILocation(line: 360, column: 49, scope: !1974)
!1980 = !DILocation(line: 362, column: 28, scope: !1974)
!1981 = !DILocation(line: 362, column: 17, scope: !1974)
!1982 = !DILocation(line: 362, column: 50, scope: !1974)
!1983 = !DILocation(line: 362, column: 59, scope: !1974)
!1984 = !DILocation(line: 359, column: 41, scope: !1970)
!1985 = !DILocation(line: 360, column: 17, scope: !1974)
!1986 = !DILocation(line: 365, column: 5, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1974, file: !15, line: 363, column: 22)
!1988 = !DILocation(line: 364, column: 55, scope: !1987)
!1989 = !DILocation(line: 364, column: 25, scope: !1987)
!1990 = !DILocation(line: 364, column: 69, scope: !1987)
!1991 = !DILocation(line: 359, column: 60, scope: !1970)
!1992 = distinct !{!1992, !1972, !1993, !1994}
!1993 = !DILocation(line: 366, column: 9, scope: !1971)
!1994 = !{!"llvm.loop.peeled.count", i32 1}
!1995 = !DILocation(line: 368, column: 1, scope: !1904)
!1996 = distinct !DISubprogram(name: "copymolecule", scope: !15, file: !15, line: 370, type: !1997, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!233, !233}
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006}
!2000 = !DILocalVariable(name: "mol", arg: 1, scope: !1996, file: !15, line: 370, type: !233)
!2001 = !DILocalVariable(name: "row", scope: !1996, file: !15, line: 372, type: !11)
!2002 = !DILocalVariable(name: "col", scope: !1996, file: !15, line: 372, type: !11)
!2003 = !DILocalVariable(name: "strptr", scope: !1996, file: !15, line: 373, type: !54)
!2004 = !DILocalVariable(name: "newstr", scope: !1996, file: !15, line: 373, type: !54)
!2005 = !DILocalVariable(name: "nextstr", scope: !1996, file: !15, line: 373, type: !54)
!2006 = !DILocalVariable(name: "newmol", scope: !1996, file: !15, line: 374, type: !233)
!2007 = !DILocation(line: 0, scope: !1996)
!2008 = !DILocation(line: 376, column: 9, scope: !1996)
!2009 = !DILocation(line: 378, column: 39, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1996, file: !15, line: 378, column: 12)
!2011 = !DILocation(line: 378, column: 23, scope: !2010)
!2012 = !DILocation(line: 378, column: 72, scope: !2010)
!2013 = !DILocation(line: 378, column: 12, scope: !1996)
!2014 = !DILocation(line: 379, column: 17, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !15, line: 378, column: 80)
!2016 = !DILocation(line: 380, column: 17, scope: !2015)
!2017 = !DILocation(line: 381, column: 17, scope: !2015)
!2018 = !DILocation(line: 384, column: 35, scope: !1996)
!2019 = !{!2020, !391, i64 96}
!2020 = !{!"molecule_t", !382, i64 0, !391, i64 96, !381, i64 104, !391, i64 112, !391, i64 116, !391, i64 120, !381, i64 128}
!2021 = !DILocation(line: 384, column: 17, scope: !1996)
!2022 = !DILocation(line: 384, column: 28, scope: !1996)
!2023 = !DILocation(line: 385, column: 36, scope: !1996)
!2024 = !{!2020, !391, i64 112}
!2025 = !DILocation(line: 385, column: 17, scope: !1996)
!2026 = !DILocation(line: 385, column: 29, scope: !1996)
!2027 = !DILocation(line: 386, column: 33, scope: !1996)
!2028 = !{!2020, !391, i64 116}
!2029 = !DILocation(line: 386, column: 17, scope: !1996)
!2030 = !DILocation(line: 386, column: 26, scope: !1996)
!2031 = !DILocation(line: 387, column: 33, scope: !1996)
!2032 = !{!2020, !391, i64 120}
!2033 = !DILocation(line: 387, column: 17, scope: !1996)
!2034 = !DILocation(line: 387, column: 26, scope: !1996)
!2035 = !DILocation(line: 389, column: 19, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !1996, file: !15, line: 389, column: 14)
!2037 = !{!2020, !381, i64 128}
!2038 = !DILocation(line: 389, column: 25, scope: !2036)
!2039 = !DILocation(line: 389, column: 14, scope: !1996)
!2040 = !DILocation(line: 390, column: 33, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2036, file: !15, line: 389, column: 35)
!2042 = !DILocation(line: 391, column: 9, scope: !2041)
!2043 = !DILocation(line: 0, scope: !2036)
!2044 = !DILocation(line: 397, column: 51, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !15, line: 396, column: 50)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !15, line: 396, column: 17)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !15, line: 396, column: 17)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !15, line: 395, column: 42)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !15, line: 395, column: 9)
!2050 = distinct !DILexicalBlock(scope: !1996, file: !15, line: 395, column: 9)
!2051 = !DILocation(line: 0, scope: !2045)
!2052 = !DILocation(line: 401, column: 23, scope: !1996)
!2053 = !{!2020, !381, i64 104}
!2054 = !DILocation(line: 402, column: 21, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1996, file: !15, line: 402, column: 14)
!2056 = !DILocation(line: 402, column: 14, scope: !1996)
!2057 = !DILocation(line: 403, column: 26, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !15, line: 402, column: 30)
!2059 = !DILocation(line: 404, column: 25, scope: !2058)
!2060 = !DILocation(line: 404, column: 36, scope: !2058)
!2061 = !{!1921, !381, i64 16}
!2062 = !DILocation(line: 405, column: 25, scope: !2058)
!2063 = !DILocation(line: 405, column: 35, scope: !2058)
!2064 = !DILocation(line: 406, column: 34, scope: !2058)
!2065 = !{!1921, !381, i64 24}
!2066 = !DILocation(line: 409, column: 24, scope: !1996)
!2067 = !DILocation(line: 409, column: 9, scope: !1996)
!2068 = !DILocation(line: 410, column: 27, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !1996, file: !15, line: 409, column: 34)
!2070 = !DILocation(line: 411, column: 22, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2069, file: !15, line: 411, column: 22)
!2072 = !DILocation(line: 411, column: 22, scope: !2069)
!2073 = !DILocation(line: 412, column: 33, scope: !2071)
!2074 = !DILocation(line: 412, column: 40, scope: !2071)
!2075 = !DILocation(line: 412, column: 25, scope: !2071)
!2076 = !DILocation(line: 413, column: 26, scope: !2069)
!2077 = !DILocation(line: 413, column: 37, scope: !2069)
!2078 = !DILocation(line: 415, column: 34, scope: !2069)
!2079 = distinct !{!2079, !2067, !2080}
!2080 = !DILocation(line: 416, column: 9, scope: !1996)
!2081 = !DILocation(line: 418, column: 9, scope: !1996)
!2082 = !DILocation(line: 419, column: 9, scope: !1996)
!2083 = !DILocation(line: 420, column: 1, scope: !1996)
!2084 = distinct !DISubprogram(name: "addres2reslib", scope: !15, file: !15, line: 996, type: !2085, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !299}
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094}
!2088 = !DILocalVariable(name: "rlp", arg: 1, scope: !2084, file: !15, line: 996, type: !299)
!2089 = !DILocalVariable(name: "res", scope: !2084, file: !15, line: 998, type: !170)
!2090 = !DILocalVariable(name: "ap", scope: !2084, file: !15, line: 999, type: !202)
!2091 = !DILocalVariable(name: "anp", scope: !2084, file: !15, line: 1000, type: !12)
!2092 = !DILocalVariable(name: "rnp", scope: !2084, file: !15, line: 1000, type: !12)
!2093 = !DILocalVariable(name: "a", scope: !2084, file: !15, line: 1001, type: !11)
!2094 = !DILocalVariable(name: "i", scope: !2084, file: !15, line: 1001, type: !11)
!2095 = !DILocation(line: 0, scope: !2084)
!2096 = !DILocation(line: 1003, column: 29, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2084, file: !15, line: 1003, column: 6)
!2098 = !DILocation(line: 1003, column: 61, scope: !2097)
!2099 = !DILocation(line: 1003, column: 6, scope: !2084)
!2100 = !DILocation(line: 1005, column: 18, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !15, line: 1003, column: 70)
!2102 = !DILocation(line: 1004, column: 3, scope: !2101)
!2103 = !DILocation(line: 1006, column: 3, scope: !2101)
!2104 = !DILocation(line: 1007, column: 3, scope: !2101)
!2105 = !DILocation(line: 1009, column: 33, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2084, file: !15, line: 1009, column: 6)
!2107 = !DILocation(line: 1009, column: 41, scope: !2106)
!2108 = !DILocation(line: 1009, column: 25, scope: !2106)
!2109 = !DILocation(line: 1009, column: 64, scope: !2106)
!2110 = !DILocation(line: 1009, column: 6, scope: !2084)
!2111 = !DILocation(line: 1011, column: 18, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2106, file: !15, line: 1009, column: 73)
!2113 = !DILocation(line: 1010, column: 3, scope: !2112)
!2114 = !DILocation(line: 1012, column: 3, scope: !2112)
!2115 = !DILocation(line: 1013, column: 3, scope: !2112)
!2116 = !DILocation(line: 1015, column: 21, scope: !2084)
!2117 = !{!390, !381, i64 24}
!2118 = !DILocation(line: 1015, column: 14, scope: !2084)
!2119 = !DILocation(line: 1016, column: 16, scope: !2084)
!2120 = !DILocation(line: 1018, column: 26, scope: !2084)
!2121 = !DILocation(line: 1018, column: 44, scope: !2084)
!2122 = !DILocation(line: 1018, column: 18, scope: !2084)
!2123 = !DILocation(line: 1019, column: 10, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2084, file: !15, line: 1019, column: 6)
!2125 = !DILocation(line: 1019, column: 6, scope: !2084)
!2126 = !DILocation(line: 1020, column: 12, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !15, line: 1019, column: 19)
!2128 = !DILocation(line: 1020, column: 3, scope: !2127)
!2129 = !DILocation(line: 1022, column: 3, scope: !2127)
!2130 = !DILocation(line: 1024, column: 2, scope: !2084)
!2131 = !DILocation(line: 1025, column: 7, scope: !2084)
!2132 = !DILocation(line: 1025, column: 17, scope: !2084)
!2133 = !DILocation(line: 1027, column: 18, scope: !2084)
!2134 = !DILocation(line: 1028, column: 10, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2084, file: !15, line: 1028, column: 6)
!2136 = !DILocation(line: 1028, column: 6, scope: !2084)
!2137 = !DILocation(line: 1029, column: 12, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !15, line: 1028, column: 19)
!2139 = !DILocation(line: 1029, column: 3, scope: !2138)
!2140 = !DILocation(line: 1031, column: 3, scope: !2138)
!2141 = !DILocation(line: 1033, column: 2, scope: !2084)
!2142 = !DILocation(line: 1034, column: 7, scope: !2084)
!2143 = !DILocation(line: 1034, column: 15, scope: !2084)
!2144 = !DILocation(line: 1036, column: 7, scope: !2084)
!2145 = !DILocation(line: 1036, column: 13, scope: !2084)
!2146 = !DILocation(line: 1037, column: 7, scope: !2084)
!2147 = !DILocation(line: 1037, column: 17, scope: !2084)
!2148 = !DILocation(line: 1038, column: 7, scope: !2084)
!2149 = !DILocation(line: 1038, column: 16, scope: !2084)
!2150 = !DILocation(line: 1039, column: 7, scope: !2084)
!2151 = !DILocation(line: 1039, column: 14, scope: !2084)
!2152 = !DILocation(line: 1040, column: 21, scope: !2084)
!2153 = !DILocation(line: 1040, column: 7, scope: !2084)
!2154 = !DILocation(line: 1040, column: 14, scope: !2084)
!2155 = !DILocation(line: 1041, column: 25, scope: !2084)
!2156 = !DILocation(line: 1041, column: 7, scope: !2084)
!2157 = !DILocation(line: 1041, column: 18, scope: !2084)
!2158 = !DILocation(line: 1042, column: 7, scope: !2084)
!2159 = !DILocation(line: 1045, column: 7, scope: !2084)
!2160 = !DILocation(line: 1045, column: 18, scope: !2084)
!2161 = !DILocation(line: 1046, column: 7, scope: !2084)
!2162 = !DILocation(line: 1046, column: 17, scope: !2084)
!2163 = !DILocation(line: 1047, column: 7, scope: !2084)
!2164 = !DILocation(line: 1047, column: 16, scope: !2084)
!2165 = !DILocation(line: 1043, column: 18, scope: !2084)
!2166 = !DILocation(line: 1048, column: 18, scope: !2084)
!2167 = !DILocation(line: 1048, column: 7, scope: !2084)
!2168 = !DILocation(line: 1048, column: 16, scope: !2084)
!2169 = !DILocation(line: 1049, column: 7, scope: !2084)
!2170 = !DILocation(line: 1049, column: 16, scope: !2084)
!2171 = !DILocation(line: 1050, column: 7, scope: !2084)
!2172 = !DILocation(line: 1050, column: 15, scope: !2084)
!2173 = !DILocation(line: 1051, column: 16, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !15, line: 1051, column: 2)
!2175 = distinct !DILexicalBlock(scope: !2084, file: !15, line: 1051, column: 2)
!2176 = !DILocation(line: 1051, column: 2, scope: !2175)
!2177 = !DILocation(line: 1052, column: 46, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !15, line: 1051, column: 32)
!2179 = !DILocation(line: 1052, column: 27, scope: !2178)
!2180 = !DILocation(line: 1052, column: 59, scope: !2178)
!2181 = !DILocation(line: 1052, column: 19, scope: !2178)
!2182 = !DILocation(line: 1053, column: 11, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !15, line: 1053, column: 7)
!2184 = !DILocation(line: 1053, column: 7, scope: !2178)
!2185 = !DILocation(line: 1054, column: 13, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2183, file: !15, line: 1053, column: 20)
!2187 = !DILocation(line: 1054, column: 4, scope: !2186)
!2188 = !DILocation(line: 1056, column: 4, scope: !2186)
!2189 = !DILocation(line: 1059, column: 3, scope: !2178)
!2190 = !DILocation(line: 1060, column: 8, scope: !2178)
!2191 = !DILocation(line: 1060, column: 21, scope: !2178)
!2192 = !DILocation(line: 1060, column: 32, scope: !2178)
!2193 = !DILocation(line: 1061, column: 21, scope: !2178)
!2194 = !DILocation(line: 1061, column: 32, scope: !2178)
!2195 = !DILocation(line: 1062, column: 21, scope: !2178)
!2196 = !DILocation(line: 1062, column: 32, scope: !2178)
!2197 = !DILocation(line: 1063, column: 3, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2178, file: !15, line: 1063, column: 3)
!2199 = !DILocation(line: 1064, column: 37, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2198, file: !15, line: 1063, column: 3)
!2201 = !DILocation(line: 1065, column: 21, scope: !2178)
!2202 = !DILocation(line: 1065, column: 32, scope: !2178)
!2203 = !DILocation(line: 1066, column: 45, scope: !2178)
!2204 = !DILocation(line: 1066, column: 21, scope: !2178)
!2205 = !DILocation(line: 1066, column: 32, scope: !2178)
!2206 = !DILocation(line: 1068, column: 45, scope: !2178)
!2207 = !DILocation(line: 1068, column: 21, scope: !2178)
!2208 = !DILocation(line: 1068, column: 32, scope: !2178)
!2209 = !DILocation(line: 1070, column: 45, scope: !2178)
!2210 = !DILocation(line: 1070, column: 21, scope: !2178)
!2211 = !DILocation(line: 1070, column: 32, scope: !2178)
!2212 = !DILocation(line: 1071, column: 45, scope: !2178)
!2213 = !DILocation(line: 1071, column: 21, scope: !2178)
!2214 = !DILocation(line: 1071, column: 32, scope: !2178)
!2215 = !DILocation(line: 1073, column: 21, scope: !2178)
!2216 = !DILocation(line: 1073, column: 32, scope: !2178)
!2217 = !DILocation(line: 1074, column: 21, scope: !2178)
!2218 = !DILocation(line: 1074, column: 32, scope: !2178)
!2219 = !DILocation(line: 1076, column: 35, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !15, line: 1075, column: 3)
!2221 = distinct !DILexicalBlock(scope: !2178, file: !15, line: 1075, column: 3)
!2222 = !DILocation(line: 1076, column: 4, scope: !2220)
!2223 = !DILocation(line: 1076, column: 33, scope: !2220)
!2224 = !DILocation(line: 1077, column: 45, scope: !2178)
!2225 = !DILocation(line: 1077, column: 21, scope: !2178)
!2226 = !DILocation(line: 1077, column: 32, scope: !2178)
!2227 = !DILocation(line: 1051, column: 28, scope: !2174)
!2228 = !DILocation(line: 1051, column: 18, scope: !2174)
!2229 = distinct !{!2229, !2176, !2230}
!2230 = !DILocation(line: 1078, column: 2, scope: !2175)
!2231 = !DILocation(line: 1079, column: 1, scope: !2084)
!2232 = distinct !DISubprogram(name: "addbonds2reslib", scope: !15, file: !15, line: 1081, type: !2085, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2233)
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242}
!2234 = !DILocalVariable(name: "rlp", arg: 1, scope: !2232, file: !15, line: 1081, type: !299)
!2235 = !DILocalVariable(name: "res", scope: !2232, file: !15, line: 1083, type: !170)
!2236 = !DILocalVariable(name: "bp", scope: !2232, file: !15, line: 1084, type: !184)
!2237 = !DILocalVariable(name: "b", scope: !2232, file: !15, line: 1085, type: !11)
!2238 = !DILocalVariable(name: "a", scope: !2232, file: !15, line: 1086, type: !11)
!2239 = !DILocalVariable(name: "ai", scope: !2232, file: !15, line: 1086, type: !11)
!2240 = !DILocalVariable(name: "aj", scope: !2232, file: !15, line: 1086, type: !11)
!2241 = !DILocalVariable(name: "api", scope: !2232, file: !15, line: 1087, type: !202)
!2242 = !DILocalVariable(name: "apj", scope: !2232, file: !15, line: 1087, type: !202)
!2243 = !DILocation(line: 0, scope: !2232)
!2244 = !DILocation(line: 1089, column: 18, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2232, file: !15, line: 1089, column: 2)
!2246 = !DILocation(line: 0, scope: !2245)
!2247 = !DILocation(line: 1089, column: 2, scope: !2245)
!2248 = !DILocation(line: 1090, column: 20, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !15, line: 1090, column: 7)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !15, line: 1089, column: 52)
!2251 = distinct !DILexicalBlock(scope: !2245, file: !15, line: 1089, column: 2)
!2252 = !DILocation(line: 1090, column: 7, scope: !2249)
!2253 = !DILocation(line: 1090, column: 41, scope: !2249)
!2254 = !DILocation(line: 1090, column: 7, scope: !2250)
!2255 = !DILocation(line: 1092, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !15, line: 1091, column: 8)
!2257 = distinct !DILexicalBlock(scope: !2249, file: !15, line: 1090, column: 47)
!2258 = !DILocation(line: 1092, column: 21, scope: !2256)
!2259 = !DILocation(line: 1092, column: 5, scope: !2256)
!2260 = !DILocation(line: 1091, column: 15, scope: !2256)
!2261 = !DILocation(line: 1093, column: 5, scope: !2256)
!2262 = !DILocation(line: 1091, column: 8, scope: !2257)
!2263 = !DILocation(line: 1099, column: 18, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !15, line: 1099, column: 4)
!2265 = distinct !DILexicalBlock(scope: !2257, file: !15, line: 1099, column: 4)
!2266 = !DILocation(line: 1099, column: 4, scope: !2265)
!2267 = !DILocation(line: 0, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !15, line: 1099, column: 34)
!2269 = !DILocation(line: 1094, column: 5, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2256, file: !15, line: 1093, column: 14)
!2271 = !DILocation(line: 1096, column: 5, scope: !2270)
!2272 = !DILocation(line: 1097, column: 5, scope: !2270)
!2273 = !DILocation(line: 1100, column: 25, scope: !2268)
!2274 = !DILocation(line: 1100, column: 10, scope: !2268)
!2275 = !DILocation(line: 1100, column: 23, scope: !2268)
!2276 = !DILocation(line: 1101, column: 25, scope: !2268)
!2277 = !DILocation(line: 1101, column: 10, scope: !2268)
!2278 = !DILocation(line: 1101, column: 23, scope: !2268)
!2279 = !DILocation(line: 1102, column: 7, scope: !2268)
!2280 = !DILocation(line: 1103, column: 7, scope: !2268)
!2281 = !DILocation(line: 1104, column: 12, scope: !2268)
!2282 = !DILocation(line: 1106, column: 10, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !15, line: 1106, column: 10)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !15, line: 1105, column: 42)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !15, line: 1105, column: 5)
!2286 = distinct !DILexicalBlock(scope: !2268, file: !15, line: 1105, column: 5)
!2287 = !DILocation(line: 1106, column: 30, scope: !2283)
!2288 = !DILocation(line: 1106, column: 10, scope: !2284)
!2289 = !DILocation(line: 1108, column: 35, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2283, file: !15, line: 1108, column: 15)
!2291 = !DILocation(line: 1108, column: 15, scope: !2283)
!2292 = !DILocation(line: 1109, column: 27, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !15, line: 1108, column: 45)
!2294 = !DILocation(line: 1110, column: 12, scope: !2293)
!2295 = !DILocation(line: 1110, column: 22, scope: !2293)
!2296 = !DILocation(line: 1111, column: 7, scope: !2293)
!2297 = !DILocation(line: 1114, column: 12, scope: !2268)
!2298 = !DILocation(line: 1116, column: 10, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !15, line: 1116, column: 10)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !15, line: 1115, column: 42)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !15, line: 1115, column: 5)
!2302 = distinct !DILexicalBlock(scope: !2268, file: !15, line: 1115, column: 5)
!2303 = !DILocation(line: 1116, column: 30, scope: !2299)
!2304 = !DILocation(line: 1116, column: 10, scope: !2300)
!2305 = !DILocation(line: 1118, column: 35, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2299, file: !15, line: 1118, column: 15)
!2307 = !DILocation(line: 1118, column: 15, scope: !2299)
!2308 = !DILocation(line: 1119, column: 27, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !15, line: 1118, column: 45)
!2310 = !DILocation(line: 1120, column: 12, scope: !2309)
!2311 = !DILocation(line: 1120, column: 22, scope: !2309)
!2312 = !DILocation(line: 1121, column: 7, scope: !2309)
!2313 = !DILocation(line: 1099, column: 30, scope: !2264)
!2314 = !DILocation(line: 1099, column: 20, scope: !2264)
!2315 = distinct !{!2315, !2266, !2316}
!2316 = !DILocation(line: 1124, column: 4, scope: !2265)
!2317 = !DILocation(line: 1125, column: 9, scope: !2257)
!2318 = !DILocation(line: 1125, column: 21, scope: !2257)
!2319 = !DILocation(line: 1126, column: 9, scope: !2257)
!2320 = !DILocation(line: 1126, column: 20, scope: !2257)
!2321 = !DILocation(line: 1127, column: 4, scope: !2257)
!2322 = !DILocation(line: 1089, column: 44, scope: !2251)
!2323 = distinct !{!2323, !2247, !2324}
!2324 = !DILocation(line: 1129, column: 2, scope: !2245)
!2325 = !DILocation(line: 1130, column: 57, scope: !2232)
!2326 = !DILocation(line: 1130, column: 2, scope: !2232)
!2327 = !DILocation(line: 1131, column: 2, scope: !2232)
!2328 = !DILocation(line: 1132, column: 2, scope: !2232)
!2329 = !DILocation(line: 1133, column: 1, scope: !2232)
!2330 = distinct !DISubprogram(name: "addqr2reslib", scope: !15, file: !15, line: 1135, type: !2085, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2331 = !{!2332, !2333, !2334, !2335, !2336}
!2332 = !DILocalVariable(name: "rlp", arg: 1, scope: !2330, file: !15, line: 1135, type: !299)
!2333 = !DILocalVariable(name: "res", scope: !2330, file: !15, line: 1137, type: !170)
!2334 = !DILocalVariable(name: "a", scope: !2330, file: !15, line: 1138, type: !11)
!2335 = !DILocalVariable(name: "ap", scope: !2330, file: !15, line: 1139, type: !202)
!2336 = !DILocalVariable(name: "apr", scope: !2330, file: !15, line: 1139, type: !202)
!2337 = !DILocation(line: 0, scope: !2330)
!2338 = !DILocation(line: 1141, column: 18, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2330, file: !15, line: 1141, column: 2)
!2340 = !DILocation(line: 0, scope: !2339)
!2341 = !DILocation(line: 1141, column: 2, scope: !2339)
!2342 = !DILocation(line: 1142, column: 20, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !15, line: 1142, column: 7)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !15, line: 1141, column: 52)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !15, line: 1141, column: 2)
!2346 = !DILocation(line: 1142, column: 7, scope: !2343)
!2347 = !DILocation(line: 1142, column: 41, scope: !2343)
!2348 = !DILocation(line: 1142, column: 7, scope: !2344)
!2349 = !DILocation(line: 1143, column: 32, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !15, line: 1143, column: 4)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !15, line: 1143, column: 4)
!2352 = distinct !DILexicalBlock(scope: !2343, file: !15, line: 1142, column: 47)
!2353 = !DILocation(line: 1143, column: 30, scope: !2350)
!2354 = !DILocation(line: 1143, column: 4, scope: !2351)
!2355 = !DILocation(line: 0, scope: !1314, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 1144, column: 16, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !15, line: 1144, column: 9)
!2358 = distinct !DILexicalBlock(scope: !2350, file: !15, line: 1143, column: 52)
!2359 = !DILocation(line: 0, scope: !1320, inlinedAt: !2356)
!2360 = !DILocation(line: 1144, column: 35, scope: !2357)
!2361 = !DILocation(line: 0, scope: !1304, inlinedAt: !2356)
!2362 = !DILocation(line: 1206, column: 2, scope: !1315, inlinedAt: !2356)
!2363 = !DILocation(line: 1207, column: 34, scope: !1320, inlinedAt: !2356)
!2364 = !DILocation(line: 1207, column: 8, scope: !1320, inlinedAt: !2356)
!2365 = !DILocation(line: 1206, column: 34, scope: !1314, inlinedAt: !2356)
!2366 = !DILocation(line: 1207, column: 7, scope: !1321, inlinedAt: !2356)
!2367 = !DILocation(line: 1206, column: 16, scope: !1314, inlinedAt: !2356)
!2368 = distinct !{!2368, !2362, !2369}
!2369 = !DILocation(line: 1209, column: 2, scope: !1315, inlinedAt: !2356)
!2370 = !DILocation(line: 1146, column: 26, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2357, file: !15, line: 1144, column: 50)
!2372 = !DILocation(line: 1146, column: 11, scope: !2371)
!2373 = !DILocation(line: 1146, column: 20, scope: !2371)
!2374 = !DILocation(line: 1148, column: 26, scope: !2371)
!2375 = !DILocation(line: 1148, column: 11, scope: !2371)
!2376 = !DILocation(line: 1148, column: 20, scope: !2371)
!2377 = !DILocation(line: 1150, column: 26, scope: !2371)
!2378 = !DILocation(line: 1150, column: 11, scope: !2371)
!2379 = !DILocation(line: 1150, column: 20, scope: !2371)
!2380 = !DILocation(line: 1151, column: 26, scope: !2371)
!2381 = !DILocation(line: 1151, column: 11, scope: !2371)
!2382 = !DILocation(line: 1151, column: 20, scope: !2371)
!2383 = !DILocation(line: 1153, column: 5, scope: !2371)
!2384 = !DILocation(line: 1143, column: 42, scope: !2350)
!2385 = !DILocation(line: 1143, column: 48, scope: !2350)
!2386 = distinct !{!2386, !2354, !2387}
!2387 = !DILocation(line: 1154, column: 4, scope: !2351)
!2388 = !DILocation(line: 1141, column: 44, scope: !2345)
!2389 = distinct !{!2389, !2341, !2390}
!2390 = !DILocation(line: 1157, column: 2, scope: !2339)
!2391 = !DILocation(line: 1158, column: 57, scope: !2330)
!2392 = !DILocation(line: 1158, column: 2, scope: !2330)
!2393 = !DILocation(line: 1159, column: 2, scope: !2330)
!2394 = !DILocation(line: 1160, column: 2, scope: !2330)
!2395 = !DILocation(line: 1161, column: 1, scope: !2330)
!2396 = distinct !DISubprogram(name: "addchi2reslib", scope: !15, file: !15, line: 1163, type: !2085, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2397)
!2397 = !{!2398, !2399, !2400, !2401, !2402, !2403, !2404, !2406, !2407}
!2398 = !DILocalVariable(name: "rlp", arg: 1, scope: !2396, file: !15, line: 1163, type: !299)
!2399 = !DILocalVariable(name: "res", scope: !2396, file: !15, line: 1165, type: !170)
!2400 = !DILocalVariable(name: "cp", scope: !2396, file: !15, line: 1166, type: !191)
!2401 = !DILocalVariable(name: "a", scope: !2396, file: !15, line: 1167, type: !11)
!2402 = !DILocalVariable(name: "c", scope: !2396, file: !15, line: 1167, type: !11)
!2403 = !DILocalVariable(name: "ca", scope: !2396, file: !15, line: 1167, type: !11)
!2404 = !DILocalVariable(name: "pos", scope: !2396, file: !15, line: 1168, type: !2405)
!2405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 768, elements: !197)
!2406 = !DILocalVariable(name: "dvol", scope: !2396, file: !15, line: 1169, type: !2405)
!2407 = !DILocalVariable(name: "vol", scope: !2396, file: !15, line: 1170, type: !48)
!2408 = !DILocation(line: 0, scope: !2396)
!2409 = !DILocation(line: 1168, column: 2, scope: !2396)
!2410 = !DILocation(line: 1168, column: 11, scope: !2396)
!2411 = !DILocation(line: 1169, column: 2, scope: !2396)
!2412 = !DILocation(line: 1169, column: 11, scope: !2396)
!2413 = !DILocation(line: 1170, column: 2, scope: !2396)
!2414 = !DILocation(line: 1172, column: 18, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2396, file: !15, line: 1172, column: 2)
!2416 = !DILocation(line: 0, scope: !2415)
!2417 = !DILocation(line: 1172, column: 2, scope: !2415)
!2418 = !DILocation(line: 1173, column: 21, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !15, line: 1173, column: 7)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !15, line: 1172, column: 52)
!2421 = distinct !DILexicalBlock(scope: !2415, file: !15, line: 1172, column: 2)
!2422 = !DILocation(line: 1173, column: 8, scope: !2419)
!2423 = !DILocation(line: 1173, column: 7, scope: !2420)
!2424 = !DILocation(line: 1175, column: 13, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !15, line: 1174, column: 8)
!2426 = distinct !DILexicalBlock(scope: !2419, file: !15, line: 1173, column: 43)
!2427 = !DILocation(line: 1175, column: 19, scope: !2425)
!2428 = !DILocation(line: 1175, column: 5, scope: !2425)
!2429 = !DILocation(line: 1176, column: 5, scope: !2425)
!2430 = !DILocation(line: 1174, column: 8, scope: !2426)
!2431 = !DILocation(line: 1177, column: 14, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2425, file: !15, line: 1176, column: 14)
!2433 = !DILocation(line: 1179, column: 11, scope: !2432)
!2434 = !DILocation(line: 1177, column: 5, scope: !2432)
!2435 = !DILocation(line: 1180, column: 5, scope: !2432)
!2436 = !DILocation(line: 1182, column: 9, scope: !2426)
!2437 = !DILocation(line: 1182, column: 19, scope: !2426)
!2438 = !DILocation(line: 1183, column: 9, scope: !2426)
!2439 = !DILocation(line: 1183, column: 18, scope: !2426)
!2440 = !DILocation(line: 1184, column: 18, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !15, line: 1184, column: 4)
!2442 = distinct !DILexicalBlock(scope: !2426, file: !15, line: 1184, column: 4)
!2443 = !DILocation(line: 1184, column: 4, scope: !2442)
!2444 = !DILocation(line: 1174, column: 15, scope: !2425)
!2445 = !DILocation(line: 0, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !15, line: 1185, column: 29)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !15, line: 1185, column: 5)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !15, line: 1185, column: 5)
!2449 = distinct !DILexicalBlock(scope: !2441, file: !15, line: 1184, column: 32)
!2450 = !DILocation(line: 0, scope: !2449)
!2451 = !DILocation(line: 1186, column: 27, scope: !2446)
!2452 = !DILocation(line: 1186, column: 11, scope: !2446)
!2453 = !DILocation(line: 1186, column: 25, scope: !2446)
!2454 = !DILocation(line: 1187, column: 18, scope: !2446)
!2455 = !DILocation(line: 1187, column: 16, scope: !2446)
!2456 = !DILocation(line: 1188, column: 18, scope: !2446)
!2457 = !DILocation(line: 1188, column: 16, scope: !2446)
!2458 = !DILocation(line: 1189, column: 18, scope: !2446)
!2459 = !DILocation(line: 1189, column: 16, scope: !2446)
!2460 = !DILocation(line: 1191, column: 5, scope: !2449)
!2461 = !DILocation(line: 1192, column: 18, scope: !2449)
!2462 = !DILocation(line: 1192, column: 9, scope: !2449)
!2463 = !DILocation(line: 1192, column: 16, scope: !2449)
!2464 = !DILocation(line: 1193, column: 7, scope: !2449)
!2465 = !DILocation(line: 1184, column: 28, scope: !2441)
!2466 = !DILocation(line: 1184, column: 20, scope: !2441)
!2467 = distinct !{!2467, !2443, !2468}
!2468 = !DILocation(line: 1194, column: 4, scope: !2442)
!2469 = !DILocation(line: 1172, column: 44, scope: !2421)
!2470 = distinct !{!2470, !2417, !2471}
!2471 = !DILocation(line: 1197, column: 2, scope: !2415)
!2472 = !DILocation(line: 1198, column: 11, scope: !2396)
!2473 = !DILocation(line: 1199, column: 8, scope: !2396)
!2474 = !DILocation(line: 1199, column: 24, scope: !2396)
!2475 = !DILocation(line: 1198, column: 2, scope: !2396)
!2476 = !DILocation(line: 1200, column: 1, scope: !2396)
