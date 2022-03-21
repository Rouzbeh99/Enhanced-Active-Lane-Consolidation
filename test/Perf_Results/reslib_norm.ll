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
  br i1 %297, label %759, label %298, !dbg !904

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
  br i1 %316, label %420, label %317, !dbg !935

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
  br i1 %339, label %340, label %419, !dbg !952

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

354:                                              ; preds = %414, %340
  %355 = phi i64 [ 0, %340 ], [ %415, %414 ]
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
  br i1 %400, label %401, label %414, !dbg !999

401:                                              ; preds = %397
  %402 = zext i32 %399 to i64, !dbg !999
  br label %403, !dbg !999

403:                                              ; preds = %403, %401
  %404 = phi i64 [ 0, %401 ], [ %411, %403 ]
  call void @llvm.dbg.value(metadata i64 %404, metadata !505, metadata !DIExpression()) #10, !dbg !936
  %405 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 0, i64 %404, !dbg !1000
  %406 = load i32, i32* %405, align 4, !dbg !1000, !tbaa !944
  %407 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %404, i64 0, !dbg !1002
  store i32 %406, i32* %407, align 8, !dbg !1003, !tbaa !944
  %408 = getelementptr inbounds [100 x i32], [100 x i32]* %28, i64 0, i64 %404, !dbg !1004
  %409 = load i32, i32* %408, align 4, !dbg !1004, !tbaa !944
  %410 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %404, i64 1, !dbg !1005
  store i32 %409, i32* %410, align 4, !dbg !1006, !tbaa !944
  %411 = add nuw nsw i64 %404, 1, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %411, metadata !505, metadata !DIExpression()) #10, !dbg !936
  %412 = icmp eq i64 %411, %402, !dbg !998
  br i1 %412, label %413, label %403, !dbg !999, !llvm.loop !1008

413:                                              ; preds = %403
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1010
  br label %414, !dbg !1010

414:                                              ; preds = %413, %397
  %415 = add nuw nsw i64 %355, 1, !dbg !1012
  call void @llvm.dbg.value(metadata i64 %415, metadata !506, metadata !DIExpression()) #10, !dbg !936
  %416 = load i32, i32* %21, align 4, !dbg !948, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %416, metadata !504, metadata !DIExpression()) #10, !dbg !936
  %417 = sext i32 %416 to i64, !dbg !951
  %418 = icmp slt i64 %415, %417, !dbg !951
  br i1 %418, label %354, label %419, !dbg !952, !llvm.loop !1013

419:                                              ; preds = %414, %317
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %334) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %333) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %332) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %331) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %330) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %329) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %328) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %327) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %326) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %325) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %324) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %323) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %322) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %321) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %320) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %319) #10, !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %318) #10, !dbg !1015
  br label %559, !dbg !1016

420:                                              ; preds = %314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !416, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !476, metadata !DIExpression()) #10, !dbg !1017
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !477, metadata !DIExpression()) #10, !dbg !1017
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1018
  %421 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !1019
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %421) #10, !dbg !1019
  %422 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !1019
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %422) #10, !dbg !1019
  %423 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1019
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %423) #10, !dbg !1019
  %424 = bitcast i32* %15 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %424) #10, !dbg !1020
  %425 = bitcast i32* %16 to i8*, !dbg !1020
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %425) #10, !dbg !1020
  %426 = bitcast double* %17 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %426) #10, !dbg !1021
  %427 = bitcast double* %18 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %427) #10, !dbg !1021
  %428 = bitcast double* %19 to i8*, !dbg !1021
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %428) #10, !dbg !1021
  store i32 0, i32* @n_atoms, align 4, !dbg !1022, !tbaa !944
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1023, !tbaa !657
  %429 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %292) #10, !dbg !1024
  %430 = icmp eq i8* %429, null, !dbg !1025
  br i1 %430, label %500, label %431, !dbg !1025

431:                                              ; preds = %420
  %432 = bitcast [256 x i8]* %41 to i32*, !dbg !1026
  %433 = bitcast double* %17 to i64*, !dbg !1028
  %434 = bitcast double* %18 to i64*, !dbg !1028
  %435 = bitcast double* %19 to i64*, !dbg !1028
  %436 = bitcast [100 x i8]* %39 to i32*, !dbg !1030
  %437 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 2, !dbg !1032
  %438 = bitcast [100 x i8]* %40 to i64*, !dbg !1034
  %439 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 3, !dbg !1034
  br label %440, !dbg !1025

440:                                              ; preds = %497, %431
  %441 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1037
  %442 = icmp eq i32 %441, 0, !dbg !1038
  br i1 %442, label %443, label %463, !dbg !1039

443:                                              ; preds = %440
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !619, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %48, metadata !620, metadata !DIExpression()) #10, !dbg !1040
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %46) #10, !dbg !1041
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %47) #10, !dbg !1041
  %444 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %46, i8* nonnull %47) #10, !dbg !1042
  %445 = icmp eq i32 %444, 2, !dbg !1044
  br i1 %445, label %446, label %462, !dbg !1045

446:                                              ; preds = %443
  %447 = load i32, i32* %436, align 16, !dbg !1046
  switch i32 %447, label %449 [
    i32 4279876, label %452
    i32 4279890, label %448
  ], !dbg !1047

448:                                              ; preds = %446
  br label %452, !dbg !1048

449:                                              ; preds = %446
  %450 = call i32 @bcmp(i8* nonnull dereferenceable(3) %46, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 3) #10, !dbg !1049
  %451 = icmp eq i32 %450, 0, !dbg !1051
  br i1 %451, label %452, label %454, !dbg !1052

452:                                              ; preds = %449, %446, %448
  %453 = phi i32 [ 2, %448 ], [ 1, %446 ], [ 3, %449 ]
  store i32 %453, i32* %437, align 8, !dbg !1030, !tbaa !410
  br label %454, !dbg !1053

454:                                              ; preds = %452, %449
  %455 = call i32 @bcmp(i8* nonnull dereferenceable(7) %47, i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i64 7) #10, !dbg !1053
  %456 = icmp eq i32 %455, 0, !dbg !1054
  br i1 %456, label %457, label %458, !dbg !1055

457:                                              ; preds = %454
  store i32 1, i32* %439, align 4, !dbg !1056, !tbaa !776
  br label %462, !dbg !1057

458:                                              ; preds = %454
  %459 = load i64, i64* %438, align 16, !dbg !1058
  %460 = icmp eq i64 %459, 21760796498086977, !dbg !1058
  br i1 %460, label %461, label %462, !dbg !1059

461:                                              ; preds = %458
  store i32 2, i32* %439, align 4, !dbg !1060, !tbaa !776
  br label %462, !dbg !1061

462:                                              ; preds = %461, %458, %457, %443
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %47) #10, !dbg !1062
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %46) #10, !dbg !1062
  br label %497, !dbg !1063

463:                                              ; preds = %440
  %464 = load i32, i32* %432, align 16, !dbg !1064
  %465 = icmp eq i32 %464, 1297044545, !dbg !1064
  br i1 %465, label %469, label %466, !dbg !1065

466:                                              ; preds = %463
  %467 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1066
  %468 = icmp eq i32 %467, 0, !dbg !1067
  br i1 %468, label %469, label %497, !dbg !1068

469:                                              ; preds = %466, %463
  call void @llvm.dbg.value(metadata i32* %15, metadata !481, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1017
  call void @llvm.dbg.value(metadata i32* %16, metadata !482, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1017
  call void @llvm.dbg.value(metadata double* %17, metadata !483, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1017
  call void @llvm.dbg.value(metadata double* %18, metadata !484, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1017
  call void @llvm.dbg.value(metadata double* %19, metadata !485, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1017
  %470 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %421, i32* nonnull %15, i8* nonnull %422, i8* nonnull %423, i32* nonnull %16, double* nonnull %17, double* nonnull %18, double* nonnull %19) #10, !dbg !1069
  %471 = call i32 @strcmp(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %423) #11, !dbg !1070
  %472 = icmp eq i32 %471, 0, !dbg !1072
  br i1 %472, label %479, label %473, !dbg !1073

473:                                              ; preds = %469
  %474 = load i32, i32* @n_atoms, align 4, !dbg !1074, !tbaa !944
  %475 = icmp sgt i32 %474, 0, !dbg !1077
  br i1 %475, label %476, label %477, !dbg !1078

476:                                              ; preds = %473
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1079
  store i32 0, i32* @n_atoms, align 4, !dbg !1081, !tbaa !944
  br label %477, !dbg !1082

477:                                              ; preds = %476, %473
  %478 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %423) #10, !dbg !1083
  br label %479, !dbg !1084

479:                                              ; preds = %477, %469
  %480 = load i32, i32* @n_atoms, align 4, !dbg !1085, !tbaa !944
  %481 = sext i32 %480 to i64, !dbg !1086
  %482 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %481, !dbg !1086
  call void @llvm.dbg.value(metadata %struct.atom_t* %482, metadata !486, metadata !DIExpression()) #10, !dbg !1017
  call void @NAB_initatom(%struct.atom_t* nonnull %482, i32 0) #10, !dbg !1087
  %483 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %482, i64 0, i32 0, !dbg !1088
  %484 = load i8*, i8** %483, align 16, !dbg !1088, !tbaa !919
  %485 = call i8* @strcpy(i8* nonnull dereferenceable(1) %484, i8* nonnull %422) #10, !dbg !1089
  %486 = load i64, i64* %433, align 8, !dbg !1090, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !483, metadata !DIExpression()) #10, !dbg !1017
  %487 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %481, i32 17, !dbg !1091
  %488 = bitcast [3 x double]* %487 to i64*, !dbg !1092
  store i64 %486, i64* %488, align 16, !dbg !1092, !tbaa !974
  %489 = load i64, i64* %434, align 8, !dbg !1093, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !484, metadata !DIExpression()) #10, !dbg !1017
  %490 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %481, i32 17, i64 1, !dbg !1094
  %491 = bitcast double* %490 to i64*, !dbg !1095
  store i64 %489, i64* %491, align 8, !dbg !1095, !tbaa !974
  %492 = load i64, i64* %435, align 8, !dbg !1096, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !485, metadata !DIExpression()) #10, !dbg !1017
  %493 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %481, i32 17, i64 2, !dbg !1097
  %494 = bitcast double* %493 to i64*, !dbg !1098
  store i64 %492, i64* %494, align 16, !dbg !1098, !tbaa !974
  %495 = load i32, i32* @n_atoms, align 4, !dbg !1099, !tbaa !944
  %496 = add nsw i32 %495, 1, !dbg !1099
  store i32 %496, i32* @n_atoms, align 4, !dbg !1099, !tbaa !944
  br label %497, !dbg !1100

497:                                              ; preds = %479, %466, %462
  %498 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %292) #10, !dbg !1024
  %499 = icmp eq i8* %498, null, !dbg !1025
  br i1 %499, label %500, label %440, !dbg !1025, !llvm.loop !1101

500:                                              ; preds = %497, %420
  %501 = load i32, i32* @n_atoms, align 4, !dbg !1103, !tbaa !944
  %502 = icmp sgt i32 %501, 0, !dbg !1105
  br i1 %502, label %503, label %504, !dbg !1106

503:                                              ; preds = %500
  call fastcc void @addres2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1107
  br label %504, !dbg !1107

504:                                              ; preds = %500, %503
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %428) #10, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %427) #10, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %426) #10, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %425) #10, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %424) #10, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %423) #10, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %422) #10, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %421) #10, !dbg !1108
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1108
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !420, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !605, metadata !DIExpression()) #10, !dbg !1109
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !606, metadata !DIExpression()) #10, !dbg !1109
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1110
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1111
  %505 = bitcast i32* %10 to i8*, !dbg !1112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %505) #10, !dbg !1112
  %506 = bitcast i32* %11 to i8*, !dbg !1112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %506) #10, !dbg !1112
  store i32 0, i32* @n_bonds, align 4, !dbg !1113, !tbaa !944
  store i8 0, i8* %45, align 16, !dbg !1114, !tbaa !657
  %507 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %293) #10, !dbg !1115
  %508 = icmp eq i8* %507, null, !dbg !1116
  br i1 %508, label %552, label %509, !dbg !1116

509:                                              ; preds = %504, %549
  %510 = load i8, i8* %48, align 16, !dbg !1117, !tbaa !657
  %511 = icmp eq i8 %510, 35, !dbg !1120
  br i1 %511, label %512, label %530, !dbg !1121

512:                                              ; preds = %509
  %513 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1122
  %514 = icmp eq i32 %513, 1, !dbg !1125
  br i1 %514, label %523, label %515, !dbg !1126

515:                                              ; preds = %512
  %516 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1127
  %517 = trunc i64 %516 to i32, !dbg !1127
  %518 = add i32 %517, -1, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %518, metadata !608, metadata !DIExpression()) #10, !dbg !1109
  %519 = icmp slt i32 %518, 20, !dbg !1129
  %520 = select i1 %519, i32 %518, i32 20, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %520, metadata !608, metadata !DIExpression()) #10, !dbg !1109
  %521 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %520, i32 %520, i8* nonnull %48) #10, !dbg !1130
  %522 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1131
  br label %556, !dbg !1132

523:                                              ; preds = %512
  %524 = load i32, i32* @n_bonds, align 4, !dbg !1133, !tbaa !944
  %525 = icmp sgt i32 %524, 0, !dbg !1135
  br i1 %525, label %526, label %528, !dbg !1136

526:                                              ; preds = %523
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1137
  %527 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1139
  store i32 0, i32* @n_bonds, align 4, !dbg !1140, !tbaa !944
  br label %549, !dbg !1141

528:                                              ; preds = %523
  %529 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1142
  br label %549

530:                                              ; preds = %509
  call void @llvm.dbg.value(metadata i32* %10, metadata !609, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1109
  call void @llvm.dbg.value(metadata i32* %11, metadata !610, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1109
  %531 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11) #10, !dbg !1143
  %532 = icmp eq i32 %531, 2, !dbg !1146
  br i1 %532, label %541, label %533, !dbg !1147

533:                                              ; preds = %530
  %534 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1148
  %535 = trunc i64 %534 to i32, !dbg !1148
  %536 = add i32 %535, -1, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %536, metadata !608, metadata !DIExpression()) #10, !dbg !1109
  %537 = icmp slt i32 %536, 20, !dbg !1150
  %538 = select i1 %537, i32 %536, i32 20, !dbg !1150
  call void @llvm.dbg.value(metadata i32 %538, metadata !608, metadata !DIExpression()) #10, !dbg !1109
  %539 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %538, i32 %538, i8* nonnull %48) #10, !dbg !1151
  %540 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1152
  br label %556, !dbg !1153

541:                                              ; preds = %530
  %542 = load i32, i32* %10, align 4, !dbg !1154, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %542, metadata !609, metadata !DIExpression()) #10, !dbg !1109
  %543 = load i32, i32* @n_bonds, align 4, !dbg !1156, !tbaa !944
  %544 = sext i32 %543 to i64, !dbg !1157
  %545 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %544, i64 0, !dbg !1157
  store i32 %542, i32* %545, align 8, !dbg !1158, !tbaa !944
  %546 = load i32, i32* %11, align 4, !dbg !1159, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %546, metadata !610, metadata !DIExpression()) #10, !dbg !1109
  %547 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %544, i64 1, !dbg !1160
  store i32 %546, i32* %547, align 4, !dbg !1161, !tbaa !944
  %548 = add nsw i32 %543, 1, !dbg !1162
  store i32 %548, i32* @n_bonds, align 4, !dbg !1162, !tbaa !944
  br label %549

549:                                              ; preds = %541, %528, %526
  %550 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* %293) #10, !dbg !1115
  %551 = icmp eq i8* %550, null, !dbg !1116
  br i1 %551, label %552, label %509, !dbg !1116, !llvm.loop !1163

552:                                              ; preds = %549, %504
  %553 = load i32, i32* @n_bonds, align 4, !dbg !1165, !tbaa !944
  %554 = icmp sgt i32 %553, 0, !dbg !1167
  br i1 %554, label %555, label %556, !dbg !1168

555:                                              ; preds = %552
  call fastcc void @addbonds2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1169
  br label %556, !dbg !1169

556:                                              ; preds = %515, %533, %552, %555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %506) #10, !dbg !1170
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %505) #10, !dbg !1170
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1170
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1170
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %292, metadata !416, metadata !DIExpression()), !dbg !635
  %557 = call i32 @fclose(%struct._IO_FILE* %292), !dbg !1171
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %293, metadata !420, metadata !DIExpression()), !dbg !635
  %558 = call i32 @fclose(%struct._IO_FILE* %293), !dbg !1172
  br label %559

559:                                              ; preds = %556, %419
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !421, metadata !DIExpression()), !dbg !635
  %560 = icmp eq %struct._IO_FILE* %294, null, !dbg !1173
  br i1 %560, label %618, label %561, !dbg !1174

561:                                              ; preds = %559
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !456, metadata !DIExpression()) #10, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !457, metadata !DIExpression()) #10, !dbg !1175
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1176
  %562 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %562) #10, !dbg !1177
  %563 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %563) #10, !dbg !1177
  %564 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1177
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %564) #10, !dbg !1177
  %565 = bitcast i32* %6 to i8*, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %565) #10, !dbg !1178
  %566 = bitcast i32* %7 to i8*, !dbg !1178
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %566) #10, !dbg !1178
  %567 = bitcast double* %8 to i8*, !dbg !1179
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %567) #10, !dbg !1179
  %568 = bitcast double* %9 to i8*, !dbg !1179
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %568) #10, !dbg !1179
  store i32 0, i32* @n_atoms, align 4, !dbg !1180, !tbaa !944
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1181, !tbaa !657
  %569 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %294) #10, !dbg !1182
  %570 = icmp eq i8* %569, null, !dbg !1183
  br i1 %570, label %612, label %571, !dbg !1183

571:                                              ; preds = %561
  %572 = bitcast [256 x i8]* %41 to i32*, !dbg !1184
  %573 = bitcast double* %8 to i64*, !dbg !1188
  %574 = bitcast double* %9 to i64*, !dbg !1188
  br label %575, !dbg !1183

575:                                              ; preds = %609, %571
  %576 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* nonnull dereferenceable(3) %48, i64 3) #10, !dbg !1190
  %577 = icmp eq i32 %576, 0, !dbg !1191
  br i1 %577, label %609, label %578, !dbg !1192

578:                                              ; preds = %575
  %579 = load i32, i32* %572, align 16, !dbg !1193
  %580 = icmp eq i32 %579, 1297044545, !dbg !1193
  br i1 %580, label %584, label %581, !dbg !1194

581:                                              ; preds = %578
  %582 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* nonnull dereferenceable(6) %48, i64 6) #10, !dbg !1195
  %583 = icmp eq i32 %582, 0, !dbg !1196
  br i1 %583, label %584, label %609, !dbg !1197

584:                                              ; preds = %581, %578
  call void @llvm.dbg.value(metadata i32* %6, metadata !464, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1175
  call void @llvm.dbg.value(metadata i32* %7, metadata !465, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1175
  call void @llvm.dbg.value(metadata double* %8, metadata !466, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1175
  call void @llvm.dbg.value(metadata double* %9, metadata !467, metadata !DIExpression(DW_OP_deref)) #10, !dbg !1175
  %585 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %562, i32* nonnull %6, i8* nonnull %563, i8* nonnull %564, i32* nonnull %7, double* nonnull %8, double* nonnull %9) #10, !dbg !1198
  %586 = call i32 @strcmp(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %564) #11, !dbg !1199
  %587 = icmp eq i32 %586, 0, !dbg !1201
  br i1 %587, label %594, label %588, !dbg !1202

588:                                              ; preds = %584
  %589 = load i32, i32* @n_atoms, align 4, !dbg !1203, !tbaa !944
  %590 = icmp sgt i32 %589, 0, !dbg !1206
  br i1 %590, label %591, label %592, !dbg !1207

591:                                              ; preds = %588
  call fastcc void @addqr2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1208
  store i32 0, i32* @n_atoms, align 4, !dbg !1210, !tbaa !944
  br label %592, !dbg !1211

592:                                              ; preds = %591, %588
  %593 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %564) #10, !dbg !1212
  br label %594, !dbg !1213

594:                                              ; preds = %592, %584
  %595 = load i32, i32* @n_atoms, align 4, !dbg !1214, !tbaa !944
  %596 = sext i32 %595 to i64, !dbg !1215
  %597 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %596, !dbg !1215
  call void @llvm.dbg.value(metadata %struct.atom_t* %597, metadata !468, metadata !DIExpression()) #10, !dbg !1175
  call void @NAB_initatom(%struct.atom_t* nonnull %597, i32 0) #10, !dbg !1216
  %598 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %597, i64 0, i32 0, !dbg !1217
  %599 = load i8*, i8** %598, align 16, !dbg !1217, !tbaa !919
  %600 = call i8* @strcpy(i8* nonnull dereferenceable(1) %599, i8* nonnull %563) #10, !dbg !1218
  %601 = load i64, i64* %573, align 8, !dbg !1219, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !466, metadata !DIExpression()) #10, !dbg !1175
  %602 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %596, i32 6, !dbg !1220
  %603 = bitcast double* %602 to i64*, !dbg !1221
  store i64 %601, i64* %603, align 16, !dbg !1221, !tbaa !977
  %604 = load i64, i64* %574, align 8, !dbg !1222, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !467, metadata !DIExpression()) #10, !dbg !1175
  %605 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %596, i32 7, !dbg !1223
  %606 = bitcast double* %605 to i64*, !dbg !1224
  store i64 %604, i64* %606, align 8, !dbg !1224, !tbaa !1225
  %607 = load i32, i32* @n_atoms, align 4, !dbg !1226, !tbaa !944
  %608 = add nsw i32 %607, 1, !dbg !1226
  store i32 %608, i32* @n_atoms, align 4, !dbg !1226, !tbaa !944
  br label %609, !dbg !1227

609:                                              ; preds = %594, %581, %575
  %610 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %294) #10, !dbg !1182
  %611 = icmp eq i8* %610, null, !dbg !1183
  br i1 %611, label %612, label %575, !dbg !1183, !llvm.loop !1228

612:                                              ; preds = %609, %561
  %613 = load i32, i32* @n_atoms, align 4, !dbg !1230, !tbaa !944
  %614 = icmp sgt i32 %613, 0, !dbg !1232
  br i1 %614, label %615, label %616, !dbg !1233

615:                                              ; preds = %612
  call fastcc void @addqr2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1234
  br label %616, !dbg !1234

616:                                              ; preds = %612, %615
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %568) #10, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %567) #10, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %566) #10, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %565) #10, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %564) #10, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %563) #10, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %562) #10, !dbg !1235
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1235
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %294, metadata !421, metadata !DIExpression()), !dbg !635
  %617 = call i32 @fclose(%struct._IO_FILE* nonnull %294), !dbg !1236
  br label %618, !dbg !1237

618:                                              ; preds = %559, %616
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !422, metadata !DIExpression()), !dbg !635
  %619 = icmp eq %struct._IO_FILE* %295, null, !dbg !1238
  br i1 %619, label %759, label %620, !dbg !1239

620:                                              ; preds = %618
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !430, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.reslib_t* %296, metadata !431, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1242
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %621 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !1243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %621) #10, !dbg !1243
  %622 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0, !dbg !1243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %622) #10, !dbg !1243
  %623 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %623) #10, !dbg !1243
  %624 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %624) #10, !dbg !1243
  store i32 0, i32* @n_chi, align 4, !dbg !1244, !tbaa !944
  store i8 0, i8* %45, align 16, !dbg !1245, !tbaa !657
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %625 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %295) #10, !dbg !1246
  %626 = icmp eq i8* %625, null, !dbg !1247
  br i1 %626, label %753, label %627, !dbg !1247

627:                                              ; preds = %620
  %628 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 4, !dbg !1248
  br label %629, !dbg !1247

629:                                              ; preds = %749, %627
  %630 = phi %struct.residue_t* [ null, %627 ], [ %750, %749 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %631 = load i8, i8* %48, align 16, !dbg !1255, !tbaa !657
  %632 = icmp eq i8 %631, 35, !dbg !1256
  br i1 %632, label %633, label %669, !dbg !1257

633:                                              ; preds = %629
  %634 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1258
  %635 = icmp eq i32 %634, 1, !dbg !1259
  br i1 %635, label %645, label %636, !dbg !1260

636:                                              ; preds = %633
  %637 = call i64 @strlen(i8* nonnull %48) #11, !dbg !1261
  %638 = trunc i64 %637 to i32, !dbg !1261
  %639 = add i32 %638, -1, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %639, metadata !434, metadata !DIExpression()) #10, !dbg !1240
  %640 = icmp slt i32 %639, 20, !dbg !1263
  %641 = select i1 %640, i32 %639, i32 20, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %641, metadata !434, metadata !DIExpression()) #10, !dbg !1240
  %642 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %641, i32 %641, i8* nonnull %48) #10, !dbg !1264
  %643 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1265, !tbaa !380
  %644 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %643, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1266
  br label %757, !dbg !1267

645:                                              ; preds = %633
  %646 = load i32, i32* @n_chi, align 4, !dbg !1268, !tbaa !944
  %647 = icmp sgt i32 %646, 0, !dbg !1270
  br i1 %647, label %648, label %649, !dbg !1271

648:                                              ; preds = %645
  call fastcc void @addchi2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1272
  store i32 0, i32* @n_chi, align 4, !dbg !1274, !tbaa !944
  br label %649, !dbg !1275

649:                                              ; preds = %648, %645
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !436, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %650 = load %struct.residue_t*, %struct.residue_t** %628, align 8, !dbg !1248, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %650, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %651 = icmp eq %struct.residue_t* %650, null, !dbg !1276
  br i1 %651, label %662, label %652, !dbg !1276

652:                                              ; preds = %649, %658
  %653 = phi %struct.residue_t* [ %660, %658 ], [ %650, %649 ]
  %654 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %653, i64 0, i32 4, !dbg !1277
  %655 = load i8*, i8** %654, align 8, !dbg !1277, !tbaa !1281
  %656 = call i32 @strcmp(i8* nonnull dereferenceable(1) %655, i8* nonnull %45) #11, !dbg !1283
  %657 = icmp eq i32 %656, 0, !dbg !1283
  br i1 %657, label %667, label %658, !dbg !1284

658:                                              ; preds = %652
  %659 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %653, i64 0, i32 0, !dbg !1285
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %660 = load %struct.residue_t*, %struct.residue_t** %659, align 8, !dbg !1248, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %660, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %661 = icmp eq %struct.residue_t* %660, null, !dbg !1276
  br i1 %661, label %662, label %652, !dbg !1276, !llvm.loop !1286

662:                                              ; preds = %649, %658
  %663 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1288, !tbaa !380
  %664 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %296, i64 0, i32 1, !dbg !1291
  %665 = load i8*, i8** %664, align 8, !dbg !1291, !tbaa !389
  %666 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %663, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %45, i8* %665) #14, !dbg !1292
  br label %757, !dbg !1293

667:                                              ; preds = %652
  call void @llvm.dbg.value(metadata %struct.residue_t* %653, metadata !436, metadata !DIExpression()) #10, !dbg !1240
  %668 = call i8* @strcpy(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* nonnull %45) #10, !dbg !1294
  br label %749, !dbg !1295

669:                                              ; preds = %629
  %670 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %621, i8* nonnull %622, i8* nonnull %623, i8* nonnull %624) #10, !dbg !1296
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !1298, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i8* %621, metadata !1303, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  %671 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 15, !dbg !1308
  %672 = load i32, i32* %671, align 8, !dbg !1308, !tbaa !1311
  %673 = icmp sgt i32 %672, 0, !dbg !1312
  br i1 %673, label %674, label %687, !dbg !1313

674:                                              ; preds = %669
  %675 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 17, !dbg !1314
  %676 = load %struct.atom_t*, %struct.atom_t** %675, align 8, !dbg !1317, !tbaa !1318
  %677 = zext i32 %672 to i64, !dbg !1312
  br label %680, !dbg !1313

678:                                              ; preds = %680
  call void @llvm.dbg.value(metadata i64 %686, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  %679 = icmp eq i64 %686, %677, !dbg !1312
  br i1 %679, label %687, label %680, !dbg !1313, !llvm.loop !1319

680:                                              ; preds = %678, %674
  %681 = phi i64 [ 0, %674 ], [ %686, %678 ]
  call void @llvm.dbg.value(metadata i64 %681, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  %682 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %676, i64 %681, i32 0, !dbg !1321
  %683 = load i8*, i8** %682, align 8, !dbg !1321, !tbaa !919
  %684 = call i32 @strcmp(i8* nonnull dereferenceable(1) %683, i8* nonnull dereferenceable(1) %621) #11, !dbg !1322
  %685 = icmp eq i32 %684, 0, !dbg !1322
  %686 = add nuw nsw i64 %681, 1, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %686, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  br i1 %685, label %692, label %678, !dbg !1324

687:                                              ; preds = %669, %678
  %688 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1325, !tbaa !380
  %689 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 4, !dbg !1327
  %690 = load i8*, i8** %689, align 8, !dbg !1327, !tbaa !1281
  %691 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %688, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %621, i8* %690) #14, !dbg !1328
  call void @exit(i32 1) #13, !dbg !1329
  unreachable, !dbg !1329

692:                                              ; preds = %680
  call void @llvm.dbg.value(metadata i64 %681, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %681, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %681, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %681, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %681, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %681, metadata !1304, metadata !DIExpression()) #10, !dbg !1305
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !444, metadata !DIExpression()) #10, !dbg !1240
  %693 = trunc i64 %681 to i32, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %693, metadata !440, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !1298, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %622, metadata !1303, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  br label %696, !dbg !1334

