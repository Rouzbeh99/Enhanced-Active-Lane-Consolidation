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
@reslibs = internal global %struct.reslib_t* null, align 8, !dbg !320
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
@initatoms.init = internal global i32 1, align 4, !dbg !322
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
@bonds = internal global [1000 x [2 x i32]] zeroinitializer, align 16, !dbg !342
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
@n_chi = internal global i32 0, align 4, !dbg !345
@.str.92 = private unnamed_addr constant [44 x i8] c"chi2reslib: bad line in chirality file: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"chi2reslib: res %s not in %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"chi2reslib: atom \22%s\22 not in residue \22%s\22\0A\00", align 1
@chi = internal global [500 x %struct.chiral_t] zeroinitializer, align 16, !dbg !347
@.str.96 = private unnamed_addr constant [44 x i8] c"addchi2reslib: can't alloc r_chiral for %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [37 x i8] c"addchi2reslib: res %s not reslib %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i8* @getreslibkind(i8* %0) #0 !dbg !359 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !363, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata !4, metadata !364, metadata !DIExpression()), !dbg !367
  %2 = call %struct.reslib_t* @known_reslib(i8* %0), !dbg !368
  call void @llvm.dbg.value(metadata %struct.reslib_t* %2, metadata !365, metadata !DIExpression()), !dbg !366
  %3 = icmp eq %struct.reslib_t* %2, null, !dbg !370
  br i1 %3, label %4, label %11, !dbg !371

4:                                                ; preds = %1
  %5 = call %struct.reslib_t* @read_reslib(i8* %0), !dbg !372
  call void @llvm.dbg.value(metadata %struct.reslib_t* %5, metadata !365, metadata !DIExpression()), !dbg !366
  %6 = icmp eq %struct.reslib_t* %5, null, !dbg !375
  br i1 %6, label %7, label %10, !dbg !376

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !377, !tbaa !379
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0), !dbg !383
  call void @exit(i32 1) #7, !dbg !384
  unreachable, !dbg !384

10:                                               ; preds = %4
  br label %11, !dbg !385

11:                                               ; preds = %10, %1
  %.01 = phi %struct.reslib_t* [ %5, %10 ], [ %2, %1 ], !dbg !386
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.01, metadata !365, metadata !DIExpression()), !dbg !366
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i32 0, i32 2, !dbg !387
  %13 = load i32, i32* %12, align 8, !dbg !387, !tbaa !389
  %14 = icmp eq i32 %13, 0, !dbg !392
  br i1 %14, label %15, label %16, !dbg !393

15:                                               ; preds = %11
  br label %32, !dbg !394

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i32 0, i32 2, !dbg !395
  %18 = load i32, i32* %17, align 8, !dbg !395, !tbaa !389
  %19 = icmp eq i32 %18, 1, !dbg !397
  br i1 %19, label %20, label %21, !dbg !398

20:                                               ; preds = %16
  br label %32, !dbg !399

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i32 0, i32 2, !dbg !400
  %23 = load i32, i32* %22, align 8, !dbg !400, !tbaa !389
  %24 = icmp eq i32 %23, 2, !dbg !402
  br i1 %24, label %25, label %26, !dbg !403

25:                                               ; preds = %21
  br label %32, !dbg !404

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i32 0, i32 2, !dbg !405
  %28 = load i32, i32* %27, align 8, !dbg !405, !tbaa !389
  %29 = icmp eq i32 %28, 3, !dbg !407
  br i1 %29, label %30, label %31, !dbg !408

30:                                               ; preds = %26
  br label %32, !dbg !409

31:                                               ; preds = %26
  br label %32, !dbg !410

32:                                               ; preds = %31, %30, %25, %20, %15
  %.0 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %15 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %20 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %25 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %30 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %31 ], !dbg !411
  ret i8* %.0, !dbg !412
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @known_reslib(i8* %0) #0 !dbg !413 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !417, metadata !DIExpression()), !dbg !419
  %2 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !420, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %2, metadata !418, metadata !DIExpression()), !dbg !419
  %3 = icmp ne %struct.reslib_t* %2, null, !dbg !422
  br i1 %3, label %.lr.ph, label %15, !dbg !422

.lr.ph:                                           ; preds = %1
  br label %4, !dbg !422

4:                                                ; preds = %.lr.ph, %11
  %.013 = phi %struct.reslib_t* [ %2, %.lr.ph ], [ %13, %11 ]
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.013, metadata !418, metadata !DIExpression()), !dbg !419
  %5 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.013, i32 0, i32 1, !dbg !423
  %6 = load i8*, i8** %5, align 8, !dbg !423, !tbaa !427
  %7 = call i32 @strcmp(i8* %6, i8* %0) #8, !dbg !428
  %8 = icmp eq i32 %7, 0, !dbg !429
  br i1 %8, label %9, label %10, !dbg !430

9:                                                ; preds = %4
  %.01.lcssa2 = phi %struct.reslib_t* [ %.013, %4 ], !dbg !431
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.01.lcssa2, metadata !418, metadata !DIExpression()), !dbg !419
  br label %16, !dbg !432

10:                                               ; preds = %4
  br label %11, !dbg !434

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.013, i32 0, i32 0, !dbg !435
  %13 = load %struct.reslib_t*, %struct.reslib_t** %12, align 8, !dbg !435, !tbaa !436
  call void @llvm.dbg.value(metadata %struct.reslib_t* %13, metadata !418, metadata !DIExpression()), !dbg !419
  %14 = icmp ne %struct.reslib_t* %13, null, !dbg !422
  br i1 %14, label %4, label %._crit_edge, !dbg !422, !llvm.loop !437

._crit_edge:                                      ; preds = %11
  br label %15, !dbg !422

15:                                               ; preds = %._crit_edge, %1
  br label %16, !dbg !439

16:                                               ; preds = %15, %9
  %.0 = phi %struct.reslib_t* [ %.01.lcssa2, %9 ], [ null, %15 ], !dbg !419
  ret %struct.reslib_t* %.0, !dbg !440
}

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @read_reslib(i8* %0) #0 !dbg !441 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !443, metadata !DIExpression()), !dbg !453
  %7 = bitcast %struct._IO_FILE** %2 to i8*, !dbg !454
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #9, !dbg !454
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !444, metadata !DIExpression()), !dbg !455
  %8 = bitcast %struct._IO_FILE** %3 to i8*, !dbg !456
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #9, !dbg !456
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !448, metadata !DIExpression()), !dbg !457
  %9 = bitcast %struct._IO_FILE** %4 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #9, !dbg !458
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !449, metadata !DIExpression()), !dbg !459
  %10 = bitcast %struct._IO_FILE** %5 to i8*, !dbg !460
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #9, !dbg !460
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !450, metadata !DIExpression()), !dbg !461
  %11 = bitcast [256 x i8]* %6 to i8*, !dbg !462
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %11) #9, !dbg !462
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !452, metadata !DIExpression()), !dbg !463
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !464
  %13 = call %struct.reslib_t* @read_reslib_header(i8* %0, %struct._IO_FILE** %2, %struct._IO_FILE** %3, %struct._IO_FILE** %4, %struct._IO_FILE** %5, i8* %12), !dbg !466
  call void @llvm.dbg.value(metadata %struct.reslib_t* %13, metadata !451, metadata !DIExpression()), !dbg !453
  %14 = icmp eq %struct.reslib_t* %13, null, !dbg !467
  br i1 %14, label %15, label %16, !dbg !468

15:                                               ; preds = %1
  br label %44, !dbg !469

16:                                               ; preds = %1
  call void @initatoms(), !dbg !471
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !472
  %18 = load i8, i8* %17, align 16, !dbg !472, !tbaa !474
  %19 = icmp ne i8 %18, 0, !dbg !472
  br i1 %19, label %20, label %22, !dbg !475

20:                                               ; preds = %16
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !476
  call void @off2reslib(i8* %21, %struct.reslib_t* %13), !dbg !478
  br label %29, !dbg !479

22:                                               ; preds = %16
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !480, !tbaa !379
  call void @pdb2reslib(%struct._IO_FILE* %23, %struct.reslib_t* %13), !dbg !482
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !483, !tbaa !379
  call void @bnd2reslib(%struct._IO_FILE* %24, %struct.reslib_t* %13), !dbg !484
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !485, !tbaa !379
  %26 = call i32 @fclose(%struct._IO_FILE* %25), !dbg !486
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !487, !tbaa !379
  %28 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !488
  br label %29

29:                                               ; preds = %22, %20
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !489, !tbaa !379
  %31 = icmp ne %struct._IO_FILE* %30, null, !dbg !489
  br i1 %31, label %32, label %36, !dbg !491

32:                                               ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !492, !tbaa !379
  call void @qr2reslib(%struct._IO_FILE* %33, %struct.reslib_t* %13), !dbg !494
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !495, !tbaa !379
  %35 = call i32 @fclose(%struct._IO_FILE* %34), !dbg !496
  br label %36, !dbg !497

36:                                               ; preds = %32, %29
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !498, !tbaa !379
  %38 = icmp ne %struct._IO_FILE* %37, null, !dbg !498
  br i1 %38, label %39, label %43, !dbg !500

39:                                               ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !501, !tbaa !379
  call void @chi2reslib(%struct._IO_FILE* %40, %struct.reslib_t* %13), !dbg !503
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !504, !tbaa !379
  %42 = call i32 @fclose(%struct._IO_FILE* %41), !dbg !505
  br label %43, !dbg !506

43:                                               ; preds = %39, %36
  br label %44, !dbg !507

44:                                               ; preds = %43, %15
  %.0 = phi %struct.reslib_t* [ null, %15 ], [ %13, %43 ], !dbg !453
  %45 = bitcast [256 x i8]* %6 to i8*, !dbg !508
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %45) #9, !dbg !508
  %46 = bitcast %struct._IO_FILE** %5 to i8*, !dbg !508
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #9, !dbg !508
  %47 = bitcast %struct._IO_FILE** %4 to i8*, !dbg !508
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #9, !dbg !508
  %48 = bitcast %struct._IO_FILE** %3 to i8*, !dbg !508
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #9, !dbg !508
  %49 = bitcast %struct._IO_FILE** %2 to i8*, !dbg !508
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #9, !dbg !508
  ret %struct.reslib_t* %.0, !dbg !508
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* %1) #0 !dbg !509 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !513, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.value(metadata i8* %1, metadata !514, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata !4, metadata !515, metadata !DIExpression()), !dbg !518
  %3 = call %struct.reslib_t* @known_reslib(i8* %0), !dbg !519
  call void @llvm.dbg.value(metadata %struct.reslib_t* %3, metadata !516, metadata !DIExpression()), !dbg !517
  %4 = icmp eq %struct.reslib_t* %3, null, !dbg !521
  br i1 %4, label %5, label %12, !dbg !522

5:                                                ; preds = %2
  %6 = call %struct.reslib_t* @read_reslib(i8* %0), !dbg !523
  call void @llvm.dbg.value(metadata %struct.reslib_t* %6, metadata !516, metadata !DIExpression()), !dbg !517
  %7 = icmp eq %struct.reslib_t* %6, null, !dbg !526
  br i1 %7, label %8, label %11, !dbg !527

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !528, !tbaa !379
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0), !dbg !530
  call void @exit(i32 1) #7, !dbg !531
  unreachable, !dbg !531

11:                                               ; preds = %5
  br label %12, !dbg !532

12:                                               ; preds = %11, %2
  %.0 = phi %struct.reslib_t* [ %6, %11 ], [ %3, %2 ], !dbg !533
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.0, metadata !516, metadata !DIExpression()), !dbg !517
  %13 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2, !dbg !534
  store i32 0, i32* %13, align 8, !dbg !535, !tbaa !389
  %14 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !536
  %15 = icmp ne i32 %14, 0, !dbg !536
  br i1 %15, label %16, label %19, !dbg !538

16:                                               ; preds = %12
  %17 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !539
  %18 = icmp ne i32 %17, 0, !dbg !539
  br i1 %18, label %21, label %19, !dbg !540

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2, !dbg !541
  store i32 1, i32* %20, align 8, !dbg !542, !tbaa !389
  br label %39, !dbg !543

21:                                               ; preds = %16
  %22 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !544
  %23 = icmp ne i32 %22, 0, !dbg !544
  br i1 %23, label %24, label %27, !dbg !546

24:                                               ; preds = %21
  %25 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !547
  %26 = icmp ne i32 %25, 0, !dbg !547
  br i1 %26, label %29, label %27, !dbg !548

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2, !dbg !549
  store i32 2, i32* %28, align 8, !dbg !550, !tbaa !389
  br label %38, !dbg !551

29:                                               ; preds = %24
  %30 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !552
  %31 = icmp ne i32 %30, 0, !dbg !552
  br i1 %31, label %32, label %35, !dbg !554

32:                                               ; preds = %29
  %33 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !555
  %34 = icmp ne i32 %33, 0, !dbg !555
  br i1 %34, label %37, label %35, !dbg !556

35:                                               ; preds = %32, %29
  %36 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2, !dbg !557
  store i32 3, i32* %36, align 8, !dbg !558, !tbaa !389
  br label %37, !dbg !559

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %19
  %40 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i32 0, i32 2, !dbg !560
  %41 = load i32, i32* %40, align 8, !dbg !560, !tbaa !389
  ret i32 %41, !dbg !561
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) #0 !dbg !562 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !566, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata i8* %1, metadata !567, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata !4, metadata !568, metadata !DIExpression()), !dbg !577
  %4 = bitcast [5 x i8]* %3 to i8*, !dbg !578
  call void @llvm.lifetime.start.p0i8(i64 5, i8* %4) #9, !dbg !578
  call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !569, metadata !DIExpression()), !dbg !579
  %5 = call %struct.reslib_t* @known_reslib(i8* %1), !dbg !580
  call void @llvm.dbg.value(metadata %struct.reslib_t* %5, metadata !573, metadata !DIExpression()), !dbg !576
  %6 = icmp eq %struct.reslib_t* %5, null, !dbg !582
  br i1 %6, label %7, label %12, !dbg !583

7:                                                ; preds = %2
  %8 = call %struct.reslib_t* @read_reslib(i8* %1), !dbg !584
  call void @llvm.dbg.value(metadata %struct.reslib_t* %8, metadata !573, metadata !DIExpression()), !dbg !576
  %9 = icmp eq %struct.reslib_t* %8, null, !dbg !587
  br i1 %9, label %10, label %11, !dbg !588

10:                                               ; preds = %7
  call void @exit(i32 1) #7, !dbg !589
  unreachable, !dbg !589

11:                                               ; preds = %7
  br label %12, !dbg !591

12:                                               ; preds = %11, %2
  %.02 = phi %struct.reslib_t* [ %8, %11 ], [ %5, %2 ], !dbg !592
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.02, metadata !573, metadata !DIExpression()), !dbg !576
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !593
  %14 = call i8* @strcpy(i8* %13, i8* %0) #9, !dbg !594
  %15 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i32 0, i32 2, !dbg !595
  %16 = load i32, i32* %15, align 8, !dbg !595, !tbaa !389
  %17 = icmp eq i32 %16, 1, !dbg !597
  br i1 %17, label %18, label %46, !dbg !598

18:                                               ; preds = %12
  %19 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #8, !dbg !599
  %20 = icmp ne i32 %19, 0, !dbg !599
  br i1 %20, label %24, label %21, !dbg !602

21:                                               ; preds = %18
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !603
  %23 = call i8* @strcpy(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !604
  br label %45, !dbg !604

24:                                               ; preds = %18
  %25 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #8, !dbg !605
  %26 = icmp ne i32 %25, 0, !dbg !605
  br i1 %26, label %30, label %27, !dbg !607

27:                                               ; preds = %24
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !608
  %29 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !609
  br label %44, !dbg !609

30:                                               ; preds = %24
  %31 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #8, !dbg !610
  %32 = icmp ne i32 %31, 0, !dbg !610
  br i1 %32, label %36, label %33, !dbg !612

33:                                               ; preds = %30
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !613
  %35 = call i8* @strcpy(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !614
  br label %43, !dbg !614

36:                                               ; preds = %30
  %37 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #8, !dbg !615
  %38 = icmp ne i32 %37, 0, !dbg !615
  br i1 %38, label %42, label %39, !dbg !617

39:                                               ; preds = %36
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !618
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !619
  br label %42, !dbg !619

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %21
  br label %79, !dbg !620

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i32 0, i32 2, !dbg !621
  %48 = load i32, i32* %47, align 8, !dbg !621, !tbaa !389
  %49 = icmp eq i32 %48, 2, !dbg !623
  br i1 %49, label %50, label %78, !dbg !624

50:                                               ; preds = %46
  %51 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #8, !dbg !625
  %52 = icmp ne i32 %51, 0, !dbg !625
  br i1 %52, label %56, label %53, !dbg !628

53:                                               ; preds = %50
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !629
  %55 = call i8* @strcpy(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !630
  br label %77, !dbg !630

56:                                               ; preds = %50
  %57 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #8, !dbg !631
  %58 = icmp ne i32 %57, 0, !dbg !631
  br i1 %58, label %62, label %59, !dbg !633

59:                                               ; preds = %56
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !634
  %61 = call i8* @strcpy(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !635
  br label %76, !dbg !635

62:                                               ; preds = %56
  %63 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #8, !dbg !636
  %64 = icmp ne i32 %63, 0, !dbg !636
  br i1 %64, label %68, label %65, !dbg !638

65:                                               ; preds = %62
  %66 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !639
  %67 = call i8* @strcpy(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !640
  br label %75, !dbg !640

68:                                               ; preds = %62
  %69 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #8, !dbg !641
  %70 = icmp ne i32 %69, 0, !dbg !641
  br i1 %70, label %74, label %71, !dbg !643

71:                                               ; preds = %68
  %72 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !644
  %73 = call i8* @strcpy(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !645
  br label %74, !dbg !645

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %53
  br label %78, !dbg !646

78:                                               ; preds = %77, %46
  br label %79

79:                                               ; preds = %78, %45
  %80 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !647
  %81 = icmp ne i8* %80, null, !dbg !649
  br i1 %81, label %82, label %85, !dbg !650

82:                                               ; preds = %79
  %83 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !651
  %84 = call i8* @strcat(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !652
  br label %92, !dbg !652

85:                                               ; preds = %79
  %86 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !653
  %87 = icmp ne i8* %86, null, !dbg !655
  br i1 %87, label %88, label %91, !dbg !656

88:                                               ; preds = %85
  %89 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !657
  %90 = call i8* @strcat(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !658
  br label %91, !dbg !658

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %82
  %93 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i32 0, i32 4, !dbg !659
  %94 = load %struct.residue_t*, %struct.residue_t** %93, align 8, !dbg !659, !tbaa !661
  call void @llvm.dbg.value(metadata %struct.residue_t* %94, metadata !574, metadata !DIExpression()), !dbg !576
  %95 = icmp ne %struct.residue_t* %94, null, !dbg !662
  br i1 %95, label %.lr.ph, label %.loopexit, !dbg !662

.lr.ph:                                           ; preds = %92
  br label %96, !dbg !662

96:                                               ; preds = %.lr.ph, %109
  %.015 = phi %struct.residue_t* [ %94, %.lr.ph ], [ %111, %109 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.015, metadata !574, metadata !DIExpression()), !dbg !576
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i32 0, i32 4, !dbg !663
  %98 = load i8*, i8** %97, align 8, !dbg !663, !tbaa !667
  %99 = call i32 @strcmp(i8* %98, i8* %0) #8, !dbg !669
  %100 = icmp eq i32 %99, 0, !dbg !670
  br i1 %100, label %107, label %101, !dbg !671

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i32 0, i32 4, !dbg !672
  %103 = load i8*, i8** %102, align 8, !dbg !672, !tbaa !667
  %104 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !673
  %105 = call i32 @strcmp(i8* %103, i8* %104) #8, !dbg !674
  %106 = icmp eq i32 %105, 0, !dbg !675
  br i1 %106, label %107, label %108, !dbg !676

107:                                              ; preds = %101, %96
  %.01.lcssa3 = phi %struct.residue_t* [ %.015, %101 ], [ %.015, %96 ], !dbg !677
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa3, metadata !574, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa3, metadata !574, metadata !DIExpression()), !dbg !576
  br label %113, !dbg !678

108:                                              ; preds = %101
  br label %109, !dbg !679

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i32 0, i32 0, !dbg !680
  %111 = load %struct.residue_t*, %struct.residue_t** %110, align 8, !dbg !680, !tbaa !681
  call void @llvm.dbg.value(metadata %struct.residue_t* %111, metadata !574, metadata !DIExpression()), !dbg !576
  %112 = icmp ne %struct.residue_t* %111, null, !dbg !662
  br i1 %112, label %96, label %..loopexit_crit_edge, !dbg !662, !llvm.loop !682

..loopexit_crit_edge:                             ; preds = %109
  %split = phi %struct.residue_t* [ %111, %109 ]
  br label %.loopexit, !dbg !662

.loopexit:                                        ; preds = %..loopexit_crit_edge, %92
  %.01.lcssa = phi %struct.residue_t* [ %split, %..loopexit_crit_edge ], [ %94, %92 ], !dbg !677
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa, metadata !574, metadata !DIExpression()), !dbg !576
  br label %113, !dbg !684

113:                                              ; preds = %.loopexit, %107
  %.014 = phi %struct.residue_t* [ %.01.lcssa, %.loopexit ], [ %.01.lcssa3, %107 ]
  %114 = icmp eq %struct.residue_t* %.014, null, !dbg !684
  br i1 %114, label %115, label %118, !dbg !686

115:                                              ; preds = %113
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %0, i8* %1) #9, !dbg !687
  %117 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !689
  br label %120, !dbg !690

118:                                              ; preds = %113
  %119 = call %struct.residue_t* @copyresidue(%struct.residue_t* %.014), !dbg !691
  call void @llvm.dbg.value(metadata %struct.residue_t* %119, metadata !575, metadata !DIExpression()), !dbg !576
  br label %120, !dbg !692

120:                                              ; preds = %118, %115
  %.0 = phi %struct.residue_t* [ null, %115 ], [ %119, %118 ], !dbg !576
  %121 = bitcast [5 x i8]* %3 to i8*, !dbg !693
  call void @llvm.lifetime.end.p0i8(i64 5, i8* %121) #9, !dbg !693
  ret %struct.residue_t* %.0, !dbg !693
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #6

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #6

declare !dbg !7 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) #0 !dbg !694 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !698, metadata !DIExpression()), !dbg !710
  %2 = call noalias i8* @malloc(i64 128) #9, !dbg !711
  %3 = bitcast i8* %2 to %struct.residue_t*, !dbg !713
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !704, metadata !DIExpression()), !dbg !710
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !714
  br i1 %4, label %5, label %10, !dbg !715

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !716
  %7 = load i8*, i8** %6, align 8, !dbg !716, !tbaa !667
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %7) #9, !dbg !718
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !719
  br label %391, !dbg !720

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !721
  %12 = load i32, i32* %11, align 8, !dbg !721, !tbaa !723
  %13 = sext i32 %12 to i64, !dbg !724
  %14 = mul i64 %13, 176, !dbg !725
  %15 = call noalias i8* @malloc(i64 %14) #9, !dbg !726
  %16 = bitcast i8* %15 to %struct.atom_t*, !dbg !727
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !705, metadata !DIExpression()), !dbg !710
  %17 = icmp eq %struct.atom_t* %16, null, !dbg !728
  br i1 %17, label %18, label %23, !dbg !729

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !730
  %20 = load i8*, i8** %19, align 8, !dbg !730, !tbaa !667
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %20) #9, !dbg !732
  %22 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !733
  br label %391, !dbg !734

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !735
  %25 = load i32, i32* %24, align 8, !dbg !735, !tbaa !723
  %26 = sext i32 %25 to i64, !dbg !737
  %27 = mul i64 %26, 4, !dbg !738
  %28 = call noalias i8* @malloc(i64 %27) #9, !dbg !739
  %29 = bitcast i8* %28 to i32*, !dbg !740
  call void @llvm.dbg.value(metadata i32* %29, metadata !703, metadata !DIExpression()), !dbg !710
  %30 = icmp eq i32* %29, null, !dbg !741
  br i1 %30, label %31, label %36, !dbg !742

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !743
  %33 = load i8*, i8** %32, align 8, !dbg !743, !tbaa !667
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %33) #9, !dbg !745
  %35 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !746
  br label %391, !dbg !747

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11, !dbg !748
  %38 = load i32, i32* %37, align 8, !dbg !748, !tbaa !750
  %39 = icmp sgt i32 %38, 0, !dbg !751
  br i1 %39, label %40, label %54, !dbg !752

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11, !dbg !753
  %42 = load i32, i32* %41, align 8, !dbg !753, !tbaa !750
  %43 = sext i32 %42 to i64, !dbg !756
  %44 = mul i64 %43, 8, !dbg !757
  %45 = call noalias i8* @malloc(i64 %44) #9, !dbg !758
  %46 = bitcast i8* %45 to [2 x i32]*, !dbg !759
  call void @llvm.dbg.value(metadata [2 x i32]* %46, metadata !708, metadata !DIExpression()), !dbg !710
  %47 = icmp eq [2 x i32]* %46, null, !dbg !760
  br i1 %47, label %48, label %53, !dbg !761

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !762
  %50 = load i8*, i8** %49, align 8, !dbg !762, !tbaa !667
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %50) #9, !dbg !764
  %52 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !765
  br label %391, !dbg !766

53:                                               ; preds = %40
  br label %55, !dbg !767

54:                                               ; preds = %36
  call void @llvm.dbg.value(metadata [2 x i32]* null, metadata !708, metadata !DIExpression()), !dbg !710
  br label %55

55:                                               ; preds = %54, %53
  %.07 = phi [2 x i32]* [ %46, %53 ], [ null, %54 ], !dbg !768
  call void @llvm.dbg.value(metadata [2 x i32]* %.07, metadata !708, metadata !DIExpression()), !dbg !710
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13, !dbg !769
  %57 = load i32, i32* %56, align 8, !dbg !769, !tbaa !771
  %58 = icmp sgt i32 %57, 0, !dbg !772
  br i1 %58, label %59, label %73, !dbg !773

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13, !dbg !774
  %61 = load i32, i32* %60, align 8, !dbg !774, !tbaa !771
  %62 = sext i32 %61 to i64, !dbg !777
  %63 = mul i64 %62, 24, !dbg !778
  %64 = call noalias i8* @malloc(i64 %63) #9, !dbg !779
  %65 = bitcast i8* %64 to %struct.chiral_t*, !dbg !780
  call void @llvm.dbg.value(metadata %struct.chiral_t* %65, metadata !709, metadata !DIExpression()), !dbg !710
  %66 = icmp eq %struct.chiral_t* %65, null, !dbg !781
  br i1 %66, label %67, label %72, !dbg !782

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !783
  %69 = load i8*, i8** %68, align 8, !dbg !783, !tbaa !667
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %69) #9, !dbg !785
  %71 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !786
  br label %391, !dbg !787

72:                                               ; preds = %59
  br label %74, !dbg !788

73:                                               ; preds = %55
  call void @llvm.dbg.value(metadata %struct.chiral_t* null, metadata !709, metadata !DIExpression()), !dbg !710
  br label %74

74:                                               ; preds = %73, %72
  %.05 = phi %struct.chiral_t* [ %65, %72 ], [ null, %73 ], !dbg !789
  call void @llvm.dbg.value(metadata %struct.chiral_t* %.05, metadata !709, metadata !DIExpression()), !dbg !710
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 0, !dbg !790
  store %struct.residue_t* null, %struct.residue_t** %75, align 8, !dbg !791, !tbaa !681
  %76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !792
  %77 = load i8*, i8** %76, align 8, !dbg !792, !tbaa !667
  %78 = call i64 @strlen(i8* %77) #8, !dbg !793
  %79 = add i64 %78, 1, !dbg !794
  %80 = call noalias i8* @malloc(i64 %79) #9, !dbg !795
  call void @llvm.dbg.value(metadata i8* %80, metadata !707, metadata !DIExpression()), !dbg !710
  %81 = icmp eq i8* %80, null, !dbg !796
  br i1 %81, label %82, label %85, !dbg !798

82:                                               ; preds = %74
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !799, !tbaa !379
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0)), !dbg !801
  call void @exit(i32 1) #7, !dbg !802
  unreachable, !dbg !802

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !803
  %87 = load i8*, i8** %86, align 8, !dbg !803, !tbaa !667
  %88 = call i8* @strcpy(i8* %80, i8* %87) #9, !dbg !804
  %89 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 4, !dbg !805
  store i8* %80, i8** %89, align 8, !dbg !806, !tbaa !667
  %90 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 5, !dbg !807
  %91 = load i8*, i8** %90, align 8, !dbg !807, !tbaa !808
  %92 = call i64 @strlen(i8* %91) #8, !dbg !809
  %93 = add i64 %92, 1, !dbg !810
  %94 = call noalias i8* @malloc(i64 %93) #9, !dbg !811
  call void @llvm.dbg.value(metadata i8* %94, metadata !707, metadata !DIExpression()), !dbg !710
  %95 = icmp eq i8* %94, null, !dbg !812
  br i1 %95, label %96, label %99, !dbg !814

96:                                               ; preds = %85
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !815, !tbaa !379
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0)), !dbg !817
  call void @exit(i32 1) #7, !dbg !818
  unreachable, !dbg !818

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 5, !dbg !819
  %101 = load i8*, i8** %100, align 8, !dbg !819, !tbaa !808
  %102 = call i8* @strcpy(i8* %94, i8* %101) #9, !dbg !820
  %103 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 5, !dbg !821
  store i8* %94, i8** %103, align 8, !dbg !822, !tbaa !808
  %104 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 1, !dbg !823
  %105 = load i32, i32* %104, align 8, !dbg !823, !tbaa !824
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 1, !dbg !825
  store i32 %105, i32* %106, align 8, !dbg !826, !tbaa !824
  %107 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 2, !dbg !827
  store i32 0, i32* %107, align 4, !dbg !828, !tbaa !829
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 3, !dbg !830
  store i32 0, i32* %108, align 8, !dbg !831, !tbaa !832
  %109 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 6, !dbg !833
  %110 = load i32, i32* %109, align 8, !dbg !833, !tbaa !834
  %111 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 6, !dbg !835
  store i32 %110, i32* %111, align 8, !dbg !836, !tbaa !834
  %112 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 9, !dbg !837
  store %struct.strand_t* null, %struct.strand_t** %112, align 8, !dbg !838, !tbaa !839
  %113 = call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* %0), !dbg !840
  %114 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 10, !dbg !841
  store %struct.extbond_t* %113, %struct.extbond_t** %114, align 8, !dbg !842, !tbaa !843
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11, !dbg !844
  %116 = load i32, i32* %115, align 8, !dbg !844, !tbaa !750
  %117 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 11, !dbg !845
  store i32 %116, i32* %117, align 8, !dbg !846, !tbaa !750
  %118 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 12, !dbg !847
  store [2 x i32]* %.07, [2 x i32]** %118, align 8, !dbg !848, !tbaa !849
  call void @llvm.dbg.value(metadata i32 0, metadata !700, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !700, metadata !DIExpression()), !dbg !710
  %119 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11, !dbg !850
  %120 = load i32, i32* %119, align 8, !dbg !850, !tbaa !750
  %121 = sext i32 %120 to i64, !dbg !853
  %122 = icmp slt i64 0, %121, !dbg !853
  br i1 %122, label %.lr.ph, label %146, !dbg !854

.lr.ph:                                           ; preds = %99
  br label %123, !dbg !854

123:                                              ; preds = %.lr.ph, %142
  %indvars.iv21 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %142 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv21, metadata !700, metadata !DIExpression()), !dbg !710
  %124 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 12, !dbg !855
  %125 = load [2 x i32]*, [2 x i32]** %124, align 8, !dbg !855, !tbaa !849
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %125, i64 %indvars.iv21, !dbg !857
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 0, i64 0, !dbg !857
  %128 = load i32, i32* %127, align 4, !dbg !857, !tbaa !858
  %129 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 12, !dbg !859
  %130 = load [2 x i32]*, [2 x i32]** %129, align 8, !dbg !859, !tbaa !849
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 %indvars.iv21, !dbg !860
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %131, i64 0, i64 0, !dbg !860
  store i32 %128, i32* %132, align 4, !dbg !861, !tbaa !858
  %133 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 12, !dbg !862
  %134 = load [2 x i32]*, [2 x i32]** %133, align 8, !dbg !862, !tbaa !849
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %134, i64 %indvars.iv21, !dbg !863
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %135, i64 0, i64 1, !dbg !863
  %137 = load i32, i32* %136, align 4, !dbg !863, !tbaa !858
  %138 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 12, !dbg !864
  %139 = load [2 x i32]*, [2 x i32]** %138, align 8, !dbg !864, !tbaa !849
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %139, i64 %indvars.iv21, !dbg !865
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 1, !dbg !865
  store i32 %137, i32* %141, align 4, !dbg !866, !tbaa !858
  br label %142, !dbg !867

142:                                              ; preds = %123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv21, 1, !dbg !868
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !700, metadata !DIExpression()), !dbg !710
  %143 = load i32, i32* %119, align 8, !dbg !850, !tbaa !750
  %144 = sext i32 %143 to i64, !dbg !853
  %145 = icmp slt i64 %indvars.iv.next, %144, !dbg !853
  br i1 %145, label %123, label %._crit_edge, !dbg !854, !llvm.loop !869

._crit_edge:                                      ; preds = %142
  br label %146, !dbg !854

146:                                              ; preds = %._crit_edge, %99
  %147 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13, !dbg !871
  %148 = load i32, i32* %147, align 8, !dbg !871, !tbaa !771
  %149 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 13, !dbg !872
  store i32 %148, i32* %149, align 8, !dbg !873, !tbaa !771
  %150 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 14, !dbg !874
  store %struct.chiral_t* %.05, %struct.chiral_t** %150, align 8, !dbg !875, !tbaa !876
  %151 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 14, !dbg !877
  %152 = load %struct.chiral_t*, %struct.chiral_t** %151, align 8, !dbg !877, !tbaa !876
  call void @llvm.dbg.value(metadata %struct.chiral_t* %152, metadata !709, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 0, metadata !701, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()), !dbg !710
  %153 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13, !dbg !879
  %154 = load i32, i32* %153, align 8, !dbg !879, !tbaa !771
  %155 = sext i32 %154 to i64, !dbg !881
  %156 = icmp slt i64 0, %155, !dbg !881
  br i1 %156, label %.lr.ph26, label %180, !dbg !882

.lr.ph26:                                         ; preds = %146
  br label %157, !dbg !882

157:                                              ; preds = %.lr.ph26, %175
  %.1624 = phi %struct.chiral_t* [ %152, %.lr.ph26 ], [ %176, %175 ]
  %indvars.iv1023 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next11, %175 ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %.1624, metadata !709, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 %indvars.iv1023, metadata !701, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 0, metadata !699, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !699, metadata !DIExpression()), !dbg !710
  br label %158, !dbg !883

158:                                              ; preds = %157, %167
  %indvars.iv822 = phi i64 [ 0, %157 ], [ %indvars.iv.next9, %167 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv822, metadata !699, metadata !DIExpression()), !dbg !710
  %159 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 14, !dbg !886
  %160 = load %struct.chiral_t*, %struct.chiral_t** %159, align 8, !dbg !886, !tbaa !876
  %161 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %160, i64 %indvars.iv1023, !dbg !888
  %162 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %161, i32 0, i32 0, !dbg !889
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %162, i64 0, i64 %indvars.iv822, !dbg !888
  %164 = load i32, i32* %163, align 4, !dbg !888, !tbaa !858
  %165 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1624, i32 0, i32 0, !dbg !890
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %165, i64 0, i64 %indvars.iv822, !dbg !891
  store i32 %164, i32* %166, align 4, !dbg !892, !tbaa !858
  br label %167, !dbg !891

167:                                              ; preds = %158
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv822, 1, !dbg !893
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !699, metadata !DIExpression()), !dbg !710
  %exitcond = icmp ne i64 %indvars.iv.next9, 4, !dbg !894
  br i1 %exitcond, label %158, label %168, !dbg !883, !llvm.loop !895

168:                                              ; preds = %167
  %169 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 14, !dbg !897
  %170 = load %struct.chiral_t*, %struct.chiral_t** %169, align 8, !dbg !897, !tbaa !876
  %171 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %170, i64 %indvars.iv1023, !dbg !898
  %172 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %171, i32 0, i32 1, !dbg !899
  %173 = load double, double* %172, align 8, !dbg !899, !tbaa !900
  %174 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1624, i32 0, i32 1, !dbg !903
  store double %173, double* %174, align 8, !dbg !904, !tbaa !900
  br label %175, !dbg !905

175:                                              ; preds = %168
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv1023, 1, !dbg !906
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11, metadata !701, metadata !DIExpression()), !dbg !710
  %176 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1624, i32 1, !dbg !907
  call void @llvm.dbg.value(metadata %struct.chiral_t* %176, metadata !709, metadata !DIExpression()), !dbg !710
  %177 = load i32, i32* %153, align 8, !dbg !879, !tbaa !771
  %178 = sext i32 %177 to i64, !dbg !881
  %179 = icmp slt i64 %indvars.iv.next11, %178, !dbg !881
  br i1 %179, label %157, label %._crit_edge27, !dbg !882, !llvm.loop !908

._crit_edge27:                                    ; preds = %175
  br label %180, !dbg !882

180:                                              ; preds = %._crit_edge27, %146
  %181 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 7, !dbg !910
  %182 = load i32, i32* %181, align 4, !dbg !910, !tbaa !911
  %183 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 7, !dbg !912
  store i32 %182, i32* %183, align 4, !dbg !913, !tbaa !911
  %184 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 8, !dbg !914
  %185 = load i32, i32* %184, align 8, !dbg !914, !tbaa !915
  %186 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 8, !dbg !916
  store i32 %185, i32* %186, align 8, !dbg !917, !tbaa !915
  %187 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !918
  %188 = load i32, i32* %187, align 8, !dbg !918, !tbaa !723
  %189 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 15, !dbg !919
  store i32 %188, i32* %189, align 8, !dbg !920, !tbaa !723
  %190 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 16, !dbg !921
  store i32* %29, i32** %190, align 8, !dbg !922, !tbaa !923
  %191 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16, !dbg !924
  %192 = load i32*, i32** %191, align 8, !dbg !924, !tbaa !923
  %193 = icmp ne i32* %192, null, !dbg !926
  br i1 %193, label %194, label %212, !dbg !927

194:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i32 0, metadata !699, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !699, metadata !DIExpression()), !dbg !710
  %195 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !928
  %196 = load i32, i32* %195, align 8, !dbg !928, !tbaa !723
  %197 = sext i32 %196 to i64, !dbg !932
  %198 = icmp slt i64 0, %197, !dbg !932
  br i1 %198, label %.lr.ph34, label %211, !dbg !933

.lr.ph34:                                         ; preds = %194
  br label %199, !dbg !933

199:                                              ; preds = %.lr.ph34, %207
  %indvars.iv1432 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next15, %207 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1432, metadata !699, metadata !DIExpression()), !dbg !710
  %200 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16, !dbg !934
  %201 = load i32*, i32** %200, align 8, !dbg !934, !tbaa !923
  %202 = getelementptr inbounds i32, i32* %201, i64 %indvars.iv1432, !dbg !935
  %203 = load i32, i32* %202, align 4, !dbg !935, !tbaa !858
  %204 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 16, !dbg !936
  %205 = load i32*, i32** %204, align 8, !dbg !936, !tbaa !923
  %206 = getelementptr inbounds i32, i32* %205, i64 %indvars.iv1432, !dbg !937
  store i32 %203, i32* %206, align 4, !dbg !938, !tbaa !858
  br label %207, !dbg !937

207:                                              ; preds = %199
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv1432, 1, !dbg !939
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next15, metadata !699, metadata !DIExpression()), !dbg !710
  %208 = load i32, i32* %195, align 8, !dbg !928, !tbaa !723
  %209 = sext i32 %208 to i64, !dbg !932
  %210 = icmp slt i64 %indvars.iv.next15, %209, !dbg !932
  br i1 %210, label %199, label %._crit_edge35, !dbg !933, !llvm.loop !940

._crit_edge35:                                    ; preds = %207
  br label %211, !dbg !933

211:                                              ; preds = %._crit_edge35, %194
  br label %227, !dbg !942

212:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i32 0, metadata !699, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !699, metadata !DIExpression()), !dbg !710
  %213 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !943
  %214 = load i32, i32* %213, align 8, !dbg !943, !tbaa !723
  %215 = sext i32 %214 to i64, !dbg !947
  %216 = icmp slt i64 0, %215, !dbg !947
  br i1 %216, label %.lr.ph30, label %226, !dbg !948

.lr.ph30:                                         ; preds = %212
  br label %217, !dbg !948

217:                                              ; preds = %.lr.ph30, %222
  %indvars.iv1228 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next13, %222 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1228, metadata !699, metadata !DIExpression()), !dbg !710
  %218 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 16, !dbg !949
  %219 = load i32*, i32** %218, align 8, !dbg !949, !tbaa !923
  %220 = getelementptr inbounds i32, i32* %219, i64 %indvars.iv1228, !dbg !950
  %221 = trunc i64 %indvars.iv1228 to i32, !dbg !951
  store i32 %221, i32* %220, align 4, !dbg !951, !tbaa !858
  br label %222, !dbg !950

222:                                              ; preds = %217
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1228, 1, !dbg !952
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next13, metadata !699, metadata !DIExpression()), !dbg !710
  %223 = load i32, i32* %213, align 8, !dbg !943, !tbaa !723
  %224 = sext i32 %223 to i64, !dbg !947
  %225 = icmp slt i64 %indvars.iv.next13, %224, !dbg !947
  br i1 %225, label %217, label %._crit_edge31, !dbg !948, !llvm.loop !953

._crit_edge31:                                    ; preds = %222
  br label %226, !dbg !948

226:                                              ; preds = %._crit_edge31, %212
  br label %227

227:                                              ; preds = %226, %211
  %228 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !955
  store %struct.atom_t* %16, %struct.atom_t** %228, align 8, !dbg !956, !tbaa !957
  call void @llvm.dbg.value(metadata i32 0, metadata !699, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !699, metadata !DIExpression()), !dbg !710
  %229 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !958
  %230 = load i32, i32* %229, align 8, !dbg !958, !tbaa !723
  %231 = sext i32 %230 to i64, !dbg !961
  %232 = icmp slt i64 0, %231, !dbg !961
  br i1 %232, label %.lr.ph39, label %390, !dbg !962

.lr.ph39:                                         ; preds = %227
  br label %233, !dbg !962

233:                                              ; preds = %.lr.ph39, %386
  %indvars.iv1937 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next20, %386 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1937, metadata !699, metadata !DIExpression()), !dbg !710
  %234 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !963
  %235 = load %struct.atom_t*, %struct.atom_t** %234, align 8, !dbg !963, !tbaa !957
  %236 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %235, i64 %indvars.iv1937, !dbg !965
  %237 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %236, i32 0, i32 0, !dbg !966
  %238 = load i8*, i8** %237, align 8, !dbg !966, !tbaa !967
  %239 = call i64 @strlen(i8* %238) #8, !dbg !969
  %240 = add i64 %239, 1, !dbg !970
  %241 = call noalias i8* @malloc(i64 %240) #9, !dbg !971
  call void @llvm.dbg.value(metadata i8* %241, metadata !706, metadata !DIExpression()), !dbg !710
  %242 = icmp eq i8* %241, null, !dbg !972
  br i1 %242, label %243, label %246, !dbg !974

243:                                              ; preds = %233
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !975, !tbaa !379
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %244, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0)), !dbg !977
  call void @exit(i32 1) #7, !dbg !978
  unreachable, !dbg !978

246:                                              ; preds = %233
  %247 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !979
  %248 = load %struct.atom_t*, %struct.atom_t** %247, align 8, !dbg !979, !tbaa !957
  %249 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %248, i64 %indvars.iv1937, !dbg !980
  %250 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %249, i32 0, i32 0, !dbg !981
  %251 = load i8*, i8** %250, align 8, !dbg !981, !tbaa !967
  %252 = call i8* @strcpy(i8* %241, i8* %251) #9, !dbg !982
  %253 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !983
  %254 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %253, i32 0, i32 0, !dbg !984
  store i8* %241, i8** %254, align 8, !dbg !985, !tbaa !967
  %255 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !986
  %256 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %255, i32 0, i32 1, !dbg !987
  store i8* null, i8** %256, align 8, !dbg !988, !tbaa !989
  %257 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !990
  %258 = load %struct.atom_t*, %struct.atom_t** %257, align 8, !dbg !990, !tbaa !957
  %259 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %258, i64 %indvars.iv1937, !dbg !991
  %260 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %259, i32 0, i32 2, !dbg !992
  %261 = load i32, i32* %260, align 8, !dbg !992, !tbaa !993
  %262 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !994
  %263 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %262, i32 0, i32 2, !dbg !995
  store i32 %261, i32* %263, align 8, !dbg !996, !tbaa !993
  %264 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !997
  %265 = load %struct.atom_t*, %struct.atom_t** %264, align 8, !dbg !997, !tbaa !957
  %266 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %265, i64 %indvars.iv1937, !dbg !998
  %267 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %266, i32 0, i32 3, !dbg !999
  %268 = load i32, i32* %267, align 4, !dbg !999, !tbaa !1000
  %269 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1001
  %270 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %269, i32 0, i32 3, !dbg !1002
  store i32 %268, i32* %270, align 4, !dbg !1003, !tbaa !1000
  call void @llvm.dbg.value(metadata i32 0, metadata !702, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 0, metadata !702, metadata !DIExpression()), !dbg !710
  br label %271, !dbg !1004

271:                                              ; preds = %246, %281
  %indvars.iv1636 = phi i64 [ 0, %246 ], [ %indvars.iv.next17, %281 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1636, metadata !702, metadata !DIExpression()), !dbg !710
  %272 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1006
  %273 = load %struct.atom_t*, %struct.atom_t** %272, align 8, !dbg !1006, !tbaa !957
  %274 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %273, i64 %indvars.iv1937, !dbg !1008
  %275 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %274, i32 0, i32 4, !dbg !1009
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %275, i64 0, i64 %indvars.iv1636, !dbg !1008
  %277 = load i32, i32* %276, align 4, !dbg !1008, !tbaa !858
  %278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1010
  %279 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %278, i32 0, i32 4, !dbg !1011
  %280 = getelementptr inbounds [8 x i32], [8 x i32]* %279, i64 0, i64 %indvars.iv1636, !dbg !1010
  store i32 %277, i32* %280, align 4, !dbg !1012, !tbaa !858
  br label %281, !dbg !1010

281:                                              ; preds = %271
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv1636, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next17, metadata !702, metadata !DIExpression()), !dbg !710
  %exitcond18 = icmp ne i64 %indvars.iv.next17, 8, !dbg !1014
  br i1 %exitcond18, label %271, label %282, !dbg !1004, !llvm.loop !1015

282:                                              ; preds = %281
  %283 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1017
  %284 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %283, i32 0, i32 5, !dbg !1018
  store %struct.residue_t* %3, %struct.residue_t** %284, align 8, !dbg !1019, !tbaa !1020
  %285 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1021
  %286 = load %struct.atom_t*, %struct.atom_t** %285, align 8, !dbg !1021, !tbaa !957
  %287 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %286, i64 %indvars.iv1937, !dbg !1022
  %288 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %287, i32 0, i32 6, !dbg !1023
  %289 = load double, double* %288, align 8, !dbg !1023, !tbaa !1024
  %290 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1025
  %291 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %290, i32 0, i32 6, !dbg !1026
  store double %289, double* %291, align 8, !dbg !1027, !tbaa !1024
  %292 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1028
  %293 = load %struct.atom_t*, %struct.atom_t** %292, align 8, !dbg !1028, !tbaa !957
  %294 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %293, i64 %indvars.iv1937, !dbg !1029
  %295 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %294, i32 0, i32 7, !dbg !1030
  %296 = load double, double* %295, align 8, !dbg !1030, !tbaa !1031
  %297 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1032
  %298 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %297, i32 0, i32 7, !dbg !1033
  store double %296, double* %298, align 8, !dbg !1034, !tbaa !1031
  %299 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1035
  %300 = load %struct.atom_t*, %struct.atom_t** %299, align 8, !dbg !1035, !tbaa !957
  %301 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %300, i64 %indvars.iv1937, !dbg !1036
  %302 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %301, i32 0, i32 8, !dbg !1037
  %303 = load double, double* %302, align 8, !dbg !1037, !tbaa !1038
  %304 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1039
  %305 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %304, i32 0, i32 8, !dbg !1040
  store double %303, double* %305, align 8, !dbg !1041, !tbaa !1038
  %306 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1042
  %307 = load %struct.atom_t*, %struct.atom_t** %306, align 8, !dbg !1042, !tbaa !957
  %308 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %307, i64 %indvars.iv1937, !dbg !1043
  %309 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %308, i32 0, i32 9, !dbg !1044
  %310 = load double, double* %309, align 8, !dbg !1044, !tbaa !1045
  %311 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1046
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %311, i32 0, i32 9, !dbg !1047
  store double %310, double* %312, align 8, !dbg !1048, !tbaa !1045
  %313 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1049
  %314 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %313, i32 0, i32 10, !dbg !1050
  store i8* null, i8** %314, align 8, !dbg !1051, !tbaa !1052
  %315 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1053
  %316 = load %struct.atom_t*, %struct.atom_t** %315, align 8, !dbg !1053, !tbaa !957
  %317 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %316, i64 %indvars.iv1937, !dbg !1054
  %318 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %317, i32 0, i32 11, !dbg !1055
  %319 = load i32, i32* %318, align 8, !dbg !1055, !tbaa !1056
  %320 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1057
  %321 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %320, i32 0, i32 11, !dbg !1058
  store i32 %319, i32* %321, align 8, !dbg !1059, !tbaa !1056
  %322 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1060
  %323 = load %struct.atom_t*, %struct.atom_t** %322, align 8, !dbg !1060, !tbaa !957
  %324 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %323, i64 %indvars.iv1937, !dbg !1061
  %325 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %324, i32 0, i32 12, !dbg !1062
  %326 = load double, double* %325, align 8, !dbg !1062, !tbaa !1063
  %327 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1064
  %328 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %327, i32 0, i32 12, !dbg !1065
  store double %326, double* %328, align 8, !dbg !1066, !tbaa !1063
  %329 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1067
  %330 = load %struct.atom_t*, %struct.atom_t** %329, align 8, !dbg !1067, !tbaa !957
  %331 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %330, i64 %indvars.iv1937, !dbg !1068
  %332 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %331, i32 0, i32 13, !dbg !1069
  %333 = load double, double* %332, align 8, !dbg !1069, !tbaa !1070
  %334 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1071
  %335 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %334, i32 0, i32 13, !dbg !1072
  store double %333, double* %335, align 8, !dbg !1073, !tbaa !1070
  %336 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1074
  %337 = load %struct.atom_t*, %struct.atom_t** %336, align 8, !dbg !1074, !tbaa !957
  %338 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %337, i64 %indvars.iv1937, !dbg !1075
  %339 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %338, i32 0, i32 14, !dbg !1076
  %340 = load i32, i32* %339, align 8, !dbg !1076, !tbaa !1077
  %341 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1078
  %342 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %341, i32 0, i32 14, !dbg !1079
  store i32 %340, i32* %342, align 8, !dbg !1080, !tbaa !1077
  %343 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1081
  %344 = load %struct.atom_t*, %struct.atom_t** %343, align 8, !dbg !1081, !tbaa !957
  %345 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %344, i64 %indvars.iv1937, !dbg !1082
  %346 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %345, i32 0, i32 15, !dbg !1083
  %347 = load i32, i32* %346, align 4, !dbg !1083, !tbaa !1084
  %348 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1085
  %349 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %348, i32 0, i32 15, !dbg !1086
  store i32 %347, i32* %349, align 4, !dbg !1087, !tbaa !1084
  %350 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1088
  %351 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %350, i32 0, i32 16, !dbg !1089
  store i8* null, i8** %351, align 8, !dbg !1090, !tbaa !1091
  %352 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1092
  %353 = load %struct.atom_t*, %struct.atom_t** %352, align 8, !dbg !1092, !tbaa !957
  %354 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %353, i64 %indvars.iv1937, !dbg !1093
  %355 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %354, i32 0, i32 17, !dbg !1094
  %356 = getelementptr inbounds [3 x double], [3 x double]* %355, i64 0, i64 0, !dbg !1093
  %357 = load double, double* %356, align 8, !dbg !1093, !tbaa !1095
  %358 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1096
  %359 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %358, i32 0, i32 17, !dbg !1097
  %360 = getelementptr inbounds [3 x double], [3 x double]* %359, i64 0, i64 0, !dbg !1096
  store double %357, double* %360, align 8, !dbg !1098, !tbaa !1095
  %361 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1099
  %362 = load %struct.atom_t*, %struct.atom_t** %361, align 8, !dbg !1099, !tbaa !957
  %363 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %362, i64 %indvars.iv1937, !dbg !1100
  %364 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 17, !dbg !1101
  %365 = getelementptr inbounds [3 x double], [3 x double]* %364, i64 0, i64 1, !dbg !1100
  %366 = load double, double* %365, align 8, !dbg !1100, !tbaa !1095
  %367 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1102
  %368 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %367, i32 0, i32 17, !dbg !1103
  %369 = getelementptr inbounds [3 x double], [3 x double]* %368, i64 0, i64 1, !dbg !1102
  store double %366, double* %369, align 8, !dbg !1104, !tbaa !1095
  %370 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1105
  %371 = load %struct.atom_t*, %struct.atom_t** %370, align 8, !dbg !1105, !tbaa !957
  %372 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %371, i64 %indvars.iv1937, !dbg !1106
  %373 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %372, i32 0, i32 17, !dbg !1107
  %374 = getelementptr inbounds [3 x double], [3 x double]* %373, i64 0, i64 2, !dbg !1106
  %375 = load double, double* %374, align 8, !dbg !1106, !tbaa !1095
  %376 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1108
  %377 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %376, i32 0, i32 17, !dbg !1109
  %378 = getelementptr inbounds [3 x double], [3 x double]* %377, i64 0, i64 2, !dbg !1108
  store double %375, double* %378, align 8, !dbg !1110, !tbaa !1095
  %379 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !1111
  %380 = load %struct.atom_t*, %struct.atom_t** %379, align 8, !dbg !1111, !tbaa !957
  %381 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %380, i64 %indvars.iv1937, !dbg !1112
  %382 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %381, i32 0, i32 18, !dbg !1113
  %383 = load double, double* %382, align 8, !dbg !1113, !tbaa !1114
  %384 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1937, !dbg !1115
  %385 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %384, i32 0, i32 18, !dbg !1116
  store double %383, double* %385, align 8, !dbg !1117, !tbaa !1114
  br label %386, !dbg !1118

386:                                              ; preds = %282
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv1937, 1, !dbg !1119
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next20, metadata !699, metadata !DIExpression()), !dbg !710
  %387 = load i32, i32* %229, align 8, !dbg !958, !tbaa !723
  %388 = sext i32 %387 to i64, !dbg !961
  %389 = icmp slt i64 %indvars.iv.next20, %388, !dbg !961
  br i1 %389, label %233, label %._crit_edge40, !dbg !962, !llvm.loop !1120

._crit_edge40:                                    ; preds = %386
  br label %390, !dbg !962

390:                                              ; preds = %._crit_edge40, %227
  br label %391, !dbg !1122

391:                                              ; preds = %390, %67, %48, %31, %18, %5
  %.0 = phi %struct.residue_t* [ null, %5 ], [ null, %18 ], [ null, %31 ], [ null, %48 ], [ null, %67 ], [ %3, %390 ], !dbg !710
  ret %struct.residue_t* %.0, !dbg !1123
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

declare dso_local %struct.extbond_t* @copyextbonds(...) #3

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* %0) #0 !dbg !1124 {
  call void @llvm.dbg.value(metadata %struct.strand_t* %0, metadata !1128, metadata !DIExpression()), !dbg !1132
  %2 = call noalias i8* @malloc(i64 48) #9, !dbg !1133
  %3 = bitcast i8* %2 to %struct.strand_t*, !dbg !1135
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !1129, metadata !DIExpression()), !dbg !1132
  %4 = icmp eq %struct.strand_t* %3, null, !dbg !1136
  br i1 %4, label %5, label %10, !dbg !1137

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 0, !dbg !1138
  %7 = load i8*, i8** %6, align 8, !dbg !1138, !tbaa !1140
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %7) #9, !dbg !1142
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1143
  br label %91, !dbg !1144

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 5, !dbg !1145
  %12 = load i32, i32* %11, align 8, !dbg !1145, !tbaa !1147
  %13 = sext i32 %12 to i64, !dbg !1148
  %14 = mul i64 %13, 8, !dbg !1149
  %15 = call noalias i8* @malloc(i64 %14) #9, !dbg !1150
  %16 = bitcast i8* %15 to %struct.residue_t**, !dbg !1151
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7, !dbg !1152
  store %struct.residue_t** %16, %struct.residue_t*** %17, align 8, !dbg !1153, !tbaa !1154
  %18 = icmp eq %struct.residue_t** %16, null, !dbg !1155
  br i1 %18, label %19, label %21, !dbg !1156

19:                                               ; preds = %10
  %20 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)), !dbg !1157
  br label %91, !dbg !1159

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 0, !dbg !1160
  %23 = load i8*, i8** %22, align 8, !dbg !1160, !tbaa !1140
  %24 = call i64 @strlen(i8* %23) #8, !dbg !1162
  %25 = add i64 %24, 1, !dbg !1163
  %26 = mul i64 %25, 1, !dbg !1164
  %27 = call noalias i8* @malloc(i64 %26) #9, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %27, metadata !1130, metadata !DIExpression()), !dbg !1132
  %28 = icmp eq i8* %27, null, !dbg !1166
  br i1 %28, label %29, label %34, !dbg !1167

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 0, !dbg !1168
  %31 = load i8*, i8** %30, align 8, !dbg !1168, !tbaa !1140
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %31) #9, !dbg !1170
  %33 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1171
  br label %91, !dbg !1172

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 0, !dbg !1173
  store i8* %27, i8** %35, align 8, !dbg !1174, !tbaa !1140
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 0, !dbg !1175
  %37 = load i8*, i8** %36, align 8, !dbg !1175, !tbaa !1140
  %38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 0, !dbg !1176
  %39 = load i8*, i8** %38, align 8, !dbg !1176, !tbaa !1140
  %40 = call i8* @strcpy(i8* %37, i8* %39) #9, !dbg !1177
  %41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 1, !dbg !1178
  %42 = load i32, i32* %41, align 8, !dbg !1178, !tbaa !1179
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 1, !dbg !1180
  store i32 %42, i32* %43, align 8, !dbg !1181, !tbaa !1179
  %44 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 2, !dbg !1182
  %45 = load i32, i32* %44, align 4, !dbg !1182, !tbaa !1183
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 2, !dbg !1184
  store i32 %45, i32* %46, align 4, !dbg !1185, !tbaa !1183
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 3, !dbg !1186
  store %struct.molecule_t* null, %struct.molecule_t** %47, align 8, !dbg !1187, !tbaa !1188
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 4, !dbg !1189
  store %struct.strand_t* null, %struct.strand_t** %48, align 8, !dbg !1190, !tbaa !1191
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 5, !dbg !1192
  %50 = load i32, i32* %49, align 8, !dbg !1192, !tbaa !1147
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 5, !dbg !1193
  store i32 %50, i32* %51, align 8, !dbg !1194, !tbaa !1147
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 5, !dbg !1195
  %53 = load i32, i32* %52, align 8, !dbg !1195, !tbaa !1147
  %54 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 6, !dbg !1196
  store i32 %53, i32* %54, align 4, !dbg !1197, !tbaa !1198
  call void @llvm.dbg.value(metadata i32 0, metadata !1131, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 0, metadata !1131, metadata !DIExpression()), !dbg !1132
  %55 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 5, !dbg !1199
  %56 = load i32, i32* %55, align 8, !dbg !1199, !tbaa !1147
  %57 = sext i32 %56 to i64, !dbg !1202
  %58 = icmp slt i64 0, %57, !dbg !1202
  br i1 %58, label %.lr.ph, label %90, !dbg !1203

.lr.ph:                                           ; preds = %34
  br label %59, !dbg !1203

59:                                               ; preds = %.lr.ph, %86
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %86 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !1131, metadata !DIExpression()), !dbg !1132
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i32 0, i32 7, !dbg !1204
  %61 = load %struct.residue_t**, %struct.residue_t*** %60, align 8, !dbg !1204, !tbaa !1154
  %62 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %61, i64 %indvars.iv2, !dbg !1206
  %63 = load %struct.residue_t*, %struct.residue_t** %62, align 8, !dbg !1206, !tbaa !379
  %64 = call %struct.residue_t* @copyresidue(%struct.residue_t* %63), !dbg !1207
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7, !dbg !1208
  %66 = load %struct.residue_t**, %struct.residue_t*** %65, align 8, !dbg !1208, !tbaa !1154
  %67 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %66, i64 %indvars.iv2, !dbg !1209
  store %struct.residue_t* %64, %struct.residue_t** %67, align 8, !dbg !1210, !tbaa !379
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7, !dbg !1211
  %69 = load %struct.residue_t**, %struct.residue_t*** %68, align 8, !dbg !1211, !tbaa !1154
  %70 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %69, i64 %indvars.iv2, !dbg !1212
  %71 = load %struct.residue_t*, %struct.residue_t** %70, align 8, !dbg !1212, !tbaa !379
  %72 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i32 0, i32 9, !dbg !1213
  store %struct.strand_t* %3, %struct.strand_t** %72, align 8, !dbg !1214, !tbaa !839
  %73 = icmp ugt i64 %indvars.iv2, 0, !dbg !1215
  br i1 %73, label %74, label %85, !dbg !1217

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7, !dbg !1218
  %76 = load %struct.residue_t**, %struct.residue_t*** %75, align 8, !dbg !1218, !tbaa !1154
  %77 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %76, i64 %indvars.iv2, !dbg !1219
  %78 = load %struct.residue_t*, %struct.residue_t** %77, align 8, !dbg !1219, !tbaa !379
  %79 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 7, !dbg !1220
  %80 = load %struct.residue_t**, %struct.residue_t*** %79, align 8, !dbg !1220, !tbaa !1154
  %81 = sub nsw i64 %indvars.iv2, 1, !dbg !1221
  %82 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %80, i64 %81, !dbg !1222
  %83 = load %struct.residue_t*, %struct.residue_t** %82, align 8, !dbg !1222, !tbaa !379
  %84 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 0, !dbg !1223
  store %struct.residue_t* %78, %struct.residue_t** %84, align 8, !dbg !1224, !tbaa !681
  br label %85, !dbg !1222

85:                                               ; preds = %74, %59
  %indvars.iv3 = phi i64 [ %indvars.iv2, %74 ], [ %indvars.iv2, %59 ]
  br label %86, !dbg !1225

86:                                               ; preds = %85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1131, metadata !DIExpression()), !dbg !1132
  %87 = load i32, i32* %55, align 8, !dbg !1199, !tbaa !1147
  %88 = sext i32 %87 to i64, !dbg !1202
  %89 = icmp slt i64 %indvars.iv.next, %88, !dbg !1202
  br i1 %89, label %59, label %._crit_edge, !dbg !1203, !llvm.loop !1227

._crit_edge:                                      ; preds = %86
  br label %90, !dbg !1203

90:                                               ; preds = %._crit_edge, %34
  br label %91, !dbg !1229

91:                                               ; preds = %90, %29, %19, %5
  %.0 = phi %struct.strand_t* [ null, %5 ], [ null, %19 ], [ null, %29 ], [ %3, %90 ], !dbg !1132
  ret %struct.strand_t* %.0, !dbg !1230
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) #0 !dbg !1231 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1235, metadata !DIExpression()), !dbg !1242
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !1243
  %2 = call noalias i8* @malloc(i64 136) #9, !dbg !1244
  %3 = bitcast i8* %2 to %struct.molecule_t*, !dbg !1246
  call void @llvm.dbg.value(metadata %struct.molecule_t* %3, metadata !1241, metadata !DIExpression()), !dbg !1242
  %4 = icmp eq %struct.molecule_t* %3, null, !dbg !1247
  br i1 %4, label %5, label %8, !dbg !1248

5:                                                ; preds = %1
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0)) #9, !dbg !1249
  %7 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1251
  br label %67, !dbg !1252

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1, !dbg !1253
  %10 = load i32, i32* %9, align 8, !dbg !1253, !tbaa !1254
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 1, !dbg !1256
  store i32 %10, i32* %11, align 8, !dbg !1257, !tbaa !1254
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 3, !dbg !1258
  %13 = load i32, i32* %12, align 8, !dbg !1258, !tbaa !1259
  %14 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 3, !dbg !1260
  store i32 %13, i32* %14, align 8, !dbg !1261, !tbaa !1259
  %15 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 4, !dbg !1262
  %16 = load i32, i32* %15, align 4, !dbg !1262, !tbaa !1263
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 4, !dbg !1264
  store i32 %16, i32* %17, align 4, !dbg !1265, !tbaa !1263
  %18 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !1266
  %19 = load i32, i32* %18, align 8, !dbg !1266, !tbaa !1267
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 5, !dbg !1268
  store i32 %19, i32* %20, align 8, !dbg !1269, !tbaa !1267
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 6, !dbg !1270
  %22 = load %struct.parm*, %struct.parm** %21, align 8, !dbg !1270, !tbaa !1272
  %23 = icmp ne %struct.parm* %22, null, !dbg !1273
  br i1 %23, label %24, label %29, !dbg !1274

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 6, !dbg !1275
  %26 = load %struct.parm*, %struct.parm** %25, align 8, !dbg !1275, !tbaa !1272
  %27 = call %struct.parm* @copyparm(%struct.parm* %26), !dbg !1277
  %28 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 6, !dbg !1278
  store %struct.parm* %27, %struct.parm** %28, align 8, !dbg !1279, !tbaa !1272
  br label %31, !dbg !1280

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 6, !dbg !1281
  store %struct.parm* null, %struct.parm** %30, align 8, !dbg !1282, !tbaa !1272
  br label %31

31:                                               ; preds = %29, %24
  call void @llvm.dbg.value(metadata i32 0, metadata !1236, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 0, metadata !1236, metadata !DIExpression()), !dbg !1242
  br label %32, !dbg !1283

32:                                               ; preds = %31, %43
  %indvars.iv610 = phi i64 [ 0, %31 ], [ %indvars.iv.next7, %43 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv610, metadata !1236, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !1237, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i64 0, metadata !1237, metadata !DIExpression()), !dbg !1242
  br label %33, !dbg !1285

33:                                               ; preds = %32, %41
  %indvars.iv9 = phi i64 [ 0, %32 ], [ %indvars.iv.next, %41 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !1237, metadata !DIExpression()), !dbg !1242
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 0, !dbg !1289
  %35 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %34, i64 0, i64 %indvars.iv610, !dbg !1292
  %36 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 0, i64 %indvars.iv9, !dbg !1292
  %37 = load double, double* %36, align 8, !dbg !1292, !tbaa !1095
  %38 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 0, !dbg !1293
  %39 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %38, i64 0, i64 %indvars.iv610, !dbg !1294
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 0, i64 %indvars.iv9, !dbg !1294
  store double %37, double* %40, align 8, !dbg !1295, !tbaa !1095
  br label %41, !dbg !1296

41:                                               ; preds = %33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1237, metadata !DIExpression()), !dbg !1242
  %exitcond = icmp ne i64 %indvars.iv.next, 3, !dbg !1298
  br i1 %exitcond, label %33, label %42, !dbg !1285, !llvm.loop !1299

42:                                               ; preds = %41
  br label %43, !dbg !1301

43:                                               ; preds = %42
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv610, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next7, metadata !1236, metadata !DIExpression()), !dbg !1242
  %exitcond8 = icmp ne i64 %indvars.iv.next7, 4, !dbg !1303
  br i1 %exitcond8, label %32, label %44, !dbg !1283, !llvm.loop !1304

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1306
  %46 = load %struct.strand_t*, %struct.strand_t** %45, align 8, !dbg !1306, !tbaa !1307
  call void @llvm.dbg.value(metadata %struct.strand_t* %46, metadata !1238, metadata !DIExpression()), !dbg !1242
  %47 = icmp ne %struct.strand_t* %46, null, !dbg !1308
  br i1 %47, label %48, label %54, !dbg !1310

48:                                               ; preds = %44
  %49 = call %struct.strand_t* @copystrand(%struct.strand_t* %46), !dbg !1311
  call void @llvm.dbg.value(metadata %struct.strand_t* %49, metadata !1239, metadata !DIExpression()), !dbg !1242
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %49, i32 0, i32 3, !dbg !1313
  store %struct.molecule_t* %3, %struct.molecule_t** %50, align 8, !dbg !1314, !tbaa !1188
  %51 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 2, !dbg !1315
  store %struct.strand_t* %49, %struct.strand_t** %51, align 8, !dbg !1316, !tbaa !1307
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %46, i32 0, i32 4, !dbg !1317
  %53 = load %struct.strand_t*, %struct.strand_t** %52, align 8, !dbg !1317, !tbaa !1191
  call void @llvm.dbg.value(metadata %struct.strand_t* %53, metadata !1238, metadata !DIExpression()), !dbg !1242
  br label %54, !dbg !1318

54:                                               ; preds = %48, %44
  %.04 = phi %struct.strand_t* [ %49, %48 ], [ undef, %44 ]
  %.03 = phi %struct.strand_t* [ %53, %48 ], [ %46, %44 ], !dbg !1242
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03, metadata !1238, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata %struct.strand_t* %.04, metadata !1239, metadata !DIExpression()), !dbg !1242
  %55 = icmp ne %struct.strand_t* %.03, null, !dbg !1319
  br i1 %55, label %.lr.ph, label %66, !dbg !1320

.lr.ph:                                           ; preds = %54
  br label %56, !dbg !1320

56:                                               ; preds = %.lr.ph, %61
  %.112 = phi %struct.strand_t* [ %.03, %.lr.ph ], [ %64, %61 ]
  %.1511 = phi %struct.strand_t* [ %.04, %.lr.ph ], [ %57, %61 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.112, metadata !1238, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1511, metadata !1239, metadata !DIExpression()), !dbg !1242
  %57 = call %struct.strand_t* @copystrand(%struct.strand_t* %.112), !dbg !1321
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !1240, metadata !DIExpression()), !dbg !1242
  %58 = icmp ne %struct.strand_t* %.1511, null, !dbg !1323
  br i1 %58, label %59, label %61, !dbg !1325

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1511, i32 0, i32 4, !dbg !1326
  store %struct.strand_t* %57, %struct.strand_t** %60, align 8, !dbg !1327, !tbaa !1191
  br label %61, !dbg !1328

61:                                               ; preds = %59, %56
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %57, i32 0, i32 3, !dbg !1329
  store %struct.molecule_t* %3, %struct.molecule_t** %62, align 8, !dbg !1330, !tbaa !1188
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !1239, metadata !DIExpression()), !dbg !1242
  %63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.112, i32 0, i32 4, !dbg !1331
  %64 = load %struct.strand_t*, %struct.strand_t** %63, align 8, !dbg !1331, !tbaa !1191
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !1238, metadata !DIExpression()), !dbg !1242
  %65 = icmp ne %struct.strand_t* %64, null, !dbg !1319
  br i1 %65, label %56, label %._crit_edge, !dbg !1320, !llvm.loop !1332

._crit_edge:                                      ; preds = %61
  br label %66, !dbg !1320

66:                                               ; preds = %._crit_edge, %54
  call void @upd_molnumbers(%struct.molecule_t* %3), !dbg !1334
  br label %67, !dbg !1335

67:                                               ; preds = %66, %5
  %.0 = phi %struct.molecule_t* [ null, %5 ], [ %3, %66 ], !dbg !1242
  ret %struct.molecule_t* %.0, !dbg !1336
}

declare !dbg !229 dso_local void @upd_molnumbers(%struct.molecule_t*) #3

declare !dbg !234 dso_local %struct.parm* @copyparm(%struct.parm*) #3

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @read_reslib_header(i8* %0, %struct._IO_FILE** %1, %struct._IO_FILE** %2, %struct._IO_FILE** %3, %struct._IO_FILE** %4, i8* %5) #0 !dbg !1337 {
  %7 = alloca [128 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1342, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %1, metadata !1343, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %2, metadata !1344, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %3, metadata !1345, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %4, metadata !1346, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %5, metadata !1347, metadata !DIExpression()), !dbg !1365
  %12 = bitcast [128 x i8]* %7 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %12) #9, !dbg !1366
  call void @llvm.dbg.declare(metadata [128 x i8]* %7, metadata !1353, metadata !DIExpression()), !dbg !1367
  %13 = bitcast [20 x i8]* %8 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %13) #9, !dbg !1366
  call void @llvm.dbg.declare(metadata [20 x i8]* %8, metadata !1357, metadata !DIExpression()), !dbg !1368
  %14 = bitcast [100 x i8]* %9 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %14) #9, !dbg !1366
  call void @llvm.dbg.declare(metadata [100 x i8]* %9, metadata !1358, metadata !DIExpression()), !dbg !1369
  %15 = bitcast [100 x i8]* %10 to i8*, !dbg !1366
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %15) #9, !dbg !1366
  call void @llvm.dbg.declare(metadata [100 x i8]* %10, metadata !1362, metadata !DIExpression()), !dbg !1370
  %16 = bitcast [256 x i8]* %11 to i8*, !dbg !1371
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %16) #9, !dbg !1371
  call void @llvm.dbg.declare(metadata [256 x i8]* %11, metadata !1363, metadata !DIExpression()), !dbg !1372
  %17 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1373
  %18 = icmp ne i8* %17, null, !dbg !1375
  br i1 %18, label %19, label %31, !dbg !1376

19:                                               ; preds = %6
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0, !dbg !1377
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %0) #9, !dbg !1379
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0, !dbg !1380
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1381
  call void @mk_fname(i8* %22, i8* %23), !dbg !1382
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1383
  %25 = call %struct._IO_FILE* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1385
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1348, metadata !DIExpression()), !dbg !1365
  %26 = icmp eq %struct._IO_FILE* %25, null, !dbg !1386
  br i1 %26, label %27, label %30, !dbg !1387

27:                                               ; preds = %19
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1388
  %29 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* %28), !dbg !1390
  br label %256, !dbg !1391

30:                                               ; preds = %19
  br label %40, !dbg !1392

31:                                               ; preds = %6
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1393
  call void @mk_fname(i8* %0, i8* %32), !dbg !1395
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1396
  %34 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1398
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %34, metadata !1348, metadata !DIExpression()), !dbg !1365
  %35 = icmp eq %struct._IO_FILE* %34, null, !dbg !1399
  br i1 %35, label %36, label %39, !dbg !1400

36:                                               ; preds = %31
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1401
  %38 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* %37), !dbg !1403
  br label %256, !dbg !1404

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %30
  %.02 = phi %struct._IO_FILE* [ %25, %30 ], [ %34, %39 ], !dbg !1405
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.02, metadata !1348, metadata !DIExpression()), !dbg !1365
  %41 = call noalias i8* @malloc(i64 32) #9, !dbg !1406
  %42 = bitcast i8* %41 to %struct.reslib_t*, !dbg !1408
  call void @llvm.dbg.value(metadata %struct.reslib_t* %42, metadata !1349, metadata !DIExpression()), !dbg !1365
  %43 = icmp eq %struct.reslib_t* %42, null, !dbg !1409
  br i1 %43, label %44, label %47, !dbg !1410

44:                                               ; preds = %40
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %0) #9, !dbg !1411
  %46 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1413
  br label %256, !dbg !1414

47:                                               ; preds = %40
  %48 = call i64 @strlen(i8* %0) #8, !dbg !1415
  %49 = add i64 %48, 1, !dbg !1416
  %50 = trunc i64 %49 to i32, !dbg !1415
  call void @llvm.dbg.value(metadata i32 %50, metadata !1351, metadata !DIExpression()), !dbg !1365
  %51 = sext i32 %50 to i64, !dbg !1417
  %52 = mul i64 %51, 1, !dbg !1419
  %53 = call noalias i8* @malloc(i64 %52) #9, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %53, metadata !1352, metadata !DIExpression()), !dbg !1365
  %54 = icmp eq i8* %53, null, !dbg !1421
  br i1 %54, label %55, label %58, !dbg !1422

55:                                               ; preds = %47
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* %0) #9, !dbg !1423
  %57 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1425
  br label %256, !dbg !1426

58:                                               ; preds = %47
  %59 = call i8* @strcpy(i8* %53, i8* %0) #9, !dbg !1427
  %60 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1428, !tbaa !379
  %61 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 0, !dbg !1429
  store %struct.reslib_t* %60, %struct.reslib_t** %61, align 8, !dbg !1430, !tbaa !436
  store %struct.reslib_t* %42, %struct.reslib_t** @reslibs, align 8, !dbg !1431, !tbaa !379
  %62 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 1, !dbg !1432
  store i8* %53, i8** %62, align 8, !dbg !1433, !tbaa !427
  %63 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 2, !dbg !1434
  store i32 0, i32* %63, align 8, !dbg !1435, !tbaa !389
  %64 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 3, !dbg !1436
  store i32 0, i32* %64, align 4, !dbg !1437, !tbaa !1438
  %65 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 4, !dbg !1439
  store %struct.residue_t* null, %struct.residue_t** %65, align 8, !dbg !1440, !tbaa !661
  store %struct._IO_FILE* null, %struct._IO_FILE** %1, align 8, !dbg !1441, !tbaa !379
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !dbg !1442, !tbaa !379
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !1443, !tbaa !379
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8, !dbg !1444, !tbaa !379
  store i8 0, i8* %5, align 1, !dbg !1445, !tbaa !474
  %66 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1446
  %67 = icmp eq i8* %66, null, !dbg !1448
  br i1 %67, label %68, label %212, !dbg !1449

68:                                               ; preds = %58
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1450
  %70 = call i8* @fgets(i8* %69, i32 128, %struct._IO_FILE* %.02), !dbg !1452
  %71 = icmp ne i8* %70, null, !dbg !1453
  br i1 %71, label %.lr.ph, label %211, !dbg !1453

.lr.ph:                                           ; preds = %68
  br label %72, !dbg !1453

72:                                               ; preds = %.lr.ph, %.backedge
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1454
  %74 = load i8, i8* %73, align 16, !dbg !1454, !tbaa !474
  %75 = sext i8 %74 to i32, !dbg !1454
  %76 = icmp eq i32 %75, 35, !dbg !1457
  br i1 %76, label %77, label %80, !dbg !1458

77:                                               ; preds = %72
  br label %.backedge, !dbg !1459

.backedge:                                        ; preds = %77, %86, %210
  %78 = call i8* @fgets(i8* %69, i32 128, %struct._IO_FILE* %.02), !dbg !1452
  %79 = icmp ne i8* %78, null, !dbg !1453
  br i1 %79, label %72, label %._crit_edge, !dbg !1453, !llvm.loop !1460

80:                                               ; preds = %72
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1462
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1464
  %83 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1465
  %84 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* %82, i8* %83) #9, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %84, metadata !1350, metadata !DIExpression()), !dbg !1365
  %85 = icmp eq i32 %84, -1, !dbg !1467
  br i1 %85, label %86, label %87, !dbg !1468

86:                                               ; preds = %80
  br label %.backedge, !dbg !1469

87:                                               ; preds = %80
  %88 = icmp ne i32 %84, 2, !dbg !1471
  br i1 %88, label %89, label %90, !dbg !1473

89:                                               ; preds = %87
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1349, metadata !DIExpression()), !dbg !1365
  br label %215, !dbg !1474

90:                                               ; preds = %87
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1476
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !1478
  %93 = icmp eq i32 %92, 0, !dbg !1479
  br i1 %93, label %94, label %116, !dbg !1480

94:                                               ; preds = %90
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1481
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1484
  %97 = icmp eq i32 %96, 0, !dbg !1485
  br i1 %97, label %98, label %100, !dbg !1486

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 2, !dbg !1487
  store i32 1, i32* %99, align 8, !dbg !1488, !tbaa !389
  br label %115, !dbg !1489

100:                                              ; preds = %94
  %101 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1490
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1492
  %103 = icmp eq i32 %102, 0, !dbg !1493
  br i1 %103, label %104, label %106, !dbg !1494

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 2, !dbg !1495
  store i32 2, i32* %105, align 8, !dbg !1496, !tbaa !389
  br label %114, !dbg !1497

106:                                              ; preds = %100
  %107 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1498
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1500
  %109 = icmp eq i32 %108, 0, !dbg !1501
  br i1 %109, label %110, label %112, !dbg !1502

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 2, !dbg !1503
  store i32 3, i32* %111, align 8, !dbg !1504, !tbaa !389
  br label %113, !dbg !1505

112:                                              ; preds = %106
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1349, metadata !DIExpression()), !dbg !1365
  br label %215, !dbg !1506

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %98
  br label %208, !dbg !1508

116:                                              ; preds = %90
  %117 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1509
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1511
  %119 = icmp eq i32 %118, 0, !dbg !1512
  br i1 %119, label %120, label %135, !dbg !1513

120:                                              ; preds = %116
  %121 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1514
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !1517
  %123 = icmp eq i32 %122, 0, !dbg !1518
  br i1 %123, label %124, label %126, !dbg !1519

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 3, !dbg !1520
  store i32 1, i32* %125, align 4, !dbg !1521, !tbaa !1438
  br label %134, !dbg !1522

126:                                              ; preds = %120
  %127 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1523
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !1525
  %129 = icmp eq i32 %128, 0, !dbg !1526
  br i1 %129, label %130, label %132, !dbg !1527

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %42, i32 0, i32 3, !dbg !1528
  store i32 2, i32* %131, align 4, !dbg !1529, !tbaa !1438
  br label %133, !dbg !1530

132:                                              ; preds = %126
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1349, metadata !DIExpression()), !dbg !1365
  br label %215, !dbg !1531

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %133, %124
  br label %207, !dbg !1533

135:                                              ; preds = %116
  %136 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1534
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0)) #8, !dbg !1536
  %138 = icmp eq i32 %137, 0, !dbg !1537
  br i1 %138, label %139, label %141, !dbg !1538

139:                                              ; preds = %135
  %140 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1539
  call void @mk_fname(i8* %140, i8* %5), !dbg !1541
  br label %206, !dbg !1542

141:                                              ; preds = %135
  %142 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1543
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0)) #8, !dbg !1545
  %144 = icmp eq i32 %143, 0, !dbg !1546
  br i1 %144, label %145, label %156, !dbg !1547

145:                                              ; preds = %141
  %146 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1548
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1550
  call void @mk_fname(i8* %146, i8* %147), !dbg !1551
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1552
  %149 = call %struct._IO_FILE* @fopen(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1554
  store %struct._IO_FILE* %149, %struct._IO_FILE** %1, align 8, !dbg !1555, !tbaa !379
  %150 = icmp eq %struct._IO_FILE* %149, null, !dbg !1556
  br i1 %150, label %151, label %155, !dbg !1557

151:                                              ; preds = %145
  %152 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1558
  %153 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* %152) #9, !dbg !1560
  %154 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1561
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1349, metadata !DIExpression()), !dbg !1365
  br label %215, !dbg !1562

155:                                              ; preds = %145
  br label %205, !dbg !1563

156:                                              ; preds = %141
  %157 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1564
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #8, !dbg !1566
  %159 = icmp eq i32 %158, 0, !dbg !1567
  br i1 %159, label %160, label %171, !dbg !1568

160:                                              ; preds = %156
  %161 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1569
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1571
  call void @mk_fname(i8* %161, i8* %162), !dbg !1572
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1573
  %164 = call %struct._IO_FILE* @fopen(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1575
  store %struct._IO_FILE* %164, %struct._IO_FILE** %2, align 8, !dbg !1576, !tbaa !379
  %165 = icmp eq %struct._IO_FILE* %164, null, !dbg !1577
  br i1 %165, label %166, label %170, !dbg !1578

166:                                              ; preds = %160
  %167 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1579
  %168 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* %167) #9, !dbg !1581
  %169 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1349, metadata !DIExpression()), !dbg !1365
  br label %215, !dbg !1583

170:                                              ; preds = %160
  br label %204, !dbg !1584

171:                                              ; preds = %156
  %172 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1585
  %173 = call i32 @strcmp(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !1587
  %174 = icmp eq i32 %173, 0, !dbg !1588
  br i1 %174, label %175, label %186, !dbg !1589

175:                                              ; preds = %171
  %176 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1590
  %177 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1592
  call void @mk_fname(i8* %176, i8* %177), !dbg !1593
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1594
  %179 = call %struct._IO_FILE* @fopen(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1596
  store %struct._IO_FILE* %179, %struct._IO_FILE** %3, align 8, !dbg !1597, !tbaa !379
  %180 = icmp eq %struct._IO_FILE* %179, null, !dbg !1598
  br i1 %180, label %181, label %185, !dbg !1599

181:                                              ; preds = %175
  %182 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1600
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* %182) #9, !dbg !1602
  %184 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1603
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1349, metadata !DIExpression()), !dbg !1365
  br label %215, !dbg !1604

185:                                              ; preds = %175
  br label %203, !dbg !1605

186:                                              ; preds = %171
  %187 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1606
  %188 = call i32 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #8, !dbg !1608
  %189 = icmp eq i32 %188, 0, !dbg !1609
  br i1 %189, label %190, label %201, !dbg !1610

190:                                              ; preds = %186
  %191 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1611
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1613
  call void @mk_fname(i8* %191, i8* %192), !dbg !1614
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1615
  %194 = call %struct._IO_FILE* @fopen(i8* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)), !dbg !1617
  store %struct._IO_FILE* %194, %struct._IO_FILE** %4, align 8, !dbg !1618, !tbaa !379
  %195 = icmp eq %struct._IO_FILE* %194, null, !dbg !1619
  br i1 %195, label %196, label %200, !dbg !1620

196:                                              ; preds = %190
  %197 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1621
  %198 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* %197) #9, !dbg !1623
  %199 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1624
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1349, metadata !DIExpression()), !dbg !1365
  br label %215, !dbg !1625

200:                                              ; preds = %190
  br label %202, !dbg !1626

201:                                              ; preds = %186
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1349, metadata !DIExpression()), !dbg !1365
  br label %215, !dbg !1627

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
  br label %.backedge, !dbg !1453

._crit_edge:                                      ; preds = %.backedge
  br label %211, !dbg !1453

211:                                              ; preds = %._crit_edge, %68
  br label %214, !dbg !1629

212:                                              ; preds = %58
  %213 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0, !dbg !1630
  call void @mk_fname(i8* %213, i8* %5), !dbg !1632
  br label %214

214:                                              ; preds = %212, %211
  br label %215, !dbg !1633

215:                                              ; preds = %214, %201, %196, %181, %166, %151, %132, %112, %89
  %.01 = phi %struct.reslib_t* [ null, %89 ], [ null, %112 ], [ null, %132 ], [ null, %151 ], [ null, %166 ], [ null, %181 ], [ null, %196 ], [ null, %201 ], [ %42, %214 ], !dbg !1365
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.01, metadata !1349, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.label(metadata !1364), !dbg !1634
  %216 = call i32 @fclose(%struct._IO_FILE* %.02), !dbg !1635
  %217 = icmp eq %struct.reslib_t* %.01, null, !dbg !1636
  br i1 %217, label %218, label %255, !dbg !1638

218:                                              ; preds = %215
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !1639, !tbaa !379
  %220 = icmp ne %struct._IO_FILE* %219, null, !dbg !1639
  br i1 %220, label %221, label %224, !dbg !1642

221:                                              ; preds = %218
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !1643, !tbaa !379
  %223 = call i32 @fclose(%struct._IO_FILE* %222), !dbg !1644
  br label %224, !dbg !1644

224:                                              ; preds = %221, %218
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1645, !tbaa !379
  %226 = icmp ne %struct._IO_FILE* %225, null, !dbg !1645
  br i1 %226, label %227, label %230, !dbg !1647

227:                                              ; preds = %224
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1648, !tbaa !379
  %229 = call i32 @fclose(%struct._IO_FILE* %228), !dbg !1649
  br label %230, !dbg !1649

230:                                              ; preds = %227, %224
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1650, !tbaa !379
  %232 = icmp ne %struct._IO_FILE* %231, null, !dbg !1650
  br i1 %232, label %233, label %236, !dbg !1652

233:                                              ; preds = %230
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1653, !tbaa !379
  %235 = call i32 @fclose(%struct._IO_FILE* %234), !dbg !1654
  br label %236, !dbg !1654

236:                                              ; preds = %233, %230
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1655, !tbaa !379
  %238 = icmp ne %struct._IO_FILE* %237, null, !dbg !1655
  br i1 %238, label %239, label %242, !dbg !1657

239:                                              ; preds = %236
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1658, !tbaa !379
  %241 = call i32 @fclose(%struct._IO_FILE* %240), !dbg !1659
  br label %242, !dbg !1659

242:                                              ; preds = %239, %236
  %243 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1660
  %244 = call i64 @strlen(i8* %243) #8, !dbg !1661
  %245 = sub i64 %244, 1, !dbg !1662
  %246 = trunc i64 %245 to i32, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %246, metadata !1351, metadata !DIExpression()), !dbg !1365
  %247 = icmp sgt i32 %246, 20, !dbg !1663
  br i1 %247, label %248, label %249, !dbg !1664

248:                                              ; preds = %242
  br label %250, !dbg !1664

249:                                              ; preds = %242
  br label %250, !dbg !1664

250:                                              ; preds = %249, %248
  %251 = phi i32 [ 20, %248 ], [ %246, %249 ], !dbg !1664
  call void @llvm.dbg.value(metadata i32 %251, metadata !1351, metadata !DIExpression()), !dbg !1365
  %252 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1665
  %253 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %251, i32 %251, i8* %252) #9, !dbg !1666
  %254 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1667
  br label %255, !dbg !1668

255:                                              ; preds = %250, %215
  br label %256, !dbg !1669

256:                                              ; preds = %255, %55, %44, %36, %27
  %.0 = phi %struct.reslib_t* [ null, %27 ], [ null, %44 ], [ null, %55 ], [ %.01, %255 ], [ null, %36 ], !dbg !1365
  %257 = bitcast [256 x i8]* %11 to i8*, !dbg !1670
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %257) #9, !dbg !1670
  %258 = bitcast [100 x i8]* %10 to i8*, !dbg !1670
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %258) #9, !dbg !1670
  %259 = bitcast [100 x i8]* %9 to i8*, !dbg !1670
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %259) #9, !dbg !1670
  %260 = bitcast [20 x i8]* %8 to i8*, !dbg !1670
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %260) #9, !dbg !1670
  %261 = bitcast [128 x i8]* %7 to i8*, !dbg !1670
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %261) #9, !dbg !1670
  ret %struct.reslib_t* %.0, !dbg !1670
}

; Function Attrs: nounwind uwtable
define internal void @initatoms() #0 !dbg !324 {
  %1 = load i32, i32* @initatoms.init, align 4, !dbg !1671, !tbaa !858
  %2 = icmp ne i32 %1, 0, !dbg !1671
  br i1 %2, label %4, label %3, !dbg !1673

3:                                                ; preds = %0
  br label %19, !dbg !1674

4:                                                ; preds = %0
  store i32 0, i32* @initatoms.init, align 4, !dbg !1675, !tbaa !858
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !329, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 0, metadata !328, metadata !DIExpression()), !dbg !1676
  br label %5, !dbg !1677

5:                                                ; preds = %4, %15
  %.04 = phi i32 [ 0, %4 ], [ %16, %15 ]
  %.013 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %4 ], [ %17, %15 ]
  call void @llvm.dbg.value(metadata i32 %.04, metadata !328, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata %struct.atom_t* %.013, metadata !329, metadata !DIExpression()), !dbg !1676
  call void @NAB_initatom(%struct.atom_t* %.013, i32 1), !dbg !1679
  %6 = call noalias i8* @malloc(i64 8) #9, !dbg !1682
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 0, !dbg !1683
  store i8* %6, i8** %7, align 8, !dbg !1684, !tbaa !967
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 0, !dbg !1685
  %9 = load i8*, i8** %8, align 8, !dbg !1685, !tbaa !967
  %10 = icmp eq i8* %9, null, !dbg !1687
  br i1 %10, label %11, label %14, !dbg !1688

11:                                               ; preds = %5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1689, !tbaa !379
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0)), !dbg !1691
  call void @exit(i32 1) #7, !dbg !1692
  unreachable, !dbg !1692

14:                                               ; preds = %5
  br label %15, !dbg !1693

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.04, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i32 %16, metadata !328, metadata !DIExpression()), !dbg !1676
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 1, !dbg !1695
  call void @llvm.dbg.value(metadata %struct.atom_t* %17, metadata !329, metadata !DIExpression()), !dbg !1676
  %exitcond = icmp ne i32 %16, 1000, !dbg !1696
  br i1 %exitcond, label %5, label %18, !dbg !1677, !llvm.loop !1697

18:                                               ; preds = %15
  br label %19, !dbg !1699

19:                                               ; preds = %18, %3
  %.02 = phi i32 [ 0, %18 ], [ 1, %3 ]
  switch i32 %.02, label %21 [
    i32 0, label %20
    i32 1, label %20
  ]

20:                                               ; preds = %19, %19
  ret void, !dbg !1699

21:                                               ; preds = %19
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @off2reslib(i8* %0, %struct.reslib_t* %1) #0 !dbg !1700 {
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
  call void @llvm.dbg.value(metadata i8* %0, metadata !1704, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !1705, metadata !DIExpression()), !dbg !1760
  %20 = bitcast i32* %3 to i8*, !dbg !1761
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #9, !dbg !1761
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1707, metadata !DIExpression()), !dbg !1762
  %21 = bitcast i32* %4 to i8*, !dbg !1761
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #9, !dbg !1761
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1708, metadata !DIExpression()), !dbg !1763
  %22 = bitcast [100 x i32]* %5 to i8*, !dbg !1764
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %22) #9, !dbg !1764
  call void @llvm.dbg.declare(metadata [100 x i32]* %5, metadata !1738, metadata !DIExpression()), !dbg !1765
  %23 = bitcast [100 x i32]* %6 to i8*, !dbg !1764
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %23) #9, !dbg !1764
  call void @llvm.dbg.declare(metadata [100 x i32]* %6, metadata !1740, metadata !DIExpression()), !dbg !1766
  %24 = bitcast [100 x i32]* %7 to i8*, !dbg !1764
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %24) #9, !dbg !1764
  call void @llvm.dbg.declare(metadata [100 x i32]* %7, metadata !1741, metadata !DIExpression()), !dbg !1767
  %25 = bitcast [100 x i32]* %8 to i8*, !dbg !1764
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %25) #9, !dbg !1764
  call void @llvm.dbg.declare(metadata [100 x i32]* %8, metadata !1742, metadata !DIExpression()), !dbg !1768
  %26 = bitcast [100 x i32]* %9 to i8*, !dbg !1764
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %26) #9, !dbg !1764
  call void @llvm.dbg.declare(metadata [100 x i32]* %9, metadata !1743, metadata !DIExpression()), !dbg !1769
  %27 = bitcast [100 x i32]* %10 to i8*, !dbg !1770
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %27) #9, !dbg !1770
  call void @llvm.dbg.declare(metadata [100 x i32]* %10, metadata !1744, metadata !DIExpression()), !dbg !1771
  %28 = bitcast [100 x i32]* %11 to i8*, !dbg !1770
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %28) #9, !dbg !1770
  call void @llvm.dbg.declare(metadata [100 x i32]* %11, metadata !1745, metadata !DIExpression()), !dbg !1772
  %29 = bitcast [100 x double]* %12 to i8*, !dbg !1773
  call void @llvm.lifetime.start.p0i8(i64 800, i8* %29) #9, !dbg !1773
  call void @llvm.dbg.declare(metadata [100 x double]* %12, metadata !1746, metadata !DIExpression()), !dbg !1774
  %30 = bitcast [100 x double]* %13 to i8*, !dbg !1773
  call void @llvm.lifetime.start.p0i8(i64 800, i8* %30) #9, !dbg !1773
  call void @llvm.dbg.declare(metadata [100 x double]* %13, metadata !1748, metadata !DIExpression()), !dbg !1775
  %31 = bitcast [100 x double]* %14 to i8*, !dbg !1773
  call void @llvm.lifetime.start.p0i8(i64 800, i8* %31) #9, !dbg !1773
  call void @llvm.dbg.declare(metadata [100 x double]* %14, metadata !1749, metadata !DIExpression()), !dbg !1776
  %32 = bitcast [100 x double]* %15 to i8*, !dbg !1773
  call void @llvm.lifetime.start.p0i8(i64 800, i8* %32) #9, !dbg !1773
  call void @llvm.dbg.declare(metadata [100 x double]* %15, metadata !1750, metadata !DIExpression()), !dbg !1777
  %33 = bitcast [100 x [10 x i8]]* %16 to i8*, !dbg !1778
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* %33) #9, !dbg !1778
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %16, metadata !1751, metadata !DIExpression()), !dbg !1779
  %34 = bitcast [100 x [10 x i8]]* %17 to i8*, !dbg !1778
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* %34) #9, !dbg !1778
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %17, metadata !1754, metadata !DIExpression()), !dbg !1780
  %35 = bitcast [100 x [10 x i8]]* %18 to i8*, !dbg !1778
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* %35) #9, !dbg !1778
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %18, metadata !1755, metadata !DIExpression()), !dbg !1781
  %36 = bitcast [255 x i8]* %19 to i8*, !dbg !1782
  call void @llvm.lifetime.start.p0i8(i64 255, i8* %36) #9, !dbg !1782
  call void @llvm.dbg.declare(metadata [255 x i8]* %19, metadata !1756, metadata !DIExpression()), !dbg !1783
  store i32 0, i32* @n_atoms, align 4, !dbg !1784, !tbaa !858
  %37 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* %0, i32 1), !dbg !1785
  call void @llvm.dbg.value(metadata %struct.DATABASEt* %37, metadata !1711, metadata !DIExpression()), !dbg !1760
  %38 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %18, i64 0, i64 0, !dbg !1786
  %39 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* %4, [10 x i8]* %38, i32 10), !dbg !1787
  call void @llvm.dbg.value(metadata i8 %39, metadata !1737, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 0, metadata !1710, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i64 0, metadata !1710, metadata !DIExpression()), !dbg !1760
  %40 = load i32, i32* %4, align 4, !dbg !1788, !tbaa !858
  %41 = sext i32 %40 to i64, !dbg !1791
  %42 = icmp slt i64 0, %41, !dbg !1791
  br i1 %42, label %.lr.ph13, label %126, !dbg !1792

.lr.ph13:                                         ; preds = %2
  br label %43, !dbg !1792

43:                                               ; preds = %.lr.ph13, %122
  %indvars.iv411 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next5, %122 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv411, metadata !1710, metadata !DIExpression()), !dbg !1760
  %44 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0, !dbg !1793
  %45 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %18, i64 0, i64 %indvars.iv411, !dbg !1795
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %45, i64 0, i64 0, !dbg !1795
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* %46) #9, !dbg !1796
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* %37), !dbg !1797
  %48 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0, !dbg !1798
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* %37, i8* %48), !dbg !1799
  %49 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 1), !dbg !1800
  call void @llvm.dbg.value(metadata i8 %49, metadata !1737, metadata !DIExpression()), !dbg !1760
  %50 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0, !dbg !1801
  %51 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0, !dbg !1802
  %52 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0, !dbg !1803
  %53 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0, !dbg !1804
  %54 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0, !dbg !1805
  %55 = getelementptr inbounds [100 x double], [100 x double]* %12, i64 0, i64 0, !dbg !1806
  %56 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %16, i64 0, i64 0, !dbg !1807
  %57 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %17, i64 0, i64 0, !dbg !1808
  %58 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* @n_atoms, i32 3, i32* %50, i64 4, i32 4, i32* %51, i64 4, i32 5, i32* %52, i64 4, i32 6, i32* %53, i64 4, i32 7, i32* %54, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 8, double* %55, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, [10 x i8]* %56, i32 10, i32 2, [10 x i8]* %57, i32 10, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %58, metadata !1737, metadata !DIExpression()), !dbg !1760
  %59 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 0, !dbg !1810
  %60 = getelementptr inbounds [100 x double], [100 x double]* %14, i64 0, i64 0, !dbg !1811
  %61 = getelementptr inbounds [100 x double], [100 x double]* %15, i64 0, i64 0, !dbg !1812
  %62 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* @n_atoms, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, double* %59, i64 8, i32 2, double* %60, i64 8, i32 3, double* %61, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0), !dbg !1813
  call void @llvm.dbg.value(metadata i8 %62, metadata !1737, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 0, metadata !1709, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i64 0, metadata !1709, metadata !DIExpression()), !dbg !1760
  %63 = load i32, i32* @n_atoms, align 4, !dbg !1814, !tbaa !858
  %64 = sext i32 %63 to i64, !dbg !1817
  %65 = icmp slt i64 0, %64, !dbg !1817
  br i1 %65, label %.lr.ph, label %92, !dbg !1818

.lr.ph:                                           ; preds = %43
  br label %66, !dbg !1818

66:                                               ; preds = %.lr.ph, %88
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %88 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !1709, metadata !DIExpression()), !dbg !1760
  %67 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv6, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.atom_t* %67, metadata !1706, metadata !DIExpression()), !dbg !1760
  call void @NAB_initatom(%struct.atom_t* %67, i32 0), !dbg !1821
  %68 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 0, !dbg !1822
  %69 = load i8*, i8** %68, align 8, !dbg !1822, !tbaa !967
  %70 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %16, i64 0, i64 %indvars.iv6, !dbg !1823
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %70, i64 0, i64 0, !dbg !1823
  %72 = call i8* @strcpy(i8* %69, i8* %71) #9, !dbg !1824
  %73 = getelementptr inbounds [100 x double], [100 x double]* %12, i64 0, i64 %indvars.iv6, !dbg !1825
  %74 = load double, double* %73, align 8, !dbg !1825, !tbaa !1095
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 6, !dbg !1826
  store double %74, double* %75, align 8, !dbg !1827, !tbaa !1024
  %76 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %indvars.iv6, !dbg !1828
  %77 = load double, double* %76, align 8, !dbg !1828, !tbaa !1095
  %78 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 17, !dbg !1829
  %79 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 0, !dbg !1830
  store double %77, double* %79, align 8, !dbg !1831, !tbaa !1095
  %80 = getelementptr inbounds [100 x double], [100 x double]* %14, i64 0, i64 %indvars.iv6, !dbg !1832
  %81 = load double, double* %80, align 8, !dbg !1832, !tbaa !1095
  %82 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 17, !dbg !1833
  %83 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 1, !dbg !1834
  store double %81, double* %83, align 8, !dbg !1835, !tbaa !1095
  %84 = getelementptr inbounds [100 x double], [100 x double]* %15, i64 0, i64 %indvars.iv6, !dbg !1836
  %85 = load double, double* %84, align 8, !dbg !1836, !tbaa !1095
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 17, !dbg !1837
  %87 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 2, !dbg !1838
  store double %85, double* %87, align 8, !dbg !1839, !tbaa !1095
  br label %88, !dbg !1840

88:                                               ; preds = %66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1709, metadata !DIExpression()), !dbg !1760
  %89 = load i32, i32* @n_atoms, align 4, !dbg !1814, !tbaa !858
  %90 = sext i32 %89 to i64, !dbg !1817
  %91 = icmp slt i64 %indvars.iv.next, %90, !dbg !1817
  br i1 %91, label %66, label %._crit_edge, !dbg !1818, !llvm.loop !1842

._crit_edge:                                      ; preds = %88
  br label %92, !dbg !1818

92:                                               ; preds = %._crit_edge, %43
  %93 = load i32, i32* @n_atoms, align 4, !dbg !1844, !tbaa !858
  %94 = icmp sgt i32 %93, 0, !dbg !1846
  br i1 %94, label %95, label %96, !dbg !1847

95:                                               ; preds = %92
  call void @addres2reslib(%struct.reslib_t* %1), !dbg !1848
  br label %96, !dbg !1848

96:                                               ; preds = %95, %92
  %97 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0, !dbg !1849
  %98 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0, !dbg !1850
  %99 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0, !dbg !1851
  %100 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* @n_bonds, i32 1, i32* %97, i64 4, i32 2, i32* %98, i64 4, i32 3, i32* %99, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0), !dbg !1852
  call void @llvm.dbg.value(metadata i8 %100, metadata !1737, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i32 0, metadata !1709, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i64 0, metadata !1709, metadata !DIExpression()), !dbg !1760
  %101 = load i32, i32* @n_bonds, align 4, !dbg !1853, !tbaa !858
  %102 = sext i32 %101 to i64, !dbg !1856
  %103 = icmp slt i64 0, %102, !dbg !1856
  br i1 %103, label %.lr.ph9, label %117, !dbg !1857

.lr.ph9:                                          ; preds = %96
  br label %104, !dbg !1857

104:                                              ; preds = %.lr.ph9, %113
  %indvars.iv27 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next3, %113 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !1709, metadata !DIExpression()), !dbg !1760
  %105 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 %indvars.iv27, !dbg !1858
  %106 = load i32, i32* %105, align 4, !dbg !1858, !tbaa !858
  %107 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv27, !dbg !1860
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 0, !dbg !1860
  store i32 %106, i32* %108, align 8, !dbg !1861, !tbaa !858
  %109 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 %indvars.iv27, !dbg !1862
  %110 = load i32, i32* %109, align 4, !dbg !1862, !tbaa !858
  %111 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv27, !dbg !1863
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %111, i64 0, i64 1, !dbg !1863
  store i32 %110, i32* %112, align 4, !dbg !1864, !tbaa !858
  br label %113, !dbg !1865

113:                                              ; preds = %104
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv27, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !1709, metadata !DIExpression()), !dbg !1760
  %114 = load i32, i32* @n_bonds, align 4, !dbg !1853, !tbaa !858
  %115 = sext i32 %114 to i64, !dbg !1856
  %116 = icmp slt i64 %indvars.iv.next3, %115, !dbg !1856
  br i1 %116, label %104, label %._crit_edge10, !dbg !1857, !llvm.loop !1867

._crit_edge10:                                    ; preds = %113
  br label %117, !dbg !1857

117:                                              ; preds = %._crit_edge10, %96
  %118 = load i32, i32* @n_bonds, align 4, !dbg !1869, !tbaa !858
  %119 = icmp sgt i32 %118, 0, !dbg !1871
  br i1 %119, label %120, label %121, !dbg !1872

120:                                              ; preds = %117
  call void @addbonds2reslib(%struct.reslib_t* %1), !dbg !1873
  br label %121, !dbg !1873

121:                                              ; preds = %120, %117
  br label %122, !dbg !1874

122:                                              ; preds = %121
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv411, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !1710, metadata !DIExpression()), !dbg !1760
  %123 = load i32, i32* %4, align 4, !dbg !1788, !tbaa !858
  %124 = sext i32 %123 to i64, !dbg !1791
  %125 = icmp slt i64 %indvars.iv.next5, %124, !dbg !1791
  br i1 %125, label %43, label %._crit_edge14, !dbg !1792, !llvm.loop !1876

._crit_edge14:                                    ; preds = %122
  br label %126, !dbg !1792

126:                                              ; preds = %._crit_edge14, %2
  %127 = bitcast [255 x i8]* %19 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 255, i8* %127) #9, !dbg !1878
  %128 = bitcast [100 x [10 x i8]]* %18 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* %128) #9, !dbg !1878
  %129 = bitcast [100 x [10 x i8]]* %17 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* %129) #9, !dbg !1878
  %130 = bitcast [100 x [10 x i8]]* %16 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* %130) #9, !dbg !1878
  %131 = bitcast [100 x double]* %15 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 800, i8* %131) #9, !dbg !1878
  %132 = bitcast [100 x double]* %14 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 800, i8* %132) #9, !dbg !1878
  %133 = bitcast [100 x double]* %13 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 800, i8* %133) #9, !dbg !1878
  %134 = bitcast [100 x double]* %12 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 800, i8* %134) #9, !dbg !1878
  %135 = bitcast [100 x i32]* %11 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %135) #9, !dbg !1878
  %136 = bitcast [100 x i32]* %10 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %136) #9, !dbg !1878
  %137 = bitcast [100 x i32]* %9 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %137) #9, !dbg !1878
  %138 = bitcast [100 x i32]* %8 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %138) #9, !dbg !1878
  %139 = bitcast [100 x i32]* %7 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %139) #9, !dbg !1878
  %140 = bitcast [100 x i32]* %6 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %140) #9, !dbg !1878
  %141 = bitcast [100 x i32]* %5 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %141) #9, !dbg !1878
  %142 = bitcast i32* %4 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %142) #9, !dbg !1878
  %143 = bitcast i32* %3 to i8*, !dbg !1878
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %143) #9, !dbg !1878
  ret void, !dbg !1878
}

; Function Attrs: nounwind uwtable
define internal void @pdb2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !1879 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1883, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !1884, metadata !DIExpression()), !dbg !1896
  %12 = bitcast [256 x i8]* %3 to i8*, !dbg !1897
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %12) #9, !dbg !1897
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !1885, metadata !DIExpression()), !dbg !1898
  %13 = bitcast [10 x i8]* %4 to i8*, !dbg !1899
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %13) #9, !dbg !1899
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !1886, metadata !DIExpression()), !dbg !1900
  %14 = bitcast [10 x i8]* %5 to i8*, !dbg !1899
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %14) #9, !dbg !1899
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !1888, metadata !DIExpression()), !dbg !1901
  %15 = bitcast [10 x i8]* %6 to i8*, !dbg !1899
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %15) #9, !dbg !1899
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !1889, metadata !DIExpression()), !dbg !1902
  %16 = bitcast i32* %7 to i8*, !dbg !1903
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #9, !dbg !1903
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1890, metadata !DIExpression()), !dbg !1904
  %17 = bitcast i32* %8 to i8*, !dbg !1903
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #9, !dbg !1903
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1891, metadata !DIExpression()), !dbg !1905
  %18 = bitcast double* %9 to i8*, !dbg !1906
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #9, !dbg !1906
  call void @llvm.dbg.declare(metadata double* %9, metadata !1892, metadata !DIExpression()), !dbg !1907
  %19 = bitcast double* %10 to i8*, !dbg !1906
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #9, !dbg !1906
  call void @llvm.dbg.declare(metadata double* %10, metadata !1893, metadata !DIExpression()), !dbg !1908
  %20 = bitcast double* %11 to i8*, !dbg !1906
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #9, !dbg !1906
  call void @llvm.dbg.declare(metadata double* %11, metadata !1894, metadata !DIExpression()), !dbg !1909
  store i32 0, i32* @n_atoms, align 4, !dbg !1910, !tbaa !858
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1911, !tbaa !474
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1912
  %22 = call i8* @fgets(i8* %21, i32 256, %struct._IO_FILE* %0), !dbg !1913
  %23 = icmp ne i8* %22, null, !dbg !1914
  br i1 %23, label %.lr.ph, label %77, !dbg !1914

.lr.ph:                                           ; preds = %2
  br label %24, !dbg !1914

24:                                               ; preds = %.lr.ph, %74
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1915
  %26 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* %25, i64 6) #8, !dbg !1918
  %27 = icmp eq i32 %26, 0, !dbg !1919
  br i1 %27, label %28, label %30, !dbg !1920

28:                                               ; preds = %24
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1921
  call void @setrlibattrs(%struct.reslib_t* %1, i8* %29), !dbg !1923
  br label %74, !dbg !1924

30:                                               ; preds = %24
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1925
  %32 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* %31, i64 4) #8, !dbg !1927
  %33 = icmp eq i32 %32, 0, !dbg !1928
  br i1 %33, label %38, label %34, !dbg !1929

34:                                               ; preds = %30
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1930
  %36 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* %35, i64 6) #8, !dbg !1931
  %37 = icmp eq i32 %36, 0, !dbg !1932
  br i1 %37, label %38, label %73, !dbg !1933

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1934
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !1936
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1937
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1938
  %43 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* %40, i32* %7, i8* %41, i8* %42, i32* %8, double* %9, double* %10, double* %11) #9, !dbg !1939
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1940
  %45 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %44) #8, !dbg !1942
  %46 = icmp ne i32 %45, 0, !dbg !1943
  br i1 %46, label %47, label %54, !dbg !1944

47:                                               ; preds = %38
  %48 = load i32, i32* @n_atoms, align 4, !dbg !1945, !tbaa !858
  %49 = icmp sgt i32 %48, 0, !dbg !1948
  br i1 %49, label %50, label %51, !dbg !1949

50:                                               ; preds = %47
  call void @addres2reslib(%struct.reslib_t* %1), !dbg !1950
  store i32 0, i32* @n_atoms, align 4, !dbg !1952, !tbaa !858
  br label %51, !dbg !1953

51:                                               ; preds = %50, %47
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1954
  %53 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %52) #9, !dbg !1955
  br label %54, !dbg !1956

54:                                               ; preds = %51, %38
  %55 = load i32, i32* @n_atoms, align 4, !dbg !1957, !tbaa !858
  %56 = sext i32 %55 to i64, !dbg !1958
  %57 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %56, !dbg !1958
  call void @llvm.dbg.value(metadata %struct.atom_t* %57, metadata !1895, metadata !DIExpression()), !dbg !1896
  call void @NAB_initatom(%struct.atom_t* %57, i32 0), !dbg !1959
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 0, !dbg !1960
  %59 = load i8*, i8** %58, align 8, !dbg !1960, !tbaa !967
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1961
  %61 = call i8* @strcpy(i8* %59, i8* %60) #9, !dbg !1962
  %62 = load double, double* %9, align 8, !dbg !1963, !tbaa !1095
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 17, !dbg !1964
  %64 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 0, i64 0, !dbg !1965
  store double %62, double* %64, align 8, !dbg !1966, !tbaa !1095
  %65 = load double, double* %10, align 8, !dbg !1967, !tbaa !1095
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 17, !dbg !1968
  %67 = getelementptr inbounds [3 x double], [3 x double]* %66, i64 0, i64 1, !dbg !1969
  store double %65, double* %67, align 8, !dbg !1970, !tbaa !1095
  %68 = load double, double* %11, align 8, !dbg !1971, !tbaa !1095
  %69 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 17, !dbg !1972
  %70 = getelementptr inbounds [3 x double], [3 x double]* %69, i64 0, i64 2, !dbg !1973
  store double %68, double* %70, align 8, !dbg !1974, !tbaa !1095
  %71 = load i32, i32* @n_atoms, align 4, !dbg !1975, !tbaa !858
  %72 = add nsw i32 %71, 1, !dbg !1975
  store i32 %72, i32* @n_atoms, align 4, !dbg !1975, !tbaa !858
  br label %73, !dbg !1976

73:                                               ; preds = %54, %34
  br label %74

74:                                               ; preds = %73, %28
  %75 = call i8* @fgets(i8* %21, i32 256, %struct._IO_FILE* %0), !dbg !1913
  %76 = icmp ne i8* %75, null, !dbg !1914
  br i1 %76, label %24, label %._crit_edge, !dbg !1914, !llvm.loop !1977

._crit_edge:                                      ; preds = %74
  br label %77, !dbg !1914

77:                                               ; preds = %._crit_edge, %2
  %78 = load i32, i32* @n_atoms, align 4, !dbg !1979, !tbaa !858
  %79 = icmp sgt i32 %78, 0, !dbg !1981
  br i1 %79, label %80, label %81, !dbg !1982

80:                                               ; preds = %77
  call void @addres2reslib(%struct.reslib_t* %1), !dbg !1983
  br label %81, !dbg !1983

81:                                               ; preds = %80, %77
  %82 = bitcast double* %11 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #9, !dbg !1984
  %83 = bitcast double* %10 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #9, !dbg !1984
  %84 = bitcast double* %9 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %84) #9, !dbg !1984
  %85 = bitcast i32* %8 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %85) #9, !dbg !1984
  %86 = bitcast i32* %7 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #9, !dbg !1984
  %87 = bitcast [10 x i8]* %6 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %87) #9, !dbg !1984
  %88 = bitcast [10 x i8]* %5 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %88) #9, !dbg !1984
  %89 = bitcast [10 x i8]* %4 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %89) #9, !dbg !1984
  %90 = bitcast [256 x i8]* %3 to i8*, !dbg !1984
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %90) #9, !dbg !1984
  ret void, !dbg !1984
}

; Function Attrs: nounwind uwtable
define internal void @bnd2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !1985 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1987, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !1988, metadata !DIExpression()), !dbg !1994
  %7 = bitcast [256 x i8]* %3 to i8*, !dbg !1995
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %7) #9, !dbg !1995
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !1989, metadata !DIExpression()), !dbg !1996
  %8 = bitcast [20 x i8]* %4 to i8*, !dbg !1997
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %8) #9, !dbg !1997
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !1990, metadata !DIExpression()), !dbg !1998
  %9 = bitcast i32* %5 to i8*, !dbg !1999
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #9, !dbg !1999
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1992, metadata !DIExpression()), !dbg !2000
  %10 = bitcast i32* %6 to i8*, !dbg !1999
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #9, !dbg !1999
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1993, metadata !DIExpression()), !dbg !2001
  store i32 0, i32* @n_bonds, align 4, !dbg !2002, !tbaa !858
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2003
  store i8 0, i8* %11, align 16, !dbg !2004, !tbaa !474
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2005
  %13 = call i8* @fgets(i8* %12, i32 256, %struct._IO_FILE* %0), !dbg !2006
  %14 = icmp ne i8* %13, null, !dbg !2007
  br i1 %14, label %.lr.ph, label %83, !dbg !2007

.lr.ph:                                           ; preds = %2
  br label %15, !dbg !2007

15:                                               ; preds = %.lr.ph, %80
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2008
  %17 = load i8, i8* %16, align 16, !dbg !2008, !tbaa !474
  %18 = sext i8 %17 to i32, !dbg !2008
  %19 = icmp eq i32 %18, 35, !dbg !2011
  br i1 %19, label %20, label %49, !dbg !2012

20:                                               ; preds = %15
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2013
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2016
  %23 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* %22) #9, !dbg !2017
  %24 = icmp ne i32 %23, 1, !dbg !2018
  br i1 %24, label %25, label %38, !dbg !2019

25:                                               ; preds = %20
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2020
  %27 = call i64 @strlen(i8* %26) #8, !dbg !2022
  %28 = sub i64 %27, 1, !dbg !2023
  %29 = trunc i64 %28 to i32, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %29, metadata !1991, metadata !DIExpression()), !dbg !1994
  %30 = icmp sgt i32 %29, 20, !dbg !2024
  br i1 %30, label %31, label %32, !dbg !2025

31:                                               ; preds = %25
  br label %33, !dbg !2025

32:                                               ; preds = %25
  br label %33, !dbg !2025

33:                                               ; preds = %32, %31
  %34 = phi i32 [ 20, %31 ], [ %29, %32 ], !dbg !2025
  call void @llvm.dbg.value(metadata i32 %34, metadata !1991, metadata !DIExpression()), !dbg !1994
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2026
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %34, i32 %34, i8* %35) #9, !dbg !2027
  %37 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2028
  br label %88, !dbg !2029

38:                                               ; preds = %20
  %39 = load i32, i32* @n_bonds, align 4, !dbg !2030, !tbaa !858
  %40 = icmp sgt i32 %39, 0, !dbg !2032
  br i1 %40, label %41, label %44, !dbg !2033

41:                                               ; preds = %38
  call void @addbonds2reslib(%struct.reslib_t* %1), !dbg !2034
  %42 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2036
  %43 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %42) #9, !dbg !2037
  store i32 0, i32* @n_bonds, align 4, !dbg !2038, !tbaa !858
  br label %47, !dbg !2039

44:                                               ; preds = %38
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2040
  %46 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %45) #9, !dbg !2041
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47
  br label %80, !dbg !2042

49:                                               ; preds = %15
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2043
  %51 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* %5, i32* %6) #9, !dbg !2046
  %52 = icmp ne i32 %51, 2, !dbg !2047
  br i1 %52, label %53, label %66, !dbg !2048

53:                                               ; preds = %49
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2049
  %55 = call i64 @strlen(i8* %54) #8, !dbg !2051
  %56 = sub i64 %55, 1, !dbg !2052
  %57 = trunc i64 %56 to i32, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %57, metadata !1991, metadata !DIExpression()), !dbg !1994
  %58 = icmp sgt i32 %57, 20, !dbg !2053
  br i1 %58, label %59, label %60, !dbg !2054

59:                                               ; preds = %53
  br label %61, !dbg !2054

60:                                               ; preds = %53
  br label %61, !dbg !2054

61:                                               ; preds = %60, %59
  %62 = phi i32 [ 20, %59 ], [ %57, %60 ], !dbg !2054
  call void @llvm.dbg.value(metadata i32 %62, metadata !1991, metadata !DIExpression()), !dbg !1994
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2055
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %62, i32 %62, i8* %63) #9, !dbg !2056
  %65 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2057
  br label %88, !dbg !2058

66:                                               ; preds = %49
  %67 = load i32, i32* %5, align 4, !dbg !2059, !tbaa !858
  %68 = load i32, i32* @n_bonds, align 4, !dbg !2061, !tbaa !858
  %69 = sext i32 %68 to i64, !dbg !2062
  %70 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %69, !dbg !2062
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0, !dbg !2062
  store i32 %67, i32* %71, align 8, !dbg !2063, !tbaa !858
  %72 = load i32, i32* %6, align 4, !dbg !2064, !tbaa !858
  %73 = load i32, i32* @n_bonds, align 4, !dbg !2065, !tbaa !858
  %74 = sext i32 %73 to i64, !dbg !2066
  %75 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %74, !dbg !2066
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 0, i64 1, !dbg !2066
  store i32 %72, i32* %76, align 4, !dbg !2067, !tbaa !858
  %77 = load i32, i32* @n_bonds, align 4, !dbg !2068, !tbaa !858
  %78 = add nsw i32 %77, 1, !dbg !2068
  store i32 %78, i32* @n_bonds, align 4, !dbg !2068, !tbaa !858
  br label %79

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %48
  %81 = call i8* @fgets(i8* %12, i32 256, %struct._IO_FILE* %0), !dbg !2006
  %82 = icmp ne i8* %81, null, !dbg !2007
  br i1 %82, label %15, label %._crit_edge, !dbg !2007, !llvm.loop !2069

._crit_edge:                                      ; preds = %80
  br label %83, !dbg !2007

83:                                               ; preds = %._crit_edge, %2
  %84 = load i32, i32* @n_bonds, align 4, !dbg !2071, !tbaa !858
  %85 = icmp sgt i32 %84, 0, !dbg !2073
  br i1 %85, label %86, label %87, !dbg !2074

86:                                               ; preds = %83
  call void @addbonds2reslib(%struct.reslib_t* %1), !dbg !2075
  br label %87, !dbg !2075

87:                                               ; preds = %86, %83
  br label %88, !dbg !2076

88:                                               ; preds = %87, %61, %33
  %.0 = phi i32 [ 1, %33 ], [ 1, %61 ], [ 0, %87 ]
  %89 = bitcast i32* %6 to i8*, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #9, !dbg !2076
  %90 = bitcast i32* %5 to i8*, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #9, !dbg !2076
  %91 = bitcast [20 x i8]* %4 to i8*, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %91) #9, !dbg !2076
  %92 = bitcast [256 x i8]* %3 to i8*, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %92) #9, !dbg !2076
  switch i32 %.0, label %94 [
    i32 0, label %93
    i32 1, label %93
  ]

93:                                               ; preds = %88, %88
  ret void, !dbg !2076

94:                                               ; preds = %88
  unreachable
}

declare !dbg !238 dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @qr2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !2077 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2079, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !2080, metadata !DIExpression()), !dbg !2090
  %11 = bitcast [256 x i8]* %3 to i8*, !dbg !2091
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %11) #9, !dbg !2091
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !2081, metadata !DIExpression()), !dbg !2092
  %12 = bitcast [10 x i8]* %4 to i8*, !dbg !2093
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %12) #9, !dbg !2093
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !2082, metadata !DIExpression()), !dbg !2094
  %13 = bitcast [10 x i8]* %5 to i8*, !dbg !2093
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %13) #9, !dbg !2093
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !2083, metadata !DIExpression()), !dbg !2095
  %14 = bitcast [10 x i8]* %6 to i8*, !dbg !2093
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %14) #9, !dbg !2093
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !2084, metadata !DIExpression()), !dbg !2096
  %15 = bitcast i32* %7 to i8*, !dbg !2097
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #9, !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2085, metadata !DIExpression()), !dbg !2098
  %16 = bitcast i32* %8 to i8*, !dbg !2097
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #9, !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2086, metadata !DIExpression()), !dbg !2099
  %17 = bitcast double* %9 to i8*, !dbg !2100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #9, !dbg !2100
  call void @llvm.dbg.declare(metadata double* %9, metadata !2087, metadata !DIExpression()), !dbg !2101
  %18 = bitcast double* %10 to i8*, !dbg !2100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %18) #9, !dbg !2100
  call void @llvm.dbg.declare(metadata double* %10, metadata !2088, metadata !DIExpression()), !dbg !2102
  store i32 0, i32* @n_atoms, align 4, !dbg !2103, !tbaa !858
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !2104, !tbaa !474
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2105
  %20 = call i8* @fgets(i8* %19, i32 256, %struct._IO_FILE* %0), !dbg !2106
  %21 = icmp ne i8* %20, null, !dbg !2107
  br i1 %21, label %.lr.ph, label %69, !dbg !2107

.lr.ph:                                           ; preds = %2
  br label %22, !dbg !2107

22:                                               ; preds = %.lr.ph, %.backedge
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2108
  %24 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* %23, i64 3) #8, !dbg !2111
  %25 = icmp eq i32 %24, 0, !dbg !2112
  br i1 %25, label %26, label %29, !dbg !2113

26:                                               ; preds = %22
  br label %.backedge, !dbg !2114

.backedge:                                        ; preds = %26, %68
  %27 = call i8* @fgets(i8* %19, i32 256, %struct._IO_FILE* %0), !dbg !2106
  %28 = icmp ne i8* %27, null, !dbg !2107
  br i1 %28, label %22, label %._crit_edge, !dbg !2107, !llvm.loop !2116

29:                                               ; preds = %22
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2118
  %31 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i8* %30, i64 4) #8, !dbg !2120
  %32 = icmp eq i32 %31, 0, !dbg !2121
  br i1 %32, label %37, label %33, !dbg !2122

33:                                               ; preds = %29
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2123
  %35 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* %34, i64 6) #8, !dbg !2124
  %36 = icmp eq i32 %35, 0, !dbg !2125
  br i1 %36, label %37, label %67, !dbg !2126

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2127
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2129
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !2130
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !2131
  %42 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* %39, i32* %7, i8* %40, i8* %41, i32* %8, double* %9, double* %10) #9, !dbg !2132
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !2133
  %44 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %43) #8, !dbg !2135
  %45 = icmp ne i32 %44, 0, !dbg !2136
  br i1 %45, label %46, label %53, !dbg !2137

46:                                               ; preds = %37
  %47 = load i32, i32* @n_atoms, align 4, !dbg !2138, !tbaa !858
  %48 = icmp sgt i32 %47, 0, !dbg !2141
  br i1 %48, label %49, label %50, !dbg !2142

49:                                               ; preds = %46
  call void @addqr2reslib(%struct.reslib_t* %1), !dbg !2143
  store i32 0, i32* @n_atoms, align 4, !dbg !2145, !tbaa !858
  br label %50, !dbg !2146

50:                                               ; preds = %49, %46
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !2147
  %52 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %51) #9, !dbg !2148
  br label %53, !dbg !2149

53:                                               ; preds = %50, %37
  %54 = load i32, i32* @n_atoms, align 4, !dbg !2150, !tbaa !858
  %55 = sext i32 %54 to i64, !dbg !2151
  %56 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %55, !dbg !2151
  call void @llvm.dbg.value(metadata %struct.atom_t* %56, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @NAB_initatom(%struct.atom_t* %56, i32 0), !dbg !2152
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 0, !dbg !2153
  %58 = load i8*, i8** %57, align 8, !dbg !2153, !tbaa !967
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !2154
  %60 = call i8* @strcpy(i8* %58, i8* %59) #9, !dbg !2155
  %61 = load double, double* %9, align 8, !dbg !2156, !tbaa !1095
  %62 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 6, !dbg !2157
  store double %61, double* %62, align 8, !dbg !2158, !tbaa !1024
  %63 = load double, double* %10, align 8, !dbg !2159, !tbaa !1095
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 7, !dbg !2160
  store double %63, double* %64, align 8, !dbg !2161, !tbaa !1031
  %65 = load i32, i32* @n_atoms, align 4, !dbg !2162, !tbaa !858
  %66 = add nsw i32 %65, 1, !dbg !2162
  store i32 %66, i32* @n_atoms, align 4, !dbg !2162, !tbaa !858
  br label %67, !dbg !2163

67:                                               ; preds = %53, %33
  br label %68

68:                                               ; preds = %67
  br label %.backedge, !dbg !2107

._crit_edge:                                      ; preds = %.backedge
  br label %69, !dbg !2107

69:                                               ; preds = %._crit_edge, %2
  %70 = load i32, i32* @n_atoms, align 4, !dbg !2164, !tbaa !858
  %71 = icmp sgt i32 %70, 0, !dbg !2166
  br i1 %71, label %72, label %73, !dbg !2167

72:                                               ; preds = %69
  call void @addqr2reslib(%struct.reslib_t* %1), !dbg !2168
  br label %73, !dbg !2168

73:                                               ; preds = %72, %69
  %74 = bitcast double* %10 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #9, !dbg !2169
  %75 = bitcast double* %9 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #9, !dbg !2169
  %76 = bitcast i32* %8 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #9, !dbg !2169
  %77 = bitcast i32* %7 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #9, !dbg !2169
  %78 = bitcast [10 x i8]* %6 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %78) #9, !dbg !2169
  %79 = bitcast [10 x i8]* %5 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %79) #9, !dbg !2169
  %80 = bitcast [10 x i8]* %4 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %80) #9, !dbg !2169
  %81 = bitcast [256 x i8]* %3 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %81) #9, !dbg !2169
  ret void, !dbg !2169
}

; Function Attrs: nounwind uwtable
define internal void @chi2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !2170 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2172, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !2173, metadata !DIExpression()), !dbg !2189
  %9 = bitcast [256 x i8]* %3 to i8*, !dbg !2190
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %9) #9, !dbg !2190
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !2174, metadata !DIExpression()), !dbg !2191
  %10 = bitcast [20 x i8]* %4 to i8*, !dbg !2192
  call void @llvm.lifetime.start.p0i8(i64 20, i8* %10) #9, !dbg !2192
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !2175, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !2177, metadata !DIExpression()), !dbg !2189
  %11 = bitcast [8 x i8]* %5 to i8*, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #9, !dbg !2194
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !2179, metadata !DIExpression()), !dbg !2195
  %12 = bitcast [8 x i8]* %6 to i8*, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #9, !dbg !2194
  call void @llvm.dbg.declare(metadata [8 x i8]* %6, metadata !2180, metadata !DIExpression()), !dbg !2196
  %13 = bitcast [8 x i8]* %7 to i8*, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #9, !dbg !2194
  call void @llvm.dbg.declare(metadata [8 x i8]* %7, metadata !2181, metadata !DIExpression()), !dbg !2197
  %14 = bitcast [8 x i8]* %8 to i8*, !dbg !2194
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #9, !dbg !2194
  call void @llvm.dbg.declare(metadata [8 x i8]* %8, metadata !2182, metadata !DIExpression()), !dbg !2198
  store i32 0, i32* @n_chi, align 4, !dbg !2199, !tbaa !858
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2200
  store i8 0, i8* %15, align 16, !dbg !2201, !tbaa !474
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !2177, metadata !DIExpression()), !dbg !2189
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2202
  %17 = call i8* @fgets(i8* %16, i32 256, %struct._IO_FILE* %0), !dbg !2203
  %18 = icmp ne i8* %17, null, !dbg !2204
  br i1 %18, label %.lr.ph13, label %171, !dbg !2204

.lr.ph13:                                         ; preds = %2
  br label %19, !dbg !2204

19:                                               ; preds = %.lr.ph13, %168
  %.0112 = phi %struct.residue_t* [ null, %.lr.ph13 ], [ %.2, %168 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.0112, metadata !2177, metadata !DIExpression()), !dbg !2189
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2205
  %21 = load i8, i8* %20, align 16, !dbg !2205, !tbaa !474
  %22 = sext i8 %21 to i32, !dbg !2205
  %23 = icmp eq i32 %22, 35, !dbg !2208
  br i1 %23, label %24, label %75, !dbg !2209

24:                                               ; preds = %19
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2210
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2213
  %27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* %26) #9, !dbg !2214
  %28 = icmp ne i32 %27, 1, !dbg !2215
  br i1 %28, label %29, label %43, !dbg !2216

29:                                               ; preds = %24
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2217
  %31 = call i64 @strlen(i8* %30) #8, !dbg !2219
  %32 = sub i64 %31, 1, !dbg !2220
  %33 = trunc i64 %32 to i32, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %33, metadata !2176, metadata !DIExpression()), !dbg !2189
  %34 = icmp sgt i32 %33, 20, !dbg !2221
  br i1 %34, label %35, label %36, !dbg !2222

35:                                               ; preds = %29
  br label %37, !dbg !2222

36:                                               ; preds = %29
  br label %37, !dbg !2222

37:                                               ; preds = %36, %35
  %38 = phi i32 [ 20, %35 ], [ %33, %36 ], !dbg !2222
  call void @llvm.dbg.value(metadata i32 %38, metadata !2176, metadata !DIExpression()), !dbg !2189
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2223
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %38, i32 %38, i8* %39) #9, !dbg !2224
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2225, !tbaa !379
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2226
  br label %176, !dbg !2227

43:                                               ; preds = %24
  %44 = load i32, i32* @n_chi, align 4, !dbg !2228, !tbaa !858
  %45 = icmp sgt i32 %44, 0, !dbg !2231
  br i1 %45, label %46, label %47, !dbg !2232

46:                                               ; preds = %43
  call void @addchi2reslib(%struct.reslib_t* %1), !dbg !2233
  store i32 0, i32* @n_chi, align 4, !dbg !2235, !tbaa !858
  br label %47, !dbg !2236

47:                                               ; preds = %46, %43
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !2178, metadata !DIExpression()), !dbg !2189
  %48 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %1, i32 0, i32 4, !dbg !2237
  %49 = load %struct.residue_t*, %struct.residue_t** %48, align 8, !dbg !2237, !tbaa !661
  call void @llvm.dbg.value(metadata %struct.residue_t* %49, metadata !2177, metadata !DIExpression()), !dbg !2189
  %50 = icmp ne %struct.residue_t* %49, null, !dbg !2239
  br i1 %50, label %.lr.ph, label %.loopexit, !dbg !2239

.lr.ph:                                           ; preds = %47
  br label %51, !dbg !2239

51:                                               ; preds = %.lr.ph, %59
  %.111 = phi %struct.residue_t* [ %49, %.lr.ph ], [ %61, %59 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.111, metadata !2177, metadata !DIExpression()), !dbg !2189
  %52 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.111, i32 0, i32 4, !dbg !2240
  %53 = load i8*, i8** %52, align 8, !dbg !2240, !tbaa !667
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2244
  %55 = call i32 @strcmp(i8* %53, i8* %54) #8, !dbg !2245
  %56 = icmp ne i32 %55, 0, !dbg !2245
  br i1 %56, label %58, label %57, !dbg !2246

57:                                               ; preds = %51
  %.1.lcssa3 = phi %struct.residue_t* [ %.111, %51 ], !dbg !2247
  call void @llvm.dbg.value(metadata %struct.residue_t* %.1.lcssa3, metadata !2177, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata %struct.residue_t* %.1.lcssa3, metadata !2178, metadata !DIExpression()), !dbg !2189
  br label %63, !dbg !2248

58:                                               ; preds = %51
  br label %59, !dbg !2250

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.111, i32 0, i32 0, !dbg !2251
  %61 = load %struct.residue_t*, %struct.residue_t** %60, align 8, !dbg !2251, !tbaa !681
  call void @llvm.dbg.value(metadata %struct.residue_t* %61, metadata !2177, metadata !DIExpression()), !dbg !2189
  %62 = icmp ne %struct.residue_t* %61, null, !dbg !2239
  br i1 %62, label %51, label %..loopexit_crit_edge, !dbg !2239, !llvm.loop !2252

..loopexit_crit_edge:                             ; preds = %59
  %split = phi %struct.residue_t* [ %61, %59 ]
  br label %.loopexit, !dbg !2239

.loopexit:                                        ; preds = %..loopexit_crit_edge, %47
  %.1.lcssa = phi %struct.residue_t* [ %split, %..loopexit_crit_edge ], [ %49, %47 ], !dbg !2247
  call void @llvm.dbg.value(metadata %struct.residue_t* %.1.lcssa, metadata !2177, metadata !DIExpression()), !dbg !2189
  br label %63, !dbg !2254

63:                                               ; preds = %.loopexit, %57
  %.14 = phi %struct.residue_t* [ %.1.lcssa3, %57 ], [ %.1.lcssa, %.loopexit ]
  %.02 = phi %struct.residue_t* [ %.1.lcssa3, %57 ], [ null, %.loopexit ], !dbg !2256
  call void @llvm.dbg.value(metadata %struct.residue_t* %.02, metadata !2178, metadata !DIExpression()), !dbg !2189
  %64 = icmp ne %struct.residue_t* %.02, null, !dbg !2254
  br i1 %64, label %71, label %65, !dbg !2257

65:                                               ; preds = %63
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2258, !tbaa !379
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2260
  %68 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %1, i32 0, i32 1, !dbg !2261
  %69 = load i8*, i8** %68, align 8, !dbg !2261, !tbaa !427
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* %67, i8* %69), !dbg !2262
  br label %176, !dbg !2263

71:                                               ; preds = %63
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2264
  %73 = call i8* @strcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %72) #9, !dbg !2265
  br label %74

74:                                               ; preds = %71
  br label %168, !dbg !2266

75:                                               ; preds = %19
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2267
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !2269
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !2270
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !2271
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2272
  %81 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* %77, i8* %78, i8* %79, i8* %80) #9, !dbg !2273
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !2274
  %83 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* %82), !dbg !2276
  call void @llvm.dbg.value(metadata %struct.atom_t* %83, metadata !2187, metadata !DIExpression()), !dbg !2189
  %84 = icmp ne %struct.atom_t* %83, null, !dbg !2277
  br i1 %84, label %91, label %85, !dbg !2278

85:                                               ; preds = %75
  %.01.lcssa5 = phi %struct.residue_t* [ %.0112, %75 ], !dbg !2189
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa5, metadata !2177, metadata !DIExpression()), !dbg !2189
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2279, !tbaa !379
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !2281
  %88 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 4, !dbg !2282
  %89 = load i8*, i8** %88, align 8, !dbg !2282, !tbaa !667
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %87, i8* %89), !dbg !2283
  call void @exit(i32 1) #7, !dbg !2284
  unreachable, !dbg !2284

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i32 0, i32 17, !dbg !2285
  %93 = load %struct.atom_t*, %struct.atom_t** %92, align 8, !dbg !2285, !tbaa !957
  %94 = ptrtoint %struct.atom_t* %83 to i64, !dbg !2286
  %95 = ptrtoint %struct.atom_t* %93 to i64, !dbg !2286
  %96 = sub i64 %94, %95, !dbg !2286
  %97 = sdiv exact i64 %96, 176, !dbg !2286
  %98 = trunc i64 %97 to i32, !dbg !2287
  call void @llvm.dbg.value(metadata i32 %98, metadata !2183, metadata !DIExpression()), !dbg !2189
  br label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !2288
  %101 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* %100), !dbg !2290
  call void @llvm.dbg.value(metadata %struct.atom_t* %101, metadata !2187, metadata !DIExpression()), !dbg !2189
  %102 = icmp ne %struct.atom_t* %101, null, !dbg !2291
  br i1 %102, label %109, label %103, !dbg !2292

103:                                              ; preds = %99
  %.01.lcssa6 = phi %struct.residue_t* [ %.0112, %99 ], !dbg !2189
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa6, metadata !2177, metadata !DIExpression()), !dbg !2189
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2293, !tbaa !379
  %105 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !2295
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa6, i32 0, i32 4, !dbg !2296
  %107 = load i8*, i8** %106, align 8, !dbg !2296, !tbaa !667
  %108 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %105, i8* %107), !dbg !2297
  call void @exit(i32 1) #7, !dbg !2298
  unreachable, !dbg !2298

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i32 0, i32 17, !dbg !2299
  %111 = load %struct.atom_t*, %struct.atom_t** %110, align 8, !dbg !2299, !tbaa !957
  %112 = ptrtoint %struct.atom_t* %101 to i64, !dbg !2300
  %113 = ptrtoint %struct.atom_t* %111 to i64, !dbg !2300
  %114 = sub i64 %112, %113, !dbg !2300
  %115 = sdiv exact i64 %114, 176, !dbg !2300
  %116 = trunc i64 %115 to i32, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %116, metadata !2184, metadata !DIExpression()), !dbg !2189
  br label %117

117:                                              ; preds = %109
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !2302
  %119 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* %118), !dbg !2304
  call void @llvm.dbg.value(metadata %struct.atom_t* %119, metadata !2187, metadata !DIExpression()), !dbg !2189
  %120 = icmp ne %struct.atom_t* %119, null, !dbg !2305
  br i1 %120, label %127, label %121, !dbg !2306

121:                                              ; preds = %117
  %.01.lcssa7 = phi %struct.residue_t* [ %.0112, %117 ], !dbg !2189
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa7, metadata !2177, metadata !DIExpression()), !dbg !2189
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2307, !tbaa !379
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !2309
  %124 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa7, i32 0, i32 4, !dbg !2310
  %125 = load i8*, i8** %124, align 8, !dbg !2310, !tbaa !667
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %123, i8* %125), !dbg !2311
  call void @exit(i32 1) #7, !dbg !2312
  unreachable, !dbg !2312

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i32 0, i32 17, !dbg !2313
  %129 = load %struct.atom_t*, %struct.atom_t** %128, align 8, !dbg !2313, !tbaa !957
  %130 = ptrtoint %struct.atom_t* %119 to i64, !dbg !2314
  %131 = ptrtoint %struct.atom_t* %129 to i64, !dbg !2314
  %132 = sub i64 %130, %131, !dbg !2314
  %133 = sdiv exact i64 %132, 176, !dbg !2314
  %134 = trunc i64 %133 to i32, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %134, metadata !2185, metadata !DIExpression()), !dbg !2189
  br label %135

135:                                              ; preds = %127
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2316
  %137 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* %136), !dbg !2318
  call void @llvm.dbg.value(metadata %struct.atom_t* %137, metadata !2187, metadata !DIExpression()), !dbg !2189
  %138 = icmp ne %struct.atom_t* %137, null, !dbg !2319
  br i1 %138, label %145, label %139, !dbg !2320

139:                                              ; preds = %135
  %.01.lcssa8 = phi %struct.residue_t* [ %.0112, %135 ], !dbg !2189
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa8, metadata !2177, metadata !DIExpression()), !dbg !2189
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2321, !tbaa !379
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2323
  %142 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa8, i32 0, i32 4, !dbg !2324
  %143 = load i8*, i8** %142, align 8, !dbg !2324, !tbaa !667
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %141, i8* %143), !dbg !2325
  call void @exit(i32 1) #7, !dbg !2326
  unreachable, !dbg !2326

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i32 0, i32 17, !dbg !2327
  %147 = load %struct.atom_t*, %struct.atom_t** %146, align 8, !dbg !2327, !tbaa !957
  %148 = ptrtoint %struct.atom_t* %137 to i64, !dbg !2328
  %149 = ptrtoint %struct.atom_t* %147 to i64, !dbg !2328
  %150 = sub i64 %148, %149, !dbg !2328
  %151 = sdiv exact i64 %150, 176, !dbg !2328
  %152 = trunc i64 %151 to i32, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %152, metadata !2186, metadata !DIExpression()), !dbg !2189
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* @n_chi, align 4, !dbg !2330, !tbaa !858
  %155 = sext i32 %154 to i64, !dbg !2331
  %156 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %155, !dbg !2331
  call void @llvm.dbg.value(metadata %struct.chiral_t* %156, metadata !2188, metadata !DIExpression()), !dbg !2189
  %157 = load i32, i32* @n_chi, align 4, !dbg !2332, !tbaa !858
  %158 = add nsw i32 %157, 1, !dbg !2332
  store i32 %158, i32* @n_chi, align 4, !dbg !2332, !tbaa !858
  %159 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 0, !dbg !2333
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %159, i64 0, i64 0, !dbg !2334
  store i32 %98, i32* %160, align 8, !dbg !2335, !tbaa !858
  %161 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 0, !dbg !2336
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %161, i64 0, i64 1, !dbg !2337
  store i32 %116, i32* %162, align 4, !dbg !2338, !tbaa !858
  %163 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 0, !dbg !2339
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %163, i64 0, i64 2, !dbg !2340
  store i32 %134, i32* %164, align 8, !dbg !2341, !tbaa !858
  %165 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 0, !dbg !2342
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %165, i64 0, i64 3, !dbg !2343
  store i32 %152, i32* %166, align 4, !dbg !2344, !tbaa !858
  %167 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %156, i32 0, i32 1, !dbg !2345
  store double 0.000000e+00, double* %167, align 8, !dbg !2346, !tbaa !900
  br label %168

168:                                              ; preds = %153, %74
  %.2 = phi %struct.residue_t* [ %.14, %74 ], [ %.0112, %153 ], !dbg !2189
  call void @llvm.dbg.value(metadata %struct.residue_t* %.2, metadata !2177, metadata !DIExpression()), !dbg !2189
  %169 = call i8* @fgets(i8* %16, i32 256, %struct._IO_FILE* %0), !dbg !2203
  %170 = icmp ne i8* %169, null, !dbg !2204
  br i1 %170, label %19, label %._crit_edge, !dbg !2204, !llvm.loop !2347

._crit_edge:                                      ; preds = %168
  br label %171, !dbg !2204

171:                                              ; preds = %._crit_edge, %2
  %172 = load i32, i32* @n_chi, align 4, !dbg !2349, !tbaa !858
  %173 = icmp sgt i32 %172, 0, !dbg !2351
  br i1 %173, label %174, label %175, !dbg !2352

174:                                              ; preds = %171
  call void @addchi2reslib(%struct.reslib_t* %1), !dbg !2353
  store i32 0, i32* @n_chi, align 4, !dbg !2355, !tbaa !858
  br label %175, !dbg !2356

175:                                              ; preds = %174, %171
  br label %176, !dbg !2357

176:                                              ; preds = %175, %65, %37
  %.0 = phi i32 [ 1, %37 ], [ 1, %65 ], [ 0, %175 ]
  %177 = bitcast [8 x i8]* %8 to i8*, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %177) #9, !dbg !2357
  %178 = bitcast [8 x i8]* %7 to i8*, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %178) #9, !dbg !2357
  %179 = bitcast [8 x i8]* %6 to i8*, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %179) #9, !dbg !2357
  %180 = bitcast [8 x i8]* %5 to i8*, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %180) #9, !dbg !2357
  %181 = bitcast [20 x i8]* %4 to i8*, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 20, i8* %181) #9, !dbg !2357
  %182 = bitcast [256 x i8]* %3 to i8*, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %182) #9, !dbg !2357
  switch i32 %.0, label %184 [
    i32 0, label %183
    i32 1, label %183
  ]

183:                                              ; preds = %176, %176
  ret void, !dbg !2357

184:                                              ; preds = %176
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @mk_fname(i8* %0, i8* %1) #0 !dbg !2358 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2362, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8* %1, metadata !2363, metadata !DIExpression()), !dbg !2364
  %3 = load i8, i8* %0, align 1, !dbg !2365, !tbaa !474
  %4 = sext i8 %3 to i32, !dbg !2365
  %5 = icmp eq i32 %4, 47, !dbg !2367
  br i1 %5, label %9, label %6, !dbg !2368

6:                                                ; preds = %2
  %7 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %0, i64 2) #8, !dbg !2369
  %8 = icmp ne i32 %7, 0, !dbg !2369
  br i1 %8, label %11, label %9, !dbg !2370

9:                                                ; preds = %6, %2
  %10 = call i8* @strcpy(i8* %1, i8* %0) #9, !dbg !2371
  br label %13, !dbg !2371

11:                                               ; preds = %6
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* %0) #9, !dbg !2372
  br label %13

13:                                               ; preds = %11, %9
  ret void, !dbg !2373
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare !dbg !308 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !311 dso_local void @NAB_initatom(%struct.atom_t*, i32) #3

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) #3

declare dso_local signext i8 @bDBGetValue(...) #3

declare dso_local void @DBZeroPrefix(...) #3

declare dso_local void @DBPushPrefix(...) #3

declare dso_local signext i8 @bDBGetTable(...) #3

; Function Attrs: nounwind uwtable
define internal void @addres2reslib(%struct.reslib_t* %0) #0 !dbg !2374 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2378, metadata !DIExpression()), !dbg !2385
  %2 = call noalias i8* @malloc(i64 128) #9, !dbg !2386
  %3 = bitcast i8* %2 to %struct.residue_t*, !dbg !2388
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2379, metadata !DIExpression()), !dbg !2385
  %4 = icmp eq %struct.residue_t* %3, null, !dbg !2389
  br i1 %4, label %5, label %10, !dbg !2390

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1, !dbg !2391
  %7 = load i8*, i8** %6, align 8, !dbg !2391, !tbaa !427
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %7) #9, !dbg !2393
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2394
  br label %189, !dbg !2395

10:                                               ; preds = %1
  %11 = load i32, i32* @n_atoms, align 4, !dbg !2396, !tbaa !858
  %12 = sext i32 %11 to i64, !dbg !2396
  %13 = mul i64 %12, 176, !dbg !2398
  %14 = call noalias i8* @malloc(i64 %13) #9, !dbg !2399
  %15 = bitcast i8* %14 to %struct.atom_t*, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.atom_t* %15, metadata !2380, metadata !DIExpression()), !dbg !2385
  %16 = icmp eq %struct.atom_t* %15, null, !dbg !2401
  br i1 %16, label %17, label %22, !dbg !2402

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1, !dbg !2403
  %19 = load i8*, i8** %18, align 8, !dbg !2403, !tbaa !427
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %19) #9, !dbg !2405
  %21 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2406
  br label %189, !dbg !2407

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4, !dbg !2408
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !dbg !2408, !tbaa !661
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 0, !dbg !2409
  store %struct.residue_t* %24, %struct.residue_t** %25, align 8, !dbg !2410, !tbaa !681
  %26 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4, !dbg !2411
  store %struct.residue_t* %3, %struct.residue_t** %26, align 8, !dbg !2412, !tbaa !661
  %27 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #8, !dbg !2413
  %28 = add i64 %27, 1, !dbg !2414
  %29 = call noalias i8* @malloc(i64 %28) #9, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %29, metadata !2382, metadata !DIExpression()), !dbg !2385
  %30 = icmp eq i8* %29, null, !dbg !2416
  br i1 %30, label %31, label %34, !dbg !2418

31:                                               ; preds = %22
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2419, !tbaa !379
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0)), !dbg !2421
  call void @exit(i32 1) #7, !dbg !2422
  unreachable, !dbg !2422

34:                                               ; preds = %22
  %35 = call i8* @strcpy(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #9, !dbg !2423
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 4, !dbg !2424
  store i8* %29, i8** %36, align 8, !dbg !2425, !tbaa !667
  %37 = call noalias i8* @malloc(i64 1) #9, !dbg !2426
  call void @llvm.dbg.value(metadata i8* %37, metadata !2382, metadata !DIExpression()), !dbg !2385
  %38 = icmp eq i8* %37, null, !dbg !2427
  br i1 %38, label %39, label %42, !dbg !2429

39:                                               ; preds = %34
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2430, !tbaa !379
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0)), !dbg !2432
  call void @exit(i32 1) #7, !dbg !2433
  unreachable, !dbg !2433

42:                                               ; preds = %34
  %43 = call i8* @strcpy(i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !2434
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 5, !dbg !2435
  store i8* %37, i8** %44, align 8, !dbg !2436, !tbaa !808
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 1, !dbg !2437
  store i32 0, i32* %45, align 8, !dbg !2438, !tbaa !824
  %46 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 2, !dbg !2439
  store i32 0, i32* %46, align 4, !dbg !2440, !tbaa !829
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 3, !dbg !2441
  store i32 0, i32* %47, align 8, !dbg !2442, !tbaa !832
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 6, !dbg !2443
  store i32 0, i32* %48, align 8, !dbg !2444, !tbaa !834
  %49 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 2, !dbg !2445
  %50 = load i32, i32* %49, align 8, !dbg !2445, !tbaa !389
  %51 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 7, !dbg !2446
  store i32 %50, i32* %51, align 4, !dbg !2447, !tbaa !911
  %52 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 3, !dbg !2448
  %53 = load i32, i32* %52, align 4, !dbg !2448, !tbaa !1438
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 8, !dbg !2449
  store i32 %53, i32* %54, align 8, !dbg !2450, !tbaa !915
  %55 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 9, !dbg !2451
  store %struct.strand_t* null, %struct.strand_t** %55, align 8, !dbg !2452, !tbaa !839
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 10, !dbg !2453
  store %struct.extbond_t* null, %struct.extbond_t** %56, align 8, !dbg !2454, !tbaa !843
  %57 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 11, !dbg !2455
  store i32 0, i32* %57, align 8, !dbg !2456, !tbaa !750
  %58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 12, !dbg !2457
  store [2 x i32]* null, [2 x i32]** %58, align 8, !dbg !2458, !tbaa !849
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 13, !dbg !2459
  store i32 0, i32* %59, align 8, !dbg !2460, !tbaa !771
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 14, !dbg !2461
  store %struct.chiral_t* null, %struct.chiral_t** %60, align 8, !dbg !2462, !tbaa !876
  %61 = load i32, i32* @n_atoms, align 4, !dbg !2463, !tbaa !858
  %62 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 15, !dbg !2464
  store i32 %61, i32* %62, align 8, !dbg !2465, !tbaa !723
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 16, !dbg !2466
  store i32* null, i32** %63, align 8, !dbg !2467, !tbaa !923
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2468
  store %struct.atom_t* %15, %struct.atom_t** %64, align 8, !dbg !2469, !tbaa !957
  call void @llvm.dbg.value(metadata i32 0, metadata !2383, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 0, metadata !2383, metadata !DIExpression()), !dbg !2385
  %65 = load i32, i32* @n_atoms, align 4, !dbg !2470, !tbaa !858
  %66 = sext i32 %65 to i64, !dbg !2473
  %67 = icmp slt i64 0, %66, !dbg !2473
  br i1 %67, label %.lr.ph, label %188, !dbg !2474

.lr.ph:                                           ; preds = %42
  br label %68, !dbg !2474

68:                                               ; preds = %.lr.ph, %184
  %indvars.iv610 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next7, %184 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv610, metadata !2383, metadata !DIExpression()), !dbg !2385
  %69 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2475
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %69, i32 0, i32 0, !dbg !2477
  %71 = load i8*, i8** %70, align 16, !dbg !2477, !tbaa !967
  %72 = call i64 @strlen(i8* %71) #8, !dbg !2478
  %73 = add i64 %72, 1, !dbg !2479
  %74 = call noalias i8* @malloc(i64 %73) #9, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %74, metadata !2381, metadata !DIExpression()), !dbg !2385
  %75 = icmp eq i8* %74, null, !dbg !2481
  br i1 %75, label %76, label %79, !dbg !2483

76:                                               ; preds = %68
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2484, !tbaa !379
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0)), !dbg !2486
  call void @exit(i32 1) #7, !dbg !2487
  unreachable, !dbg !2487

79:                                               ; preds = %68
  %80 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2488
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %80, i32 0, i32 0, !dbg !2489
  %82 = load i8*, i8** %81, align 16, !dbg !2489, !tbaa !967
  %83 = call i8* @strcpy(i8* %74, i8* %82) #9, !dbg !2490
  %84 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2491
  %85 = load %struct.atom_t*, %struct.atom_t** %84, align 8, !dbg !2491, !tbaa !957
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %85, i64 %indvars.iv610, !dbg !2492
  %87 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i32 0, i32 0, !dbg !2493
  store i8* %74, i8** %87, align 8, !dbg !2494, !tbaa !967
  %88 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2495
  %89 = load %struct.atom_t*, %struct.atom_t** %88, align 8, !dbg !2495, !tbaa !957
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %89, i64 %indvars.iv610, !dbg !2496
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %90, i32 0, i32 2, !dbg !2497
  store i32 0, i32* %91, align 8, !dbg !2498, !tbaa !993
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2499
  %93 = load %struct.atom_t*, %struct.atom_t** %92, align 8, !dbg !2499, !tbaa !957
  %94 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %93, i64 %indvars.iv610, !dbg !2500
  %95 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %94, i32 0, i32 3, !dbg !2501
  store i32 0, i32* %95, align 4, !dbg !2502, !tbaa !1000
  call void @llvm.dbg.value(metadata i32 0, metadata !2384, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 0, metadata !2384, metadata !DIExpression()), !dbg !2385
  br label %96, !dbg !2503

96:                                               ; preds = %79, %102
  %indvars.iv8 = phi i64 [ 0, %79 ], [ %indvars.iv.next, %102 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2384, metadata !DIExpression()), !dbg !2385
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2505
  %98 = load %struct.atom_t*, %struct.atom_t** %97, align 8, !dbg !2505, !tbaa !957
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %98, i64 %indvars.iv610, !dbg !2507
  %100 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %99, i32 0, i32 4, !dbg !2508
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %100, i64 0, i64 %indvars.iv8, !dbg !2507
  store i32 -1, i32* %101, align 4, !dbg !2509, !tbaa !858
  br label %102, !dbg !2507

102:                                              ; preds = %96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2384, metadata !DIExpression()), !dbg !2385
  %exitcond = icmp ne i64 %indvars.iv.next, 8, !dbg !2511
  br i1 %exitcond, label %96, label %103, !dbg !2503, !llvm.loop !2512

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2514
  %105 = load %struct.atom_t*, %struct.atom_t** %104, align 8, !dbg !2514, !tbaa !957
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %105, i64 %indvars.iv610, !dbg !2515
  %107 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 5, !dbg !2516
  store %struct.residue_t* %3, %struct.residue_t** %107, align 8, !dbg !2517, !tbaa !1020
  %108 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2518
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %108, i32 0, i32 6, !dbg !2519
  %110 = load double, double* %109, align 16, !dbg !2519, !tbaa !1024
  %111 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2520
  %112 = load %struct.atom_t*, %struct.atom_t** %111, align 8, !dbg !2520, !tbaa !957
  %113 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %112, i64 %indvars.iv610, !dbg !2521
  %114 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %113, i32 0, i32 6, !dbg !2522
  store double %110, double* %114, align 8, !dbg !2523, !tbaa !1024
  %115 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2524
  %116 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %115, i32 0, i32 7, !dbg !2525
  %117 = load double, double* %116, align 8, !dbg !2525, !tbaa !1031
  %118 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2526
  %119 = load %struct.atom_t*, %struct.atom_t** %118, align 8, !dbg !2526, !tbaa !957
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %119, i64 %indvars.iv610, !dbg !2527
  %121 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %120, i32 0, i32 7, !dbg !2528
  store double %117, double* %121, align 8, !dbg !2529, !tbaa !1031
  %122 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2530
  %123 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %122, i32 0, i32 8, !dbg !2531
  %124 = load double, double* %123, align 16, !dbg !2531, !tbaa !1038
  %125 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2532
  %126 = load %struct.atom_t*, %struct.atom_t** %125, align 8, !dbg !2532, !tbaa !957
  %127 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i64 %indvars.iv610, !dbg !2533
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i32 0, i32 8, !dbg !2534
  store double %124, double* %128, align 8, !dbg !2535, !tbaa !1038
  %129 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2536
  %130 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %129, i32 0, i32 9, !dbg !2537
  %131 = load double, double* %130, align 8, !dbg !2537, !tbaa !1045
  %132 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2538
  %133 = load %struct.atom_t*, %struct.atom_t** %132, align 8, !dbg !2538, !tbaa !957
  %134 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %133, i64 %indvars.iv610, !dbg !2539
  %135 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %134, i32 0, i32 9, !dbg !2540
  store double %131, double* %135, align 8, !dbg !2541, !tbaa !1045
  %136 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2542
  %137 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %136, i32 0, i32 11, !dbg !2543
  %138 = load i32, i32* %137, align 8, !dbg !2543, !tbaa !1056
  %139 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2544
  %140 = load %struct.atom_t*, %struct.atom_t** %139, align 8, !dbg !2544, !tbaa !957
  %141 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %140, i64 %indvars.iv610, !dbg !2545
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %141, i32 0, i32 11, !dbg !2546
  store i32 %138, i32* %142, align 8, !dbg !2547, !tbaa !1056
  %143 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2548
  %144 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %143, i32 0, i32 12, !dbg !2549
  %145 = load double, double* %144, align 16, !dbg !2549, !tbaa !1063
  %146 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2550
  %147 = load %struct.atom_t*, %struct.atom_t** %146, align 8, !dbg !2550, !tbaa !957
  %148 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %147, i64 %indvars.iv610, !dbg !2551
  %149 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %148, i32 0, i32 12, !dbg !2552
  store double %145, double* %149, align 8, !dbg !2553, !tbaa !1063
  %150 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2554
  %151 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %150, i32 0, i32 13, !dbg !2555
  %152 = load double, double* %151, align 8, !dbg !2555, !tbaa !1070
  %153 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2556
  %154 = load %struct.atom_t*, %struct.atom_t** %153, align 8, !dbg !2556, !tbaa !957
  %155 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %154, i64 %indvars.iv610, !dbg !2557
  %156 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %155, i32 0, i32 13, !dbg !2558
  store double %152, double* %156, align 8, !dbg !2559, !tbaa !1070
  %157 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2560
  %158 = load %struct.atom_t*, %struct.atom_t** %157, align 8, !dbg !2560, !tbaa !957
  %159 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %158, i64 %indvars.iv610, !dbg !2561
  %160 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %159, i32 0, i32 15, !dbg !2562
  store i32 0, i32* %160, align 4, !dbg !2563, !tbaa !1084
  %161 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2564
  %162 = load %struct.atom_t*, %struct.atom_t** %161, align 8, !dbg !2564, !tbaa !957
  %163 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %162, i64 %indvars.iv610, !dbg !2565
  %164 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %163, i32 0, i32 16, !dbg !2566
  store i8* null, i8** %164, align 8, !dbg !2567, !tbaa !1091
  call void @llvm.dbg.value(metadata i32 0, metadata !2384, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 0, metadata !2384, metadata !DIExpression()), !dbg !2385
  br label %165, !dbg !2568

165:                                              ; preds = %103, %175
  %indvars.iv39 = phi i64 [ 0, %103 ], [ %indvars.iv.next4, %175 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !2384, metadata !DIExpression()), !dbg !2385
  %166 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2570
  %167 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %166, i32 0, i32 17, !dbg !2572
  %168 = getelementptr inbounds [3 x double], [3 x double]* %167, i64 0, i64 %indvars.iv39, !dbg !2570
  %169 = load double, double* %168, align 8, !dbg !2570, !tbaa !1095
  %170 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2573
  %171 = load %struct.atom_t*, %struct.atom_t** %170, align 8, !dbg !2573, !tbaa !957
  %172 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %171, i64 %indvars.iv610, !dbg !2574
  %173 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %172, i32 0, i32 17, !dbg !2575
  %174 = getelementptr inbounds [3 x double], [3 x double]* %173, i64 0, i64 %indvars.iv39, !dbg !2574
  store double %169, double* %174, align 8, !dbg !2576, !tbaa !1095
  br label %175, !dbg !2574

175:                                              ; preds = %165
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv39, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !2384, metadata !DIExpression()), !dbg !2385
  %exitcond5 = icmp ne i64 %indvars.iv.next4, 3, !dbg !2578
  br i1 %exitcond5, label %165, label %176, !dbg !2568, !llvm.loop !2579

176:                                              ; preds = %175
  %177 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv610, !dbg !2581
  %178 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %177, i32 0, i32 18, !dbg !2582
  %179 = load double, double* %178, align 8, !dbg !2582, !tbaa !1114
  %180 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i32 0, i32 17, !dbg !2583
  %181 = load %struct.atom_t*, %struct.atom_t** %180, align 8, !dbg !2583, !tbaa !957
  %182 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %181, i64 %indvars.iv610, !dbg !2584
  %183 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %182, i32 0, i32 18, !dbg !2585
  store double %179, double* %183, align 8, !dbg !2586, !tbaa !1114
  br label %184, !dbg !2587

184:                                              ; preds = %176
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv610, 1, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next7, metadata !2383, metadata !DIExpression()), !dbg !2385
  %185 = load i32, i32* @n_atoms, align 4, !dbg !2470, !tbaa !858
  %186 = sext i32 %185 to i64, !dbg !2473
  %187 = icmp slt i64 %indvars.iv.next7, %186, !dbg !2473
  br i1 %187, label %68, label %._crit_edge, !dbg !2474, !llvm.loop !2589

._crit_edge:                                      ; preds = %184
  br label %188, !dbg !2474

188:                                              ; preds = %._crit_edge, %42
  br label %189, !dbg !2591

189:                                              ; preds = %188, %17, %5
  %.0 = phi i32 [ 1, %5 ], [ 1, %17 ], [ 0, %188 ]
  switch i32 %.0, label %191 [
    i32 0, label %190
    i32 1, label %190
  ]

190:                                              ; preds = %189, %189
  ret void, !dbg !2591

191:                                              ; preds = %189
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @addbonds2reslib(%struct.reslib_t* %0) #0 !dbg !2592 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2594, metadata !DIExpression()), !dbg !2603
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4, !dbg !2604
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2604, !tbaa !661
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2595, metadata !DIExpression()), !dbg !2603
  %4 = icmp ne %struct.residue_t* %3, null, !dbg !2606
  br i1 %4, label %.lr.ph, label %104, !dbg !2606

.lr.ph:                                           ; preds = %1
  br label %5, !dbg !2606

5:                                                ; preds = %.lr.ph, %100
  %.014 = phi %struct.residue_t* [ %3, %.lr.ph ], [ %102, %100 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.014, metadata !2595, metadata !DIExpression()), !dbg !2603
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.014, i32 0, i32 4, !dbg !2607
  %7 = load i8*, i8** %6, align 8, !dbg !2607, !tbaa !667
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #8, !dbg !2611
  %9 = icmp eq i32 %8, 0, !dbg !2612
  br i1 %9, label %10, label %99, !dbg !2613

10:                                               ; preds = %5
  %.0.lcssa8 = phi %struct.residue_t* [ %.014, %5 ], !dbg !2614
  call void @llvm.dbg.value(metadata %struct.residue_t* %.0.lcssa8, metadata !2595, metadata !DIExpression()), !dbg !2603
  %11 = load i32, i32* @n_bonds, align 4, !dbg !2615, !tbaa !858
  %12 = sext i32 %11 to i64, !dbg !2615
  %13 = mul i64 %12, 8, !dbg !2618
  %14 = call noalias i8* @malloc(i64 %13) #9, !dbg !2619
  %15 = bitcast i8* %14 to [2 x i32]*, !dbg !2620
  call void @llvm.dbg.value(metadata [2 x i32]* %15, metadata !2596, metadata !DIExpression()), !dbg !2603
  %16 = icmp eq [2 x i32]* %15, null, !dbg !2621
  br i1 %16, label %17, label %20, !dbg !2622

17:                                               ; preds = %10
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #9, !dbg !2623
  %19 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2625
  br label %109, !dbg !2626

20:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 0, metadata !2597, metadata !DIExpression()), !dbg !2603
  %21 = load i32, i32* @n_bonds, align 4, !dbg !2627, !tbaa !858
  %22 = sext i32 %21 to i64, !dbg !2630
  %23 = icmp slt i64 0, %22, !dbg !2630
  br i1 %23, label %.lr.ph19, label %95, !dbg !2631

.lr.ph19:                                         ; preds = %20
  br label %24, !dbg !2631

24:                                               ; preds = %.lr.ph19, %91
  %indvars.iv1217 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next13, %91 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1217, metadata !2597, metadata !DIExpression()), !dbg !2603
  %25 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv1217, !dbg !2632
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0, !dbg !2632
  %27 = load i32, i32* %26, align 8, !dbg !2632, !tbaa !858
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 %indvars.iv1217, !dbg !2634
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0, !dbg !2634
  store i32 %27, i32* %29, align 4, !dbg !2635, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %27, metadata !2599, metadata !DIExpression()), !dbg !2603
  %30 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv1217, !dbg !2636
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1, !dbg !2636
  %32 = load i32, i32* %31, align 4, !dbg !2636, !tbaa !858
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 %indvars.iv1217, !dbg !2637
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 1, !dbg !2637
  store i32 %32, i32* %34, align 4, !dbg !2638, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %32, metadata !2600, metadata !DIExpression()), !dbg !2603
  %35 = add nsw i32 %27, -1, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %35, metadata !2599, metadata !DIExpression()), !dbg !2603
  %36 = add nsw i32 %32, -1, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %36, metadata !2600, metadata !DIExpression()), !dbg !2603
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0.lcssa8, i32 0, i32 17, !dbg !2641
  %38 = load %struct.atom_t*, %struct.atom_t** %37, align 8, !dbg !2641, !tbaa !957
  %39 = sext i32 %35 to i64, !dbg !2642
  %40 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i64 %39, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.atom_t* %40, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2598, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 0, metadata !2598, metadata !DIExpression()), !dbg !2603
  br label %41, !dbg !2643

41:                                               ; preds = %24, %62
  %indvars.iv15 = phi i64 [ 0, %24 ], [ %indvars.iv.next, %62 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !2598, metadata !DIExpression()), !dbg !2603
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 4, !dbg !2645
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %42, i64 0, i64 %indvars.iv15, !dbg !2649
  %44 = load i32, i32* %43, align 4, !dbg !2649, !tbaa !858
  %45 = icmp eq i32 %44, %36, !dbg !2650
  br i1 %45, label %46, label %47, !dbg !2651

46:                                               ; preds = %41
  br label %63, !dbg !2652

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 4, !dbg !2653
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %48, i64 0, i64 %indvars.iv15, !dbg !2655
  %50 = load i32, i32* %49, align 4, !dbg !2655, !tbaa !858
  %51 = icmp eq i32 %50, -1, !dbg !2656
  br i1 %51, label %52, label %60, !dbg !2657

52:                                               ; preds = %47
  %.02.lcssa5.wide = phi i64 [ %indvars.iv15, %47 ]
  %53 = trunc i64 %.02.lcssa5.wide to i32, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %53, metadata !2598, metadata !DIExpression()), !dbg !2603
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 4, !dbg !2658
  %55 = sext i32 %53 to i64, !dbg !2660
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 %55, !dbg !2660
  store i32 %36, i32* %56, align 4, !dbg !2661, !tbaa !858
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i32 0, i32 3, !dbg !2662
  %58 = load i32, i32* %57, align 4, !dbg !2663, !tbaa !1000
  %59 = add nsw i32 %58, 1, !dbg !2663
  store i32 %59, i32* %57, align 4, !dbg !2663, !tbaa !1000
  br label %63, !dbg !2664

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  br label %62, !dbg !2665

62:                                               ; preds = %61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv15, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2598, metadata !DIExpression()), !dbg !2603
  %exitcond = icmp ne i64 %indvars.iv.next, 8, !dbg !2667
  br i1 %exitcond, label %41, label %.loopexit3, !dbg !2643, !llvm.loop !2668

.loopexit3:                                       ; preds = %62
  br label %63, !dbg !2670

63:                                               ; preds = %.loopexit3, %52, %46
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0.lcssa8, i32 0, i32 17, !dbg !2670
  %65 = load %struct.atom_t*, %struct.atom_t** %64, align 8, !dbg !2670, !tbaa !957
  %66 = sext i32 %36 to i64, !dbg !2671
  %67 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i64 %66, !dbg !2671
  call void @llvm.dbg.value(metadata %struct.atom_t* %67, metadata !2602, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2598, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 0, metadata !2598, metadata !DIExpression()), !dbg !2603
  br label %68, !dbg !2672

68:                                               ; preds = %63, %89
  %indvars.iv916 = phi i64 [ 0, %63 ], [ %indvars.iv.next10, %89 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv916, metadata !2598, metadata !DIExpression()), !dbg !2603
  %69 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 4, !dbg !2674
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %69, i64 0, i64 %indvars.iv916, !dbg !2678
  %71 = load i32, i32* %70, align 4, !dbg !2678, !tbaa !858
  %72 = icmp eq i32 %71, %35, !dbg !2679
  br i1 %72, label %73, label %74, !dbg !2680

73:                                               ; preds = %68
  br label %90, !dbg !2681

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 4, !dbg !2682
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %75, i64 0, i64 %indvars.iv916, !dbg !2684
  %77 = load i32, i32* %76, align 4, !dbg !2684, !tbaa !858
  %78 = icmp eq i32 %77, -1, !dbg !2685
  br i1 %78, label %79, label %87, !dbg !2686

79:                                               ; preds = %74
  %.1.lcssa7.wide = phi i64 [ %indvars.iv916, %74 ]
  %80 = trunc i64 %.1.lcssa7.wide to i32, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %80, metadata !2598, metadata !DIExpression()), !dbg !2603
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 4, !dbg !2687
  %82 = sext i32 %80 to i64, !dbg !2689
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %81, i64 0, i64 %82, !dbg !2689
  store i32 %35, i32* %83, align 4, !dbg !2690, !tbaa !858
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i32 0, i32 3, !dbg !2691
  %85 = load i32, i32* %84, align 4, !dbg !2692, !tbaa !1000
  %86 = add nsw i32 %85, 1, !dbg !2692
  store i32 %86, i32* %84, align 4, !dbg !2692, !tbaa !1000
  br label %90, !dbg !2693

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  br label %89, !dbg !2694

89:                                               ; preds = %88
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv916, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !2598, metadata !DIExpression()), !dbg !2603
  %exitcond11 = icmp ne i64 %indvars.iv.next10, 8, !dbg !2696
  br i1 %exitcond11, label %68, label %.loopexit, !dbg !2672, !llvm.loop !2697

.loopexit:                                        ; preds = %89
  br label %90, !dbg !2699

90:                                               ; preds = %.loopexit, %79, %73
  br label %91, !dbg !2699

91:                                               ; preds = %90
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1217, 1, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next13, metadata !2597, metadata !DIExpression()), !dbg !2603
  %92 = load i32, i32* @n_bonds, align 4, !dbg !2627, !tbaa !858
  %93 = sext i32 %92 to i64, !dbg !2630
  %94 = icmp slt i64 %indvars.iv.next13, %93, !dbg !2630
  br i1 %94, label %24, label %._crit_edge20, !dbg !2631, !llvm.loop !2701

._crit_edge20:                                    ; preds = %91
  br label %95, !dbg !2631

95:                                               ; preds = %._crit_edge20, %20
  %96 = load i32, i32* @n_bonds, align 4, !dbg !2703, !tbaa !858
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0.lcssa8, i32 0, i32 11, !dbg !2704
  store i32 %96, i32* %97, align 8, !dbg !2705, !tbaa !750
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0.lcssa8, i32 0, i32 12, !dbg !2706
  store [2 x i32]* %15, [2 x i32]** %98, align 8, !dbg !2707, !tbaa !849
  br label %109, !dbg !2708

99:                                               ; preds = %5
  br label %100, !dbg !2709

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.014, i32 0, i32 0, !dbg !2710
  %102 = load %struct.residue_t*, %struct.residue_t** %101, align 8, !dbg !2710, !tbaa !681
  call void @llvm.dbg.value(metadata %struct.residue_t* %102, metadata !2595, metadata !DIExpression()), !dbg !2603
  %103 = icmp ne %struct.residue_t* %102, null, !dbg !2606
  br i1 %103, label %5, label %._crit_edge, !dbg !2606, !llvm.loop !2711

._crit_edge:                                      ; preds = %100
  br label %104, !dbg !2606

104:                                              ; preds = %._crit_edge, %1
  %105 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1, !dbg !2713
  %106 = load i8*, i8** %105, align 8, !dbg !2713, !tbaa !427
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %106) #9, !dbg !2714
  %108 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2715
  br label %109, !dbg !2716

109:                                              ; preds = %104, %95, %17
  ret void, !dbg !2717
}

; Function Attrs: nounwind uwtable
define internal void @setrlibattrs(%struct.reslib_t* %0, i8* %1) #0 !dbg !2718 {
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2722, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8* %1, metadata !2723, metadata !DIExpression()), !dbg !2726
  %5 = bitcast [100 x i8]* %3 to i8*, !dbg !2727
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %5) #9, !dbg !2727
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !2724, metadata !DIExpression()), !dbg !2728
  %6 = bitcast [100 x i8]* %4 to i8*, !dbg !2727
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %6) #9, !dbg !2727
  call void @llvm.dbg.declare(metadata [100 x i8]* %4, metadata !2725, metadata !DIExpression()), !dbg !2729
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !2730
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !2732
  %9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* %7, i8* %8) #9, !dbg !2733
  %10 = icmp ne i32 %9, 2, !dbg !2734
  br i1 %10, label %11, label %12, !dbg !2735

11:                                               ; preds = %2
  br label %46, !dbg !2736

12:                                               ; preds = %2
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !2737
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !2739
  %15 = icmp eq i32 %14, 0, !dbg !2740
  br i1 %15, label %16, label %18, !dbg !2741

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 2, !dbg !2742
  store i32 1, i32* %17, align 8, !dbg !2743, !tbaa !389
  br label %32, !dbg !2744

18:                                               ; preds = %12
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !2745
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !2747
  %21 = icmp eq i32 %20, 0, !dbg !2748
  br i1 %21, label %22, label %24, !dbg !2749

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 2, !dbg !2750
  store i32 2, i32* %23, align 8, !dbg !2751, !tbaa !389
  br label %31, !dbg !2752

24:                                               ; preds = %18
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !2753
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !2755
  %27 = icmp eq i32 %26, 0, !dbg !2756
  br i1 %27, label %28, label %30, !dbg !2757

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 2, !dbg !2758
  store i32 3, i32* %29, align 8, !dbg !2759, !tbaa !389
  br label %30, !dbg !2760

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !2761
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !2763
  %35 = icmp eq i32 %34, 0, !dbg !2764
  br i1 %35, label %36, label %38, !dbg !2765

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 3, !dbg !2766
  store i32 1, i32* %37, align 4, !dbg !2767, !tbaa !1438
  br label %45, !dbg !2768

38:                                               ; preds = %32
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !2769
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !2771
  %41 = icmp eq i32 %40, 0, !dbg !2772
  br i1 %41, label %42, label %44, !dbg !2773

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 3, !dbg !2774
  store i32 2, i32* %43, align 4, !dbg !2775, !tbaa !1438
  br label %44, !dbg !2776

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %36
  br label %46, !dbg !2777

46:                                               ; preds = %45, %11
  %.0 = phi i32 [ 1, %11 ], [ 0, %45 ]
  %47 = bitcast [100 x i8]* %4 to i8*, !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %47) #9, !dbg !2777
  %48 = bitcast [100 x i8]* %3 to i8*, !dbg !2777
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %48) #9, !dbg !2777
  switch i32 %.0, label %50 [
    i32 0, label %49
    i32 1, label %49
  ]

49:                                               ; preds = %46, %46
  ret void, !dbg !2777

50:                                               ; preds = %46
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @addqr2reslib(%struct.reslib_t* %0) #0 !dbg !2778 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2780, metadata !DIExpression()), !dbg !2785
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4, !dbg !2786
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2786, !tbaa !661
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2781, metadata !DIExpression()), !dbg !2785
  %4 = icmp ne %struct.residue_t* %3, null, !dbg !2788
  br i1 %4, label %.lr.ph, label %52, !dbg !2788

.lr.ph:                                           ; preds = %1
  br label %5, !dbg !2788

5:                                                ; preds = %.lr.ph, %48
  %.04 = phi %struct.residue_t* [ %3, %.lr.ph ], [ %50, %48 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.04, metadata !2781, metadata !DIExpression()), !dbg !2785
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.04, i32 0, i32 4, !dbg !2789
  %7 = load i8*, i8** %6, align 8, !dbg !2789, !tbaa !667
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #8, !dbg !2793
  %9 = icmp eq i32 %8, 0, !dbg !2794
  br i1 %9, label %10, label %47, !dbg !2795

10:                                               ; preds = %5
  %.0.lcssa3 = phi %struct.residue_t* [ %.04, %5 ], !dbg !2796
  call void @llvm.dbg.value(metadata %struct.residue_t* %.0.lcssa3, metadata !2781, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 0, metadata !2782, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !2783, metadata !DIExpression()), !dbg !2785
  %11 = load i32, i32* @n_atoms, align 4, !dbg !2797, !tbaa !858
  %12 = icmp slt i32 0, %11, !dbg !2801
  br i1 %12, label %.lr.ph8, label %46, !dbg !2802

.lr.ph8:                                          ; preds = %10
  br label %13, !dbg !2802

13:                                               ; preds = %.lr.ph8, %41
  %.016 = phi i32 [ 0, %.lr.ph8 ], [ %42, %41 ]
  %.025 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %.lr.ph8 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata i32 %.016, metadata !2782, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata %struct.atom_t* %.025, metadata !2783, metadata !DIExpression()), !dbg !2785
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 0, !dbg !2803
  %15 = load i8*, i8** %14, align 8, !dbg !2803, !tbaa !967
  %16 = call %struct.atom_t* @findatom(%struct.residue_t* %.0.lcssa3, i8* %15), !dbg !2806
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !2784, metadata !DIExpression()), !dbg !2785
  %17 = icmp ne %struct.atom_t* %16, null, !dbg !2807
  br i1 %17, label %18, label %40, !dbg !2808

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 6, !dbg !2809
  %20 = load double, double* %19, align 8, !dbg !2809, !tbaa !1024
  %21 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 6, !dbg !2811
  store double %20, double* %21, align 8, !dbg !2812, !tbaa !1024
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 7, !dbg !2813
  %23 = load double, double* %22, align 8, !dbg !2813, !tbaa !1031
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 7, !dbg !2814
  store double %23, double* %24, align 8, !dbg !2815, !tbaa !1031
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 8, !dbg !2816
  %26 = load double, double* %25, align 8, !dbg !2816, !tbaa !1038
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 8, !dbg !2817
  store double %26, double* %27, align 8, !dbg !2818, !tbaa !1038
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 9, !dbg !2819
  %29 = load double, double* %28, align 8, !dbg !2819, !tbaa !1045
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 9, !dbg !2820
  store double %29, double* %30, align 8, !dbg !2821, !tbaa !1045
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 11, !dbg !2822
  %32 = load i32, i32* %31, align 8, !dbg !2822, !tbaa !1056
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 11, !dbg !2823
  store i32 %32, i32* %33, align 8, !dbg !2824, !tbaa !1056
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 12, !dbg !2825
  %35 = load double, double* %34, align 8, !dbg !2825, !tbaa !1063
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 12, !dbg !2826
  store double %35, double* %36, align 8, !dbg !2827, !tbaa !1063
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 13, !dbg !2828
  %38 = load double, double* %37, align 8, !dbg !2828, !tbaa !1070
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 13, !dbg !2829
  store double %38, double* %39, align 8, !dbg !2830, !tbaa !1070
  br label %40, !dbg !2831

40:                                               ; preds = %18, %13
  br label %41, !dbg !2832

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.016, 1, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %42, metadata !2782, metadata !DIExpression()), !dbg !2785
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 1, !dbg !2834
  call void @llvm.dbg.value(metadata %struct.atom_t* %43, metadata !2783, metadata !DIExpression()), !dbg !2785
  %44 = load i32, i32* @n_atoms, align 4, !dbg !2797, !tbaa !858
  %45 = icmp slt i32 %42, %44, !dbg !2801
  br i1 %45, label %13, label %._crit_edge9, !dbg !2802, !llvm.loop !2835

._crit_edge9:                                     ; preds = %41
  br label %46, !dbg !2802

46:                                               ; preds = %._crit_edge9, %10
  br label %57, !dbg !2837

47:                                               ; preds = %5
  br label %48, !dbg !2838

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.04, i32 0, i32 0, !dbg !2839
  %50 = load %struct.residue_t*, %struct.residue_t** %49, align 8, !dbg !2839, !tbaa !681
  call void @llvm.dbg.value(metadata %struct.residue_t* %50, metadata !2781, metadata !DIExpression()), !dbg !2785
  %51 = icmp ne %struct.residue_t* %50, null, !dbg !2788
  br i1 %51, label %5, label %._crit_edge, !dbg !2788, !llvm.loop !2840

._crit_edge:                                      ; preds = %48
  br label %52, !dbg !2788

52:                                               ; preds = %._crit_edge, %1
  %53 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1, !dbg !2842
  %54 = load i8*, i8** %53, align 8, !dbg !2842, !tbaa !427
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %54) #9, !dbg !2843
  %56 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2844
  br label %57, !dbg !2845

57:                                               ; preds = %52, %46
  ret void, !dbg !2846
}

; Function Attrs: nounwind uwtable
define internal %struct.atom_t* @findatom(%struct.residue_t* %0, i8* %1) #0 !dbg !2847 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2851, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %1, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 0, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 0, metadata !2853, metadata !DIExpression()), !dbg !2854
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !2855
  %4 = load i32, i32* %3, align 8, !dbg !2855, !tbaa !723
  %5 = sext i32 %4 to i64, !dbg !2858
  %6 = icmp slt i64 0, %5, !dbg !2858
  br i1 %6, label %.lr.ph, label %26, !dbg !2859

.lr.ph:                                           ; preds = %2
  br label %7, !dbg !2859

7:                                                ; preds = %.lr.ph, %22
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %22 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !2853, metadata !DIExpression()), !dbg !2854
  %8 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2860
  %9 = load %struct.atom_t*, %struct.atom_t** %8, align 8, !dbg !2860, !tbaa !957
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %indvars.iv3, !dbg !2863
  %11 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %10, i32 0, i32 0, !dbg !2864
  %12 = load i8*, i8** %11, align 8, !dbg !2864, !tbaa !967
  %13 = call i32 @strcmp(i8* %12, i8* %1) #8, !dbg !2865
  %14 = icmp ne i32 %13, 0, !dbg !2865
  br i1 %14, label %21, label %15, !dbg !2866

15:                                               ; preds = %7
  %.01.lcssa2.wide = phi i64 [ %indvars.iv3, %7 ]
  %16 = trunc i64 %.01.lcssa2.wide to i32, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %16, metadata !2853, metadata !DIExpression()), !dbg !2854
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2867
  %18 = load %struct.atom_t*, %struct.atom_t** %17, align 8, !dbg !2867, !tbaa !957
  %19 = sext i32 %16 to i64, !dbg !2868
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %18, i64 %19, !dbg !2868
  br label %27, !dbg !2869

21:                                               ; preds = %7
  br label %22, !dbg !2870

22:                                               ; preds = %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2853, metadata !DIExpression()), !dbg !2854
  %23 = load i32, i32* %3, align 8, !dbg !2855, !tbaa !723
  %24 = sext i32 %23 to i64, !dbg !2858
  %25 = icmp slt i64 %indvars.iv.next, %24, !dbg !2858
  br i1 %25, label %7, label %._crit_edge, !dbg !2859, !llvm.loop !2872

._crit_edge:                                      ; preds = %22
  br label %26, !dbg !2859

26:                                               ; preds = %._crit_edge, %2
  br label %27, !dbg !2874

27:                                               ; preds = %26, %15
  %.0 = phi %struct.atom_t* [ %20, %15 ], [ null, %26 ], !dbg !2854
  ret %struct.atom_t* %.0, !dbg !2875
}

; Function Attrs: nounwind uwtable
define internal void @addchi2reslib(%struct.reslib_t* %0) #0 !dbg !2876 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2878, metadata !DIExpression()), !dbg !2888
  %5 = bitcast [4 x [3 x double]]* %2 to i8*, !dbg !2889
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %5) #9, !dbg !2889
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %2, metadata !2884, metadata !DIExpression()), !dbg !2890
  %6 = bitcast [4 x [3 x double]]* %3 to i8*, !dbg !2891
  call void @llvm.lifetime.start.p0i8(i64 96, i8* %6) #9, !dbg !2891
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %3, metadata !2886, metadata !DIExpression()), !dbg !2892
  %7 = bitcast double* %4 to i8*, !dbg !2893
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #9, !dbg !2893
  call void @llvm.dbg.declare(metadata double* %4, metadata !2887, metadata !DIExpression()), !dbg !2894
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 4, !dbg !2895
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2895, !tbaa !661
  call void @llvm.dbg.value(metadata %struct.residue_t* %9, metadata !2879, metadata !DIExpression()), !dbg !2888
  %10 = icmp ne %struct.residue_t* %9, null, !dbg !2897
  br i1 %10, label %.lr.ph, label %89, !dbg !2897

.lr.ph:                                           ; preds = %1
  br label %11, !dbg !2897

11:                                               ; preds = %.lr.ph, %85
  %.018 = phi %struct.residue_t* [ %9, %.lr.ph ], [ %87, %85 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.018, metadata !2879, metadata !DIExpression()), !dbg !2888
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.018, i32 0, i32 4, !dbg !2898
  %13 = load i8*, i8** %12, align 8, !dbg !2898, !tbaa !667
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #8, !dbg !2902
  %15 = icmp ne i32 %14, 0, !dbg !2902
  br i1 %15, label %84, label %16, !dbg !2903

16:                                               ; preds = %11
  %.01.lcssa5 = phi %struct.residue_t* [ %.018, %11 ], !dbg !2904
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa5, metadata !2879, metadata !DIExpression()), !dbg !2888
  %17 = load i32, i32* @n_chi, align 4, !dbg !2905, !tbaa !858
  %18 = sext i32 %17 to i64, !dbg !2905
  %19 = mul i64 %18, 24, !dbg !2908
  %20 = call noalias i8* @malloc(i64 %19) #9, !dbg !2909
  %21 = bitcast i8* %20 to %struct.chiral_t*, !dbg !2910
  call void @llvm.dbg.value(metadata %struct.chiral_t* %21, metadata !2880, metadata !DIExpression()), !dbg !2888
  %22 = icmp eq %struct.chiral_t* %21, null, !dbg !2911
  br i1 %22, label %23, label %28, !dbg !2912

23:                                               ; preds = %16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2913, !tbaa !379
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 4, !dbg !2915
  %26 = load i8*, i8** %25, align 8, !dbg !2915, !tbaa !667
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %26), !dbg !2916
  br label %96, !dbg !2917

28:                                               ; preds = %16
  %29 = load i32, i32* @n_chi, align 4, !dbg !2918, !tbaa !858
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 13, !dbg !2919
  store i32 %29, i32* %30, align 8, !dbg !2920, !tbaa !771
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 14, !dbg !2921
  store %struct.chiral_t* %21, %struct.chiral_t** %31, align 8, !dbg !2922, !tbaa !876
  call void @llvm.dbg.value(metadata i32 0, metadata !2882, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata %struct.chiral_t* %21, metadata !2880, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2882, metadata !DIExpression()), !dbg !2888
  %32 = load i32, i32* @n_chi, align 4, !dbg !2923, !tbaa !858
  %33 = sext i32 %32 to i64, !dbg !2926
  %34 = icmp slt i64 0, %33, !dbg !2926
  br i1 %34, label %.lr.ph13, label %83, !dbg !2927

.lr.ph13:                                         ; preds = %28
  br label %35, !dbg !2927

35:                                               ; preds = %.lr.ph13, %79
  %.0211 = phi %struct.chiral_t* [ %21, %.lr.ph13 ], [ %78, %79 ]
  %indvars.iv610 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next7, %79 ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %.0211, metadata !2880, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %indvars.iv610, metadata !2882, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 0, metadata !2881, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 0, metadata !2881, metadata !DIExpression()), !dbg !2888
  br label %36, !dbg !2928

36:                                               ; preds = %35, %70
  %indvars.iv9 = phi i64 [ 0, %35 ], [ %indvars.iv.next, %70 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !2881, metadata !DIExpression()), !dbg !2888
  %37 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %indvars.iv610, !dbg !2931
  %38 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %37, i32 0, i32 0, !dbg !2934
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 %indvars.iv9, !dbg !2931
  %40 = load i32, i32* %39, align 4, !dbg !2931, !tbaa !858
  %41 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0211, i32 0, i32 0, !dbg !2935
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i64 0, i64 %indvars.iv9, !dbg !2936
  store i32 %40, i32* %42, align 4, !dbg !2937, !tbaa !858
  call void @llvm.dbg.value(metadata i32 %40, metadata !2883, metadata !DIExpression()), !dbg !2888
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 17, !dbg !2938
  %44 = load %struct.atom_t*, %struct.atom_t** %43, align 8, !dbg !2938, !tbaa !957
  %45 = sext i32 %40 to i64, !dbg !2939
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %44, i64 %45, !dbg !2939
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i32 0, i32 17, !dbg !2940
  %48 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 0, i64 0, !dbg !2939
  %49 = load double, double* %48, align 8, !dbg !2939, !tbaa !1095
  %50 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv9, !dbg !2941
  %51 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 0, i64 0, !dbg !2941
  store double %49, double* %51, align 8, !dbg !2942, !tbaa !1095
  %52 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 17, !dbg !2943
  %53 = load %struct.atom_t*, %struct.atom_t** %52, align 8, !dbg !2943, !tbaa !957
  %54 = sext i32 %40 to i64, !dbg !2944
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %53, i64 %54, !dbg !2944
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %55, i32 0, i32 17, !dbg !2945
  %57 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 1, !dbg !2944
  %58 = load double, double* %57, align 8, !dbg !2944, !tbaa !1095
  %59 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv9, !dbg !2946
  %60 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 0, i64 1, !dbg !2946
  store double %58, double* %60, align 8, !dbg !2947, !tbaa !1095
  %61 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa5, i32 0, i32 17, !dbg !2948
  %62 = load %struct.atom_t*, %struct.atom_t** %61, align 8, !dbg !2948, !tbaa !957
  %63 = sext i32 %40 to i64, !dbg !2949
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 %63, !dbg !2949
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %64, i32 0, i32 17, !dbg !2950
  %66 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 0, i64 2, !dbg !2949
  %67 = load double, double* %66, align 8, !dbg !2949, !tbaa !1095
  %68 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv9, !dbg !2951
  %69 = getelementptr inbounds [3 x double], [3 x double]* %68, i64 0, i64 2, !dbg !2951
  store double %67, double* %69, align 8, !dbg !2952, !tbaa !1095
  br label %70, !dbg !2953

70:                                               ; preds = %36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2881, metadata !DIExpression()), !dbg !2888
  %exitcond = icmp ne i64 %indvars.iv.next, 4, !dbg !2955
  br i1 %exitcond, label %36, label %71, !dbg !2928, !llvm.loop !2956

71:                                               ; preds = %70
  %72 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, !dbg !2958
  %73 = bitcast [3 x double]* %72 to double*, !dbg !2959
  %74 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %3, i64 0, i64 0, !dbg !2960
  %75 = bitcast [3 x double]* %74 to double*, !dbg !2961
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* %73, double* %75, double* %4), !dbg !2962
  %76 = load double, double* %4, align 8, !dbg !2963, !tbaa !1095
  %77 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0211, i32 0, i32 1, !dbg !2964
  store double %76, double* %77, align 8, !dbg !2965, !tbaa !900
  %78 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0211, i32 1, !dbg !2966
  call void @llvm.dbg.value(metadata %struct.chiral_t* %78, metadata !2880, metadata !DIExpression()), !dbg !2888
  br label %79, !dbg !2967

79:                                               ; preds = %71
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv610, 1, !dbg !2968
  call void @llvm.dbg.value(metadata %struct.chiral_t* %78, metadata !2880, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next7, metadata !2882, metadata !DIExpression()), !dbg !2888
  %80 = load i32, i32* @n_chi, align 4, !dbg !2923, !tbaa !858
  %81 = sext i32 %80 to i64, !dbg !2926
  %82 = icmp slt i64 %indvars.iv.next7, %81, !dbg !2926
  br i1 %82, label %35, label %._crit_edge14, !dbg !2927, !llvm.loop !2969

._crit_edge14:                                    ; preds = %79
  br label %83, !dbg !2927

83:                                               ; preds = %._crit_edge14, %28
  br label %96, !dbg !2971

84:                                               ; preds = %11
  br label %85, !dbg !2972

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.018, i32 0, i32 0, !dbg !2973
  %87 = load %struct.residue_t*, %struct.residue_t** %86, align 8, !dbg !2973, !tbaa !681
  call void @llvm.dbg.value(metadata %struct.residue_t* %87, metadata !2879, metadata !DIExpression()), !dbg !2888
  %88 = icmp ne %struct.residue_t* %87, null, !dbg !2897
  br i1 %88, label %11, label %._crit_edge, !dbg !2897, !llvm.loop !2974

._crit_edge:                                      ; preds = %85
  %split = phi %struct.residue_t* [ %87, %85 ]
  br label %89, !dbg !2897

89:                                               ; preds = %._crit_edge, %1
  %.01.lcssa = phi %struct.residue_t* [ %split, %._crit_edge ], [ %9, %1 ], !dbg !2904
  call void @llvm.dbg.value(metadata %struct.residue_t* %.01.lcssa, metadata !2879, metadata !DIExpression()), !dbg !2888
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2976, !tbaa !379
  %91 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa, i32 0, i32 4, !dbg !2977
  %92 = load i8*, i8** %91, align 8, !dbg !2977, !tbaa !667
  %93 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i32 0, i32 1, !dbg !2978
  %94 = load i8*, i8** %93, align 8, !dbg !2978, !tbaa !427
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %92, i8* %94), !dbg !2979
  br label %96, !dbg !2980

96:                                               ; preds = %89, %83, %23
  %.0 = phi i32 [ 1, %23 ], [ 1, %83 ], [ 0, %89 ]
  %97 = bitcast double* %4 to i8*, !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #9, !dbg !2980
  %98 = bitcast [4 x [3 x double]]* %3 to i8*, !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %98) #9, !dbg !2980
  %99 = bitcast [4 x [3 x double]]* %2 to i8*, !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 96, i8* %99) #9, !dbg !2980
  switch i32 %.0, label %101 [
    i32 0, label %100
    i32 1, label %100
  ]

100:                                              ; preds = %96, %96
  ret void, !dbg !2980

101:                                              ; preds = %96
  unreachable
}

declare !dbg !315 dso_local void @chirvol(i32, i32, i32, i32, i32, double*, double*, double*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!355, !356, !357}
!llvm.ident = !{!358}

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
!355 = !{i32 7, !"Dwarf Version", i32 4}
!356 = !{i32 2, !"Debug Info Version", i32 3}
!357 = !{i32 1, !"wchar_size", i32 4}
!358 = !{!"clang version 10.0.0-4ubuntu1 "}
!359 = distinct !DISubprogram(name: "getreslibkind", scope: !3, file: !3, line: 78, type: !360, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!360 = !DISubroutineType(types: !361)
!361 = !{!12, !12}
!362 = !{!363, !364, !365}
!363 = !DILocalVariable(name: "reslib", arg: 1, scope: !359, file: !3, line: 78, type: !12)
!364 = !DILocalVariable(name: "nhp", scope: !359, file: !3, line: 80, type: !12)
!365 = !DILocalVariable(name: "rlp", scope: !359, file: !3, line: 81, type: !298)
!366 = !DILocation(line: 0, scope: !359)
!367 = !DILocation(line: 80, column: 8, scope: !359)
!368 = !DILocation(line: 83, column: 14, scope: !369)
!369 = distinct !DILexicalBlock(scope: !359, file: !3, line: 83, column: 6)
!370 = !DILocation(line: 83, column: 39, scope: !369)
!371 = !DILocation(line: 83, column: 6, scope: !359)
!372 = !DILocation(line: 84, column: 15, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 84, column: 7)
!374 = distinct !DILexicalBlock(scope: !369, file: !3, line: 83, column: 48)
!375 = !DILocation(line: 84, column: 39, scope: !373)
!376 = !DILocation(line: 84, column: 7, scope: !374)
!377 = !DILocation(line: 85, column: 13, scope: !378)
!378 = distinct !DILexicalBlock(scope: !373, file: !3, line: 84, column: 48)
!379 = !{!380, !380, i64 0}
!380 = !{!"any pointer", !381, i64 0}
!381 = !{!"omnipotent char", !382, i64 0}
!382 = !{!"Simple C/C++ TBAA"}
!383 = !DILocation(line: 85, column: 4, scope: !378)
!384 = !DILocation(line: 87, column: 4, scope: !378)
!385 = !DILocation(line: 89, column: 2, scope: !374)
!386 = !DILocation(line: 0, scope: !369)
!387 = !DILocation(line: 90, column: 11, scope: !388)
!388 = distinct !DILexicalBlock(scope: !359, file: !3, line: 90, column: 6)
!389 = !{!390, !391, i64 16}
!390 = !{!"reslib_t", !380, i64 0, !380, i64 8, !391, i64 16, !391, i64 20, !380, i64 24}
!391 = !{!"int", !381, i64 0}
!392 = !DILocation(line: 90, column: 21, scope: !388)
!393 = !DILocation(line: 90, column: 6, scope: !359)
!394 = !DILocation(line: 91, column: 3, scope: !388)
!395 = !DILocation(line: 92, column: 16, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !3, line: 92, column: 11)
!397 = !DILocation(line: 92, column: 26, scope: !396)
!398 = !DILocation(line: 92, column: 11, scope: !388)
!399 = !DILocation(line: 93, column: 3, scope: !396)
!400 = !DILocation(line: 94, column: 16, scope: !401)
!401 = distinct !DILexicalBlock(scope: !396, file: !3, line: 94, column: 11)
!402 = !DILocation(line: 94, column: 26, scope: !401)
!403 = !DILocation(line: 94, column: 11, scope: !396)
!404 = !DILocation(line: 95, column: 3, scope: !401)
!405 = !DILocation(line: 96, column: 16, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !3, line: 96, column: 11)
!407 = !DILocation(line: 96, column: 26, scope: !406)
!408 = !DILocation(line: 96, column: 11, scope: !401)
!409 = !DILocation(line: 97, column: 3, scope: !406)
!410 = !DILocation(line: 99, column: 3, scope: !406)
!411 = !DILocation(line: 0, scope: !388)
!412 = !DILocation(line: 101, column: 1, scope: !359)
!413 = distinct !DISubprogram(name: "known_reslib", scope: !3, file: !3, line: 422, type: !414, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!298, !12}
!416 = !{!417, !418}
!417 = !DILocalVariable(name: "reslib", arg: 1, scope: !413, file: !3, line: 422, type: !12)
!418 = !DILocalVariable(name: "rlp", scope: !413, file: !3, line: 424, type: !298)
!419 = !DILocation(line: 0, scope: !413)
!420 = !DILocation(line: 426, column: 13, scope: !421)
!421 = distinct !DILexicalBlock(scope: !413, file: !3, line: 426, column: 2)
!422 = !DILocation(line: 426, column: 2, scope: !421)
!423 = !DILocation(line: 427, column: 20, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 427, column: 7)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 426, column: 47)
!426 = distinct !DILexicalBlock(scope: !421, file: !3, line: 426, column: 2)
!427 = !{!390, !380, i64 8}
!428 = !DILocation(line: 427, column: 7, scope: !424)
!429 = !DILocation(line: 427, column: 38, scope: !424)
!430 = !DILocation(line: 427, column: 7, scope: !425)
!431 = !DILocation(line: 0, scope: !421)
!432 = !DILocation(line: 428, column: 4, scope: !433)
!433 = distinct !DILexicalBlock(scope: !424, file: !3, line: 427, column: 44)
!434 = !DILocation(line: 430, column: 2, scope: !425)
!435 = !DILocation(line: 426, column: 38, scope: !426)
!436 = !{!390, !380, i64 0}
!437 = distinct !{!437, !422, !438}
!438 = !DILocation(line: 430, column: 2, scope: !421)
!439 = !DILocation(line: 431, column: 2, scope: !413)
!440 = !DILocation(line: 432, column: 1, scope: !413)
!441 = distinct !DISubprogram(name: "read_reslib", scope: !3, file: !3, line: 434, type: !414, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!442 = !{!443, !444, !448, !449, !450, !451, !452}
!443 = !DILocalVariable(name: "reslib", arg: 1, scope: !441, file: !3, line: 434, type: !12)
!444 = !DILocalVariable(name: "pfp", scope: !441, file: !3, line: 436, type: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !447, line: 7, baseType: !243)
!447 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!448 = !DILocalVariable(name: "bfp", scope: !441, file: !3, line: 437, type: !445)
!449 = !DILocalVariable(name: "qfp", scope: !441, file: !3, line: 438, type: !445)
!450 = !DILocalVariable(name: "cfp", scope: !441, file: !3, line: 439, type: !445)
!451 = !DILocalVariable(name: "rlp", scope: !441, file: !3, line: 440, type: !298)
!452 = !DILocalVariable(name: "offname", scope: !441, file: !3, line: 441, type: !352)
!453 = !DILocation(line: 0, scope: !441)
!454 = !DILocation(line: 436, column: 2, scope: !441)
!455 = !DILocation(line: 436, column: 8, scope: !441)
!456 = !DILocation(line: 437, column: 2, scope: !441)
!457 = !DILocation(line: 437, column: 8, scope: !441)
!458 = !DILocation(line: 438, column: 2, scope: !441)
!459 = !DILocation(line: 438, column: 8, scope: !441)
!460 = !DILocation(line: 439, column: 2, scope: !441)
!461 = !DILocation(line: 439, column: 8, scope: !441)
!462 = !DILocation(line: 441, column: 2, scope: !441)
!463 = !DILocation(line: 441, column: 7, scope: !441)
!464 = !DILocation(line: 444, column: 3, scope: !465)
!465 = distinct !DILexicalBlock(scope: !441, file: !3, line: 443, column: 6)
!466 = !DILocation(line: 443, column: 14, scope: !465)
!467 = !DILocation(line: 444, column: 15, scope: !465)
!468 = !DILocation(line: 443, column: 6, scope: !441)
!469 = !DILocation(line: 446, column: 3, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 445, column: 2)
!471 = !DILocation(line: 449, column: 2, scope: !441)
!472 = !DILocation(line: 450, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !441, file: !3, line: 450, column: 7)
!474 = !{!381, !381, i64 0}
!475 = !DILocation(line: 450, column: 7, scope: !441)
!476 = !DILocation(line: 451, column: 15, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !3, line: 450, column: 17)
!478 = !DILocation(line: 451, column: 3, scope: !477)
!479 = !DILocation(line: 452, column: 2, scope: !477)
!480 = !DILocation(line: 453, column: 15, scope: !481)
!481 = distinct !DILexicalBlock(scope: !473, file: !3, line: 452, column: 7)
!482 = !DILocation(line: 453, column: 3, scope: !481)
!483 = !DILocation(line: 454, column: 15, scope: !481)
!484 = !DILocation(line: 454, column: 3, scope: !481)
!485 = !DILocation(line: 455, column: 11, scope: !481)
!486 = !DILocation(line: 455, column: 3, scope: !481)
!487 = !DILocation(line: 456, column: 11, scope: !481)
!488 = !DILocation(line: 456, column: 3, scope: !481)
!489 = !DILocation(line: 459, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !441, file: !3, line: 459, column: 6)
!491 = !DILocation(line: 459, column: 6, scope: !441)
!492 = !DILocation(line: 460, column: 14, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !3, line: 459, column: 11)
!494 = !DILocation(line: 460, column: 3, scope: !493)
!495 = !DILocation(line: 461, column: 11, scope: !493)
!496 = !DILocation(line: 461, column: 3, scope: !493)
!497 = !DILocation(line: 462, column: 2, scope: !493)
!498 = !DILocation(line: 464, column: 6, scope: !499)
!499 = distinct !DILexicalBlock(scope: !441, file: !3, line: 464, column: 6)
!500 = !DILocation(line: 464, column: 6, scope: !441)
!501 = !DILocation(line: 465, column: 15, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 464, column: 11)
!503 = !DILocation(line: 465, column: 3, scope: !502)
!504 = !DILocation(line: 466, column: 11, scope: !502)
!505 = !DILocation(line: 466, column: 3, scope: !502)
!506 = !DILocation(line: 467, column: 2, scope: !502)
!507 = !DILocation(line: 469, column: 2, scope: !441)
!508 = !DILocation(line: 470, column: 1, scope: !441)
!509 = distinct !DISubprogram(name: "setreslibkind", scope: !3, file: !3, line: 103, type: !510, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!11, !12, !12}
!512 = !{!513, !514, !515, !516}
!513 = !DILocalVariable(name: "reslib", arg: 1, scope: !509, file: !3, line: 103, type: !12)
!514 = !DILocalVariable(name: "kind", arg: 2, scope: !509, file: !3, line: 103, type: !12)
!515 = !DILocalVariable(name: "nhp", scope: !509, file: !3, line: 105, type: !12)
!516 = !DILocalVariable(name: "rlp", scope: !509, file: !3, line: 106, type: !298)
!517 = !DILocation(line: 0, scope: !509)
!518 = !DILocation(line: 105, column: 8, scope: !509)
!519 = !DILocation(line: 108, column: 14, scope: !520)
!520 = distinct !DILexicalBlock(scope: !509, file: !3, line: 108, column: 6)
!521 = !DILocation(line: 108, column: 39, scope: !520)
!522 = !DILocation(line: 108, column: 6, scope: !509)
!523 = !DILocation(line: 109, column: 16, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 109, column: 8)
!525 = distinct !DILexicalBlock(scope: !520, file: !3, line: 108, column: 48)
!526 = !DILocation(line: 109, column: 40, scope: !524)
!527 = !DILocation(line: 109, column: 8, scope: !525)
!528 = !DILocation(line: 110, column: 15, scope: !529)
!529 = distinct !DILexicalBlock(scope: !524, file: !3, line: 109, column: 49)
!530 = !DILocation(line: 110, column: 6, scope: !529)
!531 = !DILocation(line: 112, column: 6, scope: !529)
!532 = !DILocation(line: 114, column: 2, scope: !525)
!533 = !DILocation(line: 0, scope: !520)
!534 = !DILocation(line: 115, column: 7, scope: !509)
!535 = !DILocation(line: 115, column: 17, scope: !509)
!536 = !DILocation(line: 116, column: 8, scope: !537)
!537 = distinct !DILexicalBlock(scope: !509, file: !3, line: 116, column: 7)
!538 = !DILocation(line: 116, column: 30, scope: !537)
!539 = !DILocation(line: 116, column: 34, scope: !537)
!540 = !DILocation(line: 116, column: 7, scope: !509)
!541 = !DILocation(line: 117, column: 15, scope: !537)
!542 = !DILocation(line: 117, column: 25, scope: !537)
!543 = !DILocation(line: 117, column: 10, scope: !537)
!544 = !DILocation(line: 118, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !537, file: !3, line: 118, column: 12)
!546 = !DILocation(line: 118, column: 35, scope: !545)
!547 = !DILocation(line: 118, column: 39, scope: !545)
!548 = !DILocation(line: 118, column: 12, scope: !537)
!549 = !DILocation(line: 119, column: 15, scope: !545)
!550 = !DILocation(line: 119, column: 25, scope: !545)
!551 = !DILocation(line: 119, column: 10, scope: !545)
!552 = !DILocation(line: 120, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !545, file: !3, line: 120, column: 12)
!554 = !DILocation(line: 120, column: 34, scope: !553)
!555 = !DILocation(line: 120, column: 38, scope: !553)
!556 = !DILocation(line: 120, column: 12, scope: !545)
!557 = !DILocation(line: 121, column: 15, scope: !553)
!558 = !DILocation(line: 121, column: 25, scope: !553)
!559 = !DILocation(line: 121, column: 10, scope: !553)
!560 = !DILocation(line: 123, column: 22, scope: !509)
!561 = !DILocation(line: 123, column: 9, scope: !509)
!562 = distinct !DISubprogram(name: "getresidue", scope: !3, file: !3, line: 126, type: !563, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!169, !12, !12}
!565 = !{!566, !567, !568, !569, !573, !574, !575}
!566 = !DILocalVariable(name: "rname", arg: 1, scope: !562, file: !3, line: 126, type: !12)
!567 = !DILocalVariable(name: "reslib", arg: 2, scope: !562, file: !3, line: 126, type: !12)
!568 = !DILocalVariable(name: "nhp", scope: !562, file: !3, line: 128, type: !12)
!569 = !DILocalVariable(name: "leapname", scope: !562, file: !3, line: 128, type: !570)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 40, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 5)
!573 = !DILocalVariable(name: "rlp", scope: !562, file: !3, line: 129, type: !298)
!574 = !DILocalVariable(name: "res", scope: !562, file: !3, line: 130, type: !169)
!575 = !DILocalVariable(name: "nres", scope: !562, file: !3, line: 130, type: !169)
!576 = !DILocation(line: 0, scope: !562)
!577 = !DILocation(line: 128, column: 8, scope: !562)
!578 = !DILocation(line: 128, column: 2, scope: !562)
!579 = !DILocation(line: 128, column: 13, scope: !562)
!580 = !DILocation(line: 132, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !562, file: !3, line: 132, column: 6)
!582 = !DILocation(line: 132, column: 39, scope: !581)
!583 = !DILocation(line: 132, column: 6, scope: !562)
!584 = !DILocation(line: 133, column: 15, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !3, line: 133, column: 7)
!586 = distinct !DILexicalBlock(scope: !581, file: !3, line: 132, column: 48)
!587 = !DILocation(line: 133, column: 39, scope: !585)
!588 = !DILocation(line: 133, column: 7, scope: !586)
!589 = !DILocation(line: 134, column: 4, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !3, line: 133, column: 48)
!591 = !DILocation(line: 136, column: 2, scope: !586)
!592 = !DILocation(line: 0, scope: !581)
!593 = !DILocation(line: 138, column: 10, scope: !562)
!594 = !DILocation(line: 138, column: 2, scope: !562)
!595 = !DILocation(line: 139, column: 12, scope: !596)
!596 = distinct !DILexicalBlock(scope: !562, file: !3, line: 139, column: 7)
!597 = !DILocation(line: 139, column: 22, scope: !596)
!598 = !DILocation(line: 139, column: 7, scope: !562)
!599 = !DILocation(line: 140, column: 14, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 140, column: 13)
!601 = distinct !DILexicalBlock(scope: !596, file: !3, line: 139, column: 33)
!602 = !DILocation(line: 140, column: 13, scope: !601)
!603 = !DILocation(line: 141, column: 12, scope: !600)
!604 = !DILocation(line: 141, column: 4, scope: !600)
!605 = !DILocation(line: 142, column: 14, scope: !606)
!606 = distinct !DILexicalBlock(scope: !600, file: !3, line: 142, column: 13)
!607 = !DILocation(line: 142, column: 13, scope: !600)
!608 = !DILocation(line: 143, column: 12, scope: !606)
!609 = !DILocation(line: 143, column: 4, scope: !606)
!610 = !DILocation(line: 144, column: 14, scope: !611)
!611 = distinct !DILexicalBlock(scope: !606, file: !3, line: 144, column: 13)
!612 = !DILocation(line: 144, column: 13, scope: !606)
!613 = !DILocation(line: 145, column: 12, scope: !611)
!614 = !DILocation(line: 145, column: 4, scope: !611)
!615 = !DILocation(line: 146, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !3, line: 146, column: 13)
!617 = !DILocation(line: 146, column: 13, scope: !611)
!618 = !DILocation(line: 147, column: 12, scope: !616)
!619 = !DILocation(line: 147, column: 4, scope: !616)
!620 = !DILocation(line: 148, column: 2, scope: !601)
!621 = !DILocation(line: 149, column: 17, scope: !622)
!622 = distinct !DILexicalBlock(scope: !596, file: !3, line: 149, column: 12)
!623 = !DILocation(line: 149, column: 27, scope: !622)
!624 = !DILocation(line: 149, column: 12, scope: !596)
!625 = !DILocation(line: 150, column: 14, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 150, column: 13)
!627 = distinct !DILexicalBlock(scope: !622, file: !3, line: 149, column: 38)
!628 = !DILocation(line: 150, column: 13, scope: !627)
!629 = !DILocation(line: 151, column: 12, scope: !626)
!630 = !DILocation(line: 151, column: 4, scope: !626)
!631 = !DILocation(line: 152, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !626, file: !3, line: 152, column: 13)
!633 = !DILocation(line: 152, column: 13, scope: !626)
!634 = !DILocation(line: 153, column: 12, scope: !632)
!635 = !DILocation(line: 153, column: 4, scope: !632)
!636 = !DILocation(line: 154, column: 14, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !3, line: 154, column: 13)
!638 = !DILocation(line: 154, column: 13, scope: !632)
!639 = !DILocation(line: 155, column: 12, scope: !637)
!640 = !DILocation(line: 155, column: 4, scope: !637)
!641 = !DILocation(line: 156, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !637, file: !3, line: 156, column: 13)
!643 = !DILocation(line: 156, column: 13, scope: !637)
!644 = !DILocation(line: 157, column: 12, scope: !642)
!645 = !DILocation(line: 157, column: 4, scope: !642)
!646 = !DILocation(line: 158, column: 2, scope: !627)
!647 = !DILocation(line: 159, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !562, file: !3, line: 159, column: 7)
!649 = !DILocation(line: 159, column: 28, scope: !648)
!650 = !DILocation(line: 159, column: 7, scope: !562)
!651 = !DILocation(line: 160, column: 11, scope: !648)
!652 = !DILocation(line: 160, column: 3, scope: !648)
!653 = !DILocation(line: 161, column: 12, scope: !654)
!654 = distinct !DILexicalBlock(scope: !648, file: !3, line: 161, column: 12)
!655 = !DILocation(line: 161, column: 33, scope: !654)
!656 = !DILocation(line: 161, column: 12, scope: !648)
!657 = !DILocation(line: 162, column: 11, scope: !654)
!658 = !DILocation(line: 162, column: 3, scope: !654)
!659 = !DILocation(line: 163, column: 18, scope: !660)
!660 = distinct !DILexicalBlock(scope: !562, file: !3, line: 163, column: 2)
!661 = !{!390, !380, i64 24}
!662 = !DILocation(line: 163, column: 2, scope: !660)
!663 = !DILocation(line: 164, column: 21, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 164, column: 6)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 163, column: 53)
!666 = distinct !DILexicalBlock(scope: !660, file: !3, line: 163, column: 2)
!667 = !{!668, !380, i64 24}
!668 = !{!"residue_t", !380, i64 0, !391, i64 8, !391, i64 12, !391, i64 16, !380, i64 24, !380, i64 32, !391, i64 40, !391, i64 44, !391, i64 48, !380, i64 56, !380, i64 64, !391, i64 72, !380, i64 80, !391, i64 88, !380, i64 96, !391, i64 104, !380, i64 112, !380, i64 120}
!669 = !DILocation(line: 164, column: 8, scope: !664)
!670 = !DILocation(line: 164, column: 40, scope: !664)
!671 = !DILocation(line: 164, column: 47, scope: !664)
!672 = !DILocation(line: 165, column: 19, scope: !664)
!673 = !DILocation(line: 165, column: 30, scope: !664)
!674 = !DILocation(line: 165, column: 6, scope: !664)
!675 = !DILocation(line: 165, column: 41, scope: !664)
!676 = !DILocation(line: 164, column: 6, scope: !665)
!677 = !DILocation(line: 0, scope: !660)
!678 = !DILocation(line: 166, column: 4, scope: !664)
!679 = !DILocation(line: 167, column: 2, scope: !665)
!680 = !DILocation(line: 163, column: 45, scope: !666)
!681 = !{!668, !380, i64 0}
!682 = distinct !{!682, !662, !683}
!683 = !DILocation(line: 167, column: 2, scope: !660)
!684 = !DILocation(line: 169, column: 10, scope: !685)
!685 = distinct !DILexicalBlock(scope: !562, file: !3, line: 169, column: 6)
!686 = !DILocation(line: 169, column: 6, scope: !562)
!687 = !DILocation(line: 170, column: 3, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !3, line: 169, column: 19)
!689 = !DILocation(line: 171, column: 3, scope: !688)
!690 = !DILocation(line: 172, column: 3, scope: !688)
!691 = !DILocation(line: 175, column: 9, scope: !562)
!692 = !DILocation(line: 177, column: 2, scope: !562)
!693 = !DILocation(line: 178, column: 1, scope: !562)
!694 = distinct !DISubprogram(name: "copyresidue", scope: !3, file: !3, line: 180, type: !695, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!169, !169}
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!698 = !DILocalVariable(name: "res", arg: 1, scope: !694, file: !3, line: 180, type: !169)
!699 = !DILocalVariable(name: "a", scope: !694, file: !3, line: 182, type: !11)
!700 = !DILocalVariable(name: "b", scope: !694, file: !3, line: 182, type: !11)
!701 = !DILocalVariable(name: "c", scope: !694, file: !3, line: 182, type: !11)
!702 = !DILocalVariable(name: "i", scope: !694, file: !3, line: 182, type: !11)
!703 = !DILocalVariable(name: "aip", scope: !694, file: !3, line: 183, type: !228)
!704 = !DILocalVariable(name: "nres", scope: !694, file: !3, line: 184, type: !169)
!705 = !DILocalVariable(name: "ap", scope: !694, file: !3, line: 185, type: !201)
!706 = !DILocalVariable(name: "anp", scope: !694, file: !3, line: 186, type: !12)
!707 = !DILocalVariable(name: "rnp", scope: !694, file: !3, line: 186, type: !12)
!708 = !DILocalVariable(name: "bp", scope: !694, file: !3, line: 187, type: !183)
!709 = !DILocalVariable(name: "cp", scope: !694, file: !3, line: 188, type: !190)
!710 = !DILocation(line: 0, scope: !694)
!711 = !DILocation(line: 190, column: 26, scope: !712)
!712 = distinct !DILexicalBlock(scope: !694, file: !3, line: 190, column: 5)
!713 = !DILocation(line: 190, column: 13, scope: !712)
!714 = !DILocation(line: 191, column: 3, scope: !712)
!715 = !DILocation(line: 190, column: 5, scope: !694)
!716 = !DILocation(line: 193, column: 42, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !3, line: 192, column: 2)
!718 = !DILocation(line: 193, column: 3, scope: !717)
!719 = !DILocation(line: 194, column: 3, scope: !717)
!720 = !DILocation(line: 195, column: 3, scope: !717)
!721 = !DILocation(line: 198, column: 37, scope: !722)
!722 = distinct !DILexicalBlock(scope: !694, file: !3, line: 198, column: 6)
!723 = !{!668, !391, i64 104}
!724 = !DILocation(line: 198, column: 32, scope: !722)
!725 = !DILocation(line: 198, column: 45, scope: !722)
!726 = !DILocation(line: 198, column: 25, scope: !722)
!727 = !DILocation(line: 198, column: 13, scope: !722)
!728 = !DILocation(line: 199, column: 3, scope: !722)
!729 = !DILocation(line: 198, column: 6, scope: !694)
!730 = !DILocation(line: 201, column: 51, scope: !731)
!731 = distinct !DILexicalBlock(scope: !722, file: !3, line: 200, column: 2)
!732 = !DILocation(line: 201, column: 3, scope: !731)
!733 = !DILocation(line: 202, column: 3, scope: !731)
!734 = !DILocation(line: 203, column: 3, scope: !731)
!735 = !DILocation(line: 206, column: 35, scope: !736)
!736 = distinct !DILexicalBlock(scope: !694, file: !3, line: 206, column: 6)
!737 = !DILocation(line: 206, column: 30, scope: !736)
!738 = !DILocation(line: 206, column: 43, scope: !736)
!739 = !DILocation(line: 206, column: 23, scope: !736)
!740 = !DILocation(line: 206, column: 14, scope: !736)
!741 = !DILocation(line: 206, column: 58, scope: !736)
!742 = !DILocation(line: 206, column: 6, scope: !694)
!743 = !DILocation(line: 209, column: 9, scope: !744)
!744 = distinct !DILexicalBlock(scope: !736, file: !3, line: 207, column: 2)
!745 = !DILocation(line: 208, column: 3, scope: !744)
!746 = !DILocation(line: 210, column: 3, scope: !744)
!747 = !DILocation(line: 211, column: 3, scope: !744)
!748 = !DILocation(line: 214, column: 11, scope: !749)
!749 = distinct !DILexicalBlock(scope: !694, file: !3, line: 214, column: 6)
!750 = !{!668, !391, i64 72}
!751 = !DILocation(line: 214, column: 23, scope: !749)
!752 = !DILocation(line: 214, column: 6, scope: !694)
!753 = !DILocation(line: 216, column: 16, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 215, column: 7)
!755 = distinct !DILexicalBlock(scope: !749, file: !3, line: 214, column: 28)
!756 = !DILocation(line: 216, column: 11, scope: !754)
!757 = !DILocation(line: 216, column: 27, scope: !754)
!758 = !DILocation(line: 216, column: 4, scope: !754)
!759 = !DILocation(line: 215, column: 14, scope: !754)
!760 = !DILocation(line: 217, column: 4, scope: !754)
!761 = !DILocation(line: 215, column: 7, scope: !755)
!762 = !DILocation(line: 220, column: 37, scope: !763)
!763 = distinct !DILexicalBlock(scope: !754, file: !3, line: 218, column: 3)
!764 = !DILocation(line: 219, column: 4, scope: !763)
!765 = !DILocation(line: 221, column: 4, scope: !763)
!766 = !DILocation(line: 222, column: 4, scope: !763)
!767 = !DILocation(line: 224, column: 2, scope: !755)
!768 = !DILocation(line: 0, scope: !749)
!769 = !DILocation(line: 227, column: 11, scope: !770)
!770 = distinct !DILexicalBlock(scope: !694, file: !3, line: 227, column: 6)
!771 = !{!668, !391, i64 88}
!772 = !DILocation(line: 227, column: 21, scope: !770)
!773 = !DILocation(line: 227, column: 6, scope: !694)
!774 = !DILocation(line: 229, column: 16, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 228, column: 7)
!776 = distinct !DILexicalBlock(scope: !770, file: !3, line: 227, column: 26)
!777 = !DILocation(line: 229, column: 11, scope: !775)
!778 = !DILocation(line: 229, column: 25, scope: !775)
!779 = !DILocation(line: 229, column: 4, scope: !775)
!780 = !DILocation(line: 228, column: 14, scope: !775)
!781 = !DILocation(line: 230, column: 4, scope: !775)
!782 = !DILocation(line: 228, column: 7, scope: !776)
!783 = !DILocation(line: 233, column: 37, scope: !784)
!784 = distinct !DILexicalBlock(scope: !775, file: !3, line: 231, column: 3)
!785 = !DILocation(line: 232, column: 4, scope: !784)
!786 = !DILocation(line: 234, column: 4, scope: !784)
!787 = !DILocation(line: 235, column: 4, scope: !784)
!788 = !DILocation(line: 237, column: 2, scope: !776)
!789 = !DILocation(line: 0, scope: !770)
!790 = !DILocation(line: 240, column: 8, scope: !694)
!791 = !DILocation(line: 240, column: 15, scope: !694)
!792 = !DILocation(line: 242, column: 37, scope: !694)
!793 = !DILocation(line: 242, column: 25, scope: !694)
!794 = !DILocation(line: 242, column: 47, scope: !694)
!795 = !DILocation(line: 242, column: 18, scope: !694)
!796 = !DILocation(line: 243, column: 10, scope: !797)
!797 = distinct !DILexicalBlock(scope: !694, file: !3, line: 243, column: 6)
!798 = !DILocation(line: 243, column: 6, scope: !694)
!799 = !DILocation(line: 244, column: 12, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !3, line: 243, column: 19)
!801 = !DILocation(line: 244, column: 3, scope: !800)
!802 = !DILocation(line: 246, column: 3, scope: !800)
!803 = !DILocation(line: 248, column: 20, scope: !694)
!804 = !DILocation(line: 248, column: 2, scope: !694)
!805 = !DILocation(line: 249, column: 8, scope: !694)
!806 = !DILocation(line: 249, column: 18, scope: !694)
!807 = !DILocation(line: 251, column: 37, scope: !694)
!808 = !{!668, !380, i64 32}
!809 = !DILocation(line: 251, column: 25, scope: !694)
!810 = !DILocation(line: 251, column: 45, scope: !694)
!811 = !DILocation(line: 251, column: 18, scope: !694)
!812 = !DILocation(line: 252, column: 10, scope: !813)
!813 = distinct !DILexicalBlock(scope: !694, file: !3, line: 252, column: 6)
!814 = !DILocation(line: 252, column: 6, scope: !694)
!815 = !DILocation(line: 253, column: 12, scope: !816)
!816 = distinct !DILexicalBlock(scope: !813, file: !3, line: 252, column: 19)
!817 = !DILocation(line: 253, column: 3, scope: !816)
!818 = !DILocation(line: 254, column: 3, scope: !816)
!819 = !DILocation(line: 256, column: 20, scope: !694)
!820 = !DILocation(line: 256, column: 2, scope: !694)
!821 = !DILocation(line: 257, column: 8, scope: !694)
!822 = !DILocation(line: 257, column: 16, scope: !694)
!823 = !DILocation(line: 259, column: 21, scope: !694)
!824 = !{!668, !391, i64 8}
!825 = !DILocation(line: 259, column: 8, scope: !694)
!826 = !DILocation(line: 259, column: 14, scope: !694)
!827 = !DILocation(line: 260, column: 8, scope: !694)
!828 = !DILocation(line: 260, column: 18, scope: !694)
!829 = !{!668, !391, i64 12}
!830 = !DILocation(line: 261, column: 8, scope: !694)
!831 = !DILocation(line: 261, column: 17, scope: !694)
!832 = !{!668, !391, i64 16}
!833 = !DILocation(line: 262, column: 22, scope: !694)
!834 = !{!668, !391, i64 40}
!835 = !DILocation(line: 262, column: 8, scope: !694)
!836 = !DILocation(line: 262, column: 15, scope: !694)
!837 = !DILocation(line: 263, column: 8, scope: !694)
!838 = !DILocation(line: 263, column: 17, scope: !694)
!839 = !{!668, !380, i64 56}
!840 = !DILocation(line: 264, column: 21, scope: !694)
!841 = !DILocation(line: 264, column: 8, scope: !694)
!842 = !DILocation(line: 264, column: 19, scope: !694)
!843 = !{!668, !380, i64 64}
!844 = !DILocation(line: 265, column: 27, scope: !694)
!845 = !DILocation(line: 265, column: 8, scope: !694)
!846 = !DILocation(line: 265, column: 20, scope: !694)
!847 = !DILocation(line: 266, column: 8, scope: !694)
!848 = !DILocation(line: 266, column: 19, scope: !694)
!849 = !{!668, !380, i64 80}
!850 = !DILocation(line: 267, column: 23, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 267, column: 2)
!852 = distinct !DILexicalBlock(scope: !694, file: !3, line: 267, column: 2)
!853 = !DILocation(line: 267, column: 16, scope: !851)
!854 = !DILocation(line: 267, column: 2, scope: !852)
!855 = !DILocation(line: 268, column: 37, scope: !856)
!856 = distinct !DILexicalBlock(scope: !851, file: !3, line: 267, column: 41)
!857 = !DILocation(line: 268, column: 32, scope: !856)
!858 = !{!391, !391, i64 0}
!859 = !DILocation(line: 268, column: 9, scope: !856)
!860 = !DILocation(line: 268, column: 3, scope: !856)
!861 = !DILocation(line: 268, column: 30, scope: !856)
!862 = !DILocation(line: 269, column: 37, scope: !856)
!863 = !DILocation(line: 269, column: 32, scope: !856)
!864 = !DILocation(line: 269, column: 9, scope: !856)
!865 = !DILocation(line: 269, column: 3, scope: !856)
!866 = !DILocation(line: 269, column: 30, scope: !856)
!867 = !DILocation(line: 270, column: 2, scope: !856)
!868 = !DILocation(line: 267, column: 37, scope: !851)
!869 = distinct !{!869, !854, !870}
!870 = !DILocation(line: 270, column: 2, scope: !852)
!871 = !DILocation(line: 271, column: 25, scope: !694)
!872 = !DILocation(line: 271, column: 8, scope: !694)
!873 = !DILocation(line: 271, column: 18, scope: !694)
!874 = !DILocation(line: 272, column: 8, scope: !694)
!875 = !DILocation(line: 272, column: 17, scope: !694)
!876 = !{!668, !380, i64 96}
!877 = !DILocation(line: 273, column: 18, scope: !878)
!878 = distinct !DILexicalBlock(scope: !694, file: !3, line: 273, column: 2)
!879 = !DILocation(line: 273, column: 44, scope: !880)
!880 = distinct !DILexicalBlock(scope: !878, file: !3, line: 273, column: 2)
!881 = !DILocation(line: 273, column: 37, scope: !880)
!882 = !DILocation(line: 273, column: 2, scope: !878)
!883 = !DILocation(line: 274, column: 3, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 274, column: 3)
!885 = distinct !DILexicalBlock(scope: !880, file: !3, line: 273, column: 66)
!886 = !DILocation(line: 275, column: 27, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !3, line: 274, column: 3)
!888 = !DILocation(line: 275, column: 22, scope: !887)
!889 = !DILocation(line: 275, column: 41, scope: !887)
!890 = !DILocation(line: 275, column: 8, scope: !887)
!891 = !DILocation(line: 275, column: 4, scope: !887)
!892 = !DILocation(line: 275, column: 20, scope: !887)
!893 = !DILocation(line: 274, column: 23, scope: !887)
!894 = !DILocation(line: 274, column: 17, scope: !887)
!895 = distinct !{!895, !883, !896}
!896 = !DILocation(line: 275, column: 51, scope: !884)
!897 = !DILocation(line: 276, column: 21, scope: !885)
!898 = !DILocation(line: 276, column: 16, scope: !885)
!899 = !DILocation(line: 276, column: 35, scope: !885)
!900 = !{!901, !902, i64 16}
!901 = !{!"chiral_t", !381, i64 0, !902, i64 16}
!902 = !{!"double", !381, i64 0}
!903 = !DILocation(line: 276, column: 7, scope: !885)
!904 = !DILocation(line: 276, column: 14, scope: !885)
!905 = !DILocation(line: 277, column: 2, scope: !885)
!906 = !DILocation(line: 273, column: 56, scope: !880)
!907 = !DILocation(line: 273, column: 62, scope: !880)
!908 = distinct !{!908, !882, !909}
!909 = !DILocation(line: 277, column: 2, scope: !878)
!910 = !DILocation(line: 278, column: 22, scope: !694)
!911 = !{!668, !391, i64 44}
!912 = !DILocation(line: 278, column: 8, scope: !694)
!913 = !DILocation(line: 278, column: 15, scope: !694)
!914 = !DILocation(line: 279, column: 26, scope: !694)
!915 = !{!668, !391, i64 48}
!916 = !DILocation(line: 279, column: 8, scope: !694)
!917 = !DILocation(line: 279, column: 19, scope: !694)
!918 = !DILocation(line: 280, column: 24, scope: !694)
!919 = !DILocation(line: 280, column: 8, scope: !694)
!920 = !DILocation(line: 280, column: 17, scope: !694)
!921 = !DILocation(line: 281, column: 8, scope: !694)
!922 = !DILocation(line: 281, column: 17, scope: !694)
!923 = !{!668, !380, i64 112}
!924 = !DILocation(line: 282, column: 11, scope: !925)
!925 = distinct !DILexicalBlock(scope: !694, file: !3, line: 282, column: 6)
!926 = !DILocation(line: 282, column: 6, scope: !925)
!927 = !DILocation(line: 282, column: 6, scope: !694)
!928 = !DILocation(line: 283, column: 24, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 283, column: 3)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 283, column: 3)
!931 = distinct !DILexicalBlock(scope: !925, file: !3, line: 282, column: 21)
!932 = !DILocation(line: 283, column: 17, scope: !929)
!933 = !DILocation(line: 283, column: 3, scope: !930)
!934 = !DILocation(line: 284, column: 31, scope: !929)
!935 = !DILocation(line: 284, column: 26, scope: !929)
!936 = !DILocation(line: 284, column: 10, scope: !929)
!937 = !DILocation(line: 284, column: 4, scope: !929)
!938 = !DILocation(line: 284, column: 24, scope: !929)
!939 = !DILocation(line: 283, column: 35, scope: !929)
!940 = distinct !{!940, !933, !941}
!941 = !DILocation(line: 284, column: 43, scope: !930)
!942 = !DILocation(line: 285, column: 2, scope: !931)
!943 = !DILocation(line: 286, column: 24, scope: !944)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 286, column: 3)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 286, column: 3)
!946 = distinct !DILexicalBlock(scope: !925, file: !3, line: 285, column: 7)
!947 = !DILocation(line: 286, column: 17, scope: !944)
!948 = !DILocation(line: 286, column: 3, scope: !945)
!949 = !DILocation(line: 287, column: 10, scope: !944)
!950 = !DILocation(line: 287, column: 4, scope: !944)
!951 = !DILocation(line: 287, column: 24, scope: !944)
!952 = !DILocation(line: 286, column: 35, scope: !944)
!953 = distinct !{!953, !948, !954}
!954 = !DILocation(line: 287, column: 26, scope: !945)
!955 = !DILocation(line: 289, column: 8, scope: !694)
!956 = !DILocation(line: 289, column: 16, scope: !694)
!957 = !{!668, !380, i64 120}
!958 = !DILocation(line: 290, column: 23, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 290, column: 2)
!960 = distinct !DILexicalBlock(scope: !694, file: !3, line: 290, column: 2)
!961 = !DILocation(line: 290, column: 16, scope: !959)
!962 = !DILocation(line: 290, column: 2, scope: !960)
!963 = !DILocation(line: 292, column: 37, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !3, line: 290, column: 38)
!965 = !DILocation(line: 292, column: 32, scope: !964)
!966 = !DILocation(line: 292, column: 48, scope: !964)
!967 = !{!968, !380, i64 0}
!968 = !{!"atom_t", !380, i64 0, !380, i64 8, !391, i64 16, !391, i64 20, !381, i64 24, !380, i64 56, !902, i64 64, !902, i64 72, !902, i64 80, !902, i64 88, !380, i64 96, !391, i64 104, !902, i64 112, !902, i64 120, !391, i64 128, !391, i64 132, !380, i64 136, !381, i64 144, !902, i64 168}
!969 = !DILocation(line: 292, column: 24, scope: !964)
!970 = !DILocation(line: 292, column: 60, scope: !964)
!971 = !DILocation(line: 292, column: 17, scope: !964)
!972 = !DILocation(line: 293, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !964, file: !3, line: 293, column: 7)
!974 = !DILocation(line: 293, column: 7, scope: !964)
!975 = !DILocation(line: 294, column: 13, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 293, column: 20)
!977 = !DILocation(line: 294, column: 4, scope: !976)
!978 = !DILocation(line: 295, column: 4, scope: !976)
!979 = !DILocation(line: 297, column: 21, scope: !964)
!980 = !DILocation(line: 297, column: 16, scope: !964)
!981 = !DILocation(line: 297, column: 34, scope: !964)
!982 = !DILocation(line: 297, column: 3, scope: !964)
!983 = !DILocation(line: 298, column: 3, scope: !964)
!984 = !DILocation(line: 298, column: 11, scope: !964)
!985 = !DILocation(line: 298, column: 22, scope: !964)
!986 = !DILocation(line: 299, column: 3, scope: !964)
!987 = !DILocation(line: 299, column: 11, scope: !964)
!988 = !DILocation(line: 299, column: 22, scope: !964)
!989 = !{!968, !380, i64 8}
!990 = !DILocation(line: 300, column: 25, scope: !964)
!991 = !DILocation(line: 300, column: 20, scope: !964)
!992 = !DILocation(line: 300, column: 38, scope: !964)
!993 = !{!968, !391, i64 16}
!994 = !DILocation(line: 300, column: 3, scope: !964)
!995 = !DILocation(line: 300, column: 11, scope: !964)
!996 = !DILocation(line: 300, column: 18, scope: !964)
!997 = !DILocation(line: 301, column: 29, scope: !964)
!998 = !DILocation(line: 301, column: 24, scope: !964)
!999 = !DILocation(line: 301, column: 42, scope: !964)
!1000 = !{!968, !391, i64 20}
!1001 = !DILocation(line: 301, column: 3, scope: !964)
!1002 = !DILocation(line: 301, column: 11, scope: !964)
!1003 = !DILocation(line: 301, column: 22, scope: !964)
!1004 = !DILocation(line: 302, column: 3, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !964, file: !3, line: 302, column: 3)
!1006 = !DILocation(line: 303, column: 30, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 302, column: 3)
!1008 = !DILocation(line: 303, column: 25, scope: !1007)
!1009 = !DILocation(line: 303, column: 41, scope: !1007)
!1010 = !DILocation(line: 303, column: 4, scope: !1007)
!1011 = !DILocation(line: 303, column: 10, scope: !1007)
!1012 = !DILocation(line: 303, column: 23, scope: !1007)
!1013 = !DILocation(line: 302, column: 38, scope: !1007)
!1014 = !DILocation(line: 302, column: 18, scope: !1007)
!1015 = distinct !{!1015, !1004, !1016}
!1016 = !DILocation(line: 303, column: 52, scope: !1005)
!1017 = !DILocation(line: 304, column: 3, scope: !964)
!1018 = !DILocation(line: 304, column: 11, scope: !964)
!1019 = !DILocation(line: 304, column: 22, scope: !964)
!1020 = !{!968, !380, i64 56}
!1021 = !DILocation(line: 305, column: 29, scope: !964)
!1022 = !DILocation(line: 305, column: 24, scope: !964)
!1023 = !DILocation(line: 305, column: 42, scope: !964)
!1024 = !{!968, !902, i64 64}
!1025 = !DILocation(line: 305, column: 3, scope: !964)
!1026 = !DILocation(line: 305, column: 11, scope: !964)
!1027 = !DILocation(line: 305, column: 22, scope: !964)
!1028 = !DILocation(line: 306, column: 29, scope: !964)
!1029 = !DILocation(line: 306, column: 24, scope: !964)
!1030 = !DILocation(line: 306, column: 42, scope: !964)
!1031 = !{!968, !902, i64 72}
!1032 = !DILocation(line: 306, column: 3, scope: !964)
!1033 = !DILocation(line: 306, column: 11, scope: !964)
!1034 = !DILocation(line: 306, column: 22, scope: !964)
!1035 = !DILocation(line: 307, column: 29, scope: !964)
!1036 = !DILocation(line: 307, column: 24, scope: !964)
!1037 = !DILocation(line: 307, column: 42, scope: !964)
!1038 = !{!968, !902, i64 80}
!1039 = !DILocation(line: 307, column: 3, scope: !964)
!1040 = !DILocation(line: 307, column: 11, scope: !964)
!1041 = !DILocation(line: 307, column: 22, scope: !964)
!1042 = !DILocation(line: 308, column: 29, scope: !964)
!1043 = !DILocation(line: 308, column: 24, scope: !964)
!1044 = !DILocation(line: 308, column: 42, scope: !964)
!1045 = !{!968, !902, i64 88}
!1046 = !DILocation(line: 308, column: 3, scope: !964)
!1047 = !DILocation(line: 308, column: 11, scope: !964)
!1048 = !DILocation(line: 308, column: 22, scope: !964)
!1049 = !DILocation(line: 309, column: 3, scope: !964)
!1050 = !DILocation(line: 309, column: 11, scope: !964)
!1051 = !DILocation(line: 309, column: 22, scope: !964)
!1052 = !{!968, !380, i64 96}
!1053 = !DILocation(line: 310, column: 29, scope: !964)
!1054 = !DILocation(line: 310, column: 24, scope: !964)
!1055 = !DILocation(line: 310, column: 42, scope: !964)
!1056 = !{!968, !391, i64 104}
!1057 = !DILocation(line: 310, column: 3, scope: !964)
!1058 = !DILocation(line: 310, column: 11, scope: !964)
!1059 = !DILocation(line: 310, column: 22, scope: !964)
!1060 = !DILocation(line: 311, column: 29, scope: !964)
!1061 = !DILocation(line: 311, column: 24, scope: !964)
!1062 = !DILocation(line: 311, column: 42, scope: !964)
!1063 = !{!968, !902, i64 112}
!1064 = !DILocation(line: 311, column: 3, scope: !964)
!1065 = !DILocation(line: 311, column: 11, scope: !964)
!1066 = !DILocation(line: 311, column: 22, scope: !964)
!1067 = !DILocation(line: 312, column: 29, scope: !964)
!1068 = !DILocation(line: 312, column: 24, scope: !964)
!1069 = !DILocation(line: 312, column: 42, scope: !964)
!1070 = !{!968, !902, i64 120}
!1071 = !DILocation(line: 312, column: 3, scope: !964)
!1072 = !DILocation(line: 312, column: 11, scope: !964)
!1073 = !DILocation(line: 312, column: 22, scope: !964)
!1074 = !DILocation(line: 313, column: 29, scope: !964)
!1075 = !DILocation(line: 313, column: 24, scope: !964)
!1076 = !DILocation(line: 313, column: 42, scope: !964)
!1077 = !{!968, !391, i64 128}
!1078 = !DILocation(line: 313, column: 3, scope: !964)
!1079 = !DILocation(line: 313, column: 11, scope: !964)
!1080 = !DILocation(line: 313, column: 22, scope: !964)
!1081 = !DILocation(line: 314, column: 29, scope: !964)
!1082 = !DILocation(line: 314, column: 24, scope: !964)
!1083 = !DILocation(line: 314, column: 42, scope: !964)
!1084 = !{!968, !391, i64 132}
!1085 = !DILocation(line: 314, column: 3, scope: !964)
!1086 = !DILocation(line: 314, column: 11, scope: !964)
!1087 = !DILocation(line: 314, column: 22, scope: !964)
!1088 = !DILocation(line: 315, column: 3, scope: !964)
!1089 = !DILocation(line: 315, column: 11, scope: !964)
!1090 = !DILocation(line: 315, column: 22, scope: !964)
!1091 = !{!968, !380, i64 136}
!1092 = !DILocation(line: 316, column: 29, scope: !964)
!1093 = !DILocation(line: 316, column: 24, scope: !964)
!1094 = !DILocation(line: 316, column: 42, scope: !964)
!1095 = !{!902, !902, i64 0}
!1096 = !DILocation(line: 316, column: 3, scope: !964)
!1097 = !DILocation(line: 316, column: 11, scope: !964)
!1098 = !DILocation(line: 316, column: 22, scope: !964)
!1099 = !DILocation(line: 317, column: 29, scope: !964)
!1100 = !DILocation(line: 317, column: 24, scope: !964)
!1101 = !DILocation(line: 317, column: 42, scope: !964)
!1102 = !DILocation(line: 317, column: 3, scope: !964)
!1103 = !DILocation(line: 317, column: 11, scope: !964)
!1104 = !DILocation(line: 317, column: 22, scope: !964)
!1105 = !DILocation(line: 318, column: 29, scope: !964)
!1106 = !DILocation(line: 318, column: 24, scope: !964)
!1107 = !DILocation(line: 318, column: 42, scope: !964)
!1108 = !DILocation(line: 318, column: 3, scope: !964)
!1109 = !DILocation(line: 318, column: 11, scope: !964)
!1110 = !DILocation(line: 318, column: 22, scope: !964)
!1111 = !DILocation(line: 319, column: 29, scope: !964)
!1112 = !DILocation(line: 319, column: 24, scope: !964)
!1113 = !DILocation(line: 319, column: 42, scope: !964)
!1114 = !{!968, !902, i64 168}
!1115 = !DILocation(line: 319, column: 3, scope: !964)
!1116 = !DILocation(line: 319, column: 11, scope: !964)
!1117 = !DILocation(line: 319, column: 22, scope: !964)
!1118 = !DILocation(line: 320, column: 2, scope: !964)
!1119 = !DILocation(line: 290, column: 34, scope: !959)
!1120 = distinct !{!1120, !962, !1121}
!1121 = !DILocation(line: 320, column: 2, scope: !960)
!1122 = !DILocation(line: 322, column: 2, scope: !694)
!1123 = !DILocation(line: 323, column: 1, scope: !694)
!1124 = distinct !DISubprogram(name: "copystrand", scope: !3, file: !3, line: 325, type: !1125, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!53, !53}
!1127 = !{!1128, !1129, !1130, !1131}
!1128 = !DILocalVariable(name: "str", arg: 1, scope: !1124, file: !3, line: 325, type: !53)
!1129 = !DILocalVariable(name: "newstrand", scope: !1124, file: !3, line: 327, type: !53)
!1130 = !DILocalVariable(name: "namebuf", scope: !1124, file: !3, line: 328, type: !12)
!1131 = !DILocalVariable(name: "resctr", scope: !1124, file: !3, line: 329, type: !11)
!1132 = !DILocation(line: 0, scope: !1124)
!1133 = !DILocation(line: 331, column: 33, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 331, column: 5)
!1135 = !DILocation(line: 331, column: 19, scope: !1134)
!1136 = !DILocation(line: 331, column: 64, scope: !1134)
!1137 = !DILocation(line: 331, column: 5, scope: !1124)
!1138 = !DILocation(line: 332, column: 41, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 331, column: 72)
!1140 = !{!1141, !380, i64 0}
!1141 = !{!"strand_t", !380, i64 0, !391, i64 8, !391, i64 12, !380, i64 16, !380, i64 24, !391, i64 32, !391, i64 36, !380, i64 40}
!1142 = !DILocation(line: 332, column: 3, scope: !1139)
!1143 = !DILocation(line: 333, column: 3, scope: !1139)
!1144 = !DILocation(line: 334, column: 3, scope: !1139)
!1145 = !DILocation(line: 338, column: 16, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 337, column: 13)
!1147 = !{!1141, !391, i64 32}
!1148 = !DILocation(line: 338, column: 11, scope: !1146)
!1149 = !DILocation(line: 338, column: 28, scope: !1146)
!1150 = !DILocation(line: 338, column: 3, scope: !1146)
!1151 = !DILocation(line: 337, column: 39, scope: !1146)
!1152 = !DILocation(line: 337, column: 26, scope: !1146)
!1153 = !DILocation(line: 337, column: 37, scope: !1146)
!1154 = !{!1141, !380, i64 40}
!1155 = !DILocation(line: 338, column: 56, scope: !1146)
!1156 = !DILocation(line: 337, column: 13, scope: !1124)
!1157 = !DILocation(line: 340, column: 17, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 339, column: 2)
!1159 = !DILocation(line: 341, column: 17, scope: !1158)
!1160 = !DILocation(line: 344, column: 51, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 344, column: 6)
!1162 = !DILocation(line: 344, column: 38, scope: !1161)
!1163 = !DILocation(line: 344, column: 66, scope: !1161)
!1164 = !DILocation(line: 345, column: 3, scope: !1161)
!1165 = !DILocation(line: 344, column: 28, scope: !1161)
!1166 = !DILocation(line: 345, column: 24, scope: !1161)
!1167 = !DILocation(line: 344, column: 6, scope: !1124)
!1168 = !DILocation(line: 347, column: 41, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 346, column: 2)
!1170 = !DILocation(line: 347, column: 3, scope: !1169)
!1171 = !DILocation(line: 348, column: 3, scope: !1169)
!1172 = !DILocation(line: 349, column: 3, scope: !1169)
!1173 = !DILocation(line: 351, column: 13, scope: !1124)
!1174 = !DILocation(line: 351, column: 26, scope: !1124)
!1175 = !DILocation(line: 352, column: 20, scope: !1124)
!1176 = !DILocation(line: 352, column: 39, scope: !1124)
!1177 = !DILocation(line: 352, column: 2, scope: !1124)
!1178 = !DILocation(line: 353, column: 32, scope: !1124)
!1179 = !{!1141, !391, i64 8}
!1180 = !DILocation(line: 353, column: 13, scope: !1124)
!1181 = !DILocation(line: 353, column: 25, scope: !1124)
!1182 = !DILocation(line: 354, column: 27, scope: !1124)
!1183 = !{!1141, !391, i64 12}
!1184 = !DILocation(line: 354, column: 13, scope: !1124)
!1185 = !DILocation(line: 354, column: 20, scope: !1124)
!1186 = !DILocation(line: 355, column: 13, scope: !1124)
!1187 = !DILocation(line: 355, column: 24, scope: !1124)
!1188 = !{!1141, !380, i64 16}
!1189 = !DILocation(line: 356, column: 13, scope: !1124)
!1190 = !DILocation(line: 356, column: 20, scope: !1124)
!1191 = !{!1141, !380, i64 24}
!1192 = !DILocation(line: 357, column: 32, scope: !1124)
!1193 = !DILocation(line: 357, column: 13, scope: !1124)
!1194 = !DILocation(line: 357, column: 25, scope: !1124)
!1195 = !DILocation(line: 358, column: 31, scope: !1124)
!1196 = !DILocation(line: 358, column: 13, scope: !1124)
!1197 = !DILocation(line: 358, column: 24, scope: !1124)
!1198 = !{!1141, !391, i64 36}
!1199 = !DILocation(line: 359, column: 41, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 359, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 359, column: 9)
!1202 = !DILocation(line: 359, column: 34, scope: !1200)
!1203 = !DILocation(line: 359, column: 9, scope: !1201)
!1204 = !DILocation(line: 361, column: 22, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 359, column: 65)
!1206 = !DILocation(line: 361, column: 17, scope: !1205)
!1207 = !DILocation(line: 361, column: 4, scope: !1205)
!1208 = !DILocation(line: 360, column: 28, scope: !1205)
!1209 = !DILocation(line: 360, column: 17, scope: !1205)
!1210 = !DILocation(line: 360, column: 49, scope: !1205)
!1211 = !DILocation(line: 362, column: 28, scope: !1205)
!1212 = !DILocation(line: 362, column: 17, scope: !1205)
!1213 = !DILocation(line: 362, column: 50, scope: !1205)
!1214 = !DILocation(line: 362, column: 59, scope: !1205)
!1215 = !DILocation(line: 363, column: 29, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 363, column: 22)
!1217 = !DILocation(line: 363, column: 22, scope: !1205)
!1218 = !DILocation(line: 365, column: 16, scope: !1216)
!1219 = !DILocation(line: 365, column: 5, scope: !1216)
!1220 = !DILocation(line: 364, column: 36, scope: !1216)
!1221 = !DILocation(line: 364, column: 55, scope: !1216)
!1222 = !DILocation(line: 364, column: 25, scope: !1216)
!1223 = !DILocation(line: 364, column: 62, scope: !1216)
!1224 = !DILocation(line: 364, column: 69, scope: !1216)
!1225 = !DILocation(line: 366, column: 9, scope: !1205)
!1226 = !DILocation(line: 359, column: 60, scope: !1200)
!1227 = distinct !{!1227, !1203, !1228}
!1228 = !DILocation(line: 366, column: 9, scope: !1201)
!1229 = !DILocation(line: 367, column: 2, scope: !1124)
!1230 = !DILocation(line: 368, column: 1, scope: !1124)
!1231 = distinct !DISubprogram(name: "copymolecule", scope: !3, file: !3, line: 370, type: !1232, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!232, !232}
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1235 = !DILocalVariable(name: "mol", arg: 1, scope: !1231, file: !3, line: 370, type: !232)
!1236 = !DILocalVariable(name: "row", scope: !1231, file: !3, line: 372, type: !11)
!1237 = !DILocalVariable(name: "col", scope: !1231, file: !3, line: 372, type: !11)
!1238 = !DILocalVariable(name: "strptr", scope: !1231, file: !3, line: 373, type: !53)
!1239 = !DILocalVariable(name: "newstr", scope: !1231, file: !3, line: 373, type: !53)
!1240 = !DILocalVariable(name: "nextstr", scope: !1231, file: !3, line: 373, type: !53)
!1241 = !DILocalVariable(name: "newmol", scope: !1231, file: !3, line: 374, type: !232)
!1242 = !DILocation(line: 0, scope: !1231)
!1243 = !DILocation(line: 376, column: 9, scope: !1231)
!1244 = !DILocation(line: 378, column: 39, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 378, column: 12)
!1246 = !DILocation(line: 378, column: 23, scope: !1245)
!1247 = !DILocation(line: 378, column: 72, scope: !1245)
!1248 = !DILocation(line: 378, column: 12, scope: !1231)
!1249 = !DILocation(line: 379, column: 17, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 378, column: 80)
!1251 = !DILocation(line: 380, column: 17, scope: !1250)
!1252 = !DILocation(line: 381, column: 17, scope: !1250)
!1253 = !DILocation(line: 384, column: 35, scope: !1231)
!1254 = !{!1255, !391, i64 96}
!1255 = !{!"molecule_t", !381, i64 0, !391, i64 96, !380, i64 104, !391, i64 112, !391, i64 116, !391, i64 120, !380, i64 128}
!1256 = !DILocation(line: 384, column: 17, scope: !1231)
!1257 = !DILocation(line: 384, column: 28, scope: !1231)
!1258 = !DILocation(line: 385, column: 36, scope: !1231)
!1259 = !{!1255, !391, i64 112}
!1260 = !DILocation(line: 385, column: 17, scope: !1231)
!1261 = !DILocation(line: 385, column: 29, scope: !1231)
!1262 = !DILocation(line: 386, column: 33, scope: !1231)
!1263 = !{!1255, !391, i64 116}
!1264 = !DILocation(line: 386, column: 17, scope: !1231)
!1265 = !DILocation(line: 386, column: 26, scope: !1231)
!1266 = !DILocation(line: 387, column: 33, scope: !1231)
!1267 = !{!1255, !391, i64 120}
!1268 = !DILocation(line: 387, column: 17, scope: !1231)
!1269 = !DILocation(line: 387, column: 26, scope: !1231)
!1270 = !DILocation(line: 389, column: 19, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 389, column: 14)
!1272 = !{!1255, !380, i64 128}
!1273 = !DILocation(line: 389, column: 25, scope: !1271)
!1274 = !DILocation(line: 389, column: 14, scope: !1231)
!1275 = !DILocation(line: 390, column: 48, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 389, column: 35)
!1277 = !DILocation(line: 390, column: 33, scope: !1276)
!1278 = !DILocation(line: 390, column: 25, scope: !1276)
!1279 = !DILocation(line: 390, column: 31, scope: !1276)
!1280 = !DILocation(line: 391, column: 9, scope: !1276)
!1281 = !DILocation(line: 393, column: 25, scope: !1271)
!1282 = !DILocation(line: 393, column: 31, scope: !1271)
!1283 = !DILocation(line: 395, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 395, column: 9)
!1285 = !DILocation(line: 396, column: 17, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 396, column: 17)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 395, column: 42)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 395, column: 9)
!1289 = !DILocation(line: 397, column: 58, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 396, column: 50)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 396, column: 17)
!1292 = !DILocation(line: 397, column: 53, scope: !1290)
!1293 = !DILocation(line: 397, column: 33, scope: !1290)
!1294 = !DILocation(line: 397, column: 25, scope: !1290)
!1295 = !DILocation(line: 397, column: 51, scope: !1290)
!1296 = !DILocation(line: 398, column: 17, scope: !1290)
!1297 = !DILocation(line: 396, column: 45, scope: !1291)
!1298 = !DILocation(line: 396, column: 36, scope: !1291)
!1299 = distinct !{!1299, !1285, !1300}
!1300 = !DILocation(line: 398, column: 17, scope: !1286)
!1301 = !DILocation(line: 399, column: 9, scope: !1287)
!1302 = !DILocation(line: 395, column: 37, scope: !1288)
!1303 = !DILocation(line: 395, column: 28, scope: !1288)
!1304 = distinct !{!1304, !1283, !1305}
!1305 = !DILocation(line: 399, column: 9, scope: !1284)
!1306 = !DILocation(line: 401, column: 23, scope: !1231)
!1307 = !{!1255, !380, i64 104}
!1308 = !DILocation(line: 402, column: 21, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 402, column: 14)
!1310 = !DILocation(line: 402, column: 14, scope: !1231)
!1311 = !DILocation(line: 403, column: 26, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 402, column: 30)
!1313 = !DILocation(line: 404, column: 25, scope: !1312)
!1314 = !DILocation(line: 404, column: 36, scope: !1312)
!1315 = !DILocation(line: 405, column: 25, scope: !1312)
!1316 = !DILocation(line: 405, column: 35, scope: !1312)
!1317 = !DILocation(line: 406, column: 34, scope: !1312)
!1318 = !DILocation(line: 407, column: 9, scope: !1312)
!1319 = !DILocation(line: 409, column: 24, scope: !1231)
!1320 = !DILocation(line: 409, column: 9, scope: !1231)
!1321 = !DILocation(line: 410, column: 27, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 409, column: 34)
!1323 = !DILocation(line: 411, column: 22, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 411, column: 22)
!1325 = !DILocation(line: 411, column: 22, scope: !1322)
!1326 = !DILocation(line: 412, column: 33, scope: !1324)
!1327 = !DILocation(line: 412, column: 40, scope: !1324)
!1328 = !DILocation(line: 412, column: 25, scope: !1324)
!1329 = !DILocation(line: 413, column: 26, scope: !1322)
!1330 = !DILocation(line: 413, column: 37, scope: !1322)
!1331 = !DILocation(line: 415, column: 34, scope: !1322)
!1332 = distinct !{!1332, !1320, !1333}
!1333 = !DILocation(line: 416, column: 9, scope: !1231)
!1334 = !DILocation(line: 418, column: 9, scope: !1231)
!1335 = !DILocation(line: 419, column: 9, scope: !1231)
!1336 = !DILocation(line: 420, column: 1, scope: !1231)
!1337 = distinct !DISubprogram(name: "read_reslib_header", scope: !3, file: !3, line: 492, type: !1338, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!298, !12, !1340, !1340, !1340, !1340, !12}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1357, !1358, !1362, !1363, !1364}
!1342 = !DILocalVariable(name: "reslib", arg: 1, scope: !1337, file: !3, line: 492, type: !12)
!1343 = !DILocalVariable(name: "pfp", arg: 2, scope: !1337, file: !3, line: 493, type: !1340)
!1344 = !DILocalVariable(name: "bfp", arg: 3, scope: !1337, file: !3, line: 493, type: !1340)
!1345 = !DILocalVariable(name: "qfp", arg: 4, scope: !1337, file: !3, line: 493, type: !1340)
!1346 = !DILocalVariable(name: "cfp", arg: 5, scope: !1337, file: !3, line: 493, type: !1340)
!1347 = !DILocalVariable(name: "offname", arg: 6, scope: !1337, file: !3, line: 493, type: !12)
!1348 = !DILocalVariable(name: "rfp", scope: !1337, file: !3, line: 495, type: !445)
!1349 = !DILocalVariable(name: "rlp", scope: !1337, file: !3, line: 496, type: !298)
!1350 = !DILocalVariable(name: "nw", scope: !1337, file: !3, line: 497, type: !11)
!1351 = !DILocalVariable(name: "nsize", scope: !1337, file: !3, line: 497, type: !11)
!1352 = !DILocalVariable(name: "np", scope: !1337, file: !3, line: 498, type: !12)
!1353 = !DILocalVariable(name: "line", scope: !1337, file: !3, line: 499, type: !1354)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 128)
!1357 = !DILocalVariable(name: "keyword", scope: !1337, file: !3, line: 499, type: !295)
!1358 = !DILocalVariable(name: "value", scope: !1337, file: !3, line: 499, type: !1359)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: 100)
!1362 = !DILocalVariable(name: "newname", scope: !1337, file: !3, line: 499, type: !1359)
!1363 = !DILocalVariable(name: "fname", scope: !1337, file: !3, line: 500, type: !352)
!1364 = !DILabel(scope: !1337, name: "clean_up", file: !3, line: 621)
!1365 = !DILocation(line: 0, scope: !1337)
!1366 = !DILocation(line: 499, column: 2, scope: !1337)
!1367 = !DILocation(line: 499, column: 7, scope: !1337)
!1368 = !DILocation(line: 499, column: 20, scope: !1337)
!1369 = !DILocation(line: 499, column: 35, scope: !1337)
!1370 = !DILocation(line: 499, column: 49, scope: !1337)
!1371 = !DILocation(line: 500, column: 2, scope: !1337)
!1372 = !DILocation(line: 500, column: 7, scope: !1337)
!1373 = !DILocation(line: 502, column: 6, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 502, column: 6)
!1375 = !DILocation(line: 502, column: 31, scope: !1374)
!1376 = !DILocation(line: 502, column: 6, scope: !1337)
!1377 = !DILocation(line: 503, column: 12, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 502, column: 40)
!1379 = !DILocation(line: 503, column: 3, scope: !1378)
!1380 = !DILocation(line: 504, column: 12, scope: !1378)
!1381 = !DILocation(line: 504, column: 21, scope: !1378)
!1382 = !DILocation(line: 504, column: 3, scope: !1378)
!1383 = !DILocation(line: 505, column: 22, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 505, column: 7)
!1385 = !DILocation(line: 505, column: 15, scope: !1384)
!1386 = !DILocation(line: 505, column: 37, scope: !1384)
!1387 = !DILocation(line: 505, column: 7, scope: !1378)
!1388 = !DILocation(line: 506, column: 47, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 505, column: 46)
!1390 = !DILocation(line: 506, column: 4, scope: !1389)
!1391 = !DILocation(line: 507, column: 4, scope: !1389)
!1392 = !DILocation(line: 509, column: 2, scope: !1378)
!1393 = !DILocation(line: 510, column: 21, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 509, column: 7)
!1395 = !DILocation(line: 510, column: 3, scope: !1394)
!1396 = !DILocation(line: 511, column: 22, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 511, column: 7)
!1398 = !DILocation(line: 511, column: 15, scope: !1397)
!1399 = !DILocation(line: 511, column: 37, scope: !1397)
!1400 = !DILocation(line: 511, column: 7, scope: !1394)
!1401 = !DILocation(line: 512, column: 47, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 511, column: 46)
!1403 = !DILocation(line: 512, column: 4, scope: !1402)
!1404 = !DILocation(line: 513, column: 4, scope: !1402)
!1405 = !DILocation(line: 0, scope: !1374)
!1406 = !DILocation(line: 517, column: 28, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 517, column: 6)
!1408 = !DILocation(line: 517, column: 14, scope: !1407)
!1409 = !DILocation(line: 517, column: 59, scope: !1407)
!1410 = !DILocation(line: 517, column: 6, scope: !1337)
!1411 = !DILocation(line: 518, column: 3, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 517, column: 68)
!1413 = !DILocation(line: 519, column: 3, scope: !1412)
!1414 = !DILocation(line: 520, column: 3, scope: !1412)
!1415 = !DILocation(line: 523, column: 10, scope: !1337)
!1416 = !DILocation(line: 523, column: 27, scope: !1337)
!1417 = !DILocation(line: 524, column: 31, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 524, column: 6)
!1419 = !DILocation(line: 524, column: 37, scope: !1418)
!1420 = !DILocation(line: 524, column: 23, scope: !1418)
!1421 = !DILocation(line: 524, column: 58, scope: !1418)
!1422 = !DILocation(line: 524, column: 6, scope: !1337)
!1423 = !DILocation(line: 525, column: 3, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 524, column: 67)
!1425 = !DILocation(line: 526, column: 3, scope: !1424)
!1426 = !DILocation(line: 527, column: 3, scope: !1424)
!1427 = !DILocation(line: 529, column: 2, scope: !1337)
!1428 = !DILocation(line: 530, column: 17, scope: !1337)
!1429 = !DILocation(line: 530, column: 7, scope: !1337)
!1430 = !DILocation(line: 530, column: 15, scope: !1337)
!1431 = !DILocation(line: 531, column: 10, scope: !1337)
!1432 = !DILocation(line: 532, column: 7, scope: !1337)
!1433 = !DILocation(line: 532, column: 15, scope: !1337)
!1434 = !DILocation(line: 533, column: 7, scope: !1337)
!1435 = !DILocation(line: 533, column: 17, scope: !1337)
!1436 = !DILocation(line: 534, column: 7, scope: !1337)
!1437 = !DILocation(line: 534, column: 21, scope: !1337)
!1438 = !{!390, !391, i64 20}
!1439 = !DILocation(line: 535, column: 7, scope: !1337)
!1440 = !DILocation(line: 535, column: 16, scope: !1337)
!1441 = !DILocation(line: 537, column: 7, scope: !1337)
!1442 = !DILocation(line: 538, column: 7, scope: !1337)
!1443 = !DILocation(line: 539, column: 7, scope: !1337)
!1444 = !DILocation(line: 540, column: 7, scope: !1337)
!1445 = !DILocation(line: 541, column: 11, scope: !1337)
!1446 = !DILocation(line: 543, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 543, column: 7)
!1448 = !DILocation(line: 543, column: 32, scope: !1447)
!1449 = !DILocation(line: 543, column: 7, scope: !1337)
!1450 = !DILocation(line: 544, column: 17, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 543, column: 41)
!1452 = !DILocation(line: 544, column: 10, scope: !1451)
!1453 = !DILocation(line: 544, column: 3, scope: !1451)
!1454 = !DILocation(line: 545, column: 8, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 545, column: 8)
!1456 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 544, column: 46)
!1457 = !DILocation(line: 545, column: 14, scope: !1455)
!1458 = !DILocation(line: 545, column: 8, scope: !1456)
!1459 = !DILocation(line: 546, column: 5, scope: !1455)
!1460 = distinct !{!1460, !1453, !1461}
!1461 = !DILocation(line: 616, column: 3, scope: !1451)
!1462 = !DILocation(line: 547, column: 23, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 547, column: 8)
!1464 = !DILocation(line: 547, column: 40, scope: !1463)
!1465 = !DILocation(line: 547, column: 49, scope: !1463)
!1466 = !DILocation(line: 547, column: 15, scope: !1463)
!1467 = !DILocation(line: 548, column: 5, scope: !1463)
!1468 = !DILocation(line: 547, column: 8, scope: !1456)
!1469 = !DILocation(line: 550, column: 5, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 549, column: 4)
!1471 = !DILocation(line: 551, column: 17, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 551, column: 14)
!1473 = !DILocation(line: 551, column: 14, scope: !1463)
!1474 = !DILocation(line: 553, column: 5, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 551, column: 23)
!1476 = !DILocation(line: 554, column: 22, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 554, column: 14)
!1478 = !DILocation(line: 554, column: 14, scope: !1477)
!1479 = !DILocation(line: 554, column: 40, scope: !1477)
!1480 = !DILocation(line: 554, column: 14, scope: !1472)
!1481 = !DILocation(line: 555, column: 17, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 555, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 554, column: 46)
!1484 = !DILocation(line: 555, column: 9, scope: !1482)
!1485 = !DILocation(line: 555, column: 32, scope: !1482)
!1486 = !DILocation(line: 555, column: 9, scope: !1483)
!1487 = !DILocation(line: 556, column: 11, scope: !1482)
!1488 = !DILocation(line: 556, column: 21, scope: !1482)
!1489 = !DILocation(line: 556, column: 6, scope: !1482)
!1490 = !DILocation(line: 557, column: 22, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 557, column: 14)
!1492 = !DILocation(line: 557, column: 14, scope: !1491)
!1493 = !DILocation(line: 557, column: 37, scope: !1491)
!1494 = !DILocation(line: 557, column: 14, scope: !1482)
!1495 = !DILocation(line: 558, column: 11, scope: !1491)
!1496 = !DILocation(line: 558, column: 21, scope: !1491)
!1497 = !DILocation(line: 558, column: 6, scope: !1491)
!1498 = !DILocation(line: 559, column: 22, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 559, column: 14)
!1500 = !DILocation(line: 559, column: 14, scope: !1499)
!1501 = !DILocation(line: 559, column: 36, scope: !1499)
!1502 = !DILocation(line: 559, column: 14, scope: !1491)
!1503 = !DILocation(line: 560, column: 11, scope: !1499)
!1504 = !DILocation(line: 560, column: 21, scope: !1499)
!1505 = !DILocation(line: 560, column: 6, scope: !1499)
!1506 = !DILocation(line: 563, column: 6, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 561, column: 9)
!1508 = !DILocation(line: 565, column: 4, scope: !1483)
!1509 = !DILocation(line: 565, column: 22, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 565, column: 14)
!1511 = !DILocation(line: 565, column: 14, scope: !1510)
!1512 = !DILocation(line: 565, column: 44, scope: !1510)
!1513 = !DILocation(line: 565, column: 14, scope: !1477)
!1514 = !DILocation(line: 566, column: 17, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 566, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 565, column: 50)
!1517 = !DILocation(line: 566, column: 9, scope: !1515)
!1518 = !DILocation(line: 566, column: 35, scope: !1515)
!1519 = !DILocation(line: 566, column: 9, scope: !1516)
!1520 = !DILocation(line: 567, column: 11, scope: !1515)
!1521 = !DILocation(line: 567, column: 25, scope: !1515)
!1522 = !DILocation(line: 567, column: 6, scope: !1515)
!1523 = !DILocation(line: 568, column: 22, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 568, column: 14)
!1525 = !DILocation(line: 568, column: 14, scope: !1524)
!1526 = !DILocation(line: 568, column: 37, scope: !1524)
!1527 = !DILocation(line: 568, column: 14, scope: !1515)
!1528 = !DILocation(line: 569, column: 11, scope: !1524)
!1529 = !DILocation(line: 569, column: 25, scope: !1524)
!1530 = !DILocation(line: 569, column: 6, scope: !1524)
!1531 = !DILocation(line: 572, column: 6, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 570, column: 9)
!1533 = !DILocation(line: 574, column: 4, scope: !1516)
!1534 = !DILocation(line: 574, column: 22, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 574, column: 14)
!1536 = !DILocation(line: 574, column: 14, scope: !1535)
!1537 = !DILocation(line: 574, column: 39, scope: !1535)
!1538 = !DILocation(line: 574, column: 14, scope: !1510)
!1539 = !DILocation(line: 575, column: 15, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 574, column: 45)
!1541 = !DILocation(line: 575, column: 5, scope: !1540)
!1542 = !DILocation(line: 576, column: 4, scope: !1540)
!1543 = !DILocation(line: 576, column: 22, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 576, column: 14)
!1545 = !DILocation(line: 576, column: 14, scope: !1544)
!1546 = !DILocation(line: 576, column: 39, scope: !1544)
!1547 = !DILocation(line: 576, column: 14, scope: !1535)
!1548 = !DILocation(line: 577, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 576, column: 45)
!1550 = !DILocation(line: 577, column: 22, scope: !1549)
!1551 = !DILocation(line: 577, column: 5, scope: !1549)
!1552 = !DILocation(line: 578, column: 25, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 578, column: 9)
!1554 = !DILocation(line: 578, column: 18, scope: !1553)
!1555 = !DILocation(line: 578, column: 16, scope: !1553)
!1556 = !DILocation(line: 578, column: 40, scope: !1553)
!1557 = !DILocation(line: 578, column: 9, scope: !1549)
!1558 = !DILocation(line: 579, column: 37, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 578, column: 49)
!1560 = !DILocation(line: 579, column: 6, scope: !1559)
!1561 = !DILocation(line: 580, column: 6, scope: !1559)
!1562 = !DILocation(line: 583, column: 6, scope: !1559)
!1563 = !DILocation(line: 585, column: 4, scope: !1549)
!1564 = !DILocation(line: 585, column: 22, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 585, column: 14)
!1566 = !DILocation(line: 585, column: 14, scope: !1565)
!1567 = !DILocation(line: 585, column: 39, scope: !1565)
!1568 = !DILocation(line: 585, column: 14, scope: !1544)
!1569 = !DILocation(line: 586, column: 15, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 585, column: 45)
!1571 = !DILocation(line: 586, column: 22, scope: !1570)
!1572 = !DILocation(line: 586, column: 5, scope: !1570)
!1573 = !DILocation(line: 587, column: 25, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 587, column: 9)
!1575 = !DILocation(line: 587, column: 18, scope: !1574)
!1576 = !DILocation(line: 587, column: 16, scope: !1574)
!1577 = !DILocation(line: 587, column: 40, scope: !1574)
!1578 = !DILocation(line: 587, column: 9, scope: !1570)
!1579 = !DILocation(line: 588, column: 37, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 587, column: 49)
!1581 = !DILocation(line: 588, column: 6, scope: !1580)
!1582 = !DILocation(line: 589, column: 6, scope: !1580)
!1583 = !DILocation(line: 592, column: 6, scope: !1580)
!1584 = !DILocation(line: 594, column: 4, scope: !1570)
!1585 = !DILocation(line: 594, column: 22, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 594, column: 14)
!1587 = !DILocation(line: 594, column: 14, scope: !1586)
!1588 = !DILocation(line: 594, column: 38, scope: !1586)
!1589 = !DILocation(line: 594, column: 14, scope: !1565)
!1590 = !DILocation(line: 595, column: 15, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 594, column: 44)
!1592 = !DILocation(line: 595, column: 22, scope: !1591)
!1593 = !DILocation(line: 595, column: 5, scope: !1591)
!1594 = !DILocation(line: 596, column: 25, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 596, column: 9)
!1596 = !DILocation(line: 596, column: 18, scope: !1595)
!1597 = !DILocation(line: 596, column: 16, scope: !1595)
!1598 = !DILocation(line: 596, column: 40, scope: !1595)
!1599 = !DILocation(line: 596, column: 9, scope: !1591)
!1600 = !DILocation(line: 597, column: 36, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 596, column: 49)
!1602 = !DILocation(line: 597, column: 6, scope: !1601)
!1603 = !DILocation(line: 598, column: 6, scope: !1601)
!1604 = !DILocation(line: 601, column: 6, scope: !1601)
!1605 = !DILocation(line: 603, column: 4, scope: !1591)
!1606 = !DILocation(line: 603, column: 22, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 603, column: 14)
!1608 = !DILocation(line: 603, column: 14, scope: !1607)
!1609 = !DILocation(line: 603, column: 39, scope: !1607)
!1610 = !DILocation(line: 603, column: 14, scope: !1586)
!1611 = !DILocation(line: 604, column: 15, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 603, column: 45)
!1613 = !DILocation(line: 604, column: 22, scope: !1612)
!1614 = !DILocation(line: 604, column: 5, scope: !1612)
!1615 = !DILocation(line: 605, column: 25, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 605, column: 9)
!1617 = !DILocation(line: 605, column: 18, scope: !1616)
!1618 = !DILocation(line: 605, column: 16, scope: !1616)
!1619 = !DILocation(line: 605, column: 40, scope: !1616)
!1620 = !DILocation(line: 605, column: 9, scope: !1612)
!1621 = !DILocation(line: 606, column: 37, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 605, column: 49)
!1623 = !DILocation(line: 606, column: 6, scope: !1622)
!1624 = !DILocation(line: 607, column: 6, scope: !1622)
!1625 = !DILocation(line: 610, column: 6, scope: !1622)
!1626 = !DILocation(line: 612, column: 4, scope: !1612)
!1627 = !DILocation(line: 614, column: 5, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 612, column: 9)
!1629 = !DILocation(line: 617, column: 2, scope: !1451)
!1630 = !DILocation(line: 618, column: 13, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 617, column: 7)
!1632 = !DILocation(line: 618, column: 3, scope: !1631)
!1633 = !DILocation(line: 543, column: 35, scope: !1447)
!1634 = !DILocation(line: 621, column: 1, scope: !1337)
!1635 = !DILocation(line: 622, column: 2, scope: !1337)
!1636 = !DILocation(line: 623, column: 10, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 623, column: 6)
!1638 = !DILocation(line: 623, column: 6, scope: !1337)
!1639 = !DILocation(line: 624, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 624, column: 7)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 623, column: 19)
!1642 = !DILocation(line: 624, column: 7, scope: !1641)
!1643 = !DILocation(line: 624, column: 22, scope: !1640)
!1644 = !DILocation(line: 624, column: 14, scope: !1640)
!1645 = !DILocation(line: 625, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 625, column: 7)
!1647 = !DILocation(line: 625, column: 7, scope: !1641)
!1648 = !DILocation(line: 625, column: 22, scope: !1646)
!1649 = !DILocation(line: 625, column: 14, scope: !1646)
!1650 = !DILocation(line: 626, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 626, column: 7)
!1652 = !DILocation(line: 626, column: 7, scope: !1641)
!1653 = !DILocation(line: 626, column: 22, scope: !1651)
!1654 = !DILocation(line: 626, column: 14, scope: !1651)
!1655 = !DILocation(line: 627, column: 7, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 627, column: 7)
!1657 = !DILocation(line: 627, column: 7, scope: !1641)
!1658 = !DILocation(line: 627, column: 22, scope: !1656)
!1659 = !DILocation(line: 627, column: 14, scope: !1656)
!1660 = !DILocation(line: 628, column: 19, scope: !1641)
!1661 = !DILocation(line: 628, column: 11, scope: !1641)
!1662 = !DILocation(line: 628, column: 26, scope: !1641)
!1663 = !DILocation(line: 629, column: 17, scope: !1641)
!1664 = !DILocation(line: 629, column: 11, scope: !1641)
!1665 = !DILocation(line: 630, column: 43, scope: !1641)
!1666 = !DILocation(line: 630, column: 3, scope: !1641)
!1667 = !DILocation(line: 631, column: 3, scope: !1641)
!1668 = !DILocation(line: 632, column: 2, scope: !1641)
!1669 = !DILocation(line: 634, column: 2, scope: !1337)
!1670 = !DILocation(line: 635, column: 1, scope: !1337)
!1671 = !DILocation(line: 478, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !324, file: !3, line: 478, column: 6)
!1673 = !DILocation(line: 478, column: 6, scope: !324)
!1674 = !DILocation(line: 479, column: 3, scope: !1672)
!1675 = !DILocation(line: 480, column: 7, scope: !324)
!1676 = !DILocation(line: 0, scope: !324)
!1677 = !DILocation(line: 481, column: 2, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !324, file: !3, line: 481, column: 2)
!1679 = !DILocation(line: 482, column: 3, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 481, column: 51)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 481, column: 2)
!1682 = !DILocation(line: 483, column: 30, scope: !1680)
!1683 = !DILocation(line: 483, column: 7, scope: !1680)
!1684 = !DILocation(line: 483, column: 18, scope: !1680)
!1685 = !DILocation(line: 484, column: 11, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 484, column: 7)
!1687 = !DILocation(line: 484, column: 22, scope: !1686)
!1688 = !DILocation(line: 484, column: 7, scope: !1680)
!1689 = !DILocation(line: 485, column: 13, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 484, column: 31)
!1691 = !DILocation(line: 485, column: 4, scope: !1690)
!1692 = !DILocation(line: 487, column: 4, scope: !1690)
!1693 = !DILocation(line: 489, column: 2, scope: !1680)
!1694 = !DILocation(line: 481, column: 41, scope: !1681)
!1695 = !DILocation(line: 481, column: 47, scope: !1681)
!1696 = !DILocation(line: 481, column: 28, scope: !1681)
!1697 = distinct !{!1697, !1677, !1698}
!1698 = !DILocation(line: 489, column: 2, scope: !1678)
!1699 = !DILocation(line: 490, column: 1, scope: !324)
!1700 = distinct !DISubprogram(name: "off2reslib", scope: !3, file: !3, line: 647, type: !1701, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !12, !298}
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1737, !1738, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1748, !1749, !1750, !1751, !1754, !1755, !1756}
!1704 = !DILocalVariable(name: "offname", arg: 1, scope: !1700, file: !3, line: 647, type: !12)
!1705 = !DILocalVariable(name: "rlp", arg: 2, scope: !1700, file: !3, line: 647, type: !298)
!1706 = !DILocalVariable(name: "ap", scope: !1700, file: !3, line: 649, type: !201)
!1707 = !DILocalVariable(name: "n_names", scope: !1700, file: !3, line: 650, type: !11)
!1708 = !DILocalVariable(name: "n_resnames", scope: !1700, file: !3, line: 650, type: !11)
!1709 = !DILocalVariable(name: "i", scope: !1700, file: !3, line: 650, type: !11)
!1710 = !DILocalVariable(name: "ires", scope: !1700, file: !3, line: 650, type: !11)
!1711 = !DILocalVariable(name: "db", scope: !1700, file: !3, line: 651, type: !1712)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASE", file: !1713, line: 84, baseType: !1714)
!1713 = !DIFile(filename: "./database.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASEt", file: !1713, line: 82, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1713, line: 65, size: 33024, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1722, !1723, !1724, !1728, !1730, !1731, !1732, !1734, !1735, !1736}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "iAccessMode", scope: !1716, file: !1713, line: 66, baseType: !11, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "fDataBase", scope: !1716, file: !1713, line: 67, baseType: !445, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sFileName", scope: !1716, file: !1713, line: 68, baseType: !1721, size: 2048, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !1713, line: 48, baseType: !352)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "iOpenMode", scope: !1716, file: !1713, line: 69, baseType: !11, size: 32, offset: 2176)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefix", scope: !1716, file: !1713, line: 70, baseType: !11, size: 32, offset: 2208)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "saPrefixStack", scope: !1716, file: !1713, line: 71, baseType: !1725, size: 20480, offset: 2240)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1721, size: 20480, elements: !1726)
!1726 = !{!1727}
!1727 = !DISubrange(count: 10)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "bCompactFileAtClose", scope: !1716, file: !1713, line: 72, baseType: !1729, size: 8, offset: 22720)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !1713, line: 47, baseType: !13)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dEntries", scope: !1716, file: !1713, line: 73, baseType: !6, size: 64, offset: 22784)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "iCurrentLine", scope: !1716, file: !1713, line: 74, baseType: !11, size: 32, offset: 22848)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sLookAhead", scope: !1716, file: !1713, line: 75, baseType: !1733, size: 8000, offset: 22880)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !333)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "iLastSequentialOperation", scope: !1716, file: !1713, line: 76, baseType: !11, size: 32, offset: 30880)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sLoopPrefix", scope: !1716, file: !1713, line: 79, baseType: !1721, size: 2048, offset: 30912)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dlEntryLoop", scope: !1716, file: !1713, line: 80, baseType: !11, size: 32, offset: 32960)
!1737 = !DILocalVariable(name: "bresult", scope: !1700, file: !3, line: 652, type: !1729)
!1738 = !DILocalVariable(name: "typex", scope: !1700, file: !3, line: 653, type: !1739)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 3200, elements: !1360)
!1740 = !DILocalVariable(name: "resx", scope: !1700, file: !3, line: 653, type: !1739)
!1741 = !DILocalVariable(name: "flags", scope: !1700, file: !3, line: 653, type: !1739)
!1742 = !DILocalVariable(name: "seq", scope: !1700, file: !3, line: 654, type: !1739)
!1743 = !DILocalVariable(name: "elmnt", scope: !1700, file: !3, line: 654, type: !1739)
!1744 = !DILocalVariable(name: "atom1x", scope: !1700, file: !3, line: 655, type: !1739)
!1745 = !DILocalVariable(name: "atom2x", scope: !1700, file: !3, line: 655, type: !1739)
!1746 = !DILocalVariable(name: "chg", scope: !1700, file: !3, line: 656, type: !1747)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 6400, elements: !1360)
!1748 = !DILocalVariable(name: "x", scope: !1700, file: !3, line: 656, type: !1747)
!1749 = !DILocalVariable(name: "y", scope: !1700, file: !3, line: 656, type: !1747)
!1750 = !DILocalVariable(name: "z", scope: !1700, file: !3, line: 656, type: !1747)
!1751 = !DILocalVariable(name: "a_name", scope: !1700, file: !3, line: 657, type: !1752)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !1753)
!1753 = !{!1361, !1727}
!1754 = !DILocalVariable(name: "type", scope: !1700, file: !3, line: 657, type: !1752)
!1755 = !DILocalVariable(name: "res_name", scope: !1700, file: !3, line: 657, type: !1752)
!1756 = !DILocalVariable(name: "prefix", scope: !1700, file: !3, line: 658, type: !1757)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2040, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 255)
!1760 = !DILocation(line: 0, scope: !1700)
!1761 = !DILocation(line: 650, column: 2, scope: !1700)
!1762 = !DILocation(line: 650, column: 8, scope: !1700)
!1763 = !DILocation(line: 650, column: 17, scope: !1700)
!1764 = !DILocation(line: 653, column: 2, scope: !1700)
!1765 = !DILocation(line: 653, column: 6, scope: !1700)
!1766 = !DILocation(line: 653, column: 20, scope: !1700)
!1767 = !DILocation(line: 653, column: 33, scope: !1700)
!1768 = !DILocation(line: 654, column: 3, scope: !1700)
!1769 = !DILocation(line: 654, column: 15, scope: !1700)
!1770 = !DILocation(line: 655, column: 2, scope: !1700)
!1771 = !DILocation(line: 655, column: 6, scope: !1700)
!1772 = !DILocation(line: 655, column: 21, scope: !1700)
!1773 = !DILocation(line: 656, column: 2, scope: !1700)
!1774 = !DILocation(line: 656, column: 9, scope: !1700)
!1775 = !DILocation(line: 656, column: 21, scope: !1700)
!1776 = !DILocation(line: 656, column: 31, scope: !1700)
!1777 = !DILocation(line: 656, column: 41, scope: !1700)
!1778 = !DILocation(line: 657, column: 2, scope: !1700)
!1779 = !DILocation(line: 657, column: 7, scope: !1700)
!1780 = !DILocation(line: 657, column: 28, scope: !1700)
!1781 = !DILocation(line: 657, column: 47, scope: !1700)
!1782 = !DILocation(line: 658, column: 2, scope: !1700)
!1783 = !DILocation(line: 658, column: 7, scope: !1700)
!1784 = !DILocation(line: 660, column: 10, scope: !1700)
!1785 = !DILocation(line: 661, column: 7, scope: !1700)
!1786 = !DILocation(line: 665, column: 52, scope: !1700)
!1787 = !DILocation(line: 665, column: 12, scope: !1700)
!1788 = !DILocation(line: 667, column: 23, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 667, column: 2)
!1790 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 667, column: 2)
!1791 = !DILocation(line: 667, column: 21, scope: !1789)
!1792 = !DILocation(line: 667, column: 2, scope: !1790)
!1793 = !DILocation(line: 671, column: 12, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 667, column: 43)
!1795 = !DILocation(line: 671, column: 33, scope: !1794)
!1796 = !DILocation(line: 671, column: 3, scope: !1794)
!1797 = !DILocation(line: 672, column: 3, scope: !1794)
!1798 = !DILocation(line: 673, column: 21, scope: !1794)
!1799 = !DILocation(line: 673, column: 3, scope: !1794)
!1800 = !DILocation(line: 674, column: 13, scope: !1794)
!1801 = !DILocation(line: 679, column: 7, scope: !1794)
!1802 = !DILocation(line: 680, column: 7, scope: !1794)
!1803 = !DILocation(line: 681, column: 7, scope: !1794)
!1804 = !DILocation(line: 682, column: 7, scope: !1794)
!1805 = !DILocation(line: 683, column: 7, scope: !1794)
!1806 = !DILocation(line: 687, column: 7, scope: !1794)
!1807 = !DILocation(line: 691, column: 7, scope: !1794)
!1808 = !DILocation(line: 692, column: 7, scope: !1794)
!1809 = !DILocation(line: 678, column: 13, scope: !1794)
!1810 = !DILocation(line: 708, column: 7, scope: !1794)
!1811 = !DILocation(line: 709, column: 7, scope: !1794)
!1812 = !DILocation(line: 710, column: 7, scope: !1794)
!1813 = !DILocation(line: 699, column: 13, scope: !1794)
!1814 = !DILocation(line: 718, column: 18, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 718, column: 3)
!1816 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 718, column: 3)
!1817 = !DILocation(line: 718, column: 16, scope: !1815)
!1818 = !DILocation(line: 718, column: 3, scope: !1816)
!1819 = !DILocation(line: 719, column: 10, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 718, column: 32)
!1821 = !DILocation(line: 720, column: 4, scope: !1820)
!1822 = !DILocation(line: 721, column: 16, scope: !1820)
!1823 = !DILocation(line: 721, column: 28, scope: !1820)
!1824 = !DILocation(line: 721, column: 4, scope: !1820)
!1825 = !DILocation(line: 722, column: 21, scope: !1820)
!1826 = !DILocation(line: 722, column: 8, scope: !1820)
!1827 = !DILocation(line: 722, column: 19, scope: !1820)
!1828 = !DILocation(line: 723, column: 21, scope: !1820)
!1829 = !DILocation(line: 723, column: 8, scope: !1820)
!1830 = !DILocation(line: 723, column: 4, scope: !1820)
!1831 = !DILocation(line: 723, column: 19, scope: !1820)
!1832 = !DILocation(line: 724, column: 21, scope: !1820)
!1833 = !DILocation(line: 724, column: 8, scope: !1820)
!1834 = !DILocation(line: 724, column: 4, scope: !1820)
!1835 = !DILocation(line: 724, column: 19, scope: !1820)
!1836 = !DILocation(line: 725, column: 21, scope: !1820)
!1837 = !DILocation(line: 725, column: 8, scope: !1820)
!1838 = !DILocation(line: 725, column: 4, scope: !1820)
!1839 = !DILocation(line: 725, column: 19, scope: !1820)
!1840 = !DILocation(line: 726, column: 3, scope: !1820)
!1841 = !DILocation(line: 718, column: 28, scope: !1815)
!1842 = distinct !{!1842, !1818, !1843}
!1843 = !DILocation(line: 726, column: 3, scope: !1816)
!1844 = !DILocation(line: 728, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 728, column: 7)
!1846 = !DILocation(line: 728, column: 15, scope: !1845)
!1847 = !DILocation(line: 728, column: 7, scope: !1794)
!1848 = !DILocation(line: 729, column: 4, scope: !1845)
!1849 = !DILocation(line: 734, column: 7, scope: !1794)
!1850 = !DILocation(line: 735, column: 7, scope: !1794)
!1851 = !DILocation(line: 736, column: 7, scope: !1794)
!1852 = !DILocation(line: 733, column: 13, scope: !1794)
!1853 = !DILocation(line: 752, column: 18, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 752, column: 3)
!1855 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 752, column: 3)
!1856 = !DILocation(line: 752, column: 16, scope: !1854)
!1857 = !DILocation(line: 752, column: 3, scope: !1855)
!1858 = !DILocation(line: 753, column: 22, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 752, column: 32)
!1860 = !DILocation(line: 753, column: 4, scope: !1859)
!1861 = !DILocation(line: 753, column: 20, scope: !1859)
!1862 = !DILocation(line: 754, column: 22, scope: !1859)
!1863 = !DILocation(line: 754, column: 4, scope: !1859)
!1864 = !DILocation(line: 754, column: 20, scope: !1859)
!1865 = !DILocation(line: 755, column: 3, scope: !1859)
!1866 = !DILocation(line: 752, column: 28, scope: !1854)
!1867 = distinct !{!1867, !1857, !1868}
!1868 = !DILocation(line: 755, column: 3, scope: !1855)
!1869 = !DILocation(line: 757, column: 10, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 757, column: 10)
!1871 = !DILocation(line: 757, column: 18, scope: !1870)
!1872 = !DILocation(line: 757, column: 10, scope: !1794)
!1873 = !DILocation(line: 758, column: 10, scope: !1870)
!1874 = !DILocation(line: 759, column: 2, scope: !1794)
!1875 = !DILocation(line: 667, column: 39, scope: !1789)
!1876 = distinct !{!1876, !1792, !1877}
!1877 = !DILocation(line: 759, column: 2, scope: !1790)
!1878 = !DILocation(line: 760, column: 1, scope: !1700)
!1879 = distinct !DISubprogram(name: "pdb2reslib", scope: !3, file: !3, line: 762, type: !1880, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !445, !298}
!1882 = !{!1883, !1884, !1885, !1886, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895}
!1883 = !DILocalVariable(name: "rfp", arg: 1, scope: !1879, file: !3, line: 762, type: !445)
!1884 = !DILocalVariable(name: "rlp", arg: 2, scope: !1879, file: !3, line: 762, type: !298)
!1885 = !DILocalVariable(name: "line", scope: !1879, file: !3, line: 764, type: !352)
!1886 = !DILocalVariable(name: "ltype", scope: !1879, file: !3, line: 765, type: !1887)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !1726)
!1888 = !DILocalVariable(name: "a_name", scope: !1879, file: !3, line: 765, type: !1887)
!1889 = !DILocalVariable(name: "r_name", scope: !1879, file: !3, line: 765, type: !1887)
!1890 = !DILocalVariable(name: "a_num", scope: !1879, file: !3, line: 766, type: !11)
!1891 = !DILocalVariable(name: "r_num", scope: !1879, file: !3, line: 766, type: !11)
!1892 = !DILocalVariable(name: "x", scope: !1879, file: !3, line: 767, type: !47)
!1893 = !DILocalVariable(name: "y", scope: !1879, file: !3, line: 767, type: !47)
!1894 = !DILocalVariable(name: "z", scope: !1879, file: !3, line: 767, type: !47)
!1895 = !DILocalVariable(name: "ap", scope: !1879, file: !3, line: 768, type: !201)
!1896 = !DILocation(line: 0, scope: !1879)
!1897 = !DILocation(line: 764, column: 2, scope: !1879)
!1898 = !DILocation(line: 764, column: 7, scope: !1879)
!1899 = !DILocation(line: 765, column: 2, scope: !1879)
!1900 = !DILocation(line: 765, column: 7, scope: !1879)
!1901 = !DILocation(line: 765, column: 20, scope: !1879)
!1902 = !DILocation(line: 765, column: 34, scope: !1879)
!1903 = !DILocation(line: 766, column: 2, scope: !1879)
!1904 = !DILocation(line: 766, column: 6, scope: !1879)
!1905 = !DILocation(line: 766, column: 13, scope: !1879)
!1906 = !DILocation(line: 767, column: 2, scope: !1879)
!1907 = !DILocation(line: 767, column: 9, scope: !1879)
!1908 = !DILocation(line: 767, column: 12, scope: !1879)
!1909 = !DILocation(line: 767, column: 15, scope: !1879)
!1910 = !DILocation(line: 770, column: 10, scope: !1879)
!1911 = !DILocation(line: 771, column: 11, scope: !1879)
!1912 = !DILocation(line: 772, column: 16, scope: !1879)
!1913 = !DILocation(line: 772, column: 9, scope: !1879)
!1914 = !DILocation(line: 772, column: 2, scope: !1879)
!1915 = !DILocation(line: 773, column: 26, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 773, column: 7)
!1917 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 772, column: 45)
!1918 = !DILocation(line: 773, column: 7, scope: !1916)
!1919 = !DILocation(line: 773, column: 36, scope: !1916)
!1920 = !DILocation(line: 773, column: 7, scope: !1917)
!1921 = !DILocation(line: 774, column: 23, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 773, column: 42)
!1923 = !DILocation(line: 774, column: 4, scope: !1922)
!1924 = !DILocation(line: 775, column: 3, scope: !1922)
!1925 = !DILocation(line: 775, column: 30, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 775, column: 13)
!1927 = !DILocation(line: 775, column: 13, scope: !1926)
!1928 = !DILocation(line: 775, column: 40, scope: !1926)
!1929 = !DILocation(line: 775, column: 45, scope: !1926)
!1930 = !DILocation(line: 776, column: 23, scope: !1926)
!1931 = !DILocation(line: 776, column: 4, scope: !1926)
!1932 = !DILocation(line: 776, column: 33, scope: !1926)
!1933 = !DILocation(line: 775, column: 13, scope: !1916)
!1934 = !DILocation(line: 778, column: 12, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 776, column: 39)
!1936 = !DILocation(line: 782, column: 5, scope: !1935)
!1937 = !DILocation(line: 783, column: 13, scope: !1935)
!1938 = !DILocation(line: 783, column: 21, scope: !1935)
!1939 = !DILocation(line: 778, column: 4, scope: !1935)
!1940 = !DILocation(line: 785, column: 25, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 785, column: 8)
!1942 = !DILocation(line: 785, column: 8, scope: !1941)
!1943 = !DILocation(line: 785, column: 34, scope: !1941)
!1944 = !DILocation(line: 785, column: 8, scope: !1935)
!1945 = !DILocation(line: 786, column: 9, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 786, column: 9)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 785, column: 40)
!1948 = !DILocation(line: 786, column: 17, scope: !1946)
!1949 = !DILocation(line: 786, column: 9, scope: !1947)
!1950 = !DILocation(line: 787, column: 6, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 786, column: 22)
!1952 = !DILocation(line: 788, column: 14, scope: !1951)
!1953 = !DILocation(line: 789, column: 5, scope: !1951)
!1954 = !DILocation(line: 790, column: 22, scope: !1947)
!1955 = !DILocation(line: 790, column: 5, scope: !1947)
!1956 = !DILocation(line: 791, column: 4, scope: !1947)
!1957 = !DILocation(line: 792, column: 17, scope: !1935)
!1958 = !DILocation(line: 792, column: 10, scope: !1935)
!1959 = !DILocation(line: 793, column: 4, scope: !1935)
!1960 = !DILocation(line: 794, column: 16, scope: !1935)
!1961 = !DILocation(line: 794, column: 28, scope: !1935)
!1962 = !DILocation(line: 794, column: 4, scope: !1935)
!1963 = !DILocation(line: 795, column: 21, scope: !1935)
!1964 = !DILocation(line: 795, column: 8, scope: !1935)
!1965 = !DILocation(line: 795, column: 4, scope: !1935)
!1966 = !DILocation(line: 795, column: 19, scope: !1935)
!1967 = !DILocation(line: 796, column: 21, scope: !1935)
!1968 = !DILocation(line: 796, column: 8, scope: !1935)
!1969 = !DILocation(line: 796, column: 4, scope: !1935)
!1970 = !DILocation(line: 796, column: 19, scope: !1935)
!1971 = !DILocation(line: 797, column: 21, scope: !1935)
!1972 = !DILocation(line: 797, column: 8, scope: !1935)
!1973 = !DILocation(line: 797, column: 4, scope: !1935)
!1974 = !DILocation(line: 797, column: 19, scope: !1935)
!1975 = !DILocation(line: 798, column: 11, scope: !1935)
!1976 = !DILocation(line: 799, column: 3, scope: !1935)
!1977 = distinct !{!1977, !1914, !1978}
!1978 = !DILocation(line: 800, column: 2, scope: !1879)
!1979 = !DILocation(line: 801, column: 6, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 801, column: 6)
!1981 = !DILocation(line: 801, column: 14, scope: !1980)
!1982 = !DILocation(line: 801, column: 6, scope: !1879)
!1983 = !DILocation(line: 802, column: 3, scope: !1980)
!1984 = !DILocation(line: 803, column: 1, scope: !1879)
!1985 = distinct !DISubprogram(name: "bnd2reslib", scope: !3, file: !3, line: 805, type: !1880, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993}
!1987 = !DILocalVariable(name: "bfp", arg: 1, scope: !1985, file: !3, line: 805, type: !445)
!1988 = !DILocalVariable(name: "rlp", arg: 2, scope: !1985, file: !3, line: 805, type: !298)
!1989 = !DILocalVariable(name: "line", scope: !1985, file: !3, line: 807, type: !352)
!1990 = !DILocalVariable(name: "r_name", scope: !1985, file: !3, line: 808, type: !295)
!1991 = !DILocalVariable(name: "llen", scope: !1985, file: !3, line: 809, type: !11)
!1992 = !DILocalVariable(name: "bi", scope: !1985, file: !3, line: 810, type: !11)
!1993 = !DILocalVariable(name: "bj", scope: !1985, file: !3, line: 810, type: !11)
!1994 = !DILocation(line: 0, scope: !1985)
!1995 = !DILocation(line: 807, column: 2, scope: !1985)
!1996 = !DILocation(line: 807, column: 7, scope: !1985)
!1997 = !DILocation(line: 808, column: 2, scope: !1985)
!1998 = !DILocation(line: 808, column: 7, scope: !1985)
!1999 = !DILocation(line: 810, column: 2, scope: !1985)
!2000 = !DILocation(line: 810, column: 6, scope: !1985)
!2001 = !DILocation(line: 810, column: 10, scope: !1985)
!2002 = !DILocation(line: 812, column: 10, scope: !1985)
!2003 = !DILocation(line: 813, column: 2, scope: !1985)
!2004 = !DILocation(line: 813, column: 10, scope: !1985)
!2005 = !DILocation(line: 814, column: 16, scope: !1985)
!2006 = !DILocation(line: 814, column: 9, scope: !1985)
!2007 = !DILocation(line: 814, column: 2, scope: !1985)
!2008 = !DILocation(line: 815, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 815, column: 7)
!2010 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 814, column: 45)
!2011 = !DILocation(line: 815, column: 13, scope: !2009)
!2012 = !DILocation(line: 815, column: 7, scope: !2010)
!2013 = !DILocation(line: 816, column: 16, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 816, column: 8)
!2015 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 815, column: 21)
!2016 = !DILocation(line: 816, column: 30, scope: !2014)
!2017 = !DILocation(line: 816, column: 8, scope: !2014)
!2018 = !DILocation(line: 816, column: 39, scope: !2014)
!2019 = !DILocation(line: 816, column: 8, scope: !2015)
!2020 = !DILocation(line: 817, column: 20, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 816, column: 45)
!2022 = !DILocation(line: 817, column: 12, scope: !2021)
!2023 = !DILocation(line: 817, column: 27, scope: !2021)
!2024 = !DILocation(line: 818, column: 17, scope: !2021)
!2025 = !DILocation(line: 818, column: 12, scope: !2021)
!2026 = !DILocation(line: 819, column: 43, scope: !2021)
!2027 = !DILocation(line: 819, column: 5, scope: !2021)
!2028 = !DILocation(line: 820, column: 5, scope: !2021)
!2029 = !DILocation(line: 822, column: 5, scope: !2021)
!2030 = !DILocation(line: 823, column: 14, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 823, column: 14)
!2032 = !DILocation(line: 823, column: 22, scope: !2031)
!2033 = !DILocation(line: 823, column: 14, scope: !2014)
!2034 = !DILocation(line: 824, column: 5, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 823, column: 27)
!2036 = !DILocation(line: 825, column: 22, scope: !2035)
!2037 = !DILocation(line: 825, column: 5, scope: !2035)
!2038 = !DILocation(line: 826, column: 13, scope: !2035)
!2039 = !DILocation(line: 827, column: 4, scope: !2035)
!2040 = !DILocation(line: 828, column: 22, scope: !2031)
!2041 = !DILocation(line: 828, column: 5, scope: !2031)
!2042 = !DILocation(line: 829, column: 3, scope: !2015)
!2043 = !DILocation(line: 830, column: 16, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 830, column: 8)
!2045 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 829, column: 8)
!2046 = !DILocation(line: 830, column: 8, scope: !2044)
!2047 = !DILocation(line: 830, column: 42, scope: !2044)
!2048 = !DILocation(line: 830, column: 8, scope: !2045)
!2049 = !DILocation(line: 831, column: 20, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 830, column: 48)
!2051 = !DILocation(line: 831, column: 12, scope: !2050)
!2052 = !DILocation(line: 831, column: 27, scope: !2050)
!2053 = !DILocation(line: 832, column: 17, scope: !2050)
!2054 = !DILocation(line: 832, column: 12, scope: !2050)
!2055 = !DILocation(line: 833, column: 43, scope: !2050)
!2056 = !DILocation(line: 833, column: 5, scope: !2050)
!2057 = !DILocation(line: 834, column: 5, scope: !2050)
!2058 = !DILocation(line: 836, column: 5, scope: !2050)
!2059 = !DILocation(line: 838, column: 29, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 837, column: 9)
!2061 = !DILocation(line: 838, column: 12, scope: !2060)
!2062 = !DILocation(line: 838, column: 5, scope: !2060)
!2063 = !DILocation(line: 838, column: 27, scope: !2060)
!2064 = !DILocation(line: 839, column: 29, scope: !2060)
!2065 = !DILocation(line: 839, column: 12, scope: !2060)
!2066 = !DILocation(line: 839, column: 5, scope: !2060)
!2067 = !DILocation(line: 839, column: 27, scope: !2060)
!2068 = !DILocation(line: 840, column: 12, scope: !2060)
!2069 = distinct !{!2069, !2007, !2070}
!2070 = !DILocation(line: 843, column: 2, scope: !1985)
!2071 = !DILocation(line: 844, column: 6, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 844, column: 6)
!2073 = !DILocation(line: 844, column: 14, scope: !2072)
!2074 = !DILocation(line: 844, column: 6, scope: !1985)
!2075 = !DILocation(line: 845, column: 3, scope: !2072)
!2076 = !DILocation(line: 846, column: 1, scope: !1985)
!2077 = distinct !DISubprogram(name: "qr2reslib", scope: !3, file: !3, line: 937, type: !1880, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2078)
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089}
!2079 = !DILocalVariable(name: "qfp", arg: 1, scope: !2077, file: !3, line: 937, type: !445)
!2080 = !DILocalVariable(name: "rlp", arg: 2, scope: !2077, file: !3, line: 937, type: !298)
!2081 = !DILocalVariable(name: "line", scope: !2077, file: !3, line: 939, type: !352)
!2082 = !DILocalVariable(name: "ltype", scope: !2077, file: !3, line: 940, type: !1887)
!2083 = !DILocalVariable(name: "a_name", scope: !2077, file: !3, line: 940, type: !1887)
!2084 = !DILocalVariable(name: "r_name", scope: !2077, file: !3, line: 940, type: !1887)
!2085 = !DILocalVariable(name: "a_num", scope: !2077, file: !3, line: 941, type: !11)
!2086 = !DILocalVariable(name: "r_num", scope: !2077, file: !3, line: 941, type: !11)
!2087 = !DILocalVariable(name: "q", scope: !2077, file: !3, line: 942, type: !47)
!2088 = !DILocalVariable(name: "r", scope: !2077, file: !3, line: 942, type: !47)
!2089 = !DILocalVariable(name: "ap", scope: !2077, file: !3, line: 943, type: !201)
!2090 = !DILocation(line: 0, scope: !2077)
!2091 = !DILocation(line: 939, column: 2, scope: !2077)
!2092 = !DILocation(line: 939, column: 7, scope: !2077)
!2093 = !DILocation(line: 940, column: 2, scope: !2077)
!2094 = !DILocation(line: 940, column: 7, scope: !2077)
!2095 = !DILocation(line: 940, column: 20, scope: !2077)
!2096 = !DILocation(line: 940, column: 34, scope: !2077)
!2097 = !DILocation(line: 941, column: 2, scope: !2077)
!2098 = !DILocation(line: 941, column: 6, scope: !2077)
!2099 = !DILocation(line: 941, column: 13, scope: !2077)
!2100 = !DILocation(line: 942, column: 2, scope: !2077)
!2101 = !DILocation(line: 942, column: 9, scope: !2077)
!2102 = !DILocation(line: 942, column: 12, scope: !2077)
!2103 = !DILocation(line: 945, column: 10, scope: !2077)
!2104 = !DILocation(line: 946, column: 11, scope: !2077)
!2105 = !DILocation(line: 947, column: 16, scope: !2077)
!2106 = !DILocation(line: 947, column: 9, scope: !2077)
!2107 = !DILocation(line: 947, column: 2, scope: !2077)
!2108 = !DILocation(line: 948, column: 23, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 948, column: 7)
!2110 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 947, column: 45)
!2111 = !DILocation(line: 948, column: 7, scope: !2109)
!2112 = !DILocation(line: 948, column: 33, scope: !2109)
!2113 = !DILocation(line: 948, column: 7, scope: !2110)
!2114 = !DILocation(line: 949, column: 4, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 948, column: 39)
!2116 = distinct !{!2116, !2107, !2117}
!2117 = !DILocation(line: 973, column: 2, scope: !2077)
!2118 = !DILocation(line: 950, column: 30, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 950, column: 13)
!2120 = !DILocation(line: 950, column: 13, scope: !2119)
!2121 = !DILocation(line: 950, column: 40, scope: !2119)
!2122 = !DILocation(line: 950, column: 45, scope: !2119)
!2123 = !DILocation(line: 951, column: 23, scope: !2119)
!2124 = !DILocation(line: 951, column: 4, scope: !2119)
!2125 = !DILocation(line: 951, column: 33, scope: !2119)
!2126 = !DILocation(line: 950, column: 13, scope: !2109)
!2127 = !DILocation(line: 953, column: 12, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 951, column: 39)
!2129 = !DILocation(line: 957, column: 5, scope: !2128)
!2130 = !DILocation(line: 958, column: 13, scope: !2128)
!2131 = !DILocation(line: 958, column: 21, scope: !2128)
!2132 = !DILocation(line: 953, column: 4, scope: !2128)
!2133 = !DILocation(line: 959, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 959, column: 8)
!2135 = !DILocation(line: 959, column: 8, scope: !2134)
!2136 = !DILocation(line: 959, column: 34, scope: !2134)
!2137 = !DILocation(line: 959, column: 8, scope: !2128)
!2138 = !DILocation(line: 960, column: 9, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 960, column: 9)
!2140 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 959, column: 40)
!2141 = !DILocation(line: 960, column: 17, scope: !2139)
!2142 = !DILocation(line: 960, column: 9, scope: !2140)
!2143 = !DILocation(line: 961, column: 6, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 960, column: 22)
!2145 = !DILocation(line: 962, column: 14, scope: !2144)
!2146 = !DILocation(line: 963, column: 5, scope: !2144)
!2147 = !DILocation(line: 964, column: 22, scope: !2140)
!2148 = !DILocation(line: 964, column: 5, scope: !2140)
!2149 = !DILocation(line: 965, column: 4, scope: !2140)
!2150 = !DILocation(line: 966, column: 17, scope: !2128)
!2151 = !DILocation(line: 966, column: 10, scope: !2128)
!2152 = !DILocation(line: 967, column: 4, scope: !2128)
!2153 = !DILocation(line: 968, column: 16, scope: !2128)
!2154 = !DILocation(line: 968, column: 28, scope: !2128)
!2155 = !DILocation(line: 968, column: 4, scope: !2128)
!2156 = !DILocation(line: 969, column: 19, scope: !2128)
!2157 = !DILocation(line: 969, column: 8, scope: !2128)
!2158 = !DILocation(line: 969, column: 17, scope: !2128)
!2159 = !DILocation(line: 970, column: 19, scope: !2128)
!2160 = !DILocation(line: 970, column: 8, scope: !2128)
!2161 = !DILocation(line: 970, column: 17, scope: !2128)
!2162 = !DILocation(line: 971, column: 11, scope: !2128)
!2163 = !DILocation(line: 972, column: 3, scope: !2128)
!2164 = !DILocation(line: 974, column: 6, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 974, column: 6)
!2166 = !DILocation(line: 974, column: 14, scope: !2165)
!2167 = !DILocation(line: 974, column: 6, scope: !2077)
!2168 = !DILocation(line: 975, column: 3, scope: !2165)
!2169 = !DILocation(line: 976, column: 1, scope: !2077)
!2170 = distinct !DISubprogram(name: "chi2reslib", scope: !3, file: !3, line: 848, type: !1880, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188}
!2172 = !DILocalVariable(name: "cfp", arg: 1, scope: !2170, file: !3, line: 848, type: !445)
!2173 = !DILocalVariable(name: "rlp", arg: 2, scope: !2170, file: !3, line: 848, type: !298)
!2174 = !DILocalVariable(name: "line", scope: !2170, file: !3, line: 850, type: !352)
!2175 = !DILocalVariable(name: "r_name", scope: !2170, file: !3, line: 851, type: !295)
!2176 = !DILocalVariable(name: "llen", scope: !2170, file: !3, line: 852, type: !11)
!2177 = !DILocalVariable(name: "res", scope: !2170, file: !3, line: 853, type: !169)
!2178 = !DILocalVariable(name: "res1", scope: !2170, file: !3, line: 853, type: !169)
!2179 = !DILocalVariable(name: "anm1", scope: !2170, file: !3, line: 854, type: !339)
!2180 = !DILocalVariable(name: "anm2", scope: !2170, file: !3, line: 854, type: !339)
!2181 = !DILocalVariable(name: "anm3", scope: !2170, file: !3, line: 854, type: !339)
!2182 = !DILocalVariable(name: "anm4", scope: !2170, file: !3, line: 854, type: !339)
!2183 = !DILocalVariable(name: "a1", scope: !2170, file: !3, line: 855, type: !11)
!2184 = !DILocalVariable(name: "a2", scope: !2170, file: !3, line: 855, type: !11)
!2185 = !DILocalVariable(name: "a3", scope: !2170, file: !3, line: 855, type: !11)
!2186 = !DILocalVariable(name: "a4", scope: !2170, file: !3, line: 855, type: !11)
!2187 = !DILocalVariable(name: "ap", scope: !2170, file: !3, line: 856, type: !201)
!2188 = !DILocalVariable(name: "cp", scope: !2170, file: !3, line: 857, type: !190)
!2189 = !DILocation(line: 0, scope: !2170)
!2190 = !DILocation(line: 850, column: 2, scope: !2170)
!2191 = !DILocation(line: 850, column: 7, scope: !2170)
!2192 = !DILocation(line: 851, column: 2, scope: !2170)
!2193 = !DILocation(line: 851, column: 7, scope: !2170)
!2194 = !DILocation(line: 854, column: 2, scope: !2170)
!2195 = !DILocation(line: 854, column: 7, scope: !2170)
!2196 = !DILocation(line: 854, column: 18, scope: !2170)
!2197 = !DILocation(line: 854, column: 29, scope: !2170)
!2198 = !DILocation(line: 854, column: 40, scope: !2170)
!2199 = !DILocation(line: 859, column: 8, scope: !2170)
!2200 = !DILocation(line: 860, column: 2, scope: !2170)
!2201 = !DILocation(line: 860, column: 10, scope: !2170)
!2202 = !DILocation(line: 861, column: 16, scope: !2170)
!2203 = !DILocation(line: 861, column: 9, scope: !2170)
!2204 = !DILocation(line: 861, column: 2, scope: !2170)
!2205 = !DILocation(line: 862, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 862, column: 7)
!2207 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 861, column: 45)
!2208 = !DILocation(line: 862, column: 13, scope: !2206)
!2209 = !DILocation(line: 862, column: 7, scope: !2207)
!2210 = !DILocation(line: 863, column: 16, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 863, column: 8)
!2212 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 862, column: 21)
!2213 = !DILocation(line: 863, column: 30, scope: !2211)
!2214 = !DILocation(line: 863, column: 8, scope: !2211)
!2215 = !DILocation(line: 863, column: 39, scope: !2211)
!2216 = !DILocation(line: 863, column: 8, scope: !2212)
!2217 = !DILocation(line: 864, column: 20, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 863, column: 45)
!2219 = !DILocation(line: 864, column: 12, scope: !2218)
!2220 = !DILocation(line: 864, column: 27, scope: !2218)
!2221 = !DILocation(line: 865, column: 17, scope: !2218)
!2222 = !DILocation(line: 865, column: 12, scope: !2218)
!2223 = !DILocation(line: 866, column: 43, scope: !2218)
!2224 = !DILocation(line: 866, column: 5, scope: !2218)
!2225 = !DILocation(line: 867, column: 14, scope: !2218)
!2226 = !DILocation(line: 867, column: 5, scope: !2218)
!2227 = !DILocation(line: 870, column: 5, scope: !2218)
!2228 = !DILocation(line: 872, column: 9, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 872, column: 9)
!2230 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 871, column: 9)
!2231 = !DILocation(line: 872, column: 15, scope: !2229)
!2232 = !DILocation(line: 872, column: 9, scope: !2230)
!2233 = !DILocation(line: 873, column: 6, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 872, column: 20)
!2235 = !DILocation(line: 874, column: 12, scope: !2234)
!2236 = !DILocation(line: 875, column: 5, scope: !2234)
!2237 = !DILocation(line: 877, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 877, column: 5)
!2239 = !DILocation(line: 877, column: 5, scope: !2238)
!2240 = !DILocation(line: 879, column: 24, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 879, column: 10)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 878, column: 25)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 877, column: 5)
!2244 = !DILocation(line: 879, column: 35, scope: !2241)
!2245 = !DILocation(line: 879, column: 11, scope: !2241)
!2246 = !DILocation(line: 879, column: 10, scope: !2242)
!2247 = !DILocation(line: 0, scope: !2238)
!2248 = !DILocation(line: 881, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 879, column: 45)
!2250 = !DILocation(line: 883, column: 5, scope: !2242)
!2251 = !DILocation(line: 878, column: 17, scope: !2243)
!2252 = distinct !{!2252, !2239, !2253}
!2253 = !DILocation(line: 883, column: 5, scope: !2238)
!2254 = !DILocation(line: 884, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 884, column: 9)
!2256 = !DILocation(line: 0, scope: !2230)
!2257 = !DILocation(line: 884, column: 9, scope: !2230)
!2258 = !DILocation(line: 885, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 884, column: 16)
!2260 = !DILocation(line: 887, column: 7, scope: !2259)
!2261 = !DILocation(line: 887, column: 20, scope: !2259)
!2262 = !DILocation(line: 885, column: 6, scope: !2259)
!2263 = !DILocation(line: 888, column: 6, scope: !2259)
!2264 = !DILocation(line: 890, column: 22, scope: !2230)
!2265 = !DILocation(line: 890, column: 5, scope: !2230)
!2266 = !DILocation(line: 892, column: 3, scope: !2212)
!2267 = !DILocation(line: 893, column: 12, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 892, column: 8)
!2269 = !DILocation(line: 893, column: 33, scope: !2268)
!2270 = !DILocation(line: 893, column: 39, scope: !2268)
!2271 = !DILocation(line: 893, column: 45, scope: !2268)
!2272 = !DILocation(line: 893, column: 51, scope: !2268)
!2273 = !DILocation(line: 893, column: 4, scope: !2268)
!2274 = !DILocation(line: 894, column: 31, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 894, column: 8)
!2276 = !DILocation(line: 894, column: 16, scope: !2275)
!2277 = !DILocation(line: 894, column: 14, scope: !2275)
!2278 = !DILocation(line: 894, column: 8, scope: !2268)
!2279 = !DILocation(line: 895, column: 14, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 894, column: 41)
!2281 = !DILocation(line: 897, column: 6, scope: !2280)
!2282 = !DILocation(line: 897, column: 17, scope: !2280)
!2283 = !DILocation(line: 895, column: 5, scope: !2280)
!2284 = !DILocation(line: 898, column: 5, scope: !2280)
!2285 = !DILocation(line: 900, column: 20, scope: !2275)
!2286 = !DILocation(line: 900, column: 13, scope: !2275)
!2287 = !DILocation(line: 900, column: 10, scope: !2275)
!2288 = !DILocation(line: 901, column: 31, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 901, column: 8)
!2290 = !DILocation(line: 901, column: 16, scope: !2289)
!2291 = !DILocation(line: 901, column: 14, scope: !2289)
!2292 = !DILocation(line: 901, column: 8, scope: !2268)
!2293 = !DILocation(line: 902, column: 14, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 901, column: 41)
!2295 = !DILocation(line: 904, column: 6, scope: !2294)
!2296 = !DILocation(line: 904, column: 17, scope: !2294)
!2297 = !DILocation(line: 902, column: 5, scope: !2294)
!2298 = !DILocation(line: 905, column: 5, scope: !2294)
!2299 = !DILocation(line: 907, column: 20, scope: !2289)
!2300 = !DILocation(line: 907, column: 13, scope: !2289)
!2301 = !DILocation(line: 907, column: 10, scope: !2289)
!2302 = !DILocation(line: 908, column: 31, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 908, column: 8)
!2304 = !DILocation(line: 908, column: 16, scope: !2303)
!2305 = !DILocation(line: 908, column: 14, scope: !2303)
!2306 = !DILocation(line: 908, column: 8, scope: !2268)
!2307 = !DILocation(line: 909, column: 14, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 908, column: 41)
!2309 = !DILocation(line: 911, column: 6, scope: !2308)
!2310 = !DILocation(line: 911, column: 17, scope: !2308)
!2311 = !DILocation(line: 909, column: 5, scope: !2308)
!2312 = !DILocation(line: 912, column: 5, scope: !2308)
!2313 = !DILocation(line: 914, column: 20, scope: !2303)
!2314 = !DILocation(line: 914, column: 13, scope: !2303)
!2315 = !DILocation(line: 914, column: 10, scope: !2303)
!2316 = !DILocation(line: 915, column: 31, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 915, column: 8)
!2318 = !DILocation(line: 915, column: 16, scope: !2317)
!2319 = !DILocation(line: 915, column: 14, scope: !2317)
!2320 = !DILocation(line: 915, column: 8, scope: !2268)
!2321 = !DILocation(line: 916, column: 14, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 915, column: 41)
!2323 = !DILocation(line: 918, column: 6, scope: !2322)
!2324 = !DILocation(line: 918, column: 17, scope: !2322)
!2325 = !DILocation(line: 916, column: 5, scope: !2322)
!2326 = !DILocation(line: 919, column: 5, scope: !2322)
!2327 = !DILocation(line: 921, column: 20, scope: !2317)
!2328 = !DILocation(line: 921, column: 13, scope: !2317)
!2329 = !DILocation(line: 921, column: 10, scope: !2317)
!2330 = !DILocation(line: 922, column: 15, scope: !2268)
!2331 = !DILocation(line: 922, column: 10, scope: !2268)
!2332 = !DILocation(line: 923, column: 9, scope: !2268)
!2333 = !DILocation(line: 924, column: 8, scope: !2268)
!2334 = !DILocation(line: 924, column: 4, scope: !2268)
!2335 = !DILocation(line: 924, column: 20, scope: !2268)
!2336 = !DILocation(line: 925, column: 8, scope: !2268)
!2337 = !DILocation(line: 925, column: 4, scope: !2268)
!2338 = !DILocation(line: 925, column: 20, scope: !2268)
!2339 = !DILocation(line: 926, column: 8, scope: !2268)
!2340 = !DILocation(line: 926, column: 4, scope: !2268)
!2341 = !DILocation(line: 926, column: 20, scope: !2268)
!2342 = !DILocation(line: 927, column: 8, scope: !2268)
!2343 = !DILocation(line: 927, column: 4, scope: !2268)
!2344 = !DILocation(line: 927, column: 20, scope: !2268)
!2345 = !DILocation(line: 928, column: 8, scope: !2268)
!2346 = !DILocation(line: 928, column: 15, scope: !2268)
!2347 = distinct !{!2347, !2204, !2348}
!2348 = !DILocation(line: 930, column: 2, scope: !2170)
!2349 = !DILocation(line: 931, column: 6, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 931, column: 6)
!2351 = !DILocation(line: 931, column: 12, scope: !2350)
!2352 = !DILocation(line: 931, column: 6, scope: !2170)
!2353 = !DILocation(line: 932, column: 3, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 931, column: 17)
!2355 = !DILocation(line: 933, column: 9, scope: !2354)
!2356 = !DILocation(line: 934, column: 2, scope: !2354)
!2357 = !DILocation(line: 935, column: 1, scope: !2170)
!2358 = distinct !DISubprogram(name: "mk_fname", scope: !3, file: !3, line: 637, type: !2359, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !12, !12}
!2361 = !{!2362, !2363}
!2362 = !DILocalVariable(name: "sname", arg: 1, scope: !2358, file: !3, line: 637, type: !12)
!2363 = !DILocalVariable(name: "fname", arg: 2, scope: !2358, file: !3, line: 637, type: !12)
!2364 = !DILocation(line: 0, scope: !2358)
!2365 = !DILocation(line: 640, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 640, column: 6)
!2367 = !DILocation(line: 640, column: 13, scope: !2366)
!2368 = !DILocation(line: 640, column: 20, scope: !2366)
!2369 = !DILocation(line: 641, column: 4, scope: !2366)
!2370 = !DILocation(line: 640, column: 6, scope: !2358)
!2371 = !DILocation(line: 642, column: 3, scope: !2366)
!2372 = !DILocation(line: 644, column: 3, scope: !2366)
!2373 = !DILocation(line: 645, column: 1, scope: !2358)
!2374 = distinct !DISubprogram(name: "addres2reslib", scope: !3, file: !3, line: 996, type: !2375, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !298}
!2377 = !{!2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2378 = !DILocalVariable(name: "rlp", arg: 1, scope: !2374, file: !3, line: 996, type: !298)
!2379 = !DILocalVariable(name: "res", scope: !2374, file: !3, line: 998, type: !169)
!2380 = !DILocalVariable(name: "ap", scope: !2374, file: !3, line: 999, type: !201)
!2381 = !DILocalVariable(name: "anp", scope: !2374, file: !3, line: 1000, type: !12)
!2382 = !DILocalVariable(name: "rnp", scope: !2374, file: !3, line: 1000, type: !12)
!2383 = !DILocalVariable(name: "a", scope: !2374, file: !3, line: 1001, type: !11)
!2384 = !DILocalVariable(name: "i", scope: !2374, file: !3, line: 1001, type: !11)
!2385 = !DILocation(line: 0, scope: !2374)
!2386 = !DILocation(line: 1003, column: 29, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 1003, column: 6)
!2388 = !DILocation(line: 1003, column: 14, scope: !2387)
!2389 = !DILocation(line: 1003, column: 61, scope: !2387)
!2390 = !DILocation(line: 1003, column: 6, scope: !2374)
!2391 = !DILocation(line: 1005, column: 18, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1003, column: 70)
!2393 = !DILocation(line: 1004, column: 3, scope: !2392)
!2394 = !DILocation(line: 1006, column: 3, scope: !2392)
!2395 = !DILocation(line: 1007, column: 3, scope: !2392)
!2396 = !DILocation(line: 1009, column: 33, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 1009, column: 6)
!2398 = !DILocation(line: 1009, column: 41, scope: !2397)
!2399 = !DILocation(line: 1009, column: 25, scope: !2397)
!2400 = !DILocation(line: 1009, column: 13, scope: !2397)
!2401 = !DILocation(line: 1009, column: 64, scope: !2397)
!2402 = !DILocation(line: 1009, column: 6, scope: !2374)
!2403 = !DILocation(line: 1011, column: 18, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 1009, column: 73)
!2405 = !DILocation(line: 1010, column: 3, scope: !2404)
!2406 = !DILocation(line: 1012, column: 3, scope: !2404)
!2407 = !DILocation(line: 1013, column: 3, scope: !2404)
!2408 = !DILocation(line: 1015, column: 21, scope: !2374)
!2409 = !DILocation(line: 1015, column: 7, scope: !2374)
!2410 = !DILocation(line: 1015, column: 14, scope: !2374)
!2411 = !DILocation(line: 1016, column: 7, scope: !2374)
!2412 = !DILocation(line: 1016, column: 16, scope: !2374)
!2413 = !DILocation(line: 1018, column: 26, scope: !2374)
!2414 = !DILocation(line: 1018, column: 44, scope: !2374)
!2415 = !DILocation(line: 1018, column: 18, scope: !2374)
!2416 = !DILocation(line: 1019, column: 10, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 1019, column: 6)
!2418 = !DILocation(line: 1019, column: 6, scope: !2374)
!2419 = !DILocation(line: 1020, column: 12, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1019, column: 19)
!2421 = !DILocation(line: 1020, column: 3, scope: !2420)
!2422 = !DILocation(line: 1022, column: 3, scope: !2420)
!2423 = !DILocation(line: 1024, column: 2, scope: !2374)
!2424 = !DILocation(line: 1025, column: 7, scope: !2374)
!2425 = !DILocation(line: 1025, column: 17, scope: !2374)
!2426 = !DILocation(line: 1027, column: 18, scope: !2374)
!2427 = !DILocation(line: 1028, column: 10, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 1028, column: 6)
!2429 = !DILocation(line: 1028, column: 6, scope: !2374)
!2430 = !DILocation(line: 1029, column: 12, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1028, column: 19)
!2432 = !DILocation(line: 1029, column: 3, scope: !2431)
!2433 = !DILocation(line: 1031, column: 3, scope: !2431)
!2434 = !DILocation(line: 1033, column: 2, scope: !2374)
!2435 = !DILocation(line: 1034, column: 7, scope: !2374)
!2436 = !DILocation(line: 1034, column: 15, scope: !2374)
!2437 = !DILocation(line: 1036, column: 7, scope: !2374)
!2438 = !DILocation(line: 1036, column: 13, scope: !2374)
!2439 = !DILocation(line: 1037, column: 7, scope: !2374)
!2440 = !DILocation(line: 1037, column: 17, scope: !2374)
!2441 = !DILocation(line: 1038, column: 7, scope: !2374)
!2442 = !DILocation(line: 1038, column: 16, scope: !2374)
!2443 = !DILocation(line: 1039, column: 7, scope: !2374)
!2444 = !DILocation(line: 1039, column: 14, scope: !2374)
!2445 = !DILocation(line: 1040, column: 21, scope: !2374)
!2446 = !DILocation(line: 1040, column: 7, scope: !2374)
!2447 = !DILocation(line: 1040, column: 14, scope: !2374)
!2448 = !DILocation(line: 1041, column: 25, scope: !2374)
!2449 = !DILocation(line: 1041, column: 7, scope: !2374)
!2450 = !DILocation(line: 1041, column: 18, scope: !2374)
!2451 = !DILocation(line: 1042, column: 7, scope: !2374)
!2452 = !DILocation(line: 1042, column: 16, scope: !2374)
!2453 = !DILocation(line: 1043, column: 7, scope: !2374)
!2454 = !DILocation(line: 1043, column: 18, scope: !2374)
!2455 = !DILocation(line: 1044, column: 7, scope: !2374)
!2456 = !DILocation(line: 1044, column: 19, scope: !2374)
!2457 = !DILocation(line: 1045, column: 7, scope: !2374)
!2458 = !DILocation(line: 1045, column: 18, scope: !2374)
!2459 = !DILocation(line: 1046, column: 7, scope: !2374)
!2460 = !DILocation(line: 1046, column: 17, scope: !2374)
!2461 = !DILocation(line: 1047, column: 7, scope: !2374)
!2462 = !DILocation(line: 1047, column: 16, scope: !2374)
!2463 = !DILocation(line: 1048, column: 18, scope: !2374)
!2464 = !DILocation(line: 1048, column: 7, scope: !2374)
!2465 = !DILocation(line: 1048, column: 16, scope: !2374)
!2466 = !DILocation(line: 1049, column: 7, scope: !2374)
!2467 = !DILocation(line: 1049, column: 16, scope: !2374)
!2468 = !DILocation(line: 1050, column: 7, scope: !2374)
!2469 = !DILocation(line: 1050, column: 15, scope: !2374)
!2470 = !DILocation(line: 1051, column: 18, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1051, column: 2)
!2472 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 1051, column: 2)
!2473 = !DILocation(line: 1051, column: 16, scope: !2471)
!2474 = !DILocation(line: 1051, column: 2, scope: !2472)
!2475 = !DILocation(line: 1052, column: 35, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1051, column: 32)
!2477 = !DILocation(line: 1052, column: 46, scope: !2476)
!2478 = !DILocation(line: 1052, column: 27, scope: !2476)
!2479 = !DILocation(line: 1052, column: 59, scope: !2476)
!2480 = !DILocation(line: 1052, column: 19, scope: !2476)
!2481 = !DILocation(line: 1053, column: 11, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1053, column: 7)
!2483 = !DILocation(line: 1053, column: 7, scope: !2476)
!2484 = !DILocation(line: 1054, column: 13, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1053, column: 20)
!2486 = !DILocation(line: 1054, column: 4, scope: !2485)
!2487 = !DILocation(line: 1056, column: 4, scope: !2485)
!2488 = !DILocation(line: 1059, column: 16, scope: !2476)
!2489 = !DILocation(line: 1059, column: 27, scope: !2476)
!2490 = !DILocation(line: 1059, column: 3, scope: !2476)
!2491 = !DILocation(line: 1060, column: 8, scope: !2476)
!2492 = !DILocation(line: 1060, column: 3, scope: !2476)
!2493 = !DILocation(line: 1060, column: 21, scope: !2476)
!2494 = !DILocation(line: 1060, column: 32, scope: !2476)
!2495 = !DILocation(line: 1061, column: 8, scope: !2476)
!2496 = !DILocation(line: 1061, column: 3, scope: !2476)
!2497 = !DILocation(line: 1061, column: 21, scope: !2476)
!2498 = !DILocation(line: 1061, column: 32, scope: !2476)
!2499 = !DILocation(line: 1062, column: 8, scope: !2476)
!2500 = !DILocation(line: 1062, column: 3, scope: !2476)
!2501 = !DILocation(line: 1062, column: 21, scope: !2476)
!2502 = !DILocation(line: 1062, column: 32, scope: !2476)
!2503 = !DILocation(line: 1063, column: 3, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1063, column: 3)
!2505 = !DILocation(line: 1064, column: 9, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1063, column: 3)
!2507 = !DILocation(line: 1064, column: 4, scope: !2506)
!2508 = !DILocation(line: 1064, column: 22, scope: !2506)
!2509 = !DILocation(line: 1064, column: 37, scope: !2506)
!2510 = !DILocation(line: 1063, column: 37, scope: !2506)
!2511 = !DILocation(line: 1063, column: 17, scope: !2506)
!2512 = distinct !{!2512, !2503, !2513}
!2513 = !DILocation(line: 1064, column: 39, scope: !2504)
!2514 = !DILocation(line: 1065, column: 8, scope: !2476)
!2515 = !DILocation(line: 1065, column: 3, scope: !2476)
!2516 = !DILocation(line: 1065, column: 21, scope: !2476)
!2517 = !DILocation(line: 1065, column: 32, scope: !2476)
!2518 = !DILocation(line: 1066, column: 34, scope: !2476)
!2519 = !DILocation(line: 1066, column: 45, scope: !2476)
!2520 = !DILocation(line: 1066, column: 8, scope: !2476)
!2521 = !DILocation(line: 1066, column: 3, scope: !2476)
!2522 = !DILocation(line: 1066, column: 21, scope: !2476)
!2523 = !DILocation(line: 1066, column: 32, scope: !2476)
!2524 = !DILocation(line: 1067, column: 34, scope: !2476)
!2525 = !DILocation(line: 1067, column: 45, scope: !2476)
!2526 = !DILocation(line: 1067, column: 8, scope: !2476)
!2527 = !DILocation(line: 1067, column: 3, scope: !2476)
!2528 = !DILocation(line: 1067, column: 21, scope: !2476)
!2529 = !DILocation(line: 1067, column: 32, scope: !2476)
!2530 = !DILocation(line: 1068, column: 34, scope: !2476)
!2531 = !DILocation(line: 1068, column: 45, scope: !2476)
!2532 = !DILocation(line: 1068, column: 8, scope: !2476)
!2533 = !DILocation(line: 1068, column: 3, scope: !2476)
!2534 = !DILocation(line: 1068, column: 21, scope: !2476)
!2535 = !DILocation(line: 1068, column: 32, scope: !2476)
!2536 = !DILocation(line: 1069, column: 34, scope: !2476)
!2537 = !DILocation(line: 1069, column: 45, scope: !2476)
!2538 = !DILocation(line: 1069, column: 8, scope: !2476)
!2539 = !DILocation(line: 1069, column: 3, scope: !2476)
!2540 = !DILocation(line: 1069, column: 21, scope: !2476)
!2541 = !DILocation(line: 1069, column: 32, scope: !2476)
!2542 = !DILocation(line: 1070, column: 34, scope: !2476)
!2543 = !DILocation(line: 1070, column: 45, scope: !2476)
!2544 = !DILocation(line: 1070, column: 8, scope: !2476)
!2545 = !DILocation(line: 1070, column: 3, scope: !2476)
!2546 = !DILocation(line: 1070, column: 21, scope: !2476)
!2547 = !DILocation(line: 1070, column: 32, scope: !2476)
!2548 = !DILocation(line: 1071, column: 34, scope: !2476)
!2549 = !DILocation(line: 1071, column: 45, scope: !2476)
!2550 = !DILocation(line: 1071, column: 8, scope: !2476)
!2551 = !DILocation(line: 1071, column: 3, scope: !2476)
!2552 = !DILocation(line: 1071, column: 21, scope: !2476)
!2553 = !DILocation(line: 1071, column: 32, scope: !2476)
!2554 = !DILocation(line: 1072, column: 34, scope: !2476)
!2555 = !DILocation(line: 1072, column: 45, scope: !2476)
!2556 = !DILocation(line: 1072, column: 8, scope: !2476)
!2557 = !DILocation(line: 1072, column: 3, scope: !2476)
!2558 = !DILocation(line: 1072, column: 21, scope: !2476)
!2559 = !DILocation(line: 1072, column: 32, scope: !2476)
!2560 = !DILocation(line: 1073, column: 8, scope: !2476)
!2561 = !DILocation(line: 1073, column: 3, scope: !2476)
!2562 = !DILocation(line: 1073, column: 21, scope: !2476)
!2563 = !DILocation(line: 1073, column: 32, scope: !2476)
!2564 = !DILocation(line: 1074, column: 8, scope: !2476)
!2565 = !DILocation(line: 1074, column: 3, scope: !2476)
!2566 = !DILocation(line: 1074, column: 21, scope: !2476)
!2567 = !DILocation(line: 1074, column: 32, scope: !2476)
!2568 = !DILocation(line: 1075, column: 3, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1075, column: 3)
!2570 = !DILocation(line: 1076, column: 35, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1075, column: 3)
!2572 = !DILocation(line: 1076, column: 46, scope: !2571)
!2573 = !DILocation(line: 1076, column: 9, scope: !2571)
!2574 = !DILocation(line: 1076, column: 4, scope: !2571)
!2575 = !DILocation(line: 1076, column: 22, scope: !2571)
!2576 = !DILocation(line: 1076, column: 33, scope: !2571)
!2577 = !DILocation(line: 1075, column: 24, scope: !2571)
!2578 = !DILocation(line: 1075, column: 17, scope: !2571)
!2579 = distinct !{!2579, !2568, !2580}
!2580 = !DILocation(line: 1076, column: 55, scope: !2569)
!2581 = !DILocation(line: 1077, column: 34, scope: !2476)
!2582 = !DILocation(line: 1077, column: 45, scope: !2476)
!2583 = !DILocation(line: 1077, column: 8, scope: !2476)
!2584 = !DILocation(line: 1077, column: 3, scope: !2476)
!2585 = !DILocation(line: 1077, column: 21, scope: !2476)
!2586 = !DILocation(line: 1077, column: 32, scope: !2476)
!2587 = !DILocation(line: 1078, column: 2, scope: !2476)
!2588 = !DILocation(line: 1051, column: 28, scope: !2471)
!2589 = distinct !{!2589, !2474, !2590}
!2590 = !DILocation(line: 1078, column: 2, scope: !2472)
!2591 = !DILocation(line: 1079, column: 1, scope: !2374)
!2592 = distinct !DISubprogram(name: "addbonds2reslib", scope: !3, file: !3, line: 1081, type: !2375, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2593)
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2594 = !DILocalVariable(name: "rlp", arg: 1, scope: !2592, file: !3, line: 1081, type: !298)
!2595 = !DILocalVariable(name: "res", scope: !2592, file: !3, line: 1083, type: !169)
!2596 = !DILocalVariable(name: "bp", scope: !2592, file: !3, line: 1084, type: !183)
!2597 = !DILocalVariable(name: "b", scope: !2592, file: !3, line: 1085, type: !11)
!2598 = !DILocalVariable(name: "a", scope: !2592, file: !3, line: 1086, type: !11)
!2599 = !DILocalVariable(name: "ai", scope: !2592, file: !3, line: 1086, type: !11)
!2600 = !DILocalVariable(name: "aj", scope: !2592, file: !3, line: 1086, type: !11)
!2601 = !DILocalVariable(name: "api", scope: !2592, file: !3, line: 1087, type: !201)
!2602 = !DILocalVariable(name: "apj", scope: !2592, file: !3, line: 1087, type: !201)
!2603 = !DILocation(line: 0, scope: !2592)
!2604 = !DILocation(line: 1089, column: 18, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1089, column: 2)
!2606 = !DILocation(line: 1089, column: 2, scope: !2605)
!2607 = !DILocation(line: 1090, column: 20, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1090, column: 7)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 1089, column: 52)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 1089, column: 2)
!2611 = !DILocation(line: 1090, column: 7, scope: !2608)
!2612 = !DILocation(line: 1090, column: 41, scope: !2608)
!2613 = !DILocation(line: 1090, column: 7, scope: !2609)
!2614 = !DILocation(line: 0, scope: !2605)
!2615 = !DILocation(line: 1092, column: 13, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 1091, column: 8)
!2617 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 1090, column: 47)
!2618 = !DILocation(line: 1092, column: 21, scope: !2616)
!2619 = !DILocation(line: 1092, column: 5, scope: !2616)
!2620 = !DILocation(line: 1091, column: 15, scope: !2616)
!2621 = !DILocation(line: 1093, column: 5, scope: !2616)
!2622 = !DILocation(line: 1091, column: 8, scope: !2617)
!2623 = !DILocation(line: 1094, column: 5, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 1093, column: 14)
!2625 = !DILocation(line: 1096, column: 5, scope: !2624)
!2626 = !DILocation(line: 1097, column: 5, scope: !2624)
!2627 = !DILocation(line: 1099, column: 20, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 1099, column: 4)
!2629 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 1099, column: 4)
!2630 = !DILocation(line: 1099, column: 18, scope: !2628)
!2631 = !DILocation(line: 1099, column: 4, scope: !2629)
!2632 = !DILocation(line: 1100, column: 25, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1099, column: 34)
!2634 = !DILocation(line: 1100, column: 10, scope: !2633)
!2635 = !DILocation(line: 1100, column: 23, scope: !2633)
!2636 = !DILocation(line: 1101, column: 25, scope: !2633)
!2637 = !DILocation(line: 1101, column: 10, scope: !2633)
!2638 = !DILocation(line: 1101, column: 23, scope: !2633)
!2639 = !DILocation(line: 1102, column: 7, scope: !2633)
!2640 = !DILocation(line: 1103, column: 7, scope: !2633)
!2641 = !DILocation(line: 1104, column: 17, scope: !2633)
!2642 = !DILocation(line: 1104, column: 12, scope: !2633)
!2643 = !DILocation(line: 1105, column: 5, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 1105, column: 5)
!2645 = !DILocation(line: 1106, column: 15, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1106, column: 10)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 1105, column: 42)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1105, column: 5)
!2649 = !DILocation(line: 1106, column: 10, scope: !2646)
!2650 = !DILocation(line: 1106, column: 30, scope: !2646)
!2651 = !DILocation(line: 1106, column: 10, scope: !2647)
!2652 = !DILocation(line: 1107, column: 7, scope: !2646)
!2653 = !DILocation(line: 1108, column: 20, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 1108, column: 15)
!2655 = !DILocation(line: 1108, column: 15, scope: !2654)
!2656 = !DILocation(line: 1108, column: 35, scope: !2654)
!2657 = !DILocation(line: 1108, column: 15, scope: !2646)
!2658 = !DILocation(line: 1109, column: 12, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1108, column: 45)
!2660 = !DILocation(line: 1109, column: 7, scope: !2659)
!2661 = !DILocation(line: 1109, column: 27, scope: !2659)
!2662 = !DILocation(line: 1110, column: 12, scope: !2659)
!2663 = !DILocation(line: 1110, column: 22, scope: !2659)
!2664 = !DILocation(line: 1111, column: 7, scope: !2659)
!2665 = !DILocation(line: 1113, column: 5, scope: !2647)
!2666 = !DILocation(line: 1105, column: 38, scope: !2648)
!2667 = !DILocation(line: 1105, column: 19, scope: !2648)
!2668 = distinct !{!2668, !2643, !2669}
!2669 = !DILocation(line: 1113, column: 5, scope: !2644)
!2670 = !DILocation(line: 1114, column: 17, scope: !2633)
!2671 = !DILocation(line: 1114, column: 12, scope: !2633)
!2672 = !DILocation(line: 1115, column: 5, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 1115, column: 5)
!2674 = !DILocation(line: 1116, column: 15, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1116, column: 10)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 1115, column: 42)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1115, column: 5)
!2678 = !DILocation(line: 1116, column: 10, scope: !2675)
!2679 = !DILocation(line: 1116, column: 30, scope: !2675)
!2680 = !DILocation(line: 1116, column: 10, scope: !2676)
!2681 = !DILocation(line: 1117, column: 7, scope: !2675)
!2682 = !DILocation(line: 1118, column: 20, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1118, column: 15)
!2684 = !DILocation(line: 1118, column: 15, scope: !2683)
!2685 = !DILocation(line: 1118, column: 35, scope: !2683)
!2686 = !DILocation(line: 1118, column: 15, scope: !2675)
!2687 = !DILocation(line: 1119, column: 12, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 1118, column: 45)
!2689 = !DILocation(line: 1119, column: 7, scope: !2688)
!2690 = !DILocation(line: 1119, column: 27, scope: !2688)
!2691 = !DILocation(line: 1120, column: 12, scope: !2688)
!2692 = !DILocation(line: 1120, column: 22, scope: !2688)
!2693 = !DILocation(line: 1121, column: 7, scope: !2688)
!2694 = !DILocation(line: 1123, column: 5, scope: !2676)
!2695 = !DILocation(line: 1115, column: 38, scope: !2677)
!2696 = !DILocation(line: 1115, column: 19, scope: !2677)
!2697 = distinct !{!2697, !2672, !2698}
!2698 = !DILocation(line: 1123, column: 5, scope: !2673)
!2699 = !DILocation(line: 1124, column: 4, scope: !2633)
!2700 = !DILocation(line: 1099, column: 30, scope: !2628)
!2701 = distinct !{!2701, !2631, !2702}
!2702 = !DILocation(line: 1124, column: 4, scope: !2629)
!2703 = !DILocation(line: 1125, column: 23, scope: !2617)
!2704 = !DILocation(line: 1125, column: 9, scope: !2617)
!2705 = !DILocation(line: 1125, column: 21, scope: !2617)
!2706 = !DILocation(line: 1126, column: 9, scope: !2617)
!2707 = !DILocation(line: 1126, column: 20, scope: !2617)
!2708 = !DILocation(line: 1127, column: 4, scope: !2617)
!2709 = !DILocation(line: 1129, column: 2, scope: !2609)
!2710 = !DILocation(line: 1089, column: 44, scope: !2610)
!2711 = distinct !{!2711, !2606, !2712}
!2712 = !DILocation(line: 1129, column: 2, scope: !2605)
!2713 = !DILocation(line: 1130, column: 57, scope: !2592)
!2714 = !DILocation(line: 1130, column: 2, scope: !2592)
!2715 = !DILocation(line: 1131, column: 2, scope: !2592)
!2716 = !DILocation(line: 1132, column: 2, scope: !2592)
!2717 = !DILocation(line: 1133, column: 1, scope: !2592)
!2718 = distinct !DISubprogram(name: "setrlibattrs", scope: !3, file: !3, line: 978, type: !2719, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !298, !12}
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DILocalVariable(name: "rlp", arg: 1, scope: !2718, file: !3, line: 978, type: !298)
!2723 = !DILocalVariable(name: "line", arg: 2, scope: !2718, file: !3, line: 978, type: !12)
!2724 = !DILocalVariable(name: "rkind", scope: !2718, file: !3, line: 980, type: !1359)
!2725 = !DILocalVariable(name: "rakind", scope: !2718, file: !3, line: 980, type: !1359)
!2726 = !DILocation(line: 0, scope: !2718)
!2727 = !DILocation(line: 980, column: 2, scope: !2718)
!2728 = !DILocation(line: 980, column: 7, scope: !2718)
!2729 = !DILocation(line: 980, column: 21, scope: !2718)
!2730 = !DILocation(line: 982, column: 43, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 982, column: 6)
!2732 = !DILocation(line: 982, column: 50, scope: !2731)
!2733 = !DILocation(line: 982, column: 6, scope: !2731)
!2734 = !DILocation(line: 982, column: 59, scope: !2731)
!2735 = !DILocation(line: 982, column: 6, scope: !2718)
!2736 = !DILocation(line: 983, column: 3, scope: !2731)
!2737 = !DILocation(line: 984, column: 14, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 984, column: 6)
!2739 = !DILocation(line: 984, column: 6, scope: !2738)
!2740 = !DILocation(line: 984, column: 29, scope: !2738)
!2741 = !DILocation(line: 984, column: 6, scope: !2718)
!2742 = !DILocation(line: 985, column: 8, scope: !2738)
!2743 = !DILocation(line: 985, column: 18, scope: !2738)
!2744 = !DILocation(line: 985, column: 3, scope: !2738)
!2745 = !DILocation(line: 986, column: 19, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 986, column: 11)
!2747 = !DILocation(line: 986, column: 11, scope: !2746)
!2748 = !DILocation(line: 986, column: 34, scope: !2746)
!2749 = !DILocation(line: 986, column: 11, scope: !2738)
!2750 = !DILocation(line: 987, column: 8, scope: !2746)
!2751 = !DILocation(line: 987, column: 18, scope: !2746)
!2752 = !DILocation(line: 987, column: 3, scope: !2746)
!2753 = !DILocation(line: 988, column: 19, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 988, column: 11)
!2755 = !DILocation(line: 988, column: 11, scope: !2754)
!2756 = !DILocation(line: 988, column: 33, scope: !2754)
!2757 = !DILocation(line: 988, column: 11, scope: !2746)
!2758 = !DILocation(line: 989, column: 8, scope: !2754)
!2759 = !DILocation(line: 989, column: 18, scope: !2754)
!2760 = !DILocation(line: 989, column: 3, scope: !2754)
!2761 = !DILocation(line: 990, column: 14, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 990, column: 6)
!2763 = !DILocation(line: 990, column: 6, scope: !2762)
!2764 = !DILocation(line: 990, column: 33, scope: !2762)
!2765 = !DILocation(line: 990, column: 6, scope: !2718)
!2766 = !DILocation(line: 991, column: 8, scope: !2762)
!2767 = !DILocation(line: 991, column: 22, scope: !2762)
!2768 = !DILocation(line: 991, column: 3, scope: !2762)
!2769 = !DILocation(line: 992, column: 19, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 992, column: 11)
!2771 = !DILocation(line: 992, column: 11, scope: !2770)
!2772 = !DILocation(line: 992, column: 39, scope: !2770)
!2773 = !DILocation(line: 992, column: 11, scope: !2762)
!2774 = !DILocation(line: 993, column: 8, scope: !2770)
!2775 = !DILocation(line: 993, column: 22, scope: !2770)
!2776 = !DILocation(line: 993, column: 3, scope: !2770)
!2777 = !DILocation(line: 994, column: 1, scope: !2718)
!2778 = distinct !DISubprogram(name: "addqr2reslib", scope: !3, file: !3, line: 1135, type: !2375, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784}
!2780 = !DILocalVariable(name: "rlp", arg: 1, scope: !2778, file: !3, line: 1135, type: !298)
!2781 = !DILocalVariable(name: "res", scope: !2778, file: !3, line: 1137, type: !169)
!2782 = !DILocalVariable(name: "a", scope: !2778, file: !3, line: 1138, type: !11)
!2783 = !DILocalVariable(name: "ap", scope: !2778, file: !3, line: 1139, type: !201)
!2784 = !DILocalVariable(name: "apr", scope: !2778, file: !3, line: 1139, type: !201)
!2785 = !DILocation(line: 0, scope: !2778)
!2786 = !DILocation(line: 1141, column: 18, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 1141, column: 2)
!2788 = !DILocation(line: 1141, column: 2, scope: !2787)
!2789 = !DILocation(line: 1142, column: 20, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 1142, column: 7)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1141, column: 52)
!2792 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1141, column: 2)
!2793 = !DILocation(line: 1142, column: 7, scope: !2790)
!2794 = !DILocation(line: 1142, column: 41, scope: !2790)
!2795 = !DILocation(line: 1142, column: 7, scope: !2791)
!2796 = !DILocation(line: 0, scope: !2787)
!2797 = !DILocation(line: 1143, column: 32, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 1143, column: 4)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1143, column: 4)
!2800 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1142, column: 47)
!2801 = !DILocation(line: 1143, column: 30, scope: !2798)
!2802 = !DILocation(line: 1143, column: 4, scope: !2799)
!2803 = !DILocation(line: 1144, column: 35, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 1144, column: 9)
!2805 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1143, column: 52)
!2806 = !DILocation(line: 1144, column: 16, scope: !2804)
!2807 = !DILocation(line: 1144, column: 14, scope: !2804)
!2808 = !DILocation(line: 1144, column: 9, scope: !2805)
!2809 = !DILocation(line: 1146, column: 26, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 1144, column: 50)
!2811 = !DILocation(line: 1146, column: 11, scope: !2810)
!2812 = !DILocation(line: 1146, column: 20, scope: !2810)
!2813 = !DILocation(line: 1147, column: 26, scope: !2810)
!2814 = !DILocation(line: 1147, column: 11, scope: !2810)
!2815 = !DILocation(line: 1147, column: 20, scope: !2810)
!2816 = !DILocation(line: 1148, column: 26, scope: !2810)
!2817 = !DILocation(line: 1148, column: 11, scope: !2810)
!2818 = !DILocation(line: 1148, column: 20, scope: !2810)
!2819 = !DILocation(line: 1149, column: 26, scope: !2810)
!2820 = !DILocation(line: 1149, column: 11, scope: !2810)
!2821 = !DILocation(line: 1149, column: 20, scope: !2810)
!2822 = !DILocation(line: 1150, column: 26, scope: !2810)
!2823 = !DILocation(line: 1150, column: 11, scope: !2810)
!2824 = !DILocation(line: 1150, column: 20, scope: !2810)
!2825 = !DILocation(line: 1151, column: 26, scope: !2810)
!2826 = !DILocation(line: 1151, column: 11, scope: !2810)
!2827 = !DILocation(line: 1151, column: 20, scope: !2810)
!2828 = !DILocation(line: 1152, column: 26, scope: !2810)
!2829 = !DILocation(line: 1152, column: 11, scope: !2810)
!2830 = !DILocation(line: 1152, column: 20, scope: !2810)
!2831 = !DILocation(line: 1153, column: 5, scope: !2810)
!2832 = !DILocation(line: 1154, column: 4, scope: !2805)
!2833 = !DILocation(line: 1143, column: 42, scope: !2798)
!2834 = !DILocation(line: 1143, column: 48, scope: !2798)
!2835 = distinct !{!2835, !2802, !2836}
!2836 = !DILocation(line: 1154, column: 4, scope: !2799)
!2837 = !DILocation(line: 1155, column: 4, scope: !2800)
!2838 = !DILocation(line: 1157, column: 2, scope: !2791)
!2839 = !DILocation(line: 1141, column: 44, scope: !2792)
!2840 = distinct !{!2840, !2788, !2841}
!2841 = !DILocation(line: 1157, column: 2, scope: !2787)
!2842 = !DILocation(line: 1158, column: 57, scope: !2778)
!2843 = !DILocation(line: 1158, column: 2, scope: !2778)
!2844 = !DILocation(line: 1159, column: 2, scope: !2778)
!2845 = !DILocation(line: 1160, column: 2, scope: !2778)
!2846 = !DILocation(line: 1161, column: 1, scope: !2778)
!2847 = distinct !DISubprogram(name: "findatom", scope: !3, file: !3, line: 1202, type: !2848, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!201, !169, !12}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "res", arg: 1, scope: !2847, file: !3, line: 1202, type: !169)
!2852 = !DILocalVariable(name: "aname", arg: 2, scope: !2847, file: !3, line: 1202, type: !12)
!2853 = !DILocalVariable(name: "a", scope: !2847, file: !3, line: 1204, type: !11)
!2854 = !DILocation(line: 0, scope: !2847)
!2855 = !DILocation(line: 1206, column: 23, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1206, column: 2)
!2857 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1206, column: 2)
!2858 = !DILocation(line: 1206, column: 16, scope: !2856)
!2859 = !DILocation(line: 1206, column: 2, scope: !2857)
!2860 = !DILocation(line: 1207, column: 21, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1207, column: 7)
!2862 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1206, column: 38)
!2863 = !DILocation(line: 1207, column: 16, scope: !2861)
!2864 = !DILocation(line: 1207, column: 34, scope: !2861)
!2865 = !DILocation(line: 1207, column: 8, scope: !2861)
!2866 = !DILocation(line: 1207, column: 7, scope: !2862)
!2867 = !DILocation(line: 1208, column: 18, scope: !2861)
!2868 = !DILocation(line: 1208, column: 13, scope: !2861)
!2869 = !DILocation(line: 1208, column: 4, scope: !2861)
!2870 = !DILocation(line: 1209, column: 2, scope: !2862)
!2871 = !DILocation(line: 1206, column: 34, scope: !2856)
!2872 = distinct !{!2872, !2859, !2873}
!2873 = !DILocation(line: 1209, column: 2, scope: !2857)
!2874 = !DILocation(line: 1210, column: 2, scope: !2847)
!2875 = !DILocation(line: 1211, column: 1, scope: !2847)
!2876 = distinct !DISubprogram(name: "addchi2reslib", scope: !3, file: !3, line: 1163, type: !2375, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2877)
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883, !2884, !2886, !2887}
!2878 = !DILocalVariable(name: "rlp", arg: 1, scope: !2876, file: !3, line: 1163, type: !298)
!2879 = !DILocalVariable(name: "res", scope: !2876, file: !3, line: 1165, type: !169)
!2880 = !DILocalVariable(name: "cp", scope: !2876, file: !3, line: 1166, type: !190)
!2881 = !DILocalVariable(name: "a", scope: !2876, file: !3, line: 1167, type: !11)
!2882 = !DILocalVariable(name: "c", scope: !2876, file: !3, line: 1167, type: !11)
!2883 = !DILocalVariable(name: "ca", scope: !2876, file: !3, line: 1167, type: !11)
!2884 = !DILocalVariable(name: "pos", scope: !2876, file: !3, line: 1168, type: !2885)
!2885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 768, elements: !196)
!2886 = !DILocalVariable(name: "dvol", scope: !2876, file: !3, line: 1169, type: !2885)
!2887 = !DILocalVariable(name: "vol", scope: !2876, file: !3, line: 1170, type: !47)
!2888 = !DILocation(line: 0, scope: !2876)
!2889 = !DILocation(line: 1168, column: 2, scope: !2876)
!2890 = !DILocation(line: 1168, column: 11, scope: !2876)
!2891 = !DILocation(line: 1169, column: 2, scope: !2876)
!2892 = !DILocation(line: 1169, column: 11, scope: !2876)
!2893 = !DILocation(line: 1170, column: 2, scope: !2876)
!2894 = !DILocation(line: 1170, column: 10, scope: !2876)
!2895 = !DILocation(line: 1172, column: 18, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 1172, column: 2)
!2897 = !DILocation(line: 1172, column: 2, scope: !2896)
!2898 = !DILocation(line: 1173, column: 21, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 1173, column: 7)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 1172, column: 52)
!2901 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 1172, column: 2)
!2902 = !DILocation(line: 1173, column: 8, scope: !2899)
!2903 = !DILocation(line: 1173, column: 7, scope: !2900)
!2904 = !DILocation(line: 0, scope: !2896)
!2905 = !DILocation(line: 1175, column: 13, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1174, column: 8)
!2907 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 1173, column: 43)
!2908 = !DILocation(line: 1175, column: 19, scope: !2906)
!2909 = !DILocation(line: 1175, column: 5, scope: !2906)
!2910 = !DILocation(line: 1174, column: 15, scope: !2906)
!2911 = !DILocation(line: 1176, column: 5, scope: !2906)
!2912 = !DILocation(line: 1174, column: 8, scope: !2907)
!2913 = !DILocation(line: 1177, column: 14, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 1176, column: 14)
!2915 = !DILocation(line: 1179, column: 11, scope: !2914)
!2916 = !DILocation(line: 1177, column: 5, scope: !2914)
!2917 = !DILocation(line: 1180, column: 5, scope: !2914)
!2918 = !DILocation(line: 1182, column: 21, scope: !2907)
!2919 = !DILocation(line: 1182, column: 9, scope: !2907)
!2920 = !DILocation(line: 1182, column: 19, scope: !2907)
!2921 = !DILocation(line: 1183, column: 9, scope: !2907)
!2922 = !DILocation(line: 1183, column: 18, scope: !2907)
!2923 = !DILocation(line: 1184, column: 20, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1184, column: 4)
!2925 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1184, column: 4)
!2926 = !DILocation(line: 1184, column: 18, scope: !2924)
!2927 = !DILocation(line: 1184, column: 4, scope: !2925)
!2928 = !DILocation(line: 1185, column: 5, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1185, column: 5)
!2930 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 1184, column: 32)
!2931 = !DILocation(line: 1186, column: 27, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1185, column: 29)
!2933 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 1185, column: 5)
!2934 = !DILocation(line: 1186, column: 34, scope: !2932)
!2935 = !DILocation(line: 1186, column: 15, scope: !2932)
!2936 = !DILocation(line: 1186, column: 11, scope: !2932)
!2937 = !DILocation(line: 1186, column: 25, scope: !2932)
!2938 = !DILocation(line: 1187, column: 23, scope: !2932)
!2939 = !DILocation(line: 1187, column: 18, scope: !2932)
!2940 = !DILocation(line: 1187, column: 35, scope: !2932)
!2941 = !DILocation(line: 1187, column: 6, scope: !2932)
!2942 = !DILocation(line: 1187, column: 16, scope: !2932)
!2943 = !DILocation(line: 1188, column: 23, scope: !2932)
!2944 = !DILocation(line: 1188, column: 18, scope: !2932)
!2945 = !DILocation(line: 1188, column: 35, scope: !2932)
!2946 = !DILocation(line: 1188, column: 6, scope: !2932)
!2947 = !DILocation(line: 1188, column: 16, scope: !2932)
!2948 = !DILocation(line: 1189, column: 23, scope: !2932)
!2949 = !DILocation(line: 1189, column: 18, scope: !2932)
!2950 = !DILocation(line: 1189, column: 35, scope: !2932)
!2951 = !DILocation(line: 1189, column: 6, scope: !2932)
!2952 = !DILocation(line: 1189, column: 16, scope: !2932)
!2953 = !DILocation(line: 1190, column: 5, scope: !2932)
!2954 = !DILocation(line: 1185, column: 25, scope: !2933)
!2955 = !DILocation(line: 1185, column: 19, scope: !2933)
!2956 = distinct !{!2956, !2928, !2957}
!2957 = !DILocation(line: 1190, column: 5, scope: !2929)
!2958 = !DILocation(line: 1191, column: 39, scope: !2930)
!2959 = !DILocation(line: 1191, column: 29, scope: !2930)
!2960 = !DILocation(line: 1191, column: 54, scope: !2930)
!2961 = !DILocation(line: 1191, column: 44, scope: !2930)
!2962 = !DILocation(line: 1191, column: 5, scope: !2930)
!2963 = !DILocation(line: 1192, column: 18, scope: !2930)
!2964 = !DILocation(line: 1192, column: 9, scope: !2930)
!2965 = !DILocation(line: 1192, column: 16, scope: !2930)
!2966 = !DILocation(line: 1193, column: 7, scope: !2930)
!2967 = !DILocation(line: 1194, column: 4, scope: !2930)
!2968 = !DILocation(line: 1184, column: 28, scope: !2924)
!2969 = distinct !{!2969, !2927, !2970}
!2970 = !DILocation(line: 1194, column: 4, scope: !2925)
!2971 = !DILocation(line: 1195, column: 4, scope: !2907)
!2972 = !DILocation(line: 1197, column: 2, scope: !2900)
!2973 = !DILocation(line: 1172, column: 44, scope: !2901)
!2974 = distinct !{!2974, !2897, !2975}
!2975 = !DILocation(line: 1197, column: 2, scope: !2896)
!2976 = !DILocation(line: 1198, column: 11, scope: !2876)
!2977 = !DILocation(line: 1199, column: 8, scope: !2876)
!2978 = !DILocation(line: 1199, column: 24, scope: !2876)
!2979 = !DILocation(line: 1198, column: 2, scope: !2876)
!2980 = !DILocation(line: 1200, column: 1, scope: !2876)
