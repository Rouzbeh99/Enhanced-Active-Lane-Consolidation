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
  call void @llvm.dbg.declare(metadata i8** undef, metadata !364, metadata !DIExpression()), !dbg !367
  %2 = call %struct.reslib_t* @known_reslib(i8* %0), !dbg !368
  call void @llvm.dbg.value(metadata %struct.reslib_t* %2, metadata !365, metadata !DIExpression()), !dbg !366
  %3 = icmp eq %struct.reslib_t* %2, null, !dbg !370
  br i1 %3, label %4, label %10, !dbg !371

4:                                                ; preds = %1
  %5 = call %struct.reslib_t* @read_reslib(i8* %0), !dbg !372
  call void @llvm.dbg.value(metadata %struct.reslib_t* %5, metadata !365, metadata !DIExpression()), !dbg !366
  %6 = icmp eq %struct.reslib_t* %5, null, !dbg !375
  br i1 %6, label %7, label %10, !dbg !376

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !377, !tbaa !379
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #11, !dbg !383
  call void @exit(i32 1) #12, !dbg !384
  unreachable, !dbg !384

10:                                               ; preds = %4, %1
  %.01 = phi %struct.reslib_t* [ %2, %1 ], [ %5, %4 ], !dbg !385
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.01, metadata !365, metadata !DIExpression()), !dbg !366
  %11 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i64 0, i32 2, !dbg !386
  %12 = load i32, i32* %11, align 8, !dbg !386, !tbaa !388
  %13 = icmp eq i32 %12, 0, !dbg !391
  br i1 %13, label %26, label %14, !dbg !392

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i64 0, i32 2, !dbg !393
  %16 = load i32, i32* %15, align 8, !dbg !393, !tbaa !388
  %17 = icmp eq i32 %16, 1, !dbg !395
  br i1 %17, label %26, label %18, !dbg !396

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i64 0, i32 2, !dbg !397
  %20 = load i32, i32* %19, align 8, !dbg !397, !tbaa !388
  %21 = icmp eq i32 %20, 2, !dbg !399
  br i1 %21, label %26, label %22, !dbg !400

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.01, i64 0, i32 2, !dbg !401
  %24 = load i32, i32* %23, align 8, !dbg !401, !tbaa !388
  %25 = icmp eq i32 %24, 3, !dbg !403
  %. = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), !dbg !404
  br label %26, !dbg !404

26:                                               ; preds = %22, %18, %14, %10
  %.0 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %10 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %14 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %18 ], [ %., %22 ], !dbg !405
  ret i8* %.0, !dbg !406
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @known_reslib(i8* %0) #0 !dbg !407 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !411, metadata !DIExpression()), !dbg !413
  %2 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !414, !tbaa !379
  call void @llvm.dbg.value(metadata %struct.reslib_t* %2, metadata !412, metadata !DIExpression()), !dbg !413
  %.not = icmp eq %struct.reslib_t* %2, null, !dbg !416
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !416

.lr.ph:                                           ; preds = %1, %7
  %.013 = phi %struct.reslib_t* [ %9, %7 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.013, metadata !412, metadata !DIExpression()), !dbg !413
  %3 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.013, i64 0, i32 1, !dbg !417
  %4 = load i8*, i8** %3, align 8, !dbg !417, !tbaa !421
  %5 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) %0) #13, !dbg !422
  %6 = icmp eq i32 %5, 0, !dbg !423
  br i1 %6, label %._crit_edge, label %7, !dbg !424

7:                                                ; preds = %.lr.ph
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.013, i64 0, i32 0, !dbg !425
  %9 = load %struct.reslib_t*, %struct.reslib_t** %8, align 8, !dbg !425, !tbaa !426
  call void @llvm.dbg.value(metadata %struct.reslib_t* %9, metadata !412, metadata !DIExpression()), !dbg !413
  %.not4 = icmp eq %struct.reslib_t* %9, null, !dbg !416
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !dbg !416, !llvm.loop !427

._crit_edge:                                      ; preds = %1, %7, %.lr.ph
  %.0 = phi %struct.reslib_t* [ %.013, %.lr.ph ], [ null, %7 ], [ null, %1 ], !dbg !413
  ret %struct.reslib_t* %.0, !dbg !429
}

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @read_reslib(i8* %0) #0 !dbg !430 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !432, metadata !DIExpression()), !dbg !442
  %7 = bitcast %struct._IO_FILE** %2 to i8*, !dbg !443
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #14, !dbg !443
  %8 = bitcast %struct._IO_FILE** %3 to i8*, !dbg !444
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14, !dbg !444
  %9 = bitcast %struct._IO_FILE** %4 to i8*, !dbg !445
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #14, !dbg !445
  %10 = bitcast %struct._IO_FILE** %5 to i8*, !dbg !446
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #14, !dbg !446
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !447
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %11) #14, !dbg !447
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !441, metadata !DIExpression()), !dbg !448
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !449
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %2, metadata !433, metadata !DIExpression(DW_OP_deref)), !dbg !442
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %3, metadata !437, metadata !DIExpression(DW_OP_deref)), !dbg !442
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %4, metadata !438, metadata !DIExpression(DW_OP_deref)), !dbg !442
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %5, metadata !439, metadata !DIExpression(DW_OP_deref)), !dbg !442
  %13 = call %struct.reslib_t* @read_reslib_header(i8* %0, %struct._IO_FILE** nonnull %2, %struct._IO_FILE** nonnull %3, %struct._IO_FILE** nonnull %4, %struct._IO_FILE** nonnull %5, i8* nonnull %12), !dbg !451
  call void @llvm.dbg.value(metadata %struct.reslib_t* %13, metadata !440, metadata !DIExpression()), !dbg !442
  %14 = icmp eq %struct.reslib_t* %13, null, !dbg !452
  br i1 %14, label %39, label %15, !dbg !453

15:                                               ; preds = %1
  call void @initatoms(), !dbg !454
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !455
  %17 = load i8, i8* %16, align 16, !dbg !455, !tbaa !457
  %.not = icmp eq i8 %17, 0, !dbg !455
  br i1 %.not, label %20, label %18, !dbg !458

18:                                               ; preds = %15
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !459
  call void @off2reslib(i8* nonnull %19, %struct.reslib_t* nonnull %13), !dbg !461
  br label %27, !dbg !462

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !463, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !433, metadata !DIExpression()), !dbg !442
  call void @pdb2reslib(%struct._IO_FILE* %21, %struct.reslib_t* nonnull %13), !dbg !465
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !466, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !437, metadata !DIExpression()), !dbg !442
  call void @bnd2reslib(%struct._IO_FILE* %22, %struct.reslib_t* nonnull %13), !dbg !467
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !468, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !433, metadata !DIExpression()), !dbg !442
  %24 = call i32 @fclose(%struct._IO_FILE* %23) #14, !dbg !469
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !470, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !437, metadata !DIExpression()), !dbg !442
  %26 = call i32 @fclose(%struct._IO_FILE* %25) #14, !dbg !471
  br label %27

27:                                               ; preds = %20, %18
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !472, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %28, metadata !438, metadata !DIExpression()), !dbg !442
  %.not1 = icmp eq %struct._IO_FILE* %28, null, !dbg !472
  br i1 %.not1, label %33, label %29, !dbg !474

29:                                               ; preds = %27
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !475, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %30, metadata !438, metadata !DIExpression()), !dbg !442
  call void @qr2reslib(%struct._IO_FILE* %30, %struct.reslib_t* nonnull %13), !dbg !477
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !478, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %31, metadata !438, metadata !DIExpression()), !dbg !442
  %32 = call i32 @fclose(%struct._IO_FILE* %31) #14, !dbg !479
  br label %33, !dbg !480

33:                                               ; preds = %29, %27
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !481, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %34, metadata !439, metadata !DIExpression()), !dbg !442
  %.not2 = icmp eq %struct._IO_FILE* %34, null, !dbg !481
  br i1 %.not2, label %39, label %35, !dbg !483

35:                                               ; preds = %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !484, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !439, metadata !DIExpression()), !dbg !442
  call void @chi2reslib(%struct._IO_FILE* %36, %struct.reslib_t* nonnull %13), !dbg !486
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !487, !tbaa !379
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %37, metadata !439, metadata !DIExpression()), !dbg !442
  %38 = call i32 @fclose(%struct._IO_FILE* %37) #14, !dbg !488
  br label %39, !dbg !489

39:                                               ; preds = %33, %35, %1
  %.0 = phi %struct.reslib_t* [ null, %1 ], [ %13, %35 ], [ %13, %33 ], !dbg !442
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !490
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %40) #14, !dbg !490
  %41 = bitcast %struct._IO_FILE** %5 to i8*, !dbg !490
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #14, !dbg !490
  %42 = bitcast %struct._IO_FILE** %4 to i8*, !dbg !490
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #14, !dbg !490
  %43 = bitcast %struct._IO_FILE** %3 to i8*, !dbg !490
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #14, !dbg !490
  %44 = bitcast %struct._IO_FILE** %2 to i8*, !dbg !490
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #14, !dbg !490
  ret %struct.reslib_t* %.0, !dbg !490
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @setreslibkind(i8* %0, i8* %1) #0 !dbg !491 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !495, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i8* %1, metadata !496, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata i8** undef, metadata !497, metadata !DIExpression()), !dbg !500
  %3 = call %struct.reslib_t* @known_reslib(i8* %0), !dbg !501
  call void @llvm.dbg.value(metadata %struct.reslib_t* %3, metadata !498, metadata !DIExpression()), !dbg !499
  %4 = icmp eq %struct.reslib_t* %3, null, !dbg !503
  br i1 %4, label %5, label %11, !dbg !504

5:                                                ; preds = %2
  %6 = call %struct.reslib_t* @read_reslib(i8* %0), !dbg !505
  call void @llvm.dbg.value(metadata %struct.reslib_t* %6, metadata !498, metadata !DIExpression()), !dbg !499
  %7 = icmp eq %struct.reslib_t* %6, null, !dbg !508
  br i1 %7, label %8, label %11, !dbg !509

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !510, !tbaa !379
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %0) #11, !dbg !512
  call void @exit(i32 1) #12, !dbg !513
  unreachable, !dbg !513

11:                                               ; preds = %5, %2
  %.0 = phi %struct.reslib_t* [ %3, %2 ], [ %6, %5 ], !dbg !514
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.0, metadata !498, metadata !DIExpression()), !dbg !499
  %12 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i64 0, i32 2, !dbg !515
  store i32 0, i32* %12, align 8, !dbg !516, !tbaa !388
  %13 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #13, !dbg !517
  %.not = icmp eq i32 %13, 0, !dbg !517
  br i1 %.not, label %16, label %14, !dbg !519

14:                                               ; preds = %11
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !520
  %.not1 = icmp eq i32 %15, 0, !dbg !520
  br i1 %.not1, label %16, label %18, !dbg !521

16:                                               ; preds = %14, %11
  %17 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i64 0, i32 2, !dbg !522
  store i32 1, i32* %17, align 8, !dbg !523, !tbaa !388
  br label %30, !dbg !524

18:                                               ; preds = %14
  %19 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !525
  %.not2 = icmp eq i32 %19, 0, !dbg !525
  br i1 %.not2, label %22, label %20, !dbg !527

20:                                               ; preds = %18
  %21 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !528
  %.not3 = icmp eq i32 %21, 0, !dbg !528
  br i1 %.not3, label %22, label %24, !dbg !529

22:                                               ; preds = %20, %18
  %23 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i64 0, i32 2, !dbg !530
  store i32 2, i32* %23, align 8, !dbg !531, !tbaa !388
  br label %30, !dbg !532

24:                                               ; preds = %20
  %25 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #13, !dbg !533
  %.not4 = icmp eq i32 %25, 0, !dbg !533
  br i1 %.not4, label %28, label %26, !dbg !535

26:                                               ; preds = %24
  %27 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !536
  %.not5 = icmp eq i32 %27, 0, !dbg !536
  br i1 %.not5, label %28, label %30, !dbg !537

28:                                               ; preds = %26, %24
  %29 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i64 0, i32 2, !dbg !538
  store i32 3, i32* %29, align 8, !dbg !539, !tbaa !388
  br label %30, !dbg !540

30:                                               ; preds = %22, %28, %26, %16
  %31 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.0, i64 0, i32 2, !dbg !541
  %32 = load i32, i32* %31, align 8, !dbg !541, !tbaa !388
  ret i32 %32, !dbg !542
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @getresidue(i8* %0, i8* %1) #0 !dbg !543 {
  %3 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !547, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i8* %1, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata i8** undef, metadata !549, metadata !DIExpression()), !dbg !558
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !559
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %4) #14, !dbg !559
  call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !550, metadata !DIExpression()), !dbg !560
  %5 = call %struct.reslib_t* @known_reslib(i8* %1), !dbg !561
  call void @llvm.dbg.value(metadata %struct.reslib_t* %5, metadata !554, metadata !DIExpression()), !dbg !557
  %6 = icmp eq %struct.reslib_t* %5, null, !dbg !563
  br i1 %6, label %7, label %11, !dbg !564

7:                                                ; preds = %2
  %8 = call %struct.reslib_t* @read_reslib(i8* %1), !dbg !565
  call void @llvm.dbg.value(metadata %struct.reslib_t* %8, metadata !554, metadata !DIExpression()), !dbg !557
  %9 = icmp eq %struct.reslib_t* %8, null, !dbg !568
  br i1 %9, label %10, label %11, !dbg !569

10:                                               ; preds = %7
  call void @exit(i32 1) #12, !dbg !570
  unreachable, !dbg !570

11:                                               ; preds = %7, %2
  %.02 = phi %struct.reslib_t* [ %5, %2 ], [ %8, %7 ], !dbg !572
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.02, metadata !554, metadata !DIExpression()), !dbg !557
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !573
  %13 = call i8* @strcpy(i8* noundef nonnull %12, i8* noundef nonnull dereferenceable(1) %0) #14, !dbg !574
  %14 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i64 0, i32 2, !dbg !575
  %15 = load i32, i32* %14, align 8, !dbg !575, !tbaa !388
  %16 = icmp eq i32 %15, 1, !dbg !577
  br i1 %16, label %17, label %33, !dbg !578

17:                                               ; preds = %11
  %18 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #13, !dbg !579
  %.not16 = icmp eq i32 %18, 0, !dbg !579
  br i1 %.not16, label %19, label %21, !dbg !582

19:                                               ; preds = %17
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %20, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 3, i1 false) #14, !dbg !584
  br label %53, !dbg !584

21:                                               ; preds = %17
  %22 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #13, !dbg !585
  %.not17 = icmp eq i32 %22, 0, !dbg !585
  br i1 %.not17, label %23, label %25, !dbg !587

23:                                               ; preds = %21
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %24, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 3, i1 false) #14, !dbg !589
  br label %53, !dbg !589

25:                                               ; preds = %21
  %26 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 3) #13, !dbg !590
  %.not18 = icmp eq i32 %26, 0, !dbg !590
  br i1 %.not18, label %27, label %29, !dbg !592

27:                                               ; preds = %25
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !593
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %28, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i64 3, i1 false) #14, !dbg !594
  br label %53, !dbg !594

29:                                               ; preds = %25
  %30 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #13, !dbg !595
  %.not19 = icmp eq i32 %30, 0, !dbg !595
  br i1 %.not19, label %31, label %53, !dbg !597

31:                                               ; preds = %29
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %32, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 3, i1 false) #14, !dbg !599
  br label %53, !dbg !599

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i64 0, i32 2, !dbg !600
  %35 = load i32, i32* %34, align 8, !dbg !600, !tbaa !388
  %36 = icmp eq i32 %35, 2, !dbg !602
  br i1 %36, label %37, label %53, !dbg !603

37:                                               ; preds = %33
  %38 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 3) #13, !dbg !604
  %.not12 = icmp eq i32 %38, 0, !dbg !604
  br i1 %.not12, label %39, label %41, !dbg !607

39:                                               ; preds = %37
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %40, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i64 3, i1 false) #14, !dbg !609
  br label %53, !dbg !609

41:                                               ; preds = %37
  %42 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3) #13, !dbg !610
  %.not13 = icmp eq i32 %42, 0, !dbg !610
  br i1 %.not13, label %43, label %45, !dbg !612

43:                                               ; preds = %41
  %44 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %44, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 3, i1 false) #14, !dbg !614
  br label %53, !dbg !614

45:                                               ; preds = %41
  %46 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #13, !dbg !615
  %.not14 = icmp eq i32 %46, 0, !dbg !615
  br i1 %.not14, label %47, label %49, !dbg !617

47:                                               ; preds = %45
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %48, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i64 3, i1 false) #14, !dbg !619
  br label %53, !dbg !619

49:                                               ; preds = %45
  %50 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i64 3) #13, !dbg !620
  %.not15 = icmp eq i32 %50, 0, !dbg !620
  br i1 %.not15, label %51, label %53, !dbg !622

51:                                               ; preds = %49
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !623
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %52, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 3, i1 false) #14, !dbg !624
  br label %53, !dbg !624

53:                                               ; preds = %33, %43, %49, %51, %47, %39, %19, %27, %31, %29, %23
  %strchr = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 51), !dbg !625
  %.not = icmp eq i8* %strchr, null, !dbg !627
  br i1 %.not, label %57, label %54, !dbg !628

54:                                               ; preds = %53
  %55 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !629
  %strlen10 = call i64 @strlen(i8* noundef nonnull %55), !dbg !630
  %endptr11 = getelementptr [5 x i8], [5 x i8]* %3, i64 0, i64 %strlen10, !dbg !630
  %56 = bitcast i8* %endptr11 to i16*, !dbg !630
  store i16 51, i16* %56, align 1, !dbg !630
  br label %61, !dbg !630

57:                                               ; preds = %53
  %strchr6 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 53), !dbg !631
  %.not7 = icmp eq i8* %strchr6, null, !dbg !633
  br i1 %.not7, label %61, label %58, !dbg !634

58:                                               ; preds = %57
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !635
  %strlen = call i64 @strlen(i8* noundef nonnull %59), !dbg !636
  %endptr = getelementptr [5 x i8], [5 x i8]* %3, i64 0, i64 %strlen, !dbg !636
  %60 = bitcast i8* %endptr to i16*, !dbg !636
  store i16 53, i16* %60, align 1, !dbg !636
  br label %61, !dbg !636

61:                                               ; preds = %57, %58, %54
  %62 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %.02, i64 0, i32 4, !dbg !637
  %63 = load %struct.residue_t*, %struct.residue_t** %62, align 8, !dbg !637, !tbaa !639
  call void @llvm.dbg.value(metadata %struct.residue_t* %63, metadata !555, metadata !DIExpression()), !dbg !557
  %.not8 = icmp eq %struct.residue_t* %63, null, !dbg !640
  br i1 %.not8, label %.loopexit, label %.lr.ph, !dbg !640

.lr.ph:                                           ; preds = %61, %74
  %.015 = phi %struct.residue_t* [ %76, %74 ], [ %63, %61 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.015, metadata !555, metadata !DIExpression()), !dbg !557
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i64 0, i32 4, !dbg !641
  %65 = load i8*, i8** %64, align 8, !dbg !641, !tbaa !645
  %66 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %65, i8* noundef nonnull dereferenceable(1) %0) #13, !dbg !647
  %67 = icmp eq i32 %66, 0, !dbg !648
  br i1 %67, label %.loopexit, label %68, !dbg !649

68:                                               ; preds = %.lr.ph
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i64 0, i32 4, !dbg !650
  %70 = load i8*, i8** %69, align 8, !dbg !650, !tbaa !645
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !651
  %72 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %70, i8* noundef nonnull %71) #13, !dbg !652
  %73 = icmp eq i32 %72, 0, !dbg !653
  br i1 %73, label %.loopexit, label %74, !dbg !654

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.015, i64 0, i32 0, !dbg !655
  %76 = load %struct.residue_t*, %struct.residue_t** %75, align 8, !dbg !655, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.residue_t* %76, metadata !555, metadata !DIExpression()), !dbg !557
  %.not9 = icmp eq %struct.residue_t* %76, null, !dbg !640
  br i1 %.not9, label %.loopexit, label %.lr.ph, !dbg !640, !llvm.loop !657

.loopexit:                                        ; preds = %61, %74, %.lr.ph, %68
  %.014 = phi %struct.residue_t* [ %.015, %68 ], [ %.015, %.lr.ph ], [ %63, %61 ], [ %76, %74 ]
  %77 = icmp eq %struct.residue_t* %.014, null, !dbg !659
  br i1 %77, label %78, label %81, !dbg !661

78:                                               ; preds = %.loopexit
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %0, i8* %1) #14, !dbg !662
  %80 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !664
  br label %83, !dbg !665

81:                                               ; preds = %.loopexit
  %82 = call %struct.residue_t* @copyresidue(%struct.residue_t* nonnull %.014), !dbg !666
  call void @llvm.dbg.value(metadata %struct.residue_t* %82, metadata !556, metadata !DIExpression()), !dbg !557
  br label %83, !dbg !667

83:                                               ; preds = %81, %78
  %.0 = phi %struct.residue_t* [ null, %78 ], [ %82, %81 ], !dbg !557
  %84 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0, !dbg !668
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %84) #14, !dbg !668
  ret %struct.residue_t* %.0, !dbg !668
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
define dso_local %struct.residue_t* @copyresidue(%struct.residue_t* %0) #0 !dbg !669 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !673, metadata !DIExpression()), !dbg !685
  %2 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #14, !dbg !686
  %3 = bitcast i8* %2 to %struct.residue_t*, !dbg !688
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !679, metadata !DIExpression()), !dbg !685
  %4 = icmp eq i8* %2, null, !dbg !689
  br i1 %4, label %5, label %10, !dbg !690

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !691
  %7 = load i8*, i8** %6, align 8, !dbg !691, !tbaa !645
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* %7) #14, !dbg !693
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !694
  br label %._crit_edge47, !dbg !695

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !696
  %12 = load i32, i32* %11, align 8, !dbg !696, !tbaa !698
  %13 = sext i32 %12 to i64, !dbg !699
  %14 = mul nsw i64 %13, 176, !dbg !700
  %15 = call noalias i8* @malloc(i64 %14) #14, !dbg !701
  %16 = bitcast i8* %15 to %struct.atom_t*, !dbg !702
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !680, metadata !DIExpression()), !dbg !685
  %17 = icmp eq i8* %15, null, !dbg !703
  br i1 %17, label %18, label %23, !dbg !704

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !705
  %20 = load i8*, i8** %19, align 8, !dbg !705, !tbaa !645
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* %20) #14, !dbg !707
  %22 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !708
  br label %._crit_edge47, !dbg !709

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !710
  %25 = load i32, i32* %24, align 8, !dbg !710, !tbaa !698
  %26 = sext i32 %25 to i64, !dbg !712
  %27 = shl nsw i64 %26, 2, !dbg !713
  %28 = call noalias i8* @malloc(i64 %27) #14, !dbg !714
  call void @llvm.dbg.value(metadata i8* %28, metadata !678, metadata !DIExpression()), !dbg !685
  %29 = icmp eq i8* %28, null, !dbg !715
  br i1 %29, label %30, label %35, !dbg !716

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !717
  %32 = load i8*, i8** %31, align 8, !dbg !717, !tbaa !645
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* %32) #14, !dbg !719
  %34 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !720
  br label %._crit_edge47, !dbg !721

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !722
  %37 = load i32, i32* %36, align 8, !dbg !722, !tbaa !724
  %38 = icmp sgt i32 %37, 0, !dbg !725
  br i1 %38, label %39, label %52, !dbg !726

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !727
  %41 = load i32, i32* %40, align 8, !dbg !727, !tbaa !724
  %42 = sext i32 %41 to i64, !dbg !730
  %43 = shl nsw i64 %42, 3, !dbg !731
  %44 = call noalias i8* @malloc(i64 %43) #14, !dbg !732
  %45 = bitcast i8* %44 to [2 x i32]*, !dbg !733
  call void @llvm.dbg.value(metadata [2 x i32]* %45, metadata !683, metadata !DIExpression()), !dbg !685
  %46 = icmp eq i8* %44, null, !dbg !734
  br i1 %46, label %47, label %52, !dbg !735

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !736
  %49 = load i8*, i8** %48, align 8, !dbg !736, !tbaa !645
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %49) #14, !dbg !738
  %51 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !739
  br label %._crit_edge47, !dbg !740

52:                                               ; preds = %35, %39
  %.07 = phi [2 x i32]* [ %45, %39 ], [ null, %35 ], !dbg !741
  call void @llvm.dbg.value(metadata [2 x i32]* %.07, metadata !683, metadata !DIExpression()), !dbg !685
  %53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !742
  %54 = load i32, i32* %53, align 8, !dbg !742, !tbaa !744
  %55 = icmp sgt i32 %54, 0, !dbg !745
  br i1 %55, label %56, label %69, !dbg !746

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !747
  %58 = load i32, i32* %57, align 8, !dbg !747, !tbaa !744
  %59 = sext i32 %58 to i64, !dbg !750
  %60 = mul nsw i64 %59, 24, !dbg !751
  %61 = call noalias i8* @malloc(i64 %60) #14, !dbg !752
  %62 = bitcast i8* %61 to %struct.chiral_t*, !dbg !753
  call void @llvm.dbg.value(metadata %struct.chiral_t* %62, metadata !684, metadata !DIExpression()), !dbg !685
  %63 = icmp eq i8* %61, null, !dbg !754
  br i1 %63, label %64, label %69, !dbg !755

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !756
  %66 = load i8*, i8** %65, align 8, !dbg !756, !tbaa !645
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %66) #14, !dbg !758
  %68 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !759
  br label %._crit_edge47, !dbg !760

69:                                               ; preds = %52, %56
  %.05 = phi %struct.chiral_t* [ %62, %56 ], [ null, %52 ], !dbg !761
  call void @llvm.dbg.value(metadata %struct.chiral_t* %.05, metadata !684, metadata !DIExpression()), !dbg !685
  %70 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 0, !dbg !762
  store %struct.residue_t* null, %struct.residue_t** %70, align 8, !dbg !763, !tbaa !656
  %71 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !764
  %72 = load i8*, i8** %71, align 8, !dbg !764, !tbaa !645
  %73 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %72) #13, !dbg !765
  %74 = add i64 %73, 1, !dbg !766
  %75 = call noalias i8* @malloc(i64 %74) #14, !dbg !767
  call void @llvm.dbg.value(metadata i8* %75, metadata !682, metadata !DIExpression()), !dbg !685
  %76 = icmp eq i8* %75, null, !dbg !768
  br i1 %76, label %77, label %80, !dbg !770

77:                                               ; preds = %69
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !771, !tbaa !379
  %79 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %78) #15, !dbg !773
  call void @exit(i32 1) #12, !dbg !774
  unreachable, !dbg !774

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !775
  %82 = load i8*, i8** %81, align 8, !dbg !775, !tbaa !645
  %83 = call i8* @strcpy(i8* noundef nonnull %75, i8* noundef nonnull dereferenceable(1) %82) #14, !dbg !776
  %84 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 4, !dbg !777
  store i8* %75, i8** %84, align 8, !dbg !778, !tbaa !645
  %85 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !779
  %86 = load i8*, i8** %85, align 8, !dbg !779, !tbaa !780
  %87 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %86) #13, !dbg !781
  %88 = add i64 %87, 1, !dbg !782
  %89 = call noalias i8* @malloc(i64 %88) #14, !dbg !783
  call void @llvm.dbg.value(metadata i8* %89, metadata !682, metadata !DIExpression()), !dbg !685
  %90 = icmp eq i8* %89, null, !dbg !784
  br i1 %90, label %91, label %94, !dbg !786

91:                                               ; preds = %80
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !787, !tbaa !379
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %92) #15, !dbg !789
  call void @exit(i32 1) #12, !dbg !790
  unreachable, !dbg !790

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !791
  %96 = load i8*, i8** %95, align 8, !dbg !791, !tbaa !780
  %97 = call i8* @strcpy(i8* noundef nonnull %89, i8* noundef nonnull dereferenceable(1) %96) #14, !dbg !792
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 5, !dbg !793
  store i8* %89, i8** %98, align 8, !dbg !794, !tbaa !780
  %99 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !795
  %100 = load i32, i32* %99, align 8, !dbg !795, !tbaa !796
  %101 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 1, !dbg !797
  store i32 %100, i32* %101, align 8, !dbg !798, !tbaa !796
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 2, !dbg !799
  store i32 0, i32* %102, align 4, !dbg !800, !tbaa !801
  %103 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 3, !dbg !802
  store i32 0, i32* %103, align 8, !dbg !803, !tbaa !804
  %104 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !805
  %105 = load i32, i32* %104, align 8, !dbg !805, !tbaa !806
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !807
  store i32 %105, i32* %106, align 8, !dbg !808, !tbaa !806
  %107 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 9, !dbg !809
  store %struct.strand_t* null, %struct.strand_t** %107, align 8, !dbg !810, !tbaa !811
  %108 = call %struct.extbond_t* (%struct.residue_t*, ...) bitcast (%struct.extbond_t* (...)* @copyextbonds to %struct.extbond_t* (%struct.residue_t*, ...)*)(%struct.residue_t* %0) #14, !dbg !812
  %109 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 10, !dbg !813
  store %struct.extbond_t* %108, %struct.extbond_t** %109, align 8, !dbg !814, !tbaa !815
  %110 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !816
  %111 = load i32, i32* %110, align 8, !dbg !816, !tbaa !724
  %112 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 11, !dbg !817
  store i32 %111, i32* %112, align 8, !dbg !818, !tbaa !724
  %113 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 12, !dbg !819
  store [2 x i32]* %.07, [2 x i32]** %113, align 8, !dbg !820, !tbaa !821
  call void @llvm.dbg.value(metadata i32 0, metadata !675, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 0, metadata !675, metadata !DIExpression()), !dbg !685
  %114 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !822
  %115 = icmp sgt i32 %111, 0, !dbg !825
  br i1 %115, label %.lr.ph, label %._crit_edge, !dbg !826

.lr.ph:                                           ; preds = %94, %.lr.ph
  %indvars.iv28 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %94 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv28, metadata !675, metadata !DIExpression()), !dbg !685
  %116 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !827
  %117 = load [2 x i32]*, [2 x i32]** %116, align 8, !dbg !827, !tbaa !821
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 %indvars.iv28, i64 0, !dbg !829
  %119 = load i32, i32* %118, align 4, !dbg !829, !tbaa !830
  %120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 12, !dbg !831
  %121 = load [2 x i32]*, [2 x i32]** %120, align 8, !dbg !831, !tbaa !821
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %121, i64 %indvars.iv28, i64 0, !dbg !832
  store i32 %119, i32* %122, align 4, !dbg !833, !tbaa !830
  %123 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !834
  %124 = load [2 x i32]*, [2 x i32]** %123, align 8, !dbg !834, !tbaa !821
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %124, i64 %indvars.iv28, i64 1, !dbg !835
  %126 = load i32, i32* %125, align 4, !dbg !835, !tbaa !830
  %127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 12, !dbg !836
  %128 = load [2 x i32]*, [2 x i32]** %127, align 8, !dbg !836, !tbaa !821
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %128, i64 %indvars.iv28, i64 1, !dbg !837
  store i32 %126, i32* %129, align 4, !dbg !838, !tbaa !830
  %indvars.iv.next = add nuw nsw i64 %indvars.iv28, 1, !dbg !839
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !675, metadata !DIExpression()), !dbg !685
  %130 = load i32, i32* %114, align 8, !dbg !822, !tbaa !724
  %131 = sext i32 %130 to i64, !dbg !825
  %132 = icmp slt i64 %indvars.iv.next, %131, !dbg !825
  br i1 %132, label %.lr.ph, label %._crit_edge, !dbg !826, !llvm.loop !840

._crit_edge:                                      ; preds = %.lr.ph, %94
  %133 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !842
  %134 = load i32, i32* %133, align 8, !dbg !842, !tbaa !744
  %135 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 13, !dbg !843
  store i32 %134, i32* %135, align 8, !dbg !844, !tbaa !744
  %136 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 14, !dbg !845
  store %struct.chiral_t* %.05, %struct.chiral_t** %136, align 8, !dbg !846, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.chiral_t* %.05, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i32 0, metadata !676, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 0, metadata !676, metadata !DIExpression()), !dbg !685
  %137 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !848
  %138 = icmp sgt i32 %134, 0, !dbg !851
  br i1 %138, label %.lr.ph33, label %._crit_edge34, !dbg !852

.lr.ph33:                                         ; preds = %._crit_edge, %145
  %.1631 = phi %struct.chiral_t* [ %151, %145 ], [ %.05, %._crit_edge ]
  %indvars.iv1230 = phi i64 [ %indvars.iv.next13, %145 ], [ 0, %._crit_edge ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %.1631, metadata !684, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 %indvars.iv1230, metadata !676, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 0, metadata !674, metadata !DIExpression()), !dbg !685
  br label %139, !dbg !853

139:                                              ; preds = %.lr.ph33, %139
  %indvars.iv929 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next10, %139 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv929, metadata !674, metadata !DIExpression()), !dbg !685
  %140 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !856
  %141 = load %struct.chiral_t*, %struct.chiral_t** %140, align 8, !dbg !856, !tbaa !847
  %142 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %141, i64 %indvars.iv1230, i32 0, i64 %indvars.iv929, !dbg !858
  %143 = load i32, i32* %142, align 4, !dbg !858, !tbaa !830
  %144 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1631, i64 0, i32 0, i64 %indvars.iv929, !dbg !859
  store i32 %143, i32* %144, align 4, !dbg !860, !tbaa !830
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv929, 1, !dbg !861
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !674, metadata !DIExpression()), !dbg !685
  %exitcond.not = icmp eq i64 %indvars.iv.next10, 4, !dbg !862
  br i1 %exitcond.not, label %145, label %139, !dbg !853, !llvm.loop !863

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !865
  %147 = load %struct.chiral_t*, %struct.chiral_t** %146, align 8, !dbg !865, !tbaa !847
  %148 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %147, i64 %indvars.iv1230, i32 1, !dbg !866
  %149 = load double, double* %148, align 8, !dbg !866, !tbaa !867
  %150 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1631, i64 0, i32 1, !dbg !870
  store double %149, double* %150, align 8, !dbg !871, !tbaa !867
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1230, 1, !dbg !872
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next13, metadata !676, metadata !DIExpression()), !dbg !685
  %151 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.1631, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata %struct.chiral_t* %151, metadata !684, metadata !DIExpression()), !dbg !685
  %152 = load i32, i32* %137, align 8, !dbg !848, !tbaa !744
  %153 = sext i32 %152 to i64, !dbg !851
  %154 = icmp slt i64 %indvars.iv.next13, %153, !dbg !851
  br i1 %154, label %.lr.ph33, label %._crit_edge34, !dbg !852, !llvm.loop !874

._crit_edge34:                                    ; preds = %145, %._crit_edge
  %155 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !876
  %156 = load i32, i32* %155, align 4, !dbg !876, !tbaa !877
  %157 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 7, !dbg !878
  store i32 %156, i32* %157, align 4, !dbg !879, !tbaa !877
  %158 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !880
  %159 = load i32, i32* %158, align 8, !dbg !880, !tbaa !881
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 8, !dbg !882
  store i32 %159, i32* %160, align 8, !dbg !883, !tbaa !881
  %161 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !884
  %162 = load i32, i32* %161, align 8, !dbg !884, !tbaa !698
  %163 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15, !dbg !885
  store i32 %162, i32* %163, align 8, !dbg !886, !tbaa !698
  %164 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 16, !dbg !887
  %165 = bitcast i32** %164 to i8**, !dbg !888
  store i8* %28, i8** %165, align 8, !dbg !888, !tbaa !889
  %166 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !890
  %167 = load i32*, i32** %166, align 8, !dbg !890, !tbaa !889
  %.not = icmp eq i32* %167, null, !dbg !892
  br i1 %.not, label %182, label %168, !dbg !893

168:                                              ; preds = %._crit_edge34
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 0, metadata !674, metadata !DIExpression()), !dbg !685
  %169 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !894
  %170 = load i32, i32* %169, align 8, !dbg !894, !tbaa !698
  %171 = icmp sgt i32 %170, 0, !dbg !898
  br i1 %171, label %.lr.ph41, label %._crit_edge42, !dbg !899

.lr.ph41:                                         ; preds = %168, %.lr.ph41
  %indvars.iv1839 = phi i64 [ %indvars.iv.next19, %.lr.ph41 ], [ 0, %168 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1839, metadata !674, metadata !DIExpression()), !dbg !685
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !900
  %173 = load i32*, i32** %172, align 8, !dbg !900, !tbaa !889
  %174 = getelementptr inbounds i32, i32* %173, i64 %indvars.iv1839, !dbg !901
  %175 = load i32, i32* %174, align 4, !dbg !901, !tbaa !830
  %176 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 16, !dbg !902
  %177 = load i32*, i32** %176, align 8, !dbg !902, !tbaa !889
  %178 = getelementptr inbounds i32, i32* %177, i64 %indvars.iv1839, !dbg !903
  store i32 %175, i32* %178, align 4, !dbg !904, !tbaa !830
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv1839, 1, !dbg !905
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next19, metadata !674, metadata !DIExpression()), !dbg !685
  %179 = load i32, i32* %169, align 8, !dbg !894, !tbaa !698
  %180 = sext i32 %179 to i64, !dbg !898
  %181 = icmp slt i64 %indvars.iv.next19, %180, !dbg !898
  br i1 %181, label %.lr.ph41, label %._crit_edge42, !dbg !899, !llvm.loop !906

182:                                              ; preds = %._crit_edge34
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 0, metadata !674, metadata !DIExpression()), !dbg !685
  %183 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !908
  %184 = load i32, i32* %183, align 8, !dbg !908, !tbaa !698
  %185 = icmp sgt i32 %184, 0, !dbg !912
  br i1 %185, label %.lr.ph37, label %._crit_edge42, !dbg !913

.lr.ph37:                                         ; preds = %182, %.lr.ph37
  %indvars.iv1535 = phi i64 [ %indvars.iv.next16, %.lr.ph37 ], [ 0, %182 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1535, metadata !674, metadata !DIExpression()), !dbg !685
  %186 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 16, !dbg !914
  %187 = load i32*, i32** %186, align 8, !dbg !914, !tbaa !889
  %188 = getelementptr inbounds i32, i32* %187, i64 %indvars.iv1535, !dbg !915
  %189 = trunc i64 %indvars.iv1535 to i32, !dbg !916
  store i32 %189, i32* %188, align 4, !dbg !916, !tbaa !830
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv1535, 1, !dbg !917
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next16, metadata !674, metadata !DIExpression()), !dbg !685
  %190 = load i32, i32* %183, align 8, !dbg !908, !tbaa !698
  %191 = sext i32 %190 to i64, !dbg !912
  %192 = icmp slt i64 %indvars.iv.next16, %191, !dbg !912
  br i1 %192, label %.lr.ph37, label %._crit_edge42, !dbg !913, !llvm.loop !918

._crit_edge42:                                    ; preds = %182, %.lr.ph37, %168, %.lr.ph41
  %193 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !920
  %194 = bitcast %struct.atom_t** %193 to i8**, !dbg !921
  store i8* %15, i8** %194, align 8, !dbg !921, !tbaa !922
  call void @llvm.dbg.value(metadata i32 0, metadata !674, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 0, metadata !674, metadata !DIExpression()), !dbg !685
  %195 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !923
  %196 = load i32, i32* %195, align 8, !dbg !923, !tbaa !698
  %197 = icmp sgt i32 %196, 0, !dbg !926
  br i1 %197, label %.lr.ph46, label %._crit_edge47, !dbg !927

.lr.ph46:                                         ; preds = %._crit_edge42, %231
  %indvars.iv2544 = phi i64 [ %indvars.iv.next26, %231 ], [ 0, %._crit_edge42 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2544, metadata !674, metadata !DIExpression()), !dbg !685
  %198 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !928
  %199 = load %struct.atom_t*, %struct.atom_t** %198, align 8, !dbg !928, !tbaa !922
  %200 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %199, i64 %indvars.iv2544, i32 0, !dbg !930
  %201 = load i8*, i8** %200, align 8, !dbg !930, !tbaa !931
  %202 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %201) #13, !dbg !933
  %203 = add i64 %202, 1, !dbg !934
  %204 = call noalias i8* @malloc(i64 %203) #14, !dbg !935
  call void @llvm.dbg.value(metadata i8* %204, metadata !681, metadata !DIExpression()), !dbg !685
  %205 = icmp eq i8* %204, null, !dbg !936
  br i1 %205, label %206, label %209, !dbg !938

206:                                              ; preds = %.lr.ph46
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !939, !tbaa !379
  %208 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %207) #15, !dbg !941
  call void @exit(i32 1) #12, !dbg !942
  unreachable, !dbg !942

209:                                              ; preds = %.lr.ph46
  %210 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !943
  %211 = load %struct.atom_t*, %struct.atom_t** %210, align 8, !dbg !943, !tbaa !922
  %212 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %211, i64 %indvars.iv2544, i32 0, !dbg !944
  %213 = load i8*, i8** %212, align 8, !dbg !944, !tbaa !931
  %214 = call i8* @strcpy(i8* noundef nonnull %204, i8* noundef nonnull dereferenceable(1) %213) #14, !dbg !945
  %215 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 0, !dbg !946
  store i8* %204, i8** %215, align 8, !dbg !947, !tbaa !931
  %216 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 1, !dbg !948
  store i8* null, i8** %216, align 8, !dbg !949, !tbaa !950
  %217 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !951
  %218 = load %struct.atom_t*, %struct.atom_t** %217, align 8, !dbg !951, !tbaa !922
  %219 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %218, i64 %indvars.iv2544, i32 2, !dbg !952
  %220 = load i32, i32* %219, align 8, !dbg !952, !tbaa !953
  %221 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 2, !dbg !954
  store i32 %220, i32* %221, align 8, !dbg !955, !tbaa !953
  %222 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %218, i64 %indvars.iv2544, i32 3, !dbg !956
  %223 = load i32, i32* %222, align 4, !dbg !956, !tbaa !957
  %224 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 3, !dbg !958
  store i32 %223, i32* %224, align 4, !dbg !959, !tbaa !957
  call void @llvm.dbg.value(metadata i32 0, metadata !677, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i64 0, metadata !677, metadata !DIExpression()), !dbg !685
  br label %225, !dbg !960

225:                                              ; preds = %209, %225
  %indvars.iv2143 = phi i64 [ 0, %209 ], [ %indvars.iv.next22, %225 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2143, metadata !677, metadata !DIExpression()), !dbg !685
  %226 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !962
  %227 = load %struct.atom_t*, %struct.atom_t** %226, align 8, !dbg !962, !tbaa !922
  %228 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %227, i64 %indvars.iv2544, i32 4, i64 %indvars.iv2143, !dbg !964
  %229 = load i32, i32* %228, align 4, !dbg !964, !tbaa !830
  %230 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 4, i64 %indvars.iv2143, !dbg !965
  store i32 %229, i32* %230, align 4, !dbg !966, !tbaa !830
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv2143, 1, !dbg !967
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next22, metadata !677, metadata !DIExpression()), !dbg !685
  %exitcond24.not = icmp eq i64 %indvars.iv.next22, 8, !dbg !968
  br i1 %exitcond24.not, label %231, label %225, !dbg !960, !llvm.loop !969

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 5, !dbg !971
  %233 = bitcast %struct.residue_t** %232 to i8**, !dbg !972
  store i8* %2, i8** %233, align 8, !dbg !972, !tbaa !973
  %234 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !974
  %235 = load %struct.atom_t*, %struct.atom_t** %234, align 8, !dbg !974, !tbaa !922
  %236 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %235, i64 %indvars.iv2544, i32 6, !dbg !975
  %237 = load double, double* %236, align 8, !dbg !975, !tbaa !976
  %238 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 6, !dbg !977
  store double %237, double* %238, align 8, !dbg !978, !tbaa !976
  %239 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %235, i64 %indvars.iv2544, i32 7, !dbg !979
  %240 = load double, double* %239, align 8, !dbg !979, !tbaa !980
  %241 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 7, !dbg !981
  store double %240, double* %241, align 8, !dbg !982, !tbaa !980
  %242 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !983
  %243 = load %struct.atom_t*, %struct.atom_t** %242, align 8, !dbg !983, !tbaa !922
  %244 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %243, i64 %indvars.iv2544, i32 8, !dbg !984
  %245 = load double, double* %244, align 8, !dbg !984, !tbaa !985
  %246 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 8, !dbg !986
  store double %245, double* %246, align 8, !dbg !987, !tbaa !985
  %247 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %243, i64 %indvars.iv2544, i32 9, !dbg !988
  %248 = load double, double* %247, align 8, !dbg !988, !tbaa !989
  %249 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 9, !dbg !990
  store double %248, double* %249, align 8, !dbg !991, !tbaa !989
  %250 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 10, !dbg !992
  store i8* null, i8** %250, align 8, !dbg !993, !tbaa !994
  %251 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !995
  %252 = load %struct.atom_t*, %struct.atom_t** %251, align 8, !dbg !995, !tbaa !922
  %253 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %252, i64 %indvars.iv2544, i32 11, !dbg !996
  %254 = load i32, i32* %253, align 8, !dbg !996, !tbaa !997
  %255 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 11, !dbg !998
  store i32 %254, i32* %255, align 8, !dbg !999, !tbaa !997
  %256 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %252, i64 %indvars.iv2544, i32 12, !dbg !1000
  %257 = load double, double* %256, align 8, !dbg !1000, !tbaa !1001
  %258 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 12, !dbg !1002
  store double %257, double* %258, align 8, !dbg !1003, !tbaa !1001
  %259 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1004
  %260 = load %struct.atom_t*, %struct.atom_t** %259, align 8, !dbg !1004, !tbaa !922
  %261 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %260, i64 %indvars.iv2544, i32 13, !dbg !1005
  %262 = load double, double* %261, align 8, !dbg !1005, !tbaa !1006
  %263 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 13, !dbg !1007
  store double %262, double* %263, align 8, !dbg !1008, !tbaa !1006
  %264 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %260, i64 %indvars.iv2544, i32 14, !dbg !1009
  %265 = load i32, i32* %264, align 8, !dbg !1009, !tbaa !1010
  %266 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 14, !dbg !1011
  store i32 %265, i32* %266, align 8, !dbg !1012, !tbaa !1010
  %267 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1013
  %268 = load %struct.atom_t*, %struct.atom_t** %267, align 8, !dbg !1013, !tbaa !922
  %269 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %268, i64 %indvars.iv2544, i32 15, !dbg !1014
  %270 = load i32, i32* %269, align 4, !dbg !1014, !tbaa !1015
  %271 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 15, !dbg !1016
  store i32 %270, i32* %271, align 4, !dbg !1017, !tbaa !1015
  %272 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 16, !dbg !1018
  store i8* null, i8** %272, align 8, !dbg !1019, !tbaa !1020
  %273 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1021
  %274 = load %struct.atom_t*, %struct.atom_t** %273, align 8, !dbg !1021, !tbaa !922
  %275 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %274, i64 %indvars.iv2544, i32 17, i64 0, !dbg !1022
  %276 = load double, double* %275, align 8, !dbg !1022, !tbaa !1023
  %277 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 17, i64 0, !dbg !1024
  store double %276, double* %277, align 8, !dbg !1025, !tbaa !1023
  %278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %274, i64 %indvars.iv2544, i32 17, i64 1, !dbg !1026
  %279 = load double, double* %278, align 8, !dbg !1026, !tbaa !1023
  %280 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 17, i64 1, !dbg !1027
  store double %279, double* %280, align 8, !dbg !1028, !tbaa !1023
  %281 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !1029
  %282 = load %struct.atom_t*, %struct.atom_t** %281, align 8, !dbg !1029, !tbaa !922
  %283 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %282, i64 %indvars.iv2544, i32 17, i64 2, !dbg !1030
  %284 = load double, double* %283, align 8, !dbg !1030, !tbaa !1023
  %285 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 17, i64 2, !dbg !1031
  store double %284, double* %285, align 8, !dbg !1032, !tbaa !1023
  %286 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %282, i64 %indvars.iv2544, i32 18, !dbg !1033
  %287 = load double, double* %286, align 8, !dbg !1033, !tbaa !1034
  %288 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv2544, i32 18, !dbg !1035
  store double %287, double* %288, align 8, !dbg !1036, !tbaa !1034
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv2544, 1, !dbg !1037
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next26, metadata !674, metadata !DIExpression()), !dbg !685
  %289 = load i32, i32* %195, align 8, !dbg !923, !tbaa !698
  %290 = sext i32 %289 to i64, !dbg !926
  %291 = icmp slt i64 %indvars.iv.next26, %290, !dbg !926
  br i1 %291, label %.lr.ph46, label %._crit_edge47, !dbg !927, !llvm.loop !1038

._crit_edge47:                                    ; preds = %._crit_edge42, %231, %64, %47, %30, %18, %5
  %.0 = phi %struct.residue_t* [ null, %5 ], [ null, %18 ], [ null, %30 ], [ null, %47 ], [ null, %64 ], [ %3, %231 ], [ %3, %._crit_edge42 ], !dbg !685
  ret %struct.residue_t* %.0, !dbg !1040
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) #7

declare dso_local %struct.extbond_t* @copyextbonds(...) #3

; Function Attrs: nounwind uwtable
define dso_local %struct.strand_t* @copystrand(%struct.strand_t* %0) #0 !dbg !1041 {
  call void @llvm.dbg.value(metadata %struct.strand_t* %0, metadata !1045, metadata !DIExpression()), !dbg !1049
  %2 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #14, !dbg !1050
  %3 = bitcast i8* %2 to %struct.strand_t*, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !1046, metadata !DIExpression()), !dbg !1049
  %4 = icmp eq i8* %2, null, !dbg !1053
  br i1 %4, label %5, label %10, !dbg !1054

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1055
  %7 = load i8*, i8** %6, align 8, !dbg !1055, !tbaa !1057
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* %7) #14, !dbg !1059
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1060
  br label %._crit_edge, !dbg !1061

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1062
  %12 = load i32, i32* %11, align 8, !dbg !1062, !tbaa !1064
  %13 = sext i32 %12 to i64, !dbg !1065
  %14 = shl nsw i64 %13, 3, !dbg !1066
  %15 = call noalias i8* @malloc(i64 %14) #14, !dbg !1067
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 7, !dbg !1068
  %17 = bitcast %struct.residue_t*** %16 to i8**, !dbg !1069
  store i8* %15, i8** %17, align 8, !dbg !1069, !tbaa !1070
  %18 = icmp eq i8* %15, null, !dbg !1071
  br i1 %18, label %19, label %21, !dbg !1072

19:                                               ; preds = %10
  %20 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #14, !dbg !1073
  br label %._crit_edge, !dbg !1075

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1076
  %23 = load i8*, i8** %22, align 8, !dbg !1076, !tbaa !1057
  %24 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %23) #13, !dbg !1078
  %25 = add i64 %24, 1, !dbg !1079
  %26 = call noalias i8* @malloc(i64 %25) #14, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %26, metadata !1047, metadata !DIExpression()), !dbg !1049
  %27 = icmp eq i8* %26, null, !dbg !1081
  br i1 %27, label %28, label %33, !dbg !1082

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1083
  %30 = load i8*, i8** %29, align 8, !dbg !1083, !tbaa !1057
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %30) #14, !dbg !1085
  %32 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1086
  br label %._crit_edge, !dbg !1087

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 0, !dbg !1088
  store i8* %26, i8** %34, align 8, !dbg !1089, !tbaa !1057
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 0, !dbg !1090
  %36 = load i8*, i8** %35, align 8, !dbg !1090, !tbaa !1057
  %37 = call i8* @strcpy(i8* noundef nonnull %26, i8* noundef nonnull dereferenceable(1) %36) #14, !dbg !1091
  %38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 1, !dbg !1092
  %39 = load i32, i32* %38, align 8, !dbg !1092, !tbaa !1093
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 1, !dbg !1094
  store i32 %39, i32* %40, align 8, !dbg !1095, !tbaa !1093
  %41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 2, !dbg !1096
  %42 = load i32, i32* %41, align 4, !dbg !1096, !tbaa !1097
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 2, !dbg !1098
  store i32 %42, i32* %43, align 4, !dbg !1099, !tbaa !1097
  %44 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 3, !dbg !1100
  store %struct.molecule_t* null, %struct.molecule_t** %44, align 8, !dbg !1101, !tbaa !1102
  %45 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 4, !dbg !1103
  store %struct.strand_t* null, %struct.strand_t** %45, align 8, !dbg !1104, !tbaa !1105
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1106
  %47 = load i32, i32* %46, align 8, !dbg !1106, !tbaa !1064
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 5, !dbg !1107
  store i32 %47, i32* %48, align 8, !dbg !1108, !tbaa !1064
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 6, !dbg !1109
  store i32 %47, i32* %49, align 4, !dbg !1110, !tbaa !1111
  call void @llvm.dbg.value(metadata i32 0, metadata !1048, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !1048, metadata !DIExpression()), !dbg !1049
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 5, !dbg !1112
  %51 = icmp sgt i32 %47, 0, !dbg !1115
  br i1 %51, label %.lr.ph, label %._crit_edge, !dbg !1116

.lr.ph:                                           ; preds = %33, %75
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %75 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !1048, metadata !DIExpression()), !dbg !1049
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %0, i64 0, i32 7, !dbg !1117
  %53 = load %struct.residue_t**, %struct.residue_t*** %52, align 8, !dbg !1117, !tbaa !1070
  %54 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %53, i64 %indvars.iv3, !dbg !1119
  %55 = load %struct.residue_t*, %struct.residue_t** %54, align 8, !dbg !1119, !tbaa !379
  %56 = call %struct.residue_t* @copyresidue(%struct.residue_t* %55), !dbg !1120
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 7, !dbg !1121
  %58 = load %struct.residue_t**, %struct.residue_t*** %57, align 8, !dbg !1121, !tbaa !1070
  %59 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %58, i64 %indvars.iv3, !dbg !1122
  store %struct.residue_t* %56, %struct.residue_t** %59, align 8, !dbg !1123, !tbaa !379
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 7, !dbg !1124
  %61 = load %struct.residue_t**, %struct.residue_t*** %60, align 8, !dbg !1124, !tbaa !1070
  %62 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %61, i64 %indvars.iv3, !dbg !1125
  %63 = load %struct.residue_t*, %struct.residue_t** %62, align 8, !dbg !1125, !tbaa !379
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %63, i64 0, i32 9, !dbg !1126
  %65 = bitcast %struct.strand_t** %64 to i8**, !dbg !1127
  store i8* %2, i8** %65, align 8, !dbg !1127, !tbaa !811
  %.not = icmp eq i64 %indvars.iv3, 0, !dbg !1128
  br i1 %.not, label %75, label %66, !dbg !1130

66:                                               ; preds = %.lr.ph
  %67 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 7, !dbg !1131
  %68 = load %struct.residue_t**, %struct.residue_t*** %67, align 8, !dbg !1131, !tbaa !1070
  %69 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %68, i64 %indvars.iv3, !dbg !1132
  %70 = load %struct.residue_t*, %struct.residue_t** %69, align 8, !dbg !1132, !tbaa !379
  %71 = add nsw i64 %indvars.iv3, -1, !dbg !1133
  %72 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %68, i64 %71, !dbg !1134
  %73 = load %struct.residue_t*, %struct.residue_t** %72, align 8, !dbg !1134, !tbaa !379
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %73, i64 0, i32 0, !dbg !1135
  store %struct.residue_t* %70, %struct.residue_t** %74, align 8, !dbg !1136, !tbaa !656
  br label %75, !dbg !1134

75:                                               ; preds = %66, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1048, metadata !DIExpression()), !dbg !1049
  %76 = load i32, i32* %50, align 8, !dbg !1112, !tbaa !1064
  %77 = sext i32 %76 to i64, !dbg !1115
  %78 = icmp slt i64 %indvars.iv.next, %77, !dbg !1115
  br i1 %78, label %.lr.ph, label %._crit_edge, !dbg !1116, !llvm.loop !1138

._crit_edge:                                      ; preds = %33, %75, %28, %19, %5
  %.0 = phi %struct.strand_t* [ null, %5 ], [ null, %19 ], [ null, %28 ], [ %3, %75 ], [ %3, %33 ], !dbg !1049
  ret %struct.strand_t* %.0, !dbg !1140
}

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @copymolecule(%struct.molecule_t* %0) #0 !dbg !1141 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1145, metadata !DIExpression()), !dbg !1152
  call void @upd_molnumbers(%struct.molecule_t* %0) #14, !dbg !1153
  %2 = call noalias dereferenceable_or_null(136) i8* @malloc(i64 136) #14, !dbg !1154
  %3 = bitcast i8* %2 to %struct.molecule_t*, !dbg !1156
  call void @llvm.dbg.value(metadata %struct.molecule_t* %3, metadata !1151, metadata !DIExpression()), !dbg !1152
  %4 = icmp eq i8* %2, null, !dbg !1157
  br i1 %4, label %5, label %7, !dbg !1158

5:                                                ; preds = %1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(13) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i64 13, i1 false), !dbg !1159
  %6 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1161
  br label %55, !dbg !1162

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !1163
  %9 = load i32, i32* %8, align 8, !dbg !1163, !tbaa !1164
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 1, !dbg !1166
  store i32 %9, i32* %10, align 8, !dbg !1167, !tbaa !1164
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !1168
  %12 = load i32, i32* %11, align 8, !dbg !1168, !tbaa !1169
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 3, !dbg !1170
  store i32 %12, i32* %13, align 8, !dbg !1171, !tbaa !1169
  %14 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !1172
  %15 = load i32, i32* %14, align 4, !dbg !1172, !tbaa !1173
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 4, !dbg !1174
  store i32 %15, i32* %16, align 4, !dbg !1175, !tbaa !1173
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !1176
  %18 = load i32, i32* %17, align 8, !dbg !1176, !tbaa !1177
  %19 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 5, !dbg !1178
  store i32 %18, i32* %19, align 8, !dbg !1179, !tbaa !1177
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !1180
  %21 = load %struct.parm*, %struct.parm** %20, align 8, !dbg !1180, !tbaa !1182
  %.not = icmp eq %struct.parm* %21, null, !dbg !1183
  br i1 %.not, label %27, label %22, !dbg !1184

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !1185
  %24 = load %struct.parm*, %struct.parm** %23, align 8, !dbg !1185, !tbaa !1182
  %25 = call %struct.parm* @copyparm(%struct.parm* %24) #14, !dbg !1187
  %26 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 6, !dbg !1188
  store %struct.parm* %25, %struct.parm** %26, align 8, !dbg !1189, !tbaa !1182
  br label %29, !dbg !1190

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 6, !dbg !1191
  store %struct.parm* null, %struct.parm** %28, align 8, !dbg !1192, !tbaa !1182
  br label %29

29:                                               ; preds = %27, %22
  call void @llvm.dbg.value(metadata i32 0, metadata !1146, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i64 0, metadata !1146, metadata !DIExpression()), !dbg !1152
  br label %30, !dbg !1193

30:                                               ; preds = %29, %35
  %indvars.iv712 = phi i64 [ 0, %29 ], [ %indvars.iv.next8, %35 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv712, metadata !1146, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i32 0, metadata !1147, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata i64 0, metadata !1147, metadata !DIExpression()), !dbg !1152
  br label %31, !dbg !1195

31:                                               ; preds = %30, %31
  %indvars.iv11 = phi i64 [ 0, %30 ], [ %indvars.iv.next, %31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !1147, metadata !DIExpression()), !dbg !1152
  %32 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 0, i64 %indvars.iv712, i64 %indvars.iv11, !dbg !1199
  %33 = load double, double* %32, align 8, !dbg !1199, !tbaa !1023
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 0, i64 %indvars.iv712, i64 %indvars.iv11, !dbg !1202
  store double %33, double* %34, align 8, !dbg !1203, !tbaa !1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1147, metadata !DIExpression()), !dbg !1152
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !1205
  br i1 %exitcond.not, label %35, label %31, !dbg !1195, !llvm.loop !1206

35:                                               ; preds = %31
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv712, 1, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !1146, metadata !DIExpression()), !dbg !1152
  %exitcond10.not = icmp eq i64 %indvars.iv.next8, 4, !dbg !1209
  br i1 %exitcond10.not, label %36, label %30, !dbg !1193, !llvm.loop !1210

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1212
  %38 = load %struct.strand_t*, %struct.strand_t** %37, align 8, !dbg !1212, !tbaa !1213
  call void @llvm.dbg.value(metadata %struct.strand_t* %38, metadata !1148, metadata !DIExpression()), !dbg !1152
  %.not15 = icmp eq %struct.strand_t* %38, null, !dbg !1214
  br i1 %.not15, label %46, label %39, !dbg !1216

39:                                               ; preds = %36
  %40 = call %struct.strand_t* @copystrand(%struct.strand_t* nonnull %38), !dbg !1217
  call void @llvm.dbg.value(metadata %struct.strand_t* %40, metadata !1149, metadata !DIExpression()), !dbg !1152
  %41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 3, !dbg !1219
  %42 = bitcast %struct.molecule_t** %41 to i8**, !dbg !1220
  store i8* %2, i8** %42, align 8, !dbg !1220, !tbaa !1102
  %43 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 2, !dbg !1221
  store %struct.strand_t* %40, %struct.strand_t** %43, align 8, !dbg !1222, !tbaa !1213
  %44 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 4, !dbg !1223
  %45 = load %struct.strand_t*, %struct.strand_t** %44, align 8, !dbg !1223, !tbaa !1105
  call void @llvm.dbg.value(metadata %struct.strand_t* %45, metadata !1148, metadata !DIExpression()), !dbg !1152
  br label %46, !dbg !1224

46:                                               ; preds = %39, %36
  %.04 = phi %struct.strand_t* [ %40, %39 ], [ undef, %36 ]
  %.03 = phi %struct.strand_t* [ %45, %39 ], [ %38, %36 ], !dbg !1152
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03, metadata !1148, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata %struct.strand_t* %.04, metadata !1149, metadata !DIExpression()), !dbg !1152
  %.not16 = icmp eq %struct.strand_t* %.03, null, !dbg !1225
  br i1 %.not16, label %._crit_edge, label %.lr.ph, !dbg !1226

.lr.ph:                                           ; preds = %46, %50
  %.114 = phi %struct.strand_t* [ %54, %50 ], [ %.03, %46 ]
  %.1513 = phi %struct.strand_t* [ %47, %50 ], [ %.04, %46 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.114, metadata !1148, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1513, metadata !1149, metadata !DIExpression()), !dbg !1152
  %47 = call %struct.strand_t* @copystrand(%struct.strand_t* %.114), !dbg !1227
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !1150, metadata !DIExpression()), !dbg !1152
  %.not17 = icmp eq %struct.strand_t* %.1513, null, !dbg !1229
  br i1 %.not17, label %50, label %48, !dbg !1231

48:                                               ; preds = %.lr.ph
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1513, i64 0, i32 4, !dbg !1232
  store %struct.strand_t* %47, %struct.strand_t** %49, align 8, !dbg !1233, !tbaa !1105
  br label %50, !dbg !1234

50:                                               ; preds = %48, %.lr.ph
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %47, i64 0, i32 3, !dbg !1235
  %52 = bitcast %struct.molecule_t** %51 to i8**, !dbg !1236
  store i8* %2, i8** %52, align 8, !dbg !1236, !tbaa !1102
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !1149, metadata !DIExpression()), !dbg !1152
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.114, i64 0, i32 4, !dbg !1237
  %54 = load %struct.strand_t*, %struct.strand_t** %53, align 8, !dbg !1237, !tbaa !1105
  call void @llvm.dbg.value(metadata %struct.strand_t* %54, metadata !1148, metadata !DIExpression()), !dbg !1152
  %.not18 = icmp eq %struct.strand_t* %54, null, !dbg !1225
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !dbg !1226, !llvm.loop !1238

._crit_edge:                                      ; preds = %50, %46
  call void @upd_molnumbers(%struct.molecule_t* nonnull %3) #14, !dbg !1240
  br label %55, !dbg !1241

55:                                               ; preds = %._crit_edge, %5
  %.0 = phi %struct.molecule_t* [ null, %5 ], [ %3, %._crit_edge ], !dbg !1152
  ret %struct.molecule_t* %.0, !dbg !1242
}

declare !dbg !229 dso_local void @upd_molnumbers(%struct.molecule_t*) #3

declare !dbg !234 dso_local %struct.parm* @copyparm(%struct.parm*) #3

; Function Attrs: nounwind uwtable
define internal %struct.reslib_t* @read_reslib_header(i8* %0, %struct._IO_FILE** %1, %struct._IO_FILE** %2, %struct._IO_FILE** %3, %struct._IO_FILE** %4, i8* %5) #0 !dbg !1243 {
  %7 = alloca [128 x i8], align 16
  %8 = alloca [20 x i8], align 16
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1248, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %1, metadata !1249, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %2, metadata !1250, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %3, metadata !1251, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %4, metadata !1252, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i8* %5, metadata !1253, metadata !DIExpression()), !dbg !1271
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1272
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #14, !dbg !1272
  call void @llvm.dbg.declare(metadata [128 x i8]* %7, metadata !1259, metadata !DIExpression()), !dbg !1273
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1272
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %13) #14, !dbg !1272
  call void @llvm.dbg.declare(metadata [20 x i8]* %8, metadata !1263, metadata !DIExpression()), !dbg !1274
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1272
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %14) #14, !dbg !1272
  call void @llvm.dbg.declare(metadata [100 x i8]* %9, metadata !1264, metadata !DIExpression()), !dbg !1275
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0, !dbg !1272
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %15) #14, !dbg !1272
  call void @llvm.dbg.declare(metadata [100 x i8]* %10, metadata !1268, metadata !DIExpression()), !dbg !1276
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1277
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %16) #14, !dbg !1277
  call void @llvm.dbg.declare(metadata [256 x i8]* %11, metadata !1269, metadata !DIExpression()), !dbg !1278
  %17 = call i8* @strstr(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #13, !dbg !1279
  %.not = icmp eq i8* %17, null, !dbg !1281
  br i1 %.not, label %29, label %18, !dbg !1282

18:                                               ; preds = %6
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0, !dbg !1283
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %19, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* %0) #14, !dbg !1285
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0, !dbg !1286
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1287
  call void @mk_fname(i8* nonnull %21, i8* nonnull %22), !dbg !1288
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1289
  %24 = call %struct._IO_FILE* @fopen(i8* nonnull %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !1291
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %24, metadata !1254, metadata !DIExpression()), !dbg !1271
  %25 = icmp eq %struct._IO_FILE* %24, null, !dbg !1292
  br i1 %25, label %26, label %37, !dbg !1293

26:                                               ; preds = %18
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1294
  %28 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %27) #14, !dbg !1296
  br label %189, !dbg !1297

29:                                               ; preds = %6
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1298
  call void @mk_fname(i8* %0, i8* nonnull %30), !dbg !1300
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1301
  %32 = call %struct._IO_FILE* @fopen(i8* nonnull %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !1303
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %32, metadata !1254, metadata !DIExpression()), !dbg !1271
  %33 = icmp eq %struct._IO_FILE* %32, null, !dbg !1304
  br i1 %33, label %34, label %37, !dbg !1305

34:                                               ; preds = %29
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1306
  %36 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0), i8* nonnull %35) #14, !dbg !1308
  br label %189, !dbg !1309

37:                                               ; preds = %29, %18
  %.02 = phi %struct._IO_FILE* [ %24, %18 ], [ %32, %29 ], !dbg !1310
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.02, metadata !1254, metadata !DIExpression()), !dbg !1271
  %38 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 32) #14, !dbg !1311
  %39 = bitcast i8* %38 to %struct.reslib_t*, !dbg !1313
  call void @llvm.dbg.value(metadata %struct.reslib_t* %39, metadata !1255, metadata !DIExpression()), !dbg !1271
  %40 = icmp eq i8* %38, null, !dbg !1314
  br i1 %40, label %41, label %44, !dbg !1315

41:                                               ; preds = %37
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i8* %0) #14, !dbg !1316
  %43 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1318
  br label %189, !dbg !1319

44:                                               ; preds = %37
  %45 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #13, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %45, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1271
  %46 = shl i64 %45, 32, !dbg !1321
  %sext = add i64 %46, 4294967296, !dbg !1321
  %47 = ashr exact i64 %sext, 32, !dbg !1321
  %48 = call noalias i8* @malloc(i64 %47) #14, !dbg !1323
  call void @llvm.dbg.value(metadata i8* %48, metadata !1258, metadata !DIExpression()), !dbg !1271
  %49 = icmp eq i8* %48, null, !dbg !1324
  br i1 %49, label %50, label %53, !dbg !1325

50:                                               ; preds = %44
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i8* %0) #14, !dbg !1326
  %52 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1328
  br label %189, !dbg !1329

53:                                               ; preds = %44
  %54 = call i8* @strcpy(i8* noundef nonnull %48, i8* noundef nonnull dereferenceable(1) %0) #14, !dbg !1330
  %55 = load %struct.reslib_t*, %struct.reslib_t** @reslibs, align 8, !dbg !1331, !tbaa !379
  %56 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 0, !dbg !1332
  store %struct.reslib_t* %55, %struct.reslib_t** %56, align 8, !dbg !1333, !tbaa !426
  store i8* %38, i8** bitcast (%struct.reslib_t** @reslibs to i8**), align 8, !dbg !1334, !tbaa !379
  %57 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 1, !dbg !1335
  store i8* %48, i8** %57, align 8, !dbg !1336, !tbaa !421
  %58 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 2, !dbg !1337
  store i32 0, i32* %58, align 8, !dbg !1338, !tbaa !388
  %59 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 3, !dbg !1339
  store i32 0, i32* %59, align 4, !dbg !1340, !tbaa !1341
  %60 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 4, !dbg !1342
  store %struct.residue_t* null, %struct.residue_t** %60, align 8, !dbg !1343, !tbaa !639
  store %struct._IO_FILE* null, %struct._IO_FILE** %1, align 8, !dbg !1344, !tbaa !379
  store %struct._IO_FILE* null, %struct._IO_FILE** %2, align 8, !dbg !1345, !tbaa !379
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !1346, !tbaa !379
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8, !dbg !1347, !tbaa !379
  store i8 0, i8* %5, align 1, !dbg !1348, !tbaa !457
  %61 = call i8* @strstr(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #13, !dbg !1349
  %62 = icmp eq i8* %61, null, !dbg !1351
  br i1 %62, label %63, label %156, !dbg !1352

63:                                               ; preds = %53
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1353
  %65 = call i8* @fgets(i8* nonnull %64, i32 128, %struct._IO_FILE* %.02) #14, !dbg !1355
  %.not7 = icmp eq i8* %65, null, !dbg !1356
  br i1 %.not7, label %._crit_edge, label %.lr.ph, !dbg !1356

.lr.ph:                                           ; preds = %63, %.backedge
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1357
  %67 = load i8, i8* %66, align 16, !dbg !1357, !tbaa !457
  %68 = icmp eq i8 %67, 35, !dbg !1360
  br i1 %68, label %.backedge, label %70, !dbg !1361

.backedge:                                        ; preds = %84, %89, %80, %105, %121, %146, %134, %109, %97, %101, %70, %.lr.ph
  %69 = call i8* @fgets(i8* nonnull %64, i32 128, %struct._IO_FILE* %.02) #14, !dbg !1355
  %.not21 = icmp eq i8* %69, null, !dbg !1356
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !dbg !1356, !llvm.loop !1362

70:                                               ; preds = %.lr.ph
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1364
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1366
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1367
  %74 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* nonnull %72, i8* nonnull %73) #14, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %74, metadata !1256, metadata !DIExpression()), !dbg !1271
  switch i32 %74, label %._crit_edge [
    i32 -1, label %.backedge
    i32 2, label %75
  ], !dbg !1369

75:                                               ; preds = %70
  %76 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1370
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %76, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i64 5), !dbg !1373
  %77 = icmp eq i32 %bcmp, 0, !dbg !1374
  br i1 %77, label %78, label %91, !dbg !1375

78:                                               ; preds = %75
  %79 = bitcast [100 x i8]* %9 to i32*, !dbg !1376
  %lhsv26 = load i32, i32* %79, align 16, !dbg !1376
  %.not28 = icmp eq i32 %lhsv26, 6385252, !dbg !1376
  br i1 %.not28, label %80, label %82, !dbg !1379

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 2, !dbg !1380
  store i32 1, i32* %81, align 8, !dbg !1381, !tbaa !388
  br label %.backedge, !dbg !1382

82:                                               ; preds = %78
  %83 = bitcast [100 x i8]* %9 to i32*, !dbg !1383
  %lhsv29 = load i32, i32* %83, align 16, !dbg !1383
  %.not31 = icmp eq i32 %lhsv29, 6385266, !dbg !1383
  br i1 %.not31, label %84, label %86, !dbg !1385

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 2, !dbg !1386
  store i32 2, i32* %85, align 8, !dbg !1387, !tbaa !388
  br label %.backedge, !dbg !1388

86:                                               ; preds = %82
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1389
  %bcmp32 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %87, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 3), !dbg !1391
  %88 = icmp eq i32 %bcmp32, 0, !dbg !1392
  br i1 %88, label %89, label %._crit_edge, !dbg !1393

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 2, !dbg !1394
  store i32 3, i32* %90, align 8, !dbg !1395, !tbaa !388
  br label %.backedge

91:                                               ; preds = %75
  %92 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1396
  %bcmp8 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %92, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i64 9), !dbg !1398
  %93 = icmp eq i32 %bcmp8, 0, !dbg !1399
  br i1 %93, label %94, label %103, !dbg !1400

94:                                               ; preds = %91
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1401
  %bcmp22 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %95, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i64 7), !dbg !1404
  %96 = icmp eq i32 %bcmp22, 0, !dbg !1405
  br i1 %96, label %97, label %99, !dbg !1406

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 3, !dbg !1407
  store i32 1, i32* %98, align 4, !dbg !1408, !tbaa !1341
  br label %.backedge, !dbg !1409

99:                                               ; preds = %94
  %100 = bitcast [100 x i8]* %9 to i32*, !dbg !1410
  %lhsv23 = load i32, i32* %100, align 16, !dbg !1410
  %.not25 = icmp eq i32 %lhsv23, 7105633, !dbg !1410
  br i1 %.not25, label %101, label %._crit_edge, !dbg !1412

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %39, i64 0, i32 3, !dbg !1413
  store i32 2, i32* %102, align 4, !dbg !1414, !tbaa !1341
  br label %.backedge

103:                                              ; preds = %91
  %104 = bitcast [20 x i8]* %8 to i32*, !dbg !1415
  %lhsv = load i32, i32* %104, align 16, !dbg !1415
  %.not10 = icmp eq i32 %lhsv, 6710895, !dbg !1415
  br i1 %.not10, label %105, label %107, !dbg !1417

105:                                              ; preds = %103
  %106 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1418
  call void @mk_fname(i8* nonnull %106, i8* nonnull %5), !dbg !1420
  br label %.backedge, !dbg !1421

107:                                              ; preds = %103
  %108 = bitcast [20 x i8]* %8 to i32*, !dbg !1422
  %lhsv11 = load i32, i32* %108, align 16, !dbg !1422
  %.not13 = icmp eq i32 %lhsv11, 6448240, !dbg !1422
  br i1 %.not13, label %109, label %119, !dbg !1424

109:                                              ; preds = %107
  %110 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1425
  %111 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1427
  call void @mk_fname(i8* nonnull %110, i8* nonnull %111), !dbg !1428
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1429
  %113 = call %struct._IO_FILE* @fopen(i8* nonnull %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !1431
  store %struct._IO_FILE* %113, %struct._IO_FILE** %1, align 8, !dbg !1432, !tbaa !379
  %114 = icmp eq %struct._IO_FILE* %113, null, !dbg !1433
  br i1 %114, label %115, label %.backedge, !dbg !1434

115:                                              ; preds = %109
  %116 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1435
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* nonnull %116) #14, !dbg !1437
  %118 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1438
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1255, metadata !DIExpression()), !dbg !1271
  br label %._crit_edge, !dbg !1439

119:                                              ; preds = %107
  %120 = bitcast [20 x i8]* %8 to i32*, !dbg !1440
  %lhsv14 = load i32, i32* %120, align 16, !dbg !1440
  %.not16 = icmp eq i32 %lhsv14, 6581858, !dbg !1440
  br i1 %.not16, label %121, label %131, !dbg !1442

121:                                              ; preds = %119
  %122 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1443
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1445
  call void @mk_fname(i8* nonnull %122, i8* nonnull %123), !dbg !1446
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1447
  %125 = call %struct._IO_FILE* @fopen(i8* nonnull %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !1449
  store %struct._IO_FILE* %125, %struct._IO_FILE** %2, align 8, !dbg !1450, !tbaa !379
  %126 = icmp eq %struct._IO_FILE* %125, null, !dbg !1451
  br i1 %126, label %127, label %.backedge, !dbg !1452

127:                                              ; preds = %121
  %128 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1453
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i8* nonnull %128) #14, !dbg !1455
  %130 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1456
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1255, metadata !DIExpression()), !dbg !1271
  br label %._crit_edge, !dbg !1457

131:                                              ; preds = %119
  %132 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1458
  %bcmp17 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %132, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i64 3), !dbg !1460
  %133 = icmp eq i32 %bcmp17, 0, !dbg !1461
  br i1 %133, label %134, label %144, !dbg !1462

134:                                              ; preds = %131
  %135 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1463
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1465
  call void @mk_fname(i8* nonnull %135, i8* nonnull %136), !dbg !1466
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1467
  %138 = call %struct._IO_FILE* @fopen(i8* nonnull %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !1469
  store %struct._IO_FILE* %138, %struct._IO_FILE** %3, align 8, !dbg !1470, !tbaa !379
  %139 = icmp eq %struct._IO_FILE* %138, null, !dbg !1471
  br i1 %139, label %140, label %.backedge, !dbg !1472

140:                                              ; preds = %134
  %141 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1473
  %142 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* nonnull %141) #14, !dbg !1475
  %143 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1476
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1255, metadata !DIExpression()), !dbg !1271
  br label %._crit_edge, !dbg !1477

144:                                              ; preds = %131
  %145 = bitcast [20 x i8]* %8 to i32*, !dbg !1478
  %lhsv18 = load i32, i32* %145, align 16, !dbg !1478
  %.not20 = icmp eq i32 %lhsv18, 6908003, !dbg !1478
  br i1 %.not20, label %146, label %._crit_edge, !dbg !1480

146:                                              ; preds = %144
  %147 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1481
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1483
  call void @mk_fname(i8* nonnull %147, i8* nonnull %148), !dbg !1484
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1485
  %150 = call %struct._IO_FILE* @fopen(i8* nonnull %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #14, !dbg !1487
  store %struct._IO_FILE* %150, %struct._IO_FILE** %4, align 8, !dbg !1488, !tbaa !379
  %151 = icmp eq %struct._IO_FILE* %150, null, !dbg !1489
  br i1 %151, label %152, label %.backedge, !dbg !1490

152:                                              ; preds = %146
  %153 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1491
  %154 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* nonnull %153) #14, !dbg !1493
  %155 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1494
  call void @llvm.dbg.value(metadata %struct.reslib_t* null, metadata !1255, metadata !DIExpression()), !dbg !1271
  br label %._crit_edge, !dbg !1495

156:                                              ; preds = %53
  %157 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0, !dbg !1496
  call void @mk_fname(i8* nonnull %157, i8* nonnull %5), !dbg !1498
  br label %._crit_edge

._crit_edge:                                      ; preds = %156, %.backedge, %63, %144, %99, %86, %70, %152, %140, %127, %115
  %.01 = phi %struct.reslib_t* [ null, %115 ], [ null, %127 ], [ null, %140 ], [ null, %152 ], [ null, %70 ], [ null, %86 ], [ null, %99 ], [ null, %144 ], [ %39, %63 ], [ %39, %.backedge ], [ %39, %156 ], !dbg !1271
  call void @llvm.dbg.value(metadata %struct.reslib_t* %.01, metadata !1255, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.label(metadata !1270), !dbg !1499
  %158 = call i32 @fclose(%struct._IO_FILE* %.02) #14, !dbg !1500
  %159 = icmp eq %struct.reslib_t* %.01, null, !dbg !1501
  br i1 %159, label %160, label %189, !dbg !1503

160:                                              ; preds = %._crit_edge
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !1504, !tbaa !379
  %.not3 = icmp eq %struct._IO_FILE* %161, null, !dbg !1504
  br i1 %.not3, label %165, label %162, !dbg !1507

162:                                              ; preds = %160
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8, !dbg !1508, !tbaa !379
  %164 = call i32 @fclose(%struct._IO_FILE* %163) #14, !dbg !1509
  br label %165, !dbg !1509

165:                                              ; preds = %162, %160
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1510, !tbaa !379
  %.not4 = icmp eq %struct._IO_FILE* %166, null, !dbg !1510
  br i1 %.not4, label %170, label %167, !dbg !1512

167:                                              ; preds = %165
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !1513, !tbaa !379
  %169 = call i32 @fclose(%struct._IO_FILE* %168) #14, !dbg !1514
  br label %170, !dbg !1514

170:                                              ; preds = %167, %165
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1515, !tbaa !379
  %.not5 = icmp eq %struct._IO_FILE* %171, null, !dbg !1515
  br i1 %.not5, label %175, label %172, !dbg !1517

172:                                              ; preds = %170
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1518, !tbaa !379
  %174 = call i32 @fclose(%struct._IO_FILE* %173) #14, !dbg !1519
  br label %175, !dbg !1519

175:                                              ; preds = %172, %170
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1520, !tbaa !379
  %.not6 = icmp eq %struct._IO_FILE* %176, null, !dbg !1520
  br i1 %.not6, label %180, label %177, !dbg !1522

177:                                              ; preds = %175
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1523, !tbaa !379
  %179 = call i32 @fclose(%struct._IO_FILE* %178) #14, !dbg !1524
  br label %180, !dbg !1524

180:                                              ; preds = %177, %175
  %181 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1525
  %182 = call i64 @strlen(i8* noundef nonnull %181) #13, !dbg !1526
  %183 = trunc i64 %182 to i32, !dbg !1526
  %184 = add i32 %183, -1, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %184, metadata !1257, metadata !DIExpression()), !dbg !1271
  %185 = icmp slt i32 %184, 20, !dbg !1527
  %. = select i1 %185, i32 %184, i32 20, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %., metadata !1257, metadata !DIExpression()), !dbg !1271
  %186 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1528
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %., i32 %., i8* nonnull %186) #14, !dbg !1529
  %188 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1530
  br label %189, !dbg !1531

189:                                              ; preds = %._crit_edge, %180, %50, %41, %34, %26
  %.0 = phi %struct.reslib_t* [ null, %26 ], [ null, %41 ], [ null, %50 ], [ null, %34 ], [ %.01, %180 ], [ %.01, %._crit_edge ], !dbg !1271
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0, !dbg !1532
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %190) #14, !dbg !1532
  %191 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0, !dbg !1532
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %191) #14, !dbg !1532
  %192 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0, !dbg !1532
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %192) #14, !dbg !1532
  %193 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0, !dbg !1532
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %193) #14, !dbg !1532
  %194 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0, !dbg !1532
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %194) #14, !dbg !1532
  ret %struct.reslib_t* %.0, !dbg !1532
}

; Function Attrs: nounwind uwtable
define internal void @initatoms() #0 !dbg !324 {
  %1 = load i32, i32* @initatoms.init, align 4, !dbg !1533, !tbaa !830
  %.not = icmp eq i32 %1, 0, !dbg !1533
  br i1 %.not, label %13, label %2, !dbg !1535

2:                                                ; preds = %0
  store i32 0, i32* @initatoms.init, align 4, !dbg !1536, !tbaa !830
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !329, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 0, metadata !328, metadata !DIExpression()), !dbg !1537
  br label %3, !dbg !1538

3:                                                ; preds = %2, %10
  %.04 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %.013 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %2 ], [ %12, %10 ]
  call void @llvm.dbg.value(metadata i32 %.04, metadata !328, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata %struct.atom_t* %.013, metadata !329, metadata !DIExpression()), !dbg !1537
  call void @NAB_initatom(%struct.atom_t* %.013, i32 1) #14, !dbg !1540
  %4 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !1543
  %5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i64 0, i32 0, !dbg !1544
  store i8* %4, i8** %5, align 8, !dbg !1545, !tbaa !931
  %6 = icmp eq i8* %4, null, !dbg !1546
  br i1 %6, label %7, label %10, !dbg !1548

7:                                                ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1549, !tbaa !379
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %8) #15, !dbg !1551
  call void @exit(i32 1) #12, !dbg !1552
  unreachable, !dbg !1552

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.04, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %11, metadata !328, metadata !DIExpression()), !dbg !1537
  %12 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i64 1, !dbg !1554
  call void @llvm.dbg.value(metadata %struct.atom_t* %12, metadata !329, metadata !DIExpression()), !dbg !1537
  %exitcond.not = icmp eq i32 %11, 1000, !dbg !1555
  br i1 %exitcond.not, label %13, label %3, !dbg !1538, !llvm.loop !1556

13:                                               ; preds = %0, %10
  ret void, !dbg !1558
}

; Function Attrs: nounwind uwtable
define internal void @off2reslib(i8* %0, %struct.reslib_t* %1) #0 !dbg !1559 {
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
  call void @llvm.dbg.value(metadata i8* %0, metadata !1563, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !1564, metadata !DIExpression()), !dbg !1619
  %20 = bitcast i32* %3 to i8*, !dbg !1620
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #14, !dbg !1620
  %21 = bitcast i32* %4 to i8*, !dbg !1620
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #14, !dbg !1620
  %22 = bitcast [100 x i32]* %5 to i8*, !dbg !1621
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %22) #14, !dbg !1621
  call void @llvm.dbg.declare(metadata [100 x i32]* %5, metadata !1597, metadata !DIExpression()), !dbg !1622
  %23 = bitcast [100 x i32]* %6 to i8*, !dbg !1621
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %23) #14, !dbg !1621
  call void @llvm.dbg.declare(metadata [100 x i32]* %6, metadata !1599, metadata !DIExpression()), !dbg !1623
  %24 = bitcast [100 x i32]* %7 to i8*, !dbg !1621
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %24) #14, !dbg !1621
  call void @llvm.dbg.declare(metadata [100 x i32]* %7, metadata !1600, metadata !DIExpression()), !dbg !1624
  %25 = bitcast [100 x i32]* %8 to i8*, !dbg !1621
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %25) #14, !dbg !1621
  call void @llvm.dbg.declare(metadata [100 x i32]* %8, metadata !1601, metadata !DIExpression()), !dbg !1625
  %26 = bitcast [100 x i32]* %9 to i8*, !dbg !1621
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %26) #14, !dbg !1621
  call void @llvm.dbg.declare(metadata [100 x i32]* %9, metadata !1602, metadata !DIExpression()), !dbg !1626
  %27 = bitcast [100 x i32]* %10 to i8*, !dbg !1627
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %27) #14, !dbg !1627
  call void @llvm.dbg.declare(metadata [100 x i32]* %10, metadata !1603, metadata !DIExpression()), !dbg !1628
  %28 = bitcast [100 x i32]* %11 to i8*, !dbg !1627
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %28) #14, !dbg !1627
  call void @llvm.dbg.declare(metadata [100 x i32]* %11, metadata !1604, metadata !DIExpression()), !dbg !1629
  %29 = bitcast [100 x double]* %12 to i8*, !dbg !1630
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %29) #14, !dbg !1630
  call void @llvm.dbg.declare(metadata [100 x double]* %12, metadata !1605, metadata !DIExpression()), !dbg !1631
  %30 = bitcast [100 x double]* %13 to i8*, !dbg !1630
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %30) #14, !dbg !1630
  call void @llvm.dbg.declare(metadata [100 x double]* %13, metadata !1607, metadata !DIExpression()), !dbg !1632
  %31 = bitcast [100 x double]* %14 to i8*, !dbg !1630
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %31) #14, !dbg !1630
  call void @llvm.dbg.declare(metadata [100 x double]* %14, metadata !1608, metadata !DIExpression()), !dbg !1633
  %32 = bitcast [100 x double]* %15 to i8*, !dbg !1630
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %32) #14, !dbg !1630
  call void @llvm.dbg.declare(metadata [100 x double]* %15, metadata !1609, metadata !DIExpression()), !dbg !1634
  %33 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %16, i64 0, i64 0, i64 0, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %33) #14, !dbg !1635
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %16, metadata !1610, metadata !DIExpression()), !dbg !1636
  %34 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %17, i64 0, i64 0, i64 0, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %34) #14, !dbg !1635
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %17, metadata !1613, metadata !DIExpression()), !dbg !1637
  %35 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %18, i64 0, i64 0, i64 0, !dbg !1635
  call void @llvm.lifetime.start.p0i8(i64 1000, i8* nonnull %35) #14, !dbg !1635
  call void @llvm.dbg.declare(metadata [100 x [10 x i8]]* %18, metadata !1614, metadata !DIExpression()), !dbg !1638
  %36 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0, !dbg !1639
  call void @llvm.lifetime.start.p0i8(i64 255, i8* nonnull %36) #14, !dbg !1639
  call void @llvm.dbg.declare(metadata [255 x i8]* %19, metadata !1615, metadata !DIExpression()), !dbg !1640
  store i32 0, i32* @n_atoms, align 4, !dbg !1641, !tbaa !830
  %37 = call %struct.DATABASEt* (i8*, i32, ...) bitcast (%struct.DATABASEt* (...)* @dbDBRndOpen to %struct.DATABASEt* (i8*, i32, ...)*)(i8* %0, i32 1) #14, !dbg !1642
  call void @llvm.dbg.value(metadata %struct.DATABASEt* %37, metadata !1570, metadata !DIExpression()), !dbg !1619
  %38 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %18, i64 0, i64 0, !dbg !1643
  call void @llvm.dbg.value(metadata i32* %4, metadata !1567, metadata !DIExpression(DW_OP_deref)), !dbg !1619
  %39 = call signext i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, [10 x i8]*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32* nonnull %4, [10 x i8]* nonnull %38, i32 10) #14, !dbg !1644
  call void @llvm.dbg.value(metadata i8 %39, metadata !1596, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1569, metadata !DIExpression()), !dbg !1619
  %40 = load i32, i32* %4, align 4, !dbg !1645, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %40, metadata !1567, metadata !DIExpression()), !dbg !1619
  %41 = icmp sgt i32 %40, 0, !dbg !1648
  br i1 %41, label %.lr.ph16, label %._crit_edge17, !dbg !1649

.lr.ph16:                                         ; preds = %2, %104
  %indvars.iv614 = phi i64 [ %indvars.iv.next7, %104 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv614, metadata !1569, metadata !DIExpression()), !dbg !1619
  %42 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0, !dbg !1650
  %43 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %18, i64 0, i64 %indvars.iv614, i64 0, !dbg !1652
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %42, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %43) #14, !dbg !1653
  call void (%struct.DATABASEt*, ...) bitcast (void (...)* @DBZeroPrefix to void (%struct.DATABASEt*, ...)*)(%struct.DATABASEt* %37) #14, !dbg !1654
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0, !dbg !1655
  call void (%struct.DATABASEt*, i8*, ...) bitcast (void (...)* @DBPushPrefix to void (%struct.DATABASEt*, i8*, ...)*)(%struct.DATABASEt* %37, i8* nonnull %45) #14, !dbg !1656
  call void @llvm.dbg.value(metadata i32* %3, metadata !1566, metadata !DIExpression(DW_OP_deref)), !dbg !1619
  %46 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...) bitcast (i8 (...)* @bDBGetValue to i8 (%struct.DATABASEt*, i8*, i32*, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i32* nonnull %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i32 1) #14, !dbg !1657
  call void @llvm.dbg.value(metadata i8 %46, metadata !1596, metadata !DIExpression()), !dbg !1619
  %47 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 0, !dbg !1658
  %48 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 0, !dbg !1659
  %49 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0, !dbg !1660
  %50 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 0, !dbg !1661
  %51 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 0, !dbg !1662
  %52 = getelementptr inbounds [100 x double], [100 x double]* %12, i64 0, i64 0, !dbg !1663
  %53 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %16, i64 0, i64 0, !dbg !1664
  %54 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %17, i64 0, i64 0, !dbg !1665
  %55 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, [10 x i8]*, i32, i32, [10 x i8]*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i32* nonnull @n_atoms, i32 3, i32* nonnull %47, i64 4, i32 4, i32* nonnull %48, i64 4, i32 5, i32* nonnull %49, i64 4, i32 6, i32* nonnull %50, i64 4, i32 7, i32* nonnull %51, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 8, double* nonnull %52, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, [10 x i8]* nonnull %53, i32 10, i32 2, [10 x i8]* nonnull %54, i32 10, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #14, !dbg !1666
  call void @llvm.dbg.value(metadata i8 %55, metadata !1596, metadata !DIExpression()), !dbg !1619
  %56 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 0, !dbg !1667
  %57 = getelementptr inbounds [100 x double], [100 x double]* %14, i64 0, i64 0, !dbg !1668
  %58 = getelementptr inbounds [100 x double], [100 x double]* %15, i64 0, i64 0, !dbg !1669
  %59 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, double*, i64, i32, double*, i64, i32, double*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i64 0, i64 0), i32* nonnull @n_atoms, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 1, double* nonnull %56, i64 8, i32 2, double* nonnull %57, i64 8, i32 3, double* nonnull %58, i64 8, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #14, !dbg !1670
  call void @llvm.dbg.value(metadata i8 %59, metadata !1596, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1568, metadata !DIExpression()), !dbg !1619
  %60 = load i32, i32* @n_atoms, align 4, !dbg !1671, !tbaa !830
  %61 = icmp sgt i32 %60, 0, !dbg !1674
  br i1 %61, label %.lr.ph, label %._crit_edge, !dbg !1675

.lr.ph:                                           ; preds = %.lr.ph16, %.lr.ph
  %indvars.iv9 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !1568, metadata !DIExpression()), !dbg !1619
  %62 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv9, !dbg !1676
  call void @llvm.dbg.value(metadata %struct.atom_t* %62, metadata !1565, metadata !DIExpression()), !dbg !1619
  call void @NAB_initatom(%struct.atom_t* nonnull %62, i32 0) #14, !dbg !1678
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 0, !dbg !1679
  %64 = load i8*, i8** %63, align 16, !dbg !1679, !tbaa !931
  %65 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %16, i64 0, i64 %indvars.iv9, i64 0, !dbg !1680
  %66 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %64, i8* noundef nonnull %65) #14, !dbg !1681
  %67 = getelementptr inbounds [100 x double], [100 x double]* %12, i64 0, i64 %indvars.iv9, !dbg !1682
  %68 = load double, double* %67, align 8, !dbg !1682, !tbaa !1023
  %69 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv9, i32 6, !dbg !1683
  store double %68, double* %69, align 16, !dbg !1684, !tbaa !976
  %70 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %indvars.iv9, !dbg !1685
  %71 = load double, double* %70, align 8, !dbg !1685, !tbaa !1023
  %72 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv9, i32 17, i64 0, !dbg !1686
  store double %71, double* %72, align 16, !dbg !1687, !tbaa !1023
  %73 = getelementptr inbounds [100 x double], [100 x double]* %14, i64 0, i64 %indvars.iv9, !dbg !1688
  %74 = load double, double* %73, align 8, !dbg !1688, !tbaa !1023
  %75 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv9, i32 17, i64 1, !dbg !1689
  store double %74, double* %75, align 8, !dbg !1690, !tbaa !1023
  %76 = getelementptr inbounds [100 x double], [100 x double]* %15, i64 0, i64 %indvars.iv9, !dbg !1691
  %77 = load double, double* %76, align 8, !dbg !1691, !tbaa !1023
  %78 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv9, i32 17, i64 2, !dbg !1692
  store double %77, double* %78, align 16, !dbg !1693, !tbaa !1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1568, metadata !DIExpression()), !dbg !1619
  %79 = load i32, i32* @n_atoms, align 4, !dbg !1671, !tbaa !830
  %80 = sext i32 %79 to i64, !dbg !1674
  %81 = icmp slt i64 %indvars.iv.next, %80, !dbg !1674
  br i1 %81, label %.lr.ph, label %._crit_edge, !dbg !1675, !llvm.loop !1695

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph16
  %82 = load i32, i32* @n_atoms, align 4, !dbg !1697, !tbaa !830
  %83 = icmp sgt i32 %82, 0, !dbg !1699
  br i1 %83, label %84, label %85, !dbg !1700

84:                                               ; preds = %._crit_edge
  call void @addres2reslib(%struct.reslib_t* %1), !dbg !1701
  br label %85, !dbg !1701

85:                                               ; preds = %84, %._crit_edge
  %86 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 0, !dbg !1702
  %87 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 0, !dbg !1703
  %88 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0, i64 0, !dbg !1704
  %89 = call signext i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...) bitcast (i8 (...)* @bDBGetTable to i8 (%struct.DATABASEt*, i8*, i32*, i32, i32*, i64, i32, i32*, i64, i32, i32*, i64, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i32, ...)*)(%struct.DATABASEt* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32* nonnull @n_bonds, i32 1, i32* nonnull %86, i64 4, i32 2, i32* nonnull %87, i64 4, i32 3, i32* nonnull %88, i64 4, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0, i32 0, i8* null, i32 0) #14, !dbg !1705
  call void @llvm.dbg.value(metadata i8 %89, metadata !1596, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 0, metadata !1568, metadata !DIExpression()), !dbg !1619
  %90 = load i32, i32* @n_bonds, align 4, !dbg !1706, !tbaa !830
  %91 = icmp sgt i32 %90, 0, !dbg !1709
  br i1 %91, label %.lr.ph12, label %._crit_edge13, !dbg !1710

.lr.ph12:                                         ; preds = %85, %.lr.ph12
  %indvars.iv310 = phi i64 [ %indvars.iv.next4, %.lr.ph12 ], [ 0, %85 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv310, metadata !1568, metadata !DIExpression()), !dbg !1619
  %92 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 %indvars.iv310, !dbg !1711
  %93 = load i32, i32* %92, align 4, !dbg !1711, !tbaa !830
  %94 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv310, i64 0, !dbg !1713
  store i32 %93, i32* %94, align 8, !dbg !1714, !tbaa !830
  %95 = getelementptr inbounds [100 x i32], [100 x i32]* %11, i64 0, i64 %indvars.iv310, !dbg !1715
  %96 = load i32, i32* %95, align 4, !dbg !1715, !tbaa !830
  %97 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv310, i64 1, !dbg !1716
  store i32 %96, i32* %97, align 4, !dbg !1717, !tbaa !830
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv310, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !1568, metadata !DIExpression()), !dbg !1619
  %98 = load i32, i32* @n_bonds, align 4, !dbg !1706, !tbaa !830
  %99 = sext i32 %98 to i64, !dbg !1709
  %100 = icmp slt i64 %indvars.iv.next4, %99, !dbg !1709
  br i1 %100, label %.lr.ph12, label %._crit_edge13, !dbg !1710, !llvm.loop !1719

._crit_edge13:                                    ; preds = %.lr.ph12, %85
  %101 = load i32, i32* @n_bonds, align 4, !dbg !1721, !tbaa !830
  %102 = icmp sgt i32 %101, 0, !dbg !1723
  br i1 %102, label %103, label %104, !dbg !1724

103:                                              ; preds = %._crit_edge13
  call void @addbonds2reslib(%struct.reslib_t* %1), !dbg !1725
  br label %104, !dbg !1725

104:                                              ; preds = %._crit_edge13, %103
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv614, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next7, metadata !1569, metadata !DIExpression()), !dbg !1619
  %105 = load i32, i32* %4, align 4, !dbg !1645, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %105, metadata !1567, metadata !DIExpression()), !dbg !1619
  %106 = sext i32 %105 to i64, !dbg !1648
  %107 = icmp slt i64 %indvars.iv.next7, %106, !dbg !1648
  br i1 %107, label %.lr.ph16, label %._crit_edge17, !dbg !1649, !llvm.loop !1727

._crit_edge17:                                    ; preds = %104, %2
  %108 = getelementptr inbounds [255 x i8], [255 x i8]* %19, i64 0, i64 0, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 255, i8* nonnull %108) #14, !dbg !1729
  %109 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %18, i64 0, i64 0, i64 0, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %109) #14, !dbg !1729
  %110 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %17, i64 0, i64 0, i64 0, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %110) #14, !dbg !1729
  %111 = getelementptr inbounds [100 x [10 x i8]], [100 x [10 x i8]]* %16, i64 0, i64 0, i64 0, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 1000, i8* nonnull %111) #14, !dbg !1729
  %112 = bitcast [100 x double]* %15 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %112) #14, !dbg !1729
  %113 = bitcast [100 x double]* %14 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %113) #14, !dbg !1729
  %114 = bitcast [100 x double]* %13 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %114) #14, !dbg !1729
  %115 = bitcast [100 x double]* %12 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %115) #14, !dbg !1729
  %116 = bitcast [100 x i32]* %11 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %116) #14, !dbg !1729
  %117 = bitcast [100 x i32]* %10 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %117) #14, !dbg !1729
  %118 = bitcast [100 x i32]* %9 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %118) #14, !dbg !1729
  %119 = bitcast [100 x i32]* %8 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %119) #14, !dbg !1729
  %120 = bitcast [100 x i32]* %7 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %120) #14, !dbg !1729
  %121 = bitcast [100 x i32]* %6 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %121) #14, !dbg !1729
  %122 = bitcast [100 x i32]* %5 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %122) #14, !dbg !1729
  %123 = bitcast i32* %4 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %123) #14, !dbg !1729
  %124 = bitcast i32* %3 to i8*, !dbg !1729
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %124) #14, !dbg !1729
  ret void, !dbg !1729
}

; Function Attrs: nounwind uwtable
define internal void @pdb2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !1730 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1734, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !1735, metadata !DIExpression()), !dbg !1747
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1748
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %12) #14, !dbg !1748
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !1736, metadata !DIExpression()), !dbg !1749
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %13) #14, !dbg !1750
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !1737, metadata !DIExpression()), !dbg !1751
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %14) #14, !dbg !1750
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !1739, metadata !DIExpression()), !dbg !1752
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %15) #14, !dbg !1750
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !1740, metadata !DIExpression()), !dbg !1753
  %16 = bitcast i32* %7 to i8*, !dbg !1754
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #14, !dbg !1754
  %17 = bitcast i32* %8 to i8*, !dbg !1754
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #14, !dbg !1754
  %18 = bitcast double* %9 to i8*, !dbg !1755
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #14, !dbg !1755
  %19 = bitcast double* %10 to i8*, !dbg !1755
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #14, !dbg !1755
  %20 = bitcast double* %11 to i8*, !dbg !1755
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #14, !dbg !1755
  store i32 0, i32* @n_atoms, align 4, !dbg !1756, !tbaa !830
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1757, !tbaa !457
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1758
  %22 = call i8* @fgets(i8* nonnull %21, i32 256, %struct._IO_FILE* %0) #14, !dbg !1759
  %.not = icmp eq i8* %22, null, !dbg !1760
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1760

.lr.ph:                                           ; preds = %2, %63
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1761
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %23, i64 6), !dbg !1764
  %24 = icmp eq i32 %bcmp, 0, !dbg !1765
  br i1 %24, label %25, label %27, !dbg !1766

25:                                               ; preds = %.lr.ph
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1767
  call void @setrlibattrs(%struct.reslib_t* %1, i8* nonnull %26), !dbg !1769
  br label %63, !dbg !1770

27:                                               ; preds = %.lr.ph
  %28 = bitcast [256 x i8]* %3 to i32*, !dbg !1771
  %rhsv = load i32, i32* %28, align 16, !dbg !1771
  %.not2 = icmp eq i32 %rhsv, 1297044545, !dbg !1771
  br i1 %.not2, label %32, label %29, !dbg !1773

29:                                               ; preds = %27
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1774
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %30, i64 6), !dbg !1775
  %31 = icmp eq i32 %bcmp3, 0, !dbg !1776
  br i1 %31, label %32, label %63, !dbg !1777

32:                                               ; preds = %29, %27
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1778
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !1780
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1781
  %36 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1782
  call void @llvm.dbg.value(metadata i32* %7, metadata !1741, metadata !DIExpression(DW_OP_deref)), !dbg !1747
  call void @llvm.dbg.value(metadata i32* %8, metadata !1742, metadata !DIExpression(DW_OP_deref)), !dbg !1747
  call void @llvm.dbg.value(metadata double* %9, metadata !1743, metadata !DIExpression(DW_OP_deref)), !dbg !1747
  call void @llvm.dbg.value(metadata double* %10, metadata !1744, metadata !DIExpression(DW_OP_deref)), !dbg !1747
  call void @llvm.dbg.value(metadata double* %11, metadata !1745, metadata !DIExpression(DW_OP_deref)), !dbg !1747
  %37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.82, i64 0, i64 0), i8* nonnull %34, i32* nonnull %7, i8* nonnull %35, i8* nonnull %36, i32* nonnull %8, double* nonnull %9, double* nonnull %10, double* nonnull %11) #14, !dbg !1783
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1784
  %39 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %38) #13, !dbg !1786
  %.not5 = icmp eq i32 %39, 0, !dbg !1787
  br i1 %.not5, label %47, label %40, !dbg !1788

40:                                               ; preds = %32
  %41 = load i32, i32* @n_atoms, align 4, !dbg !1789, !tbaa !830
  %42 = icmp sgt i32 %41, 0, !dbg !1792
  br i1 %42, label %43, label %44, !dbg !1793

43:                                               ; preds = %40
  call void @addres2reslib(%struct.reslib_t* %1), !dbg !1794
  store i32 0, i32* @n_atoms, align 4, !dbg !1796, !tbaa !830
  br label %44, !dbg !1797

44:                                               ; preds = %43, %40
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1798
  %46 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %45) #14, !dbg !1799
  br label %47, !dbg !1800

47:                                               ; preds = %44, %32
  %48 = load i32, i32* @n_atoms, align 4, !dbg !1801, !tbaa !830
  %49 = sext i32 %48 to i64, !dbg !1802
  %50 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %49, !dbg !1802
  call void @llvm.dbg.value(metadata %struct.atom_t* %50, metadata !1746, metadata !DIExpression()), !dbg !1747
  call void @NAB_initatom(%struct.atom_t* nonnull %50, i32 0) #14, !dbg !1803
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %50, i64 0, i32 0, !dbg !1804
  %52 = load i8*, i8** %51, align 16, !dbg !1804, !tbaa !931
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1805
  %54 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %52, i8* noundef nonnull %53) #14, !dbg !1806
  %55 = load double, double* %9, align 8, !dbg !1807, !tbaa !1023
  call void @llvm.dbg.value(metadata double %55, metadata !1743, metadata !DIExpression()), !dbg !1747
  %56 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %49, i32 17, i64 0, !dbg !1808
  store double %55, double* %56, align 16, !dbg !1809, !tbaa !1023
  %57 = load double, double* %10, align 8, !dbg !1810, !tbaa !1023
  call void @llvm.dbg.value(metadata double %57, metadata !1744, metadata !DIExpression()), !dbg !1747
  %58 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %49, i32 17, i64 1, !dbg !1811
  store double %57, double* %58, align 8, !dbg !1812, !tbaa !1023
  %59 = load double, double* %11, align 8, !dbg !1813, !tbaa !1023
  call void @llvm.dbg.value(metadata double %59, metadata !1745, metadata !DIExpression()), !dbg !1747
  %60 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %49, i32 17, i64 2, !dbg !1814
  store double %59, double* %60, align 16, !dbg !1815, !tbaa !1023
  %61 = load i32, i32* @n_atoms, align 4, !dbg !1816, !tbaa !830
  %62 = add nsw i32 %61, 1, !dbg !1816
  store i32 %62, i32* @n_atoms, align 4, !dbg !1816, !tbaa !830
  br label %63, !dbg !1817

63:                                               ; preds = %29, %47, %25
  %64 = call i8* @fgets(i8* nonnull %21, i32 256, %struct._IO_FILE* %0) #14, !dbg !1759
  %.not4 = icmp eq i8* %64, null, !dbg !1760
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !dbg !1760, !llvm.loop !1818

._crit_edge:                                      ; preds = %63, %2
  %65 = load i32, i32* @n_atoms, align 4, !dbg !1820, !tbaa !830
  %66 = icmp sgt i32 %65, 0, !dbg !1822
  br i1 %66, label %67, label %68, !dbg !1823

67:                                               ; preds = %._crit_edge
  call void @addres2reslib(%struct.reslib_t* %1), !dbg !1824
  br label %68, !dbg !1824

68:                                               ; preds = %67, %._crit_edge
  %69 = bitcast double* %11 to i8*, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #14, !dbg !1825
  %70 = bitcast double* %10 to i8*, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #14, !dbg !1825
  %71 = bitcast double* %9 to i8*, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #14, !dbg !1825
  %72 = bitcast i32* %8 to i8*, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %72) #14, !dbg !1825
  %73 = bitcast i32* %7 to i8*, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %73) #14, !dbg !1825
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %74) #14, !dbg !1825
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %75) #14, !dbg !1825
  %76 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %76) #14, !dbg !1825
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1825
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %77) #14, !dbg !1825
  ret void, !dbg !1825
}

; Function Attrs: nounwind uwtable
define internal void @bnd2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !1826 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1828, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !1829, metadata !DIExpression()), !dbg !1835
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1836
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %7) #14, !dbg !1836
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !1830, metadata !DIExpression()), !dbg !1837
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !1838
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %8) #14, !dbg !1838
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !1831, metadata !DIExpression()), !dbg !1839
  %9 = bitcast i32* %5 to i8*, !dbg !1840
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #14, !dbg !1840
  %10 = bitcast i32* %6 to i8*, !dbg !1840
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #14, !dbg !1840
  store i32 0, i32* @n_bonds, align 4, !dbg !1841, !tbaa !830
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !1842
  store i8 0, i8* %11, align 16, !dbg !1843, !tbaa !457
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1844
  %13 = call i8* @fgets(i8* nonnull %12, i32 256, %struct._IO_FILE* %0) #14, !dbg !1845
  %.not = icmp eq i8* %13, null, !dbg !1846
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1846

.lr.ph:                                           ; preds = %2, %61
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1847
  %15 = load i8, i8* %14, align 16, !dbg !1847, !tbaa !457
  %16 = icmp eq i8 %15, 35, !dbg !1850
  br i1 %16, label %17, label %39, !dbg !1851

17:                                               ; preds = %.lr.ph
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1852
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !1855
  %20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %19) #14, !dbg !1856
  %.not4 = icmp eq i32 %20, 1, !dbg !1857
  br i1 %.not4, label %30, label %21, !dbg !1858

21:                                               ; preds = %17
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1859
  %23 = call i64 @strlen(i8* noundef nonnull %22) #13, !dbg !1861
  %24 = trunc i64 %23 to i32, !dbg !1861
  %25 = add i32 %24, -1, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %25, metadata !1832, metadata !DIExpression()), !dbg !1835
  %26 = icmp slt i32 %25, 20, !dbg !1862
  %. = select i1 %26, i32 %25, i32 20, !dbg !1862
  call void @llvm.dbg.value(metadata i32 %., metadata !1832, metadata !DIExpression()), !dbg !1835
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1863
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %., i32 %., i8* nonnull %27) #14, !dbg !1864
  %29 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1865
  br label %66, !dbg !1866

30:                                               ; preds = %17
  %31 = load i32, i32* @n_bonds, align 4, !dbg !1867, !tbaa !830
  %32 = icmp sgt i32 %31, 0, !dbg !1869
  br i1 %32, label %33, label %36, !dbg !1870

33:                                               ; preds = %30
  call void @addbonds2reslib(%struct.reslib_t* %1), !dbg !1871
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !1873
  %35 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %34) #14, !dbg !1874
  store i32 0, i32* @n_bonds, align 4, !dbg !1875, !tbaa !830
  br label %61, !dbg !1876

36:                                               ; preds = %30
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !1877
  %38 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %37) #14, !dbg !1878
  br label %61

39:                                               ; preds = %.lr.ph
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1879
  call void @llvm.dbg.value(metadata i32* %5, metadata !1833, metadata !DIExpression(DW_OP_deref)), !dbg !1835
  call void @llvm.dbg.value(metadata i32* %6, metadata !1834, metadata !DIExpression(DW_OP_deref)), !dbg !1835
  %41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32* nonnull %5, i32* nonnull %6) #14, !dbg !1882
  %.not2 = icmp eq i32 %41, 2, !dbg !1883
  br i1 %.not2, label %51, label %42, !dbg !1884

42:                                               ; preds = %39
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1885
  %44 = call i64 @strlen(i8* noundef nonnull %43) #13, !dbg !1887
  %45 = trunc i64 %44 to i32, !dbg !1887
  %46 = add i32 %45, -1, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %46, metadata !1832, metadata !DIExpression()), !dbg !1835
  %47 = icmp slt i32 %46, 20, !dbg !1888
  %.1 = select i1 %47, i32 %46, i32 20, !dbg !1888
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1832, metadata !DIExpression()), !dbg !1835
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1889
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %.1, i32 %.1, i8* nonnull %48) #14, !dbg !1890
  %50 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !1891
  br label %66, !dbg !1892

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4, !dbg !1893, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %52, metadata !1833, metadata !DIExpression()), !dbg !1835
  %53 = load i32, i32* @n_bonds, align 4, !dbg !1895, !tbaa !830
  %54 = sext i32 %53 to i64, !dbg !1896
  %55 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %54, i64 0, !dbg !1896
  store i32 %52, i32* %55, align 8, !dbg !1897, !tbaa !830
  %56 = load i32, i32* %6, align 4, !dbg !1898, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %56, metadata !1834, metadata !DIExpression()), !dbg !1835
  %57 = sext i32 %53 to i64, !dbg !1899
  %58 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %57, i64 1, !dbg !1899
  store i32 %56, i32* %58, align 4, !dbg !1900, !tbaa !830
  %59 = load i32, i32* @n_bonds, align 4, !dbg !1901, !tbaa !830
  %60 = add nsw i32 %59, 1, !dbg !1901
  store i32 %60, i32* @n_bonds, align 4, !dbg !1901, !tbaa !830
  br label %61

61:                                               ; preds = %36, %33, %51
  %62 = call i8* @fgets(i8* nonnull %12, i32 256, %struct._IO_FILE* %0) #14, !dbg !1845
  %.not3 = icmp eq i8* %62, null, !dbg !1846
  br i1 %.not3, label %._crit_edge, label %.lr.ph, !dbg !1846, !llvm.loop !1902

._crit_edge:                                      ; preds = %61, %2
  %63 = load i32, i32* @n_bonds, align 4, !dbg !1904, !tbaa !830
  %64 = icmp sgt i32 %63, 0, !dbg !1906
  br i1 %64, label %65, label %66, !dbg !1907

65:                                               ; preds = %._crit_edge
  call void @addbonds2reslib(%struct.reslib_t* %1), !dbg !1908
  br label %66, !dbg !1908

66:                                               ; preds = %._crit_edge, %65, %42, %21
  %67 = bitcast i32* %6 to i8*, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %67) #14, !dbg !1909
  %68 = bitcast i32* %5 to i8*, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %68) #14, !dbg !1909
  %69 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %69) #14, !dbg !1909
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1909
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %70) #14, !dbg !1909
  ret void, !dbg !1909
}

declare !dbg !238 dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal void @qr2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !1910 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1912, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !1913, metadata !DIExpression()), !dbg !1923
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1924
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %11) #14, !dbg !1924
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !1914, metadata !DIExpression()), !dbg !1925
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !1926
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %12) #14, !dbg !1926
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !1915, metadata !DIExpression()), !dbg !1927
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1926
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %13) #14, !dbg !1926
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !1916, metadata !DIExpression()), !dbg !1928
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1926
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %14) #14, !dbg !1926
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !1917, metadata !DIExpression()), !dbg !1929
  %15 = bitcast i32* %7 to i8*, !dbg !1930
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #14, !dbg !1930
  %16 = bitcast i32* %8 to i8*, !dbg !1930
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #14, !dbg !1930
  %17 = bitcast double* %9 to i8*, !dbg !1931
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #14, !dbg !1931
  %18 = bitcast double* %10 to i8*, !dbg !1931
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #14, !dbg !1931
  store i32 0, i32* @n_atoms, align 4, !dbg !1932, !tbaa !830
  store i8 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), align 1, !dbg !1933, !tbaa !457
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1934
  %20 = call i8* @fgets(i8* nonnull %19, i32 256, %struct._IO_FILE* %0) #14, !dbg !1935
  %.not = icmp eq i8* %20, null, !dbg !1936
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1936

.lr.ph:                                           ; preds = %2, %.backedge
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1937
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %21, i64 3), !dbg !1940
  %22 = icmp eq i32 %bcmp, 0, !dbg !1941
  br i1 %22, label %.backedge, label %24, !dbg !1942

.backedge:                                        ; preds = %44, %26, %.lr.ph
  %23 = call i8* @fgets(i8* nonnull %19, i32 256, %struct._IO_FILE* %0) #14, !dbg !1935
  %.not4 = icmp eq i8* %23, null, !dbg !1936
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !dbg !1936, !llvm.loop !1943

24:                                               ; preds = %.lr.ph
  %25 = bitcast [256 x i8]* %3 to i32*, !dbg !1945
  %rhsv = load i32, i32* %25, align 16, !dbg !1945
  %.not2 = icmp eq i32 %rhsv, 1297044545, !dbg !1945
  br i1 %.not2, label %29, label %26, !dbg !1947

26:                                               ; preds = %24
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1948
  %bcmp3 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %27, i64 6), !dbg !1949
  %28 = icmp eq i32 %bcmp3, 0, !dbg !1950
  br i1 %28, label %29, label %.backedge, !dbg !1951

29:                                               ; preds = %26, %24
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1952
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !1954
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1955
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1956
  call void @llvm.dbg.value(metadata i32* %7, metadata !1918, metadata !DIExpression(DW_OP_deref)), !dbg !1923
  call void @llvm.dbg.value(metadata i32* %8, metadata !1919, metadata !DIExpression(DW_OP_deref)), !dbg !1923
  call void @llvm.dbg.value(metadata double* %9, metadata !1920, metadata !DIExpression(DW_OP_deref)), !dbg !1923
  call void @llvm.dbg.value(metadata double* %10, metadata !1921, metadata !DIExpression(DW_OP_deref)), !dbg !1923
  %34 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* nonnull %31, i32* nonnull %7, i8* nonnull %32, i8* nonnull %33, i32* nonnull %8, double* nonnull %9, double* nonnull %10) #14, !dbg !1957
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1958
  %36 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %35) #13, !dbg !1960
  %.not5 = icmp eq i32 %36, 0, !dbg !1961
  br i1 %.not5, label %44, label %37, !dbg !1962

37:                                               ; preds = %29
  %38 = load i32, i32* @n_atoms, align 4, !dbg !1963, !tbaa !830
  %39 = icmp sgt i32 %38, 0, !dbg !1966
  br i1 %39, label %40, label %41, !dbg !1967

40:                                               ; preds = %37
  call void @addqr2reslib(%struct.reslib_t* %1), !dbg !1968
  store i32 0, i32* @n_atoms, align 4, !dbg !1970, !tbaa !830
  br label %41, !dbg !1971

41:                                               ; preds = %40, %37
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1972
  %43 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %42) #14, !dbg !1973
  br label %44, !dbg !1974

44:                                               ; preds = %41, %29
  %45 = load i32, i32* @n_atoms, align 4, !dbg !1975, !tbaa !830
  %46 = sext i32 %45 to i64, !dbg !1976
  %47 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %46, !dbg !1976
  call void @llvm.dbg.value(metadata %struct.atom_t* %47, metadata !1922, metadata !DIExpression()), !dbg !1923
  call void @NAB_initatom(%struct.atom_t* nonnull %47, i32 0) #14, !dbg !1977
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %47, i64 0, i32 0, !dbg !1978
  %49 = load i8*, i8** %48, align 16, !dbg !1978, !tbaa !931
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1979
  %51 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %49, i8* noundef nonnull %50) #14, !dbg !1980
  %52 = load double, double* %9, align 8, !dbg !1981, !tbaa !1023
  call void @llvm.dbg.value(metadata double %52, metadata !1920, metadata !DIExpression()), !dbg !1923
  %53 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %46, i32 6, !dbg !1982
  store double %52, double* %53, align 16, !dbg !1983, !tbaa !976
  %54 = load double, double* %10, align 8, !dbg !1984, !tbaa !1023
  call void @llvm.dbg.value(metadata double %54, metadata !1921, metadata !DIExpression()), !dbg !1923
  %55 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %46, i32 7, !dbg !1985
  store double %54, double* %55, align 8, !dbg !1986, !tbaa !980
  %56 = load i32, i32* @n_atoms, align 4, !dbg !1987, !tbaa !830
  %57 = add nsw i32 %56, 1, !dbg !1987
  store i32 %57, i32* @n_atoms, align 4, !dbg !1987, !tbaa !830
  br label %.backedge, !dbg !1988

._crit_edge:                                      ; preds = %.backedge, %2
  %58 = load i32, i32* @n_atoms, align 4, !dbg !1989, !tbaa !830
  %59 = icmp sgt i32 %58, 0, !dbg !1991
  br i1 %59, label %60, label %61, !dbg !1992

60:                                               ; preds = %._crit_edge
  call void @addqr2reslib(%struct.reslib_t* %1), !dbg !1993
  br label %61, !dbg !1993

61:                                               ; preds = %60, %._crit_edge
  %62 = bitcast double* %10 to i8*, !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62) #14, !dbg !1994
  %63 = bitcast double* %9 to i8*, !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #14, !dbg !1994
  %64 = bitcast i32* %8 to i8*, !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64) #14, !dbg !1994
  %65 = bitcast i32* %7 to i8*, !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %65) #14, !dbg !1994
  %66 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %66) #14, !dbg !1994
  %67 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %67) #14, !dbg !1994
  %68 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %68) #14, !dbg !1994
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !1994
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %69) #14, !dbg !1994
  ret void, !dbg !1994
}

; Function Attrs: nounwind uwtable
define internal void @chi2reslib(%struct._IO_FILE* %0, %struct.reslib_t* %1) #0 !dbg !1995 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca [8 x i8], align 1
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1997, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata %struct.reslib_t* %1, metadata !1998, metadata !DIExpression()), !dbg !2014
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2015
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #14, !dbg !2015
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !1999, metadata !DIExpression()), !dbg !2016
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2017
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #14, !dbg !2017
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !2000, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !2002, metadata !DIExpression()), !dbg !2014
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #14, !dbg !2019
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !2004, metadata !DIExpression()), !dbg !2020
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #14, !dbg !2019
  call void @llvm.dbg.declare(metadata [8 x i8]* %6, metadata !2005, metadata !DIExpression()), !dbg !2021
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #14, !dbg !2019
  call void @llvm.dbg.declare(metadata [8 x i8]* %7, metadata !2006, metadata !DIExpression()), !dbg !2022
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2019
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #14, !dbg !2019
  call void @llvm.dbg.declare(metadata [8 x i8]* %8, metadata !2007, metadata !DIExpression()), !dbg !2023
  store i32 0, i32* @n_chi, align 4, !dbg !2024, !tbaa !830
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2025
  store i8 0, i8* %15, align 16, !dbg !2026, !tbaa !457
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !2002, metadata !DIExpression()), !dbg !2014
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2027
  %17 = call i8* @fgets(i8* nonnull %16, i32 256, %struct._IO_FILE* %0) #14, !dbg !2028
  %.not = icmp eq i8* %17, null, !dbg !2029
  br i1 %.not, label %._crit_edge, label %.lr.ph13, !dbg !2029

.lr.ph13:                                         ; preds = %2, %137
  %.0112 = phi %struct.residue_t* [ %.2, %137 ], [ null, %2 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.0112, metadata !2002, metadata !DIExpression()), !dbg !2014
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2030
  %19 = load i8, i8* %18, align 16, !dbg !2030, !tbaa !457
  %20 = icmp eq i8 %19, 35, !dbg !2033
  br i1 %20, label %21, label %58, !dbg !2034

21:                                               ; preds = %.lr.ph13
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2035
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2038
  %24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* nonnull %23) #14, !dbg !2039
  %.not19 = icmp eq i32 %24, 1, !dbg !2040
  br i1 %.not19, label %35, label %25, !dbg !2041

25:                                               ; preds = %21
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2042
  %27 = call i64 @strlen(i8* noundef nonnull %26) #13, !dbg !2044
  %28 = trunc i64 %27 to i32, !dbg !2044
  %29 = add i32 %28, -1, !dbg !2044
  call void @llvm.dbg.value(metadata i32 %29, metadata !2001, metadata !DIExpression()), !dbg !2014
  %30 = icmp slt i32 %29, 20, !dbg !2045
  %. = select i1 %30, i32 %29, i32 20, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %., metadata !2001, metadata !DIExpression()), !dbg !2014
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2046
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %., i32 %., i8* nonnull %31) #14, !dbg !2047
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2048, !tbaa !379
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !2049
  br label %142, !dbg !2050

35:                                               ; preds = %21
  %36 = load i32, i32* @n_chi, align 4, !dbg !2051, !tbaa !830
  %37 = icmp sgt i32 %36, 0, !dbg !2054
  br i1 %37, label %38, label %39, !dbg !2055

38:                                               ; preds = %35
  call void @addchi2reslib(%struct.reslib_t* %1), !dbg !2056
  store i32 0, i32* @n_chi, align 4, !dbg !2058, !tbaa !830
  br label %39, !dbg !2059

39:                                               ; preds = %38, %35
  call void @llvm.dbg.value(metadata %struct.residue_t* null, metadata !2003, metadata !DIExpression()), !dbg !2014
  %40 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %1, i64 0, i32 4, !dbg !2060
  %41 = load %struct.residue_t*, %struct.residue_t** %40, align 8, !dbg !2060, !tbaa !639
  call void @llvm.dbg.value(metadata %struct.residue_t* %41, metadata !2002, metadata !DIExpression()), !dbg !2014
  %.not20 = icmp eq %struct.residue_t* %41, null, !dbg !2062
  br i1 %.not20, label %.loopexit, label %.lr.ph, !dbg !2062

.lr.ph:                                           ; preds = %39, %46
  %.111 = phi %struct.residue_t* [ %48, %46 ], [ %41, %39 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.111, metadata !2002, metadata !DIExpression()), !dbg !2014
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.111, i64 0, i32 4, !dbg !2063
  %43 = load i8*, i8** %42, align 8, !dbg !2063, !tbaa !645
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2067
  %45 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %43, i8* noundef nonnull %44) #13, !dbg !2068
  %.not22 = icmp eq i32 %45, 0, !dbg !2068
  br i1 %.not22, label %.loopexit, label %46, !dbg !2069

46:                                               ; preds = %.lr.ph
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.111, i64 0, i32 0, !dbg !2070
  %48 = load %struct.residue_t*, %struct.residue_t** %47, align 8, !dbg !2070, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.residue_t* %48, metadata !2002, metadata !DIExpression()), !dbg !2014
  %.not23 = icmp eq %struct.residue_t* %48, null, !dbg !2062
  br i1 %.not23, label %.loopexit, label %.lr.ph, !dbg !2062, !llvm.loop !2071

.loopexit:                                        ; preds = %39, %46, %.lr.ph
  %.14 = phi %struct.residue_t* [ %.111, %.lr.ph ], [ %41, %39 ], [ %48, %46 ]
  %.02 = phi %struct.residue_t* [ %.111, %.lr.ph ], [ null, %39 ], [ null, %46 ], !dbg !2073
  call void @llvm.dbg.value(metadata %struct.residue_t* %.02, metadata !2003, metadata !DIExpression()), !dbg !2014
  %.not21 = icmp eq %struct.residue_t* %.02, null, !dbg !2074
  br i1 %.not21, label %49, label %55, !dbg !2076

49:                                               ; preds = %.loopexit
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2077, !tbaa !379
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2079
  %52 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %1, i64 0, i32 1, !dbg !2080
  %53 = load i8*, i8** %52, align 8, !dbg !2080, !tbaa !421
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %51, i8* %53) #11, !dbg !2081
  br label %142, !dbg !2082

55:                                               ; preds = %.loopexit
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2083
  %57 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* noundef nonnull %56) #14, !dbg !2084
  br label %137, !dbg !2085

58:                                               ; preds = %.lr.ph13
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2086
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !2088
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !2089
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !2090
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2091
  %64 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %60, i8* nonnull %61, i8* nonnull %62, i8* nonnull %63) #14, !dbg !2092
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !2093
  %66 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* nonnull %65), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.atom_t* %66, metadata !2012, metadata !DIExpression()), !dbg !2014
  %.not14 = icmp eq %struct.atom_t* %66, null, !dbg !2096
  br i1 %.not14, label %67, label %73, !dbg !2097

67:                                               ; preds = %58
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2098, !tbaa !379
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !2100
  %70 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i64 0, i32 4, !dbg !2101
  %71 = load i8*, i8** %70, align 8, !dbg !2101, !tbaa !645
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %69, i8* %71) #11, !dbg !2102
  call void @exit(i32 1) #12, !dbg !2103
  unreachable, !dbg !2103

73:                                               ; preds = %58
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i64 0, i32 17, !dbg !2104
  %75 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !2104, !tbaa !922
  %76 = ptrtoint %struct.atom_t* %66 to i64, !dbg !2105
  %77 = ptrtoint %struct.atom_t* %75 to i64, !dbg !2105
  %78 = sub i64 %76, %77, !dbg !2105
  %79 = sdiv exact i64 %78, 176, !dbg !2105
  %80 = trunc i64 %79 to i32, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %80, metadata !2008, metadata !DIExpression()), !dbg !2014
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !2107
  %82 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* nonnull %81), !dbg !2109
  call void @llvm.dbg.value(metadata %struct.atom_t* %82, metadata !2012, metadata !DIExpression()), !dbg !2014
  %.not15 = icmp eq %struct.atom_t* %82, null, !dbg !2110
  br i1 %.not15, label %83, label %89, !dbg !2111

83:                                               ; preds = %73
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2112, !tbaa !379
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !2114
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i64 0, i32 4, !dbg !2115
  %87 = load i8*, i8** %86, align 8, !dbg !2115, !tbaa !645
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %85, i8* %87) #11, !dbg !2116
  call void @exit(i32 1) #12, !dbg !2117
  unreachable, !dbg !2117

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i64 0, i32 17, !dbg !2118
  %91 = load %struct.atom_t*, %struct.atom_t** %90, align 8, !dbg !2118, !tbaa !922
  %92 = ptrtoint %struct.atom_t* %82 to i64, !dbg !2119
  %93 = ptrtoint %struct.atom_t* %91 to i64, !dbg !2119
  %94 = sub i64 %92, %93, !dbg !2119
  %95 = sdiv exact i64 %94, 176, !dbg !2119
  %96 = trunc i64 %95 to i32, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %96, metadata !2009, metadata !DIExpression()), !dbg !2014
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !2121
  %98 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* nonnull %97), !dbg !2123
  call void @llvm.dbg.value(metadata %struct.atom_t* %98, metadata !2012, metadata !DIExpression()), !dbg !2014
  %.not16 = icmp eq %struct.atom_t* %98, null, !dbg !2124
  br i1 %.not16, label %99, label %105, !dbg !2125

99:                                               ; preds = %89
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2126, !tbaa !379
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !2128
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i64 0, i32 4, !dbg !2129
  %103 = load i8*, i8** %102, align 8, !dbg !2129, !tbaa !645
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %101, i8* %103) #11, !dbg !2130
  call void @exit(i32 1) #12, !dbg !2131
  unreachable, !dbg !2131

105:                                              ; preds = %89
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i64 0, i32 17, !dbg !2132
  %107 = load %struct.atom_t*, %struct.atom_t** %106, align 8, !dbg !2132, !tbaa !922
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %98, %struct.atom_t* %107), metadata !2010, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 176, DW_OP_div, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2014
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2133
  %109 = call %struct.atom_t* @findatom(%struct.residue_t* %.0112, i8* nonnull %108), !dbg !2135
  call void @llvm.dbg.value(metadata %struct.atom_t* %109, metadata !2012, metadata !DIExpression()), !dbg !2014
  %.not17 = icmp eq %struct.atom_t* %109, null, !dbg !2136
  br i1 %.not17, label %110, label %116, !dbg !2137

110:                                              ; preds = %105
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2138, !tbaa !379
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2140
  %113 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i64 0, i32 4, !dbg !2141
  %114 = load i8*, i8** %113, align 8, !dbg !2141, !tbaa !645
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* nonnull %112, i8* %114) #11, !dbg !2142
  call void @exit(i32 1) #12, !dbg !2143
  unreachable, !dbg !2143

116:                                              ; preds = %105
  %117 = ptrtoint %struct.atom_t* %98 to i64, !dbg !2144
  call void @llvm.dbg.value(metadata !DIArgList(i64 %117, %struct.atom_t* %107), metadata !2010, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 176, DW_OP_div, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2014
  %118 = ptrtoint %struct.atom_t* %107 to i64, !dbg !2144
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %98, i64 %118), metadata !2010, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_constu, 176, DW_OP_div, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2014
  %119 = sub i64 %117, %118, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %119, metadata !2010, metadata !DIExpression(DW_OP_constu, 176, DW_OP_div, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2014
  %120 = sdiv exact i64 %119, 176, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %120, metadata !2010, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2014
  %121 = trunc i64 %120 to i32, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %121, metadata !2010, metadata !DIExpression()), !dbg !2014
  %122 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0112, i64 0, i32 17, !dbg !2146
  %123 = load %struct.atom_t*, %struct.atom_t** %122, align 8, !dbg !2146, !tbaa !922
  %124 = ptrtoint %struct.atom_t* %109 to i64, !dbg !2147
  %125 = ptrtoint %struct.atom_t* %123 to i64, !dbg !2147
  %126 = sub i64 %124, %125, !dbg !2147
  %127 = sdiv exact i64 %126, 176, !dbg !2147
  %128 = trunc i64 %127 to i32, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %128, metadata !2011, metadata !DIExpression()), !dbg !2014
  %129 = load i32, i32* @n_chi, align 4, !dbg !2149, !tbaa !830
  %130 = sext i32 %129 to i64, !dbg !2150
  call void @llvm.dbg.value(metadata !DIArgList([500 x %struct.chiral_t]* @chi, i64 %130), metadata !2013, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2014
  %131 = add nsw i32 %129, 1, !dbg !2151
  store i32 %131, i32* @n_chi, align 4, !dbg !2151, !tbaa !830
  %132 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %130, i32 0, i64 0, !dbg !2152
  store i32 %80, i32* %132, align 8, !dbg !2153, !tbaa !830
  %133 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %130, i32 0, i64 1, !dbg !2154
  store i32 %96, i32* %133, align 4, !dbg !2155, !tbaa !830
  %134 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %130, i32 0, i64 2, !dbg !2156
  store i32 %121, i32* %134, align 8, !dbg !2157, !tbaa !830
  %135 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %130, i32 0, i64 3, !dbg !2158
  store i32 %128, i32* %135, align 4, !dbg !2159, !tbaa !830
  %136 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %130, i32 1, !dbg !2160
  store double 0.000000e+00, double* %136, align 8, !dbg !2161, !tbaa !867
  br label %137

137:                                              ; preds = %116, %55
  %.2 = phi %struct.residue_t* [ %.14, %55 ], [ %.0112, %116 ], !dbg !2014
  call void @llvm.dbg.value(metadata %struct.residue_t* %.2, metadata !2002, metadata !DIExpression()), !dbg !2014
  %138 = call i8* @fgets(i8* nonnull %16, i32 256, %struct._IO_FILE* %0) #14, !dbg !2028
  %.not18 = icmp eq i8* %138, null, !dbg !2029
  br i1 %.not18, label %._crit_edge, label %.lr.ph13, !dbg !2029, !llvm.loop !2162

._crit_edge:                                      ; preds = %137, %2
  %139 = load i32, i32* @n_chi, align 4, !dbg !2164, !tbaa !830
  %140 = icmp sgt i32 %139, 0, !dbg !2166
  br i1 %140, label %141, label %142, !dbg !2167

141:                                              ; preds = %._crit_edge
  call void @addchi2reslib(%struct.reslib_t* %1), !dbg !2168
  store i32 0, i32* @n_chi, align 4, !dbg !2170, !tbaa !830
  br label %142, !dbg !2171

142:                                              ; preds = %._crit_edge, %141, %49, %25
  %143 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0, !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %143) #14, !dbg !2172
  %144 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0, !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %144) #14, !dbg !2172
  %145 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0, !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %145) #14, !dbg !2172
  %146 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %146) #14, !dbg !2172
  %147 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %147) #14, !dbg !2172
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !2172
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %148) #14, !dbg !2172
  ret void, !dbg !2172
}

; Function Attrs: nounwind uwtable
define internal void @mk_fname(i8* %0, i8* %1) #0 !dbg !2173 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %1, metadata !2178, metadata !DIExpression()), !dbg !2179
  %3 = load i8, i8* %0, align 1, !dbg !2180, !tbaa !457
  %4 = icmp eq i8 %3, 47, !dbg !2182
  br i1 %4, label %7, label %5, !dbg !2183

5:                                                ; preds = %2
  %6 = call i32 @strncmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* noundef nonnull %0, i64 2) #13, !dbg !2184
  %.not = icmp eq i32 %6, 0, !dbg !2184
  br i1 %.not, label %7, label %9, !dbg !2185

7:                                                ; preds = %5, %2
  %8 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull %0) #14, !dbg !2186
  br label %11, !dbg !2186

9:                                                ; preds = %5
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i8* nonnull %0) #14, !dbg !2187
  br label %11

11:                                               ; preds = %9, %7
  ret void, !dbg !2188
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare !dbg !308 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !311 dso_local void @NAB_initatom(%struct.atom_t*, i32) #3

declare dso_local %struct.DATABASEt* @dbDBRndOpen(...) #3

declare dso_local signext i8 @bDBGetValue(...) #3

declare dso_local void @DBZeroPrefix(...) #3

declare dso_local void @DBPushPrefix(...) #3

declare dso_local signext i8 @bDBGetTable(...) #3

; Function Attrs: nounwind uwtable
define internal void @addres2reslib(%struct.reslib_t* %0) #0 !dbg !2189 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2193, metadata !DIExpression()), !dbg !2200
  %2 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #14, !dbg !2201
  %3 = bitcast i8* %2 to %struct.residue_t*, !dbg !2203
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2194, metadata !DIExpression()), !dbg !2200
  %4 = icmp eq i8* %2, null, !dbg !2204
  br i1 %4, label %5, label %10, !dbg !2205

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2206
  %7 = load i8*, i8** %6, align 8, !dbg !2206, !tbaa !421
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %7) #14, !dbg !2208
  %9 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2209
  br label %._crit_edge, !dbg !2210

10:                                               ; preds = %1
  %11 = load i32, i32* @n_atoms, align 4, !dbg !2211, !tbaa !830
  %12 = sext i32 %11 to i64, !dbg !2211
  %13 = mul nsw i64 %12, 176, !dbg !2213
  %14 = call noalias i8* @malloc(i64 %13) #14, !dbg !2214
  call void @llvm.dbg.value(metadata i8* %14, metadata !2195, metadata !DIExpression()), !dbg !2200
  %15 = icmp eq i8* %14, null, !dbg !2215
  br i1 %15, label %16, label %21, !dbg !2216

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2217
  %18 = load i8*, i8** %17, align 8, !dbg !2217, !tbaa !421
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %18) #14, !dbg !2219
  %20 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2220
  br label %._crit_edge, !dbg !2221

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2222
  %23 = load %struct.residue_t*, %struct.residue_t** %22, align 8, !dbg !2222, !tbaa !639
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 0, !dbg !2223
  store %struct.residue_t* %23, %struct.residue_t** %24, align 8, !dbg !2224, !tbaa !656
  %25 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2225
  %26 = bitcast %struct.residue_t** %25 to i8**, !dbg !2226
  store i8* %2, i8** %26, align 8, !dbg !2226, !tbaa !639
  %27 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #13, !dbg !2227
  %28 = add i64 %27, 1, !dbg !2228
  %29 = call noalias i8* @malloc(i64 %28) #14, !dbg !2229
  call void @llvm.dbg.value(metadata i8* %29, metadata !2197, metadata !DIExpression()), !dbg !2200
  %30 = icmp eq i8* %29, null, !dbg !2230
  br i1 %30, label %31, label %34, !dbg !2232

31:                                               ; preds = %21
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2233, !tbaa !379
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.73, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %32) #15, !dbg !2235
  call void @exit(i32 1) #12, !dbg !2236
  unreachable, !dbg !2236

34:                                               ; preds = %21
  %35 = call i8* @strcpy(i8* noundef nonnull %29, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #14, !dbg !2237
  %36 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 4, !dbg !2238
  store i8* %29, i8** %36, align 8, !dbg !2239, !tbaa !645
  %37 = call noalias dereferenceable_or_null(1) i8* @malloc(i64 1) #14, !dbg !2240
  call void @llvm.dbg.value(metadata i8* %37, metadata !2197, metadata !DIExpression()), !dbg !2200
  %38 = icmp eq i8* %37, null, !dbg !2241
  br i1 %38, label %39, label %42, !dbg !2243

39:                                               ; preds = %34
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2244, !tbaa !379
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.74, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %40) #15, !dbg !2246
  call void @exit(i32 1) #12, !dbg !2247
  unreachable, !dbg !2247

42:                                               ; preds = %34
  store i8 0, i8* %37, align 1, !dbg !2248
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 5, !dbg !2249
  store i8* %37, i8** %43, align 8, !dbg !2250, !tbaa !780
  %44 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 1, !dbg !2251
  store i32 0, i32* %44, align 8, !dbg !2252, !tbaa !796
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 2, !dbg !2253
  store i32 0, i32* %45, align 4, !dbg !2254, !tbaa !801
  %46 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 3, !dbg !2255
  store i32 0, i32* %46, align 8, !dbg !2256, !tbaa !804
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 6, !dbg !2257
  store i32 0, i32* %47, align 8, !dbg !2258, !tbaa !806
  %48 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 2, !dbg !2259
  %49 = load i32, i32* %48, align 8, !dbg !2259, !tbaa !388
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 7, !dbg !2260
  store i32 %49, i32* %50, align 4, !dbg !2261, !tbaa !877
  %51 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 3, !dbg !2262
  %52 = load i32, i32* %51, align 4, !dbg !2262, !tbaa !1341
  %53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 8, !dbg !2263
  store i32 %52, i32* %53, align 8, !dbg !2264, !tbaa !881
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 9, !dbg !2265
  store %struct.strand_t* null, %struct.strand_t** %54, align 8, !dbg !2266, !tbaa !811
  %55 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 10, !dbg !2267
  store %struct.extbond_t* null, %struct.extbond_t** %55, align 8, !dbg !2268, !tbaa !815
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 11, !dbg !2269
  store i32 0, i32* %56, align 8, !dbg !2270, !tbaa !724
  %57 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 12, !dbg !2271
  store [2 x i32]* null, [2 x i32]** %57, align 8, !dbg !2272, !tbaa !821
  %58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 13, !dbg !2273
  store i32 0, i32* %58, align 8, !dbg !2274, !tbaa !744
  %59 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 14, !dbg !2275
  store %struct.chiral_t* null, %struct.chiral_t** %59, align 8, !dbg !2276, !tbaa !847
  %60 = load i32, i32* @n_atoms, align 4, !dbg !2277, !tbaa !830
  %61 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 15, !dbg !2278
  store i32 %60, i32* %61, align 8, !dbg !2279, !tbaa !698
  %62 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 16, !dbg !2280
  store i32* null, i32** %62, align 8, !dbg !2281, !tbaa !889
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2282
  %64 = bitcast %struct.atom_t** %63 to i8**, !dbg !2283
  store i8* %14, i8** %64, align 8, !dbg !2283, !tbaa !922
  call void @llvm.dbg.value(metadata i32 0, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 0, metadata !2198, metadata !DIExpression()), !dbg !2200
  %65 = load i32, i32* @n_atoms, align 4, !dbg !2284, !tbaa !830
  %66 = icmp sgt i32 %65, 0, !dbg !2287
  br i1 %66, label %.lr.ph, label %._crit_edge, !dbg !2288

.lr.ph:                                           ; preds = %42, %131
  %indvars.iv813 = phi i64 [ %indvars.iv.next9, %131 ], [ 0, %42 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv813, metadata !2198, metadata !DIExpression()), !dbg !2200
  %67 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 0, !dbg !2289
  %68 = load i8*, i8** %67, align 16, !dbg !2289, !tbaa !931
  %69 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %68) #13, !dbg !2291
  %70 = add i64 %69, 1, !dbg !2292
  %71 = call noalias i8* @malloc(i64 %70) #14, !dbg !2293
  call void @llvm.dbg.value(metadata i8* %71, metadata !2196, metadata !DIExpression()), !dbg !2200
  %72 = icmp eq i8* %71, null, !dbg !2294
  br i1 %72, label %73, label %76, !dbg !2296

73:                                               ; preds = %.lr.ph
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2297, !tbaa !379
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.76, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %74) #15, !dbg !2299
  call void @exit(i32 1) #12, !dbg !2300
  unreachable, !dbg !2300

76:                                               ; preds = %.lr.ph
  %77 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 0, !dbg !2301
  %78 = load i8*, i8** %77, align 16, !dbg !2301, !tbaa !931
  %79 = call i8* @strcpy(i8* noundef nonnull %71, i8* noundef nonnull dereferenceable(1) %78) #14, !dbg !2302
  %80 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2303
  %81 = load %struct.atom_t*, %struct.atom_t** %80, align 8, !dbg !2303, !tbaa !922
  %82 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %81, i64 %indvars.iv813, i32 0, !dbg !2304
  store i8* %71, i8** %82, align 8, !dbg !2305, !tbaa !931
  %83 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %81, i64 %indvars.iv813, i32 2, !dbg !2306
  store i32 0, i32* %83, align 8, !dbg !2307, !tbaa !953
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %81, i64 %indvars.iv813, i32 3, !dbg !2308
  store i32 0, i32* %84, align 4, !dbg !2309, !tbaa !957
  call void @llvm.dbg.value(metadata i32 0, metadata !2199, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 0, metadata !2199, metadata !DIExpression()), !dbg !2200
  br label %85, !dbg !2310

85:                                               ; preds = %76, %85
  %indvars.iv11 = phi i64 [ 0, %76 ], [ %indvars.iv.next, %85 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2199, metadata !DIExpression()), !dbg !2200
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2312
  %87 = load %struct.atom_t*, %struct.atom_t** %86, align 8, !dbg !2312, !tbaa !922
  %88 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i64 %indvars.iv813, i32 4, i64 %indvars.iv11, !dbg !2314
  store i32 -1, i32* %88, align 4, !dbg !2315, !tbaa !830
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2199, metadata !DIExpression()), !dbg !2200
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !2317
  br i1 %exitcond.not, label %89, label %85, !dbg !2310, !llvm.loop !2318

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2320
  %91 = load %struct.atom_t*, %struct.atom_t** %90, align 8, !dbg !2320, !tbaa !922
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %91, i64 %indvars.iv813, i32 5, !dbg !2321
  %93 = bitcast %struct.residue_t** %92 to i8**, !dbg !2322
  store i8* %2, i8** %93, align 8, !dbg !2322, !tbaa !973
  %94 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 6, !dbg !2323
  %95 = load double, double* %94, align 16, !dbg !2323, !tbaa !976
  %96 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2324
  %97 = load %struct.atom_t*, %struct.atom_t** %96, align 8, !dbg !2324, !tbaa !922
  %98 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %97, i64 %indvars.iv813, i32 6, !dbg !2325
  store double %95, double* %98, align 8, !dbg !2326, !tbaa !976
  %99 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 7, !dbg !2327
  %100 = load double, double* %99, align 8, !dbg !2327, !tbaa !980
  %101 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %97, i64 %indvars.iv813, i32 7, !dbg !2328
  store double %100, double* %101, align 8, !dbg !2329, !tbaa !980
  %102 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 8, !dbg !2330
  %103 = load double, double* %102, align 16, !dbg !2330, !tbaa !985
  %104 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2331
  %105 = load %struct.atom_t*, %struct.atom_t** %104, align 8, !dbg !2331, !tbaa !922
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %105, i64 %indvars.iv813, i32 8, !dbg !2332
  store double %103, double* %106, align 8, !dbg !2333, !tbaa !985
  %107 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 9, !dbg !2334
  %108 = load double, double* %107, align 8, !dbg !2334, !tbaa !989
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %105, i64 %indvars.iv813, i32 9, !dbg !2335
  store double %108, double* %109, align 8, !dbg !2336, !tbaa !989
  %110 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 11, !dbg !2337
  %111 = load i32, i32* %110, align 8, !dbg !2337, !tbaa !997
  %112 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2338
  %113 = load %struct.atom_t*, %struct.atom_t** %112, align 8, !dbg !2338, !tbaa !922
  %114 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %113, i64 %indvars.iv813, i32 11, !dbg !2339
  store i32 %111, i32* %114, align 8, !dbg !2340, !tbaa !997
  %115 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 12, !dbg !2341
  %116 = load double, double* %115, align 16, !dbg !2341, !tbaa !1001
  %117 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %113, i64 %indvars.iv813, i32 12, !dbg !2342
  store double %116, double* %117, align 8, !dbg !2343, !tbaa !1001
  %118 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 13, !dbg !2344
  %119 = load double, double* %118, align 8, !dbg !2344, !tbaa !1006
  %120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2345
  %121 = load %struct.atom_t*, %struct.atom_t** %120, align 8, !dbg !2345, !tbaa !922
  %122 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %121, i64 %indvars.iv813, i32 13, !dbg !2346
  store double %119, double* %122, align 8, !dbg !2347, !tbaa !1006
  %123 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %121, i64 %indvars.iv813, i32 15, !dbg !2348
  store i32 0, i32* %123, align 4, !dbg !2349, !tbaa !1015
  %124 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %121, i64 %indvars.iv813, i32 16, !dbg !2350
  store i8* null, i8** %124, align 8, !dbg !2351, !tbaa !1020
  call void @llvm.dbg.value(metadata i32 0, metadata !2199, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 0, metadata !2199, metadata !DIExpression()), !dbg !2200
  br label %125, !dbg !2352

125:                                              ; preds = %89, %125
  %indvars.iv412 = phi i64 [ 0, %89 ], [ %indvars.iv.next5, %125 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv412, metadata !2199, metadata !DIExpression()), !dbg !2200
  %126 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 17, i64 %indvars.iv412, !dbg !2354
  %127 = load double, double* %126, align 8, !dbg !2354, !tbaa !1023
  %128 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2356
  %129 = load %struct.atom_t*, %struct.atom_t** %128, align 8, !dbg !2356, !tbaa !922
  %130 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %129, i64 %indvars.iv813, i32 17, i64 %indvars.iv412, !dbg !2357
  store double %127, double* %130, align 8, !dbg !2358, !tbaa !1023
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv412, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !2199, metadata !DIExpression()), !dbg !2200
  %exitcond7.not = icmp eq i64 %indvars.iv.next5, 3, !dbg !2360
  br i1 %exitcond7.not, label %131, label %125, !dbg !2352, !llvm.loop !2361

131:                                              ; preds = %125
  %132 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 %indvars.iv813, i32 18, !dbg !2363
  %133 = load double, double* %132, align 8, !dbg !2363, !tbaa !1034
  %134 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %3, i64 0, i32 17, !dbg !2364
  %135 = load %struct.atom_t*, %struct.atom_t** %134, align 8, !dbg !2364, !tbaa !922
  %136 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %135, i64 %indvars.iv813, i32 18, !dbg !2365
  store double %133, double* %136, align 8, !dbg !2366, !tbaa !1034
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv813, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !2198, metadata !DIExpression()), !dbg !2200
  %137 = load i32, i32* @n_atoms, align 4, !dbg !2284, !tbaa !830
  %138 = sext i32 %137 to i64, !dbg !2287
  %139 = icmp slt i64 %indvars.iv.next9, %138, !dbg !2287
  br i1 %139, label %.lr.ph, label %._crit_edge, !dbg !2288, !llvm.loop !2368

._crit_edge:                                      ; preds = %5, %16, %131, %42
  ret void, !dbg !2370
}

; Function Attrs: nounwind uwtable
define internal void @addbonds2reslib(%struct.reslib_t* %0) #0 !dbg !2371 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2373, metadata !DIExpression()), !dbg !2382
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2383
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2383, !tbaa !639
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2374, metadata !DIExpression()), !dbg !2382
  %.not = icmp eq %struct.residue_t* %3, null, !dbg !2385
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2385

.lr.ph:                                           ; preds = %1, %72
  %.017 = phi %struct.residue_t* [ %74, %72 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.017, metadata !2374, metadata !DIExpression()), !dbg !2382
  %4 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.017, i64 0, i32 4, !dbg !2386
  %5 = load i8*, i8** %4, align 8, !dbg !2386, !tbaa !645
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #13, !dbg !2390
  %7 = icmp eq i32 %6, 0, !dbg !2391
  br i1 %7, label %8, label %72, !dbg !2392

8:                                                ; preds = %.lr.ph
  %9 = load i32, i32* @n_bonds, align 4, !dbg !2393, !tbaa !830
  %10 = sext i32 %9 to i64, !dbg !2393
  %11 = shl nsw i64 %10, 3, !dbg !2396
  %12 = call noalias i8* @malloc(i64 %11) #14, !dbg !2397
  %13 = bitcast i8* %12 to [2 x i32]*, !dbg !2398
  call void @llvm.dbg.value(metadata [2 x i32]* %13, metadata !2375, metadata !DIExpression()), !dbg !2382
  %14 = icmp eq i8* %12, null, !dbg !2399
  br i1 %14, label %15, label %18, !dbg !2400

15:                                               ; preds = %8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #14, !dbg !2401
  %17 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2403
  br label %79, !dbg !2404

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i32 0, metadata !2376, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i64 0, metadata !2376, metadata !DIExpression()), !dbg !2382
  %19 = load i32, i32* @n_bonds, align 4, !dbg !2405, !tbaa !830
  %20 = icmp sgt i32 %19, 0, !dbg !2408
  br i1 %20, label %.lr.ph22, label %._crit_edge23, !dbg !2409

.lr.ph22:                                         ; preds = %18, %.loopexit
  %indvars.iv1420 = phi i64 [ %indvars.iv.next15, %.loopexit ], [ 0, %18 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1420, metadata !2376, metadata !DIExpression()), !dbg !2382
  %21 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv1420, i64 0, !dbg !2410
  %22 = load i32, i32* %21, align 8, !dbg !2410, !tbaa !830
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 %indvars.iv1420, i64 0, !dbg !2412
  store i32 %22, i32* %23, align 4, !dbg !2413, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %22, metadata !2378, metadata !DIExpression()), !dbg !2382
  %24 = getelementptr inbounds [1000 x [2 x i32]], [1000 x [2 x i32]]* @bonds, i64 0, i64 %indvars.iv1420, i64 1, !dbg !2414
  %25 = load i32, i32* %24, align 4, !dbg !2414, !tbaa !830
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 %indvars.iv1420, i64 1, !dbg !2415
  store i32 %25, i32* %26, align 4, !dbg !2416, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %25, metadata !2379, metadata !DIExpression()), !dbg !2382
  %27 = add nsw i32 %22, -1, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %27, metadata !2378, metadata !DIExpression()), !dbg !2382
  %28 = add nsw i32 %25, -1, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %28, metadata !2379, metadata !DIExpression()), !dbg !2382
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.017, i64 0, i32 17, !dbg !2419
  %30 = load %struct.atom_t*, %struct.atom_t** %29, align 8, !dbg !2419, !tbaa !922
  %31 = sext i32 %27 to i64, !dbg !2420
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %30, i64 %31), metadata !2380, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2382
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i64 0, metadata !2377, metadata !DIExpression()), !dbg !2382
  br label %32, !dbg !2421

32:                                               ; preds = %.lr.ph22, %46
  %indvars.iv18 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %46 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv18, metadata !2377, metadata !DIExpression()), !dbg !2382
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %30, i64 %31, i32 4, i64 %indvars.iv18, !dbg !2423
  %34 = load i32, i32* %33, align 4, !dbg !2423, !tbaa !830
  %35 = icmp eq i32 %34, %28, !dbg !2427
  br i1 %35, label %.loopexit3, label %36, !dbg !2428

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %30, i64 %31, i32 4, i64 %indvars.iv18, !dbg !2429
  %38 = load i32, i32* %37, align 4, !dbg !2429, !tbaa !830
  %39 = icmp eq i32 %38, -1, !dbg !2431
  br i1 %39, label %40, label %46, !dbg !2432

40:                                               ; preds = %36
  %sext25 = shl i64 %indvars.iv18, 32, !dbg !2433
  %41 = ashr exact i64 %sext25, 32, !dbg !2433
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %30, i64 %31, i32 4, i64 %41, !dbg !2433
  store i32 %28, i32* %42, align 4, !dbg !2435, !tbaa !830
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %30, i64 %31, i32 3, !dbg !2436
  %44 = load i32, i32* %43, align 4, !dbg !2437, !tbaa !957
  %45 = add nsw i32 %44, 1, !dbg !2437
  store i32 %45, i32* %43, align 4, !dbg !2437, !tbaa !957
  br label %.loopexit3, !dbg !2438

46:                                               ; preds = %36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv18, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2377, metadata !DIExpression()), !dbg !2382
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !2440
  br i1 %exitcond.not, label %.loopexit3, label %32, !dbg !2421, !llvm.loop !2441

.loopexit3:                                       ; preds = %46, %32, %40
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.017, i64 0, i32 17, !dbg !2443
  %48 = load %struct.atom_t*, %struct.atom_t** %47, align 8, !dbg !2443, !tbaa !922
  %49 = sext i32 %28 to i64, !dbg !2444
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %48, i64 %49), metadata !2381, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2382
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i64 0, metadata !2377, metadata !DIExpression()), !dbg !2382
  br label %50, !dbg !2445

50:                                               ; preds = %.loopexit3, %64
  %indvars.iv1019 = phi i64 [ 0, %.loopexit3 ], [ %indvars.iv.next11, %64 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1019, metadata !2377, metadata !DIExpression()), !dbg !2382
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %49, i32 4, i64 %indvars.iv1019, !dbg !2447
  %52 = load i32, i32* %51, align 4, !dbg !2447, !tbaa !830
  %53 = icmp eq i32 %52, %27, !dbg !2451
  br i1 %53, label %.loopexit, label %54, !dbg !2452

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %49, i32 4, i64 %indvars.iv1019, !dbg !2453
  %56 = load i32, i32* %55, align 4, !dbg !2453, !tbaa !830
  %57 = icmp eq i32 %56, -1, !dbg !2455
  br i1 %57, label %58, label %64, !dbg !2456

58:                                               ; preds = %54
  %sext = shl i64 %indvars.iv1019, 32, !dbg !2457
  %59 = ashr exact i64 %sext, 32, !dbg !2457
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %49, i32 4, i64 %59, !dbg !2457
  store i32 %27, i32* %60, align 4, !dbg !2459, !tbaa !830
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %49, i32 3, !dbg !2460
  %62 = load i32, i32* %61, align 4, !dbg !2461, !tbaa !957
  %63 = add nsw i32 %62, 1, !dbg !2461
  store i32 %63, i32* %61, align 4, !dbg !2461, !tbaa !957
  br label %.loopexit, !dbg !2462

64:                                               ; preds = %54
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv1019, 1, !dbg !2463
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11, metadata !2377, metadata !DIExpression()), !dbg !2382
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 8, !dbg !2464
  br i1 %exitcond13.not, label %.loopexit, label %50, !dbg !2445, !llvm.loop !2465

.loopexit:                                        ; preds = %58, %50, %64
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv1420, 1, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next15, metadata !2376, metadata !DIExpression()), !dbg !2382
  %65 = load i32, i32* @n_bonds, align 4, !dbg !2405, !tbaa !830
  %66 = sext i32 %65 to i64, !dbg !2408
  %67 = icmp slt i64 %indvars.iv.next15, %66, !dbg !2408
  br i1 %67, label %.lr.ph22, label %._crit_edge23, !dbg !2409, !llvm.loop !2468

._crit_edge23:                                    ; preds = %.loopexit, %18
  %68 = load i32, i32* @n_bonds, align 4, !dbg !2470, !tbaa !830
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.017, i64 0, i32 11, !dbg !2471
  store i32 %68, i32* %69, align 8, !dbg !2472, !tbaa !724
  %70 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.017, i64 0, i32 12, !dbg !2473
  %71 = bitcast [2 x i32]** %70 to i8**, !dbg !2474
  store i8* %12, i8** %71, align 8, !dbg !2474, !tbaa !821
  br label %79, !dbg !2475

72:                                               ; preds = %.lr.ph
  %73 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.017, i64 0, i32 0, !dbg !2476
  %74 = load %struct.residue_t*, %struct.residue_t** %73, align 8, !dbg !2476, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.residue_t* %74, metadata !2374, metadata !DIExpression()), !dbg !2382
  %.not24 = icmp eq %struct.residue_t* %74, null, !dbg !2385
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !dbg !2385, !llvm.loop !2477

._crit_edge:                                      ; preds = %72, %1
  %75 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2479
  %76 = load i8*, i8** %75, align 8, !dbg !2479, !tbaa !421
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %76) #14, !dbg !2480
  %78 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2481
  br label %79, !dbg !2482

79:                                               ; preds = %._crit_edge, %._crit_edge23, %15
  ret void, !dbg !2483
}

; Function Attrs: nounwind uwtable
define internal void @setrlibattrs(%struct.reslib_t* %0, i8* %1) #0 !dbg !2484 {
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2488, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %1, metadata !2489, metadata !DIExpression()), !dbg !2492
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %5) #14, !dbg !2493
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !2490, metadata !DIExpression()), !dbg !2494
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %6) #14, !dbg !2493
  call void @llvm.dbg.declare(metadata [100 x i8]* %4, metadata !2491, metadata !DIExpression()), !dbg !2495
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !2496
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !2498
  %9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %7, i8* nonnull %8) #14, !dbg !2499
  %.not = icmp eq i32 %9, 2, !dbg !2500
  br i1 %.not, label %10, label %32, !dbg !2501

10:                                               ; preds = %2
  %11 = bitcast [100 x i8]* %3 to i32*, !dbg !2502
  %lhsv = load i32, i32* %11, align 16, !dbg !2502
  %.not2 = icmp eq i32 %lhsv, 4279876, !dbg !2502
  br i1 %.not2, label %12, label %14, !dbg !2504

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 2, !dbg !2505
  store i32 1, i32* %13, align 8, !dbg !2506, !tbaa !388
  br label %23, !dbg !2507

14:                                               ; preds = %10
  %15 = bitcast [100 x i8]* %3 to i32*, !dbg !2508
  %lhsv3 = load i32, i32* %15, align 16, !dbg !2508
  %.not5 = icmp eq i32 %lhsv3, 4279890, !dbg !2508
  br i1 %.not5, label %16, label %18, !dbg !2510

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 2, !dbg !2511
  store i32 2, i32* %17, align 8, !dbg !2512, !tbaa !388
  br label %23, !dbg !2513

18:                                               ; preds = %14
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !2514
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %19, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 3), !dbg !2516
  %20 = icmp eq i32 %bcmp, 0, !dbg !2517
  br i1 %20, label %21, label %23, !dbg !2518

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 2, !dbg !2519
  store i32 3, i32* %22, align 8, !dbg !2520, !tbaa !388
  br label %23, !dbg !2521

23:                                               ; preds = %16, %21, %18, %12
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !2522
  %bcmp6 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %24, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i64 7), !dbg !2524
  %25 = icmp eq i32 %bcmp6, 0, !dbg !2525
  br i1 %25, label %26, label %28, !dbg !2526

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 3, !dbg !2527
  store i32 1, i32* %27, align 4, !dbg !2528, !tbaa !1341
  br label %32, !dbg !2529

28:                                               ; preds = %23
  %29 = bitcast [100 x i8]* %4 to i64*, !dbg !2530
  %lhsv7 = load i64, i64* %29, align 16, !dbg !2530
  %.not9 = icmp eq i64 %lhsv7, 21760796498086977, !dbg !2530
  br i1 %.not9, label %30, label %32, !dbg !2532

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 3, !dbg !2533
  store i32 2, i32* %31, align 4, !dbg !2534, !tbaa !1341
  br label %32, !dbg !2535

32:                                               ; preds = %26, %30, %28, %2
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !2536
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %33) #14, !dbg !2536
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !2536
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %34) #14, !dbg !2536
  ret void, !dbg !2536
}

; Function Attrs: nounwind uwtable
define internal void @addqr2reslib(%struct.reslib_t* %0) #0 !dbg !2537 {
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2539, metadata !DIExpression()), !dbg !2544
  %2 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2545
  %3 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2545, !tbaa !639
  call void @llvm.dbg.value(metadata %struct.residue_t* %3, metadata !2540, metadata !DIExpression()), !dbg !2544
  %.not = icmp eq %struct.residue_t* %3, null, !dbg !2547
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2547

.lr.ph:                                           ; preds = %1, %41
  %.04 = phi %struct.residue_t* [ %43, %41 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.04, metadata !2540, metadata !DIExpression()), !dbg !2544
  %4 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.04, i64 0, i32 4, !dbg !2548
  %5 = load i8*, i8** %4, align 8, !dbg !2548, !tbaa !645
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #13, !dbg !2552
  %7 = icmp eq i32 %6, 0, !dbg !2553
  br i1 %7, label %8, label %41, !dbg !2554

8:                                                ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata i32 0, metadata !2541, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), metadata !2542, metadata !DIExpression()), !dbg !2544
  %9 = load i32, i32* @n_atoms, align 4, !dbg !2555, !tbaa !830
  %10 = icmp sgt i32 %9, 0, !dbg !2559
  br i1 %10, label %.lr.ph8, label %._crit_edge9, !dbg !2560

.lr.ph8:                                          ; preds = %8, %36
  %.016 = phi i32 [ %37, %36 ], [ 0, %8 ]
  %.025 = phi %struct.atom_t* [ %38, %36 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atoms, i64 0, i64 0), %8 ]
  call void @llvm.dbg.value(metadata i32 %.016, metadata !2541, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata %struct.atom_t* %.025, metadata !2542, metadata !DIExpression()), !dbg !2544
  %11 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 0, !dbg !2561
  %12 = load i8*, i8** %11, align 8, !dbg !2561, !tbaa !931
  %13 = call %struct.atom_t* @findatom(%struct.residue_t* %.04, i8* %12), !dbg !2564
  call void @llvm.dbg.value(metadata %struct.atom_t* %13, metadata !2543, metadata !DIExpression()), !dbg !2544
  %.not11 = icmp eq %struct.atom_t* %13, null, !dbg !2565
  br i1 %.not11, label %36, label %14, !dbg !2566

14:                                               ; preds = %.lr.ph8
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 6, !dbg !2567
  %16 = load double, double* %15, align 8, !dbg !2567, !tbaa !976
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 0, i32 6, !dbg !2569
  store double %16, double* %17, align 8, !dbg !2570, !tbaa !976
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 7, !dbg !2571
  %19 = load double, double* %18, align 8, !dbg !2571, !tbaa !980
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 0, i32 7, !dbg !2572
  store double %19, double* %20, align 8, !dbg !2573, !tbaa !980
  %21 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 8, !dbg !2574
  %22 = load double, double* %21, align 8, !dbg !2574, !tbaa !985
  %23 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 0, i32 8, !dbg !2575
  store double %22, double* %23, align 8, !dbg !2576, !tbaa !985
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 9, !dbg !2577
  %25 = load double, double* %24, align 8, !dbg !2577, !tbaa !989
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 0, i32 9, !dbg !2578
  store double %25, double* %26, align 8, !dbg !2579, !tbaa !989
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 11, !dbg !2580
  %28 = load i32, i32* %27, align 8, !dbg !2580, !tbaa !997
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 0, i32 11, !dbg !2581
  store i32 %28, i32* %29, align 8, !dbg !2582, !tbaa !997
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 12, !dbg !2583
  %31 = load double, double* %30, align 8, !dbg !2583, !tbaa !1001
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 0, i32 12, !dbg !2584
  store double %31, double* %32, align 8, !dbg !2585, !tbaa !1001
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 13, !dbg !2586
  %34 = load double, double* %33, align 8, !dbg !2586, !tbaa !1006
  %35 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 0, i32 13, !dbg !2587
  store double %34, double* %35, align 8, !dbg !2588, !tbaa !1006
  br label %36, !dbg !2589

36:                                               ; preds = %.lr.ph8, %14
  %37 = add nuw nsw i32 %.016, 1, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %37, metadata !2541, metadata !DIExpression()), !dbg !2544
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 1, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.atom_t* %38, metadata !2542, metadata !DIExpression()), !dbg !2544
  %39 = load i32, i32* @n_atoms, align 4, !dbg !2555, !tbaa !830
  %40 = icmp slt i32 %37, %39, !dbg !2559
  br i1 %40, label %.lr.ph8, label %._crit_edge9, !dbg !2560, !llvm.loop !2592

41:                                               ; preds = %.lr.ph
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.04, i64 0, i32 0, !dbg !2594
  %43 = load %struct.residue_t*, %struct.residue_t** %42, align 8, !dbg !2594, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.residue_t* %43, metadata !2540, metadata !DIExpression()), !dbg !2544
  %.not10 = icmp eq %struct.residue_t* %43, null, !dbg !2547
  br i1 %.not10, label %._crit_edge, label %.lr.ph, !dbg !2547, !llvm.loop !2595

._crit_edge:                                      ; preds = %41, %1
  %44 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2597
  %45 = load i8*, i8** %44, align 8, !dbg !2597, !tbaa !421
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0), i8* %45) #14, !dbg !2598
  %47 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #14, !dbg !2599
  br label %._crit_edge9, !dbg !2600

._crit_edge9:                                     ; preds = %8, %36, %._crit_edge
  ret void, !dbg !2601
}

; Function Attrs: nounwind uwtable
define internal %struct.atom_t* @findatom(%struct.residue_t* %0, i8* %1) #0 !dbg !2602 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %1, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 0, metadata !2608, metadata !DIExpression()), !dbg !2609
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !2610
  %4 = load i32, i32* %3, align 8, !dbg !2610, !tbaa !698
  %5 = icmp sgt i32 %4, 0, !dbg !2613
  br i1 %5, label %.lr.ph, label %._crit_edge, !dbg !2614

.lr.ph:                                           ; preds = %2, %16
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %16 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !2608, metadata !DIExpression()), !dbg !2609
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2615
  %7 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2615, !tbaa !922
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %7, i64 %indvars.iv4, i32 0, !dbg !2618
  %9 = load i8*, i8** %8, align 8, !dbg !2618, !tbaa !931
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(1) %1) #13, !dbg !2619
  %.not = icmp eq i32 %10, 0, !dbg !2619
  br i1 %.not, label %11, label %16, !dbg !2620

11:                                               ; preds = %.lr.ph
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2621
  %13 = load %struct.atom_t*, %struct.atom_t** %12, align 8, !dbg !2621, !tbaa !922
  %sext = shl i64 %indvars.iv4, 32, !dbg !2622
  %14 = ashr exact i64 %sext, 32, !dbg !2622
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 %14, !dbg !2622
  br label %._crit_edge, !dbg !2623

16:                                               ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2608, metadata !DIExpression()), !dbg !2609
  %17 = load i32, i32* %3, align 8, !dbg !2610, !tbaa !698
  %18 = sext i32 %17 to i64, !dbg !2613
  %19 = icmp slt i64 %indvars.iv.next, %18, !dbg !2613
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !2614, !llvm.loop !2625

._crit_edge:                                      ; preds = %2, %16, %11
  %.0 = phi %struct.atom_t* [ %15, %11 ], [ null, %16 ], [ null, %2 ], !dbg !2609
  ret %struct.atom_t* %.0, !dbg !2627
}

; Function Attrs: nounwind uwtable
define internal void @addchi2reslib(%struct.reslib_t* %0) #0 !dbg !2628 {
  %2 = alloca [4 x [3 x double]], align 16
  %3 = alloca [4 x [3 x double]], align 16
  %4 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.reslib_t* %0, metadata !2630, metadata !DIExpression()), !dbg !2640
  %5 = bitcast [4 x [3 x double]]* %2 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %5) #14, !dbg !2641
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %2, metadata !2636, metadata !DIExpression()), !dbg !2642
  %6 = bitcast [4 x [3 x double]]* %3 to i8*, !dbg !2643
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #14, !dbg !2643
  call void @llvm.dbg.declare(metadata [4 x [3 x double]]* %3, metadata !2638, metadata !DIExpression()), !dbg !2644
  %7 = bitcast double* %4 to i8*, !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #14, !dbg !2645
  %8 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 4, !dbg !2646
  %9 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !2646, !tbaa !639
  call void @llvm.dbg.value(metadata %struct.residue_t* %9, metadata !2631, metadata !DIExpression()), !dbg !2640
  %.not = icmp eq %struct.residue_t* %9, null, !dbg !2648
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2648

.lr.ph:                                           ; preds = %1, %62
  %.0110 = phi %struct.residue_t* [ %64, %62 ], [ %9, %1 ]
  call void @llvm.dbg.value(metadata %struct.residue_t* %.0110, metadata !2631, metadata !DIExpression()), !dbg !2640
  %10 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0110, i64 0, i32 4, !dbg !2649
  %11 = load i8*, i8** %10, align 8, !dbg !2649, !tbaa !645
  %12 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %11, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @lr_name, i64 0, i64 0)) #13, !dbg !2653
  %.not17 = icmp eq i32 %12, 0, !dbg !2653
  br i1 %.not17, label %13, label %62, !dbg !2654

13:                                               ; preds = %.lr.ph
  %14 = load i32, i32* @n_chi, align 4, !dbg !2655, !tbaa !830
  %15 = sext i32 %14 to i64, !dbg !2655
  %16 = mul nsw i64 %15, 24, !dbg !2658
  %17 = call noalias i8* @malloc(i64 %16) #14, !dbg !2659
  call void @llvm.dbg.value(metadata i8* %17, metadata !2632, metadata !DIExpression()), !dbg !2640
  %18 = icmp eq i8* %17, null, !dbg !2660
  br i1 %18, label %19, label %24, !dbg !2661

19:                                               ; preds = %13
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2662, !tbaa !379
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0110, i64 0, i32 4, !dbg !2664
  %22 = load i8*, i8** %21, align 8, !dbg !2664, !tbaa !645
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* %22) #11, !dbg !2665
  br label %._crit_edge16, !dbg !2666

24:                                               ; preds = %13
  %25 = bitcast i8* %17 to %struct.chiral_t*, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.chiral_t* %25, metadata !2632, metadata !DIExpression()), !dbg !2640
  %26 = load i32, i32* @n_chi, align 4, !dbg !2668, !tbaa !830
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0110, i64 0, i32 13, !dbg !2669
  store i32 %26, i32* %27, align 8, !dbg !2670, !tbaa !744
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0110, i64 0, i32 14, !dbg !2671
  %29 = bitcast %struct.chiral_t** %28 to i8**, !dbg !2672
  store i8* %17, i8** %29, align 8, !dbg !2672, !tbaa !847
  call void @llvm.dbg.value(metadata i8* %17, metadata !2632, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2640
  %30 = icmp sgt i32 %26, 0, !dbg !2673
  br i1 %30, label %.lr.ph15, label %._crit_edge16, !dbg !2676

.lr.ph15:                                         ; preds = %24, %53
  %.0213 = phi %struct.chiral_t* [ %58, %53 ], [ %25, %24 ]
  %indvars.iv712 = phi i64 [ %indvars.iv.next8, %53 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata %struct.chiral_t* %.0213, metadata !2632, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %indvars.iv712, metadata !2634, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 0, metadata !2633, metadata !DIExpression()), !dbg !2640
  br label %31, !dbg !2677

31:                                               ; preds = %.lr.ph15, %31
  %indvars.iv11 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next, %31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2633, metadata !DIExpression()), !dbg !2640
  %32 = getelementptr inbounds [500 x %struct.chiral_t], [500 x %struct.chiral_t]* @chi, i64 0, i64 %indvars.iv712, i32 0, i64 %indvars.iv11, !dbg !2680
  %33 = load i32, i32* %32, align 4, !dbg !2680, !tbaa !830
  %34 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0213, i64 0, i32 0, i64 %indvars.iv11, !dbg !2683
  store i32 %33, i32* %34, align 4, !dbg !2684, !tbaa !830
  call void @llvm.dbg.value(metadata i32 %33, metadata !2635, metadata !DIExpression()), !dbg !2640
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0110, i64 0, i32 17, !dbg !2685
  %36 = load %struct.atom_t*, %struct.atom_t** %35, align 8, !dbg !2685, !tbaa !922
  %37 = sext i32 %33 to i64, !dbg !2686
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %36, i64 %37, i32 17, i64 0, !dbg !2686
  %39 = load double, double* %38, align 8, !dbg !2686, !tbaa !1023
  %40 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv11, i64 0, !dbg !2687
  store double %39, double* %40, align 8, !dbg !2688, !tbaa !1023
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0110, i64 0, i32 17, !dbg !2689
  %42 = load %struct.atom_t*, %struct.atom_t** %41, align 8, !dbg !2689, !tbaa !922
  %43 = sext i32 %33 to i64, !dbg !2690
  %44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %42, i64 %43, i32 17, i64 1, !dbg !2690
  %45 = load double, double* %44, align 8, !dbg !2690, !tbaa !1023
  %46 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv11, i64 1, !dbg !2691
  store double %45, double* %46, align 8, !dbg !2692, !tbaa !1023
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0110, i64 0, i32 17, !dbg !2693
  %48 = load %struct.atom_t*, %struct.atom_t** %47, align 8, !dbg !2693, !tbaa !922
  %49 = sext i32 %33 to i64, !dbg !2694
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %49, i32 17, i64 2, !dbg !2694
  %51 = load double, double* %50, align 8, !dbg !2694, !tbaa !1023
  %52 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 %indvars.iv11, i64 2, !dbg !2695
  store double %51, double* %52, align 8, !dbg !2696, !tbaa !1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2633, metadata !DIExpression()), !dbg !2640
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2698
  br i1 %exitcond.not, label %53, label %31, !dbg !2677, !llvm.loop !2699

53:                                               ; preds = %31
  %54 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %2, i64 0, i64 0, i64 0, !dbg !2701
  %55 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %3, i64 0, i64 0, i64 0, !dbg !2702
  call void @llvm.dbg.value(metadata double* %4, metadata !2639, metadata !DIExpression(DW_OP_deref)), !dbg !2640
  call void @chirvol(i32 3, i32 0, i32 1, i32 2, i32 3, double* nonnull %54, double* nonnull %55, double* nonnull %4) #14, !dbg !2703
  %56 = load double, double* %4, align 8, !dbg !2704, !tbaa !1023
  call void @llvm.dbg.value(metadata double %56, metadata !2639, metadata !DIExpression()), !dbg !2640
  %57 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0213, i64 0, i32 1, !dbg !2705
  store double %56, double* %57, align 8, !dbg !2706, !tbaa !867
  %58 = getelementptr inbounds %struct.chiral_t, %struct.chiral_t* %.0213, i64 1, !dbg !2707
  call void @llvm.dbg.value(metadata %struct.chiral_t* %58, metadata !2632, metadata !DIExpression()), !dbg !2640
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv712, 1, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !2634, metadata !DIExpression()), !dbg !2640
  %59 = load i32, i32* @n_chi, align 4, !dbg !2709, !tbaa !830
  %60 = sext i32 %59 to i64, !dbg !2673
  %61 = icmp slt i64 %indvars.iv.next8, %60, !dbg !2673
  br i1 %61, label %.lr.ph15, label %._crit_edge16, !dbg !2676, !llvm.loop !2710

62:                                               ; preds = %.lr.ph
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.0110, i64 0, i32 0, !dbg !2712
  %64 = load %struct.residue_t*, %struct.residue_t** %63, align 8, !dbg !2712, !tbaa !656
  call void @llvm.dbg.value(metadata %struct.residue_t* %64, metadata !2631, metadata !DIExpression()), !dbg !2640
  %.not18 = icmp eq %struct.residue_t* %64, null, !dbg !2648
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !dbg !2648, !llvm.loop !2713

._crit_edge:                                      ; preds = %62, %1
  %.01.lcssa = phi %struct.residue_t* [ %9, %1 ], [ %64, %62 ], !dbg !2715
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2716, !tbaa !379
  %66 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %.01.lcssa, i64 0, i32 4, !dbg !2717
  %67 = load i8*, i8** %66, align 8, !dbg !2717, !tbaa !645
  %68 = getelementptr inbounds %struct.reslib_t, %struct.reslib_t* %0, i64 0, i32 1, !dbg !2718
  %69 = load i8*, i8** %68, align 8, !dbg !2718, !tbaa !421
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.97, i64 0, i64 0), i8* %67, i8* %69) #11, !dbg !2719
  br label %._crit_edge16, !dbg !2720

._crit_edge16:                                    ; preds = %24, %53, %._crit_edge, %19
  %71 = bitcast double* %4 to i8*, !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #14, !dbg !2720
  %72 = bitcast [4 x [3 x double]]* %3 to i8*, !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %72) #14, !dbg !2720
  %73 = bitcast [4 x [3 x double]]* %2 to i8*, !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %73) #14, !dbg !2720
  ret void, !dbg !2720
}

declare !dbg !315 dso_local void @chirvol(i32, i32, i32, i32, i32, double*, double*, double*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #8

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { cold }

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
!385 = !DILocation(line: 0, scope: !369)
!386 = !DILocation(line: 90, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !359, file: !3, line: 90, column: 6)
!388 = !{!389, !390, i64 16}
!389 = !{!"reslib_t", !380, i64 0, !380, i64 8, !390, i64 16, !390, i64 20, !380, i64 24}
!390 = !{!"int", !381, i64 0}
!391 = !DILocation(line: 90, column: 21, scope: !387)
!392 = !DILocation(line: 90, column: 6, scope: !359)
!393 = !DILocation(line: 92, column: 16, scope: !394)
!394 = distinct !DILexicalBlock(scope: !387, file: !3, line: 92, column: 11)
!395 = !DILocation(line: 92, column: 26, scope: !394)
!396 = !DILocation(line: 92, column: 11, scope: !387)
!397 = !DILocation(line: 94, column: 16, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !3, line: 94, column: 11)
!399 = !DILocation(line: 94, column: 26, scope: !398)
!400 = !DILocation(line: 94, column: 11, scope: !394)
!401 = !DILocation(line: 96, column: 16, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 96, column: 11)
!403 = !DILocation(line: 96, column: 26, scope: !402)
!404 = !DILocation(line: 0, scope: !402)
!405 = !DILocation(line: 0, scope: !387)
!406 = !DILocation(line: 101, column: 1, scope: !359)
!407 = distinct !DISubprogram(name: "known_reslib", scope: !3, file: !3, line: 422, type: !408, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!298, !12}
!410 = !{!411, !412}
!411 = !DILocalVariable(name: "reslib", arg: 1, scope: !407, file: !3, line: 422, type: !12)
!412 = !DILocalVariable(name: "rlp", scope: !407, file: !3, line: 424, type: !298)
!413 = !DILocation(line: 0, scope: !407)
!414 = !DILocation(line: 426, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !407, file: !3, line: 426, column: 2)
!416 = !DILocation(line: 426, column: 2, scope: !415)
!417 = !DILocation(line: 427, column: 20, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 427, column: 7)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 426, column: 47)
!420 = distinct !DILexicalBlock(scope: !415, file: !3, line: 426, column: 2)
!421 = !{!389, !380, i64 8}
!422 = !DILocation(line: 427, column: 7, scope: !418)
!423 = !DILocation(line: 427, column: 38, scope: !418)
!424 = !DILocation(line: 427, column: 7, scope: !419)
!425 = !DILocation(line: 426, column: 38, scope: !420)
!426 = !{!389, !380, i64 0}
!427 = distinct !{!427, !416, !428}
!428 = !DILocation(line: 430, column: 2, scope: !415)
!429 = !DILocation(line: 432, column: 1, scope: !407)
!430 = distinct !DISubprogram(name: "read_reslib", scope: !3, file: !3, line: 434, type: !408, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!431 = !{!432, !433, !437, !438, !439, !440, !441}
!432 = !DILocalVariable(name: "reslib", arg: 1, scope: !430, file: !3, line: 434, type: !12)
!433 = !DILocalVariable(name: "pfp", scope: !430, file: !3, line: 436, type: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !436, line: 7, baseType: !243)
!436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!437 = !DILocalVariable(name: "bfp", scope: !430, file: !3, line: 437, type: !434)
!438 = !DILocalVariable(name: "qfp", scope: !430, file: !3, line: 438, type: !434)
!439 = !DILocalVariable(name: "cfp", scope: !430, file: !3, line: 439, type: !434)
!440 = !DILocalVariable(name: "rlp", scope: !430, file: !3, line: 440, type: !298)
!441 = !DILocalVariable(name: "offname", scope: !430, file: !3, line: 441, type: !352)
!442 = !DILocation(line: 0, scope: !430)
!443 = !DILocation(line: 436, column: 2, scope: !430)
!444 = !DILocation(line: 437, column: 2, scope: !430)
!445 = !DILocation(line: 438, column: 2, scope: !430)
!446 = !DILocation(line: 439, column: 2, scope: !430)
!447 = !DILocation(line: 441, column: 2, scope: !430)
!448 = !DILocation(line: 441, column: 7, scope: !430)
!449 = !DILocation(line: 444, column: 3, scope: !450)
!450 = distinct !DILexicalBlock(scope: !430, file: !3, line: 443, column: 6)
!451 = !DILocation(line: 443, column: 14, scope: !450)
!452 = !DILocation(line: 444, column: 15, scope: !450)
!453 = !DILocation(line: 443, column: 6, scope: !430)
!454 = !DILocation(line: 449, column: 2, scope: !430)
!455 = !DILocation(line: 450, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !430, file: !3, line: 450, column: 7)
!457 = !{!381, !381, i64 0}
!458 = !DILocation(line: 450, column: 7, scope: !430)
!459 = !DILocation(line: 451, column: 15, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !3, line: 450, column: 17)
!461 = !DILocation(line: 451, column: 3, scope: !460)
!462 = !DILocation(line: 452, column: 2, scope: !460)
!463 = !DILocation(line: 453, column: 15, scope: !464)
!464 = distinct !DILexicalBlock(scope: !456, file: !3, line: 452, column: 7)
!465 = !DILocation(line: 453, column: 3, scope: !464)
!466 = !DILocation(line: 454, column: 15, scope: !464)
!467 = !DILocation(line: 454, column: 3, scope: !464)
!468 = !DILocation(line: 455, column: 11, scope: !464)
!469 = !DILocation(line: 455, column: 3, scope: !464)
!470 = !DILocation(line: 456, column: 11, scope: !464)
!471 = !DILocation(line: 456, column: 3, scope: !464)
!472 = !DILocation(line: 459, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !430, file: !3, line: 459, column: 6)
!474 = !DILocation(line: 459, column: 6, scope: !430)
!475 = !DILocation(line: 460, column: 14, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !3, line: 459, column: 11)
!477 = !DILocation(line: 460, column: 3, scope: !476)
!478 = !DILocation(line: 461, column: 11, scope: !476)
!479 = !DILocation(line: 461, column: 3, scope: !476)
!480 = !DILocation(line: 462, column: 2, scope: !476)
!481 = !DILocation(line: 464, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !430, file: !3, line: 464, column: 6)
!483 = !DILocation(line: 464, column: 6, scope: !430)
!484 = !DILocation(line: 465, column: 15, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !3, line: 464, column: 11)
!486 = !DILocation(line: 465, column: 3, scope: !485)
!487 = !DILocation(line: 466, column: 11, scope: !485)
!488 = !DILocation(line: 466, column: 3, scope: !485)
!489 = !DILocation(line: 467, column: 2, scope: !485)
!490 = !DILocation(line: 470, column: 1, scope: !430)
!491 = distinct !DISubprogram(name: "setreslibkind", scope: !3, file: !3, line: 103, type: !492, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!492 = !DISubroutineType(types: !493)
!493 = !{!11, !12, !12}
!494 = !{!495, !496, !497, !498}
!495 = !DILocalVariable(name: "reslib", arg: 1, scope: !491, file: !3, line: 103, type: !12)
!496 = !DILocalVariable(name: "kind", arg: 2, scope: !491, file: !3, line: 103, type: !12)
!497 = !DILocalVariable(name: "nhp", scope: !491, file: !3, line: 105, type: !12)
!498 = !DILocalVariable(name: "rlp", scope: !491, file: !3, line: 106, type: !298)
!499 = !DILocation(line: 0, scope: !491)
!500 = !DILocation(line: 105, column: 8, scope: !491)
!501 = !DILocation(line: 108, column: 14, scope: !502)
!502 = distinct !DILexicalBlock(scope: !491, file: !3, line: 108, column: 6)
!503 = !DILocation(line: 108, column: 39, scope: !502)
!504 = !DILocation(line: 108, column: 6, scope: !491)
!505 = !DILocation(line: 109, column: 16, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 109, column: 8)
!507 = distinct !DILexicalBlock(scope: !502, file: !3, line: 108, column: 48)
!508 = !DILocation(line: 109, column: 40, scope: !506)
!509 = !DILocation(line: 109, column: 8, scope: !507)
!510 = !DILocation(line: 110, column: 15, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 109, column: 49)
!512 = !DILocation(line: 110, column: 6, scope: !511)
!513 = !DILocation(line: 112, column: 6, scope: !511)
!514 = !DILocation(line: 0, scope: !502)
!515 = !DILocation(line: 115, column: 7, scope: !491)
!516 = !DILocation(line: 115, column: 17, scope: !491)
!517 = !DILocation(line: 116, column: 8, scope: !518)
!518 = distinct !DILexicalBlock(scope: !491, file: !3, line: 116, column: 7)
!519 = !DILocation(line: 116, column: 30, scope: !518)
!520 = !DILocation(line: 116, column: 34, scope: !518)
!521 = !DILocation(line: 116, column: 7, scope: !491)
!522 = !DILocation(line: 117, column: 15, scope: !518)
!523 = !DILocation(line: 117, column: 25, scope: !518)
!524 = !DILocation(line: 117, column: 10, scope: !518)
!525 = !DILocation(line: 118, column: 13, scope: !526)
!526 = distinct !DILexicalBlock(scope: !518, file: !3, line: 118, column: 12)
!527 = !DILocation(line: 118, column: 35, scope: !526)
!528 = !DILocation(line: 118, column: 39, scope: !526)
!529 = !DILocation(line: 118, column: 12, scope: !518)
!530 = !DILocation(line: 119, column: 15, scope: !526)
!531 = !DILocation(line: 119, column: 25, scope: !526)
!532 = !DILocation(line: 119, column: 10, scope: !526)
!533 = !DILocation(line: 120, column: 13, scope: !534)
!534 = distinct !DILexicalBlock(scope: !526, file: !3, line: 120, column: 12)
!535 = !DILocation(line: 120, column: 34, scope: !534)
!536 = !DILocation(line: 120, column: 38, scope: !534)
!537 = !DILocation(line: 120, column: 12, scope: !526)
!538 = !DILocation(line: 121, column: 15, scope: !534)
!539 = !DILocation(line: 121, column: 25, scope: !534)
!540 = !DILocation(line: 121, column: 10, scope: !534)
!541 = !DILocation(line: 123, column: 22, scope: !491)
!542 = !DILocation(line: 123, column: 9, scope: !491)
!543 = distinct !DISubprogram(name: "getresidue", scope: !3, file: !3, line: 126, type: !544, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!169, !12, !12}
!546 = !{!547, !548, !549, !550, !554, !555, !556}
!547 = !DILocalVariable(name: "rname", arg: 1, scope: !543, file: !3, line: 126, type: !12)
!548 = !DILocalVariable(name: "reslib", arg: 2, scope: !543, file: !3, line: 126, type: !12)
!549 = !DILocalVariable(name: "nhp", scope: !543, file: !3, line: 128, type: !12)
!550 = !DILocalVariable(name: "leapname", scope: !543, file: !3, line: 128, type: !551)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 40, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 5)
!554 = !DILocalVariable(name: "rlp", scope: !543, file: !3, line: 129, type: !298)
!555 = !DILocalVariable(name: "res", scope: !543, file: !3, line: 130, type: !169)
!556 = !DILocalVariable(name: "nres", scope: !543, file: !3, line: 130, type: !169)
!557 = !DILocation(line: 0, scope: !543)
!558 = !DILocation(line: 128, column: 8, scope: !543)
!559 = !DILocation(line: 128, column: 2, scope: !543)
!560 = !DILocation(line: 128, column: 13, scope: !543)
!561 = !DILocation(line: 132, column: 14, scope: !562)
!562 = distinct !DILexicalBlock(scope: !543, file: !3, line: 132, column: 6)
!563 = !DILocation(line: 132, column: 39, scope: !562)
!564 = !DILocation(line: 132, column: 6, scope: !543)
!565 = !DILocation(line: 133, column: 15, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 133, column: 7)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 132, column: 48)
!568 = !DILocation(line: 133, column: 39, scope: !566)
!569 = !DILocation(line: 133, column: 7, scope: !567)
!570 = !DILocation(line: 134, column: 4, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !3, line: 133, column: 48)
!572 = !DILocation(line: 0, scope: !562)
!573 = !DILocation(line: 138, column: 10, scope: !543)
!574 = !DILocation(line: 138, column: 2, scope: !543)
!575 = !DILocation(line: 139, column: 12, scope: !576)
!576 = distinct !DILexicalBlock(scope: !543, file: !3, line: 139, column: 7)
!577 = !DILocation(line: 139, column: 22, scope: !576)
!578 = !DILocation(line: 139, column: 7, scope: !543)
!579 = !DILocation(line: 140, column: 14, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 140, column: 13)
!581 = distinct !DILexicalBlock(scope: !576, file: !3, line: 139, column: 33)
!582 = !DILocation(line: 140, column: 13, scope: !581)
!583 = !DILocation(line: 141, column: 12, scope: !580)
!584 = !DILocation(line: 141, column: 4, scope: !580)
!585 = !DILocation(line: 142, column: 14, scope: !586)
!586 = distinct !DILexicalBlock(scope: !580, file: !3, line: 142, column: 13)
!587 = !DILocation(line: 142, column: 13, scope: !580)
!588 = !DILocation(line: 143, column: 12, scope: !586)
!589 = !DILocation(line: 143, column: 4, scope: !586)
!590 = !DILocation(line: 144, column: 14, scope: !591)
!591 = distinct !DILexicalBlock(scope: !586, file: !3, line: 144, column: 13)
!592 = !DILocation(line: 144, column: 13, scope: !586)
!593 = !DILocation(line: 145, column: 12, scope: !591)
!594 = !DILocation(line: 145, column: 4, scope: !591)
!595 = !DILocation(line: 146, column: 14, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !3, line: 146, column: 13)
!597 = !DILocation(line: 146, column: 13, scope: !591)
!598 = !DILocation(line: 147, column: 12, scope: !596)
!599 = !DILocation(line: 147, column: 4, scope: !596)
!600 = !DILocation(line: 149, column: 17, scope: !601)
!601 = distinct !DILexicalBlock(scope: !576, file: !3, line: 149, column: 12)
!602 = !DILocation(line: 149, column: 27, scope: !601)
!603 = !DILocation(line: 149, column: 12, scope: !576)
!604 = !DILocation(line: 150, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 150, column: 13)
!606 = distinct !DILexicalBlock(scope: !601, file: !3, line: 149, column: 38)
!607 = !DILocation(line: 150, column: 13, scope: !606)
!608 = !DILocation(line: 151, column: 12, scope: !605)
!609 = !DILocation(line: 151, column: 4, scope: !605)
!610 = !DILocation(line: 152, column: 14, scope: !611)
!611 = distinct !DILexicalBlock(scope: !605, file: !3, line: 152, column: 13)
!612 = !DILocation(line: 152, column: 13, scope: !605)
!613 = !DILocation(line: 153, column: 12, scope: !611)
!614 = !DILocation(line: 153, column: 4, scope: !611)
!615 = !DILocation(line: 154, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !3, line: 154, column: 13)
!617 = !DILocation(line: 154, column: 13, scope: !611)
!618 = !DILocation(line: 155, column: 12, scope: !616)
!619 = !DILocation(line: 155, column: 4, scope: !616)
!620 = !DILocation(line: 156, column: 14, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !3, line: 156, column: 13)
!622 = !DILocation(line: 156, column: 13, scope: !616)
!623 = !DILocation(line: 157, column: 12, scope: !621)
!624 = !DILocation(line: 157, column: 4, scope: !621)
!625 = !DILocation(line: 159, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !543, file: !3, line: 159, column: 7)
!627 = !DILocation(line: 159, column: 28, scope: !626)
!628 = !DILocation(line: 159, column: 7, scope: !543)
!629 = !DILocation(line: 160, column: 11, scope: !626)
!630 = !DILocation(line: 160, column: 3, scope: !626)
!631 = !DILocation(line: 161, column: 12, scope: !632)
!632 = distinct !DILexicalBlock(scope: !626, file: !3, line: 161, column: 12)
!633 = !DILocation(line: 161, column: 33, scope: !632)
!634 = !DILocation(line: 161, column: 12, scope: !626)
!635 = !DILocation(line: 162, column: 11, scope: !632)
!636 = !DILocation(line: 162, column: 3, scope: !632)
!637 = !DILocation(line: 163, column: 18, scope: !638)
!638 = distinct !DILexicalBlock(scope: !543, file: !3, line: 163, column: 2)
!639 = !{!389, !380, i64 24}
!640 = !DILocation(line: 163, column: 2, scope: !638)
!641 = !DILocation(line: 164, column: 21, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !3, line: 164, column: 6)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 163, column: 53)
!644 = distinct !DILexicalBlock(scope: !638, file: !3, line: 163, column: 2)
!645 = !{!646, !380, i64 24}
!646 = !{!"residue_t", !380, i64 0, !390, i64 8, !390, i64 12, !390, i64 16, !380, i64 24, !380, i64 32, !390, i64 40, !390, i64 44, !390, i64 48, !380, i64 56, !380, i64 64, !390, i64 72, !380, i64 80, !390, i64 88, !380, i64 96, !390, i64 104, !380, i64 112, !380, i64 120}
!647 = !DILocation(line: 164, column: 8, scope: !642)
!648 = !DILocation(line: 164, column: 40, scope: !642)
!649 = !DILocation(line: 164, column: 47, scope: !642)
!650 = !DILocation(line: 165, column: 19, scope: !642)
!651 = !DILocation(line: 165, column: 30, scope: !642)
!652 = !DILocation(line: 165, column: 6, scope: !642)
!653 = !DILocation(line: 165, column: 41, scope: !642)
!654 = !DILocation(line: 164, column: 6, scope: !643)
!655 = !DILocation(line: 163, column: 45, scope: !644)
!656 = !{!646, !380, i64 0}
!657 = distinct !{!657, !640, !658}
!658 = !DILocation(line: 167, column: 2, scope: !638)
!659 = !DILocation(line: 169, column: 10, scope: !660)
!660 = distinct !DILexicalBlock(scope: !543, file: !3, line: 169, column: 6)
!661 = !DILocation(line: 169, column: 6, scope: !543)
!662 = !DILocation(line: 170, column: 3, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !3, line: 169, column: 19)
!664 = !DILocation(line: 171, column: 3, scope: !663)
!665 = !DILocation(line: 172, column: 3, scope: !663)
!666 = !DILocation(line: 175, column: 9, scope: !543)
!667 = !DILocation(line: 177, column: 2, scope: !543)
!668 = !DILocation(line: 178, column: 1, scope: !543)
!669 = distinct !DISubprogram(name: "copyresidue", scope: !3, file: !3, line: 180, type: !670, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{!169, !169}
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!673 = !DILocalVariable(name: "res", arg: 1, scope: !669, file: !3, line: 180, type: !169)
!674 = !DILocalVariable(name: "a", scope: !669, file: !3, line: 182, type: !11)
!675 = !DILocalVariable(name: "b", scope: !669, file: !3, line: 182, type: !11)
!676 = !DILocalVariable(name: "c", scope: !669, file: !3, line: 182, type: !11)
!677 = !DILocalVariable(name: "i", scope: !669, file: !3, line: 182, type: !11)
!678 = !DILocalVariable(name: "aip", scope: !669, file: !3, line: 183, type: !228)
!679 = !DILocalVariable(name: "nres", scope: !669, file: !3, line: 184, type: !169)
!680 = !DILocalVariable(name: "ap", scope: !669, file: !3, line: 185, type: !201)
!681 = !DILocalVariable(name: "anp", scope: !669, file: !3, line: 186, type: !12)
!682 = !DILocalVariable(name: "rnp", scope: !669, file: !3, line: 186, type: !12)
!683 = !DILocalVariable(name: "bp", scope: !669, file: !3, line: 187, type: !183)
!684 = !DILocalVariable(name: "cp", scope: !669, file: !3, line: 188, type: !190)
!685 = !DILocation(line: 0, scope: !669)
!686 = !DILocation(line: 190, column: 26, scope: !687)
!687 = distinct !DILexicalBlock(scope: !669, file: !3, line: 190, column: 5)
!688 = !DILocation(line: 190, column: 13, scope: !687)
!689 = !DILocation(line: 191, column: 3, scope: !687)
!690 = !DILocation(line: 190, column: 5, scope: !669)
!691 = !DILocation(line: 193, column: 42, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !3, line: 192, column: 2)
!693 = !DILocation(line: 193, column: 3, scope: !692)
!694 = !DILocation(line: 194, column: 3, scope: !692)
!695 = !DILocation(line: 195, column: 3, scope: !692)
!696 = !DILocation(line: 198, column: 37, scope: !697)
!697 = distinct !DILexicalBlock(scope: !669, file: !3, line: 198, column: 6)
!698 = !{!646, !390, i64 104}
!699 = !DILocation(line: 198, column: 32, scope: !697)
!700 = !DILocation(line: 198, column: 45, scope: !697)
!701 = !DILocation(line: 198, column: 25, scope: !697)
!702 = !DILocation(line: 198, column: 13, scope: !697)
!703 = !DILocation(line: 199, column: 3, scope: !697)
!704 = !DILocation(line: 198, column: 6, scope: !669)
!705 = !DILocation(line: 201, column: 51, scope: !706)
!706 = distinct !DILexicalBlock(scope: !697, file: !3, line: 200, column: 2)
!707 = !DILocation(line: 201, column: 3, scope: !706)
!708 = !DILocation(line: 202, column: 3, scope: !706)
!709 = !DILocation(line: 203, column: 3, scope: !706)
!710 = !DILocation(line: 206, column: 35, scope: !711)
!711 = distinct !DILexicalBlock(scope: !669, file: !3, line: 206, column: 6)
!712 = !DILocation(line: 206, column: 30, scope: !711)
!713 = !DILocation(line: 206, column: 43, scope: !711)
!714 = !DILocation(line: 206, column: 23, scope: !711)
!715 = !DILocation(line: 206, column: 58, scope: !711)
!716 = !DILocation(line: 206, column: 6, scope: !669)
!717 = !DILocation(line: 209, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !711, file: !3, line: 207, column: 2)
!719 = !DILocation(line: 208, column: 3, scope: !718)
!720 = !DILocation(line: 210, column: 3, scope: !718)
!721 = !DILocation(line: 211, column: 3, scope: !718)
!722 = !DILocation(line: 214, column: 11, scope: !723)
!723 = distinct !DILexicalBlock(scope: !669, file: !3, line: 214, column: 6)
!724 = !{!646, !390, i64 72}
!725 = !DILocation(line: 214, column: 23, scope: !723)
!726 = !DILocation(line: 214, column: 6, scope: !669)
!727 = !DILocation(line: 216, column: 16, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 215, column: 7)
!729 = distinct !DILexicalBlock(scope: !723, file: !3, line: 214, column: 28)
!730 = !DILocation(line: 216, column: 11, scope: !728)
!731 = !DILocation(line: 216, column: 27, scope: !728)
!732 = !DILocation(line: 216, column: 4, scope: !728)
!733 = !DILocation(line: 215, column: 14, scope: !728)
!734 = !DILocation(line: 217, column: 4, scope: !728)
!735 = !DILocation(line: 215, column: 7, scope: !729)
!736 = !DILocation(line: 220, column: 37, scope: !737)
!737 = distinct !DILexicalBlock(scope: !728, file: !3, line: 218, column: 3)
!738 = !DILocation(line: 219, column: 4, scope: !737)
!739 = !DILocation(line: 221, column: 4, scope: !737)
!740 = !DILocation(line: 222, column: 4, scope: !737)
!741 = !DILocation(line: 0, scope: !723)
!742 = !DILocation(line: 227, column: 11, scope: !743)
!743 = distinct !DILexicalBlock(scope: !669, file: !3, line: 227, column: 6)
!744 = !{!646, !390, i64 88}
!745 = !DILocation(line: 227, column: 21, scope: !743)
!746 = !DILocation(line: 227, column: 6, scope: !669)
!747 = !DILocation(line: 229, column: 16, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 228, column: 7)
!749 = distinct !DILexicalBlock(scope: !743, file: !3, line: 227, column: 26)
!750 = !DILocation(line: 229, column: 11, scope: !748)
!751 = !DILocation(line: 229, column: 25, scope: !748)
!752 = !DILocation(line: 229, column: 4, scope: !748)
!753 = !DILocation(line: 228, column: 14, scope: !748)
!754 = !DILocation(line: 230, column: 4, scope: !748)
!755 = !DILocation(line: 228, column: 7, scope: !749)
!756 = !DILocation(line: 233, column: 37, scope: !757)
!757 = distinct !DILexicalBlock(scope: !748, file: !3, line: 231, column: 3)
!758 = !DILocation(line: 232, column: 4, scope: !757)
!759 = !DILocation(line: 234, column: 4, scope: !757)
!760 = !DILocation(line: 235, column: 4, scope: !757)
!761 = !DILocation(line: 0, scope: !743)
!762 = !DILocation(line: 240, column: 8, scope: !669)
!763 = !DILocation(line: 240, column: 15, scope: !669)
!764 = !DILocation(line: 242, column: 37, scope: !669)
!765 = !DILocation(line: 242, column: 25, scope: !669)
!766 = !DILocation(line: 242, column: 47, scope: !669)
!767 = !DILocation(line: 242, column: 18, scope: !669)
!768 = !DILocation(line: 243, column: 10, scope: !769)
!769 = distinct !DILexicalBlock(scope: !669, file: !3, line: 243, column: 6)
!770 = !DILocation(line: 243, column: 6, scope: !669)
!771 = !DILocation(line: 244, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !769, file: !3, line: 243, column: 19)
!773 = !DILocation(line: 244, column: 3, scope: !772)
!774 = !DILocation(line: 246, column: 3, scope: !772)
!775 = !DILocation(line: 248, column: 20, scope: !669)
!776 = !DILocation(line: 248, column: 2, scope: !669)
!777 = !DILocation(line: 249, column: 8, scope: !669)
!778 = !DILocation(line: 249, column: 18, scope: !669)
!779 = !DILocation(line: 251, column: 37, scope: !669)
!780 = !{!646, !380, i64 32}
!781 = !DILocation(line: 251, column: 25, scope: !669)
!782 = !DILocation(line: 251, column: 45, scope: !669)
!783 = !DILocation(line: 251, column: 18, scope: !669)
!784 = !DILocation(line: 252, column: 10, scope: !785)
!785 = distinct !DILexicalBlock(scope: !669, file: !3, line: 252, column: 6)
!786 = !DILocation(line: 252, column: 6, scope: !669)
!787 = !DILocation(line: 253, column: 12, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !3, line: 252, column: 19)
!789 = !DILocation(line: 253, column: 3, scope: !788)
!790 = !DILocation(line: 254, column: 3, scope: !788)
!791 = !DILocation(line: 256, column: 20, scope: !669)
!792 = !DILocation(line: 256, column: 2, scope: !669)
!793 = !DILocation(line: 257, column: 8, scope: !669)
!794 = !DILocation(line: 257, column: 16, scope: !669)
!795 = !DILocation(line: 259, column: 21, scope: !669)
!796 = !{!646, !390, i64 8}
!797 = !DILocation(line: 259, column: 8, scope: !669)
!798 = !DILocation(line: 259, column: 14, scope: !669)
!799 = !DILocation(line: 260, column: 8, scope: !669)
!800 = !DILocation(line: 260, column: 18, scope: !669)
!801 = !{!646, !390, i64 12}
!802 = !DILocation(line: 261, column: 8, scope: !669)
!803 = !DILocation(line: 261, column: 17, scope: !669)
!804 = !{!646, !390, i64 16}
!805 = !DILocation(line: 262, column: 22, scope: !669)
!806 = !{!646, !390, i64 40}
!807 = !DILocation(line: 262, column: 8, scope: !669)
!808 = !DILocation(line: 262, column: 15, scope: !669)
!809 = !DILocation(line: 263, column: 8, scope: !669)
!810 = !DILocation(line: 263, column: 17, scope: !669)
!811 = !{!646, !380, i64 56}
!812 = !DILocation(line: 264, column: 21, scope: !669)
!813 = !DILocation(line: 264, column: 8, scope: !669)
!814 = !DILocation(line: 264, column: 19, scope: !669)
!815 = !{!646, !380, i64 64}
!816 = !DILocation(line: 265, column: 27, scope: !669)
!817 = !DILocation(line: 265, column: 8, scope: !669)
!818 = !DILocation(line: 265, column: 20, scope: !669)
!819 = !DILocation(line: 266, column: 8, scope: !669)
!820 = !DILocation(line: 266, column: 19, scope: !669)
!821 = !{!646, !380, i64 80}
!822 = !DILocation(line: 267, column: 23, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 267, column: 2)
!824 = distinct !DILexicalBlock(scope: !669, file: !3, line: 267, column: 2)
!825 = !DILocation(line: 267, column: 16, scope: !823)
!826 = !DILocation(line: 267, column: 2, scope: !824)
!827 = !DILocation(line: 268, column: 37, scope: !828)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 267, column: 41)
!829 = !DILocation(line: 268, column: 32, scope: !828)
!830 = !{!390, !390, i64 0}
!831 = !DILocation(line: 268, column: 9, scope: !828)
!832 = !DILocation(line: 268, column: 3, scope: !828)
!833 = !DILocation(line: 268, column: 30, scope: !828)
!834 = !DILocation(line: 269, column: 37, scope: !828)
!835 = !DILocation(line: 269, column: 32, scope: !828)
!836 = !DILocation(line: 269, column: 9, scope: !828)
!837 = !DILocation(line: 269, column: 3, scope: !828)
!838 = !DILocation(line: 269, column: 30, scope: !828)
!839 = !DILocation(line: 267, column: 37, scope: !823)
!840 = distinct !{!840, !826, !841}
!841 = !DILocation(line: 270, column: 2, scope: !824)
!842 = !DILocation(line: 271, column: 25, scope: !669)
!843 = !DILocation(line: 271, column: 8, scope: !669)
!844 = !DILocation(line: 271, column: 18, scope: !669)
!845 = !DILocation(line: 272, column: 8, scope: !669)
!846 = !DILocation(line: 272, column: 17, scope: !669)
!847 = !{!646, !380, i64 96}
!848 = !DILocation(line: 273, column: 44, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 273, column: 2)
!850 = distinct !DILexicalBlock(scope: !669, file: !3, line: 273, column: 2)
!851 = !DILocation(line: 273, column: 37, scope: !849)
!852 = !DILocation(line: 273, column: 2, scope: !850)
!853 = !DILocation(line: 274, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 274, column: 3)
!855 = distinct !DILexicalBlock(scope: !849, file: !3, line: 273, column: 66)
!856 = !DILocation(line: 275, column: 27, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !3, line: 274, column: 3)
!858 = !DILocation(line: 275, column: 22, scope: !857)
!859 = !DILocation(line: 275, column: 4, scope: !857)
!860 = !DILocation(line: 275, column: 20, scope: !857)
!861 = !DILocation(line: 274, column: 23, scope: !857)
!862 = !DILocation(line: 274, column: 17, scope: !857)
!863 = distinct !{!863, !853, !864}
!864 = !DILocation(line: 275, column: 51, scope: !854)
!865 = !DILocation(line: 276, column: 21, scope: !855)
!866 = !DILocation(line: 276, column: 35, scope: !855)
!867 = !{!868, !869, i64 16}
!868 = !{!"chiral_t", !381, i64 0, !869, i64 16}
!869 = !{!"double", !381, i64 0}
!870 = !DILocation(line: 276, column: 7, scope: !855)
!871 = !DILocation(line: 276, column: 14, scope: !855)
!872 = !DILocation(line: 273, column: 56, scope: !849)
!873 = !DILocation(line: 273, column: 62, scope: !849)
!874 = distinct !{!874, !852, !875}
!875 = !DILocation(line: 277, column: 2, scope: !850)
!876 = !DILocation(line: 278, column: 22, scope: !669)
!877 = !{!646, !390, i64 44}
!878 = !DILocation(line: 278, column: 8, scope: !669)
!879 = !DILocation(line: 278, column: 15, scope: !669)
!880 = !DILocation(line: 279, column: 26, scope: !669)
!881 = !{!646, !390, i64 48}
!882 = !DILocation(line: 279, column: 8, scope: !669)
!883 = !DILocation(line: 279, column: 19, scope: !669)
!884 = !DILocation(line: 280, column: 24, scope: !669)
!885 = !DILocation(line: 280, column: 8, scope: !669)
!886 = !DILocation(line: 280, column: 17, scope: !669)
!887 = !DILocation(line: 281, column: 8, scope: !669)
!888 = !DILocation(line: 281, column: 17, scope: !669)
!889 = !{!646, !380, i64 112}
!890 = !DILocation(line: 282, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !669, file: !3, line: 282, column: 6)
!892 = !DILocation(line: 282, column: 6, scope: !891)
!893 = !DILocation(line: 282, column: 6, scope: !669)
!894 = !DILocation(line: 283, column: 24, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 283, column: 3)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 283, column: 3)
!897 = distinct !DILexicalBlock(scope: !891, file: !3, line: 282, column: 21)
!898 = !DILocation(line: 283, column: 17, scope: !895)
!899 = !DILocation(line: 283, column: 3, scope: !896)
!900 = !DILocation(line: 284, column: 31, scope: !895)
!901 = !DILocation(line: 284, column: 26, scope: !895)
!902 = !DILocation(line: 284, column: 10, scope: !895)
!903 = !DILocation(line: 284, column: 4, scope: !895)
!904 = !DILocation(line: 284, column: 24, scope: !895)
!905 = !DILocation(line: 283, column: 35, scope: !895)
!906 = distinct !{!906, !899, !907}
!907 = !DILocation(line: 284, column: 43, scope: !896)
!908 = !DILocation(line: 286, column: 24, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 286, column: 3)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 286, column: 3)
!911 = distinct !DILexicalBlock(scope: !891, file: !3, line: 285, column: 7)
!912 = !DILocation(line: 286, column: 17, scope: !909)
!913 = !DILocation(line: 286, column: 3, scope: !910)
!914 = !DILocation(line: 287, column: 10, scope: !909)
!915 = !DILocation(line: 287, column: 4, scope: !909)
!916 = !DILocation(line: 287, column: 24, scope: !909)
!917 = !DILocation(line: 286, column: 35, scope: !909)
!918 = distinct !{!918, !913, !919}
!919 = !DILocation(line: 287, column: 26, scope: !910)
!920 = !DILocation(line: 289, column: 8, scope: !669)
!921 = !DILocation(line: 289, column: 16, scope: !669)
!922 = !{!646, !380, i64 120}
!923 = !DILocation(line: 290, column: 23, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 290, column: 2)
!925 = distinct !DILexicalBlock(scope: !669, file: !3, line: 290, column: 2)
!926 = !DILocation(line: 290, column: 16, scope: !924)
!927 = !DILocation(line: 290, column: 2, scope: !925)
!928 = !DILocation(line: 292, column: 37, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 290, column: 38)
!930 = !DILocation(line: 292, column: 48, scope: !929)
!931 = !{!932, !380, i64 0}
!932 = !{!"atom_t", !380, i64 0, !380, i64 8, !390, i64 16, !390, i64 20, !381, i64 24, !380, i64 56, !869, i64 64, !869, i64 72, !869, i64 80, !869, i64 88, !380, i64 96, !390, i64 104, !869, i64 112, !869, i64 120, !390, i64 128, !390, i64 132, !380, i64 136, !381, i64 144, !869, i64 168}
!933 = !DILocation(line: 292, column: 24, scope: !929)
!934 = !DILocation(line: 292, column: 60, scope: !929)
!935 = !DILocation(line: 292, column: 17, scope: !929)
!936 = !DILocation(line: 293, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !929, file: !3, line: 293, column: 7)
!938 = !DILocation(line: 293, column: 7, scope: !929)
!939 = !DILocation(line: 294, column: 13, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 293, column: 20)
!941 = !DILocation(line: 294, column: 4, scope: !940)
!942 = !DILocation(line: 295, column: 4, scope: !940)
!943 = !DILocation(line: 297, column: 21, scope: !929)
!944 = !DILocation(line: 297, column: 34, scope: !929)
!945 = !DILocation(line: 297, column: 3, scope: !929)
!946 = !DILocation(line: 298, column: 11, scope: !929)
!947 = !DILocation(line: 298, column: 22, scope: !929)
!948 = !DILocation(line: 299, column: 11, scope: !929)
!949 = !DILocation(line: 299, column: 22, scope: !929)
!950 = !{!932, !380, i64 8}
!951 = !DILocation(line: 300, column: 25, scope: !929)
!952 = !DILocation(line: 300, column: 38, scope: !929)
!953 = !{!932, !390, i64 16}
!954 = !DILocation(line: 300, column: 11, scope: !929)
!955 = !DILocation(line: 300, column: 18, scope: !929)
!956 = !DILocation(line: 301, column: 42, scope: !929)
!957 = !{!932, !390, i64 20}
!958 = !DILocation(line: 301, column: 11, scope: !929)
!959 = !DILocation(line: 301, column: 22, scope: !929)
!960 = !DILocation(line: 302, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !929, file: !3, line: 302, column: 3)
!962 = !DILocation(line: 303, column: 30, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !3, line: 302, column: 3)
!964 = !DILocation(line: 303, column: 25, scope: !963)
!965 = !DILocation(line: 303, column: 4, scope: !963)
!966 = !DILocation(line: 303, column: 23, scope: !963)
!967 = !DILocation(line: 302, column: 38, scope: !963)
!968 = !DILocation(line: 302, column: 18, scope: !963)
!969 = distinct !{!969, !960, !970}
!970 = !DILocation(line: 303, column: 52, scope: !961)
!971 = !DILocation(line: 304, column: 11, scope: !929)
!972 = !DILocation(line: 304, column: 22, scope: !929)
!973 = !{!932, !380, i64 56}
!974 = !DILocation(line: 305, column: 29, scope: !929)
!975 = !DILocation(line: 305, column: 42, scope: !929)
!976 = !{!932, !869, i64 64}
!977 = !DILocation(line: 305, column: 11, scope: !929)
!978 = !DILocation(line: 305, column: 22, scope: !929)
!979 = !DILocation(line: 306, column: 42, scope: !929)
!980 = !{!932, !869, i64 72}
!981 = !DILocation(line: 306, column: 11, scope: !929)
!982 = !DILocation(line: 306, column: 22, scope: !929)
!983 = !DILocation(line: 307, column: 29, scope: !929)
!984 = !DILocation(line: 307, column: 42, scope: !929)
!985 = !{!932, !869, i64 80}
!986 = !DILocation(line: 307, column: 11, scope: !929)
!987 = !DILocation(line: 307, column: 22, scope: !929)
!988 = !DILocation(line: 308, column: 42, scope: !929)
!989 = !{!932, !869, i64 88}
!990 = !DILocation(line: 308, column: 11, scope: !929)
!991 = !DILocation(line: 308, column: 22, scope: !929)
!992 = !DILocation(line: 309, column: 11, scope: !929)
!993 = !DILocation(line: 309, column: 22, scope: !929)
!994 = !{!932, !380, i64 96}
!995 = !DILocation(line: 310, column: 29, scope: !929)
!996 = !DILocation(line: 310, column: 42, scope: !929)
!997 = !{!932, !390, i64 104}
!998 = !DILocation(line: 310, column: 11, scope: !929)
!999 = !DILocation(line: 310, column: 22, scope: !929)
!1000 = !DILocation(line: 311, column: 42, scope: !929)
!1001 = !{!932, !869, i64 112}
!1002 = !DILocation(line: 311, column: 11, scope: !929)
!1003 = !DILocation(line: 311, column: 22, scope: !929)
!1004 = !DILocation(line: 312, column: 29, scope: !929)
!1005 = !DILocation(line: 312, column: 42, scope: !929)
!1006 = !{!932, !869, i64 120}
!1007 = !DILocation(line: 312, column: 11, scope: !929)
!1008 = !DILocation(line: 312, column: 22, scope: !929)
!1009 = !DILocation(line: 313, column: 42, scope: !929)
!1010 = !{!932, !390, i64 128}
!1011 = !DILocation(line: 313, column: 11, scope: !929)
!1012 = !DILocation(line: 313, column: 22, scope: !929)
!1013 = !DILocation(line: 314, column: 29, scope: !929)
!1014 = !DILocation(line: 314, column: 42, scope: !929)
!1015 = !{!932, !390, i64 132}
!1016 = !DILocation(line: 314, column: 11, scope: !929)
!1017 = !DILocation(line: 314, column: 22, scope: !929)
!1018 = !DILocation(line: 315, column: 11, scope: !929)
!1019 = !DILocation(line: 315, column: 22, scope: !929)
!1020 = !{!932, !380, i64 136}
!1021 = !DILocation(line: 316, column: 29, scope: !929)
!1022 = !DILocation(line: 316, column: 24, scope: !929)
!1023 = !{!869, !869, i64 0}
!1024 = !DILocation(line: 316, column: 3, scope: !929)
!1025 = !DILocation(line: 316, column: 22, scope: !929)
!1026 = !DILocation(line: 317, column: 24, scope: !929)
!1027 = !DILocation(line: 317, column: 3, scope: !929)
!1028 = !DILocation(line: 317, column: 22, scope: !929)
!1029 = !DILocation(line: 318, column: 29, scope: !929)
!1030 = !DILocation(line: 318, column: 24, scope: !929)
!1031 = !DILocation(line: 318, column: 3, scope: !929)
!1032 = !DILocation(line: 318, column: 22, scope: !929)
!1033 = !DILocation(line: 319, column: 42, scope: !929)
!1034 = !{!932, !869, i64 168}
!1035 = !DILocation(line: 319, column: 11, scope: !929)
!1036 = !DILocation(line: 319, column: 22, scope: !929)
!1037 = !DILocation(line: 290, column: 34, scope: !924)
!1038 = distinct !{!1038, !927, !1039}
!1039 = !DILocation(line: 320, column: 2, scope: !925)
!1040 = !DILocation(line: 323, column: 1, scope: !669)
!1041 = distinct !DISubprogram(name: "copystrand", scope: !3, file: !3, line: 325, type: !1042, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!53, !53}
!1044 = !{!1045, !1046, !1047, !1048}
!1045 = !DILocalVariable(name: "str", arg: 1, scope: !1041, file: !3, line: 325, type: !53)
!1046 = !DILocalVariable(name: "newstrand", scope: !1041, file: !3, line: 327, type: !53)
!1047 = !DILocalVariable(name: "namebuf", scope: !1041, file: !3, line: 328, type: !12)
!1048 = !DILocalVariable(name: "resctr", scope: !1041, file: !3, line: 329, type: !11)
!1049 = !DILocation(line: 0, scope: !1041)
!1050 = !DILocation(line: 331, column: 33, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 331, column: 5)
!1052 = !DILocation(line: 331, column: 19, scope: !1051)
!1053 = !DILocation(line: 331, column: 64, scope: !1051)
!1054 = !DILocation(line: 331, column: 5, scope: !1041)
!1055 = !DILocation(line: 332, column: 41, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 331, column: 72)
!1057 = !{!1058, !380, i64 0}
!1058 = !{!"strand_t", !380, i64 0, !390, i64 8, !390, i64 12, !380, i64 16, !380, i64 24, !390, i64 32, !390, i64 36, !380, i64 40}
!1059 = !DILocation(line: 332, column: 3, scope: !1056)
!1060 = !DILocation(line: 333, column: 3, scope: !1056)
!1061 = !DILocation(line: 334, column: 3, scope: !1056)
!1062 = !DILocation(line: 338, column: 16, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 337, column: 13)
!1064 = !{!1058, !390, i64 32}
!1065 = !DILocation(line: 338, column: 11, scope: !1063)
!1066 = !DILocation(line: 338, column: 28, scope: !1063)
!1067 = !DILocation(line: 338, column: 3, scope: !1063)
!1068 = !DILocation(line: 337, column: 26, scope: !1063)
!1069 = !DILocation(line: 337, column: 37, scope: !1063)
!1070 = !{!1058, !380, i64 40}
!1071 = !DILocation(line: 338, column: 56, scope: !1063)
!1072 = !DILocation(line: 337, column: 13, scope: !1041)
!1073 = !DILocation(line: 340, column: 17, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 339, column: 2)
!1075 = !DILocation(line: 341, column: 17, scope: !1074)
!1076 = !DILocation(line: 344, column: 51, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 344, column: 6)
!1078 = !DILocation(line: 344, column: 38, scope: !1077)
!1079 = !DILocation(line: 344, column: 66, scope: !1077)
!1080 = !DILocation(line: 344, column: 28, scope: !1077)
!1081 = !DILocation(line: 345, column: 24, scope: !1077)
!1082 = !DILocation(line: 344, column: 6, scope: !1041)
!1083 = !DILocation(line: 347, column: 41, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 346, column: 2)
!1085 = !DILocation(line: 347, column: 3, scope: !1084)
!1086 = !DILocation(line: 348, column: 3, scope: !1084)
!1087 = !DILocation(line: 349, column: 3, scope: !1084)
!1088 = !DILocation(line: 351, column: 13, scope: !1041)
!1089 = !DILocation(line: 351, column: 26, scope: !1041)
!1090 = !DILocation(line: 352, column: 39, scope: !1041)
!1091 = !DILocation(line: 352, column: 2, scope: !1041)
!1092 = !DILocation(line: 353, column: 32, scope: !1041)
!1093 = !{!1058, !390, i64 8}
!1094 = !DILocation(line: 353, column: 13, scope: !1041)
!1095 = !DILocation(line: 353, column: 25, scope: !1041)
!1096 = !DILocation(line: 354, column: 27, scope: !1041)
!1097 = !{!1058, !390, i64 12}
!1098 = !DILocation(line: 354, column: 13, scope: !1041)
!1099 = !DILocation(line: 354, column: 20, scope: !1041)
!1100 = !DILocation(line: 355, column: 13, scope: !1041)
!1101 = !DILocation(line: 355, column: 24, scope: !1041)
!1102 = !{!1058, !380, i64 16}
!1103 = !DILocation(line: 356, column: 13, scope: !1041)
!1104 = !DILocation(line: 356, column: 20, scope: !1041)
!1105 = !{!1058, !380, i64 24}
!1106 = !DILocation(line: 357, column: 32, scope: !1041)
!1107 = !DILocation(line: 357, column: 13, scope: !1041)
!1108 = !DILocation(line: 357, column: 25, scope: !1041)
!1109 = !DILocation(line: 358, column: 13, scope: !1041)
!1110 = !DILocation(line: 358, column: 24, scope: !1041)
!1111 = !{!1058, !390, i64 36}
!1112 = !DILocation(line: 359, column: 41, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 359, column: 9)
!1114 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 359, column: 9)
!1115 = !DILocation(line: 359, column: 34, scope: !1113)
!1116 = !DILocation(line: 359, column: 9, scope: !1114)
!1117 = !DILocation(line: 361, column: 22, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 359, column: 65)
!1119 = !DILocation(line: 361, column: 17, scope: !1118)
!1120 = !DILocation(line: 361, column: 4, scope: !1118)
!1121 = !DILocation(line: 360, column: 28, scope: !1118)
!1122 = !DILocation(line: 360, column: 17, scope: !1118)
!1123 = !DILocation(line: 360, column: 49, scope: !1118)
!1124 = !DILocation(line: 362, column: 28, scope: !1118)
!1125 = !DILocation(line: 362, column: 17, scope: !1118)
!1126 = !DILocation(line: 362, column: 50, scope: !1118)
!1127 = !DILocation(line: 362, column: 59, scope: !1118)
!1128 = !DILocation(line: 363, column: 29, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 363, column: 22)
!1130 = !DILocation(line: 363, column: 22, scope: !1118)
!1131 = !DILocation(line: 365, column: 16, scope: !1129)
!1132 = !DILocation(line: 365, column: 5, scope: !1129)
!1133 = !DILocation(line: 364, column: 55, scope: !1129)
!1134 = !DILocation(line: 364, column: 25, scope: !1129)
!1135 = !DILocation(line: 364, column: 62, scope: !1129)
!1136 = !DILocation(line: 364, column: 69, scope: !1129)
!1137 = !DILocation(line: 359, column: 60, scope: !1113)
!1138 = distinct !{!1138, !1116, !1139}
!1139 = !DILocation(line: 366, column: 9, scope: !1114)
!1140 = !DILocation(line: 368, column: 1, scope: !1041)
!1141 = distinct !DISubprogram(name: "copymolecule", scope: !3, file: !3, line: 370, type: !1142, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!232, !232}
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1145 = !DILocalVariable(name: "mol", arg: 1, scope: !1141, file: !3, line: 370, type: !232)
!1146 = !DILocalVariable(name: "row", scope: !1141, file: !3, line: 372, type: !11)
!1147 = !DILocalVariable(name: "col", scope: !1141, file: !3, line: 372, type: !11)
!1148 = !DILocalVariable(name: "strptr", scope: !1141, file: !3, line: 373, type: !53)
!1149 = !DILocalVariable(name: "newstr", scope: !1141, file: !3, line: 373, type: !53)
!1150 = !DILocalVariable(name: "nextstr", scope: !1141, file: !3, line: 373, type: !53)
!1151 = !DILocalVariable(name: "newmol", scope: !1141, file: !3, line: 374, type: !232)
!1152 = !DILocation(line: 0, scope: !1141)
!1153 = !DILocation(line: 376, column: 9, scope: !1141)
!1154 = !DILocation(line: 378, column: 39, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 378, column: 12)
!1156 = !DILocation(line: 378, column: 23, scope: !1155)
!1157 = !DILocation(line: 378, column: 72, scope: !1155)
!1158 = !DILocation(line: 378, column: 12, scope: !1141)
!1159 = !DILocation(line: 379, column: 17, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 378, column: 80)
!1161 = !DILocation(line: 380, column: 17, scope: !1160)
!1162 = !DILocation(line: 381, column: 17, scope: !1160)
!1163 = !DILocation(line: 384, column: 35, scope: !1141)
!1164 = !{!1165, !390, i64 96}
!1165 = !{!"molecule_t", !381, i64 0, !390, i64 96, !380, i64 104, !390, i64 112, !390, i64 116, !390, i64 120, !380, i64 128}
!1166 = !DILocation(line: 384, column: 17, scope: !1141)
!1167 = !DILocation(line: 384, column: 28, scope: !1141)
!1168 = !DILocation(line: 385, column: 36, scope: !1141)
!1169 = !{!1165, !390, i64 112}
!1170 = !DILocation(line: 385, column: 17, scope: !1141)
!1171 = !DILocation(line: 385, column: 29, scope: !1141)
!1172 = !DILocation(line: 386, column: 33, scope: !1141)
!1173 = !{!1165, !390, i64 116}
!1174 = !DILocation(line: 386, column: 17, scope: !1141)
!1175 = !DILocation(line: 386, column: 26, scope: !1141)
!1176 = !DILocation(line: 387, column: 33, scope: !1141)
!1177 = !{!1165, !390, i64 120}
!1178 = !DILocation(line: 387, column: 17, scope: !1141)
!1179 = !DILocation(line: 387, column: 26, scope: !1141)
!1180 = !DILocation(line: 389, column: 19, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 389, column: 14)
!1182 = !{!1165, !380, i64 128}
!1183 = !DILocation(line: 389, column: 25, scope: !1181)
!1184 = !DILocation(line: 389, column: 14, scope: !1141)
!1185 = !DILocation(line: 390, column: 48, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 389, column: 35)
!1187 = !DILocation(line: 390, column: 33, scope: !1186)
!1188 = !DILocation(line: 390, column: 25, scope: !1186)
!1189 = !DILocation(line: 390, column: 31, scope: !1186)
!1190 = !DILocation(line: 391, column: 9, scope: !1186)
!1191 = !DILocation(line: 393, column: 25, scope: !1181)
!1192 = !DILocation(line: 393, column: 31, scope: !1181)
!1193 = !DILocation(line: 395, column: 9, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 395, column: 9)
!1195 = !DILocation(line: 396, column: 17, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 396, column: 17)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 395, column: 42)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 395, column: 9)
!1199 = !DILocation(line: 397, column: 53, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 396, column: 50)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 396, column: 17)
!1202 = !DILocation(line: 397, column: 25, scope: !1200)
!1203 = !DILocation(line: 397, column: 51, scope: !1200)
!1204 = !DILocation(line: 396, column: 45, scope: !1201)
!1205 = !DILocation(line: 396, column: 36, scope: !1201)
!1206 = distinct !{!1206, !1195, !1207}
!1207 = !DILocation(line: 398, column: 17, scope: !1196)
!1208 = !DILocation(line: 395, column: 37, scope: !1198)
!1209 = !DILocation(line: 395, column: 28, scope: !1198)
!1210 = distinct !{!1210, !1193, !1211}
!1211 = !DILocation(line: 399, column: 9, scope: !1194)
!1212 = !DILocation(line: 401, column: 23, scope: !1141)
!1213 = !{!1165, !380, i64 104}
!1214 = !DILocation(line: 402, column: 21, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 402, column: 14)
!1216 = !DILocation(line: 402, column: 14, scope: !1141)
!1217 = !DILocation(line: 403, column: 26, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 402, column: 30)
!1219 = !DILocation(line: 404, column: 25, scope: !1218)
!1220 = !DILocation(line: 404, column: 36, scope: !1218)
!1221 = !DILocation(line: 405, column: 25, scope: !1218)
!1222 = !DILocation(line: 405, column: 35, scope: !1218)
!1223 = !DILocation(line: 406, column: 34, scope: !1218)
!1224 = !DILocation(line: 407, column: 9, scope: !1218)
!1225 = !DILocation(line: 409, column: 24, scope: !1141)
!1226 = !DILocation(line: 409, column: 9, scope: !1141)
!1227 = !DILocation(line: 410, column: 27, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 409, column: 34)
!1229 = !DILocation(line: 411, column: 22, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 411, column: 22)
!1231 = !DILocation(line: 411, column: 22, scope: !1228)
!1232 = !DILocation(line: 412, column: 33, scope: !1230)
!1233 = !DILocation(line: 412, column: 40, scope: !1230)
!1234 = !DILocation(line: 412, column: 25, scope: !1230)
!1235 = !DILocation(line: 413, column: 26, scope: !1228)
!1236 = !DILocation(line: 413, column: 37, scope: !1228)
!1237 = !DILocation(line: 415, column: 34, scope: !1228)
!1238 = distinct !{!1238, !1226, !1239}
!1239 = !DILocation(line: 416, column: 9, scope: !1141)
!1240 = !DILocation(line: 418, column: 9, scope: !1141)
!1241 = !DILocation(line: 419, column: 9, scope: !1141)
!1242 = !DILocation(line: 420, column: 1, scope: !1141)
!1243 = distinct !DISubprogram(name: "read_reslib_header", scope: !3, file: !3, line: 492, type: !1244, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1247)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!298, !12, !1246, !1246, !1246, !1246, !12}
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1263, !1264, !1268, !1269, !1270}
!1248 = !DILocalVariable(name: "reslib", arg: 1, scope: !1243, file: !3, line: 492, type: !12)
!1249 = !DILocalVariable(name: "pfp", arg: 2, scope: !1243, file: !3, line: 493, type: !1246)
!1250 = !DILocalVariable(name: "bfp", arg: 3, scope: !1243, file: !3, line: 493, type: !1246)
!1251 = !DILocalVariable(name: "qfp", arg: 4, scope: !1243, file: !3, line: 493, type: !1246)
!1252 = !DILocalVariable(name: "cfp", arg: 5, scope: !1243, file: !3, line: 493, type: !1246)
!1253 = !DILocalVariable(name: "offname", arg: 6, scope: !1243, file: !3, line: 493, type: !12)
!1254 = !DILocalVariable(name: "rfp", scope: !1243, file: !3, line: 495, type: !434)
!1255 = !DILocalVariable(name: "rlp", scope: !1243, file: !3, line: 496, type: !298)
!1256 = !DILocalVariable(name: "nw", scope: !1243, file: !3, line: 497, type: !11)
!1257 = !DILocalVariable(name: "nsize", scope: !1243, file: !3, line: 497, type: !11)
!1258 = !DILocalVariable(name: "np", scope: !1243, file: !3, line: 498, type: !12)
!1259 = !DILocalVariable(name: "line", scope: !1243, file: !3, line: 499, type: !1260)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 128)
!1263 = !DILocalVariable(name: "keyword", scope: !1243, file: !3, line: 499, type: !295)
!1264 = !DILocalVariable(name: "value", scope: !1243, file: !3, line: 499, type: !1265)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 100)
!1268 = !DILocalVariable(name: "newname", scope: !1243, file: !3, line: 499, type: !1265)
!1269 = !DILocalVariable(name: "fname", scope: !1243, file: !3, line: 500, type: !352)
!1270 = !DILabel(scope: !1243, name: "clean_up", file: !3, line: 621)
!1271 = !DILocation(line: 0, scope: !1243)
!1272 = !DILocation(line: 499, column: 2, scope: !1243)
!1273 = !DILocation(line: 499, column: 7, scope: !1243)
!1274 = !DILocation(line: 499, column: 20, scope: !1243)
!1275 = !DILocation(line: 499, column: 35, scope: !1243)
!1276 = !DILocation(line: 499, column: 49, scope: !1243)
!1277 = !DILocation(line: 500, column: 2, scope: !1243)
!1278 = !DILocation(line: 500, column: 7, scope: !1243)
!1279 = !DILocation(line: 502, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 502, column: 6)
!1281 = !DILocation(line: 502, column: 31, scope: !1280)
!1282 = !DILocation(line: 502, column: 6, scope: !1243)
!1283 = !DILocation(line: 503, column: 12, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 502, column: 40)
!1285 = !DILocation(line: 503, column: 3, scope: !1284)
!1286 = !DILocation(line: 504, column: 12, scope: !1284)
!1287 = !DILocation(line: 504, column: 21, scope: !1284)
!1288 = !DILocation(line: 504, column: 3, scope: !1284)
!1289 = !DILocation(line: 505, column: 22, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 505, column: 7)
!1291 = !DILocation(line: 505, column: 15, scope: !1290)
!1292 = !DILocation(line: 505, column: 37, scope: !1290)
!1293 = !DILocation(line: 505, column: 7, scope: !1284)
!1294 = !DILocation(line: 506, column: 47, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 505, column: 46)
!1296 = !DILocation(line: 506, column: 4, scope: !1295)
!1297 = !DILocation(line: 507, column: 4, scope: !1295)
!1298 = !DILocation(line: 510, column: 21, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 509, column: 7)
!1300 = !DILocation(line: 510, column: 3, scope: !1299)
!1301 = !DILocation(line: 511, column: 22, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 511, column: 7)
!1303 = !DILocation(line: 511, column: 15, scope: !1302)
!1304 = !DILocation(line: 511, column: 37, scope: !1302)
!1305 = !DILocation(line: 511, column: 7, scope: !1299)
!1306 = !DILocation(line: 512, column: 47, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 511, column: 46)
!1308 = !DILocation(line: 512, column: 4, scope: !1307)
!1309 = !DILocation(line: 513, column: 4, scope: !1307)
!1310 = !DILocation(line: 0, scope: !1280)
!1311 = !DILocation(line: 517, column: 28, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 517, column: 6)
!1313 = !DILocation(line: 517, column: 14, scope: !1312)
!1314 = !DILocation(line: 517, column: 59, scope: !1312)
!1315 = !DILocation(line: 517, column: 6, scope: !1243)
!1316 = !DILocation(line: 518, column: 3, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 517, column: 68)
!1318 = !DILocation(line: 519, column: 3, scope: !1317)
!1319 = !DILocation(line: 520, column: 3, scope: !1317)
!1320 = !DILocation(line: 523, column: 10, scope: !1243)
!1321 = !DILocation(line: 524, column: 31, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 524, column: 6)
!1323 = !DILocation(line: 524, column: 23, scope: !1322)
!1324 = !DILocation(line: 524, column: 58, scope: !1322)
!1325 = !DILocation(line: 524, column: 6, scope: !1243)
!1326 = !DILocation(line: 525, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 524, column: 67)
!1328 = !DILocation(line: 526, column: 3, scope: !1327)
!1329 = !DILocation(line: 527, column: 3, scope: !1327)
!1330 = !DILocation(line: 529, column: 2, scope: !1243)
!1331 = !DILocation(line: 530, column: 17, scope: !1243)
!1332 = !DILocation(line: 530, column: 7, scope: !1243)
!1333 = !DILocation(line: 530, column: 15, scope: !1243)
!1334 = !DILocation(line: 531, column: 10, scope: !1243)
!1335 = !DILocation(line: 532, column: 7, scope: !1243)
!1336 = !DILocation(line: 532, column: 15, scope: !1243)
!1337 = !DILocation(line: 533, column: 7, scope: !1243)
!1338 = !DILocation(line: 533, column: 17, scope: !1243)
!1339 = !DILocation(line: 534, column: 7, scope: !1243)
!1340 = !DILocation(line: 534, column: 21, scope: !1243)
!1341 = !{!389, !390, i64 20}
!1342 = !DILocation(line: 535, column: 7, scope: !1243)
!1343 = !DILocation(line: 535, column: 16, scope: !1243)
!1344 = !DILocation(line: 537, column: 7, scope: !1243)
!1345 = !DILocation(line: 538, column: 7, scope: !1243)
!1346 = !DILocation(line: 539, column: 7, scope: !1243)
!1347 = !DILocation(line: 540, column: 7, scope: !1243)
!1348 = !DILocation(line: 541, column: 11, scope: !1243)
!1349 = !DILocation(line: 543, column: 7, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 543, column: 7)
!1351 = !DILocation(line: 543, column: 32, scope: !1350)
!1352 = !DILocation(line: 543, column: 7, scope: !1243)
!1353 = !DILocation(line: 544, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 543, column: 41)
!1355 = !DILocation(line: 544, column: 10, scope: !1354)
!1356 = !DILocation(line: 544, column: 3, scope: !1354)
!1357 = !DILocation(line: 545, column: 8, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 545, column: 8)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 544, column: 46)
!1360 = !DILocation(line: 545, column: 14, scope: !1358)
!1361 = !DILocation(line: 545, column: 8, scope: !1359)
!1362 = distinct !{!1362, !1356, !1363}
!1363 = !DILocation(line: 616, column: 3, scope: !1354)
!1364 = !DILocation(line: 547, column: 23, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 547, column: 8)
!1366 = !DILocation(line: 547, column: 40, scope: !1365)
!1367 = !DILocation(line: 547, column: 49, scope: !1365)
!1368 = !DILocation(line: 547, column: 15, scope: !1365)
!1369 = !DILocation(line: 547, column: 8, scope: !1359)
!1370 = !DILocation(line: 554, column: 22, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 554, column: 14)
!1372 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 551, column: 14)
!1373 = !DILocation(line: 554, column: 14, scope: !1371)
!1374 = !DILocation(line: 554, column: 40, scope: !1371)
!1375 = !DILocation(line: 554, column: 14, scope: !1372)
!1376 = !DILocation(line: 555, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 555, column: 9)
!1378 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 554, column: 46)
!1379 = !DILocation(line: 555, column: 9, scope: !1378)
!1380 = !DILocation(line: 556, column: 11, scope: !1377)
!1381 = !DILocation(line: 556, column: 21, scope: !1377)
!1382 = !DILocation(line: 556, column: 6, scope: !1377)
!1383 = !DILocation(line: 557, column: 14, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 557, column: 14)
!1385 = !DILocation(line: 557, column: 14, scope: !1377)
!1386 = !DILocation(line: 558, column: 11, scope: !1384)
!1387 = !DILocation(line: 558, column: 21, scope: !1384)
!1388 = !DILocation(line: 558, column: 6, scope: !1384)
!1389 = !DILocation(line: 559, column: 22, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 559, column: 14)
!1391 = !DILocation(line: 559, column: 14, scope: !1390)
!1392 = !DILocation(line: 559, column: 36, scope: !1390)
!1393 = !DILocation(line: 559, column: 14, scope: !1384)
!1394 = !DILocation(line: 560, column: 11, scope: !1390)
!1395 = !DILocation(line: 560, column: 21, scope: !1390)
!1396 = !DILocation(line: 565, column: 22, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 565, column: 14)
!1398 = !DILocation(line: 565, column: 14, scope: !1397)
!1399 = !DILocation(line: 565, column: 44, scope: !1397)
!1400 = !DILocation(line: 565, column: 14, scope: !1371)
!1401 = !DILocation(line: 566, column: 17, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 566, column: 9)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 565, column: 50)
!1404 = !DILocation(line: 566, column: 9, scope: !1402)
!1405 = !DILocation(line: 566, column: 35, scope: !1402)
!1406 = !DILocation(line: 566, column: 9, scope: !1403)
!1407 = !DILocation(line: 567, column: 11, scope: !1402)
!1408 = !DILocation(line: 567, column: 25, scope: !1402)
!1409 = !DILocation(line: 567, column: 6, scope: !1402)
!1410 = !DILocation(line: 568, column: 14, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 568, column: 14)
!1412 = !DILocation(line: 568, column: 14, scope: !1402)
!1413 = !DILocation(line: 569, column: 11, scope: !1411)
!1414 = !DILocation(line: 569, column: 25, scope: !1411)
!1415 = !DILocation(line: 574, column: 14, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 574, column: 14)
!1417 = !DILocation(line: 574, column: 14, scope: !1397)
!1418 = !DILocation(line: 575, column: 15, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 574, column: 45)
!1420 = !DILocation(line: 575, column: 5, scope: !1419)
!1421 = !DILocation(line: 576, column: 4, scope: !1419)
!1422 = !DILocation(line: 576, column: 14, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 576, column: 14)
!1424 = !DILocation(line: 576, column: 14, scope: !1416)
!1425 = !DILocation(line: 577, column: 15, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 576, column: 45)
!1427 = !DILocation(line: 577, column: 22, scope: !1426)
!1428 = !DILocation(line: 577, column: 5, scope: !1426)
!1429 = !DILocation(line: 578, column: 25, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 578, column: 9)
!1431 = !DILocation(line: 578, column: 18, scope: !1430)
!1432 = !DILocation(line: 578, column: 16, scope: !1430)
!1433 = !DILocation(line: 578, column: 40, scope: !1430)
!1434 = !DILocation(line: 578, column: 9, scope: !1426)
!1435 = !DILocation(line: 579, column: 37, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 578, column: 49)
!1437 = !DILocation(line: 579, column: 6, scope: !1436)
!1438 = !DILocation(line: 580, column: 6, scope: !1436)
!1439 = !DILocation(line: 583, column: 6, scope: !1436)
!1440 = !DILocation(line: 585, column: 14, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 585, column: 14)
!1442 = !DILocation(line: 585, column: 14, scope: !1423)
!1443 = !DILocation(line: 586, column: 15, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 585, column: 45)
!1445 = !DILocation(line: 586, column: 22, scope: !1444)
!1446 = !DILocation(line: 586, column: 5, scope: !1444)
!1447 = !DILocation(line: 587, column: 25, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 587, column: 9)
!1449 = !DILocation(line: 587, column: 18, scope: !1448)
!1450 = !DILocation(line: 587, column: 16, scope: !1448)
!1451 = !DILocation(line: 587, column: 40, scope: !1448)
!1452 = !DILocation(line: 587, column: 9, scope: !1444)
!1453 = !DILocation(line: 588, column: 37, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 587, column: 49)
!1455 = !DILocation(line: 588, column: 6, scope: !1454)
!1456 = !DILocation(line: 589, column: 6, scope: !1454)
!1457 = !DILocation(line: 592, column: 6, scope: !1454)
!1458 = !DILocation(line: 594, column: 22, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 594, column: 14)
!1460 = !DILocation(line: 594, column: 14, scope: !1459)
!1461 = !DILocation(line: 594, column: 38, scope: !1459)
!1462 = !DILocation(line: 594, column: 14, scope: !1441)
!1463 = !DILocation(line: 595, column: 15, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 594, column: 44)
!1465 = !DILocation(line: 595, column: 22, scope: !1464)
!1466 = !DILocation(line: 595, column: 5, scope: !1464)
!1467 = !DILocation(line: 596, column: 25, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 596, column: 9)
!1469 = !DILocation(line: 596, column: 18, scope: !1468)
!1470 = !DILocation(line: 596, column: 16, scope: !1468)
!1471 = !DILocation(line: 596, column: 40, scope: !1468)
!1472 = !DILocation(line: 596, column: 9, scope: !1464)
!1473 = !DILocation(line: 597, column: 36, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 596, column: 49)
!1475 = !DILocation(line: 597, column: 6, scope: !1474)
!1476 = !DILocation(line: 598, column: 6, scope: !1474)
!1477 = !DILocation(line: 601, column: 6, scope: !1474)
!1478 = !DILocation(line: 603, column: 14, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 603, column: 14)
!1480 = !DILocation(line: 603, column: 14, scope: !1459)
!1481 = !DILocation(line: 604, column: 15, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 603, column: 45)
!1483 = !DILocation(line: 604, column: 22, scope: !1482)
!1484 = !DILocation(line: 604, column: 5, scope: !1482)
!1485 = !DILocation(line: 605, column: 25, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 605, column: 9)
!1487 = !DILocation(line: 605, column: 18, scope: !1486)
!1488 = !DILocation(line: 605, column: 16, scope: !1486)
!1489 = !DILocation(line: 605, column: 40, scope: !1486)
!1490 = !DILocation(line: 605, column: 9, scope: !1482)
!1491 = !DILocation(line: 606, column: 37, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 605, column: 49)
!1493 = !DILocation(line: 606, column: 6, scope: !1492)
!1494 = !DILocation(line: 607, column: 6, scope: !1492)
!1495 = !DILocation(line: 610, column: 6, scope: !1492)
!1496 = !DILocation(line: 618, column: 13, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 617, column: 7)
!1498 = !DILocation(line: 618, column: 3, scope: !1497)
!1499 = !DILocation(line: 621, column: 1, scope: !1243)
!1500 = !DILocation(line: 622, column: 2, scope: !1243)
!1501 = !DILocation(line: 623, column: 10, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 623, column: 6)
!1503 = !DILocation(line: 623, column: 6, scope: !1243)
!1504 = !DILocation(line: 624, column: 7, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 624, column: 7)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 623, column: 19)
!1507 = !DILocation(line: 624, column: 7, scope: !1506)
!1508 = !DILocation(line: 624, column: 22, scope: !1505)
!1509 = !DILocation(line: 624, column: 14, scope: !1505)
!1510 = !DILocation(line: 625, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 625, column: 7)
!1512 = !DILocation(line: 625, column: 7, scope: !1506)
!1513 = !DILocation(line: 625, column: 22, scope: !1511)
!1514 = !DILocation(line: 625, column: 14, scope: !1511)
!1515 = !DILocation(line: 626, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 626, column: 7)
!1517 = !DILocation(line: 626, column: 7, scope: !1506)
!1518 = !DILocation(line: 626, column: 22, scope: !1516)
!1519 = !DILocation(line: 626, column: 14, scope: !1516)
!1520 = !DILocation(line: 627, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 627, column: 7)
!1522 = !DILocation(line: 627, column: 7, scope: !1506)
!1523 = !DILocation(line: 627, column: 22, scope: !1521)
!1524 = !DILocation(line: 627, column: 14, scope: !1521)
!1525 = !DILocation(line: 628, column: 19, scope: !1506)
!1526 = !DILocation(line: 628, column: 11, scope: !1506)
!1527 = !DILocation(line: 629, column: 11, scope: !1506)
!1528 = !DILocation(line: 630, column: 43, scope: !1506)
!1529 = !DILocation(line: 630, column: 3, scope: !1506)
!1530 = !DILocation(line: 631, column: 3, scope: !1506)
!1531 = !DILocation(line: 632, column: 2, scope: !1506)
!1532 = !DILocation(line: 635, column: 1, scope: !1243)
!1533 = !DILocation(line: 478, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !324, file: !3, line: 478, column: 6)
!1535 = !DILocation(line: 478, column: 6, scope: !324)
!1536 = !DILocation(line: 480, column: 7, scope: !324)
!1537 = !DILocation(line: 0, scope: !324)
!1538 = !DILocation(line: 481, column: 2, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !324, file: !3, line: 481, column: 2)
!1540 = !DILocation(line: 482, column: 3, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 481, column: 51)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 481, column: 2)
!1543 = !DILocation(line: 483, column: 30, scope: !1541)
!1544 = !DILocation(line: 483, column: 7, scope: !1541)
!1545 = !DILocation(line: 483, column: 18, scope: !1541)
!1546 = !DILocation(line: 484, column: 22, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 484, column: 7)
!1548 = !DILocation(line: 484, column: 7, scope: !1541)
!1549 = !DILocation(line: 485, column: 13, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 484, column: 31)
!1551 = !DILocation(line: 485, column: 4, scope: !1550)
!1552 = !DILocation(line: 487, column: 4, scope: !1550)
!1553 = !DILocation(line: 481, column: 41, scope: !1542)
!1554 = !DILocation(line: 481, column: 47, scope: !1542)
!1555 = !DILocation(line: 481, column: 28, scope: !1542)
!1556 = distinct !{!1556, !1538, !1557}
!1557 = !DILocation(line: 489, column: 2, scope: !1539)
!1558 = !DILocation(line: 490, column: 1, scope: !324)
!1559 = distinct !DISubprogram(name: "off2reslib", scope: !3, file: !3, line: 647, type: !1560, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !12, !298}
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1596, !1597, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1607, !1608, !1609, !1610, !1613, !1614, !1615}
!1563 = !DILocalVariable(name: "offname", arg: 1, scope: !1559, file: !3, line: 647, type: !12)
!1564 = !DILocalVariable(name: "rlp", arg: 2, scope: !1559, file: !3, line: 647, type: !298)
!1565 = !DILocalVariable(name: "ap", scope: !1559, file: !3, line: 649, type: !201)
!1566 = !DILocalVariable(name: "n_names", scope: !1559, file: !3, line: 650, type: !11)
!1567 = !DILocalVariable(name: "n_resnames", scope: !1559, file: !3, line: 650, type: !11)
!1568 = !DILocalVariable(name: "i", scope: !1559, file: !3, line: 650, type: !11)
!1569 = !DILocalVariable(name: "ires", scope: !1559, file: !3, line: 650, type: !11)
!1570 = !DILocalVariable(name: "db", scope: !1559, file: !3, line: 651, type: !1571)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASE", file: !1572, line: 84, baseType: !1573)
!1572 = !DIFile(filename: "./database.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "DATABASEt", file: !1572, line: 82, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1572, line: 65, size: 33024, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1581, !1582, !1583, !1587, !1589, !1590, !1591, !1593, !1594, !1595}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "iAccessMode", scope: !1575, file: !1572, line: 66, baseType: !11, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "fDataBase", scope: !1575, file: !1572, line: 67, baseType: !434, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sFileName", scope: !1575, file: !1572, line: 68, baseType: !1580, size: 2048, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "String", file: !1572, line: 48, baseType: !352)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "iOpenMode", scope: !1575, file: !1572, line: 69, baseType: !11, size: 32, offset: 2176)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "iPrefix", scope: !1575, file: !1572, line: 70, baseType: !11, size: 32, offset: 2208)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "saPrefixStack", scope: !1575, file: !1572, line: 71, baseType: !1584, size: 20480, offset: 2240)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1580, size: 20480, elements: !1585)
!1585 = !{!1586}
!1586 = !DISubrange(count: 10)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "bCompactFileAtClose", scope: !1575, file: !1572, line: 72, baseType: !1588, size: 8, offset: 22720)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !1572, line: 47, baseType: !13)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dEntries", scope: !1575, file: !1572, line: 73, baseType: !6, size: 64, offset: 22784)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "iCurrentLine", scope: !1575, file: !1572, line: 74, baseType: !11, size: 32, offset: 22848)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "sLookAhead", scope: !1575, file: !1572, line: 75, baseType: !1592, size: 8000, offset: 22880)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !333)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "iLastSequentialOperation", scope: !1575, file: !1572, line: 76, baseType: !11, size: 32, offset: 30880)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sLoopPrefix", scope: !1575, file: !1572, line: 79, baseType: !1580, size: 2048, offset: 30912)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "dlEntryLoop", scope: !1575, file: !1572, line: 80, baseType: !11, size: 32, offset: 32960)
!1596 = !DILocalVariable(name: "bresult", scope: !1559, file: !3, line: 652, type: !1588)
!1597 = !DILocalVariable(name: "typex", scope: !1559, file: !3, line: 653, type: !1598)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 3200, elements: !1266)
!1599 = !DILocalVariable(name: "resx", scope: !1559, file: !3, line: 653, type: !1598)
!1600 = !DILocalVariable(name: "flags", scope: !1559, file: !3, line: 653, type: !1598)
!1601 = !DILocalVariable(name: "seq", scope: !1559, file: !3, line: 654, type: !1598)
!1602 = !DILocalVariable(name: "elmnt", scope: !1559, file: !3, line: 654, type: !1598)
!1603 = !DILocalVariable(name: "atom1x", scope: !1559, file: !3, line: 655, type: !1598)
!1604 = !DILocalVariable(name: "atom2x", scope: !1559, file: !3, line: 655, type: !1598)
!1605 = !DILocalVariable(name: "chg", scope: !1559, file: !3, line: 656, type: !1606)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 6400, elements: !1266)
!1607 = !DILocalVariable(name: "x", scope: !1559, file: !3, line: 656, type: !1606)
!1608 = !DILocalVariable(name: "y", scope: !1559, file: !3, line: 656, type: !1606)
!1609 = !DILocalVariable(name: "z", scope: !1559, file: !3, line: 656, type: !1606)
!1610 = !DILocalVariable(name: "a_name", scope: !1559, file: !3, line: 657, type: !1611)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8000, elements: !1612)
!1612 = !{!1267, !1586}
!1613 = !DILocalVariable(name: "type", scope: !1559, file: !3, line: 657, type: !1611)
!1614 = !DILocalVariable(name: "res_name", scope: !1559, file: !3, line: 657, type: !1611)
!1615 = !DILocalVariable(name: "prefix", scope: !1559, file: !3, line: 658, type: !1616)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2040, elements: !1617)
!1617 = !{!1618}
!1618 = !DISubrange(count: 255)
!1619 = !DILocation(line: 0, scope: !1559)
!1620 = !DILocation(line: 650, column: 2, scope: !1559)
!1621 = !DILocation(line: 653, column: 2, scope: !1559)
!1622 = !DILocation(line: 653, column: 6, scope: !1559)
!1623 = !DILocation(line: 653, column: 20, scope: !1559)
!1624 = !DILocation(line: 653, column: 33, scope: !1559)
!1625 = !DILocation(line: 654, column: 3, scope: !1559)
!1626 = !DILocation(line: 654, column: 15, scope: !1559)
!1627 = !DILocation(line: 655, column: 2, scope: !1559)
!1628 = !DILocation(line: 655, column: 6, scope: !1559)
!1629 = !DILocation(line: 655, column: 21, scope: !1559)
!1630 = !DILocation(line: 656, column: 2, scope: !1559)
!1631 = !DILocation(line: 656, column: 9, scope: !1559)
!1632 = !DILocation(line: 656, column: 21, scope: !1559)
!1633 = !DILocation(line: 656, column: 31, scope: !1559)
!1634 = !DILocation(line: 656, column: 41, scope: !1559)
!1635 = !DILocation(line: 657, column: 2, scope: !1559)
!1636 = !DILocation(line: 657, column: 7, scope: !1559)
!1637 = !DILocation(line: 657, column: 28, scope: !1559)
!1638 = !DILocation(line: 657, column: 47, scope: !1559)
!1639 = !DILocation(line: 658, column: 2, scope: !1559)
!1640 = !DILocation(line: 658, column: 7, scope: !1559)
!1641 = !DILocation(line: 660, column: 10, scope: !1559)
!1642 = !DILocation(line: 661, column: 7, scope: !1559)
!1643 = !DILocation(line: 665, column: 52, scope: !1559)
!1644 = !DILocation(line: 665, column: 12, scope: !1559)
!1645 = !DILocation(line: 667, column: 23, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 667, column: 2)
!1647 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 667, column: 2)
!1648 = !DILocation(line: 667, column: 21, scope: !1646)
!1649 = !DILocation(line: 667, column: 2, scope: !1647)
!1650 = !DILocation(line: 671, column: 12, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 667, column: 43)
!1652 = !DILocation(line: 671, column: 33, scope: !1651)
!1653 = !DILocation(line: 671, column: 3, scope: !1651)
!1654 = !DILocation(line: 672, column: 3, scope: !1651)
!1655 = !DILocation(line: 673, column: 21, scope: !1651)
!1656 = !DILocation(line: 673, column: 3, scope: !1651)
!1657 = !DILocation(line: 674, column: 13, scope: !1651)
!1658 = !DILocation(line: 679, column: 7, scope: !1651)
!1659 = !DILocation(line: 680, column: 7, scope: !1651)
!1660 = !DILocation(line: 681, column: 7, scope: !1651)
!1661 = !DILocation(line: 682, column: 7, scope: !1651)
!1662 = !DILocation(line: 683, column: 7, scope: !1651)
!1663 = !DILocation(line: 687, column: 7, scope: !1651)
!1664 = !DILocation(line: 691, column: 7, scope: !1651)
!1665 = !DILocation(line: 692, column: 7, scope: !1651)
!1666 = !DILocation(line: 678, column: 13, scope: !1651)
!1667 = !DILocation(line: 708, column: 7, scope: !1651)
!1668 = !DILocation(line: 709, column: 7, scope: !1651)
!1669 = !DILocation(line: 710, column: 7, scope: !1651)
!1670 = !DILocation(line: 699, column: 13, scope: !1651)
!1671 = !DILocation(line: 718, column: 18, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 718, column: 3)
!1673 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 718, column: 3)
!1674 = !DILocation(line: 718, column: 16, scope: !1672)
!1675 = !DILocation(line: 718, column: 3, scope: !1673)
!1676 = !DILocation(line: 719, column: 10, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 718, column: 32)
!1678 = !DILocation(line: 720, column: 4, scope: !1677)
!1679 = !DILocation(line: 721, column: 16, scope: !1677)
!1680 = !DILocation(line: 721, column: 28, scope: !1677)
!1681 = !DILocation(line: 721, column: 4, scope: !1677)
!1682 = !DILocation(line: 722, column: 21, scope: !1677)
!1683 = !DILocation(line: 722, column: 8, scope: !1677)
!1684 = !DILocation(line: 722, column: 19, scope: !1677)
!1685 = !DILocation(line: 723, column: 21, scope: !1677)
!1686 = !DILocation(line: 723, column: 4, scope: !1677)
!1687 = !DILocation(line: 723, column: 19, scope: !1677)
!1688 = !DILocation(line: 724, column: 21, scope: !1677)
!1689 = !DILocation(line: 724, column: 4, scope: !1677)
!1690 = !DILocation(line: 724, column: 19, scope: !1677)
!1691 = !DILocation(line: 725, column: 21, scope: !1677)
!1692 = !DILocation(line: 725, column: 4, scope: !1677)
!1693 = !DILocation(line: 725, column: 19, scope: !1677)
!1694 = !DILocation(line: 718, column: 28, scope: !1672)
!1695 = distinct !{!1695, !1675, !1696}
!1696 = !DILocation(line: 726, column: 3, scope: !1673)
!1697 = !DILocation(line: 728, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 728, column: 7)
!1699 = !DILocation(line: 728, column: 15, scope: !1698)
!1700 = !DILocation(line: 728, column: 7, scope: !1651)
!1701 = !DILocation(line: 729, column: 4, scope: !1698)
!1702 = !DILocation(line: 734, column: 7, scope: !1651)
!1703 = !DILocation(line: 735, column: 7, scope: !1651)
!1704 = !DILocation(line: 736, column: 7, scope: !1651)
!1705 = !DILocation(line: 733, column: 13, scope: !1651)
!1706 = !DILocation(line: 752, column: 18, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 752, column: 3)
!1708 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 752, column: 3)
!1709 = !DILocation(line: 752, column: 16, scope: !1707)
!1710 = !DILocation(line: 752, column: 3, scope: !1708)
!1711 = !DILocation(line: 753, column: 22, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 752, column: 32)
!1713 = !DILocation(line: 753, column: 4, scope: !1712)
!1714 = !DILocation(line: 753, column: 20, scope: !1712)
!1715 = !DILocation(line: 754, column: 22, scope: !1712)
!1716 = !DILocation(line: 754, column: 4, scope: !1712)
!1717 = !DILocation(line: 754, column: 20, scope: !1712)
!1718 = !DILocation(line: 752, column: 28, scope: !1707)
!1719 = distinct !{!1719, !1710, !1720}
!1720 = !DILocation(line: 755, column: 3, scope: !1708)
!1721 = !DILocation(line: 757, column: 10, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 757, column: 10)
!1723 = !DILocation(line: 757, column: 18, scope: !1722)
!1724 = !DILocation(line: 757, column: 10, scope: !1651)
!1725 = !DILocation(line: 758, column: 10, scope: !1722)
!1726 = !DILocation(line: 667, column: 39, scope: !1646)
!1727 = distinct !{!1727, !1649, !1728}
!1728 = !DILocation(line: 759, column: 2, scope: !1647)
!1729 = !DILocation(line: 760, column: 1, scope: !1559)
!1730 = distinct !DISubprogram(name: "pdb2reslib", scope: !3, file: !3, line: 762, type: !1731, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !434, !298}
!1733 = !{!1734, !1735, !1736, !1737, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1734 = !DILocalVariable(name: "rfp", arg: 1, scope: !1730, file: !3, line: 762, type: !434)
!1735 = !DILocalVariable(name: "rlp", arg: 2, scope: !1730, file: !3, line: 762, type: !298)
!1736 = !DILocalVariable(name: "line", scope: !1730, file: !3, line: 764, type: !352)
!1737 = !DILocalVariable(name: "ltype", scope: !1730, file: !3, line: 765, type: !1738)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 80, elements: !1585)
!1739 = !DILocalVariable(name: "a_name", scope: !1730, file: !3, line: 765, type: !1738)
!1740 = !DILocalVariable(name: "r_name", scope: !1730, file: !3, line: 765, type: !1738)
!1741 = !DILocalVariable(name: "a_num", scope: !1730, file: !3, line: 766, type: !11)
!1742 = !DILocalVariable(name: "r_num", scope: !1730, file: !3, line: 766, type: !11)
!1743 = !DILocalVariable(name: "x", scope: !1730, file: !3, line: 767, type: !47)
!1744 = !DILocalVariable(name: "y", scope: !1730, file: !3, line: 767, type: !47)
!1745 = !DILocalVariable(name: "z", scope: !1730, file: !3, line: 767, type: !47)
!1746 = !DILocalVariable(name: "ap", scope: !1730, file: !3, line: 768, type: !201)
!1747 = !DILocation(line: 0, scope: !1730)
!1748 = !DILocation(line: 764, column: 2, scope: !1730)
!1749 = !DILocation(line: 764, column: 7, scope: !1730)
!1750 = !DILocation(line: 765, column: 2, scope: !1730)
!1751 = !DILocation(line: 765, column: 7, scope: !1730)
!1752 = !DILocation(line: 765, column: 20, scope: !1730)
!1753 = !DILocation(line: 765, column: 34, scope: !1730)
!1754 = !DILocation(line: 766, column: 2, scope: !1730)
!1755 = !DILocation(line: 767, column: 2, scope: !1730)
!1756 = !DILocation(line: 770, column: 10, scope: !1730)
!1757 = !DILocation(line: 771, column: 11, scope: !1730)
!1758 = !DILocation(line: 772, column: 16, scope: !1730)
!1759 = !DILocation(line: 772, column: 9, scope: !1730)
!1760 = !DILocation(line: 772, column: 2, scope: !1730)
!1761 = !DILocation(line: 773, column: 26, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 773, column: 7)
!1763 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 772, column: 45)
!1764 = !DILocation(line: 773, column: 7, scope: !1762)
!1765 = !DILocation(line: 773, column: 36, scope: !1762)
!1766 = !DILocation(line: 773, column: 7, scope: !1763)
!1767 = !DILocation(line: 774, column: 23, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 773, column: 42)
!1769 = !DILocation(line: 774, column: 4, scope: !1768)
!1770 = !DILocation(line: 775, column: 3, scope: !1768)
!1771 = !DILocation(line: 775, column: 13, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 775, column: 13)
!1773 = !DILocation(line: 775, column: 45, scope: !1772)
!1774 = !DILocation(line: 776, column: 23, scope: !1772)
!1775 = !DILocation(line: 776, column: 4, scope: !1772)
!1776 = !DILocation(line: 776, column: 33, scope: !1772)
!1777 = !DILocation(line: 775, column: 13, scope: !1762)
!1778 = !DILocation(line: 778, column: 12, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 776, column: 39)
!1780 = !DILocation(line: 782, column: 5, scope: !1779)
!1781 = !DILocation(line: 783, column: 13, scope: !1779)
!1782 = !DILocation(line: 783, column: 21, scope: !1779)
!1783 = !DILocation(line: 778, column: 4, scope: !1779)
!1784 = !DILocation(line: 785, column: 25, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 785, column: 8)
!1786 = !DILocation(line: 785, column: 8, scope: !1785)
!1787 = !DILocation(line: 785, column: 34, scope: !1785)
!1788 = !DILocation(line: 785, column: 8, scope: !1779)
!1789 = !DILocation(line: 786, column: 9, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 786, column: 9)
!1791 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 785, column: 40)
!1792 = !DILocation(line: 786, column: 17, scope: !1790)
!1793 = !DILocation(line: 786, column: 9, scope: !1791)
!1794 = !DILocation(line: 787, column: 6, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 786, column: 22)
!1796 = !DILocation(line: 788, column: 14, scope: !1795)
!1797 = !DILocation(line: 789, column: 5, scope: !1795)
!1798 = !DILocation(line: 790, column: 22, scope: !1791)
!1799 = !DILocation(line: 790, column: 5, scope: !1791)
!1800 = !DILocation(line: 791, column: 4, scope: !1791)
!1801 = !DILocation(line: 792, column: 17, scope: !1779)
!1802 = !DILocation(line: 792, column: 10, scope: !1779)
!1803 = !DILocation(line: 793, column: 4, scope: !1779)
!1804 = !DILocation(line: 794, column: 16, scope: !1779)
!1805 = !DILocation(line: 794, column: 28, scope: !1779)
!1806 = !DILocation(line: 794, column: 4, scope: !1779)
!1807 = !DILocation(line: 795, column: 21, scope: !1779)
!1808 = !DILocation(line: 795, column: 4, scope: !1779)
!1809 = !DILocation(line: 795, column: 19, scope: !1779)
!1810 = !DILocation(line: 796, column: 21, scope: !1779)
!1811 = !DILocation(line: 796, column: 4, scope: !1779)
!1812 = !DILocation(line: 796, column: 19, scope: !1779)
!1813 = !DILocation(line: 797, column: 21, scope: !1779)
!1814 = !DILocation(line: 797, column: 4, scope: !1779)
!1815 = !DILocation(line: 797, column: 19, scope: !1779)
!1816 = !DILocation(line: 798, column: 11, scope: !1779)
!1817 = !DILocation(line: 799, column: 3, scope: !1779)
!1818 = distinct !{!1818, !1760, !1819}
!1819 = !DILocation(line: 800, column: 2, scope: !1730)
!1820 = !DILocation(line: 801, column: 6, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 801, column: 6)
!1822 = !DILocation(line: 801, column: 14, scope: !1821)
!1823 = !DILocation(line: 801, column: 6, scope: !1730)
!1824 = !DILocation(line: 802, column: 3, scope: !1821)
!1825 = !DILocation(line: 803, column: 1, scope: !1730)
!1826 = distinct !DISubprogram(name: "bnd2reslib", scope: !3, file: !3, line: 805, type: !1731, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833, !1834}
!1828 = !DILocalVariable(name: "bfp", arg: 1, scope: !1826, file: !3, line: 805, type: !434)
!1829 = !DILocalVariable(name: "rlp", arg: 2, scope: !1826, file: !3, line: 805, type: !298)
!1830 = !DILocalVariable(name: "line", scope: !1826, file: !3, line: 807, type: !352)
!1831 = !DILocalVariable(name: "r_name", scope: !1826, file: !3, line: 808, type: !295)
!1832 = !DILocalVariable(name: "llen", scope: !1826, file: !3, line: 809, type: !11)
!1833 = !DILocalVariable(name: "bi", scope: !1826, file: !3, line: 810, type: !11)
!1834 = !DILocalVariable(name: "bj", scope: !1826, file: !3, line: 810, type: !11)
!1835 = !DILocation(line: 0, scope: !1826)
!1836 = !DILocation(line: 807, column: 2, scope: !1826)
!1837 = !DILocation(line: 807, column: 7, scope: !1826)
!1838 = !DILocation(line: 808, column: 2, scope: !1826)
!1839 = !DILocation(line: 808, column: 7, scope: !1826)
!1840 = !DILocation(line: 810, column: 2, scope: !1826)
!1841 = !DILocation(line: 812, column: 10, scope: !1826)
!1842 = !DILocation(line: 813, column: 2, scope: !1826)
!1843 = !DILocation(line: 813, column: 10, scope: !1826)
!1844 = !DILocation(line: 814, column: 16, scope: !1826)
!1845 = !DILocation(line: 814, column: 9, scope: !1826)
!1846 = !DILocation(line: 814, column: 2, scope: !1826)
!1847 = !DILocation(line: 815, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 815, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 814, column: 45)
!1850 = !DILocation(line: 815, column: 13, scope: !1848)
!1851 = !DILocation(line: 815, column: 7, scope: !1849)
!1852 = !DILocation(line: 816, column: 16, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 816, column: 8)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 815, column: 21)
!1855 = !DILocation(line: 816, column: 30, scope: !1853)
!1856 = !DILocation(line: 816, column: 8, scope: !1853)
!1857 = !DILocation(line: 816, column: 39, scope: !1853)
!1858 = !DILocation(line: 816, column: 8, scope: !1854)
!1859 = !DILocation(line: 817, column: 20, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 816, column: 45)
!1861 = !DILocation(line: 817, column: 12, scope: !1860)
!1862 = !DILocation(line: 818, column: 12, scope: !1860)
!1863 = !DILocation(line: 819, column: 43, scope: !1860)
!1864 = !DILocation(line: 819, column: 5, scope: !1860)
!1865 = !DILocation(line: 820, column: 5, scope: !1860)
!1866 = !DILocation(line: 822, column: 5, scope: !1860)
!1867 = !DILocation(line: 823, column: 14, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 823, column: 14)
!1869 = !DILocation(line: 823, column: 22, scope: !1868)
!1870 = !DILocation(line: 823, column: 14, scope: !1853)
!1871 = !DILocation(line: 824, column: 5, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 823, column: 27)
!1873 = !DILocation(line: 825, column: 22, scope: !1872)
!1874 = !DILocation(line: 825, column: 5, scope: !1872)
!1875 = !DILocation(line: 826, column: 13, scope: !1872)
!1876 = !DILocation(line: 827, column: 4, scope: !1872)
!1877 = !DILocation(line: 828, column: 22, scope: !1868)
!1878 = !DILocation(line: 828, column: 5, scope: !1868)
!1879 = !DILocation(line: 830, column: 16, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 830, column: 8)
!1881 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 829, column: 8)
!1882 = !DILocation(line: 830, column: 8, scope: !1880)
!1883 = !DILocation(line: 830, column: 42, scope: !1880)
!1884 = !DILocation(line: 830, column: 8, scope: !1881)
!1885 = !DILocation(line: 831, column: 20, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 830, column: 48)
!1887 = !DILocation(line: 831, column: 12, scope: !1886)
!1888 = !DILocation(line: 832, column: 12, scope: !1886)
!1889 = !DILocation(line: 833, column: 43, scope: !1886)
!1890 = !DILocation(line: 833, column: 5, scope: !1886)
!1891 = !DILocation(line: 834, column: 5, scope: !1886)
!1892 = !DILocation(line: 836, column: 5, scope: !1886)
!1893 = !DILocation(line: 838, column: 29, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 837, column: 9)
!1895 = !DILocation(line: 838, column: 12, scope: !1894)
!1896 = !DILocation(line: 838, column: 5, scope: !1894)
!1897 = !DILocation(line: 838, column: 27, scope: !1894)
!1898 = !DILocation(line: 839, column: 29, scope: !1894)
!1899 = !DILocation(line: 839, column: 5, scope: !1894)
!1900 = !DILocation(line: 839, column: 27, scope: !1894)
!1901 = !DILocation(line: 840, column: 12, scope: !1894)
!1902 = distinct !{!1902, !1846, !1903}
!1903 = !DILocation(line: 843, column: 2, scope: !1826)
!1904 = !DILocation(line: 844, column: 6, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 844, column: 6)
!1906 = !DILocation(line: 844, column: 14, scope: !1905)
!1907 = !DILocation(line: 844, column: 6, scope: !1826)
!1908 = !DILocation(line: 845, column: 3, scope: !1905)
!1909 = !DILocation(line: 846, column: 1, scope: !1826)
!1910 = distinct !DISubprogram(name: "qr2reslib", scope: !3, file: !3, line: 937, type: !1731, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1911)
!1911 = !{!1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1912 = !DILocalVariable(name: "qfp", arg: 1, scope: !1910, file: !3, line: 937, type: !434)
!1913 = !DILocalVariable(name: "rlp", arg: 2, scope: !1910, file: !3, line: 937, type: !298)
!1914 = !DILocalVariable(name: "line", scope: !1910, file: !3, line: 939, type: !352)
!1915 = !DILocalVariable(name: "ltype", scope: !1910, file: !3, line: 940, type: !1738)
!1916 = !DILocalVariable(name: "a_name", scope: !1910, file: !3, line: 940, type: !1738)
!1917 = !DILocalVariable(name: "r_name", scope: !1910, file: !3, line: 940, type: !1738)
!1918 = !DILocalVariable(name: "a_num", scope: !1910, file: !3, line: 941, type: !11)
!1919 = !DILocalVariable(name: "r_num", scope: !1910, file: !3, line: 941, type: !11)
!1920 = !DILocalVariable(name: "q", scope: !1910, file: !3, line: 942, type: !47)
!1921 = !DILocalVariable(name: "r", scope: !1910, file: !3, line: 942, type: !47)
!1922 = !DILocalVariable(name: "ap", scope: !1910, file: !3, line: 943, type: !201)
!1923 = !DILocation(line: 0, scope: !1910)
!1924 = !DILocation(line: 939, column: 2, scope: !1910)
!1925 = !DILocation(line: 939, column: 7, scope: !1910)
!1926 = !DILocation(line: 940, column: 2, scope: !1910)
!1927 = !DILocation(line: 940, column: 7, scope: !1910)
!1928 = !DILocation(line: 940, column: 20, scope: !1910)
!1929 = !DILocation(line: 940, column: 34, scope: !1910)
!1930 = !DILocation(line: 941, column: 2, scope: !1910)
!1931 = !DILocation(line: 942, column: 2, scope: !1910)
!1932 = !DILocation(line: 945, column: 10, scope: !1910)
!1933 = !DILocation(line: 946, column: 11, scope: !1910)
!1934 = !DILocation(line: 947, column: 16, scope: !1910)
!1935 = !DILocation(line: 947, column: 9, scope: !1910)
!1936 = !DILocation(line: 947, column: 2, scope: !1910)
!1937 = !DILocation(line: 948, column: 23, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 948, column: 7)
!1939 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 947, column: 45)
!1940 = !DILocation(line: 948, column: 7, scope: !1938)
!1941 = !DILocation(line: 948, column: 33, scope: !1938)
!1942 = !DILocation(line: 948, column: 7, scope: !1939)
!1943 = distinct !{!1943, !1936, !1944}
!1944 = !DILocation(line: 973, column: 2, scope: !1910)
!1945 = !DILocation(line: 950, column: 13, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 950, column: 13)
!1947 = !DILocation(line: 950, column: 45, scope: !1946)
!1948 = !DILocation(line: 951, column: 23, scope: !1946)
!1949 = !DILocation(line: 951, column: 4, scope: !1946)
!1950 = !DILocation(line: 951, column: 33, scope: !1946)
!1951 = !DILocation(line: 950, column: 13, scope: !1938)
!1952 = !DILocation(line: 953, column: 12, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 951, column: 39)
!1954 = !DILocation(line: 957, column: 5, scope: !1953)
!1955 = !DILocation(line: 958, column: 13, scope: !1953)
!1956 = !DILocation(line: 958, column: 21, scope: !1953)
!1957 = !DILocation(line: 953, column: 4, scope: !1953)
!1958 = !DILocation(line: 959, column: 25, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 959, column: 8)
!1960 = !DILocation(line: 959, column: 8, scope: !1959)
!1961 = !DILocation(line: 959, column: 34, scope: !1959)
!1962 = !DILocation(line: 959, column: 8, scope: !1953)
!1963 = !DILocation(line: 960, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 960, column: 9)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 959, column: 40)
!1966 = !DILocation(line: 960, column: 17, scope: !1964)
!1967 = !DILocation(line: 960, column: 9, scope: !1965)
!1968 = !DILocation(line: 961, column: 6, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 960, column: 22)
!1970 = !DILocation(line: 962, column: 14, scope: !1969)
!1971 = !DILocation(line: 963, column: 5, scope: !1969)
!1972 = !DILocation(line: 964, column: 22, scope: !1965)
!1973 = !DILocation(line: 964, column: 5, scope: !1965)
!1974 = !DILocation(line: 965, column: 4, scope: !1965)
!1975 = !DILocation(line: 966, column: 17, scope: !1953)
!1976 = !DILocation(line: 966, column: 10, scope: !1953)
!1977 = !DILocation(line: 967, column: 4, scope: !1953)
!1978 = !DILocation(line: 968, column: 16, scope: !1953)
!1979 = !DILocation(line: 968, column: 28, scope: !1953)
!1980 = !DILocation(line: 968, column: 4, scope: !1953)
!1981 = !DILocation(line: 969, column: 19, scope: !1953)
!1982 = !DILocation(line: 969, column: 8, scope: !1953)
!1983 = !DILocation(line: 969, column: 17, scope: !1953)
!1984 = !DILocation(line: 970, column: 19, scope: !1953)
!1985 = !DILocation(line: 970, column: 8, scope: !1953)
!1986 = !DILocation(line: 970, column: 17, scope: !1953)
!1987 = !DILocation(line: 971, column: 11, scope: !1953)
!1988 = !DILocation(line: 972, column: 3, scope: !1953)
!1989 = !DILocation(line: 974, column: 6, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 974, column: 6)
!1991 = !DILocation(line: 974, column: 14, scope: !1990)
!1992 = !DILocation(line: 974, column: 6, scope: !1910)
!1993 = !DILocation(line: 975, column: 3, scope: !1990)
!1994 = !DILocation(line: 976, column: 1, scope: !1910)
!1995 = distinct !DISubprogram(name: "chi2reslib", scope: !3, file: !3, line: 848, type: !1731, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!1996 = !{!1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!1997 = !DILocalVariable(name: "cfp", arg: 1, scope: !1995, file: !3, line: 848, type: !434)
!1998 = !DILocalVariable(name: "rlp", arg: 2, scope: !1995, file: !3, line: 848, type: !298)
!1999 = !DILocalVariable(name: "line", scope: !1995, file: !3, line: 850, type: !352)
!2000 = !DILocalVariable(name: "r_name", scope: !1995, file: !3, line: 851, type: !295)
!2001 = !DILocalVariable(name: "llen", scope: !1995, file: !3, line: 852, type: !11)
!2002 = !DILocalVariable(name: "res", scope: !1995, file: !3, line: 853, type: !169)
!2003 = !DILocalVariable(name: "res1", scope: !1995, file: !3, line: 853, type: !169)
!2004 = !DILocalVariable(name: "anm1", scope: !1995, file: !3, line: 854, type: !339)
!2005 = !DILocalVariable(name: "anm2", scope: !1995, file: !3, line: 854, type: !339)
!2006 = !DILocalVariable(name: "anm3", scope: !1995, file: !3, line: 854, type: !339)
!2007 = !DILocalVariable(name: "anm4", scope: !1995, file: !3, line: 854, type: !339)
!2008 = !DILocalVariable(name: "a1", scope: !1995, file: !3, line: 855, type: !11)
!2009 = !DILocalVariable(name: "a2", scope: !1995, file: !3, line: 855, type: !11)
!2010 = !DILocalVariable(name: "a3", scope: !1995, file: !3, line: 855, type: !11)
!2011 = !DILocalVariable(name: "a4", scope: !1995, file: !3, line: 855, type: !11)
!2012 = !DILocalVariable(name: "ap", scope: !1995, file: !3, line: 856, type: !201)
!2013 = !DILocalVariable(name: "cp", scope: !1995, file: !3, line: 857, type: !190)
!2014 = !DILocation(line: 0, scope: !1995)
!2015 = !DILocation(line: 850, column: 2, scope: !1995)
!2016 = !DILocation(line: 850, column: 7, scope: !1995)
!2017 = !DILocation(line: 851, column: 2, scope: !1995)
!2018 = !DILocation(line: 851, column: 7, scope: !1995)
!2019 = !DILocation(line: 854, column: 2, scope: !1995)
!2020 = !DILocation(line: 854, column: 7, scope: !1995)
!2021 = !DILocation(line: 854, column: 18, scope: !1995)
!2022 = !DILocation(line: 854, column: 29, scope: !1995)
!2023 = !DILocation(line: 854, column: 40, scope: !1995)
!2024 = !DILocation(line: 859, column: 8, scope: !1995)
!2025 = !DILocation(line: 860, column: 2, scope: !1995)
!2026 = !DILocation(line: 860, column: 10, scope: !1995)
!2027 = !DILocation(line: 861, column: 16, scope: !1995)
!2028 = !DILocation(line: 861, column: 9, scope: !1995)
!2029 = !DILocation(line: 861, column: 2, scope: !1995)
!2030 = !DILocation(line: 862, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 862, column: 7)
!2032 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 861, column: 45)
!2033 = !DILocation(line: 862, column: 13, scope: !2031)
!2034 = !DILocation(line: 862, column: 7, scope: !2032)
!2035 = !DILocation(line: 863, column: 16, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 863, column: 8)
!2037 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 862, column: 21)
!2038 = !DILocation(line: 863, column: 30, scope: !2036)
!2039 = !DILocation(line: 863, column: 8, scope: !2036)
!2040 = !DILocation(line: 863, column: 39, scope: !2036)
!2041 = !DILocation(line: 863, column: 8, scope: !2037)
!2042 = !DILocation(line: 864, column: 20, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 863, column: 45)
!2044 = !DILocation(line: 864, column: 12, scope: !2043)
!2045 = !DILocation(line: 865, column: 12, scope: !2043)
!2046 = !DILocation(line: 866, column: 43, scope: !2043)
!2047 = !DILocation(line: 866, column: 5, scope: !2043)
!2048 = !DILocation(line: 867, column: 14, scope: !2043)
!2049 = !DILocation(line: 867, column: 5, scope: !2043)
!2050 = !DILocation(line: 870, column: 5, scope: !2043)
!2051 = !DILocation(line: 872, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 872, column: 9)
!2053 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 871, column: 9)
!2054 = !DILocation(line: 872, column: 15, scope: !2052)
!2055 = !DILocation(line: 872, column: 9, scope: !2053)
!2056 = !DILocation(line: 873, column: 6, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 872, column: 20)
!2058 = !DILocation(line: 874, column: 12, scope: !2057)
!2059 = !DILocation(line: 875, column: 5, scope: !2057)
!2060 = !DILocation(line: 877, column: 21, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 877, column: 5)
!2062 = !DILocation(line: 877, column: 5, scope: !2061)
!2063 = !DILocation(line: 879, column: 24, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 879, column: 10)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 878, column: 25)
!2066 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 877, column: 5)
!2067 = !DILocation(line: 879, column: 35, scope: !2064)
!2068 = !DILocation(line: 879, column: 11, scope: !2064)
!2069 = !DILocation(line: 879, column: 10, scope: !2065)
!2070 = !DILocation(line: 878, column: 17, scope: !2066)
!2071 = distinct !{!2071, !2062, !2072}
!2072 = !DILocation(line: 883, column: 5, scope: !2061)
!2073 = !DILocation(line: 0, scope: !2053)
!2074 = !DILocation(line: 884, column: 10, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 884, column: 9)
!2076 = !DILocation(line: 884, column: 9, scope: !2053)
!2077 = !DILocation(line: 885, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 884, column: 16)
!2079 = !DILocation(line: 887, column: 7, scope: !2078)
!2080 = !DILocation(line: 887, column: 20, scope: !2078)
!2081 = !DILocation(line: 885, column: 6, scope: !2078)
!2082 = !DILocation(line: 888, column: 6, scope: !2078)
!2083 = !DILocation(line: 890, column: 22, scope: !2053)
!2084 = !DILocation(line: 890, column: 5, scope: !2053)
!2085 = !DILocation(line: 892, column: 3, scope: !2037)
!2086 = !DILocation(line: 893, column: 12, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 892, column: 8)
!2088 = !DILocation(line: 893, column: 33, scope: !2087)
!2089 = !DILocation(line: 893, column: 39, scope: !2087)
!2090 = !DILocation(line: 893, column: 45, scope: !2087)
!2091 = !DILocation(line: 893, column: 51, scope: !2087)
!2092 = !DILocation(line: 893, column: 4, scope: !2087)
!2093 = !DILocation(line: 894, column: 31, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 894, column: 8)
!2095 = !DILocation(line: 894, column: 16, scope: !2094)
!2096 = !DILocation(line: 894, column: 14, scope: !2094)
!2097 = !DILocation(line: 894, column: 8, scope: !2087)
!2098 = !DILocation(line: 895, column: 14, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 894, column: 41)
!2100 = !DILocation(line: 897, column: 6, scope: !2099)
!2101 = !DILocation(line: 897, column: 17, scope: !2099)
!2102 = !DILocation(line: 895, column: 5, scope: !2099)
!2103 = !DILocation(line: 898, column: 5, scope: !2099)
!2104 = !DILocation(line: 900, column: 20, scope: !2094)
!2105 = !DILocation(line: 900, column: 13, scope: !2094)
!2106 = !DILocation(line: 900, column: 10, scope: !2094)
!2107 = !DILocation(line: 901, column: 31, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 901, column: 8)
!2109 = !DILocation(line: 901, column: 16, scope: !2108)
!2110 = !DILocation(line: 901, column: 14, scope: !2108)
!2111 = !DILocation(line: 901, column: 8, scope: !2087)
!2112 = !DILocation(line: 902, column: 14, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 901, column: 41)
!2114 = !DILocation(line: 904, column: 6, scope: !2113)
!2115 = !DILocation(line: 904, column: 17, scope: !2113)
!2116 = !DILocation(line: 902, column: 5, scope: !2113)
!2117 = !DILocation(line: 905, column: 5, scope: !2113)
!2118 = !DILocation(line: 907, column: 20, scope: !2108)
!2119 = !DILocation(line: 907, column: 13, scope: !2108)
!2120 = !DILocation(line: 907, column: 10, scope: !2108)
!2121 = !DILocation(line: 908, column: 31, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 908, column: 8)
!2123 = !DILocation(line: 908, column: 16, scope: !2122)
!2124 = !DILocation(line: 908, column: 14, scope: !2122)
!2125 = !DILocation(line: 908, column: 8, scope: !2087)
!2126 = !DILocation(line: 909, column: 14, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 908, column: 41)
!2128 = !DILocation(line: 911, column: 6, scope: !2127)
!2129 = !DILocation(line: 911, column: 17, scope: !2127)
!2130 = !DILocation(line: 909, column: 5, scope: !2127)
!2131 = !DILocation(line: 912, column: 5, scope: !2127)
!2132 = !DILocation(line: 914, column: 20, scope: !2122)
!2133 = !DILocation(line: 915, column: 31, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 915, column: 8)
!2135 = !DILocation(line: 915, column: 16, scope: !2134)
!2136 = !DILocation(line: 915, column: 14, scope: !2134)
!2137 = !DILocation(line: 915, column: 8, scope: !2087)
!2138 = !DILocation(line: 916, column: 14, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 915, column: 41)
!2140 = !DILocation(line: 918, column: 6, scope: !2139)
!2141 = !DILocation(line: 918, column: 17, scope: !2139)
!2142 = !DILocation(line: 916, column: 5, scope: !2139)
!2143 = !DILocation(line: 919, column: 5, scope: !2139)
!2144 = !DILocation(line: 914, column: 13, scope: !2122)
!2145 = !DILocation(line: 914, column: 10, scope: !2122)
!2146 = !DILocation(line: 921, column: 20, scope: !2134)
!2147 = !DILocation(line: 921, column: 13, scope: !2134)
!2148 = !DILocation(line: 921, column: 10, scope: !2134)
!2149 = !DILocation(line: 922, column: 15, scope: !2087)
!2150 = !DILocation(line: 922, column: 10, scope: !2087)
!2151 = !DILocation(line: 923, column: 9, scope: !2087)
!2152 = !DILocation(line: 924, column: 4, scope: !2087)
!2153 = !DILocation(line: 924, column: 20, scope: !2087)
!2154 = !DILocation(line: 925, column: 4, scope: !2087)
!2155 = !DILocation(line: 925, column: 20, scope: !2087)
!2156 = !DILocation(line: 926, column: 4, scope: !2087)
!2157 = !DILocation(line: 926, column: 20, scope: !2087)
!2158 = !DILocation(line: 927, column: 4, scope: !2087)
!2159 = !DILocation(line: 927, column: 20, scope: !2087)
!2160 = !DILocation(line: 928, column: 8, scope: !2087)
!2161 = !DILocation(line: 928, column: 15, scope: !2087)
!2162 = distinct !{!2162, !2029, !2163}
!2163 = !DILocation(line: 930, column: 2, scope: !1995)
!2164 = !DILocation(line: 931, column: 6, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 931, column: 6)
!2166 = !DILocation(line: 931, column: 12, scope: !2165)
!2167 = !DILocation(line: 931, column: 6, scope: !1995)
!2168 = !DILocation(line: 932, column: 3, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 931, column: 17)
!2170 = !DILocation(line: 933, column: 9, scope: !2169)
!2171 = !DILocation(line: 934, column: 2, scope: !2169)
!2172 = !DILocation(line: 935, column: 1, scope: !1995)
!2173 = distinct !DISubprogram(name: "mk_fname", scope: !3, file: !3, line: 637, type: !2174, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !12, !12}
!2176 = !{!2177, !2178}
!2177 = !DILocalVariable(name: "sname", arg: 1, scope: !2173, file: !3, line: 637, type: !12)
!2178 = !DILocalVariable(name: "fname", arg: 2, scope: !2173, file: !3, line: 637, type: !12)
!2179 = !DILocation(line: 0, scope: !2173)
!2180 = !DILocation(line: 640, column: 6, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 640, column: 6)
!2182 = !DILocation(line: 640, column: 13, scope: !2181)
!2183 = !DILocation(line: 640, column: 20, scope: !2181)
!2184 = !DILocation(line: 641, column: 4, scope: !2181)
!2185 = !DILocation(line: 640, column: 6, scope: !2173)
!2186 = !DILocation(line: 642, column: 3, scope: !2181)
!2187 = !DILocation(line: 644, column: 3, scope: !2181)
!2188 = !DILocation(line: 645, column: 1, scope: !2173)
!2189 = distinct !DISubprogram(name: "addres2reslib", scope: !3, file: !3, line: 996, type: !2190, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !298}
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199}
!2193 = !DILocalVariable(name: "rlp", arg: 1, scope: !2189, file: !3, line: 996, type: !298)
!2194 = !DILocalVariable(name: "res", scope: !2189, file: !3, line: 998, type: !169)
!2195 = !DILocalVariable(name: "ap", scope: !2189, file: !3, line: 999, type: !201)
!2196 = !DILocalVariable(name: "anp", scope: !2189, file: !3, line: 1000, type: !12)
!2197 = !DILocalVariable(name: "rnp", scope: !2189, file: !3, line: 1000, type: !12)
!2198 = !DILocalVariable(name: "a", scope: !2189, file: !3, line: 1001, type: !11)
!2199 = !DILocalVariable(name: "i", scope: !2189, file: !3, line: 1001, type: !11)
!2200 = !DILocation(line: 0, scope: !2189)
!2201 = !DILocation(line: 1003, column: 29, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1003, column: 6)
!2203 = !DILocation(line: 1003, column: 14, scope: !2202)
!2204 = !DILocation(line: 1003, column: 61, scope: !2202)
!2205 = !DILocation(line: 1003, column: 6, scope: !2189)
!2206 = !DILocation(line: 1005, column: 18, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 1003, column: 70)
!2208 = !DILocation(line: 1004, column: 3, scope: !2207)
!2209 = !DILocation(line: 1006, column: 3, scope: !2207)
!2210 = !DILocation(line: 1007, column: 3, scope: !2207)
!2211 = !DILocation(line: 1009, column: 33, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1009, column: 6)
!2213 = !DILocation(line: 1009, column: 41, scope: !2212)
!2214 = !DILocation(line: 1009, column: 25, scope: !2212)
!2215 = !DILocation(line: 1009, column: 64, scope: !2212)
!2216 = !DILocation(line: 1009, column: 6, scope: !2189)
!2217 = !DILocation(line: 1011, column: 18, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 1009, column: 73)
!2219 = !DILocation(line: 1010, column: 3, scope: !2218)
!2220 = !DILocation(line: 1012, column: 3, scope: !2218)
!2221 = !DILocation(line: 1013, column: 3, scope: !2218)
!2222 = !DILocation(line: 1015, column: 21, scope: !2189)
!2223 = !DILocation(line: 1015, column: 7, scope: !2189)
!2224 = !DILocation(line: 1015, column: 14, scope: !2189)
!2225 = !DILocation(line: 1016, column: 7, scope: !2189)
!2226 = !DILocation(line: 1016, column: 16, scope: !2189)
!2227 = !DILocation(line: 1018, column: 26, scope: !2189)
!2228 = !DILocation(line: 1018, column: 44, scope: !2189)
!2229 = !DILocation(line: 1018, column: 18, scope: !2189)
!2230 = !DILocation(line: 1019, column: 10, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1019, column: 6)
!2232 = !DILocation(line: 1019, column: 6, scope: !2189)
!2233 = !DILocation(line: 1020, column: 12, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 1019, column: 19)
!2235 = !DILocation(line: 1020, column: 3, scope: !2234)
!2236 = !DILocation(line: 1022, column: 3, scope: !2234)
!2237 = !DILocation(line: 1024, column: 2, scope: !2189)
!2238 = !DILocation(line: 1025, column: 7, scope: !2189)
!2239 = !DILocation(line: 1025, column: 17, scope: !2189)
!2240 = !DILocation(line: 1027, column: 18, scope: !2189)
!2241 = !DILocation(line: 1028, column: 10, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1028, column: 6)
!2243 = !DILocation(line: 1028, column: 6, scope: !2189)
!2244 = !DILocation(line: 1029, column: 12, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 1028, column: 19)
!2246 = !DILocation(line: 1029, column: 3, scope: !2245)
!2247 = !DILocation(line: 1031, column: 3, scope: !2245)
!2248 = !DILocation(line: 1033, column: 2, scope: !2189)
!2249 = !DILocation(line: 1034, column: 7, scope: !2189)
!2250 = !DILocation(line: 1034, column: 15, scope: !2189)
!2251 = !DILocation(line: 1036, column: 7, scope: !2189)
!2252 = !DILocation(line: 1036, column: 13, scope: !2189)
!2253 = !DILocation(line: 1037, column: 7, scope: !2189)
!2254 = !DILocation(line: 1037, column: 17, scope: !2189)
!2255 = !DILocation(line: 1038, column: 7, scope: !2189)
!2256 = !DILocation(line: 1038, column: 16, scope: !2189)
!2257 = !DILocation(line: 1039, column: 7, scope: !2189)
!2258 = !DILocation(line: 1039, column: 14, scope: !2189)
!2259 = !DILocation(line: 1040, column: 21, scope: !2189)
!2260 = !DILocation(line: 1040, column: 7, scope: !2189)
!2261 = !DILocation(line: 1040, column: 14, scope: !2189)
!2262 = !DILocation(line: 1041, column: 25, scope: !2189)
!2263 = !DILocation(line: 1041, column: 7, scope: !2189)
!2264 = !DILocation(line: 1041, column: 18, scope: !2189)
!2265 = !DILocation(line: 1042, column: 7, scope: !2189)
!2266 = !DILocation(line: 1042, column: 16, scope: !2189)
!2267 = !DILocation(line: 1043, column: 7, scope: !2189)
!2268 = !DILocation(line: 1043, column: 18, scope: !2189)
!2269 = !DILocation(line: 1044, column: 7, scope: !2189)
!2270 = !DILocation(line: 1044, column: 19, scope: !2189)
!2271 = !DILocation(line: 1045, column: 7, scope: !2189)
!2272 = !DILocation(line: 1045, column: 18, scope: !2189)
!2273 = !DILocation(line: 1046, column: 7, scope: !2189)
!2274 = !DILocation(line: 1046, column: 17, scope: !2189)
!2275 = !DILocation(line: 1047, column: 7, scope: !2189)
!2276 = !DILocation(line: 1047, column: 16, scope: !2189)
!2277 = !DILocation(line: 1048, column: 18, scope: !2189)
!2278 = !DILocation(line: 1048, column: 7, scope: !2189)
!2279 = !DILocation(line: 1048, column: 16, scope: !2189)
!2280 = !DILocation(line: 1049, column: 7, scope: !2189)
!2281 = !DILocation(line: 1049, column: 16, scope: !2189)
!2282 = !DILocation(line: 1050, column: 7, scope: !2189)
!2283 = !DILocation(line: 1050, column: 15, scope: !2189)
!2284 = !DILocation(line: 1051, column: 18, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 1051, column: 2)
!2286 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 1051, column: 2)
!2287 = !DILocation(line: 1051, column: 16, scope: !2285)
!2288 = !DILocation(line: 1051, column: 2, scope: !2286)
!2289 = !DILocation(line: 1052, column: 46, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 1051, column: 32)
!2291 = !DILocation(line: 1052, column: 27, scope: !2290)
!2292 = !DILocation(line: 1052, column: 59, scope: !2290)
!2293 = !DILocation(line: 1052, column: 19, scope: !2290)
!2294 = !DILocation(line: 1053, column: 11, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 1053, column: 7)
!2296 = !DILocation(line: 1053, column: 7, scope: !2290)
!2297 = !DILocation(line: 1054, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1053, column: 20)
!2299 = !DILocation(line: 1054, column: 4, scope: !2298)
!2300 = !DILocation(line: 1056, column: 4, scope: !2298)
!2301 = !DILocation(line: 1059, column: 27, scope: !2290)
!2302 = !DILocation(line: 1059, column: 3, scope: !2290)
!2303 = !DILocation(line: 1060, column: 8, scope: !2290)
!2304 = !DILocation(line: 1060, column: 21, scope: !2290)
!2305 = !DILocation(line: 1060, column: 32, scope: !2290)
!2306 = !DILocation(line: 1061, column: 21, scope: !2290)
!2307 = !DILocation(line: 1061, column: 32, scope: !2290)
!2308 = !DILocation(line: 1062, column: 21, scope: !2290)
!2309 = !DILocation(line: 1062, column: 32, scope: !2290)
!2310 = !DILocation(line: 1063, column: 3, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 1063, column: 3)
!2312 = !DILocation(line: 1064, column: 9, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1063, column: 3)
!2314 = !DILocation(line: 1064, column: 4, scope: !2313)
!2315 = !DILocation(line: 1064, column: 37, scope: !2313)
!2316 = !DILocation(line: 1063, column: 37, scope: !2313)
!2317 = !DILocation(line: 1063, column: 17, scope: !2313)
!2318 = distinct !{!2318, !2310, !2319}
!2319 = !DILocation(line: 1064, column: 39, scope: !2311)
!2320 = !DILocation(line: 1065, column: 8, scope: !2290)
!2321 = !DILocation(line: 1065, column: 21, scope: !2290)
!2322 = !DILocation(line: 1065, column: 32, scope: !2290)
!2323 = !DILocation(line: 1066, column: 45, scope: !2290)
!2324 = !DILocation(line: 1066, column: 8, scope: !2290)
!2325 = !DILocation(line: 1066, column: 21, scope: !2290)
!2326 = !DILocation(line: 1066, column: 32, scope: !2290)
!2327 = !DILocation(line: 1067, column: 45, scope: !2290)
!2328 = !DILocation(line: 1067, column: 21, scope: !2290)
!2329 = !DILocation(line: 1067, column: 32, scope: !2290)
!2330 = !DILocation(line: 1068, column: 45, scope: !2290)
!2331 = !DILocation(line: 1068, column: 8, scope: !2290)
!2332 = !DILocation(line: 1068, column: 21, scope: !2290)
!2333 = !DILocation(line: 1068, column: 32, scope: !2290)
!2334 = !DILocation(line: 1069, column: 45, scope: !2290)
!2335 = !DILocation(line: 1069, column: 21, scope: !2290)
!2336 = !DILocation(line: 1069, column: 32, scope: !2290)
!2337 = !DILocation(line: 1070, column: 45, scope: !2290)
!2338 = !DILocation(line: 1070, column: 8, scope: !2290)
!2339 = !DILocation(line: 1070, column: 21, scope: !2290)
!2340 = !DILocation(line: 1070, column: 32, scope: !2290)
!2341 = !DILocation(line: 1071, column: 45, scope: !2290)
!2342 = !DILocation(line: 1071, column: 21, scope: !2290)
!2343 = !DILocation(line: 1071, column: 32, scope: !2290)
!2344 = !DILocation(line: 1072, column: 45, scope: !2290)
!2345 = !DILocation(line: 1072, column: 8, scope: !2290)
!2346 = !DILocation(line: 1072, column: 21, scope: !2290)
!2347 = !DILocation(line: 1072, column: 32, scope: !2290)
!2348 = !DILocation(line: 1073, column: 21, scope: !2290)
!2349 = !DILocation(line: 1073, column: 32, scope: !2290)
!2350 = !DILocation(line: 1074, column: 21, scope: !2290)
!2351 = !DILocation(line: 1074, column: 32, scope: !2290)
!2352 = !DILocation(line: 1075, column: 3, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 1075, column: 3)
!2354 = !DILocation(line: 1076, column: 35, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1075, column: 3)
!2356 = !DILocation(line: 1076, column: 9, scope: !2355)
!2357 = !DILocation(line: 1076, column: 4, scope: !2355)
!2358 = !DILocation(line: 1076, column: 33, scope: !2355)
!2359 = !DILocation(line: 1075, column: 24, scope: !2355)
!2360 = !DILocation(line: 1075, column: 17, scope: !2355)
!2361 = distinct !{!2361, !2352, !2362}
!2362 = !DILocation(line: 1076, column: 55, scope: !2353)
!2363 = !DILocation(line: 1077, column: 45, scope: !2290)
!2364 = !DILocation(line: 1077, column: 8, scope: !2290)
!2365 = !DILocation(line: 1077, column: 21, scope: !2290)
!2366 = !DILocation(line: 1077, column: 32, scope: !2290)
!2367 = !DILocation(line: 1051, column: 28, scope: !2285)
!2368 = distinct !{!2368, !2288, !2369}
!2369 = !DILocation(line: 1078, column: 2, scope: !2286)
!2370 = !DILocation(line: 1079, column: 1, scope: !2189)
!2371 = distinct !DISubprogram(name: "addbonds2reslib", scope: !3, file: !3, line: 1081, type: !2190, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2372 = !{!2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2373 = !DILocalVariable(name: "rlp", arg: 1, scope: !2371, file: !3, line: 1081, type: !298)
!2374 = !DILocalVariable(name: "res", scope: !2371, file: !3, line: 1083, type: !169)
!2375 = !DILocalVariable(name: "bp", scope: !2371, file: !3, line: 1084, type: !183)
!2376 = !DILocalVariable(name: "b", scope: !2371, file: !3, line: 1085, type: !11)
!2377 = !DILocalVariable(name: "a", scope: !2371, file: !3, line: 1086, type: !11)
!2378 = !DILocalVariable(name: "ai", scope: !2371, file: !3, line: 1086, type: !11)
!2379 = !DILocalVariable(name: "aj", scope: !2371, file: !3, line: 1086, type: !11)
!2380 = !DILocalVariable(name: "api", scope: !2371, file: !3, line: 1087, type: !201)
!2381 = !DILocalVariable(name: "apj", scope: !2371, file: !3, line: 1087, type: !201)
!2382 = !DILocation(line: 0, scope: !2371)
!2383 = !DILocation(line: 1089, column: 18, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 1089, column: 2)
!2385 = !DILocation(line: 1089, column: 2, scope: !2384)
!2386 = !DILocation(line: 1090, column: 20, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1090, column: 7)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 1089, column: 52)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1089, column: 2)
!2390 = !DILocation(line: 1090, column: 7, scope: !2387)
!2391 = !DILocation(line: 1090, column: 41, scope: !2387)
!2392 = !DILocation(line: 1090, column: 7, scope: !2388)
!2393 = !DILocation(line: 1092, column: 13, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1091, column: 8)
!2395 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1090, column: 47)
!2396 = !DILocation(line: 1092, column: 21, scope: !2394)
!2397 = !DILocation(line: 1092, column: 5, scope: !2394)
!2398 = !DILocation(line: 1091, column: 15, scope: !2394)
!2399 = !DILocation(line: 1093, column: 5, scope: !2394)
!2400 = !DILocation(line: 1091, column: 8, scope: !2395)
!2401 = !DILocation(line: 1094, column: 5, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1093, column: 14)
!2403 = !DILocation(line: 1096, column: 5, scope: !2402)
!2404 = !DILocation(line: 1097, column: 5, scope: !2402)
!2405 = !DILocation(line: 1099, column: 20, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 1099, column: 4)
!2407 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1099, column: 4)
!2408 = !DILocation(line: 1099, column: 18, scope: !2406)
!2409 = !DILocation(line: 1099, column: 4, scope: !2407)
!2410 = !DILocation(line: 1100, column: 25, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 1099, column: 34)
!2412 = !DILocation(line: 1100, column: 10, scope: !2411)
!2413 = !DILocation(line: 1100, column: 23, scope: !2411)
!2414 = !DILocation(line: 1101, column: 25, scope: !2411)
!2415 = !DILocation(line: 1101, column: 10, scope: !2411)
!2416 = !DILocation(line: 1101, column: 23, scope: !2411)
!2417 = !DILocation(line: 1102, column: 7, scope: !2411)
!2418 = !DILocation(line: 1103, column: 7, scope: !2411)
!2419 = !DILocation(line: 1104, column: 17, scope: !2411)
!2420 = !DILocation(line: 1104, column: 12, scope: !2411)
!2421 = !DILocation(line: 1105, column: 5, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 1105, column: 5)
!2423 = !DILocation(line: 1106, column: 10, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1106, column: 10)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1105, column: 42)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1105, column: 5)
!2427 = !DILocation(line: 1106, column: 30, scope: !2424)
!2428 = !DILocation(line: 1106, column: 10, scope: !2425)
!2429 = !DILocation(line: 1108, column: 15, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1108, column: 15)
!2431 = !DILocation(line: 1108, column: 35, scope: !2430)
!2432 = !DILocation(line: 1108, column: 15, scope: !2424)
!2433 = !DILocation(line: 1109, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 1108, column: 45)
!2435 = !DILocation(line: 1109, column: 27, scope: !2434)
!2436 = !DILocation(line: 1110, column: 12, scope: !2434)
!2437 = !DILocation(line: 1110, column: 22, scope: !2434)
!2438 = !DILocation(line: 1111, column: 7, scope: !2434)
!2439 = !DILocation(line: 1105, column: 38, scope: !2426)
!2440 = !DILocation(line: 1105, column: 19, scope: !2426)
!2441 = distinct !{!2441, !2421, !2442}
!2442 = !DILocation(line: 1113, column: 5, scope: !2422)
!2443 = !DILocation(line: 1114, column: 17, scope: !2411)
!2444 = !DILocation(line: 1114, column: 12, scope: !2411)
!2445 = !DILocation(line: 1115, column: 5, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 1115, column: 5)
!2447 = !DILocation(line: 1116, column: 10, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1116, column: 10)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1115, column: 42)
!2450 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1115, column: 5)
!2451 = !DILocation(line: 1116, column: 30, scope: !2448)
!2452 = !DILocation(line: 1116, column: 10, scope: !2449)
!2453 = !DILocation(line: 1118, column: 15, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1118, column: 15)
!2455 = !DILocation(line: 1118, column: 35, scope: !2454)
!2456 = !DILocation(line: 1118, column: 15, scope: !2448)
!2457 = !DILocation(line: 1119, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 1118, column: 45)
!2459 = !DILocation(line: 1119, column: 27, scope: !2458)
!2460 = !DILocation(line: 1120, column: 12, scope: !2458)
!2461 = !DILocation(line: 1120, column: 22, scope: !2458)
!2462 = !DILocation(line: 1121, column: 7, scope: !2458)
!2463 = !DILocation(line: 1115, column: 38, scope: !2450)
!2464 = !DILocation(line: 1115, column: 19, scope: !2450)
!2465 = distinct !{!2465, !2445, !2466}
!2466 = !DILocation(line: 1123, column: 5, scope: !2446)
!2467 = !DILocation(line: 1099, column: 30, scope: !2406)
!2468 = distinct !{!2468, !2409, !2469}
!2469 = !DILocation(line: 1124, column: 4, scope: !2407)
!2470 = !DILocation(line: 1125, column: 23, scope: !2395)
!2471 = !DILocation(line: 1125, column: 9, scope: !2395)
!2472 = !DILocation(line: 1125, column: 21, scope: !2395)
!2473 = !DILocation(line: 1126, column: 9, scope: !2395)
!2474 = !DILocation(line: 1126, column: 20, scope: !2395)
!2475 = !DILocation(line: 1127, column: 4, scope: !2395)
!2476 = !DILocation(line: 1089, column: 44, scope: !2389)
!2477 = distinct !{!2477, !2385, !2478}
!2478 = !DILocation(line: 1129, column: 2, scope: !2384)
!2479 = !DILocation(line: 1130, column: 57, scope: !2371)
!2480 = !DILocation(line: 1130, column: 2, scope: !2371)
!2481 = !DILocation(line: 1131, column: 2, scope: !2371)
!2482 = !DILocation(line: 1132, column: 2, scope: !2371)
!2483 = !DILocation(line: 1133, column: 1, scope: !2371)
!2484 = distinct !DISubprogram(name: "setrlibattrs", scope: !3, file: !3, line: 978, type: !2485, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{null, !298, !12}
!2487 = !{!2488, !2489, !2490, !2491}
!2488 = !DILocalVariable(name: "rlp", arg: 1, scope: !2484, file: !3, line: 978, type: !298)
!2489 = !DILocalVariable(name: "line", arg: 2, scope: !2484, file: !3, line: 978, type: !12)
!2490 = !DILocalVariable(name: "rkind", scope: !2484, file: !3, line: 980, type: !1265)
!2491 = !DILocalVariable(name: "rakind", scope: !2484, file: !3, line: 980, type: !1265)
!2492 = !DILocation(line: 0, scope: !2484)
!2493 = !DILocation(line: 980, column: 2, scope: !2484)
!2494 = !DILocation(line: 980, column: 7, scope: !2484)
!2495 = !DILocation(line: 980, column: 21, scope: !2484)
!2496 = !DILocation(line: 982, column: 43, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 982, column: 6)
!2498 = !DILocation(line: 982, column: 50, scope: !2497)
!2499 = !DILocation(line: 982, column: 6, scope: !2497)
!2500 = !DILocation(line: 982, column: 59, scope: !2497)
!2501 = !DILocation(line: 982, column: 6, scope: !2484)
!2502 = !DILocation(line: 984, column: 6, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 984, column: 6)
!2504 = !DILocation(line: 984, column: 6, scope: !2484)
!2505 = !DILocation(line: 985, column: 8, scope: !2503)
!2506 = !DILocation(line: 985, column: 18, scope: !2503)
!2507 = !DILocation(line: 985, column: 3, scope: !2503)
!2508 = !DILocation(line: 986, column: 11, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 986, column: 11)
!2510 = !DILocation(line: 986, column: 11, scope: !2503)
!2511 = !DILocation(line: 987, column: 8, scope: !2509)
!2512 = !DILocation(line: 987, column: 18, scope: !2509)
!2513 = !DILocation(line: 987, column: 3, scope: !2509)
!2514 = !DILocation(line: 988, column: 19, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 988, column: 11)
!2516 = !DILocation(line: 988, column: 11, scope: !2515)
!2517 = !DILocation(line: 988, column: 33, scope: !2515)
!2518 = !DILocation(line: 988, column: 11, scope: !2509)
!2519 = !DILocation(line: 989, column: 8, scope: !2515)
!2520 = !DILocation(line: 989, column: 18, scope: !2515)
!2521 = !DILocation(line: 989, column: 3, scope: !2515)
!2522 = !DILocation(line: 990, column: 14, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 990, column: 6)
!2524 = !DILocation(line: 990, column: 6, scope: !2523)
!2525 = !DILocation(line: 990, column: 33, scope: !2523)
!2526 = !DILocation(line: 990, column: 6, scope: !2484)
!2527 = !DILocation(line: 991, column: 8, scope: !2523)
!2528 = !DILocation(line: 991, column: 22, scope: !2523)
!2529 = !DILocation(line: 991, column: 3, scope: !2523)
!2530 = !DILocation(line: 992, column: 11, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 992, column: 11)
!2532 = !DILocation(line: 992, column: 11, scope: !2523)
!2533 = !DILocation(line: 993, column: 8, scope: !2531)
!2534 = !DILocation(line: 993, column: 22, scope: !2531)
!2535 = !DILocation(line: 993, column: 3, scope: !2531)
!2536 = !DILocation(line: 994, column: 1, scope: !2484)
!2537 = distinct !DISubprogram(name: "addqr2reslib", scope: !3, file: !3, line: 1135, type: !2190, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2538)
!2538 = !{!2539, !2540, !2541, !2542, !2543}
!2539 = !DILocalVariable(name: "rlp", arg: 1, scope: !2537, file: !3, line: 1135, type: !298)
!2540 = !DILocalVariable(name: "res", scope: !2537, file: !3, line: 1137, type: !169)
!2541 = !DILocalVariable(name: "a", scope: !2537, file: !3, line: 1138, type: !11)
!2542 = !DILocalVariable(name: "ap", scope: !2537, file: !3, line: 1139, type: !201)
!2543 = !DILocalVariable(name: "apr", scope: !2537, file: !3, line: 1139, type: !201)
!2544 = !DILocation(line: 0, scope: !2537)
!2545 = !DILocation(line: 1141, column: 18, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 1141, column: 2)
!2547 = !DILocation(line: 1141, column: 2, scope: !2546)
!2548 = !DILocation(line: 1142, column: 20, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 1142, column: 7)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1141, column: 52)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 1141, column: 2)
!2552 = !DILocation(line: 1142, column: 7, scope: !2549)
!2553 = !DILocation(line: 1142, column: 41, scope: !2549)
!2554 = !DILocation(line: 1142, column: 7, scope: !2550)
!2555 = !DILocation(line: 1143, column: 32, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1143, column: 4)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 1143, column: 4)
!2558 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1142, column: 47)
!2559 = !DILocation(line: 1143, column: 30, scope: !2556)
!2560 = !DILocation(line: 1143, column: 4, scope: !2557)
!2561 = !DILocation(line: 1144, column: 35, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1144, column: 9)
!2563 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 1143, column: 52)
!2564 = !DILocation(line: 1144, column: 16, scope: !2562)
!2565 = !DILocation(line: 1144, column: 14, scope: !2562)
!2566 = !DILocation(line: 1144, column: 9, scope: !2563)
!2567 = !DILocation(line: 1146, column: 26, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1144, column: 50)
!2569 = !DILocation(line: 1146, column: 11, scope: !2568)
!2570 = !DILocation(line: 1146, column: 20, scope: !2568)
!2571 = !DILocation(line: 1147, column: 26, scope: !2568)
!2572 = !DILocation(line: 1147, column: 11, scope: !2568)
!2573 = !DILocation(line: 1147, column: 20, scope: !2568)
!2574 = !DILocation(line: 1148, column: 26, scope: !2568)
!2575 = !DILocation(line: 1148, column: 11, scope: !2568)
!2576 = !DILocation(line: 1148, column: 20, scope: !2568)
!2577 = !DILocation(line: 1149, column: 26, scope: !2568)
!2578 = !DILocation(line: 1149, column: 11, scope: !2568)
!2579 = !DILocation(line: 1149, column: 20, scope: !2568)
!2580 = !DILocation(line: 1150, column: 26, scope: !2568)
!2581 = !DILocation(line: 1150, column: 11, scope: !2568)
!2582 = !DILocation(line: 1150, column: 20, scope: !2568)
!2583 = !DILocation(line: 1151, column: 26, scope: !2568)
!2584 = !DILocation(line: 1151, column: 11, scope: !2568)
!2585 = !DILocation(line: 1151, column: 20, scope: !2568)
!2586 = !DILocation(line: 1152, column: 26, scope: !2568)
!2587 = !DILocation(line: 1152, column: 11, scope: !2568)
!2588 = !DILocation(line: 1152, column: 20, scope: !2568)
!2589 = !DILocation(line: 1153, column: 5, scope: !2568)
!2590 = !DILocation(line: 1143, column: 42, scope: !2556)
!2591 = !DILocation(line: 1143, column: 48, scope: !2556)
!2592 = distinct !{!2592, !2560, !2593}
!2593 = !DILocation(line: 1154, column: 4, scope: !2557)
!2594 = !DILocation(line: 1141, column: 44, scope: !2551)
!2595 = distinct !{!2595, !2547, !2596}
!2596 = !DILocation(line: 1157, column: 2, scope: !2546)
!2597 = !DILocation(line: 1158, column: 57, scope: !2537)
!2598 = !DILocation(line: 1158, column: 2, scope: !2537)
!2599 = !DILocation(line: 1159, column: 2, scope: !2537)
!2600 = !DILocation(line: 1160, column: 2, scope: !2537)
!2601 = !DILocation(line: 1161, column: 1, scope: !2537)
!2602 = distinct !DISubprogram(name: "findatom", scope: !3, file: !3, line: 1202, type: !2603, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!201, !169, !12}
!2605 = !{!2606, !2607, !2608}
!2606 = !DILocalVariable(name: "res", arg: 1, scope: !2602, file: !3, line: 1202, type: !169)
!2607 = !DILocalVariable(name: "aname", arg: 2, scope: !2602, file: !3, line: 1202, type: !12)
!2608 = !DILocalVariable(name: "a", scope: !2602, file: !3, line: 1204, type: !11)
!2609 = !DILocation(line: 0, scope: !2602)
!2610 = !DILocation(line: 1206, column: 23, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 1206, column: 2)
!2612 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1206, column: 2)
!2613 = !DILocation(line: 1206, column: 16, scope: !2611)
!2614 = !DILocation(line: 1206, column: 2, scope: !2612)
!2615 = !DILocation(line: 1207, column: 21, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 1207, column: 7)
!2617 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1206, column: 38)
!2618 = !DILocation(line: 1207, column: 34, scope: !2616)
!2619 = !DILocation(line: 1207, column: 8, scope: !2616)
!2620 = !DILocation(line: 1207, column: 7, scope: !2617)
!2621 = !DILocation(line: 1208, column: 18, scope: !2616)
!2622 = !DILocation(line: 1208, column: 13, scope: !2616)
!2623 = !DILocation(line: 1208, column: 4, scope: !2616)
!2624 = !DILocation(line: 1206, column: 34, scope: !2611)
!2625 = distinct !{!2625, !2614, !2626}
!2626 = !DILocation(line: 1209, column: 2, scope: !2612)
!2627 = !DILocation(line: 1211, column: 1, scope: !2602)
!2628 = distinct !DISubprogram(name: "addchi2reslib", scope: !3, file: !3, line: 1163, type: !2190, scopeLine: 1164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2629)
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2638, !2639}
!2630 = !DILocalVariable(name: "rlp", arg: 1, scope: !2628, file: !3, line: 1163, type: !298)
!2631 = !DILocalVariable(name: "res", scope: !2628, file: !3, line: 1165, type: !169)
!2632 = !DILocalVariable(name: "cp", scope: !2628, file: !3, line: 1166, type: !190)
!2633 = !DILocalVariable(name: "a", scope: !2628, file: !3, line: 1167, type: !11)
!2634 = !DILocalVariable(name: "c", scope: !2628, file: !3, line: 1167, type: !11)
!2635 = !DILocalVariable(name: "ca", scope: !2628, file: !3, line: 1167, type: !11)
!2636 = !DILocalVariable(name: "pos", scope: !2628, file: !3, line: 1168, type: !2637)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 768, elements: !196)
!2638 = !DILocalVariable(name: "dvol", scope: !2628, file: !3, line: 1169, type: !2637)
!2639 = !DILocalVariable(name: "vol", scope: !2628, file: !3, line: 1170, type: !47)
!2640 = !DILocation(line: 0, scope: !2628)
!2641 = !DILocation(line: 1168, column: 2, scope: !2628)
!2642 = !DILocation(line: 1168, column: 11, scope: !2628)
!2643 = !DILocation(line: 1169, column: 2, scope: !2628)
!2644 = !DILocation(line: 1169, column: 11, scope: !2628)
!2645 = !DILocation(line: 1170, column: 2, scope: !2628)
!2646 = !DILocation(line: 1172, column: 18, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1172, column: 2)
!2648 = !DILocation(line: 1172, column: 2, scope: !2647)
!2649 = !DILocation(line: 1173, column: 21, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1173, column: 7)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1172, column: 52)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1172, column: 2)
!2653 = !DILocation(line: 1173, column: 8, scope: !2650)
!2654 = !DILocation(line: 1173, column: 7, scope: !2651)
!2655 = !DILocation(line: 1175, column: 13, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 1174, column: 8)
!2657 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 1173, column: 43)
!2658 = !DILocation(line: 1175, column: 19, scope: !2656)
!2659 = !DILocation(line: 1175, column: 5, scope: !2656)
!2660 = !DILocation(line: 1176, column: 5, scope: !2656)
!2661 = !DILocation(line: 1174, column: 8, scope: !2657)
!2662 = !DILocation(line: 1177, column: 14, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 1176, column: 14)
!2664 = !DILocation(line: 1179, column: 11, scope: !2663)
!2665 = !DILocation(line: 1177, column: 5, scope: !2663)
!2666 = !DILocation(line: 1180, column: 5, scope: !2663)
!2667 = !DILocation(line: 1174, column: 15, scope: !2656)
!2668 = !DILocation(line: 1182, column: 21, scope: !2657)
!2669 = !DILocation(line: 1182, column: 9, scope: !2657)
!2670 = !DILocation(line: 1182, column: 19, scope: !2657)
!2671 = !DILocation(line: 1183, column: 9, scope: !2657)
!2672 = !DILocation(line: 1183, column: 18, scope: !2657)
!2673 = !DILocation(line: 1184, column: 18, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1184, column: 4)
!2675 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 1184, column: 4)
!2676 = !DILocation(line: 1184, column: 4, scope: !2675)
!2677 = !DILocation(line: 1185, column: 5, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 1185, column: 5)
!2679 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 1184, column: 32)
!2680 = !DILocation(line: 1186, column: 27, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 1185, column: 29)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1185, column: 5)
!2683 = !DILocation(line: 1186, column: 11, scope: !2681)
!2684 = !DILocation(line: 1186, column: 25, scope: !2681)
!2685 = !DILocation(line: 1187, column: 23, scope: !2681)
!2686 = !DILocation(line: 1187, column: 18, scope: !2681)
!2687 = !DILocation(line: 1187, column: 6, scope: !2681)
!2688 = !DILocation(line: 1187, column: 16, scope: !2681)
!2689 = !DILocation(line: 1188, column: 23, scope: !2681)
!2690 = !DILocation(line: 1188, column: 18, scope: !2681)
!2691 = !DILocation(line: 1188, column: 6, scope: !2681)
!2692 = !DILocation(line: 1188, column: 16, scope: !2681)
!2693 = !DILocation(line: 1189, column: 23, scope: !2681)
!2694 = !DILocation(line: 1189, column: 18, scope: !2681)
!2695 = !DILocation(line: 1189, column: 6, scope: !2681)
!2696 = !DILocation(line: 1189, column: 16, scope: !2681)
!2697 = !DILocation(line: 1185, column: 25, scope: !2682)
!2698 = !DILocation(line: 1185, column: 19, scope: !2682)
!2699 = distinct !{!2699, !2677, !2700}
!2700 = !DILocation(line: 1190, column: 5, scope: !2678)
!2701 = !DILocation(line: 1191, column: 29, scope: !2679)
!2702 = !DILocation(line: 1191, column: 44, scope: !2679)
!2703 = !DILocation(line: 1191, column: 5, scope: !2679)
!2704 = !DILocation(line: 1192, column: 18, scope: !2679)
!2705 = !DILocation(line: 1192, column: 9, scope: !2679)
!2706 = !DILocation(line: 1192, column: 16, scope: !2679)
!2707 = !DILocation(line: 1193, column: 7, scope: !2679)
!2708 = !DILocation(line: 1184, column: 28, scope: !2674)
!2709 = !DILocation(line: 1184, column: 20, scope: !2674)
!2710 = distinct !{!2710, !2676, !2711}
!2711 = !DILocation(line: 1194, column: 4, scope: !2675)
!2712 = !DILocation(line: 1172, column: 44, scope: !2652)
!2713 = distinct !{!2713, !2648, !2714}
!2714 = !DILocation(line: 1197, column: 2, scope: !2647)
!2715 = !DILocation(line: 0, scope: !2647)
!2716 = !DILocation(line: 1198, column: 11, scope: !2628)
!2717 = !DILocation(line: 1199, column: 8, scope: !2628)
!2718 = !DILocation(line: 1199, column: 24, scope: !2628)
!2719 = !DILocation(line: 1198, column: 2, scope: !2628)
!2720 = !DILocation(line: 1200, column: 1, scope: !2628)