694:                                              ; preds = %696
  call void @llvm.dbg.value(metadata i64 %702, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  %695 = icmp eq i64 %702, %677, !dbg !1335
  br i1 %695, label %703, label %696, !dbg !1334, !llvm.loop !1336

696:                                              ; preds = %694, %692
  %697 = phi i64 [ 0, %692 ], [ %702, %694 ]
  call void @llvm.dbg.value(metadata i64 %697, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  %698 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %676, i64 %697, i32 0, !dbg !1338
  %699 = load i8*, i8** %698, align 8, !dbg !1338, !tbaa !919
  %700 = call i32 @strcmp(i8* nonnull dereferenceable(1) %699, i8* nonnull dereferenceable(1) %622) #11, !dbg !1339
  %701 = icmp eq i32 %700, 0, !dbg !1339
  %702 = add nuw nsw i64 %697, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %702, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  br i1 %701, label %708, label %694, !dbg !1341

703:                                              ; preds = %694
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %704 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1342, !tbaa !380
  %705 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 4, !dbg !1344
  %706 = load i8*, i8** %705, align 8, !dbg !1344, !tbaa !1281
  %707 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %704, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %622, i8* %706) #14, !dbg !1345
  call void @exit(i32 1) #13, !dbg !1346
  unreachable, !dbg !1346

708:                                              ; preds = %696
  call void @llvm.dbg.value(metadata i64 %697, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %697, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %697, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %697, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %697, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %697, metadata !1304, metadata !DIExpression()) #10, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !444, metadata !DIExpression()) #10, !dbg !1240
  %709 = trunc i64 %697 to i32, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %709, metadata !441, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !1298, metadata !DIExpression()) #10, !dbg !1348
  call void @llvm.dbg.value(metadata i8* %623, metadata !1303, metadata !DIExpression()) #10, !dbg !1348
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()) #10, !dbg !1348
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()) #10, !dbg !1348
  br label %712, !dbg !1351

710:                                              ; preds = %712
  call void @llvm.dbg.value(metadata i64 %718, metadata !1304, metadata !DIExpression()) #10, !dbg !1348
  %711 = icmp eq i64 %718, %677, !dbg !1352
  br i1 %711, label %719, label %712, !dbg !1351, !llvm.loop !1353

712:                                              ; preds = %710, %708
  %713 = phi i64 [ 0, %708 ], [ %718, %710 ]
  call void @llvm.dbg.value(metadata i64 %713, metadata !1304, metadata !DIExpression()) #10, !dbg !1348
  %714 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %676, i64 %713, i32 0, !dbg !1355
  %715 = load i8*, i8** %714, align 8, !dbg !1355, !tbaa !919
  %716 = call i32 @strcmp(i8* nonnull dereferenceable(1) %715, i8* nonnull dereferenceable(1) %623) #11, !dbg !1356
  %717 = icmp eq i32 %716, 0, !dbg !1356
  %718 = add nuw nsw i64 %713, 1, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %718, metadata !1304, metadata !DIExpression()) #10, !dbg !1348
  br i1 %717, label %726, label %710, !dbg !1358

719:                                              ; preds = %710
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %720 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1359, !tbaa !380
  %721 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 4, !dbg !1361
  %722 = load i8*, i8** %721, align 8, !dbg !1361, !tbaa !1281
  %723 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %720, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %623, i8* %722) #14, !dbg !1362
  call void @exit(i32 1) #13, !dbg !1363
  unreachable, !dbg !1363

724:                                              ; preds = %726
  call void @llvm.dbg.value(metadata i64 %732, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  %725 = icmp eq i64 %732, %677, !dbg !1367
  br i1 %725, label %733, label %726, !dbg !1368, !llvm.loop !1369

726:                                              ; preds = %712, %724
  %727 = phi i64 [ %732, %724 ], [ 0, %712 ]
  call void @llvm.dbg.value(metadata i64 %727, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  %728 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %676, i64 %727, i32 0, !dbg !1371
  %729 = load i8*, i8** %728, align 8, !dbg !1371, !tbaa !919
  %730 = call i32 @strcmp(i8* nonnull dereferenceable(1) %729, i8* nonnull dereferenceable(1) %624) #11, !dbg !1372
  %731 = icmp eq i32 %730, 0, !dbg !1372
  %732 = add nuw nsw i64 %727, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %732, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  br i1 %731, label %738, label %724, !dbg !1374

733:                                              ; preds = %724
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %630, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %734 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1375, !tbaa !380
  %735 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %630, i64 0, i32 4, !dbg !1377
  %736 = load i8*, i8** %735, align 8, !dbg !1377, !tbaa !1281
  %737 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %734, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %624, i8* %736) #14, !dbg !1378
  call void @exit(i32 1) #13, !dbg !1379
  unreachable, !dbg !1379

738:                                              ; preds = %726
  call void @llvm.dbg.value(metadata i64 %727, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %727, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %727, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %727, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %727, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %727, metadata !1304, metadata !DIExpression()) #10, !dbg !1364
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !444, metadata !DIExpression()) #10, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %713, metadata !442, metadata !DIExpression(DW_OP_constu, 176, DW_OP_mul, DW_OP_constu, 176, DW_OP_div, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %713, metadata !442, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !1240
  %739 = trunc i64 %713 to i32, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %739, metadata !442, metadata !DIExpression()) #10, !dbg !1240
  %740 = trunc i64 %727 to i32, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %740, metadata !443, metadata !DIExpression()) #10, !dbg !1240
  %741 = load i32, i32* @n_chi, align 4, !dbg !1382, !tbaa !944
  %742 = sext i32 %741 to i64, !dbg !1383
  call void @llvm.dbg.value(metadata %struct.chiral_t* undef, metadata !445, metadata !DIExpression()) #10, !dbg !1240
  %743 = add nsw i32 %741, 1, !dbg !1384
  store i32 %743, i32* @n_chi, align 4, !dbg !1384, !tbaa !944
  %744 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 0, i64 0, !dbg !1385
  store i32 %693, i32* %744, align 8, !dbg !1386, !tbaa !944
  %745 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 0, i64 1, !dbg !1387
  store i32 %709, i32* %745, align 4, !dbg !1388, !tbaa !944
  %746 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 0, i64 2, !dbg !1389
  store i32 %739, i32* %746, align 8, !dbg !1390, !tbaa !944
  %747 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 0, i64 3, !dbg !1391
  store i32 %740, i32* %747, align 4, !dbg !1392, !tbaa !944
  %748 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %742, i32 1, !dbg !1393
  store double 0.000000e+00, double* %748, align 8, !dbg !1394, !tbaa !1395
  br label %749

749:                                              ; preds = %738, %667
  %750 = phi %struct.residue_t* [ %653, %667 ], [ %630, %738 ], !dbg !1240
  call void @llvm.dbg.value(metadata %struct.residue_t* %750, metadata !435, metadata !DIExpression()) #10, !dbg !1240
  %751 = call i8* @fgets(i8* nonnull %48, i32 256, %struct._IO_FILE* nonnull %295) #10, !dbg !1246
  %752 = icmp eq i8* %751, null, !dbg !1247
  br i1 %752, label %753, label %629, !dbg !1247, !llvm.loop !1397

753:                                              ; preds = %749, %620
  %754 = load i32, i32* @n_chi, align 4, !dbg !1399, !tbaa !944
  %755 = icmp sgt i32 %754, 0, !dbg !1401
  br i1 %755, label %756, label %757, !dbg !1402

756:                                              ; preds = %753
  call fastcc void @addchi2reslib(%struct.reslib_t* nonnull %296) #10, !dbg !1403
  store i32 0, i32* @n_chi, align 4, !dbg !1405, !tbaa !944
  br label %757, !dbg !1406

757:                                              ; preds = %636, %662, %753, %756
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %624) #10, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %623) #10, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %622) #10, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %621) #10, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %45) #10, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %48) #10, !dbg !1407
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %295, metadata !422, metadata !DIExpression()), !dbg !635
  %758 = call i32 @fclose(%struct._IO_FILE* nonnull %295), !dbg !1408
  br label %759, !dbg !1409

759:                                              ; preds = %757, %618, %291
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %43) #10, !dbg !1410
  ret %struct.reslib_t* %296, !dbg !1410
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* nocapture readonly %1) local_unnamed_addr #0 !dbg !1411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1415, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %1, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()) #10, !dbg !1420
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !1420
  %3 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1423, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %3, metadata !374, metadata !DIExpression()) #10, !dbg !1420
  %4 = icmp eq %struct.reslib_t* %3, null, !dbg !1424
  br i1 %4, label %15, label %5, !dbg !1424

5:                                                ; preds = %2, %11
  %6 = phi %struct.reslib_t* [ %13, %11 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %6, i64 0, i32 1, !dbg !1425
  %8 = load i8*, i8** %7, align 8, !dbg !1425, !tbaa !389
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) %0) #11, !dbg !1426
  %10 = icmp eq i32 %9, 0, !dbg !1427
  br i1 %10, label %21, label %11, !dbg !1428

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %6, i64 0, i32 0, !dbg !1429
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !1420
  %13 = load %struct.reslib_t*, %struct.reslib_t** %12, align 8, !dbg !1423, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %13, metadata !374, metadata !DIExpression()) #10, !dbg !1420
  %14 = icmp eq %struct.reslib_t* %13, null, !dbg !1424
  br i1 %14, label %15, label %5, !dbg !1424, !llvm.loop !1430

15:                                               ; preds = %11, %2
  %16 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %0), !dbg !1432
  call void @llvm.dbg.value(metadata %struct.reslib_t* %16, metadata !1418, metadata !DIExpression()), !dbg !1419
  %17 = icmp eq %struct.reslib_t* %16, null, !dbg !1435
  br i1 %17, label %18, label %21, !dbg !1436

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1437, !tbaa !380
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #12, !dbg !1439
  tail call void @exit(i32 1) #13, !dbg !1440
  unreachable, !dbg !1440

21:                                               ; preds = %5, %15
  %22 = phi %struct.reslib_t* [ %16, %15 ], [ %6, %5 ], !dbg !1441
  call void @llvm.dbg.value(metadata %struct.reslib_t* %22, metadata !1418, metadata !DIExpression()), !dbg !1419
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 2, !dbg !1442
  store i32 0, i32* %23, align 8, !dbg !1443, !tbaa !410
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !1444
  %25 = icmp eq i32 %24, 0, !dbg !1444
  br i1 %25, label %41, label %26, !dbg !1446

26:                                               ; preds = %21
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !1447
  %28 = icmp eq i32 %27, 0, !dbg !1447
  br i1 %28, label %41, label %29, !dbg !1448

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !1449
  %31 = icmp eq i32 %30, 0, !dbg !1449
  br i1 %31, label %41, label %32, !dbg !1451

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !1452
  %34 = icmp eq i32 %33, 0, !dbg !1452
  br i1 %34, label %41, label %35, !dbg !1453

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !1454
  %37 = icmp eq i32 %36, 0, !dbg !1454
  br i1 %37, label %41, label %38, !dbg !1456

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !1457
  %40 = icmp eq i32 %39, 0, !dbg !1457
  br i1 %40, label %41, label %43, !dbg !1458

41:                                               ; preds = %35, %38, %29, %32, %21, %26
  %42 = phi i32 [ 1, %26 ], [ 1, %21 ], [ 2, %32 ], [ 2, %29 ], [ 3, %38 ], [ 3, %35 ]
  store i32 %42, i32* %23, align 8, !dbg !1459, !tbaa !410
  br label %43, !dbg !1460

43:                                               ; preds = %41, %38
  %44 = phi i32 [ 0, %38 ], [ %42, %41 ], !dbg !1461
  ret i32 %44, !dbg !1460
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) local_unnamed_addr #0 !dbg !1462 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1466, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %1, metadata !1467, metadata !DIExpression()), !dbg !1476
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !1477
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %4) #10, !dbg !1477
  call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !1469, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i8* %1, metadata !369, metadata !DIExpression()) #10, !dbg !1479
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !1479
  %5 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1482, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %5, metadata !374, metadata !DIExpression()) #10, !dbg !1479
  %6 = icmp eq %struct.reslib_t* %5, null, !dbg !1483
  br i1 %6, label %17, label %7, !dbg !1483

7:                                                ; preds = %2, %13
  %8 = phi %struct.reslib_t* [ %15, %13 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %8, i64 0, i32 1, !dbg !1484
  %10 = load i8*, i8** %9, align 8, !dbg !1484, !tbaa !389
  %11 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %10, i8* nonnull dereferenceable(1) %1) #11, !dbg !1485
  %12 = icmp eq i32 %11, 0, !dbg !1486
  br i1 %12, label %21, label %13, !dbg !1487

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %8, i64 0, i32 0, !dbg !1488
  call void @llvm.dbg.value(metadata %struct.reslib_t* undef, metadata !374, metadata !DIExpression()) #10, !dbg !1479
  %15 = load %struct.reslib_t*, %struct.reslib_t** %14, align 8, !dbg !1482, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.reslib_t* %15, metadata !374, metadata !DIExpression()) #10, !dbg !1479
  %16 = icmp eq %struct.reslib_t* %15, null, !dbg !1483
  br i1 %16, label %17, label %7, !dbg !1483, !llvm.loop !1489

17:                                               ; preds = %13, %2
  %18 = tail call fastcc %struct.reslib_t* @read_reslib(i8* %1), !dbg !1491
  call void @llvm.dbg.value(metadata %struct.reslib_t* %18, metadata !1473, metadata !DIExpression()), !dbg !1476
  %19 = icmp eq %struct.reslib_t* %18, null, !dbg !1494
  br i1 %19, label %20, label %21, !dbg !1495

20:                                               ; preds = %17
  tail call void @exit(i32 1) #13, !dbg !1496
  unreachable, !dbg !1496

21:                                               ; preds = %7, %17
  %22 = phi %struct.reslib_t* [ %18, %17 ], [ %8, %7 ], !dbg !1498
  call void @llvm.dbg.value(metadata %struct.reslib_t* %22, metadata !1473, metadata !DIExpression()), !dbg !1476
  %23 = call i8* @strcpy(i8* nonnull %4, i8* nonnull dereferenceable(1) %0) #10, !dbg !1499
  %24 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 2, !dbg !1500
  %25 = load i32, i32* %24, align 8, !dbg !1500, !tbaa !410
  switch i32 %25, label %58 [
    i32 1, label %26
    i32 2, label %42
  ], !dbg !1502

26:                                               ; preds = %21
  %27 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #11, !dbg !1503
  %28 = icmp eq i32 %27, 0, !dbg !1503
  br i1 %28, label %29, label %30, !dbg !1506

29:                                               ; preds = %26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1507
  br label %58, !dbg !1507

30:                                               ; preds = %26
  %31 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #11, !dbg !1508
  %32 = icmp eq i32 %31, 0, !dbg !1508
  br i1 %32, label %33, label %34, !dbg !1510

33:                                               ; preds = %30
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1511
  br label %58, !dbg !1511

34:                                               ; preds = %30
  %35 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #11, !dbg !1512
  %36 = icmp eq i32 %35, 0, !dbg !1512
  br i1 %36, label %37, label %38, !dbg !1514

37:                                               ; preds = %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1515
  br label %58, !dbg !1515

38:                                               ; preds = %34
  %39 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #11, !dbg !1516
  %40 = icmp eq i32 %39, 0, !dbg !1516
  br i1 %40, label %41, label %58, !dbg !1518

41:                                               ; preds = %38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1519
  br label %58, !dbg !1519

42:                                               ; preds = %21
  %43 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #11, !dbg !1520
  %44 = icmp eq i32 %43, 0, !dbg !1520
  br i1 %44, label %45, label %46, !dbg !1524

45:                                               ; preds = %42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1525
  br label %58, !dbg !1525

46:                                               ; preds = %42
  %47 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #11, !dbg !1526
  %48 = icmp eq i32 %47, 0, !dbg !1526
  br i1 %48, label %49, label %50, !dbg !1528

49:                                               ; preds = %46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1529
  br label %58, !dbg !1529

50:                                               ; preds = %46
  %51 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #11, !dbg !1530
  %52 = icmp eq i32 %51, 0, !dbg !1530
  br i1 %52, label %53, label %54, !dbg !1532

53:                                               ; preds = %50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1533
  br label %58, !dbg !1533

54:                                               ; preds = %50
  %55 = call i32 @strncmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #11, !dbg !1534
  %56 = icmp eq i32 %55, 0, !dbg !1534
  br i1 %56, label %57, label %58, !dbg !1536

57:                                               ; preds = %54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(3) %4, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 3, i1 false) #10, !dbg !1537
  br label %58, !dbg !1537

58:                                               ; preds = %21, %38, %54, %49, %57, %53, %45, %29, %37, %41, %33
  %59 = call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 51), !dbg !1538
  %60 = icmp eq i8* %59, null, !dbg !1540
  br i1 %60, label %61, label %64, !dbg !1541

61:                                               ; preds = %58
  %62 = call i8* @strchr(i8* nonnull dereferenceable(1) %0, i32 53), !dbg !1542
  %63 = icmp eq i8* %62, null, !dbg !1544
  br i1 %63, label %69, label %64, !dbg !1545

64:                                               ; preds = %61, %58
  %65 = phi i16 [ 51, %58 ], [ 53, %61 ]
  %66 = call i64 @strlen(i8* nonnull %4), !dbg !1546
  %67 = getelementptr [5 x i8], [5 x i8]* %3, i64 0, i64 %66, !dbg !1546
  %68 = bitcast i8* %67 to i16*, !dbg !1546
  store i16 %65, i16* %68, align 1, !dbg !1546
  br label %69, !dbg !1547

69:                                               ; preds = %64, %61
  %70 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %22, i64 0, i32 4, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1474, metadata !DIExpression()), !dbg !1476
  %71 = load %struct.residue_t*, %struct.residue_t** %70, align 8, !dbg !1549, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %71, metadata !1474, metadata !DIExpression()), !dbg !1476
  %72 = icmp eq %struct.residue_t* %71, null, !dbg !1550
  br i1 %72, label %86, label %73, !dbg !1550

73:                                               ; preds = %69, %82
  %74 = phi %struct.residue_t* [ %84, %82 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %74, i64 0, i32 4, !dbg !1551
  %76 = load i8*, i8** %75, align 8, !dbg !1551, !tbaa !1281
  %77 = call i32 @strcmp(i8* nonnull dereferenceable(1) %76, i8* nonnull dereferenceable(1) %0) #11, !dbg !1555
  %78 = icmp eq i32 %77, 0, !dbg !1556
  br i1 %78, label %89, label %79, !dbg !1557

79:                                               ; preds = %73
  %80 = call i32 @strcmp(i8* nonnull dereferenceable(1) %76, i8* nonnull %4) #11, !dbg !1558
  %81 = icmp eq i32 %80, 0, !dbg !1559
  br i1 %81, label %89, label %82, !dbg !1560

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %74, i64 0, i32 0, !dbg !1561
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !1474, metadata !DIExpression()), !dbg !1476
  %84 = load %struct.residue_t*, %struct.residue_t** %83, align 8, !dbg !1549, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %84, metadata !1474, metadata !DIExpression()), !dbg !1476
  %85 = icmp eq %struct.residue_t* %84, null, !dbg !1550
  br i1 %85, label %86, label %73, !dbg !1550, !llvm.loop !1562

86:                                               ; preds = %82, %69
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %0, i8* %1) #10, !dbg !1564
  %88 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1567
  br label %91, !dbg !1568

89:                                               ; preds = %79, %73
  %90 = call %struct.residue_t* @copyresidue(%struct.residue_t* nonnull %74), !dbg !1569
  call void @llvm.dbg.value(metadata %struct.residue_t* %90, metadata !1475, metadata !DIExpression()), !dbg !1476
  br label %91, !dbg !1570

91:                                               ; preds = %89, %86
  %92 = phi %struct.residue_t* [ null, %86 ], [ %90, %89 ], !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %4) #10, !dbg !1571
  ret %struct.residue_t* %92, !dbg !1571
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
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) local_unnamed_addr #0 !dbg !1572 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1576, metadata !DIExpression()), !dbg !1588
  %2 = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #10, !dbg !1589
  %3 = bitcast i8* %2 to %struct.residue_t*, !dbg !1591
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !1582, metadata !DIExpression()), !dbg !1588
  %4 = icmp eq i8* %2, null, !dbg !1592
  br i1 %4, label %5, label %10, !dbg !1593

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1594
  %7 = load i8*, i8** %6, align 8, !dbg !1594, !tbaa !1281
  %8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %7) #10, !dbg !1596
  %9 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1597
  br label %306, !dbg !1598

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !1599
  %12 = load i32, i32* %11, align 8, !dbg !1599, !tbaa !1311
  %13 = sext i32 %12 to i64, !dbg !1601
  %14 = mul nsw i64 %13, 176, !dbg !1602
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !1603
  %16 = bitcast i8* %15 to %struct.atom_t*, !dbg !1604
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !1583, metadata !DIExpression()), !dbg !1588
  %17 = icmp eq i8* %15, null, !dbg !1605
  br i1 %17, label %18, label %23, !dbg !1606

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1607
  %20 = load i8*, i8** %19, align 8, !dbg !1607, !tbaa !1281
  %21 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %20) #10, !dbg !1609
  %22 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1610
  br label %306, !dbg !1611

23:                                               ; preds = %10
  %24 = shl nsw i64 %13, 2, !dbg !1612
  %25 = tail call noalias i8* @malloc(i64 %24) #10, !dbg !1614
  call void @llvm.dbg.value(metadata i8* %25, metadata !1581, metadata !DIExpression()), !dbg !1588
  %26 = icmp eq i8* %25, null, !dbg !1615
  br i1 %26, label %27, label %32, !dbg !1616

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1617
  %29 = load i8*, i8** %28, align 8, !dbg !1617, !tbaa !1281
  %30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %29) #10, !dbg !1619
  %31 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1620
  br label %306, !dbg !1621

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !1622
  %34 = load i32, i32* %33, align 8, !dbg !1622, !tbaa !1624
  %35 = icmp sgt i32 %34, 0, !dbg !1625
  br i1 %35, label %36, label %47, !dbg !1626

36:                                               ; preds = %32
  %37 = zext i32 %34 to i64, !dbg !1627
  %38 = shl nuw nsw i64 %37, 3, !dbg !1630
  %39 = tail call noalias i8* @malloc(i64 %38) #10, !dbg !1631
  %40 = bitcast i8* %39 to [2 x i32]*, !dbg !1632
  call void @llvm.dbg.value(metadata [2 x i32]* %40, metadata !1586, metadata !DIExpression()), !dbg !1588
  %41 = icmp eq i8* %39, null, !dbg !1633
  br i1 %41, label %42, label %47, !dbg !1634

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1635
  %44 = load i8*, i8** %43, align 8, !dbg !1635, !tbaa !1281
  %45 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %44) #10, !dbg !1637
  %46 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1638
  br label %306, !dbg !1639

47:                                               ; preds = %32, %36
  %48 = phi [2 x i32]* [ %40, %36 ], [ null, %32 ], !dbg !1640
  call void @llvm.dbg.value(metadata [2 x i32]* %48, metadata !1586, metadata !DIExpression()), !dbg !1588
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !1641
  %50 = load i32, i32* %49, align 8, !dbg !1641, !tbaa !1643
  %51 = icmp sgt i32 %50, 0, !dbg !1644
  br i1 %51, label %52, label %63, !dbg !1645

52:                                               ; preds = %47
  %53 = zext i32 %50 to i64, !dbg !1646
  %54 = mul nuw nsw i64 %53, 24, !dbg !1649
  %55 = tail call noalias i8* @malloc(i64 %54) #10, !dbg !1650
  %56 = bitcast i8* %55 to %struct.chiral_t*, !dbg !1651
  call void @llvm.dbg.value(metadata %struct.chiral_t* %56, metadata !1587, metadata !DIExpression()), !dbg !1588
  %57 = icmp eq i8* %55, null, !dbg !1652
  br i1 %57, label %58, label %63, !dbg !1653

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1654
  %60 = load i8*, i8** %59, align 8, !dbg !1654, !tbaa !1281
  %61 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %60) #10, !dbg !1656
  %62 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1657
  br label %306, !dbg !1658

63:                                               ; preds = %47, %52
  %64 = phi %struct.chiral_t* [ %56, %52 ], [ null, %47 ], !dbg !1659
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !1587, metadata !DIExpression()), !dbg !1588
  %65 = bitcast i8* %2 to %struct.residue_t**, !dbg !1660
  store %struct.residue_t* null, %struct.residue_t** %65, align 8, !dbg !1661, !tbaa !1662
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1663
  %67 = load i8*, i8** %66, align 8, !dbg !1663, !tbaa !1281
  %68 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %67) #11, !dbg !1664
  %69 = add i64 %68, 1, !dbg !1665
  %70 = tail call noalias i8* @malloc(i64 %69) #10, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %70, metadata !1585, metadata !DIExpression()), !dbg !1588
  %71 = icmp eq i8* %70, null, !dbg !1667
  br i1 %71, label %72, label %75, !dbg !1669

72:                                               ; preds = %63
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1670, !tbaa !380
  %74 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %73) #12, !dbg !1672
  tail call void @exit(i32 1) #13, !dbg !1673
  unreachable, !dbg !1673

75:                                               ; preds = %63
  %76 = tail call i8* @strcpy(i8* nonnull %70, i8* nonnull dereferenceable(1) %67) #10, !dbg !1674
  %77 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !1675
  %78 = bitcast i8* %77 to i8**, !dbg !1675
  store i8* %70, i8** %78, align 8, !dbg !1676, !tbaa !1281
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !1677
  %80 = load i8*, i8** %79, align 8, !dbg !1677, !tbaa !1678
  %81 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %80) #11, !dbg !1679
  %82 = add i64 %81, 1, !dbg !1680
  %83 = tail call noalias i8* @malloc(i64 %82) #10, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %83, metadata !1585, metadata !DIExpression()), !dbg !1588
  %84 = icmp eq i8* %83, null, !dbg !1682
  br i1 %84, label %85, label %88, !dbg !1684

85:                                               ; preds = %75
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1685, !tbaa !380
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %86) #12, !dbg !1687
  tail call void @exit(i32 1) #13, !dbg !1688
  unreachable, !dbg !1688

88:                                               ; preds = %75
  %89 = tail call i8* @strcpy(i8* nonnull %83, i8* nonnull dereferenceable(1) %80) #10, !dbg !1689
  %90 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1690
  %91 = bitcast i8* %90 to i8**, !dbg !1690
  store i8* %83, i8** %91, align 8, !dbg !1691, !tbaa !1678
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !1692
  %93 = load i32, i32* %92, align 8, !dbg !1692, !tbaa !1693
  %94 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1694
  %95 = bitcast i8* %94 to i32*, !dbg !1694
  store i32 %93, i32* %95, align 8, !dbg !1695, !tbaa !1693
  %96 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1696
  %97 = bitcast i8* %96 to i32*, !dbg !1696
  store i32 0, i32* %97, align 4, !dbg !1697, !tbaa !1698
  %98 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1699
  %99 = bitcast i8* %98 to i32*, !dbg !1699
  store i32 0, i32* %99, align 8, !dbg !1700, !tbaa !1701
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !1702
  %101 = load i32, i32* %100, align 8, !dbg !1702, !tbaa !1703
  %102 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1704
  %103 = bitcast i8* %102 to i32*, !dbg !1704
  store i32 %101, i32* %103, align 8, !dbg !1705, !tbaa !1703
  %104 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !1706
  %105 = bitcast i8* %104 to %struct.strand_t**, !dbg !1706
  store %struct.strand_t* null, %struct.strand_t** %105, align 8, !dbg !1707, !tbaa !1708
  %106 = tail call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* nonnull %0) #10, !dbg !1709
  %107 = getelementptr inbounds i8, i8* %2, i64 64, !dbg !1710
  %108 = bitcast i8* %107 to %struct.extbond_t**, !dbg !1710
  store %struct.extbond_t* %106, %struct.extbond_t** %108, align 8, !dbg !1711, !tbaa !1712
  %109 = load i32, i32* %33, align 8, !dbg !1713, !tbaa !1624
  %110 = getelementptr inbounds i8, i8* %2, i64 72, !dbg !1714
  %111 = bitcast i8* %110 to i32*, !dbg !1714
  store i32 %109, i32* %111, align 8, !dbg !1715, !tbaa !1624
  %112 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !1716
  %113 = bitcast i8* %112 to [2 x i32]**, !dbg !1716
  store [2 x i32]* %48, [2 x i32]** %113, align 8, !dbg !1717, !tbaa !1718
  call void @llvm.dbg.value(metadata i32 0, metadata !1578, metadata !DIExpression()), !dbg !1588
  %114 = icmp sgt i32 %109, 0, !dbg !1719
  br i1 %114, label %115, label %129, !dbg !1722

115:                                              ; preds = %88
  %116 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !1723
  %117 = load [2 x i32]*, [2 x i32]** %116, align 8, !dbg !1723, !tbaa !1718
  %118 = zext i32 %109 to i64, !dbg !1722
  br label %119, !dbg !1722

119:                                              ; preds = %115, %119
  %120 = phi i64 [ 0, %115 ], [ %127, %119 ]
  call void @llvm.dbg.value(metadata i64 %120, metadata !1578, metadata !DIExpression()), !dbg !1588
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %120, i64 0, !dbg !1725
  %122 = load i32, i32* %121, align 4, !dbg !1725, !tbaa !944
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %120, i64 0, !dbg !1726
  store i32 %122, i32* %123, align 4, !dbg !1727, !tbaa !944
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %120, i64 1, !dbg !1728
  %125 = load i32, i32* %124, align 4, !dbg !1728, !tbaa !944
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %120, i64 1, !dbg !1729
  store i32 %125, i32* %126, align 4, !dbg !1730, !tbaa !944
  %127 = add nuw nsw i64 %120, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %127, metadata !1578, metadata !DIExpression()), !dbg !1588
  %128 = icmp ult i64 %127, %118, !dbg !1719
  br i1 %128, label %119, label %129, !dbg !1722, !llvm.loop !1732

129:                                              ; preds = %119, %88
  %130 = load i32, i32* %49, align 8, !dbg !1734, !tbaa !1643
  %131 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !1735
  %132 = bitcast i8* %131 to i32*, !dbg !1735
  store i32 %130, i32* %132, align 8, !dbg !1736, !tbaa !1643
  %133 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !1737
  %134 = bitcast i8* %133 to %struct.chiral_t**, !dbg !1737
  store %struct.chiral_t* %64, %struct.chiral_t** %134, align 8, !dbg !1738, !tbaa !1739
  call void @llvm.dbg.value(metadata %struct.chiral_t* %64, metadata !1587, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 0, metadata !1579, metadata !DIExpression()), !dbg !1588
  %135 = icmp sgt i32 %130, 0, !dbg !1740
  br i1 %135, label %136, label %160, !dbg !1743

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !1744
  %138 = load %struct.chiral_t*, %struct.chiral_t** %137, align 8, !dbg !1744, !tbaa !1739
  br label %139, !dbg !1743

139:                                              ; preds = %136, %149
  %140 = phi i64 [ 0, %136 ], [ %155, %149 ]
  %141 = phi %struct.chiral_t* [ %64, %136 ], [ %156, %149 ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %141, metadata !1587, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i64 %140, metadata !1579, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1588
  br label %142, !dbg !1746

142:                                              ; preds = %142, %139
  %143 = phi i64 [ 0, %139 ], [ %147, %142 ]
  call void @llvm.dbg.value(metadata i64 %143, metadata !1577, metadata !DIExpression()), !dbg !1588
  %144 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %138, i64 %140, i32 0, i64 %143, !dbg !1748
  %145 = load i32, i32* %144, align 4, !dbg !1748, !tbaa !944
  %146 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %141, i64 0, i32 0, i64 %143, !dbg !1750
  store i32 %145, i32* %146, align 4, !dbg !1751, !tbaa !944
  %147 = add nuw nsw i64 %143, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %147, metadata !1577, metadata !DIExpression()), !dbg !1588
  %148 = icmp eq i64 %147, 4, !dbg !1753
  br i1 %148, label %149, label %142, !dbg !1746, !llvm.loop !1754

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %138, i64 %140, i32 1, !dbg !1756
  %151 = bitcast double* %150 to i64*, !dbg !1756
  %152 = load i64, i64* %151, align 8, !dbg !1756, !tbaa !1395
  %153 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %141, i64 0, i32 1, !dbg !1757
  %154 = bitcast double* %153 to i64*, !dbg !1758
  store i64 %152, i64* %154, align 8, !dbg !1758, !tbaa !1395
  %155 = add nuw nsw i64 %140, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %155, metadata !1579, metadata !DIExpression()), !dbg !1588
  %156 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %141, i64 1, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.chiral_t* %156, metadata !1587, metadata !DIExpression()), !dbg !1588
  %157 = load i32, i32* %49, align 8, !dbg !1761, !tbaa !1643
  %158 = sext i32 %157 to i64, !dbg !1740
  %159 = icmp slt i64 %155, %158, !dbg !1740
  br i1 %159, label %139, label %160, !dbg !1743, !llvm.loop !1762

160:                                              ; preds = %149, %129
  %161 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !1764
  %162 = load i32, i32* %161, align 4, !dbg !1764, !tbaa !1765
  %163 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !1766
  %164 = bitcast i8* %163 to i32*, !dbg !1766
  store i32 %162, i32* %164, align 4, !dbg !1767, !tbaa !1765
  %165 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !1768
  %166 = load i32, i32* %165, align 8, !dbg !1768, !tbaa !1769
  %167 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !1770
  %168 = bitcast i8* %167 to i32*, !dbg !1770
  store i32 %166, i32* %168, align 8, !dbg !1771, !tbaa !1769
  %169 = load i32, i32* %11, align 8, !dbg !1772, !tbaa !1311
  %170 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !1773
  %171 = bitcast i8* %170 to i32*, !dbg !1773
  store i32 %169, i32* %171, align 8, !dbg !1774, !tbaa !1311
  %172 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !1775
  %173 = bitcast i8* %172 to i8**, !dbg !1776
  store i8* %25, i8** %173, align 8, !dbg !1776, !tbaa !1777
  %174 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !1778
  %175 = load i32*, i32** %174, align 8, !dbg !1778, !tbaa !1777
  %176 = icmp eq i32* %175, null, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1588
  %177 = icmp sgt i32 %169, 0, !dbg !1781
  %178 = bitcast i8* %25 to i32*, !dbg !1782
  br i1 %176, label %182, label %179, !dbg !1782

179:                                              ; preds = %160
  br i1 %177, label %180, label %198, !dbg !1783

180:                                              ; preds = %179
  %181 = sext i32 %169 to i64, !dbg !1786
  br label %185, !dbg !1783

182:                                              ; preds = %160
  br i1 %177, label %183, label %198, !dbg !1788

183:                                              ; preds = %182
  %184 = sext i32 %169 to i64, !dbg !1791
  br label %192, !dbg !1788

185:                                              ; preds = %180, %185
  %186 = phi i64 [ 0, %180 ], [ %190, %185 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !1577, metadata !DIExpression()), !dbg !1588
  %187 = getelementptr inbounds i32, i32* %175, i64 %186, !dbg !1793
  %188 = load i32, i32* %187, align 4, !dbg !1793, !tbaa !944
  %189 = getelementptr inbounds i32, i32* %178, i64 %186, !dbg !1794
  store i32 %188, i32* %189, align 4, !dbg !1795, !tbaa !944
  %190 = add nuw nsw i64 %186, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %190, metadata !1577, metadata !DIExpression()), !dbg !1588
  %191 = icmp slt i64 %190, %181, !dbg !1797
  br i1 %191, label %185, label %201, !dbg !1783, !llvm.loop !1798

192:                                              ; preds = %183, %192
  %193 = phi i64 [ 0, %183 ], [ %196, %192 ]
  call void @llvm.dbg.value(metadata i64 %193, metadata !1577, metadata !DIExpression()), !dbg !1588
  %194 = getelementptr inbounds i32, i32* %178, i64 %193, !dbg !1800
  %195 = trunc i64 %193 to i32, !dbg !1801
  store i32 %195, i32* %194, align 4, !dbg !1801, !tbaa !944
  %196 = add nuw nsw i64 %193, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %196, metadata !1577, metadata !DIExpression()), !dbg !1588
  %197 = icmp slt i64 %196, %184, !dbg !1803
  br i1 %197, label %192, label %201, !dbg !1788, !llvm.loop !1804

198:                                              ; preds = %179, %182
  %199 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1806
  %200 = bitcast i8* %199 to i8**, !dbg !1807
  store i8* %15, i8** %200, align 8, !dbg !1807, !tbaa !1318
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1588
  br label %306, !dbg !1808

201:                                              ; preds = %185, %192
  %202 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !1806
  %203 = bitcast i8* %202 to i8**, !dbg !1807
  store i8* %15, i8** %203, align 8, !dbg !1807, !tbaa !1318
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1588
  br i1 %177, label %204, label %306, !dbg !1808

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1810
  %206 = load %struct.atom_t*, %struct.atom_t** %205, align 8, !dbg !1813, !tbaa !1318
  br label %207, !dbg !1808

207:                                              ; preds = %204, %238
  %208 = phi %struct.atom_t* [ %206, %204 ], [ %224, %238 ], !dbg !1813
  %209 = phi i64 [ 0, %204 ], [ %302, %238 ]
  call void @llvm.dbg.value(metadata i64 %209, metadata !1577, metadata !DIExpression()), !dbg !1588
  %210 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %208, i64 %209, i32 0, !dbg !1814
  %211 = load i8*, i8** %210, align 8, !dbg !1814, !tbaa !919
  %212 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %211) #11, !dbg !1815
  %213 = add i64 %212, 1, !dbg !1816
  %214 = tail call noalias i8* @malloc(i64 %213) #10, !dbg !1817
  call void @llvm.dbg.value(metadata i8* %214, metadata !1584, metadata !DIExpression()), !dbg !1588
  %215 = icmp eq i8* %214, null, !dbg !1818
  br i1 %215, label %216, label %219, !dbg !1820

216:                                              ; preds = %207
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1821, !tbaa !380
  %218 = tail call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %217) #12, !dbg !1823
  tail call void @exit(i32 1) #13, !dbg !1824
  unreachable, !dbg !1824

219:                                              ; preds = %207
  %220 = load i8*, i8** %210, align 8, !dbg !1825, !tbaa !919
  %221 = tail call i8* @strcpy(i8* nonnull %214, i8* nonnull dereferenceable(1) %220) #10, !dbg !1826
  %222 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 0, !dbg !1827
  store i8* %214, i8** %222, align 8, !dbg !1828, !tbaa !919
  %223 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 1, !dbg !1829
  store i8* null, i8** %223, align 8, !dbg !1830, !tbaa !1831
  %224 = load %struct.atom_t*, %struct.atom_t** %205, align 8, !dbg !1832, !tbaa !1318
  %225 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 2, !dbg !1833
  %226 = load i32, i32* %225, align 8, !dbg !1833, !tbaa !1834
  %227 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 2, !dbg !1835
  store i32 %226, i32* %227, align 8, !dbg !1836, !tbaa !1834
  %228 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 3, !dbg !1837
  %229 = load i32, i32* %228, align 4, !dbg !1837, !tbaa !1838
  %230 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 3, !dbg !1839
  store i32 %229, i32* %230, align 4, !dbg !1840, !tbaa !1838
  call void @llvm.dbg.value(metadata i32 0, metadata !1580, metadata !DIExpression()), !dbg !1588
  br label %231, !dbg !1841

231:                                              ; preds = %231, %219
  %232 = phi i64 [ 0, %219 ], [ %236, %231 ]
  call void @llvm.dbg.value(metadata i64 %232, metadata !1580, metadata !DIExpression()), !dbg !1588
  %233 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 4, i64 %232, !dbg !1843
  %234 = load i32, i32* %233, align 4, !dbg !1843, !tbaa !944
  %235 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 4, i64 %232, !dbg !1845
  store i32 %234, i32* %235, align 4, !dbg !1846, !tbaa !944
  %236 = add nuw nsw i64 %232, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %236, metadata !1580, metadata !DIExpression()), !dbg !1588
  %237 = icmp eq i64 %236, 8, !dbg !1848
  br i1 %237, label %238, label %231, !dbg !1841, !llvm.loop !1849

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 5, !dbg !1851
  %240 = bitcast %struct.residue_t** %239 to i8**, !dbg !1852
  store i8* %2, i8** %240, align 8, !dbg !1852, !tbaa !1853
  %241 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 6, !dbg !1854
  %242 = bitcast double* %241 to i64*, !dbg !1854
  %243 = load i64, i64* %242, align 8, !dbg !1854, !tbaa !977
  %244 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 6, !dbg !1855
  %245 = bitcast double* %244 to i64*, !dbg !1856
  store i64 %243, i64* %245, align 8, !dbg !1856, !tbaa !977
  %246 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 7, !dbg !1857
  %247 = bitcast double* %246 to i64*, !dbg !1857
  %248 = load i64, i64* %247, align 8, !dbg !1857, !tbaa !1225
  %249 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 7, !dbg !1858
  %250 = bitcast double* %249 to i64*, !dbg !1859
  store i64 %248, i64* %250, align 8, !dbg !1859, !tbaa !1225
  %251 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 8, !dbg !1860
  %252 = bitcast double* %251 to i64*, !dbg !1860
  %253 = load i64, i64* %252, align 8, !dbg !1860, !tbaa !1861
  %254 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 8, !dbg !1862
  %255 = bitcast double* %254 to i64*, !dbg !1863
  store i64 %253, i64* %255, align 8, !dbg !1863, !tbaa !1861
  %256 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 9, !dbg !1864
  %257 = bitcast double* %256 to i64*, !dbg !1864
  %258 = load i64, i64* %257, align 8, !dbg !1864, !tbaa !1865
  %259 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 9, !dbg !1866
  %260 = bitcast double* %259 to i64*, !dbg !1867
  store i64 %258, i64* %260, align 8, !dbg !1867, !tbaa !1865
  %261 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 10, !dbg !1868
  store i8* null, i8** %261, align 8, !dbg !1869, !tbaa !1870
  %262 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 11, !dbg !1871
  %263 = load i32, i32* %262, align 8, !dbg !1871, !tbaa !1872
  %264 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 11, !dbg !1873
  store i32 %263, i32* %264, align 8, !dbg !1874, !tbaa !1872
  %265 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 12, !dbg !1875
  %266 = bitcast double* %265 to i64*, !dbg !1875
  %267 = load i64, i64* %266, align 8, !dbg !1875, !tbaa !1876
  %268 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 12, !dbg !1877
  %269 = bitcast double* %268 to i64*, !dbg !1878
  store i64 %267, i64* %269, align 8, !dbg !1878, !tbaa !1876
  %270 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 13, !dbg !1879
  %271 = bitcast double* %270 to i64*, !dbg !1879
  %272 = load i64, i64* %271, align 8, !dbg !1879, !tbaa !1880
  %273 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 13, !dbg !1881
  %274 = bitcast double* %273 to i64*, !dbg !1882
  store i64 %272, i64* %274, align 8, !dbg !1882, !tbaa !1880
  %275 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 14, !dbg !1883
  %276 = load i32, i32* %275, align 8, !dbg !1883, !tbaa !1884
  %277 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 14, !dbg !1885
  store i32 %276, i32* %277, align 8, !dbg !1886, !tbaa !1884
  %278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 15, !dbg !1887
  %279 = load i32, i32* %278, align 4, !dbg !1887, !tbaa !1888
  %280 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 15, !dbg !1889
  store i32 %279, i32* %280, align 4, !dbg !1890, !tbaa !1888
  %281 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 16, !dbg !1891
  store i8* null, i8** %281, align 8, !dbg !1892, !tbaa !1893
  %282 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 17, i64 0, !dbg !1894
  %283 = bitcast double* %282 to i64*, !dbg !1894
  %284 = load i64, i64* %283, align 8, !dbg !1894, !tbaa !974
  %285 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 17, !dbg !1895
  %286 = bitcast [3 x double]* %285 to i64*, !dbg !1896
  store i64 %284, i64* %286, align 8, !dbg !1896, !tbaa !974
  %287 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 17, i64 1, !dbg !1897
  %288 = bitcast double* %287 to i64*, !dbg !1897
  %289 = load i64, i64* %288, align 8, !dbg !1897, !tbaa !974
  %290 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 17, i64 1, !dbg !1898
  %291 = bitcast double* %290 to i64*, !dbg !1899
  store i64 %289, i64* %291, align 8, !dbg !1899, !tbaa !974
  %292 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 17, i64 2, !dbg !1900
  %293 = bitcast double* %292 to i64*, !dbg !1900
  %294 = load i64, i64* %293, align 8, !dbg !1900, !tbaa !974
  %295 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 17, i64 2, !dbg !1901
  %296 = bitcast double* %295 to i64*, !dbg !1902
  store i64 %294, i64* %296, align 8, !dbg !1902, !tbaa !974
  %297 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i64 %209, i32 18, !dbg !1903
  %298 = bitcast double* %297 to i64*, !dbg !1903
  %299 = load i64, i64* %298, align 8, !dbg !1903, !tbaa !1904
  %300 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %209, i32 18, !dbg !1905
  %301 = bitcast double* %300 to i64*, !dbg !1906
  store i64 %299, i64* %301, align 8, !dbg !1906, !tbaa !1904
  %302 = add nuw nsw i64 %209, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %302, metadata !1577, metadata !DIExpression()), !dbg !1588
  %303 = load i32, i32* %11, align 8, !dbg !1908, !tbaa !1311
  %304 = sext i32 %303 to i64, !dbg !1909
  %305 = icmp slt i64 %302, %304, !dbg !1909
  br i1 %305, label %207, label %306, !dbg !1808, !llvm.loop !1910

306:                                              ; preds = %238, %198, %201, %58, %42, %27, %18, %5
  %307 = phi %struct.residue_t* [ null, %5 ], [ null, %18 ], [ null, %27 ], [ null, %42 ], [ null, %58 ], [ %3, %201 ], [ %3, %198 ], [ %3, %238 ], !dbg !1588
  ret %struct.residue_t* %307, !dbg !1912
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #7

declare dso_local %struct.extbond_t* @copyextbonds(...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* nocapture readonly %0) local_unnamed_addr #0 !dbg !1913 {
  call void @llvm.dbg.value(metadata %struct.strand_t* %0, metadata !1917, metadata !DIExpression()), !dbg !1921
  %2 = tail call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #10, !dbg !1922
  %3 = bitcast i8* %2 to %struct.strand_t*, !dbg !1924
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !1918, metadata !DIExpression()), !dbg !1921
  %4 = icmp eq i8* %2, null, !dbg !1925
  br i1 %4, label %5, label %10, !dbg !1926

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1927
  %7 = load i8*, i8** %6, align 8, !dbg !1927, !tbaa !1929
  %8 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %7) #10, !dbg !1931
  %9 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1932
  br label %78, !dbg !1933

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1934
  %12 = load i32, i32* %11, align 8, !dbg !1934, !tbaa !1936
  %13 = sext i32 %12 to i64, !dbg !1937
  %14 = shl nsw i64 %13, 3, !dbg !1938
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !1939
  %16 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !1940
  %17 = bitcast i8* %16 to %struct.residue_t***, !dbg !1940
  %18 = bitcast i8* %16 to i8**, !dbg !1941
  store i8* %15, i8** %18, align 8, !dbg !1941, !tbaa !1942
  %19 = icmp eq i8* %15, null, !dbg !1943
  br i1 %19, label %20, label %22, !dbg !1944

20:                                               ; preds = %10
  %21 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !1945
  br label %78, !dbg !1947

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1948
  %24 = load i8*, i8** %23, align 8, !dbg !1948, !tbaa !1929
  %25 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %24) #11, !dbg !1950
  %26 = add i64 %25, 1, !dbg !1951
  %27 = tail call noalias i8* @malloc(i64 %26) #10, !dbg !1952
  call void @llvm.dbg.value(metadata i8* %27, metadata !1919, metadata !DIExpression()), !dbg !1921
  %28 = icmp eq i8* %27, null, !dbg !1953
  br i1 %28, label %29, label %32, !dbg !1954

29:                                               ; preds = %22
  %30 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %24) #10, !dbg !1955
  %31 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !1957
  br label %78, !dbg !1958

32:                                               ; preds = %22
  %33 = bitcast i8* %2 to i8**, !dbg !1959
  store i8* %27, i8** %33, align 8, !dbg !1960, !tbaa !1929
  %34 = tail call i8* @strcpy(i8* nonnull %27, i8* nonnull dereferenceable(1) %24) #10, !dbg !1961
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 1, !dbg !1962
  %36 = load i32, i32* %35, align 8, !dbg !1962, !tbaa !1963
  %37 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1964
  %38 = bitcast i8* %37 to i32*, !dbg !1964
  store i32 %36, i32* %38, align 8, !dbg !1965, !tbaa !1963
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 2, !dbg !1966
  %40 = load i32, i32* %39, align 4, !dbg !1966, !tbaa !1967
  %41 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1968
  %42 = bitcast i8* %41 to i32*, !dbg !1968
  store i32 %40, i32* %42, align 4, !dbg !1969, !tbaa !1967
  %43 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !1970
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false), !dbg !1971
  %44 = load i32, i32* %11, align 8, !dbg !1972, !tbaa !1936
  %45 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !1973
  %46 = bitcast i8* %45 to i32*, !dbg !1973
  store i32 %44, i32* %46, align 8, !dbg !1974, !tbaa !1936
  %47 = getelementptr inbounds i8, i8* %2, i64 36, !dbg !1975
  %48 = bitcast i8* %47 to i32*, !dbg !1975
  store i32 %44, i32* %48, align 4, !dbg !1976, !tbaa !1977
  call void @llvm.dbg.value(metadata i32 0, metadata !1920, metadata !DIExpression()), !dbg !1921
  %49 = icmp sgt i32 %44, 0, !dbg !1978
  br i1 %49, label %50, label %78, !dbg !1981

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 7, !dbg !1982
  br label %52, !dbg !1981

52:                                               ; preds = %50, %73
  %53 = phi i64 [ 0, %50 ], [ %74, %73 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !1920, metadata !DIExpression()), !dbg !1921
  %54 = load %struct.residue_t**, %struct.residue_t*** %51, align 8, !dbg !1984, !tbaa !1942
  %55 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %54, i64 %53, !dbg !1985
  %56 = load %struct.residue_t*, %struct.residue_t** %55, align 8, !dbg !1985, !tbaa !380
  %57 = tail call %struct.residue_t* @copyresidue(%struct.residue_t* %56), !dbg !1986
  %58 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1987, !tbaa !1942
  %59 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %58, i64 %53, !dbg !1988
  store %struct.residue_t* %57, %struct.residue_t** %59, align 8, !dbg !1989, !tbaa !380
  %60 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1990, !tbaa !1942
  %61 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %60, i64 %53, !dbg !1991
  %62 = load %struct.residue_t*, %struct.residue_t** %61, align 8, !dbg !1991, !tbaa !380
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %62, i64 0, i32 9, !dbg !1992
  %64 = bitcast %struct.strand_t** %63 to i8**, !dbg !1993
  store i8* %2, i8** %64, align 8, !dbg !1993, !tbaa !1708
  %65 = icmp eq i64 %53, 0, !dbg !1994
  br i1 %65, label %73, label %66, !dbg !1996

66:                                               ; preds = %52
  %67 = bitcast %struct.residue_t** %61 to i64*, !dbg !1997
  %68 = load i64, i64* %67, align 8, !dbg !1997, !tbaa !380
  %69 = add nsw i64 %53, -1, !dbg !1998
  %70 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %60, i64 %69, !dbg !1999
  %71 = bitcast %struct.residue_t** %70 to i64**, !dbg !1999
  %72 = load i64*, i64** %71, align 8, !dbg !1999, !tbaa !380
  store i64 %68, i64* %72, align 8, !dbg !2000, !tbaa !1662
  br label %73, !dbg !1999

73:                                               ; preds = %52, %66
  %74 = add nuw nsw i64 %53, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %74, metadata !1920, metadata !DIExpression()), !dbg !1921
  %75 = load i32, i32* %11, align 8, !dbg !2002, !tbaa !1936
  %76 = sext i32 %75 to i64, !dbg !1978
  %77 = icmp slt i64 %74, %76, !dbg !1978
  br i1 %77, label %52, label %78, !dbg !1981, !llvm.loop !2003

78:                                               ; preds = %73, %32, %29, %20, %5
  %79 = phi %struct.strand_t* [ null, %5 ], [ null, %20 ], [ null, %29 ], [ %3, %32 ], [ %3, %73 ], !dbg !1921
  ret %struct.strand_t* %79, !dbg !2005
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) local_unnamed_addr #0 !dbg !2006 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2010, metadata !DIExpression()), !dbg !2017
  tail call void @upd_molnumbers(%struct.molecule_t* %0) #10, !dbg !2018
  %2 = tail call noalias dereferenceable_or_null(136) i8* @malloc(i64 136) #10, !dbg !2019
  %3 = bitcast i8* %2 to %struct.molecule_t*, !dbg !2021
  call void @llvm.dbg.value(metadata %struct.molecule_t* %3, metadata !2016, metadata !DIExpression()), !dbg !2017
  %4 = icmp eq i8* %2, null, !dbg !2022
  br i1 %4, label %5, label %7, !dbg !2023

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(13) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 13, i1 false), !dbg !2024
  %6 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2026
  br label %68, !dbg !2027

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !2028
  %9 = load i32, i32* %8, align 8, !dbg !2028, !tbaa !2029
  %10 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !2031
  %11 = bitcast i8* %10 to i32*, !dbg !2031
  store i32 %9, i32* %11, align 8, !dbg !2032, !tbaa !2029
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !2033
  %13 = load i32, i32* %12, align 8, !dbg !2033, !tbaa !2034
  %14 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !2035
  %15 = bitcast i8* %14 to i32*, !dbg !2035
  store i32 %13, i32* %15, align 8, !dbg !2036, !tbaa !2034
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !2037
  %17 = load i32, i32* %16, align 4, !dbg !2037, !tbaa !2038
  %18 = getelementptr inbounds i8, i8* %2, i64 116, !dbg !2039
  %19 = bitcast i8* %18 to i32*, !dbg !2039
  store i32 %17, i32* %19, align 4, !dbg !2040, !tbaa !2038
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !2041
  %21 = load i32, i32* %20, align 8, !dbg !2041, !tbaa !2042
  %22 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !2043
  %23 = bitcast i8* %22 to i32*, !dbg !2043
  store i32 %21, i32* %23, align 8, !dbg !2044, !tbaa !2042
  %24 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !2045
  %25 = load %struct.parm*, %struct.parm** %24, align 8, !dbg !2045, !tbaa !2047
  %26 = icmp eq %struct.parm* %25, null, !dbg !2048
  br i1 %26, label %29, label %27, !dbg !2049

27:                                               ; preds = %7
  %28 = tail call %struct.parm* @copyparm(%struct.parm* nonnull %25) #10, !dbg !2050
  br label %29, !dbg !2052

29:                                               ; preds = %7, %27
  %30 = phi %struct.parm* [ %28, %27 ], [ null, %7 ]
  %31 = getelementptr inbounds i8, i8* %2, i64 128, !dbg !2053
  %32 = bitcast i8* %31 to %struct.parm**, !dbg !2053
  store %struct.parm* %30, %struct.parm** %32, align 8, !dbg !2053, !tbaa !2047
  call void @llvm.dbg.value(metadata i32 0, metadata !2011, metadata !DIExpression()), !dbg !2017
  br label %33, !dbg !2054

33:                                               ; preds = %33, %29
  %34 = phi i64 [ 0, %29 ], [ %39, %33 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2011, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32 0, metadata !2012, metadata !DIExpression()), !dbg !2017
  %35 = mul nuw nsw i64 %34, 24, !dbg !2056
  %36 = getelementptr i8, i8* %2, i64 %35, !dbg !2056
  %37 = getelementptr %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 %34, i64 0, !dbg !2056
  %38 = bitcast double* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %36, i8* nonnull align 8 dereferenceable(24) %38, i64 24, i1 false), !dbg !2062
  call void @llvm.dbg.value(metadata i32 undef, metadata !2012, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32 undef, metadata !2011, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  %39 = add nuw nsw i64 %34, 1, !dbg !2054
  %40 = icmp eq i64 %39, 4, !dbg !2063
  br i1 %40, label %41, label %33, !dbg !2054, !llvm.loop !2064

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !2066
  %43 = load %struct.strand_t*, %struct.strand_t** %42, align 8, !dbg !2066, !tbaa !2067
  call void @llvm.dbg.value(metadata %struct.strand_t* %43, metadata !2013, metadata !DIExpression()), !dbg !2017
  %44 = icmp eq %struct.strand_t* %43, null, !dbg !2068
  br i1 %44, label %67, label %45, !dbg !2070

45:                                               ; preds = %41
  %46 = tail call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %43), !dbg !2071
  call void @llvm.dbg.value(metadata %struct.strand_t* %46, metadata !2014, metadata !DIExpression()), !dbg !2017
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %46, i64 0, i32 3, !dbg !2073
  %48 = bitcast %struct.molecule_t** %47 to i8**, !dbg !2074
  store i8* %2, i8** %48, align 8, !dbg !2074, !tbaa !2075
  %49 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !2076
  %50 = bitcast i8* %49 to %struct.strand_t**, !dbg !2076
  store %struct.strand_t* %46, %struct.strand_t** %50, align 8, !dbg !2077, !tbaa !2067
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %43, i64 0, i32 4, !dbg !2078
  %52 = load %struct.strand_t*, %struct.strand_t** %51, align 8, !dbg !2078, !tbaa !2079
  call void @llvm.dbg.value(metadata %struct.strand_t* %52, metadata !2013, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata %struct.strand_t* %46, metadata !2014, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata %struct.strand_t* %52, metadata !2013, metadata !DIExpression()), !dbg !2017
  %53 = icmp eq %struct.strand_t* %52, null, !dbg !2080
  br i1 %53, label %67, label %54, !dbg !2081

54:                                               ; preds = %45, %61
  %55 = phi %struct.strand_t* [ %57, %61 ], [ %46, %45 ]
  %56 = phi %struct.strand_t* [ %65, %61 ], [ %52, %45 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %55, metadata !2014, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata %struct.strand_t* %56, metadata !2013, metadata !DIExpression()), !dbg !2017
  %57 = tail call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %56), !dbg !2082
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !2015, metadata !DIExpression()), !dbg !2017
  %58 = icmp eq %struct.strand_t* %55, null, !dbg !2084
  br i1 %58, label %61, label %59, !dbg !2086

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %55, i64 0, i32 4, !dbg !2087
  store %struct.strand_t* %57, %struct.strand_t** %60, align 8, !dbg !2088, !tbaa !2079
  br label %61, !dbg !2089

61:                                               ; preds = %54, %59
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %57, i64 0, i32 3, !dbg !2090
  %63 = bitcast %struct.molecule_t** %62 to i8**, !dbg !2091
  store i8* %2, i8** %63, align 8, !dbg !2091, !tbaa !2075
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !2014, metadata !DIExpression()), !dbg !2017
  %64 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %56, i64 0, i32 4, !dbg !2092
  %65 = load %struct.strand_t*, %struct.strand_t** %64, align 8, !dbg !2092, !tbaa !2079
  call void @llvm.dbg.value(metadata %struct.strand_t* %65, metadata !2013, metadata !DIExpression()), !dbg !2017
  %66 = icmp eq %struct.strand_t* %65, null, !dbg !2080
  br i1 %66, label %67, label %54, !dbg !2081, !llvm.loop !2093

67:                                               ; preds = %61, %41, %45
  tail call void @upd_molnumbers(%struct.molecule_t* nonnull %3) #10, !dbg !2095
  br label %68, !dbg !2096

68:                                               ; preds = %67, %5
  %69 = phi %struct.molecule_t* [ null, %5 ], [ %3, %67 ], !dbg !2017
  ret %struct.molecule_t* %69, !dbg !2097
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
define internal fastcc void @addres2reslib(%struct.reslib_t* nocapture %0) unnamed_addr #0 !dbg !2098 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2102, metadata !DIExpression()), !dbg !2109
  %2 = tail call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #10, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %2, metadata !2103, metadata !DIExpression()), !dbg !2109
  %3 = icmp eq i8* %2, null, !dbg !2112
  br i1 %3, label %4, label %9, !dbg !2113

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2114
  %6 = load i8*, i8** %5, align 8, !dbg !2114, !tbaa !389
  %7 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %6) #10, !dbg !2116
  %8 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2117
  br label %152, !dbg !2118

9:                                                ; preds = %1
  %10 = load i32, i32* @n_atoms, align 4, !dbg !2119, !tbaa !944
  %11 = sext i32 %10 to i64, !dbg !2119
  %12 = mul nsw i64 %11, 176, !dbg !2121
  %13 = tail call noalias i8* @malloc(i64 %12) #10, !dbg !2122
  call void @llvm.dbg.value(metadata i8* %13, metadata !2104, metadata !DIExpression()), !dbg !2109
  %14 = icmp eq i8* %13, null, !dbg !2123
  br i1 %14, label %15, label %20, !dbg !2124

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2125
  %17 = load i8*, i8** %16, align 8, !dbg !2125, !tbaa !389
  %18 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %17) #10, !dbg !2127
  %19 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2128
  br label %152, !dbg !2129

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2130
  %22 = bitcast %struct.residue_t** %21 to i64*, !dbg !2130
  %23 = load i64, i64* %22, align 8, !dbg !2130, !tbaa !2131
  %24 = bitcast i8* %2 to i64*, !dbg !2132
  store i64 %23, i64* %24, align 8, !dbg !2132, !tbaa !1662
  %25 = bitcast %struct.residue_t** %21 to i8**, !dbg !2133
  store i8* %2, i8** %25, align 8, !dbg !2133, !tbaa !2131
  %26 = tail call i64 @strlen(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2134
  %27 = add i64 %26, 1, !dbg !2135
  %28 = tail call noalias i8* @malloc(i64 %27) #10, !dbg !2136
  call void @llvm.dbg.value(metadata i8* %28, metadata !2106, metadata !DIExpression()), !dbg !2109
  %29 = icmp eq i8* %28, null, !dbg !2137
  br i1 %29, label %30, label %33, !dbg !2139

30:                                               ; preds = %20
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2140, !tbaa !380
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %31) #12, !dbg !2142
  tail call void @exit(i32 1) #13, !dbg !2143
  unreachable, !dbg !2143

33:                                               ; preds = %20
  %34 = tail call i8* @strcpy(i8* nonnull %28, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #10, !dbg !2144
  %35 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !2145
  %36 = bitcast i8* %35 to i8**, !dbg !2145
  store i8* %28, i8** %36, align 8, !dbg !2146, !tbaa !1281
  %37 = tail call noalias dereferenceable_or_null(1) i8* @malloc(i64 1) #10, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %37, metadata !2106, metadata !DIExpression()), !dbg !2109
  %38 = icmp eq i8* %37, null, !dbg !2148
  br i1 %38, label %39, label %42, !dbg !2150

39:                                               ; preds = %33
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2151, !tbaa !380
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %40) #12, !dbg !2153
  tail call void @exit(i32 1) #13, !dbg !2154
  unreachable, !dbg !2154

42:                                               ; preds = %33
  store i8 0, i8* %37, align 1, !dbg !2155
  %43 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !2156
  %44 = bitcast i8* %43 to i8**, !dbg !2156
  store i8* %37, i8** %44, align 8, !dbg !2157, !tbaa !1678
  %45 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2158
  %46 = bitcast i8* %45 to i32*, !dbg !2158
  store i32 0, i32* %46, align 8, !dbg !2159, !tbaa !1693
  %47 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !2160
  %48 = bitcast i8* %47 to i32*, !dbg !2160
  store i32 0, i32* %48, align 4, !dbg !2161, !tbaa !1698
  %49 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2162
  %50 = bitcast i8* %49 to i32*, !dbg !2162
  store i32 0, i32* %50, align 8, !dbg !2163, !tbaa !1701
  %51 = getelementptr inbounds i8, i8* %2, i64 40, !dbg !2164
  %52 = bitcast i8* %51 to i32*, !dbg !2164
  store i32 0, i32* %52, align 8, !dbg !2165, !tbaa !1703
  %53 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 2, !dbg !2166
  %54 = load i32, i32* %53, align 8, !dbg !2166, !tbaa !410
  %55 = getelementptr inbounds i8, i8* %2, i64 44, !dbg !2167
  %56 = bitcast i8* %55 to i32*, !dbg !2167
  store i32 %54, i32* %56, align 4, !dbg !2168, !tbaa !1765
  %57 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 3, !dbg !2169
  %58 = load i32, i32* %57, align 4, !dbg !2169, !tbaa !776
  %59 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !2170
  %60 = bitcast i8* %59 to i32*, !dbg !2170
  store i32 %58, i32* %60, align 8, !dbg !2171, !tbaa !1769
  %61 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !2172
  %62 = getelementptr inbounds i8, i8* %2, i64 80, !dbg !2173
  %63 = bitcast i8* %62 to [2 x i32]**, !dbg !2173
  store [2 x i32]* null, [2 x i32]** %63, align 8, !dbg !2174, !tbaa !1718
  %64 = getelementptr inbounds i8, i8* %2, i64 88, !dbg !2175
  %65 = bitcast i8* %64 to i32*, !dbg !2175
  store i32 0, i32* %65, align 8, !dbg !2176, !tbaa !1643
  %66 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !2177
  %67 = bitcast i8* %66 to %struct.chiral_t**, !dbg !2177
  store %struct.chiral_t* null, %struct.chiral_t** %67, align 8, !dbg !2178, !tbaa !1739
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %61, i8 0, i64 20, i1 false), !dbg !2179
  %68 = load i32, i32* @n_atoms, align 4, !dbg !2180, !tbaa !944
  %69 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !2181
  %70 = bitcast i8* %69 to i32*, !dbg !2181
  store i32 %68, i32* %70, align 8, !dbg !2182, !tbaa !1311
  %71 = getelementptr inbounds i8, i8* %2, i64 112, !dbg !2183
  %72 = bitcast i8* %71 to i32**, !dbg !2183
  store i32* null, i32** %72, align 8, !dbg !2184, !tbaa !1777
  %73 = getelementptr inbounds i8, i8* %2, i64 120, !dbg !2185
  %74 = bitcast i8* %73 to %struct.atom_t**, !dbg !2185
  %75 = bitcast i8* %73 to i8**, !dbg !2186
  store i8* %13, i8** %75, align 8, !dbg !2186, !tbaa !1318
  call void @llvm.dbg.value(metadata i32 0, metadata !2107, metadata !DIExpression()), !dbg !2109
  %76 = icmp sgt i32 %68, 0, !dbg !2187
  br i1 %76, label %77, label %152, !dbg !2190

77:                                               ; preds = %42, %142
  %78 = phi i64 [ %148, %142 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !2107, metadata !DIExpression()), !dbg !2109
  %79 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 0, !dbg !2191
  %80 = load i8*, i8** %79, align 16, !dbg !2191, !tbaa !919
  %81 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %80) #11, !dbg !2193
  %82 = add i64 %81, 1, !dbg !2194
  %83 = tail call noalias i8* @malloc(i64 %82) #10, !dbg !2195
  call void @llvm.dbg.value(metadata i8* %83, metadata !2105, metadata !DIExpression()), !dbg !2109
  %84 = icmp eq i8* %83, null, !dbg !2196
  br i1 %84, label %85, label %88, !dbg !2198

85:                                               ; preds = %77
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2199, !tbaa !380
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %86) #12, !dbg !2201
  tail call void @exit(i32 1) #13, !dbg !2202
  unreachable, !dbg !2202

88:                                               ; preds = %77
  %89 = tail call i8* @strcpy(i8* nonnull %83, i8* nonnull dereferenceable(1) %80) #10, !dbg !2203
  %90 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !2204, !tbaa !1318
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 0, !dbg !2205
  store i8* %83, i8** %91, align 8, !dbg !2206, !tbaa !919
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 2, !dbg !2207
  store i32 0, i32* %92, align 8, !dbg !2208, !tbaa !1834
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 3, !dbg !2209
  store i32 0, i32* %93, align 4, !dbg !2210, !tbaa !1838
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2109
  %94 = getelementptr %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 4, i64 0, !dbg !2211
  %95 = bitcast i32* %94 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(32) %95, i8 -1, i64 32, i1 false), !dbg !2213
  call void @llvm.dbg.value(metadata i32 undef, metadata !2108, metadata !DIExpression()), !dbg !2109
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 5, !dbg !2215
  %97 = bitcast %struct.residue_t** %96 to i8**, !dbg !2216
  store i8* %2, i8** %97, align 8, !dbg !2216, !tbaa !1853
  %98 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 6, !dbg !2217
  %99 = bitcast double* %98 to i64*, !dbg !2217
  %100 = load i64, i64* %99, align 16, !dbg !2217, !tbaa !977
  %101 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 6, !dbg !2218
  %102 = bitcast double* %101 to i64*, !dbg !2219
  store i64 %100, i64* %102, align 8, !dbg !2219, !tbaa !977
  %103 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 7, !dbg !2220
  %104 = bitcast double* %103 to i64*, !dbg !2220
  %105 = load i64, i64* %104, align 8, !dbg !2220, !tbaa !1225
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 7, !dbg !2221
  %107 = bitcast double* %106 to i64*, !dbg !2222
  store i64 %105, i64* %107, align 8, !dbg !2222, !tbaa !1225
  %108 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 8, !dbg !2223
  %109 = bitcast double* %108 to i64*, !dbg !2223
  %110 = load i64, i64* %109, align 16, !dbg !2223, !tbaa !1861
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 8, !dbg !2224
  %112 = bitcast double* %111 to i64*, !dbg !2225
  store i64 %110, i64* %112, align 8, !dbg !2225, !tbaa !1861
  %113 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 9, !dbg !2226
  %114 = bitcast double* %113 to i64*, !dbg !2226
  %115 = load i64, i64* %114, align 8, !dbg !2226, !tbaa !1865
  %116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 9, !dbg !2227
  %117 = bitcast double* %116 to i64*, !dbg !2228
  store i64 %115, i64* %117, align 8, !dbg !2228, !tbaa !1865
  %118 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 11, !dbg !2229
  %119 = load i32, i32* %118, align 8, !dbg !2229, !tbaa !1872
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 11, !dbg !2230
  store i32 %119, i32* %120, align 8, !dbg !2231, !tbaa !1872
  %121 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 12, !dbg !2232
  %122 = bitcast double* %121 to i64*, !dbg !2232
  %123 = load i64, i64* %122, align 16, !dbg !2232, !tbaa !1876
  %124 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 12, !dbg !2233
  %125 = bitcast double* %124 to i64*, !dbg !2234
  store i64 %123, i64* %125, align 8, !dbg !2234, !tbaa !1876
  %126 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 13, !dbg !2235
  %127 = bitcast double* %126 to i64*, !dbg !2235
  %128 = load i64, i64* %127, align 8, !dbg !2235, !tbaa !1880
  %129 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 13, !dbg !2236
  %130 = bitcast double* %129 to i64*, !dbg !2237
  store i64 %128, i64* %130, align 8, !dbg !2237, !tbaa !1880
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 15, !dbg !2238
  store i32 0, i32* %131, align 4, !dbg !2239, !tbaa !1888
  %132 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 16, !dbg !2240
  store i8* null, i8** %132, align 8, !dbg !2241, !tbaa !1893
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2109
  br label %133, !dbg !2242

133:                                              ; preds = %133, %88
  %134 = phi i64 [ 0, %88 ], [ %140, %133 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !2108, metadata !DIExpression()), !dbg !2109
  %135 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 17, i64 %134, !dbg !2244
  %136 = bitcast double* %135 to i64*, !dbg !2244
  %137 = load i64, i64* %136, align 8, !dbg !2244, !tbaa !974
  %138 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 17, i64 %134, !dbg !2246
  %139 = bitcast double* %138 to i64*, !dbg !2247
  store i64 %137, i64* %139, align 8, !dbg !2247, !tbaa !974
  %140 = add nuw nsw i64 %134, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %140, metadata !2108, metadata !DIExpression()), !dbg !2109
  %141 = icmp eq i64 %140, 3, !dbg !2249
  br i1 %141, label %142, label %133, !dbg !2242, !llvm.loop !2250

142:                                              ; preds = %133
  %143 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %78, i32 18, !dbg !2252
  %144 = bitcast double* %143 to i64*, !dbg !2252
  %145 = load i64, i64* %144, align 8, !dbg !2252, !tbaa !1904
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i64 %78, i32 18, !dbg !2253
  %147 = bitcast double* %146 to i64*, !dbg !2254
  store i64 %145, i64* %147, align 8, !dbg !2254, !tbaa !1904
  %148 = add nuw nsw i64 %78, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %148, metadata !2107, metadata !DIExpression()), !dbg !2109
  %149 = load i32, i32* @n_atoms, align 4, !dbg !2256, !tbaa !944
  %150 = sext i32 %149 to i64, !dbg !2187
  %151 = icmp slt i64 %148, %150, !dbg !2187
  br i1 %151, label %77, label %152, !dbg !2190, !llvm.loop !2257

152:                                              ; preds = %142, %42, %15, %4
  ret void, !dbg !2259
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addbonds2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2260 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2262, metadata !DIExpression()), !dbg !2271
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2272
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2263, metadata !DIExpression()), !dbg !2271
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2274, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2263, metadata !DIExpression()), !dbg !2271
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2275
  br i1 %4, label %81, label %5, !dbg !2275

5:                                                ; preds = %1, %77
  %6 = phi %struct.residue_t* [ %79, %77 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 4, !dbg !2276
  %8 = load i8*, i8** %7, align 8, !dbg !2276, !tbaa !1281
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2280
  %10 = icmp eq i32 %9, 0, !dbg !2281
  br i1 %10, label %11, label %77, !dbg !2282

11:                                               ; preds = %5
  %12 = load i32, i32* @n_bonds, align 4, !dbg !2283, !tbaa !944
  %13 = sext i32 %12 to i64, !dbg !2283
  %14 = shl nsw i64 %13, 3, !dbg !2286
  %15 = tail call noalias i8* @malloc(i64 %14) #10, !dbg !2287
  %16 = bitcast i8* %15 to [2 x i32]*, !dbg !2288
  call void @llvm.dbg.value(metadata [2 x i32]* %16, metadata !2264, metadata !DIExpression()), !dbg !2271
  %17 = icmp eq i8* %15, null, !dbg !2289
  br i1 %17, label %23, label %18, !dbg !2290

18:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !2265, metadata !DIExpression()), !dbg !2271
  %19 = icmp sgt i32 %12, 0, !dbg !2291
  br i1 %19, label %20, label %72, !dbg !2294

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2295
  %22 = load %struct.atom_t*, %struct.atom_t** %21, align 8, !dbg !2295, !tbaa !1318
  br label %26, !dbg !2294

23:                                               ; preds = %11
  %24 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #10, !dbg !2297
  %25 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2299
  br label %86, !dbg !2300

26:                                               ; preds = %20, %67
  %27 = phi i64 [ 0, %20 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !2265, metadata !DIExpression()), !dbg !2271
  %28 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %27, i64 0, !dbg !2301
  %29 = load i32, i32* %28, align 8, !dbg !2301, !tbaa !944
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %27, i64 0, !dbg !2302
  store i32 %29, i32* %30, align 4, !dbg !2303, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %29, metadata !2267, metadata !DIExpression()), !dbg !2271
  %31 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %27, i64 1, !dbg !2304
  %32 = load i32, i32* %31, align 4, !dbg !2304, !tbaa !944
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 %27, i64 1, !dbg !2305
  store i32 %32, i32* %33, align 4, !dbg !2306, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %32, metadata !2268, metadata !DIExpression()), !dbg !2271
  %34 = add nsw i32 %29, -1, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %34, metadata !2267, metadata !DIExpression()), !dbg !2271
  %35 = add nsw i32 %32, -1, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %35, metadata !2268, metadata !DIExpression()), !dbg !2271
  %36 = sext i32 %34 to i64, !dbg !2309
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2269, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()), !dbg !2271
  br label %40, !dbg !2310

37:                                               ; preds = %45
  %38 = add nuw nsw i64 %41, 1, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %38, metadata !2266, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %38, metadata !2266, metadata !DIExpression()), !dbg !2271
  %39 = icmp eq i64 %38, 8, !dbg !2314
  br i1 %39, label %51, label %40, !dbg !2310, !llvm.loop !2315

40:                                               ; preds = %37, %26
  %41 = phi i64 [ 0, %26 ], [ %38, %37 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !2266, metadata !DIExpression()), !dbg !2271
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 4, i64 %41, !dbg !2317
  %43 = load i32, i32* %42, align 4, !dbg !2317, !tbaa !944
  %44 = icmp eq i32 %43, %35, !dbg !2320
  br i1 %44, label %51, label %45, !dbg !2321

45:                                               ; preds = %40
  %46 = icmp eq i32 %43, -1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %41, metadata !2266, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2271
  br i1 %46, label %47, label %37, !dbg !2324

47:                                               ; preds = %45
  store i32 %35, i32* %42, align 4, !dbg !2325, !tbaa !944
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %36, i32 3, !dbg !2327
  %49 = load i32, i32* %48, align 4, !dbg !2328, !tbaa !1838
  %50 = add nsw i32 %49, 1, !dbg !2328
  store i32 %50, i32* %48, align 4, !dbg !2328, !tbaa !1838
  br label %51, !dbg !2329

51:                                               ; preds = %40, %37, %47
  %52 = sext i32 %35 to i64, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2270, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()), !dbg !2271
  br label %56, !dbg !2331

53:                                               ; preds = %61
  %54 = add nuw nsw i64 %57, 1, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %54, metadata !2266, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %54, metadata !2266, metadata !DIExpression()), !dbg !2271
  %55 = icmp eq i64 %54, 8, !dbg !2335
  br i1 %55, label %67, label %56, !dbg !2331, !llvm.loop !2336

56:                                               ; preds = %53, %51
  %57 = phi i64 [ 0, %51 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !2266, metadata !DIExpression()), !dbg !2271
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 4, i64 %57, !dbg !2338
  %59 = load i32, i32* %58, align 4, !dbg !2338, !tbaa !944
  %60 = icmp eq i32 %59, %34, !dbg !2341
  br i1 %60, label %67, label %61, !dbg !2342

61:                                               ; preds = %56
  %62 = icmp eq i32 %59, -1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %57, metadata !2266, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2271
  br i1 %62, label %63, label %53, !dbg !2345

63:                                               ; preds = %61
  store i32 %34, i32* %58, align 4, !dbg !2346, !tbaa !944
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %52, i32 3, !dbg !2348
  %65 = load i32, i32* %64, align 4, !dbg !2349, !tbaa !1838
  %66 = add nsw i32 %65, 1, !dbg !2349
  store i32 %66, i32* %64, align 4, !dbg !2349, !tbaa !1838
  br label %67, !dbg !2350

67:                                               ; preds = %56, %53, %63
  %68 = add nuw nsw i64 %27, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %68, metadata !2265, metadata !DIExpression()), !dbg !2271
  %69 = load i32, i32* @n_bonds, align 4, !dbg !2352, !tbaa !944
  %70 = sext i32 %69 to i64, !dbg !2291
  %71 = icmp slt i64 %68, %70, !dbg !2291
  br i1 %71, label %26, label %72, !dbg !2294, !llvm.loop !2353

72:                                               ; preds = %67, %18
  %73 = phi i32 [ %12, %18 ], [ %69, %67 ], !dbg !2352
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 11, !dbg !2355
  store i32 %73, i32* %74, align 8, !dbg !2356, !tbaa !1624
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 12, !dbg !2357
  %76 = bitcast [2 x i32]** %75 to i8**, !dbg !2358
  store i8* %15, i8** %76, align 8, !dbg !2358, !tbaa !1718
  br label %86, !dbg !2359

77:                                               ; preds = %5
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 0, !dbg !2360
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2263, metadata !DIExpression()), !dbg !2271
  %79 = load %struct.residue_t*, %struct.residue_t** %78, align 8, !dbg !2274, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %79, metadata !2263, metadata !DIExpression()), !dbg !2271
  %80 = icmp eq %struct.residue_t* %79, null, !dbg !2275
  br i1 %80, label %81, label %5, !dbg !2275, !llvm.loop !2361

81:                                               ; preds = %77, %1
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2363
  %83 = load i8*, i8** %82, align 8, !dbg !2363, !tbaa !389
  %84 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %83) #10, !dbg !2364
  %85 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2365
  br label %86, !dbg !2366

86:                                               ; preds = %81, %72, %23
  ret void, !dbg !2367
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addqr2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2368 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2370, metadata !DIExpression()), !dbg !2375
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2376
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2371, metadata !DIExpression()), !dbg !2375
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2378, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2371, metadata !DIExpression()), !dbg !2375
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2379
  br i1 %4, label %81, label %5, !dbg !2379

5:                                                ; preds = %1, %77
  %6 = phi %struct.residue_t* [ %79, %77 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 4, !dbg !2380
  %8 = load i8*, i8** %7, align 8, !dbg !2380, !tbaa !1281
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2384
  %10 = icmp eq i32 %9, 0, !dbg !2385
  br i1 %10, label %11, label %77, !dbg !2386

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression()), !dbg !2375
  %12 = load i32, i32* @n_atoms, align 4, !dbg !2387, !tbaa !944
  %13 = icmp sgt i32 %12, 0, !dbg !2391
  br i1 %13, label %14, label %86, !dbg !2392

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 15, !dbg !2393
  %16 = load i32, i32* %15, align 8, !dbg !2393, !tbaa !1311
  %17 = icmp sgt i32 %16, 0, !dbg !2393
  %18 = zext i32 %16 to i64, !dbg !2393
  br i1 %17, label %19, label %86, !dbg !2392

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 17, !dbg !2397
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !2397, !tbaa !1318
  br label %22, !dbg !2392

22:                                               ; preds = %19, %72
  %23 = phi i32 [ %73, %72 ], [ %12, %19 ]
  %24 = phi %struct.atom_t* [ %75, %72 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %19 ]
  %25 = phi i32 [ %74, %72 ], [ 0, %19 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %24, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %25, metadata !2372, metadata !DIExpression()), !dbg !2375
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 0, !dbg !2398
  %27 = load i8*, i8** %26, align 8, !dbg !2398, !tbaa !919
  call void @llvm.dbg.value(metadata %struct.residue_t* %6, metadata !1298, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i8* %27, metadata !1303, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 0, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  br label %28, !dbg !2400

28:                                               ; preds = %35, %22
  %29 = phi i64 [ 0, %22 ], [ %34, %35 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 0, !dbg !2401
  %31 = load i8*, i8** %30, align 8, !dbg !2401, !tbaa !919
  %32 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %31, i8* nonnull dereferenceable(1) %27) #11, !dbg !2402
  %33 = icmp eq i32 %32, 0, !dbg !2402
  %34 = add nuw nsw i64 %29, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %34, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  br i1 %33, label %37, label %35, !dbg !2404

35:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %34, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  %36 = icmp eq i64 %34, %18, !dbg !2405
  br i1 %36, label %72, label %28, !dbg !2400, !llvm.loop !2406

37:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i64 %29, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %29, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %29, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %29, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i64 %29, metadata !1304, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2374, metadata !DIExpression()), !dbg !2375
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 6, !dbg !2408
  %39 = bitcast double* %38 to i64*, !dbg !2408
  %40 = load i64, i64* %39, align 8, !dbg !2408, !tbaa !977
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 6, !dbg !2410
  %42 = bitcast double* %41 to i64*, !dbg !2411
  store i64 %40, i64* %42, align 8, !dbg !2411, !tbaa !977
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 7, !dbg !2412
  %44 = bitcast double* %43 to i64*, !dbg !2412
  %45 = load i64, i64* %44, align 8, !dbg !2412, !tbaa !1225
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 7, !dbg !2413
  %47 = bitcast double* %46 to i64*, !dbg !2414
  store i64 %45, i64* %47, align 8, !dbg !2414, !tbaa !1225
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 8, !dbg !2415
  %49 = bitcast double* %48 to i64*, !dbg !2415
  %50 = load i64, i64* %49, align 8, !dbg !2415, !tbaa !1861
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 8, !dbg !2416
  %52 = bitcast double* %51 to i64*, !dbg !2417
  store i64 %50, i64* %52, align 8, !dbg !2417, !tbaa !1861
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 9, !dbg !2418
  %54 = bitcast double* %53 to i64*, !dbg !2418
  %55 = load i64, i64* %54, align 8, !dbg !2418, !tbaa !1865
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 9, !dbg !2419
  %57 = bitcast double* %56 to i64*, !dbg !2420
  store i64 %55, i64* %57, align 8, !dbg !2420, !tbaa !1865
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 11, !dbg !2421
  %59 = load i32, i32* %58, align 8, !dbg !2421, !tbaa !1872
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 11, !dbg !2422
  store i32 %59, i32* %60, align 8, !dbg !2423, !tbaa !1872
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 12, !dbg !2424
  %62 = bitcast double* %61 to i64*, !dbg !2424
  %63 = load i64, i64* %62, align 8, !dbg !2424, !tbaa !1876
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 12, !dbg !2425
  %65 = bitcast double* %64 to i64*, !dbg !2426
  store i64 %63, i64* %65, align 8, !dbg !2426, !tbaa !1876
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 0, i32 13, !dbg !2427
  %67 = bitcast double* %66 to i64*, !dbg !2427
  %68 = load i64, i64* %67, align 8, !dbg !2427, !tbaa !1880
  %69 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %29, i32 13, !dbg !2428
  %70 = bitcast double* %69 to i64*, !dbg !2429
  store i64 %68, i64* %70, align 8, !dbg !2429, !tbaa !1880
  %71 = load i32, i32* @n_atoms, align 4, !dbg !2387, !tbaa !944
  br label %72, !dbg !2430

72:                                               ; preds = %35, %37
  %73 = phi i32 [ %71, %37 ], [ %23, %35 ], !dbg !2387
  %74 = add nuw nsw i32 %25, 1, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %74, metadata !2372, metadata !DIExpression()), !dbg !2375
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 1, !dbg !2432
  call void @llvm.dbg.value(metadata %struct.atom_t* %75, metadata !2373, metadata !DIExpression()), !dbg !2375
  %76 = icmp slt i32 %74, %73, !dbg !2391
  br i1 %76, label %22, label %86, !dbg !2392, !llvm.loop !2433

77:                                               ; preds = %5
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 0, !dbg !2435
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2371, metadata !DIExpression()), !dbg !2375
  %79 = load %struct.residue_t*, %struct.residue_t** %78, align 8, !dbg !2378, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %79, metadata !2371, metadata !DIExpression()), !dbg !2375
  %80 = icmp eq %struct.residue_t* %79, null, !dbg !2379
  br i1 %80, label %81, label %5, !dbg !2379, !llvm.loop !2436

81:                                               ; preds = %77, %1
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2438
  %83 = load i8*, i8** %82, align 8, !dbg !2438, !tbaa !389
  %84 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %83) #10, !dbg !2439
  %85 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #10, !dbg !2440
  br label %86, !dbg !2441

86:                                               ; preds = %72, %14, %11, %81
  ret void, !dbg !2442
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addchi2reslib(%struct.reslib_t* nocapture readonly %0) unnamed_addr #0 !dbg !2443 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2445, metadata !DIExpression()), !dbg !2455
  %5 = bitcast [4 x [3 x double]]* %2 to i8*, !dbg !2456
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #10, !dbg !2456
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %2, metadata !2451, metadata !DIExpression()), !dbg !2457
  %6 = bitcast [4 x [3 x double]]* %3 to i8*, !dbg !2458
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #10, !dbg !2458
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %3, metadata !2453, metadata !DIExpression()), !dbg !2459
  %7 = bitcast double* %4 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !2460
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2446, metadata !DIExpression()), !dbg !2455
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2463, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %9, metadata !2446, metadata !DIExpression()), !dbg !2455
  %10 = icmp eq %struct.residue_t* %9, null, !dbg !2464
  br i1 %10, label %79, label %11, !dbg !2464

11:                                               ; preds = %1, %75
  %12 = phi %struct.residue_t* [ %77, %75 ], [ %9, %1 ]
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !2465
  %14 = load i8*, i8** %13, align 8, !dbg !2465, !tbaa !1281
  %15 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %14, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #11, !dbg !2469
  %16 = icmp eq i32 %15, 0, !dbg !2469
  br i1 %16, label %17, label %75, !dbg !2470

17:                                               ; preds = %11
  %18 = load i32, i32* @n_chi, align 4, !dbg !2471, !tbaa !944
  %19 = sext i32 %18 to i64, !dbg !2471
  %20 = mul nsw i64 %19, 24, !dbg !2474
  %21 = tail call noalias i8* @malloc(i64 %20) #10, !dbg !2475
  call void @llvm.dbg.value(metadata i8* %21, metadata !2447, metadata !DIExpression()), !dbg !2455
  %22 = icmp eq i8* %21, null, !dbg !2476
  br i1 %22, label %23, label %28, !dbg !2477

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !2465
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2478, !tbaa !380
  %26 = load i8*, i8** %24, align 8, !dbg !2480, !tbaa !1281
  %27 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %26) #12, !dbg !2481
  br label %85, !dbg !2482

28:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %21, metadata !2447, metadata !DIExpression()), !dbg !2455
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 13, !dbg !2483
  store i32 %18, i32* %29, align 8, !dbg !2484, !tbaa !1643
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 14, !dbg !2485
  %31 = bitcast %struct.chiral_t** %30 to i8**, !dbg !2486
  store i8* %21, i8** %31, align 8, !dbg !2486, !tbaa !1739
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8* %21, metadata !2447, metadata !DIExpression()), !dbg !2455
  %32 = icmp sgt i32 %18, 0, !dbg !2487
  br i1 %32, label %33, label %85, !dbg !2490

33:                                               ; preds = %28
  %34 = bitcast i8* %21 to %struct.chiral_t*, !dbg !2491
  call void @llvm.dbg.value(metadata %struct.chiral_t* %34, metadata !2447, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.chiral_t* %34, metadata !2447, metadata !DIExpression()), !dbg !2455
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 17, !dbg !2492
  %36 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 0, !dbg !2497
  %37 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %3, i64 0, i64 0, i64 0, !dbg !2497
  %38 = bitcast double* %4 to i64*, !dbg !2497
  br label %39, !dbg !2490

39:                                               ; preds = %33, %66
  %40 = phi i64 [ 0, %33 ], [ %71, %66 ]
  %41 = phi %struct.chiral_t* [ %34, %33 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2449, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata %struct.chiral_t* %41, metadata !2447, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 0, metadata !2448, metadata !DIExpression()), !dbg !2455
  %42 = load %struct.atom_t*, %struct.atom_t** %35, align 8, !dbg !2492, !tbaa !1318
  br label %43, !dbg !2498

43:                                               ; preds = %43, %39
  %44 = phi i64 [ 0, %39 ], [ %64, %43 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !2448, metadata !DIExpression()), !dbg !2455
  %45 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %40, i32 0, i64 %44, !dbg !2499
  %46 = load i32, i32* %45, align 4, !dbg !2499, !tbaa !944
  %47 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %41, i64 0, i32 0, i64 %44, !dbg !2500
  store i32 %46, i32* %47, align 4, !dbg !2501, !tbaa !944
  call void @llvm.dbg.value(metadata i32 %46, metadata !2450, metadata !DIExpression()), !dbg !2455
  %48 = sext i32 %46 to i64, !dbg !2502
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %48, i32 17, i64 0, !dbg !2502
  %50 = bitcast double* %49 to i64*, !dbg !2502
  %51 = load i64, i64* %50, align 8, !dbg !2502, !tbaa !974
  %52 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %44, !dbg !2503
  %53 = bitcast [3 x double]* %52 to i64*, !dbg !2504
  store i64 %51, i64* %53, align 8, !dbg !2504, !tbaa !974
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %48, i32 17, i64 1, !dbg !2505
  %55 = bitcast double* %54 to i64*, !dbg !2505
  %56 = load i64, i64* %55, align 8, !dbg !2505, !tbaa !974
  %57 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %44, i64 1, !dbg !2506
  %58 = bitcast double* %57 to i64*, !dbg !2507
  store i64 %56, i64* %58, align 8, !dbg !2507, !tbaa !974
  %59 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %48, i32 17, i64 2, !dbg !2508
  %60 = bitcast double* %59 to i64*, !dbg !2508
  %61 = load i64, i64* %60, align 8, !dbg !2508, !tbaa !974
  %62 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %44, i64 2, !dbg !2509
  %63 = bitcast double* %62 to i64*, !dbg !2510
  store i64 %61, i64* %63, align 8, !dbg !2510, !tbaa !974
  %64 = add nuw nsw i64 %44, 1, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %64, metadata !2448, metadata !DIExpression()), !dbg !2455
  %65 = icmp eq i64 %64, 4, !dbg !2512
  br i1 %65, label %66, label %43, !dbg !2498, !llvm.loop !2513

66:                                               ; preds = %43
  call void @llvm.dbg.value(metadata double* %4, metadata !2454, metadata !DIExpression(DW_OP_deref)), !dbg !2455
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* nonnull %36, double* nonnull %37, double* nonnull %4) #10, !dbg !2515
  %67 = load i64, i64* %38, align 8, !dbg !2516, !tbaa !974
  call void @llvm.dbg.value(metadata double undef, metadata !2454, metadata !DIExpression()), !dbg !2455
  %68 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %41, i64 0, i32 1, !dbg !2517
  %69 = bitcast double* %68 to i64*, !dbg !2518
  store i64 %67, i64* %69, align 8, !dbg !2518, !tbaa !1395
  %70 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %41, i64 1, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.chiral_t* %70, metadata !2447, metadata !DIExpression()), !dbg !2455
  %71 = add nuw nsw i64 %40, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %71, metadata !2449, metadata !DIExpression()), !dbg !2455
  %72 = load i32, i32* @n_chi, align 4, !dbg !2521, !tbaa !944
  %73 = sext i32 %72 to i64, !dbg !2487
  %74 = icmp slt i64 %71, %73, !dbg !2487
  br i1 %74, label %39, label %85, !dbg !2490, !llvm.loop !2522

75:                                               ; preds = %11
  %76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 0, !dbg !2524
  call void @llvm.dbg.value(metadata %struct.residue_t* undef, metadata !2446, metadata !DIExpression()), !dbg !2455
  %77 = load %struct.residue_t*, %struct.residue_t** %76, align 8, !dbg !2463, !tbaa !380
  call void @llvm.dbg.value(metadata %struct.residue_t* %77, metadata !2446, metadata !DIExpression()), !dbg !2455
  %78 = icmp eq %struct.residue_t* %77, null, !dbg !2464
  br i1 %78, label %79, label %11, !dbg !2464, !llvm.loop !2525

79:                                               ; preds = %75, %1
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2527, !tbaa !380
  %81 = load i8*, i8** inttoptr (i64 24 to i8**), align 8, !dbg !2528, !tbaa !1281
  %82 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2529
  %83 = load i8*, i8** %82, align 8, !dbg !2529, !tbaa !389
  %84 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %81, i8* %83) #12, !dbg !2530
  br label %85, !dbg !2531

85:                                               ; preds = %66, %28, %79, %23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #10, !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %5) #10, !dbg !2531
  ret void, !dbg !2531
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
!1000 = !DILocation(line: 753, column: 22, scope: !1001, inlinedAt: !556)
!1001 = distinct !DILexicalBlock(scope: !996, file: !15, line: 752, column: 32)
!1002 = !DILocation(line: 753, column: 4, scope: !1001, inlinedAt: !556)
!1003 = !DILocation(line: 753, column: 20, scope: !1001, inlinedAt: !556)
!1004 = !DILocation(line: 754, column: 22, scope: !1001, inlinedAt: !556)
!1005 = !DILocation(line: 754, column: 4, scope: !1001, inlinedAt: !556)
!1006 = !DILocation(line: 754, column: 20, scope: !1001, inlinedAt: !556)
!1007 = !DILocation(line: 752, column: 28, scope: !996, inlinedAt: !556)
!1008 = distinct !{!1008, !999, !1009}
!1009 = !DILocation(line: 755, column: 3, scope: !997, inlinedAt: !556)
!1010 = !DILocation(line: 758, column: 10, scope: !1011, inlinedAt: !556)
!1011 = distinct !DILexicalBlock(scope: !954, file: !15, line: 757, column: 10)
!1012 = !DILocation(line: 667, column: 39, scope: !949, inlinedAt: !556)
!1013 = distinct !{!1013, !952, !1014}
!1014 = !DILocation(line: 759, column: 2, scope: !950, inlinedAt: !556)
!1015 = !DILocation(line: 760, column: 1, scope: !496, inlinedAt: !556)
!1016 = !DILocation(line: 452, column: 2, scope: !557)
!1017 = !DILocation(line: 0, scope: !474, inlinedAt: !488)
!1018 = !DILocation(line: 764, column: 2, scope: !474, inlinedAt: !488)
!1019 = !DILocation(line: 765, column: 2, scope: !474, inlinedAt: !488)
!1020 = !DILocation(line: 766, column: 2, scope: !474, inlinedAt: !488)
!1021 = !DILocation(line: 767, column: 2, scope: !474, inlinedAt: !488)
!1022 = !DILocation(line: 770, column: 10, scope: !474, inlinedAt: !488)
!1023 = !DILocation(line: 771, column: 11, scope: !474, inlinedAt: !488)
!1024 = !DILocation(line: 772, column: 9, scope: !474, inlinedAt: !488)
!1025 = !DILocation(line: 772, column: 2, scope: !474, inlinedAt: !488)
!1026 = !DILocation(line: 0, scope: !1027, inlinedAt: !488)
!1027 = distinct !DILexicalBlock(scope: !625, file: !15, line: 775, column: 13)
!1028 = !DILocation(line: 0, scope: !1029, inlinedAt: !488)
!1029 = distinct !DILexicalBlock(scope: !1027, file: !15, line: 776, column: 39)
!1030 = !DILocation(line: 0, scope: !1031, inlinedAt: !623)
!1031 = distinct !DILexicalBlock(scope: !615, file: !15, line: 984, column: 6)
!1032 = !DILocation(line: 0, scope: !1033, inlinedAt: !623)
!1033 = distinct !DILexicalBlock(scope: !1031, file: !15, line: 986, column: 11)
!1034 = !DILocation(line: 0, scope: !1035, inlinedAt: !623)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !15, line: 992, column: 11)
!1036 = distinct !DILexicalBlock(scope: !615, file: !15, line: 990, column: 6)
!1037 = !DILocation(line: 773, column: 7, scope: !625, inlinedAt: !488)
!1038 = !DILocation(line: 773, column: 36, scope: !625, inlinedAt: !488)
!1039 = !DILocation(line: 773, column: 7, scope: !626, inlinedAt: !488)
!1040 = !DILocation(line: 0, scope: !615, inlinedAt: !623)
!1041 = !DILocation(line: 980, column: 2, scope: !615, inlinedAt: !623)
!1042 = !DILocation(line: 982, column: 6, scope: !1043, inlinedAt: !623)
!1043 = distinct !DILexicalBlock(scope: !615, file: !15, line: 982, column: 6)
!1044 = !DILocation(line: 982, column: 59, scope: !1043, inlinedAt: !623)
!1045 = !DILocation(line: 982, column: 6, scope: !615, inlinedAt: !623)
!1046 = !DILocation(line: 984, column: 6, scope: !1031, inlinedAt: !623)
!1047 = !DILocation(line: 984, column: 6, scope: !615, inlinedAt: !623)
!1048 = !DILocation(line: 987, column: 3, scope: !1033, inlinedAt: !623)
!1049 = !DILocation(line: 988, column: 11, scope: !1050, inlinedAt: !623)
!1050 = distinct !DILexicalBlock(scope: !1033, file: !15, line: 988, column: 11)
!1051 = !DILocation(line: 988, column: 33, scope: !1050, inlinedAt: !623)
!1052 = !DILocation(line: 988, column: 11, scope: !1033, inlinedAt: !623)
!1053 = !DILocation(line: 990, column: 6, scope: !1036, inlinedAt: !623)
!1054 = !DILocation(line: 990, column: 33, scope: !1036, inlinedAt: !623)
!1055 = !DILocation(line: 990, column: 6, scope: !615, inlinedAt: !623)
!1056 = !DILocation(line: 991, column: 22, scope: !1036, inlinedAt: !623)
!1057 = !DILocation(line: 991, column: 3, scope: !1036, inlinedAt: !623)
!1058 = !DILocation(line: 992, column: 11, scope: !1035, inlinedAt: !623)
!1059 = !DILocation(line: 992, column: 11, scope: !1036, inlinedAt: !623)
!1060 = !DILocation(line: 993, column: 22, scope: !1035, inlinedAt: !623)
!1061 = !DILocation(line: 993, column: 3, scope: !1035, inlinedAt: !623)
!1062 = !DILocation(line: 994, column: 1, scope: !615, inlinedAt: !623)
!1063 = !DILocation(line: 775, column: 3, scope: !624, inlinedAt: !488)
!1064 = !DILocation(line: 775, column: 13, scope: !1027, inlinedAt: !488)
!1065 = !DILocation(line: 775, column: 45, scope: !1027, inlinedAt: !488)
!1066 = !DILocation(line: 776, column: 4, scope: !1027, inlinedAt: !488)
!1067 = !DILocation(line: 776, column: 33, scope: !1027, inlinedAt: !488)
!1068 = !DILocation(line: 775, column: 13, scope: !625, inlinedAt: !488)
!1069 = !DILocation(line: 778, column: 4, scope: !1029, inlinedAt: !488)
!1070 = !DILocation(line: 785, column: 8, scope: !1071, inlinedAt: !488)
!1071 = distinct !DILexicalBlock(scope: !1029, file: !15, line: 785, column: 8)
!1072 = !DILocation(line: 785, column: 34, scope: !1071, inlinedAt: !488)
!1073 = !DILocation(line: 785, column: 8, scope: !1029, inlinedAt: !488)
!1074 = !DILocation(line: 786, column: 9, scope: !1075, inlinedAt: !488)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !15, line: 786, column: 9)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !15, line: 785, column: 40)
!1077 = !DILocation(line: 786, column: 17, scope: !1075, inlinedAt: !488)
!1078 = !DILocation(line: 786, column: 9, scope: !1076, inlinedAt: !488)
!1079 = !DILocation(line: 787, column: 6, scope: !1080, inlinedAt: !488)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !15, line: 786, column: 22)
!1081 = !DILocation(line: 788, column: 14, scope: !1080, inlinedAt: !488)
!1082 = !DILocation(line: 789, column: 5, scope: !1080, inlinedAt: !488)
!1083 = !DILocation(line: 790, column: 5, scope: !1076, inlinedAt: !488)
!1084 = !DILocation(line: 791, column: 4, scope: !1076, inlinedAt: !488)
!1085 = !DILocation(line: 792, column: 17, scope: !1029, inlinedAt: !488)
!1086 = !DILocation(line: 792, column: 10, scope: !1029, inlinedAt: !488)
!1087 = !DILocation(line: 793, column: 4, scope: !1029, inlinedAt: !488)
!1088 = !DILocation(line: 794, column: 16, scope: !1029, inlinedAt: !488)
!1089 = !DILocation(line: 794, column: 4, scope: !1029, inlinedAt: !488)
!1090 = !DILocation(line: 795, column: 21, scope: !1029, inlinedAt: !488)
!1091 = !DILocation(line: 795, column: 8, scope: !1029, inlinedAt: !488)
!1092 = !DILocation(line: 795, column: 19, scope: !1029, inlinedAt: !488)
!1093 = !DILocation(line: 796, column: 21, scope: !1029, inlinedAt: !488)
!1094 = !DILocation(line: 796, column: 4, scope: !1029, inlinedAt: !488)
!1095 = !DILocation(line: 796, column: 19, scope: !1029, inlinedAt: !488)
!1096 = !DILocation(line: 797, column: 21, scope: !1029, inlinedAt: !488)
!1097 = !DILocation(line: 797, column: 4, scope: !1029, inlinedAt: !488)
!1098 = !DILocation(line: 797, column: 19, scope: !1029, inlinedAt: !488)
!1099 = !DILocation(line: 798, column: 11, scope: !1029, inlinedAt: !488)
!1100 = !DILocation(line: 799, column: 3, scope: !1029, inlinedAt: !488)
!1101 = distinct !{!1101, !1025, !1102}
!1102 = !DILocation(line: 800, column: 2, scope: !474, inlinedAt: !488)
!1103 = !DILocation(line: 801, column: 6, scope: !1104, inlinedAt: !488)
!1104 = distinct !DILexicalBlock(scope: !474, file: !15, line: 801, column: 6)
!1105 = !DILocation(line: 801, column: 14, scope: !1104, inlinedAt: !488)
!1106 = !DILocation(line: 801, column: 6, scope: !474, inlinedAt: !488)
!1107 = !DILocation(line: 802, column: 3, scope: !1104, inlinedAt: !488)
!1108 = !DILocation(line: 803, column: 1, scope: !474, inlinedAt: !488)
!1109 = !DILocation(line: 0, scope: !603, inlinedAt: !612)
!1110 = !DILocation(line: 807, column: 2, scope: !603, inlinedAt: !612)
!1111 = !DILocation(line: 808, column: 2, scope: !603, inlinedAt: !612)
!1112 = !DILocation(line: 810, column: 2, scope: !603, inlinedAt: !612)
!1113 = !DILocation(line: 812, column: 10, scope: !603, inlinedAt: !612)
!1114 = !DILocation(line: 813, column: 10, scope: !603, inlinedAt: !612)
!1115 = !DILocation(line: 814, column: 9, scope: !603, inlinedAt: !612)
!1116 = !DILocation(line: 814, column: 2, scope: !603, inlinedAt: !612)
!1117 = !DILocation(line: 815, column: 7, scope: !1118, inlinedAt: !612)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !15, line: 815, column: 7)
!1119 = distinct !DILexicalBlock(scope: !603, file: !15, line: 814, column: 45)
!1120 = !DILocation(line: 815, column: 13, scope: !1118, inlinedAt: !612)
!1121 = !DILocation(line: 815, column: 7, scope: !1119, inlinedAt: !612)
!1122 = !DILocation(line: 816, column: 8, scope: !1123, inlinedAt: !612)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !15, line: 816, column: 8)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !15, line: 815, column: 21)
!1125 = !DILocation(line: 816, column: 39, scope: !1123, inlinedAt: !612)
!1126 = !DILocation(line: 816, column: 8, scope: !1124, inlinedAt: !612)
!1127 = !DILocation(line: 817, column: 12, scope: !1128, inlinedAt: !612)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !15, line: 816, column: 45)
!1129 = !DILocation(line: 818, column: 12, scope: !1128, inlinedAt: !612)
!1130 = !DILocation(line: 819, column: 5, scope: !1128, inlinedAt: !612)
!1131 = !DILocation(line: 820, column: 5, scope: !1128, inlinedAt: !612)
!1132 = !DILocation(line: 822, column: 5, scope: !1128, inlinedAt: !612)
!1133 = !DILocation(line: 823, column: 14, scope: !1134, inlinedAt: !612)
!1134 = distinct !DILexicalBlock(scope: !1123, file: !15, line: 823, column: 14)
!1135 = !DILocation(line: 823, column: 22, scope: !1134, inlinedAt: !612)
!1136 = !DILocation(line: 823, column: 14, scope: !1123, inlinedAt: !612)
!1137 = !DILocation(line: 824, column: 5, scope: !1138, inlinedAt: !612)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !15, line: 823, column: 27)
!1139 = !DILocation(line: 825, column: 5, scope: !1138, inlinedAt: !612)
!1140 = !DILocation(line: 826, column: 13, scope: !1138, inlinedAt: !612)
!1141 = !DILocation(line: 827, column: 4, scope: !1138, inlinedAt: !612)
!1142 = !DILocation(line: 828, column: 5, scope: !1134, inlinedAt: !612)
!1143 = !DILocation(line: 830, column: 8, scope: !1144, inlinedAt: !612)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !15, line: 830, column: 8)
!1145 = distinct !DILexicalBlock(scope: !1118, file: !15, line: 829, column: 8)
!1146 = !DILocation(line: 830, column: 42, scope: !1144, inlinedAt: !612)
!1147 = !DILocation(line: 830, column: 8, scope: !1145, inlinedAt: !612)
!1148 = !DILocation(line: 831, column: 12, scope: !1149, inlinedAt: !612)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !15, line: 830, column: 48)
!1150 = !DILocation(line: 832, column: 12, scope: !1149, inlinedAt: !612)
!1151 = !DILocation(line: 833, column: 5, scope: !1149, inlinedAt: !612)
!1152 = !DILocation(line: 834, column: 5, scope: !1149, inlinedAt: !612)
!1153 = !DILocation(line: 836, column: 5, scope: !1149, inlinedAt: !612)
!1154 = !DILocation(line: 838, column: 29, scope: !1155, inlinedAt: !612)
!1155 = distinct !DILexicalBlock(scope: !1144, file: !15, line: 837, column: 9)
!1156 = !DILocation(line: 838, column: 12, scope: !1155, inlinedAt: !612)
!1157 = !DILocation(line: 838, column: 5, scope: !1155, inlinedAt: !612)
!1158 = !DILocation(line: 838, column: 27, scope: !1155, inlinedAt: !612)
!1159 = !DILocation(line: 839, column: 29, scope: !1155, inlinedAt: !612)
!1160 = !DILocation(line: 839, column: 5, scope: !1155, inlinedAt: !612)
!1161 = !DILocation(line: 839, column: 27, scope: !1155, inlinedAt: !612)
!1162 = !DILocation(line: 840, column: 12, scope: !1155, inlinedAt: !612)
!1163 = distinct !{!1163, !1116, !1164}
!1164 = !DILocation(line: 843, column: 2, scope: !603, inlinedAt: !612)
!1165 = !DILocation(line: 844, column: 6, scope: !1166, inlinedAt: !612)
!1166 = distinct !DILexicalBlock(scope: !603, file: !15, line: 844, column: 6)
!1167 = !DILocation(line: 844, column: 14, scope: !1166, inlinedAt: !612)
!1168 = !DILocation(line: 844, column: 6, scope: !603, inlinedAt: !612)
!1169 = !DILocation(line: 845, column: 3, scope: !1166, inlinedAt: !612)
!1170 = !DILocation(line: 846, column: 1, scope: !603, inlinedAt: !612)
!1171 = !DILocation(line: 455, column: 3, scope: !489)
!1172 = !DILocation(line: 456, column: 3, scope: !489)
!1173 = !DILocation(line: 459, column: 6, scope: !472)
!1174 = !DILocation(line: 459, column: 6, scope: !413)
!1175 = !DILocation(line: 0, scope: !454, inlinedAt: !470)
!1176 = !DILocation(line: 939, column: 2, scope: !454, inlinedAt: !470)
!1177 = !DILocation(line: 940, column: 2, scope: !454, inlinedAt: !470)
!1178 = !DILocation(line: 941, column: 2, scope: !454, inlinedAt: !470)
!1179 = !DILocation(line: 942, column: 2, scope: !454, inlinedAt: !470)
!1180 = !DILocation(line: 945, column: 10, scope: !454, inlinedAt: !470)
!1181 = !DILocation(line: 946, column: 11, scope: !454, inlinedAt: !470)
!1182 = !DILocation(line: 947, column: 9, scope: !454, inlinedAt: !470)
!1183 = !DILocation(line: 947, column: 2, scope: !454, inlinedAt: !470)
!1184 = !DILocation(line: 0, scope: !1185, inlinedAt: !470)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !15, line: 950, column: 13)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !15, line: 948, column: 7)
!1187 = distinct !DILexicalBlock(scope: !454, file: !15, line: 947, column: 45)
!1188 = !DILocation(line: 0, scope: !1189, inlinedAt: !470)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !15, line: 951, column: 39)
!1190 = !DILocation(line: 948, column: 7, scope: !1186, inlinedAt: !470)
!1191 = !DILocation(line: 948, column: 33, scope: !1186, inlinedAt: !470)
!1192 = !DILocation(line: 948, column: 7, scope: !1187, inlinedAt: !470)
!1193 = !DILocation(line: 950, column: 13, scope: !1185, inlinedAt: !470)
!1194 = !DILocation(line: 950, column: 45, scope: !1185, inlinedAt: !470)
!1195 = !DILocation(line: 951, column: 4, scope: !1185, inlinedAt: !470)
!1196 = !DILocation(line: 951, column: 33, scope: !1185, inlinedAt: !470)
!1197 = !DILocation(line: 950, column: 13, scope: !1186, inlinedAt: !470)
!1198 = !DILocation(line: 953, column: 4, scope: !1189, inlinedAt: !470)
!1199 = !DILocation(line: 959, column: 8, scope: !1200, inlinedAt: !470)
!1200 = distinct !DILexicalBlock(scope: !1189, file: !15, line: 959, column: 8)
!1201 = !DILocation(line: 959, column: 34, scope: !1200, inlinedAt: !470)
!1202 = !DILocation(line: 959, column: 8, scope: !1189, inlinedAt: !470)
!1203 = !DILocation(line: 960, column: 9, scope: !1204, inlinedAt: !470)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !15, line: 960, column: 9)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !15, line: 959, column: 40)
!1206 = !DILocation(line: 960, column: 17, scope: !1204, inlinedAt: !470)
!1207 = !DILocation(line: 960, column: 9, scope: !1205, inlinedAt: !470)
!1208 = !DILocation(line: 961, column: 6, scope: !1209, inlinedAt: !470)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !15, line: 960, column: 22)
!1210 = !DILocation(line: 962, column: 14, scope: !1209, inlinedAt: !470)
!1211 = !DILocation(line: 963, column: 5, scope: !1209, inlinedAt: !470)
!1212 = !DILocation(line: 964, column: 5, scope: !1205, inlinedAt: !470)
!1213 = !DILocation(line: 965, column: 4, scope: !1205, inlinedAt: !470)
!1214 = !DILocation(line: 966, column: 17, scope: !1189, inlinedAt: !470)
!1215 = !DILocation(line: 966, column: 10, scope: !1189, inlinedAt: !470)
!1216 = !DILocation(line: 967, column: 4, scope: !1189, inlinedAt: !470)
!1217 = !DILocation(line: 968, column: 16, scope: !1189, inlinedAt: !470)
!1218 = !DILocation(line: 968, column: 4, scope: !1189, inlinedAt: !470)
!1219 = !DILocation(line: 969, column: 19, scope: !1189, inlinedAt: !470)
!1220 = !DILocation(line: 969, column: 8, scope: !1189, inlinedAt: !470)
!1221 = !DILocation(line: 969, column: 17, scope: !1189, inlinedAt: !470)
!1222 = !DILocation(line: 970, column: 19, scope: !1189, inlinedAt: !470)
!1223 = !DILocation(line: 970, column: 8, scope: !1189, inlinedAt: !470)
!1224 = !DILocation(line: 970, column: 17, scope: !1189, inlinedAt: !470)
!1225 = !{!920, !921, i64 72}
!1226 = !DILocation(line: 971, column: 11, scope: !1189, inlinedAt: !470)
!1227 = !DILocation(line: 972, column: 3, scope: !1189, inlinedAt: !470)
!1228 = distinct !{!1228, !1183, !1229}
!1229 = !DILocation(line: 973, column: 2, scope: !454, inlinedAt: !470)
!1230 = !DILocation(line: 974, column: 6, scope: !1231, inlinedAt: !470)
!1231 = distinct !DILexicalBlock(scope: !454, file: !15, line: 974, column: 6)
!1232 = !DILocation(line: 974, column: 14, scope: !1231, inlinedAt: !470)
!1233 = !DILocation(line: 974, column: 6, scope: !454, inlinedAt: !470)
!1234 = !DILocation(line: 975, column: 3, scope: !1231, inlinedAt: !470)
!1235 = !DILocation(line: 976, column: 1, scope: !454, inlinedAt: !470)
!1236 = !DILocation(line: 461, column: 3, scope: !471)
!1237 = !DILocation(line: 462, column: 2, scope: !471)
!1238 = !DILocation(line: 464, column: 6, scope: !449)
!1239 = !DILocation(line: 464, column: 6, scope: !413)
!1240 = !DILocation(line: 0, scope: !426, inlinedAt: !447)
!1241 = !DILocation(line: 850, column: 2, scope: !426, inlinedAt: !447)
!1242 = !DILocation(line: 851, column: 2, scope: !426, inlinedAt: !447)
!1243 = !DILocation(line: 854, column: 2, scope: !426, inlinedAt: !447)
!1244 = !DILocation(line: 859, column: 8, scope: !426, inlinedAt: !447)
!1245 = !DILocation(line: 860, column: 10, scope: !426, inlinedAt: !447)
!1246 = !DILocation(line: 861, column: 9, scope: !426, inlinedAt: !447)
!1247 = !DILocation(line: 861, column: 2, scope: !426, inlinedAt: !447)
!1248 = !DILocation(line: 0, scope: !1249, inlinedAt: !447)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !15, line: 877, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !15, line: 871, column: 9)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !15, line: 863, column: 8)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !15, line: 862, column: 21)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !15, line: 862, column: 7)
!1254 = distinct !DILexicalBlock(scope: !426, file: !15, line: 861, column: 45)
!1255 = !DILocation(line: 862, column: 7, scope: !1253, inlinedAt: !447)
!1256 = !DILocation(line: 862, column: 13, scope: !1253, inlinedAt: !447)
!1257 = !DILocation(line: 862, column: 7, scope: !1254, inlinedAt: !447)
!1258 = !DILocation(line: 863, column: 8, scope: !1251, inlinedAt: !447)
!1259 = !DILocation(line: 863, column: 39, scope: !1251, inlinedAt: !447)
!1260 = !DILocation(line: 863, column: 8, scope: !1252, inlinedAt: !447)
!1261 = !DILocation(line: 864, column: 12, scope: !1262, inlinedAt: !447)
!1262 = distinct !DILexicalBlock(scope: !1251, file: !15, line: 863, column: 45)
!1263 = !DILocation(line: 865, column: 12, scope: !1262, inlinedAt: !447)
!1264 = !DILocation(line: 866, column: 5, scope: !1262, inlinedAt: !447)
!1265 = !DILocation(line: 867, column: 14, scope: !1262, inlinedAt: !447)
!1266 = !DILocation(line: 867, column: 5, scope: !1262, inlinedAt: !447)
!1267 = !DILocation(line: 870, column: 5, scope: !1262, inlinedAt: !447)
!1268 = !DILocation(line: 872, column: 9, scope: !1269, inlinedAt: !447)
!1269 = distinct !DILexicalBlock(scope: !1250, file: !15, line: 872, column: 9)
!1270 = !DILocation(line: 872, column: 15, scope: !1269, inlinedAt: !447)
!1271 = !DILocation(line: 872, column: 9, scope: !1250, inlinedAt: !447)
!1272 = !DILocation(line: 873, column: 6, scope: !1273, inlinedAt: !447)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !15, line: 872, column: 20)
!1274 = !DILocation(line: 874, column: 12, scope: !1273, inlinedAt: !447)
!1275 = !DILocation(line: 875, column: 5, scope: !1273, inlinedAt: !447)
!1276 = !DILocation(line: 877, column: 5, scope: !1249, inlinedAt: !447)
!1277 = !DILocation(line: 879, column: 24, scope: !1278, inlinedAt: !447)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !15, line: 879, column: 10)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !15, line: 878, column: 25)
!1280 = distinct !DILexicalBlock(scope: !1249, file: !15, line: 877, column: 5)
!1281 = !{!1282, !381, i64 24}
!1282 = !{!"residue_t", !381, i64 0, !391, i64 8, !391, i64 12, !391, i64 16, !381, i64 24, !381, i64 32, !391, i64 40, !391, i64 44, !391, i64 48, !381, i64 56, !381, i64 64, !391, i64 72, !381, i64 80, !391, i64 88, !381, i64 96, !391, i64 104, !381, i64 112, !381, i64 120}
!1283 = !DILocation(line: 879, column: 11, scope: !1278, inlinedAt: !447)
!1284 = !DILocation(line: 879, column: 10, scope: !1279, inlinedAt: !447)
!1285 = !DILocation(line: 878, column: 17, scope: !1280, inlinedAt: !447)
!1286 = distinct !{!1286, !1276, !1287}
!1287 = !DILocation(line: 883, column: 5, scope: !1249, inlinedAt: !447)
!1288 = !DILocation(line: 885, column: 15, scope: !1289, inlinedAt: !447)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !15, line: 884, column: 16)
!1290 = distinct !DILexicalBlock(scope: !1250, file: !15, line: 884, column: 9)
!1291 = !DILocation(line: 887, column: 20, scope: !1289, inlinedAt: !447)
!1292 = !DILocation(line: 885, column: 6, scope: !1289, inlinedAt: !447)
!1293 = !DILocation(line: 888, column: 6, scope: !1289, inlinedAt: !447)
!1294 = !DILocation(line: 890, column: 5, scope: !1250, inlinedAt: !447)
!1295 = !DILocation(line: 892, column: 3, scope: !1252, inlinedAt: !447)
!1296 = !DILocation(line: 893, column: 4, scope: !1297, inlinedAt: !447)
!1297 = distinct !DILexicalBlock(scope: !1253, file: !15, line: 892, column: 8)
!1298 = !DILocalVariable(name: "res", arg: 1, scope: !1299, file: !15, line: 1202, type: !170)
!1299 = distinct !DISubprogram(name: "findatom", scope: !15, file: !15, line: 1202, type: !1300, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!202, !170, !12}
!1302 = !{!1298, !1303, !1304}
!1303 = !DILocalVariable(name: "aname", arg: 2, scope: !1299, file: !15, line: 1202, type: !12)
!1304 = !DILocalVariable(name: "a", scope: !1299, file: !15, line: 1204, type: !11)
!1305 = !DILocation(line: 0, scope: !1299, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 894, column: 16, scope: !1307, inlinedAt: !447)
!1307 = distinct !DILexicalBlock(scope: !1297, file: !15, line: 894, column: 8)
!1308 = !DILocation(line: 1206, column: 23, scope: !1309, inlinedAt: !1306)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !15, line: 1206, column: 2)
!1310 = distinct !DILexicalBlock(scope: !1299, file: !15, line: 1206, column: 2)
!1311 = !{!1282, !391, i64 104}
!1312 = !DILocation(line: 1206, column: 16, scope: !1309, inlinedAt: !1306)
!1313 = !DILocation(line: 1206, column: 2, scope: !1310, inlinedAt: !1306)
!1314 = !DILocation(line: 1207, column: 21, scope: !1315, inlinedAt: !1306)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !15, line: 1207, column: 7)
!1316 = distinct !DILexicalBlock(scope: !1309, file: !15, line: 1206, column: 38)
!1317 = !DILocation(line: 0, scope: !1315, inlinedAt: !1306)
!1318 = !{!1282, !381, i64 120}
!1319 = distinct !{!1319, !1313, !1320}
!1320 = !DILocation(line: 1209, column: 2, scope: !1310, inlinedAt: !1306)
!1321 = !DILocation(line: 1207, column: 34, scope: !1315, inlinedAt: !1306)
!1322 = !DILocation(line: 1207, column: 8, scope: !1315, inlinedAt: !1306)
!1323 = !DILocation(line: 1206, column: 34, scope: !1309, inlinedAt: !1306)
!1324 = !DILocation(line: 1207, column: 7, scope: !1316, inlinedAt: !1306)
!1325 = !DILocation(line: 895, column: 14, scope: !1326, inlinedAt: !447)
!1326 = distinct !DILexicalBlock(scope: !1307, file: !15, line: 894, column: 41)
!1327 = !DILocation(line: 897, column: 17, scope: !1326, inlinedAt: !447)
!1328 = !DILocation(line: 895, column: 5, scope: !1326, inlinedAt: !447)
!1329 = !DILocation(line: 898, column: 5, scope: !1326, inlinedAt: !447)
!1330 = !DILocation(line: 900, column: 10, scope: !1307, inlinedAt: !447)
!1331 = !DILocation(line: 0, scope: !1299, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 901, column: 16, scope: !1333, inlinedAt: !447)
!1333 = distinct !DILexicalBlock(scope: !1297, file: !15, line: 901, column: 8)
!1334 = !DILocation(line: 1206, column: 2, scope: !1310, inlinedAt: !1332)
!1335 = !DILocation(line: 1206, column: 16, scope: !1309, inlinedAt: !1332)
!1336 = distinct !{!1336, !1334, !1337}
!1337 = !DILocation(line: 1209, column: 2, scope: !1310, inlinedAt: !1332)
!1338 = !DILocation(line: 1207, column: 34, scope: !1315, inlinedAt: !1332)
!1339 = !DILocation(line: 1207, column: 8, scope: !1315, inlinedAt: !1332)
!1340 = !DILocation(line: 1206, column: 34, scope: !1309, inlinedAt: !1332)
!1341 = !DILocation(line: 1207, column: 7, scope: !1316, inlinedAt: !1332)
!1342 = !DILocation(line: 902, column: 14, scope: !1343, inlinedAt: !447)
!1343 = distinct !DILexicalBlock(scope: !1333, file: !15, line: 901, column: 41)
!1344 = !DILocation(line: 904, column: 17, scope: !1343, inlinedAt: !447)
!1345 = !DILocation(line: 902, column: 5, scope: !1343, inlinedAt: !447)
!1346 = !DILocation(line: 905, column: 5, scope: !1343, inlinedAt: !447)
!1347 = !DILocation(line: 907, column: 10, scope: !1333, inlinedAt: !447)
!1348 = !DILocation(line: 0, scope: !1299, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 908, column: 16, scope: !1350, inlinedAt: !447)
!1350 = distinct !DILexicalBlock(scope: !1297, file: !15, line: 908, column: 8)
!1351 = !DILocation(line: 1206, column: 2, scope: !1310, inlinedAt: !1349)
!1352 = !DILocation(line: 1206, column: 16, scope: !1309, inlinedAt: !1349)
!1353 = distinct !{!1353, !1351, !1354}
!1354 = !DILocation(line: 1209, column: 2, scope: !1310, inlinedAt: !1349)
!1355 = !DILocation(line: 1207, column: 34, scope: !1315, inlinedAt: !1349)
!1356 = !DILocation(line: 1207, column: 8, scope: !1315, inlinedAt: !1349)
!1357 = !DILocation(line: 1206, column: 34, scope: !1309, inlinedAt: !1349)
!1358 = !DILocation(line: 1207, column: 7, scope: !1316, inlinedAt: !1349)
!1359 = !DILocation(line: 909, column: 14, scope: !1360, inlinedAt: !447)
!1360 = distinct !DILexicalBlock(scope: !1350, file: !15, line: 908, column: 41)
!1361 = !DILocation(line: 911, column: 17, scope: !1360, inlinedAt: !447)
!1362 = !DILocation(line: 909, column: 5, scope: !1360, inlinedAt: !447)
!1363 = !DILocation(line: 912, column: 5, scope: !1360, inlinedAt: !447)
!1364 = !DILocation(line: 0, scope: !1299, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 915, column: 16, scope: !1366, inlinedAt: !447)
!1366 = distinct !DILexicalBlock(scope: !1297, file: !15, line: 915, column: 8)
!1367 = !DILocation(line: 1206, column: 16, scope: !1309, inlinedAt: !1365)
!1368 = !DILocation(line: 1206, column: 2, scope: !1310, inlinedAt: !1365)
!1369 = distinct !{!1369, !1368, !1370}
!1370 = !DILocation(line: 1209, column: 2, scope: !1310, inlinedAt: !1365)
!1371 = !DILocation(line: 1207, column: 34, scope: !1315, inlinedAt: !1365)
!1372 = !DILocation(line: 1207, column: 8, scope: !1315, inlinedAt: !1365)
!1373 = !DILocation(line: 1206, column: 34, scope: !1309, inlinedAt: !1365)
!1374 = !DILocation(line: 1207, column: 7, scope: !1316, inlinedAt: !1365)
!1375 = !DILocation(line: 916, column: 14, scope: !1376, inlinedAt: !447)
!1376 = distinct !DILexicalBlock(scope: !1366, file: !15, line: 915, column: 41)
!1377 = !DILocation(line: 918, column: 17, scope: !1376, inlinedAt: !447)
!1378 = !DILocation(line: 916, column: 5, scope: !1376, inlinedAt: !447)
!1379 = !DILocation(line: 919, column: 5, scope: !1376, inlinedAt: !447)
!1380 = !DILocation(line: 914, column: 10, scope: !1350, inlinedAt: !447)
!1381 = !DILocation(line: 921, column: 10, scope: !1366, inlinedAt: !447)
!1382 = !DILocation(line: 922, column: 15, scope: !1297, inlinedAt: !447)
!1383 = !DILocation(line: 922, column: 10, scope: !1297, inlinedAt: !447)
!1384 = !DILocation(line: 923, column: 9, scope: !1297, inlinedAt: !447)
!1385 = !DILocation(line: 924, column: 4, scope: !1297, inlinedAt: !447)
!1386 = !DILocation(line: 924, column: 20, scope: !1297, inlinedAt: !447)
!1387 = !DILocation(line: 925, column: 4, scope: !1297, inlinedAt: !447)
!1388 = !DILocation(line: 925, column: 20, scope: !1297, inlinedAt: !447)
!1389 = !DILocation(line: 926, column: 4, scope: !1297, inlinedAt: !447)
!1390 = !DILocation(line: 926, column: 20, scope: !1297, inlinedAt: !447)
!1391 = !DILocation(line: 927, column: 4, scope: !1297, inlinedAt: !447)
!1392 = !DILocation(line: 927, column: 20, scope: !1297, inlinedAt: !447)
!1393 = !DILocation(line: 928, column: 8, scope: !1297, inlinedAt: !447)
!1394 = !DILocation(line: 928, column: 15, scope: !1297, inlinedAt: !447)
!1395 = !{!1396, !921, i64 16}
!1396 = !{!"chiral_t", !382, i64 0, !921, i64 16}
!1397 = distinct !{!1397, !1247, !1398}
!1398 = !DILocation(line: 930, column: 2, scope: !426, inlinedAt: !447)
!1399 = !DILocation(line: 931, column: 6, scope: !1400, inlinedAt: !447)
!1400 = distinct !DILexicalBlock(scope: !426, file: !15, line: 931, column: 6)
!1401 = !DILocation(line: 931, column: 12, scope: !1400, inlinedAt: !447)
!1402 = !DILocation(line: 931, column: 6, scope: !426, inlinedAt: !447)
!1403 = !DILocation(line: 932, column: 3, scope: !1404, inlinedAt: !447)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !15, line: 931, column: 17)
!1405 = !DILocation(line: 933, column: 9, scope: !1404, inlinedAt: !447)
!1406 = !DILocation(line: 934, column: 2, scope: !1404, inlinedAt: !447)
!1407 = !DILocation(line: 935, column: 1, scope: !426, inlinedAt: !447)
!1408 = !DILocation(line: 466, column: 3, scope: !448)
!1409 = !DILocation(line: 467, column: 2, scope: !448)
!1410 = !DILocation(line: 470, column: 1, scope: !413)
!1411 = distinct !DISubprogram(name: "setreslibkind", scope: !15, file: !15, line: 103, type: !1412, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!11, !12, !12}
!1414 = !{!1415, !1416, !1417, !1418}
!1415 = !DILocalVariable(name: "reslib", arg: 1, scope: !1411, file: !15, line: 103, type: !12)
!1416 = !DILocalVariable(name: "kind", arg: 2, scope: !1411, file: !15, line: 103, type: !12)
!1417 = !DILocalVariable(name: "nhp", scope: !1411, file: !15, line: 105, type: !12)
!1418 = !DILocalVariable(name: "rlp", scope: !1411, file: !15, line: 106, type: !299)
!1419 = !DILocation(line: 0, scope: !1411)
!1420 = !DILocation(line: 0, scope: !370, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 108, column: 14, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1411, file: !15, line: 108, column: 6)
!1423 = !DILocation(line: 0, scope: !379, inlinedAt: !1421)
!1424 = !DILocation(line: 426, column: 2, scope: !379, inlinedAt: !1421)
!1425 = !DILocation(line: 427, column: 20, scope: !386, inlinedAt: !1421)
!1426 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !1421)
!1427 = !DILocation(line: 427, column: 38, scope: !386, inlinedAt: !1421)
!1428 = !DILocation(line: 427, column: 7, scope: !387, inlinedAt: !1421)
!1429 = !DILocation(line: 426, column: 38, scope: !388, inlinedAt: !1421)
!1430 = distinct !{!1430, !1424, !1431}
!1431 = !DILocation(line: 430, column: 2, scope: !379, inlinedAt: !1421)
!1432 = !DILocation(line: 109, column: 16, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !15, line: 109, column: 8)
!1434 = distinct !DILexicalBlock(scope: !1422, file: !15, line: 108, column: 48)
!1435 = !DILocation(line: 109, column: 40, scope: !1433)
!1436 = !DILocation(line: 109, column: 8, scope: !1434)
!1437 = !DILocation(line: 110, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !15, line: 109, column: 49)
!1439 = !DILocation(line: 110, column: 6, scope: !1438)
!1440 = !DILocation(line: 112, column: 6, scope: !1438)
!1441 = !DILocation(line: 0, scope: !1422)
!1442 = !DILocation(line: 115, column: 7, scope: !1411)
!1443 = !DILocation(line: 115, column: 17, scope: !1411)
!1444 = !DILocation(line: 116, column: 8, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1411, file: !15, line: 116, column: 7)
!1446 = !DILocation(line: 116, column: 30, scope: !1445)
!1447 = !DILocation(line: 116, column: 34, scope: !1445)
!1448 = !DILocation(line: 116, column: 7, scope: !1411)
!1449 = !DILocation(line: 118, column: 13, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !15, line: 118, column: 12)
!1451 = !DILocation(line: 118, column: 35, scope: !1450)
!1452 = !DILocation(line: 118, column: 39, scope: !1450)
!1453 = !DILocation(line: 118, column: 12, scope: !1445)
!1454 = !DILocation(line: 120, column: 13, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !15, line: 120, column: 12)
!1456 = !DILocation(line: 120, column: 34, scope: !1455)
!1457 = !DILocation(line: 120, column: 38, scope: !1455)
!1458 = !DILocation(line: 120, column: 12, scope: !1450)
!1459 = !DILocation(line: 0, scope: !1445)
!1460 = !DILocation(line: 123, column: 9, scope: !1411)
!1461 = !DILocation(line: 123, column: 22, scope: !1411)
!1462 = distinct !DISubprogram(name: "getresidue", scope: !15, file: !15, line: 126, type: !1463, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!170, !12, !12}
!1465 = !{!1466, !1467, !1468, !1469, !1473, !1474, !1475}
!1466 = !DILocalVariable(name: "rname", arg: 1, scope: !1462, file: !15, line: 126, type: !12)
!1467 = !DILocalVariable(name: "reslib", arg: 2, scope: !1462, file: !15, line: 126, type: !12)
!1468 = !DILocalVariable(name: "nhp", scope: !1462, file: !15, line: 128, type: !12)
!1469 = !DILocalVariable(name: "leapname", scope: !1462, file: !15, line: 128, type: !1470)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 40, elements: !1471)
!1471 = !{!1472}
!1472 = !DISubrange(count: 5)
!1473 = !DILocalVariable(name: "rlp", scope: !1462, file: !15, line: 129, type: !299)
!1474 = !DILocalVariable(name: "res", scope: !1462, file: !15, line: 130, type: !170)
!1475 = !DILocalVariable(name: "nres", scope: !1462, file: !15, line: 130, type: !170)
!1476 = !DILocation(line: 0, scope: !1462)
!1477 = !DILocation(line: 128, column: 2, scope: !1462)
!1478 = !DILocation(line: 128, column: 13, scope: !1462)
!1479 = !DILocation(line: 0, scope: !370, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 132, column: 14, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1462, file: !15, line: 132, column: 6)
!1482 = !DILocation(line: 0, scope: !379, inlinedAt: !1480)
!1483 = !DILocation(line: 426, column: 2, scope: !379, inlinedAt: !1480)
!1484 = !DILocation(line: 427, column: 20, scope: !386, inlinedAt: !1480)
!1485 = !DILocation(line: 427, column: 7, scope: !386, inlinedAt: !1480)
!1486 = !DILocation(line: 427, column: 38, scope: !386, inlinedAt: !1480)
!1487 = !DILocation(line: 427, column: 7, scope: !387, inlinedAt: !1480)
!1488 = !DILocation(line: 426, column: 38, scope: !388, inlinedAt: !1480)
!1489 = distinct !{!1489, !1483, !1490}
!1490 = !DILocation(line: 430, column: 2, scope: !379, inlinedAt: !1480)
!1491 = !DILocation(line: 133, column: 15, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !15, line: 133, column: 7)
!1493 = distinct !DILexicalBlock(scope: !1481, file: !15, line: 132, column: 48)
!1494 = !DILocation(line: 133, column: 39, scope: !1492)
!1495 = !DILocation(line: 133, column: 7, scope: !1493)
!1496 = !DILocation(line: 134, column: 4, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !15, line: 133, column: 48)
!1498 = !DILocation(line: 0, scope: !1481)
!1499 = !DILocation(line: 138, column: 2, scope: !1462)
!1500 = !DILocation(line: 139, column: 12, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1462, file: !15, line: 139, column: 7)
!1502 = !DILocation(line: 139, column: 7, scope: !1462)
!1503 = !DILocation(line: 140, column: 14, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !15, line: 140, column: 13)
!1505 = distinct !DILexicalBlock(scope: !1501, file: !15, line: 139, column: 33)
!1506 = !DILocation(line: 140, column: 13, scope: !1505)
!1507 = !DILocation(line: 141, column: 4, scope: !1504)
!1508 = !DILocation(line: 142, column: 14, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !15, line: 142, column: 13)
!1510 = !DILocation(line: 142, column: 13, scope: !1504)
!1511 = !DILocation(line: 143, column: 4, scope: !1509)
!1512 = !DILocation(line: 144, column: 14, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !15, line: 144, column: 13)
!1514 = !DILocation(line: 144, column: 13, scope: !1509)
!1515 = !DILocation(line: 145, column: 4, scope: !1513)
!1516 = !DILocation(line: 146, column: 14, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !15, line: 146, column: 13)
!1518 = !DILocation(line: 146, column: 13, scope: !1513)
!1519 = !DILocation(line: 147, column: 4, scope: !1517)
!1520 = !DILocation(line: 150, column: 14, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !15, line: 150, column: 13)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !15, line: 149, column: 38)
!1523 = distinct !DILexicalBlock(scope: !1501, file: !15, line: 149, column: 12)
!1524 = !DILocation(line: 150, column: 13, scope: !1522)
!1525 = !DILocation(line: 151, column: 4, scope: !1521)
!1526 = !DILocation(line: 152, column: 14, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1521, file: !15, line: 152, column: 13)
!1528 = !DILocation(line: 152, column: 13, scope: !1521)
!1529 = !DILocation(line: 153, column: 4, scope: !1527)
!1530 = !DILocation(line: 154, column: 14, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !15, line: 154, column: 13)
!1532 = !DILocation(line: 154, column: 13, scope: !1527)
!1533 = !DILocation(line: 155, column: 4, scope: !1531)
!1534 = !DILocation(line: 156, column: 14, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !15, line: 156, column: 13)
!1536 = !DILocation(line: 156, column: 13, scope: !1531)
!1537 = !DILocation(line: 157, column: 4, scope: !1535)
!1538 = !DILocation(line: 159, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1462, file: !15, line: 159, column: 7)
!1540 = !DILocation(line: 159, column: 28, scope: !1539)
!1541 = !DILocation(line: 159, column: 7, scope: !1462)
!1542 = !DILocation(line: 161, column: 12, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !15, line: 161, column: 12)
!1544 = !DILocation(line: 161, column: 33, scope: !1543)
!1545 = !DILocation(line: 161, column: 12, scope: !1539)
!1546 = !DILocation(line: 0, scope: !1539)
!1547 = !DILocation(line: 163, column: 18, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1462, file: !15, line: 163, column: 2)
!1549 = !DILocation(line: 0, scope: !1548)
!1550 = !DILocation(line: 163, column: 2, scope: !1548)
!1551 = !DILocation(line: 164, column: 21, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !15, line: 164, column: 6)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !15, line: 163, column: 53)
!1554 = distinct !DILexicalBlock(scope: !1548, file: !15, line: 163, column: 2)
!1555 = !DILocation(line: 164, column: 8, scope: !1552)
!1556 = !DILocation(line: 164, column: 40, scope: !1552)
!1557 = !DILocation(line: 164, column: 47, scope: !1552)
!1558 = !DILocation(line: 165, column: 6, scope: !1552)
!1559 = !DILocation(line: 165, column: 41, scope: !1552)
!1560 = !DILocation(line: 164, column: 6, scope: !1553)
!1561 = !DILocation(line: 163, column: 45, scope: !1554)
!1562 = distinct !{!1562, !1550, !1563}
!1563 = !DILocation(line: 167, column: 2, scope: !1548)
!1564 = !DILocation(line: 170, column: 3, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !15, line: 169, column: 19)
!1566 = distinct !DILexicalBlock(scope: !1462, file: !15, line: 169, column: 6)
!1567 = !DILocation(line: 171, column: 3, scope: !1565)
!1568 = !DILocation(line: 172, column: 3, scope: !1565)
!1569 = !DILocation(line: 175, column: 9, scope: !1462)
!1570 = !DILocation(line: 177, column: 2, scope: !1462)
!1571 = !DILocation(line: 178, column: 1, scope: !1462)
!1572 = distinct !DISubprogram(name: "copyresidue", scope: !15, file: !15, line: 180, type: !1573, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!170, !170}
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1576 = !DILocalVariable(name: "res", arg: 1, scope: !1572, file: !15, line: 180, type: !170)
!1577 = !DILocalVariable(name: "a", scope: !1572, file: !15, line: 182, type: !11)
!1578 = !DILocalVariable(name: "b", scope: !1572, file: !15, line: 182, type: !11)
!1579 = !DILocalVariable(name: "c", scope: !1572, file: !15, line: 182, type: !11)
!1580 = !DILocalVariable(name: "i", scope: !1572, file: !15, line: 182, type: !11)
!1581 = !DILocalVariable(name: "aip", scope: !1572, file: !15, line: 183, type: !229)
!1582 = !DILocalVariable(name: "nres", scope: !1572, file: !15, line: 184, type: !170)
!1583 = !DILocalVariable(name: "ap", scope: !1572, file: !15, line: 185, type: !202)
!1584 = !DILocalVariable(name: "anp", scope: !1572, file: !15, line: 186, type: !12)
!1585 = !DILocalVariable(name: "rnp", scope: !1572, file: !15, line: 186, type: !12)
!1586 = !DILocalVariable(name: "bp", scope: !1572, file: !15, line: 187, type: !184)
!1587 = !DILocalVariable(name: "cp", scope: !1572, file: !15, line: 188, type: !191)
!1588 = !DILocation(line: 0, scope: !1572)
!1589 = !DILocation(line: 190, column: 26, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 190, column: 5)
!1591 = !DILocation(line: 190, column: 13, scope: !1590)
!1592 = !DILocation(line: 191, column: 3, scope: !1590)
!1593 = !DILocation(line: 190, column: 5, scope: !1572)
!1594 = !DILocation(line: 193, column: 42, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !15, line: 192, column: 2)
!1596 = !DILocation(line: 193, column: 3, scope: !1595)
!1597 = !DILocation(line: 194, column: 3, scope: !1595)
!1598 = !DILocation(line: 195, column: 3, scope: !1595)
!1599 = !DILocation(line: 198, column: 37, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 198, column: 6)
!1601 = !DILocation(line: 198, column: 32, scope: !1600)
!1602 = !DILocation(line: 198, column: 45, scope: !1600)
!1603 = !DILocation(line: 198, column: 25, scope: !1600)
!1604 = !DILocation(line: 198, column: 13, scope: !1600)
!1605 = !DILocation(line: 199, column: 3, scope: !1600)
!1606 = !DILocation(line: 198, column: 6, scope: !1572)
!1607 = !DILocation(line: 201, column: 51, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1600, file: !15, line: 200, column: 2)
!1609 = !DILocation(line: 201, column: 3, scope: !1608)
!1610 = !DILocation(line: 202, column: 3, scope: !1608)
!1611 = !DILocation(line: 203, column: 3, scope: !1608)
!1612 = !DILocation(line: 206, column: 43, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 206, column: 6)
!1614 = !DILocation(line: 206, column: 23, scope: !1613)
!1615 = !DILocation(line: 206, column: 58, scope: !1613)
!1616 = !DILocation(line: 206, column: 6, scope: !1572)
!1617 = !DILocation(line: 209, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !15, line: 207, column: 2)
!1619 = !DILocation(line: 208, column: 3, scope: !1618)
!1620 = !DILocation(line: 210, column: 3, scope: !1618)
!1621 = !DILocation(line: 211, column: 3, scope: !1618)
!1622 = !DILocation(line: 214, column: 11, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 214, column: 6)
!1624 = !{!1282, !391, i64 72}
!1625 = !DILocation(line: 214, column: 23, scope: !1623)
!1626 = !DILocation(line: 214, column: 6, scope: !1572)
!1627 = !DILocation(line: 216, column: 11, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !15, line: 215, column: 7)
!1629 = distinct !DILexicalBlock(scope: !1623, file: !15, line: 214, column: 28)
!1630 = !DILocation(line: 216, column: 27, scope: !1628)
!1631 = !DILocation(line: 216, column: 4, scope: !1628)
!1632 = !DILocation(line: 215, column: 14, scope: !1628)
!1633 = !DILocation(line: 217, column: 4, scope: !1628)
!1634 = !DILocation(line: 215, column: 7, scope: !1629)
!1635 = !DILocation(line: 220, column: 37, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1628, file: !15, line: 218, column: 3)
!1637 = !DILocation(line: 219, column: 4, scope: !1636)
!1638 = !DILocation(line: 221, column: 4, scope: !1636)
!1639 = !DILocation(line: 222, column: 4, scope: !1636)
!1640 = !DILocation(line: 0, scope: !1623)
!1641 = !DILocation(line: 227, column: 11, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 227, column: 6)
!1643 = !{!1282, !391, i64 88}
!1644 = !DILocation(line: 227, column: 21, scope: !1642)
!1645 = !DILocation(line: 227, column: 6, scope: !1572)
!1646 = !DILocation(line: 229, column: 11, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !15, line: 228, column: 7)
!1648 = distinct !DILexicalBlock(scope: !1642, file: !15, line: 227, column: 26)
!1649 = !DILocation(line: 229, column: 25, scope: !1647)
!1650 = !DILocation(line: 229, column: 4, scope: !1647)
!1651 = !DILocation(line: 228, column: 14, scope: !1647)
!1652 = !DILocation(line: 230, column: 4, scope: !1647)
!1653 = !DILocation(line: 228, column: 7, scope: !1648)
!1654 = !DILocation(line: 233, column: 37, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1647, file: !15, line: 231, column: 3)
!1656 = !DILocation(line: 232, column: 4, scope: !1655)
!1657 = !DILocation(line: 234, column: 4, scope: !1655)
!1658 = !DILocation(line: 235, column: 4, scope: !1655)
!1659 = !DILocation(line: 0, scope: !1642)
!1660 = !DILocation(line: 240, column: 8, scope: !1572)
!1661 = !DILocation(line: 240, column: 15, scope: !1572)
!1662 = !{!1282, !381, i64 0}
!1663 = !DILocation(line: 242, column: 37, scope: !1572)
!1664 = !DILocation(line: 242, column: 25, scope: !1572)
!1665 = !DILocation(line: 242, column: 47, scope: !1572)
!1666 = !DILocation(line: 242, column: 18, scope: !1572)
!1667 = !DILocation(line: 243, column: 10, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 243, column: 6)
!1669 = !DILocation(line: 243, column: 6, scope: !1572)
!1670 = !DILocation(line: 244, column: 12, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !15, line: 243, column: 19)
!1672 = !DILocation(line: 244, column: 3, scope: !1671)
!1673 = !DILocation(line: 246, column: 3, scope: !1671)
!1674 = !DILocation(line: 248, column: 2, scope: !1572)
!1675 = !DILocation(line: 249, column: 8, scope: !1572)
!1676 = !DILocation(line: 249, column: 18, scope: !1572)
!1677 = !DILocation(line: 251, column: 37, scope: !1572)
!1678 = !{!1282, !381, i64 32}
!1679 = !DILocation(line: 251, column: 25, scope: !1572)
!1680 = !DILocation(line: 251, column: 45, scope: !1572)
!1681 = !DILocation(line: 251, column: 18, scope: !1572)
!1682 = !DILocation(line: 252, column: 10, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 252, column: 6)
!1684 = !DILocation(line: 252, column: 6, scope: !1572)
!1685 = !DILocation(line: 253, column: 12, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1683, file: !15, line: 252, column: 19)
!1687 = !DILocation(line: 253, column: 3, scope: !1686)
!1688 = !DILocation(line: 254, column: 3, scope: !1686)
!1689 = !DILocation(line: 256, column: 2, scope: !1572)
!1690 = !DILocation(line: 257, column: 8, scope: !1572)
!1691 = !DILocation(line: 257, column: 16, scope: !1572)
!1692 = !DILocation(line: 259, column: 21, scope: !1572)
!1693 = !{!1282, !391, i64 8}
!1694 = !DILocation(line: 259, column: 8, scope: !1572)
!1695 = !DILocation(line: 259, column: 14, scope: !1572)
!1696 = !DILocation(line: 260, column: 8, scope: !1572)
!1697 = !DILocation(line: 260, column: 18, scope: !1572)
!1698 = !{!1282, !391, i64 12}
!1699 = !DILocation(line: 261, column: 8, scope: !1572)
!1700 = !DILocation(line: 261, column: 17, scope: !1572)
!1701 = !{!1282, !391, i64 16}
!1702 = !DILocation(line: 262, column: 22, scope: !1572)
!1703 = !{!1282, !391, i64 40}
!1704 = !DILocation(line: 262, column: 8, scope: !1572)
!1705 = !DILocation(line: 262, column: 15, scope: !1572)
!1706 = !DILocation(line: 263, column: 8, scope: !1572)
!1707 = !DILocation(line: 263, column: 17, scope: !1572)
!1708 = !{!1282, !381, i64 56}
!1709 = !DILocation(line: 264, column: 21, scope: !1572)
!1710 = !DILocation(line: 264, column: 8, scope: !1572)
!1711 = !DILocation(line: 264, column: 19, scope: !1572)
!1712 = !{!1282, !381, i64 64}
!1713 = !DILocation(line: 265, column: 27, scope: !1572)
!1714 = !DILocation(line: 265, column: 8, scope: !1572)
!1715 = !DILocation(line: 265, column: 20, scope: !1572)
!1716 = !DILocation(line: 266, column: 8, scope: !1572)
!1717 = !DILocation(line: 266, column: 19, scope: !1572)
!1718 = !{!1282, !381, i64 80}
!1719 = !DILocation(line: 267, column: 16, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !15, line: 267, column: 2)
!1721 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 267, column: 2)
!1722 = !DILocation(line: 267, column: 2, scope: !1721)
!1723 = !DILocation(line: 0, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !15, line: 267, column: 41)
!1725 = !DILocation(line: 268, column: 32, scope: !1724)
!1726 = !DILocation(line: 268, column: 3, scope: !1724)
!1727 = !DILocation(line: 268, column: 30, scope: !1724)
!1728 = !DILocation(line: 269, column: 32, scope: !1724)
!1729 = !DILocation(line: 269, column: 3, scope: !1724)
!1730 = !DILocation(line: 269, column: 30, scope: !1724)
!1731 = !DILocation(line: 267, column: 37, scope: !1720)
!1732 = distinct !{!1732, !1722, !1733}
!1733 = !DILocation(line: 270, column: 2, scope: !1721)
!1734 = !DILocation(line: 271, column: 25, scope: !1572)
!1735 = !DILocation(line: 271, column: 8, scope: !1572)
!1736 = !DILocation(line: 271, column: 18, scope: !1572)
!1737 = !DILocation(line: 272, column: 8, scope: !1572)
!1738 = !DILocation(line: 272, column: 17, scope: !1572)
!1739 = !{!1282, !381, i64 96}
!1740 = !DILocation(line: 273, column: 37, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !15, line: 273, column: 2)
!1742 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 273, column: 2)
!1743 = !DILocation(line: 273, column: 2, scope: !1742)
!1744 = !DILocation(line: 0, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1741, file: !15, line: 273, column: 66)
!1746 = !DILocation(line: 274, column: 3, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1745, file: !15, line: 274, column: 3)
!1748 = !DILocation(line: 275, column: 22, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1747, file: !15, line: 274, column: 3)
!1750 = !DILocation(line: 275, column: 4, scope: !1749)
!1751 = !DILocation(line: 275, column: 20, scope: !1749)
!1752 = !DILocation(line: 274, column: 23, scope: !1749)
!1753 = !DILocation(line: 274, column: 17, scope: !1749)
!1754 = distinct !{!1754, !1746, !1755}
!1755 = !DILocation(line: 275, column: 51, scope: !1747)
!1756 = !DILocation(line: 276, column: 35, scope: !1745)
!1757 = !DILocation(line: 276, column: 7, scope: !1745)
!1758 = !DILocation(line: 276, column: 14, scope: !1745)
!1759 = !DILocation(line: 273, column: 56, scope: !1741)
!1760 = !DILocation(line: 273, column: 62, scope: !1741)
!1761 = !DILocation(line: 273, column: 44, scope: !1741)
!1762 = distinct !{!1762, !1743, !1763}
!1763 = !DILocation(line: 277, column: 2, scope: !1742)
!1764 = !DILocation(line: 278, column: 22, scope: !1572)
!1765 = !{!1282, !391, i64 44}
!1766 = !DILocation(line: 278, column: 8, scope: !1572)
!1767 = !DILocation(line: 278, column: 15, scope: !1572)
!1768 = !DILocation(line: 279, column: 26, scope: !1572)
!1769 = !{!1282, !391, i64 48}
!1770 = !DILocation(line: 279, column: 8, scope: !1572)
!1771 = !DILocation(line: 279, column: 19, scope: !1572)
!1772 = !DILocation(line: 280, column: 24, scope: !1572)
!1773 = !DILocation(line: 280, column: 8, scope: !1572)
!1774 = !DILocation(line: 280, column: 17, scope: !1572)
!1775 = !DILocation(line: 281, column: 8, scope: !1572)
!1776 = !DILocation(line: 281, column: 17, scope: !1572)
!1777 = !{!1282, !381, i64 112}
!1778 = !DILocation(line: 282, column: 11, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 282, column: 6)
!1780 = !DILocation(line: 282, column: 6, scope: !1779)
!1781 = !DILocation(line: 0, scope: !1779)
!1782 = !DILocation(line: 282, column: 6, scope: !1572)
!1783 = !DILocation(line: 283, column: 3, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !15, line: 283, column: 3)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !15, line: 282, column: 21)
!1786 = !DILocation(line: 0, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !15, line: 283, column: 3)
!1788 = !DILocation(line: 286, column: 3, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !15, line: 286, column: 3)
!1790 = distinct !DILexicalBlock(scope: !1779, file: !15, line: 285, column: 7)
!1791 = !DILocation(line: 0, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !15, line: 286, column: 3)
!1793 = !DILocation(line: 284, column: 26, scope: !1787)
!1794 = !DILocation(line: 284, column: 4, scope: !1787)
!1795 = !DILocation(line: 284, column: 24, scope: !1787)
!1796 = !DILocation(line: 283, column: 35, scope: !1787)
!1797 = !DILocation(line: 283, column: 17, scope: !1787)
!1798 = distinct !{!1798, !1783, !1799}
!1799 = !DILocation(line: 284, column: 43, scope: !1784)
!1800 = !DILocation(line: 287, column: 4, scope: !1792)
!1801 = !DILocation(line: 287, column: 24, scope: !1792)
!1802 = !DILocation(line: 286, column: 35, scope: !1792)
!1803 = !DILocation(line: 286, column: 17, scope: !1792)
!1804 = distinct !{!1804, !1788, !1805}
!1805 = !DILocation(line: 287, column: 26, scope: !1789)
!1806 = !DILocation(line: 289, column: 8, scope: !1572)
!1807 = !DILocation(line: 289, column: 16, scope: !1572)
!1808 = !DILocation(line: 290, column: 2, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1572, file: !15, line: 290, column: 2)
!1810 = !DILocation(line: 0, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !15, line: 290, column: 38)
!1812 = distinct !DILexicalBlock(scope: !1809, file: !15, line: 290, column: 2)
!1813 = !DILocation(line: 292, column: 37, scope: !1811)
!1814 = !DILocation(line: 292, column: 48, scope: !1811)
!1815 = !DILocation(line: 292, column: 24, scope: !1811)
!1816 = !DILocation(line: 292, column: 60, scope: !1811)
!1817 = !DILocation(line: 292, column: 17, scope: !1811)
!1818 = !DILocation(line: 293, column: 11, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1811, file: !15, line: 293, column: 7)
!1820 = !DILocation(line: 293, column: 7, scope: !1811)
!1821 = !DILocation(line: 294, column: 13, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !15, line: 293, column: 20)
!1823 = !DILocation(line: 294, column: 4, scope: !1822)
!1824 = !DILocation(line: 295, column: 4, scope: !1822)
!1825 = !DILocation(line: 297, column: 34, scope: !1811)
!1826 = !DILocation(line: 297, column: 3, scope: !1811)
!1827 = !DILocation(line: 298, column: 11, scope: !1811)
!1828 = !DILocation(line: 298, column: 22, scope: !1811)
!1829 = !DILocation(line: 299, column: 11, scope: !1811)
!1830 = !DILocation(line: 299, column: 22, scope: !1811)
!1831 = !{!920, !381, i64 8}
!1832 = !DILocation(line: 300, column: 25, scope: !1811)
!1833 = !DILocation(line: 300, column: 38, scope: !1811)
!1834 = !{!920, !391, i64 16}
!1835 = !DILocation(line: 300, column: 11, scope: !1811)
!1836 = !DILocation(line: 300, column: 18, scope: !1811)
!1837 = !DILocation(line: 301, column: 42, scope: !1811)
!1838 = !{!920, !391, i64 20}
!1839 = !DILocation(line: 301, column: 11, scope: !1811)
!1840 = !DILocation(line: 301, column: 22, scope: !1811)
!1841 = !DILocation(line: 302, column: 3, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1811, file: !15, line: 302, column: 3)
!1843 = !DILocation(line: 303, column: 25, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1842, file: !15, line: 302, column: 3)
!1845 = !DILocation(line: 303, column: 4, scope: !1844)
!1846 = !DILocation(line: 303, column: 23, scope: !1844)
!1847 = !DILocation(line: 302, column: 38, scope: !1844)
!1848 = !DILocation(line: 302, column: 18, scope: !1844)
!1849 = distinct !{!1849, !1841, !1850}
!1850 = !DILocation(line: 303, column: 52, scope: !1842)
!1851 = !DILocation(line: 304, column: 11, scope: !1811)
!1852 = !DILocation(line: 304, column: 22, scope: !1811)
!1853 = !{!920, !381, i64 56}
!1854 = !DILocation(line: 305, column: 42, scope: !1811)
!1855 = !DILocation(line: 305, column: 11, scope: !1811)
!1856 = !DILocation(line: 305, column: 22, scope: !1811)
!1857 = !DILocation(line: 306, column: 42, scope: !1811)
!1858 = !DILocation(line: 306, column: 11, scope: !1811)
!1859 = !DILocation(line: 306, column: 22, scope: !1811)
!1860 = !DILocation(line: 307, column: 42, scope: !1811)
!1861 = !{!920, !921, i64 80}
!1862 = !DILocation(line: 307, column: 11, scope: !1811)
!1863 = !DILocation(line: 307, column: 22, scope: !1811)
!1864 = !DILocation(line: 308, column: 42, scope: !1811)
!1865 = !{!920, !921, i64 88}
!1866 = !DILocation(line: 308, column: 11, scope: !1811)
!1867 = !DILocation(line: 308, column: 22, scope: !1811)
!1868 = !DILocation(line: 309, column: 11, scope: !1811)
!1869 = !DILocation(line: 309, column: 22, scope: !1811)
!1870 = !{!920, !381, i64 96}
!1871 = !DILocation(line: 310, column: 42, scope: !1811)
!1872 = !{!920, !391, i64 104}
!1873 = !DILocation(line: 310, column: 11, scope: !1811)
!1874 = !DILocation(line: 310, column: 22, scope: !1811)
!1875 = !DILocation(line: 311, column: 42, scope: !1811)
!1876 = !{!920, !921, i64 112}
!1877 = !DILocation(line: 311, column: 11, scope: !1811)
!1878 = !DILocation(line: 311, column: 22, scope: !1811)
!1879 = !DILocation(line: 312, column: 42, scope: !1811)
!1880 = !{!920, !921, i64 120}
!1881 = !DILocation(line: 312, column: 11, scope: !1811)
!1882 = !DILocation(line: 312, column: 22, scope: !1811)
!1883 = !DILocation(line: 313, column: 42, scope: !1811)
!1884 = !{!920, !391, i64 128}
!1885 = !DILocation(line: 313, column: 11, scope: !1811)
!1886 = !DILocation(line: 313, column: 22, scope: !1811)
!1887 = !DILocation(line: 314, column: 42, scope: !1811)
!1888 = !{!920, !391, i64 132}
!1889 = !DILocation(line: 314, column: 11, scope: !1811)
!1890 = !DILocation(line: 314, column: 22, scope: !1811)
!1891 = !DILocation(line: 315, column: 11, scope: !1811)
!1892 = !DILocation(line: 315, column: 22, scope: !1811)
!1893 = !{!920, !381, i64 136}
!1894 = !DILocation(line: 316, column: 24, scope: !1811)
!1895 = !DILocation(line: 316, column: 11, scope: !1811)
!1896 = !DILocation(line: 316, column: 22, scope: !1811)
!1897 = !DILocation(line: 317, column: 24, scope: !1811)
!1898 = !DILocation(line: 317, column: 3, scope: !1811)
!1899 = !DILocation(line: 317, column: 22, scope: !1811)
!1900 = !DILocation(line: 318, column: 24, scope: !1811)
!1901 = !DILocation(line: 318, column: 3, scope: !1811)
!1902 = !DILocation(line: 318, column: 22, scope: !1811)
!1903 = !DILocation(line: 319, column: 42, scope: !1811)
!1904 = !{!920, !921, i64 168}
!1905 = !DILocation(line: 319, column: 11, scope: !1811)
!1906 = !DILocation(line: 319, column: 22, scope: !1811)
!1907 = !DILocation(line: 290, column: 34, scope: !1812)
!1908 = !DILocation(line: 290, column: 23, scope: !1812)
!1909 = !DILocation(line: 290, column: 16, scope: !1812)
!1910 = distinct !{!1910, !1808, !1911}
!1911 = !DILocation(line: 320, column: 2, scope: !1809)
!1912 = !DILocation(line: 323, column: 1, scope: !1572)
!1913 = distinct !DISubprogram(name: "copystrand", scope: !15, file: !15, line: 325, type: !1914, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1916)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!54, !54}
!1916 = !{!1917, !1918, !1919, !1920}
!1917 = !DILocalVariable(name: "str", arg: 1, scope: !1913, file: !15, line: 325, type: !54)
!1918 = !DILocalVariable(name: "newstrand", scope: !1913, file: !15, line: 327, type: !54)
!1919 = !DILocalVariable(name: "namebuf", scope: !1913, file: !15, line: 328, type: !12)
!1920 = !DILocalVariable(name: "resctr", scope: !1913, file: !15, line: 329, type: !11)
!1921 = !DILocation(line: 0, scope: !1913)
!1922 = !DILocation(line: 331, column: 33, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1913, file: !15, line: 331, column: 5)
!1924 = !DILocation(line: 331, column: 19, scope: !1923)
!1925 = !DILocation(line: 331, column: 64, scope: !1923)
!1926 = !DILocation(line: 331, column: 5, scope: !1913)
!1927 = !DILocation(line: 332, column: 41, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1923, file: !15, line: 331, column: 72)
!1929 = !{!1930, !381, i64 0}
!1930 = !{!"strand_t", !381, i64 0, !391, i64 8, !391, i64 12, !381, i64 16, !381, i64 24, !391, i64 32, !391, i64 36, !381, i64 40}
!1931 = !DILocation(line: 332, column: 3, scope: !1928)
!1932 = !DILocation(line: 333, column: 3, scope: !1928)
!1933 = !DILocation(line: 334, column: 3, scope: !1928)
!1934 = !DILocation(line: 338, column: 16, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1913, file: !15, line: 337, column: 13)
!1936 = !{!1930, !391, i64 32}
!1937 = !DILocation(line: 338, column: 11, scope: !1935)
!1938 = !DILocation(line: 338, column: 28, scope: !1935)
!1939 = !DILocation(line: 338, column: 3, scope: !1935)
!1940 = !DILocation(line: 337, column: 26, scope: !1935)
!1941 = !DILocation(line: 337, column: 37, scope: !1935)
!1942 = !{!1930, !381, i64 40}
!1943 = !DILocation(line: 338, column: 56, scope: !1935)
!1944 = !DILocation(line: 337, column: 13, scope: !1913)
!1945 = !DILocation(line: 340, column: 17, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1935, file: !15, line: 339, column: 2)
!1947 = !DILocation(line: 341, column: 17, scope: !1946)
!1948 = !DILocation(line: 344, column: 51, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1913, file: !15, line: 344, column: 6)
!1950 = !DILocation(line: 344, column: 38, scope: !1949)
!1951 = !DILocation(line: 344, column: 66, scope: !1949)
!1952 = !DILocation(line: 344, column: 28, scope: !1949)
!1953 = !DILocation(line: 345, column: 24, scope: !1949)
!1954 = !DILocation(line: 344, column: 6, scope: !1913)
!1955 = !DILocation(line: 347, column: 3, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1949, file: !15, line: 346, column: 2)
!1957 = !DILocation(line: 348, column: 3, scope: !1956)
!1958 = !DILocation(line: 349, column: 3, scope: !1956)
!1959 = !DILocation(line: 351, column: 13, scope: !1913)
!1960 = !DILocation(line: 351, column: 26, scope: !1913)
!1961 = !DILocation(line: 352, column: 2, scope: !1913)
!1962 = !DILocation(line: 353, column: 32, scope: !1913)
!1963 = !{!1930, !391, i64 8}
!1964 = !DILocation(line: 353, column: 13, scope: !1913)
!1965 = !DILocation(line: 353, column: 25, scope: !1913)
!1966 = !DILocation(line: 354, column: 27, scope: !1913)
!1967 = !{!1930, !391, i64 12}
!1968 = !DILocation(line: 354, column: 13, scope: !1913)
!1969 = !DILocation(line: 354, column: 20, scope: !1913)
!1970 = !DILocation(line: 355, column: 13, scope: !1913)
!1971 = !DILocation(line: 356, column: 20, scope: !1913)
!1972 = !DILocation(line: 357, column: 32, scope: !1913)
!1973 = !DILocation(line: 357, column: 13, scope: !1913)
!1974 = !DILocation(line: 357, column: 25, scope: !1913)
!1975 = !DILocation(line: 358, column: 13, scope: !1913)
!1976 = !DILocation(line: 358, column: 24, scope: !1913)
!1977 = !{!1930, !391, i64 36}
!1978 = !DILocation(line: 359, column: 34, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !15, line: 359, column: 9)
!1980 = distinct !DILexicalBlock(scope: !1913, file: !15, line: 359, column: 9)
!1981 = !DILocation(line: 359, column: 9, scope: !1980)
!1982 = !DILocation(line: 0, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !15, line: 359, column: 65)
!1984 = !DILocation(line: 361, column: 22, scope: !1983)
!1985 = !DILocation(line: 361, column: 17, scope: !1983)
!1986 = !DILocation(line: 361, column: 4, scope: !1983)
!1987 = !DILocation(line: 360, column: 28, scope: !1983)
!1988 = !DILocation(line: 360, column: 17, scope: !1983)
!1989 = !DILocation(line: 360, column: 49, scope: !1983)
!1990 = !DILocation(line: 362, column: 28, scope: !1983)
!1991 = !DILocation(line: 362, column: 17, scope: !1983)
!1992 = !DILocation(line: 362, column: 50, scope: !1983)
!1993 = !DILocation(line: 362, column: 59, scope: !1983)
!1994 = !DILocation(line: 363, column: 29, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1983, file: !15, line: 363, column: 22)
!1996 = !DILocation(line: 363, column: 22, scope: !1983)
!1997 = !DILocation(line: 365, column: 5, scope: !1995)
!1998 = !DILocation(line: 364, column: 55, scope: !1995)
!1999 = !DILocation(line: 364, column: 25, scope: !1995)
!2000 = !DILocation(line: 364, column: 69, scope: !1995)
!2001 = !DILocation(line: 359, column: 60, scope: !1979)
!2002 = !DILocation(line: 359, column: 41, scope: !1979)
!2003 = distinct !{!2003, !1981, !2004}
!2004 = !DILocation(line: 366, column: 9, scope: !1980)
!2005 = !DILocation(line: 368, column: 1, scope: !1913)
!2006 = distinct !DISubprogram(name: "copymolecule", scope: !15, file: !15, line: 370, type: !2007, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!233, !233}
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016}
!2010 = !DILocalVariable(name: "mol", arg: 1, scope: !2006, file: !15, line: 370, type: !233)
!2011 = !DILocalVariable(name: "row", scope: !2006, file: !15, line: 372, type: !11)
!2012 = !DILocalVariable(name: "col", scope: !2006, file: !15, line: 372, type: !11)
!2013 = !DILocalVariable(name: "strptr", scope: !2006, file: !15, line: 373, type: !54)
!2014 = !DILocalVariable(name: "newstr", scope: !2006, file: !15, line: 373, type: !54)
!2015 = !DILocalVariable(name: "nextstr", scope: !2006, file: !15, line: 373, type: !54)
!2016 = !DILocalVariable(name: "newmol", scope: !2006, file: !15, line: 374, type: !233)
!2017 = !DILocation(line: 0, scope: !2006)
!2018 = !DILocation(line: 376, column: 9, scope: !2006)
!2019 = !DILocation(line: 378, column: 39, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2006, file: !15, line: 378, column: 12)
!2021 = !DILocation(line: 378, column: 23, scope: !2020)
!2022 = !DILocation(line: 378, column: 72, scope: !2020)
!2023 = !DILocation(line: 378, column: 12, scope: !2006)
!2024 = !DILocation(line: 379, column: 17, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2020, file: !15, line: 378, column: 80)
!2026 = !DILocation(line: 380, column: 17, scope: !2025)
!2027 = !DILocation(line: 381, column: 17, scope: !2025)
!2028 = !DILocation(line: 384, column: 35, scope: !2006)
!2029 = !{!2030, !391, i64 96}
!2030 = !{!"molecule_t", !382, i64 0, !391, i64 96, !381, i64 104, !391, i64 112, !391, i64 116, !391, i64 120, !381, i64 128}
!2031 = !DILocation(line: 384, column: 17, scope: !2006)
!2032 = !DILocation(line: 384, column: 28, scope: !2006)
!2033 = !DILocation(line: 385, column: 36, scope: !2006)
!2034 = !{!2030, !391, i64 112}
!2035 = !DILocation(line: 385, column: 17, scope: !2006)
!2036 = !DILocation(line: 385, column: 29, scope: !2006)
!2037 = !DILocation(line: 386, column: 33, scope: !2006)
!2038 = !{!2030, !391, i64 116}
!2039 = !DILocation(line: 386, column: 17, scope: !2006)
!2040 = !DILocation(line: 386, column: 26, scope: !2006)
!2041 = !DILocation(line: 387, column: 33, scope: !2006)
!2042 = !{!2030, !391, i64 120}
!2043 = !DILocation(line: 387, column: 17, scope: !2006)
!2044 = !DILocation(line: 387, column: 26, scope: !2006)
!2045 = !DILocation(line: 389, column: 19, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2006, file: !15, line: 389, column: 14)
!2047 = !{!2030, !381, i64 128}
!2048 = !DILocation(line: 389, column: 25, scope: !2046)
!2049 = !DILocation(line: 389, column: 14, scope: !2006)
!2050 = !DILocation(line: 390, column: 33, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !15, line: 389, column: 35)
!2052 = !DILocation(line: 391, column: 9, scope: !2051)
!2053 = !DILocation(line: 0, scope: !2046)
!2054 = !DILocation(line: 395, column: 9, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2006, file: !15, line: 395, column: 9)
!2056 = !DILocation(line: 0, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !15, line: 396, column: 50)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !15, line: 396, column: 17)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !15, line: 396, column: 17)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !15, line: 395, column: 42)
!2061 = distinct !DILexicalBlock(scope: !2055, file: !15, line: 395, column: 9)
!2062 = !DILocation(line: 397, column: 51, scope: !2057)
!2063 = !DILocation(line: 395, column: 28, scope: !2061)
!2064 = distinct !{!2064, !2054, !2065}
!2065 = !DILocation(line: 399, column: 9, scope: !2055)
!2066 = !DILocation(line: 401, column: 23, scope: !2006)
!2067 = !{!2030, !381, i64 104}
!2068 = !DILocation(line: 402, column: 21, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2006, file: !15, line: 402, column: 14)
!2070 = !DILocation(line: 402, column: 14, scope: !2006)
!2071 = !DILocation(line: 403, column: 26, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !15, line: 402, column: 30)
!2073 = !DILocation(line: 404, column: 25, scope: !2072)
!2074 = !DILocation(line: 404, column: 36, scope: !2072)
!2075 = !{!1930, !381, i64 16}
!2076 = !DILocation(line: 405, column: 25, scope: !2072)
!2077 = !DILocation(line: 405, column: 35, scope: !2072)
!2078 = !DILocation(line: 406, column: 34, scope: !2072)
!2079 = !{!1930, !381, i64 24}
!2080 = !DILocation(line: 409, column: 24, scope: !2006)
!2081 = !DILocation(line: 409, column: 9, scope: !2006)
!2082 = !DILocation(line: 410, column: 27, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2006, file: !15, line: 409, column: 34)
!2084 = !DILocation(line: 411, column: 22, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2083, file: !15, line: 411, column: 22)
!2086 = !DILocation(line: 411, column: 22, scope: !2083)
!2087 = !DILocation(line: 412, column: 33, scope: !2085)
!2088 = !DILocation(line: 412, column: 40, scope: !2085)
!2089 = !DILocation(line: 412, column: 25, scope: !2085)
!2090 = !DILocation(line: 413, column: 26, scope: !2083)
!2091 = !DILocation(line: 413, column: 37, scope: !2083)
!2092 = !DILocation(line: 415, column: 34, scope: !2083)
!2093 = distinct !{!2093, !2081, !2094}
!2094 = !DILocation(line: 416, column: 9, scope: !2006)
!2095 = !DILocation(line: 418, column: 9, scope: !2006)
!2096 = !DILocation(line: 419, column: 9, scope: !2006)
!2097 = !DILocation(line: 420, column: 1, scope: !2006)
!2098 = distinct !DISubprogram(name: "addres2reslib", scope: !15, file: !15, line: 996, type: !2099, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !299}
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2102 = !DILocalVariable(name: "rlp", arg: 1, scope: !2098, file: !15, line: 996, type: !299)
!2103 = !DILocalVariable(name: "res", scope: !2098, file: !15, line: 998, type: !170)
!2104 = !DILocalVariable(name: "ap", scope: !2098, file: !15, line: 999, type: !202)
!2105 = !DILocalVariable(name: "anp", scope: !2098, file: !15, line: 1000, type: !12)
!2106 = !DILocalVariable(name: "rnp", scope: !2098, file: !15, line: 1000, type: !12)
!2107 = !DILocalVariable(name: "a", scope: !2098, file: !15, line: 1001, type: !11)
!2108 = !DILocalVariable(name: "i", scope: !2098, file: !15, line: 1001, type: !11)
!2109 = !DILocation(line: 0, scope: !2098)
!2110 = !DILocation(line: 1003, column: 29, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2098, file: !15, line: 1003, column: 6)
!2112 = !DILocation(line: 1003, column: 61, scope: !2111)
!2113 = !DILocation(line: 1003, column: 6, scope: !2098)
!2114 = !DILocation(line: 1005, column: 18, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !15, line: 1003, column: 70)
!2116 = !DILocation(line: 1004, column: 3, scope: !2115)
!2117 = !DILocation(line: 1006, column: 3, scope: !2115)
!2118 = !DILocation(line: 1007, column: 3, scope: !2115)
!2119 = !DILocation(line: 1009, column: 33, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2098, file: !15, line: 1009, column: 6)
!2121 = !DILocation(line: 1009, column: 41, scope: !2120)
!2122 = !DILocation(line: 1009, column: 25, scope: !2120)
!2123 = !DILocation(line: 1009, column: 64, scope: !2120)
!2124 = !DILocation(line: 1009, column: 6, scope: !2098)
!2125 = !DILocation(line: 1011, column: 18, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !15, line: 1009, column: 73)
!2127 = !DILocation(line: 1010, column: 3, scope: !2126)
!2128 = !DILocation(line: 1012, column: 3, scope: !2126)
!2129 = !DILocation(line: 1013, column: 3, scope: !2126)
!2130 = !DILocation(line: 1015, column: 21, scope: !2098)
!2131 = !{!390, !381, i64 24}
!2132 = !DILocation(line: 1015, column: 14, scope: !2098)
!2133 = !DILocation(line: 1016, column: 16, scope: !2098)
!2134 = !DILocation(line: 1018, column: 26, scope: !2098)
!2135 = !DILocation(line: 1018, column: 44, scope: !2098)
!2136 = !DILocation(line: 1018, column: 18, scope: !2098)
!2137 = !DILocation(line: 1019, column: 10, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2098, file: !15, line: 1019, column: 6)
!2139 = !DILocation(line: 1019, column: 6, scope: !2098)
!2140 = !DILocation(line: 1020, column: 12, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !15, line: 1019, column: 19)
!2142 = !DILocation(line: 1020, column: 3, scope: !2141)
!2143 = !DILocation(line: 1022, column: 3, scope: !2141)
!2144 = !DILocation(line: 1024, column: 2, scope: !2098)
!2145 = !DILocation(line: 1025, column: 7, scope: !2098)
!2146 = !DILocation(line: 1025, column: 17, scope: !2098)
!2147 = !DILocation(line: 1027, column: 18, scope: !2098)
!2148 = !DILocation(line: 1028, column: 10, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2098, file: !15, line: 1028, column: 6)
!2150 = !DILocation(line: 1028, column: 6, scope: !2098)
!2151 = !DILocation(line: 1029, column: 12, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !15, line: 1028, column: 19)
!2153 = !DILocation(line: 1029, column: 3, scope: !2152)
!2154 = !DILocation(line: 1031, column: 3, scope: !2152)
!2155 = !DILocation(line: 1033, column: 2, scope: !2098)
!2156 = !DILocation(line: 1034, column: 7, scope: !2098)
!2157 = !DILocation(line: 1034, column: 15, scope: !2098)
!2158 = !DILocation(line: 1036, column: 7, scope: !2098)
!2159 = !DILocation(line: 1036, column: 13, scope: !2098)
!2160 = !DILocation(line: 1037, column: 7, scope: !2098)
!2161 = !DILocation(line: 1037, column: 17, scope: !2098)
!2162 = !DILocation(line: 1038, column: 7, scope: !2098)
!2163 = !DILocation(line: 1038, column: 16, scope: !2098)
!2164 = !DILocation(line: 1039, column: 7, scope: !2098)
!2165 = !DILocation(line: 1039, column: 14, scope: !2098)
!2166 = !DILocation(line: 1040, column: 21, scope: !2098)
!2167 = !DILocation(line: 1040, column: 7, scope: !2098)
!2168 = !DILocation(line: 1040, column: 14, scope: !2098)
!2169 = !DILocation(line: 1041, column: 25, scope: !2098)
!2170 = !DILocation(line: 1041, column: 7, scope: !2098)
!2171 = !DILocation(line: 1041, column: 18, scope: !2098)
!2172 = !DILocation(line: 1042, column: 7, scope: !2098)
!2173 = !DILocation(line: 1045, column: 7, scope: !2098)
!2174 = !DILocation(line: 1045, column: 18, scope: !2098)
!2175 = !DILocation(line: 1046, column: 7, scope: !2098)
!2176 = !DILocation(line: 1046, column: 17, scope: !2098)
!2177 = !DILocation(line: 1047, column: 7, scope: !2098)
!2178 = !DILocation(line: 1047, column: 16, scope: !2098)
!2179 = !DILocation(line: 1043, column: 18, scope: !2098)
!2180 = !DILocation(line: 1048, column: 18, scope: !2098)
!2181 = !DILocation(line: 1048, column: 7, scope: !2098)
!2182 = !DILocation(line: 1048, column: 16, scope: !2098)
!2183 = !DILocation(line: 1049, column: 7, scope: !2098)
!2184 = !DILocation(line: 1049, column: 16, scope: !2098)
!2185 = !DILocation(line: 1050, column: 7, scope: !2098)
!2186 = !DILocation(line: 1050, column: 15, scope: !2098)
!2187 = !DILocation(line: 1051, column: 16, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !15, line: 1051, column: 2)
!2189 = distinct !DILexicalBlock(scope: !2098, file: !15, line: 1051, column: 2)
!2190 = !DILocation(line: 1051, column: 2, scope: !2189)
!2191 = !DILocation(line: 1052, column: 46, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !15, line: 1051, column: 32)
!2193 = !DILocation(line: 1052, column: 27, scope: !2192)
!2194 = !DILocation(line: 1052, column: 59, scope: !2192)
!2195 = !DILocation(line: 1052, column: 19, scope: !2192)
!2196 = !DILocation(line: 1053, column: 11, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2192, file: !15, line: 1053, column: 7)
!2198 = !DILocation(line: 1053, column: 7, scope: !2192)
!2199 = !DILocation(line: 1054, column: 13, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2197, file: !15, line: 1053, column: 20)
!2201 = !DILocation(line: 1054, column: 4, scope: !2200)
!2202 = !DILocation(line: 1056, column: 4, scope: !2200)
!2203 = !DILocation(line: 1059, column: 3, scope: !2192)
!2204 = !DILocation(line: 1060, column: 8, scope: !2192)
!2205 = !DILocation(line: 1060, column: 21, scope: !2192)
!2206 = !DILocation(line: 1060, column: 32, scope: !2192)
!2207 = !DILocation(line: 1061, column: 21, scope: !2192)
!2208 = !DILocation(line: 1061, column: 32, scope: !2192)
!2209 = !DILocation(line: 1062, column: 21, scope: !2192)
!2210 = !DILocation(line: 1062, column: 32, scope: !2192)
!2211 = !DILocation(line: 1063, column: 3, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2192, file: !15, line: 1063, column: 3)
!2213 = !DILocation(line: 1064, column: 37, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2212, file: !15, line: 1063, column: 3)
!2215 = !DILocation(line: 1065, column: 21, scope: !2192)
!2216 = !DILocation(line: 1065, column: 32, scope: !2192)
!2217 = !DILocation(line: 1066, column: 45, scope: !2192)
!2218 = !DILocation(line: 1066, column: 21, scope: !2192)
!2219 = !DILocation(line: 1066, column: 32, scope: !2192)
!2220 = !DILocation(line: 1067, column: 45, scope: !2192)
!2221 = !DILocation(line: 1067, column: 21, scope: !2192)
!2222 = !DILocation(line: 1067, column: 32, scope: !2192)
!2223 = !DILocation(line: 1068, column: 45, scope: !2192)
!2224 = !DILocation(line: 1068, column: 21, scope: !2192)
!2225 = !DILocation(line: 1068, column: 32, scope: !2192)
!2226 = !DILocation(line: 1069, column: 45, scope: !2192)
!2227 = !DILocation(line: 1069, column: 21, scope: !2192)
!2228 = !DILocation(line: 1069, column: 32, scope: !2192)
!2229 = !DILocation(line: 1070, column: 45, scope: !2192)
!2230 = !DILocation(line: 1070, column: 21, scope: !2192)
!2231 = !DILocation(line: 1070, column: 32, scope: !2192)
!2232 = !DILocation(line: 1071, column: 45, scope: !2192)
!2233 = !DILocation(line: 1071, column: 21, scope: !2192)
!2234 = !DILocation(line: 1071, column: 32, scope: !2192)
!2235 = !DILocation(line: 1072, column: 45, scope: !2192)
!2236 = !DILocation(line: 1072, column: 21, scope: !2192)
!2237 = !DILocation(line: 1072, column: 32, scope: !2192)
!2238 = !DILocation(line: 1073, column: 21, scope: !2192)
!2239 = !DILocation(line: 1073, column: 32, scope: !2192)
!2240 = !DILocation(line: 1074, column: 21, scope: !2192)
!2241 = !DILocation(line: 1074, column: 32, scope: !2192)
!2242 = !DILocation(line: 1075, column: 3, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2192, file: !15, line: 1075, column: 3)
!2244 = !DILocation(line: 1076, column: 35, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2243, file: !15, line: 1075, column: 3)
!2246 = !DILocation(line: 1076, column: 4, scope: !2245)
!2247 = !DILocation(line: 1076, column: 33, scope: !2245)
!2248 = !DILocation(line: 1075, column: 24, scope: !2245)
!2249 = !DILocation(line: 1075, column: 17, scope: !2245)
!2250 = distinct !{!2250, !2242, !2251}
!2251 = !DILocation(line: 1076, column: 55, scope: !2243)
!2252 = !DILocation(line: 1077, column: 45, scope: !2192)
!2253 = !DILocation(line: 1077, column: 21, scope: !2192)
!2254 = !DILocation(line: 1077, column: 32, scope: !2192)
!2255 = !DILocation(line: 1051, column: 28, scope: !2188)
!2256 = !DILocation(line: 1051, column: 18, scope: !2188)
!2257 = distinct !{!2257, !2190, !2258}
!2258 = !DILocation(line: 1078, column: 2, scope: !2189)
!2259 = !DILocation(line: 1079, column: 1, scope: !2098)
!2260 = distinct !DISubprogram(name: "addbonds2reslib", scope: !15, file: !15, line: 1081, type: !2099, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2261 = !{!2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270}
!2262 = !DILocalVariable(name: "rlp", arg: 1, scope: !2260, file: !15, line: 1081, type: !299)
!2263 = !DILocalVariable(name: "res", scope: !2260, file: !15, line: 1083, type: !170)
!2264 = !DILocalVariable(name: "bp", scope: !2260, file: !15, line: 1084, type: !184)
!2265 = !DILocalVariable(name: "b", scope: !2260, file: !15, line: 1085, type: !11)
!2266 = !DILocalVariable(name: "a", scope: !2260, file: !15, line: 1086, type: !11)
!2267 = !DILocalVariable(name: "ai", scope: !2260, file: !15, line: 1086, type: !11)
!2268 = !DILocalVariable(name: "aj", scope: !2260, file: !15, line: 1086, type: !11)
!2269 = !DILocalVariable(name: "api", scope: !2260, file: !15, line: 1087, type: !202)
!2270 = !DILocalVariable(name: "apj", scope: !2260, file: !15, line: 1087, type: !202)
!2271 = !DILocation(line: 0, scope: !2260)
!2272 = !DILocation(line: 1089, column: 18, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2260, file: !15, line: 1089, column: 2)
!2274 = !DILocation(line: 0, scope: !2273)
!2275 = !DILocation(line: 1089, column: 2, scope: !2273)
!2276 = !DILocation(line: 1090, column: 20, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !15, line: 1090, column: 7)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !15, line: 1089, column: 52)
!2279 = distinct !DILexicalBlock(scope: !2273, file: !15, line: 1089, column: 2)
!2280 = !DILocation(line: 1090, column: 7, scope: !2277)
!2281 = !DILocation(line: 1090, column: 41, scope: !2277)
!2282 = !DILocation(line: 1090, column: 7, scope: !2278)
!2283 = !DILocation(line: 1092, column: 13, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !15, line: 1091, column: 8)
!2285 = distinct !DILexicalBlock(scope: !2277, file: !15, line: 1090, column: 47)
!2286 = !DILocation(line: 1092, column: 21, scope: !2284)
!2287 = !DILocation(line: 1092, column: 5, scope: !2284)
!2288 = !DILocation(line: 1091, column: 15, scope: !2284)
!2289 = !DILocation(line: 1093, column: 5, scope: !2284)
!2290 = !DILocation(line: 1091, column: 8, scope: !2285)
!2291 = !DILocation(line: 1099, column: 18, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !15, line: 1099, column: 4)
!2293 = distinct !DILexicalBlock(scope: !2285, file: !15, line: 1099, column: 4)
!2294 = !DILocation(line: 1099, column: 4, scope: !2293)
!2295 = !DILocation(line: 0, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !15, line: 1099, column: 34)
!2297 = !DILocation(line: 1094, column: 5, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2284, file: !15, line: 1093, column: 14)
!2299 = !DILocation(line: 1096, column: 5, scope: !2298)
!2300 = !DILocation(line: 1097, column: 5, scope: !2298)
!2301 = !DILocation(line: 1100, column: 25, scope: !2296)
!2302 = !DILocation(line: 1100, column: 10, scope: !2296)
!2303 = !DILocation(line: 1100, column: 23, scope: !2296)
!2304 = !DILocation(line: 1101, column: 25, scope: !2296)
!2305 = !DILocation(line: 1101, column: 10, scope: !2296)
!2306 = !DILocation(line: 1101, column: 23, scope: !2296)
!2307 = !DILocation(line: 1102, column: 7, scope: !2296)
!2308 = !DILocation(line: 1103, column: 7, scope: !2296)
!2309 = !DILocation(line: 1104, column: 12, scope: !2296)
!2310 = !DILocation(line: 1105, column: 5, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2296, file: !15, line: 1105, column: 5)
!2312 = !DILocation(line: 1105, column: 38, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2311, file: !15, line: 1105, column: 5)
!2314 = !DILocation(line: 1105, column: 19, scope: !2313)
!2315 = distinct !{!2315, !2310, !2316}
!2316 = !DILocation(line: 1113, column: 5, scope: !2311)
!2317 = !DILocation(line: 1106, column: 10, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !15, line: 1106, column: 10)
!2319 = distinct !DILexicalBlock(scope: !2313, file: !15, line: 1105, column: 42)
!2320 = !DILocation(line: 1106, column: 30, scope: !2318)
!2321 = !DILocation(line: 1106, column: 10, scope: !2319)
!2322 = !DILocation(line: 1108, column: 35, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !15, line: 1108, column: 15)
!2324 = !DILocation(line: 1108, column: 15, scope: !2318)
!2325 = !DILocation(line: 1109, column: 27, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !15, line: 1108, column: 45)
!2327 = !DILocation(line: 1110, column: 12, scope: !2326)
!2328 = !DILocation(line: 1110, column: 22, scope: !2326)
!2329 = !DILocation(line: 1111, column: 7, scope: !2326)
!2330 = !DILocation(line: 1114, column: 12, scope: !2296)
!2331 = !DILocation(line: 1115, column: 5, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2296, file: !15, line: 1115, column: 5)
!2333 = !DILocation(line: 1115, column: 38, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2332, file: !15, line: 1115, column: 5)
!2335 = !DILocation(line: 1115, column: 19, scope: !2334)
!2336 = distinct !{!2336, !2331, !2337}
!2337 = !DILocation(line: 1123, column: 5, scope: !2332)
!2338 = !DILocation(line: 1116, column: 10, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !15, line: 1116, column: 10)
!2340 = distinct !DILexicalBlock(scope: !2334, file: !15, line: 1115, column: 42)
!2341 = !DILocation(line: 1116, column: 30, scope: !2339)
!2342 = !DILocation(line: 1116, column: 10, scope: !2340)
!2343 = !DILocation(line: 1118, column: 35, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2339, file: !15, line: 1118, column: 15)
!2345 = !DILocation(line: 1118, column: 15, scope: !2339)
!2346 = !DILocation(line: 1119, column: 27, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !15, line: 1118, column: 45)
!2348 = !DILocation(line: 1120, column: 12, scope: !2347)
!2349 = !DILocation(line: 1120, column: 22, scope: !2347)
!2350 = !DILocation(line: 1121, column: 7, scope: !2347)
!2351 = !DILocation(line: 1099, column: 30, scope: !2292)
!2352 = !DILocation(line: 1099, column: 20, scope: !2292)
!2353 = distinct !{!2353, !2294, !2354}
!2354 = !DILocation(line: 1124, column: 4, scope: !2293)
!2355 = !DILocation(line: 1125, column: 9, scope: !2285)
!2356 = !DILocation(line: 1125, column: 21, scope: !2285)
!2357 = !DILocation(line: 1126, column: 9, scope: !2285)
!2358 = !DILocation(line: 1126, column: 20, scope: !2285)
!2359 = !DILocation(line: 1127, column: 4, scope: !2285)
!2360 = !DILocation(line: 1089, column: 44, scope: !2279)
!2361 = distinct !{!2361, !2275, !2362}
!2362 = !DILocation(line: 1129, column: 2, scope: !2273)
!2363 = !DILocation(line: 1130, column: 57, scope: !2260)
!2364 = !DILocation(line: 1130, column: 2, scope: !2260)
!2365 = !DILocation(line: 1131, column: 2, scope: !2260)
!2366 = !DILocation(line: 1132, column: 2, scope: !2260)
!2367 = !DILocation(line: 1133, column: 1, scope: !2260)
!2368 = distinct !DISubprogram(name: "addqr2reslib", scope: !15, file: !15, line: 1135, type: !2099, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2369 = !{!2370, !2371, !2372, !2373, !2374}
!2370 = !DILocalVariable(name: "rlp", arg: 1, scope: !2368, file: !15, line: 1135, type: !299)
!2371 = !DILocalVariable(name: "res", scope: !2368, file: !15, line: 1137, type: !170)
!2372 = !DILocalVariable(name: "a", scope: !2368, file: !15, line: 1138, type: !11)
!2373 = !DILocalVariable(name: "ap", scope: !2368, file: !15, line: 1139, type: !202)
!2374 = !DILocalVariable(name: "apr", scope: !2368, file: !15, line: 1139, type: !202)
!2375 = !DILocation(line: 0, scope: !2368)
!2376 = !DILocation(line: 1141, column: 18, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2368, file: !15, line: 1141, column: 2)
!2378 = !DILocation(line: 0, scope: !2377)
!2379 = !DILocation(line: 1141, column: 2, scope: !2377)
!2380 = !DILocation(line: 1142, column: 20, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !15, line: 1142, column: 7)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !15, line: 1141, column: 52)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !15, line: 1141, column: 2)
!2384 = !DILocation(line: 1142, column: 7, scope: !2381)
!2385 = !DILocation(line: 1142, column: 41, scope: !2381)
!2386 = !DILocation(line: 1142, column: 7, scope: !2382)
!2387 = !DILocation(line: 1143, column: 32, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !15, line: 1143, column: 4)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !15, line: 1143, column: 4)
!2390 = distinct !DILexicalBlock(scope: !2381, file: !15, line: 1142, column: 47)
!2391 = !DILocation(line: 1143, column: 30, scope: !2388)
!2392 = !DILocation(line: 1143, column: 4, scope: !2389)
!2393 = !DILocation(line: 0, scope: !1309, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 1144, column: 16, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !15, line: 1144, column: 9)
!2396 = distinct !DILexicalBlock(scope: !2388, file: !15, line: 1143, column: 52)
!2397 = !DILocation(line: 0, scope: !1315, inlinedAt: !2394)
!2398 = !DILocation(line: 1144, column: 35, scope: !2395)
!2399 = !DILocation(line: 0, scope: !1299, inlinedAt: !2394)
!2400 = !DILocation(line: 1206, column: 2, scope: !1310, inlinedAt: !2394)
!2401 = !DILocation(line: 1207, column: 34, scope: !1315, inlinedAt: !2394)
!2402 = !DILocation(line: 1207, column: 8, scope: !1315, inlinedAt: !2394)
!2403 = !DILocation(line: 1206, column: 34, scope: !1309, inlinedAt: !2394)
!2404 = !DILocation(line: 1207, column: 7, scope: !1316, inlinedAt: !2394)
!2405 = !DILocation(line: 1206, column: 16, scope: !1309, inlinedAt: !2394)
!2406 = distinct !{!2406, !2400, !2407}
!2407 = !DILocation(line: 1209, column: 2, scope: !1310, inlinedAt: !2394)
!2408 = !DILocation(line: 1146, column: 26, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2395, file: !15, line: 1144, column: 50)
!2410 = !DILocation(line: 1146, column: 11, scope: !2409)
!2411 = !DILocation(line: 1146, column: 20, scope: !2409)
!2412 = !DILocation(line: 1147, column: 26, scope: !2409)
!2413 = !DILocation(line: 1147, column: 11, scope: !2409)
!2414 = !DILocation(line: 1147, column: 20, scope: !2409)
!2415 = !DILocation(line: 1148, column: 26, scope: !2409)
!2416 = !DILocation(line: 1148, column: 11, scope: !2409)
!2417 = !DILocation(line: 1148, column: 20, scope: !2409)
!2418 = !DILocation(line: 1149, column: 26, scope: !2409)
!2419 = !DILocation(line: 1149, column: 11, scope: !2409)
!2420 = !DILocation(line: 1149, column: 20, scope: !2409)
!2421 = !DILocation(line: 1150, column: 26, scope: !2409)
!2422 = !DILocation(line: 1150, column: 11, scope: !2409)
!2423 = !DILocation(line: 1150, column: 20, scope: !2409)
!2424 = !DILocation(line: 1151, column: 26, scope: !2409)
!2425 = !DILocation(line: 1151, column: 11, scope: !2409)
!2426 = !DILocation(line: 1151, column: 20, scope: !2409)
!2427 = !DILocation(line: 1152, column: 26, scope: !2409)
!2428 = !DILocation(line: 1152, column: 11, scope: !2409)
!2429 = !DILocation(line: 1152, column: 20, scope: !2409)
!2430 = !DILocation(line: 1153, column: 5, scope: !2409)
!2431 = !DILocation(line: 1143, column: 42, scope: !2388)
!2432 = !DILocation(line: 1143, column: 48, scope: !2388)
!2433 = distinct !{!2433, !2392, !2434}
!2434 = !DILocation(line: 1154, column: 4, scope: !2389)
!2435 = !DILocation(line: 1141, column: 44, scope: !2383)
!2436 = distinct !{!2436, !2379, !2437}
!2437 = !DILocation(line: 1157, column: 2, scope: !2377)
!2438 = !DILocation(line: 1158, column: 57, scope: !2368)
!2439 = !DILocation(line: 1158, column: 2, scope: !2368)
!2440 = !DILocation(line: 1159, column: 2, scope: !2368)
!2441 = !DILocation(line: 1160, column: 2, scope: !2368)
!2442 = !DILocation(line: 1161, column: 1, scope: !2368)
!2443 = distinct !DISubprogram(name: "addchi2reslib", scope: !15, file: !15, line: 1163, type: !2099, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2453, !2454}
!2445 = !DILocalVariable(name: "rlp", arg: 1, scope: !2443, file: !15, line: 1163, type: !299)
!2446 = !DILocalVariable(name: "res", scope: !2443, file: !15, line: 1165, type: !170)
!2447 = !DILocalVariable(name: "cp", scope: !2443, file: !15, line: 1166, type: !191)
!2448 = !DILocalVariable(name: "a", scope: !2443, file: !15, line: 1167, type: !11)
!2449 = !DILocalVariable(name: "c", scope: !2443, file: !15, line: 1167, type: !11)
!2450 = !DILocalVariable(name: "ca", scope: !2443, file: !15, line: 1167, type: !11)
!2451 = !DILocalVariable(name: "pos", scope: !2443, file: !15, line: 1168, type: !2452)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 768, elements: !197)
!2453 = !DILocalVariable(name: "dvol", scope: !2443, file: !15, line: 1169, type: !2452)
!2454 = !DILocalVariable(name: "vol", scope: !2443, file: !15, line: 1170, type: !48)
!2455 = !DILocation(line: 0, scope: !2443)
!2456 = !DILocation(line: 1168, column: 2, scope: !2443)
!2457 = !DILocation(line: 1168, column: 11, scope: !2443)
!2458 = !DILocation(line: 1169, column: 2, scope: !2443)
!2459 = !DILocation(line: 1169, column: 11, scope: !2443)
!2460 = !DILocation(line: 1170, column: 2, scope: !2443)
!2461 = !DILocation(line: 1172, column: 18, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2443, file: !15, line: 1172, column: 2)
!2463 = !DILocation(line: 0, scope: !2462)
!2464 = !DILocation(line: 1172, column: 2, scope: !2462)
!2465 = !DILocation(line: 1173, column: 21, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !15, line: 1173, column: 7)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !15, line: 1172, column: 52)
!2468 = distinct !DILexicalBlock(scope: !2462, file: !15, line: 1172, column: 2)
!2469 = !DILocation(line: 1173, column: 8, scope: !2466)
!2470 = !DILocation(line: 1173, column: 7, scope: !2467)
!2471 = !DILocation(line: 1175, column: 13, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !15, line: 1174, column: 8)
!2473 = distinct !DILexicalBlock(scope: !2466, file: !15, line: 1173, column: 43)
!2474 = !DILocation(line: 1175, column: 19, scope: !2472)
!2475 = !DILocation(line: 1175, column: 5, scope: !2472)
!2476 = !DILocation(line: 1176, column: 5, scope: !2472)
!2477 = !DILocation(line: 1174, column: 8, scope: !2473)
!2478 = !DILocation(line: 1177, column: 14, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2472, file: !15, line: 1176, column: 14)
!2480 = !DILocation(line: 1179, column: 11, scope: !2479)
!2481 = !DILocation(line: 1177, column: 5, scope: !2479)
!2482 = !DILocation(line: 1180, column: 5, scope: !2479)
!2483 = !DILocation(line: 1182, column: 9, scope: !2473)
!2484 = !DILocation(line: 1182, column: 19, scope: !2473)
!2485 = !DILocation(line: 1183, column: 9, scope: !2473)
!2486 = !DILocation(line: 1183, column: 18, scope: !2473)
!2487 = !DILocation(line: 1184, column: 18, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !15, line: 1184, column: 4)
!2489 = distinct !DILexicalBlock(scope: !2473, file: !15, line: 1184, column: 4)
!2490 = !DILocation(line: 1184, column: 4, scope: !2489)
!2491 = !DILocation(line: 1174, column: 15, scope: !2472)
!2492 = !DILocation(line: 0, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !15, line: 1185, column: 29)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !15, line: 1185, column: 5)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !15, line: 1185, column: 5)
!2496 = distinct !DILexicalBlock(scope: !2488, file: !15, line: 1184, column: 32)
!2497 = !DILocation(line: 0, scope: !2496)
!2498 = !DILocation(line: 1185, column: 5, scope: !2495)
!2499 = !DILocation(line: 1186, column: 27, scope: !2493)
!2500 = !DILocation(line: 1186, column: 11, scope: !2493)
!2501 = !DILocation(line: 1186, column: 25, scope: !2493)
!2502 = !DILocation(line: 1187, column: 18, scope: !2493)
!2503 = !DILocation(line: 1187, column: 6, scope: !2493)
!2504 = !DILocation(line: 1187, column: 16, scope: !2493)
!2505 = !DILocation(line: 1188, column: 18, scope: !2493)
!2506 = !DILocation(line: 1188, column: 6, scope: !2493)
!2507 = !DILocation(line: 1188, column: 16, scope: !2493)
!2508 = !DILocation(line: 1189, column: 18, scope: !2493)
!2509 = !DILocation(line: 1189, column: 6, scope: !2493)
!2510 = !DILocation(line: 1189, column: 16, scope: !2493)
!2511 = !DILocation(line: 1185, column: 25, scope: !2494)
!2512 = !DILocation(line: 1185, column: 19, scope: !2494)
!2513 = distinct !{!2513, !2498, !2514}
!2514 = !DILocation(line: 1190, column: 5, scope: !2495)
!2515 = !DILocation(line: 1191, column: 5, scope: !2496)
!2516 = !DILocation(line: 1192, column: 18, scope: !2496)
!2517 = !DILocation(line: 1192, column: 9, scope: !2496)
!2518 = !DILocation(line: 1192, column: 16, scope: !2496)
!2519 = !DILocation(line: 1193, column: 7, scope: !2496)
!2520 = !DILocation(line: 1184, column: 28, scope: !2488)
!2521 = !DILocation(line: 1184, column: 20, scope: !2488)
!2522 = distinct !{!2522, !2490, !2523}
!2523 = !DILocation(line: 1194, column: 4, scope: !2489)
!2524 = !DILocation(line: 1172, column: 44, scope: !2468)
!2525 = distinct !{!2525, !2464, !2526}
!2526 = !DILocation(line: 1197, column: 2, scope: !2462)
!2527 = !DILocation(line: 1198, column: 11, scope: !2443)
!2528 = !DILocation(line: 1199, column: 8, scope: !2443)
!2529 = !DILocation(line: 1199, column: 24, scope: !2443)
!2530 = !DILocation(line: 1198, column: 2, scope: !2443)
!2531 = !DILocation(line: 1200, column: 1, scope: !2443)
