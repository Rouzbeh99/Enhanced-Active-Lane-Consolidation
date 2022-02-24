; ModuleID = 'molutil.ll'
source_filename = "molutil.c"
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

@.str = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"new molecule\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"addstrand: strand %s already in mol\0A\00", align 1
@e_msg = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str.3 = private unnamed_addr constant [14 x i8] c"new strand %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"name for new strand %s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Strand %s not in molecule.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"residue array in strand %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"#%2d not in strand %s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Residue %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s not in residue %s\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Atom %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"#%2d not in strand %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"bond between %s %d:%s and %s %d:%s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"end1/end2 in ligate() must be be 5'/3' or 3'/5 not %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"merged residue array\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"anglep: p1, p2 are coincident, returning 0.0\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"anglep: p2, p3 are coincident, returning 0.0\0A\00", align 1
@getresname.rname = internal global i8* null, align 8, !dbg !343
@.str.20 = private unnamed_addr constant [22 x i8] c"copied external bonds\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dna\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"rna\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"setreskind: ERROR: unknown rkind %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"nstrands\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"nresidues\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"natoms\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"NAB_mri: unknown key: %s\0A\00", align 1
@NAB_rri.rv_err = internal global i32 0, align 4, !dbg !350
@.str.29 = private unnamed_addr constant [7 x i8] c"resnum\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"tresnum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"strandnum\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"NAB_rri: unknown key: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"resname\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"resid\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"strandname\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"NAB_rrc: unknown key: %s\0A\00", align 1
@NAB_ari.rv_err = internal global i32 0, align 4, !dbg !360
@.str.37 = private unnamed_addr constant [8 x i8] c"atomnum\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"tatomnum\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"int1\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"NAB_ari: unknown key: %s\0A\00", align 1
@NAB_arf.f = internal global double 0.000000e+00, align 8, !dbg !371
@.str.41 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"charge\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"float1\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"float2\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"NAB_arf: unknown key: %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"atomname\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"fullname\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"%d:%d:%s\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"NAB_arc: unknown key: %s\0A\00", align 1
@newtransform.mp = internal global [4 x [4 x double]] zeroinitializer, align 16, !dbg !379
@updtransform.mr = internal global [4 x [4 x double]] zeroinitializer, align 16, !dbg !395
@trans4p.mat = internal global [4 x [4 x double]] zeroinitializer, align 16, !dbg !406
@rot4p.mat5 = internal global [4 x [4 x double]] zeroinitializer, align 16, !dbg !420
@.str.53 = private unnamed_addr constant [41 x i8] c"triangle sides too close to collinear !\0A\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"O5'\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"O5*\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"O1P\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"OAP\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"O2P\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"OBP\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"HB\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"HE\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"O3'\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"O3*\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"C3'\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"C3*\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"Can't create new atom array\0A\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Can't create new atom index array\0A\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"add_atom: can't allocate anp.\0A\00", align 1
@nabout = external dso_local global %struct._IO_FILE*, align 8
@.str.70 = private unnamed_addr constant [12 x i8] c"malloc %ld\0A\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"malloc err:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @newmolecule() #0 !dbg !439 {
  %1 = call noalias i8* @malloc(i64 136) #8, !dbg !444
  %2 = bitcast i8* %1 to %struct.molecule_t*, !dbg !446
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !443, metadata !DIExpression()), !dbg !447
  %3 = icmp eq %struct.molecule_t* %2, null, !dbg !448
  br i1 %3, label %4, label %6, !dbg !449

4:                                                ; preds = %0
  %5 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !450
  br label %48, !dbg !452

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !453
  %8 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %7, i64 0, i64 0, !dbg !454
  %9 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0, !dbg !454
  store double 0.000000e+00, double* %9, align 8, !dbg !455, !tbaa !456
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !460
  %11 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %10, i64 0, i64 0, !dbg !461
  %12 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 1, !dbg !461
  store double 0.000000e+00, double* %12, align 8, !dbg !462, !tbaa !456
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !463
  %14 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %13, i64 0, i64 0, !dbg !464
  %15 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2, !dbg !464
  store double 0.000000e+00, double* %15, align 8, !dbg !465, !tbaa !456
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !466
  %17 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %16, i64 0, i64 1, !dbg !467
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 0, !dbg !467
  store double 1.000000e+00, double* %18, align 8, !dbg !468, !tbaa !456
  %19 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !469
  %20 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %19, i64 0, i64 1, !dbg !470
  %21 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 1, !dbg !470
  store double 0.000000e+00, double* %21, align 8, !dbg !471, !tbaa !456
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !472
  %23 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %22, i64 0, i64 1, !dbg !473
  %24 = getelementptr inbounds [3 x double], [3 x double]* %23, i64 0, i64 2, !dbg !473
  store double 0.000000e+00, double* %24, align 8, !dbg !474, !tbaa !456
  %25 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !475
  %26 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %25, i64 0, i64 2, !dbg !476
  %27 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0, i64 0, !dbg !476
  store double 0.000000e+00, double* %27, align 8, !dbg !477, !tbaa !456
  %28 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !478
  %29 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %28, i64 0, i64 2, !dbg !479
  %30 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1, !dbg !479
  store double 1.000000e+00, double* %30, align 8, !dbg !480, !tbaa !456
  %31 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !481
  %32 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %31, i64 0, i64 2, !dbg !482
  %33 = getelementptr inbounds [3 x double], [3 x double]* %32, i64 0, i64 2, !dbg !482
  store double 0.000000e+00, double* %33, align 8, !dbg !483, !tbaa !456
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !484
  %35 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %34, i64 0, i64 3, !dbg !485
  %36 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 0, i64 0, !dbg !485
  store double 0.000000e+00, double* %36, align 8, !dbg !486, !tbaa !456
  %37 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !487
  %38 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %37, i64 0, i64 3, !dbg !488
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 1, !dbg !488
  store double 0.000000e+00, double* %39, align 8, !dbg !489, !tbaa !456
  %40 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 0, !dbg !490
  %41 = getelementptr inbounds [4 x [3 x double]], [4 x [3 x double]]* %40, i64 0, i64 3, !dbg !491
  %42 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 0, i64 2, !dbg !491
  store double 1.000000e+00, double* %42, align 8, !dbg !492, !tbaa !456
  %43 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 1, !dbg !493
  store i32 0, i32* %43, align 8, !dbg !494, !tbaa !495
  %44 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 2, !dbg !499
  store %struct.strand_t* null, %struct.strand_t** %44, align 8, !dbg !500, !tbaa !501
  %45 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 3, !dbg !502
  store i32 0, i32* %45, align 8, !dbg !503, !tbaa !504
  %46 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 5, !dbg !505
  store i32 0, i32* %46, align 8, !dbg !506, !tbaa !507
  %47 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 6, !dbg !508
  store %struct.parm* null, %struct.parm** %47, align 8, !dbg !509, !tbaa !510
  br label %48, !dbg !511

48:                                               ; preds = %6, %4
  %.0 = phi %struct.molecule_t* [ null, %4 ], [ %2, %6 ], !dbg !447
  ret %struct.molecule_t* %.0, !dbg !512
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare !dbg !238 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @freeresidue(%struct.residue_t* %0) #0 !dbg !513 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !517, metadata !DIExpression()), !dbg !522
  %2 = icmp ne %struct.residue_t* %0, null, !dbg !523
  br i1 %2, label %4, label %3, !dbg !525

3:                                                ; preds = %1
  br label %102, !dbg !526

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !527
  %6 = load i8*, i8** %5, align 8, !dbg !527, !tbaa !529
  %7 = icmp ne i8* %6, null, !dbg !531
  br i1 %7, label %8, label %11, !dbg !532

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !533
  %10 = load i8*, i8** %9, align 8, !dbg !533, !tbaa !529
  call void @free(i8* %10) #8, !dbg !534
  br label %11, !dbg !534

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 5, !dbg !535
  %13 = load i8*, i8** %12, align 8, !dbg !535, !tbaa !537
  %14 = icmp ne i8* %13, null, !dbg !538
  br i1 %14, label %15, label %18, !dbg !539

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 5, !dbg !540
  %17 = load i8*, i8** %16, align 8, !dbg !540, !tbaa !537
  call void @free(i8* %17) #8, !dbg !541
  br label %18, !dbg !541

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 10, !dbg !542
  %20 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8, !dbg !542, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.extbond_t* %20, metadata !520, metadata !DIExpression()), !dbg !522
  %21 = icmp ne %struct.extbond_t* %20, null, !dbg !545
  br i1 %21, label %.lr.ph, label %28, !dbg !545

.lr.ph:                                           ; preds = %18
  br label %22, !dbg !545

22:                                               ; preds = %.lr.ph, %26
  %.034 = phi %struct.extbond_t* [ %20, %.lr.ph ], [ %24, %26 ]
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.034, metadata !520, metadata !DIExpression()), !dbg !522
  %23 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.034, i32 0, i32 0, !dbg !546
  %24 = load %struct.extbond_t*, %struct.extbond_t** %23, align 8, !dbg !546, !tbaa !549
  call void @llvm.dbg.value(metadata %struct.extbond_t* %24, metadata !521, metadata !DIExpression()), !dbg !522
  %25 = bitcast %struct.extbond_t* %.034 to i8*, !dbg !551
  call void @free(i8* %25) #8, !dbg !552
  br label %26, !dbg !553

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata %struct.extbond_t* %24, metadata !520, metadata !DIExpression()), !dbg !522
  %27 = icmp ne %struct.extbond_t* %24, null, !dbg !545
  br i1 %27, label %22, label %._crit_edge, !dbg !545, !llvm.loop !554

._crit_edge:                                      ; preds = %26
  br label %28, !dbg !545

28:                                               ; preds = %._crit_edge, %18
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 12, !dbg !556
  %30 = load [2 x i32]*, [2 x i32]** %29, align 8, !dbg !556, !tbaa !558
  %31 = icmp ne [2 x i32]* %30, null, !dbg !559
  br i1 %31, label %32, label %36, !dbg !560

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 12, !dbg !561
  %34 = load [2 x i32]*, [2 x i32]** %33, align 8, !dbg !561, !tbaa !558
  %35 = bitcast [2 x i32]* %34 to i8*, !dbg !562
  call void @free(i8* %35) #8, !dbg !563
  br label %36, !dbg !563

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 14, !dbg !564
  %38 = load %struct.chiral_t*, %struct.chiral_t** %37, align 8, !dbg !564, !tbaa !566
  %39 = icmp ne %struct.chiral_t* %38, null, !dbg !567
  br i1 %39, label %40, label %44, !dbg !568

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 14, !dbg !569
  %42 = load %struct.chiral_t*, %struct.chiral_t** %41, align 8, !dbg !569, !tbaa !566
  %43 = bitcast %struct.chiral_t* %42 to i8*, !dbg !570
  call void @free(i8* %43) #8, !dbg !571
  br label %44, !dbg !571

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16, !dbg !572
  %46 = load i32*, i32** %45, align 8, !dbg !572, !tbaa !574
  %47 = icmp ne i32* %46, null, !dbg !575
  br i1 %47, label %48, label %52, !dbg !576

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16, !dbg !577
  %50 = load i32*, i32** %49, align 8, !dbg !577, !tbaa !574
  %51 = bitcast i32* %50 to i8*, !dbg !578
  call void @free(i8* %51) #8, !dbg !579
  br label %52, !dbg !579

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !580
  %54 = load %struct.atom_t*, %struct.atom_t** %53, align 8, !dbg !580, !tbaa !582
  call void @llvm.dbg.value(metadata %struct.atom_t* %54, metadata !519, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata i32 0, metadata !518, metadata !DIExpression()), !dbg !522
  %55 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !583
  %56 = load i32, i32* %55, align 8, !dbg !583, !tbaa !585
  %57 = icmp slt i32 0, %56, !dbg !586
  br i1 %57, label %.lr.ph8, label %92, !dbg !587

.lr.ph8:                                          ; preds = %52
  br label %58, !dbg !587

58:                                               ; preds = %.lr.ph8, %87
  %.016 = phi i32 [ 0, %.lr.ph8 ], [ %88, %87 ]
  %.025 = phi %struct.atom_t* [ %54, %.lr.ph8 ], [ %89, %87 ]
  call void @llvm.dbg.value(metadata i32 %.016, metadata !518, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata %struct.atom_t* %.025, metadata !519, metadata !DIExpression()), !dbg !522
  %59 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 0, !dbg !588
  %60 = load i8*, i8** %59, align 8, !dbg !588, !tbaa !591
  %61 = icmp ne i8* %60, null, !dbg !593
  br i1 %61, label %62, label %65, !dbg !594

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 0, !dbg !595
  %64 = load i8*, i8** %63, align 8, !dbg !595, !tbaa !591
  call void @free(i8* %64) #8, !dbg !596
  br label %65, !dbg !596

65:                                               ; preds = %62, %58
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 1, !dbg !597
  %67 = load i8*, i8** %66, align 8, !dbg !597, !tbaa !599
  %68 = icmp ne i8* %67, null, !dbg !600
  br i1 %68, label %69, label %72, !dbg !601

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 1, !dbg !602
  %71 = load i8*, i8** %70, align 8, !dbg !602, !tbaa !599
  call void @free(i8* %71) #8, !dbg !603
  br label %72, !dbg !603

72:                                               ; preds = %69, %65
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 10, !dbg !604
  %74 = load i8*, i8** %73, align 8, !dbg !604, !tbaa !606
  %75 = icmp ne i8* %74, null, !dbg !607
  br i1 %75, label %76, label %79, !dbg !608

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 10, !dbg !609
  %78 = load i8*, i8** %77, align 8, !dbg !609, !tbaa !606
  call void @free(i8* %78) #8, !dbg !610
  br label %79, !dbg !610

79:                                               ; preds = %76, %72
  %80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 16, !dbg !611
  %81 = load i8*, i8** %80, align 8, !dbg !611, !tbaa !613
  %82 = icmp ne i8* %81, null, !dbg !614
  br i1 %82, label %83, label %86, !dbg !615

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 0, i32 16, !dbg !616
  %85 = load i8*, i8** %84, align 8, !dbg !616, !tbaa !613
  call void @free(i8* %85) #8, !dbg !617
  br label %86, !dbg !617

86:                                               ; preds = %83, %79
  br label %87, !dbg !618

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.016, 1, !dbg !619
  call void @llvm.dbg.value(metadata i32 %88, metadata !518, metadata !DIExpression()), !dbg !522
  %89 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i32 1, !dbg !620
  call void @llvm.dbg.value(metadata %struct.atom_t* %89, metadata !519, metadata !DIExpression()), !dbg !522
  %90 = load i32, i32* %55, align 8, !dbg !583, !tbaa !585
  %91 = icmp slt i32 %88, %90, !dbg !586
  br i1 %91, label %58, label %._crit_edge9, !dbg !587, !llvm.loop !621

._crit_edge9:                                     ; preds = %87
  br label %92, !dbg !587

92:                                               ; preds = %._crit_edge9, %52
  %93 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !623
  %94 = load %struct.atom_t*, %struct.atom_t** %93, align 8, !dbg !623, !tbaa !582
  %95 = icmp ne %struct.atom_t* %94, null, !dbg !625
  br i1 %95, label %96, label %100, !dbg !626

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !627
  %98 = load %struct.atom_t*, %struct.atom_t** %97, align 8, !dbg !627, !tbaa !582
  %99 = bitcast %struct.atom_t* %98 to i8*, !dbg !628
  call void @free(i8* %99) #8, !dbg !629
  br label %100, !dbg !629

100:                                              ; preds = %96, %92
  %101 = bitcast %struct.residue_t* %0 to i8*, !dbg !630
  call void @free(i8* %101) #8, !dbg !631
  br label %102, !dbg !632

102:                                              ; preds = %100, %3
  ret i32 0, !dbg !633
}

; Function Attrs: nounwind
declare !dbg !243 dso_local void @free(i8*) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @freemolecule(%struct.molecule_t* %0) #0 !dbg !634 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !638, metadata !DIExpression()), !dbg !643
  %2 = icmp ne %struct.molecule_t* %0, null, !dbg !644
  br i1 %2, label %4, label %3, !dbg !646

3:                                                ; preds = %1
  br label %83, !dbg !647

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !648
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !648, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !639, metadata !DIExpression()), !dbg !643
  %7 = icmp ne %struct.strand_t* %6, null, !dbg !650
  br i1 %7, label %.lr.ph6, label %43, !dbg !650

.lr.ph6:                                          ; preds = %4
  br label %8, !dbg !650

8:                                                ; preds = %.lr.ph6, %41
  %.014 = phi %struct.strand_t* [ %6, %.lr.ph6 ], [ %10, %41 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.014, metadata !639, metadata !DIExpression()), !dbg !643
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i32 0, i32 4, !dbg !651
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !651, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %10, metadata !640, metadata !DIExpression()), !dbg !643
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i32 0, i32 0, !dbg !656
  %12 = load i8*, i8** %11, align 8, !dbg !656, !tbaa !658
  %13 = icmp ne i8* %12, null, !dbg !659
  br i1 %13, label %14, label %17, !dbg !660

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i32 0, i32 0, !dbg !661
  %16 = load i8*, i8** %15, align 8, !dbg !661, !tbaa !658
  call void @free(i8* %16) #8, !dbg !662
  br label %17, !dbg !662

17:                                               ; preds = %14, %8
  call void @llvm.dbg.value(metadata i32 0, metadata !642, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i64 0, metadata !642, metadata !DIExpression()), !dbg !643
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i32 0, i32 5, !dbg !663
  %19 = load i32, i32* %18, align 8, !dbg !663, !tbaa !666
  %20 = sext i32 %19 to i64, !dbg !667
  %21 = icmp slt i64 0, %20, !dbg !667
  br i1 %21, label %.lr.ph, label %32, !dbg !668

.lr.ph:                                           ; preds = %17
  br label %22, !dbg !668

22:                                               ; preds = %.lr.ph, %28
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %28 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !642, metadata !DIExpression()), !dbg !643
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i32 0, i32 7, !dbg !669
  %24 = load %struct.residue_t**, %struct.residue_t*** %23, align 8, !dbg !669, !tbaa !670
  %25 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %24, i64 %indvars.iv3, !dbg !671
  %26 = load %struct.residue_t*, %struct.residue_t** %25, align 8, !dbg !671, !tbaa !672
  %27 = call i32 @freeresidue(%struct.residue_t* %26), !dbg !673
  br label %28, !dbg !673

28:                                               ; preds = %22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !674
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !642, metadata !DIExpression()), !dbg !643
  %29 = load i32, i32* %18, align 8, !dbg !663, !tbaa !666
  %30 = sext i32 %29 to i64, !dbg !667
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !667
  br i1 %31, label %22, label %._crit_edge, !dbg !668, !llvm.loop !675

._crit_edge:                                      ; preds = %28
  br label %32, !dbg !668

32:                                               ; preds = %._crit_edge, %17
  %33 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i32 0, i32 7, !dbg !677
  %34 = load %struct.residue_t**, %struct.residue_t*** %33, align 8, !dbg !677, !tbaa !670
  %35 = icmp ne %struct.residue_t** %34, null, !dbg !679
  br i1 %35, label %36, label %40, !dbg !680

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i32 0, i32 7, !dbg !681
  %38 = load %struct.residue_t**, %struct.residue_t*** %37, align 8, !dbg !681, !tbaa !670
  %39 = bitcast %struct.residue_t** %38 to i8*, !dbg !682
  call void @free(i8* %39) #8, !dbg !683
  br label %40, !dbg !683

40:                                               ; preds = %36, %32
  br label %41, !dbg !684

41:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %struct.strand_t* %10, metadata !639, metadata !DIExpression()), !dbg !643
  %42 = icmp ne %struct.strand_t* %10, null, !dbg !650
  br i1 %42, label %8, label %._crit_edge7, !dbg !650, !llvm.loop !685

._crit_edge7:                                     ; preds = %41
  br label %43, !dbg !650

43:                                               ; preds = %._crit_edge7, %4
  %44 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 6, !dbg !687
  %45 = load %struct.parm*, %struct.parm** %44, align 8, !dbg !687, !tbaa !510
  %46 = icmp ne %struct.parm* %45, null, !dbg !689
  br i1 %46, label %47, label %81, !dbg !690

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 6, !dbg !691
  %49 = load %struct.parm*, %struct.parm** %48, align 8, !dbg !691, !tbaa !510
  call void @llvm.dbg.value(metadata %struct.parm* %49, metadata !641, metadata !DIExpression()), !dbg !643
  %50 = getelementptr inbounds %struct.parm, %struct.parm* %49, i32 0, i32 33, !dbg !693
  %51 = load i8*, i8** %50, align 8, !dbg !693, !tbaa !695
  %52 = icmp ne i8* %51, null, !dbg !697
  br i1 %52, label %53, label %56, !dbg !698

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.parm, %struct.parm* %49, i32 0, i32 33, !dbg !699
  %55 = load i8*, i8** %54, align 8, !dbg !699, !tbaa !695
  call void @free(i8* %55) #8, !dbg !700
  br label %56, !dbg !700

56:                                               ; preds = %53, %47
  %57 = getelementptr inbounds %struct.parm, %struct.parm* %49, i32 0, i32 34, !dbg !701
  %58 = load i8*, i8** %57, align 8, !dbg !701, !tbaa !703
  %59 = icmp ne i8* %58, null, !dbg !704
  br i1 %59, label %60, label %63, !dbg !705

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.parm, %struct.parm* %49, i32 0, i32 34, !dbg !706
  %62 = load i8*, i8** %61, align 8, !dbg !706, !tbaa !703
  call void @free(i8* %62) #8, !dbg !707
  br label %63, !dbg !707

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct.parm, %struct.parm* %49, i32 0, i32 35, !dbg !708
  %65 = load i8*, i8** %64, align 8, !dbg !708, !tbaa !710
  %66 = icmp ne i8* %65, null, !dbg !711
  br i1 %66, label %67, label %70, !dbg !712

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.parm, %struct.parm* %49, i32 0, i32 35, !dbg !713
  %69 = load i8*, i8** %68, align 8, !dbg !713, !tbaa !710
  call void @free(i8* %69) #8, !dbg !714
  br label %70, !dbg !714

70:                                               ; preds = %67, %63
  %71 = getelementptr inbounds %struct.parm, %struct.parm* %49, i32 0, i32 36, !dbg !715
  %72 = load i8*, i8** %71, align 8, !dbg !715, !tbaa !717
  %73 = icmp ne i8* %72, null, !dbg !718
  br i1 %73, label %74, label %77, !dbg !719

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.parm, %struct.parm* %49, i32 0, i32 36, !dbg !720
  %76 = load i8*, i8** %75, align 8, !dbg !720, !tbaa !717
  call void @free(i8* %76) #8, !dbg !721
  br label %77, !dbg !721

77:                                               ; preds = %74, %70
  %78 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 6, !dbg !722
  %79 = load %struct.parm*, %struct.parm** %78, align 8, !dbg !722, !tbaa !510
  %80 = bitcast %struct.parm* %79 to i8*, !dbg !723
  call void @free(i8* %80) #8, !dbg !724
  br label %81, !dbg !725

81:                                               ; preds = %77, %43
  %82 = bitcast %struct.molecule_t* %0 to i8*, !dbg !726
  call void @free(i8* %82) #8, !dbg !727
  br label %83, !dbg !728

83:                                               ; preds = %81, %3
  ret i32 0, !dbg !729
}

; Function Attrs: nounwind uwtable
define dso_local i32 @addstrand(%struct.molecule_t* %0, i8* %1) #0 !dbg !730 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !734, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8* %1, metadata !735, metadata !DIExpression()), !dbg !740
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !741
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !741, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !736, metadata !DIExpression()), !dbg !740
  %5 = icmp ne %struct.strand_t* %4, null, !dbg !743
  br i1 %5, label %.lr.ph, label %19, !dbg !743

.lr.ph:                                           ; preds = %2
  br label %6, !dbg !743

6:                                                ; preds = %.lr.ph, %15
  %.023 = phi %struct.strand_t* [ %4, %.lr.ph ], [ %17, %15 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.023, metadata !736, metadata !DIExpression()), !dbg !740
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.023, i32 0, i32 0, !dbg !744
  %8 = load i8*, i8** %7, align 8, !dbg !744, !tbaa !658
  %9 = call i32 @strcmp(i8* %8, i8* %1) #9, !dbg !748
  %10 = icmp ne i32 %9, 0, !dbg !748
  br i1 %10, label %14, label %11, !dbg !749

11:                                               ; preds = %6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !750, !tbaa !672
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %1), !dbg !752
  br label %75, !dbg !753

14:                                               ; preds = %6
  br label %15, !dbg !754

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.023, i32 0, i32 4, !dbg !755
  %17 = load %struct.strand_t*, %struct.strand_t** %16, align 8, !dbg !755, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %17, metadata !736, metadata !DIExpression()), !dbg !740
  %18 = icmp ne %struct.strand_t* %17, null, !dbg !743
  br i1 %18, label %6, label %._crit_edge, !dbg !743, !llvm.loop !756

._crit_edge:                                      ; preds = %15
  br label %19, !dbg !743

19:                                               ; preds = %._crit_edge, %2
  %20 = call noalias i8* @malloc(i64 48) #8, !dbg !758
  %21 = bitcast i8* %20 to %struct.strand_t*, !dbg !760
  call void @llvm.dbg.value(metadata %struct.strand_t* %21, metadata !736, metadata !DIExpression()), !dbg !740
  %22 = icmp eq %struct.strand_t* %21, null, !dbg !761
  br i1 %22, label %23, label %26, !dbg !762

23:                                               ; preds = %19
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %1) #8, !dbg !763
  %25 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !765
  br label %75, !dbg !766

26:                                               ; preds = %19
  %27 = call i64 @strlen(i8* %1) #9, !dbg !767
  %28 = add i64 %27, 1, !dbg !768
  %29 = trunc i64 %28 to i32, !dbg !767
  call void @llvm.dbg.value(metadata i32 %29, metadata !738, metadata !DIExpression()), !dbg !740
  %30 = sext i32 %29 to i64, !dbg !769
  %31 = mul i64 %30, 1, !dbg !771
  %32 = call noalias i8* @malloc(i64 %31) #8, !dbg !772
  call void @llvm.dbg.value(metadata i8* %32, metadata !739, metadata !DIExpression()), !dbg !740
  %33 = icmp eq i8* %32, null, !dbg !773
  br i1 %33, label %34, label %37, !dbg !774

34:                                               ; preds = %26
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %1) #8, !dbg !775
  %36 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !777
  br label %75, !dbg !778

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 0, !dbg !779
  store i8* %32, i8** %38, align 8, !dbg !780, !tbaa !658
  br label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 0, !dbg !781
  %41 = load i8*, i8** %40, align 8, !dbg !781, !tbaa !658
  %42 = call i8* @strcpy(i8* %41, i8* %1) #8, !dbg !782
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 1, !dbg !783
  store i32 0, i32* %43, align 8, !dbg !784, !tbaa !785
  %44 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 2, !dbg !786
  store i32 0, i32* %44, align 4, !dbg !787, !tbaa !788
  %45 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 3, !dbg !789
  store %struct.molecule_t* %0, %struct.molecule_t** %45, align 8, !dbg !790, !tbaa !791
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 4, !dbg !792
  store %struct.strand_t* null, %struct.strand_t** %46, align 8, !dbg !793, !tbaa !654
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 5, !dbg !794
  store i32 0, i32* %47, align 8, !dbg !795, !tbaa !666
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 6, !dbg !796
  store i32 0, i32* %48, align 4, !dbg !797, !tbaa !798
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 7, !dbg !799
  store %struct.residue_t** null, %struct.residue_t*** %49, align 8, !dbg !800, !tbaa !670
  %50 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1, !dbg !801
  %51 = load i32, i32* %50, align 8, !dbg !801, !tbaa !495
  %52 = icmp eq i32 %51, 0, !dbg !803
  br i1 %52, label %53, label %55, !dbg !804

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !805
  store %struct.strand_t* %21, %struct.strand_t** %54, align 8, !dbg !806, !tbaa !501
  br label %70, !dbg !807

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !808
  %57 = load %struct.strand_t*, %struct.strand_t** %56, align 8, !dbg !808, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !737, metadata !DIExpression()), !dbg !740
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %57, i32 0, i32 4, !dbg !810
  %59 = load %struct.strand_t*, %struct.strand_t** %58, align 8, !dbg !810, !tbaa !654
  %60 = icmp ne %struct.strand_t* %59, null, !dbg !813
  br i1 %60, label %.lr.ph6, label %68, !dbg !813

.lr.ph6:                                          ; preds = %55
  br label %61, !dbg !813

61:                                               ; preds = %.lr.ph6, %62
  %.014 = phi %struct.strand_t* [ %57, %.lr.ph6 ], [ %64, %62 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.014, metadata !737, metadata !DIExpression()), !dbg !740
  br label %62, !dbg !813

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i32 0, i32 4, !dbg !814
  %64 = load %struct.strand_t*, %struct.strand_t** %63, align 8, !dbg !814, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !737, metadata !DIExpression()), !dbg !740
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %64, i32 0, i32 4, !dbg !810
  %66 = load %struct.strand_t*, %struct.strand_t** %65, align 8, !dbg !810, !tbaa !654
  %67 = icmp ne %struct.strand_t* %66, null, !dbg !813
  br i1 %67, label %61, label %._crit_edge7, !dbg !813, !llvm.loop !815

._crit_edge7:                                     ; preds = %62
  %split = phi %struct.strand_t* [ %64, %62 ]
  br label %68, !dbg !813

68:                                               ; preds = %._crit_edge7, %55
  %.01.lcssa = phi %struct.strand_t* [ %split, %._crit_edge7 ], [ %57, %55 ], !dbg !817
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01.lcssa, metadata !737, metadata !DIExpression()), !dbg !740
  %69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01.lcssa, i32 0, i32 4, !dbg !818
  store %struct.strand_t* %21, %struct.strand_t** %69, align 8, !dbg !819, !tbaa !654
  br label %70

70:                                               ; preds = %68, %53
  %71 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1, !dbg !820
  %72 = load i32, i32* %71, align 8, !dbg !821, !tbaa !495
  %73 = add nsw i32 %72, 1, !dbg !821
  store i32 %73, i32* %71, align 8, !dbg !821, !tbaa !495
  %74 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !822
  store i32 0, i32* %74, align 8, !dbg !823, !tbaa !507
  br label %75, !dbg !824

75:                                               ; preds = %70, %34, %23, %11
  %.0 = phi i32 [ 1, %11 ], [ 1, %23 ], [ 1, %34 ], [ 0, %70 ], !dbg !740
  ret i32 %.0, !dbg !825
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @addresidue(%struct.molecule_t* %0, i8* %1, %struct.residue_t* %2) #0 !dbg !826 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !830, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i8* %1, metadata !831, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata %struct.residue_t* %2, metadata !832, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !834, metadata !DIExpression()), !dbg !839
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !840
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !840, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !833, metadata !DIExpression()), !dbg !839
  %6 = icmp ne %struct.strand_t* %5, null, !dbg !842
  br i1 %6, label %.lr.ph, label %.loopexit, !dbg !842

.lr.ph:                                           ; preds = %3
  br label %7, !dbg !842

7:                                                ; preds = %.lr.ph, %14
  %.035 = phi %struct.strand_t* [ %5, %.lr.ph ], [ %16, %14 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.035, metadata !833, metadata !DIExpression()), !dbg !839
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.035, i32 0, i32 0, !dbg !843
  %9 = load i8*, i8** %8, align 8, !dbg !843, !tbaa !658
  %10 = call i32 @strcmp(i8* %9, i8* %1) #9, !dbg !847
  %11 = icmp eq i32 %10, 0, !dbg !848
  br i1 %11, label %12, label %13, !dbg !849

12:                                               ; preds = %7
  %.03.lcssa4 = phi %struct.strand_t* [ %.035, %7 ], !dbg !850
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03.lcssa4, metadata !833, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03.lcssa4, metadata !834, metadata !DIExpression()), !dbg !839
  br label %18, !dbg !851

13:                                               ; preds = %7
  br label %14, !dbg !853

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.035, i32 0, i32 4, !dbg !854
  %16 = load %struct.strand_t*, %struct.strand_t** %15, align 8, !dbg !854, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %16, metadata !833, metadata !DIExpression()), !dbg !839
  %17 = icmp ne %struct.strand_t* %16, null, !dbg !842
  br i1 %17, label %7, label %..loopexit_crit_edge, !dbg !842, !llvm.loop !855

..loopexit_crit_edge:                             ; preds = %14
  br label %.loopexit, !dbg !842

.loopexit:                                        ; preds = %..loopexit_crit_edge, %3
  br label %18, !dbg !857

18:                                               ; preds = %.loopexit, %12
  %.02 = phi %struct.strand_t* [ %.03.lcssa4, %12 ], [ null, %.loopexit ], !dbg !850
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02, metadata !834, metadata !DIExpression()), !dbg !839
  %19 = icmp eq %struct.strand_t* %.02, null, !dbg !857
  br i1 %19, label %20, label %22, !dbg !859

20:                                               ; preds = %18
  %21 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %1), !dbg !860
  br label %81, !dbg !862

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !863
  %24 = load i32, i32* %23, align 8, !dbg !863, !tbaa !666
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 6, !dbg !865
  %26 = load i32, i32* %25, align 4, !dbg !865, !tbaa !798
  %27 = icmp eq i32 %24, %26, !dbg !866
  br i1 %27, label %28, label %68, !dbg !867

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 6, !dbg !868
  %30 = load i32, i32* %29, align 4, !dbg !868, !tbaa !798
  %31 = add nsw i32 %30, 10, !dbg !870
  call void @llvm.dbg.value(metadata i32 %31, metadata !838, metadata !DIExpression()), !dbg !839
  %32 = sext i32 %31 to i64, !dbg !871
  %33 = mul i64 %32, 8, !dbg !873
  %34 = call noalias i8* @malloc(i64 %33) #8, !dbg !874
  %35 = bitcast i8* %34 to %struct.residue_t**, !dbg !875
  call void @llvm.dbg.value(metadata %struct.residue_t** %35, metadata !835, metadata !DIExpression()), !dbg !839
  %36 = icmp eq %struct.residue_t** %35, null, !dbg !876
  br i1 %36, label %37, label %42, !dbg !877

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 0, !dbg !878
  %39 = load i8*, i8** %38, align 8, !dbg !878, !tbaa !658
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %39) #8, !dbg !880
  %41 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !881
  br label %81, !dbg !882

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !837, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata i64 0, metadata !837, metadata !DIExpression()), !dbg !839
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !883
  %44 = load i32, i32* %43, align 8, !dbg !883, !tbaa !666
  %45 = sext i32 %44 to i64, !dbg !886
  %46 = icmp slt i64 0, %45, !dbg !886
  br i1 %46, label %.lr.ph7, label %57, !dbg !887

.lr.ph7:                                          ; preds = %42
  br label %47, !dbg !887

47:                                               ; preds = %.lr.ph7, %53
  %indvars.iv6 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next, %53 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !837, metadata !DIExpression()), !dbg !839
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !888
  %49 = load %struct.residue_t**, %struct.residue_t*** %48, align 8, !dbg !888, !tbaa !670
  %50 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %49, i64 %indvars.iv6, !dbg !889
  %51 = load %struct.residue_t*, %struct.residue_t** %50, align 8, !dbg !889, !tbaa !672
  %52 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %35, i64 %indvars.iv6, !dbg !890
  store %struct.residue_t* %51, %struct.residue_t** %52, align 8, !dbg !891, !tbaa !672
  br label %53, !dbg !890

53:                                               ; preds = %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !892
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !837, metadata !DIExpression()), !dbg !839
  %54 = load i32, i32* %43, align 8, !dbg !883, !tbaa !666
  %55 = sext i32 %54 to i64, !dbg !886
  %56 = icmp slt i64 %indvars.iv.next, %55, !dbg !886
  br i1 %56, label %47, label %._crit_edge, !dbg !887, !llvm.loop !893

._crit_edge:                                      ; preds = %53
  br label %57, !dbg !887

57:                                               ; preds = %._crit_edge, %42
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 6, !dbg !895
  %59 = load i32, i32* %58, align 4, !dbg !895, !tbaa !798
  %60 = icmp sgt i32 %59, 0, !dbg !897
  br i1 %60, label %61, label %65, !dbg !898

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !899
  %63 = load %struct.residue_t**, %struct.residue_t*** %62, align 8, !dbg !899, !tbaa !670
  %64 = bitcast %struct.residue_t** %63 to i8*, !dbg !900
  call void @free(i8* %64) #8, !dbg !901
  br label %65, !dbg !901

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 6, !dbg !902
  store i32 %31, i32* %66, align 4, !dbg !903, !tbaa !798
  %67 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !904
  store %struct.residue_t** %35, %struct.residue_t*** %67, align 8, !dbg !905, !tbaa !670
  br label %68, !dbg !906

68:                                               ; preds = %65, %22
  %69 = call %struct.residue_t* @copyresidue(%struct.residue_t* %2), !dbg !907
  call void @llvm.dbg.value(metadata %struct.residue_t* %69, metadata !836, metadata !DIExpression()), !dbg !839
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !908
  %71 = load %struct.residue_t**, %struct.residue_t*** %70, align 8, !dbg !908, !tbaa !670
  %72 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !909
  %73 = load i32, i32* %72, align 8, !dbg !909, !tbaa !666
  %74 = sext i32 %73 to i64, !dbg !910
  %75 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %71, i64 %74, !dbg !910
  store %struct.residue_t* %69, %struct.residue_t** %75, align 8, !dbg !911, !tbaa !672
  %76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %69, i32 0, i32 9, !dbg !912
  store %struct.strand_t* %.02, %struct.strand_t** %76, align 8, !dbg !913, !tbaa !914
  %77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !915
  %78 = load i32, i32* %77, align 8, !dbg !916, !tbaa !666
  %79 = add nsw i32 %78, 1, !dbg !916
  store i32 %79, i32* %77, align 8, !dbg !916, !tbaa !666
  %80 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !917
  store i32 0, i32* %80, align 8, !dbg !918, !tbaa !507
  br label %81, !dbg !919

81:                                               ; preds = %68, %37, %20
  %.0 = phi i32 [ 1, %20 ], [ 0, %37 ], [ 0, %68 ], !dbg !839
  ret i32 %.0, !dbg !920
}

declare !dbg !247 dso_local %struct.residue_t* @copyresidue(%struct.residue_t*) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @connectres(%struct.molecule_t* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 !dbg !921 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !925, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i8* %1, metadata !926, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i32 %2, metadata !927, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i8* %3, metadata !928, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i32 %4, metadata !929, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i8* %5, metadata !930, metadata !DIExpression()), !dbg !940
  %7 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !941
  %8 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !941, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %8, metadata !931, metadata !DIExpression()), !dbg !940
  %9 = icmp ne %struct.strand_t* %8, null, !dbg !943
  br i1 %9, label %.lr.ph, label %.loopexit6, !dbg !943

.lr.ph:                                           ; preds = %6
  br label %10, !dbg !943

10:                                               ; preds = %.lr.ph, %17
  %.0413 = phi %struct.strand_t* [ %8, %.lr.ph ], [ %19, %17 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0413, metadata !931, metadata !DIExpression()), !dbg !940
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0413, i32 0, i32 0, !dbg !944
  %12 = load i8*, i8** %11, align 8, !dbg !944, !tbaa !658
  %13 = call i32 @strcmp(i8* %12, i8* %1) #9, !dbg !948
  %14 = icmp eq i32 %13, 0, !dbg !949
  br i1 %14, label %15, label %16, !dbg !950

15:                                               ; preds = %10
  %.04.lcssa9 = phi %struct.strand_t* [ %.0413, %10 ], !dbg !951
  call void @llvm.dbg.value(metadata %struct.strand_t* %.04.lcssa9, metadata !931, metadata !DIExpression()), !dbg !940
  br label %21, !dbg !952

16:                                               ; preds = %10
  br label %17, !dbg !953

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0413, i32 0, i32 4, !dbg !954
  %19 = load %struct.strand_t*, %struct.strand_t** %18, align 8, !dbg !954, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %19, metadata !931, metadata !DIExpression()), !dbg !940
  %20 = icmp ne %struct.strand_t* %19, null, !dbg !943
  br i1 %20, label %10, label %..loopexit6_crit_edge, !dbg !943, !llvm.loop !955

..loopexit6_crit_edge:                            ; preds = %17
  %split = phi %struct.strand_t* [ %19, %17 ]
  br label %.loopexit6, !dbg !943

.loopexit6:                                       ; preds = %..loopexit6_crit_edge, %6
  %.04.lcssa = phi %struct.strand_t* [ %split, %..loopexit6_crit_edge ], [ %8, %6 ], !dbg !951
  call void @llvm.dbg.value(metadata %struct.strand_t* %.04.lcssa, metadata !931, metadata !DIExpression()), !dbg !940
  br label %21, !dbg !957

21:                                               ; preds = %.loopexit6, %15
  %.0410 = phi %struct.strand_t* [ %.04.lcssa, %.loopexit6 ], [ %.04.lcssa9, %15 ]
  %22 = icmp eq %struct.strand_t* %.0410, null, !dbg !957
  br i1 %22, label %23, label %25, !dbg !959

23:                                               ; preds = %21
  %24 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %1), !dbg !960
  br label %154, !dbg !962

25:                                               ; preds = %21
  %26 = icmp slt i32 %2, 1, !dbg !963
  br i1 %26, label %31, label %27, !dbg !965

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0410, i32 0, i32 5, !dbg !966
  %29 = load i32, i32* %28, align 8, !dbg !966, !tbaa !666
  %30 = icmp sgt i32 %2, %29, !dbg !967
  br i1 %30, label %31, label %34, !dbg !968

31:                                               ; preds = %27, %25
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %2, i8* %1) #8, !dbg !969
  %33 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !971
  br label %154, !dbg !972

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0410, i32 0, i32 7, !dbg !973
  %36 = load %struct.residue_t**, %struct.residue_t*** %35, align 8, !dbg !973, !tbaa !670
  %37 = sub nsw i32 %2, 1, !dbg !974
  %38 = sext i32 %37 to i64, !dbg !975
  %39 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %36, i64 %38, !dbg !975
  %40 = load %struct.residue_t*, %struct.residue_t** %39, align 8, !dbg !975, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %40, metadata !934, metadata !DIExpression()), !dbg !940
  br label %41

41:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 -1, metadata !938, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i32 0, metadata !937, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i64 0, metadata !937, metadata !DIExpression()), !dbg !940
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 15, !dbg !976
  %43 = load i32, i32* %42, align 8, !dbg !976, !tbaa !585
  %44 = sext i32 %43 to i64, !dbg !979
  %45 = icmp slt i64 0, %44, !dbg !979
  br i1 %45, label %.lr.ph15, label %.loopexit5, !dbg !980

.lr.ph15:                                         ; preds = %41
  br label %46, !dbg !980

46:                                               ; preds = %.lr.ph15, %57
  %indvars.iv14 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next, %57 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv14, metadata !937, metadata !DIExpression()), !dbg !940
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 17, !dbg !981
  %48 = load %struct.atom_t*, %struct.atom_t** %47, align 8, !dbg !981, !tbaa !582
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %indvars.iv14, !dbg !983
  call void @llvm.dbg.value(metadata %struct.atom_t* %49, metadata !936, metadata !DIExpression()), !dbg !940
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i32 0, i32 0, !dbg !984
  %51 = load i8*, i8** %50, align 8, !dbg !984, !tbaa !591
  %52 = call i32 @strcmp(i8* %51, i8* %3) #9, !dbg !986
  %53 = icmp eq i32 %52, 0, !dbg !987
  br i1 %53, label %54, label %56, !dbg !988

54:                                               ; preds = %46
  %.03.lcssa8.wide = phi i64 [ %indvars.iv14, %46 ]
  %55 = trunc i64 %.03.lcssa8.wide to i32, !dbg !940
  call void @llvm.dbg.value(metadata i32 %55, metadata !937, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i32 %55, metadata !938, metadata !DIExpression()), !dbg !940
  br label %61, !dbg !989

56:                                               ; preds = %46
  br label %57, !dbg !991

57:                                               ; preds = %56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv14, 1, !dbg !992
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !937, metadata !DIExpression()), !dbg !940
  %58 = load i32, i32* %42, align 8, !dbg !976, !tbaa !585
  %59 = sext i32 %58 to i64, !dbg !979
  %60 = icmp slt i64 %indvars.iv.next, %59, !dbg !979
  br i1 %60, label %46, label %..loopexit5_crit_edge, !dbg !980, !llvm.loop !993

..loopexit5_crit_edge:                            ; preds = %57
  br label %.loopexit5, !dbg !980

.loopexit5:                                       ; preds = %..loopexit5_crit_edge, %41
  br label %61, !dbg !995

61:                                               ; preds = %.loopexit5, %54
  %.02 = phi i32 [ %55, %54 ], [ -1, %.loopexit5 ], !dbg !997
  call void @llvm.dbg.value(metadata i32 %.02, metadata !938, metadata !DIExpression()), !dbg !940
  %62 = icmp eq i32 %.02, -1, !dbg !995
  br i1 %62, label %63, label %68, !dbg !998

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 4, !dbg !999
  %65 = load i8*, i8** %64, align 8, !dbg !999, !tbaa !529
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %3, i8* %65) #8, !dbg !1001
  %67 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1002
  br label %154, !dbg !1003

68:                                               ; preds = %61
  %69 = icmp slt i32 %4, 1, !dbg !1004
  br i1 %69, label %74, label %70, !dbg !1006

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0410, i32 0, i32 5, !dbg !1007
  %72 = load i32, i32* %71, align 8, !dbg !1007, !tbaa !666
  %73 = icmp sgt i32 %4, %72, !dbg !1008
  br i1 %73, label %74, label %77, !dbg !1009

74:                                               ; preds = %70, %68
  %75 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %4, i8* %1) #8, !dbg !1010
  %76 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1012
  br label %154, !dbg !1013

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0410, i32 0, i32 7, !dbg !1014
  %79 = load %struct.residue_t**, %struct.residue_t*** %78, align 8, !dbg !1014, !tbaa !670
  %80 = sub nsw i32 %4, 1, !dbg !1015
  %81 = sext i32 %80 to i64, !dbg !1016
  %82 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %79, i64 %81, !dbg !1016
  %83 = load %struct.residue_t*, %struct.residue_t** %82, align 8, !dbg !1016, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %83, metadata !935, metadata !DIExpression()), !dbg !940
  br label %84

84:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 -1, metadata !939, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i32 0, metadata !937, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i64 0, metadata !937, metadata !DIExpression()), !dbg !940
  %85 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 15, !dbg !1017
  %86 = load i32, i32* %85, align 8, !dbg !1017, !tbaa !585
  %87 = sext i32 %86 to i64, !dbg !1020
  %88 = icmp slt i64 0, %87, !dbg !1020
  br i1 %88, label %.lr.ph17, label %.loopexit, !dbg !1021

.lr.ph17:                                         ; preds = %84
  br label %89, !dbg !1021

89:                                               ; preds = %.lr.ph17, %100
  %indvars.iv1116 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next12, %100 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1116, metadata !937, metadata !DIExpression()), !dbg !940
  %90 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 17, !dbg !1022
  %91 = load %struct.atom_t*, %struct.atom_t** %90, align 8, !dbg !1022, !tbaa !582
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %91, i64 %indvars.iv1116, !dbg !1024
  call void @llvm.dbg.value(metadata %struct.atom_t* %92, metadata !936, metadata !DIExpression()), !dbg !940
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %92, i32 0, i32 0, !dbg !1025
  %94 = load i8*, i8** %93, align 8, !dbg !1025, !tbaa !591
  %95 = call i32 @strcmp(i8* %94, i8* %5) #9, !dbg !1027
  %96 = icmp eq i32 %95, 0, !dbg !1028
  br i1 %96, label %97, label %99, !dbg !1029

97:                                               ; preds = %89
  %.1.lcssa7.wide = phi i64 [ %indvars.iv1116, %89 ]
  %98 = trunc i64 %.1.lcssa7.wide to i32, !dbg !940
  call void @llvm.dbg.value(metadata i32 %98, metadata !937, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i32 %98, metadata !939, metadata !DIExpression()), !dbg !940
  br label %104, !dbg !1030

99:                                               ; preds = %89
  br label %100, !dbg !1032

100:                                              ; preds = %99
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv1116, 1, !dbg !1033
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next12, metadata !937, metadata !DIExpression()), !dbg !940
  %101 = load i32, i32* %85, align 8, !dbg !1017, !tbaa !585
  %102 = sext i32 %101 to i64, !dbg !1020
  %103 = icmp slt i64 %indvars.iv.next12, %102, !dbg !1020
  br i1 %103, label %89, label %..loopexit_crit_edge, !dbg !1021, !llvm.loop !1034

..loopexit_crit_edge:                             ; preds = %100
  br label %.loopexit, !dbg !1021

.loopexit:                                        ; preds = %..loopexit_crit_edge, %84
  br label %104, !dbg !1036

104:                                              ; preds = %.loopexit, %97
  %.01 = phi i32 [ %98, %97 ], [ -1, %.loopexit ], !dbg !1038
  call void @llvm.dbg.value(metadata i32 %.01, metadata !939, metadata !DIExpression()), !dbg !940
  %105 = icmp eq i32 %.01, -1, !dbg !1036
  br i1 %105, label %106, label %111, !dbg !1039

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 4, !dbg !1040
  %108 = load i8*, i8** %107, align 8, !dbg !1040, !tbaa !529
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %5, i8* %108) #8, !dbg !1042
  %110 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1043
  br label %154, !dbg !1044

111:                                              ; preds = %104
  %112 = call noalias i8* @malloc(i64 24) #8, !dbg !1045
  %113 = bitcast i8* %112 to %struct.extbond_t*, !dbg !1047
  call void @llvm.dbg.value(metadata %struct.extbond_t* %113, metadata !932, metadata !DIExpression()), !dbg !940
  %114 = icmp eq %struct.extbond_t* %113, null, !dbg !1048
  br i1 %114, label %115, label %122, !dbg !1049

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 4, !dbg !1050
  %117 = load i8*, i8** %116, align 8, !dbg !1050, !tbaa !529
  %118 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 4, !dbg !1052
  %119 = load i8*, i8** %118, align 8, !dbg !1052, !tbaa !529
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %117, i32 %2, i8* %3, i8* %119, i32 %4, i8* %5) #8, !dbg !1053
  %121 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1054
  br label %154, !dbg !1055

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 10, !dbg !1056
  %124 = load %struct.extbond_t*, %struct.extbond_t** %123, align 8, !dbg !1056, !tbaa !544
  %125 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %113, i32 0, i32 0, !dbg !1058
  store %struct.extbond_t* %124, %struct.extbond_t** %125, align 8, !dbg !1059, !tbaa !549
  %126 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 10, !dbg !1060
  store %struct.extbond_t* %113, %struct.extbond_t** %126, align 8, !dbg !1061, !tbaa !544
  %127 = add nsw i32 %.02, 1, !dbg !1062
  %128 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %113, i32 0, i32 1, !dbg !1063
  store i32 %127, i32* %128, align 8, !dbg !1064, !tbaa !1065
  %129 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %113, i32 0, i32 2, !dbg !1066
  store i32 %4, i32* %129, align 4, !dbg !1067, !tbaa !1068
  %130 = add nsw i32 %.01, 1, !dbg !1069
  %131 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %113, i32 0, i32 3, !dbg !1070
  store i32 %130, i32* %131, align 8, !dbg !1071, !tbaa !1072
  br label %132

132:                                              ; preds = %122
  %133 = call noalias i8* @malloc(i64 24) #8, !dbg !1073
  %134 = bitcast i8* %133 to %struct.extbond_t*, !dbg !1075
  call void @llvm.dbg.value(metadata %struct.extbond_t* %134, metadata !933, metadata !DIExpression()), !dbg !940
  %135 = icmp eq %struct.extbond_t* %134, null, !dbg !1076
  br i1 %135, label %136, label %143, !dbg !1077

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 4, !dbg !1078
  %138 = load i8*, i8** %137, align 8, !dbg !1078, !tbaa !529
  %139 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %40, i32 0, i32 4, !dbg !1080
  %140 = load i8*, i8** %139, align 8, !dbg !1080, !tbaa !529
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %138, i32 %4, i8* %5, i8* %140, i32 %2, i8* %3) #8, !dbg !1081
  %142 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1082
  br label %154, !dbg !1083

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 10, !dbg !1084
  %145 = load %struct.extbond_t*, %struct.extbond_t** %144, align 8, !dbg !1084, !tbaa !544
  %146 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %134, i32 0, i32 0, !dbg !1086
  store %struct.extbond_t* %145, %struct.extbond_t** %146, align 8, !dbg !1087, !tbaa !549
  %147 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %83, i32 0, i32 10, !dbg !1088
  store %struct.extbond_t* %134, %struct.extbond_t** %147, align 8, !dbg !1089, !tbaa !544
  %148 = add nsw i32 %.01, 1, !dbg !1090
  %149 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %134, i32 0, i32 1, !dbg !1091
  store i32 %148, i32* %149, align 8, !dbg !1092, !tbaa !1065
  %150 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %134, i32 0, i32 2, !dbg !1093
  store i32 %2, i32* %150, align 4, !dbg !1094, !tbaa !1068
  %151 = add nsw i32 %.02, 1, !dbg !1095
  %152 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %134, i32 0, i32 3, !dbg !1096
  store i32 %151, i32* %152, align 8, !dbg !1097, !tbaa !1072
  br label %153

153:                                              ; preds = %143
  br label %154, !dbg !1098

154:                                              ; preds = %153, %136, %115, %106, %74, %63, %31, %23
  %.0 = phi i32 [ 1, %23 ], [ 1, %31 ], [ 1, %63 ], [ 1, %74 ], [ 1, %106 ], [ 1, %115 ], [ 1, %136 ], [ 0, %153 ], !dbg !940
  ret i32 %.0, !dbg !1099
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mergestr(%struct.molecule_t* %0, i8* %1, i8* %2, %struct.molecule_t* %3, i8* %4, i8* %5) #0 !dbg !1100 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1104, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8* %1, metadata !1105, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8* %2, metadata !1106, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata %struct.molecule_t* %3, metadata !1107, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8* %4, metadata !1108, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8* %5, metadata !1109, metadata !DIExpression()), !dbg !1120
  %7 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !1121
  %8 = icmp eq i32 %7, 0, !dbg !1123
  br i1 %8, label %9, label %13, !dbg !1124

9:                                                ; preds = %6
  %10 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !1125
  %11 = icmp eq i32 %10, 0, !dbg !1126
  br i1 %11, label %12, label %13, !dbg !1127

12:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 1, metadata !1110, metadata !DIExpression()), !dbg !1120
  br label %24, !dbg !1128

13:                                               ; preds = %9, %6
  %14 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !1129
  %15 = icmp eq i32 %14, 0, !dbg !1131
  br i1 %15, label %16, label %20, !dbg !1132

16:                                               ; preds = %13
  %17 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !1133
  %18 = icmp eq i32 %17, 0, !dbg !1134
  br i1 %18, label %19, label %20, !dbg !1135

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i32 0, metadata !1110, metadata !DIExpression()), !dbg !1120
  br label %23, !dbg !1136

20:                                               ; preds = %16, %13
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %2, i8* %5) #8, !dbg !1137
  %22 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !1139
  br label %280, !dbg !1140

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23, %12
  %.09 = phi i32 [ 1, %12 ], [ 0, %23 ], !dbg !1141
  call void @llvm.dbg.value(metadata i32 %.09, metadata !1110, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1117, metadata !DIExpression()), !dbg !1120
  %25 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1142
  %26 = load %struct.strand_t*, %struct.strand_t** %25, align 8, !dbg !1142, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %26, metadata !1116, metadata !DIExpression()), !dbg !1120
  %27 = icmp ne %struct.strand_t* %26, null, !dbg !1144
  br i1 %27, label %.lr.ph, label %.loopexit10, !dbg !1144

.lr.ph:                                           ; preds = %24
  br label %28, !dbg !1144

28:                                               ; preds = %.lr.ph, %35
  %.0327 = phi %struct.strand_t* [ %26, %.lr.ph ], [ %37, %35 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0327, metadata !1116, metadata !DIExpression()), !dbg !1120
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0327, i32 0, i32 0, !dbg !1145
  %30 = load i8*, i8** %29, align 8, !dbg !1145, !tbaa !658
  %31 = call i32 @strcmp(i8* %30, i8* %1) #9, !dbg !1149
  %32 = icmp eq i32 %31, 0, !dbg !1150
  br i1 %32, label %33, label %34, !dbg !1151

33:                                               ; preds = %28
  %.03.lcssa12 = phi %struct.strand_t* [ %.0327, %28 ], !dbg !1152
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03.lcssa12, metadata !1116, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03.lcssa12, metadata !1117, metadata !DIExpression()), !dbg !1120
  br label %39, !dbg !1153

34:                                               ; preds = %28
  br label %35, !dbg !1155

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0327, i32 0, i32 4, !dbg !1156
  %37 = load %struct.strand_t*, %struct.strand_t** %36, align 8, !dbg !1156, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %37, metadata !1116, metadata !DIExpression()), !dbg !1120
  %38 = icmp ne %struct.strand_t* %37, null, !dbg !1144
  br i1 %38, label %28, label %..loopexit10_crit_edge, !dbg !1144, !llvm.loop !1157

..loopexit10_crit_edge:                           ; preds = %35
  br label %.loopexit10, !dbg !1144

.loopexit10:                                      ; preds = %..loopexit10_crit_edge, %24
  br label %39, !dbg !1159

39:                                               ; preds = %.loopexit10, %33
  %.02 = phi %struct.strand_t* [ %.03.lcssa12, %33 ], [ null, %.loopexit10 ], !dbg !1152
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02, metadata !1117, metadata !DIExpression()), !dbg !1120
  %40 = icmp eq %struct.strand_t* %.02, null, !dbg !1159
  br i1 %40, label %41, label %43, !dbg !1161

41:                                               ; preds = %39
  %42 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %1), !dbg !1162
  br label %280, !dbg !1164

43:                                               ; preds = %39
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1118, metadata !DIExpression()), !dbg !1120
  %44 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i32 0, i32 2, !dbg !1165
  %45 = load %struct.strand_t*, %struct.strand_t** %44, align 8, !dbg !1165, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %45, metadata !1116, metadata !DIExpression()), !dbg !1120
  %46 = icmp ne %struct.strand_t* %45, null, !dbg !1167
  br i1 %46, label %.lr.ph29, label %.loopexit, !dbg !1167

.lr.ph29:                                         ; preds = %43
  br label %47, !dbg !1167

47:                                               ; preds = %.lr.ph29, %54
  %.128 = phi %struct.strand_t* [ %45, %.lr.ph29 ], [ %56, %54 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.128, metadata !1116, metadata !DIExpression()), !dbg !1120
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.128, i32 0, i32 0, !dbg !1168
  %49 = load i8*, i8** %48, align 8, !dbg !1168, !tbaa !658
  %50 = call i32 @strcmp(i8* %49, i8* %4) #9, !dbg !1172
  %51 = icmp eq i32 %50, 0, !dbg !1173
  br i1 %51, label %52, label %53, !dbg !1174

52:                                               ; preds = %47
  %.1.lcssa11 = phi %struct.strand_t* [ %.128, %47 ], !dbg !1175
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1.lcssa11, metadata !1116, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1.lcssa11, metadata !1118, metadata !DIExpression()), !dbg !1120
  br label %58, !dbg !1176

53:                                               ; preds = %47
  br label %54, !dbg !1178

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.128, i32 0, i32 4, !dbg !1179
  %56 = load %struct.strand_t*, %struct.strand_t** %55, align 8, !dbg !1179, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %56, metadata !1116, metadata !DIExpression()), !dbg !1120
  %57 = icmp ne %struct.strand_t* %56, null, !dbg !1167
  br i1 %57, label %47, label %..loopexit_crit_edge, !dbg !1167, !llvm.loop !1180

..loopexit_crit_edge:                             ; preds = %54
  br label %.loopexit, !dbg !1167

.loopexit:                                        ; preds = %..loopexit_crit_edge, %43
  br label %58, !dbg !1182

58:                                               ; preds = %.loopexit, %52
  %.01 = phi %struct.strand_t* [ %.1.lcssa11, %52 ], [ null, %.loopexit ], !dbg !1175
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1118, metadata !DIExpression()), !dbg !1120
  %59 = icmp eq %struct.strand_t* %.01, null, !dbg !1182
  br i1 %59, label %60, label %62, !dbg !1184

60:                                               ; preds = %58
  %61 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %4), !dbg !1185
  br label %280, !dbg !1187

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !1188
  %64 = load i32, i32* %63, align 8, !dbg !1188, !tbaa !666
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !1189
  %66 = load i32, i32* %65, align 8, !dbg !1189, !tbaa !666
  %67 = add nsw i32 %64, %66, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %67, metadata !1111, metadata !DIExpression()), !dbg !1120
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 6, !dbg !1191
  %69 = load i32, i32* %68, align 4, !dbg !1191, !tbaa !798
  %70 = icmp sgt i32 %67, %69, !dbg !1193
  br i1 %70, label %71, label %106, !dbg !1194

71:                                               ; preds = %62
  %72 = add nsw i32 %67, 10, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %72, metadata !1112, metadata !DIExpression()), !dbg !1120
  %73 = sext i32 %72 to i64, !dbg !1197
  %74 = mul i64 %73, 8, !dbg !1199
  %75 = call noalias i8* @malloc(i64 %74) #8, !dbg !1200
  %76 = bitcast i8* %75 to %struct.residue_t**, !dbg !1201
  call void @llvm.dbg.value(metadata %struct.residue_t** %76, metadata !1119, metadata !DIExpression()), !dbg !1120
  %77 = icmp eq %struct.residue_t** %76, null, !dbg !1202
  br i1 %77, label %78, label %80, !dbg !1203

78:                                               ; preds = %71
  %79 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0)), !dbg !1204
  br label %280, !dbg !1206

80:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 0, metadata !1113, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 0, metadata !1113, metadata !DIExpression()), !dbg !1120
  %81 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !1207
  %82 = load i32, i32* %81, align 8, !dbg !1207, !tbaa !666
  %83 = sext i32 %82 to i64, !dbg !1210
  %84 = icmp slt i64 0, %83, !dbg !1210
  br i1 %84, label %.lr.ph31, label %95, !dbg !1211

.lr.ph31:                                         ; preds = %80
  br label %85, !dbg !1211

85:                                               ; preds = %.lr.ph31, %91
  %indvars.iv30 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next, %91 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv30, metadata !1113, metadata !DIExpression()), !dbg !1120
  %86 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1212
  %87 = load %struct.residue_t**, %struct.residue_t*** %86, align 8, !dbg !1212, !tbaa !670
  %88 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %87, i64 %indvars.iv30, !dbg !1213
  %89 = load %struct.residue_t*, %struct.residue_t** %88, align 8, !dbg !1213, !tbaa !672
  %90 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %76, i64 %indvars.iv30, !dbg !1214
  store %struct.residue_t* %89, %struct.residue_t** %90, align 8, !dbg !1215, !tbaa !672
  br label %91, !dbg !1214

91:                                               ; preds = %85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv30, 1, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1113, metadata !DIExpression()), !dbg !1120
  %92 = load i32, i32* %81, align 8, !dbg !1207, !tbaa !666
  %93 = sext i32 %92 to i64, !dbg !1210
  %94 = icmp slt i64 %indvars.iv.next, %93, !dbg !1210
  br i1 %94, label %85, label %._crit_edge, !dbg !1211, !llvm.loop !1217

._crit_edge:                                      ; preds = %91
  br label %95, !dbg !1211

95:                                               ; preds = %._crit_edge, %80
  %96 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 6, !dbg !1219
  %97 = load i32, i32* %96, align 4, !dbg !1219, !tbaa !798
  %98 = icmp sgt i32 %97, 0, !dbg !1221
  br i1 %98, label %99, label %103, !dbg !1222

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1223
  %101 = load %struct.residue_t**, %struct.residue_t*** %100, align 8, !dbg !1223, !tbaa !670
  %102 = bitcast %struct.residue_t** %101 to i8*, !dbg !1224
  call void @free(i8* %102) #8, !dbg !1225
  br label %103, !dbg !1225

103:                                              ; preds = %99, %95
  %104 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1226
  store %struct.residue_t** %76, %struct.residue_t*** %104, align 8, !dbg !1227, !tbaa !670
  %105 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 6, !dbg !1228
  store i32 %72, i32* %105, align 4, !dbg !1229, !tbaa !798
  br label %106, !dbg !1230

106:                                              ; preds = %103, %62
  %107 = icmp ne %struct.molecule_t* %0, %3, !dbg !1231
  %108 = zext i1 %107 to i32, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %108, metadata !1115, metadata !DIExpression()), !dbg !1120
  %109 = icmp ne i32 %.09, 0, !dbg !1232
  br i1 %109, label %110, label %186, !dbg !1234

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !1235
  %112 = load i32, i32* %111, align 8, !dbg !1235, !tbaa !666
  call void @llvm.dbg.value(metadata i32 %112, metadata !1113, metadata !DIExpression()), !dbg !1120
  %113 = icmp ne i32 %108, 0, !dbg !1237
  br i1 %113, label %114, label %142, !dbg !1239

114:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i32 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  %115 = sext i32 %112 to i64, !dbg !1240
  %116 = sext i32 %112 to i64, !dbg !1240
  call void @llvm.dbg.value(metadata i64 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  %117 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !1243
  %118 = load i32, i32* %117, align 8, !dbg !1243, !tbaa !666
  %119 = sext i32 %118 to i64, !dbg !1245
  %120 = icmp slt i64 0, %119, !dbg !1245
  br i1 %120, label %.lr.ph55, label %141, !dbg !1246

.lr.ph55:                                         ; preds = %114
  br label %121, !dbg !1246

121:                                              ; preds = %.lr.ph55, %137
  %indvars.iv2353 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next24, %137 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2353, metadata !1114, metadata !DIExpression()), !dbg !1120
  %122 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7, !dbg !1247
  %123 = load %struct.residue_t**, %struct.residue_t*** %122, align 8, !dbg !1247, !tbaa !670
  %124 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %123, i64 %indvars.iv2353, !dbg !1249
  %125 = load %struct.residue_t*, %struct.residue_t** %124, align 8, !dbg !1249, !tbaa !672
  %126 = call %struct.residue_t* @copyresidue(%struct.residue_t* %125), !dbg !1250
  %127 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1251
  %128 = load %struct.residue_t**, %struct.residue_t*** %127, align 8, !dbg !1251, !tbaa !670
  %129 = add nsw i64 %115, %indvars.iv2353, !dbg !1252
  %130 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %128, i64 %129, !dbg !1253
  store %struct.residue_t* %126, %struct.residue_t** %130, align 8, !dbg !1254, !tbaa !672
  %131 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1255
  %132 = load %struct.residue_t**, %struct.residue_t*** %131, align 8, !dbg !1255, !tbaa !670
  %133 = add nsw i64 %116, %indvars.iv2353, !dbg !1256
  %134 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %132, i64 %133, !dbg !1257
  %135 = load %struct.residue_t*, %struct.residue_t** %134, align 8, !dbg !1257, !tbaa !672
  %136 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %135, i32 0, i32 9, !dbg !1258
  store %struct.strand_t* %.02, %struct.strand_t** %136, align 8, !dbg !1259, !tbaa !914
  br label %137, !dbg !1260

137:                                              ; preds = %121
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv2353, 1, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next24, metadata !1114, metadata !DIExpression()), !dbg !1120
  %138 = load i32, i32* %117, align 8, !dbg !1243, !tbaa !666
  %139 = sext i32 %138 to i64, !dbg !1245
  %140 = icmp slt i64 %indvars.iv.next24, %139, !dbg !1245
  br i1 %140, label %121, label %._crit_edge56, !dbg !1246, !llvm.loop !1262

._crit_edge56:                                    ; preds = %137
  br label %141, !dbg !1246

141:                                              ; preds = %._crit_edge56, %114
  br label %169, !dbg !1264

142:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i32 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  %143 = sext i32 %112 to i64, !dbg !1265
  %144 = sext i32 %112 to i64, !dbg !1265
  call void @llvm.dbg.value(metadata i64 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  %145 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !1268
  %146 = load i32, i32* %145, align 8, !dbg !1268, !tbaa !666
  %147 = sext i32 %146 to i64, !dbg !1270
  %148 = icmp slt i64 0, %147, !dbg !1270
  br i1 %148, label %.lr.ph51, label %168, !dbg !1271

.lr.ph51:                                         ; preds = %142
  br label %149, !dbg !1271

149:                                              ; preds = %.lr.ph51, %164
  %indvars.iv2149 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next22, %164 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2149, metadata !1114, metadata !DIExpression()), !dbg !1120
  %150 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7, !dbg !1272
  %151 = load %struct.residue_t**, %struct.residue_t*** %150, align 8, !dbg !1272, !tbaa !670
  %152 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %151, i64 %indvars.iv2149, !dbg !1274
  %153 = load %struct.residue_t*, %struct.residue_t** %152, align 8, !dbg !1274, !tbaa !672
  %154 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1275
  %155 = load %struct.residue_t**, %struct.residue_t*** %154, align 8, !dbg !1275, !tbaa !670
  %156 = add nsw i64 %143, %indvars.iv2149, !dbg !1276
  %157 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %155, i64 %156, !dbg !1277
  store %struct.residue_t* %153, %struct.residue_t** %157, align 8, !dbg !1278, !tbaa !672
  %158 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1279
  %159 = load %struct.residue_t**, %struct.residue_t*** %158, align 8, !dbg !1279, !tbaa !670
  %160 = add nsw i64 %144, %indvars.iv2149, !dbg !1280
  %161 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %159, i64 %160, !dbg !1281
  %162 = load %struct.residue_t*, %struct.residue_t** %161, align 8, !dbg !1281, !tbaa !672
  %163 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %162, i32 0, i32 9, !dbg !1282
  store %struct.strand_t* %.02, %struct.strand_t** %163, align 8, !dbg !1283, !tbaa !914
  br label %164, !dbg !1284

164:                                              ; preds = %149
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv2149, 1, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next22, metadata !1114, metadata !DIExpression()), !dbg !1120
  %165 = load i32, i32* %145, align 8, !dbg !1268, !tbaa !666
  %166 = sext i32 %165 to i64, !dbg !1270
  %167 = icmp slt i64 %indvars.iv.next22, %166, !dbg !1270
  br i1 %167, label %149, label %._crit_edge52, !dbg !1271, !llvm.loop !1286

._crit_edge52:                                    ; preds = %164
  br label %168, !dbg !1271

168:                                              ; preds = %._crit_edge52, %142
  br label %169

169:                                              ; preds = %168, %141
  call void @llvm.dbg.value(metadata i32 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  %170 = sext i32 %112 to i64, !dbg !1288
  call void @llvm.dbg.value(metadata i64 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  %171 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !1290
  %172 = load i32, i32* %171, align 8, !dbg !1290, !tbaa !666
  %173 = sext i32 %172 to i64, !dbg !1292
  %174 = icmp slt i64 0, %173, !dbg !1292
  br i1 %174, label %.lr.ph59, label %185, !dbg !1293

.lr.ph59:                                         ; preds = %169
  br label %175, !dbg !1293

175:                                              ; preds = %.lr.ph59, %181
  %indvars.iv2557 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next26, %181 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2557, metadata !1114, metadata !DIExpression()), !dbg !1120
  %176 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1294
  %177 = load %struct.residue_t**, %struct.residue_t*** %176, align 8, !dbg !1294, !tbaa !670
  %178 = add nsw i64 %170, %indvars.iv2557, !dbg !1295
  %179 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %177, i64 %178, !dbg !1296
  %180 = load %struct.residue_t*, %struct.residue_t** %179, align 8, !dbg !1296, !tbaa !672
  call void @fixextbonds(%struct.residue_t* %180, i32 %112), !dbg !1297
  br label %181, !dbg !1297

181:                                              ; preds = %175
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv2557, 1, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next26, metadata !1114, metadata !DIExpression()), !dbg !1120
  %182 = load i32, i32* %171, align 8, !dbg !1290, !tbaa !666
  %183 = sext i32 %182 to i64, !dbg !1292
  %184 = icmp slt i64 %indvars.iv.next26, %183, !dbg !1292
  br i1 %184, label %175, label %._crit_edge60, !dbg !1293, !llvm.loop !1299

._crit_edge60:                                    ; preds = %181
  br label %185, !dbg !1293

185:                                              ; preds = %._crit_edge60, %169
  br label %274, !dbg !1301

186:                                              ; preds = %106
  %187 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !1302
  %188 = load i32, i32* %187, align 8, !dbg !1302, !tbaa !666
  call void @llvm.dbg.value(metadata i32 %188, metadata !1114, metadata !DIExpression()), !dbg !1120
  %189 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !1304
  %190 = load i32, i32* %189, align 8, !dbg !1304, !tbaa !666
  call void @llvm.dbg.value(metadata i32 %190, metadata !1113, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1120
  %191 = add i32 %190, -1, !dbg !1306
  %192 = sext i32 %191 to i64, !dbg !1306
  %193 = sext i32 %188 to i64, !dbg !1306
  call void @llvm.dbg.value(metadata i64 %192, metadata !1113, metadata !DIExpression()), !dbg !1120
  %194 = icmp sge i64 %192, 0, !dbg !1307
  br i1 %194, label %.lr.ph34, label %206, !dbg !1309

.lr.ph34:                                         ; preds = %186
  br label %195, !dbg !1309

195:                                              ; preds = %.lr.ph34, %204
  %indvars.iv1332 = phi i64 [ %192, %.lr.ph34 ], [ %indvars.iv.next14, %204 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1332, metadata !1113, metadata !DIExpression()), !dbg !1120
  %196 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1310
  %197 = load %struct.residue_t**, %struct.residue_t*** %196, align 8, !dbg !1310, !tbaa !670
  %198 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %197, i64 %indvars.iv1332, !dbg !1311
  %199 = load %struct.residue_t*, %struct.residue_t** %198, align 8, !dbg !1311, !tbaa !672
  %200 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1312
  %201 = load %struct.residue_t**, %struct.residue_t*** %200, align 8, !dbg !1312, !tbaa !670
  %202 = add nsw i64 %193, %indvars.iv1332, !dbg !1313
  %203 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %201, i64 %202, !dbg !1314
  store %struct.residue_t* %199, %struct.residue_t** %203, align 8, !dbg !1315, !tbaa !672
  br label %204, !dbg !1314

204:                                              ; preds = %195
  %indvars.iv.next14 = add nsw i64 %indvars.iv1332, -1, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next14, metadata !1113, metadata !DIExpression()), !dbg !1120
  %205 = icmp sge i64 %indvars.iv.next14, 0, !dbg !1307
  br i1 %205, label %195, label %._crit_edge35, !dbg !1309, !llvm.loop !1317

._crit_edge35:                                    ; preds = %204
  br label %206, !dbg !1309

206:                                              ; preds = %._crit_edge35, %186
  %207 = icmp ne i32 %108, 0, !dbg !1319
  br i1 %207, label %208, label %233, !dbg !1321

208:                                              ; preds = %206
  call void @llvm.dbg.value(metadata i32 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  %209 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !1322
  %210 = load i32, i32* %209, align 8, !dbg !1322, !tbaa !666
  %211 = sext i32 %210 to i64, !dbg !1326
  %212 = icmp slt i64 0, %211, !dbg !1326
  br i1 %212, label %.lr.ph42, label %231, !dbg !1327

.lr.ph42:                                         ; preds = %208
  br label %213, !dbg !1327

213:                                              ; preds = %.lr.ph42, %227
  %indvars.iv1740 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next18, %227 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1740, metadata !1114, metadata !DIExpression()), !dbg !1120
  %214 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7, !dbg !1328
  %215 = load %struct.residue_t**, %struct.residue_t*** %214, align 8, !dbg !1328, !tbaa !670
  %216 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %215, i64 %indvars.iv1740, !dbg !1330
  %217 = load %struct.residue_t*, %struct.residue_t** %216, align 8, !dbg !1330, !tbaa !672
  %218 = call %struct.residue_t* @copyresidue(%struct.residue_t* %217), !dbg !1331
  %219 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1332
  %220 = load %struct.residue_t**, %struct.residue_t*** %219, align 8, !dbg !1332, !tbaa !670
  %221 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %220, i64 %indvars.iv1740, !dbg !1333
  store %struct.residue_t* %218, %struct.residue_t** %221, align 8, !dbg !1334, !tbaa !672
  %222 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1335
  %223 = load %struct.residue_t**, %struct.residue_t*** %222, align 8, !dbg !1335, !tbaa !670
  %224 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %223, i64 %indvars.iv1740, !dbg !1336
  %225 = load %struct.residue_t*, %struct.residue_t** %224, align 8, !dbg !1336, !tbaa !672
  %226 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %225, i32 0, i32 9, !dbg !1337
  store %struct.strand_t* %.02, %struct.strand_t** %226, align 8, !dbg !1338, !tbaa !914
  br label %227, !dbg !1339

227:                                              ; preds = %213
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv1740, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next18, metadata !1114, metadata !DIExpression()), !dbg !1120
  %228 = load i32, i32* %209, align 8, !dbg !1322, !tbaa !666
  %229 = sext i32 %228 to i64, !dbg !1326
  %230 = icmp slt i64 %indvars.iv.next18, %229, !dbg !1326
  br i1 %230, label %213, label %._crit_edge43, !dbg !1327, !llvm.loop !1341

._crit_edge43:                                    ; preds = %227
  %split44 = phi i64 [ %indvars.iv.next18, %227 ]
  br label %231, !dbg !1327

231:                                              ; preds = %._crit_edge43, %208
  %.3.lcssa.wide = phi i64 [ %split44, %._crit_edge43 ], [ 0, %208 ]
  %232 = trunc i64 %.3.lcssa.wide to i32, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %232, metadata !1114, metadata !DIExpression()), !dbg !1120
  br label %257, !dbg !1343

233:                                              ; preds = %206
  call void @llvm.dbg.value(metadata i32 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 0, metadata !1114, metadata !DIExpression()), !dbg !1120
  %234 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !1344
  %235 = load i32, i32* %234, align 8, !dbg !1344, !tbaa !666
  %236 = sext i32 %235 to i64, !dbg !1348
  %237 = icmp slt i64 0, %236, !dbg !1348
  br i1 %237, label %.lr.ph38, label %255, !dbg !1349

.lr.ph38:                                         ; preds = %233
  br label %238, !dbg !1349

238:                                              ; preds = %.lr.ph38, %251
  %indvars.iv1536 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next16, %251 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1536, metadata !1114, metadata !DIExpression()), !dbg !1120
  %239 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7, !dbg !1350
  %240 = load %struct.residue_t**, %struct.residue_t*** %239, align 8, !dbg !1350, !tbaa !670
  %241 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %240, i64 %indvars.iv1536, !dbg !1352
  %242 = load %struct.residue_t*, %struct.residue_t** %241, align 8, !dbg !1352, !tbaa !672
  %243 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1353
  %244 = load %struct.residue_t**, %struct.residue_t*** %243, align 8, !dbg !1353, !tbaa !670
  %245 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %244, i64 %indvars.iv1536, !dbg !1354
  store %struct.residue_t* %242, %struct.residue_t** %245, align 8, !dbg !1355, !tbaa !672
  %246 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1356
  %247 = load %struct.residue_t**, %struct.residue_t*** %246, align 8, !dbg !1356, !tbaa !670
  %248 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %247, i64 %indvars.iv1536, !dbg !1357
  %249 = load %struct.residue_t*, %struct.residue_t** %248, align 8, !dbg !1357, !tbaa !672
  %250 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %249, i32 0, i32 9, !dbg !1358
  store %struct.strand_t* %.02, %struct.strand_t** %250, align 8, !dbg !1359, !tbaa !914
  br label %251, !dbg !1360

251:                                              ; preds = %238
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv1536, 1, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next16, metadata !1114, metadata !DIExpression()), !dbg !1120
  %252 = load i32, i32* %234, align 8, !dbg !1344, !tbaa !666
  %253 = sext i32 %252 to i64, !dbg !1348
  %254 = icmp slt i64 %indvars.iv.next16, %253, !dbg !1348
  br i1 %254, label %238, label %._crit_edge39, !dbg !1349, !llvm.loop !1362

._crit_edge39:                                    ; preds = %251
  %split = phi i64 [ %indvars.iv.next16, %251 ]
  br label %255, !dbg !1349

255:                                              ; preds = %._crit_edge39, %233
  %.4.lcssa.wide = phi i64 [ %split, %._crit_edge39 ], [ 0, %233 ]
  %256 = trunc i64 %.4.lcssa.wide to i32, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %256, metadata !1114, metadata !DIExpression()), !dbg !1120
  br label %257

257:                                              ; preds = %255, %231
  %.5 = phi i32 [ %232, %231 ], [ %256, %255 ], !dbg !1364
  call void @llvm.dbg.value(metadata i32 %.5, metadata !1114, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i32 0, metadata !1113, metadata !DIExpression()), !dbg !1120
  %258 = sext i32 %.5 to i64, !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !1113, metadata !DIExpression()), !dbg !1120
  %259 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !1367
  %260 = load i32, i32* %259, align 8, !dbg !1367, !tbaa !666
  %261 = sext i32 %260 to i64, !dbg !1369
  %262 = icmp slt i64 0, %261, !dbg !1369
  br i1 %262, label %.lr.ph47, label %273, !dbg !1370

.lr.ph47:                                         ; preds = %257
  br label %263, !dbg !1370

263:                                              ; preds = %.lr.ph47, %269
  %indvars.iv1945 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next20, %269 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1945, metadata !1113, metadata !DIExpression()), !dbg !1120
  %264 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 7, !dbg !1371
  %265 = load %struct.residue_t**, %struct.residue_t*** %264, align 8, !dbg !1371, !tbaa !670
  %266 = add nuw nsw i64 %258, %indvars.iv1945, !dbg !1373
  %267 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %265, i64 %266, !dbg !1374
  %268 = load %struct.residue_t*, %struct.residue_t** %267, align 8, !dbg !1374, !tbaa !672
  call void @fixextbonds(%struct.residue_t* %268, i32 %.5), !dbg !1375
  br label %269, !dbg !1376

269:                                              ; preds = %263
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv1945, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next20, metadata !1113, metadata !DIExpression()), !dbg !1120
  %270 = load i32, i32* %259, align 8, !dbg !1367, !tbaa !666
  %271 = sext i32 %270 to i64, !dbg !1369
  %272 = icmp slt i64 %indvars.iv.next20, %271, !dbg !1369
  br i1 %272, label %263, label %._crit_edge48, !dbg !1370, !llvm.loop !1378

._crit_edge48:                                    ; preds = %269
  br label %273, !dbg !1370

273:                                              ; preds = %._crit_edge48, %257
  br label %274

274:                                              ; preds = %273, %185
  %275 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !1380
  store i32 %67, i32* %275, align 8, !dbg !1381, !tbaa !666
  %276 = icmp ne i32 %108, 0, !dbg !1382
  br i1 %276, label %278, label %277, !dbg !1384

277:                                              ; preds = %274
  call void @freestrand(%struct.molecule_t* %0, i8* %4), !dbg !1385
  br label %278, !dbg !1385

278:                                              ; preds = %277, %274
  %279 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !1386
  store i32 0, i32* %279, align 8, !dbg !1387, !tbaa !507
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !1388
  br label %280, !dbg !1389

280:                                              ; preds = %278, %78, %60, %41, %20
  %.0 = phi i32 [ 1, %41 ], [ 1, %60 ], [ 1, %78 ], [ 0, %278 ], [ 1, %20 ], !dbg !1120
  ret i32 %.0, !dbg !1390
}

; Function Attrs: nounwind uwtable
define internal void @fixextbonds(%struct.residue_t* %0, i32 %1) #0 !dbg !1391 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %1, metadata !1396, metadata !DIExpression()), !dbg !1398
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 10, !dbg !1399
  %4 = load %struct.extbond_t*, %struct.extbond_t** %3, align 8, !dbg !1399, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.extbond_t* %4, metadata !1397, metadata !DIExpression()), !dbg !1398
  %5 = icmp ne %struct.extbond_t* %4, null, !dbg !1401
  br i1 %5, label %.lr.ph, label %14, !dbg !1401

.lr.ph:                                           ; preds = %2
  br label %6, !dbg !1401

6:                                                ; preds = %.lr.ph, %10
  %.01 = phi %struct.extbond_t* [ %4, %.lr.ph ], [ %12, %10 ]
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.01, metadata !1397, metadata !DIExpression()), !dbg !1398
  %7 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.01, i32 0, i32 2, !dbg !1402
  %8 = load i32, i32* %7, align 4, !dbg !1404, !tbaa !1068
  %9 = add nsw i32 %8, %1, !dbg !1404
  store i32 %9, i32* %7, align 4, !dbg !1404, !tbaa !1068
  br label %10, !dbg !1405

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.01, i32 0, i32 0, !dbg !1406
  %12 = load %struct.extbond_t*, %struct.extbond_t** %11, align 8, !dbg !1406, !tbaa !549
  call void @llvm.dbg.value(metadata %struct.extbond_t* %12, metadata !1397, metadata !DIExpression()), !dbg !1398
  %13 = icmp ne %struct.extbond_t* %12, null, !dbg !1401
  br i1 %13, label %6, label %._crit_edge, !dbg !1401, !llvm.loop !1407

._crit_edge:                                      ; preds = %10
  br label %14, !dbg !1401

14:                                               ; preds = %._crit_edge, %2
  ret void, !dbg !1409
}

; Function Attrs: nounwind uwtable
define internal void @freestrand(%struct.molecule_t* %0, i8* %1) #0 !dbg !1410 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1414, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %1, metadata !1415, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1418, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1417, metadata !DIExpression()), !dbg !1419
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1420
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1420, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1417, metadata !DIExpression()), !dbg !1419
  %5 = icmp ne %struct.strand_t* %4, null, !dbg !1422
  br i1 %5, label %.lr.ph, label %.loopexit, !dbg !1422

.lr.ph:                                           ; preds = %2
  br label %6, !dbg !1422

6:                                                ; preds = %.lr.ph, %13
  %.028 = phi %struct.strand_t* [ %4, %.lr.ph ], [ %15, %13 ]
  %.037 = phi %struct.strand_t* [ null, %.lr.ph ], [ %.028, %13 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.028, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.strand_t* %.037, metadata !1417, metadata !DIExpression()), !dbg !1419
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.028, i32 0, i32 0, !dbg !1423
  %8 = load i8*, i8** %7, align 8, !dbg !1423, !tbaa !658
  %9 = call i32 @strcmp(i8* %8, i8* %1) #9, !dbg !1427
  %10 = icmp eq i32 %9, 0, !dbg !1428
  br i1 %10, label %11, label %12, !dbg !1429

11:                                               ; preds = %6
  %.03.lcssa5 = phi %struct.strand_t* [ %.037, %6 ], !dbg !1430
  %.02.lcssa4 = phi %struct.strand_t* [ %.028, %6 ], !dbg !1430
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03.lcssa5, metadata !1417, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02.lcssa4, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02.lcssa4, metadata !1418, metadata !DIExpression()), !dbg !1419
  br label %17, !dbg !1431

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %struct.strand_t* %.028, metadata !1417, metadata !DIExpression()), !dbg !1419
  br label %13, !dbg !1433

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.028, i32 0, i32 4, !dbg !1434
  %15 = load %struct.strand_t*, %struct.strand_t** %14, align 8, !dbg !1434, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %15, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.strand_t* %.028, metadata !1417, metadata !DIExpression()), !dbg !1419
  %16 = icmp ne %struct.strand_t* %15, null, !dbg !1422
  br i1 %16, label %6, label %..loopexit_crit_edge, !dbg !1422, !llvm.loop !1435

..loopexit_crit_edge:                             ; preds = %13
  %split = phi %struct.strand_t* [ %.028, %13 ]
  br label %.loopexit, !dbg !1422

.loopexit:                                        ; preds = %..loopexit_crit_edge, %2
  %.03.lcssa = phi %struct.strand_t* [ %split, %..loopexit_crit_edge ], [ null, %2 ], !dbg !1430
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03.lcssa, metadata !1417, metadata !DIExpression()), !dbg !1419
  br label %17, !dbg !1437

17:                                               ; preds = %.loopexit, %11
  %.036 = phi %struct.strand_t* [ %.03.lcssa5, %11 ], [ %.03.lcssa, %.loopexit ]
  %.01 = phi %struct.strand_t* [ %.02.lcssa4, %11 ], [ null, %.loopexit ], !dbg !1430
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1418, metadata !DIExpression()), !dbg !1419
  %18 = icmp eq %struct.strand_t* %.01, null, !dbg !1437
  br i1 %18, label %19, label %21, !dbg !1439

19:                                               ; preds = %17
  %20 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %1), !dbg !1440
  br label %35, !dbg !1442

21:                                               ; preds = %17
  %22 = icmp eq %struct.strand_t* %.036, null, !dbg !1443
  br i1 %22, label %23, label %27, !dbg !1445

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 4, !dbg !1446
  %25 = load %struct.strand_t*, %struct.strand_t** %24, align 8, !dbg !1446, !tbaa !654
  %26 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1447
  store %struct.strand_t* %25, %struct.strand_t** %26, align 8, !dbg !1448, !tbaa !501
  br label %31, !dbg !1449

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 4, !dbg !1450
  %29 = load %struct.strand_t*, %struct.strand_t** %28, align 8, !dbg !1450, !tbaa !654
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.036, i32 0, i32 4, !dbg !1451
  store %struct.strand_t* %29, %struct.strand_t** %30, align 8, !dbg !1452, !tbaa !654
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1, !dbg !1453
  %33 = load i32, i32* %32, align 8, !dbg !1454, !tbaa !495
  %34 = add nsw i32 %33, -1, !dbg !1454
  store i32 %34, i32* %32, align 8, !dbg !1454, !tbaa !495
  br label %35, !dbg !1455

35:                                               ; preds = %31, %19
  %.0 = phi i32 [ 1, %19 ], [ 0, %31 ]
  switch i32 %.0, label %37 [
    i32 0, label %36
    i32 1, label %36
  ]

36:                                               ; preds = %35, %35
  ret void, !dbg !1455

37:                                               ; preds = %35
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @upd_molnumbers(%struct.molecule_t* %0) #0 !dbg !1456 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1460, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1461, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1466, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1470
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1471
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !1471, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !1467, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1461, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1466, metadata !DIExpression()), !dbg !1470
  %4 = icmp ne %struct.strand_t* %3, null, !dbg !1473
  br i1 %4, label %.lr.ph29, label %51, !dbg !1473

.lr.ph29:                                         ; preds = %1
  br label %5, !dbg !1473

5:                                                ; preds = %.lr.ph29, %46
  %.027 = phi %struct.strand_t* [ %3, %.lr.ph29 ], [ %49, %46 ]
  %.0126 = phi i32 [ 0, %.lr.ph29 ], [ %47, %46 ]
  %.0525 = phi i32 [ 0, %.lr.ph29 ], [ %.16.lcssa, %46 ]
  %.0724 = phi i32 [ 0, %.lr.ph29 ], [ %.18.lcssa, %46 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.027, metadata !1467, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.0126, metadata !1461, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.0525, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.0724, metadata !1466, metadata !DIExpression()), !dbg !1470
  %6 = add nuw nsw i32 %.0126, 1, !dbg !1474
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.027, i32 0, i32 1, !dbg !1477
  store i32 %6, i32* %7, align 8, !dbg !1478, !tbaa !785
  call void @llvm.dbg.value(metadata i32 0, metadata !1462, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1463, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 0, metadata !1462, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.0525, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.0724, metadata !1466, metadata !DIExpression()), !dbg !1470
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.027, i32 0, i32 5, !dbg !1479
  %9 = load i32, i32* %8, align 8, !dbg !1479, !tbaa !666
  %10 = sext i32 %9 to i64, !dbg !1482
  %11 = icmp slt i64 0, %10, !dbg !1482
  br i1 %11, label %.lr.ph20, label %45, !dbg !1483

.lr.ph20:                                         ; preds = %5
  br label %12, !dbg !1483

12:                                               ; preds = %.lr.ph20, %40
  %.0318 = phi i32 [ 0, %.lr.ph20 ], [ %.1.lcssa, %40 ]
  %.1617 = phi i32 [ %.0525, %.lr.ph20 ], [ %.2.lcssa, %40 ]
  %.1816 = phi i32 [ %.0724, %.lr.ph20 ], [ %41, %40 ]
  %indvars.iv915 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next10, %40 ]
  call void @llvm.dbg.value(metadata i32 %.0318, metadata !1463, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.1617, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.1816, metadata !1466, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %indvars.iv915, metadata !1462, metadata !DIExpression()), !dbg !1470
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.027, i32 0, i32 7, !dbg !1484
  %14 = load %struct.residue_t**, %struct.residue_t*** %13, align 8, !dbg !1484, !tbaa !670
  %15 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %14, i64 %indvars.iv915, !dbg !1486
  %16 = load %struct.residue_t*, %struct.residue_t** %15, align 8, !dbg !1486, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %16, metadata !1468, metadata !DIExpression()), !dbg !1470
  %17 = add nsw i32 %.1816, 1, !dbg !1487
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 2, !dbg !1488
  store i32 %17, i32* %18, align 4, !dbg !1489, !tbaa !1490
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv915, 1, !dbg !1491
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 3, !dbg !1492
  %20 = trunc i64 %indvars.iv.next10 to i32, !dbg !1493
  store i32 %20, i32* %19, align 8, !dbg !1493, !tbaa !1494
  call void @llvm.dbg.value(metadata i32 0, metadata !1464, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.0318, metadata !1463, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 0, metadata !1464, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.1617, metadata !1465, metadata !DIExpression()), !dbg !1470
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 15, !dbg !1495
  %22 = load i32, i32* %21, align 8, !dbg !1495, !tbaa !585
  %23 = sext i32 %22 to i64, !dbg !1498
  %24 = icmp slt i64 0, %23, !dbg !1498
  br i1 %24, label %.lr.ph, label %39, !dbg !1499

.lr.ph:                                           ; preds = %12
  br label %25, !dbg !1499

25:                                               ; preds = %.lr.ph, %33
  %.113 = phi i32 [ %.0318, %.lr.ph ], [ %35, %33 ]
  %.212 = phi i32 [ %.1617, %.lr.ph ], [ %34, %33 ]
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
  call void @llvm.dbg.value(metadata i32 %.113, metadata !1463, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.212, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !1464, metadata !DIExpression()), !dbg !1470
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 17, !dbg !1500
  %27 = load %struct.atom_t*, %struct.atom_t** %26, align 8, !dbg !1500, !tbaa !582
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i64 %indvars.iv11, !dbg !1502
  call void @llvm.dbg.value(metadata %struct.atom_t* %28, metadata !1469, metadata !DIExpression()), !dbg !1470
  %29 = add nsw i32 %.113, 1, !dbg !1503
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i32 0, i32 15, !dbg !1504
  store i32 %29, i32* %30, align 4, !dbg !1505, !tbaa !1506
  %31 = add nsw i32 %.212, 1, !dbg !1507
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i32 0, i32 14, !dbg !1508
  store i32 %31, i32* %32, align 8, !dbg !1509, !tbaa !1510
  br label %33, !dbg !1511

33:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1464, metadata !DIExpression()), !dbg !1470
  %34 = add nsw i32 %.212, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i32 %34, metadata !1465, metadata !DIExpression()), !dbg !1470
  %35 = add nsw i32 %.113, 1, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %35, metadata !1463, metadata !DIExpression()), !dbg !1470
  %36 = load i32, i32* %21, align 8, !dbg !1495, !tbaa !585
  %37 = sext i32 %36 to i64, !dbg !1498
  %38 = icmp slt i64 %indvars.iv.next, %37, !dbg !1498
  br i1 %38, label %25, label %._crit_edge, !dbg !1499, !llvm.loop !1515

._crit_edge:                                      ; preds = %33
  %split = phi i32 [ %34, %33 ]
  %split14 = phi i32 [ %35, %33 ]
  br label %39, !dbg !1499

39:                                               ; preds = %._crit_edge, %12
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.1617, %12 ], !dbg !1517
  %.1.lcssa = phi i32 [ %split14, %._crit_edge ], [ %.0318, %12 ], !dbg !1518
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1463, metadata !DIExpression()), !dbg !1470
  br label %40, !dbg !1519

40:                                               ; preds = %39
  %41 = add nsw i32 %.1816, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !1462, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1463, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %41, metadata !1466, metadata !DIExpression()), !dbg !1470
  %42 = load i32, i32* %8, align 8, !dbg !1479, !tbaa !666
  %43 = sext i32 %42 to i64, !dbg !1482
  %44 = icmp slt i64 %indvars.iv.next10, %43, !dbg !1482
  br i1 %44, label %12, label %._crit_edge21, !dbg !1483, !llvm.loop !1521

._crit_edge21:                                    ; preds = %40
  %split22 = phi i32 [ %41, %40 ]
  %split23 = phi i32 [ %.2.lcssa, %40 ]
  br label %45, !dbg !1483

45:                                               ; preds = %._crit_edge21, %5
  %.18.lcssa = phi i32 [ %split22, %._crit_edge21 ], [ %.0724, %5 ], !dbg !1517
  %.16.lcssa = phi i32 [ %split23, %._crit_edge21 ], [ %.0525, %5 ], !dbg !1523
  call void @llvm.dbg.value(metadata i32 %.18.lcssa, metadata !1466, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !1465, metadata !DIExpression()), !dbg !1470
  br label %46, !dbg !1524

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.0126, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %47, metadata !1461, metadata !DIExpression()), !dbg !1470
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.027, i32 0, i32 4, !dbg !1526
  %49 = load %struct.strand_t*, %struct.strand_t** %48, align 8, !dbg !1526, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %49, metadata !1467, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.18.lcssa, metadata !1466, metadata !DIExpression()), !dbg !1470
  %50 = icmp ne %struct.strand_t* %49, null, !dbg !1473
  br i1 %50, label %5, label %._crit_edge30, !dbg !1473, !llvm.loop !1527

._crit_edge30:                                    ; preds = %46
  %split31 = phi i32 [ %.18.lcssa, %46 ]
  %split32 = phi i32 [ %.16.lcssa, %46 ]
  %split33 = phi i32 [ %47, %46 ]
  br label %51, !dbg !1473

51:                                               ; preds = %._crit_edge30, %1
  %.07.lcssa = phi i32 [ %split31, %._crit_edge30 ], [ 0, %1 ], !dbg !1529
  %.05.lcssa = phi i32 [ %split32, %._crit_edge30 ], [ 0, %1 ], !dbg !1523
  %.01.lcssa = phi i32 [ %split33, %._crit_edge30 ], [ 0, %1 ], !dbg !1517
  call void @llvm.dbg.value(metadata i32 %.07.lcssa, metadata !1466, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.05.lcssa, metadata !1465, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !1461, metadata !DIExpression()), !dbg !1470
  %52 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1, !dbg !1530
  store i32 %.01.lcssa, i32* %52, align 8, !dbg !1531, !tbaa !495
  %53 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 3, !dbg !1532
  store i32 %.07.lcssa, i32* %53, align 8, !dbg !1533, !tbaa !504
  %54 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 4, !dbg !1534
  store i32 %.05.lcssa, i32* %54, align 4, !dbg !1535, !tbaa !1536
  %55 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !1537
  store i32 1, i32* %55, align 8, !dbg !1538, !tbaa !507
  ret void, !dbg !1539
}

; Function Attrs: nounwind uwtable
define dso_local i32 @countmolstrands(%struct.molecule_t* %0, i8* %1) #0 !dbg !1540 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1542, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8* %1, metadata !1543, metadata !DIExpression()), !dbg !1546
  %3 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !1547
  call void @llvm.dbg.value(metadata i32 0, metadata !1544, metadata !DIExpression()), !dbg !1546
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1548
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1548, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1545, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i32 0, metadata !1544, metadata !DIExpression()), !dbg !1546
  %6 = icmp ne %struct.strand_t* %5, null, !dbg !1550
  br i1 %6, label %.lr.ph, label %19, !dbg !1550

.lr.ph:                                           ; preds = %2
  br label %7, !dbg !1550

7:                                                ; preds = %.lr.ph, %15
  %.03 = phi %struct.strand_t* [ %5, %.lr.ph ], [ %17, %15 ]
  %.012 = phi i32 [ 0, %.lr.ph ], [ %.1, %15 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03, metadata !1545, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1544, metadata !DIExpression()), !dbg !1546
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 2, !dbg !1551
  %9 = load i32, i32* %8, align 4, !dbg !1551, !tbaa !788
  %10 = and i32 %9, 1, !dbg !1555
  %11 = icmp ne i32 %10, 0, !dbg !1555
  br i1 %11, label %12, label %14, !dbg !1556

12:                                               ; preds = %7
  %13 = add nsw i32 %.012, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %13, metadata !1544, metadata !DIExpression()), !dbg !1546
  br label %14, !dbg !1558

14:                                               ; preds = %12, %7
  %.1 = phi i32 [ %13, %12 ], [ %.012, %7 ], !dbg !1559
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1544, metadata !DIExpression()), !dbg !1546
  br label %15, !dbg !1560

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i32 0, i32 4, !dbg !1561
  %17 = load %struct.strand_t*, %struct.strand_t** %16, align 8, !dbg !1561, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %17, metadata !1545, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1544, metadata !DIExpression()), !dbg !1546
  %18 = icmp ne %struct.strand_t* %17, null, !dbg !1550
  br i1 %18, label %7, label %._crit_edge, !dbg !1550, !llvm.loop !1562

._crit_edge:                                      ; preds = %15
  %split = phi i32 [ %.1, %15 ]
  br label %19, !dbg !1550

19:                                               ; preds = %._crit_edge, %2
  %.01.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ], !dbg !1559
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !1544, metadata !DIExpression()), !dbg !1546
  ret i32 %.01.lcssa, !dbg !1564
}

declare !dbg !253 dso_local i32 @select_atoms(%struct.molecule_t*, i8*) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @countstrandresidues(%struct.molecule_t* %0, i32 %1) #0 !dbg !1565 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1569, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 %1, metadata !1570, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 1, metadata !1572, metadata !DIExpression()), !dbg !1573
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1574
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1574, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !1571, metadata !DIExpression()), !dbg !1573
  br label %5, !dbg !1576

5:                                                ; preds = %13, %2
  %.01 = phi %struct.strand_t* [ %4, %2 ], [ %15, %13 ], !dbg !1577
  %.0 = phi i32 [ 1, %2 ], [ %12, %13 ], !dbg !1577
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1572, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1571, metadata !DIExpression()), !dbg !1573
  %6 = icmp ne %struct.strand_t* %.01, null, !dbg !1578
  br i1 %6, label %7, label %9, !dbg !1580

7:                                                ; preds = %5
  %8 = icmp slt i32 %.0, %1, !dbg !1581
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ false, %5 ], [ %8, %7 ], !dbg !1582
  br i1 %10, label %11, label %16, !dbg !1583

11:                                               ; preds = %9
  %12 = add nuw nsw i32 %.0, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i32 %12, metadata !1572, metadata !DIExpression()), !dbg !1573
  br label %13, !dbg !1586

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 4, !dbg !1587
  %15 = load %struct.strand_t*, %struct.strand_t** %14, align 8, !dbg !1587, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %15, metadata !1571, metadata !DIExpression()), !dbg !1573
  br label %5, !dbg !1588, !llvm.loop !1589

16:                                               ; preds = %9
  %.01.lcssa = phi %struct.strand_t* [ %.01, %9 ], !dbg !1577
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01.lcssa, metadata !1571, metadata !DIExpression()), !dbg !1573
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01.lcssa, i32 0, i32 5, !dbg !1591
  %18 = load i32, i32* %17, align 8, !dbg !1591, !tbaa !666
  ret i32 %18, !dbg !1592
}

; Function Attrs: nounwind uwtable
define dso_local i32 @countmolres(%struct.molecule_t* %0, i8* %1) #0 !dbg !1593 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1595, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8* %1, metadata !1596, metadata !DIExpression()), !dbg !1601
  %3 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !1602
  call void @llvm.dbg.value(metadata i32 0, metadata !1598, metadata !DIExpression()), !dbg !1601
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1603
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1603, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1599, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 0, metadata !1598, metadata !DIExpression()), !dbg !1601
  %6 = icmp ne %struct.strand_t* %5, null, !dbg !1605
  br i1 %6, label %.lr.ph8, label %33, !dbg !1605

.lr.ph8:                                          ; preds = %2
  br label %7, !dbg !1605

7:                                                ; preds = %.lr.ph8, %29
  %.06 = phi %struct.strand_t* [ %5, %.lr.ph8 ], [ %31, %29 ]
  %.015 = phi i32 [ 0, %.lr.ph8 ], [ %.1.lcssa, %29 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.06, metadata !1599, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %.015, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 0, metadata !1597, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %.015, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 0, metadata !1597, metadata !DIExpression()), !dbg !1601
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.06, i32 0, i32 5, !dbg !1606
  %9 = load i32, i32* %8, align 8, !dbg !1606, !tbaa !666
  %10 = sext i32 %9 to i64, !dbg !1611
  %11 = icmp slt i64 0, %10, !dbg !1611
  br i1 %11, label %.lr.ph, label %28, !dbg !1612

.lr.ph:                                           ; preds = %7
  br label %12, !dbg !1612

12:                                               ; preds = %.lr.ph, %24
  %.14 = phi i32 [ %.015, %.lr.ph ], [ %.2, %24 ]
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  call void @llvm.dbg.value(metadata i32 %.14, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !1597, metadata !DIExpression()), !dbg !1601
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.06, i32 0, i32 7, !dbg !1613
  %14 = load %struct.residue_t**, %struct.residue_t*** %13, align 8, !dbg !1613, !tbaa !670
  %15 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %14, i64 %indvars.iv3, !dbg !1615
  %16 = load %struct.residue_t*, %struct.residue_t** %15, align 8, !dbg !1615, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %16, metadata !1600, metadata !DIExpression()), !dbg !1601
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 6, !dbg !1616
  %18 = load i32, i32* %17, align 8, !dbg !1616, !tbaa !1618
  %19 = and i32 %18, 1, !dbg !1619
  %20 = icmp ne i32 %19, 0, !dbg !1619
  br i1 %20, label %21, label %23, !dbg !1620

21:                                               ; preds = %12
  %22 = add nsw i32 %.14, 1, !dbg !1621
  call void @llvm.dbg.value(metadata i32 %22, metadata !1598, metadata !DIExpression()), !dbg !1601
  br label %23, !dbg !1622

23:                                               ; preds = %21, %12
  %.2 = phi i32 [ %22, %21 ], [ %.14, %12 ], !dbg !1623
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1598, metadata !DIExpression()), !dbg !1601
  br label %24, !dbg !1624

24:                                               ; preds = %23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1597, metadata !DIExpression()), !dbg !1601
  %25 = load i32, i32* %8, align 8, !dbg !1606, !tbaa !666
  %26 = sext i32 %25 to i64, !dbg !1611
  %27 = icmp slt i64 %indvars.iv.next, %26, !dbg !1611
  br i1 %27, label %12, label %._crit_edge, !dbg !1612, !llvm.loop !1626

._crit_edge:                                      ; preds = %24
  %split = phi i32 [ %.2, %24 ]
  br label %28, !dbg !1612

28:                                               ; preds = %._crit_edge, %7
  %.1.lcssa = phi i32 [ %split, %._crit_edge ], [ %.015, %7 ], !dbg !1623
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1598, metadata !DIExpression()), !dbg !1601
  br label %29, !dbg !1628

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.06, i32 0, i32 4, !dbg !1629
  %31 = load %struct.strand_t*, %struct.strand_t** %30, align 8, !dbg !1629, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %31, metadata !1599, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1598, metadata !DIExpression()), !dbg !1601
  %32 = icmp ne %struct.strand_t* %31, null, !dbg !1605
  br i1 %32, label %7, label %._crit_edge9, !dbg !1605, !llvm.loop !1630

._crit_edge9:                                     ; preds = %29
  %split10 = phi i32 [ %.1.lcssa, %29 ]
  br label %33, !dbg !1605

33:                                               ; preds = %._crit_edge9, %2
  %.01.lcssa = phi i32 [ %split10, %._crit_edge9 ], [ 0, %2 ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !1598, metadata !DIExpression()), !dbg !1601
  ret i32 %.01.lcssa, !dbg !1633
}

; Function Attrs: nounwind uwtable
define dso_local i32 @countmolatoms(%struct.molecule_t* %0, i8* %1) #0 !dbg !1634 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1636, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %1, metadata !1637, metadata !DIExpression()), !dbg !1644
  %3 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !1645
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()), !dbg !1644
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !1646
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1646, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1641, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()), !dbg !1644
  %6 = icmp ne %struct.strand_t* %5, null, !dbg !1648
  br i1 %6, label %.lr.ph17, label %46, !dbg !1648

.lr.ph17:                                         ; preds = %2
  br label %7, !dbg !1648

7:                                                ; preds = %.lr.ph17, %42
  %.015 = phi %struct.strand_t* [ %5, %.lr.ph17 ], [ %44, %42 ]
  %.0114 = phi i32 [ 0, %.lr.ph17 ], [ %.1.lcssa, %42 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.015, metadata !1641, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 0, metadata !1638, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 0, metadata !1638, metadata !DIExpression()), !dbg !1644
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 5, !dbg !1649
  %9 = load i32, i32* %8, align 8, !dbg !1649, !tbaa !666
  %10 = sext i32 %9 to i64, !dbg !1654
  %11 = icmp slt i64 0, %10, !dbg !1654
  br i1 %11, label %.lr.ph11, label %41, !dbg !1655

.lr.ph11:                                         ; preds = %7
  br label %12, !dbg !1655

12:                                               ; preds = %.lr.ph11, %37
  %.19 = phi i32 [ %.0114, %.lr.ph11 ], [ %.2.lcssa, %37 ]
  %indvars.iv48 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next5, %37 ]
  call void @llvm.dbg.value(metadata i32 %.19, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !1638, metadata !DIExpression()), !dbg !1644
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 7, !dbg !1656
  %14 = load %struct.residue_t**, %struct.residue_t*** %13, align 8, !dbg !1656, !tbaa !670
  %15 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %14, i64 %indvars.iv48, !dbg !1658
  %16 = load %struct.residue_t*, %struct.residue_t** %15, align 8, !dbg !1658, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %16, metadata !1642, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %.19, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1644
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 15, !dbg !1659
  %18 = load i32, i32* %17, align 8, !dbg !1659, !tbaa !585
  %19 = sext i32 %18 to i64, !dbg !1662
  %20 = icmp slt i64 0, %19, !dbg !1662
  br i1 %20, label %.lr.ph, label %36, !dbg !1663

.lr.ph:                                           ; preds = %12
  br label %21, !dbg !1663

21:                                               ; preds = %.lr.ph, %32
  %.27 = phi i32 [ %.19, %.lr.ph ], [ %.3, %32 ]
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  call void @llvm.dbg.value(metadata i32 %.27, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !1639, metadata !DIExpression()), !dbg !1644
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %16, i32 0, i32 17, !dbg !1664
  %23 = load %struct.atom_t*, %struct.atom_t** %22, align 8, !dbg !1664, !tbaa !582
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %23, i64 %indvars.iv6, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.atom_t* %24, metadata !1643, metadata !DIExpression()), !dbg !1644
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i32 0, i32 2, !dbg !1667
  %26 = load i32, i32* %25, align 8, !dbg !1667, !tbaa !1669
  %27 = and i32 %26, 1, !dbg !1670
  %28 = icmp ne i32 %27, 0, !dbg !1670
  br i1 %28, label %29, label %31, !dbg !1671

29:                                               ; preds = %21
  %30 = add nsw i32 %.27, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %30, metadata !1640, metadata !DIExpression()), !dbg !1644
  br label %31, !dbg !1673

31:                                               ; preds = %29, %21
  %.3 = phi i32 [ %30, %29 ], [ %.27, %21 ], !dbg !1674
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1640, metadata !DIExpression()), !dbg !1644
  br label %32, !dbg !1675

32:                                               ; preds = %31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %.3, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1639, metadata !DIExpression()), !dbg !1644
  %33 = load i32, i32* %17, align 8, !dbg !1659, !tbaa !585
  %34 = sext i32 %33 to i64, !dbg !1662
  %35 = icmp slt i64 %indvars.iv.next, %34, !dbg !1662
  br i1 %35, label %21, label %._crit_edge, !dbg !1663, !llvm.loop !1677

._crit_edge:                                      ; preds = %32
  %split = phi i32 [ %.3, %32 ]
  br label %36, !dbg !1663

36:                                               ; preds = %._crit_edge, %12
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.19, %12 ], !dbg !1674
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1640, metadata !DIExpression()), !dbg !1644
  br label %37, !dbg !1679

37:                                               ; preds = %36
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1640, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !1638, metadata !DIExpression()), !dbg !1644
  %38 = load i32, i32* %8, align 8, !dbg !1649, !tbaa !666
  %39 = sext i32 %38 to i64, !dbg !1654
  %40 = icmp slt i64 %indvars.iv.next5, %39, !dbg !1654
  br i1 %40, label %12, label %._crit_edge12, !dbg !1655, !llvm.loop !1681

._crit_edge12:                                    ; preds = %37
  %split13 = phi i32 [ %.2.lcssa, %37 ]
  br label %41, !dbg !1655

41:                                               ; preds = %._crit_edge12, %7
  %.1.lcssa = phi i32 [ %split13, %._crit_edge12 ], [ %.0114, %7 ], !dbg !1683
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1640, metadata !DIExpression()), !dbg !1644
  br label %42, !dbg !1684

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 4, !dbg !1685
  %44 = load %struct.strand_t*, %struct.strand_t** %43, align 8, !dbg !1685, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %44, metadata !1641, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1640, metadata !DIExpression()), !dbg !1644
  %45 = icmp ne %struct.strand_t* %44, null, !dbg !1648
  br i1 %45, label %7, label %._crit_edge18, !dbg !1648, !llvm.loop !1686

._crit_edge18:                                    ; preds = %42
  %split19 = phi i32 [ %.1.lcssa, %42 ]
  br label %46, !dbg !1648

46:                                               ; preds = %._crit_edge18, %2
  %.01.lcssa = phi i32 [ %split19, %._crit_edge18 ], [ 0, %2 ], !dbg !1683
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !1640, metadata !DIExpression()), !dbg !1644
  ret i32 %.01.lcssa, !dbg !1688
}

; Function Attrs: nounwind uwtable
define dso_local double @dist(%struct.molecule_t* %0, i8* %1, i8* %2) #0 !dbg !1689 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1693, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %1, metadata !1694, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %2, metadata !1695, metadata !DIExpression()), !dbg !1698
  %6 = bitcast [3 x double]* %4 to i8*, !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %6) #8, !dbg !1699
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !1696, metadata !DIExpression()), !dbg !1700
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !1699
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %7) #8, !dbg !1699
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !1697, metadata !DIExpression()), !dbg !1701
  %8 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !1702
  %9 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* %8), !dbg !1703
  %10 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !1704
  %11 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* %10), !dbg !1705
  %12 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !1706
  %13 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !1707
  %14 = call double @distp(double* %12, double* %13), !dbg !1708
  %15 = bitcast [3 x double]* %5 to i8*, !dbg !1709
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %15) #8, !dbg !1709
  %16 = bitcast [3 x double]* %4 to i8*, !dbg !1709
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %16) #8, !dbg !1709
  ret double %14, !dbg !1710
}

declare !dbg !256 dso_local i32 @setpoint(%struct.molecule_t*, i8*, double*) #4

; Function Attrs: nounwind uwtable
define dso_local double @distp(double* %0, double* %1) #0 !dbg !1711 {
  call void @llvm.dbg.value(metadata double* %0, metadata !1713, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata double* %1, metadata !1714, metadata !DIExpression()), !dbg !1718
  %3 = getelementptr inbounds double, double* %0, i64 0, !dbg !1719
  %4 = load double, double* %3, align 8, !dbg !1719, !tbaa !456
  %5 = getelementptr inbounds double, double* %1, i64 0, !dbg !1720
  %6 = load double, double* %5, align 8, !dbg !1720, !tbaa !456
  %7 = fsub double %4, %6, !dbg !1721
  call void @llvm.dbg.value(metadata double %7, metadata !1715, metadata !DIExpression()), !dbg !1718
  %8 = getelementptr inbounds double, double* %0, i64 1, !dbg !1722
  %9 = load double, double* %8, align 8, !dbg !1722, !tbaa !456
  %10 = getelementptr inbounds double, double* %1, i64 1, !dbg !1723
  %11 = load double, double* %10, align 8, !dbg !1723, !tbaa !456
  %12 = fsub double %9, %11, !dbg !1724
  call void @llvm.dbg.value(metadata double %12, metadata !1716, metadata !DIExpression()), !dbg !1718
  %13 = getelementptr inbounds double, double* %0, i64 2, !dbg !1725
  %14 = load double, double* %13, align 8, !dbg !1725, !tbaa !456
  %15 = getelementptr inbounds double, double* %1, i64 2, !dbg !1726
  %16 = load double, double* %15, align 8, !dbg !1726, !tbaa !456
  %17 = fsub double %14, %16, !dbg !1727
  call void @llvm.dbg.value(metadata double %17, metadata !1717, metadata !DIExpression()), !dbg !1718
  %18 = fmul double %7, %7, !dbg !1728
  %19 = fmul double %12, %12, !dbg !1729
  %20 = fadd double %18, %19, !dbg !1730
  %21 = fmul double %17, %17, !dbg !1731
  %22 = fadd double %20, %21, !dbg !1732
  %23 = call double @sqrt(double %22) #8, !dbg !1733
  ret double %23, !dbg !1734
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define dso_local double @angle(%struct.molecule_t* %0, i8* %1, i8* %2, i8* %3) #0 !dbg !1735 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1739, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %1, metadata !1740, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %2, metadata !1741, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8* %3, metadata !1742, metadata !DIExpression()), !dbg !1746
  %8 = bitcast [3 x double]* %5 to i8*, !dbg !1747
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %8) #8, !dbg !1747
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !1743, metadata !DIExpression()), !dbg !1748
  %9 = bitcast [3 x double]* %6 to i8*, !dbg !1747
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %9) #8, !dbg !1747
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !1744, metadata !DIExpression()), !dbg !1749
  %10 = bitcast [3 x double]* %7 to i8*, !dbg !1747
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %10) #8, !dbg !1747
  call void @llvm.dbg.declare(metadata [3 x double]* %7, metadata !1745, metadata !DIExpression()), !dbg !1750
  %11 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !1751
  %12 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* %11), !dbg !1752
  %13 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1753
  %14 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* %13), !dbg !1754
  %15 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !1755
  %16 = call i32 @setpoint(%struct.molecule_t* %0, i8* %3, double* %15), !dbg !1756
  %17 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !1757
  %18 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1758
  %19 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !1759
  %20 = call double @anglep(double* %17, double* %18, double* %19), !dbg !1760
  %21 = bitcast [3 x double]* %7 to i8*, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %21) #8, !dbg !1761
  %22 = bitcast [3 x double]* %6 to i8*, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %22) #8, !dbg !1761
  %23 = bitcast [3 x double]* %5 to i8*, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %23) #8, !dbg !1761
  ret double %20, !dbg !1762
}

; Function Attrs: nounwind uwtable
define dso_local double @anglep(double* %0, double* %1, double* %2) #0 !dbg !1763 {
  call void @llvm.dbg.value(metadata double* %0, metadata !1765, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata double* %1, metadata !1766, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata double* %2, metadata !1767, metadata !DIExpression()), !dbg !1777
  %4 = getelementptr inbounds double, double* %0, i64 0, !dbg !1778
  %5 = load double, double* %4, align 8, !dbg !1778, !tbaa !456
  %6 = getelementptr inbounds double, double* %1, i64 0, !dbg !1779
  %7 = load double, double* %6, align 8, !dbg !1779, !tbaa !456
  %8 = fsub double %5, %7, !dbg !1780
  call void @llvm.dbg.value(metadata double %8, metadata !1768, metadata !DIExpression()), !dbg !1777
  %9 = getelementptr inbounds double, double* %0, i64 1, !dbg !1781
  %10 = load double, double* %9, align 8, !dbg !1781, !tbaa !456
  %11 = getelementptr inbounds double, double* %1, i64 1, !dbg !1782
  %12 = load double, double* %11, align 8, !dbg !1782, !tbaa !456
  %13 = fsub double %10, %12, !dbg !1783
  call void @llvm.dbg.value(metadata double %13, metadata !1770, metadata !DIExpression()), !dbg !1777
  %14 = getelementptr inbounds double, double* %0, i64 2, !dbg !1784
  %15 = load double, double* %14, align 8, !dbg !1784, !tbaa !456
  %16 = getelementptr inbounds double, double* %1, i64 2, !dbg !1785
  %17 = load double, double* %16, align 8, !dbg !1785, !tbaa !456
  %18 = fsub double %15, %17, !dbg !1786
  call void @llvm.dbg.value(metadata double %18, metadata !1772, metadata !DIExpression()), !dbg !1777
  %19 = getelementptr inbounds double, double* %2, i64 0, !dbg !1787
  %20 = load double, double* %19, align 8, !dbg !1787, !tbaa !456
  %21 = getelementptr inbounds double, double* %1, i64 0, !dbg !1788
  %22 = load double, double* %21, align 8, !dbg !1788, !tbaa !456
  %23 = fsub double %20, %22, !dbg !1789
  call void @llvm.dbg.value(metadata double %23, metadata !1769, metadata !DIExpression()), !dbg !1777
  %24 = getelementptr inbounds double, double* %2, i64 1, !dbg !1790
  %25 = load double, double* %24, align 8, !dbg !1790, !tbaa !456
  %26 = getelementptr inbounds double, double* %1, i64 1, !dbg !1791
  %27 = load double, double* %26, align 8, !dbg !1791, !tbaa !456
  %28 = fsub double %25, %27, !dbg !1792
  call void @llvm.dbg.value(metadata double %28, metadata !1771, metadata !DIExpression()), !dbg !1777
  %29 = getelementptr inbounds double, double* %2, i64 2, !dbg !1793
  %30 = load double, double* %29, align 8, !dbg !1793, !tbaa !456
  %31 = getelementptr inbounds double, double* %1, i64 2, !dbg !1794
  %32 = load double, double* %31, align 8, !dbg !1794, !tbaa !456
  %33 = fsub double %30, %32, !dbg !1795
  call void @llvm.dbg.value(metadata double %33, metadata !1773, metadata !DIExpression()), !dbg !1777
  %34 = fmul double %8, %8, !dbg !1796
  %35 = fmul double %13, %13, !dbg !1797
  %36 = fadd double %34, %35, !dbg !1798
  %37 = fmul double %18, %18, !dbg !1799
  %38 = fadd double %36, %37, !dbg !1800
  %39 = call double @sqrt(double %38) #8, !dbg !1801
  call void @llvm.dbg.value(metadata double %39, metadata !1774, metadata !DIExpression()), !dbg !1777
  %40 = fmul double %23, %23, !dbg !1802
  %41 = fmul double %28, %28, !dbg !1803
  %42 = fadd double %40, %41, !dbg !1804
  %43 = fmul double %33, %33, !dbg !1805
  %44 = fadd double %42, %43, !dbg !1806
  %45 = call double @sqrt(double %44) #8, !dbg !1807
  call void @llvm.dbg.value(metadata double %45, metadata !1775, metadata !DIExpression()), !dbg !1777
  %46 = fcmp oeq double %39, 0.000000e+00, !dbg !1808
  br i1 %46, label %47, label %50, !dbg !1810

47:                                               ; preds = %3
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1811, !tbaa !672
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0)), !dbg !1813
  br label %65, !dbg !1814

50:                                               ; preds = %3
  %51 = fcmp oeq double %45, 0.000000e+00, !dbg !1815
  br i1 %51, label %52, label %55, !dbg !1817

52:                                               ; preds = %50
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1818, !tbaa !672
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0)), !dbg !1820
  br label %65, !dbg !1821

55:                                               ; preds = %50
  %56 = fmul double %8, %23, !dbg !1822
  %57 = fmul double %13, %28, !dbg !1823
  %58 = fadd double %56, %57, !dbg !1824
  %59 = fmul double %18, %33, !dbg !1825
  %60 = fadd double %58, %59, !dbg !1826
  call void @llvm.dbg.value(metadata double %60, metadata !1776, metadata !DIExpression()), !dbg !1777
  %61 = fmul double %39, %45, !dbg !1827
  %62 = fdiv double %60, %61, !dbg !1828
  %63 = call double @acos(double %62) #8, !dbg !1829
  %64 = fmul double 0x404CA5DC1A63C1F8, %63, !dbg !1830
  br label %65, !dbg !1831

65:                                               ; preds = %55, %52, %47
  %.0 = phi double [ 0.000000e+00, %47 ], [ 0.000000e+00, %52 ], [ %64, %55 ], !dbg !1777
  ret double %.0, !dbg !1832
}

; Function Attrs: nounwind
declare dso_local double @acos(double) #3

; Function Attrs: nounwind uwtable
define dso_local double @torsion(%struct.molecule_t* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 !dbg !1833 {
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1837, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %1, metadata !1838, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %2, metadata !1839, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %3, metadata !1840, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8* %4, metadata !1841, metadata !DIExpression()), !dbg !1846
  %10 = bitcast [3 x double]* %6 to i8*, !dbg !1847
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %10) #8, !dbg !1847
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !1842, metadata !DIExpression()), !dbg !1848
  %11 = bitcast [3 x double]* %7 to i8*, !dbg !1847
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %11) #8, !dbg !1847
  call void @llvm.dbg.declare(metadata [3 x double]* %7, metadata !1843, metadata !DIExpression()), !dbg !1849
  %12 = bitcast [3 x double]* %8 to i8*, !dbg !1847
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %12) #8, !dbg !1847
  call void @llvm.dbg.declare(metadata [3 x double]* %8, metadata !1844, metadata !DIExpression()), !dbg !1850
  %13 = bitcast [3 x double]* %9 to i8*, !dbg !1847
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %13) #8, !dbg !1847
  call void @llvm.dbg.declare(metadata [3 x double]* %9, metadata !1845, metadata !DIExpression()), !dbg !1851
  %14 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1852
  %15 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* %14), !dbg !1853
  %16 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !1854
  %17 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* %16), !dbg !1855
  %18 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0, !dbg !1856
  %19 = call i32 @setpoint(%struct.molecule_t* %0, i8* %3, double* %18), !dbg !1857
  %20 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0, !dbg !1858
  %21 = call i32 @setpoint(%struct.molecule_t* %0, i8* %4, double* %20), !dbg !1859
  %22 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1860
  %23 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !1861
  %24 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0, !dbg !1862
  %25 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0, !dbg !1863
  %26 = call double @torsionp(double* %22, double* %23, double* %24, double* %25), !dbg !1864
  %27 = bitcast [3 x double]* %9 to i8*, !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %27) #8, !dbg !1865
  %28 = bitcast [3 x double]* %8 to i8*, !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %28) #8, !dbg !1865
  %29 = bitcast [3 x double]* %7 to i8*, !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %29) #8, !dbg !1865
  %30 = bitcast [3 x double]* %6 to i8*, !dbg !1865
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %30) #8, !dbg !1865
  ret double %26, !dbg !1866
}

; Function Attrs: nounwind uwtable
define dso_local double @torsionp(double* %0, double* %1, double* %2, double* %3) #0 !dbg !1867 {
  call void @llvm.dbg.value(metadata double* %0, metadata !1869, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata double* %1, metadata !1870, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata double* %2, metadata !1871, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata double* %3, metadata !1872, metadata !DIExpression()), !dbg !1894
  %5 = getelementptr inbounds double, double* %0, i64 0, !dbg !1895
  %6 = load double, double* %5, align 8, !dbg !1895, !tbaa !456
  %7 = getelementptr inbounds double, double* %1, i64 0, !dbg !1896
  %8 = load double, double* %7, align 8, !dbg !1896, !tbaa !456
  %9 = fsub double %6, %8, !dbg !1897
  call void @llvm.dbg.value(metadata double %9, metadata !1873, metadata !DIExpression()), !dbg !1894
  %10 = getelementptr inbounds double, double* %0, i64 1, !dbg !1898
  %11 = load double, double* %10, align 8, !dbg !1898, !tbaa !456
  %12 = getelementptr inbounds double, double* %1, i64 1, !dbg !1899
  %13 = load double, double* %12, align 8, !dbg !1899, !tbaa !456
  %14 = fsub double %11, %13, !dbg !1900
  call void @llvm.dbg.value(metadata double %14, metadata !1874, metadata !DIExpression()), !dbg !1894
  %15 = getelementptr inbounds double, double* %0, i64 2, !dbg !1901
  %16 = load double, double* %15, align 8, !dbg !1901, !tbaa !456
  %17 = getelementptr inbounds double, double* %1, i64 2, !dbg !1902
  %18 = load double, double* %17, align 8, !dbg !1902, !tbaa !456
  %19 = fsub double %16, %18, !dbg !1903
  call void @llvm.dbg.value(metadata double %19, metadata !1875, metadata !DIExpression()), !dbg !1894
  %20 = getelementptr inbounds double, double* %2, i64 0, !dbg !1904
  %21 = load double, double* %20, align 8, !dbg !1904, !tbaa !456
  %22 = getelementptr inbounds double, double* %1, i64 0, !dbg !1905
  %23 = load double, double* %22, align 8, !dbg !1905, !tbaa !456
  %24 = fsub double %21, %23, !dbg !1906
  call void @llvm.dbg.value(metadata double %24, metadata !1876, metadata !DIExpression()), !dbg !1894
  %25 = getelementptr inbounds double, double* %2, i64 1, !dbg !1907
  %26 = load double, double* %25, align 8, !dbg !1907, !tbaa !456
  %27 = getelementptr inbounds double, double* %1, i64 1, !dbg !1908
  %28 = load double, double* %27, align 8, !dbg !1908, !tbaa !456
  %29 = fsub double %26, %28, !dbg !1909
  call void @llvm.dbg.value(metadata double %29, metadata !1877, metadata !DIExpression()), !dbg !1894
  %30 = getelementptr inbounds double, double* %2, i64 2, !dbg !1910
  %31 = load double, double* %30, align 8, !dbg !1910, !tbaa !456
  %32 = getelementptr inbounds double, double* %1, i64 2, !dbg !1911
  %33 = load double, double* %32, align 8, !dbg !1911, !tbaa !456
  %34 = fsub double %31, %33, !dbg !1912
  call void @llvm.dbg.value(metadata double %34, metadata !1878, metadata !DIExpression()), !dbg !1894
  %35 = getelementptr inbounds double, double* %2, i64 0, !dbg !1913
  %36 = load double, double* %35, align 8, !dbg !1913, !tbaa !456
  %37 = getelementptr inbounds double, double* %3, i64 0, !dbg !1914
  %38 = load double, double* %37, align 8, !dbg !1914, !tbaa !456
  %39 = fsub double %36, %38, !dbg !1915
  call void @llvm.dbg.value(metadata double %39, metadata !1879, metadata !DIExpression()), !dbg !1894
  %40 = getelementptr inbounds double, double* %2, i64 1, !dbg !1916
  %41 = load double, double* %40, align 8, !dbg !1916, !tbaa !456
  %42 = getelementptr inbounds double, double* %3, i64 1, !dbg !1917
  %43 = load double, double* %42, align 8, !dbg !1917, !tbaa !456
  %44 = fsub double %41, %43, !dbg !1918
  call void @llvm.dbg.value(metadata double %44, metadata !1880, metadata !DIExpression()), !dbg !1894
  %45 = getelementptr inbounds double, double* %2, i64 2, !dbg !1919
  %46 = load double, double* %45, align 8, !dbg !1919, !tbaa !456
  %47 = getelementptr inbounds double, double* %3, i64 2, !dbg !1920
  %48 = load double, double* %47, align 8, !dbg !1920, !tbaa !456
  %49 = fsub double %46, %48, !dbg !1921
  call void @llvm.dbg.value(metadata double %49, metadata !1881, metadata !DIExpression()), !dbg !1894
  %50 = fmul double %14, %34, !dbg !1922
  %51 = fmul double %19, %29, !dbg !1923
  %52 = fsub double %50, %51, !dbg !1924
  call void @llvm.dbg.value(metadata double %52, metadata !1882, metadata !DIExpression()), !dbg !1894
  %53 = fmul double %19, %24, !dbg !1925
  %54 = fmul double %9, %34, !dbg !1926
  %55 = fsub double %53, %54, !dbg !1927
  call void @llvm.dbg.value(metadata double %55, metadata !1883, metadata !DIExpression()), !dbg !1894
  %56 = fmul double %9, %29, !dbg !1928
  %57 = fmul double %14, %24, !dbg !1929
  %58 = fsub double %56, %57, !dbg !1930
  call void @llvm.dbg.value(metadata double %58, metadata !1884, metadata !DIExpression()), !dbg !1894
  %59 = fmul double %34, %44, !dbg !1931
  %60 = fmul double %29, %49, !dbg !1932
  %61 = fsub double %59, %60, !dbg !1933
  call void @llvm.dbg.value(metadata double %61, metadata !1885, metadata !DIExpression()), !dbg !1894
  %62 = fmul double %24, %49, !dbg !1934
  %63 = fmul double %34, %39, !dbg !1935
  %64 = fsub double %62, %63, !dbg !1936
  call void @llvm.dbg.value(metadata double %64, metadata !1886, metadata !DIExpression()), !dbg !1894
  %65 = fmul double %29, %39, !dbg !1937
  %66 = fmul double %24, %44, !dbg !1938
  %67 = fsub double %65, %66, !dbg !1939
  call void @llvm.dbg.value(metadata double %67, metadata !1887, metadata !DIExpression()), !dbg !1894
  %68 = fmul double %52, %52, !dbg !1940
  %69 = fmul double %55, %55, !dbg !1941
  %70 = fadd double %68, %69, !dbg !1942
  %71 = fmul double %58, %58, !dbg !1943
  %72 = fadd double %70, %71, !dbg !1944
  call void @llvm.dbg.value(metadata double %72, metadata !1888, metadata !DIExpression()), !dbg !1894
  %73 = fmul double %61, %61, !dbg !1945
  %74 = fmul double %64, %64, !dbg !1946
  %75 = fadd double %73, %74, !dbg !1947
  %76 = fmul double %67, %67, !dbg !1948
  %77 = fadd double %75, %76, !dbg !1949
  call void @llvm.dbg.value(metadata double %77, metadata !1889, metadata !DIExpression()), !dbg !1894
  %78 = fmul double %52, %61, !dbg !1950
  %79 = fmul double %55, %64, !dbg !1951
  %80 = fadd double %78, %79, !dbg !1952
  %81 = fmul double %58, %67, !dbg !1953
  %82 = fadd double %80, %81, !dbg !1954
  call void @llvm.dbg.value(metadata double %82, metadata !1890, metadata !DIExpression()), !dbg !1894
  %83 = fmul double %72, %77, !dbg !1955
  %84 = call double @sqrt(double %83) #8, !dbg !1956
  %85 = fdiv double %82, %84, !dbg !1957
  call void @llvm.dbg.value(metadata double %85, metadata !1890, metadata !DIExpression()), !dbg !1894
  %86 = fcmp olt double %85, -1.000000e+00, !dbg !1958
  br i1 %86, label %87, label %88, !dbg !1960

87:                                               ; preds = %4
  call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !1890, metadata !DIExpression()), !dbg !1894
  br label %92, !dbg !1961

88:                                               ; preds = %4
  %89 = fcmp ogt double %85, 1.000000e+00, !dbg !1962
  br i1 %89, label %90, label %91, !dbg !1964

90:                                               ; preds = %88
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1890, metadata !DIExpression()), !dbg !1894
  br label %91, !dbg !1965

91:                                               ; preds = %90, %88
  %.02 = phi double [ 1.000000e+00, %90 ], [ %85, %88 ], !dbg !1894
  call void @llvm.dbg.value(metadata double %.02, metadata !1890, metadata !DIExpression()), !dbg !1894
  br label %92

92:                                               ; preds = %91, %87
  %.1 = phi double [ -1.000000e+00, %87 ], [ %.02, %91 ], !dbg !1966
  call void @llvm.dbg.value(metadata double %.1, metadata !1890, metadata !DIExpression()), !dbg !1894
  %93 = call double @acos(double %.1) #8, !dbg !1967
  call void @llvm.dbg.value(metadata double %93, metadata !1892, metadata !DIExpression()), !dbg !1894
  %94 = fmul double %58, %64, !dbg !1968
  %95 = fmul double %55, %67, !dbg !1969
  %96 = fsub double %94, %95, !dbg !1970
  %97 = fmul double %24, %96, !dbg !1971
  %98 = fmul double %52, %67, !dbg !1972
  %99 = fmul double %58, %61, !dbg !1973
  %100 = fsub double %98, %99, !dbg !1974
  %101 = fmul double %29, %100, !dbg !1975
  %102 = fadd double %97, %101, !dbg !1976
  %103 = fmul double %55, %61, !dbg !1977
  %104 = fmul double %52, %64, !dbg !1978
  %105 = fsub double %103, %104, !dbg !1979
  %106 = fmul double %34, %105, !dbg !1980
  %107 = fadd double %102, %106, !dbg !1981
  call void @llvm.dbg.value(metadata double %107, metadata !1891, metadata !DIExpression()), !dbg !1894
  %108 = fcmp olt double %107, 0.000000e+00, !dbg !1982
  br i1 %108, label %109, label %111, !dbg !1984

109:                                              ; preds = %92
  %110 = fneg double %93, !dbg !1985
  call void @llvm.dbg.value(metadata double %110, metadata !1892, metadata !DIExpression()), !dbg !1894
  br label %111, !dbg !1986

111:                                              ; preds = %109, %92
  %.01 = phi double [ %110, %109 ], [ %93, %92 ], !dbg !1894
  call void @llvm.dbg.value(metadata double %.01, metadata !1892, metadata !DIExpression()), !dbg !1894
  %112 = fsub double 0x400921FB54442D18, %.01, !dbg !1987
  call void @llvm.dbg.value(metadata double %112, metadata !1892, metadata !DIExpression()), !dbg !1894
  %113 = fmul double 1.800000e+02, %112, !dbg !1988
  %114 = fdiv double %113, 0x400921FB54442D18, !dbg !1989
  call void @llvm.dbg.value(metadata double %114, metadata !1893, metadata !DIExpression()), !dbg !1894
  %115 = fcmp ogt double %114, 1.800000e+02, !dbg !1990
  br i1 %115, label %116, label %118, !dbg !1992

116:                                              ; preds = %111
  %117 = fsub double %114, 3.600000e+02, !dbg !1993
  call void @llvm.dbg.value(metadata double %117, metadata !1893, metadata !DIExpression()), !dbg !1894
  br label %118, !dbg !1994

118:                                              ; preds = %116, %111
  %.0 = phi double [ %117, %116 ], [ %114, %111 ], !dbg !1894
  call void @llvm.dbg.value(metadata double %.0, metadata !1893, metadata !DIExpression()), !dbg !1894
  ret double %.0, !dbg !1995
}

; Function Attrs: nounwind uwtable
define dso_local i8* @getresname(%struct.residue_t* %0) #0 !dbg !345 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !349, metadata !DIExpression()), !dbg !1996
  %2 = call noalias i8* @malloc(i64 8) #8, !dbg !1997
  store i8* %2, i8** @getresname.rname, align 8, !dbg !1999, !tbaa !672
  %3 = icmp eq i8* %2, null, !dbg !2000
  br i1 %3, label %4, label %5, !dbg !2001

4:                                                ; preds = %1
  br label %11, !dbg !2002

5:                                                ; preds = %1
  %6 = load i8*, i8** @getresname.rname, align 8, !dbg !2004, !tbaa !672
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !2005
  %8 = load i8*, i8** %7, align 8, !dbg !2005, !tbaa !529
  %9 = call i8* @strcpy(i8* %6, i8* %8) #8, !dbg !2006
  %10 = load i8*, i8** @getresname.rname, align 8, !dbg !2007, !tbaa !672
  br label %11, !dbg !2008

11:                                               ; preds = %5, %4
  %.0 = phi i8* [ null, %4 ], [ %10, %5 ], !dbg !1996
  ret i8* %.0, !dbg !2009
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cap(%struct.molecule_t* %0, i8* %1, i32 %2, i32 %3) #0 !dbg !2010 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2014, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %1, metadata !2015, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %2, metadata !2016, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i32 %3, metadata !2017, metadata !DIExpression()), !dbg !2019
  %5 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !2020
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !2021
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !2021, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !2018, metadata !DIExpression()), !dbg !2019
  %8 = icmp ne %struct.strand_t* %7, null, !dbg !2023
  br i1 %8, label %.lr.ph, label %42, !dbg !2023

.lr.ph:                                           ; preds = %4
  br label %9, !dbg !2023

9:                                                ; preds = %.lr.ph, %38
  %.01 = phi %struct.strand_t* [ %7, %.lr.ph ], [ %40, %38 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !2018, metadata !DIExpression()), !dbg !2019
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !2024
  %11 = load i32, i32* %10, align 8, !dbg !2024, !tbaa !666
  %12 = icmp sgt i32 %11, 0, !dbg !2028
  br i1 %12, label %13, label %37, !dbg !2029

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 2, !dbg !2030
  %15 = load i32, i32* %14, align 4, !dbg !2030, !tbaa !788
  %16 = and i32 %15, 1, !dbg !2031
  %17 = icmp ne i32 %16, 0, !dbg !2031
  br i1 %17, label %18, label %37, !dbg !2032

18:                                               ; preds = %13
  %19 = icmp ne i32 %2, 0, !dbg !2033
  br i1 %19, label %20, label %25, !dbg !2036

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7, !dbg !2037
  %22 = load %struct.residue_t**, %struct.residue_t*** %21, align 8, !dbg !2037, !tbaa !670
  %23 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %22, i64 0, !dbg !2038
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !dbg !2038, !tbaa !672
  call void @cvt_p2hb(%struct.residue_t* %24), !dbg !2039
  br label %25, !dbg !2039

25:                                               ; preds = %20, %18
  %26 = icmp ne i32 %3, 0, !dbg !2040
  br i1 %26, label %27, label %36, !dbg !2042

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7, !dbg !2043
  %29 = load %struct.residue_t**, %struct.residue_t*** %28, align 8, !dbg !2043, !tbaa !670
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 5, !dbg !2044
  %31 = load i32, i32* %30, align 8, !dbg !2044, !tbaa !666
  %32 = sub nsw i32 %31, 1, !dbg !2045
  %33 = sext i32 %32 to i64, !dbg !2046
  %34 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %29, i64 %33, !dbg !2046
  %35 = load %struct.residue_t*, %struct.residue_t** %34, align 8, !dbg !2046, !tbaa !672
  call void @add_he2o3(%struct.residue_t* %35), !dbg !2047
  br label %36, !dbg !2047

36:                                               ; preds = %27, %25
  br label %37, !dbg !2048

37:                                               ; preds = %36, %13, %9
  br label %38, !dbg !2049

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 4, !dbg !2050
  %40 = load %struct.strand_t*, %struct.strand_t** %39, align 8, !dbg !2050, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %40, metadata !2018, metadata !DIExpression()), !dbg !2019
  %41 = icmp ne %struct.strand_t* %40, null, !dbg !2023
  br i1 %41, label %9, label %._crit_edge, !dbg !2023, !llvm.loop !2051

._crit_edge:                                      ; preds = %38
  br label %42, !dbg !2023

42:                                               ; preds = %._crit_edge, %4
  %43 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !2053
  store i32 0, i32* %43, align 8, !dbg !2054, !tbaa !507
  ret i32 0, !dbg !2055
}

; Function Attrs: nounwind uwtable
define internal void @cvt_p2hb(%struct.residue_t* %0) #0 !dbg !2056 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2060, metadata !DIExpression()), !dbg !2069
  %2 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)), !dbg !2070
  call void @llvm.dbg.value(metadata i32 %2, metadata !2061, metadata !DIExpression()), !dbg !2069
  %3 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)), !dbg !2071
  call void @llvm.dbg.value(metadata i32 %3, metadata !2062, metadata !DIExpression()), !dbg !2069
  %4 = icmp eq i32 %3, -1, !dbg !2073
  br i1 %4, label %5, label %7, !dbg !2074

5:                                                ; preds = %1
  %6 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 %6, metadata !2062, metadata !DIExpression()), !dbg !2069
  br label %7, !dbg !2076

7:                                                ; preds = %5, %1
  %.01 = phi i32 [ %6, %5 ], [ %3, %1 ], !dbg !2077
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2062, metadata !DIExpression()), !dbg !2069
  %8 = icmp eq i32 %.01, -1, !dbg !2078
  br i1 %8, label %9, label %10, !dbg !2080

9:                                                ; preds = %7
  br label %146, !dbg !2081

10:                                               ; preds = %7
  %11 = icmp ne i32 %2, -1, !dbg !2082
  br i1 %11, label %12, label %144, !dbg !2084

12:                                               ; preds = %10
  %13 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)), !dbg !2085
  call void @llvm.dbg.value(metadata i32 %13, metadata !2063, metadata !DIExpression()), !dbg !2069
  %14 = icmp eq i32 %13, -1, !dbg !2088
  br i1 %14, label %15, label %21, !dbg !2089

15:                                               ; preds = %12
  %16 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %16, metadata !2063, metadata !DIExpression()), !dbg !2069
  %17 = icmp ne i32 %16, -1, !dbg !2093
  br i1 %17, label %18, label %20, !dbg !2094

18:                                               ; preds = %15
  %19 = call i32 @delete_atom(%struct.residue_t* %0, i32 %16), !dbg !2095
  br label %20, !dbg !2095

20:                                               ; preds = %18, %15
  br label %23, !dbg !2096

21:                                               ; preds = %12
  %22 = call i32 @delete_atom(%struct.residue_t* %0, i32 %13), !dbg !2097
  br label %23

23:                                               ; preds = %21, %20
  %24 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)), !dbg !2098
  call void @llvm.dbg.value(metadata i32 %24, metadata !2063, metadata !DIExpression()), !dbg !2069
  %25 = icmp eq i32 %24, -1, !dbg !2100
  br i1 %25, label %26, label %32, !dbg !2101

26:                                               ; preds = %23
  %27 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %27, metadata !2063, metadata !DIExpression()), !dbg !2069
  %28 = icmp ne i32 %27, -1, !dbg !2105
  br i1 %28, label %29, label %31, !dbg !2106

29:                                               ; preds = %26
  %30 = call i32 @delete_atom(%struct.residue_t* %0, i32 %27), !dbg !2107
  br label %31, !dbg !2107

31:                                               ; preds = %29, %26
  br label %34, !dbg !2108

32:                                               ; preds = %23
  %33 = call i32 @delete_atom(%struct.residue_t* %0, i32 %24), !dbg !2109
  br label %34

34:                                               ; preds = %32, %31
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2110
  %36 = load %struct.atom_t*, %struct.atom_t** %35, align 8, !dbg !2110, !tbaa !582
  %37 = sext i32 %2 to i64, !dbg !2111
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %36, i64 %37, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.atom_t* %38, metadata !2068, metadata !DIExpression()), !dbg !2069
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i32 0, i32 0, !dbg !2112
  %40 = load i8*, i8** %39, align 8, !dbg !2112, !tbaa !591
  %41 = call i8* @strcpy(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !2113
  %42 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %42, metadata !2062, metadata !DIExpression()), !dbg !2069
  %43 = icmp eq i32 %42, -1, !dbg !2116
  br i1 %43, label %44, label %46, !dbg !2117

44:                                               ; preds = %34
  %45 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)), !dbg !2118
  call void @llvm.dbg.value(metadata i32 %45, metadata !2062, metadata !DIExpression()), !dbg !2069
  br label %46, !dbg !2119

46:                                               ; preds = %44, %34
  %.1 = phi i32 [ %45, %44 ], [ %42, %34 ], !dbg !2120
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2062, metadata !DIExpression()), !dbg !2069
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2121
  %48 = load %struct.atom_t*, %struct.atom_t** %47, align 8, !dbg !2121, !tbaa !582
  %49 = sext i32 %2 to i64, !dbg !2122
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %49, !dbg !2122
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %50, i32 0, i32 17, !dbg !2123
  %52 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0, i64 0, !dbg !2122
  %53 = load double, double* %52, align 8, !dbg !2122, !tbaa !456
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2124
  %55 = load %struct.atom_t*, %struct.atom_t** %54, align 8, !dbg !2124, !tbaa !582
  %56 = sext i32 %.1 to i64, !dbg !2125
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %55, i64 %56, !dbg !2125
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 17, !dbg !2126
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 0, !dbg !2125
  %60 = load double, double* %59, align 8, !dbg !2125, !tbaa !456
  %61 = fsub double %53, %60, !dbg !2127
  call void @llvm.dbg.value(metadata double %61, metadata !2064, metadata !DIExpression()), !dbg !2069
  %62 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2128
  %63 = load %struct.atom_t*, %struct.atom_t** %62, align 8, !dbg !2128, !tbaa !582
  %64 = sext i32 %2 to i64, !dbg !2129
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %63, i64 %64, !dbg !2129
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i32 0, i32 17, !dbg !2130
  %67 = getelementptr inbounds [3 x double], [3 x double]* %66, i64 0, i64 1, !dbg !2129
  %68 = load double, double* %67, align 8, !dbg !2129, !tbaa !456
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2131
  %70 = load %struct.atom_t*, %struct.atom_t** %69, align 8, !dbg !2131, !tbaa !582
  %71 = sext i32 %.1 to i64, !dbg !2132
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %70, i64 %71, !dbg !2132
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %72, i32 0, i32 17, !dbg !2133
  %74 = getelementptr inbounds [3 x double], [3 x double]* %73, i64 0, i64 1, !dbg !2132
  %75 = load double, double* %74, align 8, !dbg !2132, !tbaa !456
  %76 = fsub double %68, %75, !dbg !2134
  call void @llvm.dbg.value(metadata double %76, metadata !2065, metadata !DIExpression()), !dbg !2069
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2135
  %78 = load %struct.atom_t*, %struct.atom_t** %77, align 8, !dbg !2135, !tbaa !582
  %79 = sext i32 %2 to i64, !dbg !2136
  %80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i64 %79, !dbg !2136
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %80, i32 0, i32 17, !dbg !2137
  %82 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 0, i64 2, !dbg !2136
  %83 = load double, double* %82, align 8, !dbg !2136, !tbaa !456
  %84 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2138
  %85 = load %struct.atom_t*, %struct.atom_t** %84, align 8, !dbg !2138, !tbaa !582
  %86 = sext i32 %.1 to i64, !dbg !2139
  %87 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %85, i64 %86, !dbg !2139
  %88 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i32 0, i32 17, !dbg !2140
  %89 = getelementptr inbounds [3 x double], [3 x double]* %88, i64 0, i64 2, !dbg !2139
  %90 = load double, double* %89, align 8, !dbg !2139, !tbaa !456
  %91 = fsub double %83, %90, !dbg !2141
  call void @llvm.dbg.value(metadata double %91, metadata !2066, metadata !DIExpression()), !dbg !2069
  %92 = fmul double %61, %61, !dbg !2142
  %93 = fmul double %76, %76, !dbg !2143
  %94 = fadd double %92, %93, !dbg !2144
  %95 = fmul double %91, %91, !dbg !2145
  %96 = fadd double %94, %95, !dbg !2146
  %97 = call double @sqrt(double %96) #8, !dbg !2147
  %98 = fdiv double 0x3FEEB851EB851EB8, %97, !dbg !2148
  call void @llvm.dbg.value(metadata double %98, metadata !2067, metadata !DIExpression()), !dbg !2069
  %99 = fmul double %98, %61, !dbg !2149
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2150
  %101 = load %struct.atom_t*, %struct.atom_t** %100, align 8, !dbg !2150, !tbaa !582
  %102 = sext i32 %.1 to i64, !dbg !2151
  %103 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %101, i64 %102, !dbg !2151
  %104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %103, i32 0, i32 17, !dbg !2152
  %105 = getelementptr inbounds [3 x double], [3 x double]* %104, i64 0, i64 0, !dbg !2151
  %106 = load double, double* %105, align 8, !dbg !2151, !tbaa !456
  %107 = fadd double %99, %106, !dbg !2153
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2154
  %109 = load %struct.atom_t*, %struct.atom_t** %108, align 8, !dbg !2154, !tbaa !582
  %110 = sext i32 %2 to i64, !dbg !2155
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %109, i64 %110, !dbg !2155
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %111, i32 0, i32 17, !dbg !2156
  %113 = getelementptr inbounds [3 x double], [3 x double]* %112, i64 0, i64 0, !dbg !2155
  store double %107, double* %113, align 8, !dbg !2157, !tbaa !456
  %114 = fmul double %98, %76, !dbg !2158
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2159
  %116 = load %struct.atom_t*, %struct.atom_t** %115, align 8, !dbg !2159, !tbaa !582
  %117 = sext i32 %.1 to i64, !dbg !2160
  %118 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %116, i64 %117, !dbg !2160
  %119 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %118, i32 0, i32 17, !dbg !2161
  %120 = getelementptr inbounds [3 x double], [3 x double]* %119, i64 0, i64 1, !dbg !2160
  %121 = load double, double* %120, align 8, !dbg !2160, !tbaa !456
  %122 = fadd double %114, %121, !dbg !2162
  %123 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2163
  %124 = load %struct.atom_t*, %struct.atom_t** %123, align 8, !dbg !2163, !tbaa !582
  %125 = sext i32 %2 to i64, !dbg !2164
  %126 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %124, i64 %125, !dbg !2164
  %127 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %126, i32 0, i32 17, !dbg !2165
  %128 = getelementptr inbounds [3 x double], [3 x double]* %127, i64 0, i64 1, !dbg !2164
  store double %122, double* %128, align 8, !dbg !2166, !tbaa !456
  %129 = fmul double %98, %91, !dbg !2167
  %130 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2168
  %131 = load %struct.atom_t*, %struct.atom_t** %130, align 8, !dbg !2168, !tbaa !582
  %132 = sext i32 %.1 to i64, !dbg !2169
  %133 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %131, i64 %132, !dbg !2169
  %134 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %133, i32 0, i32 17, !dbg !2170
  %135 = getelementptr inbounds [3 x double], [3 x double]* %134, i64 0, i64 2, !dbg !2169
  %136 = load double, double* %135, align 8, !dbg !2169, !tbaa !456
  %137 = fadd double %129, %136, !dbg !2171
  %138 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2172
  %139 = load %struct.atom_t*, %struct.atom_t** %138, align 8, !dbg !2172, !tbaa !582
  %140 = sext i32 %2 to i64, !dbg !2173
  %141 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %139, i64 %140, !dbg !2173
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %141, i32 0, i32 17, !dbg !2174
  %143 = getelementptr inbounds [3 x double], [3 x double]* %142, i64 0, i64 2, !dbg !2173
  store double %137, double* %143, align 8, !dbg !2175, !tbaa !456
  br label %144, !dbg !2176

144:                                              ; preds = %46, %10
  br label %145

145:                                              ; preds = %144
  br label %146, !dbg !2177

146:                                              ; preds = %145, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %145 ]
  switch i32 %.0, label %148 [
    i32 0, label %147
    i32 1, label %147
  ]

147:                                              ; preds = %146, %146
  ret void, !dbg !2177

148:                                              ; preds = %146
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @add_he2o3(%struct.residue_t* %0) #0 !dbg !2178 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2180, metadata !DIExpression()), !dbg !2197
  %2 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)), !dbg !2198
  %3 = icmp ne i32 %2, -1, !dbg !2200
  br i1 %3, label %4, label %5, !dbg !2201

4:                                                ; preds = %1
  br label %127, !dbg !2202

5:                                                ; preds = %1
  %6 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %6, metadata !2182, metadata !DIExpression()), !dbg !2197
  %7 = icmp eq i32 %6, -1, !dbg !2205
  br i1 %7, label %8, label %10, !dbg !2206

8:                                                ; preds = %5
  %9 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)), !dbg !2207
  call void @llvm.dbg.value(metadata i32 %9, metadata !2182, metadata !DIExpression()), !dbg !2197
  br label %10, !dbg !2208

10:                                               ; preds = %8, %5
  %.02 = phi i32 [ %9, %8 ], [ %6, %5 ], !dbg !2209
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2182, metadata !DIExpression()), !dbg !2197
  %11 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0)), !dbg !2210
  call void @llvm.dbg.value(metadata i32 %11, metadata !2181, metadata !DIExpression()), !dbg !2197
  %12 = icmp eq i32 %11, -1, !dbg !2212
  br i1 %12, label %13, label %15, !dbg !2213

13:                                               ; preds = %10
  %14 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0)), !dbg !2214
  call void @llvm.dbg.value(metadata i32 %14, metadata !2181, metadata !DIExpression()), !dbg !2197
  br label %15, !dbg !2215

15:                                               ; preds = %13, %10
  %.01 = phi i32 [ %14, %13 ], [ %11, %10 ], !dbg !2216
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2181, metadata !DIExpression()), !dbg !2197
  %16 = icmp eq i32 %.01, -1, !dbg !2217
  br i1 %16, label %19, label %17, !dbg !2219

17:                                               ; preds = %15
  %18 = icmp eq i32 %.02, -1, !dbg !2220
  br i1 %18, label %19, label %20, !dbg !2221

19:                                               ; preds = %17, %15
  br label %127, !dbg !2222

20:                                               ; preds = %17
  %21 = call i32 @add_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)), !dbg !2223
  %22 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)), !dbg !2224
  call void @llvm.dbg.value(metadata i32 %22, metadata !2183, metadata !DIExpression()), !dbg !2197
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2225
  %24 = load %struct.atom_t*, %struct.atom_t** %23, align 8, !dbg !2225, !tbaa !582
  %25 = sext i32 %.02 to i64, !dbg !2226
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %25, !dbg !2226
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 0, i32 17, !dbg !2227
  %28 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 0, !dbg !2226
  %29 = load double, double* %28, align 8, !dbg !2226, !tbaa !456
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2228
  %31 = load %struct.atom_t*, %struct.atom_t** %30, align 8, !dbg !2228, !tbaa !582
  %32 = sext i32 %.01 to i64, !dbg !2229
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %31, i64 %32, !dbg !2229
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2230
  %35 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 0, i64 0, !dbg !2229
  %36 = load double, double* %35, align 8, !dbg !2229, !tbaa !456
  %37 = fsub double %29, %36, !dbg !2231
  call void @llvm.dbg.value(metadata double %37, metadata !2184, metadata !DIExpression()), !dbg !2197
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2232
  %39 = load %struct.atom_t*, %struct.atom_t** %38, align 8, !dbg !2232, !tbaa !582
  %40 = sext i32 %.02 to i64, !dbg !2233
  %41 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i64 %40, !dbg !2233
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %41, i32 0, i32 17, !dbg !2234
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 0, i64 1, !dbg !2233
  %44 = load double, double* %43, align 8, !dbg !2233, !tbaa !456
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2235
  %46 = load %struct.atom_t*, %struct.atom_t** %45, align 8, !dbg !2235, !tbaa !582
  %47 = sext i32 %.01 to i64, !dbg !2236
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i64 %47, !dbg !2236
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 17, !dbg !2237
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0, i64 1, !dbg !2236
  %51 = load double, double* %50, align 8, !dbg !2236, !tbaa !456
  %52 = fsub double %44, %51, !dbg !2238
  call void @llvm.dbg.value(metadata double %52, metadata !2185, metadata !DIExpression()), !dbg !2197
  %53 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2239
  %54 = load %struct.atom_t*, %struct.atom_t** %53, align 8, !dbg !2239, !tbaa !582
  %55 = sext i32 %.02 to i64, !dbg !2240
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i64 %55, !dbg !2240
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %56, i32 0, i32 17, !dbg !2241
  %58 = getelementptr inbounds [3 x double], [3 x double]* %57, i64 0, i64 2, !dbg !2240
  %59 = load double, double* %58, align 8, !dbg !2240, !tbaa !456
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2242
  %61 = load %struct.atom_t*, %struct.atom_t** %60, align 8, !dbg !2242, !tbaa !582
  %62 = sext i32 %.01 to i64, !dbg !2243
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %61, i64 %62, !dbg !2243
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %63, i32 0, i32 17, !dbg !2244
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 2, !dbg !2243
  %66 = load double, double* %65, align 8, !dbg !2243, !tbaa !456
  %67 = fsub double %59, %66, !dbg !2245
  call void @llvm.dbg.value(metadata double %67, metadata !2186, metadata !DIExpression()), !dbg !2197
  %68 = fmul double %37, %37, !dbg !2246
  %69 = fmul double %52, %52, !dbg !2247
  %70 = fadd double %68, %69, !dbg !2248
  %71 = fmul double %67, %67, !dbg !2249
  %72 = fadd double %70, %71, !dbg !2250
  %73 = call double @sqrt(double %72) #8, !dbg !2251
  call void @llvm.dbg.value(metadata double %73, metadata !2187, metadata !DIExpression()), !dbg !2197
  %74 = call double @cos(double 0x3FF3F770E9584BA6) #8, !dbg !2252
  %75 = fmul double 0x3FEEB851EB851EB8, %74, !dbg !2253
  %76 = fdiv double %75, %73, !dbg !2254
  call void @llvm.dbg.value(metadata double %76, metadata !2194, metadata !DIExpression()), !dbg !2197
  %77 = fmul double %76, %37, !dbg !2255
  call void @llvm.dbg.value(metadata double %77, metadata !2188, metadata !DIExpression()), !dbg !2197
  %78 = fmul double %76, %52, !dbg !2256
  call void @llvm.dbg.value(metadata double %78, metadata !2189, metadata !DIExpression()), !dbg !2197
  %79 = fmul double %76, %67, !dbg !2257
  call void @llvm.dbg.value(metadata double %79, metadata !2190, metadata !DIExpression()), !dbg !2197
  %80 = fcmp une double %78, 0.000000e+00, !dbg !2258
  br i1 %80, label %81, label %84, !dbg !2260

81:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2191, metadata !DIExpression()), !dbg !2197
  %82 = fneg double %77, !dbg !2261
  %83 = fdiv double %82, %78, !dbg !2263
  call void @llvm.dbg.value(metadata double %83, metadata !2192, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2193, metadata !DIExpression()), !dbg !2197
  br label %85, !dbg !2264

84:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2191, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2192, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2193, metadata !DIExpression()), !dbg !2197
  br label %85

85:                                               ; preds = %84, %81
  %.05 = phi double [ 1.000000e+00, %81 ], [ 0.000000e+00, %84 ], !dbg !2265
  %.04 = phi double [ %83, %81 ], [ 1.000000e+00, %84 ], !dbg !2265
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2193, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata double %.04, metadata !2192, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata double %.05, metadata !2191, metadata !DIExpression()), !dbg !2197
  %86 = fmul double %.05, %.05, !dbg !2266
  %87 = fmul double %.04, %.04, !dbg !2267
  %88 = fadd double %86, %87, !dbg !2268
  %89 = fmul double 0.000000e+00, 0.000000e+00, !dbg !2269
  %90 = fadd double %88, %89, !dbg !2270
  %91 = call double @sqrt(double %90) #8, !dbg !2271
  call void @llvm.dbg.value(metadata double %91, metadata !2187, metadata !DIExpression()), !dbg !2197
  %92 = call double @sin(double 0x3FF3F770E9584BA6) #8, !dbg !2272
  %93 = fmul double 0x3FEEB851EB851EB8, %92, !dbg !2273
  %94 = fdiv double %93, %91, !dbg !2274
  call void @llvm.dbg.value(metadata double %94, metadata !2194, metadata !DIExpression()), !dbg !2197
  %95 = fmul double %94, %.05, !dbg !2275
  call void @llvm.dbg.value(metadata double %95, metadata !2191, metadata !DIExpression()), !dbg !2197
  %96 = fmul double %94, %.04, !dbg !2276
  call void @llvm.dbg.value(metadata double %96, metadata !2192, metadata !DIExpression()), !dbg !2197
  %97 = fmul double %94, 0.000000e+00, !dbg !2277
  call void @llvm.dbg.value(metadata double %97, metadata !2193, metadata !DIExpression()), !dbg !2197
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2278
  %99 = load %struct.atom_t*, %struct.atom_t** %98, align 8, !dbg !2278, !tbaa !582
  %100 = sext i32 %.02 to i64, !dbg !2279
  %101 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %99, i64 %100, !dbg !2279
  call void @llvm.dbg.value(metadata %struct.atom_t* %101, metadata !2196, metadata !DIExpression()), !dbg !2197
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2280
  %103 = load %struct.atom_t*, %struct.atom_t** %102, align 8, !dbg !2280, !tbaa !582
  %104 = sext i32 %22 to i64, !dbg !2281
  %105 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %103, i64 %104, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.atom_t* %105, metadata !2195, metadata !DIExpression()), !dbg !2197
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %101, i32 0, i32 17, !dbg !2282
  %107 = getelementptr inbounds [3 x double], [3 x double]* %106, i64 0, i64 0, !dbg !2283
  %108 = load double, double* %107, align 8, !dbg !2283, !tbaa !456
  %109 = fadd double %108, %77, !dbg !2284
  %110 = fadd double %109, %95, !dbg !2285
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %105, i32 0, i32 17, !dbg !2286
  %112 = getelementptr inbounds [3 x double], [3 x double]* %111, i64 0, i64 0, !dbg !2287
  store double %110, double* %112, align 8, !dbg !2288, !tbaa !456
  %113 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %101, i32 0, i32 17, !dbg !2289
  %114 = getelementptr inbounds [3 x double], [3 x double]* %113, i64 0, i64 1, !dbg !2290
  %115 = load double, double* %114, align 8, !dbg !2290, !tbaa !456
  %116 = fadd double %115, %78, !dbg !2291
  %117 = fadd double %116, %96, !dbg !2292
  %118 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %105, i32 0, i32 17, !dbg !2293
  %119 = getelementptr inbounds [3 x double], [3 x double]* %118, i64 0, i64 1, !dbg !2294
  store double %117, double* %119, align 8, !dbg !2295, !tbaa !456
  %120 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %101, i32 0, i32 17, !dbg !2296
  %121 = getelementptr inbounds [3 x double], [3 x double]* %120, i64 0, i64 2, !dbg !2297
  %122 = load double, double* %121, align 8, !dbg !2297, !tbaa !456
  %123 = fadd double %122, %79, !dbg !2298
  %124 = fadd double %123, %97, !dbg !2299
  %125 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %105, i32 0, i32 17, !dbg !2300
  %126 = getelementptr inbounds [3 x double], [3 x double]* %125, i64 0, i64 2, !dbg !2301
  store double %124, double* %126, align 8, !dbg !2302, !tbaa !456
  br label %127, !dbg !2303

127:                                              ; preds = %85, %19, %4
  %.0 = phi i32 [ 1, %4 ], [ 1, %19 ], [ 0, %85 ]
  switch i32 %.0, label %129 [
    i32 0, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %127, %127
  ret void, !dbg !2303

129:                                              ; preds = %127
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local %struct.extbond_t* @copyextbonds(%struct.residue_t* %0) #0 !dbg !2304 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2308, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.extbond_t* null, metadata !2310, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.extbond_t* null, metadata !2312, metadata !DIExpression()), !dbg !2313
  %2 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 10, !dbg !2314
  %3 = load %struct.extbond_t*, %struct.extbond_t** %2, align 8, !dbg !2314, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.extbond_t* %3, metadata !2311, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.extbond_t* null, metadata !2312, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.extbond_t* null, metadata !2310, metadata !DIExpression()), !dbg !2313
  %4 = icmp ne %struct.extbond_t* %3, null, !dbg !2316
  br i1 %4, label %.lr.ph, label %34, !dbg !2316

.lr.ph:                                           ; preds = %1
  br label %5, !dbg !2316

5:                                                ; preds = %.lr.ph, %30
  %.017 = phi %struct.extbond_t* [ null, %.lr.ph ], [ %.1, %30 ]
  %.026 = phi %struct.extbond_t* [ null, %.lr.ph ], [ %7, %30 ]
  %.035 = phi %struct.extbond_t* [ %3, %.lr.ph ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.017, metadata !2312, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.026, metadata !2310, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.035, metadata !2311, metadata !DIExpression()), !dbg !2313
  %6 = call noalias i8* @malloc(i64 24) #8, !dbg !2317
  %7 = bitcast i8* %6 to %struct.extbond_t*, !dbg !2321
  call void @llvm.dbg.value(metadata %struct.extbond_t* %7, metadata !2309, metadata !DIExpression()), !dbg !2313
  %8 = icmp eq %struct.extbond_t* %7, null, !dbg !2322
  br i1 %8, label %9, label %12, !dbg !2323

9:                                                ; preds = %5
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !2324
  %11 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)), !dbg !2326
  br label %35, !dbg !2327

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %7, i32 0, i32 0, !dbg !2328
  store %struct.extbond_t* null, %struct.extbond_t** %13, align 8, !dbg !2329, !tbaa !549
  %14 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.035, i32 0, i32 1, !dbg !2330
  %15 = load i32, i32* %14, align 8, !dbg !2330, !tbaa !1065
  %16 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %7, i32 0, i32 1, !dbg !2331
  store i32 %15, i32* %16, align 8, !dbg !2332, !tbaa !1065
  %17 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.035, i32 0, i32 2, !dbg !2333
  %18 = load i32, i32* %17, align 4, !dbg !2333, !tbaa !1068
  %19 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %7, i32 0, i32 2, !dbg !2334
  store i32 %18, i32* %19, align 4, !dbg !2335, !tbaa !1068
  %20 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.035, i32 0, i32 3, !dbg !2336
  %21 = load i32, i32* %20, align 8, !dbg !2336, !tbaa !1072
  %22 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %7, i32 0, i32 3, !dbg !2337
  store i32 %21, i32* %22, align 8, !dbg !2338, !tbaa !1072
  %23 = icmp eq %struct.extbond_t* %.017, null, !dbg !2339
  br i1 %23, label %24, label %25, !dbg !2341

24:                                               ; preds = %12
  call void @llvm.dbg.value(metadata %struct.extbond_t* %7, metadata !2312, metadata !DIExpression()), !dbg !2313
  br label %25, !dbg !2342

25:                                               ; preds = %24, %12
  %.1 = phi %struct.extbond_t* [ %7, %24 ], [ %.017, %12 ], !dbg !2343
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.1, metadata !2312, metadata !DIExpression()), !dbg !2313
  %26 = icmp ne %struct.extbond_t* %.026, null, !dbg !2344
  br i1 %26, label %27, label %29, !dbg !2346

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.026, i32 0, i32 0, !dbg !2347
  store %struct.extbond_t* %7, %struct.extbond_t** %28, align 8, !dbg !2348, !tbaa !549
  br label %29, !dbg !2349

29:                                               ; preds = %27, %25
  call void @llvm.dbg.value(metadata %struct.extbond_t* %7, metadata !2310, metadata !DIExpression()), !dbg !2313
  br label %30, !dbg !2350

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.035, i32 0, i32 0, !dbg !2351
  %32 = load %struct.extbond_t*, %struct.extbond_t** %31, align 8, !dbg !2351, !tbaa !549
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.1, metadata !2312, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.extbond_t* %7, metadata !2310, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %struct.extbond_t* %32, metadata !2311, metadata !DIExpression()), !dbg !2313
  %33 = icmp ne %struct.extbond_t* %32, null, !dbg !2316
  br i1 %33, label %5, label %._crit_edge, !dbg !2316, !llvm.loop !2352

._crit_edge:                                      ; preds = %30
  %split = phi %struct.extbond_t* [ %.1, %30 ]
  br label %34, !dbg !2316

34:                                               ; preds = %._crit_edge, %1
  %.01.lcssa = phi %struct.extbond_t* [ %split, %._crit_edge ], [ null, %1 ], !dbg !2343
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.01.lcssa, metadata !2312, metadata !DIExpression()), !dbg !2313
  br label %35, !dbg !2354

35:                                               ; preds = %34, %9
  %.0 = phi %struct.extbond_t* [ null, %9 ], [ %.01.lcssa, %34 ], !dbg !2313
  ret %struct.extbond_t* %.0, !dbg !2355
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setreskind(%struct.molecule_t* %0, i8* %1, i8* %2) #0 !dbg !2356 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2360, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %1, metadata !2361, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %2, metadata !2362, metadata !DIExpression()), !dbg !2377
  %5 = bitcast [10 x i8]* %4 to i8*, !dbg !2378
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %5) #8, !dbg !2378
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !2369, metadata !DIExpression()), !dbg !2379
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %6, metadata !2368, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %2, metadata !2367, metadata !DIExpression()), !dbg !2377
  %7 = load i8, i8* %2, align 1, !dbg !2381, !tbaa !2382
  %8 = icmp ne i8 %7, 0, !dbg !2383
  br i1 %8, label %.lr.ph, label %39, !dbg !2383

.lr.ph:                                           ; preds = %3
  br label %9, !dbg !2383

9:                                                ; preds = %.lr.ph, %35
  %.07 = phi i8* [ %6, %.lr.ph ], [ %34, %35 ]
  %.015 = phi i8* [ %2, %.lr.ph ], [ %36, %35 ]
  call void @llvm.dbg.value(metadata i8* %.07, metadata !2368, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %.015, metadata !2367, metadata !DIExpression()), !dbg !2377
  %10 = call i16** @__ctype_b_loc() #10, !dbg !2384
  %11 = load i16*, i16** %10, align 8, !dbg !2384, !tbaa !672
  %12 = load i8, i8* %.015, align 1, !dbg !2384, !tbaa !2382
  %13 = sext i8 %12 to i32, !dbg !2384
  %14 = sext i32 %13 to i64, !dbg !2384
  %15 = getelementptr inbounds i16, i16* %11, i64 %14, !dbg !2384
  %16 = load i16, i16* %15, align 2, !dbg !2384, !tbaa !2385
  %17 = zext i16 %16 to i32, !dbg !2384
  %18 = and i32 %17, 256, !dbg !2384
  %19 = icmp ne i32 %18, 0, !dbg !2384
  br i1 %19, label %20, label %28, !dbg !2384

20:                                               ; preds = %9
  %21 = call i32** @__ctype_tolower_loc() #10, !dbg !2387
  %22 = load i32*, i32** %21, align 8, !dbg !2387, !tbaa !672
  %23 = load i8, i8* %.015, align 1, !dbg !2387, !tbaa !2382
  %24 = sext i8 %23 to i32, !dbg !2387
  %25 = sext i32 %24 to i64, !dbg !2387
  %26 = getelementptr inbounds i32, i32* %22, i64 %25, !dbg !2387
  %27 = load i32, i32* %26, align 4, !dbg !2387, !tbaa !2389
  call void @llvm.dbg.value(metadata i32 %27, metadata !2373, metadata !DIExpression()), !dbg !2390
  br label %31, !dbg !2384

28:                                               ; preds = %9
  %29 = load i8, i8* %.015, align 1, !dbg !2391, !tbaa !2382
  %30 = sext i8 %29 to i32, !dbg !2391
  br label %31, !dbg !2384

31:                                               ; preds = %28, %20
  %.016 = phi i8* [ %.015, %20 ], [ %.015, %28 ]
  %32 = phi i32 [ %27, %20 ], [ %30, %28 ], !dbg !2384
  %33 = trunc i32 %32 to i8, !dbg !2384
  %34 = getelementptr inbounds i8, i8* %.07, i32 1, !dbg !2392
  call void @llvm.dbg.value(metadata i8* %34, metadata !2368, metadata !DIExpression()), !dbg !2377
  store i8 %33, i8* %.07, align 1, !dbg !2393, !tbaa !2382
  br label %35, !dbg !2394

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %.016, i32 1, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %34, metadata !2368, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %36, metadata !2367, metadata !DIExpression()), !dbg !2377
  %37 = load i8, i8* %36, align 1, !dbg !2381, !tbaa !2382
  %38 = icmp ne i8 %37, 0, !dbg !2383
  br i1 %38, label %9, label %._crit_edge, !dbg !2383, !llvm.loop !2396

._crit_edge:                                      ; preds = %35
  %split = phi i8* [ %34, %35 ]
  br label %39, !dbg !2383

39:                                               ; preds = %._crit_edge, %3
  %.0.lcssa = phi i8* [ %split, %._crit_edge ], [ %6, %3 ], !dbg !2398
  call void @llvm.dbg.value(metadata i8* %.0.lcssa, metadata !2368, metadata !DIExpression()), !dbg !2377
  store i8 0, i8* %.0.lcssa, align 1, !dbg !2399, !tbaa !2382
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2400
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !2402
  %42 = icmp ne i32 %41, 0, !dbg !2402
  br i1 %42, label %44, label %43, !dbg !2403

43:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 1, metadata !2366, metadata !DIExpression()), !dbg !2377
  br label %59, !dbg !2404

44:                                               ; preds = %39
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2405
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !2407
  %47 = icmp ne i32 %46, 0, !dbg !2407
  br i1 %47, label %49, label %48, !dbg !2408

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i32 2, metadata !2366, metadata !DIExpression()), !dbg !2377
  br label %58, !dbg !2409

49:                                               ; preds = %44
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2410
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !2412
  %52 = icmp ne i32 %51, 0, !dbg !2412
  br i1 %52, label %54, label %53, !dbg !2413

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 3, metadata !2366, metadata !DIExpression()), !dbg !2377
  br label %57, !dbg !2414

54:                                               ; preds = %49
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2415, !tbaa !672
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8* %2), !dbg !2417
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression()), !dbg !2377
  br label %57

57:                                               ; preds = %54, %53
  %.02 = phi i32 [ 0, %54 ], [ 3, %53 ], !dbg !2418
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2366, metadata !DIExpression()), !dbg !2377
  br label %58

58:                                               ; preds = %57, %48
  %.1 = phi i32 [ %.02, %57 ], [ 2, %48 ], !dbg !2419
  call void @llvm.dbg.value(metadata i32 %.1, metadata !2366, metadata !DIExpression()), !dbg !2377
  br label %59

59:                                               ; preds = %58, %43
  %.2 = phi i32 [ %.1, %58 ], [ 1, %43 ], !dbg !2420
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2366, metadata !DIExpression()), !dbg !2377
  %60 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !2421
  %61 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !2422
  %62 = load %struct.strand_t*, %struct.strand_t** %61, align 8, !dbg !2422, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %62, metadata !2363, metadata !DIExpression()), !dbg !2377
  %63 = icmp ne %struct.strand_t* %62, null, !dbg !2424
  br i1 %63, label %.lr.ph14, label %90, !dbg !2424

.lr.ph14:                                         ; preds = %59
  br label %64, !dbg !2424

64:                                               ; preds = %.lr.ph14, %86
  %.0312 = phi %struct.strand_t* [ %62, %.lr.ph14 ], [ %88, %86 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0312, metadata !2363, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 0, metadata !2365, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i64 0, metadata !2365, metadata !DIExpression()), !dbg !2377
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0312, i32 0, i32 5, !dbg !2425
  %66 = load i32, i32* %65, align 8, !dbg !2425, !tbaa !666
  %67 = sext i32 %66 to i64, !dbg !2430
  %68 = icmp slt i64 0, %67, !dbg !2430
  br i1 %68, label %.lr.ph10, label %85, !dbg !2431

.lr.ph10:                                         ; preds = %64
  br label %69, !dbg !2431

69:                                               ; preds = %.lr.ph10, %81
  %indvars.iv8 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next, %81 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2365, metadata !DIExpression()), !dbg !2377
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0312, i32 0, i32 7, !dbg !2432
  %71 = load %struct.residue_t**, %struct.residue_t*** %70, align 8, !dbg !2432, !tbaa !670
  %72 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %71, i64 %indvars.iv8, !dbg !2434
  %73 = load %struct.residue_t*, %struct.residue_t** %72, align 8, !dbg !2434, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %73, metadata !2364, metadata !DIExpression()), !dbg !2377
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %73, i32 0, i32 6, !dbg !2435
  %75 = load i32, i32* %74, align 8, !dbg !2435, !tbaa !1618
  %76 = and i32 %75, 1, !dbg !2437
  %77 = icmp ne i32 %76, 0, !dbg !2437
  br i1 %77, label %78, label %80, !dbg !2438

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %73, i32 0, i32 7, !dbg !2439
  store i32 %.2, i32* %79, align 4, !dbg !2440, !tbaa !2441
  br label %80, !dbg !2442

80:                                               ; preds = %78, %69
  br label %81, !dbg !2443

81:                                               ; preds = %80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2365, metadata !DIExpression()), !dbg !2377
  %82 = load i32, i32* %65, align 8, !dbg !2425, !tbaa !666
  %83 = sext i32 %82 to i64, !dbg !2430
  %84 = icmp slt i64 %indvars.iv.next, %83, !dbg !2430
  br i1 %84, label %69, label %._crit_edge11, !dbg !2431, !llvm.loop !2445

._crit_edge11:                                    ; preds = %81
  br label %85, !dbg !2431

85:                                               ; preds = %._crit_edge11, %64
  br label %86, !dbg !2447

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0312, i32 0, i32 4, !dbg !2448
  %88 = load %struct.strand_t*, %struct.strand_t** %87, align 8, !dbg !2448, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %88, metadata !2363, metadata !DIExpression()), !dbg !2377
  %89 = icmp ne %struct.strand_t* %88, null, !dbg !2424
  br i1 %89, label %64, label %._crit_edge15, !dbg !2424, !llvm.loop !2449

._crit_edge15:                                    ; preds = %86
  br label %90, !dbg !2424

90:                                               ; preds = %._crit_edge15, %59
  %91 = bitcast [10 x i8]* %4 to i8*, !dbg !2451
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %91) #8, !dbg !2451
  ret i32 0, !dbg !2452
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readnone
declare dso_local i32** @__ctype_tolower_loc() #6

; Function Attrs: nounwind uwtable
define dso_local i32 @setxyz_from_mol(%struct.molecule_t** %0, i8** %1, [3 x double]* %2) #0 !dbg !2453 {
  call void @llvm.dbg.value(metadata %struct.molecule_t** %0, metadata !2460, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8** %1, metadata !2461, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata [3 x double]* %2, metadata !2462, metadata !DIExpression()), !dbg !2469
  %4 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2470, !tbaa !672
  %5 = icmp ne i8** %1, null, !dbg !2471
  br i1 %5, label %6, label %8, !dbg !2471

6:                                                ; preds = %3
  %7 = load i8*, i8** %1, align 8, !dbg !2472, !tbaa !672
  br label %9, !dbg !2471

8:                                                ; preds = %3
  br label %9, !dbg !2471

9:                                                ; preds = %8, %6
  %10 = phi i8* [ %7, %6 ], [ null, %8 ], !dbg !2471
  %11 = call i32 @select_atoms(%struct.molecule_t* %4, i8* %10), !dbg !2473
  call void @llvm.dbg.value(metadata i32 0, metadata !2465, metadata !DIExpression()), !dbg !2469
  %12 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2474, !tbaa !672
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 2, !dbg !2476
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !2476, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 0, metadata !2465, metadata !DIExpression()), !dbg !2469
  %15 = icmp ne %struct.strand_t* %14, null, !dbg !2477
  br i1 %15, label %.lr.ph17, label %73, !dbg !2477

.lr.ph17:                                         ; preds = %9
  br label %16, !dbg !2477

16:                                               ; preds = %.lr.ph17, %69
  %.015 = phi %struct.strand_t* [ %14, %.lr.ph17 ], [ %71, %69 ]
  %.0114 = phi i32 [ 0, %.lr.ph17 ], [ %.1.lcssa, %69 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.015, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 0, metadata !2463, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 0, metadata !2463, metadata !DIExpression()), !dbg !2469
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 5, !dbg !2478
  %18 = load i32, i32* %17, align 8, !dbg !2478, !tbaa !666
  %19 = sext i32 %18 to i64, !dbg !2483
  %20 = icmp slt i64 0, %19, !dbg !2483
  br i1 %20, label %.lr.ph11, label %68, !dbg !2484

.lr.ph11:                                         ; preds = %16
  br label %21, !dbg !2484

21:                                               ; preds = %.lr.ph11, %64
  %.19 = phi i32 [ %.0114, %.lr.ph11 ], [ %.2.lcssa, %64 ]
  %indvars.iv48 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next5, %64 ]
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !2463, metadata !DIExpression()), !dbg !2469
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 7, !dbg !2485
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8, !dbg !2485, !tbaa !670
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %indvars.iv48, !dbg !2487
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !2487, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 0, metadata !2464, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 0, metadata !2464, metadata !DIExpression()), !dbg !2469
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 15, !dbg !2488
  %27 = load i32, i32* %26, align 8, !dbg !2488, !tbaa !585
  %28 = sext i32 %27 to i64, !dbg !2491
  %29 = icmp slt i64 0, %28, !dbg !2491
  br i1 %29, label %.lr.ph, label %63, !dbg !2492

.lr.ph:                                           ; preds = %21
  br label %30, !dbg !2492

30:                                               ; preds = %.lr.ph, %59
  %.27 = phi i32 [ %.19, %.lr.ph ], [ %.3, %59 ]
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %59 ]
  call void @llvm.dbg.value(metadata i32 %.27, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2464, metadata !DIExpression()), !dbg !2469
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 17, !dbg !2493
  %32 = load %struct.atom_t*, %struct.atom_t** %31, align 8, !dbg !2493, !tbaa !582
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %indvars.iv6, !dbg !2495
  call void @llvm.dbg.value(metadata %struct.atom_t* %33, metadata !2468, metadata !DIExpression()), !dbg !2469
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 2, !dbg !2496
  %35 = load i32, i32* %34, align 8, !dbg !2496, !tbaa !1669
  %36 = and i32 %35, 1, !dbg !2498
  %37 = icmp ne i32 %36, 0, !dbg !2498
  br i1 %37, label %38, label %58, !dbg !2499

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2500
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 0, i64 0, !dbg !2502
  %41 = load double, double* %40, align 8, !dbg !2502, !tbaa !456
  %42 = sext i32 %.27 to i64, !dbg !2503
  %43 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %42, !dbg !2503
  %44 = getelementptr inbounds [3 x double], [3 x double]* %43, i64 0, i64 0, !dbg !2503
  store double %41, double* %44, align 8, !dbg !2504, !tbaa !456
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2505
  %46 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 0, i64 1, !dbg !2506
  %47 = load double, double* %46, align 8, !dbg !2506, !tbaa !456
  %48 = sext i32 %.27 to i64, !dbg !2507
  %49 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %48, !dbg !2507
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0, i64 1, !dbg !2507
  store double %47, double* %50, align 8, !dbg !2508, !tbaa !456
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2509
  %52 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0, i64 2, !dbg !2510
  %53 = load double, double* %52, align 8, !dbg !2510, !tbaa !456
  %54 = sext i32 %.27 to i64, !dbg !2511
  %55 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %54, !dbg !2511
  %56 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 0, i64 2, !dbg !2511
  store double %53, double* %56, align 8, !dbg !2512, !tbaa !456
  %57 = add nsw i32 %.27, 1, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %57, metadata !2465, metadata !DIExpression()), !dbg !2469
  br label %58, !dbg !2514

58:                                               ; preds = %38, %30
  %.3 = phi i32 [ %57, %38 ], [ %.27, %30 ], !dbg !2515
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2465, metadata !DIExpression()), !dbg !2469
  br label %59, !dbg !2516

59:                                               ; preds = %58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2464, metadata !DIExpression()), !dbg !2469
  %60 = load i32, i32* %26, align 8, !dbg !2488, !tbaa !585
  %61 = sext i32 %60 to i64, !dbg !2491
  %62 = icmp slt i64 %indvars.iv.next, %61, !dbg !2491
  br i1 %62, label %30, label %._crit_edge, !dbg !2492, !llvm.loop !2518

._crit_edge:                                      ; preds = %59
  %split = phi i32 [ %.3, %59 ]
  br label %63, !dbg !2492

63:                                               ; preds = %._crit_edge, %21
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.19, %21 ], !dbg !2515
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2465, metadata !DIExpression()), !dbg !2469
  br label %64, !dbg !2520

64:                                               ; preds = %63
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !2463, metadata !DIExpression()), !dbg !2469
  %65 = load i32, i32* %17, align 8, !dbg !2478, !tbaa !666
  %66 = sext i32 %65 to i64, !dbg !2483
  %67 = icmp slt i64 %indvars.iv.next5, %66, !dbg !2483
  br i1 %67, label %21, label %._crit_edge12, !dbg !2484, !llvm.loop !2522

._crit_edge12:                                    ; preds = %64
  %split13 = phi i32 [ %.2.lcssa, %64 ]
  br label %68, !dbg !2484

68:                                               ; preds = %._crit_edge12, %16
  %.1.lcssa = phi i32 [ %split13, %._crit_edge12 ], [ %.0114, %16 ], !dbg !2524
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2465, metadata !DIExpression()), !dbg !2469
  br label %69, !dbg !2525

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 4, !dbg !2526
  %71 = load %struct.strand_t*, %struct.strand_t** %70, align 8, !dbg !2526, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %71, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2465, metadata !DIExpression()), !dbg !2469
  %72 = icmp ne %struct.strand_t* %71, null, !dbg !2477
  br i1 %72, label %16, label %._crit_edge18, !dbg !2477, !llvm.loop !2527

._crit_edge18:                                    ; preds = %69
  %split19 = phi i32 [ %.1.lcssa, %69 ]
  br label %73, !dbg !2477

73:                                               ; preds = %._crit_edge18, %9
  %.01.lcssa = phi i32 [ %split19, %._crit_edge18 ], [ 0, %9 ], !dbg !2524
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2465, metadata !DIExpression()), !dbg !2469
  ret i32 %.01.lcssa, !dbg !2529
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setxyzw_from_mol(%struct.molecule_t** %0, i8** %1, double* %2) #0 !dbg !2530 {
  call void @llvm.dbg.value(metadata %struct.molecule_t** %0, metadata !2534, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8** %1, metadata !2535, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata double* %2, metadata !2536, metadata !DIExpression()), !dbg !2543
  %4 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2544, !tbaa !672
  %5 = icmp ne i8** %1, null, !dbg !2545
  br i1 %5, label %6, label %8, !dbg !2545

6:                                                ; preds = %3
  %7 = load i8*, i8** %1, align 8, !dbg !2546, !tbaa !672
  br label %9, !dbg !2545

8:                                                ; preds = %3
  br label %9, !dbg !2545

9:                                                ; preds = %8, %6
  %10 = phi i8* [ %7, %6 ], [ null, %8 ], !dbg !2545
  %11 = call i32 @select_atoms(%struct.molecule_t* %4, i8* %10), !dbg !2547
  call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()), !dbg !2543
  %12 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2548, !tbaa !672
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 2, !dbg !2550
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !2550, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 0, metadata !2539, metadata !DIExpression()), !dbg !2543
  %15 = icmp ne %struct.strand_t* %14, null, !dbg !2551
  br i1 %15, label %.lr.ph17, label %82, !dbg !2551

.lr.ph17:                                         ; preds = %9
  br label %16, !dbg !2551

16:                                               ; preds = %.lr.ph17, %78
  %.015 = phi %struct.strand_t* [ %14, %.lr.ph17 ], [ %80, %78 ]
  %.0114 = phi i32 [ 0, %.lr.ph17 ], [ %.1.lcssa, %78 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.015, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 0, metadata !2537, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 0, metadata !2537, metadata !DIExpression()), !dbg !2543
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 5, !dbg !2552
  %18 = load i32, i32* %17, align 8, !dbg !2552, !tbaa !666
  %19 = sext i32 %18 to i64, !dbg !2557
  %20 = icmp slt i64 0, %19, !dbg !2557
  br i1 %20, label %.lr.ph11, label %77, !dbg !2558

.lr.ph11:                                         ; preds = %16
  br label %21, !dbg !2558

21:                                               ; preds = %.lr.ph11, %73
  %.19 = phi i32 [ %.0114, %.lr.ph11 ], [ %.2.lcssa, %73 ]
  %indvars.iv48 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next5, %73 ]
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !2537, metadata !DIExpression()), !dbg !2543
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 7, !dbg !2559
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8, !dbg !2559, !tbaa !670
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %indvars.iv48, !dbg !2561
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !2561, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 0, metadata !2538, metadata !DIExpression()), !dbg !2543
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 15, !dbg !2562
  %27 = load i32, i32* %26, align 8, !dbg !2562, !tbaa !585
  %28 = sext i32 %27 to i64, !dbg !2565
  %29 = icmp slt i64 0, %28, !dbg !2565
  br i1 %29, label %.lr.ph, label %72, !dbg !2566

.lr.ph:                                           ; preds = %21
  br label %30, !dbg !2566

30:                                               ; preds = %.lr.ph, %68
  %.27 = phi i32 [ %.19, %.lr.ph ], [ %.3, %68 ]
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %68 ]
  call void @llvm.dbg.value(metadata i32 %.27, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2538, metadata !DIExpression()), !dbg !2543
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 17, !dbg !2567
  %32 = load %struct.atom_t*, %struct.atom_t** %31, align 8, !dbg !2567, !tbaa !582
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %indvars.iv6, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.atom_t* %33, metadata !2542, metadata !DIExpression()), !dbg !2543
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 2, !dbg !2570
  %35 = load i32, i32* %34, align 8, !dbg !2570, !tbaa !1669
  %36 = and i32 %35, 1, !dbg !2572
  %37 = icmp ne i32 %36, 0, !dbg !2572
  br i1 %37, label %38, label %67, !dbg !2573

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2574
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 0, i64 0, !dbg !2576
  %41 = load double, double* %40, align 8, !dbg !2576, !tbaa !456
  %42 = mul nsw i32 4, %.27, !dbg !2577
  %43 = add nsw i32 %42, 0, !dbg !2578
  %44 = sext i32 %43 to i64, !dbg !2579
  %45 = getelementptr inbounds double, double* %2, i64 %44, !dbg !2579
  store double %41, double* %45, align 8, !dbg !2580, !tbaa !456
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2581
  %47 = getelementptr inbounds [3 x double], [3 x double]* %46, i64 0, i64 1, !dbg !2582
  %48 = load double, double* %47, align 8, !dbg !2582, !tbaa !456
  %49 = mul nsw i32 4, %.27, !dbg !2583
  %50 = add nsw i32 %49, 1, !dbg !2584
  %51 = sext i32 %50 to i64, !dbg !2585
  %52 = getelementptr inbounds double, double* %2, i64 %51, !dbg !2585
  store double %48, double* %52, align 8, !dbg !2586, !tbaa !456
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2587
  %54 = getelementptr inbounds [3 x double], [3 x double]* %53, i64 0, i64 2, !dbg !2588
  %55 = load double, double* %54, align 8, !dbg !2588, !tbaa !456
  %56 = mul nsw i32 4, %.27, !dbg !2589
  %57 = add nsw i32 %56, 2, !dbg !2590
  %58 = sext i32 %57 to i64, !dbg !2591
  %59 = getelementptr inbounds double, double* %2, i64 %58, !dbg !2591
  store double %55, double* %59, align 8, !dbg !2592, !tbaa !456
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 18, !dbg !2593
  %61 = load double, double* %60, align 8, !dbg !2593, !tbaa !2594
  %62 = mul nsw i32 4, %.27, !dbg !2595
  %63 = add nsw i32 %62, 3, !dbg !2596
  %64 = sext i32 %63 to i64, !dbg !2597
  %65 = getelementptr inbounds double, double* %2, i64 %64, !dbg !2597
  store double %61, double* %65, align 8, !dbg !2598, !tbaa !456
  %66 = add nsw i32 %.27, 1, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %66, metadata !2539, metadata !DIExpression()), !dbg !2543
  br label %67, !dbg !2600

67:                                               ; preds = %38, %30
  %.3 = phi i32 [ %66, %38 ], [ %.27, %30 ], !dbg !2601
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2539, metadata !DIExpression()), !dbg !2543
  br label %68, !dbg !2602

68:                                               ; preds = %67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2538, metadata !DIExpression()), !dbg !2543
  %69 = load i32, i32* %26, align 8, !dbg !2562, !tbaa !585
  %70 = sext i32 %69 to i64, !dbg !2565
  %71 = icmp slt i64 %indvars.iv.next, %70, !dbg !2565
  br i1 %71, label %30, label %._crit_edge, !dbg !2566, !llvm.loop !2604

._crit_edge:                                      ; preds = %68
  %split = phi i32 [ %.3, %68 ]
  br label %72, !dbg !2566

72:                                               ; preds = %._crit_edge, %21
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.19, %21 ], !dbg !2601
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2539, metadata !DIExpression()), !dbg !2543
  br label %73, !dbg !2606

73:                                               ; preds = %72
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !2537, metadata !DIExpression()), !dbg !2543
  %74 = load i32, i32* %17, align 8, !dbg !2552, !tbaa !666
  %75 = sext i32 %74 to i64, !dbg !2557
  %76 = icmp slt i64 %indvars.iv.next5, %75, !dbg !2557
  br i1 %76, label %21, label %._crit_edge12, !dbg !2558, !llvm.loop !2608

._crit_edge12:                                    ; preds = %73
  %split13 = phi i32 [ %.2.lcssa, %73 ]
  br label %77, !dbg !2558

77:                                               ; preds = %._crit_edge12, %16
  %.1.lcssa = phi i32 [ %split13, %._crit_edge12 ], [ %.0114, %16 ], !dbg !2610
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2539, metadata !DIExpression()), !dbg !2543
  br label %78, !dbg !2611

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 4, !dbg !2612
  %80 = load %struct.strand_t*, %struct.strand_t** %79, align 8, !dbg !2612, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %80, metadata !2540, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2539, metadata !DIExpression()), !dbg !2543
  %81 = icmp ne %struct.strand_t* %80, null, !dbg !2551
  br i1 %81, label %16, label %._crit_edge18, !dbg !2551, !llvm.loop !2613

._crit_edge18:                                    ; preds = %78
  %split19 = phi i32 [ %.1.lcssa, %78 ]
  br label %82, !dbg !2551

82:                                               ; preds = %._crit_edge18, %9
  %.01.lcssa = phi i32 [ %split19, %._crit_edge18 ], [ 0, %9 ], !dbg !2610
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2539, metadata !DIExpression()), !dbg !2543
  ret i32 %.01.lcssa, !dbg !2615
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setmol_from_xyz(%struct.molecule_t** %0, i8** %1, double* %2) #0 !dbg !2616 {
  call void @llvm.dbg.value(metadata %struct.molecule_t** %0, metadata !2618, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8** %1, metadata !2619, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata double* %2, metadata !2620, metadata !DIExpression()), !dbg !2627
  %4 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2628, !tbaa !672
  %5 = icmp ne i8** %1, null, !dbg !2629
  br i1 %5, label %6, label %8, !dbg !2629

6:                                                ; preds = %3
  %7 = load i8*, i8** %1, align 8, !dbg !2630, !tbaa !672
  br label %9, !dbg !2629

8:                                                ; preds = %3
  br label %9, !dbg !2629

9:                                                ; preds = %8, %6
  %10 = phi i8* [ %7, %6 ], [ null, %8 ], !dbg !2629
  %11 = call i32 @select_atoms(%struct.molecule_t* %4, i8* %10), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2623, metadata !DIExpression()), !dbg !2627
  %12 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2632, !tbaa !672
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 2, !dbg !2634
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !2634, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 0, metadata !2623, metadata !DIExpression()), !dbg !2627
  %15 = icmp ne %struct.strand_t* %14, null, !dbg !2635
  br i1 %15, label %.lr.ph17, label %76, !dbg !2635

.lr.ph17:                                         ; preds = %9
  br label %16, !dbg !2635

16:                                               ; preds = %.lr.ph17, %72
  %.015 = phi %struct.strand_t* [ %14, %.lr.ph17 ], [ %74, %72 ]
  %.0114 = phi i32 [ 0, %.lr.ph17 ], [ %.1.lcssa, %72 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.015, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 0, metadata !2621, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 0, metadata !2621, metadata !DIExpression()), !dbg !2627
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 5, !dbg !2636
  %18 = load i32, i32* %17, align 8, !dbg !2636, !tbaa !666
  %19 = sext i32 %18 to i64, !dbg !2641
  %20 = icmp slt i64 0, %19, !dbg !2641
  br i1 %20, label %.lr.ph11, label %71, !dbg !2642

.lr.ph11:                                         ; preds = %16
  br label %21, !dbg !2642

21:                                               ; preds = %.lr.ph11, %67
  %.19 = phi i32 [ %.0114, %.lr.ph11 ], [ %.2.lcssa, %67 ]
  %indvars.iv48 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next5, %67 ]
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !2621, metadata !DIExpression()), !dbg !2627
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 7, !dbg !2643
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8, !dbg !2643, !tbaa !670
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %indvars.iv48, !dbg !2645
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !2645, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 0, metadata !2622, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 0, metadata !2622, metadata !DIExpression()), !dbg !2627
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 15, !dbg !2646
  %27 = load i32, i32* %26, align 8, !dbg !2646, !tbaa !585
  %28 = sext i32 %27 to i64, !dbg !2649
  %29 = icmp slt i64 0, %28, !dbg !2649
  br i1 %29, label %.lr.ph, label %66, !dbg !2650

.lr.ph:                                           ; preds = %21
  br label %30, !dbg !2650

30:                                               ; preds = %.lr.ph, %62
  %.27 = phi i32 [ %.19, %.lr.ph ], [ %.3, %62 ]
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %62 ]
  call void @llvm.dbg.value(metadata i32 %.27, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2622, metadata !DIExpression()), !dbg !2627
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 17, !dbg !2651
  %32 = load %struct.atom_t*, %struct.atom_t** %31, align 8, !dbg !2651, !tbaa !582
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %indvars.iv6, !dbg !2653
  call void @llvm.dbg.value(metadata %struct.atom_t* %33, metadata !2626, metadata !DIExpression()), !dbg !2627
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 2, !dbg !2654
  %35 = load i32, i32* %34, align 8, !dbg !2654, !tbaa !1669
  %36 = and i32 %35, 1, !dbg !2656
  %37 = icmp ne i32 %36, 0, !dbg !2656
  br i1 %37, label %38, label %61, !dbg !2657

38:                                               ; preds = %30
  %39 = mul nsw i32 3, %.27, !dbg !2658
  %40 = add nsw i32 %39, 0, !dbg !2660
  %41 = sext i32 %40 to i64, !dbg !2661
  %42 = getelementptr inbounds double, double* %2, i64 %41, !dbg !2661
  %43 = load double, double* %42, align 8, !dbg !2661, !tbaa !456
  %44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2662
  %45 = getelementptr inbounds [3 x double], [3 x double]* %44, i64 0, i64 0, !dbg !2663
  store double %43, double* %45, align 8, !dbg !2664, !tbaa !456
  %46 = mul nsw i32 3, %.27, !dbg !2665
  %47 = add nsw i32 %46, 1, !dbg !2666
  %48 = sext i32 %47 to i64, !dbg !2667
  %49 = getelementptr inbounds double, double* %2, i64 %48, !dbg !2667
  %50 = load double, double* %49, align 8, !dbg !2667, !tbaa !456
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2668
  %52 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0, i64 1, !dbg !2669
  store double %50, double* %52, align 8, !dbg !2670, !tbaa !456
  %53 = mul nsw i32 3, %.27, !dbg !2671
  %54 = add nsw i32 %53, 2, !dbg !2672
  %55 = sext i32 %54 to i64, !dbg !2673
  %56 = getelementptr inbounds double, double* %2, i64 %55, !dbg !2673
  %57 = load double, double* %56, align 8, !dbg !2673, !tbaa !456
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2674
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 2, !dbg !2675
  store double %57, double* %59, align 8, !dbg !2676, !tbaa !456
  %60 = add nsw i32 %.27, 1, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %60, metadata !2623, metadata !DIExpression()), !dbg !2627
  br label %61, !dbg !2678

61:                                               ; preds = %38, %30
  %.3 = phi i32 [ %60, %38 ], [ %.27, %30 ], !dbg !2679
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2623, metadata !DIExpression()), !dbg !2627
  br label %62, !dbg !2680

62:                                               ; preds = %61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !2681
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2622, metadata !DIExpression()), !dbg !2627
  %63 = load i32, i32* %26, align 8, !dbg !2646, !tbaa !585
  %64 = sext i32 %63 to i64, !dbg !2649
  %65 = icmp slt i64 %indvars.iv.next, %64, !dbg !2649
  br i1 %65, label %30, label %._crit_edge, !dbg !2650, !llvm.loop !2682

._crit_edge:                                      ; preds = %62
  %split = phi i32 [ %.3, %62 ]
  br label %66, !dbg !2650

66:                                               ; preds = %._crit_edge, %21
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.19, %21 ], !dbg !2679
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2623, metadata !DIExpression()), !dbg !2627
  br label %67, !dbg !2684

67:                                               ; preds = %66
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !2621, metadata !DIExpression()), !dbg !2627
  %68 = load i32, i32* %17, align 8, !dbg !2636, !tbaa !666
  %69 = sext i32 %68 to i64, !dbg !2641
  %70 = icmp slt i64 %indvars.iv.next5, %69, !dbg !2641
  br i1 %70, label %21, label %._crit_edge12, !dbg !2642, !llvm.loop !2686

._crit_edge12:                                    ; preds = %67
  %split13 = phi i32 [ %.2.lcssa, %67 ]
  br label %71, !dbg !2642

71:                                               ; preds = %._crit_edge12, %16
  %.1.lcssa = phi i32 [ %split13, %._crit_edge12 ], [ %.0114, %16 ], !dbg !2688
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2623, metadata !DIExpression()), !dbg !2627
  br label %72, !dbg !2689

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 4, !dbg !2690
  %74 = load %struct.strand_t*, %struct.strand_t** %73, align 8, !dbg !2690, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %74, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2623, metadata !DIExpression()), !dbg !2627
  %75 = icmp ne %struct.strand_t* %74, null, !dbg !2635
  br i1 %75, label %16, label %._crit_edge18, !dbg !2635, !llvm.loop !2691

._crit_edge18:                                    ; preds = %72
  %split19 = phi i32 [ %.1.lcssa, %72 ]
  br label %76, !dbg !2635

76:                                               ; preds = %._crit_edge18, %9
  %.01.lcssa = phi i32 [ %split19, %._crit_edge18 ], [ 0, %9 ], !dbg !2688
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2623, metadata !DIExpression()), !dbg !2627
  ret i32 %.01.lcssa, !dbg !2693
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setmol_from_xyzw(%struct.molecule_t** %0, i8** %1, double* %2) #0 !dbg !2694 {
  call void @llvm.dbg.value(metadata %struct.molecule_t** %0, metadata !2696, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8** %1, metadata !2697, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata double* %2, metadata !2698, metadata !DIExpression()), !dbg !2705
  %4 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2706, !tbaa !672
  %5 = icmp ne i8** %1, null, !dbg !2707
  br i1 %5, label %6, label %8, !dbg !2707

6:                                                ; preds = %3
  %7 = load i8*, i8** %1, align 8, !dbg !2708, !tbaa !672
  br label %9, !dbg !2707

8:                                                ; preds = %3
  br label %9, !dbg !2707

9:                                                ; preds = %8, %6
  %10 = phi i8* [ %7, %6 ], [ null, %8 ], !dbg !2707
  %11 = call i32 @select_atoms(%struct.molecule_t* %4, i8* %10), !dbg !2709
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression()), !dbg !2705
  %12 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2710, !tbaa !672
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %12, i32 0, i32 2, !dbg !2712
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !2712, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !2702, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression()), !dbg !2705
  %15 = icmp ne %struct.strand_t* %14, null, !dbg !2713
  br i1 %15, label %.lr.ph17, label %82, !dbg !2713

.lr.ph17:                                         ; preds = %9
  br label %16, !dbg !2713

16:                                               ; preds = %.lr.ph17, %78
  %.015 = phi %struct.strand_t* [ %14, %.lr.ph17 ], [ %80, %78 ]
  %.0114 = phi i32 [ 0, %.lr.ph17 ], [ %.1.lcssa, %78 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.015, metadata !2702, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !2701, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2699, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %.0114, metadata !2701, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2699, metadata !DIExpression()), !dbg !2705
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 5, !dbg !2714
  %18 = load i32, i32* %17, align 8, !dbg !2714, !tbaa !666
  %19 = sext i32 %18 to i64, !dbg !2719
  %20 = icmp slt i64 0, %19, !dbg !2719
  br i1 %20, label %.lr.ph11, label %77, !dbg !2720

.lr.ph11:                                         ; preds = %16
  br label %21, !dbg !2720

21:                                               ; preds = %.lr.ph11, %73
  %.19 = phi i32 [ %.0114, %.lr.ph11 ], [ %.2.lcssa, %73 ]
  %indvars.iv48 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next5, %73 ]
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2701, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !2699, metadata !DIExpression()), !dbg !2705
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 7, !dbg !2721
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8, !dbg !2721, !tbaa !670
  %24 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %indvars.iv48, !dbg !2723
  %25 = load %struct.residue_t*, %struct.residue_t** %24, align 8, !dbg !2723, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %25, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2700, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %.19, metadata !2701, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 0, metadata !2700, metadata !DIExpression()), !dbg !2705
  %26 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 15, !dbg !2724
  %27 = load i32, i32* %26, align 8, !dbg !2724, !tbaa !585
  %28 = sext i32 %27 to i64, !dbg !2727
  %29 = icmp slt i64 0, %28, !dbg !2727
  br i1 %29, label %.lr.ph, label %72, !dbg !2728

.lr.ph:                                           ; preds = %21
  br label %30, !dbg !2728

30:                                               ; preds = %.lr.ph, %68
  %.27 = phi i32 [ %.19, %.lr.ph ], [ %.3, %68 ]
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %68 ]
  call void @llvm.dbg.value(metadata i32 %.27, metadata !2701, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2700, metadata !DIExpression()), !dbg !2705
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %25, i32 0, i32 17, !dbg !2729
  %32 = load %struct.atom_t*, %struct.atom_t** %31, align 8, !dbg !2729, !tbaa !582
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %32, i64 %indvars.iv6, !dbg !2731
  call void @llvm.dbg.value(metadata %struct.atom_t* %33, metadata !2704, metadata !DIExpression()), !dbg !2705
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 2, !dbg !2732
  %35 = load i32, i32* %34, align 8, !dbg !2732, !tbaa !1669
  %36 = and i32 %35, 1, !dbg !2734
  %37 = icmp ne i32 %36, 0, !dbg !2734
  br i1 %37, label %38, label %67, !dbg !2735

38:                                               ; preds = %30
  %39 = mul nsw i32 4, %.27, !dbg !2736
  %40 = add nsw i32 %39, 0, !dbg !2738
  %41 = sext i32 %40 to i64, !dbg !2739
  %42 = getelementptr inbounds double, double* %2, i64 %41, !dbg !2739
  %43 = load double, double* %42, align 8, !dbg !2739, !tbaa !456
  %44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2740
  %45 = getelementptr inbounds [3 x double], [3 x double]* %44, i64 0, i64 0, !dbg !2741
  store double %43, double* %45, align 8, !dbg !2742, !tbaa !456
  %46 = mul nsw i32 4, %.27, !dbg !2743
  %47 = add nsw i32 %46, 1, !dbg !2744
  %48 = sext i32 %47 to i64, !dbg !2745
  %49 = getelementptr inbounds double, double* %2, i64 %48, !dbg !2745
  %50 = load double, double* %49, align 8, !dbg !2745, !tbaa !456
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2746
  %52 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0, i64 1, !dbg !2747
  store double %50, double* %52, align 8, !dbg !2748, !tbaa !456
  %53 = mul nsw i32 4, %.27, !dbg !2749
  %54 = add nsw i32 %53, 2, !dbg !2750
  %55 = sext i32 %54 to i64, !dbg !2751
  %56 = getelementptr inbounds double, double* %2, i64 %55, !dbg !2751
  %57 = load double, double* %56, align 8, !dbg !2751, !tbaa !456
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 17, !dbg !2752
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 2, !dbg !2753
  store double %57, double* %59, align 8, !dbg !2754, !tbaa !456
  %60 = mul nsw i32 4, %.27, !dbg !2755
  %61 = add nsw i32 %60, 3, !dbg !2756
  %62 = sext i32 %61 to i64, !dbg !2757
  %63 = getelementptr inbounds double, double* %2, i64 %62, !dbg !2757
  %64 = load double, double* %63, align 8, !dbg !2757, !tbaa !456
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %33, i32 0, i32 18, !dbg !2758
  store double %64, double* %65, align 8, !dbg !2759, !tbaa !2594
  %66 = add nsw i32 %.27, 1, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %66, metadata !2701, metadata !DIExpression()), !dbg !2705
  br label %67, !dbg !2761

67:                                               ; preds = %38, %30
  %.3 = phi i32 [ %66, %38 ], [ %.27, %30 ], !dbg !2762
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2701, metadata !DIExpression()), !dbg !2705
  br label %68, !dbg !2763

68:                                               ; preds = %67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2701, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2700, metadata !DIExpression()), !dbg !2705
  %69 = load i32, i32* %26, align 8, !dbg !2724, !tbaa !585
  %70 = sext i32 %69 to i64, !dbg !2727
  %71 = icmp slt i64 %indvars.iv.next, %70, !dbg !2727
  br i1 %71, label %30, label %._crit_edge, !dbg !2728, !llvm.loop !2765

._crit_edge:                                      ; preds = %68
  %split = phi i32 [ %.3, %68 ]
  br label %72, !dbg !2728

72:                                               ; preds = %._crit_edge, %21
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.19, %21 ], !dbg !2762
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2701, metadata !DIExpression()), !dbg !2705
  br label %73, !dbg !2767

73:                                               ; preds = %72
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2701, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !2699, metadata !DIExpression()), !dbg !2705
  %74 = load i32, i32* %17, align 8, !dbg !2714, !tbaa !666
  %75 = sext i32 %74 to i64, !dbg !2719
  %76 = icmp slt i64 %indvars.iv.next5, %75, !dbg !2719
  br i1 %76, label %21, label %._crit_edge12, !dbg !2720, !llvm.loop !2769

._crit_edge12:                                    ; preds = %73
  %split13 = phi i32 [ %.2.lcssa, %73 ]
  br label %77, !dbg !2720

77:                                               ; preds = %._crit_edge12, %16
  %.1.lcssa = phi i32 [ %split13, %._crit_edge12 ], [ %.0114, %16 ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2701, metadata !DIExpression()), !dbg !2705
  br label %78, !dbg !2772

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i32 0, i32 4, !dbg !2773
  %80 = load %struct.strand_t*, %struct.strand_t** %79, align 8, !dbg !2773, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %80, metadata !2702, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2701, metadata !DIExpression()), !dbg !2705
  %81 = icmp ne %struct.strand_t* %80, null, !dbg !2713
  br i1 %81, label %16, label %._crit_edge18, !dbg !2713, !llvm.loop !2774

._crit_edge18:                                    ; preds = %78
  %split19 = phi i32 [ %.1.lcssa, %78 ]
  br label %82, !dbg !2713

82:                                               ; preds = %._crit_edge18, %9
  %.01.lcssa = phi i32 [ %split19, %._crit_edge18 ], [ 0, %9 ], !dbg !2771
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !2701, metadata !DIExpression()), !dbg !2705
  ret i32 %.01.lcssa, !dbg !2776
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NAB_ainit(i8** %0, i32 %1) #0 !dbg !2777 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2781, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 %1, metadata !2782, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 0, metadata !2783, metadata !DIExpression()), !dbg !2784
  %3 = sext i32 %1 to i64, !dbg !2785
  call void @llvm.dbg.value(metadata i64 0, metadata !2783, metadata !DIExpression()), !dbg !2784
  %4 = icmp slt i64 0, %3, !dbg !2787
  br i1 %4, label %.lr.ph, label %9, !dbg !2789

.lr.ph:                                           ; preds = %2
  br label %5, !dbg !2789

5:                                                ; preds = %.lr.ph, %7
  %indvars.iv1 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2783, metadata !DIExpression()), !dbg !2784
  %6 = getelementptr inbounds i8*, i8** %0, i64 %indvars.iv1, !dbg !2790
  store i8* null, i8** %6, align 8, !dbg !2791, !tbaa !672
  br label %7, !dbg !2790

7:                                                ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1, 1, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2783, metadata !DIExpression()), !dbg !2784
  %8 = icmp slt i64 %indvars.iv.next, %3, !dbg !2787
  br i1 %8, label %5, label %._crit_edge, !dbg !2789, !llvm.loop !2793

._crit_edge:                                      ; preds = %7
  br label %9, !dbg !2789

9:                                                ; preds = %._crit_edge, %2
  ret i32 0, !dbg !2795
}

; Function Attrs: nounwind uwtable
define dso_local void @NAB_initres(%struct.residue_t* %0, i32 %1) #0 !dbg !2796 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2798, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i32 %1, metadata !2799, metadata !DIExpression()), !dbg !2800
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 0, !dbg !2801
  store %struct.residue_t* null, %struct.residue_t** %3, align 8, !dbg !2802, !tbaa !2803
  %4 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 1, !dbg !2804
  store i32 0, i32* %4, align 8, !dbg !2805, !tbaa !2806
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 2, !dbg !2807
  store i32 0, i32* %5, align 4, !dbg !2808, !tbaa !1490
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 3, !dbg !2809
  store i32 0, i32* %6, align 8, !dbg !2810, !tbaa !1494
  %7 = icmp ne i32 %1, 0, !dbg !2811
  br i1 %7, label %8, label %11, !dbg !2813

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !2814
  store i8* null, i8** %9, align 8, !dbg !2816, !tbaa !529
  %10 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 5, !dbg !2817
  store i8* null, i8** %10, align 8, !dbg !2818, !tbaa !537
  br label %11, !dbg !2819

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 6, !dbg !2820
  store i32 0, i32* %12, align 8, !dbg !2821, !tbaa !1618
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 7, !dbg !2822
  store i32 0, i32* %13, align 4, !dbg !2823, !tbaa !2441
  %14 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 8, !dbg !2824
  store i32 0, i32* %14, align 8, !dbg !2825, !tbaa !2826
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 9, !dbg !2827
  store %struct.strand_t* null, %struct.strand_t** %15, align 8, !dbg !2828, !tbaa !914
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 10, !dbg !2829
  store %struct.extbond_t* null, %struct.extbond_t** %16, align 8, !dbg !2830, !tbaa !544
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 11, !dbg !2831
  store i32 0, i32* %17, align 8, !dbg !2832, !tbaa !2833
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 12, !dbg !2834
  store [2 x i32]* null, [2 x i32]** %18, align 8, !dbg !2835, !tbaa !558
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 8, !dbg !2836
  store i32 0, i32* %19, align 8, !dbg !2837, !tbaa !2826
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 13, !dbg !2838
  store i32 0, i32* %20, align 8, !dbg !2839, !tbaa !2840
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 14, !dbg !2841
  store %struct.chiral_t* null, %struct.chiral_t** %21, align 8, !dbg !2842, !tbaa !566
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !2843
  store i32 0, i32* %22, align 8, !dbg !2844, !tbaa !585
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16, !dbg !2845
  store i32* null, i32** %23, align 8, !dbg !2846, !tbaa !574
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2847
  store %struct.atom_t* null, %struct.atom_t** %24, align 8, !dbg !2848, !tbaa !582
  ret void, !dbg !2849
}

; Function Attrs: nounwind uwtable
define dso_local void @NAB_initatom(%struct.atom_t* %0, i32 %1) #0 !dbg !2850 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !2854, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 %1, metadata !2855, metadata !DIExpression()), !dbg !2857
  %3 = icmp ne i32 %1, 0, !dbg !2858
  br i1 %3, label %4, label %6, !dbg !2860

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 0, !dbg !2861
  store i8* null, i8** %5, align 8, !dbg !2862, !tbaa !591
  br label %6, !dbg !2863

6:                                                ; preds = %4, %2
  %7 = icmp ne i32 %1, 0, !dbg !2864
  br i1 %7, label %8, label %10, !dbg !2866

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 1, !dbg !2867
  store i8* null, i8** %9, align 8, !dbg !2868, !tbaa !599
  br label %10, !dbg !2869

10:                                               ; preds = %8, %6
  %11 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 2, !dbg !2870
  store i32 0, i32* %11, align 8, !dbg !2871, !tbaa !1669
  %12 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 3, !dbg !2872
  store i32 0, i32* %12, align 4, !dbg !2873, !tbaa !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !2856, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 0, metadata !2856, metadata !DIExpression()), !dbg !2857
  br label %13, !dbg !2875

13:                                               ; preds = %10, %16
  %indvars.iv1 = phi i64 [ 0, %10 ], [ %indvars.iv.next, %16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !2856, metadata !DIExpression()), !dbg !2857
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 4, !dbg !2877
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %indvars.iv1, !dbg !2879
  store i32 0, i32* %15, align 4, !dbg !2880, !tbaa !2389
  br label %16, !dbg !2879

16:                                               ; preds = %13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2856, metadata !DIExpression()), !dbg !2857
  %exitcond = icmp ne i64 %indvars.iv.next, 8, !dbg !2882
  br i1 %exitcond, label %13, label %17, !dbg !2875, !llvm.loop !2883

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !2885
  store %struct.residue_t* null, %struct.residue_t** %18, align 8, !dbg !2886, !tbaa !2887
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 6, !dbg !2888
  store double 0.000000e+00, double* %19, align 8, !dbg !2889, !tbaa !2890
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 7, !dbg !2891
  store double 0.000000e+00, double* %20, align 8, !dbg !2892, !tbaa !2893
  %21 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 8, !dbg !2894
  store double 0.000000e+00, double* %21, align 8, !dbg !2895, !tbaa !2896
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 9, !dbg !2897
  store double 1.000000e+00, double* %22, align 8, !dbg !2898, !tbaa !2899
  %23 = icmp ne i32 %1, 0, !dbg !2900
  br i1 %23, label %24, label %26, !dbg !2902

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 10, !dbg !2903
  store i8* null, i8** %25, align 8, !dbg !2904, !tbaa !606
  br label %26, !dbg !2905

26:                                               ; preds = %24, %17
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 11, !dbg !2906
  store i32 0, i32* %27, align 8, !dbg !2907, !tbaa !2908
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 12, !dbg !2909
  store double 0.000000e+00, double* %28, align 8, !dbg !2910, !tbaa !2911
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 13, !dbg !2912
  store double 0.000000e+00, double* %29, align 8, !dbg !2913, !tbaa !2914
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 14, !dbg !2915
  store i32 0, i32* %30, align 8, !dbg !2916, !tbaa !1510
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 15, !dbg !2917
  store i32 0, i32* %31, align 4, !dbg !2918, !tbaa !1506
  %32 = icmp ne i32 %1, 0, !dbg !2919
  br i1 %32, label %33, label %35, !dbg !2921

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 16, !dbg !2922
  store i8* null, i8** %34, align 8, !dbg !2923, !tbaa !613
  br label %35, !dbg !2924

35:                                               ; preds = %33, %26
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !2925
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 0, i64 0, !dbg !2926
  store double 0.000000e+00, double* %37, align 8, !dbg !2927, !tbaa !456
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !2928
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 1, !dbg !2929
  store double 0.000000e+00, double* %39, align 8, !dbg !2930, !tbaa !456
  %40 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !2931
  %41 = getelementptr inbounds [3 x double], [3 x double]* %40, i64 0, i64 2, !dbg !2932
  store double 0.000000e+00, double* %41, align 8, !dbg !2933, !tbaa !456
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 18, !dbg !2934
  store double 0.000000e+00, double* %42, align 8, !dbg !2935, !tbaa !2594
  ret void, !dbg !2936
}

; Function Attrs: nounwind uwtable
define dso_local %struct.atom_t* @NAB_mnext(%struct.molecule_t* %0, %struct.atom_t* %1) #0 !dbg !2937 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2941, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata %struct.atom_t* %1, metadata !2942, metadata !DIExpression()), !dbg !2949
  %3 = icmp ne %struct.atom_t* %1, null, !dbg !2950
  br i1 %3, label %30, label %4, !dbg !2952

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !2953
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !2953, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !2943, metadata !DIExpression()), !dbg !2949
  br label %7, !dbg !2956

7:                                                ; preds = %16, %4
  %.02 = phi %struct.strand_t* [ %6, %4 ], [ %18, %16 ], !dbg !2957
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02, metadata !2943, metadata !DIExpression()), !dbg !2949
  %8 = icmp ne %struct.strand_t* %.02, null, !dbg !2958
  br i1 %8, label %9, label %13, !dbg !2960

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !2961
  %11 = load i32, i32* %10, align 8, !dbg !2961, !tbaa !666
  %12 = icmp eq i32 %11, 0, !dbg !2962
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i1 [ false, %7 ], [ %12, %9 ], !dbg !2963
  br i1 %14, label %15, label %19, !dbg !2964

15:                                               ; preds = %13
  br label %16, !dbg !2964

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 4, !dbg !2965
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8, !dbg !2965, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %18, metadata !2943, metadata !DIExpression()), !dbg !2949
  br label %7, !dbg !2966, !llvm.loop !2967

19:                                               ; preds = %13
  %.02.lcssa = phi %struct.strand_t* [ %.02, %13 ], !dbg !2957
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02.lcssa, metadata !2943, metadata !DIExpression()), !dbg !2949
  %20 = icmp ne %struct.strand_t* %.02.lcssa, null, !dbg !2969
  br i1 %20, label %22, label %21, !dbg !2971

21:                                               ; preds = %19
  br label %111, !dbg !2972

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02.lcssa, i32 0, i32 7, !dbg !2973
  %24 = load %struct.residue_t**, %struct.residue_t*** %23, align 8, !dbg !2973, !tbaa !670
  %25 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %24, i64 0, !dbg !2974
  %26 = load %struct.residue_t*, %struct.residue_t** %25, align 8, !dbg !2974, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %26, metadata !2944, metadata !DIExpression()), !dbg !2949
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %26, i32 0, i32 17, !dbg !2975
  %28 = load %struct.atom_t*, %struct.atom_t** %27, align 8, !dbg !2975, !tbaa !582
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i64 0, !dbg !2976
  call void @llvm.dbg.value(metadata %struct.atom_t* %29, metadata !2945, metadata !DIExpression()), !dbg !2949
  br label %111, !dbg !2977

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i32 0, i32 5, !dbg !2978
  %32 = load %struct.residue_t*, %struct.residue_t** %31, align 8, !dbg !2978, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %32, metadata !2944, metadata !DIExpression()), !dbg !2949
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 17, !dbg !2980
  %34 = load %struct.atom_t*, %struct.atom_t** %33, align 8, !dbg !2980, !tbaa !582
  %35 = ptrtoint %struct.atom_t* %1 to i64, !dbg !2981
  %36 = ptrtoint %struct.atom_t* %34 to i64, !dbg !2981
  %37 = sub i64 %35, %36, !dbg !2981
  %38 = sdiv exact i64 %37, 176, !dbg !2981
  %39 = add nsw i64 %38, 1, !dbg !2982
  %40 = trunc i64 %39 to i32, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %40, metadata !2948, metadata !DIExpression()), !dbg !2949
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 15, !dbg !2984
  %42 = load i32, i32* %41, align 8, !dbg !2984, !tbaa !585
  %43 = icmp slt i32 %40, %42, !dbg !2986
  br i1 %43, label %44, label %49, !dbg !2987

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 17, !dbg !2988
  %46 = load %struct.atom_t*, %struct.atom_t** %45, align 8, !dbg !2988, !tbaa !582
  %47 = sext i32 %40 to i64, !dbg !2990
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i64 %47, !dbg !2990
  call void @llvm.dbg.value(metadata %struct.atom_t* %48, metadata !2945, metadata !DIExpression()), !dbg !2949
  br label %111, !dbg !2991

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i32 0, i32 9, !dbg !2992
  %51 = load %struct.strand_t*, %struct.strand_t** %50, align 8, !dbg !2992, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %51, metadata !2943, metadata !DIExpression()), !dbg !2949
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i32 0, i32 5, !dbg !2993
  %53 = load i32, i32* %52, align 8, !dbg !2993, !tbaa !666
  call void @llvm.dbg.value(metadata i32 %53, metadata !2947, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i32 0, metadata !2946, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 0, metadata !2946, metadata !DIExpression()), !dbg !2949
  %54 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i32 0, i32 5, !dbg !2995
  %55 = load i32, i32* %54, align 8, !dbg !2995, !tbaa !666
  %56 = sext i32 %55 to i64, !dbg !2997
  %57 = icmp slt i64 0, %56, !dbg !2997
  br i1 %57, label %.lr.ph, label %.loopexit, !dbg !2998

.lr.ph:                                           ; preds = %49
  br label %58, !dbg !2998

58:                                               ; preds = %.lr.ph, %68
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %68 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2946, metadata !DIExpression()), !dbg !2949
  %59 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i32 0, i32 7, !dbg !2999
  %60 = load %struct.residue_t**, %struct.residue_t*** %59, align 8, !dbg !2999, !tbaa !670
  %61 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %60, i64 %indvars.iv5, !dbg !3002
  %62 = load %struct.residue_t*, %struct.residue_t** %61, align 8, !dbg !3002, !tbaa !672
  %63 = icmp eq %struct.residue_t* %62, %32, !dbg !3003
  br i1 %63, label %64, label %67, !dbg !3004

64:                                               ; preds = %58
  %.03.lcssa4.wide = phi i64 [ %indvars.iv5, %58 ]
  %65 = trunc i64 %.03.lcssa4.wide to i32, !dbg !2949
  call void @llvm.dbg.value(metadata i32 %65, metadata !2946, metadata !DIExpression()), !dbg !2949
  %66 = add nsw i32 %65, 1, !dbg !3005
  call void @llvm.dbg.value(metadata i32 %66, metadata !2947, metadata !DIExpression()), !dbg !2949
  br label %72, !dbg !3007

67:                                               ; preds = %58
  br label %68, !dbg !3008

68:                                               ; preds = %67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2946, metadata !DIExpression()), !dbg !2949
  %69 = load i32, i32* %54, align 8, !dbg !2995, !tbaa !666
  %70 = sext i32 %69 to i64, !dbg !2997
  %71 = icmp slt i64 %indvars.iv.next, %70, !dbg !2997
  br i1 %71, label %58, label %..loopexit_crit_edge, !dbg !2998, !llvm.loop !3010

..loopexit_crit_edge:                             ; preds = %68
  br label %.loopexit, !dbg !2998

.loopexit:                                        ; preds = %..loopexit_crit_edge, %49
  br label %72, !dbg !3012

72:                                               ; preds = %.loopexit, %64
  %.01 = phi i32 [ %66, %64 ], [ %53, %.loopexit ], !dbg !3014
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2947, metadata !DIExpression()), !dbg !2949
  %73 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i32 0, i32 5, !dbg !3012
  %74 = load i32, i32* %73, align 8, !dbg !3012, !tbaa !666
  %75 = icmp slt i32 %.01, %74, !dbg !3015
  br i1 %75, label %76, label %85, !dbg !3016

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i32 0, i32 7, !dbg !3017
  %78 = load %struct.residue_t**, %struct.residue_t*** %77, align 8, !dbg !3017, !tbaa !670
  %79 = sext i32 %.01 to i64, !dbg !3019
  %80 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %78, i64 %79, !dbg !3019
  %81 = load %struct.residue_t*, %struct.residue_t** %80, align 8, !dbg !3019, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %81, metadata !2944, metadata !DIExpression()), !dbg !2949
  %82 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %81, i32 0, i32 17, !dbg !3020
  %83 = load %struct.atom_t*, %struct.atom_t** %82, align 8, !dbg !3020, !tbaa !582
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %83, i64 0, !dbg !3021
  call void @llvm.dbg.value(metadata %struct.atom_t* %84, metadata !2945, metadata !DIExpression()), !dbg !2949
  br label %111, !dbg !3022

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i32 0, i32 4, !dbg !3023
  %87 = load %struct.strand_t*, %struct.strand_t** %86, align 8, !dbg !3023, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %87, metadata !2943, metadata !DIExpression()), !dbg !2949
  br label %88, !dbg !3025

88:                                               ; preds = %97, %85
  %.1 = phi %struct.strand_t* [ %87, %85 ], [ %99, %97 ], !dbg !3026
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1, metadata !2943, metadata !DIExpression()), !dbg !2949
  %89 = icmp ne %struct.strand_t* %.1, null, !dbg !3027
  br i1 %89, label %90, label %94, !dbg !3029

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1, i32 0, i32 5, !dbg !3030
  %92 = load i32, i32* %91, align 8, !dbg !3030, !tbaa !666
  %93 = icmp eq i32 %92, 0, !dbg !3031
  br label %94

94:                                               ; preds = %90, %88
  %95 = phi i1 [ false, %88 ], [ %93, %90 ], !dbg !3032
  br i1 %95, label %96, label %100, !dbg !3033

96:                                               ; preds = %94
  br label %97, !dbg !3033

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1, i32 0, i32 4, !dbg !3034
  %99 = load %struct.strand_t*, %struct.strand_t** %98, align 8, !dbg !3034, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %99, metadata !2943, metadata !DIExpression()), !dbg !2949
  br label %88, !dbg !3035, !llvm.loop !3036

100:                                              ; preds = %94
  %.1.lcssa = phi %struct.strand_t* [ %.1, %94 ], !dbg !3026
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1.lcssa, metadata !2943, metadata !DIExpression()), !dbg !2949
  %101 = icmp ne %struct.strand_t* %.1.lcssa, null, !dbg !3038
  br i1 %101, label %103, label %102, !dbg !3040

102:                                              ; preds = %100
  br label %111, !dbg !3041

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1.lcssa, i32 0, i32 7, !dbg !3042
  %105 = load %struct.residue_t**, %struct.residue_t*** %104, align 8, !dbg !3042, !tbaa !670
  %106 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %105, i64 0, !dbg !3043
  %107 = load %struct.residue_t*, %struct.residue_t** %106, align 8, !dbg !3043, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %107, metadata !2944, metadata !DIExpression()), !dbg !2949
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %107, i32 0, i32 17, !dbg !3044
  %109 = load %struct.atom_t*, %struct.atom_t** %108, align 8, !dbg !3044, !tbaa !582
  %110 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %109, i64 0, !dbg !3045
  call void @llvm.dbg.value(metadata %struct.atom_t* %110, metadata !2945, metadata !DIExpression()), !dbg !2949
  br label %111, !dbg !3046

111:                                              ; preds = %103, %102, %76, %44, %22, %21
  %.0 = phi %struct.atom_t* [ %48, %44 ], [ %84, %76 ], [ %110, %103 ], [ null, %102 ], [ %29, %22 ], [ null, %21 ], !dbg !3047
  ret %struct.atom_t* %.0, !dbg !3048
}

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @NAB_rnext(%struct.molecule_t* %0, %struct.residue_t* %1) #0 !dbg !3049 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !3053, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata %struct.residue_t* %1, metadata !3054, metadata !DIExpression()), !dbg !3059
  %3 = icmp ne %struct.residue_t* %1, null, !dbg !3060
  br i1 %3, label %27, label %4, !dbg !3062

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !3063
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !3063, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !3055, metadata !DIExpression()), !dbg !3059
  br label %7, !dbg !3066

7:                                                ; preds = %16, %4
  %.02 = phi %struct.strand_t* [ %6, %4 ], [ %18, %16 ], !dbg !3067
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02, metadata !3055, metadata !DIExpression()), !dbg !3059
  %8 = icmp ne %struct.strand_t* %.02, null, !dbg !3068
  br i1 %8, label %9, label %13, !dbg !3070

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 5, !dbg !3071
  %11 = load i32, i32* %10, align 8, !dbg !3071, !tbaa !666
  %12 = icmp eq i32 %11, 0, !dbg !3072
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i1 [ false, %7 ], [ %12, %9 ], !dbg !3073
  br i1 %14, label %15, label %19, !dbg !3074

15:                                               ; preds = %13
  br label %16, !dbg !3074

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i32 0, i32 4, !dbg !3075
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8, !dbg !3075, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %18, metadata !3055, metadata !DIExpression()), !dbg !3059
  br label %7, !dbg !3076, !llvm.loop !3077

19:                                               ; preds = %13
  %.02.lcssa = phi %struct.strand_t* [ %.02, %13 ], !dbg !3067
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02.lcssa, metadata !3055, metadata !DIExpression()), !dbg !3059
  %20 = icmp ne %struct.strand_t* %.02.lcssa, null, !dbg !3079
  br i1 %20, label %22, label %21, !dbg !3081

21:                                               ; preds = %19
  br label %83, !dbg !3082

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02.lcssa, i32 0, i32 7, !dbg !3083
  %24 = load %struct.residue_t**, %struct.residue_t*** %23, align 8, !dbg !3083, !tbaa !670
  %25 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %24, i64 0, !dbg !3084
  %26 = load %struct.residue_t*, %struct.residue_t** %25, align 8, !dbg !3084, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %26, metadata !3056, metadata !DIExpression()), !dbg !3059
  br label %83, !dbg !3085

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1, i32 0, i32 9, !dbg !3086
  %29 = load %struct.strand_t*, %struct.strand_t** %28, align 8, !dbg !3086, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %29, metadata !3055, metadata !DIExpression()), !dbg !3059
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %29, i32 0, i32 5, !dbg !3088
  %31 = load i32, i32* %30, align 8, !dbg !3088, !tbaa !666
  call void @llvm.dbg.value(metadata i32 %31, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 0, metadata !3057, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 0, metadata !3057, metadata !DIExpression()), !dbg !3059
  %32 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %29, i32 0, i32 5, !dbg !3090
  %33 = load i32, i32* %32, align 8, !dbg !3090, !tbaa !666
  %34 = sext i32 %33 to i64, !dbg !3092
  %35 = icmp slt i64 0, %34, !dbg !3092
  br i1 %35, label %.lr.ph, label %.loopexit, !dbg !3093

.lr.ph:                                           ; preds = %27
  br label %36, !dbg !3093

36:                                               ; preds = %.lr.ph, %46
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %46 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3057, metadata !DIExpression()), !dbg !3059
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %29, i32 0, i32 7, !dbg !3094
  %38 = load %struct.residue_t**, %struct.residue_t*** %37, align 8, !dbg !3094, !tbaa !670
  %39 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %38, i64 %indvars.iv5, !dbg !3097
  %40 = load %struct.residue_t*, %struct.residue_t** %39, align 8, !dbg !3097, !tbaa !672
  %41 = icmp eq %struct.residue_t* %40, %1, !dbg !3098
  br i1 %41, label %42, label %45, !dbg !3099

42:                                               ; preds = %36
  %.03.lcssa4.wide = phi i64 [ %indvars.iv5, %36 ]
  %43 = trunc i64 %.03.lcssa4.wide to i32, !dbg !3059
  call void @llvm.dbg.value(metadata i32 %43, metadata !3057, metadata !DIExpression()), !dbg !3059
  %44 = add nsw i32 %43, 1, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %44, metadata !3058, metadata !DIExpression()), !dbg !3059
  br label %50, !dbg !3102

45:                                               ; preds = %36
  br label %46, !dbg !3103

46:                                               ; preds = %45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3057, metadata !DIExpression()), !dbg !3059
  %47 = load i32, i32* %32, align 8, !dbg !3090, !tbaa !666
  %48 = sext i32 %47 to i64, !dbg !3092
  %49 = icmp slt i64 %indvars.iv.next, %48, !dbg !3092
  br i1 %49, label %36, label %..loopexit_crit_edge, !dbg !3093, !llvm.loop !3105

..loopexit_crit_edge:                             ; preds = %46
  br label %.loopexit, !dbg !3093

.loopexit:                                        ; preds = %..loopexit_crit_edge, %27
  br label %50, !dbg !3107

50:                                               ; preds = %.loopexit, %42
  %.01 = phi i32 [ %44, %42 ], [ %31, %.loopexit ], !dbg !3109
  call void @llvm.dbg.value(metadata i32 %.01, metadata !3058, metadata !DIExpression()), !dbg !3059
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %29, i32 0, i32 5, !dbg !3107
  %52 = load i32, i32* %51, align 8, !dbg !3107, !tbaa !666
  %53 = icmp slt i32 %.01, %52, !dbg !3110
  br i1 %53, label %54, label %60, !dbg !3111

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %29, i32 0, i32 7, !dbg !3112
  %56 = load %struct.residue_t**, %struct.residue_t*** %55, align 8, !dbg !3112, !tbaa !670
  %57 = sext i32 %.01 to i64, !dbg !3114
  %58 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %56, i64 %57, !dbg !3114
  %59 = load %struct.residue_t*, %struct.residue_t** %58, align 8, !dbg !3114, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %59, metadata !3056, metadata !DIExpression()), !dbg !3059
  br label %83, !dbg !3115

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %29, i32 0, i32 4, !dbg !3116
  %62 = load %struct.strand_t*, %struct.strand_t** %61, align 8, !dbg !3116, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %62, metadata !3055, metadata !DIExpression()), !dbg !3059
  br label %63, !dbg !3118

63:                                               ; preds = %72, %60
  %.1 = phi %struct.strand_t* [ %62, %60 ], [ %74, %72 ], !dbg !3119
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1, metadata !3055, metadata !DIExpression()), !dbg !3059
  %64 = icmp ne %struct.strand_t* %.1, null, !dbg !3120
  br i1 %64, label %65, label %69, !dbg !3122

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1, i32 0, i32 5, !dbg !3123
  %67 = load i32, i32* %66, align 8, !dbg !3123, !tbaa !666
  %68 = icmp eq i32 %67, 0, !dbg !3124
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i1 [ false, %63 ], [ %68, %65 ], !dbg !3125
  br i1 %70, label %71, label %75, !dbg !3126

71:                                               ; preds = %69
  br label %72, !dbg !3126

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1, i32 0, i32 4, !dbg !3127
  %74 = load %struct.strand_t*, %struct.strand_t** %73, align 8, !dbg !3127, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %74, metadata !3055, metadata !DIExpression()), !dbg !3059
  br label %63, !dbg !3128, !llvm.loop !3129

75:                                               ; preds = %69
  %.1.lcssa = phi %struct.strand_t* [ %.1, %69 ], !dbg !3119
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1.lcssa, metadata !3055, metadata !DIExpression()), !dbg !3059
  %76 = icmp ne %struct.strand_t* %.1.lcssa, null, !dbg !3131
  br i1 %76, label %78, label %77, !dbg !3133

77:                                               ; preds = %75
  br label %83, !dbg !3134

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1.lcssa, i32 0, i32 7, !dbg !3135
  %80 = load %struct.residue_t**, %struct.residue_t*** %79, align 8, !dbg !3135, !tbaa !670
  %81 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %80, i64 0, !dbg !3136
  %82 = load %struct.residue_t*, %struct.residue_t** %81, align 8, !dbg !3136, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %82, metadata !3056, metadata !DIExpression()), !dbg !3059
  br label %83, !dbg !3137

83:                                               ; preds = %78, %77, %54, %22, %21
  %.0 = phi %struct.residue_t* [ %59, %54 ], [ %82, %78 ], [ null, %77 ], [ %26, %22 ], [ null, %21 ], !dbg !3138
  ret %struct.residue_t* %.0, !dbg !3139
}

; Function Attrs: nounwind uwtable
define dso_local %struct.atom_t* @NAB_anext(%struct.residue_t* %0, %struct.atom_t* %1) #0 !dbg !3140 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !3144, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata %struct.atom_t* %1, metadata !3145, metadata !DIExpression()), !dbg !3148
  %3 = icmp ne %struct.atom_t* %1, null, !dbg !3149
  br i1 %3, label %7, label %4, !dbg !3151

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !3152
  %6 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !3152, !tbaa !582
  call void @llvm.dbg.value(metadata %struct.atom_t* %6, metadata !3146, metadata !DIExpression()), !dbg !3148
  br label %25, !dbg !3154

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !3155
  %9 = load %struct.atom_t*, %struct.atom_t** %8, align 8, !dbg !3155, !tbaa !582
  %10 = ptrtoint %struct.atom_t* %1 to i64, !dbg !3157
  %11 = ptrtoint %struct.atom_t* %9 to i64, !dbg !3157
  %12 = sub i64 %10, %11, !dbg !3157
  %13 = sdiv exact i64 %12, 176, !dbg !3157
  %14 = add nsw i64 %13, 1, !dbg !3158
  %15 = trunc i64 %14 to i32, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %15, metadata !3147, metadata !DIExpression()), !dbg !3148
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !3160
  %17 = load i32, i32* %16, align 8, !dbg !3160, !tbaa !585
  %18 = icmp slt i32 %15, %17, !dbg !3162
  br i1 %18, label %19, label %24, !dbg !3163

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !3164
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !3164, !tbaa !582
  %22 = sext i32 %15 to i64, !dbg !3166
  %23 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %22, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.atom_t* %23, metadata !3146, metadata !DIExpression()), !dbg !3148
  br label %25, !dbg !3167

24:                                               ; preds = %7
  br label %25, !dbg !3168

25:                                               ; preds = %24, %19, %4
  %.0 = phi %struct.atom_t* [ %23, %19 ], [ null, %24 ], [ %6, %4 ], !dbg !3169
  ret %struct.atom_t* %.0, !dbg !3170
}

; Function Attrs: nounwind uwtable
define dso_local i32* @NAB_mri(%struct.molecule_t* %0, i8* %1) #0 !dbg !3171 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !3175, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3176, metadata !DIExpression()), !dbg !3177
  %3 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !3178
  %4 = icmp ne i32 %3, 0, !dbg !3178
  br i1 %4, label %12, label %5, !dbg !3180

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !3181
  %7 = load i32, i32* %6, align 8, !dbg !3181, !tbaa !507
  %8 = icmp ne i32 %7, 0, !dbg !3184
  br i1 %8, label %10, label %9, !dbg !3185

9:                                                ; preds = %5
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !3186
  br label %10, !dbg !3186

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 1, !dbg !3187
  br label %38, !dbg !3188

12:                                               ; preds = %2
  %13 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !3189
  %14 = icmp ne i32 %13, 0, !dbg !3189
  br i1 %14, label %22, label %15, !dbg !3191

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !3192
  %17 = load i32, i32* %16, align 8, !dbg !3192, !tbaa !507
  %18 = icmp ne i32 %17, 0, !dbg !3195
  br i1 %18, label %20, label %19, !dbg !3196

19:                                               ; preds = %15
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !3197
  br label %20, !dbg !3197

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 3, !dbg !3198
  br label %38, !dbg !3199

22:                                               ; preds = %12
  %23 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !3200
  %24 = icmp ne i32 %23, 0, !dbg !3200
  br i1 %24, label %32, label %25, !dbg !3202

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 5, !dbg !3203
  %27 = load i32, i32* %26, align 8, !dbg !3203, !tbaa !507
  %28 = icmp ne i32 %27, 0, !dbg !3206
  br i1 %28, label %30, label %29, !dbg !3207

29:                                               ; preds = %25
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !3208
  br label %30, !dbg !3208

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 4, !dbg !3209
  br label %38, !dbg !3210

32:                                               ; preds = %22
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3211, !tbaa !672
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i8* %1), !dbg !3212
  br label %35

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38, !dbg !3213

38:                                               ; preds = %37, %30, %20, %10
  %.0 = phi i32* [ null, %37 ], [ %31, %30 ], [ %21, %20 ], [ %11, %10 ], !dbg !3177
  ret i32* %.0, !dbg !3214
}

; Function Attrs: nounwind uwtable
define dso_local i32* @NAB_rri(%struct.residue_t* %0, i8* %1) #0 !dbg !352 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !356, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %1, metadata !357, metadata !DIExpression()), !dbg !3215
  %3 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !3216
  %4 = icmp ne i32 %3, 0, !dbg !3216
  br i1 %4, label %16, label %5, !dbg !3218

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 9, !dbg !3219
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !3219, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !358, metadata !DIExpression()), !dbg !3215
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %7, i32 0, i32 3, !dbg !3221
  %9 = load %struct.molecule_t*, %struct.molecule_t** %8, align 8, !dbg !3221, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %9, metadata !359, metadata !DIExpression()), !dbg !3215
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %9, i32 0, i32 5, !dbg !3222
  %11 = load i32, i32* %10, align 8, !dbg !3222, !tbaa !507
  %12 = icmp ne i32 %11, 0, !dbg !3224
  br i1 %12, label %14, label %13, !dbg !3225

13:                                               ; preds = %5
  call void @upd_molnumbers(%struct.molecule_t* %9), !dbg !3226
  br label %14, !dbg !3226

14:                                               ; preds = %13, %5
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 3, !dbg !3227
  br label %50, !dbg !3228

16:                                               ; preds = %2
  %17 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !3229
  %18 = icmp ne i32 %17, 0, !dbg !3229
  br i1 %18, label %30, label %19, !dbg !3231

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 9, !dbg !3232
  %21 = load %struct.strand_t*, %struct.strand_t** %20, align 8, !dbg !3232, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %21, metadata !358, metadata !DIExpression()), !dbg !3215
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %21, i32 0, i32 3, !dbg !3234
  %23 = load %struct.molecule_t*, %struct.molecule_t** %22, align 8, !dbg !3234, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %23, metadata !359, metadata !DIExpression()), !dbg !3215
  %24 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %23, i32 0, i32 5, !dbg !3235
  %25 = load i32, i32* %24, align 8, !dbg !3235, !tbaa !507
  %26 = icmp ne i32 %25, 0, !dbg !3237
  br i1 %26, label %28, label %27, !dbg !3238

27:                                               ; preds = %19
  call void @upd_molnumbers(%struct.molecule_t* %23), !dbg !3239
  br label %28, !dbg !3239

28:                                               ; preds = %27, %19
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 2, !dbg !3240
  br label %50, !dbg !3241

30:                                               ; preds = %16
  %31 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !3242
  %32 = icmp ne i32 %31, 0, !dbg !3242
  br i1 %32, label %44, label %33, !dbg !3244

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 9, !dbg !3245
  %35 = load %struct.strand_t*, %struct.strand_t** %34, align 8, !dbg !3245, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %35, metadata !358, metadata !DIExpression()), !dbg !3215
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %35, i32 0, i32 3, !dbg !3247
  %37 = load %struct.molecule_t*, %struct.molecule_t** %36, align 8, !dbg !3247, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %37, metadata !359, metadata !DIExpression()), !dbg !3215
  %38 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %37, i32 0, i32 5, !dbg !3248
  %39 = load i32, i32* %38, align 8, !dbg !3248, !tbaa !507
  %40 = icmp ne i32 %39, 0, !dbg !3250
  br i1 %40, label %42, label %41, !dbg !3251

41:                                               ; preds = %33
  call void @upd_molnumbers(%struct.molecule_t* %37), !dbg !3252
  br label %42, !dbg !3252

42:                                               ; preds = %41, %33
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %35, i32 0, i32 1, !dbg !3253
  br label %50, !dbg !3254

44:                                               ; preds = %30
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3255, !tbaa !672
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i8* %1), !dbg !3256
  br label %47

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  store i32 0, i32* @NAB_rri.rv_err, align 4, !dbg !3257, !tbaa !2389
  br label %50, !dbg !3258

50:                                               ; preds = %49, %42, %28, %14
  %.0 = phi i32* [ @NAB_rri.rv_err, %49 ], [ %43, %42 ], [ %29, %28 ], [ %15, %14 ], !dbg !3215
  ret i32* %.0, !dbg !3259
}

; Function Attrs: nounwind uwtable
define dso_local i8** @NAB_rrc(%struct.residue_t* %0, i8* %1) #0 !dbg !3260 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !3264, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8* %1, metadata !3265, metadata !DIExpression()), !dbg !3267
  %3 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !3268
  %4 = icmp ne i32 %3, 0, !dbg !3268
  br i1 %4, label %7, label %5, !dbg !3270

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 4, !dbg !3271
  br label %22, !dbg !3273

7:                                                ; preds = %2
  %8 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !3274
  %9 = icmp ne i32 %8, 0, !dbg !3274
  br i1 %9, label %12, label %10, !dbg !3276

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 5, !dbg !3277
  br label %22, !dbg !3279

12:                                               ; preds = %7
  %13 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !3280
  %14 = icmp ne i32 %13, 0, !dbg !3280
  br i1 %14, label %19, label %15, !dbg !3282

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 9, !dbg !3283
  %17 = load %struct.strand_t*, %struct.strand_t** %16, align 8, !dbg !3283, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %17, metadata !3266, metadata !DIExpression()), !dbg !3267
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i32 0, i32 0, !dbg !3285
  br label %22, !dbg !3286

19:                                               ; preds = %12
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3287, !tbaa !672
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i8* %1), !dbg !3289
  br label %22, !dbg !3290

22:                                               ; preds = %19, %15, %10, %5
  %.0 = phi i8** [ null, %19 ], [ %18, %15 ], [ %11, %10 ], [ %6, %5 ], !dbg !3291
  ret i8** %.0, !dbg !3292
}

; Function Attrs: nounwind uwtable
define dso_local i32* @NAB_ari(%struct.atom_t* %0, i8* %1) #0 !dbg !362 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !366, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i8* %1, metadata !367, metadata !DIExpression()), !dbg !3293
  %3 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !3294
  %4 = icmp ne i32 %3, 0, !dbg !3294
  br i1 %4, label %18, label %5, !dbg !3296

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3297
  %7 = load %struct.residue_t*, %struct.residue_t** %6, align 8, !dbg !3297, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %7, metadata !368, metadata !DIExpression()), !dbg !3293
  %8 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %7, i32 0, i32 9, !dbg !3299
  %9 = load %struct.strand_t*, %struct.strand_t** %8, align 8, !dbg !3299, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %9, metadata !369, metadata !DIExpression()), !dbg !3293
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i32 0, i32 3, !dbg !3300
  %11 = load %struct.molecule_t*, %struct.molecule_t** %10, align 8, !dbg !3300, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %11, metadata !370, metadata !DIExpression()), !dbg !3293
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %11, i32 0, i32 5, !dbg !3301
  %13 = load i32, i32* %12, align 8, !dbg !3301, !tbaa !507
  %14 = icmp ne i32 %13, 0, !dbg !3303
  br i1 %14, label %16, label %15, !dbg !3304

15:                                               ; preds = %5
  call void @upd_molnumbers(%struct.molecule_t* %11), !dbg !3305
  br label %16, !dbg !3305

16:                                               ; preds = %15, %5
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %9, i32 0, i32 1, !dbg !3306
  br label %96, !dbg !3307

18:                                               ; preds = %2
  %19 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !3308
  %20 = icmp ne i32 %19, 0, !dbg !3308
  br i1 %20, label %34, label %21, !dbg !3310

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3311
  %23 = load %struct.residue_t*, %struct.residue_t** %22, align 8, !dbg !3311, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %23, metadata !368, metadata !DIExpression()), !dbg !3293
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i32 0, i32 9, !dbg !3313
  %25 = load %struct.strand_t*, %struct.strand_t** %24, align 8, !dbg !3313, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %25, metadata !369, metadata !DIExpression()), !dbg !3293
  %26 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %25, i32 0, i32 3, !dbg !3314
  %27 = load %struct.molecule_t*, %struct.molecule_t** %26, align 8, !dbg !3314, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %27, metadata !370, metadata !DIExpression()), !dbg !3293
  %28 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %27, i32 0, i32 5, !dbg !3315
  %29 = load i32, i32* %28, align 8, !dbg !3315, !tbaa !507
  %30 = icmp ne i32 %29, 0, !dbg !3317
  br i1 %30, label %32, label %31, !dbg !3318

31:                                               ; preds = %21
  call void @upd_molnumbers(%struct.molecule_t* %27), !dbg !3319
  br label %32, !dbg !3319

32:                                               ; preds = %31, %21
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %23, i32 0, i32 3, !dbg !3320
  br label %96, !dbg !3321

34:                                               ; preds = %18
  %35 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !3322
  %36 = icmp ne i32 %35, 0, !dbg !3322
  br i1 %36, label %50, label %37, !dbg !3324

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3325
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8, !dbg !3325, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %39, metadata !368, metadata !DIExpression()), !dbg !3293
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 9, !dbg !3327
  %41 = load %struct.strand_t*, %struct.strand_t** %40, align 8, !dbg !3327, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %41, metadata !369, metadata !DIExpression()), !dbg !3293
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %41, i32 0, i32 3, !dbg !3328
  %43 = load %struct.molecule_t*, %struct.molecule_t** %42, align 8, !dbg !3328, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %43, metadata !370, metadata !DIExpression()), !dbg !3293
  %44 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %43, i32 0, i32 5, !dbg !3329
  %45 = load i32, i32* %44, align 8, !dbg !3329, !tbaa !507
  %46 = icmp ne i32 %45, 0, !dbg !3331
  br i1 %46, label %48, label %47, !dbg !3332

47:                                               ; preds = %37
  call void @upd_molnumbers(%struct.molecule_t* %43), !dbg !3333
  br label %48, !dbg !3333

48:                                               ; preds = %47, %37
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 2, !dbg !3334
  br label %96, !dbg !3335

50:                                               ; preds = %34
  %51 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)) #9, !dbg !3336
  %52 = icmp ne i32 %51, 0, !dbg !3336
  br i1 %52, label %66, label %53, !dbg !3338

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3339
  %55 = load %struct.residue_t*, %struct.residue_t** %54, align 8, !dbg !3339, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %55, metadata !368, metadata !DIExpression()), !dbg !3293
  %56 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %55, i32 0, i32 9, !dbg !3341
  %57 = load %struct.strand_t*, %struct.strand_t** %56, align 8, !dbg !3341, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !369, metadata !DIExpression()), !dbg !3293
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %57, i32 0, i32 3, !dbg !3342
  %59 = load %struct.molecule_t*, %struct.molecule_t** %58, align 8, !dbg !3342, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %59, metadata !370, metadata !DIExpression()), !dbg !3293
  %60 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %59, i32 0, i32 5, !dbg !3343
  %61 = load i32, i32* %60, align 8, !dbg !3343, !tbaa !507
  %62 = icmp ne i32 %61, 0, !dbg !3345
  br i1 %62, label %64, label %63, !dbg !3346

63:                                               ; preds = %53
  call void @upd_molnumbers(%struct.molecule_t* %59), !dbg !3347
  br label %64, !dbg !3347

64:                                               ; preds = %63, %53
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 15, !dbg !3348
  br label %96, !dbg !3349

66:                                               ; preds = %50
  %67 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !3350
  %68 = icmp ne i32 %67, 0, !dbg !3350
  br i1 %68, label %82, label %69, !dbg !3352

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3353
  %71 = load %struct.residue_t*, %struct.residue_t** %70, align 8, !dbg !3353, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %71, metadata !368, metadata !DIExpression()), !dbg !3293
  %72 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i32 0, i32 9, !dbg !3355
  %73 = load %struct.strand_t*, %struct.strand_t** %72, align 8, !dbg !3355, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %73, metadata !369, metadata !DIExpression()), !dbg !3293
  %74 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %73, i32 0, i32 3, !dbg !3356
  %75 = load %struct.molecule_t*, %struct.molecule_t** %74, align 8, !dbg !3356, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %75, metadata !370, metadata !DIExpression()), !dbg !3293
  %76 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %75, i32 0, i32 5, !dbg !3357
  %77 = load i32, i32* %76, align 8, !dbg !3357, !tbaa !507
  %78 = icmp ne i32 %77, 0, !dbg !3359
  br i1 %78, label %80, label %79, !dbg !3360

79:                                               ; preds = %69
  call void @upd_molnumbers(%struct.molecule_t* %75), !dbg !3361
  br label %80, !dbg !3361

80:                                               ; preds = %79, %69
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 14, !dbg !3362
  br label %96, !dbg !3363

82:                                               ; preds = %66
  %83 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !3364
  %84 = icmp ne i32 %83, 0, !dbg !3364
  br i1 %84, label %87, label %85, !dbg !3366

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 11, !dbg !3367
  br label %96, !dbg !3369

87:                                               ; preds = %82
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3370, !tbaa !672
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0), i8* %1), !dbg !3371
  br label %90

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  store i32 0, i32* @NAB_ari.rv_err, align 4, !dbg !3372, !tbaa !2389
  br label %96, !dbg !3373

96:                                               ; preds = %95, %85, %80, %64, %48, %32, %16
  %.0 = phi i32* [ @NAB_ari.rv_err, %95 ], [ %86, %85 ], [ %81, %80 ], [ %65, %64 ], [ %49, %48 ], [ %33, %32 ], [ %17, %16 ], !dbg !3293
  ret i32* %.0, !dbg !3374
}

; Function Attrs: nounwind uwtable
define dso_local double* @NAB_arf(%struct.atom_t* %0, i8* %1) #0 !dbg !373 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !377, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i8* %1, metadata !378, metadata !DIExpression()), !dbg !3375
  %3 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #9, !dbg !3376
  %4 = icmp ne i32 %3, 0, !dbg !3376
  br i1 %4, label %8, label %5, !dbg !3378

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !3379
  %7 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !3380
  br label %43, !dbg !3381

8:                                                ; preds = %2
  %9 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !3382
  %10 = icmp ne i32 %9, 0, !dbg !3382
  br i1 %10, label %14, label %11, !dbg !3384

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !3385
  %13 = getelementptr inbounds [3 x double], [3 x double]* %12, i64 0, i64 1, !dbg !3386
  br label %43, !dbg !3387

14:                                               ; preds = %8
  %15 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !3388
  %16 = icmp ne i32 %15, 0, !dbg !3388
  br i1 %16, label %20, label %17, !dbg !3390

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !3391
  %19 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 2, !dbg !3392
  br label %43, !dbg !3393

20:                                               ; preds = %14
  %21 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0)) #9, !dbg !3394
  %22 = icmp ne i32 %21, 0, !dbg !3394
  br i1 %22, label %25, label %23, !dbg !3396

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 6, !dbg !3397
  br label %43, !dbg !3398

25:                                               ; preds = %20
  %26 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #9, !dbg !3399
  %27 = icmp ne i32 %26, 0, !dbg !3399
  br i1 %27, label %30, label %28, !dbg !3401

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 7, !dbg !3402
  br label %43, !dbg !3403

30:                                               ; preds = %25
  %31 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #9, !dbg !3404
  %32 = icmp ne i32 %31, 0, !dbg !3404
  br i1 %32, label %35, label %33, !dbg !3406

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 12, !dbg !3407
  br label %43, !dbg !3408

35:                                               ; preds = %30
  %36 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0)) #9, !dbg !3409
  %37 = icmp ne i32 %36, 0, !dbg !3409
  br i1 %37, label %40, label %38, !dbg !3411

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 13, !dbg !3412
  br label %43, !dbg !3413

40:                                               ; preds = %35
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3414, !tbaa !672
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0), i8* %1), !dbg !3416
  store double 0.000000e+00, double* @NAB_arf.f, align 8, !dbg !3417, !tbaa !456
  br label %43, !dbg !3418

43:                                               ; preds = %40, %38, %33, %28, %23, %17, %11, %5
  %.0 = phi double* [ @NAB_arf.f, %40 ], [ %39, %38 ], [ %34, %33 ], [ %29, %28 ], [ %24, %23 ], [ %19, %17 ], [ %13, %11 ], [ %7, %5 ], !dbg !3419
  ret double* %.0, !dbg !3420
}

; Function Attrs: nounwind uwtable
define dso_local i8** @NAB_arc(%struct.atom_t* %0, i8* %1) #0 !dbg !3421 {
  %3 = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !3425, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8* %1, metadata !3426, metadata !DIExpression()), !dbg !3437
  %4 = bitcast [100 x i8]* %3 to i8*, !dbg !3438
  call void @llvm.lifetime.start.p0i8(i64 100, i8* %4) #8, !dbg !3438
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !3433, metadata !DIExpression()), !dbg !3439
  %5 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #9, !dbg !3440
  %6 = icmp ne i32 %5, 0, !dbg !3440
  br i1 %6, label %9, label %7, !dbg !3442

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 0, !dbg !3443
  br label %100, !dbg !3445

9:                                                ; preds = %2
  %10 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !3446
  %11 = icmp ne i32 %10, 0, !dbg !3446
  br i1 %11, label %16, label %12, !dbg !3448

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3449
  %14 = load %struct.residue_t*, %struct.residue_t** %13, align 8, !dbg !3449, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %14, metadata !3427, metadata !DIExpression()), !dbg !3437
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %14, i32 0, i32 4, !dbg !3451
  br label %100, !dbg !3452

16:                                               ; preds = %9
  %17 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !3453
  %18 = icmp ne i32 %17, 0, !dbg !3453
  br i1 %18, label %23, label %19, !dbg !3455

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3456
  %21 = load %struct.residue_t*, %struct.residue_t** %20, align 8, !dbg !3456, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %21, metadata !3427, metadata !DIExpression()), !dbg !3437
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 5, !dbg !3458
  br label %100, !dbg !3459

23:                                               ; preds = %16
  %24 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !3460
  %25 = icmp ne i32 %24, 0, !dbg !3460
  br i1 %25, label %32, label %26, !dbg !3462

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3463
  %28 = load %struct.residue_t*, %struct.residue_t** %27, align 8, !dbg !3463, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %28, metadata !3427, metadata !DIExpression()), !dbg !3437
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %28, i32 0, i32 9, !dbg !3465
  %30 = load %struct.strand_t*, %struct.strand_t** %29, align 8, !dbg !3465, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %30, metadata !3428, metadata !DIExpression()), !dbg !3437
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i32 0, i32 0, !dbg !3466
  br label %100, !dbg !3467

32:                                               ; preds = %23
  %33 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #9, !dbg !3468
  %34 = icmp ne i32 %33, 0, !dbg !3468
  br i1 %34, label %97, label %35, !dbg !3470

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 5, !dbg !3471
  %37 = load %struct.residue_t*, %struct.residue_t** %36, align 8, !dbg !3471, !tbaa !2887
  call void @llvm.dbg.value(metadata %struct.residue_t* %37, metadata !3427, metadata !DIExpression()), !dbg !3437
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %37, i32 0, i32 9, !dbg !3473
  %39 = load %struct.strand_t*, %struct.strand_t** %38, align 8, !dbg !3473, !tbaa !914
  call void @llvm.dbg.value(metadata %struct.strand_t* %39, metadata !3428, metadata !DIExpression()), !dbg !3437
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i32 0, i32 3, !dbg !3474
  %41 = load %struct.molecule_t*, %struct.molecule_t** %40, align 8, !dbg !3474, !tbaa !791
  call void @llvm.dbg.value(metadata %struct.molecule_t* %41, metadata !3430, metadata !DIExpression()), !dbg !3437
  call void @upd_molnumbers(%struct.molecule_t* %41), !dbg !3475
  call void @llvm.dbg.value(metadata i32 0, metadata !3432, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 0, metadata !3432, metadata !DIExpression()), !dbg !3437
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i32 0, i32 5, !dbg !3476
  %43 = load i32, i32* %42, align 8, !dbg !3476, !tbaa !666
  %44 = sext i32 %43 to i64, !dbg !3479
  %45 = icmp slt i64 0, %44, !dbg !3479
  br i1 %45, label %.lr.ph, label %.loopexit4, !dbg !3480

.lr.ph:                                           ; preds = %35
  br label %46, !dbg !3480

46:                                               ; preds = %.lr.ph, %55
  %indvars.iv8 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %55 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !3432, metadata !DIExpression()), !dbg !3437
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i32 0, i32 7, !dbg !3481
  %48 = load %struct.residue_t**, %struct.residue_t*** %47, align 8, !dbg !3481, !tbaa !670
  %49 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %indvars.iv8, !dbg !3483
  %50 = load %struct.residue_t*, %struct.residue_t** %49, align 8, !dbg !3483, !tbaa !672
  %51 = icmp eq %struct.residue_t* %50, %37, !dbg !3484
  br i1 %51, label %52, label %54, !dbg !3485

52:                                               ; preds = %46
  %.01.lcssa6.wide = phi i64 [ %indvars.iv8, %46 ]
  %53 = trunc i64 %.01.lcssa6.wide to i32, !dbg !3437
  call void @llvm.dbg.value(metadata i32 %53, metadata !3432, metadata !DIExpression()), !dbg !3437
  br label %60, !dbg !3486

54:                                               ; preds = %46
  br label %55, !dbg !3487

55:                                               ; preds = %54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !3488
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3432, metadata !DIExpression()), !dbg !3437
  %56 = load i32, i32* %42, align 8, !dbg !3476, !tbaa !666
  %57 = sext i32 %56 to i64, !dbg !3479
  %58 = icmp slt i64 %indvars.iv.next, %57, !dbg !3479
  br i1 %58, label %46, label %..loopexit4_crit_edge, !dbg !3480, !llvm.loop !3489

..loopexit4_crit_edge:                            ; preds = %55
  %split = phi i64 [ %indvars.iv.next, %55 ]
  br label %.loopexit4, !dbg !3480

.loopexit4:                                       ; preds = %..loopexit4_crit_edge, %35
  %.01.lcssa.wide = phi i64 [ %split, %..loopexit4_crit_edge ], [ 0, %35 ]
  %59 = trunc i64 %.01.lcssa.wide to i32, !dbg !3437
  call void @llvm.dbg.value(metadata i32 %59, metadata !3432, metadata !DIExpression()), !dbg !3437
  br label %60, !dbg !3491

60:                                               ; preds = %.loopexit4, %52
  %.017 = phi i32 [ %59, %.loopexit4 ], [ %53, %52 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !3431, metadata !DIExpression()), !dbg !3437
  %61 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %41, i32 0, i32 2, !dbg !3491
  %62 = load %struct.strand_t*, %struct.strand_t** %61, align 8, !dbg !3491, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %62, metadata !3429, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 0, metadata !3431, metadata !DIExpression()), !dbg !3437
  %63 = icmp ne %struct.strand_t* %62, null, !dbg !3493
  br i1 %63, label %.lr.ph11, label %.loopexit, !dbg !3493

.lr.ph11:                                         ; preds = %60
  br label %64, !dbg !3493

64:                                               ; preds = %.lr.ph11, %69
  %.0210 = phi %struct.strand_t* [ %62, %.lr.ph11 ], [ %71, %69 ]
  %.039 = phi i32 [ 0, %.lr.ph11 ], [ %65, %69 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0210, metadata !3429, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %.039, metadata !3431, metadata !DIExpression()), !dbg !3437
  %65 = add nuw nsw i32 %.039, 1, !dbg !3494
  call void @llvm.dbg.value(metadata i32 %65, metadata !3431, metadata !DIExpression()), !dbg !3437
  %66 = icmp eq %struct.strand_t* %.0210, %39, !dbg !3497
  br i1 %66, label %67, label %68, !dbg !3499

67:                                               ; preds = %64
  %.lcssa = phi i32 [ %65, %64 ], !dbg !3494
  br label %73, !dbg !3500

68:                                               ; preds = %64
  br label %69, !dbg !3501

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0210, i32 0, i32 4, !dbg !3502
  %71 = load %struct.strand_t*, %struct.strand_t** %70, align 8, !dbg !3502, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %71, metadata !3429, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %65, metadata !3431, metadata !DIExpression()), !dbg !3437
  %72 = icmp ne %struct.strand_t* %71, null, !dbg !3493
  br i1 %72, label %64, label %..loopexit_crit_edge, !dbg !3493, !llvm.loop !3503

..loopexit_crit_edge:                             ; preds = %69
  %split12 = phi i32 [ %65, %69 ]
  br label %.loopexit, !dbg !3493

.loopexit:                                        ; preds = %..loopexit_crit_edge, %60
  %.03.lcssa = phi i32 [ %split12, %..loopexit_crit_edge ], [ 0, %60 ], !dbg !3505
  call void @llvm.dbg.value(metadata i32 %.03.lcssa, metadata !3431, metadata !DIExpression()), !dbg !3437
  br label %73, !dbg !3506

73:                                               ; preds = %.loopexit, %67
  %.1 = phi i32 [ %.lcssa, %67 ], [ %.03.lcssa, %.loopexit ], !dbg !3505
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3431, metadata !DIExpression()), !dbg !3437
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !3506
  %75 = add nsw i32 %.017, 1, !dbg !3507
  %76 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 0, !dbg !3508
  %77 = load i8*, i8** %76, align 8, !dbg !3508, !tbaa !591
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i32 %.1, i32 %75, i8* %77) #8, !dbg !3509
  %79 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 16, !dbg !3510
  %80 = load i8*, i8** %79, align 8, !dbg !3510, !tbaa !613
  %81 = icmp ne i8* %80, null, !dbg !3512
  br i1 %81, label %82, label %85, !dbg !3513

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 16, !dbg !3514
  %84 = load i8*, i8** %83, align 8, !dbg !3514, !tbaa !613
  call void @free(i8* %84) #8, !dbg !3515
  br label %85, !dbg !3515

85:                                               ; preds = %82, %73
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !3516
  %87 = call i64 @strlen(i8* %86) #9, !dbg !3517
  %88 = add i64 %87, 1, !dbg !3518
  %89 = mul i64 %88, 1, !dbg !3519
  %90 = call noalias i8* @malloc(i64 %89) #8, !dbg !3520
  %91 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 16, !dbg !3521
  store i8* %90, i8** %91, align 8, !dbg !3522, !tbaa !613
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 16, !dbg !3523
  %93 = load i8*, i8** %92, align 8, !dbg !3523, !tbaa !613
  %94 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !3524
  %95 = call i8* @strcpy(i8* %93, i8* %94) #8, !dbg !3525
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 16, !dbg !3526
  br label %100, !dbg !3527

97:                                               ; preds = %32
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3528, !tbaa !672
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i8* %1), !dbg !3530
  br label %100, !dbg !3531

100:                                              ; preds = %97, %85, %26, %19, %12, %7
  %.0 = phi i8** [ null, %97 ], [ %96, %85 ], [ %31, %26 ], [ %22, %19 ], [ %15, %12 ], [ %8, %7 ], !dbg !3532
  %101 = bitcast [100 x i8]* %3 to i8*, !dbg !3533
  call void @llvm.lifetime.end.p0i8(i64 100, i8* %101) #8, !dbg !3533
  ret i8** %.0, !dbg !3533
}

; Function Attrs: nounwind uwtable
define dso_local [3 x double]* @NAB_arp(%struct.atom_t* %0, i8* %1) #0 !dbg !3534 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !3538, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3539, metadata !DIExpression()), !dbg !3541
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !3542
  %4 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 0, !dbg !3543
  %5 = bitcast double* %4 to i8*, !dbg !3543
  call void @llvm.dbg.value(metadata i8* %5, metadata !3540, metadata !DIExpression()), !dbg !3541
  %6 = bitcast i8* %5 to [3 x double]*, !dbg !3544
  ret [3 x double]* %6, !dbg !3545
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @newtransform(double %0, double %1, double %2, double %3, double %4, double %5) #0 !dbg !381 {
  %7 = alloca [4 x [4 x double]], align 16
  %8 = alloca [4 x [4 x double]], align 16
  %9 = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata double %0, metadata !385, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata double %1, metadata !386, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata double %2, metadata !387, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata double %3, metadata !388, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata double %4, metadata !389, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata double %5, metadata !390, metadata !DIExpression()), !dbg !3546
  %10 = bitcast [4 x [4 x double]]* %7 to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %10) #8, !dbg !3547
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %7, metadata !392, metadata !DIExpression()), !dbg !3548
  %11 = bitcast [4 x [4 x double]]* %8 to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %11) #8, !dbg !3547
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %8, metadata !393, metadata !DIExpression()), !dbg !3549
  %12 = bitcast [4 x [4 x double]]* %9 to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %12) #8, !dbg !3547
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %9, metadata !394, metadata !DIExpression()), !dbg !3550
  %13 = fneg double %5, !dbg !3551
  call void @llvm.dbg.value(metadata double %13, metadata !390, metadata !DIExpression()), !dbg !3546
  call void @mk_idmat([4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 0)), !dbg !3552
  store double %0, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 3, i64 0), align 16, !dbg !3553, !tbaa !456
  store double %1, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 3, i64 1), align 8, !dbg !3554, !tbaa !456
  store double %2, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 3, i64 2), align 16, !dbg !3555, !tbaa !456
  %14 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3556
  call void @mk_idmat([4 x double]* %14), !dbg !3557
  %15 = fcmp une double %3, 0.000000e+00, !dbg !3558
  br i1 %15, label %16, label %40, !dbg !3560

16:                                               ; preds = %6
  %17 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3561
  call void @mk_idmat([4 x double]* %17), !dbg !3563
  %18 = fmul double 0x3F91DF46A2529D39, %3, !dbg !3564
  %19 = call double @cos(double %18) #8, !dbg !3565
  %20 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 1, !dbg !3566
  %21 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 0, i64 1, !dbg !3566
  store double %19, double* %21, align 8, !dbg !3567, !tbaa !456
  %22 = fmul double 0x3F91DF46A2529D39, %3, !dbg !3568
  %23 = call double @sin(double %22) #8, !dbg !3569
  %24 = fneg double %23, !dbg !3570
  %25 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 1, !dbg !3571
  %26 = getelementptr inbounds [4 x double], [4 x double]* %25, i64 0, i64 2, !dbg !3571
  store double %24, double* %26, align 16, !dbg !3572, !tbaa !456
  %27 = fmul double 0x3F91DF46A2529D39, %3, !dbg !3573
  %28 = call double @sin(double %27) #8, !dbg !3574
  %29 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 2, !dbg !3575
  %30 = getelementptr inbounds [4 x double], [4 x double]* %29, i64 0, i64 1, !dbg !3575
  store double %28, double* %30, align 8, !dbg !3576, !tbaa !456
  %31 = fmul double 0x3F91DF46A2529D39, %3, !dbg !3577
  %32 = call double @cos(double %31) #8, !dbg !3578
  %33 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 2, !dbg !3579
  %34 = getelementptr inbounds [4 x double], [4 x double]* %33, i64 0, i64 2, !dbg !3579
  store double %32, double* %34, align 16, !dbg !3580, !tbaa !456
  %35 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3581
  %36 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3582
  %37 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3583
  call void @concat_mat([4 x double]* %35, [4 x double]* %36, [4 x double]* %37), !dbg !3584
  %38 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3585
  %39 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3586
  call void @copy_mat([4 x double]* %38, [4 x double]* %39), !dbg !3587
  br label %40, !dbg !3588

40:                                               ; preds = %16, %6
  %41 = fcmp une double %4, 0.000000e+00, !dbg !3589
  br i1 %41, label %42, label %66, !dbg !3591

42:                                               ; preds = %40
  %43 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3592
  call void @mk_idmat([4 x double]* %43), !dbg !3594
  %44 = fmul double 0x3F91DF46A2529D39, %4, !dbg !3595
  %45 = call double @cos(double %44) #8, !dbg !3596
  %46 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3597
  %47 = getelementptr inbounds [4 x double], [4 x double]* %46, i64 0, i64 0, !dbg !3597
  store double %45, double* %47, align 16, !dbg !3598, !tbaa !456
  %48 = fmul double 0x3F91DF46A2529D39, %4, !dbg !3599
  %49 = call double @sin(double %48) #8, !dbg !3600
  %50 = fneg double %49, !dbg !3601
  %51 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3602
  %52 = getelementptr inbounds [4 x double], [4 x double]* %51, i64 0, i64 2, !dbg !3602
  store double %50, double* %52, align 16, !dbg !3603, !tbaa !456
  %53 = fmul double 0x3F91DF46A2529D39, %4, !dbg !3604
  %54 = call double @sin(double %53) #8, !dbg !3605
  %55 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 2, !dbg !3606
  %56 = getelementptr inbounds [4 x double], [4 x double]* %55, i64 0, i64 0, !dbg !3606
  store double %54, double* %56, align 16, !dbg !3607, !tbaa !456
  %57 = fmul double 0x3F91DF46A2529D39, %4, !dbg !3608
  %58 = call double @cos(double %57) #8, !dbg !3609
  %59 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 2, !dbg !3610
  %60 = getelementptr inbounds [4 x double], [4 x double]* %59, i64 0, i64 2, !dbg !3610
  store double %58, double* %60, align 16, !dbg !3611, !tbaa !456
  %61 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3612
  %62 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3613
  %63 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3614
  call void @concat_mat([4 x double]* %61, [4 x double]* %62, [4 x double]* %63), !dbg !3615
  %64 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3616
  %65 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3617
  call void @copy_mat([4 x double]* %64, [4 x double]* %65), !dbg !3618
  br label %66, !dbg !3619

66:                                               ; preds = %42, %40
  %67 = fcmp une double %13, 0.000000e+00, !dbg !3620
  br i1 %67, label %68, label %92, !dbg !3622

68:                                               ; preds = %66
  %69 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3623
  call void @mk_idmat([4 x double]* %69), !dbg !3625
  %70 = fmul double 0x3F91DF46A2529D39, %13, !dbg !3626
  %71 = call double @cos(double %70) #8, !dbg !3627
  %72 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3628
  %73 = getelementptr inbounds [4 x double], [4 x double]* %72, i64 0, i64 0, !dbg !3628
  store double %71, double* %73, align 16, !dbg !3629, !tbaa !456
  %74 = fmul double 0x3F91DF46A2529D39, %13, !dbg !3630
  %75 = call double @sin(double %74) #8, !dbg !3631
  %76 = fneg double %75, !dbg !3632
  %77 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3633
  %78 = getelementptr inbounds [4 x double], [4 x double]* %77, i64 0, i64 1, !dbg !3633
  store double %76, double* %78, align 8, !dbg !3634, !tbaa !456
  %79 = fmul double 0x3F91DF46A2529D39, %13, !dbg !3635
  %80 = call double @sin(double %79) #8, !dbg !3636
  %81 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 1, !dbg !3637
  %82 = getelementptr inbounds [4 x double], [4 x double]* %81, i64 0, i64 0, !dbg !3637
  store double %80, double* %82, align 16, !dbg !3638, !tbaa !456
  %83 = fmul double 0x3F91DF46A2529D39, %13, !dbg !3639
  %84 = call double @cos(double %83) #8, !dbg !3640
  %85 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 1, !dbg !3641
  %86 = getelementptr inbounds [4 x double], [4 x double]* %85, i64 0, i64 1, !dbg !3641
  store double %84, double* %86, align 8, !dbg !3642, !tbaa !456
  %87 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3643
  %88 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3644
  %89 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3645
  call void @concat_mat([4 x double]* %87, [4 x double]* %88, [4 x double]* %89), !dbg !3646
  %90 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3647
  %91 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3648
  call void @copy_mat([4 x double]* %90, [4 x double]* %91), !dbg !3649
  br label %92, !dbg !3650

92:                                               ; preds = %68, %66
  %93 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3651
  %94 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3652
  call void @concat_mat([4 x double]* %93, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 0), [4 x double]* %94), !dbg !3653
  %95 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3654
  call void @copy_mat([4 x double]* %95, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 0)), !dbg !3655
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @newtransform.mp to i8*), metadata !391, metadata !DIExpression()), !dbg !3546
  %96 = bitcast i8* bitcast ([4 x [4 x double]]* @newtransform.mp to i8*) to [4 x [4 x double]]*, !dbg !3656
  %97 = bitcast [4 x [4 x double]]* %9 to i8*, !dbg !3657
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %97) #8, !dbg !3657
  %98 = bitcast [4 x [4 x double]]* %8 to i8*, !dbg !3657
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %98) #8, !dbg !3657
  %99 = bitcast [4 x [4 x double]]* %7 to i8*, !dbg !3657
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %99) #8, !dbg !3657
  ret [4 x [4 x double]]* %96, !dbg !3658
}

; Function Attrs: nounwind uwtable
define internal void @mk_idmat([4 x double]* %0) #0 !dbg !3659 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3663, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 0, metadata !3664, metadata !DIExpression()), !dbg !3666
  br label %2, !dbg !3667

2:                                                ; preds = %1, %11
  %indvars.iv26 = phi i64 [ 0, %1 ], [ %indvars.iv.next3, %11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv26, metadata !3664, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i32 0, metadata !3665, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 0, metadata !3665, metadata !DIExpression()), !dbg !3666
  br label %3, !dbg !3669

3:                                                ; preds = %2, %9
  %indvars.iv5 = phi i64 [ 0, %2 ], [ %indvars.iv.next, %9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3665, metadata !DIExpression()), !dbg !3666
  %4 = icmp eq i64 %indvars.iv26, %indvars.iv5, !dbg !3673
  %5 = zext i1 %4 to i64, !dbg !3676
  %6 = select i1 %4, double 1.000000e+00, double 0.000000e+00, !dbg !3676
  %7 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 %indvars.iv26, !dbg !3677
  %8 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 %indvars.iv5, !dbg !3677
  store double %6, double* %8, align 8, !dbg !3678, !tbaa !456
  br label %9, !dbg !3679

9:                                                ; preds = %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !3680
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3665, metadata !DIExpression()), !dbg !3666
  %exitcond = icmp ne i64 %indvars.iv.next, 4, !dbg !3681
  br i1 %exitcond, label %3, label %10, !dbg !3669, !llvm.loop !3682

10:                                               ; preds = %9
  br label %11, !dbg !3684

11:                                               ; preds = %10
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv26, 1, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !3664, metadata !DIExpression()), !dbg !3666
  %exitcond4 = icmp ne i64 %indvars.iv.next3, 4, !dbg !3686
  br i1 %exitcond4, label %2, label %12, !dbg !3667, !llvm.loop !3687

12:                                               ; preds = %11
  ret void, !dbg !3689
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

; Function Attrs: nounwind
declare dso_local double @sin(double) #3

; Function Attrs: nounwind uwtable
define internal void @concat_mat([4 x double]* %0, [4 x double]* %1, [4 x double]* %2) #0 !dbg !3690 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3694, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !3695, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata [4 x double]* %2, metadata !3696, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 0, metadata !3697, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 0, metadata !3697, metadata !DIExpression()), !dbg !3700
  br label %4, !dbg !3701

4:                                                ; preds = %3, %24
  %indvars.iv611 = phi i64 [ 0, %3 ], [ %indvars.iv.next7, %24 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv611, metadata !3697, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i32 0, metadata !3698, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 0, metadata !3698, metadata !DIExpression()), !dbg !3700
  br label %5, !dbg !3703

5:                                                ; preds = %4, %22
  %indvars.iv310 = phi i64 [ 0, %4 ], [ %indvars.iv.next4, %22 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv310, metadata !3698, metadata !DIExpression()), !dbg !3700
  %6 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 %indvars.iv611, !dbg !3707
  %7 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 %indvars.iv310, !dbg !3707
  store double 0.000000e+00, double* %7, align 8, !dbg !3710, !tbaa !456
  call void @llvm.dbg.value(metadata i32 0, metadata !3699, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i64 0, metadata !3699, metadata !DIExpression()), !dbg !3700
  br label %8, !dbg !3711

8:                                                ; preds = %5, %20
  %indvars.iv9 = phi i64 [ 0, %5 ], [ %indvars.iv.next, %20 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !3699, metadata !DIExpression()), !dbg !3700
  %9 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 %indvars.iv611, !dbg !3713
  %10 = getelementptr inbounds [4 x double], [4 x double]* %9, i64 0, i64 %indvars.iv9, !dbg !3713
  %11 = load double, double* %10, align 8, !dbg !3713, !tbaa !456
  %12 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv9, !dbg !3716
  %13 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 %indvars.iv310, !dbg !3716
  %14 = load double, double* %13, align 8, !dbg !3716, !tbaa !456
  %15 = fmul double %11, %14, !dbg !3717
  %16 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 %indvars.iv611, !dbg !3718
  %17 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 0, i64 %indvars.iv310, !dbg !3718
  %18 = load double, double* %17, align 8, !dbg !3719, !tbaa !456
  %19 = fadd double %18, %15, !dbg !3719
  store double %19, double* %17, align 8, !dbg !3719, !tbaa !456
  br label %20, !dbg !3720

20:                                               ; preds = %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3699, metadata !DIExpression()), !dbg !3700
  %exitcond = icmp ne i64 %indvars.iv.next, 4, !dbg !3722
  br i1 %exitcond, label %8, label %21, !dbg !3711, !llvm.loop !3723

21:                                               ; preds = %20
  br label %22, !dbg !3725

22:                                               ; preds = %21
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv310, 1, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !3698, metadata !DIExpression()), !dbg !3700
  %exitcond5 = icmp ne i64 %indvars.iv.next4, 4, !dbg !3727
  br i1 %exitcond5, label %5, label %23, !dbg !3703, !llvm.loop !3728

23:                                               ; preds = %22
  br label %24, !dbg !3730

24:                                               ; preds = %23
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv611, 1, !dbg !3731
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next7, metadata !3697, metadata !DIExpression()), !dbg !3700
  %exitcond8 = icmp ne i64 %indvars.iv.next7, 4, !dbg !3732
  br i1 %exitcond8, label %4, label %25, !dbg !3701, !llvm.loop !3733

25:                                               ; preds = %24
  ret void, !dbg !3735
}

; Function Attrs: nounwind uwtable
define internal void @copy_mat([4 x double]* %0, [4 x double]* %1) #0 !dbg !3736 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3740, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !3741, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 0, metadata !3742, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 0, metadata !3742, metadata !DIExpression()), !dbg !3744
  br label %3, !dbg !3745

3:                                                ; preds = %2, %12
  %indvars.iv26 = phi i64 [ 0, %2 ], [ %indvars.iv.next3, %12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv26, metadata !3742, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 0, metadata !3743, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 0, metadata !3743, metadata !DIExpression()), !dbg !3744
  br label %4, !dbg !3747

4:                                                ; preds = %3, %10
  %indvars.iv5 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3743, metadata !DIExpression()), !dbg !3744
  %5 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 %indvars.iv26, !dbg !3751
  %6 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %indvars.iv5, !dbg !3751
  %7 = load double, double* %6, align 8, !dbg !3751, !tbaa !456
  %8 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv26, !dbg !3753
  %9 = getelementptr inbounds [4 x double], [4 x double]* %8, i64 0, i64 %indvars.iv5, !dbg !3753
  store double %7, double* %9, align 8, !dbg !3754, !tbaa !456
  br label %10, !dbg !3753

10:                                               ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !3755
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3743, metadata !DIExpression()), !dbg !3744
  %exitcond = icmp ne i64 %indvars.iv.next, 4, !dbg !3756
  br i1 %exitcond, label %4, label %11, !dbg !3747, !llvm.loop !3757

11:                                               ; preds = %10
  br label %12, !dbg !3759

12:                                               ; preds = %11
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv26, 1, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !3742, metadata !DIExpression()), !dbg !3744
  %exitcond4 = icmp ne i64 %indvars.iv.next3, 4, !dbg !3761
  br i1 %exitcond4, label %3, label %13, !dbg !3745, !llvm.loop !3762

13:                                               ; preds = %12
  ret void, !dbg !3764
}

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @transformres([4 x double]* %0, %struct.residue_t* %1, i8* %2) #0 !dbg !3765 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3769, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata %struct.residue_t* %1, metadata !3770, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i8* %2, metadata !3771, metadata !DIExpression()), !dbg !3778
  %6 = bitcast [3 x double]* %4 to i8*, !dbg !3779
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %6) #8, !dbg !3779
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !3776, metadata !DIExpression()), !dbg !3780
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !3779
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %7) #8, !dbg !3779
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !3777, metadata !DIExpression()), !dbg !3781
  %8 = call %struct.residue_t* @copyresidue(%struct.residue_t* %1), !dbg !3782
  call void @llvm.dbg.value(metadata %struct.residue_t* %8, metadata !3772, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i32 0, metadata !3773, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 0, metadata !3773, metadata !DIExpression()), !dbg !3778
  %9 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %8, i32 0, i32 15, !dbg !3783
  %10 = load i32, i32* %9, align 8, !dbg !3783, !tbaa !585
  %11 = sext i32 %10 to i64, !dbg !3786
  %12 = icmp slt i64 0, %11, !dbg !3786
  br i1 %12, label %.lr.ph, label %37, !dbg !3787

.lr.ph:                                           ; preds = %3
  br label %13, !dbg !3787

13:                                               ; preds = %.lr.ph, %33
  %indvars.iv59 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next6, %33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv59, metadata !3773, metadata !DIExpression()), !dbg !3778
  %14 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %8, i32 0, i32 17, !dbg !3788
  %15 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !3788, !tbaa !582
  %16 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %15, i64 %indvars.iv59, !dbg !3790
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !3775, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i32 0, metadata !3774, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 0, metadata !3774, metadata !DIExpression()), !dbg !3778
  br label %17, !dbg !3791

17:                                               ; preds = %13, %22
  %indvars.iv7 = phi i64 [ 0, %13 ], [ %indvars.iv.next, %22 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !3774, metadata !DIExpression()), !dbg !3778
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 17, !dbg !3793
  %19 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 %indvars.iv7, !dbg !3795
  %20 = load double, double* %19, align 8, !dbg !3795, !tbaa !456
  %21 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 %indvars.iv7, !dbg !3796
  store double %20, double* %21, align 8, !dbg !3797, !tbaa !456
  br label %22, !dbg !3796

22:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !3798
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3774, metadata !DIExpression()), !dbg !3778
  %exitcond = icmp ne i64 %indvars.iv.next, 3, !dbg !3799
  br i1 %exitcond, label %17, label %23, !dbg !3791, !llvm.loop !3800

23:                                               ; preds = %22
  %24 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !3802
  %25 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !3803
  call void @xfm_xyz(double* %24, [4 x double]* %0, double* %25), !dbg !3804
  call void @llvm.dbg.value(metadata i32 0, metadata !3774, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 0, metadata !3774, metadata !DIExpression()), !dbg !3778
  br label %26, !dbg !3805

26:                                               ; preds = %23, %31
  %indvars.iv28 = phi i64 [ 0, %23 ], [ %indvars.iv.next3, %31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv28, metadata !3774, metadata !DIExpression()), !dbg !3778
  %27 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %indvars.iv28, !dbg !3807
  %28 = load double, double* %27, align 8, !dbg !3807, !tbaa !456
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i32 0, i32 17, !dbg !3809
  %30 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 %indvars.iv28, !dbg !3810
  store double %28, double* %30, align 8, !dbg !3811, !tbaa !456
  br label %31, !dbg !3810

31:                                               ; preds = %26
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv28, 1, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !3774, metadata !DIExpression()), !dbg !3778
  %exitcond4 = icmp ne i64 %indvars.iv.next3, 3, !dbg !3813
  br i1 %exitcond4, label %26, label %32, !dbg !3805, !llvm.loop !3814

32:                                               ; preds = %31
  br label %33, !dbg !3816

33:                                               ; preds = %32
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv59, 1, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !3773, metadata !DIExpression()), !dbg !3778
  %34 = load i32, i32* %9, align 8, !dbg !3783, !tbaa !585
  %35 = sext i32 %34 to i64, !dbg !3786
  %36 = icmp slt i64 %indvars.iv.next6, %35, !dbg !3786
  br i1 %36, label %13, label %._crit_edge, !dbg !3787, !llvm.loop !3818

._crit_edge:                                      ; preds = %33
  br label %37, !dbg !3787

37:                                               ; preds = %._crit_edge, %3
  %38 = bitcast [3 x double]* %5 to i8*, !dbg !3820
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %38) #8, !dbg !3820
  %39 = bitcast [3 x double]* %4 to i8*, !dbg !3820
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %39) #8, !dbg !3820
  ret %struct.residue_t* %8, !dbg !3821
}

; Function Attrs: nounwind uwtable
define internal void @xfm_xyz(double* %0, [4 x double]* %1, double* %2) #0 !dbg !3822 {
  %4 = alloca [4 x double], align 16
  %5 = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata double* %0, metadata !3826, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !3827, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata double* %2, metadata !3828, metadata !DIExpression()), !dbg !3833
  %6 = bitcast [4 x double]* %4 to i8*, !dbg !3834
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %6) #8, !dbg !3834
  call void @llvm.dbg.declare(metadata [4 x double]* %4, metadata !3831, metadata !DIExpression()), !dbg !3835
  %7 = bitcast [4 x double]* %5 to i8*, !dbg !3834
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %7) #8, !dbg !3834
  call void @llvm.dbg.declare(metadata [4 x double]* %5, metadata !3832, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 0, metadata !3829, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 0, metadata !3829, metadata !DIExpression()), !dbg !3833
  br label %8, !dbg !3837

8:                                                ; preds = %3, %12
  %indvars.iv11 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !3829, metadata !DIExpression()), !dbg !3833
  %9 = getelementptr inbounds double, double* %0, i64 %indvars.iv11, !dbg !3839
  %10 = load double, double* %9, align 8, !dbg !3839, !tbaa !456
  %11 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 %indvars.iv11, !dbg !3841
  store double %10, double* %11, align 8, !dbg !3842, !tbaa !456
  br label %12, !dbg !3841

12:                                               ; preds = %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1, !dbg !3843
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3829, metadata !DIExpression()), !dbg !3833
  %exitcond = icmp ne i64 %indvars.iv.next, 3, !dbg !3844
  br i1 %exitcond, label %8, label %13, !dbg !3837, !llvm.loop !3845

13:                                               ; preds = %12
  %14 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3, !dbg !3847
  store double 1.000000e+00, double* %14, align 8, !dbg !3848, !tbaa !456
  call void @llvm.dbg.value(metadata i32 0, metadata !3829, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 0, metadata !3829, metadata !DIExpression()), !dbg !3833
  br label %15, !dbg !3849

15:                                               ; preds = %13, %29
  %indvars.iv513 = phi i64 [ 0, %13 ], [ %indvars.iv.next6, %29 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv513, metadata !3829, metadata !DIExpression()), !dbg !3833
  %16 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %indvars.iv513, !dbg !3851
  store double 0.000000e+00, double* %16, align 8, !dbg !3854, !tbaa !456
  call void @llvm.dbg.value(metadata i32 0, metadata !3830, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 0, metadata !3830, metadata !DIExpression()), !dbg !3833
  br label %17, !dbg !3855

17:                                               ; preds = %15, %27
  %indvars.iv212 = phi i64 [ 0, %15 ], [ %indvars.iv.next3, %27 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv212, metadata !3830, metadata !DIExpression()), !dbg !3833
  %18 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 %indvars.iv212, !dbg !3857
  %19 = load double, double* %18, align 8, !dbg !3857, !tbaa !456
  %20 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv212, !dbg !3860
  %21 = getelementptr inbounds [4 x double], [4 x double]* %20, i64 0, i64 %indvars.iv513, !dbg !3860
  %22 = load double, double* %21, align 8, !dbg !3860, !tbaa !456
  %23 = fmul double %19, %22, !dbg !3861
  %24 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %indvars.iv513, !dbg !3862
  %25 = load double, double* %24, align 8, !dbg !3863, !tbaa !456
  %26 = fadd double %25, %23, !dbg !3863
  store double %26, double* %24, align 8, !dbg !3863, !tbaa !456
  br label %27, !dbg !3864

27:                                               ; preds = %17
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv212, 1, !dbg !3865
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !3830, metadata !DIExpression()), !dbg !3833
  %exitcond4 = icmp ne i64 %indvars.iv.next3, 4, !dbg !3866
  br i1 %exitcond4, label %17, label %28, !dbg !3855, !llvm.loop !3867

28:                                               ; preds = %27
  br label %29, !dbg !3869

29:                                               ; preds = %28
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv513, 1, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !3829, metadata !DIExpression()), !dbg !3833
  %exitcond7 = icmp ne i64 %indvars.iv.next6, 4, !dbg !3871
  br i1 %exitcond7, label %15, label %30, !dbg !3849, !llvm.loop !3872

30:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 0, metadata !3829, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 0, metadata !3829, metadata !DIExpression()), !dbg !3833
  br label %31, !dbg !3874

31:                                               ; preds = %30, %35
  %indvars.iv814 = phi i64 [ 0, %30 ], [ %indvars.iv.next9, %35 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv814, metadata !3829, metadata !DIExpression()), !dbg !3833
  %32 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %indvars.iv814, !dbg !3876
  %33 = load double, double* %32, align 8, !dbg !3876, !tbaa !456
  %34 = getelementptr inbounds double, double* %2, i64 %indvars.iv814, !dbg !3878
  store double %33, double* %34, align 8, !dbg !3879, !tbaa !456
  br label %35, !dbg !3878

35:                                               ; preds = %31
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv814, 1, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !3829, metadata !DIExpression()), !dbg !3833
  %exitcond10 = icmp ne i64 %indvars.iv.next9, 3, !dbg !3881
  br i1 %exitcond10, label %31, label %36, !dbg !3874, !llvm.loop !3882

36:                                               ; preds = %35
  %37 = bitcast [4 x double]* %5 to i8*, !dbg !3884
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %37) #8, !dbg !3884
  %38 = bitcast [4 x double]* %4 to i8*, !dbg !3884
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %38) #8, !dbg !3884
  ret void, !dbg !3884
}

; Function Attrs: nounwind uwtable
define dso_local i32 @transformmol([4 x double]* %0, %struct.molecule_t* %1, i8* %2) #0 !dbg !3885 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3889, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !3890, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i8* %2, metadata !3891, metadata !DIExpression()), !dbg !3901
  %6 = bitcast [3 x double]* %4 to i8*, !dbg !3902
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %6) #8, !dbg !3902
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !3899, metadata !DIExpression()), !dbg !3903
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !3902
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %7) #8, !dbg !3902
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !3900, metadata !DIExpression()), !dbg !3904
  %8 = call i32 @select_atoms(%struct.molecule_t* %1, i8* %2), !dbg !3905
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2, !dbg !3906
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !3906, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %10, metadata !3892, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 0, metadata !3897, metadata !DIExpression()), !dbg !3901
  %11 = icmp ne %struct.strand_t* %10, null, !dbg !3908
  br i1 %11, label %.lr.ph26, label %67, !dbg !3908

.lr.ph26:                                         ; preds = %3
  br label %12, !dbg !3908

12:                                               ; preds = %.lr.ph26, %63
  %.024 = phi i32 [ 0, %.lr.ph26 ], [ %.1.lcssa, %63 ]
  %.0423 = phi %struct.strand_t* [ %10, %.lr.ph26 ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata i32 %.024, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0423, metadata !3892, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 0, metadata !3894, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 %.024, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 0, metadata !3894, metadata !DIExpression()), !dbg !3901
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0423, i32 0, i32 5, !dbg !3909
  %14 = load i32, i32* %13, align 8, !dbg !3909, !tbaa !666
  %15 = sext i32 %14 to i64, !dbg !3914
  %16 = icmp slt i64 0, %15, !dbg !3914
  br i1 %16, label %.lr.ph20, label %62, !dbg !3915

.lr.ph20:                                         ; preds = %12
  br label %17, !dbg !3915

17:                                               ; preds = %.lr.ph20, %58
  %.118 = phi i32 [ %.024, %.lr.ph20 ], [ %.2.lcssa, %58 ]
  %indvars.iv1117 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next12, %58 ]
  call void @llvm.dbg.value(metadata i32 %.118, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 %indvars.iv1117, metadata !3894, metadata !DIExpression()), !dbg !3901
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0423, i32 0, i32 7, !dbg !3916
  %19 = load %struct.residue_t**, %struct.residue_t*** %18, align 8, !dbg !3916, !tbaa !670
  %20 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %19, i64 %indvars.iv1117, !dbg !3918
  %21 = load %struct.residue_t*, %struct.residue_t** %20, align 8, !dbg !3918, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %21, metadata !3893, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 0, metadata !3895, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 %.118, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 0, metadata !3895, metadata !DIExpression()), !dbg !3901
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 15, !dbg !3919
  %23 = load i32, i32* %22, align 8, !dbg !3919, !tbaa !585
  %24 = sext i32 %23 to i64, !dbg !3922
  %25 = icmp slt i64 0, %24, !dbg !3922
  br i1 %25, label %.lr.ph, label %57, !dbg !3923

.lr.ph:                                           ; preds = %17
  br label %26, !dbg !3923

26:                                               ; preds = %.lr.ph, %53
  %.216 = phi i32 [ %.118, %.lr.ph ], [ %.3, %53 ]
  %indvars.iv915 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next10, %53 ]
  call void @llvm.dbg.value(metadata i32 %.216, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 %indvars.iv915, metadata !3895, metadata !DIExpression()), !dbg !3901
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %21, i32 0, i32 17, !dbg !3924
  %28 = load %struct.atom_t*, %struct.atom_t** %27, align 8, !dbg !3924, !tbaa !582
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %28, i64 %indvars.iv915, !dbg !3926
  call void @llvm.dbg.value(metadata %struct.atom_t* %29, metadata !3898, metadata !DIExpression()), !dbg !3901
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i32 0, i32 2, !dbg !3927
  %31 = load i32, i32* %30, align 8, !dbg !3927, !tbaa !1669
  %32 = and i32 %31, 1, !dbg !3929
  %33 = icmp ne i32 %32, 0, !dbg !3929
  br i1 %33, label %34, label %52, !dbg !3930

34:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 %51, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 0, metadata !3896, metadata !DIExpression()), !dbg !3901
  br label %35, !dbg !3931

35:                                               ; preds = %34, %40
  %indvars.iv13 = phi i64 [ 0, %34 ], [ %indvars.iv.next, %40 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !3896, metadata !DIExpression()), !dbg !3901
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i32 0, i32 17, !dbg !3934
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 0, i64 %indvars.iv13, !dbg !3936
  %38 = load double, double* %37, align 8, !dbg !3936, !tbaa !456
  %39 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 %indvars.iv13, !dbg !3937
  store double %38, double* %39, align 8, !dbg !3938, !tbaa !456
  br label %40, !dbg !3937

40:                                               ; preds = %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv13, 1, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3896, metadata !DIExpression()), !dbg !3901
  %exitcond = icmp ne i64 %indvars.iv.next, 3, !dbg !3940
  br i1 %exitcond, label %35, label %41, !dbg !3931, !llvm.loop !3941

41:                                               ; preds = %40
  %42 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !3943
  %43 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !3944
  call void @xfm_xyz(double* %42, [4 x double]* %0, double* %43), !dbg !3945
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 0, metadata !3896, metadata !DIExpression()), !dbg !3901
  br label %44, !dbg !3946

44:                                               ; preds = %41, %49
  %indvars.iv614 = phi i64 [ 0, %41 ], [ %indvars.iv.next7, %49 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv614, metadata !3896, metadata !DIExpression()), !dbg !3901
  %45 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %indvars.iv614, !dbg !3948
  %46 = load double, double* %45, align 8, !dbg !3948, !tbaa !456
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i32 0, i32 17, !dbg !3950
  %48 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 0, i64 %indvars.iv614, !dbg !3951
  store double %46, double* %48, align 8, !dbg !3952, !tbaa !456
  br label %49, !dbg !3951

49:                                               ; preds = %44
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv614, 1, !dbg !3953
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next7, metadata !3896, metadata !DIExpression()), !dbg !3901
  %exitcond8 = icmp ne i64 %indvars.iv.next7, 3, !dbg !3954
  br i1 %exitcond8, label %44, label %50, !dbg !3946, !llvm.loop !3955

50:                                               ; preds = %49
  %51 = add nsw i32 %.216, 1, !dbg !3957
  br label %52, !dbg !3958

52:                                               ; preds = %50, %26
  %.3 = phi i32 [ %51, %50 ], [ %.216, %26 ], !dbg !3959
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3897, metadata !DIExpression()), !dbg !3901
  br label %53, !dbg !3960

53:                                               ; preds = %52
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv915, 1, !dbg !3961
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !3895, metadata !DIExpression()), !dbg !3901
  %54 = load i32, i32* %22, align 8, !dbg !3919, !tbaa !585
  %55 = sext i32 %54 to i64, !dbg !3922
  %56 = icmp slt i64 %indvars.iv.next10, %55, !dbg !3922
  br i1 %56, label %26, label %._crit_edge, !dbg !3923, !llvm.loop !3962

._crit_edge:                                      ; preds = %53
  %split = phi i32 [ %.3, %53 ]
  br label %57, !dbg !3923

57:                                               ; preds = %._crit_edge, %17
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.118, %17 ], !dbg !3959
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !3897, metadata !DIExpression()), !dbg !3901
  br label %58, !dbg !3964

58:                                               ; preds = %57
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv1117, 1, !dbg !3965
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next12, metadata !3894, metadata !DIExpression()), !dbg !3901
  %59 = load i32, i32* %13, align 8, !dbg !3909, !tbaa !666
  %60 = sext i32 %59 to i64, !dbg !3914
  %61 = icmp slt i64 %indvars.iv.next12, %60, !dbg !3914
  br i1 %61, label %17, label %._crit_edge21, !dbg !3915, !llvm.loop !3966

._crit_edge21:                                    ; preds = %58
  %split22 = phi i32 [ %.2.lcssa, %58 ]
  br label %62, !dbg !3915

62:                                               ; preds = %._crit_edge21, %12
  %.1.lcssa = phi i32 [ %split22, %._crit_edge21 ], [ %.024, %12 ], !dbg !3968
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !3897, metadata !DIExpression()), !dbg !3901
  br label %63, !dbg !3969

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0423, i32 0, i32 4, !dbg !3970
  %65 = load %struct.strand_t*, %struct.strand_t** %64, align 8, !dbg !3970, !tbaa !654
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata %struct.strand_t* %65, metadata !3892, metadata !DIExpression()), !dbg !3901
  %66 = icmp ne %struct.strand_t* %65, null, !dbg !3908
  br i1 %66, label %12, label %._crit_edge27, !dbg !3908, !llvm.loop !3971

._crit_edge27:                                    ; preds = %63
  %split28 = phi i32 [ %.1.lcssa, %63 ]
  br label %67, !dbg !3908

67:                                               ; preds = %._crit_edge27, %3
  %.0.lcssa = phi i32 [ %split28, %._crit_edge27 ], [ 0, %3 ], !dbg !3968
  call void @llvm.dbg.value(metadata i32 %.0.lcssa, metadata !3897, metadata !DIExpression()), !dbg !3901
  %68 = bitcast [3 x double]* %5 to i8*, !dbg !3973
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %68) #8, !dbg !3973
  %69 = bitcast [3 x double]* %4 to i8*, !dbg !3973
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %69) #8, !dbg !3973
  ret i32 %.0.lcssa, !dbg !3974
}

; Function Attrs: nounwind uwtable
define dso_local i32 @transformpts([4 x double]* %0, [3 x double]* %1, i32 %2) #0 !dbg !3975 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3979, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata [3 x double]* %1, metadata !3980, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 %2, metadata !3981, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i32 0, metadata !3982, metadata !DIExpression()), !dbg !3983
  %4 = sext i32 %2 to i64, !dbg !3984
  call void @llvm.dbg.value(metadata i64 0, metadata !3982, metadata !DIExpression()), !dbg !3983
  %5 = icmp slt i64 0, %4, !dbg !3986
  br i1 %5, label %.lr.ph, label %13, !dbg !3988

.lr.ph:                                           ; preds = %3
  br label %6, !dbg !3988

6:                                                ; preds = %.lr.ph, %11
  %indvars.iv1 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3982, metadata !DIExpression()), !dbg !3983
  %7 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %indvars.iv1, !dbg !3989
  %8 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !3989
  %9 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %indvars.iv1, !dbg !3990
  %10 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0, !dbg !3990
  call void @xfm_xyz(double* %8, [4 x double]* %0, double* %10), !dbg !3991
  br label %11, !dbg !3991

11:                                               ; preds = %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1, 1, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3982, metadata !DIExpression()), !dbg !3983
  %12 = icmp slt i64 %indvars.iv.next, %4, !dbg !3986
  br i1 %12, label %6, label %._crit_edge, !dbg !3988, !llvm.loop !3993

._crit_edge:                                      ; preds = %11
  br label %13, !dbg !3988

13:                                               ; preds = %._crit_edge, %3
  ret i32 0, !dbg !3995
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @updtransform([4 x double]* %0, [4 x double]* %1) #0 !dbg !397 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !403, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !404, metadata !DIExpression()), !dbg !3996
  call void @concat_mat([4 x double]* %0, [4 x double]* %1, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @updtransform.mr, i64 0, i64 0)), !dbg !3997
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @updtransform.mr to i8*), metadata !405, metadata !DIExpression()), !dbg !3996
  %3 = bitcast i8* bitcast ([4 x [4 x double]]* @updtransform.mr to i8*) to [4 x [4 x double]]*, !dbg !3998
  ret [4 x [4 x double]]* %3, !dbg !3999
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @trans4p(double* %0, double* %1, double %2) #0 !dbg !408 {
  call void @llvm.dbg.value(metadata double* %0, metadata !412, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata double* %1, metadata !413, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata double %2, metadata !414, metadata !DIExpression()), !dbg !4000
  %4 = getelementptr inbounds double, double* %1, i64 0, !dbg !4001
  %5 = load double, double* %4, align 8, !dbg !4001, !tbaa !456
  %6 = getelementptr inbounds double, double* %0, i64 0, !dbg !4002
  %7 = load double, double* %6, align 8, !dbg !4002, !tbaa !456
  %8 = fsub double %5, %7, !dbg !4003
  call void @llvm.dbg.value(metadata double %8, metadata !416, metadata !DIExpression()), !dbg !4000
  %9 = getelementptr inbounds double, double* %1, i64 1, !dbg !4004
  %10 = load double, double* %9, align 8, !dbg !4004, !tbaa !456
  %11 = getelementptr inbounds double, double* %0, i64 1, !dbg !4005
  %12 = load double, double* %11, align 8, !dbg !4005, !tbaa !456
  %13 = fsub double %10, %12, !dbg !4006
  call void @llvm.dbg.value(metadata double %13, metadata !417, metadata !DIExpression()), !dbg !4000
  %14 = getelementptr inbounds double, double* %1, i64 2, !dbg !4007
  %15 = load double, double* %14, align 8, !dbg !4007, !tbaa !456
  %16 = getelementptr inbounds double, double* %0, i64 2, !dbg !4008
  %17 = load double, double* %16, align 8, !dbg !4008, !tbaa !456
  %18 = fsub double %15, %17, !dbg !4009
  call void @llvm.dbg.value(metadata double %18, metadata !418, metadata !DIExpression()), !dbg !4000
  %19 = fmul double %8, %8, !dbg !4010
  %20 = fmul double %13, %13, !dbg !4012
  %21 = fadd double %19, %20, !dbg !4013
  %22 = fmul double %18, %18, !dbg !4014
  %23 = fadd double %21, %22, !dbg !4015
  %24 = call double @sqrt(double %23) #8, !dbg !4016
  call void @llvm.dbg.value(metadata double %24, metadata !419, metadata !DIExpression()), !dbg !4000
  %25 = fcmp oeq double %24, 0.000000e+00, !dbg !4017
  br i1 %25, label %26, label %30, !dbg !4018

26:                                               ; preds = %3
  %27 = call [4 x [4 x double]]* @newtransform(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00), !dbg !4019
  %28 = bitcast [4 x [4 x double]]* %27 to i8*, !dbg !4019
  %29 = call [4 x [4 x double]]* @NAB_matcpy(i8* bitcast ([4 x [4 x double]]* @trans4p.mat to i8*), i8* %28), !dbg !4021
  br label %40, !dbg !4022

30:                                               ; preds = %3
  %31 = fdiv double %8, %24, !dbg !4023
  call void @llvm.dbg.value(metadata double %31, metadata !416, metadata !DIExpression()), !dbg !4000
  %32 = fdiv double %13, %24, !dbg !4025
  call void @llvm.dbg.value(metadata double %32, metadata !417, metadata !DIExpression()), !dbg !4000
  %33 = fdiv double %18, %24, !dbg !4026
  call void @llvm.dbg.value(metadata double %33, metadata !418, metadata !DIExpression()), !dbg !4000
  %34 = fmul double %2, %31, !dbg !4027
  %35 = fmul double %2, %32, !dbg !4028
  %36 = fmul double %2, %33, !dbg !4029
  %37 = call [4 x [4 x double]]* @newtransform(double %34, double %35, double %36, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00), !dbg !4030
  %38 = bitcast [4 x [4 x double]]* %37 to i8*, !dbg !4030
  %39 = call [4 x [4 x double]]* @NAB_matcpy(i8* bitcast ([4 x [4 x double]]* @trans4p.mat to i8*), i8* %38), !dbg !4031
  br label %40

40:                                               ; preds = %30, %26
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @trans4p.mat to i8*), metadata !415, metadata !DIExpression()), !dbg !4000
  %41 = bitcast i8* bitcast ([4 x [4 x double]]* @trans4p.mat to i8*) to [4 x [4 x double]]*, !dbg !4032
  ret [4 x [4 x double]]* %41, !dbg !4033
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @NAB_matcpy(i8* %0, i8* %1) #0 !dbg !4034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4038, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i8* %1, metadata !4039, metadata !DIExpression()), !dbg !4040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 %1, i64 128, i1 false), !dbg !4041
  %3 = bitcast i8* %0 to [4 x [4 x double]]*, !dbg !4042
  ret [4 x [4 x double]]* %3, !dbg !4043
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @trans4(%struct.molecule_t* %0, i8* %1, i8* %2, double %3) #0 !dbg !4044 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !4048, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i8* %1, metadata !4049, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i8* %2, metadata !4050, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata double %3, metadata !4051, metadata !DIExpression()), !dbg !4054
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !4055
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %7) #8, !dbg !4055
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !4052, metadata !DIExpression()), !dbg !4056
  %8 = bitcast [3 x double]* %6 to i8*, !dbg !4055
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %8) #8, !dbg !4055
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !4053, metadata !DIExpression()), !dbg !4057
  %9 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !4058
  %10 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* %9), !dbg !4059
  %11 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4060
  %12 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* %11), !dbg !4061
  %13 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !4062
  %14 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4063
  %15 = call [4 x [4 x double]]* @trans4p(double* %13, double* %14, double %3), !dbg !4064
  %16 = bitcast [3 x double]* %6 to i8*, !dbg !4065
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %16) #8, !dbg !4065
  %17 = bitcast [3 x double]* %5 to i8*, !dbg !4065
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %17) #8, !dbg !4065
  ret [4 x [4 x double]]* %15, !dbg !4066
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @rot4p(double* %0, double* %1, double %2) #0 !dbg !422 {
  %4 = alloca [4 x [4 x double]], align 16
  %5 = alloca [4 x [4 x double]], align 16
  %6 = alloca [4 x [4 x double]], align 16
  %7 = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata double* %0, metadata !424, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata double* %1, metadata !425, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata double %2, metadata !426, metadata !DIExpression()), !dbg !4067
  %8 = bitcast [4 x [4 x double]]* %4 to i8*, !dbg !4068
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %8) #8, !dbg !4068
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %4, metadata !428, metadata !DIExpression()), !dbg !4069
  %9 = bitcast [4 x [4 x double]]* %5 to i8*, !dbg !4068
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %9) #8, !dbg !4068
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %5, metadata !429, metadata !DIExpression()), !dbg !4070
  %10 = bitcast [4 x [4 x double]]* %6 to i8*, !dbg !4068
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %10) #8, !dbg !4068
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %6, metadata !430, metadata !DIExpression()), !dbg !4071
  %11 = bitcast [4 x [4 x double]]* %7 to i8*, !dbg !4068
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %11) #8, !dbg !4068
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %7, metadata !431, metadata !DIExpression()), !dbg !4072
  %12 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 0, !dbg !4073
  %13 = bitcast [4 x double]* %12 to i8*, !dbg !4073
  %14 = getelementptr inbounds double, double* %0, i64 0, !dbg !4074
  %15 = load double, double* %14, align 8, !dbg !4074, !tbaa !456
  %16 = fneg double %15, !dbg !4075
  %17 = getelementptr inbounds double, double* %0, i64 1, !dbg !4076
  %18 = load double, double* %17, align 8, !dbg !4076, !tbaa !456
  %19 = fneg double %18, !dbg !4077
  %20 = getelementptr inbounds double, double* %0, i64 2, !dbg !4078
  %21 = load double, double* %20, align 8, !dbg !4078, !tbaa !456
  %22 = fneg double %21, !dbg !4079
  %23 = call [4 x [4 x double]]* @newtransform(double %16, double %19, double %22, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00), !dbg !4080
  %24 = bitcast [4 x [4 x double]]* %23 to i8*, !dbg !4080
  %25 = call [4 x [4 x double]]* @NAB_matcpy(i8* %13, i8* %24), !dbg !4081
  %26 = getelementptr inbounds double, double* %1, i64 0, !dbg !4082
  %27 = load double, double* %26, align 8, !dbg !4082, !tbaa !456
  %28 = getelementptr inbounds double, double* %0, i64 0, !dbg !4083
  %29 = load double, double* %28, align 8, !dbg !4083, !tbaa !456
  %30 = fsub double %27, %29, !dbg !4084
  %31 = getelementptr inbounds double, double* %1, i64 1, !dbg !4085
  %32 = load double, double* %31, align 8, !dbg !4085, !tbaa !456
  %33 = getelementptr inbounds double, double* %0, i64 1, !dbg !4086
  %34 = load double, double* %33, align 8, !dbg !4086, !tbaa !456
  %35 = fsub double %32, %34, !dbg !4087
  %36 = getelementptr inbounds double, double* %1, i64 2, !dbg !4088
  %37 = load double, double* %36, align 8, !dbg !4088, !tbaa !456
  %38 = getelementptr inbounds double, double* %0, i64 2, !dbg !4089
  %39 = load double, double* %38, align 8, !dbg !4089, !tbaa !456
  %40 = fsub double %37, %39, !dbg !4090
  %41 = fneg double %2, !dbg !4091
  %42 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, !dbg !4092
  call void @raa2mat(double %30, double %35, double %40, double %41, [4 x double]* %42), !dbg !4093
  %43 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %6, i64 0, i64 0, !dbg !4094
  %44 = bitcast [4 x double]* %43 to i8*, !dbg !4094
  %45 = getelementptr inbounds double, double* %0, i64 0, !dbg !4095
  %46 = load double, double* %45, align 8, !dbg !4095, !tbaa !456
  %47 = getelementptr inbounds double, double* %0, i64 1, !dbg !4096
  %48 = load double, double* %47, align 8, !dbg !4096, !tbaa !456
  %49 = getelementptr inbounds double, double* %0, i64 2, !dbg !4097
  %50 = load double, double* %49, align 8, !dbg !4097, !tbaa !456
  %51 = call [4 x [4 x double]]* @newtransform(double %46, double %48, double %50, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00), !dbg !4098
  %52 = bitcast [4 x [4 x double]]* %51 to i8*, !dbg !4098
  %53 = call [4 x [4 x double]]* @NAB_matcpy(i8* %44, i8* %52), !dbg !4099
  %54 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 0, !dbg !4100
  %55 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, !dbg !4101
  %56 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !4102
  call void @concat_mat([4 x double]* %54, [4 x double]* %55, [4 x double]* %56), !dbg !4103
  %57 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !4104
  %58 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %6, i64 0, i64 0, !dbg !4105
  call void @concat_mat([4 x double]* %57, [4 x double]* %58, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @rot4p.mat5, i64 0, i64 0)), !dbg !4106
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @rot4p.mat5 to i8*), metadata !427, metadata !DIExpression()), !dbg !4067
  %59 = bitcast i8* bitcast ([4 x [4 x double]]* @rot4p.mat5 to i8*) to [4 x [4 x double]]*, !dbg !4107
  %60 = bitcast [4 x [4 x double]]* %7 to i8*, !dbg !4108
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %60) #8, !dbg !4108
  %61 = bitcast [4 x [4 x double]]* %6 to i8*, !dbg !4108
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %61) #8, !dbg !4108
  %62 = bitcast [4 x [4 x double]]* %5 to i8*, !dbg !4108
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %62) #8, !dbg !4108
  %63 = bitcast [4 x [4 x double]]* %4 to i8*, !dbg !4108
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %63) #8, !dbg !4108
  ret [4 x [4 x double]]* %59, !dbg !4109
}

; Function Attrs: nounwind uwtable
define internal void @raa2mat(double %0, double %1, double %2, double %3, [4 x double]* %4) #0 !dbg !4110 {
  call void @llvm.dbg.value(metadata double %0, metadata !4114, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %1, metadata !4115, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %2, metadata !4116, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %3, metadata !4117, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata [4 x double]* %4, metadata !4118, metadata !DIExpression()), !dbg !4137
  %6 = call double @hypot(double %0, double %1) #8, !dbg !4138
  %7 = call double @hypot(double %6, double %2) #8, !dbg !4140
  call void @llvm.dbg.value(metadata double %7, metadata !4119, metadata !DIExpression()), !dbg !4137
  %8 = fcmp oeq double %7, 0.000000e+00, !dbg !4141
  br i1 %8, label %9, label %10, !dbg !4142

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !4114, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !4115, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4116, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4119, metadata !DIExpression()), !dbg !4137
  br label %10, !dbg !4143

10:                                               ; preds = %9, %5
  %.03 = phi double [ 1.000000e+00, %9 ], [ %7, %5 ], !dbg !4145
  %.02 = phi double [ 1.000000e+00, %9 ], [ %2, %5 ]
  %.01 = phi double [ 0.000000e+00, %9 ], [ %1, %5 ]
  %.0 = phi double [ 0.000000e+00, %9 ], [ %0, %5 ]
  call void @llvm.dbg.value(metadata double %.0, metadata !4114, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %.01, metadata !4115, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %.02, metadata !4116, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %.03, metadata !4119, metadata !DIExpression()), !dbg !4137
  %11 = fdiv double %.0, %.03, !dbg !4146
  call void @llvm.dbg.value(metadata double %11, metadata !4114, metadata !DIExpression()), !dbg !4137
  %12 = fdiv double %.01, %.03, !dbg !4147
  call void @llvm.dbg.value(metadata double %12, metadata !4115, metadata !DIExpression()), !dbg !4137
  %13 = fdiv double %.02, %.03, !dbg !4148
  call void @llvm.dbg.value(metadata double %13, metadata !4116, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %11, metadata !4120, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %12, metadata !4121, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata double %13, metadata !4122, metadata !DIExpression()), !dbg !4137
  %14 = fmul double %11, %11, !dbg !4149
  call void @llvm.dbg.value(metadata double %14, metadata !4123, metadata !DIExpression()), !dbg !4137
  %15 = fmul double %11, %12, !dbg !4150
  call void @llvm.dbg.value(metadata double %15, metadata !4124, metadata !DIExpression()), !dbg !4137
  %16 = fmul double %11, %13, !dbg !4151
  call void @llvm.dbg.value(metadata double %16, metadata !4125, metadata !DIExpression()), !dbg !4137
  %17 = fmul double %12, %12, !dbg !4152
  call void @llvm.dbg.value(metadata double %17, metadata !4126, metadata !DIExpression()), !dbg !4137
  %18 = fmul double %12, %13, !dbg !4153
  call void @llvm.dbg.value(metadata double %18, metadata !4127, metadata !DIExpression()), !dbg !4137
  %19 = fmul double %13, %13, !dbg !4154
  call void @llvm.dbg.value(metadata double %19, metadata !4128, metadata !DIExpression()), !dbg !4137
  %20 = fmul double 0x3F91DF46A2529D39, %3, !dbg !4155
  %21 = call double @sin(double %20) #8, !dbg !4156
  call void @llvm.dbg.value(metadata double %21, metadata !4136, metadata !DIExpression()), !dbg !4137
  %22 = fmul double 0x3F91DF46A2529D39, %3, !dbg !4157
  %23 = call double @cos(double %22) #8, !dbg !4158
  call void @llvm.dbg.value(metadata double %23, metadata !4135, metadata !DIExpression()), !dbg !4137
  %24 = fmul double %23, %15, !dbg !4159
  call void @llvm.dbg.value(metadata double %24, metadata !4129, metadata !DIExpression()), !dbg !4137
  %25 = fmul double %23, %18, !dbg !4160
  call void @llvm.dbg.value(metadata double %25, metadata !4130, metadata !DIExpression()), !dbg !4137
  %26 = fmul double %23, %16, !dbg !4161
  call void @llvm.dbg.value(metadata double %26, metadata !4131, metadata !DIExpression()), !dbg !4137
  %27 = fmul double %21, %11, !dbg !4162
  call void @llvm.dbg.value(metadata double %27, metadata !4132, metadata !DIExpression()), !dbg !4137
  %28 = fmul double %21, %12, !dbg !4163
  call void @llvm.dbg.value(metadata double %28, metadata !4133, metadata !DIExpression()), !dbg !4137
  %29 = fmul double %21, %13, !dbg !4164
  call void @llvm.dbg.value(metadata double %29, metadata !4134, metadata !DIExpression()), !dbg !4137
  %30 = fsub double 1.000000e+00, %14, !dbg !4165
  %31 = fmul double %23, %30, !dbg !4165
  %32 = fadd double %14, %31, !dbg !4165
  %33 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, !dbg !4166
  %34 = getelementptr inbounds [4 x double], [4 x double]* %33, i64 0, i64 0, !dbg !4166
  store double %32, double* %34, align 8, !dbg !4167, !tbaa !456
  %35 = fneg double %24, !dbg !4168
  %36 = fadd double %15, %35, !dbg !4168
  %37 = fneg double %29, !dbg !4168
  %38 = fadd double %36, %37, !dbg !4168
  %39 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, !dbg !4169
  %40 = getelementptr inbounds [4 x double], [4 x double]* %39, i64 0, i64 1, !dbg !4169
  store double %38, double* %40, align 8, !dbg !4170, !tbaa !456
  %41 = fneg double %26, !dbg !4171
  %42 = fadd double %16, %41, !dbg !4171
  %43 = fadd double %42, %28, !dbg !4171
  %44 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, !dbg !4172
  %45 = getelementptr inbounds [4 x double], [4 x double]* %44, i64 0, i64 2, !dbg !4172
  store double %43, double* %45, align 8, !dbg !4173, !tbaa !456
  %46 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, !dbg !4174
  %47 = getelementptr inbounds [4 x double], [4 x double]* %46, i64 0, i64 3, !dbg !4174
  store double 0.000000e+00, double* %47, align 8, !dbg !4175, !tbaa !456
  %48 = fneg double %24, !dbg !4176
  %49 = fadd double %15, %48, !dbg !4176
  %50 = fadd double %49, %29, !dbg !4176
  %51 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 1, !dbg !4177
  %52 = getelementptr inbounds [4 x double], [4 x double]* %51, i64 0, i64 0, !dbg !4177
  store double %50, double* %52, align 8, !dbg !4178, !tbaa !456
  %53 = fsub double 1.000000e+00, %17, !dbg !4179
  %54 = fmul double %23, %53, !dbg !4179
  %55 = fadd double %17, %54, !dbg !4179
  %56 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 1, !dbg !4180
  %57 = getelementptr inbounds [4 x double], [4 x double]* %56, i64 0, i64 1, !dbg !4180
  store double %55, double* %57, align 8, !dbg !4181, !tbaa !456
  %58 = fneg double %25, !dbg !4182
  %59 = fadd double %18, %58, !dbg !4182
  %60 = fneg double %27, !dbg !4182
  %61 = fadd double %59, %60, !dbg !4182
  %62 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 1, !dbg !4183
  %63 = getelementptr inbounds [4 x double], [4 x double]* %62, i64 0, i64 2, !dbg !4183
  store double %61, double* %63, align 8, !dbg !4184, !tbaa !456
  %64 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 1, !dbg !4185
  %65 = getelementptr inbounds [4 x double], [4 x double]* %64, i64 0, i64 3, !dbg !4185
  store double 0.000000e+00, double* %65, align 8, !dbg !4186, !tbaa !456
  %66 = fneg double %26, !dbg !4187
  %67 = fadd double %16, %66, !dbg !4187
  %68 = fneg double %28, !dbg !4187
  %69 = fadd double %67, %68, !dbg !4187
  %70 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 2, !dbg !4188
  %71 = getelementptr inbounds [4 x double], [4 x double]* %70, i64 0, i64 0, !dbg !4188
  store double %69, double* %71, align 8, !dbg !4189, !tbaa !456
  %72 = fneg double %25, !dbg !4190
  %73 = fadd double %18, %72, !dbg !4190
  %74 = fadd double %73, %27, !dbg !4190
  %75 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 2, !dbg !4191
  %76 = getelementptr inbounds [4 x double], [4 x double]* %75, i64 0, i64 1, !dbg !4191
  store double %74, double* %76, align 8, !dbg !4192, !tbaa !456
  %77 = fsub double 1.000000e+00, %19, !dbg !4193
  %78 = fmul double %23, %77, !dbg !4193
  %79 = fadd double %19, %78, !dbg !4193
  %80 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 2, !dbg !4194
  %81 = getelementptr inbounds [4 x double], [4 x double]* %80, i64 0, i64 2, !dbg !4194
  store double %79, double* %81, align 8, !dbg !4195, !tbaa !456
  %82 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 2, !dbg !4196
  %83 = getelementptr inbounds [4 x double], [4 x double]* %82, i64 0, i64 3, !dbg !4196
  store double 0.000000e+00, double* %83, align 8, !dbg !4197, !tbaa !456
  %84 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 3, !dbg !4198
  %85 = getelementptr inbounds [4 x double], [4 x double]* %84, i64 0, i64 0, !dbg !4198
  store double 0.000000e+00, double* %85, align 8, !dbg !4199, !tbaa !456
  %86 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 3, !dbg !4200
  %87 = getelementptr inbounds [4 x double], [4 x double]* %86, i64 0, i64 1, !dbg !4200
  store double 0.000000e+00, double* %87, align 8, !dbg !4201, !tbaa !456
  %88 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 3, !dbg !4202
  %89 = getelementptr inbounds [4 x double], [4 x double]* %88, i64 0, i64 2, !dbg !4202
  store double 0.000000e+00, double* %89, align 8, !dbg !4203, !tbaa !456
  %90 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 3, !dbg !4204
  %91 = getelementptr inbounds [4 x double], [4 x double]* %90, i64 0, i64 3, !dbg !4204
  store double 1.000000e+00, double* %91, align 8, !dbg !4205, !tbaa !456
  ret void, !dbg !4206
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @rot4(%struct.molecule_t* %0, i8* %1, i8* %2, double %3) #0 !dbg !4207 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !4209, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i8* %1, metadata !4210, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata i8* %2, metadata !4211, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.value(metadata double %3, metadata !4212, metadata !DIExpression()), !dbg !4215
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !4216
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %7) #8, !dbg !4216
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !4213, metadata !DIExpression()), !dbg !4217
  %8 = bitcast [3 x double]* %6 to i8*, !dbg !4216
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %8) #8, !dbg !4216
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !4214, metadata !DIExpression()), !dbg !4218
  %9 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !4219
  %10 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* %9), !dbg !4220
  %11 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4221
  %12 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* %11), !dbg !4222
  %13 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !4223
  %14 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4224
  %15 = call [4 x [4 x double]]* @rot4p(double* %13, double* %14, double %3), !dbg !4225
  %16 = bitcast [3 x double]* %6 to i8*, !dbg !4226
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %16) #8, !dbg !4226
  %17 = bitcast [3 x double]* %5 to i8*, !dbg !4226
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %17) #8, !dbg !4226
  ret [4 x [4 x double]]* %15, !dbg !4227
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @set_belly_mask(%struct.molecule_t* %0, i8* %1, i32* %2) #0 !dbg !4228 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !4232, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i8* %1, metadata !4233, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32* %2, metadata !4234, metadata !DIExpression()), !dbg !4254
  %4 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !4255
  call void @llvm.dbg.value(metadata i32 0, metadata !4243, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4242, metadata !DIExpression()), !dbg !4254
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !4256
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !4256, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !4250, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4243, metadata !DIExpression()), !dbg !4254
  %7 = icmp ne %struct.strand_t* %6, null, !dbg !4258
  br i1 %7, label %.lr.ph63, label %52, !dbg !4258

.lr.ph63:                                         ; preds = %3
  br label %8, !dbg !4258

8:                                                ; preds = %.lr.ph63, %48
  %.061 = phi %struct.strand_t* [ %6, %.lr.ph63 ], [ %50, %48 ]
  %.0960 = phi i32 [ 0, %.lr.ph63 ], [ %.110.lcssa, %48 ]
  %.01259 = phi i32 [ 0, %.lr.ph63 ], [ %.113.lcssa, %48 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.061, metadata !4250, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.0960, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.01259, metadata !4243, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4240, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4240, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.0960, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.01259, metadata !4243, metadata !DIExpression()), !dbg !4254
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.061, i32 0, i32 5, !dbg !4259
  %10 = load i32, i32* %9, align 8, !dbg !4259, !tbaa !666
  %11 = sext i32 %10 to i64, !dbg !4264
  %12 = icmp slt i64 0, %11, !dbg !4264
  br i1 %12, label %.lr.ph55, label %47, !dbg !4265

.lr.ph55:                                         ; preds = %8
  br label %13, !dbg !4265

13:                                               ; preds = %.lr.ph55, %43
  %.11053 = phi i32 [ %.0960, %.lr.ph55 ], [ %42, %43 ]
  %.11352 = phi i32 [ %.01259, %.lr.ph55 ], [ %.214.lcssa, %43 ]
  %indvars.iv2451 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next25, %43 ]
  call void @llvm.dbg.value(metadata i32 %.11053, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.11352, metadata !4243, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv2451, metadata !4240, metadata !DIExpression()), !dbg !4254
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.061, i32 0, i32 7, !dbg !4266
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8, !dbg !4266, !tbaa !670
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv2451, !dbg !4268
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8, !dbg !4268, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !4251, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4241, metadata !DIExpression()), !dbg !4254
  %18 = sext i32 %.11053 to i64, !dbg !4269
  call void @llvm.dbg.value(metadata i64 0, metadata !4241, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %18, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.11352, metadata !4243, metadata !DIExpression()), !dbg !4254
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 15, !dbg !4271
  %20 = load i32, i32* %19, align 8, !dbg !4271, !tbaa !585
  %21 = sext i32 %20 to i64, !dbg !4273
  %22 = icmp slt i64 0, %21, !dbg !4273
  br i1 %22, label %.lr.ph, label %41, !dbg !4274

.lr.ph:                                           ; preds = %13
  br label %23, !dbg !4274

23:                                               ; preds = %.lr.ph, %37
  %.21449 = phi i32 [ %.11352, %.lr.ph ], [ %.315, %37 ]
  %indvars.iv47 = phi i64 [ %18, %.lr.ph ], [ %indvars.iv.next, %37 ]
  %indvars.iv2246 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next23, %37 ]
  call void @llvm.dbg.value(metadata i32 %.21449, metadata !4243, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv2246, metadata !4241, metadata !DIExpression()), !dbg !4254
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17, !dbg !4275
  %25 = load %struct.atom_t*, %struct.atom_t** %24, align 8, !dbg !4275, !tbaa !582
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv2246, !dbg !4277
  call void @llvm.dbg.value(metadata %struct.atom_t* %26, metadata !4252, metadata !DIExpression()), !dbg !4254
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 0, i32 2, !dbg !4278
  %28 = load i32, i32* %27, align 8, !dbg !4278, !tbaa !1669
  %29 = and i32 %28, 1, !dbg !4280
  %30 = icmp ne i32 %29, 0, !dbg !4280
  br i1 %30, label %31, label %33, !dbg !4281

31:                                               ; preds = %23
  %32 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv47, !dbg !4282
  store i32 0, i32* %32, align 4, !dbg !4283, !tbaa !2389
  br label %36, !dbg !4282

33:                                               ; preds = %23
  %34 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv47, !dbg !4284
  store i32 1, i32* %34, align 4, !dbg !4286, !tbaa !2389
  %35 = add nsw i32 %.21449, 1, !dbg !4287
  call void @llvm.dbg.value(metadata i32 %35, metadata !4243, metadata !DIExpression()), !dbg !4254
  br label %36

36:                                               ; preds = %33, %31
  %indvars.iv48 = phi i64 [ %indvars.iv47, %31 ], [ %indvars.iv47, %33 ]
  %.315 = phi i32 [ %.21449, %31 ], [ %35, %33 ], !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.315, metadata !4243, metadata !DIExpression()), !dbg !4254
  %indvars.iv.next = add nsw i64 %indvars.iv48, 1, !dbg !4288
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4242, metadata !DIExpression()), !dbg !4254
  br label %37, !dbg !4289

37:                                               ; preds = %36
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv2246, 1, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next23, metadata !4241, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.315, metadata !4243, metadata !DIExpression()), !dbg !4254
  %38 = load i32, i32* %19, align 8, !dbg !4271, !tbaa !585
  %39 = sext i32 %38 to i64, !dbg !4273
  %40 = icmp slt i64 %indvars.iv.next23, %39, !dbg !4273
  br i1 %40, label %23, label %._crit_edge, !dbg !4274, !llvm.loop !4291

._crit_edge:                                      ; preds = %37
  %split = phi i32 [ %.315, %37 ]
  %split50 = phi i64 [ %indvars.iv.next, %37 ]
  br label %41, !dbg !4274

41:                                               ; preds = %._crit_edge, %13
  %.214.lcssa = phi i32 [ %split, %._crit_edge ], [ %.11352, %13 ], !dbg !4293
  %.211.lcssa.wide = phi i64 [ %split50, %._crit_edge ], [ %18, %13 ]
  %42 = trunc i64 %.211.lcssa.wide to i32, !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.214.lcssa, metadata !4243, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %42, metadata !4242, metadata !DIExpression()), !dbg !4254
  br label %43, !dbg !4294

43:                                               ; preds = %41
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2451, 1, !dbg !4295
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next25, metadata !4240, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %42, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.214.lcssa, metadata !4243, metadata !DIExpression()), !dbg !4254
  %44 = load i32, i32* %9, align 8, !dbg !4259, !tbaa !666
  %45 = sext i32 %44 to i64, !dbg !4264
  %46 = icmp slt i64 %indvars.iv.next25, %45, !dbg !4264
  br i1 %46, label %13, label %._crit_edge56, !dbg !4265, !llvm.loop !4296

._crit_edge56:                                    ; preds = %43
  %split57 = phi i32 [ %.214.lcssa, %43 ]
  %split58 = phi i32 [ %42, %43 ]
  br label %47, !dbg !4265

47:                                               ; preds = %._crit_edge56, %8
  %.113.lcssa = phi i32 [ %split57, %._crit_edge56 ], [ %.01259, %8 ], !dbg !4293
  %.110.lcssa = phi i32 [ %split58, %._crit_edge56 ], [ %.0960, %8 ], !dbg !4298
  call void @llvm.dbg.value(metadata i32 %.113.lcssa, metadata !4243, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.110.lcssa, metadata !4242, metadata !DIExpression()), !dbg !4254
  br label %48, !dbg !4299

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.061, i32 0, i32 4, !dbg !4300
  %50 = load %struct.strand_t*, %struct.strand_t** %49, align 8, !dbg !4300, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %50, metadata !4250, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.110.lcssa, metadata !4242, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.113.lcssa, metadata !4243, metadata !DIExpression()), !dbg !4254
  %51 = icmp ne %struct.strand_t* %50, null, !dbg !4258
  br i1 %51, label %8, label %._crit_edge64, !dbg !4258, !llvm.loop !4301

._crit_edge64:                                    ; preds = %48
  %split65 = phi i32 [ %.113.lcssa, %48 ]
  br label %52, !dbg !4258

52:                                               ; preds = %._crit_edge64, %3
  %.012.lcssa = phi i32 [ %split65, %._crit_edge64 ], [ 0, %3 ], !dbg !4293
  call void @llvm.dbg.value(metadata i32 %.012.lcssa, metadata !4243, metadata !DIExpression()), !dbg !4254
  %53 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 6, !dbg !4303
  %54 = load %struct.parm*, %struct.parm** %53, align 8, !dbg !4303, !tbaa !510
  call void @llvm.dbg.value(metadata %struct.parm* %54, metadata !4253, metadata !DIExpression()), !dbg !4254
  %55 = icmp ne %struct.parm* %54, null, !dbg !4304
  br i1 %55, label %56, label %638, !dbg !4306

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  %57 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 6, !dbg !4307
  %58 = load i32, i32* %57, align 8, !dbg !4307, !tbaa !4311
  %59 = sext i32 %58 to i64, !dbg !4312
  %60 = icmp slt i64 0, %59, !dbg !4312
  br i1 %60, label %.lr.ph70, label %112, !dbg !4313

.lr.ph70:                                         ; preds = %56
  br label %61, !dbg !4313

61:                                               ; preds = %.lr.ph70, %108
  %.01668 = phi i32 [ 0, %.lr.ph70 ], [ %.117, %108 ]
  %indvars.iv2666 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next27, %108 ]
  call void @llvm.dbg.value(metadata i32 %.01668, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv2666, metadata !4239, metadata !DIExpression()), !dbg !4254
  %62 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 66, !dbg !4314
  %63 = load i32*, i32** %62, align 8, !dbg !4314, !tbaa !4316
  %64 = getelementptr inbounds i32, i32* %63, i64 %indvars.iv2666, !dbg !4317
  %65 = load i32, i32* %64, align 4, !dbg !4317, !tbaa !2389
  %66 = sdiv i32 %65, 3, !dbg !4318
  call void @llvm.dbg.value(metadata i32 %66, metadata !4235, metadata !DIExpression()), !dbg !4254
  %67 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 67, !dbg !4319
  %68 = load i32*, i32** %67, align 8, !dbg !4319, !tbaa !4320
  %69 = getelementptr inbounds i32, i32* %68, i64 %indvars.iv2666, !dbg !4321
  %70 = load i32, i32* %69, align 4, !dbg !4321, !tbaa !2389
  %71 = sdiv i32 %70, 3, !dbg !4322
  call void @llvm.dbg.value(metadata i32 %71, metadata !4236, metadata !DIExpression()), !dbg !4254
  %72 = sext i32 %66 to i64, !dbg !4323
  %73 = getelementptr inbounds i32, i32* %2, i64 %72, !dbg !4323
  %74 = load i32, i32* %73, align 4, !dbg !4323, !tbaa !2389
  %75 = icmp ne i32 %74, 0, !dbg !4323
  br i1 %75, label %76, label %81, !dbg !4325

76:                                               ; preds = %61
  %77 = sext i32 %71 to i64, !dbg !4326
  %78 = getelementptr inbounds i32, i32* %2, i64 %77, !dbg !4326
  %79 = load i32, i32* %78, align 4, !dbg !4326, !tbaa !2389
  %80 = icmp ne i32 %79, 0, !dbg !4326
  br i1 %80, label %107, label %81, !dbg !4327

81:                                               ; preds = %76, %61
  %82 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 66, !dbg !4328
  %83 = load i32*, i32** %82, align 8, !dbg !4328, !tbaa !4316
  %84 = getelementptr inbounds i32, i32* %83, i64 %indvars.iv2666, !dbg !4330
  %85 = load i32, i32* %84, align 4, !dbg !4330, !tbaa !2389
  %86 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 66, !dbg !4331
  %87 = load i32*, i32** %86, align 8, !dbg !4331, !tbaa !4316
  %88 = sext i32 %.01668 to i64, !dbg !4332
  %89 = getelementptr inbounds i32, i32* %87, i64 %88, !dbg !4332
  store i32 %85, i32* %89, align 4, !dbg !4333, !tbaa !2389
  %90 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 67, !dbg !4334
  %91 = load i32*, i32** %90, align 8, !dbg !4334, !tbaa !4320
  %92 = getelementptr inbounds i32, i32* %91, i64 %indvars.iv2666, !dbg !4335
  %93 = load i32, i32* %92, align 4, !dbg !4335, !tbaa !2389
  %94 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 67, !dbg !4336
  %95 = load i32*, i32** %94, align 8, !dbg !4336, !tbaa !4320
  %96 = sext i32 %.01668 to i64, !dbg !4337
  %97 = getelementptr inbounds i32, i32* %95, i64 %96, !dbg !4337
  store i32 %93, i32* %97, align 4, !dbg !4338, !tbaa !2389
  %98 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 68, !dbg !4339
  %99 = load i32*, i32** %98, align 8, !dbg !4339, !tbaa !4340
  %100 = getelementptr inbounds i32, i32* %99, i64 %indvars.iv2666, !dbg !4341
  %101 = load i32, i32* %100, align 4, !dbg !4341, !tbaa !2389
  %102 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 68, !dbg !4342
  %103 = load i32*, i32** %102, align 8, !dbg !4342, !tbaa !4340
  %104 = sext i32 %.01668 to i64, !dbg !4343
  %105 = getelementptr inbounds i32, i32* %103, i64 %104, !dbg !4343
  store i32 %101, i32* %105, align 4, !dbg !4344, !tbaa !2389
  %106 = add nsw i32 %.01668, 1, !dbg !4345
  call void @llvm.dbg.value(metadata i32 %106, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %107, !dbg !4346

107:                                              ; preds = %81, %76
  %indvars.iv2667 = phi i64 [ %indvars.iv2666, %76 ], [ %indvars.iv2666, %81 ]
  %.117 = phi i32 [ %.01668, %76 ], [ %106, %81 ], !dbg !4347
  call void @llvm.dbg.value(metadata i32 %.117, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %108, !dbg !4348

108:                                              ; preds = %107
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv2667, 1, !dbg !4349
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next27, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.117, metadata !4244, metadata !DIExpression()), !dbg !4254
  %109 = load i32, i32* %57, align 8, !dbg !4307, !tbaa !4311
  %110 = sext i32 %109 to i64, !dbg !4312
  %111 = icmp slt i64 %indvars.iv.next27, %110, !dbg !4312
  br i1 %111, label %61, label %._crit_edge71, !dbg !4313, !llvm.loop !4350

._crit_edge71:                                    ; preds = %108
  %split72 = phi i32 [ %.117, %108 ]
  br label %112, !dbg !4313

112:                                              ; preds = %._crit_edge71, %56
  %.016.lcssa = phi i32 [ %split72, %._crit_edge71 ], [ 0, %56 ], !dbg !4352
  call void @llvm.dbg.value(metadata i32 %.016.lcssa, metadata !4244, metadata !DIExpression()), !dbg !4254
  %113 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 6, !dbg !4353
  store i32 %.016.lcssa, i32* %113, align 8, !dbg !4354, !tbaa !4311
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  %114 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 16, !dbg !4355
  %115 = load i32, i32* %114, align 8, !dbg !4355, !tbaa !4358
  %116 = sext i32 %115 to i64, !dbg !4359
  %117 = icmp slt i64 0, %116, !dbg !4359
  br i1 %117, label %.lr.ph77, label %169, !dbg !4360

.lr.ph77:                                         ; preds = %112
  br label %118, !dbg !4360

118:                                              ; preds = %.lr.ph77, %165
  %.21875 = phi i32 [ 0, %.lr.ph77 ], [ %.319, %165 ]
  %indvars.iv2873 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next29, %165 ]
  call void @llvm.dbg.value(metadata i32 %.21875, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv2873, metadata !4239, metadata !DIExpression()), !dbg !4254
  %119 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 69, !dbg !4361
  %120 = load i32*, i32** %119, align 8, !dbg !4361, !tbaa !4363
  %121 = getelementptr inbounds i32, i32* %120, i64 %indvars.iv2873, !dbg !4364
  %122 = load i32, i32* %121, align 4, !dbg !4364, !tbaa !2389
  %123 = sdiv i32 %122, 3, !dbg !4365
  call void @llvm.dbg.value(metadata i32 %123, metadata !4235, metadata !DIExpression()), !dbg !4254
  %124 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 70, !dbg !4366
  %125 = load i32*, i32** %124, align 8, !dbg !4366, !tbaa !4367
  %126 = getelementptr inbounds i32, i32* %125, i64 %indvars.iv2873, !dbg !4368
  %127 = load i32, i32* %126, align 4, !dbg !4368, !tbaa !2389
  %128 = sdiv i32 %127, 3, !dbg !4369
  call void @llvm.dbg.value(metadata i32 %128, metadata !4236, metadata !DIExpression()), !dbg !4254
  %129 = sext i32 %123 to i64, !dbg !4370
  %130 = getelementptr inbounds i32, i32* %2, i64 %129, !dbg !4370
  %131 = load i32, i32* %130, align 4, !dbg !4370, !tbaa !2389
  %132 = icmp ne i32 %131, 0, !dbg !4370
  br i1 %132, label %133, label %138, !dbg !4372

133:                                              ; preds = %118
  %134 = sext i32 %128 to i64, !dbg !4373
  %135 = getelementptr inbounds i32, i32* %2, i64 %134, !dbg !4373
  %136 = load i32, i32* %135, align 4, !dbg !4373, !tbaa !2389
  %137 = icmp ne i32 %136, 0, !dbg !4373
  br i1 %137, label %164, label %138, !dbg !4374

138:                                              ; preds = %133, %118
  %139 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 69, !dbg !4375
  %140 = load i32*, i32** %139, align 8, !dbg !4375, !tbaa !4363
  %141 = getelementptr inbounds i32, i32* %140, i64 %indvars.iv2873, !dbg !4377
  %142 = load i32, i32* %141, align 4, !dbg !4377, !tbaa !2389
  %143 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 69, !dbg !4378
  %144 = load i32*, i32** %143, align 8, !dbg !4378, !tbaa !4363
  %145 = sext i32 %.21875 to i64, !dbg !4379
  %146 = getelementptr inbounds i32, i32* %144, i64 %145, !dbg !4379
  store i32 %142, i32* %146, align 4, !dbg !4380, !tbaa !2389
  %147 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 70, !dbg !4381
  %148 = load i32*, i32** %147, align 8, !dbg !4381, !tbaa !4367
  %149 = getelementptr inbounds i32, i32* %148, i64 %indvars.iv2873, !dbg !4382
  %150 = load i32, i32* %149, align 4, !dbg !4382, !tbaa !2389
  %151 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 70, !dbg !4383
  %152 = load i32*, i32** %151, align 8, !dbg !4383, !tbaa !4367
  %153 = sext i32 %.21875 to i64, !dbg !4384
  %154 = getelementptr inbounds i32, i32* %152, i64 %153, !dbg !4384
  store i32 %150, i32* %154, align 4, !dbg !4385, !tbaa !2389
  %155 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 71, !dbg !4386
  %156 = load i32*, i32** %155, align 8, !dbg !4386, !tbaa !4387
  %157 = getelementptr inbounds i32, i32* %156, i64 %indvars.iv2873, !dbg !4388
  %158 = load i32, i32* %157, align 4, !dbg !4388, !tbaa !2389
  %159 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 71, !dbg !4389
  %160 = load i32*, i32** %159, align 8, !dbg !4389, !tbaa !4387
  %161 = sext i32 %.21875 to i64, !dbg !4390
  %162 = getelementptr inbounds i32, i32* %160, i64 %161, !dbg !4390
  store i32 %158, i32* %162, align 4, !dbg !4391, !tbaa !2389
  %163 = add nsw i32 %.21875, 1, !dbg !4392
  call void @llvm.dbg.value(metadata i32 %163, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %164, !dbg !4393

164:                                              ; preds = %138, %133
  %indvars.iv2874 = phi i64 [ %indvars.iv2873, %133 ], [ %indvars.iv2873, %138 ]
  %.319 = phi i32 [ %.21875, %133 ], [ %163, %138 ], !dbg !4394
  call void @llvm.dbg.value(metadata i32 %.319, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %165, !dbg !4395

165:                                              ; preds = %164
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv2874, 1, !dbg !4396
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next29, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.319, metadata !4244, metadata !DIExpression()), !dbg !4254
  %166 = load i32, i32* %114, align 8, !dbg !4355, !tbaa !4358
  %167 = sext i32 %166 to i64, !dbg !4359
  %168 = icmp slt i64 %indvars.iv.next29, %167, !dbg !4359
  br i1 %168, label %118, label %._crit_edge78, !dbg !4360, !llvm.loop !4397

._crit_edge78:                                    ; preds = %165
  %split79 = phi i32 [ %.319, %165 ]
  br label %169, !dbg !4360

169:                                              ; preds = %._crit_edge78, %112
  %.218.lcssa = phi i32 [ %split79, %._crit_edge78 ], [ 0, %112 ], !dbg !4399
  call void @llvm.dbg.value(metadata i32 %.218.lcssa, metadata !4244, metadata !DIExpression()), !dbg !4254
  %170 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 16, !dbg !4400
  store i32 %.218.lcssa, i32* %170, align 8, !dbg !4401, !tbaa !4358
  %171 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 7, !dbg !4402
  store i32 %.218.lcssa, i32* %171, align 4, !dbg !4403, !tbaa !4404
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  %172 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 8, !dbg !4405
  %173 = load i32, i32* %172, align 8, !dbg !4405, !tbaa !4408
  %174 = sext i32 %173 to i64, !dbg !4409
  %175 = icmp slt i64 0, %174, !dbg !4409
  br i1 %175, label %.lr.ph84, label %245, !dbg !4410

.lr.ph84:                                         ; preds = %169
  br label %176, !dbg !4410

176:                                              ; preds = %.lr.ph84, %241
  %.42082 = phi i32 [ 0, %.lr.ph84 ], [ %.521, %241 ]
  %indvars.iv3080 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next31, %241 ]
  call void @llvm.dbg.value(metadata i32 %.42082, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv3080, metadata !4239, metadata !DIExpression()), !dbg !4254
  %177 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 72, !dbg !4411
  %178 = load i32*, i32** %177, align 8, !dbg !4411, !tbaa !4413
  %179 = getelementptr inbounds i32, i32* %178, i64 %indvars.iv3080, !dbg !4414
  %180 = load i32, i32* %179, align 4, !dbg !4414, !tbaa !2389
  %181 = sdiv i32 %180, 3, !dbg !4415
  call void @llvm.dbg.value(metadata i32 %181, metadata !4235, metadata !DIExpression()), !dbg !4254
  %182 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 73, !dbg !4416
  %183 = load i32*, i32** %182, align 8, !dbg !4416, !tbaa !4417
  %184 = getelementptr inbounds i32, i32* %183, i64 %indvars.iv3080, !dbg !4418
  %185 = load i32, i32* %184, align 4, !dbg !4418, !tbaa !2389
  %186 = sdiv i32 %185, 3, !dbg !4419
  call void @llvm.dbg.value(metadata i32 %186, metadata !4236, metadata !DIExpression()), !dbg !4254
  %187 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 74, !dbg !4420
  %188 = load i32*, i32** %187, align 8, !dbg !4420, !tbaa !4421
  %189 = getelementptr inbounds i32, i32* %188, i64 %indvars.iv3080, !dbg !4422
  %190 = load i32, i32* %189, align 4, !dbg !4422, !tbaa !2389
  %191 = sdiv i32 %190, 3, !dbg !4423
  call void @llvm.dbg.value(metadata i32 %191, metadata !4237, metadata !DIExpression()), !dbg !4254
  %192 = sext i32 %181 to i64, !dbg !4424
  %193 = getelementptr inbounds i32, i32* %2, i64 %192, !dbg !4424
  %194 = load i32, i32* %193, align 4, !dbg !4424, !tbaa !2389
  %195 = icmp ne i32 %194, 0, !dbg !4424
  br i1 %195, label %196, label %206, !dbg !4426

196:                                              ; preds = %176
  %197 = sext i32 %186 to i64, !dbg !4427
  %198 = getelementptr inbounds i32, i32* %2, i64 %197, !dbg !4427
  %199 = load i32, i32* %198, align 4, !dbg !4427, !tbaa !2389
  %200 = icmp ne i32 %199, 0, !dbg !4427
  br i1 %200, label %201, label %206, !dbg !4428

201:                                              ; preds = %196
  %202 = sext i32 %191 to i64, !dbg !4429
  %203 = getelementptr inbounds i32, i32* %2, i64 %202, !dbg !4429
  %204 = load i32, i32* %203, align 4, !dbg !4429, !tbaa !2389
  %205 = icmp ne i32 %204, 0, !dbg !4429
  br i1 %205, label %240, label %206, !dbg !4430

206:                                              ; preds = %201, %196, %176
  %207 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 72, !dbg !4431
  %208 = load i32*, i32** %207, align 8, !dbg !4431, !tbaa !4413
  %209 = getelementptr inbounds i32, i32* %208, i64 %indvars.iv3080, !dbg !4433
  %210 = load i32, i32* %209, align 4, !dbg !4433, !tbaa !2389
  %211 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 72, !dbg !4434
  %212 = load i32*, i32** %211, align 8, !dbg !4434, !tbaa !4413
  %213 = sext i32 %.42082 to i64, !dbg !4435
  %214 = getelementptr inbounds i32, i32* %212, i64 %213, !dbg !4435
  store i32 %210, i32* %214, align 4, !dbg !4436, !tbaa !2389
  %215 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 73, !dbg !4437
  %216 = load i32*, i32** %215, align 8, !dbg !4437, !tbaa !4417
  %217 = getelementptr inbounds i32, i32* %216, i64 %indvars.iv3080, !dbg !4438
  %218 = load i32, i32* %217, align 4, !dbg !4438, !tbaa !2389
  %219 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 73, !dbg !4439
  %220 = load i32*, i32** %219, align 8, !dbg !4439, !tbaa !4417
  %221 = sext i32 %.42082 to i64, !dbg !4440
  %222 = getelementptr inbounds i32, i32* %220, i64 %221, !dbg !4440
  store i32 %218, i32* %222, align 4, !dbg !4441, !tbaa !2389
  %223 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 74, !dbg !4442
  %224 = load i32*, i32** %223, align 8, !dbg !4442, !tbaa !4421
  %225 = getelementptr inbounds i32, i32* %224, i64 %indvars.iv3080, !dbg !4443
  %226 = load i32, i32* %225, align 4, !dbg !4443, !tbaa !2389
  %227 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 74, !dbg !4444
  %228 = load i32*, i32** %227, align 8, !dbg !4444, !tbaa !4421
  %229 = sext i32 %.42082 to i64, !dbg !4445
  %230 = getelementptr inbounds i32, i32* %228, i64 %229, !dbg !4445
  store i32 %226, i32* %230, align 4, !dbg !4446, !tbaa !2389
  %231 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 75, !dbg !4447
  %232 = load i32*, i32** %231, align 8, !dbg !4447, !tbaa !4448
  %233 = getelementptr inbounds i32, i32* %232, i64 %indvars.iv3080, !dbg !4449
  %234 = load i32, i32* %233, align 4, !dbg !4449, !tbaa !2389
  %235 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 75, !dbg !4450
  %236 = load i32*, i32** %235, align 8, !dbg !4450, !tbaa !4448
  %237 = sext i32 %.42082 to i64, !dbg !4451
  %238 = getelementptr inbounds i32, i32* %236, i64 %237, !dbg !4451
  store i32 %234, i32* %238, align 4, !dbg !4452, !tbaa !2389
  %239 = add nsw i32 %.42082, 1, !dbg !4453
  call void @llvm.dbg.value(metadata i32 %239, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %240, !dbg !4454

240:                                              ; preds = %206, %201
  %indvars.iv3081 = phi i64 [ %indvars.iv3080, %201 ], [ %indvars.iv3080, %206 ]
  %.521 = phi i32 [ %.42082, %201 ], [ %239, %206 ], !dbg !4455
  call void @llvm.dbg.value(metadata i32 %.521, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %241, !dbg !4456

241:                                              ; preds = %240
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv3081, 1, !dbg !4457
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next31, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.521, metadata !4244, metadata !DIExpression()), !dbg !4254
  %242 = load i32, i32* %172, align 8, !dbg !4405, !tbaa !4408
  %243 = sext i32 %242 to i64, !dbg !4409
  %244 = icmp slt i64 %indvars.iv.next31, %243, !dbg !4409
  br i1 %244, label %176, label %._crit_edge85, !dbg !4410, !llvm.loop !4458

._crit_edge85:                                    ; preds = %241
  %split86 = phi i32 [ %.521, %241 ]
  br label %245, !dbg !4410

245:                                              ; preds = %._crit_edge85, %169
  %.420.lcssa = phi i32 [ %split86, %._crit_edge85 ], [ 0, %169 ], !dbg !4460
  call void @llvm.dbg.value(metadata i32 %.420.lcssa, metadata !4244, metadata !DIExpression()), !dbg !4254
  %246 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 8, !dbg !4461
  store i32 %.420.lcssa, i32* %246, align 8, !dbg !4462, !tbaa !4408
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  %247 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 17, !dbg !4463
  %248 = load i32, i32* %247, align 4, !dbg !4463, !tbaa !4466
  %249 = sext i32 %248 to i64, !dbg !4467
  %250 = icmp slt i64 0, %249, !dbg !4467
  br i1 %250, label %.lr.ph91, label %320, !dbg !4468

.lr.ph91:                                         ; preds = %245
  br label %251, !dbg !4468

251:                                              ; preds = %.lr.ph91, %316
  %.689 = phi i32 [ 0, %.lr.ph91 ], [ %.7, %316 ]
  %indvars.iv3287 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next33, %316 ]
  call void @llvm.dbg.value(metadata i32 %.689, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv3287, metadata !4239, metadata !DIExpression()), !dbg !4254
  %252 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 76, !dbg !4469
  %253 = load i32*, i32** %252, align 8, !dbg !4469, !tbaa !4471
  %254 = getelementptr inbounds i32, i32* %253, i64 %indvars.iv3287, !dbg !4472
  %255 = load i32, i32* %254, align 4, !dbg !4472, !tbaa !2389
  %256 = sdiv i32 %255, 3, !dbg !4473
  call void @llvm.dbg.value(metadata i32 %256, metadata !4235, metadata !DIExpression()), !dbg !4254
  %257 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 77, !dbg !4474
  %258 = load i32*, i32** %257, align 8, !dbg !4474, !tbaa !4475
  %259 = getelementptr inbounds i32, i32* %258, i64 %indvars.iv3287, !dbg !4476
  %260 = load i32, i32* %259, align 4, !dbg !4476, !tbaa !2389
  %261 = sdiv i32 %260, 3, !dbg !4477
  call void @llvm.dbg.value(metadata i32 %261, metadata !4236, metadata !DIExpression()), !dbg !4254
  %262 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 78, !dbg !4478
  %263 = load i32*, i32** %262, align 8, !dbg !4478, !tbaa !4479
  %264 = getelementptr inbounds i32, i32* %263, i64 %indvars.iv3287, !dbg !4480
  %265 = load i32, i32* %264, align 4, !dbg !4480, !tbaa !2389
  %266 = sdiv i32 %265, 3, !dbg !4481
  call void @llvm.dbg.value(metadata i32 %266, metadata !4237, metadata !DIExpression()), !dbg !4254
  %267 = sext i32 %256 to i64, !dbg !4482
  %268 = getelementptr inbounds i32, i32* %2, i64 %267, !dbg !4482
  %269 = load i32, i32* %268, align 4, !dbg !4482, !tbaa !2389
  %270 = icmp ne i32 %269, 0, !dbg !4482
  br i1 %270, label %271, label %281, !dbg !4484

271:                                              ; preds = %251
  %272 = sext i32 %261 to i64, !dbg !4485
  %273 = getelementptr inbounds i32, i32* %2, i64 %272, !dbg !4485
  %274 = load i32, i32* %273, align 4, !dbg !4485, !tbaa !2389
  %275 = icmp ne i32 %274, 0, !dbg !4485
  br i1 %275, label %276, label %281, !dbg !4486

276:                                              ; preds = %271
  %277 = sext i32 %266 to i64, !dbg !4487
  %278 = getelementptr inbounds i32, i32* %2, i64 %277, !dbg !4487
  %279 = load i32, i32* %278, align 4, !dbg !4487, !tbaa !2389
  %280 = icmp ne i32 %279, 0, !dbg !4487
  br i1 %280, label %315, label %281, !dbg !4488

281:                                              ; preds = %276, %271, %251
  %282 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 76, !dbg !4489
  %283 = load i32*, i32** %282, align 8, !dbg !4489, !tbaa !4471
  %284 = getelementptr inbounds i32, i32* %283, i64 %indvars.iv3287, !dbg !4491
  %285 = load i32, i32* %284, align 4, !dbg !4491, !tbaa !2389
  %286 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 76, !dbg !4492
  %287 = load i32*, i32** %286, align 8, !dbg !4492, !tbaa !4471
  %288 = sext i32 %.689 to i64, !dbg !4493
  %289 = getelementptr inbounds i32, i32* %287, i64 %288, !dbg !4493
  store i32 %285, i32* %289, align 4, !dbg !4494, !tbaa !2389
  %290 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 77, !dbg !4495
  %291 = load i32*, i32** %290, align 8, !dbg !4495, !tbaa !4475
  %292 = getelementptr inbounds i32, i32* %291, i64 %indvars.iv3287, !dbg !4496
  %293 = load i32, i32* %292, align 4, !dbg !4496, !tbaa !2389
  %294 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 77, !dbg !4497
  %295 = load i32*, i32** %294, align 8, !dbg !4497, !tbaa !4475
  %296 = sext i32 %.689 to i64, !dbg !4498
  %297 = getelementptr inbounds i32, i32* %295, i64 %296, !dbg !4498
  store i32 %293, i32* %297, align 4, !dbg !4499, !tbaa !2389
  %298 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 78, !dbg !4500
  %299 = load i32*, i32** %298, align 8, !dbg !4500, !tbaa !4479
  %300 = getelementptr inbounds i32, i32* %299, i64 %indvars.iv3287, !dbg !4501
  %301 = load i32, i32* %300, align 4, !dbg !4501, !tbaa !2389
  %302 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 78, !dbg !4502
  %303 = load i32*, i32** %302, align 8, !dbg !4502, !tbaa !4479
  %304 = sext i32 %.689 to i64, !dbg !4503
  %305 = getelementptr inbounds i32, i32* %303, i64 %304, !dbg !4503
  store i32 %301, i32* %305, align 4, !dbg !4504, !tbaa !2389
  %306 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 79, !dbg !4505
  %307 = load i32*, i32** %306, align 8, !dbg !4505, !tbaa !4506
  %308 = getelementptr inbounds i32, i32* %307, i64 %indvars.iv3287, !dbg !4507
  %309 = load i32, i32* %308, align 4, !dbg !4507, !tbaa !2389
  %310 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 79, !dbg !4508
  %311 = load i32*, i32** %310, align 8, !dbg !4508, !tbaa !4506
  %312 = sext i32 %.689 to i64, !dbg !4509
  %313 = getelementptr inbounds i32, i32* %311, i64 %312, !dbg !4509
  store i32 %309, i32* %313, align 4, !dbg !4510, !tbaa !2389
  %314 = add nsw i32 %.689, 1, !dbg !4511
  call void @llvm.dbg.value(metadata i32 %314, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %315, !dbg !4512

315:                                              ; preds = %281, %276
  %indvars.iv3288 = phi i64 [ %indvars.iv3287, %276 ], [ %indvars.iv3287, %281 ]
  %.7 = phi i32 [ %.689, %276 ], [ %314, %281 ], !dbg !4513
  call void @llvm.dbg.value(metadata i32 %.7, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %316, !dbg !4514

316:                                              ; preds = %315
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv3288, 1, !dbg !4515
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next33, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.7, metadata !4244, metadata !DIExpression()), !dbg !4254
  %317 = load i32, i32* %247, align 4, !dbg !4463, !tbaa !4466
  %318 = sext i32 %317 to i64, !dbg !4467
  %319 = icmp slt i64 %indvars.iv.next33, %318, !dbg !4467
  br i1 %319, label %251, label %._crit_edge92, !dbg !4468, !llvm.loop !4516

._crit_edge92:                                    ; preds = %316
  %split93 = phi i32 [ %.7, %316 ]
  br label %320, !dbg !4468

320:                                              ; preds = %._crit_edge92, %245
  %.6.lcssa = phi i32 [ %split93, %._crit_edge92 ], [ 0, %245 ], !dbg !4518
  call void @llvm.dbg.value(metadata i32 %.6.lcssa, metadata !4244, metadata !DIExpression()), !dbg !4254
  %321 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 17, !dbg !4519
  store i32 %.6.lcssa, i32* %321, align 4, !dbg !4520, !tbaa !4466
  call void @llvm.dbg.value(metadata i32 0, metadata !4235, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4235, metadata !DIExpression()), !dbg !4254
  %322 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 4, !dbg !4521
  %323 = load i32, i32* %322, align 8, !dbg !4521, !tbaa !4524
  %324 = sext i32 %323 to i64, !dbg !4525
  %325 = icmp slt i64 0, %324, !dbg !4525
  br i1 %325, label %.lr.ph96, label %334, !dbg !4526

.lr.ph96:                                         ; preds = %320
  br label %326, !dbg !4526

326:                                              ; preds = %.lr.ph96, %330
  %indvars.iv3494 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next35, %330 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3494, metadata !4235, metadata !DIExpression()), !dbg !4254
  %327 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 91, !dbg !4527
  %328 = load i32*, i32** %327, align 8, !dbg !4527, !tbaa !4528
  %329 = getelementptr inbounds i32, i32* %328, i64 %indvars.iv3494, !dbg !4529
  store i32 0, i32* %329, align 4, !dbg !4530, !tbaa !2389
  br label %330, !dbg !4529

330:                                              ; preds = %326
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv3494, 1, !dbg !4531
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35, metadata !4235, metadata !DIExpression()), !dbg !4254
  %331 = load i32, i32* %322, align 8, !dbg !4521, !tbaa !4524
  %332 = sext i32 %331 to i64, !dbg !4525
  %333 = icmp slt i64 %indvars.iv.next35, %332, !dbg !4525
  br i1 %333, label %326, label %._crit_edge97, !dbg !4526, !llvm.loop !4532

._crit_edge97:                                    ; preds = %330
  br label %334, !dbg !4526

334:                                              ; preds = %._crit_edge97, %320
  %335 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 4, !dbg !4534
  %336 = load i32, i32* %335, align 8, !dbg !4534, !tbaa !4524
  %337 = sext i32 %336 to i64, !dbg !4535
  %338 = mul i64 48, %337, !dbg !4536
  %339 = call i8* @get(i64 %338), !dbg !4537
  %340 = bitcast i8* %339 to i32*, !dbg !4538
  call void @llvm.dbg.value(metadata i32* %340, metadata !4249, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  %341 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 10, !dbg !4539
  %342 = load i32, i32* %341, align 8, !dbg !4539, !tbaa !4542
  %343 = sext i32 %342 to i64, !dbg !4543
  %344 = icmp slt i64 0, %343, !dbg !4543
  br i1 %344, label %.lr.ph102, label %469, !dbg !4544

.lr.ph102:                                        ; preds = %334
  br label %345, !dbg !4544

345:                                              ; preds = %.lr.ph102, %465
  %.8100 = phi i32 [ 0, %.lr.ph102 ], [ %.9, %465 ]
  %indvars.iv3698 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next37, %465 ]
  call void @llvm.dbg.value(metadata i32 %.8100, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv3698, metadata !4239, metadata !DIExpression()), !dbg !4254
  %346 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 80, !dbg !4545
  %347 = load i32*, i32** %346, align 8, !dbg !4545, !tbaa !4547
  %348 = getelementptr inbounds i32, i32* %347, i64 %indvars.iv3698, !dbg !4548
  %349 = load i32, i32* %348, align 4, !dbg !4548, !tbaa !2389
  %350 = sdiv i32 %349, 3, !dbg !4549
  call void @llvm.dbg.value(metadata i32 %350, metadata !4235, metadata !DIExpression()), !dbg !4254
  %351 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 81, !dbg !4550
  %352 = load i32*, i32** %351, align 8, !dbg !4550, !tbaa !4551
  %353 = getelementptr inbounds i32, i32* %352, i64 %indvars.iv3698, !dbg !4552
  %354 = load i32, i32* %353, align 4, !dbg !4552, !tbaa !2389
  %355 = sdiv i32 %354, 3, !dbg !4553
  call void @llvm.dbg.value(metadata i32 %355, metadata !4236, metadata !DIExpression()), !dbg !4254
  %356 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 82, !dbg !4554
  %357 = load i32*, i32** %356, align 8, !dbg !4554, !tbaa !4555
  %358 = getelementptr inbounds i32, i32* %357, i64 %indvars.iv3698, !dbg !4556
  %359 = load i32, i32* %358, align 4, !dbg !4556, !tbaa !2389
  %360 = sdiv i32 %359, 3, !dbg !4557
  call void @llvm.dbg.value(metadata i32 %360, metadata !4237, metadata !DIExpression()), !dbg !4254
  %361 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 83, !dbg !4558
  %362 = load i32*, i32** %361, align 8, !dbg !4558, !tbaa !4559
  %363 = getelementptr inbounds i32, i32* %362, i64 %indvars.iv3698, !dbg !4560
  %364 = load i32, i32* %363, align 4, !dbg !4560, !tbaa !2389
  %365 = sdiv i32 %364, 3, !dbg !4561
  call void @llvm.dbg.value(metadata i32 %365, metadata !4238, metadata !DIExpression()), !dbg !4254
  %366 = icmp sgt i32 %360, 0, !dbg !4562
  br i1 %366, label %367, label %368, !dbg !4562

367:                                              ; preds = %345
  br label %370, !dbg !4562

368:                                              ; preds = %345
  %369 = sub nsw i32 0, %360, !dbg !4562
  br label %370, !dbg !4562

370:                                              ; preds = %368, %367
  %371 = phi i32 [ %360, %367 ], [ %369, %368 ], !dbg !4562
  call void @llvm.dbg.value(metadata i32 %371, metadata !4247, metadata !DIExpression()), !dbg !4254
  %372 = icmp sgt i32 %365, 0, !dbg !4563
  br i1 %372, label %373, label %374, !dbg !4563

373:                                              ; preds = %370
  br label %376, !dbg !4563

374:                                              ; preds = %370
  %375 = sub nsw i32 0, %365, !dbg !4563
  br label %376, !dbg !4563

376:                                              ; preds = %374, %373
  %377 = phi i32 [ %365, %373 ], [ %375, %374 ], !dbg !4563
  call void @llvm.dbg.value(metadata i32 %377, metadata !4248, metadata !DIExpression()), !dbg !4254
  %378 = sext i32 %350 to i64, !dbg !4564
  %379 = getelementptr inbounds i32, i32* %2, i64 %378, !dbg !4564
  %380 = load i32, i32* %379, align 4, !dbg !4564, !tbaa !2389
  %381 = icmp ne i32 %380, 0, !dbg !4564
  br i1 %381, label %382, label %397, !dbg !4566

382:                                              ; preds = %376
  %383 = sext i32 %355 to i64, !dbg !4567
  %384 = getelementptr inbounds i32, i32* %2, i64 %383, !dbg !4567
  %385 = load i32, i32* %384, align 4, !dbg !4567, !tbaa !2389
  %386 = icmp ne i32 %385, 0, !dbg !4567
  br i1 %386, label %387, label %397, !dbg !4568

387:                                              ; preds = %382
  %388 = sext i32 %371 to i64, !dbg !4569
  %389 = getelementptr inbounds i32, i32* %2, i64 %388, !dbg !4569
  %390 = load i32, i32* %389, align 4, !dbg !4569, !tbaa !2389
  %391 = icmp ne i32 %390, 0, !dbg !4569
  br i1 %391, label %392, label %397, !dbg !4570

392:                                              ; preds = %387
  %393 = sext i32 %377 to i64, !dbg !4571
  %394 = getelementptr inbounds i32, i32* %2, i64 %393, !dbg !4571
  %395 = load i32, i32* %394, align 4, !dbg !4571, !tbaa !2389
  %396 = icmp ne i32 %395, 0, !dbg !4571
  br i1 %396, label %464, label %397, !dbg !4572

397:                                              ; preds = %392, %387, %382, %376
  %398 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 80, !dbg !4573
  %399 = load i32*, i32** %398, align 8, !dbg !4573, !tbaa !4547
  %400 = getelementptr inbounds i32, i32* %399, i64 %indvars.iv3698, !dbg !4575
  %401 = load i32, i32* %400, align 4, !dbg !4575, !tbaa !2389
  %402 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 80, !dbg !4576
  %403 = load i32*, i32** %402, align 8, !dbg !4576, !tbaa !4547
  %404 = sext i32 %.8100 to i64, !dbg !4577
  %405 = getelementptr inbounds i32, i32* %403, i64 %404, !dbg !4577
  store i32 %401, i32* %405, align 4, !dbg !4578, !tbaa !2389
  %406 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 81, !dbg !4579
  %407 = load i32*, i32** %406, align 8, !dbg !4579, !tbaa !4551
  %408 = getelementptr inbounds i32, i32* %407, i64 %indvars.iv3698, !dbg !4580
  %409 = load i32, i32* %408, align 4, !dbg !4580, !tbaa !2389
  %410 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 81, !dbg !4581
  %411 = load i32*, i32** %410, align 8, !dbg !4581, !tbaa !4551
  %412 = sext i32 %.8100 to i64, !dbg !4582
  %413 = getelementptr inbounds i32, i32* %411, i64 %412, !dbg !4582
  store i32 %409, i32* %413, align 4, !dbg !4583, !tbaa !2389
  %414 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 82, !dbg !4584
  %415 = load i32*, i32** %414, align 8, !dbg !4584, !tbaa !4555
  %416 = getelementptr inbounds i32, i32* %415, i64 %indvars.iv3698, !dbg !4585
  %417 = load i32, i32* %416, align 4, !dbg !4585, !tbaa !2389
  %418 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 82, !dbg !4586
  %419 = load i32*, i32** %418, align 8, !dbg !4586, !tbaa !4555
  %420 = sext i32 %.8100 to i64, !dbg !4587
  %421 = getelementptr inbounds i32, i32* %419, i64 %420, !dbg !4587
  store i32 %417, i32* %421, align 4, !dbg !4588, !tbaa !2389
  %422 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 83, !dbg !4589
  %423 = load i32*, i32** %422, align 8, !dbg !4589, !tbaa !4559
  %424 = getelementptr inbounds i32, i32* %423, i64 %indvars.iv3698, !dbg !4590
  %425 = load i32, i32* %424, align 4, !dbg !4590, !tbaa !2389
  %426 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 83, !dbg !4591
  %427 = load i32*, i32** %426, align 8, !dbg !4591, !tbaa !4559
  %428 = sext i32 %.8100 to i64, !dbg !4592
  %429 = getelementptr inbounds i32, i32* %427, i64 %428, !dbg !4592
  store i32 %425, i32* %429, align 4, !dbg !4593, !tbaa !2389
  %430 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 84, !dbg !4594
  %431 = load i32*, i32** %430, align 8, !dbg !4594, !tbaa !4595
  %432 = getelementptr inbounds i32, i32* %431, i64 %indvars.iv3698, !dbg !4596
  %433 = load i32, i32* %432, align 4, !dbg !4596, !tbaa !2389
  %434 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 84, !dbg !4597
  %435 = load i32*, i32** %434, align 8, !dbg !4597, !tbaa !4595
  %436 = sext i32 %.8100 to i64, !dbg !4598
  %437 = getelementptr inbounds i32, i32* %435, i64 %436, !dbg !4598
  store i32 %433, i32* %437, align 4, !dbg !4599, !tbaa !2389
  %438 = add nsw i32 %.8100, 1, !dbg !4600
  call void @llvm.dbg.value(metadata i32 %438, metadata !4244, metadata !DIExpression()), !dbg !4254
  %439 = icmp sge i32 %360, 0, !dbg !4601
  br i1 %439, label %440, label %463, !dbg !4603

440:                                              ; preds = %397
  %441 = icmp sge i32 %365, 0, !dbg !4604
  br i1 %441, label %442, label %463, !dbg !4605

442:                                              ; preds = %440
  %443 = icmp slt i32 %350, %365, !dbg !4606
  br i1 %443, label %444, label %445, !dbg !4608

444:                                              ; preds = %442
  br label %446, !dbg !4608

445:                                              ; preds = %442
  br label %446, !dbg !4608

446:                                              ; preds = %445, %444
  %447 = phi i32 [ %350, %444 ], [ %365, %445 ], !dbg !4608
  call void @llvm.dbg.value(metadata i32 %447, metadata !4246, metadata !DIExpression()), !dbg !4254
  %448 = icmp sgt i32 %350, %365, !dbg !4609
  br i1 %448, label %449, label %450, !dbg !4610

449:                                              ; preds = %446
  br label %451, !dbg !4610

450:                                              ; preds = %446
  br label %451, !dbg !4610

451:                                              ; preds = %450, %449
  %452 = phi i32 [ %350, %449 ], [ %365, %450 ], !dbg !4610
  call void @llvm.dbg.value(metadata i32 %452, metadata !4245, metadata !DIExpression()), !dbg !4254
  %453 = mul nsw i32 12, %447, !dbg !4611
  %454 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 91, !dbg !4612
  %455 = load i32*, i32** %454, align 8, !dbg !4612, !tbaa !4528
  %456 = sext i32 %447 to i64, !dbg !4613
  %457 = getelementptr inbounds i32, i32* %455, i64 %456, !dbg !4613
  %458 = load i32, i32* %457, align 4, !dbg !4614, !tbaa !2389
  %459 = add nsw i32 %458, 1, !dbg !4614
  store i32 %459, i32* %457, align 4, !dbg !4614, !tbaa !2389
  %460 = add nsw i32 %453, %458, !dbg !4615
  %461 = sext i32 %460 to i64, !dbg !4616
  %462 = getelementptr inbounds i32, i32* %340, i64 %461, !dbg !4616
  store i32 %452, i32* %462, align 4, !dbg !4617, !tbaa !2389
  br label %463, !dbg !4618

463:                                              ; preds = %451, %440, %397
  br label %464, !dbg !4619

464:                                              ; preds = %463, %392
  %indvars.iv3699 = phi i64 [ %indvars.iv3698, %392 ], [ %indvars.iv3698, %463 ]
  %.9 = phi i32 [ %.8100, %392 ], [ %438, %463 ], !dbg !4620
  call void @llvm.dbg.value(metadata i32 %.9, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %465, !dbg !4621

465:                                              ; preds = %464
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv3699, 1, !dbg !4622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next37, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.9, metadata !4244, metadata !DIExpression()), !dbg !4254
  %466 = load i32, i32* %341, align 8, !dbg !4539, !tbaa !4542
  %467 = sext i32 %466 to i64, !dbg !4543
  %468 = icmp slt i64 %indvars.iv.next37, %467, !dbg !4543
  br i1 %468, label %345, label %._crit_edge103, !dbg !4544, !llvm.loop !4623

._crit_edge103:                                   ; preds = %465
  %split104 = phi i32 [ %.9, %465 ]
  br label %469, !dbg !4544

469:                                              ; preds = %._crit_edge103, %334
  %.8.lcssa = phi i32 [ %split104, %._crit_edge103 ], [ 0, %334 ], !dbg !4625
  call void @llvm.dbg.value(metadata i32 %.8.lcssa, metadata !4244, metadata !DIExpression()), !dbg !4254
  %470 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 10, !dbg !4626
  store i32 %.8.lcssa, i32* %470, align 8, !dbg !4627, !tbaa !4542
  call void @llvm.dbg.value(metadata i32 0, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4239, metadata !DIExpression()), !dbg !4254
  %471 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 18, !dbg !4628
  %472 = load i32, i32* %471, align 8, !dbg !4628, !tbaa !4631
  %473 = sext i32 %472 to i64, !dbg !4632
  %474 = icmp slt i64 0, %473, !dbg !4632
  br i1 %474, label %.lr.ph109, label %599, !dbg !4633

.lr.ph109:                                        ; preds = %469
  br label %475, !dbg !4633

475:                                              ; preds = %.lr.ph109, %595
  %.10107 = phi i32 [ 0, %.lr.ph109 ], [ %.11, %595 ]
  %indvars.iv38105 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next39, %595 ]
  call void @llvm.dbg.value(metadata i32 %.10107, metadata !4244, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv38105, metadata !4239, metadata !DIExpression()), !dbg !4254
  %476 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 85, !dbg !4634
  %477 = load i32*, i32** %476, align 8, !dbg !4634, !tbaa !4636
  %478 = getelementptr inbounds i32, i32* %477, i64 %indvars.iv38105, !dbg !4637
  %479 = load i32, i32* %478, align 4, !dbg !4637, !tbaa !2389
  %480 = sdiv i32 %479, 3, !dbg !4638
  call void @llvm.dbg.value(metadata i32 %480, metadata !4235, metadata !DIExpression()), !dbg !4254
  %481 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 86, !dbg !4639
  %482 = load i32*, i32** %481, align 8, !dbg !4639, !tbaa !4640
  %483 = getelementptr inbounds i32, i32* %482, i64 %indvars.iv38105, !dbg !4641
  %484 = load i32, i32* %483, align 4, !dbg !4641, !tbaa !2389
  %485 = sdiv i32 %484, 3, !dbg !4642
  call void @llvm.dbg.value(metadata i32 %485, metadata !4236, metadata !DIExpression()), !dbg !4254
  %486 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 87, !dbg !4643
  %487 = load i32*, i32** %486, align 8, !dbg !4643, !tbaa !4644
  %488 = getelementptr inbounds i32, i32* %487, i64 %indvars.iv38105, !dbg !4645
  %489 = load i32, i32* %488, align 4, !dbg !4645, !tbaa !2389
  %490 = sdiv i32 %489, 3, !dbg !4646
  call void @llvm.dbg.value(metadata i32 %490, metadata !4237, metadata !DIExpression()), !dbg !4254
  %491 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 88, !dbg !4647
  %492 = load i32*, i32** %491, align 8, !dbg !4647, !tbaa !4648
  %493 = getelementptr inbounds i32, i32* %492, i64 %indvars.iv38105, !dbg !4649
  %494 = load i32, i32* %493, align 4, !dbg !4649, !tbaa !2389
  %495 = sdiv i32 %494, 3, !dbg !4650
  call void @llvm.dbg.value(metadata i32 %495, metadata !4238, metadata !DIExpression()), !dbg !4254
  %496 = icmp sgt i32 %490, 0, !dbg !4651
  br i1 %496, label %497, label %498, !dbg !4651

497:                                              ; preds = %475
  br label %500, !dbg !4651

498:                                              ; preds = %475
  %499 = sub nsw i32 0, %490, !dbg !4651
  br label %500, !dbg !4651

500:                                              ; preds = %498, %497
  %501 = phi i32 [ %490, %497 ], [ %499, %498 ], !dbg !4651
  call void @llvm.dbg.value(metadata i32 %501, metadata !4247, metadata !DIExpression()), !dbg !4254
  %502 = icmp sgt i32 %495, 0, !dbg !4652
  br i1 %502, label %503, label %504, !dbg !4652

503:                                              ; preds = %500
  br label %506, !dbg !4652

504:                                              ; preds = %500
  %505 = sub nsw i32 0, %495, !dbg !4652
  br label %506, !dbg !4652

506:                                              ; preds = %504, %503
  %507 = phi i32 [ %495, %503 ], [ %505, %504 ], !dbg !4652
  call void @llvm.dbg.value(metadata i32 %507, metadata !4248, metadata !DIExpression()), !dbg !4254
  %508 = sext i32 %480 to i64, !dbg !4653
  %509 = getelementptr inbounds i32, i32* %2, i64 %508, !dbg !4653
  %510 = load i32, i32* %509, align 4, !dbg !4653, !tbaa !2389
  %511 = icmp ne i32 %510, 0, !dbg !4653
  br i1 %511, label %512, label %527, !dbg !4655

512:                                              ; preds = %506
  %513 = sext i32 %485 to i64, !dbg !4656
  %514 = getelementptr inbounds i32, i32* %2, i64 %513, !dbg !4656
  %515 = load i32, i32* %514, align 4, !dbg !4656, !tbaa !2389
  %516 = icmp ne i32 %515, 0, !dbg !4656
  br i1 %516, label %517, label %527, !dbg !4657

517:                                              ; preds = %512
  %518 = sext i32 %501 to i64, !dbg !4658
  %519 = getelementptr inbounds i32, i32* %2, i64 %518, !dbg !4658
  %520 = load i32, i32* %519, align 4, !dbg !4658, !tbaa !2389
  %521 = icmp ne i32 %520, 0, !dbg !4658
  br i1 %521, label %522, label %527, !dbg !4659

522:                                              ; preds = %517
  %523 = sext i32 %507 to i64, !dbg !4660
  %524 = getelementptr inbounds i32, i32* %2, i64 %523, !dbg !4660
  %525 = load i32, i32* %524, align 4, !dbg !4660, !tbaa !2389
  %526 = icmp ne i32 %525, 0, !dbg !4660
  br i1 %526, label %594, label %527, !dbg !4661

527:                                              ; preds = %522, %517, %512, %506
  %528 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 85, !dbg !4662
  %529 = load i32*, i32** %528, align 8, !dbg !4662, !tbaa !4636
  %530 = getelementptr inbounds i32, i32* %529, i64 %indvars.iv38105, !dbg !4664
  %531 = load i32, i32* %530, align 4, !dbg !4664, !tbaa !2389
  %532 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 85, !dbg !4665
  %533 = load i32*, i32** %532, align 8, !dbg !4665, !tbaa !4636
  %534 = sext i32 %.10107 to i64, !dbg !4666
  %535 = getelementptr inbounds i32, i32* %533, i64 %534, !dbg !4666
  store i32 %531, i32* %535, align 4, !dbg !4667, !tbaa !2389
  %536 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 86, !dbg !4668
  %537 = load i32*, i32** %536, align 8, !dbg !4668, !tbaa !4640
  %538 = getelementptr inbounds i32, i32* %537, i64 %indvars.iv38105, !dbg !4669
  %539 = load i32, i32* %538, align 4, !dbg !4669, !tbaa !2389
  %540 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 86, !dbg !4670
  %541 = load i32*, i32** %540, align 8, !dbg !4670, !tbaa !4640
  %542 = sext i32 %.10107 to i64, !dbg !4671
  %543 = getelementptr inbounds i32, i32* %541, i64 %542, !dbg !4671
  store i32 %539, i32* %543, align 4, !dbg !4672, !tbaa !2389
  %544 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 87, !dbg !4673
  %545 = load i32*, i32** %544, align 8, !dbg !4673, !tbaa !4644
  %546 = getelementptr inbounds i32, i32* %545, i64 %indvars.iv38105, !dbg !4674
  %547 = load i32, i32* %546, align 4, !dbg !4674, !tbaa !2389
  %548 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 87, !dbg !4675
  %549 = load i32*, i32** %548, align 8, !dbg !4675, !tbaa !4644
  %550 = sext i32 %.10107 to i64, !dbg !4676
  %551 = getelementptr inbounds i32, i32* %549, i64 %550, !dbg !4676
  store i32 %547, i32* %551, align 4, !dbg !4677, !tbaa !2389
  %552 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 88, !dbg !4678
  %553 = load i32*, i32** %552, align 8, !dbg !4678, !tbaa !4648
  %554 = getelementptr inbounds i32, i32* %553, i64 %indvars.iv38105, !dbg !4679
  %555 = load i32, i32* %554, align 4, !dbg !4679, !tbaa !2389
  %556 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 88, !dbg !4680
  %557 = load i32*, i32** %556, align 8, !dbg !4680, !tbaa !4648
  %558 = sext i32 %.10107 to i64, !dbg !4681
  %559 = getelementptr inbounds i32, i32* %557, i64 %558, !dbg !4681
  store i32 %555, i32* %559, align 4, !dbg !4682, !tbaa !2389
  %560 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 89, !dbg !4683
  %561 = load i32*, i32** %560, align 8, !dbg !4683, !tbaa !4684
  %562 = getelementptr inbounds i32, i32* %561, i64 %indvars.iv38105, !dbg !4685
  %563 = load i32, i32* %562, align 4, !dbg !4685, !tbaa !2389
  %564 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 89, !dbg !4686
  %565 = load i32*, i32** %564, align 8, !dbg !4686, !tbaa !4684
  %566 = sext i32 %.10107 to i64, !dbg !4687
  %567 = getelementptr inbounds i32, i32* %565, i64 %566, !dbg !4687
  store i32 %563, i32* %567, align 4, !dbg !4688, !tbaa !2389
  %568 = add nsw i32 %.10107, 1, !dbg !4689
  call void @llvm.dbg.value(metadata i32 %568, metadata !4244, metadata !DIExpression()), !dbg !4254
  %569 = icmp sge i32 %490, 0, !dbg !4690
  br i1 %569, label %570, label %593, !dbg !4692

570:                                              ; preds = %527
  %571 = icmp sge i32 %495, 0, !dbg !4693
  br i1 %571, label %572, label %593, !dbg !4694

572:                                              ; preds = %570
  %573 = icmp slt i32 %480, %495, !dbg !4695
  br i1 %573, label %574, label %575, !dbg !4697

574:                                              ; preds = %572
  br label %576, !dbg !4697

575:                                              ; preds = %572
  br label %576, !dbg !4697

576:                                              ; preds = %575, %574
  %577 = phi i32 [ %480, %574 ], [ %495, %575 ], !dbg !4697
  call void @llvm.dbg.value(metadata i32 %577, metadata !4246, metadata !DIExpression()), !dbg !4254
  %578 = icmp sgt i32 %480, %495, !dbg !4698
  br i1 %578, label %579, label %580, !dbg !4699

579:                                              ; preds = %576
  br label %581, !dbg !4699

580:                                              ; preds = %576
  br label %581, !dbg !4699

581:                                              ; preds = %580, %579
  %582 = phi i32 [ %480, %579 ], [ %495, %580 ], !dbg !4699
  call void @llvm.dbg.value(metadata i32 %582, metadata !4245, metadata !DIExpression()), !dbg !4254
  %583 = mul nsw i32 12, %577, !dbg !4700
  %584 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 91, !dbg !4701
  %585 = load i32*, i32** %584, align 8, !dbg !4701, !tbaa !4528
  %586 = sext i32 %577 to i64, !dbg !4702
  %587 = getelementptr inbounds i32, i32* %585, i64 %586, !dbg !4702
  %588 = load i32, i32* %587, align 4, !dbg !4703, !tbaa !2389
  %589 = add nsw i32 %588, 1, !dbg !4703
  store i32 %589, i32* %587, align 4, !dbg !4703, !tbaa !2389
  %590 = add nsw i32 %583, %588, !dbg !4704
  %591 = sext i32 %590 to i64, !dbg !4705
  %592 = getelementptr inbounds i32, i32* %340, i64 %591, !dbg !4705
  store i32 %582, i32* %592, align 4, !dbg !4706, !tbaa !2389
  br label %593, !dbg !4707

593:                                              ; preds = %581, %570, %527
  br label %594, !dbg !4708

594:                                              ; preds = %593, %522
  %indvars.iv38106 = phi i64 [ %indvars.iv38105, %522 ], [ %indvars.iv38105, %593 ]
  %.11 = phi i32 [ %.10107, %522 ], [ %568, %593 ], !dbg !4709
  call void @llvm.dbg.value(metadata i32 %.11, metadata !4244, metadata !DIExpression()), !dbg !4254
  br label %595, !dbg !4710

595:                                              ; preds = %594
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38106, 1, !dbg !4711
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next39, metadata !4239, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %.11, metadata !4244, metadata !DIExpression()), !dbg !4254
  %596 = load i32, i32* %471, align 8, !dbg !4628, !tbaa !4631
  %597 = sext i32 %596 to i64, !dbg !4632
  %598 = icmp slt i64 %indvars.iv.next39, %597, !dbg !4632
  br i1 %598, label %475, label %._crit_edge110, !dbg !4633, !llvm.loop !4712

._crit_edge110:                                   ; preds = %595
  %split111 = phi i32 [ %.11, %595 ]
  br label %599, !dbg !4633

599:                                              ; preds = %._crit_edge110, %469
  %.10.lcssa = phi i32 [ %split111, %._crit_edge110 ], [ 0, %469 ], !dbg !4714
  call void @llvm.dbg.value(metadata i32 %.10.lcssa, metadata !4244, metadata !DIExpression()), !dbg !4254
  %600 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 18, !dbg !4715
  store i32 %.10.lcssa, i32* %600, align 8, !dbg !4716, !tbaa !4631
  %601 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 11, !dbg !4717
  store i32 %.10.lcssa, i32* %601, align 4, !dbg !4718, !tbaa !4719
  call void @llvm.dbg.value(metadata i32 0, metadata !4236, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4235, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4235, metadata !DIExpression()), !dbg !4254
  %602 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 4, !dbg !4720
  %603 = load i32, i32* %602, align 8, !dbg !4720, !tbaa !4524
  %604 = sub nsw i32 %603, 1, !dbg !4723
  %605 = sext i32 %604 to i64, !dbg !4724
  %606 = icmp slt i64 0, %605, !dbg !4724
  br i1 %606, label %.lr.ph122, label %636, !dbg !4725

.lr.ph122:                                        ; preds = %599
  br label %607, !dbg !4725

607:                                              ; preds = %.lr.ph122, %631
  %.02120 = phi i32 [ 0, %.lr.ph122 ], [ %630, %631 ]
  %indvars.iv44118 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next45, %631 ]
  call void @llvm.dbg.value(metadata i32 %.02120, metadata !4236, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv44118, metadata !4235, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 0, metadata !4237, metadata !DIExpression()), !dbg !4254
  %608 = sext i32 %.02120 to i64, !dbg !4726
  call void @llvm.dbg.value(metadata i64 %608, metadata !4236, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 0, metadata !4237, metadata !DIExpression()), !dbg !4254
  %609 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 91, !dbg !4729
  %610 = load i32*, i32** %609, align 8, !dbg !4729, !tbaa !4528
  %611 = getelementptr inbounds i32, i32* %610, i64 %indvars.iv44118, !dbg !4731
  %612 = load i32, i32* %611, align 4, !dbg !4731, !tbaa !2389
  %613 = sext i32 %612 to i64, !dbg !4732
  %614 = icmp slt i64 0, %613, !dbg !4732
  br i1 %614, label %.lr.ph115, label %629, !dbg !4733

.lr.ph115:                                        ; preds = %607
  br label %615, !dbg !4733

615:                                              ; preds = %.lr.ph115, %623
  %indvars.iv40113 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next41, %623 ]
  %indvars.iv42112 = phi i64 [ %608, %.lr.ph115 ], [ %indvars.iv.next43, %623 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv40113, metadata !4237, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv42112, metadata !4236, metadata !DIExpression()), !dbg !4254
  %616 = mul nuw nsw i64 12, %indvars.iv44118, !dbg !4734
  %617 = add nuw nsw i64 %616, %indvars.iv40113, !dbg !4735
  %618 = getelementptr inbounds i32, i32* %340, i64 %617, !dbg !4736
  %619 = load i32, i32* %618, align 4, !dbg !4736, !tbaa !2389
  %620 = getelementptr inbounds %struct.parm, %struct.parm* %54, i32 0, i32 92, !dbg !4737
  %621 = load i32*, i32** %620, align 8, !dbg !4737, !tbaa !4738
  %indvars.iv.next43 = add nsw i64 %indvars.iv42112, 1, !dbg !4739
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next43, metadata !4236, metadata !DIExpression()), !dbg !4254
  %622 = getelementptr inbounds i32, i32* %621, i64 %indvars.iv42112, !dbg !4740
  store i32 %619, i32* %622, align 4, !dbg !4741, !tbaa !2389
  br label %623, !dbg !4740

623:                                              ; preds = %615
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40113, 1, !dbg !4742
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next43, metadata !4236, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next41, metadata !4237, metadata !DIExpression()), !dbg !4254
  %624 = load i32*, i32** %609, align 8, !dbg !4729, !tbaa !4528
  %625 = getelementptr inbounds i32, i32* %624, i64 %indvars.iv44118, !dbg !4731
  %626 = load i32, i32* %625, align 4, !dbg !4731, !tbaa !2389
  %627 = sext i32 %626 to i64, !dbg !4732
  %628 = icmp slt i64 %indvars.iv.next41, %627, !dbg !4732
  br i1 %628, label %615, label %._crit_edge116, !dbg !4733, !llvm.loop !4743

._crit_edge116:                                   ; preds = %623
  %split117 = phi i64 [ %indvars.iv.next43, %623 ]
  br label %629, !dbg !4733

629:                                              ; preds = %._crit_edge116, %607
  %indvars.iv44119 = phi i64 [ %indvars.iv44118, %._crit_edge116 ], [ %indvars.iv44118, %607 ]
  %.13.lcssa.wide = phi i64 [ %split117, %._crit_edge116 ], [ %608, %607 ]
  %630 = trunc i64 %.13.lcssa.wide to i32, !dbg !4254
  call void @llvm.dbg.value(metadata i32 %630, metadata !4236, metadata !DIExpression()), !dbg !4254
  br label %631, !dbg !4745

631:                                              ; preds = %629
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44119, 1, !dbg !4746
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next45, metadata !4235, metadata !DIExpression()), !dbg !4254
  call void @llvm.dbg.value(metadata i32 %630, metadata !4236, metadata !DIExpression()), !dbg !4254
  %632 = load i32, i32* %602, align 8, !dbg !4720, !tbaa !4524
  %633 = sub nsw i32 %632, 1, !dbg !4723
  %634 = sext i32 %633 to i64, !dbg !4724
  %635 = icmp slt i64 %indvars.iv.next45, %634, !dbg !4724
  br i1 %635, label %607, label %._crit_edge123, !dbg !4725, !llvm.loop !4747

._crit_edge123:                                   ; preds = %631
  br label %636, !dbg !4725

636:                                              ; preds = %._crit_edge123, %599
  %637 = bitcast i32* %340 to i8*, !dbg !4749
  call void @free(i8* %637) #8, !dbg !4750
  br label %638, !dbg !4751

638:                                              ; preds = %636, %52
  ret i32 %.012.lcssa, !dbg !4752
}

; Function Attrs: nounwind uwtable
define internal i8* @get(i64 %0) #0 !dbg !4753 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4757, metadata !DIExpression()), !dbg !4759
  %2 = icmp eq i64 %0, 0, !dbg !4760
  br i1 %2, label %3, label %4, !dbg !4762

3:                                                ; preds = %1
  br label %14, !dbg !4763

4:                                                ; preds = %1
  %5 = mul i64 %0, 1, !dbg !4764
  %6 = call noalias i8* @malloc(i64 %5) #8, !dbg !4766
  call void @llvm.dbg.value(metadata i8* %6, metadata !4758, metadata !DIExpression()), !dbg !4759
  %7 = icmp eq i8* %6, null, !dbg !4767
  br i1 %7, label %8, label %13, !dbg !4768

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !4769, !tbaa !672
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i64 %0), !dbg !4771
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !4772, !tbaa !672
  %12 = call i32 @fflush(%struct._IO_FILE* %11), !dbg !4773
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0)), !dbg !4774
  call void @exit(i32 1) #11, !dbg !4775
  unreachable, !dbg !4775

13:                                               ; preds = %4
  br label %14, !dbg !4776

14:                                               ; preds = %13, %3
  %.0 = phi i8* [ null, %3 ], [ %6, %13 ], !dbg !4759
  ret i8* %.0, !dbg !4777
}

; Function Attrs: nounwind uwtable
define dso_local i32 @set_cons_mask(%struct.molecule_t* %0, i8* %1, i32* %2) #0 !dbg !4778 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !4780, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i8* %1, metadata !4781, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32* %2, metadata !4782, metadata !DIExpression()), !dbg !4790
  %4 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1), !dbg !4791
  call void @llvm.dbg.value(metadata i32 0, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 0, metadata !4785, metadata !DIExpression()), !dbg !4790
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i32 0, i32 2, !dbg !4792
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !4792, !tbaa !501
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !4787, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 0, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 0, metadata !4785, metadata !DIExpression()), !dbg !4790
  %7 = icmp ne %struct.strand_t* %6, null, !dbg !4794
  br i1 %7, label %.lr.ph28, label %52, !dbg !4794

.lr.ph28:                                         ; preds = %3
  br label %8, !dbg !4794

8:                                                ; preds = %.lr.ph28, %48
  %.026 = phi %struct.strand_t* [ %6, %.lr.ph28 ], [ %50, %48 ]
  %.0125 = phi i32 [ 0, %.lr.ph28 ], [ %.1.lcssa, %48 ]
  %.0224 = phi i32 [ 0, %.lr.ph28 ], [ %.13.lcssa, %48 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.026, metadata !4787, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.0125, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.0224, metadata !4785, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 0, metadata !4783, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.0125, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.0224, metadata !4785, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 0, metadata !4783, metadata !DIExpression()), !dbg !4790
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 5, !dbg !4795
  %10 = load i32, i32* %9, align 8, !dbg !4795, !tbaa !666
  %11 = sext i32 %10 to i64, !dbg !4800
  %12 = icmp slt i64 0, %11, !dbg !4800
  br i1 %12, label %.lr.ph20, label %47, !dbg !4801

.lr.ph20:                                         ; preds = %8
  br label %13, !dbg !4801

13:                                               ; preds = %.lr.ph20, %43
  %.118 = phi i32 [ %.0125, %.lr.ph20 ], [ %.2.lcssa, %43 ]
  %.1317 = phi i32 [ %.0224, %.lr.ph20 ], [ %42, %43 ]
  %indvars.iv916 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next10, %43 ]
  call void @llvm.dbg.value(metadata i32 %.118, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.1317, metadata !4785, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 %indvars.iv916, metadata !4783, metadata !DIExpression()), !dbg !4790
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 7, !dbg !4802
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8, !dbg !4802, !tbaa !670
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv916, !dbg !4804
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8, !dbg !4804, !tbaa !672
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !4788, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 0, metadata !4784, metadata !DIExpression()), !dbg !4790
  %18 = sext i32 %.1317 to i64, !dbg !4805
  call void @llvm.dbg.value(metadata i32 %.118, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 %18, metadata !4785, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 0, metadata !4784, metadata !DIExpression()), !dbg !4790
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 15, !dbg !4807
  %20 = load i32, i32* %19, align 8, !dbg !4807, !tbaa !585
  %21 = sext i32 %20 to i64, !dbg !4809
  %22 = icmp slt i64 0, %21, !dbg !4809
  br i1 %22, label %.lr.ph, label %41, !dbg !4810

.lr.ph:                                           ; preds = %13
  br label %23, !dbg !4810

23:                                               ; preds = %.lr.ph, %37
  %.214 = phi i32 [ %.118, %.lr.ph ], [ %.3, %37 ]
  %indvars.iv13 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %37 ]
  %indvars.iv711 = phi i64 [ %18, %.lr.ph ], [ %indvars.iv.next8, %37 ]
  call void @llvm.dbg.value(metadata i32 %.214, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !4784, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 %indvars.iv711, metadata !4785, metadata !DIExpression()), !dbg !4790
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17, !dbg !4811
  %25 = load %struct.atom_t*, %struct.atom_t** %24, align 8, !dbg !4811, !tbaa !582
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv13, !dbg !4813
  call void @llvm.dbg.value(metadata %struct.atom_t* %26, metadata !4789, metadata !DIExpression()), !dbg !4790
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 0, i32 2, !dbg !4814
  %28 = load i32, i32* %27, align 8, !dbg !4814, !tbaa !1669
  %29 = and i32 %28, 1, !dbg !4816
  %30 = icmp ne i32 %29, 0, !dbg !4816
  br i1 %30, label %31, label %34, !dbg !4817

31:                                               ; preds = %23
  %32 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv711, !dbg !4818
  store i32 1, i32* %32, align 4, !dbg !4820, !tbaa !2389
  %33 = add nsw i32 %.214, 1, !dbg !4821
  call void @llvm.dbg.value(metadata i32 %33, metadata !4786, metadata !DIExpression()), !dbg !4790
  br label %36, !dbg !4822

34:                                               ; preds = %23
  %35 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv711, !dbg !4823
  store i32 0, i32* %35, align 4, !dbg !4825, !tbaa !2389
  br label %36

36:                                               ; preds = %34, %31
  %indvars.iv712 = phi i64 [ %indvars.iv711, %31 ], [ %indvars.iv711, %34 ]
  %.3 = phi i32 [ %33, %31 ], [ %.214, %34 ], !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.3, metadata !4786, metadata !DIExpression()), !dbg !4790
  %indvars.iv.next8 = add nsw i64 %indvars.iv712, 1, !dbg !4826
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !4785, metadata !DIExpression()), !dbg !4790
  br label %37, !dbg !4827

37:                                               ; preds = %36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv13, 1, !dbg !4828
  call void @llvm.dbg.value(metadata i32 %.3, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !4785, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4784, metadata !DIExpression()), !dbg !4790
  %38 = load i32, i32* %19, align 8, !dbg !4807, !tbaa !585
  %39 = sext i32 %38 to i64, !dbg !4809
  %40 = icmp slt i64 %indvars.iv.next, %39, !dbg !4809
  br i1 %40, label %23, label %._crit_edge, !dbg !4810, !llvm.loop !4829

._crit_edge:                                      ; preds = %37
  %split = phi i64 [ %indvars.iv.next8, %37 ]
  %split15 = phi i32 [ %.3, %37 ]
  br label %41, !dbg !4810

41:                                               ; preds = %._crit_edge, %13
  %.24.lcssa.wide = phi i64 [ %split, %._crit_edge ], [ %18, %13 ]
  %.2.lcssa = phi i32 [ %split15, %._crit_edge ], [ %.118, %13 ], !dbg !4790
  %42 = trunc i64 %.24.lcssa.wide to i32, !dbg !4790
  call void @llvm.dbg.value(metadata i32 %42, metadata !4785, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !4786, metadata !DIExpression()), !dbg !4790
  br label %43, !dbg !4831

43:                                               ; preds = %41
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv916, 1, !dbg !4832
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %42, metadata !4785, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !4783, metadata !DIExpression()), !dbg !4790
  %44 = load i32, i32* %9, align 8, !dbg !4795, !tbaa !666
  %45 = sext i32 %44 to i64, !dbg !4800
  %46 = icmp slt i64 %indvars.iv.next10, %45, !dbg !4800
  br i1 %46, label %13, label %._crit_edge21, !dbg !4801, !llvm.loop !4833

._crit_edge21:                                    ; preds = %43
  %split22 = phi i32 [ %42, %43 ]
  %split23 = phi i32 [ %.2.lcssa, %43 ]
  br label %47, !dbg !4801

47:                                               ; preds = %._crit_edge21, %8
  %.13.lcssa = phi i32 [ %split22, %._crit_edge21 ], [ %.0224, %8 ], !dbg !4835
  %.1.lcssa = phi i32 [ %split23, %._crit_edge21 ], [ %.0125, %8 ], !dbg !4836
  call void @llvm.dbg.value(metadata i32 %.13.lcssa, metadata !4785, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !4786, metadata !DIExpression()), !dbg !4790
  br label %48, !dbg !4837

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 4, !dbg !4838
  %50 = load %struct.strand_t*, %struct.strand_t** %49, align 8, !dbg !4838, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.strand_t* %50, metadata !4787, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i32 %.13.lcssa, metadata !4785, metadata !DIExpression()), !dbg !4790
  %51 = icmp ne %struct.strand_t* %50, null, !dbg !4794
  br i1 %51, label %8, label %._crit_edge29, !dbg !4794, !llvm.loop !4839

._crit_edge29:                                    ; preds = %48
  %split30 = phi i32 [ %.1.lcssa, %48 ]
  br label %52, !dbg !4794

52:                                               ; preds = %._crit_edge29, %3
  %.01.lcssa = phi i32 [ %split30, %._crit_edge29 ], [ 0, %3 ], !dbg !4836
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !4786, metadata !DIExpression()), !dbg !4790
  ret i32 %.01.lcssa, !dbg !4841
}

; Function Attrs: nounwind uwtable
define dso_local i32 @circle(double* %0, double* %1, double* %2, double* %3) #0 !dbg !4842 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata double* %0, metadata !4846, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata double* %1, metadata !4847, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata double* %2, metadata !4848, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata double* %3, metadata !4849, metadata !DIExpression()), !dbg !4859
  %11 = bitcast [3 x double]* %5 to i8*, !dbg !4860
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %11) #8, !dbg !4860
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !4851, metadata !DIExpression()), !dbg !4861
  %12 = bitcast [3 x double]* %6 to i8*, !dbg !4862
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %12) #8, !dbg !4862
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !4852, metadata !DIExpression()), !dbg !4863
  %13 = bitcast [3 x double]* %7 to i8*, !dbg !4864
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %13) #8, !dbg !4864
  call void @llvm.dbg.declare(metadata [3 x double]* %7, metadata !4853, metadata !DIExpression()), !dbg !4865
  %14 = bitcast [3 x double]* %8 to i8*, !dbg !4866
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %14) #8, !dbg !4866
  call void @llvm.dbg.declare(metadata [3 x double]* %8, metadata !4854, metadata !DIExpression()), !dbg !4867
  %15 = bitcast [3 x double]* %9 to i8*, !dbg !4868
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %15) #8, !dbg !4868
  call void @llvm.dbg.declare(metadata [3 x double]* %9, metadata !4855, metadata !DIExpression()), !dbg !4869
  %16 = bitcast [3 x double]* %10 to i8*, !dbg !4870
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %16) #8, !dbg !4870
  call void @llvm.dbg.declare(metadata [3 x double]* %10, metadata !4856, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  br label %17, !dbg !4872

17:                                               ; preds = %4, %24
  %indvars.iv20 = phi i64 [ 0, %4 ], [ %indvars.iv.next, %24 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !4850, metadata !DIExpression()), !dbg !4859
  %18 = getelementptr inbounds double, double* %1, i64 %indvars.iv20, !dbg !4874
  %19 = load double, double* %18, align 8, !dbg !4874, !tbaa !456
  %20 = getelementptr inbounds double, double* %0, i64 %indvars.iv20, !dbg !4876
  %21 = load double, double* %20, align 8, !dbg !4876, !tbaa !456
  %22 = fsub double %19, %21, !dbg !4877
  %23 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %indvars.iv20, !dbg !4878
  store double %22, double* %23, align 8, !dbg !4879, !tbaa !456
  br label %24, !dbg !4878

24:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv20, 1, !dbg !4880
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4850, metadata !DIExpression()), !dbg !4859
  %exitcond = icmp ne i64 %indvars.iv.next, 3, !dbg !4881
  br i1 %exitcond, label %17, label %25, !dbg !4872, !llvm.loop !4882

25:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  br label %26, !dbg !4884

26:                                               ; preds = %25, %33
  %indvars.iv221 = phi i64 [ 0, %25 ], [ %indvars.iv.next3, %33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv221, metadata !4850, metadata !DIExpression()), !dbg !4859
  %27 = getelementptr inbounds double, double* %2, i64 %indvars.iv221, !dbg !4886
  %28 = load double, double* %27, align 8, !dbg !4886, !tbaa !456
  %29 = getelementptr inbounds double, double* %0, i64 %indvars.iv221, !dbg !4888
  %30 = load double, double* %29, align 8, !dbg !4888, !tbaa !456
  %31 = fsub double %28, %30, !dbg !4889
  %32 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %indvars.iv221, !dbg !4890
  store double %31, double* %32, align 8, !dbg !4891, !tbaa !456
  br label %33, !dbg !4890

33:                                               ; preds = %26
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv221, 1, !dbg !4892
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !4850, metadata !DIExpression()), !dbg !4859
  %exitcond4 = icmp ne i64 %indvars.iv.next3, 3, !dbg !4893
  br i1 %exitcond4, label %26, label %34, !dbg !4884, !llvm.loop !4894

34:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  br label %35, !dbg !4896

35:                                               ; preds = %34, %42
  %indvars.iv522 = phi i64 [ 0, %34 ], [ %indvars.iv.next6, %42 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv522, metadata !4850, metadata !DIExpression()), !dbg !4859
  %36 = getelementptr inbounds double, double* %2, i64 %indvars.iv522, !dbg !4898
  %37 = load double, double* %36, align 8, !dbg !4898, !tbaa !456
  %38 = getelementptr inbounds double, double* %1, i64 %indvars.iv522, !dbg !4900
  %39 = load double, double* %38, align 8, !dbg !4900, !tbaa !456
  %40 = fsub double %37, %39, !dbg !4901
  %41 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %indvars.iv522, !dbg !4902
  store double %40, double* %41, align 8, !dbg !4903, !tbaa !456
  br label %42, !dbg !4902

42:                                               ; preds = %35
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv522, 1, !dbg !4904
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !4850, metadata !DIExpression()), !dbg !4859
  %exitcond7 = icmp ne i64 %indvars.iv.next6, 3, !dbg !4905
  br i1 %exitcond7, label %35, label %43, !dbg !4896, !llvm.loop !4906

43:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  br label %44, !dbg !4908

44:                                               ; preds = %43, %52
  %indvars.iv823 = phi i64 [ 0, %43 ], [ %indvars.iv.next9, %52 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv823, metadata !4850, metadata !DIExpression()), !dbg !4859
  %45 = getelementptr inbounds double, double* %0, i64 %indvars.iv823, !dbg !4910
  %46 = load double, double* %45, align 8, !dbg !4910, !tbaa !456
  %47 = getelementptr inbounds double, double* %1, i64 %indvars.iv823, !dbg !4912
  %48 = load double, double* %47, align 8, !dbg !4912, !tbaa !456
  %49 = fadd double %46, %48, !dbg !4913
  %50 = fmul double 5.000000e-01, %49, !dbg !4914
  %51 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %indvars.iv823, !dbg !4915
  store double %50, double* %51, align 8, !dbg !4916, !tbaa !456
  br label %52, !dbg !4915

52:                                               ; preds = %44
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv823, 1, !dbg !4917
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !4850, metadata !DIExpression()), !dbg !4859
  %exitcond10 = icmp ne i64 %indvars.iv.next9, 3, !dbg !4918
  br i1 %exitcond10, label %44, label %53, !dbg !4908, !llvm.loop !4919

53:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  br label %54, !dbg !4921

54:                                               ; preds = %53, %61
  %indvars.iv1124 = phi i64 [ 0, %53 ], [ %indvars.iv.next12, %61 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1124, metadata !4850, metadata !DIExpression()), !dbg !4859
  %55 = getelementptr inbounds double, double* %2, i64 %indvars.iv1124, !dbg !4923
  %56 = load double, double* %55, align 8, !dbg !4923, !tbaa !456
  %57 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %indvars.iv1124, !dbg !4925
  %58 = load double, double* %57, align 8, !dbg !4925, !tbaa !456
  %59 = fsub double %56, %58, !dbg !4926
  %60 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %indvars.iv1124, !dbg !4927
  store double %59, double* %60, align 8, !dbg !4928, !tbaa !456
  br label %61, !dbg !4927

61:                                               ; preds = %54
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv1124, 1, !dbg !4929
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next12, metadata !4850, metadata !DIExpression()), !dbg !4859
  %exitcond13 = icmp ne i64 %indvars.iv.next12, 3, !dbg !4930
  br i1 %exitcond13, label %54, label %62, !dbg !4921, !llvm.loop !4931

62:                                               ; preds = %61
  %63 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4933
  %64 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !4934
  %65 = call double @vdot(double* %63, double* %64), !dbg !4935
  %66 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4936
  %67 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4937
  %68 = call double @vdot(double* %66, double* %67), !dbg !4938
  %69 = fdiv double %65, %68, !dbg !4939
  call void @llvm.dbg.value(metadata double %69, metadata !4857, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  br label %70, !dbg !4940

70:                                               ; preds = %62, %78
  %indvars.iv1425 = phi i64 [ 0, %62 ], [ %indvars.iv.next15, %78 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1425, metadata !4850, metadata !DIExpression()), !dbg !4859
  %71 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %indvars.iv1425, !dbg !4942
  %72 = load double, double* %71, align 8, !dbg !4942, !tbaa !456
  %73 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %indvars.iv1425, !dbg !4944
  %74 = load double, double* %73, align 8, !dbg !4944, !tbaa !456
  %75 = fmul double %69, %74, !dbg !4945
  %76 = fsub double %72, %75, !dbg !4946
  %77 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %indvars.iv1425, !dbg !4947
  store double %76, double* %77, align 8, !dbg !4948, !tbaa !456
  br label %78, !dbg !4947

78:                                               ; preds = %70
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv1425, 1, !dbg !4949
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next15, metadata !4850, metadata !DIExpression()), !dbg !4859
  %exitcond16 = icmp ne i64 %indvars.iv.next15, 3, !dbg !4950
  br i1 %exitcond16, label %70, label %79, !dbg !4940, !llvm.loop !4951

79:                                               ; preds = %78
  %80 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0, !dbg !4953
  %81 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !4954
  %82 = call double @vdot(double* %80, double* %81), !dbg !4955
  call void @llvm.dbg.value(metadata double %82, metadata !4858, metadata !DIExpression()), !dbg !4859
  %83 = call double @llvm.fabs.f64(double %82), !dbg !4956
  %84 = fcmp olt double %83, 1.000000e-09, !dbg !4958
  br i1 %84, label %85, label %88, !dbg !4959

85:                                               ; preds = %79
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4960, !tbaa !672
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0)), !dbg !4962
  br label %104, !dbg !4963

88:                                               ; preds = %79
  %89 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0, !dbg !4964
  %90 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !4965
  %91 = call double @vdot(double* %89, double* %90), !dbg !4966
  %92 = fmul double 5.000000e-01, %91, !dbg !4967
  %93 = fdiv double %92, %82, !dbg !4968
  call void @llvm.dbg.value(metadata double %93, metadata !4858, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i32 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 0, metadata !4850, metadata !DIExpression()), !dbg !4859
  br label %94, !dbg !4969

94:                                               ; preds = %88, %102
  %indvars.iv1726 = phi i64 [ 0, %88 ], [ %indvars.iv.next18, %102 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1726, metadata !4850, metadata !DIExpression()), !dbg !4859
  %95 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %indvars.iv1726, !dbg !4971
  %96 = load double, double* %95, align 8, !dbg !4971, !tbaa !456
  %97 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %indvars.iv1726, !dbg !4973
  %98 = load double, double* %97, align 8, !dbg !4973, !tbaa !456
  %99 = fmul double %93, %98, !dbg !4974
  %100 = fadd double %96, %99, !dbg !4975
  %101 = getelementptr inbounds double, double* %3, i64 %indvars.iv1726, !dbg !4976
  store double %100, double* %101, align 8, !dbg !4977, !tbaa !456
  br label %102, !dbg !4976

102:                                              ; preds = %94
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv1726, 1, !dbg !4978
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next18, metadata !4850, metadata !DIExpression()), !dbg !4859
  %exitcond19 = icmp ne i64 %indvars.iv.next18, 3, !dbg !4979
  br i1 %exitcond19, label %94, label %103, !dbg !4969, !llvm.loop !4980

103:                                              ; preds = %102
  br label %104, !dbg !4982

104:                                              ; preds = %103, %85
  %.0 = phi i32 [ 1, %85 ], [ 0, %103 ], !dbg !4859
  %105 = bitcast [3 x double]* %10 to i8*, !dbg !4983
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %105) #8, !dbg !4983
  %106 = bitcast [3 x double]* %9 to i8*, !dbg !4983
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %106) #8, !dbg !4983
  %107 = bitcast [3 x double]* %8 to i8*, !dbg !4983
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %107) #8, !dbg !4983
  %108 = bitcast [3 x double]* %7 to i8*, !dbg !4983
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %108) #8, !dbg !4983
  %109 = bitcast [3 x double]* %6 to i8*, !dbg !4983
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %109) #8, !dbg !4983
  %110 = bitcast [3 x double]* %5 to i8*, !dbg !4983
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %110) #8, !dbg !4983
  ret i32 %.0, !dbg !4983
}

; Function Attrs: nounwind uwtable
define internal double @vdot(double* %0, double* %1) #0 !dbg !4984 {
  call void @llvm.dbg.value(metadata double* %0, metadata !4986, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.value(metadata double* %1, metadata !4987, metadata !DIExpression()), !dbg !4988
  %3 = getelementptr inbounds double, double* %0, i64 0, !dbg !4989
  %4 = load double, double* %3, align 8, !dbg !4989, !tbaa !456
  %5 = getelementptr inbounds double, double* %1, i64 0, !dbg !4990
  %6 = load double, double* %5, align 8, !dbg !4990, !tbaa !456
  %7 = fmul double %4, %6, !dbg !4991
  %8 = getelementptr inbounds double, double* %0, i64 1, !dbg !4992
  %9 = load double, double* %8, align 8, !dbg !4992, !tbaa !456
  %10 = getelementptr inbounds double, double* %1, i64 1, !dbg !4993
  %11 = load double, double* %10, align 8, !dbg !4993, !tbaa !456
  %12 = fmul double %9, %11, !dbg !4994
  %13 = fadd double %7, %12, !dbg !4995
  %14 = getelementptr inbounds double, double* %0, i64 2, !dbg !4996
  %15 = load double, double* %14, align 8, !dbg !4996, !tbaa !456
  %16 = getelementptr inbounds double, double* %1, i64 2, !dbg !4997
  %17 = load double, double* %16, align 8, !dbg !4997, !tbaa !456
  %18 = fmul double %15, %17, !dbg !4998
  %19 = fadd double %13, %18, !dbg !4999
  ret double %19, !dbg !5000
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @hypot(double, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @find_atom(%struct.residue_t* %0, i8* %1) #0 !dbg !5001 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !5005, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata i8* %1, metadata !5006, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata i32 0, metadata !5007, metadata !DIExpression()), !dbg !5009
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !5010
  %4 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !5010, !tbaa !582
  call void @llvm.dbg.value(metadata %struct.atom_t* %4, metadata !5008, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata i32 0, metadata !5007, metadata !DIExpression()), !dbg !5009
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !5012
  %6 = load i32, i32* %5, align 8, !dbg !5012, !tbaa !585
  %7 = icmp slt i32 0, %6, !dbg !5014
  br i1 %7, label %.lr.ph, label %20, !dbg !5015

.lr.ph:                                           ; preds = %2
  br label %8, !dbg !5015

8:                                                ; preds = %.lr.ph, %15
  %.015 = phi %struct.atom_t* [ %4, %.lr.ph ], [ %17, %15 ]
  %.024 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %.015, metadata !5008, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata i32 %.024, metadata !5007, metadata !DIExpression()), !dbg !5009
  %9 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.015, i32 0, i32 0, !dbg !5016
  %10 = load i8*, i8** %9, align 8, !dbg !5016, !tbaa !591
  %11 = call i32 @strcmp(i8* %10, i8* %1) #9, !dbg !5019
  %12 = icmp eq i32 %11, 0, !dbg !5020
  br i1 %12, label %13, label %14, !dbg !5021

13:                                               ; preds = %8
  %.02.lcssa3 = phi i32 [ %.024, %8 ], !dbg !5022
  call void @llvm.dbg.value(metadata i32 %.02.lcssa3, metadata !5007, metadata !DIExpression()), !dbg !5009
  br label %21, !dbg !5023

14:                                               ; preds = %8
  br label %15, !dbg !5024

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.024, 1, !dbg !5025
  call void @llvm.dbg.value(metadata i32 %16, metadata !5007, metadata !DIExpression()), !dbg !5009
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.015, i32 1, !dbg !5026
  call void @llvm.dbg.value(metadata %struct.atom_t* %17, metadata !5008, metadata !DIExpression()), !dbg !5009
  %18 = load i32, i32* %5, align 8, !dbg !5012, !tbaa !585
  %19 = icmp slt i32 %16, %18, !dbg !5014
  br i1 %19, label %8, label %._crit_edge, !dbg !5015, !llvm.loop !5027

._crit_edge:                                      ; preds = %15
  br label %20, !dbg !5015

20:                                               ; preds = %._crit_edge, %2
  br label %21, !dbg !5029

21:                                               ; preds = %20, %13
  %.0 = phi i32 [ %.02.lcssa3, %13 ], [ -1, %20 ], !dbg !5009
  ret i32 %.0, !dbg !5030
}

; Function Attrs: nounwind uwtable
define internal i32 @delete_atom(%struct.residue_t* %0, i32 %1) #0 !dbg !5031 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !5035, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i32 %1, metadata !5036, metadata !DIExpression()), !dbg !5044
  %3 = icmp slt i32 %1, 0, !dbg !5045
  br i1 %3, label %8, label %4, !dbg !5047

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !5048
  %6 = load i32, i32* %5, align 8, !dbg !5048, !tbaa !585
  %7 = icmp sge i32 %1, %6, !dbg !5049
  br i1 %7, label %8, label %9, !dbg !5050

8:                                                ; preds = %4, %2
  br label %135, !dbg !5051

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !5052
  %11 = load %struct.atom_t*, %struct.atom_t** %10, align 8, !dbg !5052, !tbaa !582
  %12 = sext i32 %1 to i64, !dbg !5053
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %11, i64 %12, !dbg !5053
  call void @llvm.dbg.value(metadata %struct.atom_t* %13, metadata !5042, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i32 0, metadata !5039, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 0, metadata !5039, metadata !DIExpression()), !dbg !5044
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i32 0, i32 3, !dbg !5054
  %15 = load i32, i32* %14, align 4, !dbg !5054, !tbaa !2874
  %16 = sext i32 %15 to i64, !dbg !5057
  %17 = icmp slt i64 0, %16, !dbg !5057
  br i1 %17, label %.lr.ph29, label %76, !dbg !5058

.lr.ph29:                                         ; preds = %9
  br label %18, !dbg !5058

18:                                               ; preds = %.lr.ph29, %72
  %indvars.iv1227 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next13, %72 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1227, metadata !5039, metadata !DIExpression()), !dbg !5044
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i32 0, i32 4, !dbg !5059
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %19, i64 0, i64 %indvars.iv1227, !dbg !5061
  %21 = load i32, i32* %20, align 4, !dbg !5061, !tbaa !2389
  call void @llvm.dbg.value(metadata i32 %21, metadata !5038, metadata !DIExpression()), !dbg !5044
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !5062
  %23 = load %struct.atom_t*, %struct.atom_t** %22, align 8, !dbg !5062, !tbaa !582
  %24 = sext i32 %21 to i64, !dbg !5063
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %23, i64 %24, !dbg !5063
  call void @llvm.dbg.value(metadata %struct.atom_t* %25, metadata !5043, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i32 0, metadata !5040, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 0, metadata !5040, metadata !DIExpression()), !dbg !5044
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3, !dbg !5064
  %27 = load i32, i32* %26, align 4, !dbg !5064, !tbaa !2874
  %28 = sext i32 %27 to i64, !dbg !5067
  %29 = icmp slt i64 0, %28, !dbg !5067
  br i1 %29, label %.lr.ph, label %.loopexit, !dbg !5068

.lr.ph:                                           ; preds = %18
  br label %30, !dbg !5068

30:                                               ; preds = %.lr.ph, %67
  %indvars.iv20 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %67 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !5040, metadata !DIExpression()), !dbg !5044
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 4, !dbg !5069
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 0, i64 %indvars.iv20, !dbg !5072
  %33 = load i32, i32* %32, align 4, !dbg !5072, !tbaa !2389
  %34 = icmp eq i32 %33, %1, !dbg !5073
  br i1 %34, label %35, label %66, !dbg !5074

35:                                               ; preds = %30
  %.06.lcssa7.wide = phi i64 [ %indvars.iv20, %30 ]
  call void @llvm.dbg.value(metadata i64 %.06.lcssa7.wide, metadata !5040, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %.06.lcssa7.wide, metadata !5041, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %.06.lcssa7.wide, metadata !5041, metadata !DIExpression()), !dbg !5044
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3, !dbg !5075
  %37 = load i32, i32* %36, align 4, !dbg !5075, !tbaa !2874
  %38 = sub nsw i32 %37, 1, !dbg !5079
  %39 = sext i32 %38 to i64, !dbg !5080
  %40 = icmp slt i64 %.06.lcssa7.wide, %39, !dbg !5080
  br i1 %40, label %.lr.ph22, label %52, !dbg !5081

.lr.ph22:                                         ; preds = %35
  br label %41, !dbg !5081

41:                                               ; preds = %.lr.ph22, %47
  %indvars.iv821 = phi i64 [ %.06.lcssa7.wide, %.lr.ph22 ], [ %indvars.iv.next9, %47 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv821, metadata !5041, metadata !DIExpression()), !dbg !5044
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 4, !dbg !5082
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv821, 1, !dbg !5084
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %42, i64 0, i64 %indvars.iv.next9, !dbg !5085
  %44 = load i32, i32* %43, align 4, !dbg !5085, !tbaa !2389
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 4, !dbg !5086
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %45, i64 0, i64 %indvars.iv821, !dbg !5087
  store i32 %44, i32* %46, align 4, !dbg !5088, !tbaa !2389
  br label %47, !dbg !5089

47:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !5041, metadata !DIExpression()), !dbg !5044
  %48 = load i32, i32* %36, align 4, !dbg !5075, !tbaa !2874
  %49 = sub nsw i32 %48, 1, !dbg !5079
  %50 = sext i32 %49 to i64, !dbg !5080
  %51 = icmp slt i64 %indvars.iv.next9, %50, !dbg !5080
  br i1 %51, label %41, label %._crit_edge, !dbg !5081, !llvm.loop !5090

._crit_edge:                                      ; preds = %47
  br label %52, !dbg !5081

52:                                               ; preds = %._crit_edge, %35
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3, !dbg !5092
  %54 = load i32, i32* %53, align 4, !dbg !5093, !tbaa !2874
  %55 = add nsw i32 %54, -1, !dbg !5093
  store i32 %55, i32* %53, align 4, !dbg !5093, !tbaa !2874
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3, !dbg !5094
  %57 = load i32, i32* %56, align 4, !dbg !5094, !tbaa !2874
  call void @llvm.dbg.value(metadata i32 %57, metadata !5041, metadata !DIExpression()), !dbg !5044
  %58 = sext i32 %57 to i64, !dbg !5096
  call void @llvm.dbg.value(metadata i64 %58, metadata !5041, metadata !DIExpression()), !dbg !5044
  %59 = icmp slt i64 %58, 8, !dbg !5097
  br i1 %59, label %.lr.ph25, label %65, !dbg !5099

.lr.ph25:                                         ; preds = %52
  br label %60, !dbg !5099

60:                                               ; preds = %.lr.ph25, %63
  %indvars.iv1023 = phi i64 [ %58, %.lr.ph25 ], [ %indvars.iv.next11, %63 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1023, metadata !5041, metadata !DIExpression()), !dbg !5044
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 4, !dbg !5100
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %61, i64 0, i64 %indvars.iv1023, !dbg !5101
  store i32 -1, i32* %62, align 4, !dbg !5102, !tbaa !2389
  br label %63, !dbg !5101

63:                                               ; preds = %60
  %indvars.iv.next11 = add nsw i64 %indvars.iv1023, 1, !dbg !5103
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11, metadata !5041, metadata !DIExpression()), !dbg !5044
  %64 = icmp slt i64 %indvars.iv.next11, 8, !dbg !5097
  br i1 %64, label %60, label %._crit_edge26, !dbg !5099, !llvm.loop !5104

._crit_edge26:                                    ; preds = %63
  br label %65, !dbg !5099

65:                                               ; preds = %._crit_edge26, %52
  br label %71, !dbg !5106

66:                                               ; preds = %30
  br label %67, !dbg !5107

67:                                               ; preds = %66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv20, 1, !dbg !5108
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !5040, metadata !DIExpression()), !dbg !5044
  %68 = load i32, i32* %26, align 4, !dbg !5064, !tbaa !2874
  %69 = sext i32 %68 to i64, !dbg !5067
  %70 = icmp slt i64 %indvars.iv.next, %69, !dbg !5067
  br i1 %70, label %30, label %..loopexit_crit_edge, !dbg !5068, !llvm.loop !5109

..loopexit_crit_edge:                             ; preds = %67
  br label %.loopexit, !dbg !5068

.loopexit:                                        ; preds = %..loopexit_crit_edge, %18
  br label %71, !dbg !5111

71:                                               ; preds = %.loopexit, %65
  br label %72, !dbg !5111

72:                                               ; preds = %71
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1227, 1, !dbg !5112
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next13, metadata !5039, metadata !DIExpression()), !dbg !5044
  %73 = load i32, i32* %14, align 4, !dbg !5054, !tbaa !2874
  %74 = sext i32 %73 to i64, !dbg !5057
  %75 = icmp slt i64 %indvars.iv.next13, %74, !dbg !5057
  br i1 %75, label %18, label %._crit_edge30, !dbg !5058, !llvm.loop !5113

._crit_edge30:                                    ; preds = %72
  br label %76, !dbg !5058

76:                                               ; preds = %._crit_edge30, %9
  call void @llvm.dbg.value(metadata i32 %1, metadata !5037, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 %12, metadata !5037, metadata !DIExpression()), !dbg !5044
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !5115
  %78 = load i32, i32* %77, align 8, !dbg !5115, !tbaa !585
  %79 = sub nsw i32 %78, 1, !dbg !5118
  %80 = sext i32 %79 to i64, !dbg !5119
  %81 = icmp slt i64 %12, %80, !dbg !5119
  br i1 %81, label %.lr.ph33, label %96, !dbg !5120

.lr.ph33:                                         ; preds = %76
  br label %82, !dbg !5120

82:                                               ; preds = %.lr.ph33, %91
  %indvars.iv1431 = phi i64 [ %12, %.lr.ph33 ], [ %indvars.iv.next15, %91 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1431, metadata !5037, metadata !DIExpression()), !dbg !5044
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !5121
  %84 = load %struct.atom_t*, %struct.atom_t** %83, align 8, !dbg !5121, !tbaa !582
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %84, i64 %indvars.iv1431, !dbg !5122
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !5123
  %87 = load %struct.atom_t*, %struct.atom_t** %86, align 8, !dbg !5123, !tbaa !582
  %indvars.iv.next15 = add nsw i64 %indvars.iv1431, 1, !dbg !5124
  %88 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i64 %indvars.iv.next15, !dbg !5125
  %89 = bitcast %struct.atom_t* %85 to i8*, !dbg !5125
  %90 = bitcast %struct.atom_t* %88 to i8*, !dbg !5125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 176, i1 false), !dbg !5125, !tbaa.struct !5126
  br label %91, !dbg !5122

91:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next15, metadata !5037, metadata !DIExpression()), !dbg !5044
  %92 = load i32, i32* %77, align 8, !dbg !5115, !tbaa !585
  %93 = sub nsw i32 %92, 1, !dbg !5118
  %94 = sext i32 %93 to i64, !dbg !5119
  %95 = icmp slt i64 %indvars.iv.next15, %94, !dbg !5119
  br i1 %95, label %82, label %._crit_edge34, !dbg !5120, !llvm.loop !5127

._crit_edge34:                                    ; preds = %91
  br label %96, !dbg !5120

96:                                               ; preds = %._crit_edge34, %76
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !5129
  %98 = load i32, i32* %97, align 8, !dbg !5130, !tbaa !585
  %99 = add nsw i32 %98, -1, !dbg !5130
  store i32 %99, i32* %97, align 8, !dbg !5130, !tbaa !585
  call void @llvm.dbg.value(metadata i32 0, metadata !5037, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 0, metadata !5037, metadata !DIExpression()), !dbg !5044
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !5131
  %101 = load i32, i32* %100, align 8, !dbg !5131, !tbaa !585
  %102 = sub nsw i32 %101, 1, !dbg !5134
  %103 = sext i32 %102 to i64, !dbg !5135
  %104 = icmp slt i64 0, %103, !dbg !5135
  br i1 %104, label %.lr.ph42, label %134, !dbg !5136

.lr.ph42:                                         ; preds = %96
  br label %105, !dbg !5136

105:                                              ; preds = %.lr.ph42, %129
  %indvars.iv1840 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next19, %129 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1840, metadata !5037, metadata !DIExpression()), !dbg !5044
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !5137
  %107 = load %struct.atom_t*, %struct.atom_t** %106, align 8, !dbg !5137, !tbaa !582
  %108 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %107, i64 %indvars.iv1840, !dbg !5139
  call void @llvm.dbg.value(metadata %struct.atom_t* %108, metadata !5042, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i32 0, metadata !5039, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.value(metadata i64 0, metadata !5039, metadata !DIExpression()), !dbg !5044
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %108, i32 0, i32 3, !dbg !5140
  %110 = load i32, i32* %109, align 4, !dbg !5140, !tbaa !2874
  %111 = sext i32 %110 to i64, !dbg !5143
  %112 = icmp slt i64 0, %111, !dbg !5143
  br i1 %112, label %.lr.ph38, label %128, !dbg !5144

.lr.ph38:                                         ; preds = %105
  br label %113, !dbg !5144

113:                                              ; preds = %.lr.ph38, %124
  %indvars.iv1635 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next17, %124 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1635, metadata !5039, metadata !DIExpression()), !dbg !5044
  %114 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %108, i32 0, i32 4, !dbg !5145
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %114, i64 0, i64 %indvars.iv1635, !dbg !5148
  %116 = load i32, i32* %115, align 4, !dbg !5148, !tbaa !2389
  %117 = icmp sgt i32 %116, %1, !dbg !5149
  br i1 %117, label %118, label %123, !dbg !5150

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %108, i32 0, i32 4, !dbg !5151
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %119, i64 0, i64 %indvars.iv1635, !dbg !5152
  %121 = load i32, i32* %120, align 4, !dbg !5153, !tbaa !2389
  %122 = add nsw i32 %121, -1, !dbg !5153
  store i32 %122, i32* %120, align 4, !dbg !5153, !tbaa !2389
  br label %123, !dbg !5152

123:                                              ; preds = %118, %113
  %indvars.iv1636 = phi i64 [ %indvars.iv1635, %118 ], [ %indvars.iv1635, %113 ]
  br label %124, !dbg !5154

124:                                              ; preds = %123
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv1636, 1, !dbg !5155
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next17, metadata !5039, metadata !DIExpression()), !dbg !5044
  %125 = load i32, i32* %109, align 4, !dbg !5140, !tbaa !2874
  %126 = sext i32 %125 to i64, !dbg !5143
  %127 = icmp slt i64 %indvars.iv.next17, %126, !dbg !5143
  br i1 %127, label %113, label %._crit_edge39, !dbg !5144, !llvm.loop !5156

._crit_edge39:                                    ; preds = %124
  br label %128, !dbg !5144

128:                                              ; preds = %._crit_edge39, %105
  br label %129, !dbg !5158

129:                                              ; preds = %128
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv1840, 1, !dbg !5159
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next19, metadata !5037, metadata !DIExpression()), !dbg !5044
  %130 = load i32, i32* %100, align 8, !dbg !5131, !tbaa !585
  %131 = sub nsw i32 %130, 1, !dbg !5134
  %132 = sext i32 %131 to i64, !dbg !5135
  %133 = icmp slt i64 %indvars.iv.next19, %132, !dbg !5135
  br i1 %133, label %105, label %._crit_edge43, !dbg !5136, !llvm.loop !5160

._crit_edge43:                                    ; preds = %129
  br label %134, !dbg !5136

134:                                              ; preds = %._crit_edge43, %96
  br label %135, !dbg !5162

135:                                              ; preds = %134, %8
  %.0 = phi i32 [ 1, %8 ], [ 0, %134 ], !dbg !5044
  ret i32 %.0, !dbg !5163
}

; Function Attrs: nounwind uwtable
define internal i32 @add_atom(%struct.residue_t* %0, i8* %1) #0 !dbg !5164 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !5166, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.value(metadata i8* %1, metadata !5167, metadata !DIExpression()), !dbg !5177
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !5178
  %4 = load i32, i32* %3, align 8, !dbg !5178, !tbaa !585
  %5 = add nsw i32 %4, 1, !dbg !5179
  call void @llvm.dbg.value(metadata i32 %5, metadata !5168, metadata !DIExpression()), !dbg !5177
  %6 = sext i32 %5 to i64, !dbg !5180
  %7 = mul i64 %6, 176, !dbg !5182
  %8 = call noalias i8* @malloc(i64 %7) #8, !dbg !5183
  %9 = bitcast i8* %8 to %struct.atom_t*, !dbg !5184
  call void @llvm.dbg.value(metadata %struct.atom_t* %9, metadata !5172, metadata !DIExpression()), !dbg !5177
  %10 = icmp eq %struct.atom_t* %9, null, !dbg !5185
  br i1 %10, label %11, label %14, !dbg !5186

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5187, !tbaa !672
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i64 0, i64 0)), !dbg !5189
  br label %112, !dbg !5190

14:                                               ; preds = %2
  %15 = sext i32 %5 to i64, !dbg !5191
  %16 = mul i64 %15, 4, !dbg !5193
  %17 = call noalias i8* @malloc(i64 %16) #8, !dbg !5194
  %18 = bitcast i8* %17 to i32*, !dbg !5195
  call void @llvm.dbg.value(metadata i32* %18, metadata !5174, metadata !DIExpression()), !dbg !5177
  %19 = icmp eq i32* %18, null, !dbg !5196
  br i1 %19, label %20, label %23, !dbg !5197

20:                                               ; preds = %14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5198, !tbaa !672
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0)), !dbg !5200
  br label %112, !dbg !5201

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !5202
  %25 = load %struct.atom_t*, %struct.atom_t** %24, align 8, !dbg !5202, !tbaa !582
  call void @llvm.dbg.value(metadata %struct.atom_t* %25, metadata !5173, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.value(metadata i32 0, metadata !5169, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.value(metadata i64 0, metadata !5169, metadata !DIExpression()), !dbg !5177
  %26 = sub nsw i32 %5, 1, !dbg !5203
  %27 = sext i32 %26 to i64, !dbg !5206
  %28 = icmp slt i64 0, %27, !dbg !5206
  br i1 %28, label %.lr.ph, label %36, !dbg !5207

.lr.ph:                                           ; preds = %23
  br label %29, !dbg !5207

29:                                               ; preds = %.lr.ph, %34
  %indvars.iv9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !5169, metadata !DIExpression()), !dbg !5177
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %indvars.iv9, !dbg !5208
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv9, !dbg !5209
  %32 = bitcast %struct.atom_t* %30 to i8*, !dbg !5209
  %33 = bitcast %struct.atom_t* %31 to i8*, !dbg !5209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 176, i1 false), !dbg !5209, !tbaa.struct !5126
  br label %34, !dbg !5208

34:                                               ; preds = %29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !5210
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !5169, metadata !DIExpression()), !dbg !5177
  %35 = icmp slt i64 %indvars.iv.next, %27, !dbg !5206
  br i1 %35, label %29, label %._crit_edge, !dbg !5207, !llvm.loop !5211

._crit_edge:                                      ; preds = %34
  br label %36, !dbg !5207

36:                                               ; preds = %._crit_edge, %23
  %37 = sub nsw i32 %5, 1, !dbg !5213
  %38 = sext i32 %37 to i64, !dbg !5214
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %38, !dbg !5214
  call void @llvm.dbg.value(metadata %struct.atom_t* %39, metadata !5171, metadata !DIExpression()), !dbg !5177
  %40 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 0, !dbg !5215
  %41 = load i8*, i8** %40, align 8, !dbg !5215, !tbaa !591
  %42 = call i64 @strlen(i8* %41) #9, !dbg !5216
  %43 = add i64 %42, 1, !dbg !5217
  %44 = call noalias i8* @malloc(i64 %43) #8, !dbg !5218
  call void @llvm.dbg.value(metadata i8* %44, metadata !5176, metadata !DIExpression()), !dbg !5177
  %45 = icmp eq i8* %44, null, !dbg !5219
  br i1 %45, label %46, label %49, !dbg !5221

46:                                               ; preds = %36
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !5222, !tbaa !672
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i64 0, i64 0)), !dbg !5224
  call void @exit(i32 1) #11, !dbg !5225
  unreachable, !dbg !5225

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 0, !dbg !5226
  store i8* %44, i8** %50, align 8, !dbg !5227, !tbaa !591
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 0, !dbg !5228
  %52 = load i8*, i8** %51, align 8, !dbg !5228, !tbaa !591
  %53 = call i8* @strcpy(i8* %52, i8* %1) #8, !dbg !5229
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 2, !dbg !5230
  store i32 0, i32* %54, align 8, !dbg !5231, !tbaa !1669
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 3, !dbg !5232
  store i32 0, i32* %55, align 4, !dbg !5233, !tbaa !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !5170, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.value(metadata i64 0, metadata !5170, metadata !DIExpression()), !dbg !5177
  br label %56, !dbg !5234

56:                                               ; preds = %49, %59
  %indvars.iv310 = phi i64 [ 0, %49 ], [ %indvars.iv.next4, %59 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv310, metadata !5170, metadata !DIExpression()), !dbg !5177
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 4, !dbg !5236
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %57, i64 0, i64 %indvars.iv310, !dbg !5238
  store i32 -1, i32* %58, align 4, !dbg !5239, !tbaa !2389
  br label %59, !dbg !5238

59:                                               ; preds = %56
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv310, 1, !dbg !5240
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !5170, metadata !DIExpression()), !dbg !5177
  %exitcond = icmp ne i64 %indvars.iv.next4, 8, !dbg !5241
  br i1 %exitcond, label %56, label %60, !dbg !5234, !llvm.loop !5242

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 0, !dbg !5244
  %62 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %61, i32 0, i32 5, !dbg !5245
  %63 = load %struct.residue_t*, %struct.residue_t** %62, align 8, !dbg !5245, !tbaa !2887
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 5, !dbg !5246
  store %struct.residue_t* %63, %struct.residue_t** %64, align 8, !dbg !5247, !tbaa !2887
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 6, !dbg !5248
  store double 0.000000e+00, double* %65, align 8, !dbg !5249, !tbaa !2890
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 7, !dbg !5250
  store double 1.000000e+00, double* %66, align 8, !dbg !5251, !tbaa !2893
  %67 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 17, !dbg !5252
  %68 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 0, i64 0, !dbg !5253
  store double 0.000000e+00, double* %68, align 8, !dbg !5254, !tbaa !456
  %69 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 17, !dbg !5255
  %70 = getelementptr inbounds [3 x double], [3 x double]* %69, i64 0, i64 1, !dbg !5256
  store double 0.000000e+00, double* %70, align 8, !dbg !5257, !tbaa !456
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 17, !dbg !5258
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 0, i64 2, !dbg !5259
  store double 0.000000e+00, double* %72, align 8, !dbg !5260, !tbaa !456
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i32 0, i32 18, !dbg !5261
  store double 0.000000e+00, double* %73, align 8, !dbg !5262, !tbaa !2594
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16, !dbg !5263
  %75 = load i32*, i32** %74, align 8, !dbg !5263, !tbaa !574
  call void @llvm.dbg.value(metadata i32* %75, metadata !5175, metadata !DIExpression()), !dbg !5177
  %76 = icmp ne i32* %75, null, !dbg !5265
  br i1 %76, label %77, label %92, !dbg !5266

77:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 0, metadata !5169, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.value(metadata i64 0, metadata !5169, metadata !DIExpression()), !dbg !5177
  %78 = sub nsw i32 %5, 1, !dbg !5267
  %79 = sext i32 %78 to i64, !dbg !5271
  %80 = icmp slt i64 0, %79, !dbg !5271
  br i1 %80, label %.lr.ph17, label %87, !dbg !5272

.lr.ph17:                                         ; preds = %77
  br label %81, !dbg !5272

81:                                               ; preds = %.lr.ph17, %85
  %indvars.iv715 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next8, %85 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv715, metadata !5169, metadata !DIExpression()), !dbg !5177
  %82 = getelementptr inbounds i32, i32* %75, i64 %indvars.iv715, !dbg !5273
  %83 = load i32, i32* %82, align 4, !dbg !5273, !tbaa !2389
  %84 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv715, !dbg !5274
  store i32 %83, i32* %84, align 4, !dbg !5275, !tbaa !2389
  br label %85, !dbg !5274

85:                                               ; preds = %81
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv715, 1, !dbg !5276
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !5169, metadata !DIExpression()), !dbg !5177
  %86 = icmp slt i64 %indvars.iv.next8, %79, !dbg !5271
  br i1 %86, label %81, label %._crit_edge18, !dbg !5272, !llvm.loop !5277

._crit_edge18:                                    ; preds = %85
  br label %87, !dbg !5272

87:                                               ; preds = %._crit_edge18, %77
  %88 = sub nsw i32 %5, 1, !dbg !5279
  %89 = sub nsw i32 %5, 1, !dbg !5280
  %90 = sext i32 %89 to i64, !dbg !5281
  %91 = getelementptr inbounds i32, i32* %18, i64 %90, !dbg !5281
  store i32 %88, i32* %91, align 4, !dbg !5282, !tbaa !2389
  br label %101, !dbg !5283

92:                                               ; preds = %60
  call void @llvm.dbg.value(metadata i32 0, metadata !5169, metadata !DIExpression()), !dbg !5177
  %93 = sext i32 %5 to i64, !dbg !5284
  call void @llvm.dbg.value(metadata i64 0, metadata !5169, metadata !DIExpression()), !dbg !5177
  %94 = icmp slt i64 0, %93, !dbg !5287
  br i1 %94, label %.lr.ph13, label %100, !dbg !5289

.lr.ph13:                                         ; preds = %92
  br label %95, !dbg !5289

95:                                               ; preds = %.lr.ph13, %98
  %indvars.iv511 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next6, %98 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv511, metadata !5169, metadata !DIExpression()), !dbg !5177
  %96 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv511, !dbg !5290
  %97 = trunc i64 %indvars.iv511 to i32, !dbg !5291
  store i32 %97, i32* %96, align 4, !dbg !5291, !tbaa !2389
  br label %98, !dbg !5290

98:                                               ; preds = %95
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv511, 1, !dbg !5292
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !5169, metadata !DIExpression()), !dbg !5177
  %99 = icmp slt i64 %indvars.iv.next6, %93, !dbg !5287
  br i1 %99, label %95, label %._crit_edge14, !dbg !5289, !llvm.loop !5293

._crit_edge14:                                    ; preds = %98
  br label %100, !dbg !5289

100:                                              ; preds = %._crit_edge14, %92
  br label %101

101:                                              ; preds = %100, %87
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 16, !dbg !5295
  store i32* %18, i32** %102, align 8, !dbg !5296, !tbaa !574
  %103 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !5297
  %104 = load i32, i32* %103, align 8, !dbg !5298, !tbaa !585
  %105 = add nsw i32 %104, 1, !dbg !5298
  store i32 %105, i32* %103, align 8, !dbg !5298, !tbaa !585
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !5299
  store %struct.atom_t* %9, %struct.atom_t** %106, align 8, !dbg !5300, !tbaa !582
  %107 = icmp ne i32* %75, null, !dbg !5301
  br i1 %107, label %108, label %110, !dbg !5303

108:                                              ; preds = %101
  %109 = bitcast i32* %75 to i8*, !dbg !5304
  call void @free(i8* %109) #8, !dbg !5305
  br label %110, !dbg !5305

110:                                              ; preds = %108, %101
  %111 = bitcast %struct.atom_t* %25 to i8*, !dbg !5306
  call void @free(i8* %111) #8, !dbg !5307
  br label %112, !dbg !5308

112:                                              ; preds = %110, %20, %11
  %.0 = phi i32 [ 1, %11 ], [ 1, %20 ], [ 0, %110 ], !dbg !5177
  ret i32 %.0, !dbg !5309
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

declare !dbg !279 dso_local i32 @fflush(%struct._IO_FILE*) #4

declare !dbg !337 dso_local void @perror(i8*) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!435, !436, !437}
!llvm.ident = !{!438}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "e_msg", scope: !2, file: !3, line: 25, type: !432, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !342, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "molutil.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!10 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!14 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!15 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!17 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!20 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!21 = !{!22, !237, !238, !243, !38, !241, !55, !247, !72, !250, !253, !256, !259, !262, !265, !36, !268, !269, !275, !277, !102, !278, !279, !337}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !24, line: 126, baseType: !25)
!24 = !DIFile(filename: "./nabtypes.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !24, line: 118, size: 1088, elements: !26)
!26 = !{!27, !34, !37, !131, !132, !133, !134}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !25, file: !24, line: 119, baseType: !28, size: 768)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !24, line: 13, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 768, elements: !31)
!30 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!31 = !{!32, !33}
!32 = !DISubrange(count: 4)
!33 = !DISubrange(count: 3)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !25, file: !24, line: 120, baseType: !35, size: 32, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !24, line: 6, baseType: !36)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !25, file: !24, line: 121, baseType: !38, size: 64, offset: 832)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !24, line: 93, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !24, line: 84, size: 384, elements: !41)
!41 = !{!42, !46, !47, !48, !50, !52, !53, !54}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !40, file: !24, line: 85, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !24, line: 17, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !40, file: !24, line: 86, baseType: !35, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !40, file: !24, line: 87, baseType: !35, size: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !40, file: !24, line: 88, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !40, file: !24, line: 89, baseType: !51, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !40, file: !24, line: 90, baseType: !35, size: 32, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !40, file: !24, line: 91, baseType: !35, size: 32, offset: 288)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !40, file: !24, line: 92, baseType: !55, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !24, line: 82, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !24, line: 63, size: 1024, elements: !59)
!59 = !{!60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !81, !82, !88, !89, !98, !99, !101}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !58, file: !24, line: 64, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !58, file: !24, line: 65, baseType: !35, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !58, file: !24, line: 66, baseType: !35, size: 32, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !58, file: !24, line: 67, baseType: !35, size: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !58, file: !24, line: 68, baseType: !43, size: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !58, file: !24, line: 69, baseType: !43, size: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !58, file: !24, line: 70, baseType: !35, size: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !58, file: !24, line: 71, baseType: !35, size: 32, offset: 352)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !58, file: !24, line: 72, baseType: !35, size: 32, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !58, file: !24, line: 73, baseType: !51, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !58, file: !24, line: 74, baseType: !72, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !24, line: 52, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !24, line: 47, size: 192, elements: !75)
!75 = !{!76, !78, !79, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !74, file: !24, line: 48, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !74, file: !24, line: 49, baseType: !35, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !74, file: !24, line: 50, baseType: !35, size: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !74, file: !24, line: 51, baseType: !35, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !58, file: !24, line: 75, baseType: !35, size: 32, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !58, file: !24, line: 76, baseType: !83, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !24, line: 54, baseType: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 2)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !58, file: !24, line: 77, baseType: !35, size: 32, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !58, file: !24, line: 78, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !24, line: 61, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !24, line: 58, size: 192, elements: !93)
!93 = !{!94, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !92, file: !24, line: 59, baseType: !95, size: 128)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !96)
!96 = !{!32}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !92, file: !24, line: 60, baseType: !30, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !58, file: !24, line: 79, baseType: !35, size: 32, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !58, file: !24, line: 80, baseType: !100, size: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !58, file: !24, line: 81, baseType: !102, size: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !24, line: 45, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !24, line: 25, size: 1408, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !130}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !104, file: !24, line: 26, baseType: !43, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !104, file: !24, line: 27, baseType: !43, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !104, file: !24, line: 28, baseType: !35, size: 32, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !104, file: !24, line: 29, baseType: !35, size: 32, offset: 160)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !104, file: !24, line: 30, baseType: !111, size: 256, offset: 192)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 8)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !104, file: !24, line: 31, baseType: !61, size: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !104, file: !24, line: 32, baseType: !30, size: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !104, file: !24, line: 33, baseType: !30, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !104, file: !24, line: 34, baseType: !30, size: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !104, file: !24, line: 35, baseType: !30, size: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !104, file: !24, line: 36, baseType: !43, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !104, file: !24, line: 37, baseType: !35, size: 32, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !104, file: !24, line: 38, baseType: !30, size: 64, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !104, file: !24, line: 39, baseType: !30, size: 64, offset: 960)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !104, file: !24, line: 40, baseType: !35, size: 32, offset: 1024)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !104, file: !24, line: 41, baseType: !35, size: 32, offset: 1056)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !104, file: !24, line: 42, baseType: !43, size: 64, offset: 1088)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !104, file: !24, line: 43, baseType: !127, size: 192, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !24, line: 12, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 192, elements: !129)
!129 = !{!33}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !104, file: !24, line: 44, baseType: !30, size: 64, offset: 1344)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !25, file: !24, line: 122, baseType: !35, size: 32, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !25, file: !24, line: 123, baseType: !35, size: 32, offset: 928)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !25, file: !24, line: 124, baseType: !35, size: 32, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !25, file: !24, line: 125, baseType: !135, size: 64, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !24, line: 115, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !24, line: 95, size: 5760, elements: !138)
!138 = !{!139, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !137, file: !24, line: 96, baseType: !140, size: 648)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 648, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 81)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !137, file: !24, line: 97, baseType: !35, size: 32, offset: 672)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !137, file: !24, line: 97, baseType: !35, size: 32, offset: 704)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !137, file: !24, line: 97, baseType: !35, size: 32, offset: 736)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !137, file: !24, line: 98, baseType: !35, size: 32, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !137, file: !24, line: 98, baseType: !35, size: 32, offset: 800)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !137, file: !24, line: 98, baseType: !35, size: 32, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !137, file: !24, line: 98, baseType: !35, size: 32, offset: 864)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !137, file: !24, line: 98, baseType: !35, size: 32, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !137, file: !24, line: 98, baseType: !35, size: 32, offset: 928)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !137, file: !24, line: 99, baseType: !35, size: 32, offset: 960)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !137, file: !24, line: 99, baseType: !35, size: 32, offset: 992)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !137, file: !24, line: 99, baseType: !35, size: 32, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !137, file: !24, line: 99, baseType: !35, size: 32, offset: 1056)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !137, file: !24, line: 99, baseType: !35, size: 32, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !137, file: !24, line: 99, baseType: !35, size: 32, offset: 1120)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !137, file: !24, line: 100, baseType: !35, size: 32, offset: 1152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !137, file: !24, line: 100, baseType: !35, size: 32, offset: 1184)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !137, file: !24, line: 100, baseType: !35, size: 32, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !137, file: !24, line: 100, baseType: !35, size: 32, offset: 1248)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !137, file: !24, line: 100, baseType: !35, size: 32, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !137, file: !24, line: 100, baseType: !35, size: 32, offset: 1312)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !137, file: !24, line: 101, baseType: !35, size: 32, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !137, file: !24, line: 101, baseType: !35, size: 32, offset: 1376)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !137, file: !24, line: 101, baseType: !35, size: 32, offset: 1408)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !137, file: !24, line: 101, baseType: !35, size: 32, offset: 1440)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !137, file: !24, line: 101, baseType: !35, size: 32, offset: 1472)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !137, file: !24, line: 101, baseType: !35, size: 32, offset: 1504)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !137, file: !24, line: 101, baseType: !35, size: 32, offset: 1536)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !137, file: !24, line: 101, baseType: !35, size: 32, offset: 1568)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !137, file: !24, line: 102, baseType: !35, size: 32, offset: 1600)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !137, file: !24, line: 102, baseType: !35, size: 32, offset: 1632)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !137, file: !24, line: 102, baseType: !35, size: 32, offset: 1664)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !137, file: !24, line: 103, baseType: !43, size: 64, offset: 1728)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !137, file: !24, line: 103, baseType: !43, size: 64, offset: 1792)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !137, file: !24, line: 103, baseType: !43, size: 64, offset: 1856)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !137, file: !24, line: 103, baseType: !43, size: 64, offset: 1920)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 1984)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 2048)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 2112)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 2176)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 2240)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 2304)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 2368)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 2432)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !137, file: !24, line: 104, baseType: !180, size: 64, offset: 2496)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !137, file: !24, line: 105, baseType: !180, size: 64, offset: 2560)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !137, file: !24, line: 105, baseType: !180, size: 64, offset: 2624)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !137, file: !24, line: 105, baseType: !180, size: 64, offset: 2688)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !137, file: !24, line: 105, baseType: !180, size: 64, offset: 2752)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !137, file: !24, line: 105, baseType: !180, size: 64, offset: 2816)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !137, file: !24, line: 105, baseType: !180, size: 64, offset: 2880)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !137, file: !24, line: 105, baseType: !180, size: 64, offset: 2944)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !137, file: !24, line: 106, baseType: !128, size: 192, offset: 3008)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !137, file: !24, line: 106, baseType: !30, size: 64, offset: 3200)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !137, file: !24, line: 106, baseType: !30, size: 64, offset: 3264)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !137, file: !24, line: 106, baseType: !30, size: 64, offset: 3328)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !137, file: !24, line: 106, baseType: !30, size: 64, offset: 3392)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !137, file: !24, line: 106, baseType: !30, size: 64, offset: 3456)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !137, file: !24, line: 107, baseType: !100, size: 64, offset: 3520)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !137, file: !24, line: 107, baseType: !100, size: 64, offset: 3584)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !137, file: !24, line: 107, baseType: !100, size: 64, offset: 3648)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !137, file: !24, line: 107, baseType: !100, size: 64, offset: 3712)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !137, file: !24, line: 107, baseType: !100, size: 64, offset: 3776)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !137, file: !24, line: 107, baseType: !100, size: 64, offset: 3840)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !137, file: !24, line: 108, baseType: !100, size: 64, offset: 3904)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !137, file: !24, line: 108, baseType: !100, size: 64, offset: 3968)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !137, file: !24, line: 108, baseType: !100, size: 64, offset: 4032)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !137, file: !24, line: 108, baseType: !100, size: 64, offset: 4096)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !137, file: !24, line: 108, baseType: !100, size: 64, offset: 4160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !137, file: !24, line: 108, baseType: !100, size: 64, offset: 4224)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !137, file: !24, line: 109, baseType: !100, size: 64, offset: 4288)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !137, file: !24, line: 109, baseType: !100, size: 64, offset: 4352)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !137, file: !24, line: 109, baseType: !100, size: 64, offset: 4416)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !137, file: !24, line: 109, baseType: !100, size: 64, offset: 4480)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !137, file: !24, line: 109, baseType: !100, size: 64, offset: 4544)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !137, file: !24, line: 110, baseType: !100, size: 64, offset: 4608)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !137, file: !24, line: 110, baseType: !100, size: 64, offset: 4672)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !137, file: !24, line: 110, baseType: !100, size: 64, offset: 4736)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !137, file: !24, line: 110, baseType: !100, size: 64, offset: 4800)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !137, file: !24, line: 110, baseType: !100, size: 64, offset: 4864)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !137, file: !24, line: 111, baseType: !100, size: 64, offset: 4928)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !137, file: !24, line: 111, baseType: !100, size: 64, offset: 4992)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !137, file: !24, line: 111, baseType: !100, size: 64, offset: 5056)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !137, file: !24, line: 111, baseType: !100, size: 64, offset: 5120)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !137, file: !24, line: 111, baseType: !100, size: 64, offset: 5184)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !137, file: !24, line: 111, baseType: !100, size: 64, offset: 5248)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !137, file: !24, line: 112, baseType: !100, size: 64, offset: 5312)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !137, file: !24, line: 112, baseType: !100, size: 64, offset: 5376)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !137, file: !24, line: 112, baseType: !100, size: 64, offset: 5440)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !137, file: !24, line: 112, baseType: !100, size: 64, offset: 5504)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !137, file: !24, line: 113, baseType: !100, size: 64, offset: 5568)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !137, file: !24, line: 113, baseType: !100, size: 64, offset: 5632)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !137, file: !24, line: 114, baseType: !180, size: 64, offset: 5696)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!238 = !DISubprogram(name: "rt_errormsg_s", scope: !3, file: !3, line: 28, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!239 = !DISubroutineType(types: !240)
!240 = !{!36, !36, !241, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!242 = !{}
!243 = !DISubprogram(name: "free", scope: !244, file: !244, line: 565, type: !245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!244 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!245 = !DISubroutineType(types: !246)
!246 = !{null, !237}
!247 = !DISubprogram(name: "copyresidue", scope: !3, file: !3, line: 96, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!248 = !DISubroutineType(types: !249)
!249 = !{!61, !61}
!250 = !DISubprogram(name: "upd_molnumbers", scope: !3, file: !3, line: 69, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !49}
!253 = !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 29, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!254 = !DISubroutineType(types: !255)
!255 = !{!36, !49, !241}
!256 = !DISubprogram(name: "setpoint", scope: !3, file: !3, line: 30, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!257 = !DISubroutineType(types: !258)
!258 = !{!36, !49, !241, !180}
!259 = !DISubprogram(name: "distp", scope: !3, file: !3, line: 42, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!260 = !DISubroutineType(types: !261)
!261 = !{!30, !180, !180}
!262 = !DISubprogram(name: "anglep", scope: !3, file: !3, line: 44, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!263 = !DISubroutineType(types: !264)
!264 = !{!30, !180, !180, !180}
!265 = !DISubprogram(name: "torsionp", scope: !3, file: !3, line: 46, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!266 = !DISubroutineType(types: !267)
!267 = !{!30, !180, !180, !180, !180}
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !DISubprogram(name: "NAB_matcpy", scope: !3, file: !3, line: 79, type: !270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !237, !237}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1024, elements: !274)
!274 = !{!32, !32}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_T", file: !24, line: 14, baseType: !273)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!278 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!279 = !DISubprogram(name: "fflush", scope: !280, file: !280, line: 218, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!280 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!281 = !DISubroutineType(types: !282)
!282 = !{!36, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !285, line: 49, size: 1728, elements: !286)
!285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !302, !303, !304, !305, !308, !309, !311, !315, !318, !320, !323, !326, !327, !328, !332, !333}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !284, file: !285, line: 51, baseType: !36, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !284, file: !285, line: 54, baseType: !241, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !284, file: !285, line: 55, baseType: !241, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !284, file: !285, line: 56, baseType: !241, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !284, file: !285, line: 57, baseType: !241, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !284, file: !285, line: 58, baseType: !241, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !284, file: !285, line: 59, baseType: !241, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !284, file: !285, line: 60, baseType: !241, size: 64, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !284, file: !285, line: 61, baseType: !241, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !284, file: !285, line: 64, baseType: !241, size: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !284, file: !285, line: 65, baseType: !241, size: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !284, file: !285, line: 66, baseType: !241, size: 64, offset: 704)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !284, file: !285, line: 68, baseType: !300, size: 64, offset: 768)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !285, line: 36, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !284, file: !285, line: 70, baseType: !283, size: 64, offset: 832)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !284, file: !285, line: 72, baseType: !36, size: 32, offset: 896)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !284, file: !285, line: 73, baseType: !36, size: 32, offset: 928)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !284, file: !285, line: 74, baseType: !306, size: 64, offset: 960)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !307, line: 152, baseType: !278)
!307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !284, file: !285, line: 77, baseType: !268, size: 16, offset: 1024)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !284, file: !285, line: 78, baseType: !310, size: 8, offset: 1040)
!310 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !284, file: !285, line: 79, baseType: !312, size: 8, offset: 1048)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 1)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !284, file: !285, line: 81, baseType: !316, size: 64, offset: 1088)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !285, line: 43, baseType: null)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !284, file: !285, line: 89, baseType: !319, size: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !307, line: 153, baseType: !278)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !284, file: !285, line: 91, baseType: !321, size: 64, offset: 1216)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !285, line: 37, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !284, file: !285, line: 92, baseType: !324, size: 64, offset: 1280)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !285, line: 38, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !284, file: !285, line: 93, baseType: !283, size: 64, offset: 1344)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !284, file: !285, line: 94, baseType: !237, size: 64, offset: 1408)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !284, file: !285, line: 95, baseType: !329, size: 64, offset: 1472)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !330, line: 46, baseType: !331)
!330 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!331 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !284, file: !285, line: 96, baseType: !36, size: 32, offset: 1536)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !284, file: !285, line: 98, baseType: !334, size: 160, offset: 1568)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 20)
!337 = !DISubprogram(name: "perror", scope: !280, file: !280, line: 775, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !242)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!342 = !{!343, !350, !360, !371, !379, !395, !406, !420, !0}
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "rname", scope: !345, file: !3, line: 733, type: !241, isLocal: true, isDefinition: true)
!345 = distinct !DISubprogram(name: "getresname", scope: !3, file: !3, line: 731, type: !346, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!241, !56}
!348 = !{!349}
!349 = !DILocalVariable(name: "res", arg: 1, scope: !345, file: !3, line: 731, type: !56)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "rv_err", scope: !352, file: !3, line: 1117, type: !36, isLocal: true, isDefinition: true)
!352 = distinct !DISubprogram(name: "NAB_rri", scope: !3, file: !3, line: 1113, type: !353, scopeLine: 1114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{!277, !56, !241}
!355 = !{!356, !357, !358, !359}
!356 = !DILocalVariable(name: "res", arg: 1, scope: !352, file: !3, line: 1113, type: !56)
!357 = !DILocalVariable(name: "key", arg: 2, scope: !352, file: !3, line: 1113, type: !241)
!358 = !DILocalVariable(name: "sp", scope: !352, file: !3, line: 1115, type: !38)
!359 = !DILocalVariable(name: "mp", scope: !352, file: !3, line: 1116, type: !22)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "rv_err", scope: !362, file: !3, line: 1162, type: !36, isLocal: true, isDefinition: true)
!362 = distinct !DISubprogram(name: "NAB_ari", scope: !3, file: !3, line: 1160, type: !363, scopeLine: 1161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{!277, !102, !241}
!365 = !{!366, !367, !368, !369, !370}
!366 = !DILocalVariable(name: "ap", arg: 1, scope: !362, file: !3, line: 1160, type: !102)
!367 = !DILocalVariable(name: "key", arg: 2, scope: !362, file: !3, line: 1160, type: !241)
!368 = !DILocalVariable(name: "res", scope: !362, file: !3, line: 1163, type: !56)
!369 = !DILocalVariable(name: "sp", scope: !362, file: !3, line: 1164, type: !38)
!370 = !DILocalVariable(name: "mp", scope: !362, file: !3, line: 1165, type: !22)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "f", scope: !373, file: !3, line: 1212, type: !30, isLocal: true, isDefinition: true)
!373 = distinct !DISubprogram(name: "NAB_arf", scope: !3, file: !3, line: 1210, type: !374, scopeLine: 1211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{!180, !102, !241}
!376 = !{!377, !378}
!377 = !DILocalVariable(name: "ap", arg: 1, scope: !373, file: !3, line: 1210, type: !102)
!378 = !DILocalVariable(name: "key", arg: 2, scope: !373, file: !3, line: 1210, type: !241)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "mp", scope: !381, file: !3, line: 1318, type: !276, isLocal: true, isDefinition: true)
!381 = distinct !DISubprogram(name: "newtransform", scope: !3, file: !3, line: 1315, type: !382, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!275, !30, !30, !30, !30, !30, !30}
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!385 = !DILocalVariable(name: "dx", arg: 1, scope: !381, file: !3, line: 1315, type: !30)
!386 = !DILocalVariable(name: "dy", arg: 2, scope: !381, file: !3, line: 1315, type: !30)
!387 = !DILocalVariable(name: "dz", arg: 3, scope: !381, file: !3, line: 1315, type: !30)
!388 = !DILocalVariable(name: "rx", arg: 4, scope: !381, file: !3, line: 1315, type: !30)
!389 = !DILocalVariable(name: "ry", arg: 5, scope: !381, file: !3, line: 1315, type: !30)
!390 = !DILocalVariable(name: "rz", arg: 6, scope: !381, file: !3, line: 1315, type: !30)
!391 = !DILocalVariable(name: "temp", scope: !381, file: !3, line: 1317, type: !237)
!392 = !DILocalVariable(name: "rmat", scope: !381, file: !3, line: 1319, type: !276)
!393 = !DILocalVariable(name: "r1mat", scope: !381, file: !3, line: 1319, type: !276)
!394 = !DILocalVariable(name: "tmat", scope: !381, file: !3, line: 1319, type: !276)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "mr", scope: !397, file: !3, line: 1431, type: !276, isLocal: true, isDefinition: true)
!397 = distinct !DISubprogram(name: "updtransform", scope: !3, file: !3, line: 1428, type: !398, scopeLine: 1429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!398 = !DISubroutineType(types: !399)
!399 = !{!275, !400, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 256, elements: !96)
!402 = !{!403, !404, !405}
!403 = !DILocalVariable(name: "m1", arg: 1, scope: !397, file: !3, line: 1428, type: !400)
!404 = !DILocalVariable(name: "m2", arg: 2, scope: !397, file: !3, line: 1428, type: !400)
!405 = !DILocalVariable(name: "temp", scope: !397, file: !3, line: 1430, type: !237)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "mat", scope: !408, file: !3, line: 1443, type: !276, isLocal: true, isDefinition: true)
!408 = distinct !DISubprogram(name: "trans4p", scope: !3, file: !3, line: 1439, type: !409, scopeLine: 1440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!275, !180, !180, !30}
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419}
!412 = !DILocalVariable(name: "p1", arg: 1, scope: !408, file: !3, line: 1439, type: !180)
!413 = !DILocalVariable(name: "p2", arg: 2, scope: !408, file: !3, line: 1439, type: !180)
!414 = !DILocalVariable(name: "d", arg: 3, scope: !408, file: !3, line: 1439, type: !30)
!415 = !DILocalVariable(name: "temp", scope: !408, file: !3, line: 1441, type: !237)
!416 = !DILocalVariable(name: "dx", scope: !408, file: !3, line: 1442, type: !30)
!417 = !DILocalVariable(name: "dy", scope: !408, file: !3, line: 1442, type: !30)
!418 = !DILocalVariable(name: "dz", scope: !408, file: !3, line: 1442, type: !30)
!419 = !DILocalVariable(name: "len", scope: !408, file: !3, line: 1442, type: !30)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "mat5", scope: !422, file: !3, line: 1474, type: !276, isLocal: true, isDefinition: true)
!422 = distinct !DISubprogram(name: "rot4p", scope: !3, file: !3, line: 1470, type: !409, scopeLine: 1471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431}
!424 = !DILocalVariable(name: "p1", arg: 1, scope: !422, file: !3, line: 1470, type: !180)
!425 = !DILocalVariable(name: "p2", arg: 2, scope: !422, file: !3, line: 1470, type: !180)
!426 = !DILocalVariable(name: "angle", arg: 3, scope: !422, file: !3, line: 1470, type: !30)
!427 = !DILocalVariable(name: "temp", scope: !422, file: !3, line: 1472, type: !237)
!428 = !DILocalVariable(name: "mat1", scope: !422, file: !3, line: 1473, type: !276)
!429 = !DILocalVariable(name: "mat2", scope: !422, file: !3, line: 1473, type: !276)
!430 = !DILocalVariable(name: "mat3", scope: !422, file: !3, line: 1473, type: !276)
!431 = !DILocalVariable(name: "mat4", scope: !422, file: !3, line: 1473, type: !276)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 256)
!435 = !{i32 7, !"Dwarf Version", i32 4}
!436 = !{i32 2, !"Debug Info Version", i32 3}
!437 = !{i32 1, !"wchar_size", i32 4}
!438 = !{!"clang version 10.0.0-4ubuntu1 "}
!439 = distinct !DISubprogram(name: "newmolecule", scope: !3, file: !3, line: 119, type: !440, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!22}
!442 = !{!443}
!443 = !DILocalVariable(name: "mp", scope: !439, file: !3, line: 121, type: !22)
!444 = !DILocation(line: 123, column: 26, scope: !445)
!445 = distinct !DILexicalBlock(scope: !439, file: !3, line: 123, column: 5)
!446 = !DILocation(line: 123, column: 12, scope: !445)
!447 = !DILocation(line: 0, scope: !439)
!448 = !DILocation(line: 123, column: 54, scope: !445)
!449 = !DILocation(line: 123, column: 5, scope: !439)
!450 = !DILocation(line: 124, column: 3, scope: !451)
!451 = distinct !DILexicalBlock(scope: !445, file: !3, line: 123, column: 63)
!452 = !DILocation(line: 125, column: 3, scope: !451)
!453 = !DILocation(line: 130, column: 6, scope: !439)
!454 = !DILocation(line: 130, column: 2, scope: !439)
!455 = !DILocation(line: 130, column: 24, scope: !439)
!456 = !{!457, !457, i64 0}
!457 = !{!"double", !458, i64 0}
!458 = !{!"omnipotent char", !459, i64 0}
!459 = !{!"Simple C/C++ TBAA"}
!460 = !DILocation(line: 131, column: 6, scope: !439)
!461 = !DILocation(line: 131, column: 2, scope: !439)
!462 = !DILocation(line: 131, column: 24, scope: !439)
!463 = !DILocation(line: 132, column: 6, scope: !439)
!464 = !DILocation(line: 132, column: 2, scope: !439)
!465 = !DILocation(line: 132, column: 24, scope: !439)
!466 = !DILocation(line: 134, column: 6, scope: !439)
!467 = !DILocation(line: 134, column: 2, scope: !439)
!468 = !DILocation(line: 134, column: 24, scope: !439)
!469 = !DILocation(line: 135, column: 6, scope: !439)
!470 = !DILocation(line: 135, column: 2, scope: !439)
!471 = !DILocation(line: 135, column: 24, scope: !439)
!472 = !DILocation(line: 136, column: 6, scope: !439)
!473 = !DILocation(line: 136, column: 2, scope: !439)
!474 = !DILocation(line: 136, column: 24, scope: !439)
!475 = !DILocation(line: 138, column: 6, scope: !439)
!476 = !DILocation(line: 138, column: 2, scope: !439)
!477 = !DILocation(line: 138, column: 24, scope: !439)
!478 = !DILocation(line: 139, column: 6, scope: !439)
!479 = !DILocation(line: 139, column: 2, scope: !439)
!480 = !DILocation(line: 139, column: 24, scope: !439)
!481 = !DILocation(line: 140, column: 6, scope: !439)
!482 = !DILocation(line: 140, column: 2, scope: !439)
!483 = !DILocation(line: 140, column: 24, scope: !439)
!484 = !DILocation(line: 142, column: 6, scope: !439)
!485 = !DILocation(line: 142, column: 2, scope: !439)
!486 = !DILocation(line: 142, column: 24, scope: !439)
!487 = !DILocation(line: 143, column: 6, scope: !439)
!488 = !DILocation(line: 143, column: 2, scope: !439)
!489 = !DILocation(line: 143, column: 24, scope: !439)
!490 = !DILocation(line: 144, column: 6, scope: !439)
!491 = !DILocation(line: 144, column: 2, scope: !439)
!492 = !DILocation(line: 144, column: 24, scope: !439)
!493 = !DILocation(line: 146, column: 6, scope: !439)
!494 = !DILocation(line: 146, column: 17, scope: !439)
!495 = !{!496, !497, i64 96}
!496 = !{!"molecule_t", !458, i64 0, !497, i64 96, !498, i64 104, !497, i64 112, !497, i64 116, !497, i64 120, !498, i64 128}
!497 = !{!"int", !458, i64 0}
!498 = !{!"any pointer", !458, i64 0}
!499 = !DILocation(line: 147, column: 6, scope: !439)
!500 = !DILocation(line: 147, column: 16, scope: !439)
!501 = !{!496, !498, i64 104}
!502 = !DILocation(line: 150, column: 6, scope: !439)
!503 = !DILocation(line: 150, column: 18, scope: !439)
!504 = !{!496, !497, i64 112}
!505 = !DILocation(line: 152, column: 6, scope: !439)
!506 = !DILocation(line: 152, column: 15, scope: !439)
!507 = !{!496, !497, i64 120}
!508 = !DILocation(line: 154, column: 6, scope: !439)
!509 = !DILocation(line: 154, column: 12, scope: !439)
!510 = !{!496, !498, i64 128}
!511 = !DILocation(line: 156, column: 2, scope: !439)
!512 = !DILocation(line: 157, column: 1, scope: !439)
!513 = distinct !DISubprogram(name: "freeresidue", scope: !3, file: !3, line: 159, type: !514, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!36, !56}
!516 = !{!517, !518, !519, !520, !521}
!517 = !DILocalVariable(name: "res", arg: 1, scope: !513, file: !3, line: 159, type: !56)
!518 = !DILocalVariable(name: "a", scope: !513, file: !3, line: 161, type: !36)
!519 = !DILocalVariable(name: "ap", scope: !513, file: !3, line: 162, type: !102)
!520 = !DILocalVariable(name: "ep", scope: !513, file: !3, line: 163, type: !72)
!521 = !DILocalVariable(name: "epn", scope: !513, file: !3, line: 163, type: !72)
!522 = !DILocation(line: 0, scope: !513)
!523 = !DILocation(line: 165, column: 8, scope: !524)
!524 = distinct !DILexicalBlock(scope: !513, file: !3, line: 165, column: 7)
!525 = !DILocation(line: 165, column: 7, scope: !513)
!526 = !DILocation(line: 166, column: 3, scope: !524)
!527 = !DILocation(line: 168, column: 11, scope: !528)
!528 = distinct !DILexicalBlock(scope: !513, file: !3, line: 168, column: 6)
!529 = !{!530, !498, i64 24}
!530 = !{!"residue_t", !498, i64 0, !497, i64 8, !497, i64 12, !497, i64 16, !498, i64 24, !498, i64 32, !497, i64 40, !497, i64 44, !497, i64 48, !498, i64 56, !498, i64 64, !497, i64 72, !498, i64 80, !497, i64 88, !498, i64 96, !497, i64 104, !498, i64 112, !498, i64 120}
!531 = !DILocation(line: 168, column: 6, scope: !528)
!532 = !DILocation(line: 168, column: 6, scope: !513)
!533 = !DILocation(line: 169, column: 25, scope: !528)
!534 = !DILocation(line: 169, column: 3, scope: !528)
!535 = !DILocation(line: 170, column: 11, scope: !536)
!536 = distinct !DILexicalBlock(scope: !513, file: !3, line: 170, column: 6)
!537 = !{!530, !498, i64 32}
!538 = !DILocation(line: 170, column: 6, scope: !536)
!539 = !DILocation(line: 170, column: 6, scope: !513)
!540 = !DILocation(line: 171, column: 25, scope: !536)
!541 = !DILocation(line: 171, column: 3, scope: !536)
!542 = !DILocation(line: 172, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !513, file: !3, line: 172, column: 2)
!544 = !{!530, !498, i64 64}
!545 = !DILocation(line: 172, column: 2, scope: !543)
!546 = !DILocation(line: 173, column: 13, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 172, column: 43)
!548 = distinct !DILexicalBlock(scope: !543, file: !3, line: 172, column: 2)
!549 = !{!550, !498, i64 0}
!550 = !{!"extbond_t", !498, i64 0, !497, i64 8, !497, i64 12, !497, i64 16}
!551 = !DILocation(line: 174, column: 9, scope: !547)
!552 = !DILocation(line: 174, column: 3, scope: !547)
!553 = !DILocation(line: 175, column: 2, scope: !547)
!554 = distinct !{!554, !545, !555}
!555 = !DILocation(line: 175, column: 2, scope: !543)
!556 = !DILocation(line: 176, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !513, file: !3, line: 176, column: 6)
!558 = !{!530, !498, i64 80}
!559 = !DILocation(line: 176, column: 6, scope: !557)
!560 = !DILocation(line: 176, column: 6, scope: !513)
!561 = !DILocation(line: 177, column: 25, scope: !557)
!562 = !DILocation(line: 177, column: 9, scope: !557)
!563 = !DILocation(line: 177, column: 3, scope: !557)
!564 = !DILocation(line: 178, column: 11, scope: !565)
!565 = distinct !DILexicalBlock(scope: !513, file: !3, line: 178, column: 6)
!566 = !{!530, !498, i64 96}
!567 = !DILocation(line: 178, column: 6, scope: !565)
!568 = !DILocation(line: 178, column: 6, scope: !513)
!569 = !DILocation(line: 179, column: 25, scope: !565)
!570 = !DILocation(line: 179, column: 9, scope: !565)
!571 = !DILocation(line: 179, column: 3, scope: !565)
!572 = !DILocation(line: 180, column: 11, scope: !573)
!573 = distinct !DILexicalBlock(scope: !513, file: !3, line: 180, column: 6)
!574 = !{!530, !498, i64 112}
!575 = !DILocation(line: 180, column: 6, scope: !573)
!576 = !DILocation(line: 180, column: 6, scope: !513)
!577 = !DILocation(line: 181, column: 25, scope: !573)
!578 = !DILocation(line: 181, column: 9, scope: !573)
!579 = !DILocation(line: 181, column: 3, scope: !573)
!580 = !DILocation(line: 182, column: 15, scope: !581)
!581 = distinct !DILexicalBlock(scope: !513, file: !3, line: 182, column: 2)
!582 = !{!530, !498, i64 120}
!583 = !DILocation(line: 182, column: 36, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !3, line: 182, column: 2)
!585 = !{!530, !497, i64 104}
!586 = !DILocation(line: 182, column: 30, scope: !584)
!587 = !DILocation(line: 182, column: 2, scope: !581)
!588 = !DILocation(line: 183, column: 11, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 183, column: 7)
!590 = distinct !DILexicalBlock(scope: !584, file: !3, line: 182, column: 57)
!591 = !{!592, !498, i64 0}
!592 = !{!"atom_t", !498, i64 0, !498, i64 8, !497, i64 16, !497, i64 20, !458, i64 24, !498, i64 56, !457, i64 64, !457, i64 72, !457, i64 80, !457, i64 88, !498, i64 96, !497, i64 104, !457, i64 112, !457, i64 120, !497, i64 128, !497, i64 132, !498, i64 136, !458, i64 144, !457, i64 168}
!593 = !DILocation(line: 183, column: 7, scope: !589)
!594 = !DILocation(line: 183, column: 7, scope: !590)
!595 = !DILocation(line: 184, column: 24, scope: !589)
!596 = !DILocation(line: 184, column: 4, scope: !589)
!597 = !DILocation(line: 185, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !590, file: !3, line: 185, column: 7)
!599 = !{!592, !498, i64 8}
!600 = !DILocation(line: 185, column: 7, scope: !598)
!601 = !DILocation(line: 185, column: 7, scope: !590)
!602 = !DILocation(line: 186, column: 24, scope: !598)
!603 = !DILocation(line: 186, column: 4, scope: !598)
!604 = !DILocation(line: 187, column: 11, scope: !605)
!605 = distinct !DILexicalBlock(scope: !590, file: !3, line: 187, column: 7)
!606 = !{!592, !498, i64 96}
!607 = !DILocation(line: 187, column: 7, scope: !605)
!608 = !DILocation(line: 187, column: 7, scope: !590)
!609 = !DILocation(line: 188, column: 24, scope: !605)
!610 = !DILocation(line: 188, column: 4, scope: !605)
!611 = !DILocation(line: 189, column: 11, scope: !612)
!612 = distinct !DILexicalBlock(scope: !590, file: !3, line: 189, column: 7)
!613 = !{!592, !498, i64 136}
!614 = !DILocation(line: 189, column: 7, scope: !612)
!615 = !DILocation(line: 189, column: 7, scope: !590)
!616 = !DILocation(line: 190, column: 25, scope: !612)
!617 = !DILocation(line: 190, column: 4, scope: !612)
!618 = !DILocation(line: 191, column: 2, scope: !590)
!619 = !DILocation(line: 182, column: 47, scope: !584)
!620 = !DILocation(line: 182, column: 53, scope: !584)
!621 = distinct !{!621, !587, !622}
!622 = !DILocation(line: 191, column: 2, scope: !581)
!623 = !DILocation(line: 192, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !513, file: !3, line: 192, column: 6)
!625 = !DILocation(line: 192, column: 6, scope: !624)
!626 = !DILocation(line: 192, column: 6, scope: !513)
!627 = !DILocation(line: 193, column: 25, scope: !624)
!628 = !DILocation(line: 193, column: 9, scope: !624)
!629 = !DILocation(line: 193, column: 3, scope: !624)
!630 = !DILocation(line: 195, column: 8, scope: !513)
!631 = !DILocation(line: 195, column: 2, scope: !513)
!632 = !DILocation(line: 197, column: 2, scope: !513)
!633 = !DILocation(line: 198, column: 1, scope: !513)
!634 = distinct !DISubprogram(name: "freemolecule", scope: !3, file: !3, line: 200, type: !635, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!36, !22}
!637 = !{!638, !639, !640, !641, !642}
!638 = !DILocalVariable(name: "mol", arg: 1, scope: !634, file: !3, line: 200, type: !22)
!639 = !DILocalVariable(name: "sp", scope: !634, file: !3, line: 202, type: !38)
!640 = !DILocalVariable(name: "spn", scope: !634, file: !3, line: 202, type: !38)
!641 = !DILocalVariable(name: "pp", scope: !634, file: !3, line: 203, type: !135)
!642 = !DILocalVariable(name: "r", scope: !634, file: !3, line: 204, type: !36)
!643 = !DILocation(line: 0, scope: !634)
!644 = !DILocation(line: 206, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !634, file: !3, line: 206, column: 6)
!646 = !DILocation(line: 206, column: 6, scope: !634)
!647 = !DILocation(line: 207, column: 3, scope: !645)
!648 = !DILocation(line: 209, column: 17, scope: !649)
!649 = distinct !DILexicalBlock(scope: !634, file: !3, line: 209, column: 2)
!650 = !DILocation(line: 209, column: 2, scope: !649)
!651 = !DILocation(line: 210, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 209, column: 42)
!653 = distinct !DILexicalBlock(scope: !649, file: !3, line: 209, column: 2)
!654 = !{!655, !498, i64 24}
!655 = !{!"strand_t", !498, i64 0, !497, i64 8, !497, i64 12, !498, i64 16, !498, i64 24, !497, i64 32, !497, i64 36, !498, i64 40}
!656 = !DILocation(line: 211, column: 11, scope: !657)
!657 = distinct !DILexicalBlock(scope: !652, file: !3, line: 211, column: 7)
!658 = !{!655, !498, i64 0}
!659 = !DILocation(line: 211, column: 7, scope: !657)
!660 = !DILocation(line: 211, column: 7, scope: !652)
!661 = !DILocation(line: 212, column: 25, scope: !657)
!662 = !DILocation(line: 212, column: 4, scope: !657)
!663 = !DILocation(line: 213, column: 23, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 213, column: 3)
!665 = distinct !DILexicalBlock(scope: !652, file: !3, line: 213, column: 3)
!666 = !{!655, !497, i64 32}
!667 = !DILocation(line: 213, column: 17, scope: !664)
!668 = !DILocation(line: 213, column: 3, scope: !665)
!669 = !DILocation(line: 214, column: 21, scope: !664)
!670 = !{!655, !498, i64 40}
!671 = !DILocation(line: 214, column: 17, scope: !664)
!672 = !{!498, !498, i64 0}
!673 = !DILocation(line: 214, column: 4, scope: !664)
!674 = !DILocation(line: 213, column: 37, scope: !664)
!675 = distinct !{!675, !668, !676}
!676 = !DILocation(line: 214, column: 37, scope: !665)
!677 = !DILocation(line: 215, column: 11, scope: !678)
!678 = distinct !DILexicalBlock(scope: !652, file: !3, line: 215, column: 7)
!679 = !DILocation(line: 215, column: 7, scope: !678)
!680 = !DILocation(line: 215, column: 7, scope: !652)
!681 = !DILocation(line: 216, column: 25, scope: !678)
!682 = !DILocation(line: 216, column: 10, scope: !678)
!683 = !DILocation(line: 216, column: 4, scope: !678)
!684 = !DILocation(line: 217, column: 2, scope: !652)
!685 = distinct !{!685, !650, !686}
!686 = !DILocation(line: 217, column: 2, scope: !649)
!687 = !DILocation(line: 218, column: 11, scope: !688)
!688 = distinct !DILexicalBlock(scope: !634, file: !3, line: 218, column: 6)
!689 = !DILocation(line: 218, column: 6, scope: !688)
!690 = !DILocation(line: 218, column: 6, scope: !634)
!691 = !DILocation(line: 219, column: 13, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !3, line: 218, column: 18)
!693 = !DILocation(line: 220, column: 11, scope: !694)
!694 = distinct !DILexicalBlock(scope: !692, file: !3, line: 220, column: 7)
!695 = !{!696, !498, i64 216}
!696 = !{!"parm", !458, i64 0, !497, i64 84, !497, i64 88, !497, i64 92, !497, i64 96, !497, i64 100, !497, i64 104, !497, i64 108, !497, i64 112, !497, i64 116, !497, i64 120, !497, i64 124, !497, i64 128, !497, i64 132, !497, i64 136, !497, i64 140, !497, i64 144, !497, i64 148, !497, i64 152, !497, i64 156, !497, i64 160, !497, i64 164, !497, i64 168, !497, i64 172, !497, i64 176, !497, i64 180, !497, i64 184, !497, i64 188, !497, i64 192, !497, i64 196, !497, i64 200, !497, i64 204, !497, i64 208, !498, i64 216, !498, i64 224, !498, i64 232, !498, i64 240, !498, i64 248, !498, i64 256, !498, i64 264, !498, i64 272, !498, i64 280, !498, i64 288, !498, i64 296, !498, i64 304, !498, i64 312, !498, i64 320, !498, i64 328, !498, i64 336, !498, i64 344, !498, i64 352, !498, i64 360, !498, i64 368, !458, i64 376, !457, i64 400, !457, i64 408, !457, i64 416, !457, i64 424, !457, i64 432, !498, i64 440, !498, i64 448, !498, i64 456, !498, i64 464, !498, i64 472, !498, i64 480, !498, i64 488, !498, i64 496, !498, i64 504, !498, i64 512, !498, i64 520, !498, i64 528, !498, i64 536, !498, i64 544, !498, i64 552, !498, i64 560, !498, i64 568, !498, i64 576, !498, i64 584, !498, i64 592, !498, i64 600, !498, i64 608, !498, i64 616, !498, i64 624, !498, i64 632, !498, i64 640, !498, i64 648, !498, i64 656, !498, i64 664, !498, i64 672, !498, i64 680, !498, i64 688, !498, i64 696, !498, i64 704, !498, i64 712}
!697 = !DILocation(line: 220, column: 7, scope: !694)
!698 = !DILocation(line: 220, column: 7, scope: !692)
!699 = !DILocation(line: 221, column: 25, scope: !694)
!700 = !DILocation(line: 221, column: 4, scope: !694)
!701 = !DILocation(line: 222, column: 11, scope: !702)
!702 = distinct !DILexicalBlock(scope: !692, file: !3, line: 222, column: 7)
!703 = !{!696, !498, i64 224}
!704 = !DILocation(line: 222, column: 7, scope: !702)
!705 = !DILocation(line: 222, column: 7, scope: !692)
!706 = !DILocation(line: 223, column: 25, scope: !702)
!707 = !DILocation(line: 223, column: 4, scope: !702)
!708 = !DILocation(line: 224, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !692, file: !3, line: 224, column: 7)
!710 = !{!696, !498, i64 232}
!711 = !DILocation(line: 224, column: 7, scope: !709)
!712 = !DILocation(line: 224, column: 7, scope: !692)
!713 = !DILocation(line: 225, column: 25, scope: !709)
!714 = !DILocation(line: 225, column: 4, scope: !709)
!715 = !DILocation(line: 226, column: 11, scope: !716)
!716 = distinct !DILexicalBlock(scope: !692, file: !3, line: 226, column: 7)
!717 = !{!696, !498, i64 240}
!718 = !DILocation(line: 226, column: 7, scope: !716)
!719 = !DILocation(line: 226, column: 7, scope: !692)
!720 = !DILocation(line: 227, column: 25, scope: !716)
!721 = !DILocation(line: 227, column: 4, scope: !716)
!722 = !DILocation(line: 228, column: 25, scope: !692)
!723 = !DILocation(line: 228, column: 9, scope: !692)
!724 = !DILocation(line: 228, column: 3, scope: !692)
!725 = !DILocation(line: 229, column: 2, scope: !692)
!726 = !DILocation(line: 231, column: 8, scope: !634)
!727 = !DILocation(line: 231, column: 2, scope: !634)
!728 = !DILocation(line: 232, column: 2, scope: !634)
!729 = !DILocation(line: 233, column: 1, scope: !634)
!730 = distinct !DISubprogram(name: "addstrand", scope: !3, file: !3, line: 235, type: !731, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!36, !22, !241}
!733 = !{!734, !735, !736, !737, !738, !739}
!734 = !DILocalVariable(name: "mp", arg: 1, scope: !730, file: !3, line: 235, type: !22)
!735 = !DILocalVariable(name: "sname", arg: 2, scope: !730, file: !3, line: 235, type: !241)
!736 = !DILocalVariable(name: "sp", scope: !730, file: !3, line: 237, type: !38)
!737 = !DILocalVariable(name: "spl", scope: !730, file: !3, line: 237, type: !38)
!738 = !DILocalVariable(name: "nsize", scope: !730, file: !3, line: 238, type: !36)
!739 = !DILocalVariable(name: "np", scope: !730, file: !3, line: 239, type: !241)
!740 = !DILocation(line: 0, scope: !730)
!741 = !DILocation(line: 241, column: 16, scope: !742)
!742 = distinct !DILexicalBlock(scope: !730, file: !3, line: 241, column: 2)
!743 = !DILocation(line: 241, column: 2, scope: !742)
!744 = !DILocation(line: 242, column: 20, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 242, column: 7)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 241, column: 48)
!747 = distinct !DILexicalBlock(scope: !742, file: !3, line: 241, column: 2)
!748 = !DILocation(line: 242, column: 8, scope: !745)
!749 = !DILocation(line: 242, column: 7, scope: !746)
!750 = !DILocation(line: 243, column: 13, scope: !751)
!751 = distinct !DILexicalBlock(scope: !745, file: !3, line: 242, column: 43)
!752 = !DILocation(line: 243, column: 4, scope: !751)
!753 = !DILocation(line: 246, column: 4, scope: !751)
!754 = !DILocation(line: 248, column: 2, scope: !746)
!755 = !DILocation(line: 241, column: 40, scope: !747)
!756 = distinct !{!756, !743, !757}
!757 = !DILocation(line: 248, column: 2, scope: !742)
!758 = !DILocation(line: 250, column: 21, scope: !759)
!759 = distinct !DILexicalBlock(scope: !730, file: !3, line: 250, column: 5)
!760 = !DILocation(line: 250, column: 9, scope: !759)
!761 = !DILocation(line: 250, column: 47, scope: !759)
!762 = !DILocation(line: 250, column: 5, scope: !730)
!763 = !DILocation(line: 251, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !759, file: !3, line: 250, column: 56)
!765 = !DILocation(line: 252, column: 3, scope: !764)
!766 = !DILocation(line: 253, column: 3, scope: !764)
!767 = !DILocation(line: 255, column: 10, scope: !730)
!768 = !DILocation(line: 255, column: 26, scope: !730)
!769 = !DILocation(line: 256, column: 24, scope: !770)
!770 = distinct !DILexicalBlock(scope: !730, file: !3, line: 256, column: 5)
!771 = !DILocation(line: 256, column: 29, scope: !770)
!772 = !DILocation(line: 256, column: 17, scope: !770)
!773 = !DILocation(line: 256, column: 46, scope: !770)
!774 = !DILocation(line: 256, column: 5, scope: !730)
!775 = !DILocation(line: 257, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !770, file: !3, line: 256, column: 55)
!777 = !DILocation(line: 258, column: 3, scope: !776)
!778 = !DILocation(line: 259, column: 3, scope: !776)
!779 = !DILocation(line: 261, column: 7, scope: !770)
!780 = !DILocation(line: 261, column: 20, scope: !770)
!781 = !DILocation(line: 263, column: 14, scope: !730)
!782 = !DILocation(line: 263, column: 2, scope: !730)
!783 = !DILocation(line: 264, column: 6, scope: !730)
!784 = !DILocation(line: 264, column: 18, scope: !730)
!785 = !{!655, !497, i64 8}
!786 = !DILocation(line: 265, column: 6, scope: !730)
!787 = !DILocation(line: 265, column: 13, scope: !730)
!788 = !{!655, !497, i64 12}
!789 = !DILocation(line: 266, column: 6, scope: !730)
!790 = !DILocation(line: 266, column: 17, scope: !730)
!791 = !{!655, !498, i64 16}
!792 = !DILocation(line: 267, column: 6, scope: !730)
!793 = !DILocation(line: 267, column: 13, scope: !730)
!794 = !DILocation(line: 268, column: 6, scope: !730)
!795 = !DILocation(line: 268, column: 18, scope: !730)
!796 = !DILocation(line: 269, column: 6, scope: !730)
!797 = !DILocation(line: 269, column: 17, scope: !730)
!798 = !{!655, !497, i64 36}
!799 = !DILocation(line: 270, column: 6, scope: !730)
!800 = !DILocation(line: 270, column: 17, scope: !730)
!801 = !DILocation(line: 272, column: 10, scope: !802)
!802 = distinct !DILexicalBlock(scope: !730, file: !3, line: 272, column: 6)
!803 = !DILocation(line: 272, column: 21, scope: !802)
!804 = !DILocation(line: 272, column: 6, scope: !730)
!805 = !DILocation(line: 273, column: 7, scope: !802)
!806 = !DILocation(line: 273, column: 17, scope: !802)
!807 = !DILocation(line: 273, column: 3, scope: !802)
!808 = !DILocation(line: 275, column: 13, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !3, line: 274, column: 6)
!810 = !DILocation(line: 276, column: 15, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 276, column: 3)
!812 = distinct !DILexicalBlock(scope: !809, file: !3, line: 276, column: 3)
!813 = !DILocation(line: 276, column: 3, scope: !812)
!814 = !DILocation(line: 276, column: 34, scope: !811)
!815 = distinct !{!815, !813, !816}
!816 = !DILocation(line: 277, column: 4, scope: !812)
!817 = !DILocation(line: 0, scope: !809)
!818 = !DILocation(line: 278, column: 8, scope: !809)
!819 = !DILocation(line: 278, column: 15, scope: !809)
!820 = !DILocation(line: 280, column: 6, scope: !730)
!821 = !DILocation(line: 280, column: 16, scope: !730)
!822 = !DILocation(line: 284, column: 6, scope: !730)
!823 = !DILocation(line: 284, column: 15, scope: !730)
!824 = !DILocation(line: 285, column: 2, scope: !730)
!825 = !DILocation(line: 286, column: 1, scope: !730)
!826 = distinct !DISubprogram(name: "addresidue", scope: !3, file: !3, line: 288, type: !827, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{!36, !22, !241, !56}
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838}
!830 = !DILocalVariable(name: "mp", arg: 1, scope: !826, file: !3, line: 288, type: !22)
!831 = !DILocalVariable(name: "sname", arg: 2, scope: !826, file: !3, line: 288, type: !241)
!832 = !DILocalVariable(name: "res", arg: 3, scope: !826, file: !3, line: 288, type: !56)
!833 = !DILocalVariable(name: "spl", scope: !826, file: !3, line: 290, type: !38)
!834 = !DILocalVariable(name: "sp", scope: !826, file: !3, line: 290, type: !38)
!835 = !DILocalVariable(name: "rap", scope: !826, file: !3, line: 291, type: !55)
!836 = !DILocalVariable(name: "nres", scope: !826, file: !3, line: 291, type: !56)
!837 = !DILocalVariable(name: "r", scope: !826, file: !3, line: 292, type: !36)
!838 = !DILocalVariable(name: "rsize", scope: !826, file: !3, line: 292, type: !36)
!839 = !DILocation(line: 0, scope: !826)
!840 = !DILocation(line: 294, column: 28, scope: !841)
!841 = distinct !DILexicalBlock(scope: !826, file: !3, line: 294, column: 2)
!842 = !DILocation(line: 294, column: 2, scope: !841)
!843 = !DILocation(line: 295, column: 20, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 295, column: 7)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 294, column: 63)
!846 = distinct !DILexicalBlock(scope: !841, file: !3, line: 294, column: 2)
!847 = !DILocation(line: 295, column: 7, scope: !844)
!848 = !DILocation(line: 295, column: 42, scope: !844)
!849 = !DILocation(line: 295, column: 7, scope: !845)
!850 = !DILocation(line: 0, scope: !841)
!851 = !DILocation(line: 297, column: 4, scope: !852)
!852 = distinct !DILexicalBlock(scope: !844, file: !3, line: 295, column: 48)
!853 = !DILocation(line: 299, column: 2, scope: !845)
!854 = !DILocation(line: 294, column: 55, scope: !846)
!855 = distinct !{!855, !842, !856}
!856 = !DILocation(line: 299, column: 2, scope: !841)
!857 = !DILocation(line: 301, column: 9, scope: !858)
!858 = distinct !DILexicalBlock(scope: !826, file: !3, line: 301, column: 6)
!859 = !DILocation(line: 301, column: 6, scope: !826)
!860 = !DILocation(line: 302, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !3, line: 301, column: 18)
!862 = !DILocation(line: 303, column: 3, scope: !861)
!863 = !DILocation(line: 306, column: 10, scope: !864)
!864 = distinct !DILexicalBlock(scope: !826, file: !3, line: 306, column: 6)
!865 = !DILocation(line: 306, column: 29, scope: !864)
!866 = !DILocation(line: 306, column: 22, scope: !864)
!867 = !DILocation(line: 306, column: 6, scope: !826)
!868 = !DILocation(line: 307, column: 15, scope: !869)
!869 = distinct !DILexicalBlock(scope: !864, file: !3, line: 306, column: 41)
!870 = !DILocation(line: 307, column: 26, scope: !869)
!871 = !DILocation(line: 308, column: 38, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !3, line: 308, column: 7)
!873 = !DILocation(line: 308, column: 43, scope: !872)
!874 = !DILocation(line: 308, column: 31, scope: !872)
!875 = !DILocation(line: 308, column: 15, scope: !872)
!876 = !DILocation(line: 309, column: 4, scope: !872)
!877 = !DILocation(line: 308, column: 7, scope: !869)
!878 = !DILocation(line: 312, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !872, file: !3, line: 310, column: 3)
!880 = !DILocation(line: 311, column: 4, scope: !879)
!881 = !DILocation(line: 313, column: 4, scope: !879)
!882 = !DILocation(line: 314, column: 4, scope: !879)
!883 = !DILocation(line: 316, column: 23, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 316, column: 3)
!885 = distinct !DILexicalBlock(scope: !869, file: !3, line: 316, column: 3)
!886 = !DILocation(line: 316, column: 17, scope: !884)
!887 = !DILocation(line: 316, column: 3, scope: !885)
!888 = !DILocation(line: 317, column: 19, scope: !884)
!889 = !DILocation(line: 317, column: 15, scope: !884)
!890 = !DILocation(line: 317, column: 4, scope: !884)
!891 = !DILocation(line: 317, column: 13, scope: !884)
!892 = !DILocation(line: 316, column: 37, scope: !884)
!893 = distinct !{!893, !887, !894}
!894 = !DILocation(line: 317, column: 33, scope: !885)
!895 = !DILocation(line: 318, column: 12, scope: !896)
!896 = distinct !DILexicalBlock(scope: !869, file: !3, line: 318, column: 8)
!897 = !DILocation(line: 318, column: 23, scope: !896)
!898 = !DILocation(line: 318, column: 8, scope: !869)
!899 = !DILocation(line: 319, column: 14, scope: !896)
!900 = !DILocation(line: 319, column: 10, scope: !896)
!901 = !DILocation(line: 319, column: 4, scope: !896)
!902 = !DILocation(line: 320, column: 7, scope: !869)
!903 = !DILocation(line: 320, column: 18, scope: !869)
!904 = !DILocation(line: 321, column: 7, scope: !869)
!905 = !DILocation(line: 321, column: 18, scope: !869)
!906 = !DILocation(line: 322, column: 2, scope: !869)
!907 = !DILocation(line: 324, column: 45, scope: !826)
!908 = !DILocation(line: 324, column: 6, scope: !826)
!909 = !DILocation(line: 324, column: 22, scope: !826)
!910 = !DILocation(line: 324, column: 2, scope: !826)
!911 = !DILocation(line: 324, column: 36, scope: !826)
!912 = !DILocation(line: 325, column: 8, scope: !826)
!913 = !DILocation(line: 325, column: 17, scope: !826)
!914 = !{!530, !498, i64 56}
!915 = !DILocation(line: 326, column: 6, scope: !826)
!916 = !DILocation(line: 326, column: 17, scope: !826)
!917 = !DILocation(line: 330, column: 6, scope: !826)
!918 = !DILocation(line: 330, column: 15, scope: !826)
!919 = !DILocation(line: 331, column: 2, scope: !826)
!920 = !DILocation(line: 332, column: 1, scope: !826)
!921 = distinct !DISubprogram(name: "connectres", scope: !3, file: !3, line: 334, type: !922, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{!36, !22, !241, !36, !241, !36, !241}
!924 = !{!925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939}
!925 = !DILocalVariable(name: "mol", arg: 1, scope: !921, file: !3, line: 334, type: !22)
!926 = !DILocalVariable(name: "sname", arg: 2, scope: !921, file: !3, line: 334, type: !241)
!927 = !DILocalVariable(name: "ri", arg: 3, scope: !921, file: !3, line: 334, type: !36)
!928 = !DILocalVariable(name: "ainame", arg: 4, scope: !921, file: !3, line: 334, type: !241)
!929 = !DILocalVariable(name: "rj", arg: 5, scope: !921, file: !3, line: 334, type: !36)
!930 = !DILocalVariable(name: "ajname", arg: 6, scope: !921, file: !3, line: 334, type: !241)
!931 = !DILocalVariable(name: "sp", scope: !921, file: !3, line: 336, type: !38)
!932 = !DILocalVariable(name: "ebi", scope: !921, file: !3, line: 337, type: !72)
!933 = !DILocalVariable(name: "ebj", scope: !921, file: !3, line: 337, type: !72)
!934 = !DILocalVariable(name: "resi", scope: !921, file: !3, line: 338, type: !56)
!935 = !DILocalVariable(name: "resj", scope: !921, file: !3, line: 338, type: !56)
!936 = !DILocalVariable(name: "ap", scope: !921, file: !3, line: 339, type: !102)
!937 = !DILocalVariable(name: "a", scope: !921, file: !3, line: 340, type: !36)
!938 = !DILocalVariable(name: "ai", scope: !921, file: !3, line: 340, type: !36)
!939 = !DILocalVariable(name: "aj", scope: !921, file: !3, line: 340, type: !36)
!940 = !DILocation(line: 0, scope: !921)
!941 = !DILocation(line: 342, column: 17, scope: !942)
!942 = distinct !DILexicalBlock(scope: !921, file: !3, line: 342, column: 2)
!943 = !DILocation(line: 342, column: 2, scope: !942)
!944 = !DILocation(line: 343, column: 19, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !3, line: 343, column: 7)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 342, column: 49)
!947 = distinct !DILexicalBlock(scope: !942, file: !3, line: 342, column: 2)
!948 = !DILocation(line: 343, column: 7, scope: !945)
!949 = !DILocation(line: 343, column: 41, scope: !945)
!950 = !DILocation(line: 343, column: 7, scope: !946)
!951 = !DILocation(line: 0, scope: !942)
!952 = !DILocation(line: 344, column: 4, scope: !945)
!953 = !DILocation(line: 345, column: 2, scope: !946)
!954 = !DILocation(line: 342, column: 41, scope: !947)
!955 = distinct !{!955, !943, !956}
!956 = !DILocation(line: 345, column: 2, scope: !942)
!957 = !DILocation(line: 346, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !921, file: !3, line: 346, column: 6)
!959 = !DILocation(line: 346, column: 6, scope: !921)
!960 = !DILocation(line: 347, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 346, column: 18)
!962 = !DILocation(line: 348, column: 3, scope: !961)
!963 = !DILocation(line: 350, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !921, file: !3, line: 350, column: 6)
!965 = !DILocation(line: 350, column: 13, scope: !964)
!966 = !DILocation(line: 350, column: 25, scope: !964)
!967 = !DILocation(line: 350, column: 19, scope: !964)
!968 = !DILocation(line: 350, column: 6, scope: !921)
!969 = !DILocation(line: 351, column: 3, scope: !970)
!970 = distinct !DILexicalBlock(scope: !964, file: !3, line: 350, column: 38)
!971 = !DILocation(line: 352, column: 3, scope: !970)
!972 = !DILocation(line: 353, column: 3, scope: !970)
!973 = !DILocation(line: 355, column: 14, scope: !964)
!974 = !DILocation(line: 355, column: 29, scope: !964)
!975 = !DILocation(line: 355, column: 10, scope: !964)
!976 = !DILocation(line: 357, column: 36, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 357, column: 2)
!978 = distinct !DILexicalBlock(scope: !921, file: !3, line: 357, column: 2)
!979 = !DILocation(line: 357, column: 28, scope: !977)
!980 = !DILocation(line: 357, column: 2, scope: !978)
!981 = !DILocation(line: 358, column: 15, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 357, column: 51)
!983 = !DILocation(line: 358, column: 9, scope: !982)
!984 = !DILocation(line: 359, column: 19, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !3, line: 359, column: 7)
!986 = !DILocation(line: 359, column: 7, scope: !985)
!987 = !DILocation(line: 359, column: 40, scope: !985)
!988 = !DILocation(line: 359, column: 7, scope: !982)
!989 = !DILocation(line: 361, column: 4, scope: !990)
!990 = distinct !DILexicalBlock(scope: !985, file: !3, line: 359, column: 46)
!991 = !DILocation(line: 363, column: 2, scope: !982)
!992 = !DILocation(line: 357, column: 47, scope: !977)
!993 = distinct !{!993, !980, !994}
!994 = !DILocation(line: 363, column: 2, scope: !978)
!995 = !DILocation(line: 364, column: 9, scope: !996)
!996 = distinct !DILexicalBlock(scope: !921, file: !3, line: 364, column: 6)
!997 = !DILocation(line: 0, scope: !978)
!998 = !DILocation(line: 364, column: 6, scope: !921)
!999 = !DILocation(line: 366, column: 18, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !3, line: 364, column: 19)
!1001 = !DILocation(line: 365, column: 3, scope: !1000)
!1002 = !DILocation(line: 367, column: 3, scope: !1000)
!1003 = !DILocation(line: 368, column: 3, scope: !1000)
!1004 = !DILocation(line: 371, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !921, file: !3, line: 371, column: 6)
!1006 = !DILocation(line: 371, column: 13, scope: !1005)
!1007 = !DILocation(line: 371, column: 25, scope: !1005)
!1008 = !DILocation(line: 371, column: 19, scope: !1005)
!1009 = !DILocation(line: 371, column: 6, scope: !921)
!1010 = !DILocation(line: 372, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 371, column: 38)
!1012 = !DILocation(line: 373, column: 3, scope: !1011)
!1013 = !DILocation(line: 374, column: 3, scope: !1011)
!1014 = !DILocation(line: 376, column: 14, scope: !1005)
!1015 = !DILocation(line: 376, column: 29, scope: !1005)
!1016 = !DILocation(line: 376, column: 10, scope: !1005)
!1017 = !DILocation(line: 378, column: 36, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 378, column: 2)
!1019 = distinct !DILexicalBlock(scope: !921, file: !3, line: 378, column: 2)
!1020 = !DILocation(line: 378, column: 28, scope: !1018)
!1021 = !DILocation(line: 378, column: 2, scope: !1019)
!1022 = !DILocation(line: 379, column: 15, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 378, column: 51)
!1024 = !DILocation(line: 379, column: 9, scope: !1023)
!1025 = !DILocation(line: 380, column: 19, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 380, column: 7)
!1027 = !DILocation(line: 380, column: 7, scope: !1026)
!1028 = !DILocation(line: 380, column: 40, scope: !1026)
!1029 = !DILocation(line: 380, column: 7, scope: !1023)
!1030 = !DILocation(line: 382, column: 4, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 380, column: 46)
!1032 = !DILocation(line: 384, column: 2, scope: !1023)
!1033 = !DILocation(line: 378, column: 47, scope: !1018)
!1034 = distinct !{!1034, !1021, !1035}
!1035 = !DILocation(line: 384, column: 2, scope: !1019)
!1036 = !DILocation(line: 385, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !921, file: !3, line: 385, column: 6)
!1038 = !DILocation(line: 0, scope: !1019)
!1039 = !DILocation(line: 385, column: 6, scope: !921)
!1040 = !DILocation(line: 387, column: 18, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 385, column: 19)
!1042 = !DILocation(line: 386, column: 3, scope: !1041)
!1043 = !DILocation(line: 388, column: 3, scope: !1041)
!1044 = !DILocation(line: 389, column: 3, scope: !1041)
!1045 = !DILocation(line: 392, column: 29, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !921, file: !3, line: 392, column: 6)
!1047 = !DILocation(line: 392, column: 14, scope: !1046)
!1048 = !DILocation(line: 392, column: 61, scope: !1046)
!1049 = !DILocation(line: 392, column: 6, scope: !921)
!1050 = !DILocation(line: 394, column: 10, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 392, column: 70)
!1052 = !DILocation(line: 395, column: 10, scope: !1051)
!1053 = !DILocation(line: 393, column: 3, scope: !1051)
!1054 = !DILocation(line: 396, column: 3, scope: !1051)
!1055 = !DILocation(line: 397, column: 3, scope: !1051)
!1056 = !DILocation(line: 399, column: 24, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 398, column: 7)
!1058 = !DILocation(line: 399, column: 8, scope: !1057)
!1059 = !DILocation(line: 399, column: 16, scope: !1057)
!1060 = !DILocation(line: 400, column: 9, scope: !1057)
!1061 = !DILocation(line: 400, column: 20, scope: !1057)
!1062 = !DILocation(line: 401, column: 21, scope: !1057)
!1063 = !DILocation(line: 401, column: 8, scope: !1057)
!1064 = !DILocation(line: 401, column: 16, scope: !1057)
!1065 = !{!550, !497, i64 8}
!1066 = !DILocation(line: 402, column: 8, scope: !1057)
!1067 = !DILocation(line: 402, column: 16, scope: !1057)
!1068 = !{!550, !497, i64 12}
!1069 = !DILocation(line: 403, column: 22, scope: !1057)
!1070 = !DILocation(line: 403, column: 8, scope: !1057)
!1071 = !DILocation(line: 403, column: 17, scope: !1057)
!1072 = !{!550, !497, i64 16}
!1073 = !DILocation(line: 406, column: 29, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !921, file: !3, line: 406, column: 6)
!1075 = !DILocation(line: 406, column: 14, scope: !1074)
!1076 = !DILocation(line: 406, column: 61, scope: !1074)
!1077 = !DILocation(line: 406, column: 6, scope: !921)
!1078 = !DILocation(line: 408, column: 10, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 406, column: 70)
!1080 = !DILocation(line: 409, column: 10, scope: !1079)
!1081 = !DILocation(line: 407, column: 3, scope: !1079)
!1082 = !DILocation(line: 410, column: 3, scope: !1079)
!1083 = !DILocation(line: 411, column: 3, scope: !1079)
!1084 = !DILocation(line: 413, column: 24, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 412, column: 7)
!1086 = !DILocation(line: 413, column: 8, scope: !1085)
!1087 = !DILocation(line: 413, column: 16, scope: !1085)
!1088 = !DILocation(line: 414, column: 9, scope: !1085)
!1089 = !DILocation(line: 414, column: 20, scope: !1085)
!1090 = !DILocation(line: 415, column: 21, scope: !1085)
!1091 = !DILocation(line: 415, column: 8, scope: !1085)
!1092 = !DILocation(line: 415, column: 16, scope: !1085)
!1093 = !DILocation(line: 416, column: 8, scope: !1085)
!1094 = !DILocation(line: 416, column: 16, scope: !1085)
!1095 = !DILocation(line: 417, column: 22, scope: !1085)
!1096 = !DILocation(line: 417, column: 8, scope: !1085)
!1097 = !DILocation(line: 417, column: 17, scope: !1085)
!1098 = !DILocation(line: 420, column: 2, scope: !921)
!1099 = !DILocation(line: 421, column: 1, scope: !921)
!1100 = distinct !DISubprogram(name: "mergestr", scope: !3, file: !3, line: 441, type: !1101, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!36, !22, !241, !241, !22, !241, !241}
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!1104 = !DILocalVariable(name: "mol1", arg: 1, scope: !1100, file: !3, line: 441, type: !22)
!1105 = !DILocalVariable(name: "strand1", arg: 2, scope: !1100, file: !3, line: 441, type: !241)
!1106 = !DILocalVariable(name: "end1", arg: 3, scope: !1100, file: !3, line: 441, type: !241)
!1107 = !DILocalVariable(name: "mol2", arg: 4, scope: !1100, file: !3, line: 442, type: !22)
!1108 = !DILocalVariable(name: "strand2", arg: 5, scope: !1100, file: !3, line: 442, type: !241)
!1109 = !DILocalVariable(name: "end2", arg: 6, scope: !1100, file: !3, line: 442, type: !241)
!1110 = !DILocalVariable(name: "after", scope: !1100, file: !3, line: 444, type: !36)
!1111 = !DILocalVariable(name: "nres", scope: !1100, file: !3, line: 445, type: !36)
!1112 = !DILocalVariable(name: "nsize", scope: !1100, file: !3, line: 445, type: !36)
!1113 = !DILocalVariable(name: "r1", scope: !1100, file: !3, line: 446, type: !36)
!1114 = !DILocalVariable(name: "r2", scope: !1100, file: !3, line: 446, type: !36)
!1115 = !DILocalVariable(name: "copy", scope: !1100, file: !3, line: 447, type: !36)
!1116 = !DILocalVariable(name: "sp", scope: !1100, file: !3, line: 448, type: !38)
!1117 = !DILocalVariable(name: "sp1", scope: !1100, file: !3, line: 448, type: !38)
!1118 = !DILocalVariable(name: "sp2", scope: !1100, file: !3, line: 448, type: !38)
!1119 = !DILocalVariable(name: "rap", scope: !1100, file: !3, line: 449, type: !55)
!1120 = !DILocation(line: 0, scope: !1100)
!1121 = !DILocation(line: 451, column: 6, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 451, column: 6)
!1123 = !DILocation(line: 451, column: 29, scope: !1122)
!1124 = !DILocation(line: 451, column: 34, scope: !1122)
!1125 = !DILocation(line: 451, column: 37, scope: !1122)
!1126 = !DILocation(line: 451, column: 61, scope: !1122)
!1127 = !DILocation(line: 451, column: 6, scope: !1100)
!1128 = !DILocation(line: 452, column: 3, scope: !1122)
!1129 = !DILocation(line: 453, column: 11, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 453, column: 11)
!1131 = !DILocation(line: 453, column: 35, scope: !1130)
!1132 = !DILocation(line: 453, column: 40, scope: !1130)
!1133 = !DILocation(line: 453, column: 43, scope: !1130)
!1134 = !DILocation(line: 453, column: 66, scope: !1130)
!1135 = !DILocation(line: 453, column: 11, scope: !1122)
!1136 = !DILocation(line: 454, column: 3, scope: !1130)
!1137 = !DILocation(line: 456, column: 3, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 455, column: 6)
!1139 = !DILocation(line: 457, column: 3, scope: !1138)
!1140 = !DILocation(line: 458, column: 3, scope: !1138)
!1141 = !DILocation(line: 0, scope: !1122)
!1142 = !DILocation(line: 461, column: 30, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 461, column: 2)
!1144 = !DILocation(line: 461, column: 2, scope: !1143)
!1145 = !DILocation(line: 462, column: 19, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 462, column: 7)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 461, column: 62)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 461, column: 2)
!1149 = !DILocation(line: 462, column: 7, scope: !1146)
!1150 = !DILocation(line: 462, column: 43, scope: !1146)
!1151 = !DILocation(line: 462, column: 7, scope: !1147)
!1152 = !DILocation(line: 0, scope: !1143)
!1153 = !DILocation(line: 464, column: 4, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 462, column: 49)
!1155 = !DILocation(line: 466, column: 2, scope: !1147)
!1156 = !DILocation(line: 461, column: 54, scope: !1148)
!1157 = distinct !{!1157, !1144, !1158}
!1158 = !DILocation(line: 466, column: 2, scope: !1143)
!1159 = !DILocation(line: 467, column: 10, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 467, column: 6)
!1161 = !DILocation(line: 467, column: 6, scope: !1100)
!1162 = !DILocation(line: 468, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 467, column: 19)
!1164 = !DILocation(line: 469, column: 3, scope: !1163)
!1165 = !DILocation(line: 472, column: 30, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 472, column: 2)
!1167 = !DILocation(line: 472, column: 2, scope: !1166)
!1168 = !DILocation(line: 473, column: 19, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 473, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 472, column: 62)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 472, column: 2)
!1172 = !DILocation(line: 473, column: 7, scope: !1169)
!1173 = !DILocation(line: 473, column: 43, scope: !1169)
!1174 = !DILocation(line: 473, column: 7, scope: !1170)
!1175 = !DILocation(line: 0, scope: !1166)
!1176 = !DILocation(line: 475, column: 4, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 473, column: 49)
!1178 = !DILocation(line: 477, column: 2, scope: !1170)
!1179 = !DILocation(line: 472, column: 54, scope: !1171)
!1180 = distinct !{!1180, !1167, !1181}
!1181 = !DILocation(line: 477, column: 2, scope: !1166)
!1182 = !DILocation(line: 478, column: 10, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 478, column: 6)
!1184 = !DILocation(line: 478, column: 6, scope: !1100)
!1185 = !DILocation(line: 479, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 478, column: 19)
!1187 = !DILocation(line: 480, column: 3, scope: !1186)
!1188 = !DILocation(line: 483, column: 14, scope: !1100)
!1189 = !DILocation(line: 483, column: 33, scope: !1100)
!1190 = !DILocation(line: 483, column: 26, scope: !1100)
!1191 = !DILocation(line: 484, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 484, column: 6)
!1193 = !DILocation(line: 484, column: 11, scope: !1192)
!1194 = !DILocation(line: 484, column: 6, scope: !1100)
!1195 = !DILocation(line: 486, column: 16, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 484, column: 30)
!1197 = !DILocation(line: 488, column: 12, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 487, column: 7)
!1199 = !DILocation(line: 488, column: 18, scope: !1198)
!1200 = !DILocation(line: 488, column: 4, scope: !1198)
!1201 = !DILocation(line: 487, column: 15, scope: !1198)
!1202 = !DILocation(line: 488, column: 46, scope: !1198)
!1203 = !DILocation(line: 487, column: 7, scope: !1196)
!1204 = !DILocation(line: 489, column: 4, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 488, column: 55)
!1206 = !DILocation(line: 491, column: 4, scope: !1205)
!1207 = !DILocation(line: 493, column: 26, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 493, column: 3)
!1209 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 493, column: 3)
!1210 = !DILocation(line: 493, column: 19, scope: !1208)
!1211 = !DILocation(line: 493, column: 3, scope: !1209)
!1212 = !DILocation(line: 494, column: 21, scope: !1208)
!1213 = !DILocation(line: 494, column: 16, scope: !1208)
!1214 = !DILocation(line: 494, column: 4, scope: !1208)
!1215 = !DILocation(line: 494, column: 14, scope: !1208)
!1216 = !DILocation(line: 493, column: 41, scope: !1208)
!1217 = distinct !{!1217, !1211, !1218}
!1218 = !DILocation(line: 494, column: 36, scope: !1209)
!1219 = !DILocation(line: 495, column: 12, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 495, column: 7)
!1221 = !DILocation(line: 495, column: 23, scope: !1220)
!1222 = !DILocation(line: 495, column: 7, scope: !1196)
!1223 = !DILocation(line: 496, column: 15, scope: !1220)
!1224 = !DILocation(line: 496, column: 10, scope: !1220)
!1225 = !DILocation(line: 496, column: 4, scope: !1220)
!1226 = !DILocation(line: 497, column: 8, scope: !1196)
!1227 = !DILocation(line: 497, column: 19, scope: !1196)
!1228 = !DILocation(line: 498, column: 8, scope: !1196)
!1229 = !DILocation(line: 498, column: 19, scope: !1196)
!1230 = !DILocation(line: 499, column: 2, scope: !1196)
!1231 = !DILocation(line: 501, column: 14, scope: !1100)
!1232 = !DILocation(line: 504, column: 6, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 504, column: 6)
!1234 = !DILocation(line: 504, column: 6, scope: !1100)
!1235 = !DILocation(line: 505, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 504, column: 13)
!1237 = !DILocation(line: 506, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 506, column: 7)
!1239 = !DILocation(line: 506, column: 7, scope: !1236)
!1240 = !DILocation(line: 507, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 507, column: 4)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 506, column: 13)
!1243 = !DILocation(line: 507, column: 27, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 507, column: 4)
!1245 = !DILocation(line: 507, column: 20, scope: !1244)
!1246 = !DILocation(line: 507, column: 4, scope: !1241)
!1247 = !DILocation(line: 509, column: 24, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 507, column: 46)
!1249 = !DILocation(line: 509, column: 19, scope: !1248)
!1250 = !DILocation(line: 509, column: 6, scope: !1248)
!1251 = !DILocation(line: 508, column: 10, scope: !1248)
!1252 = !DILocation(line: 508, column: 25, scope: !1248)
!1253 = !DILocation(line: 508, column: 5, scope: !1248)
!1254 = !DILocation(line: 508, column: 32, scope: !1248)
!1255 = !DILocation(line: 510, column: 10, scope: !1248)
!1256 = !DILocation(line: 510, column: 25, scope: !1248)
!1257 = !DILocation(line: 510, column: 5, scope: !1248)
!1258 = !DILocation(line: 510, column: 33, scope: !1248)
!1259 = !DILocation(line: 510, column: 42, scope: !1248)
!1260 = !DILocation(line: 511, column: 4, scope: !1248)
!1261 = !DILocation(line: 507, column: 42, scope: !1244)
!1262 = distinct !{!1262, !1246, !1263}
!1263 = !DILocation(line: 511, column: 4, scope: !1241)
!1264 = !DILocation(line: 512, column: 3, scope: !1242)
!1265 = !DILocation(line: 513, column: 9, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 513, column: 4)
!1267 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 512, column: 8)
!1268 = !DILocation(line: 513, column: 27, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 513, column: 4)
!1270 = !DILocation(line: 513, column: 20, scope: !1269)
!1271 = !DILocation(line: 513, column: 4, scope: !1266)
!1272 = !DILocation(line: 515, column: 11, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 513, column: 46)
!1274 = !DILocation(line: 515, column: 6, scope: !1273)
!1275 = !DILocation(line: 514, column: 10, scope: !1273)
!1276 = !DILocation(line: 514, column: 25, scope: !1273)
!1277 = !DILocation(line: 514, column: 5, scope: !1273)
!1278 = !DILocation(line: 514, column: 32, scope: !1273)
!1279 = !DILocation(line: 516, column: 10, scope: !1273)
!1280 = !DILocation(line: 516, column: 25, scope: !1273)
!1281 = !DILocation(line: 516, column: 5, scope: !1273)
!1282 = !DILocation(line: 516, column: 33, scope: !1273)
!1283 = !DILocation(line: 516, column: 42, scope: !1273)
!1284 = !DILocation(line: 517, column: 4, scope: !1273)
!1285 = !DILocation(line: 513, column: 42, scope: !1269)
!1286 = distinct !{!1286, !1271, !1287}
!1287 = !DILocation(line: 517, column: 4, scope: !1266)
!1288 = !DILocation(line: 519, column: 8, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 519, column: 3)
!1290 = !DILocation(line: 519, column: 26, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 519, column: 3)
!1292 = !DILocation(line: 519, column: 19, scope: !1291)
!1293 = !DILocation(line: 519, column: 3, scope: !1289)
!1294 = !DILocation(line: 520, column: 22, scope: !1291)
!1295 = !DILocation(line: 520, column: 37, scope: !1291)
!1296 = !DILocation(line: 520, column: 17, scope: !1291)
!1297 = !DILocation(line: 520, column: 4, scope: !1291)
!1298 = !DILocation(line: 519, column: 41, scope: !1291)
!1299 = distinct !{!1299, !1293, !1300}
!1300 = !DILocation(line: 520, column: 48, scope: !1289)
!1301 = !DILocation(line: 521, column: 2, scope: !1236)
!1302 = !DILocation(line: 522, column: 13, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 521, column: 7)
!1304 = !DILocation(line: 523, column: 18, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 523, column: 3)
!1306 = !DILocation(line: 523, column: 8, scope: !1305)
!1307 = !DILocation(line: 523, column: 38, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 523, column: 3)
!1309 = !DILocation(line: 523, column: 3, scope: !1305)
!1310 = !DILocation(line: 524, column: 38, scope: !1308)
!1311 = !DILocation(line: 524, column: 33, scope: !1308)
!1312 = !DILocation(line: 524, column: 9, scope: !1308)
!1313 = !DILocation(line: 524, column: 24, scope: !1308)
!1314 = !DILocation(line: 524, column: 4, scope: !1308)
!1315 = !DILocation(line: 524, column: 31, scope: !1308)
!1316 = !DILocation(line: 523, column: 46, scope: !1308)
!1317 = distinct !{!1317, !1309, !1318}
!1318 = !DILocation(line: 524, column: 53, scope: !1305)
!1319 = !DILocation(line: 525, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 525, column: 7)
!1321 = !DILocation(line: 525, column: 7, scope: !1303)
!1322 = !DILocation(line: 526, column: 27, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 526, column: 4)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 526, column: 4)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 525, column: 13)
!1326 = !DILocation(line: 526, column: 20, scope: !1323)
!1327 = !DILocation(line: 526, column: 4, scope: !1324)
!1328 = !DILocation(line: 528, column: 24, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 526, column: 46)
!1330 = !DILocation(line: 528, column: 19, scope: !1329)
!1331 = !DILocation(line: 528, column: 6, scope: !1329)
!1332 = !DILocation(line: 527, column: 10, scope: !1329)
!1333 = !DILocation(line: 527, column: 5, scope: !1329)
!1334 = !DILocation(line: 527, column: 27, scope: !1329)
!1335 = !DILocation(line: 529, column: 10, scope: !1329)
!1336 = !DILocation(line: 529, column: 5, scope: !1329)
!1337 = !DILocation(line: 529, column: 28, scope: !1329)
!1338 = !DILocation(line: 529, column: 37, scope: !1329)
!1339 = !DILocation(line: 530, column: 4, scope: !1329)
!1340 = !DILocation(line: 526, column: 42, scope: !1323)
!1341 = distinct !{!1341, !1327, !1342}
!1342 = !DILocation(line: 530, column: 4, scope: !1324)
!1343 = !DILocation(line: 531, column: 3, scope: !1325)
!1344 = !DILocation(line: 532, column: 27, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 532, column: 4)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 532, column: 4)
!1347 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 531, column: 8)
!1348 = !DILocation(line: 532, column: 20, scope: !1345)
!1349 = !DILocation(line: 532, column: 4, scope: !1346)
!1350 = !DILocation(line: 533, column: 34, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 532, column: 46)
!1352 = !DILocation(line: 533, column: 29, scope: !1351)
!1353 = !DILocation(line: 533, column: 10, scope: !1351)
!1354 = !DILocation(line: 533, column: 5, scope: !1351)
!1355 = !DILocation(line: 533, column: 27, scope: !1351)
!1356 = !DILocation(line: 534, column: 10, scope: !1351)
!1357 = !DILocation(line: 534, column: 5, scope: !1351)
!1358 = !DILocation(line: 534, column: 28, scope: !1351)
!1359 = !DILocation(line: 534, column: 37, scope: !1351)
!1360 = !DILocation(line: 535, column: 4, scope: !1351)
!1361 = !DILocation(line: 532, column: 42, scope: !1345)
!1362 = distinct !{!1362, !1349, !1363}
!1363 = !DILocation(line: 535, column: 4, scope: !1346)
!1364 = !DILocation(line: 0, scope: !1320)
!1365 = !DILocation(line: 537, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 537, column: 3)
!1367 = !DILocation(line: 537, column: 26, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 537, column: 3)
!1369 = !DILocation(line: 537, column: 19, scope: !1368)
!1370 = !DILocation(line: 537, column: 3, scope: !1366)
!1371 = !DILocation(line: 538, column: 22, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 537, column: 45)
!1373 = !DILocation(line: 538, column: 37, scope: !1372)
!1374 = !DILocation(line: 538, column: 17, scope: !1372)
!1375 = !DILocation(line: 538, column: 4, scope: !1372)
!1376 = !DILocation(line: 539, column: 3, scope: !1372)
!1377 = !DILocation(line: 537, column: 41, scope: !1368)
!1378 = distinct !{!1378, !1370, !1379}
!1379 = !DILocation(line: 539, column: 3, scope: !1366)
!1380 = !DILocation(line: 541, column: 7, scope: !1100)
!1381 = !DILocation(line: 541, column: 19, scope: !1100)
!1382 = !DILocation(line: 543, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 543, column: 6)
!1384 = !DILocation(line: 543, column: 6, scope: !1100)
!1385 = !DILocation(line: 544, column: 3, scope: !1383)
!1386 = !DILocation(line: 546, column: 8, scope: !1100)
!1387 = !DILocation(line: 546, column: 17, scope: !1100)
!1388 = !DILocation(line: 547, column: 2, scope: !1100)
!1389 = !DILocation(line: 549, column: 2, scope: !1100)
!1390 = !DILocation(line: 550, column: 1, scope: !1100)
!1391 = distinct !DISubprogram(name: "fixextbonds", scope: !3, file: !3, line: 1618, type: !1392, scopeLine: 1619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !56, !36}
!1394 = !{!1395, !1396, !1397}
!1395 = !DILocalVariable(name: "res", arg: 1, scope: !1391, file: !3, line: 1618, type: !56)
!1396 = !DILocalVariable(name: "roff", arg: 2, scope: !1391, file: !3, line: 1618, type: !36)
!1397 = !DILocalVariable(name: "ep", scope: !1391, file: !3, line: 1620, type: !72)
!1398 = !DILocation(line: 0, scope: !1391)
!1399 = !DILocation(line: 1622, column: 17, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 1622, column: 2)
!1401 = !DILocation(line: 1622, column: 2, scope: !1400)
!1402 = !DILocation(line: 1623, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 1622, column: 2)
!1404 = !DILocation(line: 1623, column: 15, scope: !1403)
!1405 = !DILocation(line: 1623, column: 3, scope: !1403)
!1406 = !DILocation(line: 1622, column: 42, scope: !1403)
!1407 = distinct !{!1407, !1401, !1408}
!1408 = !DILocation(line: 1623, column: 18, scope: !1400)
!1409 = !DILocation(line: 1624, column: 1, scope: !1391)
!1410 = distinct !DISubprogram(name: "freestrand", scope: !3, file: !3, line: 1626, type: !1411, scopeLine: 1627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !22, !241}
!1413 = !{!1414, !1415, !1416, !1417, !1418}
!1414 = !DILocalVariable(name: "mol", arg: 1, scope: !1410, file: !3, line: 1626, type: !22)
!1415 = !DILocalVariable(name: "sname", arg: 2, scope: !1410, file: !3, line: 1626, type: !241)
!1416 = !DILocalVariable(name: "sp", scope: !1410, file: !3, line: 1628, type: !38)
!1417 = !DILocalVariable(name: "spl", scope: !1410, file: !3, line: 1628, type: !38)
!1418 = !DILocalVariable(name: "sprm", scope: !1410, file: !3, line: 1628, type: !38)
!1419 = !DILocation(line: 0, scope: !1410)
!1420 = !DILocation(line: 1630, column: 36, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1630, column: 2)
!1422 = !DILocation(line: 1630, column: 2, scope: !1421)
!1423 = !DILocation(line: 1631, column: 19, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 1631, column: 7)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1630, column: 68)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 1630, column: 2)
!1427 = !DILocation(line: 1631, column: 7, scope: !1424)
!1428 = !DILocation(line: 1631, column: 41, scope: !1424)
!1429 = !DILocation(line: 1631, column: 7, scope: !1425)
!1430 = !DILocation(line: 0, scope: !1421)
!1431 = !DILocation(line: 1633, column: 4, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 1631, column: 47)
!1433 = !DILocation(line: 1636, column: 2, scope: !1425)
!1434 = !DILocation(line: 1630, column: 60, scope: !1426)
!1435 = distinct !{!1435, !1422, !1436}
!1436 = !DILocation(line: 1636, column: 2, scope: !1421)
!1437 = !DILocation(line: 1638, column: 11, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1638, column: 6)
!1439 = !DILocation(line: 1638, column: 6, scope: !1410)
!1440 = !DILocation(line: 1639, column: 3, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1638, column: 20)
!1442 = !DILocation(line: 1640, column: 3, scope: !1441)
!1443 = !DILocation(line: 1643, column: 10, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1643, column: 6)
!1445 = !DILocation(line: 1643, column: 6, scope: !1410)
!1446 = !DILocation(line: 1644, column: 26, scope: !1444)
!1447 = !DILocation(line: 1644, column: 8, scope: !1444)
!1448 = !DILocation(line: 1644, column: 18, scope: !1444)
!1449 = !DILocation(line: 1644, column: 3, scope: !1444)
!1450 = !DILocation(line: 1646, column: 23, scope: !1444)
!1451 = !DILocation(line: 1646, column: 8, scope: !1444)
!1452 = !DILocation(line: 1646, column: 15, scope: !1444)
!1453 = !DILocation(line: 1647, column: 7, scope: !1410)
!1454 = !DILocation(line: 1647, column: 17, scope: !1410)
!1455 = !DILocation(line: 1648, column: 1, scope: !1410)
!1456 = distinct !DISubprogram(name: "upd_molnumbers", scope: !3, file: !3, line: 1288, type: !1457, scopeLine: 1289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !22}
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1460 = !DILocalVariable(name: "mp", arg: 1, scope: !1456, file: !3, line: 1288, type: !22)
!1461 = !DILocalVariable(name: "s", scope: !1456, file: !3, line: 1290, type: !36)
!1462 = !DILocalVariable(name: "r", scope: !1456, file: !3, line: 1290, type: !36)
!1463 = !DILocalVariable(name: "a", scope: !1456, file: !3, line: 1290, type: !36)
!1464 = !DILocalVariable(name: "a1", scope: !1456, file: !3, line: 1290, type: !36)
!1465 = !DILocalVariable(name: "ta", scope: !1456, file: !3, line: 1291, type: !36)
!1466 = !DILocalVariable(name: "tr", scope: !1456, file: !3, line: 1291, type: !36)
!1467 = !DILocalVariable(name: "sp", scope: !1456, file: !3, line: 1292, type: !38)
!1468 = !DILocalVariable(name: "res", scope: !1456, file: !3, line: 1293, type: !56)
!1469 = !DILocalVariable(name: "ap", scope: !1456, file: !3, line: 1294, type: !102)
!1470 = !DILocation(line: 0, scope: !1456)
!1471 = !DILocation(line: 1296, column: 33, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1296, column: 2)
!1473 = !DILocation(line: 1296, column: 2, scope: !1472)
!1474 = !DILocation(line: 1297, column: 23, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1296, column: 70)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1296, column: 2)
!1477 = !DILocation(line: 1297, column: 7, scope: !1475)
!1478 = !DILocation(line: 1297, column: 19, scope: !1475)
!1479 = !DILocation(line: 1298, column: 27, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 1298, column: 3)
!1481 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 1298, column: 3)
!1482 = !DILocation(line: 1298, column: 21, scope: !1480)
!1483 = !DILocation(line: 1298, column: 3, scope: !1481)
!1484 = !DILocation(line: 1299, column: 14, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 1298, column: 51)
!1486 = !DILocation(line: 1299, column: 10, scope: !1485)
!1487 = !DILocation(line: 1300, column: 24, scope: !1485)
!1488 = !DILocation(line: 1300, column: 9, scope: !1485)
!1489 = !DILocation(line: 1300, column: 19, scope: !1485)
!1490 = !{!530, !497, i64 12}
!1491 = !DILocation(line: 1298, column: 47, scope: !1480)
!1492 = !DILocation(line: 1301, column: 9, scope: !1485)
!1493 = !DILocation(line: 1301, column: 18, scope: !1485)
!1494 = !{!530, !497, i64 16}
!1495 = !DILocation(line: 1302, column: 27, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 1302, column: 4)
!1497 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 1302, column: 4)
!1498 = !DILocation(line: 1302, column: 20, scope: !1496)
!1499 = !DILocation(line: 1302, column: 4, scope: !1497)
!1500 = !DILocation(line: 1303, column: 16, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 1302, column: 54)
!1502 = !DILocation(line: 1303, column: 11, scope: !1501)
!1503 = !DILocation(line: 1304, column: 23, scope: !1501)
!1504 = !DILocation(line: 1304, column: 9, scope: !1501)
!1505 = !DILocation(line: 1304, column: 19, scope: !1501)
!1506 = !{!592, !497, i64 132}
!1507 = !DILocation(line: 1305, column: 25, scope: !1501)
!1508 = !DILocation(line: 1305, column: 9, scope: !1501)
!1509 = !DILocation(line: 1305, column: 20, scope: !1501)
!1510 = !{!592, !497, i64 128}
!1511 = !DILocation(line: 1306, column: 4, scope: !1501)
!1512 = !DILocation(line: 1302, column: 39, scope: !1496)
!1513 = !DILocation(line: 1302, column: 45, scope: !1496)
!1514 = !DILocation(line: 1302, column: 50, scope: !1496)
!1515 = distinct !{!1515, !1499, !1516}
!1516 = !DILocation(line: 1306, column: 4, scope: !1497)
!1517 = !DILocation(line: 0, scope: !1472)
!1518 = !DILocation(line: 0, scope: !1481)
!1519 = !DILocation(line: 1307, column: 3, scope: !1485)
!1520 = !DILocation(line: 1298, column: 42, scope: !1480)
!1521 = distinct !{!1521, !1483, !1522}
!1522 = !DILocation(line: 1307, column: 3, scope: !1481)
!1523 = !DILocation(line: 1296, column: 10, scope: !1472)
!1524 = !DILocation(line: 1308, column: 2, scope: !1475)
!1525 = !DILocation(line: 1296, column: 49, scope: !1476)
!1526 = !DILocation(line: 1296, column: 62, scope: !1476)
!1527 = distinct !{!1527, !1473, !1528}
!1528 = !DILocation(line: 1308, column: 2, scope: !1472)
!1529 = !DILocation(line: 1296, column: 15, scope: !1472)
!1530 = !DILocation(line: 1309, column: 6, scope: !1456)
!1531 = !DILocation(line: 1309, column: 17, scope: !1456)
!1532 = !DILocation(line: 1310, column: 6, scope: !1456)
!1533 = !DILocation(line: 1310, column: 18, scope: !1456)
!1534 = !DILocation(line: 1311, column: 6, scope: !1456)
!1535 = !DILocation(line: 1311, column: 15, scope: !1456)
!1536 = !{!496, !497, i64 116}
!1537 = !DILocation(line: 1312, column: 6, scope: !1456)
!1538 = !DILocation(line: 1312, column: 15, scope: !1456)
!1539 = !DILocation(line: 1313, column: 1, scope: !1456)
!1540 = distinct !DISubprogram(name: "countmolstrands", scope: !3, file: !3, line: 552, type: !731, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1541)
!1541 = !{!1542, !1543, !1544, !1545}
!1542 = !DILocalVariable(name: "m", arg: 1, scope: !1540, file: !3, line: 552, type: !22)
!1543 = !DILocalVariable(name: "aex", arg: 2, scope: !1540, file: !3, line: 552, type: !241)
!1544 = !DILocalVariable(name: "n", scope: !1540, file: !3, line: 554, type: !36)
!1545 = !DILocalVariable(name: "sp", scope: !1540, file: !3, line: 555, type: !38)
!1546 = !DILocation(line: 0, scope: !1540)
!1547 = !DILocation(line: 557, column: 2, scope: !1540)
!1548 = !DILocation(line: 558, column: 22, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 558, column: 2)
!1550 = !DILocation(line: 558, column: 2, scope: !1549)
!1551 = !DILocation(line: 559, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 559, column: 7)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 558, column: 54)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 558, column: 2)
!1555 = !DILocation(line: 559, column: 18, scope: !1552)
!1556 = !DILocation(line: 559, column: 7, scope: !1553)
!1557 = !DILocation(line: 560, column: 5, scope: !1552)
!1558 = !DILocation(line: 560, column: 4, scope: !1552)
!1559 = !DILocation(line: 0, scope: !1549)
!1560 = !DILocation(line: 561, column: 2, scope: !1553)
!1561 = !DILocation(line: 558, column: 46, scope: !1554)
!1562 = distinct !{!1562, !1550, !1563}
!1563 = !DILocation(line: 561, column: 2, scope: !1549)
!1564 = !DILocation(line: 562, column: 2, scope: !1540)
!1565 = distinct !DISubprogram(name: "countstrandresidues", scope: !3, file: !3, line: 565, type: !1566, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!36, !22, !36}
!1568 = !{!1569, !1570, !1571, !1572}
!1569 = !DILocalVariable(name: "m", arg: 1, scope: !1565, file: !3, line: 565, type: !22)
!1570 = !DILocalVariable(name: "strandnum", arg: 2, scope: !1565, file: !3, line: 565, type: !36)
!1571 = !DILocalVariable(name: "sp", scope: !1565, file: !3, line: 567, type: !38)
!1572 = !DILocalVariable(name: "i", scope: !1565, file: !3, line: 568, type: !36)
!1573 = !DILocation(line: 0, scope: !1565)
!1574 = !DILocation(line: 569, column: 22, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 569, column: 2)
!1576 = !DILocation(line: 569, column: 7, scope: !1575)
!1577 = !DILocation(line: 0, scope: !1575)
!1578 = !DILocation(line: 569, column: 33, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 569, column: 2)
!1580 = !DILocation(line: 569, column: 38, scope: !1579)
!1581 = !DILocation(line: 569, column: 44, scope: !1579)
!1582 = !DILocation(line: 0, scope: !1579)
!1583 = !DILocation(line: 569, column: 2, scope: !1575)
!1584 = !DILocation(line: 570, column: 4, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 569, column: 75)
!1586 = !DILocation(line: 571, column: 2, scope: !1585)
!1587 = !DILocation(line: 569, column: 67, scope: !1579)
!1588 = !DILocation(line: 569, column: 2, scope: !1579)
!1589 = distinct !{!1589, !1583, !1590}
!1590 = !DILocation(line: 571, column: 2, scope: !1575)
!1591 = !DILocation(line: 572, column: 14, scope: !1565)
!1592 = !DILocation(line: 572, column: 2, scope: !1565)
!1593 = distinct !DISubprogram(name: "countmolres", scope: !3, file: !3, line: 575, type: !731, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600}
!1595 = !DILocalVariable(name: "m", arg: 1, scope: !1593, file: !3, line: 575, type: !22)
!1596 = !DILocalVariable(name: "aex", arg: 2, scope: !1593, file: !3, line: 575, type: !241)
!1597 = !DILocalVariable(name: "r", scope: !1593, file: !3, line: 577, type: !36)
!1598 = !DILocalVariable(name: "n", scope: !1593, file: !3, line: 577, type: !36)
!1599 = !DILocalVariable(name: "sp", scope: !1593, file: !3, line: 578, type: !38)
!1600 = !DILocalVariable(name: "res", scope: !1593, file: !3, line: 579, type: !56)
!1601 = !DILocation(line: 0, scope: !1593)
!1602 = !DILocation(line: 581, column: 2, scope: !1593)
!1603 = !DILocation(line: 582, column: 22, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 582, column: 2)
!1605 = !DILocation(line: 582, column: 2, scope: !1604)
!1606 = !DILocation(line: 583, column: 23, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 583, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 583, column: 3)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 582, column: 54)
!1610 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 582, column: 2)
!1611 = !DILocation(line: 583, column: 17, scope: !1607)
!1612 = !DILocation(line: 583, column: 3, scope: !1608)
!1613 = !DILocation(line: 584, column: 14, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 583, column: 41)
!1615 = !DILocation(line: 584, column: 10, scope: !1614)
!1616 = !DILocation(line: 585, column: 13, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 585, column: 8)
!1618 = !{!530, !497, i64 40}
!1619 = !DILocation(line: 585, column: 20, scope: !1617)
!1620 = !DILocation(line: 585, column: 8, scope: !1614)
!1621 = !DILocation(line: 586, column: 6, scope: !1617)
!1622 = !DILocation(line: 586, column: 5, scope: !1617)
!1623 = !DILocation(line: 0, scope: !1604)
!1624 = !DILocation(line: 587, column: 3, scope: !1614)
!1625 = !DILocation(line: 583, column: 37, scope: !1607)
!1626 = distinct !{!1626, !1612, !1627}
!1627 = !DILocation(line: 587, column: 3, scope: !1608)
!1628 = !DILocation(line: 588, column: 2, scope: !1609)
!1629 = !DILocation(line: 582, column: 46, scope: !1610)
!1630 = distinct !{!1630, !1605, !1631}
!1631 = !DILocation(line: 588, column: 2, scope: !1604)
!1632 = !DILocation(line: 582, column: 9, scope: !1604)
!1633 = !DILocation(line: 589, column: 2, scope: !1593)
!1634 = distinct !DISubprogram(name: "countmolatoms", scope: !3, file: !3, line: 592, type: !731, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!1636 = !DILocalVariable(name: "m", arg: 1, scope: !1634, file: !3, line: 592, type: !22)
!1637 = !DILocalVariable(name: "aex", arg: 2, scope: !1634, file: !3, line: 592, type: !241)
!1638 = !DILocalVariable(name: "r", scope: !1634, file: !3, line: 594, type: !36)
!1639 = !DILocalVariable(name: "a", scope: !1634, file: !3, line: 594, type: !36)
!1640 = !DILocalVariable(name: "n", scope: !1634, file: !3, line: 594, type: !36)
!1641 = !DILocalVariable(name: "sp", scope: !1634, file: !3, line: 595, type: !38)
!1642 = !DILocalVariable(name: "res", scope: !1634, file: !3, line: 596, type: !56)
!1643 = !DILocalVariable(name: "ap", scope: !1634, file: !3, line: 597, type: !102)
!1644 = !DILocation(line: 0, scope: !1634)
!1645 = !DILocation(line: 599, column: 2, scope: !1634)
!1646 = !DILocation(line: 600, column: 22, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 600, column: 2)
!1648 = !DILocation(line: 600, column: 2, scope: !1647)
!1649 = !DILocation(line: 601, column: 23, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 601, column: 3)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 601, column: 3)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 600, column: 54)
!1653 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 600, column: 2)
!1654 = !DILocation(line: 601, column: 17, scope: !1650)
!1655 = !DILocation(line: 601, column: 3, scope: !1651)
!1656 = !DILocation(line: 602, column: 14, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 601, column: 41)
!1658 = !DILocation(line: 602, column: 10, scope: !1657)
!1659 = !DILocation(line: 603, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 603, column: 4)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 603, column: 4)
!1662 = !DILocation(line: 603, column: 18, scope: !1660)
!1663 = !DILocation(line: 603, column: 4, scope: !1661)
!1664 = !DILocation(line: 604, column: 16, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 603, column: 40)
!1666 = !DILocation(line: 604, column: 11, scope: !1665)
!1667 = !DILocation(line: 605, column: 13, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 605, column: 9)
!1669 = !{!592, !497, i64 16}
!1670 = !DILocation(line: 605, column: 20, scope: !1668)
!1671 = !DILocation(line: 605, column: 9, scope: !1665)
!1672 = !DILocation(line: 606, column: 7, scope: !1668)
!1673 = !DILocation(line: 606, column: 6, scope: !1668)
!1674 = !DILocation(line: 0, scope: !1647)
!1675 = !DILocation(line: 607, column: 4, scope: !1665)
!1676 = !DILocation(line: 603, column: 36, scope: !1660)
!1677 = distinct !{!1677, !1663, !1678}
!1678 = !DILocation(line: 607, column: 4, scope: !1661)
!1679 = !DILocation(line: 608, column: 3, scope: !1657)
!1680 = !DILocation(line: 601, column: 37, scope: !1650)
!1681 = distinct !{!1681, !1655, !1682}
!1682 = !DILocation(line: 608, column: 3, scope: !1651)
!1683 = !DILocation(line: 600, column: 9, scope: !1647)
!1684 = !DILocation(line: 609, column: 2, scope: !1652)
!1685 = !DILocation(line: 600, column: 46, scope: !1653)
!1686 = distinct !{!1686, !1648, !1687}
!1687 = !DILocation(line: 609, column: 2, scope: !1647)
!1688 = !DILocation(line: 610, column: 2, scope: !1634)
!1689 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 613, type: !1690, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!30, !22, !241, !241}
!1692 = !{!1693, !1694, !1695, !1696, !1697}
!1693 = !DILocalVariable(name: "m", arg: 1, scope: !1689, file: !3, line: 613, type: !22)
!1694 = !DILocalVariable(name: "aex1", arg: 2, scope: !1689, file: !3, line: 613, type: !241)
!1695 = !DILocalVariable(name: "aex2", arg: 3, scope: !1689, file: !3, line: 613, type: !241)
!1696 = !DILocalVariable(name: "p1", scope: !1689, file: !3, line: 615, type: !127)
!1697 = !DILocalVariable(name: "p2", scope: !1689, file: !3, line: 615, type: !127)
!1698 = !DILocation(line: 0, scope: !1689)
!1699 = !DILocation(line: 615, column: 2, scope: !1689)
!1700 = !DILocation(line: 615, column: 10, scope: !1689)
!1701 = !DILocation(line: 615, column: 14, scope: !1689)
!1702 = !DILocation(line: 617, column: 21, scope: !1689)
!1703 = !DILocation(line: 617, column: 2, scope: !1689)
!1704 = !DILocation(line: 618, column: 21, scope: !1689)
!1705 = !DILocation(line: 618, column: 2, scope: !1689)
!1706 = !DILocation(line: 619, column: 17, scope: !1689)
!1707 = !DILocation(line: 619, column: 21, scope: !1689)
!1708 = !DILocation(line: 619, column: 10, scope: !1689)
!1709 = !DILocation(line: 620, column: 1, scope: !1689)
!1710 = !DILocation(line: 619, column: 2, scope: !1689)
!1711 = distinct !DISubprogram(name: "distp", scope: !3, file: !3, line: 622, type: !260, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717}
!1713 = !DILocalVariable(name: "pi", arg: 1, scope: !1711, file: !3, line: 622, type: !180)
!1714 = !DILocalVariable(name: "pj", arg: 2, scope: !1711, file: !3, line: 622, type: !180)
!1715 = !DILocalVariable(name: "dx", scope: !1711, file: !3, line: 624, type: !30)
!1716 = !DILocalVariable(name: "dy", scope: !1711, file: !3, line: 624, type: !30)
!1717 = !DILocalVariable(name: "dz", scope: !1711, file: !3, line: 624, type: !30)
!1718 = !DILocation(line: 0, scope: !1711)
!1719 = !DILocation(line: 626, column: 7, scope: !1711)
!1720 = !DILocation(line: 626, column: 17, scope: !1711)
!1721 = !DILocation(line: 626, column: 15, scope: !1711)
!1722 = !DILocation(line: 627, column: 7, scope: !1711)
!1723 = !DILocation(line: 627, column: 17, scope: !1711)
!1724 = !DILocation(line: 627, column: 15, scope: !1711)
!1725 = !DILocation(line: 628, column: 7, scope: !1711)
!1726 = !DILocation(line: 628, column: 17, scope: !1711)
!1727 = !DILocation(line: 628, column: 15, scope: !1711)
!1728 = !DILocation(line: 629, column: 19, scope: !1711)
!1729 = !DILocation(line: 629, column: 29, scope: !1711)
!1730 = !DILocation(line: 629, column: 24, scope: !1711)
!1731 = !DILocation(line: 629, column: 39, scope: !1711)
!1732 = !DILocation(line: 629, column: 34, scope: !1711)
!1733 = !DILocation(line: 629, column: 10, scope: !1711)
!1734 = !DILocation(line: 629, column: 2, scope: !1711)
!1735 = distinct !DISubprogram(name: "angle", scope: !3, file: !3, line: 632, type: !1736, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!30, !22, !241, !241, !241}
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745}
!1739 = !DILocalVariable(name: "m", arg: 1, scope: !1735, file: !3, line: 632, type: !22)
!1740 = !DILocalVariable(name: "aex1", arg: 2, scope: !1735, file: !3, line: 632, type: !241)
!1741 = !DILocalVariable(name: "aex2", arg: 3, scope: !1735, file: !3, line: 632, type: !241)
!1742 = !DILocalVariable(name: "aex3", arg: 4, scope: !1735, file: !3, line: 632, type: !241)
!1743 = !DILocalVariable(name: "p1", scope: !1735, file: !3, line: 634, type: !127)
!1744 = !DILocalVariable(name: "p2", scope: !1735, file: !3, line: 634, type: !127)
!1745 = !DILocalVariable(name: "p3", scope: !1735, file: !3, line: 634, type: !127)
!1746 = !DILocation(line: 0, scope: !1735)
!1747 = !DILocation(line: 634, column: 2, scope: !1735)
!1748 = !DILocation(line: 634, column: 10, scope: !1735)
!1749 = !DILocation(line: 634, column: 14, scope: !1735)
!1750 = !DILocation(line: 634, column: 18, scope: !1735)
!1751 = !DILocation(line: 636, column: 21, scope: !1735)
!1752 = !DILocation(line: 636, column: 2, scope: !1735)
!1753 = !DILocation(line: 637, column: 21, scope: !1735)
!1754 = !DILocation(line: 637, column: 2, scope: !1735)
!1755 = !DILocation(line: 638, column: 21, scope: !1735)
!1756 = !DILocation(line: 638, column: 2, scope: !1735)
!1757 = !DILocation(line: 639, column: 18, scope: !1735)
!1758 = !DILocation(line: 639, column: 22, scope: !1735)
!1759 = !DILocation(line: 639, column: 26, scope: !1735)
!1760 = !DILocation(line: 639, column: 10, scope: !1735)
!1761 = !DILocation(line: 640, column: 1, scope: !1735)
!1762 = !DILocation(line: 639, column: 2, scope: !1735)
!1763 = distinct !DISubprogram(name: "anglep", scope: !3, file: !3, line: 642, type: !263, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1764 = !{!1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776}
!1765 = !DILocalVariable(name: "p1", arg: 1, scope: !1763, file: !3, line: 642, type: !180)
!1766 = !DILocalVariable(name: "p2", arg: 2, scope: !1763, file: !3, line: 642, type: !180)
!1767 = !DILocalVariable(name: "p3", arg: 3, scope: !1763, file: !3, line: 642, type: !180)
!1768 = !DILocalVariable(name: "x12", scope: !1763, file: !3, line: 644, type: !30)
!1769 = !DILocalVariable(name: "x32", scope: !1763, file: !3, line: 644, type: !30)
!1770 = !DILocalVariable(name: "y12", scope: !1763, file: !3, line: 645, type: !30)
!1771 = !DILocalVariable(name: "y32", scope: !1763, file: !3, line: 645, type: !30)
!1772 = !DILocalVariable(name: "z12", scope: !1763, file: !3, line: 646, type: !30)
!1773 = !DILocalVariable(name: "z32", scope: !1763, file: !3, line: 646, type: !30)
!1774 = !DILocalVariable(name: "l12", scope: !1763, file: !3, line: 647, type: !30)
!1775 = !DILocalVariable(name: "l32", scope: !1763, file: !3, line: 647, type: !30)
!1776 = !DILocalVariable(name: "dp", scope: !1763, file: !3, line: 647, type: !30)
!1777 = !DILocation(line: 0, scope: !1763)
!1778 = !DILocation(line: 649, column: 8, scope: !1763)
!1779 = !DILocation(line: 649, column: 18, scope: !1763)
!1780 = !DILocation(line: 649, column: 16, scope: !1763)
!1781 = !DILocation(line: 650, column: 8, scope: !1763)
!1782 = !DILocation(line: 650, column: 18, scope: !1763)
!1783 = !DILocation(line: 650, column: 16, scope: !1763)
!1784 = !DILocation(line: 651, column: 8, scope: !1763)
!1785 = !DILocation(line: 651, column: 18, scope: !1763)
!1786 = !DILocation(line: 651, column: 16, scope: !1763)
!1787 = !DILocation(line: 652, column: 8, scope: !1763)
!1788 = !DILocation(line: 652, column: 18, scope: !1763)
!1789 = !DILocation(line: 652, column: 16, scope: !1763)
!1790 = !DILocation(line: 653, column: 8, scope: !1763)
!1791 = !DILocation(line: 653, column: 18, scope: !1763)
!1792 = !DILocation(line: 653, column: 16, scope: !1763)
!1793 = !DILocation(line: 654, column: 8, scope: !1763)
!1794 = !DILocation(line: 654, column: 18, scope: !1763)
!1795 = !DILocation(line: 654, column: 16, scope: !1763)
!1796 = !DILocation(line: 655, column: 18, scope: !1763)
!1797 = !DILocation(line: 655, column: 30, scope: !1763)
!1798 = !DILocation(line: 655, column: 24, scope: !1763)
!1799 = !DILocation(line: 655, column: 42, scope: !1763)
!1800 = !DILocation(line: 655, column: 36, scope: !1763)
!1801 = !DILocation(line: 655, column: 8, scope: !1763)
!1802 = !DILocation(line: 656, column: 18, scope: !1763)
!1803 = !DILocation(line: 656, column: 30, scope: !1763)
!1804 = !DILocation(line: 656, column: 24, scope: !1763)
!1805 = !DILocation(line: 656, column: 42, scope: !1763)
!1806 = !DILocation(line: 656, column: 36, scope: !1763)
!1807 = !DILocation(line: 656, column: 8, scope: !1763)
!1808 = !DILocation(line: 657, column: 10, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 657, column: 6)
!1810 = !DILocation(line: 657, column: 6, scope: !1763)
!1811 = !DILocation(line: 658, column: 12, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 657, column: 18)
!1813 = !DILocation(line: 658, column: 3, scope: !1812)
!1814 = !DILocation(line: 660, column: 3, scope: !1812)
!1815 = !DILocation(line: 662, column: 10, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 662, column: 6)
!1817 = !DILocation(line: 662, column: 6, scope: !1763)
!1818 = !DILocation(line: 663, column: 12, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 662, column: 18)
!1820 = !DILocation(line: 663, column: 3, scope: !1819)
!1821 = !DILocation(line: 665, column: 3, scope: !1819)
!1822 = !DILocation(line: 667, column: 11, scope: !1763)
!1823 = !DILocation(line: 667, column: 23, scope: !1763)
!1824 = !DILocation(line: 667, column: 17, scope: !1763)
!1825 = !DILocation(line: 667, column: 35, scope: !1763)
!1826 = !DILocation(line: 667, column: 29, scope: !1763)
!1827 = !DILocation(line: 668, column: 33, scope: !1763)
!1828 = !DILocation(line: 668, column: 25, scope: !1763)
!1829 = !DILocation(line: 668, column: 16, scope: !1763)
!1830 = !DILocation(line: 668, column: 14, scope: !1763)
!1831 = !DILocation(line: 668, column: 2, scope: !1763)
!1832 = !DILocation(line: 669, column: 1, scope: !1763)
!1833 = distinct !DISubprogram(name: "torsion", scope: !3, file: !3, line: 671, type: !1834, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!30, !22, !241, !241, !241, !241}
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845}
!1837 = !DILocalVariable(name: "mol", arg: 1, scope: !1833, file: !3, line: 671, type: !22)
!1838 = !DILocalVariable(name: "aei", arg: 2, scope: !1833, file: !3, line: 671, type: !241)
!1839 = !DILocalVariable(name: "aej", arg: 3, scope: !1833, file: !3, line: 671, type: !241)
!1840 = !DILocalVariable(name: "aek", arg: 4, scope: !1833, file: !3, line: 671, type: !241)
!1841 = !DILocalVariable(name: "ael", arg: 5, scope: !1833, file: !3, line: 671, type: !241)
!1842 = !DILocalVariable(name: "pi", scope: !1833, file: !3, line: 673, type: !127)
!1843 = !DILocalVariable(name: "pj", scope: !1833, file: !3, line: 673, type: !127)
!1844 = !DILocalVariable(name: "pk", scope: !1833, file: !3, line: 673, type: !127)
!1845 = !DILocalVariable(name: "pl", scope: !1833, file: !3, line: 673, type: !127)
!1846 = !DILocation(line: 0, scope: !1833)
!1847 = !DILocation(line: 673, column: 2, scope: !1833)
!1848 = !DILocation(line: 673, column: 10, scope: !1833)
!1849 = !DILocation(line: 673, column: 14, scope: !1833)
!1850 = !DILocation(line: 673, column: 18, scope: !1833)
!1851 = !DILocation(line: 673, column: 22, scope: !1833)
!1852 = !DILocation(line: 675, column: 22, scope: !1833)
!1853 = !DILocation(line: 675, column: 2, scope: !1833)
!1854 = !DILocation(line: 676, column: 22, scope: !1833)
!1855 = !DILocation(line: 676, column: 2, scope: !1833)
!1856 = !DILocation(line: 677, column: 22, scope: !1833)
!1857 = !DILocation(line: 677, column: 2, scope: !1833)
!1858 = !DILocation(line: 678, column: 22, scope: !1833)
!1859 = !DILocation(line: 678, column: 2, scope: !1833)
!1860 = !DILocation(line: 680, column: 20, scope: !1833)
!1861 = !DILocation(line: 680, column: 24, scope: !1833)
!1862 = !DILocation(line: 680, column: 28, scope: !1833)
!1863 = !DILocation(line: 680, column: 32, scope: !1833)
!1864 = !DILocation(line: 680, column: 10, scope: !1833)
!1865 = !DILocation(line: 681, column: 1, scope: !1833)
!1866 = !DILocation(line: 680, column: 2, scope: !1833)
!1867 = distinct !DISubprogram(name: "torsionp", scope: !3, file: !3, line: 683, type: !266, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893}
!1869 = !DILocalVariable(name: "pi", arg: 1, scope: !1867, file: !3, line: 683, type: !180)
!1870 = !DILocalVariable(name: "pj", arg: 2, scope: !1867, file: !3, line: 683, type: !180)
!1871 = !DILocalVariable(name: "pk", arg: 3, scope: !1867, file: !3, line: 683, type: !180)
!1872 = !DILocalVariable(name: "pl", arg: 4, scope: !1867, file: !3, line: 683, type: !180)
!1873 = !DILocalVariable(name: "xij", scope: !1867, file: !3, line: 685, type: !30)
!1874 = !DILocalVariable(name: "yij", scope: !1867, file: !3, line: 685, type: !30)
!1875 = !DILocalVariable(name: "zij", scope: !1867, file: !3, line: 685, type: !30)
!1876 = !DILocalVariable(name: "xkj", scope: !1867, file: !3, line: 686, type: !30)
!1877 = !DILocalVariable(name: "ykj", scope: !1867, file: !3, line: 686, type: !30)
!1878 = !DILocalVariable(name: "zkj", scope: !1867, file: !3, line: 686, type: !30)
!1879 = !DILocalVariable(name: "xkl", scope: !1867, file: !3, line: 687, type: !30)
!1880 = !DILocalVariable(name: "ykl", scope: !1867, file: !3, line: 687, type: !30)
!1881 = !DILocalVariable(name: "zkl", scope: !1867, file: !3, line: 687, type: !30)
!1882 = !DILocalVariable(name: "dx", scope: !1867, file: !3, line: 688, type: !30)
!1883 = !DILocalVariable(name: "dy", scope: !1867, file: !3, line: 688, type: !30)
!1884 = !DILocalVariable(name: "dz", scope: !1867, file: !3, line: 688, type: !30)
!1885 = !DILocalVariable(name: "gx", scope: !1867, file: !3, line: 689, type: !30)
!1886 = !DILocalVariable(name: "gy", scope: !1867, file: !3, line: 689, type: !30)
!1887 = !DILocalVariable(name: "gz", scope: !1867, file: !3, line: 689, type: !30)
!1888 = !DILocalVariable(name: "bi", scope: !1867, file: !3, line: 690, type: !30)
!1889 = !DILocalVariable(name: "bk", scope: !1867, file: !3, line: 690, type: !30)
!1890 = !DILocalVariable(name: "ct", scope: !1867, file: !3, line: 691, type: !30)
!1891 = !DILocalVariable(name: "d", scope: !1867, file: !3, line: 691, type: !30)
!1892 = !DILocalVariable(name: "ap", scope: !1867, file: !3, line: 691, type: !30)
!1893 = !DILocalVariable(name: "app", scope: !1867, file: !3, line: 691, type: !30)
!1894 = !DILocation(line: 0, scope: !1867)
!1895 = !DILocation(line: 693, column: 8, scope: !1867)
!1896 = !DILocation(line: 693, column: 18, scope: !1867)
!1897 = !DILocation(line: 693, column: 16, scope: !1867)
!1898 = !DILocation(line: 694, column: 8, scope: !1867)
!1899 = !DILocation(line: 694, column: 18, scope: !1867)
!1900 = !DILocation(line: 694, column: 16, scope: !1867)
!1901 = !DILocation(line: 695, column: 8, scope: !1867)
!1902 = !DILocation(line: 695, column: 18, scope: !1867)
!1903 = !DILocation(line: 695, column: 16, scope: !1867)
!1904 = !DILocation(line: 696, column: 8, scope: !1867)
!1905 = !DILocation(line: 696, column: 18, scope: !1867)
!1906 = !DILocation(line: 696, column: 16, scope: !1867)
!1907 = !DILocation(line: 697, column: 8, scope: !1867)
!1908 = !DILocation(line: 697, column: 18, scope: !1867)
!1909 = !DILocation(line: 697, column: 16, scope: !1867)
!1910 = !DILocation(line: 698, column: 8, scope: !1867)
!1911 = !DILocation(line: 698, column: 18, scope: !1867)
!1912 = !DILocation(line: 698, column: 16, scope: !1867)
!1913 = !DILocation(line: 699, column: 8, scope: !1867)
!1914 = !DILocation(line: 699, column: 18, scope: !1867)
!1915 = !DILocation(line: 699, column: 16, scope: !1867)
!1916 = !DILocation(line: 700, column: 8, scope: !1867)
!1917 = !DILocation(line: 700, column: 18, scope: !1867)
!1918 = !DILocation(line: 700, column: 16, scope: !1867)
!1919 = !DILocation(line: 701, column: 8, scope: !1867)
!1920 = !DILocation(line: 701, column: 18, scope: !1867)
!1921 = !DILocation(line: 701, column: 16, scope: !1867)
!1922 = !DILocation(line: 703, column: 11, scope: !1867)
!1923 = !DILocation(line: 703, column: 23, scope: !1867)
!1924 = !DILocation(line: 703, column: 17, scope: !1867)
!1925 = !DILocation(line: 704, column: 18, scope: !1867)
!1926 = !DILocation(line: 704, column: 30, scope: !1867)
!1927 = !DILocation(line: 704, column: 24, scope: !1867)
!1928 = !DILocation(line: 705, column: 18, scope: !1867)
!1929 = !DILocation(line: 705, column: 30, scope: !1867)
!1930 = !DILocation(line: 705, column: 24, scope: !1867)
!1931 = !DILocation(line: 706, column: 18, scope: !1867)
!1932 = !DILocation(line: 706, column: 30, scope: !1867)
!1933 = !DILocation(line: 706, column: 24, scope: !1867)
!1934 = !DILocation(line: 707, column: 18, scope: !1867)
!1935 = !DILocation(line: 707, column: 30, scope: !1867)
!1936 = !DILocation(line: 707, column: 24, scope: !1867)
!1937 = !DILocation(line: 708, column: 18, scope: !1867)
!1938 = !DILocation(line: 708, column: 30, scope: !1867)
!1939 = !DILocation(line: 708, column: 24, scope: !1867)
!1940 = !DILocation(line: 710, column: 17, scope: !1867)
!1941 = !DILocation(line: 710, column: 27, scope: !1867)
!1942 = !DILocation(line: 710, column: 22, scope: !1867)
!1943 = !DILocation(line: 710, column: 37, scope: !1867)
!1944 = !DILocation(line: 710, column: 32, scope: !1867)
!1945 = !DILocation(line: 711, column: 17, scope: !1867)
!1946 = !DILocation(line: 711, column: 27, scope: !1867)
!1947 = !DILocation(line: 711, column: 22, scope: !1867)
!1948 = !DILocation(line: 711, column: 37, scope: !1867)
!1949 = !DILocation(line: 711, column: 32, scope: !1867)
!1950 = !DILocation(line: 712, column: 17, scope: !1867)
!1951 = !DILocation(line: 712, column: 27, scope: !1867)
!1952 = !DILocation(line: 712, column: 22, scope: !1867)
!1953 = !DILocation(line: 712, column: 37, scope: !1867)
!1954 = !DILocation(line: 712, column: 32, scope: !1867)
!1955 = !DILocation(line: 713, column: 28, scope: !1867)
!1956 = !DILocation(line: 713, column: 19, scope: !1867)
!1957 = !DILocation(line: 713, column: 17, scope: !1867)
!1958 = !DILocation(line: 714, column: 16, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 714, column: 13)
!1960 = !DILocation(line: 714, column: 13, scope: !1867)
!1961 = !DILocation(line: 715, column: 3, scope: !1959)
!1962 = !DILocation(line: 716, column: 21, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 716, column: 18)
!1964 = !DILocation(line: 716, column: 18, scope: !1959)
!1965 = !DILocation(line: 717, column: 3, scope: !1963)
!1966 = !DILocation(line: 0, scope: !1959)
!1967 = !DILocation(line: 719, column: 7, scope: !1867)
!1968 = !DILocation(line: 720, column: 14, scope: !1867)
!1969 = !DILocation(line: 720, column: 20, scope: !1867)
!1970 = !DILocation(line: 720, column: 17, scope: !1867)
!1971 = !DILocation(line: 720, column: 10, scope: !1867)
!1972 = !DILocation(line: 720, column: 34, scope: !1867)
!1973 = !DILocation(line: 720, column: 40, scope: !1867)
!1974 = !DILocation(line: 720, column: 37, scope: !1867)
!1975 = !DILocation(line: 720, column: 30, scope: !1867)
!1976 = !DILocation(line: 720, column: 25, scope: !1867)
!1977 = !DILocation(line: 720, column: 54, scope: !1867)
!1978 = !DILocation(line: 720, column: 60, scope: !1867)
!1979 = !DILocation(line: 720, column: 57, scope: !1867)
!1980 = !DILocation(line: 720, column: 50, scope: !1867)
!1981 = !DILocation(line: 720, column: 45, scope: !1867)
!1982 = !DILocation(line: 721, column: 15, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 721, column: 13)
!1984 = !DILocation(line: 721, column: 13, scope: !1867)
!1985 = !DILocation(line: 722, column: 8, scope: !1983)
!1986 = !DILocation(line: 722, column: 3, scope: !1983)
!1987 = !DILocation(line: 723, column: 17, scope: !1867)
!1988 = !DILocation(line: 724, column: 14, scope: !1867)
!1989 = !DILocation(line: 724, column: 19, scope: !1867)
!1990 = !DILocation(line: 725, column: 10, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 725, column: 6)
!1992 = !DILocation(line: 725, column: 6, scope: !1867)
!1993 = !DILocation(line: 726, column: 13, scope: !1991)
!1994 = !DILocation(line: 726, column: 3, scope: !1991)
!1995 = !DILocation(line: 728, column: 2, scope: !1867)
!1996 = !DILocation(line: 0, scope: !345)
!1997 = !DILocation(line: 735, column: 26, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !345, file: !3, line: 735, column: 6)
!1999 = !DILocation(line: 735, column: 14, scope: !1998)
!2000 = !DILocation(line: 735, column: 63, scope: !1998)
!2001 = !DILocation(line: 735, column: 6, scope: !345)
!2002 = !DILocation(line: 736, column: 3, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 735, column: 72)
!2004 = !DILocation(line: 738, column: 10, scope: !345)
!2005 = !DILocation(line: 738, column: 22, scope: !345)
!2006 = !DILocation(line: 738, column: 2, scope: !345)
!2007 = !DILocation(line: 739, column: 10, scope: !345)
!2008 = !DILocation(line: 739, column: 2, scope: !345)
!2009 = !DILocation(line: 740, column: 1, scope: !345)
!2010 = distinct !DISubprogram(name: "cap", scope: !3, file: !3, line: 742, type: !2011, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!36, !22, !241, !36, !36}
!2013 = !{!2014, !2015, !2016, !2017, !2018}
!2014 = !DILocalVariable(name: "mol", arg: 1, scope: !2010, file: !3, line: 742, type: !22)
!2015 = !DILocalVariable(name: "aex", arg: 2, scope: !2010, file: !3, line: 742, type: !241)
!2016 = !DILocalVariable(name: "five", arg: 3, scope: !2010, file: !3, line: 742, type: !36)
!2017 = !DILocalVariable(name: "three", arg: 4, scope: !2010, file: !3, line: 742, type: !36)
!2018 = !DILocalVariable(name: "sp", scope: !2010, file: !3, line: 744, type: !38)
!2019 = !DILocation(line: 0, scope: !2010)
!2020 = !DILocation(line: 746, column: 2, scope: !2010)
!2021 = !DILocation(line: 747, column: 17, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 747, column: 2)
!2023 = !DILocation(line: 747, column: 2, scope: !2022)
!2024 = !DILocation(line: 748, column: 11, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 748, column: 7)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 747, column: 49)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 747, column: 2)
!2028 = !DILocation(line: 748, column: 23, scope: !2025)
!2029 = !DILocation(line: 748, column: 27, scope: !2025)
!2030 = !DILocation(line: 748, column: 36, scope: !2025)
!2031 = !DILocation(line: 748, column: 43, scope: !2025)
!2032 = !DILocation(line: 748, column: 7, scope: !2026)
!2033 = !DILocation(line: 749, column: 8, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 749, column: 8)
!2035 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 748, column: 58)
!2036 = !DILocation(line: 749, column: 8, scope: !2035)
!2037 = !DILocation(line: 750, column: 19, scope: !2034)
!2038 = !DILocation(line: 750, column: 15, scope: !2034)
!2039 = !DILocation(line: 750, column: 5, scope: !2034)
!2040 = !DILocation(line: 751, column: 8, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 751, column: 8)
!2042 = !DILocation(line: 751, column: 8, scope: !2035)
!2043 = !DILocation(line: 752, column: 20, scope: !2041)
!2044 = !DILocation(line: 752, column: 35, scope: !2041)
!2045 = !DILocation(line: 752, column: 46, scope: !2041)
!2046 = !DILocation(line: 752, column: 16, scope: !2041)
!2047 = !DILocation(line: 752, column: 5, scope: !2041)
!2048 = !DILocation(line: 753, column: 3, scope: !2035)
!2049 = !DILocation(line: 754, column: 2, scope: !2026)
!2050 = !DILocation(line: 747, column: 41, scope: !2027)
!2051 = distinct !{!2051, !2023, !2052}
!2052 = !DILocation(line: 754, column: 2, scope: !2022)
!2053 = !DILocation(line: 755, column: 7, scope: !2010)
!2054 = !DILocation(line: 755, column: 16, scope: !2010)
!2055 = !DILocation(line: 756, column: 2, scope: !2010)
!2056 = distinct !DISubprogram(name: "cvt_p2hb", scope: !3, file: !3, line: 1650, type: !2057, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !56}
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2060 = !DILocalVariable(name: "res", arg: 1, scope: !2056, file: !3, line: 1650, type: !56)
!2061 = !DILocalVariable(name: "p", scope: !2056, file: !3, line: 1652, type: !36)
!2062 = !DILocalVariable(name: "o5", scope: !2056, file: !3, line: 1652, type: !36)
!2063 = !DILocalVariable(name: "oxp", scope: !2056, file: !3, line: 1652, type: !36)
!2064 = !DILocalVariable(name: "dx", scope: !2056, file: !3, line: 1653, type: !30)
!2065 = !DILocalVariable(name: "dy", scope: !2056, file: !3, line: 1653, type: !30)
!2066 = !DILocalVariable(name: "dz", scope: !2056, file: !3, line: 1653, type: !30)
!2067 = !DILocalVariable(name: "f", scope: !2056, file: !3, line: 1653, type: !30)
!2068 = !DILocalVariable(name: "ap", scope: !2056, file: !3, line: 1654, type: !102)
!2069 = !DILocation(line: 0, scope: !2056)
!2070 = !DILocation(line: 1656, column: 6, scope: !2056)
!2071 = !DILocation(line: 1657, column: 13, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 1657, column: 6)
!2073 = !DILocation(line: 1657, column: 39, scope: !2072)
!2074 = !DILocation(line: 1657, column: 6, scope: !2056)
!2075 = !DILocation(line: 1658, column: 8, scope: !2072)
!2076 = !DILocation(line: 1658, column: 3, scope: !2072)
!2077 = !DILocation(line: 0, scope: !2072)
!2078 = !DILocation(line: 1660, column: 9, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 1660, column: 6)
!2080 = !DILocation(line: 1660, column: 6, scope: !2056)
!2081 = !DILocation(line: 1661, column: 3, scope: !2079)
!2082 = !DILocation(line: 1662, column: 13, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1662, column: 11)
!2084 = !DILocation(line: 1662, column: 11, scope: !2079)
!2085 = !DILocation(line: 1663, column: 15, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 1663, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 1662, column: 23)
!2088 = !DILocation(line: 1663, column: 41, scope: !2086)
!2089 = !DILocation(line: 1663, column: 7, scope: !2087)
!2090 = !DILocation(line: 1664, column: 16, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 1664, column: 8)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 1663, column: 51)
!2093 = !DILocation(line: 1664, column: 42, scope: !2091)
!2094 = !DILocation(line: 1664, column: 8, scope: !2092)
!2095 = !DILocation(line: 1665, column: 5, scope: !2091)
!2096 = !DILocation(line: 1666, column: 3, scope: !2092)
!2097 = !DILocation(line: 1667, column: 4, scope: !2086)
!2098 = !DILocation(line: 1668, column: 15, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 1668, column: 7)
!2100 = !DILocation(line: 1668, column: 41, scope: !2099)
!2101 = !DILocation(line: 1668, column: 7, scope: !2087)
!2102 = !DILocation(line: 1669, column: 16, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 1669, column: 8)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 1668, column: 51)
!2105 = !DILocation(line: 1669, column: 42, scope: !2103)
!2106 = !DILocation(line: 1669, column: 8, scope: !2104)
!2107 = !DILocation(line: 1670, column: 5, scope: !2103)
!2108 = !DILocation(line: 1671, column: 3, scope: !2104)
!2109 = !DILocation(line: 1672, column: 4, scope: !2099)
!2110 = !DILocation(line: 1673, column: 14, scope: !2087)
!2111 = !DILocation(line: 1673, column: 9, scope: !2087)
!2112 = !DILocation(line: 1674, column: 15, scope: !2087)
!2113 = !DILocation(line: 1674, column: 3, scope: !2087)
!2114 = !DILocation(line: 1675, column: 14, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 1675, column: 7)
!2116 = !DILocation(line: 1675, column: 40, scope: !2115)
!2117 = !DILocation(line: 1675, column: 7, scope: !2087)
!2118 = !DILocation(line: 1676, column: 9, scope: !2115)
!2119 = !DILocation(line: 1676, column: 4, scope: !2115)
!2120 = !DILocation(line: 0, scope: !2115)
!2121 = !DILocation(line: 1678, column: 13, scope: !2087)
!2122 = !DILocation(line: 1678, column: 8, scope: !2087)
!2123 = !DILocation(line: 1678, column: 26, scope: !2087)
!2124 = !DILocation(line: 1679, column: 9, scope: !2087)
!2125 = !DILocation(line: 1679, column: 4, scope: !2087)
!2126 = !DILocation(line: 1679, column: 23, scope: !2087)
!2127 = !DILocation(line: 1678, column: 37, scope: !2087)
!2128 = !DILocation(line: 1680, column: 13, scope: !2087)
!2129 = !DILocation(line: 1680, column: 8, scope: !2087)
!2130 = !DILocation(line: 1680, column: 26, scope: !2087)
!2131 = !DILocation(line: 1681, column: 9, scope: !2087)
!2132 = !DILocation(line: 1681, column: 4, scope: !2087)
!2133 = !DILocation(line: 1681, column: 23, scope: !2087)
!2134 = !DILocation(line: 1680, column: 37, scope: !2087)
!2135 = !DILocation(line: 1682, column: 13, scope: !2087)
!2136 = !DILocation(line: 1682, column: 8, scope: !2087)
!2137 = !DILocation(line: 1682, column: 26, scope: !2087)
!2138 = !DILocation(line: 1683, column: 9, scope: !2087)
!2139 = !DILocation(line: 1683, column: 4, scope: !2087)
!2140 = !DILocation(line: 1683, column: 23, scope: !2087)
!2141 = !DILocation(line: 1682, column: 37, scope: !2087)
!2142 = !DILocation(line: 1684, column: 27, scope: !2087)
!2143 = !DILocation(line: 1684, column: 37, scope: !2087)
!2144 = !DILocation(line: 1684, column: 32, scope: !2087)
!2145 = !DILocation(line: 1684, column: 47, scope: !2087)
!2146 = !DILocation(line: 1684, column: 42, scope: !2087)
!2147 = !DILocation(line: 1684, column: 18, scope: !2087)
!2148 = !DILocation(line: 1684, column: 16, scope: !2087)
!2149 = !DILocation(line: 1685, column: 36, scope: !2087)
!2150 = !DILocation(line: 1686, column: 9, scope: !2087)
!2151 = !DILocation(line: 1686, column: 4, scope: !2087)
!2152 = !DILocation(line: 1686, column: 23, scope: !2087)
!2153 = !DILocation(line: 1685, column: 41, scope: !2087)
!2154 = !DILocation(line: 1685, column: 8, scope: !2087)
!2155 = !DILocation(line: 1685, column: 3, scope: !2087)
!2156 = !DILocation(line: 1685, column: 21, scope: !2087)
!2157 = !DILocation(line: 1685, column: 32, scope: !2087)
!2158 = !DILocation(line: 1687, column: 36, scope: !2087)
!2159 = !DILocation(line: 1688, column: 9, scope: !2087)
!2160 = !DILocation(line: 1688, column: 4, scope: !2087)
!2161 = !DILocation(line: 1688, column: 23, scope: !2087)
!2162 = !DILocation(line: 1687, column: 41, scope: !2087)
!2163 = !DILocation(line: 1687, column: 8, scope: !2087)
!2164 = !DILocation(line: 1687, column: 3, scope: !2087)
!2165 = !DILocation(line: 1687, column: 21, scope: !2087)
!2166 = !DILocation(line: 1687, column: 32, scope: !2087)
!2167 = !DILocation(line: 1689, column: 36, scope: !2087)
!2168 = !DILocation(line: 1690, column: 9, scope: !2087)
!2169 = !DILocation(line: 1690, column: 4, scope: !2087)
!2170 = !DILocation(line: 1690, column: 23, scope: !2087)
!2171 = !DILocation(line: 1689, column: 41, scope: !2087)
!2172 = !DILocation(line: 1689, column: 8, scope: !2087)
!2173 = !DILocation(line: 1689, column: 3, scope: !2087)
!2174 = !DILocation(line: 1689, column: 21, scope: !2087)
!2175 = !DILocation(line: 1689, column: 32, scope: !2087)
!2176 = !DILocation(line: 1691, column: 2, scope: !2087)
!2177 = !DILocation(line: 1692, column: 1, scope: !2056)
!2178 = distinct !DISubprogram(name: "add_he2o3", scope: !3, file: !3, line: 1694, type: !2057, scopeLine: 1695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2180 = !DILocalVariable(name: "res", arg: 1, scope: !2178, file: !3, line: 1694, type: !56)
!2181 = !DILocalVariable(name: "c3", scope: !2178, file: !3, line: 1696, type: !36)
!2182 = !DILocalVariable(name: "o3", scope: !2178, file: !3, line: 1696, type: !36)
!2183 = !DILocalVariable(name: "he", scope: !2178, file: !3, line: 1696, type: !36)
!2184 = !DILocalVariable(name: "dx", scope: !2178, file: !3, line: 1697, type: !30)
!2185 = !DILocalVariable(name: "dy", scope: !2178, file: !3, line: 1697, type: !30)
!2186 = !DILocalVariable(name: "dz", scope: !2178, file: !3, line: 1697, type: !30)
!2187 = !DILocalVariable(name: "dist", scope: !2178, file: !3, line: 1697, type: !30)
!2188 = !DILocalVariable(name: "cx", scope: !2178, file: !3, line: 1698, type: !30)
!2189 = !DILocalVariable(name: "cy", scope: !2178, file: !3, line: 1698, type: !30)
!2190 = !DILocalVariable(name: "cz", scope: !2178, file: !3, line: 1698, type: !30)
!2191 = !DILocalVariable(name: "sx", scope: !2178, file: !3, line: 1699, type: !30)
!2192 = !DILocalVariable(name: "sy", scope: !2178, file: !3, line: 1699, type: !30)
!2193 = !DILocalVariable(name: "sz", scope: !2178, file: !3, line: 1699, type: !30)
!2194 = !DILocalVariable(name: "f", scope: !2178, file: !3, line: 1700, type: !30)
!2195 = !DILocalVariable(name: "aph", scope: !2178, file: !3, line: 1701, type: !102)
!2196 = !DILocalVariable(name: "apo", scope: !2178, file: !3, line: 1701, type: !102)
!2197 = !DILocation(line: 0, scope: !2178)
!2198 = !DILocation(line: 1703, column: 6, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1703, column: 6)
!2200 = !DILocation(line: 1703, column: 29, scope: !2199)
!2201 = !DILocation(line: 1703, column: 6, scope: !2178)
!2202 = !DILocation(line: 1704, column: 3, scope: !2199)
!2203 = !DILocation(line: 1705, column: 13, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1705, column: 6)
!2205 = !DILocation(line: 1705, column: 39, scope: !2204)
!2206 = !DILocation(line: 1705, column: 6, scope: !2178)
!2207 = !DILocation(line: 1706, column: 8, scope: !2204)
!2208 = !DILocation(line: 1706, column: 3, scope: !2204)
!2209 = !DILocation(line: 0, scope: !2204)
!2210 = !DILocation(line: 1707, column: 13, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1707, column: 6)
!2212 = !DILocation(line: 1707, column: 39, scope: !2211)
!2213 = !DILocation(line: 1707, column: 6, scope: !2178)
!2214 = !DILocation(line: 1708, column: 8, scope: !2211)
!2215 = !DILocation(line: 1708, column: 3, scope: !2211)
!2216 = !DILocation(line: 0, scope: !2211)
!2217 = !DILocation(line: 1710, column: 9, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1710, column: 6)
!2219 = !DILocation(line: 1710, column: 18, scope: !2218)
!2220 = !DILocation(line: 1710, column: 24, scope: !2218)
!2221 = !DILocation(line: 1710, column: 6, scope: !2178)
!2222 = !DILocation(line: 1711, column: 3, scope: !2218)
!2223 = !DILocation(line: 1713, column: 2, scope: !2178)
!2224 = !DILocation(line: 1714, column: 7, scope: !2178)
!2225 = !DILocation(line: 1715, column: 12, scope: !2178)
!2226 = !DILocation(line: 1715, column: 7, scope: !2178)
!2227 = !DILocation(line: 1715, column: 26, scope: !2178)
!2228 = !DILocation(line: 1716, column: 8, scope: !2178)
!2229 = !DILocation(line: 1716, column: 3, scope: !2178)
!2230 = !DILocation(line: 1716, column: 22, scope: !2178)
!2231 = !DILocation(line: 1715, column: 37, scope: !2178)
!2232 = !DILocation(line: 1717, column: 12, scope: !2178)
!2233 = !DILocation(line: 1717, column: 7, scope: !2178)
!2234 = !DILocation(line: 1717, column: 26, scope: !2178)
!2235 = !DILocation(line: 1718, column: 8, scope: !2178)
!2236 = !DILocation(line: 1718, column: 3, scope: !2178)
!2237 = !DILocation(line: 1718, column: 22, scope: !2178)
!2238 = !DILocation(line: 1717, column: 37, scope: !2178)
!2239 = !DILocation(line: 1719, column: 12, scope: !2178)
!2240 = !DILocation(line: 1719, column: 7, scope: !2178)
!2241 = !DILocation(line: 1719, column: 26, scope: !2178)
!2242 = !DILocation(line: 1720, column: 8, scope: !2178)
!2243 = !DILocation(line: 1720, column: 3, scope: !2178)
!2244 = !DILocation(line: 1720, column: 22, scope: !2178)
!2245 = !DILocation(line: 1719, column: 37, scope: !2178)
!2246 = !DILocation(line: 1721, column: 18, scope: !2178)
!2247 = !DILocation(line: 1721, column: 28, scope: !2178)
!2248 = !DILocation(line: 1721, column: 23, scope: !2178)
!2249 = !DILocation(line: 1721, column: 38, scope: !2178)
!2250 = !DILocation(line: 1721, column: 33, scope: !2178)
!2251 = !DILocation(line: 1721, column: 9, scope: !2178)
!2252 = !DILocation(line: 1722, column: 17, scope: !2178)
!2253 = !DILocation(line: 1722, column: 15, scope: !2178)
!2254 = !DILocation(line: 1722, column: 52, scope: !2178)
!2255 = !DILocation(line: 1723, column: 9, scope: !2178)
!2256 = !DILocation(line: 1724, column: 9, scope: !2178)
!2257 = !DILocation(line: 1725, column: 9, scope: !2178)
!2258 = !DILocation(line: 1726, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 1726, column: 6)
!2260 = !DILocation(line: 1726, column: 6, scope: !2178)
!2261 = !DILocation(line: 1728, column: 8, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1726, column: 17)
!2263 = !DILocation(line: 1728, column: 12, scope: !2262)
!2264 = !DILocation(line: 1730, column: 2, scope: !2262)
!2265 = !DILocation(line: 0, scope: !2259)
!2266 = !DILocation(line: 1735, column: 18, scope: !2178)
!2267 = !DILocation(line: 1735, column: 28, scope: !2178)
!2268 = !DILocation(line: 1735, column: 23, scope: !2178)
!2269 = !DILocation(line: 1735, column: 38, scope: !2178)
!2270 = !DILocation(line: 1735, column: 33, scope: !2178)
!2271 = !DILocation(line: 1735, column: 9, scope: !2178)
!2272 = !DILocation(line: 1736, column: 17, scope: !2178)
!2273 = !DILocation(line: 1736, column: 15, scope: !2178)
!2274 = !DILocation(line: 1736, column: 52, scope: !2178)
!2275 = !DILocation(line: 1737, column: 9, scope: !2178)
!2276 = !DILocation(line: 1738, column: 9, scope: !2178)
!2277 = !DILocation(line: 1739, column: 9, scope: !2178)
!2278 = !DILocation(line: 1741, column: 14, scope: !2178)
!2279 = !DILocation(line: 1741, column: 9, scope: !2178)
!2280 = !DILocation(line: 1742, column: 14, scope: !2178)
!2281 = !DILocation(line: 1742, column: 9, scope: !2178)
!2282 = !DILocation(line: 1743, column: 25, scope: !2178)
!2283 = !DILocation(line: 1743, column: 20, scope: !2178)
!2284 = !DILocation(line: 1743, column: 36, scope: !2178)
!2285 = !DILocation(line: 1743, column: 41, scope: !2178)
!2286 = !DILocation(line: 1743, column: 7, scope: !2178)
!2287 = !DILocation(line: 1743, column: 2, scope: !2178)
!2288 = !DILocation(line: 1743, column: 18, scope: !2178)
!2289 = !DILocation(line: 1744, column: 25, scope: !2178)
!2290 = !DILocation(line: 1744, column: 20, scope: !2178)
!2291 = !DILocation(line: 1744, column: 36, scope: !2178)
!2292 = !DILocation(line: 1744, column: 41, scope: !2178)
!2293 = !DILocation(line: 1744, column: 7, scope: !2178)
!2294 = !DILocation(line: 1744, column: 2, scope: !2178)
!2295 = !DILocation(line: 1744, column: 18, scope: !2178)
!2296 = !DILocation(line: 1745, column: 25, scope: !2178)
!2297 = !DILocation(line: 1745, column: 20, scope: !2178)
!2298 = !DILocation(line: 1745, column: 36, scope: !2178)
!2299 = !DILocation(line: 1745, column: 41, scope: !2178)
!2300 = !DILocation(line: 1745, column: 7, scope: !2178)
!2301 = !DILocation(line: 1745, column: 2, scope: !2178)
!2302 = !DILocation(line: 1745, column: 18, scope: !2178)
!2303 = !DILocation(line: 1746, column: 1, scope: !2178)
!2304 = distinct !DISubprogram(name: "copyextbonds", scope: !3, file: !3, line: 759, type: !2305, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!72, !56}
!2307 = !{!2308, !2309, !2310, !2311, !2312}
!2308 = !DILocalVariable(name: "res", arg: 1, scope: !2304, file: !3, line: 759, type: !56)
!2309 = !DILocalVariable(name: "ep", scope: !2304, file: !3, line: 761, type: !72)
!2310 = !DILocalVariable(name: "ep1", scope: !2304, file: !3, line: 761, type: !72)
!2311 = !DILocalVariable(name: "epo", scope: !2304, file: !3, line: 761, type: !72)
!2312 = !DILocalVariable(name: "epn", scope: !2304, file: !3, line: 761, type: !72)
!2313 = !DILocation(line: 0, scope: !2304)
!2314 = !DILocation(line: 763, column: 36, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 763, column: 2)
!2316 = !DILocation(line: 763, column: 2, scope: !2315)
!2317 = !DILocation(line: 764, column: 29, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 764, column: 7)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 763, column: 73)
!2320 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 763, column: 2)
!2321 = !DILocation(line: 764, column: 14, scope: !2318)
!2322 = !DILocation(line: 764, column: 61, scope: !2318)
!2323 = !DILocation(line: 764, column: 7, scope: !2319)
!2324 = !DILocation(line: 766, column: 4, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 765, column: 10)
!2326 = !DILocation(line: 767, column: 4, scope: !2325)
!2327 = !DILocation(line: 768, column: 4, scope: !2325)
!2328 = !DILocation(line: 770, column: 7, scope: !2319)
!2329 = !DILocation(line: 770, column: 15, scope: !2319)
!2330 = !DILocation(line: 771, column: 22, scope: !2319)
!2331 = !DILocation(line: 771, column: 7, scope: !2319)
!2332 = !DILocation(line: 771, column: 15, scope: !2319)
!2333 = !DILocation(line: 772, column: 22, scope: !2319)
!2334 = !DILocation(line: 772, column: 7, scope: !2319)
!2335 = !DILocation(line: 772, column: 15, scope: !2319)
!2336 = !DILocation(line: 773, column: 23, scope: !2319)
!2337 = !DILocation(line: 773, column: 7, scope: !2319)
!2338 = !DILocation(line: 773, column: 16, scope: !2319)
!2339 = !DILocation(line: 774, column: 11, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 774, column: 7)
!2341 = !DILocation(line: 774, column: 7, scope: !2319)
!2342 = !DILocation(line: 775, column: 4, scope: !2340)
!2343 = !DILocation(line: 0, scope: !2315)
!2344 = !DILocation(line: 776, column: 11, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 776, column: 7)
!2346 = !DILocation(line: 776, column: 7, scope: !2319)
!2347 = !DILocation(line: 777, column: 9, scope: !2345)
!2348 = !DILocation(line: 777, column: 17, scope: !2345)
!2349 = !DILocation(line: 777, column: 4, scope: !2345)
!2350 = !DILocation(line: 779, column: 2, scope: !2319)
!2351 = !DILocation(line: 763, column: 64, scope: !2320)
!2352 = distinct !{!2352, !2316, !2353}
!2353 = !DILocation(line: 779, column: 2, scope: !2315)
!2354 = !DILocation(line: 781, column: 2, scope: !2304)
!2355 = !DILocation(line: 782, column: 1, scope: !2304)
!2356 = distinct !DISubprogram(name: "setreskind", scope: !3, file: !3, line: 784, type: !2357, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!36, !22, !241, !241}
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2373}
!2360 = !DILocalVariable(name: "m", arg: 1, scope: !2356, file: !3, line: 784, type: !22)
!2361 = !DILocalVariable(name: "aexp", arg: 2, scope: !2356, file: !3, line: 784, type: !241)
!2362 = !DILocalVariable(name: "rkind", arg: 3, scope: !2356, file: !3, line: 784, type: !241)
!2363 = !DILocalVariable(name: "sp", scope: !2356, file: !3, line: 786, type: !38)
!2364 = !DILocalVariable(name: "res", scope: !2356, file: !3, line: 787, type: !56)
!2365 = !DILocalVariable(name: "r", scope: !2356, file: !3, line: 788, type: !36)
!2366 = !DILocalVariable(name: "rk", scope: !2356, file: !3, line: 789, type: !36)
!2367 = !DILocalVariable(name: "rp", scope: !2356, file: !3, line: 790, type: !241)
!2368 = !DILocalVariable(name: "tp", scope: !2356, file: !3, line: 790, type: !241)
!2369 = !DILocalVariable(name: "trkind", scope: !2356, file: !3, line: 790, type: !2370)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, elements: !2371)
!2371 = !{!2372}
!2372 = !DISubrange(count: 10)
!2373 = !DILocalVariable(name: "__res", scope: !2374, file: !3, line: 793, type: !36)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 793, column: 28)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 792, column: 2)
!2376 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 792, column: 2)
!2377 = !DILocation(line: 0, scope: !2356)
!2378 = !DILocation(line: 790, column: 2, scope: !2356)
!2379 = !DILocation(line: 790, column: 17, scope: !2356)
!2380 = !DILocation(line: 792, column: 12, scope: !2376)
!2381 = !DILocation(line: 792, column: 32, scope: !2375)
!2382 = !{!458, !458, i64 0}
!2383 = !DILocation(line: 792, column: 2, scope: !2376)
!2384 = !DILocation(line: 793, column: 11, scope: !2375)
!2385 = !{!2386, !2386, i64 0}
!2386 = !{!"short", !458, i64 0}
!2387 = !DILocation(line: 793, column: 28, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 793, column: 28)
!2389 = !{!497, !497, i64 0}
!2390 = !DILocation(line: 0, scope: !2374)
!2391 = !DILocation(line: 793, column: 45, scope: !2375)
!2392 = !DILocation(line: 793, column: 6, scope: !2375)
!2393 = !DILocation(line: 793, column: 9, scope: !2375)
!2394 = !DILocation(line: 793, column: 3, scope: !2375)
!2395 = !DILocation(line: 792, column: 39, scope: !2375)
!2396 = distinct !{!2396, !2383, !2397}
!2397 = !DILocation(line: 793, column: 46, scope: !2376)
!2398 = !DILocation(line: 0, scope: !2376)
!2399 = !DILocation(line: 794, column: 6, scope: !2356)
!2400 = !DILocation(line: 796, column: 15, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 796, column: 6)
!2402 = !DILocation(line: 796, column: 7, scope: !2401)
!2403 = !DILocation(line: 796, column: 6, scope: !2356)
!2404 = !DILocation(line: 797, column: 3, scope: !2401)
!2405 = !DILocation(line: 798, column: 20, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 798, column: 11)
!2407 = !DILocation(line: 798, column: 12, scope: !2406)
!2408 = !DILocation(line: 798, column: 11, scope: !2401)
!2409 = !DILocation(line: 799, column: 3, scope: !2406)
!2410 = !DILocation(line: 800, column: 20, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 800, column: 11)
!2412 = !DILocation(line: 800, column: 12, scope: !2411)
!2413 = !DILocation(line: 800, column: 11, scope: !2406)
!2414 = !DILocation(line: 801, column: 3, scope: !2411)
!2415 = !DILocation(line: 803, column: 12, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 802, column: 6)
!2417 = !DILocation(line: 803, column: 3, scope: !2416)
!2418 = !DILocation(line: 0, scope: !2411)
!2419 = !DILocation(line: 0, scope: !2406)
!2420 = !DILocation(line: 0, scope: !2401)
!2421 = !DILocation(line: 808, column: 2, scope: !2356)
!2422 = !DILocation(line: 809, column: 15, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 809, column: 2)
!2424 = !DILocation(line: 809, column: 2, scope: !2423)
!2425 = !DILocation(line: 810, column: 23, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 810, column: 3)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 810, column: 3)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 809, column: 47)
!2429 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 809, column: 2)
!2430 = !DILocation(line: 810, column: 17, scope: !2426)
!2431 = !DILocation(line: 810, column: 3, scope: !2427)
!2432 = !DILocation(line: 811, column: 14, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 810, column: 41)
!2434 = !DILocation(line: 811, column: 10, scope: !2433)
!2435 = !DILocation(line: 812, column: 13, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 812, column: 8)
!2437 = !DILocation(line: 812, column: 20, scope: !2436)
!2438 = !DILocation(line: 812, column: 8, scope: !2433)
!2439 = !DILocation(line: 813, column: 10, scope: !2436)
!2440 = !DILocation(line: 813, column: 17, scope: !2436)
!2441 = !{!530, !497, i64 44}
!2442 = !DILocation(line: 813, column: 5, scope: !2436)
!2443 = !DILocation(line: 814, column: 3, scope: !2433)
!2444 = !DILocation(line: 810, column: 37, scope: !2426)
!2445 = distinct !{!2445, !2431, !2446}
!2446 = !DILocation(line: 814, column: 3, scope: !2427)
!2447 = !DILocation(line: 815, column: 2, scope: !2428)
!2448 = !DILocation(line: 809, column: 39, scope: !2429)
!2449 = distinct !{!2449, !2424, !2450}
!2450 = !DILocation(line: 815, column: 2, scope: !2423)
!2451 = !DILocation(line: 817, column: 1, scope: !2356)
!2452 = !DILocation(line: 816, column: 2, scope: !2356)
!2453 = distinct !DISubprogram(name: "setxyz_from_mol", scope: !3, file: !3, line: 819, type: !2454, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2459)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!36, !2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468}
!2460 = !DILocalVariable(name: "m", arg: 1, scope: !2453, file: !3, line: 819, type: !2456)
!2461 = !DILocalVariable(name: "aex", arg: 2, scope: !2453, file: !3, line: 819, type: !2457)
!2462 = !DILocalVariable(name: "xyz", arg: 3, scope: !2453, file: !3, line: 819, type: !2458)
!2463 = !DILocalVariable(name: "r", scope: !2453, file: !3, line: 821, type: !36)
!2464 = !DILocalVariable(name: "a", scope: !2453, file: !3, line: 821, type: !36)
!2465 = !DILocalVariable(name: "n", scope: !2453, file: !3, line: 821, type: !36)
!2466 = !DILocalVariable(name: "sp", scope: !2453, file: !3, line: 822, type: !38)
!2467 = !DILocalVariable(name: "res", scope: !2453, file: !3, line: 823, type: !56)
!2468 = !DILocalVariable(name: "ap", scope: !2453, file: !3, line: 824, type: !102)
!2469 = !DILocation(line: 0, scope: !2453)
!2470 = !DILocation(line: 826, column: 16, scope: !2453)
!2471 = !DILocation(line: 826, column: 20, scope: !2453)
!2472 = !DILocation(line: 826, column: 26, scope: !2453)
!2473 = !DILocation(line: 826, column: 2, scope: !2453)
!2474 = !DILocation(line: 827, column: 20, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 827, column: 2)
!2476 = !DILocation(line: 827, column: 25, scope: !2475)
!2477 = !DILocation(line: 827, column: 2, scope: !2475)
!2478 = !DILocation(line: 828, column: 23, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 828, column: 3)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 828, column: 3)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 827, column: 57)
!2482 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 827, column: 2)
!2483 = !DILocation(line: 828, column: 17, scope: !2479)
!2484 = !DILocation(line: 828, column: 3, scope: !2480)
!2485 = !DILocation(line: 829, column: 14, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 828, column: 41)
!2487 = !DILocation(line: 829, column: 10, scope: !2486)
!2488 = !DILocation(line: 830, column: 25, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 830, column: 4)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 830, column: 4)
!2491 = !DILocation(line: 830, column: 18, scope: !2489)
!2492 = !DILocation(line: 830, column: 4, scope: !2490)
!2493 = !DILocation(line: 831, column: 16, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 830, column: 40)
!2495 = !DILocation(line: 831, column: 11, scope: !2494)
!2496 = !DILocation(line: 832, column: 13, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 832, column: 9)
!2498 = !DILocation(line: 832, column: 20, scope: !2497)
!2499 = !DILocation(line: 832, column: 9, scope: !2494)
!2500 = !DILocation(line: 833, column: 26, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 832, column: 33)
!2502 = !DILocation(line: 833, column: 22, scope: !2501)
!2503 = !DILocation(line: 833, column: 6, scope: !2501)
!2504 = !DILocation(line: 833, column: 20, scope: !2501)
!2505 = !DILocation(line: 834, column: 26, scope: !2501)
!2506 = !DILocation(line: 834, column: 22, scope: !2501)
!2507 = !DILocation(line: 834, column: 6, scope: !2501)
!2508 = !DILocation(line: 834, column: 20, scope: !2501)
!2509 = !DILocation(line: 835, column: 26, scope: !2501)
!2510 = !DILocation(line: 835, column: 22, scope: !2501)
!2511 = !DILocation(line: 835, column: 6, scope: !2501)
!2512 = !DILocation(line: 835, column: 20, scope: !2501)
!2513 = !DILocation(line: 836, column: 7, scope: !2501)
!2514 = !DILocation(line: 837, column: 5, scope: !2501)
!2515 = !DILocation(line: 0, scope: !2475)
!2516 = !DILocation(line: 838, column: 4, scope: !2494)
!2517 = !DILocation(line: 830, column: 36, scope: !2489)
!2518 = distinct !{!2518, !2492, !2519}
!2519 = !DILocation(line: 838, column: 4, scope: !2490)
!2520 = !DILocation(line: 839, column: 3, scope: !2486)
!2521 = !DILocation(line: 828, column: 37, scope: !2479)
!2522 = distinct !{!2522, !2484, !2523}
!2523 = !DILocation(line: 839, column: 3, scope: !2480)
!2524 = !DILocation(line: 827, column: 9, scope: !2475)
!2525 = !DILocation(line: 840, column: 2, scope: !2481)
!2526 = !DILocation(line: 827, column: 49, scope: !2482)
!2527 = distinct !{!2527, !2477, !2528}
!2528 = !DILocation(line: 840, column: 2, scope: !2475)
!2529 = !DILocation(line: 841, column: 2, scope: !2453)
!2530 = distinct !DISubprogram(name: "setxyzw_from_mol", scope: !3, file: !3, line: 844, type: !2531, scopeLine: 845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!36, !2456, !2457, !180}
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2534 = !DILocalVariable(name: "m", arg: 1, scope: !2530, file: !3, line: 844, type: !2456)
!2535 = !DILocalVariable(name: "aex", arg: 2, scope: !2530, file: !3, line: 844, type: !2457)
!2536 = !DILocalVariable(name: "xyzw", arg: 3, scope: !2530, file: !3, line: 844, type: !180)
!2537 = !DILocalVariable(name: "r", scope: !2530, file: !3, line: 846, type: !36)
!2538 = !DILocalVariable(name: "a", scope: !2530, file: !3, line: 846, type: !36)
!2539 = !DILocalVariable(name: "n", scope: !2530, file: !3, line: 846, type: !36)
!2540 = !DILocalVariable(name: "sp", scope: !2530, file: !3, line: 847, type: !38)
!2541 = !DILocalVariable(name: "res", scope: !2530, file: !3, line: 848, type: !56)
!2542 = !DILocalVariable(name: "ap", scope: !2530, file: !3, line: 849, type: !102)
!2543 = !DILocation(line: 0, scope: !2530)
!2544 = !DILocation(line: 851, column: 16, scope: !2530)
!2545 = !DILocation(line: 851, column: 20, scope: !2530)
!2546 = !DILocation(line: 851, column: 26, scope: !2530)
!2547 = !DILocation(line: 851, column: 2, scope: !2530)
!2548 = !DILocation(line: 852, column: 20, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 852, column: 2)
!2550 = !DILocation(line: 852, column: 25, scope: !2549)
!2551 = !DILocation(line: 852, column: 2, scope: !2549)
!2552 = !DILocation(line: 853, column: 23, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 853, column: 3)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 853, column: 3)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 852, column: 57)
!2556 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 852, column: 2)
!2557 = !DILocation(line: 853, column: 17, scope: !2553)
!2558 = !DILocation(line: 853, column: 3, scope: !2554)
!2559 = !DILocation(line: 854, column: 14, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 853, column: 41)
!2561 = !DILocation(line: 854, column: 10, scope: !2560)
!2562 = !DILocation(line: 855, column: 25, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 855, column: 4)
!2564 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 855, column: 4)
!2565 = !DILocation(line: 855, column: 18, scope: !2563)
!2566 = !DILocation(line: 855, column: 4, scope: !2564)
!2567 = !DILocation(line: 856, column: 16, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 855, column: 40)
!2569 = !DILocation(line: 856, column: 11, scope: !2568)
!2570 = !DILocation(line: 857, column: 13, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 857, column: 9)
!2572 = !DILocation(line: 857, column: 20, scope: !2571)
!2573 = !DILocation(line: 857, column: 9, scope: !2568)
!2574 = !DILocation(line: 858, column: 28, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 857, column: 33)
!2576 = !DILocation(line: 858, column: 24, scope: !2575)
!2577 = !DILocation(line: 858, column: 13, scope: !2575)
!2578 = !DILocation(line: 858, column: 16, scope: !2575)
!2579 = !DILocation(line: 858, column: 6, scope: !2575)
!2580 = !DILocation(line: 858, column: 22, scope: !2575)
!2581 = !DILocation(line: 859, column: 28, scope: !2575)
!2582 = !DILocation(line: 859, column: 24, scope: !2575)
!2583 = !DILocation(line: 859, column: 13, scope: !2575)
!2584 = !DILocation(line: 859, column: 16, scope: !2575)
!2585 = !DILocation(line: 859, column: 6, scope: !2575)
!2586 = !DILocation(line: 859, column: 22, scope: !2575)
!2587 = !DILocation(line: 860, column: 28, scope: !2575)
!2588 = !DILocation(line: 860, column: 24, scope: !2575)
!2589 = !DILocation(line: 860, column: 13, scope: !2575)
!2590 = !DILocation(line: 860, column: 16, scope: !2575)
!2591 = !DILocation(line: 860, column: 6, scope: !2575)
!2592 = !DILocation(line: 860, column: 22, scope: !2575)
!2593 = !DILocation(line: 861, column: 28, scope: !2575)
!2594 = !{!592, !457, i64 168}
!2595 = !DILocation(line: 861, column: 13, scope: !2575)
!2596 = !DILocation(line: 861, column: 16, scope: !2575)
!2597 = !DILocation(line: 861, column: 6, scope: !2575)
!2598 = !DILocation(line: 861, column: 22, scope: !2575)
!2599 = !DILocation(line: 862, column: 7, scope: !2575)
!2600 = !DILocation(line: 863, column: 5, scope: !2575)
!2601 = !DILocation(line: 0, scope: !2549)
!2602 = !DILocation(line: 864, column: 4, scope: !2568)
!2603 = !DILocation(line: 855, column: 36, scope: !2563)
!2604 = distinct !{!2604, !2566, !2605}
!2605 = !DILocation(line: 864, column: 4, scope: !2564)
!2606 = !DILocation(line: 865, column: 3, scope: !2560)
!2607 = !DILocation(line: 853, column: 37, scope: !2553)
!2608 = distinct !{!2608, !2558, !2609}
!2609 = !DILocation(line: 865, column: 3, scope: !2554)
!2610 = !DILocation(line: 852, column: 9, scope: !2549)
!2611 = !DILocation(line: 866, column: 2, scope: !2555)
!2612 = !DILocation(line: 852, column: 49, scope: !2556)
!2613 = distinct !{!2613, !2551, !2614}
!2614 = !DILocation(line: 866, column: 2, scope: !2549)
!2615 = !DILocation(line: 867, column: 2, scope: !2530)
!2616 = distinct !DISubprogram(name: "setmol_from_xyz", scope: !3, file: !3, line: 870, type: !2531, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2617)
!2617 = !{!2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626}
!2618 = !DILocalVariable(name: "m", arg: 1, scope: !2616, file: !3, line: 870, type: !2456)
!2619 = !DILocalVariable(name: "aex", arg: 2, scope: !2616, file: !3, line: 870, type: !2457)
!2620 = !DILocalVariable(name: "xyz", arg: 3, scope: !2616, file: !3, line: 870, type: !180)
!2621 = !DILocalVariable(name: "r", scope: !2616, file: !3, line: 872, type: !36)
!2622 = !DILocalVariable(name: "a", scope: !2616, file: !3, line: 872, type: !36)
!2623 = !DILocalVariable(name: "n", scope: !2616, file: !3, line: 872, type: !36)
!2624 = !DILocalVariable(name: "sp", scope: !2616, file: !3, line: 873, type: !38)
!2625 = !DILocalVariable(name: "res", scope: !2616, file: !3, line: 874, type: !56)
!2626 = !DILocalVariable(name: "ap", scope: !2616, file: !3, line: 875, type: !102)
!2627 = !DILocation(line: 0, scope: !2616)
!2628 = !DILocation(line: 877, column: 16, scope: !2616)
!2629 = !DILocation(line: 877, column: 20, scope: !2616)
!2630 = !DILocation(line: 877, column: 26, scope: !2616)
!2631 = !DILocation(line: 877, column: 2, scope: !2616)
!2632 = !DILocation(line: 878, column: 20, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 878, column: 2)
!2634 = !DILocation(line: 878, column: 25, scope: !2633)
!2635 = !DILocation(line: 878, column: 2, scope: !2633)
!2636 = !DILocation(line: 879, column: 23, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 879, column: 3)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 879, column: 3)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 878, column: 57)
!2640 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 878, column: 2)
!2641 = !DILocation(line: 879, column: 17, scope: !2637)
!2642 = !DILocation(line: 879, column: 3, scope: !2638)
!2643 = !DILocation(line: 880, column: 14, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 879, column: 41)
!2645 = !DILocation(line: 880, column: 10, scope: !2644)
!2646 = !DILocation(line: 881, column: 25, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 881, column: 4)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 881, column: 4)
!2649 = !DILocation(line: 881, column: 18, scope: !2647)
!2650 = !DILocation(line: 881, column: 4, scope: !2648)
!2651 = !DILocation(line: 882, column: 16, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 881, column: 40)
!2653 = !DILocation(line: 882, column: 11, scope: !2652)
!2654 = !DILocation(line: 883, column: 13, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 883, column: 9)
!2656 = !DILocation(line: 883, column: 20, scope: !2655)
!2657 = !DILocation(line: 883, column: 9, scope: !2652)
!2658 = !DILocation(line: 884, column: 29, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 883, column: 33)
!2660 = !DILocation(line: 884, column: 32, scope: !2659)
!2661 = !DILocation(line: 884, column: 23, scope: !2659)
!2662 = !DILocation(line: 884, column: 10, scope: !2659)
!2663 = !DILocation(line: 884, column: 6, scope: !2659)
!2664 = !DILocation(line: 884, column: 21, scope: !2659)
!2665 = !DILocation(line: 885, column: 29, scope: !2659)
!2666 = !DILocation(line: 885, column: 32, scope: !2659)
!2667 = !DILocation(line: 885, column: 23, scope: !2659)
!2668 = !DILocation(line: 885, column: 10, scope: !2659)
!2669 = !DILocation(line: 885, column: 6, scope: !2659)
!2670 = !DILocation(line: 885, column: 21, scope: !2659)
!2671 = !DILocation(line: 886, column: 29, scope: !2659)
!2672 = !DILocation(line: 886, column: 32, scope: !2659)
!2673 = !DILocation(line: 886, column: 23, scope: !2659)
!2674 = !DILocation(line: 886, column: 10, scope: !2659)
!2675 = !DILocation(line: 886, column: 6, scope: !2659)
!2676 = !DILocation(line: 886, column: 21, scope: !2659)
!2677 = !DILocation(line: 887, column: 7, scope: !2659)
!2678 = !DILocation(line: 888, column: 5, scope: !2659)
!2679 = !DILocation(line: 0, scope: !2633)
!2680 = !DILocation(line: 889, column: 4, scope: !2652)
!2681 = !DILocation(line: 881, column: 36, scope: !2647)
!2682 = distinct !{!2682, !2650, !2683}
!2683 = !DILocation(line: 889, column: 4, scope: !2648)
!2684 = !DILocation(line: 890, column: 3, scope: !2644)
!2685 = !DILocation(line: 879, column: 37, scope: !2637)
!2686 = distinct !{!2686, !2642, !2687}
!2687 = !DILocation(line: 890, column: 3, scope: !2638)
!2688 = !DILocation(line: 878, column: 9, scope: !2633)
!2689 = !DILocation(line: 891, column: 2, scope: !2639)
!2690 = !DILocation(line: 878, column: 49, scope: !2640)
!2691 = distinct !{!2691, !2635, !2692}
!2692 = !DILocation(line: 891, column: 2, scope: !2633)
!2693 = !DILocation(line: 892, column: 2, scope: !2616)
!2694 = distinct !DISubprogram(name: "setmol_from_xyzw", scope: !3, file: !3, line: 895, type: !2531, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2695)
!2695 = !{!2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704}
!2696 = !DILocalVariable(name: "m", arg: 1, scope: !2694, file: !3, line: 895, type: !2456)
!2697 = !DILocalVariable(name: "aex", arg: 2, scope: !2694, file: !3, line: 895, type: !2457)
!2698 = !DILocalVariable(name: "xyzw", arg: 3, scope: !2694, file: !3, line: 895, type: !180)
!2699 = !DILocalVariable(name: "r", scope: !2694, file: !3, line: 897, type: !36)
!2700 = !DILocalVariable(name: "a", scope: !2694, file: !3, line: 897, type: !36)
!2701 = !DILocalVariable(name: "n", scope: !2694, file: !3, line: 897, type: !36)
!2702 = !DILocalVariable(name: "sp", scope: !2694, file: !3, line: 898, type: !38)
!2703 = !DILocalVariable(name: "res", scope: !2694, file: !3, line: 899, type: !56)
!2704 = !DILocalVariable(name: "ap", scope: !2694, file: !3, line: 900, type: !102)
!2705 = !DILocation(line: 0, scope: !2694)
!2706 = !DILocation(line: 902, column: 16, scope: !2694)
!2707 = !DILocation(line: 902, column: 20, scope: !2694)
!2708 = !DILocation(line: 902, column: 26, scope: !2694)
!2709 = !DILocation(line: 902, column: 2, scope: !2694)
!2710 = !DILocation(line: 903, column: 20, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 903, column: 2)
!2712 = !DILocation(line: 903, column: 25, scope: !2711)
!2713 = !DILocation(line: 903, column: 2, scope: !2711)
!2714 = !DILocation(line: 904, column: 23, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 904, column: 3)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 904, column: 3)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 903, column: 57)
!2718 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 903, column: 2)
!2719 = !DILocation(line: 904, column: 17, scope: !2715)
!2720 = !DILocation(line: 904, column: 3, scope: !2716)
!2721 = !DILocation(line: 905, column: 14, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 904, column: 41)
!2723 = !DILocation(line: 905, column: 10, scope: !2722)
!2724 = !DILocation(line: 906, column: 25, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 906, column: 4)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 906, column: 4)
!2727 = !DILocation(line: 906, column: 18, scope: !2725)
!2728 = !DILocation(line: 906, column: 4, scope: !2726)
!2729 = !DILocation(line: 907, column: 16, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 906, column: 40)
!2731 = !DILocation(line: 907, column: 11, scope: !2730)
!2732 = !DILocation(line: 908, column: 13, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 908, column: 9)
!2734 = !DILocation(line: 908, column: 20, scope: !2733)
!2735 = !DILocation(line: 908, column: 9, scope: !2730)
!2736 = !DILocation(line: 909, column: 30, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 908, column: 33)
!2738 = !DILocation(line: 909, column: 33, scope: !2737)
!2739 = !DILocation(line: 909, column: 23, scope: !2737)
!2740 = !DILocation(line: 909, column: 10, scope: !2737)
!2741 = !DILocation(line: 909, column: 6, scope: !2737)
!2742 = !DILocation(line: 909, column: 21, scope: !2737)
!2743 = !DILocation(line: 910, column: 30, scope: !2737)
!2744 = !DILocation(line: 910, column: 33, scope: !2737)
!2745 = !DILocation(line: 910, column: 23, scope: !2737)
!2746 = !DILocation(line: 910, column: 10, scope: !2737)
!2747 = !DILocation(line: 910, column: 6, scope: !2737)
!2748 = !DILocation(line: 910, column: 21, scope: !2737)
!2749 = !DILocation(line: 911, column: 30, scope: !2737)
!2750 = !DILocation(line: 911, column: 33, scope: !2737)
!2751 = !DILocation(line: 911, column: 23, scope: !2737)
!2752 = !DILocation(line: 911, column: 10, scope: !2737)
!2753 = !DILocation(line: 911, column: 6, scope: !2737)
!2754 = !DILocation(line: 911, column: 21, scope: !2737)
!2755 = !DILocation(line: 912, column: 30, scope: !2737)
!2756 = !DILocation(line: 912, column: 33, scope: !2737)
!2757 = !DILocation(line: 912, column: 23, scope: !2737)
!2758 = !DILocation(line: 912, column: 10, scope: !2737)
!2759 = !DILocation(line: 912, column: 21, scope: !2737)
!2760 = !DILocation(line: 913, column: 7, scope: !2737)
!2761 = !DILocation(line: 914, column: 5, scope: !2737)
!2762 = !DILocation(line: 0, scope: !2711)
!2763 = !DILocation(line: 915, column: 4, scope: !2730)
!2764 = !DILocation(line: 906, column: 36, scope: !2725)
!2765 = distinct !{!2765, !2728, !2766}
!2766 = !DILocation(line: 915, column: 4, scope: !2726)
!2767 = !DILocation(line: 916, column: 3, scope: !2722)
!2768 = !DILocation(line: 904, column: 37, scope: !2715)
!2769 = distinct !{!2769, !2720, !2770}
!2770 = !DILocation(line: 916, column: 3, scope: !2716)
!2771 = !DILocation(line: 903, column: 9, scope: !2711)
!2772 = !DILocation(line: 917, column: 2, scope: !2717)
!2773 = !DILocation(line: 903, column: 49, scope: !2718)
!2774 = distinct !{!2774, !2713, !2775}
!2775 = !DILocation(line: 917, column: 2, scope: !2711)
!2776 = !DILocation(line: 918, column: 2, scope: !2694)
!2777 = distinct !DISubprogram(name: "NAB_ainit", scope: !3, file: !3, line: 921, type: !2778, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!36, !2457, !36}
!2780 = !{!2781, !2782, !2783}
!2781 = !DILocalVariable(name: "a", arg: 1, scope: !2777, file: !3, line: 921, type: !2457)
!2782 = !DILocalVariable(name: "s", arg: 2, scope: !2777, file: !3, line: 921, type: !36)
!2783 = !DILocalVariable(name: "i", scope: !2777, file: !3, line: 923, type: !36)
!2784 = !DILocation(line: 0, scope: !2777)
!2785 = !DILocation(line: 925, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 925, column: 2)
!2787 = !DILocation(line: 925, column: 16, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 925, column: 2)
!2789 = !DILocation(line: 925, column: 2, scope: !2786)
!2790 = !DILocation(line: 926, column: 3, scope: !2788)
!2791 = !DILocation(line: 926, column: 10, scope: !2788)
!2792 = !DILocation(line: 925, column: 22, scope: !2788)
!2793 = distinct !{!2793, !2789, !2794}
!2794 = !DILocation(line: 926, column: 12, scope: !2786)
!2795 = !DILocation(line: 927, column: 2, scope: !2777)
!2796 = distinct !DISubprogram(name: "NAB_initres", scope: !3, file: !3, line: 930, type: !1392, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2797)
!2797 = !{!2798, !2799}
!2798 = !DILocalVariable(name: "res", arg: 1, scope: !2796, file: !3, line: 930, type: !56)
!2799 = !DILocalVariable(name: "init_str", arg: 2, scope: !2796, file: !3, line: 930, type: !36)
!2800 = !DILocation(line: 0, scope: !2796)
!2801 = !DILocation(line: 933, column: 7, scope: !2796)
!2802 = !DILocation(line: 933, column: 14, scope: !2796)
!2803 = !{!530, !498, i64 0}
!2804 = !DILocation(line: 934, column: 7, scope: !2796)
!2805 = !DILocation(line: 934, column: 13, scope: !2796)
!2806 = !{!530, !497, i64 8}
!2807 = !DILocation(line: 935, column: 7, scope: !2796)
!2808 = !DILocation(line: 935, column: 17, scope: !2796)
!2809 = !DILocation(line: 936, column: 7, scope: !2796)
!2810 = !DILocation(line: 936, column: 16, scope: !2796)
!2811 = !DILocation(line: 937, column: 6, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 937, column: 6)
!2813 = !DILocation(line: 937, column: 6, scope: !2796)
!2814 = !DILocation(line: 938, column: 8, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 937, column: 16)
!2816 = !DILocation(line: 938, column: 18, scope: !2815)
!2817 = !DILocation(line: 939, column: 8, scope: !2815)
!2818 = !DILocation(line: 939, column: 16, scope: !2815)
!2819 = !DILocation(line: 940, column: 2, scope: !2815)
!2820 = !DILocation(line: 941, column: 7, scope: !2796)
!2821 = !DILocation(line: 941, column: 14, scope: !2796)
!2822 = !DILocation(line: 942, column: 7, scope: !2796)
!2823 = !DILocation(line: 942, column: 14, scope: !2796)
!2824 = !DILocation(line: 943, column: 7, scope: !2796)
!2825 = !DILocation(line: 943, column: 18, scope: !2796)
!2826 = !{!530, !497, i64 48}
!2827 = !DILocation(line: 944, column: 7, scope: !2796)
!2828 = !DILocation(line: 944, column: 16, scope: !2796)
!2829 = !DILocation(line: 945, column: 7, scope: !2796)
!2830 = !DILocation(line: 945, column: 18, scope: !2796)
!2831 = !DILocation(line: 946, column: 7, scope: !2796)
!2832 = !DILocation(line: 946, column: 19, scope: !2796)
!2833 = !{!530, !497, i64 72}
!2834 = !DILocation(line: 947, column: 7, scope: !2796)
!2835 = !DILocation(line: 947, column: 18, scope: !2796)
!2836 = !DILocation(line: 948, column: 7, scope: !2796)
!2837 = !DILocation(line: 948, column: 18, scope: !2796)
!2838 = !DILocation(line: 949, column: 7, scope: !2796)
!2839 = !DILocation(line: 949, column: 17, scope: !2796)
!2840 = !{!530, !497, i64 88}
!2841 = !DILocation(line: 950, column: 7, scope: !2796)
!2842 = !DILocation(line: 950, column: 16, scope: !2796)
!2843 = !DILocation(line: 951, column: 7, scope: !2796)
!2844 = !DILocation(line: 951, column: 16, scope: !2796)
!2845 = !DILocation(line: 952, column: 7, scope: !2796)
!2846 = !DILocation(line: 952, column: 16, scope: !2796)
!2847 = !DILocation(line: 953, column: 7, scope: !2796)
!2848 = !DILocation(line: 953, column: 15, scope: !2796)
!2849 = !DILocation(line: 954, column: 1, scope: !2796)
!2850 = distinct !DISubprogram(name: "NAB_initatom", scope: !3, file: !3, line: 956, type: !2851, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !102, !36}
!2853 = !{!2854, !2855, !2856}
!2854 = !DILocalVariable(name: "ap", arg: 1, scope: !2850, file: !3, line: 956, type: !102)
!2855 = !DILocalVariable(name: "init_str", arg: 2, scope: !2850, file: !3, line: 956, type: !36)
!2856 = !DILocalVariable(name: "i", scope: !2850, file: !3, line: 958, type: !36)
!2857 = !DILocation(line: 0, scope: !2850)
!2858 = !DILocation(line: 960, column: 6, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 960, column: 6)
!2860 = !DILocation(line: 960, column: 6, scope: !2850)
!2861 = !DILocation(line: 961, column: 7, scope: !2859)
!2862 = !DILocation(line: 961, column: 18, scope: !2859)
!2863 = !DILocation(line: 961, column: 3, scope: !2859)
!2864 = !DILocation(line: 962, column: 6, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 962, column: 6)
!2866 = !DILocation(line: 962, column: 6, scope: !2850)
!2867 = !DILocation(line: 963, column: 7, scope: !2865)
!2868 = !DILocation(line: 963, column: 18, scope: !2865)
!2869 = !DILocation(line: 963, column: 3, scope: !2865)
!2870 = !DILocation(line: 964, column: 6, scope: !2850)
!2871 = !DILocation(line: 964, column: 17, scope: !2850)
!2872 = !DILocation(line: 965, column: 6, scope: !2850)
!2873 = !DILocation(line: 965, column: 17, scope: !2850)
!2874 = !{!592, !497, i64 20}
!2875 = !DILocation(line: 966, column: 2, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 966, column: 2)
!2877 = !DILocation(line: 967, column: 7, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 966, column: 2)
!2879 = !DILocation(line: 967, column: 3, scope: !2878)
!2880 = !DILocation(line: 967, column: 22, scope: !2878)
!2881 = !DILocation(line: 966, column: 35, scope: !2878)
!2882 = !DILocation(line: 966, column: 16, scope: !2878)
!2883 = distinct !{!2883, !2875, !2884}
!2884 = !DILocation(line: 967, column: 24, scope: !2876)
!2885 = !DILocation(line: 968, column: 6, scope: !2850)
!2886 = !DILocation(line: 968, column: 17, scope: !2850)
!2887 = !{!592, !498, i64 56}
!2888 = !DILocation(line: 969, column: 6, scope: !2850)
!2889 = !DILocation(line: 969, column: 17, scope: !2850)
!2890 = !{!592, !457, i64 64}
!2891 = !DILocation(line: 970, column: 6, scope: !2850)
!2892 = !DILocation(line: 970, column: 17, scope: !2850)
!2893 = !{!592, !457, i64 72}
!2894 = !DILocation(line: 971, column: 6, scope: !2850)
!2895 = !DILocation(line: 971, column: 17, scope: !2850)
!2896 = !{!592, !457, i64 80}
!2897 = !DILocation(line: 972, column: 6, scope: !2850)
!2898 = !DILocation(line: 972, column: 17, scope: !2850)
!2899 = !{!592, !457, i64 88}
!2900 = !DILocation(line: 973, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 973, column: 6)
!2902 = !DILocation(line: 973, column: 6, scope: !2850)
!2903 = !DILocation(line: 974, column: 7, scope: !2901)
!2904 = !DILocation(line: 974, column: 17, scope: !2901)
!2905 = !DILocation(line: 974, column: 3, scope: !2901)
!2906 = !DILocation(line: 975, column: 6, scope: !2850)
!2907 = !DILocation(line: 975, column: 17, scope: !2850)
!2908 = !{!592, !497, i64 104}
!2909 = !DILocation(line: 976, column: 6, scope: !2850)
!2910 = !DILocation(line: 976, column: 17, scope: !2850)
!2911 = !{!592, !457, i64 112}
!2912 = !DILocation(line: 977, column: 6, scope: !2850)
!2913 = !DILocation(line: 977, column: 17, scope: !2850)
!2914 = !{!592, !457, i64 120}
!2915 = !DILocation(line: 978, column: 6, scope: !2850)
!2916 = !DILocation(line: 978, column: 17, scope: !2850)
!2917 = !DILocation(line: 979, column: 6, scope: !2850)
!2918 = !DILocation(line: 979, column: 17, scope: !2850)
!2919 = !DILocation(line: 980, column: 6, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 980, column: 6)
!2921 = !DILocation(line: 980, column: 6, scope: !2850)
!2922 = !DILocation(line: 981, column: 7, scope: !2920)
!2923 = !DILocation(line: 981, column: 18, scope: !2920)
!2924 = !DILocation(line: 981, column: 3, scope: !2920)
!2925 = !DILocation(line: 982, column: 6, scope: !2850)
!2926 = !DILocation(line: 982, column: 2, scope: !2850)
!2927 = !DILocation(line: 982, column: 17, scope: !2850)
!2928 = !DILocation(line: 983, column: 6, scope: !2850)
!2929 = !DILocation(line: 983, column: 2, scope: !2850)
!2930 = !DILocation(line: 983, column: 17, scope: !2850)
!2931 = !DILocation(line: 984, column: 6, scope: !2850)
!2932 = !DILocation(line: 984, column: 2, scope: !2850)
!2933 = !DILocation(line: 984, column: 17, scope: !2850)
!2934 = !DILocation(line: 985, column: 6, scope: !2850)
!2935 = !DILocation(line: 985, column: 17, scope: !2850)
!2936 = !DILocation(line: 986, column: 1, scope: !2850)
!2937 = distinct !DISubprogram(name: "NAB_mnext", scope: !3, file: !3, line: 988, type: !2938, scopeLine: 989, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!102, !22, !102}
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948}
!2941 = !DILocalVariable(name: "mol", arg: 1, scope: !2937, file: !3, line: 988, type: !22)
!2942 = !DILocalVariable(name: "cap", arg: 2, scope: !2937, file: !3, line: 988, type: !102)
!2943 = !DILocalVariable(name: "sp", scope: !2937, file: !3, line: 990, type: !38)
!2944 = !DILocalVariable(name: "res", scope: !2937, file: !3, line: 991, type: !56)
!2945 = !DILocalVariable(name: "ap", scope: !2937, file: !3, line: 992, type: !102)
!2946 = !DILocalVariable(name: "r", scope: !2937, file: !3, line: 993, type: !36)
!2947 = !DILocalVariable(name: "nr", scope: !2937, file: !3, line: 993, type: !36)
!2948 = !DILocalVariable(name: "a", scope: !2937, file: !3, line: 993, type: !36)
!2949 = !DILocation(line: 0, scope: !2937)
!2950 = !DILocation(line: 995, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 995, column: 6)
!2952 = !DILocation(line: 995, column: 6, scope: !2937)
!2953 = !DILocation(line: 996, column: 18, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 996, column: 3)
!2955 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 995, column: 12)
!2956 = !DILocation(line: 996, column: 8, scope: !2954)
!2957 = !DILocation(line: 0, scope: !2954)
!2958 = !DILocation(line: 997, column: 4, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 996, column: 3)
!2960 = !DILocation(line: 997, column: 7, scope: !2959)
!2961 = !DILocation(line: 997, column: 14, scope: !2959)
!2962 = !DILocation(line: 997, column: 26, scope: !2959)
!2963 = !DILocation(line: 0, scope: !2959)
!2964 = !DILocation(line: 996, column: 3, scope: !2954)
!2965 = !DILocation(line: 997, column: 41, scope: !2959)
!2966 = !DILocation(line: 996, column: 3, scope: !2959)
!2967 = distinct !{!2967, !2964, !2968}
!2968 = !DILocation(line: 998, column: 4, scope: !2954)
!2969 = !DILocation(line: 999, column: 8, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 999, column: 7)
!2971 = !DILocation(line: 999, column: 7, scope: !2955)
!2972 = !DILocation(line: 1000, column: 4, scope: !2970)
!2973 = !DILocation(line: 1001, column: 13, scope: !2955)
!2974 = !DILocation(line: 1001, column: 9, scope: !2955)
!2975 = !DILocation(line: 1002, column: 14, scope: !2955)
!2976 = !DILocation(line: 1002, column: 9, scope: !2955)
!2977 = !DILocation(line: 1003, column: 3, scope: !2955)
!2978 = !DILocation(line: 1005, column: 14, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 1004, column: 7)
!2980 = !DILocation(line: 1006, column: 18, scope: !2979)
!2981 = !DILocation(line: 1006, column: 11, scope: !2979)
!2982 = !DILocation(line: 1006, column: 26, scope: !2979)
!2983 = !DILocation(line: 1006, column: 7, scope: !2979)
!2984 = !DILocation(line: 1007, column: 16, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1007, column: 7)
!2986 = !DILocation(line: 1007, column: 9, scope: !2985)
!2987 = !DILocation(line: 1007, column: 7, scope: !2979)
!2988 = !DILocation(line: 1008, column: 15, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 1007, column: 26)
!2990 = !DILocation(line: 1008, column: 10, scope: !2989)
!2991 = !DILocation(line: 1009, column: 4, scope: !2989)
!2992 = !DILocation(line: 1012, column: 13, scope: !2979)
!2993 = !DILocation(line: 1013, column: 17, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1013, column: 3)
!2995 = !DILocation(line: 1013, column: 45, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1013, column: 3)
!2997 = !DILocation(line: 1013, column: 39, scope: !2996)
!2998 = !DILocation(line: 1013, column: 3, scope: !2994)
!2999 = !DILocation(line: 1014, column: 12, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1014, column: 8)
!3001 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 1013, column: 63)
!3002 = !DILocation(line: 1014, column: 8, scope: !3000)
!3003 = !DILocation(line: 1014, column: 28, scope: !3000)
!3004 = !DILocation(line: 1014, column: 8, scope: !3001)
!3005 = !DILocation(line: 1015, column: 12, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 1014, column: 36)
!3007 = !DILocation(line: 1016, column: 5, scope: !3006)
!3008 = !DILocation(line: 1018, column: 3, scope: !3001)
!3009 = !DILocation(line: 1013, column: 59, scope: !2996)
!3010 = distinct !{!3010, !2998, !3011}
!3011 = !DILocation(line: 1018, column: 3, scope: !2994)
!3012 = !DILocation(line: 1019, column: 16, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1019, column: 7)
!3014 = !DILocation(line: 0, scope: !2994)
!3015 = !DILocation(line: 1019, column: 10, scope: !3013)
!3016 = !DILocation(line: 1019, column: 7, scope: !2979)
!3017 = !DILocation(line: 1020, column: 14, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1019, column: 29)
!3019 = !DILocation(line: 1020, column: 10, scope: !3018)
!3020 = !DILocation(line: 1021, column: 15, scope: !3018)
!3021 = !DILocation(line: 1021, column: 10, scope: !3018)
!3022 = !DILocation(line: 1022, column: 4, scope: !3018)
!3023 = !DILocation(line: 1025, column: 17, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1025, column: 3)
!3025 = !DILocation(line: 1025, column: 8, scope: !3024)
!3026 = !DILocation(line: 0, scope: !3024)
!3027 = !DILocation(line: 1026, column: 4, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1025, column: 3)
!3029 = !DILocation(line: 1026, column: 7, scope: !3028)
!3030 = !DILocation(line: 1026, column: 14, scope: !3028)
!3031 = !DILocation(line: 1026, column: 26, scope: !3028)
!3032 = !DILocation(line: 0, scope: !3028)
!3033 = !DILocation(line: 1025, column: 3, scope: !3024)
!3034 = !DILocation(line: 1026, column: 41, scope: !3028)
!3035 = !DILocation(line: 1025, column: 3, scope: !3028)
!3036 = distinct !{!3036, !3033, !3037}
!3037 = !DILocation(line: 1027, column: 4, scope: !3024)
!3038 = !DILocation(line: 1028, column: 8, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1028, column: 7)
!3040 = !DILocation(line: 1028, column: 7, scope: !2979)
!3041 = !DILocation(line: 1029, column: 4, scope: !3039)
!3042 = !DILocation(line: 1030, column: 13, scope: !2979)
!3043 = !DILocation(line: 1030, column: 9, scope: !2979)
!3044 = !DILocation(line: 1031, column: 14, scope: !2979)
!3045 = !DILocation(line: 1031, column: 9, scope: !2979)
!3046 = !DILocation(line: 1032, column: 3, scope: !2979)
!3047 = !DILocation(line: 0, scope: !2951)
!3048 = !DILocation(line: 1034, column: 1, scope: !2937)
!3049 = distinct !DISubprogram(name: "NAB_rnext", scope: !3, file: !3, line: 1036, type: !3050, scopeLine: 1037, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!56, !22, !56}
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3058}
!3053 = !DILocalVariable(name: "mol", arg: 1, scope: !3049, file: !3, line: 1036, type: !22)
!3054 = !DILocalVariable(name: "crp", arg: 2, scope: !3049, file: !3, line: 1036, type: !56)
!3055 = !DILocalVariable(name: "sp", scope: !3049, file: !3, line: 1038, type: !38)
!3056 = !DILocalVariable(name: "res", scope: !3049, file: !3, line: 1039, type: !56)
!3057 = !DILocalVariable(name: "r", scope: !3049, file: !3, line: 1040, type: !36)
!3058 = !DILocalVariable(name: "nr", scope: !3049, file: !3, line: 1040, type: !36)
!3059 = !DILocation(line: 0, scope: !3049)
!3060 = !DILocation(line: 1042, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 1042, column: 6)
!3062 = !DILocation(line: 1042, column: 6, scope: !3049)
!3063 = !DILocation(line: 1043, column: 18, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 1043, column: 3)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 1042, column: 12)
!3066 = !DILocation(line: 1043, column: 8, scope: !3064)
!3067 = !DILocation(line: 0, scope: !3064)
!3068 = !DILocation(line: 1044, column: 4, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1043, column: 3)
!3070 = !DILocation(line: 1044, column: 7, scope: !3069)
!3071 = !DILocation(line: 1044, column: 14, scope: !3069)
!3072 = !DILocation(line: 1044, column: 26, scope: !3069)
!3073 = !DILocation(line: 0, scope: !3069)
!3074 = !DILocation(line: 1043, column: 3, scope: !3064)
!3075 = !DILocation(line: 1044, column: 41, scope: !3069)
!3076 = !DILocation(line: 1043, column: 3, scope: !3069)
!3077 = distinct !{!3077, !3074, !3078}
!3078 = !DILocation(line: 1045, column: 4, scope: !3064)
!3079 = !DILocation(line: 1046, column: 8, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 1046, column: 7)
!3081 = !DILocation(line: 1046, column: 7, scope: !3065)
!3082 = !DILocation(line: 1047, column: 4, scope: !3080)
!3083 = !DILocation(line: 1048, column: 13, scope: !3065)
!3084 = !DILocation(line: 1048, column: 9, scope: !3065)
!3085 = !DILocation(line: 1049, column: 3, scope: !3065)
!3086 = !DILocation(line: 1052, column: 13, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 1050, column: 7)
!3088 = !DILocation(line: 1053, column: 17, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1053, column: 3)
!3090 = !DILocation(line: 1053, column: 45, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 1053, column: 3)
!3092 = !DILocation(line: 1053, column: 39, scope: !3091)
!3093 = !DILocation(line: 1053, column: 3, scope: !3089)
!3094 = !DILocation(line: 1054, column: 12, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1054, column: 8)
!3096 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1053, column: 63)
!3097 = !DILocation(line: 1054, column: 8, scope: !3095)
!3098 = !DILocation(line: 1054, column: 28, scope: !3095)
!3099 = !DILocation(line: 1054, column: 8, scope: !3096)
!3100 = !DILocation(line: 1055, column: 12, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1054, column: 36)
!3102 = !DILocation(line: 1056, column: 5, scope: !3101)
!3103 = !DILocation(line: 1058, column: 3, scope: !3096)
!3104 = !DILocation(line: 1053, column: 59, scope: !3091)
!3105 = distinct !{!3105, !3093, !3106}
!3106 = !DILocation(line: 1058, column: 3, scope: !3089)
!3107 = !DILocation(line: 1059, column: 16, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1059, column: 7)
!3109 = !DILocation(line: 0, scope: !3089)
!3110 = !DILocation(line: 1059, column: 10, scope: !3108)
!3111 = !DILocation(line: 1059, column: 7, scope: !3087)
!3112 = !DILocation(line: 1060, column: 14, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1059, column: 29)
!3114 = !DILocation(line: 1060, column: 10, scope: !3113)
!3115 = !DILocation(line: 1061, column: 4, scope: !3113)
!3116 = !DILocation(line: 1064, column: 17, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1064, column: 3)
!3118 = !DILocation(line: 1064, column: 8, scope: !3117)
!3119 = !DILocation(line: 0, scope: !3117)
!3120 = !DILocation(line: 1065, column: 4, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 1064, column: 3)
!3122 = !DILocation(line: 1065, column: 7, scope: !3121)
!3123 = !DILocation(line: 1065, column: 14, scope: !3121)
!3124 = !DILocation(line: 1065, column: 26, scope: !3121)
!3125 = !DILocation(line: 0, scope: !3121)
!3126 = !DILocation(line: 1064, column: 3, scope: !3117)
!3127 = !DILocation(line: 1065, column: 41, scope: !3121)
!3128 = !DILocation(line: 1064, column: 3, scope: !3121)
!3129 = distinct !{!3129, !3126, !3130}
!3130 = !DILocation(line: 1066, column: 4, scope: !3117)
!3131 = !DILocation(line: 1067, column: 8, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1067, column: 7)
!3133 = !DILocation(line: 1067, column: 7, scope: !3087)
!3134 = !DILocation(line: 1068, column: 4, scope: !3132)
!3135 = !DILocation(line: 1069, column: 13, scope: !3087)
!3136 = !DILocation(line: 1069, column: 9, scope: !3087)
!3137 = !DILocation(line: 1070, column: 3, scope: !3087)
!3138 = !DILocation(line: 0, scope: !3061)
!3139 = !DILocation(line: 1072, column: 1, scope: !3049)
!3140 = distinct !DISubprogram(name: "NAB_anext", scope: !3, file: !3, line: 1074, type: !3141, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!102, !56, !102}
!3143 = !{!3144, !3145, !3146, !3147}
!3144 = !DILocalVariable(name: "res", arg: 1, scope: !3140, file: !3, line: 1074, type: !56)
!3145 = !DILocalVariable(name: "cap", arg: 2, scope: !3140, file: !3, line: 1074, type: !102)
!3146 = !DILocalVariable(name: "ap", scope: !3140, file: !3, line: 1076, type: !102)
!3147 = !DILocalVariable(name: "na", scope: !3140, file: !3, line: 1077, type: !36)
!3148 = !DILocation(line: 0, scope: !3140)
!3149 = !DILocation(line: 1079, column: 7, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1079, column: 6)
!3151 = !DILocation(line: 1079, column: 6, scope: !3140)
!3152 = !DILocation(line: 1080, column: 13, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1079, column: 12)
!3154 = !DILocation(line: 1081, column: 3, scope: !3153)
!3155 = !DILocation(line: 1084, column: 21, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1082, column: 7)
!3157 = !DILocation(line: 1084, column: 14, scope: !3156)
!3158 = !DILocation(line: 1084, column: 31, scope: !3156)
!3159 = !DILocation(line: 1084, column: 8, scope: !3156)
!3160 = !DILocation(line: 1085, column: 17, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1085, column: 7)
!3162 = !DILocation(line: 1085, column: 10, scope: !3161)
!3163 = !DILocation(line: 1085, column: 7, scope: !3156)
!3164 = !DILocation(line: 1086, column: 15, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 1085, column: 27)
!3166 = !DILocation(line: 1086, column: 10, scope: !3165)
!3167 = !DILocation(line: 1087, column: 4, scope: !3165)
!3168 = !DILocation(line: 1089, column: 4, scope: !3161)
!3169 = !DILocation(line: 0, scope: !3150)
!3170 = !DILocation(line: 1091, column: 1, scope: !3140)
!3171 = distinct !DISubprogram(name: "NAB_mri", scope: !3, file: !3, line: 1093, type: !3172, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!277, !22, !241}
!3174 = !{!3175, !3176}
!3175 = !DILocalVariable(name: "mol", arg: 1, scope: !3171, file: !3, line: 1093, type: !22)
!3176 = !DILocalVariable(name: "key", arg: 2, scope: !3171, file: !3, line: 1093, type: !241)
!3177 = !DILocation(line: 0, scope: !3171)
!3178 = !DILocation(line: 1096, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 1096, column: 6)
!3180 = !DILocation(line: 1096, column: 6, scope: !3171)
!3181 = !DILocation(line: 1097, column: 13, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 1097, column: 7)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 1096, column: 34)
!3184 = !DILocation(line: 1097, column: 8, scope: !3182)
!3185 = !DILocation(line: 1097, column: 7, scope: !3183)
!3186 = !DILocation(line: 1098, column: 4, scope: !3182)
!3187 = !DILocation(line: 1099, column: 17, scope: !3183)
!3188 = !DILocation(line: 1099, column: 3, scope: !3183)
!3189 = !DILocation(line: 1100, column: 13, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 1100, column: 12)
!3191 = !DILocation(line: 1100, column: 12, scope: !3179)
!3192 = !DILocation(line: 1101, column: 13, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 1101, column: 7)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 1100, column: 41)
!3195 = !DILocation(line: 1101, column: 8, scope: !3193)
!3196 = !DILocation(line: 1101, column: 7, scope: !3194)
!3197 = !DILocation(line: 1102, column: 4, scope: !3193)
!3198 = !DILocation(line: 1103, column: 17, scope: !3194)
!3199 = !DILocation(line: 1103, column: 3, scope: !3194)
!3200 = !DILocation(line: 1104, column: 13, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 1104, column: 12)
!3202 = !DILocation(line: 1104, column: 12, scope: !3190)
!3203 = !DILocation(line: 1105, column: 13, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1105, column: 7)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1104, column: 38)
!3206 = !DILocation(line: 1105, column: 8, scope: !3204)
!3207 = !DILocation(line: 1105, column: 7, scope: !3205)
!3208 = !DILocation(line: 1106, column: 4, scope: !3204)
!3209 = !DILocation(line: 1107, column: 17, scope: !3205)
!3210 = !DILocation(line: 1107, column: 3, scope: !3205)
!3211 = !DILocation(line: 1109, column: 12, scope: !3201)
!3212 = !DILocation(line: 1109, column: 3, scope: !3201)
!3213 = !DILocation(line: 1110, column: 2, scope: !3171)
!3214 = !DILocation(line: 1111, column: 1, scope: !3171)
!3215 = !DILocation(line: 0, scope: !352)
!3216 = !DILocation(line: 1119, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !352, file: !3, line: 1119, column: 6)
!3218 = !DILocation(line: 1119, column: 6, scope: !352)
!3219 = !DILocation(line: 1120, column: 13, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1119, column: 32)
!3221 = !DILocation(line: 1121, column: 12, scope: !3220)
!3222 = !DILocation(line: 1122, column: 12, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 1122, column: 7)
!3224 = !DILocation(line: 1122, column: 8, scope: !3223)
!3225 = !DILocation(line: 1122, column: 7, scope: !3220)
!3226 = !DILocation(line: 1123, column: 4, scope: !3223)
!3227 = !DILocation(line: 1124, column: 17, scope: !3220)
!3228 = !DILocation(line: 1124, column: 3, scope: !3220)
!3229 = !DILocation(line: 1125, column: 13, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 1125, column: 12)
!3231 = !DILocation(line: 1125, column: 12, scope: !3217)
!3232 = !DILocation(line: 1126, column: 13, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1125, column: 39)
!3234 = !DILocation(line: 1127, column: 12, scope: !3233)
!3235 = !DILocation(line: 1128, column: 12, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 1128, column: 7)
!3237 = !DILocation(line: 1128, column: 8, scope: !3236)
!3238 = !DILocation(line: 1128, column: 7, scope: !3233)
!3239 = !DILocation(line: 1129, column: 4, scope: !3236)
!3240 = !DILocation(line: 1130, column: 17, scope: !3233)
!3241 = !DILocation(line: 1130, column: 3, scope: !3233)
!3242 = !DILocation(line: 1131, column: 13, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1131, column: 12)
!3244 = !DILocation(line: 1131, column: 12, scope: !3230)
!3245 = !DILocation(line: 1132, column: 13, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 1131, column: 41)
!3247 = !DILocation(line: 1133, column: 12, scope: !3246)
!3248 = !DILocation(line: 1134, column: 12, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 1134, column: 7)
!3250 = !DILocation(line: 1134, column: 8, scope: !3249)
!3251 = !DILocation(line: 1134, column: 7, scope: !3246)
!3252 = !DILocation(line: 1135, column: 4, scope: !3249)
!3253 = !DILocation(line: 1136, column: 16, scope: !3246)
!3254 = !DILocation(line: 1136, column: 3, scope: !3246)
!3255 = !DILocation(line: 1138, column: 12, scope: !3243)
!3256 = !DILocation(line: 1138, column: 3, scope: !3243)
!3257 = !DILocation(line: 1139, column: 9, scope: !352)
!3258 = !DILocation(line: 1140, column: 2, scope: !352)
!3259 = !DILocation(line: 1141, column: 1, scope: !352)
!3260 = distinct !DISubprogram(name: "NAB_rrc", scope: !3, file: !3, line: 1143, type: !3261, scopeLine: 1144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3263)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!2457, !56, !241}
!3263 = !{!3264, !3265, !3266}
!3264 = !DILocalVariable(name: "res", arg: 1, scope: !3260, file: !3, line: 1143, type: !56)
!3265 = !DILocalVariable(name: "key", arg: 2, scope: !3260, file: !3, line: 1143, type: !241)
!3266 = !DILocalVariable(name: "sp", scope: !3260, file: !3, line: 1145, type: !38)
!3267 = !DILocation(line: 0, scope: !3260)
!3268 = !DILocation(line: 1147, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1147, column: 6)
!3270 = !DILocation(line: 1147, column: 6, scope: !3260)
!3271 = !DILocation(line: 1148, column: 17, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1147, column: 33)
!3273 = !DILocation(line: 1148, column: 3, scope: !3272)
!3274 = !DILocation(line: 1149, column: 13, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1149, column: 12)
!3276 = !DILocation(line: 1149, column: 12, scope: !3269)
!3277 = !DILocation(line: 1150, column: 17, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1149, column: 37)
!3279 = !DILocation(line: 1150, column: 3, scope: !3278)
!3280 = !DILocation(line: 1151, column: 13, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1151, column: 12)
!3282 = !DILocation(line: 1151, column: 12, scope: !3275)
!3283 = !DILocation(line: 1152, column: 13, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 1151, column: 42)
!3285 = !DILocation(line: 1153, column: 16, scope: !3284)
!3286 = !DILocation(line: 1153, column: 3, scope: !3284)
!3287 = !DILocation(line: 1155, column: 12, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 1154, column: 7)
!3289 = !DILocation(line: 1155, column: 3, scope: !3288)
!3290 = !DILocation(line: 1156, column: 3, scope: !3288)
!3291 = !DILocation(line: 0, scope: !3269)
!3292 = !DILocation(line: 1158, column: 1, scope: !3260)
!3293 = !DILocation(line: 0, scope: !362)
!3294 = !DILocation(line: 1167, column: 7, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !362, file: !3, line: 1167, column: 6)
!3296 = !DILocation(line: 1167, column: 6, scope: !362)
!3297 = !DILocation(line: 1168, column: 13, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 1167, column: 35)
!3299 = !DILocation(line: 1169, column: 13, scope: !3298)
!3300 = !DILocation(line: 1170, column: 12, scope: !3298)
!3301 = !DILocation(line: 1171, column: 12, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 1171, column: 7)
!3303 = !DILocation(line: 1171, column: 8, scope: !3302)
!3304 = !DILocation(line: 1171, column: 7, scope: !3298)
!3305 = !DILocation(line: 1172, column: 4, scope: !3302)
!3306 = !DILocation(line: 1173, column: 16, scope: !3298)
!3307 = !DILocation(line: 1173, column: 3, scope: !3298)
!3308 = !DILocation(line: 1174, column: 13, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 1174, column: 12)
!3310 = !DILocation(line: 1174, column: 12, scope: !3295)
!3311 = !DILocation(line: 1175, column: 13, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 1174, column: 38)
!3313 = !DILocation(line: 1176, column: 13, scope: !3312)
!3314 = !DILocation(line: 1177, column: 12, scope: !3312)
!3315 = !DILocation(line: 1178, column: 12, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 1178, column: 7)
!3317 = !DILocation(line: 1178, column: 8, scope: !3316)
!3318 = !DILocation(line: 1178, column: 7, scope: !3312)
!3319 = !DILocation(line: 1179, column: 4, scope: !3316)
!3320 = !DILocation(line: 1180, column: 17, scope: !3312)
!3321 = !DILocation(line: 1180, column: 3, scope: !3312)
!3322 = !DILocation(line: 1181, column: 13, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 1181, column: 12)
!3324 = !DILocation(line: 1181, column: 12, scope: !3309)
!3325 = !DILocation(line: 1182, column: 13, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1181, column: 39)
!3327 = !DILocation(line: 1183, column: 13, scope: !3326)
!3328 = !DILocation(line: 1184, column: 12, scope: !3326)
!3329 = !DILocation(line: 1185, column: 12, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1185, column: 7)
!3331 = !DILocation(line: 1185, column: 8, scope: !3330)
!3332 = !DILocation(line: 1185, column: 7, scope: !3326)
!3333 = !DILocation(line: 1186, column: 4, scope: !3330)
!3334 = !DILocation(line: 1187, column: 17, scope: !3326)
!3335 = !DILocation(line: 1187, column: 3, scope: !3326)
!3336 = !DILocation(line: 1188, column: 13, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1188, column: 12)
!3338 = !DILocation(line: 1188, column: 12, scope: !3323)
!3339 = !DILocation(line: 1189, column: 13, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 1188, column: 39)
!3341 = !DILocation(line: 1190, column: 13, scope: !3340)
!3342 = !DILocation(line: 1191, column: 12, scope: !3340)
!3343 = !DILocation(line: 1192, column: 12, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1192, column: 7)
!3345 = !DILocation(line: 1192, column: 8, scope: !3344)
!3346 = !DILocation(line: 1192, column: 7, scope: !3340)
!3347 = !DILocation(line: 1193, column: 4, scope: !3344)
!3348 = !DILocation(line: 1194, column: 16, scope: !3340)
!3349 = !DILocation(line: 1194, column: 3, scope: !3340)
!3350 = !DILocation(line: 1195, column: 13, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 1195, column: 12)
!3352 = !DILocation(line: 1195, column: 12, scope: !3337)
!3353 = !DILocation(line: 1196, column: 13, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 1195, column: 40)
!3355 = !DILocation(line: 1197, column: 13, scope: !3354)
!3356 = !DILocation(line: 1198, column: 12, scope: !3354)
!3357 = !DILocation(line: 1199, column: 12, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 1199, column: 7)
!3359 = !DILocation(line: 1199, column: 8, scope: !3358)
!3360 = !DILocation(line: 1199, column: 7, scope: !3354)
!3361 = !DILocation(line: 1200, column: 4, scope: !3358)
!3362 = !DILocation(line: 1201, column: 16, scope: !3354)
!3363 = !DILocation(line: 1201, column: 3, scope: !3354)
!3364 = !DILocation(line: 1202, column: 13, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3351, file: !3, line: 1202, column: 12)
!3366 = !DILocation(line: 1202, column: 12, scope: !3351)
!3367 = !DILocation(line: 1203, column: 16, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 1202, column: 36)
!3369 = !DILocation(line: 1203, column: 3, scope: !3368)
!3370 = !DILocation(line: 1205, column: 12, scope: !3365)
!3371 = !DILocation(line: 1205, column: 3, scope: !3365)
!3372 = !DILocation(line: 1206, column: 9, scope: !362)
!3373 = !DILocation(line: 1207, column: 2, scope: !362)
!3374 = !DILocation(line: 1208, column: 1, scope: !362)
!3375 = !DILocation(line: 0, scope: !373)
!3376 = !DILocation(line: 1214, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1214, column: 6)
!3378 = !DILocation(line: 1214, column: 6, scope: !373)
!3379 = !DILocation(line: 1215, column: 16, scope: !3377)
!3380 = !DILocation(line: 1215, column: 12, scope: !3377)
!3381 = !DILocation(line: 1215, column: 3, scope: !3377)
!3382 = !DILocation(line: 1216, column: 12, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1216, column: 11)
!3384 = !DILocation(line: 1216, column: 11, scope: !3377)
!3385 = !DILocation(line: 1217, column: 16, scope: !3383)
!3386 = !DILocation(line: 1217, column: 12, scope: !3383)
!3387 = !DILocation(line: 1217, column: 3, scope: !3383)
!3388 = !DILocation(line: 1218, column: 12, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 1218, column: 11)
!3390 = !DILocation(line: 1218, column: 11, scope: !3383)
!3391 = !DILocation(line: 1219, column: 16, scope: !3389)
!3392 = !DILocation(line: 1219, column: 12, scope: !3389)
!3393 = !DILocation(line: 1219, column: 3, scope: !3389)
!3394 = !DILocation(line: 1220, column: 12, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1220, column: 11)
!3396 = !DILocation(line: 1220, column: 11, scope: !3389)
!3397 = !DILocation(line: 1221, column: 16, scope: !3395)
!3398 = !DILocation(line: 1221, column: 3, scope: !3395)
!3399 = !DILocation(line: 1222, column: 12, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1222, column: 11)
!3401 = !DILocation(line: 1222, column: 11, scope: !3395)
!3402 = !DILocation(line: 1223, column: 16, scope: !3400)
!3403 = !DILocation(line: 1223, column: 3, scope: !3400)
!3404 = !DILocation(line: 1224, column: 12, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 1224, column: 11)
!3406 = !DILocation(line: 1224, column: 11, scope: !3400)
!3407 = !DILocation(line: 1225, column: 16, scope: !3405)
!3408 = !DILocation(line: 1225, column: 3, scope: !3405)
!3409 = !DILocation(line: 1226, column: 12, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 1226, column: 11)
!3411 = !DILocation(line: 1226, column: 11, scope: !3405)
!3412 = !DILocation(line: 1227, column: 16, scope: !3410)
!3413 = !DILocation(line: 1227, column: 3, scope: !3410)
!3414 = !DILocation(line: 1229, column: 12, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 1228, column: 6)
!3416 = !DILocation(line: 1229, column: 3, scope: !3415)
!3417 = !DILocation(line: 1230, column: 5, scope: !3415)
!3418 = !DILocation(line: 1231, column: 3, scope: !3415)
!3419 = !DILocation(line: 0, scope: !3377)
!3420 = !DILocation(line: 1233, column: 1, scope: !373)
!3421 = distinct !DISubprogram(name: "NAB_arc", scope: !3, file: !3, line: 1235, type: !3422, scopeLine: 1236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3424)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!2457, !102, !241}
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433}
!3425 = !DILocalVariable(name: "ap", arg: 1, scope: !3421, file: !3, line: 1235, type: !102)
!3426 = !DILocalVariable(name: "key", arg: 2, scope: !3421, file: !3, line: 1235, type: !241)
!3427 = !DILocalVariable(name: "res", scope: !3421, file: !3, line: 1237, type: !56)
!3428 = !DILocalVariable(name: "sp", scope: !3421, file: !3, line: 1238, type: !38)
!3429 = !DILocalVariable(name: "sp1", scope: !3421, file: !3, line: 1238, type: !38)
!3430 = !DILocalVariable(name: "mp", scope: !3421, file: !3, line: 1239, type: !22)
!3431 = !DILocalVariable(name: "s", scope: !3421, file: !3, line: 1240, type: !36)
!3432 = !DILocalVariable(name: "r", scope: !3421, file: !3, line: 1240, type: !36)
!3433 = !DILocalVariable(name: "name", scope: !3421, file: !3, line: 1241, type: !3434)
!3434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 800, elements: !3435)
!3435 = !{!3436}
!3436 = !DISubrange(count: 100)
!3437 = !DILocation(line: 0, scope: !3421)
!3438 = !DILocation(line: 1241, column: 2, scope: !3421)
!3439 = !DILocation(line: 1241, column: 7, scope: !3421)
!3440 = !DILocation(line: 1243, column: 7, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1243, column: 6)
!3442 = !DILocation(line: 1243, column: 6, scope: !3421)
!3443 = !DILocation(line: 1244, column: 16, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 1243, column: 34)
!3445 = !DILocation(line: 1244, column: 3, scope: !3444)
!3446 = !DILocation(line: 1245, column: 13, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 1245, column: 12)
!3448 = !DILocation(line: 1245, column: 12, scope: !3441)
!3449 = !DILocation(line: 1246, column: 13, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 1245, column: 39)
!3451 = !DILocation(line: 1247, column: 17, scope: !3450)
!3452 = !DILocation(line: 1247, column: 3, scope: !3450)
!3453 = !DILocation(line: 1248, column: 13, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 1248, column: 12)
!3455 = !DILocation(line: 1248, column: 12, scope: !3447)
!3456 = !DILocation(line: 1249, column: 13, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 1248, column: 37)
!3458 = !DILocation(line: 1250, column: 17, scope: !3457)
!3459 = !DILocation(line: 1250, column: 3, scope: !3457)
!3460 = !DILocation(line: 1251, column: 13, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 1251, column: 12)
!3462 = !DILocation(line: 1251, column: 12, scope: !3454)
!3463 = !DILocation(line: 1252, column: 13, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1251, column: 42)
!3465 = !DILocation(line: 1253, column: 13, scope: !3464)
!3466 = !DILocation(line: 1254, column: 16, scope: !3464)
!3467 = !DILocation(line: 1254, column: 3, scope: !3464)
!3468 = !DILocation(line: 1255, column: 13, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1255, column: 12)
!3470 = !DILocation(line: 1255, column: 12, scope: !3461)
!3471 = !DILocation(line: 1256, column: 13, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 1255, column: 40)
!3473 = !DILocation(line: 1257, column: 13, scope: !3472)
!3474 = !DILocation(line: 1258, column: 12, scope: !3472)
!3475 = !DILocation(line: 1259, column: 3, scope: !3472)
!3476 = !DILocation(line: 1260, column: 23, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 1260, column: 3)
!3478 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1260, column: 3)
!3479 = !DILocation(line: 1260, column: 17, scope: !3477)
!3480 = !DILocation(line: 1260, column: 3, scope: !3478)
!3481 = !DILocation(line: 1261, column: 12, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 1261, column: 8)
!3483 = !DILocation(line: 1261, column: 8, scope: !3482)
!3484 = !DILocation(line: 1261, column: 28, scope: !3482)
!3485 = !DILocation(line: 1261, column: 8, scope: !3477)
!3486 = !DILocation(line: 1262, column: 5, scope: !3482)
!3487 = !DILocation(line: 1261, column: 31, scope: !3482)
!3488 = !DILocation(line: 1260, column: 37, scope: !3477)
!3489 = distinct !{!3489, !3480, !3490}
!3490 = !DILocation(line: 1262, column: 5, scope: !3478)
!3491 = !DILocation(line: 1263, column: 25, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1263, column: 3)
!3493 = !DILocation(line: 1263, column: 3, scope: !3492)
!3494 = !DILocation(line: 1264, column: 5, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1263, column: 60)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 1263, column: 3)
!3497 = !DILocation(line: 1265, column: 12, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 1265, column: 8)
!3499 = !DILocation(line: 1265, column: 8, scope: !3495)
!3500 = !DILocation(line: 1266, column: 5, scope: !3498)
!3501 = !DILocation(line: 1267, column: 3, scope: !3495)
!3502 = !DILocation(line: 1263, column: 52, scope: !3496)
!3503 = distinct !{!3503, !3493, !3504}
!3504 = !DILocation(line: 1267, column: 3, scope: !3492)
!3505 = !DILocation(line: 0, scope: !3492)
!3506 = !DILocation(line: 1268, column: 12, scope: !3472)
!3507 = !DILocation(line: 1268, column: 35, scope: !3472)
!3508 = !DILocation(line: 1268, column: 44, scope: !3472)
!3509 = !DILocation(line: 1268, column: 3, scope: !3472)
!3510 = !DILocation(line: 1269, column: 11, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1269, column: 7)
!3512 = !DILocation(line: 1269, column: 7, scope: !3511)
!3513 = !DILocation(line: 1269, column: 7, scope: !3472)
!3514 = !DILocation(line: 1270, column: 14, scope: !3511)
!3515 = !DILocation(line: 1270, column: 4, scope: !3511)
!3516 = !DILocation(line: 1271, column: 47, scope: !3472)
!3517 = !DILocation(line: 1271, column: 39, scope: !3472)
!3518 = !DILocation(line: 1271, column: 54, scope: !3472)
!3519 = !DILocation(line: 1271, column: 59, scope: !3472)
!3520 = !DILocation(line: 1271, column: 30, scope: !3472)
!3521 = !DILocation(line: 1271, column: 7, scope: !3472)
!3522 = !DILocation(line: 1271, column: 18, scope: !3472)
!3523 = !DILocation(line: 1272, column: 15, scope: !3472)
!3524 = !DILocation(line: 1272, column: 27, scope: !3472)
!3525 = !DILocation(line: 1272, column: 3, scope: !3472)
!3526 = !DILocation(line: 1273, column: 16, scope: !3472)
!3527 = !DILocation(line: 1273, column: 3, scope: !3472)
!3528 = !DILocation(line: 1275, column: 12, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 1274, column: 7)
!3530 = !DILocation(line: 1275, column: 3, scope: !3529)
!3531 = !DILocation(line: 1276, column: 3, scope: !3529)
!3532 = !DILocation(line: 0, scope: !3441)
!3533 = !DILocation(line: 1278, column: 1, scope: !3421)
!3534 = distinct !DISubprogram(name: "NAB_arp", scope: !3, file: !3, line: 1280, type: !3535, scopeLine: 1281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3537)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!2458, !102, !241}
!3537 = !{!3538, !3539, !3540}
!3538 = !DILocalVariable(name: "ap", arg: 1, scope: !3534, file: !3, line: 1280, type: !102)
!3539 = !DILocalVariable(name: "key", arg: 2, scope: !3534, file: !3, line: 1280, type: !241)
!3540 = !DILocalVariable(name: "temp", scope: !3534, file: !3, line: 1282, type: !237)
!3541 = !DILocation(line: 0, scope: !3534)
!3542 = !DILocation(line: 1284, column: 13, scope: !3534)
!3543 = !DILocation(line: 1284, column: 9, scope: !3534)
!3544 = !DILocation(line: 1285, column: 8, scope: !3534)
!3545 = !DILocation(line: 1285, column: 2, scope: !3534)
!3546 = !DILocation(line: 0, scope: !381)
!3547 = !DILocation(line: 1319, column: 2, scope: !381)
!3548 = !DILocation(line: 1319, column: 11, scope: !381)
!3549 = !DILocation(line: 1319, column: 17, scope: !381)
!3550 = !DILocation(line: 1319, column: 24, scope: !381)
!3551 = !DILocation(line: 1322, column: 7, scope: !381)
!3552 = !DILocation(line: 1324, column: 2, scope: !381)
!3553 = !DILocation(line: 1325, column: 15, scope: !381)
!3554 = !DILocation(line: 1326, column: 15, scope: !381)
!3555 = !DILocation(line: 1327, column: 15, scope: !381)
!3556 = !DILocation(line: 1329, column: 12, scope: !381)
!3557 = !DILocation(line: 1329, column: 2, scope: !381)
!3558 = !DILocation(line: 1330, column: 9, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1330, column: 6)
!3560 = !DILocation(line: 1330, column: 6, scope: !381)
!3561 = !DILocation(line: 1331, column: 13, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 1330, column: 17)
!3563 = !DILocation(line: 1331, column: 3, scope: !3562)
!3564 = !DILocation(line: 1332, column: 29, scope: !3562)
!3565 = !DILocation(line: 1332, column: 20, scope: !3562)
!3566 = !DILocation(line: 1332, column: 3, scope: !3562)
!3567 = !DILocation(line: 1332, column: 18, scope: !3562)
!3568 = !DILocation(line: 1333, column: 30, scope: !3562)
!3569 = !DILocation(line: 1333, column: 21, scope: !3562)
!3570 = !DILocation(line: 1333, column: 20, scope: !3562)
!3571 = !DILocation(line: 1333, column: 3, scope: !3562)
!3572 = !DILocation(line: 1333, column: 18, scope: !3562)
!3573 = !DILocation(line: 1334, column: 29, scope: !3562)
!3574 = !DILocation(line: 1334, column: 20, scope: !3562)
!3575 = !DILocation(line: 1334, column: 3, scope: !3562)
!3576 = !DILocation(line: 1334, column: 18, scope: !3562)
!3577 = !DILocation(line: 1335, column: 29, scope: !3562)
!3578 = !DILocation(line: 1335, column: 20, scope: !3562)
!3579 = !DILocation(line: 1335, column: 3, scope: !3562)
!3580 = !DILocation(line: 1335, column: 18, scope: !3562)
!3581 = !DILocation(line: 1336, column: 15, scope: !3562)
!3582 = !DILocation(line: 1336, column: 21, scope: !3562)
!3583 = !DILocation(line: 1336, column: 28, scope: !3562)
!3584 = !DILocation(line: 1336, column: 3, scope: !3562)
!3585 = !DILocation(line: 1337, column: 13, scope: !3562)
!3586 = !DILocation(line: 1337, column: 19, scope: !3562)
!3587 = !DILocation(line: 1337, column: 3, scope: !3562)
!3588 = !DILocation(line: 1338, column: 2, scope: !3562)
!3589 = !DILocation(line: 1339, column: 9, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1339, column: 6)
!3591 = !DILocation(line: 1339, column: 6, scope: !381)
!3592 = !DILocation(line: 1340, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 1339, column: 17)
!3594 = !DILocation(line: 1340, column: 3, scope: !3593)
!3595 = !DILocation(line: 1341, column: 29, scope: !3593)
!3596 = !DILocation(line: 1341, column: 20, scope: !3593)
!3597 = !DILocation(line: 1341, column: 3, scope: !3593)
!3598 = !DILocation(line: 1341, column: 18, scope: !3593)
!3599 = !DILocation(line: 1346, column: 30, scope: !3593)
!3600 = !DILocation(line: 1346, column: 21, scope: !3593)
!3601 = !DILocation(line: 1346, column: 20, scope: !3593)
!3602 = !DILocation(line: 1346, column: 3, scope: !3593)
!3603 = !DILocation(line: 1346, column: 18, scope: !3593)
!3604 = !DILocation(line: 1347, column: 29, scope: !3593)
!3605 = !DILocation(line: 1347, column: 20, scope: !3593)
!3606 = !DILocation(line: 1347, column: 3, scope: !3593)
!3607 = !DILocation(line: 1347, column: 18, scope: !3593)
!3608 = !DILocation(line: 1348, column: 29, scope: !3593)
!3609 = !DILocation(line: 1348, column: 20, scope: !3593)
!3610 = !DILocation(line: 1348, column: 3, scope: !3593)
!3611 = !DILocation(line: 1348, column: 18, scope: !3593)
!3612 = !DILocation(line: 1349, column: 15, scope: !3593)
!3613 = !DILocation(line: 1349, column: 21, scope: !3593)
!3614 = !DILocation(line: 1349, column: 28, scope: !3593)
!3615 = !DILocation(line: 1349, column: 3, scope: !3593)
!3616 = !DILocation(line: 1350, column: 13, scope: !3593)
!3617 = !DILocation(line: 1350, column: 19, scope: !3593)
!3618 = !DILocation(line: 1350, column: 3, scope: !3593)
!3619 = !DILocation(line: 1351, column: 2, scope: !3593)
!3620 = !DILocation(line: 1352, column: 9, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1352, column: 6)
!3622 = !DILocation(line: 1352, column: 6, scope: !381)
!3623 = !DILocation(line: 1353, column: 13, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1352, column: 17)
!3625 = !DILocation(line: 1353, column: 3, scope: !3624)
!3626 = !DILocation(line: 1354, column: 29, scope: !3624)
!3627 = !DILocation(line: 1354, column: 20, scope: !3624)
!3628 = !DILocation(line: 1354, column: 3, scope: !3624)
!3629 = !DILocation(line: 1354, column: 18, scope: !3624)
!3630 = !DILocation(line: 1355, column: 30, scope: !3624)
!3631 = !DILocation(line: 1355, column: 21, scope: !3624)
!3632 = !DILocation(line: 1355, column: 20, scope: !3624)
!3633 = !DILocation(line: 1355, column: 3, scope: !3624)
!3634 = !DILocation(line: 1355, column: 18, scope: !3624)
!3635 = !DILocation(line: 1356, column: 29, scope: !3624)
!3636 = !DILocation(line: 1356, column: 20, scope: !3624)
!3637 = !DILocation(line: 1356, column: 3, scope: !3624)
!3638 = !DILocation(line: 1356, column: 18, scope: !3624)
!3639 = !DILocation(line: 1357, column: 29, scope: !3624)
!3640 = !DILocation(line: 1357, column: 20, scope: !3624)
!3641 = !DILocation(line: 1357, column: 3, scope: !3624)
!3642 = !DILocation(line: 1357, column: 18, scope: !3624)
!3643 = !DILocation(line: 1358, column: 15, scope: !3624)
!3644 = !DILocation(line: 1358, column: 21, scope: !3624)
!3645 = !DILocation(line: 1358, column: 28, scope: !3624)
!3646 = !DILocation(line: 1358, column: 3, scope: !3624)
!3647 = !DILocation(line: 1359, column: 13, scope: !3624)
!3648 = !DILocation(line: 1359, column: 19, scope: !3624)
!3649 = !DILocation(line: 1359, column: 3, scope: !3624)
!3650 = !DILocation(line: 1360, column: 2, scope: !3624)
!3651 = !DILocation(line: 1362, column: 14, scope: !381)
!3652 = !DILocation(line: 1362, column: 24, scope: !381)
!3653 = !DILocation(line: 1362, column: 2, scope: !381)
!3654 = !DILocation(line: 1363, column: 12, scope: !381)
!3655 = !DILocation(line: 1363, column: 2, scope: !381)
!3656 = !DILocation(line: 1366, column: 8, scope: !381)
!3657 = !DILocation(line: 1367, column: 1, scope: !381)
!3658 = !DILocation(line: 1366, column: 2, scope: !381)
!3659 = distinct !DISubprogram(name: "mk_idmat", scope: !3, file: !3, line: 1563, type: !3660, scopeLine: 1564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{null, !400}
!3662 = !{!3663, !3664, !3665}
!3663 = !DILocalVariable(name: "idmat", arg: 1, scope: !3659, file: !3, line: 1563, type: !400)
!3664 = !DILocalVariable(name: "i", scope: !3659, file: !3, line: 1565, type: !36)
!3665 = !DILocalVariable(name: "j", scope: !3659, file: !3, line: 1565, type: !36)
!3666 = !DILocation(line: 0, scope: !3659)
!3667 = !DILocation(line: 1567, column: 2, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 1567, column: 2)
!3669 = !DILocation(line: 1568, column: 3, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1568, column: 3)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1567, column: 26)
!3672 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1567, column: 2)
!3673 = !DILocation(line: 1569, column: 26, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1568, column: 27)
!3675 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 1568, column: 3)
!3676 = !DILocation(line: 1569, column: 22, scope: !3674)
!3677 = !DILocation(line: 1569, column: 4, scope: !3674)
!3678 = !DILocation(line: 1569, column: 20, scope: !3674)
!3679 = !DILocation(line: 1570, column: 3, scope: !3674)
!3680 = !DILocation(line: 1568, column: 23, scope: !3675)
!3681 = !DILocation(line: 1568, column: 17, scope: !3675)
!3682 = distinct !{!3682, !3669, !3683}
!3683 = !DILocation(line: 1570, column: 3, scope: !3670)
!3684 = !DILocation(line: 1571, column: 2, scope: !3671)
!3685 = !DILocation(line: 1567, column: 22, scope: !3672)
!3686 = !DILocation(line: 1567, column: 16, scope: !3672)
!3687 = distinct !{!3687, !3667, !3688}
!3688 = !DILocation(line: 1571, column: 2, scope: !3668)
!3689 = !DILocation(line: 1572, column: 1, scope: !3659)
!3690 = distinct !DISubprogram(name: "concat_mat", scope: !3, file: !3, line: 1574, type: !3691, scopeLine: 1575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !400, !400, !400}
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699}
!3694 = !DILocalVariable(name: "m1", arg: 1, scope: !3690, file: !3, line: 1574, type: !400)
!3695 = !DILocalVariable(name: "m2", arg: 2, scope: !3690, file: !3, line: 1574, type: !400)
!3696 = !DILocalVariable(name: "m3", arg: 3, scope: !3690, file: !3, line: 1574, type: !400)
!3697 = !DILocalVariable(name: "i", scope: !3690, file: !3, line: 1576, type: !36)
!3698 = !DILocalVariable(name: "j", scope: !3690, file: !3, line: 1576, type: !36)
!3699 = !DILocalVariable(name: "k", scope: !3690, file: !3, line: 1576, type: !36)
!3700 = !DILocation(line: 0, scope: !3690)
!3701 = !DILocation(line: 1578, column: 2, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3690, file: !3, line: 1578, column: 2)
!3703 = !DILocation(line: 1579, column: 3, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 1579, column: 3)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !3, line: 1578, column: 26)
!3706 = distinct !DILexicalBlock(scope: !3702, file: !3, line: 1578, column: 2)
!3707 = !DILocation(line: 1580, column: 4, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 1579, column: 27)
!3709 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 1579, column: 3)
!3710 = !DILocation(line: 1580, column: 17, scope: !3708)
!3711 = !DILocation(line: 1581, column: 4, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 1581, column: 4)
!3713 = !DILocation(line: 1582, column: 21, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1581, column: 28)
!3715 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1581, column: 4)
!3716 = !DILocation(line: 1582, column: 36, scope: !3714)
!3717 = !DILocation(line: 1582, column: 34, scope: !3714)
!3718 = !DILocation(line: 1582, column: 5, scope: !3714)
!3719 = !DILocation(line: 1582, column: 18, scope: !3714)
!3720 = !DILocation(line: 1583, column: 4, scope: !3714)
!3721 = !DILocation(line: 1581, column: 24, scope: !3715)
!3722 = !DILocation(line: 1581, column: 18, scope: !3715)
!3723 = distinct !{!3723, !3711, !3724}
!3724 = !DILocation(line: 1583, column: 4, scope: !3712)
!3725 = !DILocation(line: 1584, column: 3, scope: !3708)
!3726 = !DILocation(line: 1579, column: 23, scope: !3709)
!3727 = !DILocation(line: 1579, column: 17, scope: !3709)
!3728 = distinct !{!3728, !3703, !3729}
!3729 = !DILocation(line: 1584, column: 3, scope: !3704)
!3730 = !DILocation(line: 1585, column: 2, scope: !3705)
!3731 = !DILocation(line: 1578, column: 22, scope: !3706)
!3732 = !DILocation(line: 1578, column: 16, scope: !3706)
!3733 = distinct !{!3733, !3701, !3734}
!3734 = !DILocation(line: 1585, column: 2, scope: !3702)
!3735 = !DILocation(line: 1586, column: 1, scope: !3690)
!3736 = distinct !DISubprogram(name: "copy_mat", scope: !3, file: !3, line: 1588, type: !3737, scopeLine: 1589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{null, !400, !400}
!3739 = !{!3740, !3741, !3742, !3743}
!3740 = !DILocalVariable(name: "mold", arg: 1, scope: !3736, file: !3, line: 1588, type: !400)
!3741 = !DILocalVariable(name: "mnew", arg: 2, scope: !3736, file: !3, line: 1588, type: !400)
!3742 = !DILocalVariable(name: "i", scope: !3736, file: !3, line: 1590, type: !36)
!3743 = !DILocalVariable(name: "j", scope: !3736, file: !3, line: 1590, type: !36)
!3744 = !DILocation(line: 0, scope: !3736)
!3745 = !DILocation(line: 1592, column: 2, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 1592, column: 2)
!3747 = !DILocation(line: 1593, column: 3, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 1593, column: 3)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !3, line: 1592, column: 26)
!3750 = distinct !DILexicalBlock(scope: !3746, file: !3, line: 1592, column: 2)
!3751 = !DILocation(line: 1594, column: 21, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1593, column: 3)
!3753 = !DILocation(line: 1594, column: 4, scope: !3752)
!3754 = !DILocation(line: 1594, column: 19, scope: !3752)
!3755 = !DILocation(line: 1593, column: 23, scope: !3752)
!3756 = !DILocation(line: 1593, column: 17, scope: !3752)
!3757 = distinct !{!3757, !3747, !3758}
!3758 = !DILocation(line: 1594, column: 34, scope: !3748)
!3759 = !DILocation(line: 1595, column: 2, scope: !3749)
!3760 = !DILocation(line: 1592, column: 22, scope: !3750)
!3761 = !DILocation(line: 1592, column: 16, scope: !3750)
!3762 = distinct !{!3762, !3745, !3763}
!3763 = !DILocation(line: 1595, column: 2, scope: !3746)
!3764 = !DILocation(line: 1596, column: 1, scope: !3736)
!3765 = distinct !DISubprogram(name: "transformres", scope: !3, file: !3, line: 1369, type: !3766, scopeLine: 1370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3768)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!56, !400, !56, !241}
!3768 = !{!3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777}
!3769 = !DILocalVariable(name: "mat", arg: 1, scope: !3765, file: !3, line: 1369, type: !400)
!3770 = !DILocalVariable(name: "res", arg: 2, scope: !3765, file: !3, line: 1369, type: !56)
!3771 = !DILocalVariable(name: "aexp", arg: 3, scope: !3765, file: !3, line: 1369, type: !241)
!3772 = !DILocalVariable(name: "nres", scope: !3765, file: !3, line: 1371, type: !56)
!3773 = !DILocalVariable(name: "a", scope: !3765, file: !3, line: 1372, type: !36)
!3774 = !DILocalVariable(name: "i", scope: !3765, file: !3, line: 1372, type: !36)
!3775 = !DILocalVariable(name: "ap", scope: !3765, file: !3, line: 1373, type: !102)
!3776 = !DILocalVariable(name: "xyz", scope: !3765, file: !3, line: 1374, type: !127)
!3777 = !DILocalVariable(name: "nxyz", scope: !3765, file: !3, line: 1374, type: !127)
!3778 = !DILocation(line: 0, scope: !3765)
!3779 = !DILocation(line: 1374, column: 2, scope: !3765)
!3780 = !DILocation(line: 1374, column: 11, scope: !3765)
!3781 = !DILocation(line: 1374, column: 16, scope: !3765)
!3782 = !DILocation(line: 1376, column: 9, scope: !3765)
!3783 = !DILocation(line: 1377, column: 24, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 1377, column: 2)
!3785 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 1377, column: 2)
!3786 = !DILocation(line: 1377, column: 16, scope: !3784)
!3787 = !DILocation(line: 1377, column: 2, scope: !3785)
!3788 = !DILocation(line: 1378, column: 15, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 1377, column: 39)
!3790 = !DILocation(line: 1378, column: 9, scope: !3789)
!3791 = !DILocation(line: 1379, column: 3, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 1379, column: 3)
!3793 = !DILocation(line: 1380, column: 19, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3792, file: !3, line: 1379, column: 3)
!3795 = !DILocation(line: 1380, column: 15, scope: !3794)
!3796 = !DILocation(line: 1380, column: 4, scope: !3794)
!3797 = !DILocation(line: 1380, column: 13, scope: !3794)
!3798 = !DILocation(line: 1379, column: 23, scope: !3794)
!3799 = !DILocation(line: 1379, column: 17, scope: !3794)
!3800 = distinct !{!3800, !3791, !3801}
!3801 = !DILocation(line: 1380, column: 28, scope: !3792)
!3802 = !DILocation(line: 1381, column: 12, scope: !3789)
!3803 = !DILocation(line: 1381, column: 22, scope: !3789)
!3804 = !DILocation(line: 1381, column: 3, scope: !3789)
!3805 = !DILocation(line: 1382, column: 3, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 1382, column: 3)
!3807 = !DILocation(line: 1383, column: 21, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 1382, column: 3)
!3809 = !DILocation(line: 1383, column: 8, scope: !3808)
!3810 = !DILocation(line: 1383, column: 4, scope: !3808)
!3811 = !DILocation(line: 1383, column: 19, scope: !3808)
!3812 = !DILocation(line: 1382, column: 23, scope: !3808)
!3813 = !DILocation(line: 1382, column: 17, scope: !3808)
!3814 = distinct !{!3814, !3805, !3815}
!3815 = !DILocation(line: 1383, column: 29, scope: !3806)
!3816 = !DILocation(line: 1384, column: 2, scope: !3789)
!3817 = !DILocation(line: 1377, column: 35, scope: !3784)
!3818 = distinct !{!3818, !3787, !3819}
!3819 = !DILocation(line: 1384, column: 2, scope: !3785)
!3820 = !DILocation(line: 1387, column: 1, scope: !3765)
!3821 = !DILocation(line: 1386, column: 2, scope: !3765)
!3822 = distinct !DISubprogram(name: "xfm_xyz", scope: !3, file: !3, line: 1598, type: !3823, scopeLine: 1599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !180, !400, !180}
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831, !3832}
!3826 = !DILocalVariable(name: "oxyz", arg: 1, scope: !3822, file: !3, line: 1598, type: !180)
!3827 = !DILocalVariable(name: "mat", arg: 2, scope: !3822, file: !3, line: 1598, type: !400)
!3828 = !DILocalVariable(name: "nxyz", arg: 3, scope: !3822, file: !3, line: 1598, type: !180)
!3829 = !DILocalVariable(name: "i", scope: !3822, file: !3, line: 1600, type: !36)
!3830 = !DILocalVariable(name: "j", scope: !3822, file: !3, line: 1600, type: !36)
!3831 = !DILocalVariable(name: "oxyz4", scope: !3822, file: !3, line: 1601, type: !401)
!3832 = !DILocalVariable(name: "nxyz4", scope: !3822, file: !3, line: 1601, type: !401)
!3833 = !DILocation(line: 0, scope: !3822)
!3834 = !DILocation(line: 1601, column: 2, scope: !3822)
!3835 = !DILocation(line: 1601, column: 9, scope: !3822)
!3836 = !DILocation(line: 1601, column: 21, scope: !3822)
!3837 = !DILocation(line: 1603, column: 2, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 1603, column: 2)
!3839 = !DILocation(line: 1604, column: 16, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3838, file: !3, line: 1603, column: 2)
!3841 = !DILocation(line: 1604, column: 3, scope: !3840)
!3842 = !DILocation(line: 1604, column: 14, scope: !3840)
!3843 = !DILocation(line: 1603, column: 22, scope: !3840)
!3844 = !DILocation(line: 1603, column: 16, scope: !3840)
!3845 = distinct !{!3845, !3837, !3846}
!3846 = !DILocation(line: 1604, column: 24, scope: !3838)
!3847 = !DILocation(line: 1605, column: 2, scope: !3822)
!3848 = !DILocation(line: 1605, column: 13, scope: !3822)
!3849 = !DILocation(line: 1607, column: 2, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 1607, column: 2)
!3851 = !DILocation(line: 1608, column: 3, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 1607, column: 26)
!3853 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 1607, column: 2)
!3854 = !DILocation(line: 1608, column: 14, scope: !3852)
!3855 = !DILocation(line: 1609, column: 3, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 1609, column: 3)
!3857 = !DILocation(line: 1610, column: 18, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 1609, column: 27)
!3859 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 1609, column: 3)
!3860 = !DILocation(line: 1610, column: 31, scope: !3858)
!3861 = !DILocation(line: 1610, column: 29, scope: !3858)
!3862 = !DILocation(line: 1610, column: 4, scope: !3858)
!3863 = !DILocation(line: 1610, column: 15, scope: !3858)
!3864 = !DILocation(line: 1611, column: 3, scope: !3858)
!3865 = !DILocation(line: 1609, column: 23, scope: !3859)
!3866 = !DILocation(line: 1609, column: 17, scope: !3859)
!3867 = distinct !{!3867, !3855, !3868}
!3868 = !DILocation(line: 1611, column: 3, scope: !3856)
!3869 = !DILocation(line: 1612, column: 2, scope: !3852)
!3870 = !DILocation(line: 1607, column: 22, scope: !3853)
!3871 = !DILocation(line: 1607, column: 16, scope: !3853)
!3872 = distinct !{!3872, !3849, !3873}
!3873 = !DILocation(line: 1612, column: 2, scope: !3850)
!3874 = !DILocation(line: 1614, column: 2, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 1614, column: 2)
!3876 = !DILocation(line: 1615, column: 15, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 1614, column: 2)
!3878 = !DILocation(line: 1615, column: 3, scope: !3877)
!3879 = !DILocation(line: 1615, column: 13, scope: !3877)
!3880 = !DILocation(line: 1614, column: 22, scope: !3877)
!3881 = !DILocation(line: 1614, column: 16, scope: !3877)
!3882 = distinct !{!3882, !3874, !3883}
!3883 = !DILocation(line: 1615, column: 24, scope: !3875)
!3884 = !DILocation(line: 1616, column: 1, scope: !3822)
!3885 = distinct !DISubprogram(name: "transformmol", scope: !3, file: !3, line: 1389, type: !3886, scopeLine: 1390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!36, !400, !22, !241}
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3889 = !DILocalVariable(name: "mat", arg: 1, scope: !3885, file: !3, line: 1389, type: !400)
!3890 = !DILocalVariable(name: "mol", arg: 2, scope: !3885, file: !3, line: 1389, type: !22)
!3891 = !DILocalVariable(name: "aexp", arg: 3, scope: !3885, file: !3, line: 1389, type: !241)
!3892 = !DILocalVariable(name: "sp", scope: !3885, file: !3, line: 1391, type: !38)
!3893 = !DILocalVariable(name: "res", scope: !3885, file: !3, line: 1392, type: !56)
!3894 = !DILocalVariable(name: "r", scope: !3885, file: !3, line: 1393, type: !36)
!3895 = !DILocalVariable(name: "a", scope: !3885, file: !3, line: 1393, type: !36)
!3896 = !DILocalVariable(name: "i", scope: !3885, file: !3, line: 1393, type: !36)
!3897 = !DILocalVariable(name: "k", scope: !3885, file: !3, line: 1393, type: !36)
!3898 = !DILocalVariable(name: "ap", scope: !3885, file: !3, line: 1394, type: !102)
!3899 = !DILocalVariable(name: "xyz", scope: !3885, file: !3, line: 1395, type: !127)
!3900 = !DILocalVariable(name: "nxyz", scope: !3885, file: !3, line: 1395, type: !127)
!3901 = !DILocation(line: 0, scope: !3885)
!3902 = !DILocation(line: 1395, column: 2, scope: !3885)
!3903 = !DILocation(line: 1395, column: 11, scope: !3885)
!3904 = !DILocation(line: 1395, column: 16, scope: !3885)
!3905 = !DILocation(line: 1397, column: 2, scope: !3885)
!3906 = !DILocation(line: 1399, column: 17, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 1399, column: 2)
!3908 = !DILocation(line: 1399, column: 2, scope: !3907)
!3909 = !DILocation(line: 1400, column: 23, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 1400, column: 3)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1400, column: 3)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 1399, column: 54)
!3913 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 1399, column: 2)
!3914 = !DILocation(line: 1400, column: 17, scope: !3910)
!3915 = !DILocation(line: 1400, column: 3, scope: !3911)
!3916 = !DILocation(line: 1401, column: 14, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 1400, column: 41)
!3918 = !DILocation(line: 1401, column: 10, scope: !3917)
!3919 = !DILocation(line: 1402, column: 25, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3921, file: !3, line: 1402, column: 4)
!3921 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 1402, column: 4)
!3922 = !DILocation(line: 1402, column: 18, scope: !3920)
!3923 = !DILocation(line: 1402, column: 4, scope: !3921)
!3924 = !DILocation(line: 1403, column: 16, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 1402, column: 40)
!3926 = !DILocation(line: 1403, column: 11, scope: !3925)
!3927 = !DILocation(line: 1404, column: 13, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 1404, column: 9)
!3929 = !DILocation(line: 1404, column: 20, scope: !3928)
!3930 = !DILocation(line: 1404, column: 9, scope: !3925)
!3931 = !DILocation(line: 1406, column: 6, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 1406, column: 6)
!3933 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 1404, column: 33)
!3934 = !DILocation(line: 1407, column: 22, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 1406, column: 6)
!3936 = !DILocation(line: 1407, column: 18, scope: !3935)
!3937 = !DILocation(line: 1407, column: 7, scope: !3935)
!3938 = !DILocation(line: 1407, column: 16, scope: !3935)
!3939 = !DILocation(line: 1406, column: 26, scope: !3935)
!3940 = !DILocation(line: 1406, column: 20, scope: !3935)
!3941 = distinct !{!3941, !3931, !3942}
!3942 = !DILocation(line: 1407, column: 31, scope: !3932)
!3943 = !DILocation(line: 1408, column: 15, scope: !3933)
!3944 = !DILocation(line: 1408, column: 25, scope: !3933)
!3945 = !DILocation(line: 1408, column: 6, scope: !3933)
!3946 = !DILocation(line: 1409, column: 6, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 1409, column: 6)
!3948 = !DILocation(line: 1410, column: 24, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 1409, column: 6)
!3950 = !DILocation(line: 1410, column: 11, scope: !3949)
!3951 = !DILocation(line: 1410, column: 7, scope: !3949)
!3952 = !DILocation(line: 1410, column: 22, scope: !3949)
!3953 = !DILocation(line: 1409, column: 26, scope: !3949)
!3954 = !DILocation(line: 1409, column: 20, scope: !3949)
!3955 = distinct !{!3955, !3946, !3956}
!3956 = !DILocation(line: 1410, column: 32, scope: !3947)
!3957 = !DILocation(line: 1405, column: 7, scope: !3933)
!3958 = !DILocation(line: 1411, column: 5, scope: !3933)
!3959 = !DILocation(line: 0, scope: !3907)
!3960 = !DILocation(line: 1412, column: 4, scope: !3925)
!3961 = !DILocation(line: 1402, column: 36, scope: !3920)
!3962 = distinct !{!3962, !3923, !3963}
!3963 = !DILocation(line: 1412, column: 4, scope: !3921)
!3964 = !DILocation(line: 1413, column: 3, scope: !3917)
!3965 = !DILocation(line: 1400, column: 37, scope: !3910)
!3966 = distinct !{!3966, !3915, !3967}
!3967 = !DILocation(line: 1413, column: 3, scope: !3911)
!3968 = !DILocation(line: 1399, column: 29, scope: !3907)
!3969 = !DILocation(line: 1414, column: 2, scope: !3912)
!3970 = !DILocation(line: 1399, column: 46, scope: !3913)
!3971 = distinct !{!3971, !3908, !3972}
!3972 = !DILocation(line: 1414, column: 2, scope: !3907)
!3973 = !DILocation(line: 1417, column: 1, scope: !3885)
!3974 = !DILocation(line: 1416, column: 2, scope: !3885)
!3975 = distinct !DISubprogram(name: "transformpts", scope: !3, file: !3, line: 1419, type: !3976, scopeLine: 1420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!36, !400, !2458, !36}
!3978 = !{!3979, !3980, !3981, !3982}
!3979 = !DILocalVariable(name: "mat", arg: 1, scope: !3975, file: !3, line: 1419, type: !400)
!3980 = !DILocalVariable(name: "pts", arg: 2, scope: !3975, file: !3, line: 1419, type: !2458)
!3981 = !DILocalVariable(name: "npts", arg: 3, scope: !3975, file: !3, line: 1419, type: !36)
!3982 = !DILocalVariable(name: "i", scope: !3975, file: !3, line: 1421, type: !36)
!3983 = !DILocation(line: 0, scope: !3975)
!3984 = !DILocation(line: 1423, column: 7, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 1423, column: 2)
!3986 = !DILocation(line: 1423, column: 16, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 1423, column: 2)
!3988 = !DILocation(line: 1423, column: 2, scope: !3985)
!3989 = !DILocation(line: 1424, column: 12, scope: !3987)
!3990 = !DILocation(line: 1424, column: 27, scope: !3987)
!3991 = !DILocation(line: 1424, column: 3, scope: !3987)
!3992 = !DILocation(line: 1423, column: 25, scope: !3987)
!3993 = distinct !{!3993, !3988, !3994}
!3994 = !DILocation(line: 1424, column: 36, scope: !3985)
!3995 = !DILocation(line: 1425, column: 2, scope: !3975)
!3996 = !DILocation(line: 0, scope: !397)
!3997 = !DILocation(line: 1434, column: 2, scope: !397)
!3998 = !DILocation(line: 1436, column: 8, scope: !397)
!3999 = !DILocation(line: 1436, column: 2, scope: !397)
!4000 = !DILocation(line: 0, scope: !408)
!4001 = !DILocation(line: 1445, column: 7, scope: !408)
!4002 = !DILocation(line: 1445, column: 17, scope: !408)
!4003 = !DILocation(line: 1445, column: 15, scope: !408)
!4004 = !DILocation(line: 1446, column: 7, scope: !408)
!4005 = !DILocation(line: 1446, column: 17, scope: !408)
!4006 = !DILocation(line: 1446, column: 15, scope: !408)
!4007 = !DILocation(line: 1447, column: 7, scope: !408)
!4008 = !DILocation(line: 1447, column: 17, scope: !408)
!4009 = !DILocation(line: 1447, column: 15, scope: !408)
!4010 = !DILocation(line: 1448, column: 23, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !408, file: !3, line: 1448, column: 6)
!4012 = !DILocation(line: 1448, column: 33, scope: !4011)
!4013 = !DILocation(line: 1448, column: 28, scope: !4011)
!4014 = !DILocation(line: 1448, column: 43, scope: !4011)
!4015 = !DILocation(line: 1448, column: 38, scope: !4011)
!4016 = !DILocation(line: 1448, column: 14, scope: !4011)
!4017 = !DILocation(line: 1448, column: 52, scope: !4011)
!4018 = !DILocation(line: 1448, column: 6, scope: !408)
!4019 = !DILocation(line: 1449, column: 20, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 1448, column: 60)
!4021 = !DILocation(line: 1449, column: 3, scope: !4020)
!4022 = !DILocation(line: 1450, column: 2, scope: !4020)
!4023 = !DILocation(line: 1451, column: 6, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 1450, column: 7)
!4025 = !DILocation(line: 1452, column: 6, scope: !4024)
!4026 = !DILocation(line: 1453, column: 6, scope: !4024)
!4027 = !DILocation(line: 1455, column: 20, scope: !4024)
!4028 = !DILocation(line: 1455, column: 28, scope: !4024)
!4029 = !DILocation(line: 1455, column: 36, scope: !4024)
!4030 = !DILocation(line: 1455, column: 4, scope: !4024)
!4031 = !DILocation(line: 1454, column: 3, scope: !4024)
!4032 = !DILocation(line: 1458, column: 8, scope: !408)
!4033 = !DILocation(line: 1458, column: 2, scope: !408)
!4034 = distinct !DISubprogram(name: "NAB_matcpy", scope: !3, file: !3, line: 1500, type: !4035, scopeLine: 1501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!275, !237, !237}
!4037 = !{!4038, !4039}
!4038 = !DILocalVariable(name: "mdst", arg: 1, scope: !4034, file: !3, line: 1500, type: !237)
!4039 = !DILocalVariable(name: "msrc", arg: 2, scope: !4034, file: !3, line: 1500, type: !237)
!4040 = !DILocation(line: 0, scope: !4034)
!4041 = !DILocation(line: 1503, column: 24, scope: !4034)
!4042 = !DILocation(line: 1503, column: 10, scope: !4034)
!4043 = !DILocation(line: 1503, column: 2, scope: !4034)
!4044 = distinct !DISubprogram(name: "trans4", scope: !3, file: !3, line: 1461, type: !4045, scopeLine: 1462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!275, !22, !241, !241, !30}
!4047 = !{!4048, !4049, !4050, !4051, !4052, !4053}
!4048 = !DILocalVariable(name: "mol", arg: 1, scope: !4044, file: !3, line: 1461, type: !22)
!4049 = !DILocalVariable(name: "aex1", arg: 2, scope: !4044, file: !3, line: 1461, type: !241)
!4050 = !DILocalVariable(name: "aex2", arg: 3, scope: !4044, file: !3, line: 1461, type: !241)
!4051 = !DILocalVariable(name: "d", arg: 4, scope: !4044, file: !3, line: 1461, type: !30)
!4052 = !DILocalVariable(name: "p1", scope: !4044, file: !3, line: 1463, type: !127)
!4053 = !DILocalVariable(name: "p2", scope: !4044, file: !3, line: 1463, type: !127)
!4054 = !DILocation(line: 0, scope: !4044)
!4055 = !DILocation(line: 1463, column: 2, scope: !4044)
!4056 = !DILocation(line: 1463, column: 10, scope: !4044)
!4057 = !DILocation(line: 1463, column: 14, scope: !4044)
!4058 = !DILocation(line: 1465, column: 23, scope: !4044)
!4059 = !DILocation(line: 1465, column: 2, scope: !4044)
!4060 = !DILocation(line: 1466, column: 23, scope: !4044)
!4061 = !DILocation(line: 1466, column: 2, scope: !4044)
!4062 = !DILocation(line: 1467, column: 19, scope: !4044)
!4063 = !DILocation(line: 1467, column: 23, scope: !4044)
!4064 = !DILocation(line: 1467, column: 10, scope: !4044)
!4065 = !DILocation(line: 1468, column: 1, scope: !4044)
!4066 = !DILocation(line: 1467, column: 2, scope: !4044)
!4067 = !DILocation(line: 0, scope: !422)
!4068 = !DILocation(line: 1473, column: 2, scope: !422)
!4069 = !DILocation(line: 1473, column: 11, scope: !422)
!4070 = !DILocation(line: 1473, column: 17, scope: !422)
!4071 = !DILocation(line: 1473, column: 23, scope: !422)
!4072 = !DILocation(line: 1473, column: 29, scope: !422)
!4073 = !DILocation(line: 1476, column: 14, scope: !422)
!4074 = !DILocation(line: 1477, column: 18, scope: !422)
!4075 = !DILocation(line: 1477, column: 17, scope: !422)
!4076 = !DILocation(line: 1477, column: 26, scope: !422)
!4077 = !DILocation(line: 1477, column: 25, scope: !422)
!4078 = !DILocation(line: 1477, column: 34, scope: !422)
!4079 = !DILocation(line: 1477, column: 33, scope: !422)
!4080 = !DILocation(line: 1477, column: 3, scope: !422)
!4081 = !DILocation(line: 1476, column: 2, scope: !422)
!4082 = !DILocation(line: 1479, column: 11, scope: !422)
!4083 = !DILocation(line: 1479, column: 17, scope: !422)
!4084 = !DILocation(line: 1479, column: 16, scope: !422)
!4085 = !DILocation(line: 1479, column: 24, scope: !422)
!4086 = !DILocation(line: 1479, column: 30, scope: !422)
!4087 = !DILocation(line: 1479, column: 29, scope: !422)
!4088 = !DILocation(line: 1479, column: 37, scope: !422)
!4089 = !DILocation(line: 1479, column: 43, scope: !422)
!4090 = !DILocation(line: 1479, column: 42, scope: !422)
!4091 = !DILocation(line: 1479, column: 50, scope: !422)
!4092 = !DILocation(line: 1479, column: 58, scope: !422)
!4093 = !DILocation(line: 1479, column: 2, scope: !422)
!4094 = !DILocation(line: 1481, column: 14, scope: !422)
!4095 = !DILocation(line: 1481, column: 34, scope: !422)
!4096 = !DILocation(line: 1481, column: 41, scope: !422)
!4097 = !DILocation(line: 1481, column: 48, scope: !422)
!4098 = !DILocation(line: 1481, column: 20, scope: !422)
!4099 = !DILocation(line: 1481, column: 2, scope: !422)
!4100 = !DILocation(line: 1483, column: 14, scope: !422)
!4101 = !DILocation(line: 1483, column: 20, scope: !422)
!4102 = !DILocation(line: 1483, column: 26, scope: !422)
!4103 = !DILocation(line: 1483, column: 2, scope: !422)
!4104 = !DILocation(line: 1484, column: 14, scope: !422)
!4105 = !DILocation(line: 1484, column: 20, scope: !422)
!4106 = !DILocation(line: 1484, column: 2, scope: !422)
!4107 = !DILocation(line: 1487, column: 8, scope: !422)
!4108 = !DILocation(line: 1488, column: 1, scope: !422)
!4109 = !DILocation(line: 1487, column: 2, scope: !422)
!4110 = distinct !DISubprogram(name: "raa2mat", scope: !3, file: !3, line: 1506, type: !4111, scopeLine: 1507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4113)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{null, !30, !30, !30, !30, !400}
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136}
!4114 = !DILocalVariable(name: "x", arg: 1, scope: !4110, file: !3, line: 1506, type: !30)
!4115 = !DILocalVariable(name: "y", arg: 2, scope: !4110, file: !3, line: 1506, type: !30)
!4116 = !DILocalVariable(name: "z", arg: 3, scope: !4110, file: !3, line: 1506, type: !30)
!4117 = !DILocalVariable(name: "angle", arg: 4, scope: !4110, file: !3, line: 1506, type: !30)
!4118 = !DILocalVariable(name: "mat", arg: 5, scope: !4110, file: !3, line: 1506, type: !400)
!4119 = !DILocalVariable(name: "axlen", scope: !4110, file: !3, line: 1508, type: !30)
!4120 = !DILocalVariable(name: "a1", scope: !4110, file: !3, line: 1509, type: !30)
!4121 = !DILocalVariable(name: "a2", scope: !4110, file: !3, line: 1509, type: !30)
!4122 = !DILocalVariable(name: "a3", scope: !4110, file: !3, line: 1509, type: !30)
!4123 = !DILocalVariable(name: "a1a1", scope: !4110, file: !3, line: 1509, type: !30)
!4124 = !DILocalVariable(name: "a1a2", scope: !4110, file: !3, line: 1509, type: !30)
!4125 = !DILocalVariable(name: "a1a3", scope: !4110, file: !3, line: 1509, type: !30)
!4126 = !DILocalVariable(name: "a2a2", scope: !4110, file: !3, line: 1509, type: !30)
!4127 = !DILocalVariable(name: "a2a3", scope: !4110, file: !3, line: 1509, type: !30)
!4128 = !DILocalVariable(name: "a3a3", scope: !4110, file: !3, line: 1509, type: !30)
!4129 = !DILocalVariable(name: "ca1a2", scope: !4110, file: !3, line: 1510, type: !30)
!4130 = !DILocalVariable(name: "ca2a3", scope: !4110, file: !3, line: 1510, type: !30)
!4131 = !DILocalVariable(name: "ca1a3", scope: !4110, file: !3, line: 1510, type: !30)
!4132 = !DILocalVariable(name: "sa1", scope: !4110, file: !3, line: 1510, type: !30)
!4133 = !DILocalVariable(name: "sa2", scope: !4110, file: !3, line: 1510, type: !30)
!4134 = !DILocalVariable(name: "sa3", scope: !4110, file: !3, line: 1510, type: !30)
!4135 = !DILocalVariable(name: "c", scope: !4110, file: !3, line: 1511, type: !30)
!4136 = !DILocalVariable(name: "s", scope: !4110, file: !3, line: 1511, type: !30)
!4137 = !DILocation(line: 0, scope: !4110)
!4138 = !DILocation(line: 1513, column: 23, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 1513, column: 6)
!4140 = !DILocation(line: 1513, column: 16, scope: !4139)
!4141 = !DILocation(line: 1513, column: 44, scope: !4139)
!4142 = !DILocation(line: 1513, column: 6, scope: !4110)
!4143 = !DILocation(line: 1518, column: 2, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 1513, column: 52)
!4145 = !DILocation(line: 0, scope: !4139)
!4146 = !DILocation(line: 1519, column: 4, scope: !4110)
!4147 = !DILocation(line: 1520, column: 4, scope: !4110)
!4148 = !DILocation(line: 1521, column: 4, scope: !4110)
!4149 = !DILocation(line: 1526, column: 11, scope: !4110)
!4150 = !DILocation(line: 1527, column: 11, scope: !4110)
!4151 = !DILocation(line: 1528, column: 11, scope: !4110)
!4152 = !DILocation(line: 1529, column: 11, scope: !4110)
!4153 = !DILocation(line: 1530, column: 11, scope: !4110)
!4154 = !DILocation(line: 1531, column: 11, scope: !4110)
!4155 = !DILocation(line: 1532, column: 15, scope: !4110)
!4156 = !DILocation(line: 1532, column: 6, scope: !4110)
!4157 = !DILocation(line: 1533, column: 15, scope: !4110)
!4158 = !DILocation(line: 1533, column: 6, scope: !4110)
!4159 = !DILocation(line: 1535, column: 12, scope: !4110)
!4160 = !DILocation(line: 1536, column: 12, scope: !4110)
!4161 = !DILocation(line: 1537, column: 12, scope: !4110)
!4162 = !DILocation(line: 1538, column: 10, scope: !4110)
!4163 = !DILocation(line: 1539, column: 10, scope: !4110)
!4164 = !DILocation(line: 1540, column: 10, scope: !4110)
!4165 = !DILocation(line: 1542, column: 18, scope: !4110)
!4166 = !DILocation(line: 1542, column: 2, scope: !4110)
!4167 = !DILocation(line: 1542, column: 16, scope: !4110)
!4168 = !DILocation(line: 1543, column: 18, scope: !4110)
!4169 = !DILocation(line: 1543, column: 2, scope: !4110)
!4170 = !DILocation(line: 1543, column: 16, scope: !4110)
!4171 = !DILocation(line: 1544, column: 18, scope: !4110)
!4172 = !DILocation(line: 1544, column: 2, scope: !4110)
!4173 = !DILocation(line: 1544, column: 16, scope: !4110)
!4174 = !DILocation(line: 1545, column: 2, scope: !4110)
!4175 = !DILocation(line: 1545, column: 16, scope: !4110)
!4176 = !DILocation(line: 1547, column: 18, scope: !4110)
!4177 = !DILocation(line: 1547, column: 2, scope: !4110)
!4178 = !DILocation(line: 1547, column: 16, scope: !4110)
!4179 = !DILocation(line: 1548, column: 18, scope: !4110)
!4180 = !DILocation(line: 1548, column: 2, scope: !4110)
!4181 = !DILocation(line: 1548, column: 16, scope: !4110)
!4182 = !DILocation(line: 1549, column: 18, scope: !4110)
!4183 = !DILocation(line: 1549, column: 2, scope: !4110)
!4184 = !DILocation(line: 1549, column: 16, scope: !4110)
!4185 = !DILocation(line: 1550, column: 2, scope: !4110)
!4186 = !DILocation(line: 1550, column: 16, scope: !4110)
!4187 = !DILocation(line: 1552, column: 18, scope: !4110)
!4188 = !DILocation(line: 1552, column: 2, scope: !4110)
!4189 = !DILocation(line: 1552, column: 16, scope: !4110)
!4190 = !DILocation(line: 1553, column: 18, scope: !4110)
!4191 = !DILocation(line: 1553, column: 2, scope: !4110)
!4192 = !DILocation(line: 1553, column: 16, scope: !4110)
!4193 = !DILocation(line: 1554, column: 18, scope: !4110)
!4194 = !DILocation(line: 1554, column: 2, scope: !4110)
!4195 = !DILocation(line: 1554, column: 16, scope: !4110)
!4196 = !DILocation(line: 1555, column: 2, scope: !4110)
!4197 = !DILocation(line: 1555, column: 16, scope: !4110)
!4198 = !DILocation(line: 1557, column: 2, scope: !4110)
!4199 = !DILocation(line: 1557, column: 16, scope: !4110)
!4200 = !DILocation(line: 1558, column: 2, scope: !4110)
!4201 = !DILocation(line: 1558, column: 16, scope: !4110)
!4202 = !DILocation(line: 1559, column: 2, scope: !4110)
!4203 = !DILocation(line: 1559, column: 16, scope: !4110)
!4204 = !DILocation(line: 1560, column: 2, scope: !4110)
!4205 = !DILocation(line: 1560, column: 16, scope: !4110)
!4206 = !DILocation(line: 1561, column: 1, scope: !4110)
!4207 = distinct !DISubprogram(name: "rot4", scope: !3, file: !3, line: 1490, type: !4045, scopeLine: 1491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4208)
!4208 = !{!4209, !4210, !4211, !4212, !4213, !4214}
!4209 = !DILocalVariable(name: "mol", arg: 1, scope: !4207, file: !3, line: 1490, type: !22)
!4210 = !DILocalVariable(name: "aex1", arg: 2, scope: !4207, file: !3, line: 1490, type: !241)
!4211 = !DILocalVariable(name: "aex2", arg: 3, scope: !4207, file: !3, line: 1490, type: !241)
!4212 = !DILocalVariable(name: "angle", arg: 4, scope: !4207, file: !3, line: 1490, type: !30)
!4213 = !DILocalVariable(name: "p1", scope: !4207, file: !3, line: 1492, type: !127)
!4214 = !DILocalVariable(name: "p2", scope: !4207, file: !3, line: 1492, type: !127)
!4215 = !DILocation(line: 0, scope: !4207)
!4216 = !DILocation(line: 1492, column: 2, scope: !4207)
!4217 = !DILocation(line: 1492, column: 10, scope: !4207)
!4218 = !DILocation(line: 1492, column: 14, scope: !4207)
!4219 = !DILocation(line: 1494, column: 23, scope: !4207)
!4220 = !DILocation(line: 1494, column: 2, scope: !4207)
!4221 = !DILocation(line: 1495, column: 23, scope: !4207)
!4222 = !DILocation(line: 1495, column: 2, scope: !4207)
!4223 = !DILocation(line: 1497, column: 17, scope: !4207)
!4224 = !DILocation(line: 1497, column: 21, scope: !4207)
!4225 = !DILocation(line: 1497, column: 10, scope: !4207)
!4226 = !DILocation(line: 1498, column: 1, scope: !4207)
!4227 = !DILocation(line: 1497, column: 2, scope: !4207)
!4228 = distinct !DISubprogram(name: "set_belly_mask", scope: !3, file: !3, line: 1894, type: !4229, scopeLine: 1898, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4231)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!36, !22, !241, !277}
!4231 = !{!4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253}
!4232 = !DILocalVariable(name: "m", arg: 1, scope: !4228, file: !3, line: 1895, type: !22)
!4233 = !DILocalVariable(name: "aex", arg: 2, scope: !4228, file: !3, line: 1896, type: !241)
!4234 = !DILocalVariable(name: "frozen", arg: 3, scope: !4228, file: !3, line: 1897, type: !277)
!4235 = !DILocalVariable(name: "i", scope: !4228, file: !3, line: 1899, type: !36)
!4236 = !DILocalVariable(name: "j", scope: !4228, file: !3, line: 1899, type: !36)
!4237 = !DILocalVariable(name: "k", scope: !4228, file: !3, line: 1899, type: !36)
!4238 = !DILocalVariable(name: "l", scope: !4228, file: !3, line: 1899, type: !36)
!4239 = !DILocalVariable(name: "ib", scope: !4228, file: !3, line: 1899, type: !36)
!4240 = !DILocalVariable(name: "r", scope: !4228, file: !3, line: 1899, type: !36)
!4241 = !DILocalVariable(name: "a", scope: !4228, file: !3, line: 1899, type: !36)
!4242 = !DILocalVariable(name: "n", scope: !4228, file: !3, line: 1899, type: !36)
!4243 = !DILocalVariable(name: "nfrozen", scope: !4228, file: !3, line: 1899, type: !36)
!4244 = !DILocalVariable(name: "nb", scope: !4228, file: !3, line: 1899, type: !36)
!4245 = !DILocalVariable(name: "ibig", scope: !4228, file: !3, line: 1899, type: !36)
!4246 = !DILocalVariable(name: "ismall", scope: !4228, file: !3, line: 1899, type: !36)
!4247 = !DILocalVariable(name: "ka", scope: !4228, file: !3, line: 1899, type: !36)
!4248 = !DILocalVariable(name: "la", scope: !4228, file: !3, line: 1899, type: !36)
!4249 = !DILocalVariable(name: "iptmp", scope: !4228, file: !3, line: 1900, type: !277)
!4250 = !DILocalVariable(name: "sp", scope: !4228, file: !3, line: 1901, type: !38)
!4251 = !DILocalVariable(name: "res", scope: !4228, file: !3, line: 1902, type: !56)
!4252 = !DILocalVariable(name: "ap", scope: !4228, file: !3, line: 1903, type: !102)
!4253 = !DILocalVariable(name: "prm", scope: !4228, file: !3, line: 1904, type: !135)
!4254 = !DILocation(line: 0, scope: !4228)
!4255 = !DILocation(line: 1906, column: 2, scope: !4228)
!4256 = !DILocation(line: 1908, column: 22, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 1908, column: 2)
!4258 = !DILocation(line: 1908, column: 2, scope: !4257)
!4259 = !DILocation(line: 1909, column: 23, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 1909, column: 3)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 1909, column: 3)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 1908, column: 54)
!4263 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 1908, column: 2)
!4264 = !DILocation(line: 1909, column: 17, scope: !4260)
!4265 = !DILocation(line: 1909, column: 3, scope: !4261)
!4266 = !DILocation(line: 1910, column: 14, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 1909, column: 41)
!4268 = !DILocation(line: 1910, column: 10, scope: !4267)
!4269 = !DILocation(line: 1911, column: 9, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 1911, column: 4)
!4271 = !DILocation(line: 1911, column: 25, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 1911, column: 4)
!4273 = !DILocation(line: 1911, column: 18, scope: !4272)
!4274 = !DILocation(line: 1911, column: 4, scope: !4270)
!4275 = !DILocation(line: 1912, column: 16, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 1911, column: 40)
!4277 = !DILocation(line: 1912, column: 11, scope: !4276)
!4278 = !DILocation(line: 1913, column: 13, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 1913, column: 9)
!4280 = !DILocation(line: 1913, column: 20, scope: !4279)
!4281 = !DILocation(line: 1913, column: 9, scope: !4276)
!4282 = !DILocation(line: 1913, column: 34, scope: !4279)
!4283 = !DILocation(line: 1913, column: 44, scope: !4279)
!4284 = !DILocation(line: 1914, column: 12, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 1914, column: 11)
!4286 = !DILocation(line: 1914, column: 22, scope: !4285)
!4287 = !DILocation(line: 1914, column: 34, scope: !4285)
!4288 = !DILocation(line: 1915, column: 6, scope: !4276)
!4289 = !DILocation(line: 1916, column: 4, scope: !4276)
!4290 = !DILocation(line: 1911, column: 36, scope: !4272)
!4291 = distinct !{!4291, !4274, !4292}
!4292 = !DILocation(line: 1916, column: 4, scope: !4270)
!4293 = !DILocation(line: 1907, column: 10, scope: !4228)
!4294 = !DILocation(line: 1917, column: 3, scope: !4267)
!4295 = !DILocation(line: 1909, column: 37, scope: !4260)
!4296 = distinct !{!4296, !4265, !4297}
!4297 = !DILocation(line: 1917, column: 3, scope: !4261)
!4298 = !DILocation(line: 1908, column: 9, scope: !4257)
!4299 = !DILocation(line: 1918, column: 2, scope: !4262)
!4300 = !DILocation(line: 1908, column: 46, scope: !4263)
!4301 = distinct !{!4301, !4258, !4302}
!4302 = !DILocation(line: 1918, column: 2, scope: !4257)
!4303 = !DILocation(line: 1922, column: 11, scope: !4228)
!4304 = !DILocation(line: 1923, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 1923, column: 6)
!4306 = !DILocation(line: 1923, column: 6, scope: !4228)
!4307 = !DILocation(line: 1926, column: 28, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 1926, column: 3)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1926, column: 3)
!4310 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 1923, column: 11)
!4311 = !{!696, !497, i64 104}
!4312 = !DILocation(line: 1926, column: 22, scope: !4308)
!4313 = !DILocation(line: 1926, column: 3, scope: !4309)
!4314 = !DILocation(line: 1927, column: 13, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 1926, column: 41)
!4316 = !{!696, !498, i64 496}
!4317 = !DILocation(line: 1927, column: 8, scope: !4315)
!4318 = !DILocation(line: 1927, column: 25, scope: !4315)
!4319 = !DILocation(line: 1928, column: 13, scope: !4315)
!4320 = !{!696, !498, i64 504}
!4321 = !DILocation(line: 1928, column: 8, scope: !4315)
!4322 = !DILocation(line: 1928, column: 25, scope: !4315)
!4323 = !DILocation(line: 1929, column: 9, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 1929, column: 8)
!4325 = !DILocation(line: 1929, column: 19, scope: !4324)
!4326 = !DILocation(line: 1929, column: 23, scope: !4324)
!4327 = !DILocation(line: 1929, column: 8, scope: !4315)
!4328 = !DILocation(line: 1930, column: 30, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 1929, column: 34)
!4330 = !DILocation(line: 1930, column: 25, scope: !4329)
!4331 = !DILocation(line: 1930, column: 10, scope: !4329)
!4332 = !DILocation(line: 1930, column: 5, scope: !4329)
!4333 = !DILocation(line: 1930, column: 23, scope: !4329)
!4334 = !DILocation(line: 1931, column: 30, scope: !4329)
!4335 = !DILocation(line: 1931, column: 25, scope: !4329)
!4336 = !DILocation(line: 1931, column: 10, scope: !4329)
!4337 = !DILocation(line: 1931, column: 5, scope: !4329)
!4338 = !DILocation(line: 1931, column: 23, scope: !4329)
!4339 = !DILocation(line: 1932, column: 30, scope: !4329)
!4340 = !{!696, !498, i64 512}
!4341 = !DILocation(line: 1932, column: 25, scope: !4329)
!4342 = !DILocation(line: 1932, column: 10, scope: !4329)
!4343 = !DILocation(line: 1932, column: 5, scope: !4329)
!4344 = !DILocation(line: 1932, column: 23, scope: !4329)
!4345 = !DILocation(line: 1933, column: 7, scope: !4329)
!4346 = !DILocation(line: 1934, column: 4, scope: !4329)
!4347 = !DILocation(line: 0, scope: !4309)
!4348 = !DILocation(line: 1935, column: 3, scope: !4315)
!4349 = !DILocation(line: 1926, column: 37, scope: !4308)
!4350 = distinct !{!4350, !4313, !4351}
!4351 = !DILocation(line: 1935, column: 3, scope: !4309)
!4352 = !DILocation(line: 1926, column: 10, scope: !4309)
!4353 = !DILocation(line: 1936, column: 8, scope: !4310)
!4354 = !DILocation(line: 1936, column: 14, scope: !4310)
!4355 = !DILocation(line: 1937, column: 28, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 1937, column: 3)
!4357 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1937, column: 3)
!4358 = !{!696, !497, i64 144}
!4359 = !DILocation(line: 1937, column: 22, scope: !4356)
!4360 = !DILocation(line: 1937, column: 3, scope: !4357)
!4361 = !DILocation(line: 1938, column: 13, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 1937, column: 41)
!4363 = !{!696, !498, i64 520}
!4364 = !DILocation(line: 1938, column: 8, scope: !4362)
!4365 = !DILocation(line: 1938, column: 24, scope: !4362)
!4366 = !DILocation(line: 1939, column: 13, scope: !4362)
!4367 = !{!696, !498, i64 528}
!4368 = !DILocation(line: 1939, column: 8, scope: !4362)
!4369 = !DILocation(line: 1939, column: 24, scope: !4362)
!4370 = !DILocation(line: 1940, column: 9, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 1940, column: 8)
!4372 = !DILocation(line: 1940, column: 19, scope: !4371)
!4373 = !DILocation(line: 1940, column: 23, scope: !4371)
!4374 = !DILocation(line: 1940, column: 8, scope: !4362)
!4375 = !DILocation(line: 1941, column: 29, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 1940, column: 34)
!4377 = !DILocation(line: 1941, column: 24, scope: !4376)
!4378 = !DILocation(line: 1941, column: 10, scope: !4376)
!4379 = !DILocation(line: 1941, column: 5, scope: !4376)
!4380 = !DILocation(line: 1941, column: 22, scope: !4376)
!4381 = !DILocation(line: 1942, column: 29, scope: !4376)
!4382 = !DILocation(line: 1942, column: 24, scope: !4376)
!4383 = !DILocation(line: 1942, column: 10, scope: !4376)
!4384 = !DILocation(line: 1942, column: 5, scope: !4376)
!4385 = !DILocation(line: 1942, column: 22, scope: !4376)
!4386 = !DILocation(line: 1943, column: 29, scope: !4376)
!4387 = !{!696, !498, i64 536}
!4388 = !DILocation(line: 1943, column: 24, scope: !4376)
!4389 = !DILocation(line: 1943, column: 10, scope: !4376)
!4390 = !DILocation(line: 1943, column: 5, scope: !4376)
!4391 = !DILocation(line: 1943, column: 22, scope: !4376)
!4392 = !DILocation(line: 1944, column: 7, scope: !4376)
!4393 = !DILocation(line: 1945, column: 4, scope: !4376)
!4394 = !DILocation(line: 0, scope: !4357)
!4395 = !DILocation(line: 1946, column: 3, scope: !4362)
!4396 = !DILocation(line: 1937, column: 37, scope: !4356)
!4397 = distinct !{!4397, !4360, !4398}
!4398 = !DILocation(line: 1946, column: 3, scope: !4357)
!4399 = !DILocation(line: 1937, column: 10, scope: !4357)
!4400 = !DILocation(line: 1947, column: 8, scope: !4310)
!4401 = !DILocation(line: 1947, column: 14, scope: !4310)
!4402 = !DILocation(line: 1948, column: 8, scope: !4310)
!4403 = !DILocation(line: 1948, column: 14, scope: !4310)
!4404 = !{!696, !497, i64 108}
!4405 = !DILocation(line: 1951, column: 28, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 1951, column: 3)
!4407 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1951, column: 3)
!4408 = !{!696, !497, i64 112}
!4409 = !DILocation(line: 1951, column: 22, scope: !4406)
!4410 = !DILocation(line: 1951, column: 3, scope: !4407)
!4411 = !DILocation(line: 1952, column: 13, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 1951, column: 42)
!4413 = !{!696, !498, i64 544}
!4414 = !DILocation(line: 1952, column: 8, scope: !4412)
!4415 = !DILocation(line: 1952, column: 26, scope: !4412)
!4416 = !DILocation(line: 1953, column: 13, scope: !4412)
!4417 = !{!696, !498, i64 552}
!4418 = !DILocation(line: 1953, column: 8, scope: !4412)
!4419 = !DILocation(line: 1953, column: 26, scope: !4412)
!4420 = !DILocation(line: 1954, column: 13, scope: !4412)
!4421 = !{!696, !498, i64 560}
!4422 = !DILocation(line: 1954, column: 8, scope: !4412)
!4423 = !DILocation(line: 1954, column: 26, scope: !4412)
!4424 = !DILocation(line: 1955, column: 9, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 1955, column: 8)
!4426 = !DILocation(line: 1955, column: 19, scope: !4425)
!4427 = !DILocation(line: 1955, column: 23, scope: !4425)
!4428 = !DILocation(line: 1955, column: 33, scope: !4425)
!4429 = !DILocation(line: 1955, column: 37, scope: !4425)
!4430 = !DILocation(line: 1955, column: 8, scope: !4412)
!4431 = !DILocation(line: 1956, column: 31, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 1955, column: 48)
!4433 = !DILocation(line: 1956, column: 26, scope: !4432)
!4434 = !DILocation(line: 1956, column: 10, scope: !4432)
!4435 = !DILocation(line: 1956, column: 5, scope: !4432)
!4436 = !DILocation(line: 1956, column: 24, scope: !4432)
!4437 = !DILocation(line: 1957, column: 31, scope: !4432)
!4438 = !DILocation(line: 1957, column: 26, scope: !4432)
!4439 = !DILocation(line: 1957, column: 10, scope: !4432)
!4440 = !DILocation(line: 1957, column: 5, scope: !4432)
!4441 = !DILocation(line: 1957, column: 24, scope: !4432)
!4442 = !DILocation(line: 1958, column: 31, scope: !4432)
!4443 = !DILocation(line: 1958, column: 26, scope: !4432)
!4444 = !DILocation(line: 1958, column: 10, scope: !4432)
!4445 = !DILocation(line: 1958, column: 5, scope: !4432)
!4446 = !DILocation(line: 1958, column: 24, scope: !4432)
!4447 = !DILocation(line: 1959, column: 31, scope: !4432)
!4448 = !{!696, !498, i64 568}
!4449 = !DILocation(line: 1959, column: 26, scope: !4432)
!4450 = !DILocation(line: 1959, column: 10, scope: !4432)
!4451 = !DILocation(line: 1959, column: 5, scope: !4432)
!4452 = !DILocation(line: 1959, column: 24, scope: !4432)
!4453 = !DILocation(line: 1960, column: 7, scope: !4432)
!4454 = !DILocation(line: 1961, column: 4, scope: !4432)
!4455 = !DILocation(line: 0, scope: !4407)
!4456 = !DILocation(line: 1962, column: 3, scope: !4412)
!4457 = !DILocation(line: 1951, column: 38, scope: !4406)
!4458 = distinct !{!4458, !4410, !4459}
!4459 = !DILocation(line: 1962, column: 3, scope: !4407)
!4460 = !DILocation(line: 1951, column: 10, scope: !4407)
!4461 = !DILocation(line: 1963, column: 8, scope: !4310)
!4462 = !DILocation(line: 1963, column: 15, scope: !4310)
!4463 = !DILocation(line: 1964, column: 28, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 1964, column: 3)
!4465 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1964, column: 3)
!4466 = !{!696, !497, i64 148}
!4467 = !DILocation(line: 1964, column: 22, scope: !4464)
!4468 = !DILocation(line: 1964, column: 3, scope: !4465)
!4469 = !DILocation(line: 1965, column: 13, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 1964, column: 42)
!4471 = !{!696, !498, i64 576}
!4472 = !DILocation(line: 1965, column: 8, scope: !4470)
!4473 = !DILocation(line: 1965, column: 25, scope: !4470)
!4474 = !DILocation(line: 1966, column: 13, scope: !4470)
!4475 = !{!696, !498, i64 584}
!4476 = !DILocation(line: 1966, column: 8, scope: !4470)
!4477 = !DILocation(line: 1966, column: 25, scope: !4470)
!4478 = !DILocation(line: 1967, column: 13, scope: !4470)
!4479 = !{!696, !498, i64 592}
!4480 = !DILocation(line: 1967, column: 8, scope: !4470)
!4481 = !DILocation(line: 1967, column: 25, scope: !4470)
!4482 = !DILocation(line: 1968, column: 9, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 1968, column: 8)
!4484 = !DILocation(line: 1968, column: 19, scope: !4483)
!4485 = !DILocation(line: 1968, column: 23, scope: !4483)
!4486 = !DILocation(line: 1968, column: 33, scope: !4483)
!4487 = !DILocation(line: 1968, column: 37, scope: !4483)
!4488 = !DILocation(line: 1968, column: 8, scope: !4470)
!4489 = !DILocation(line: 1969, column: 30, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 1968, column: 48)
!4491 = !DILocation(line: 1969, column: 25, scope: !4490)
!4492 = !DILocation(line: 1969, column: 10, scope: !4490)
!4493 = !DILocation(line: 1969, column: 5, scope: !4490)
!4494 = !DILocation(line: 1969, column: 23, scope: !4490)
!4495 = !DILocation(line: 1970, column: 30, scope: !4490)
!4496 = !DILocation(line: 1970, column: 25, scope: !4490)
!4497 = !DILocation(line: 1970, column: 10, scope: !4490)
!4498 = !DILocation(line: 1970, column: 5, scope: !4490)
!4499 = !DILocation(line: 1970, column: 23, scope: !4490)
!4500 = !DILocation(line: 1971, column: 30, scope: !4490)
!4501 = !DILocation(line: 1971, column: 25, scope: !4490)
!4502 = !DILocation(line: 1971, column: 10, scope: !4490)
!4503 = !DILocation(line: 1971, column: 5, scope: !4490)
!4504 = !DILocation(line: 1971, column: 23, scope: !4490)
!4505 = !DILocation(line: 1972, column: 30, scope: !4490)
!4506 = !{!696, !498, i64 600}
!4507 = !DILocation(line: 1972, column: 25, scope: !4490)
!4508 = !DILocation(line: 1972, column: 10, scope: !4490)
!4509 = !DILocation(line: 1972, column: 5, scope: !4490)
!4510 = !DILocation(line: 1972, column: 23, scope: !4490)
!4511 = !DILocation(line: 1973, column: 7, scope: !4490)
!4512 = !DILocation(line: 1974, column: 4, scope: !4490)
!4513 = !DILocation(line: 0, scope: !4465)
!4514 = !DILocation(line: 1975, column: 3, scope: !4470)
!4515 = !DILocation(line: 1964, column: 38, scope: !4464)
!4516 = distinct !{!4516, !4468, !4517}
!4517 = !DILocation(line: 1975, column: 3, scope: !4465)
!4518 = !DILocation(line: 1964, column: 10, scope: !4465)
!4519 = !DILocation(line: 1976, column: 8, scope: !4310)
!4520 = !DILocation(line: 1976, column: 15, scope: !4310)
!4521 = !DILocation(line: 1980, column: 20, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 1980, column: 3)
!4523 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1980, column: 3)
!4524 = !{!696, !497, i64 96}
!4525 = !DILocation(line: 1980, column: 14, scope: !4522)
!4526 = !DILocation(line: 1980, column: 3, scope: !4523)
!4527 = !DILocation(line: 1980, column: 38, scope: !4522)
!4528 = !{!696, !498, i64 696}
!4529 = !DILocation(line: 1980, column: 33, scope: !4522)
!4530 = !DILocation(line: 1980, column: 50, scope: !4522)
!4531 = !DILocation(line: 1980, column: 28, scope: !4522)
!4532 = distinct !{!4532, !4526, !4533}
!4533 = !DILocation(line: 1980, column: 52, scope: !4523)
!4534 = !DILocation(line: 1981, column: 43, scope: !4310)
!4535 = !DILocation(line: 1981, column: 38, scope: !4310)
!4536 = !DILocation(line: 1981, column: 37, scope: !4310)
!4537 = !DILocation(line: 1981, column: 19, scope: !4310)
!4538 = !DILocation(line: 1981, column: 11, scope: !4310)
!4539 = !DILocation(line: 1982, column: 28, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !3, line: 1982, column: 3)
!4541 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1982, column: 3)
!4542 = !{!696, !497, i64 120}
!4543 = !DILocation(line: 1982, column: 22, scope: !4540)
!4544 = !DILocation(line: 1982, column: 3, scope: !4541)
!4545 = !DILocation(line: 1983, column: 13, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4540, file: !3, line: 1982, column: 41)
!4547 = !{!696, !498, i64 608}
!4548 = !DILocation(line: 1983, column: 8, scope: !4546)
!4549 = !DILocation(line: 1983, column: 24, scope: !4546)
!4550 = !DILocation(line: 1984, column: 13, scope: !4546)
!4551 = !{!696, !498, i64 616}
!4552 = !DILocation(line: 1984, column: 8, scope: !4546)
!4553 = !DILocation(line: 1984, column: 24, scope: !4546)
!4554 = !DILocation(line: 1985, column: 13, scope: !4546)
!4555 = !{!696, !498, i64 624}
!4556 = !DILocation(line: 1985, column: 8, scope: !4546)
!4557 = !DILocation(line: 1985, column: 24, scope: !4546)
!4558 = !DILocation(line: 1986, column: 13, scope: !4546)
!4559 = !{!696, !498, i64 632}
!4560 = !DILocation(line: 1986, column: 8, scope: !4546)
!4561 = !DILocation(line: 1986, column: 24, scope: !4546)
!4562 = !DILocation(line: 1987, column: 9, scope: !4546)
!4563 = !DILocation(line: 1988, column: 9, scope: !4546)
!4564 = !DILocation(line: 1989, column: 9, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 1989, column: 8)
!4566 = !DILocation(line: 1989, column: 19, scope: !4565)
!4567 = !DILocation(line: 1989, column: 23, scope: !4565)
!4568 = !DILocation(line: 1989, column: 33, scope: !4565)
!4569 = !DILocation(line: 1989, column: 37, scope: !4565)
!4570 = !DILocation(line: 1989, column: 48, scope: !4565)
!4571 = !DILocation(line: 1989, column: 52, scope: !4565)
!4572 = !DILocation(line: 1989, column: 8, scope: !4546)
!4573 = !DILocation(line: 1990, column: 29, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 1989, column: 64)
!4575 = !DILocation(line: 1990, column: 24, scope: !4574)
!4576 = !DILocation(line: 1990, column: 10, scope: !4574)
!4577 = !DILocation(line: 1990, column: 5, scope: !4574)
!4578 = !DILocation(line: 1990, column: 22, scope: !4574)
!4579 = !DILocation(line: 1991, column: 29, scope: !4574)
!4580 = !DILocation(line: 1991, column: 24, scope: !4574)
!4581 = !DILocation(line: 1991, column: 10, scope: !4574)
!4582 = !DILocation(line: 1991, column: 5, scope: !4574)
!4583 = !DILocation(line: 1991, column: 22, scope: !4574)
!4584 = !DILocation(line: 1992, column: 29, scope: !4574)
!4585 = !DILocation(line: 1992, column: 24, scope: !4574)
!4586 = !DILocation(line: 1992, column: 10, scope: !4574)
!4587 = !DILocation(line: 1992, column: 5, scope: !4574)
!4588 = !DILocation(line: 1992, column: 22, scope: !4574)
!4589 = !DILocation(line: 1993, column: 29, scope: !4574)
!4590 = !DILocation(line: 1993, column: 24, scope: !4574)
!4591 = !DILocation(line: 1993, column: 10, scope: !4574)
!4592 = !DILocation(line: 1993, column: 5, scope: !4574)
!4593 = !DILocation(line: 1993, column: 22, scope: !4574)
!4594 = !DILocation(line: 1994, column: 29, scope: !4574)
!4595 = !{!696, !498, i64 640}
!4596 = !DILocation(line: 1994, column: 24, scope: !4574)
!4597 = !DILocation(line: 1994, column: 10, scope: !4574)
!4598 = !DILocation(line: 1994, column: 5, scope: !4574)
!4599 = !DILocation(line: 1994, column: 22, scope: !4574)
!4600 = !DILocation(line: 1995, column: 7, scope: !4574)
!4601 = !DILocation(line: 1996, column: 11, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 1996, column: 9)
!4603 = !DILocation(line: 1996, column: 16, scope: !4602)
!4604 = !DILocation(line: 1996, column: 21, scope: !4602)
!4605 = !DILocation(line: 1996, column: 9, scope: !4574)
!4606 = !DILocation(line: 1997, column: 17, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 1996, column: 27)
!4608 = !DILocation(line: 1997, column: 15, scope: !4607)
!4609 = !DILocation(line: 1998, column: 17, scope: !4607)
!4610 = !DILocation(line: 1998, column: 15, scope: !4607)
!4611 = !DILocation(line: 1999, column: 14, scope: !4607)
!4612 = !DILocation(line: 1999, column: 29, scope: !4607)
!4613 = !DILocation(line: 1999, column: 24, scope: !4607)
!4614 = !DILocation(line: 1999, column: 45, scope: !4607)
!4615 = !DILocation(line: 1999, column: 22, scope: !4607)
!4616 = !DILocation(line: 1999, column: 6, scope: !4607)
!4617 = !DILocation(line: 1999, column: 49, scope: !4607)
!4618 = !DILocation(line: 2000, column: 5, scope: !4607)
!4619 = !DILocation(line: 2001, column: 4, scope: !4574)
!4620 = !DILocation(line: 0, scope: !4541)
!4621 = !DILocation(line: 2002, column: 3, scope: !4546)
!4622 = !DILocation(line: 1982, column: 37, scope: !4540)
!4623 = distinct !{!4623, !4544, !4624}
!4624 = !DILocation(line: 2002, column: 3, scope: !4541)
!4625 = !DILocation(line: 1982, column: 10, scope: !4541)
!4626 = !DILocation(line: 2003, column: 8, scope: !4310)
!4627 = !DILocation(line: 2003, column: 14, scope: !4310)
!4628 = !DILocation(line: 2004, column: 28, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 2004, column: 3)
!4630 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 2004, column: 3)
!4631 = !{!696, !497, i64 152}
!4632 = !DILocation(line: 2004, column: 22, scope: !4629)
!4633 = !DILocation(line: 2004, column: 3, scope: !4630)
!4634 = !DILocation(line: 2005, column: 13, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 2004, column: 41)
!4636 = !{!696, !498, i64 648}
!4637 = !DILocation(line: 2005, column: 8, scope: !4635)
!4638 = !DILocation(line: 2005, column: 23, scope: !4635)
!4639 = !DILocation(line: 2006, column: 13, scope: !4635)
!4640 = !{!696, !498, i64 656}
!4641 = !DILocation(line: 2006, column: 8, scope: !4635)
!4642 = !DILocation(line: 2006, column: 23, scope: !4635)
!4643 = !DILocation(line: 2007, column: 13, scope: !4635)
!4644 = !{!696, !498, i64 664}
!4645 = !DILocation(line: 2007, column: 8, scope: !4635)
!4646 = !DILocation(line: 2007, column: 23, scope: !4635)
!4647 = !DILocation(line: 2008, column: 13, scope: !4635)
!4648 = !{!696, !498, i64 672}
!4649 = !DILocation(line: 2008, column: 8, scope: !4635)
!4650 = !DILocation(line: 2008, column: 23, scope: !4635)
!4651 = !DILocation(line: 2009, column: 9, scope: !4635)
!4652 = !DILocation(line: 2010, column: 9, scope: !4635)
!4653 = !DILocation(line: 2011, column: 9, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 2011, column: 8)
!4655 = !DILocation(line: 2011, column: 19, scope: !4654)
!4656 = !DILocation(line: 2011, column: 23, scope: !4654)
!4657 = !DILocation(line: 2011, column: 33, scope: !4654)
!4658 = !DILocation(line: 2011, column: 37, scope: !4654)
!4659 = !DILocation(line: 2011, column: 48, scope: !4654)
!4660 = !DILocation(line: 2011, column: 52, scope: !4654)
!4661 = !DILocation(line: 2011, column: 8, scope: !4635)
!4662 = !DILocation(line: 2012, column: 28, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 2011, column: 64)
!4664 = !DILocation(line: 2012, column: 23, scope: !4663)
!4665 = !DILocation(line: 2012, column: 10, scope: !4663)
!4666 = !DILocation(line: 2012, column: 5, scope: !4663)
!4667 = !DILocation(line: 2012, column: 21, scope: !4663)
!4668 = !DILocation(line: 2013, column: 28, scope: !4663)
!4669 = !DILocation(line: 2013, column: 23, scope: !4663)
!4670 = !DILocation(line: 2013, column: 10, scope: !4663)
!4671 = !DILocation(line: 2013, column: 5, scope: !4663)
!4672 = !DILocation(line: 2013, column: 21, scope: !4663)
!4673 = !DILocation(line: 2014, column: 28, scope: !4663)
!4674 = !DILocation(line: 2014, column: 23, scope: !4663)
!4675 = !DILocation(line: 2014, column: 10, scope: !4663)
!4676 = !DILocation(line: 2014, column: 5, scope: !4663)
!4677 = !DILocation(line: 2014, column: 21, scope: !4663)
!4678 = !DILocation(line: 2015, column: 28, scope: !4663)
!4679 = !DILocation(line: 2015, column: 23, scope: !4663)
!4680 = !DILocation(line: 2015, column: 10, scope: !4663)
!4681 = !DILocation(line: 2015, column: 5, scope: !4663)
!4682 = !DILocation(line: 2015, column: 21, scope: !4663)
!4683 = !DILocation(line: 2016, column: 28, scope: !4663)
!4684 = !{!696, !498, i64 680}
!4685 = !DILocation(line: 2016, column: 23, scope: !4663)
!4686 = !DILocation(line: 2016, column: 10, scope: !4663)
!4687 = !DILocation(line: 2016, column: 5, scope: !4663)
!4688 = !DILocation(line: 2016, column: 21, scope: !4663)
!4689 = !DILocation(line: 2017, column: 7, scope: !4663)
!4690 = !DILocation(line: 2018, column: 11, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 2018, column: 9)
!4692 = !DILocation(line: 2018, column: 16, scope: !4691)
!4693 = !DILocation(line: 2018, column: 21, scope: !4691)
!4694 = !DILocation(line: 2018, column: 9, scope: !4663)
!4695 = !DILocation(line: 2019, column: 17, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4691, file: !3, line: 2018, column: 27)
!4697 = !DILocation(line: 2019, column: 15, scope: !4696)
!4698 = !DILocation(line: 2020, column: 17, scope: !4696)
!4699 = !DILocation(line: 2020, column: 15, scope: !4696)
!4700 = !DILocation(line: 2021, column: 14, scope: !4696)
!4701 = !DILocation(line: 2021, column: 29, scope: !4696)
!4702 = !DILocation(line: 2021, column: 24, scope: !4696)
!4703 = !DILocation(line: 2021, column: 45, scope: !4696)
!4704 = !DILocation(line: 2021, column: 22, scope: !4696)
!4705 = !DILocation(line: 2021, column: 6, scope: !4696)
!4706 = !DILocation(line: 2021, column: 49, scope: !4696)
!4707 = !DILocation(line: 2022, column: 5, scope: !4696)
!4708 = !DILocation(line: 2023, column: 4, scope: !4663)
!4709 = !DILocation(line: 0, scope: !4630)
!4710 = !DILocation(line: 2024, column: 3, scope: !4635)
!4711 = !DILocation(line: 2004, column: 37, scope: !4629)
!4712 = distinct !{!4712, !4633, !4713}
!4713 = !DILocation(line: 2024, column: 3, scope: !4630)
!4714 = !DILocation(line: 2004, column: 10, scope: !4630)
!4715 = !DILocation(line: 2025, column: 8, scope: !4310)
!4716 = !DILocation(line: 2025, column: 14, scope: !4310)
!4717 = !DILocation(line: 2026, column: 8, scope: !4310)
!4718 = !DILocation(line: 2026, column: 14, scope: !4310)
!4719 = !{!696, !497, i64 124}
!4720 = !DILocation(line: 2028, column: 20, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 2028, column: 3)
!4722 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 2028, column: 3)
!4723 = !DILocation(line: 2028, column: 26, scope: !4721)
!4724 = !DILocation(line: 2028, column: 14, scope: !4721)
!4725 = !DILocation(line: 2028, column: 3, scope: !4722)
!4726 = !DILocation(line: 2029, column: 9, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 2029, column: 4)
!4728 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 2028, column: 36)
!4729 = !DILocation(line: 2029, column: 21, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 2029, column: 4)
!4731 = !DILocation(line: 2029, column: 16, scope: !4730)
!4732 = !DILocation(line: 2029, column: 15, scope: !4730)
!4733 = !DILocation(line: 2029, column: 4, scope: !4727)
!4734 = !DILocation(line: 2030, column: 38, scope: !4730)
!4735 = !DILocation(line: 2030, column: 41, scope: !4730)
!4736 = !DILocation(line: 2030, column: 30, scope: !4730)
!4737 = !DILocation(line: 2030, column: 11, scope: !4730)
!4738 = !{!696, !498, i64 704}
!4739 = !DILocation(line: 2030, column: 24, scope: !4730)
!4740 = !DILocation(line: 2030, column: 6, scope: !4730)
!4741 = !DILocation(line: 2030, column: 28, scope: !4730)
!4742 = !DILocation(line: 2029, column: 35, scope: !4730)
!4743 = distinct !{!4743, !4733, !4744}
!4744 = !DILocation(line: 2030, column: 44, scope: !4727)
!4745 = !DILocation(line: 2031, column: 3, scope: !4728)
!4746 = !DILocation(line: 2028, column: 32, scope: !4721)
!4747 = distinct !{!4747, !4725, !4748}
!4748 = !DILocation(line: 2031, column: 3, scope: !4722)
!4749 = !DILocation(line: 2032, column: 9, scope: !4310)
!4750 = !DILocation(line: 2032, column: 3, scope: !4310)
!4751 = !DILocation(line: 2033, column: 2, scope: !4310)
!4752 = !DILocation(line: 2034, column: 2, scope: !4228)
!4753 = distinct !DISubprogram(name: "get", scope: !3, file: !3, line: 102, type: !4754, scopeLine: 104, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4756)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!241, !329}
!4756 = !{!4757, !4758}
!4757 = !DILocalVariable(name: "size", arg: 1, scope: !4753, file: !3, line: 103, type: !329)
!4758 = !DILocalVariable(name: "ptr", scope: !4753, file: !3, line: 105, type: !241)
!4759 = !DILocation(line: 0, scope: !4753)
!4760 = !DILocation(line: 107, column: 11, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 107, column: 6)
!4762 = !DILocation(line: 107, column: 6, scope: !4753)
!4763 = !DILocation(line: 108, column: 3, scope: !4761)
!4764 = !DILocation(line: 110, column: 34, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 110, column: 6)
!4766 = !DILocation(line: 110, column: 22, scope: !4765)
!4767 = !DILocation(line: 110, column: 51, scope: !4765)
!4768 = !DILocation(line: 110, column: 6, scope: !4753)
!4769 = !DILocation(line: 111, column: 12, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 110, column: 60)
!4771 = !DILocation(line: 111, column: 3, scope: !4770)
!4772 = !DILocation(line: 112, column: 10, scope: !4770)
!4773 = !DILocation(line: 112, column: 3, scope: !4770)
!4774 = !DILocation(line: 113, column: 3, scope: !4770)
!4775 = !DILocation(line: 114, column: 3, scope: !4770)
!4776 = !DILocation(line: 116, column: 2, scope: !4753)
!4777 = !DILocation(line: 117, column: 1, scope: !4753)
!4778 = distinct !DISubprogram(name: "set_cons_mask", scope: !3, file: !3, line: 2037, type: !4229, scopeLine: 2041, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4779)
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789}
!4780 = !DILocalVariable(name: "m", arg: 1, scope: !4778, file: !3, line: 2038, type: !22)
!4781 = !DILocalVariable(name: "aex", arg: 2, scope: !4778, file: !3, line: 2039, type: !241)
!4782 = !DILocalVariable(name: "cons", arg: 3, scope: !4778, file: !3, line: 2040, type: !277)
!4783 = !DILocalVariable(name: "r", scope: !4778, file: !3, line: 2042, type: !36)
!4784 = !DILocalVariable(name: "a", scope: !4778, file: !3, line: 2042, type: !36)
!4785 = !DILocalVariable(name: "n", scope: !4778, file: !3, line: 2042, type: !36)
!4786 = !DILocalVariable(name: "ncons", scope: !4778, file: !3, line: 2042, type: !36)
!4787 = !DILocalVariable(name: "sp", scope: !4778, file: !3, line: 2043, type: !38)
!4788 = !DILocalVariable(name: "res", scope: !4778, file: !3, line: 2044, type: !56)
!4789 = !DILocalVariable(name: "ap", scope: !4778, file: !3, line: 2045, type: !102)
!4790 = !DILocation(line: 0, scope: !4778)
!4791 = !DILocation(line: 2047, column: 2, scope: !4778)
!4792 = !DILocation(line: 2049, column: 22, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 2049, column: 2)
!4794 = !DILocation(line: 2049, column: 2, scope: !4793)
!4795 = !DILocation(line: 2050, column: 23, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 2050, column: 3)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 2050, column: 3)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !3, line: 2049, column: 54)
!4799 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 2049, column: 2)
!4800 = !DILocation(line: 2050, column: 17, scope: !4796)
!4801 = !DILocation(line: 2050, column: 3, scope: !4797)
!4802 = !DILocation(line: 2051, column: 14, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 2050, column: 41)
!4804 = !DILocation(line: 2051, column: 10, scope: !4803)
!4805 = !DILocation(line: 2052, column: 9, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 2052, column: 4)
!4807 = !DILocation(line: 2052, column: 25, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 2052, column: 4)
!4809 = !DILocation(line: 2052, column: 18, scope: !4808)
!4810 = !DILocation(line: 2052, column: 4, scope: !4806)
!4811 = !DILocation(line: 2053, column: 16, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 2052, column: 40)
!4813 = !DILocation(line: 2053, column: 11, scope: !4812)
!4814 = !DILocation(line: 2054, column: 13, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 2054, column: 9)
!4816 = !DILocation(line: 2054, column: 20, scope: !4815)
!4817 = !DILocation(line: 2054, column: 9, scope: !4812)
!4818 = !DILocation(line: 2054, column: 35, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 2054, column: 34)
!4820 = !DILocation(line: 2054, column: 43, scope: !4819)
!4821 = !DILocation(line: 2054, column: 53, scope: !4819)
!4822 = !DILocation(line: 2054, column: 57, scope: !4819)
!4823 = !DILocation(line: 2055, column: 12, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 2055, column: 11)
!4825 = !DILocation(line: 2055, column: 20, scope: !4824)
!4826 = !DILocation(line: 2056, column: 6, scope: !4812)
!4827 = !DILocation(line: 2057, column: 4, scope: !4812)
!4828 = !DILocation(line: 2052, column: 36, scope: !4808)
!4829 = distinct !{!4829, !4810, !4830}
!4830 = !DILocation(line: 2057, column: 4, scope: !4806)
!4831 = !DILocation(line: 2058, column: 3, scope: !4803)
!4832 = !DILocation(line: 2050, column: 37, scope: !4796)
!4833 = distinct !{!4833, !4801, !4834}
!4834 = !DILocation(line: 2058, column: 3, scope: !4797)
!4835 = !DILocation(line: 2049, column: 9, scope: !4793)
!4836 = !DILocation(line: 2048, column: 8, scope: !4778)
!4837 = !DILocation(line: 2059, column: 2, scope: !4798)
!4838 = !DILocation(line: 2049, column: 46, scope: !4799)
!4839 = distinct !{!4839, !4794, !4840}
!4840 = !DILocation(line: 2059, column: 2, scope: !4793)
!4841 = !DILocation(line: 2060, column: 2, scope: !4778)
!4842 = distinct !DISubprogram(name: "circle", scope: !3, file: !3, line: 2088, type: !4843, scopeLine: 2089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4845)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!35, !180, !180, !180, !180}
!4845 = !{!4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858}
!4846 = !DILocalVariable(name: "p1", arg: 1, scope: !4842, file: !3, line: 2088, type: !180)
!4847 = !DILocalVariable(name: "p2", arg: 2, scope: !4842, file: !3, line: 2088, type: !180)
!4848 = !DILocalVariable(name: "p3", arg: 3, scope: !4842, file: !3, line: 2088, type: !180)
!4849 = !DILocalVariable(name: "pc", arg: 4, scope: !4842, file: !3, line: 2088, type: !180)
!4850 = !DILocalVariable(name: "i", scope: !4842, file: !3, line: 2099, type: !35)
!4851 = !DILocalVariable(name: "v", scope: !4842, file: !3, line: 2100, type: !128)
!4852 = !DILocalVariable(name: "ab", scope: !4842, file: !3, line: 2101, type: !128)
!4853 = !DILocalVariable(name: "ac", scope: !4842, file: !3, line: 2102, type: !128)
!4854 = !DILocalVariable(name: "bc", scope: !4842, file: !3, line: 2103, type: !128)
!4855 = !DILocalVariable(name: "m_ab", scope: !4842, file: !3, line: 2104, type: !128)
!4856 = !DILocalVariable(name: "cm", scope: !4842, file: !3, line: 2105, type: !128)
!4857 = !DILocalVariable(name: "fac1", scope: !4842, file: !3, line: 2106, type: !30)
!4858 = !DILocalVariable(name: "fac2", scope: !4842, file: !3, line: 2106, type: !30)
!4859 = !DILocation(line: 0, scope: !4842)
!4860 = !DILocation(line: 2100, column: 3, scope: !4842)
!4861 = !DILocation(line: 2100, column: 10, scope: !4842)
!4862 = !DILocation(line: 2101, column: 3, scope: !4842)
!4863 = !DILocation(line: 2101, column: 10, scope: !4842)
!4864 = !DILocation(line: 2102, column: 3, scope: !4842)
!4865 = !DILocation(line: 2102, column: 10, scope: !4842)
!4866 = !DILocation(line: 2103, column: 3, scope: !4842)
!4867 = !DILocation(line: 2103, column: 10, scope: !4842)
!4868 = !DILocation(line: 2104, column: 3, scope: !4842)
!4869 = !DILocation(line: 2104, column: 10, scope: !4842)
!4870 = !DILocation(line: 2105, column: 3, scope: !4842)
!4871 = !DILocation(line: 2105, column: 10, scope: !4842)
!4872 = !DILocation(line: 2108, column: 3, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 2108, column: 3)
!4874 = !DILocation(line: 2108, column: 29, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 2108, column: 3)
!4876 = !DILocation(line: 2108, column: 37, scope: !4875)
!4877 = !DILocation(line: 2108, column: 35, scope: !4875)
!4878 = !DILocation(line: 2108, column: 21, scope: !4875)
!4879 = !DILocation(line: 2108, column: 27, scope: !4875)
!4880 = !DILocation(line: 2108, column: 17, scope: !4875)
!4881 = !DILocation(line: 2108, column: 13, scope: !4875)
!4882 = distinct !{!4882, !4872, !4883}
!4883 = !DILocation(line: 2108, column: 41, scope: !4873)
!4884 = !DILocation(line: 2109, column: 3, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 2109, column: 3)
!4886 = !DILocation(line: 2109, column: 29, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 2109, column: 3)
!4888 = !DILocation(line: 2109, column: 37, scope: !4887)
!4889 = !DILocation(line: 2109, column: 35, scope: !4887)
!4890 = !DILocation(line: 2109, column: 21, scope: !4887)
!4891 = !DILocation(line: 2109, column: 27, scope: !4887)
!4892 = !DILocation(line: 2109, column: 17, scope: !4887)
!4893 = !DILocation(line: 2109, column: 13, scope: !4887)
!4894 = distinct !{!4894, !4884, !4895}
!4895 = !DILocation(line: 2109, column: 41, scope: !4885)
!4896 = !DILocation(line: 2110, column: 3, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 2110, column: 3)
!4898 = !DILocation(line: 2110, column: 29, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 2110, column: 3)
!4900 = !DILocation(line: 2110, column: 37, scope: !4899)
!4901 = !DILocation(line: 2110, column: 35, scope: !4899)
!4902 = !DILocation(line: 2110, column: 21, scope: !4899)
!4903 = !DILocation(line: 2110, column: 27, scope: !4899)
!4904 = !DILocation(line: 2110, column: 17, scope: !4899)
!4905 = !DILocation(line: 2110, column: 13, scope: !4899)
!4906 = distinct !{!4906, !4896, !4907}
!4907 = !DILocation(line: 2110, column: 41, scope: !4897)
!4908 = !DILocation(line: 2111, column: 3, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 2111, column: 3)
!4910 = !DILocation(line: 2111, column: 36, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 2111, column: 3)
!4912 = !DILocation(line: 2111, column: 44, scope: !4911)
!4913 = !DILocation(line: 2111, column: 42, scope: !4911)
!4914 = !DILocation(line: 2111, column: 34, scope: !4911)
!4915 = !DILocation(line: 2111, column: 21, scope: !4911)
!4916 = !DILocation(line: 2111, column: 29, scope: !4911)
!4917 = !DILocation(line: 2111, column: 17, scope: !4911)
!4918 = !DILocation(line: 2111, column: 13, scope: !4911)
!4919 = distinct !{!4919, !4908, !4920}
!4920 = !DILocation(line: 2111, column: 49, scope: !4909)
!4921 = !DILocation(line: 2112, column: 3, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 2112, column: 3)
!4923 = !DILocation(line: 2112, column: 29, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4922, file: !3, line: 2112, column: 3)
!4925 = !DILocation(line: 2112, column: 37, scope: !4924)
!4926 = !DILocation(line: 2112, column: 35, scope: !4924)
!4927 = !DILocation(line: 2112, column: 21, scope: !4924)
!4928 = !DILocation(line: 2112, column: 27, scope: !4924)
!4929 = !DILocation(line: 2112, column: 17, scope: !4924)
!4930 = !DILocation(line: 2112, column: 13, scope: !4924)
!4931 = distinct !{!4931, !4921, !4932}
!4932 = !DILocation(line: 2112, column: 43, scope: !4922)
!4933 = !DILocation(line: 2114, column: 15, scope: !4842)
!4934 = !DILocation(line: 2114, column: 18, scope: !4842)
!4935 = !DILocation(line: 2114, column: 10, scope: !4842)
!4936 = !DILocation(line: 2114, column: 29, scope: !4842)
!4937 = !DILocation(line: 2114, column: 32, scope: !4842)
!4938 = !DILocation(line: 2114, column: 24, scope: !4842)
!4939 = !DILocation(line: 2114, column: 22, scope: !4842)
!4940 = !DILocation(line: 2116, column: 3, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 2116, column: 3)
!4942 = !DILocation(line: 2116, column: 28, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 2116, column: 3)
!4944 = !DILocation(line: 2116, column: 43, scope: !4943)
!4945 = !DILocation(line: 2116, column: 41, scope: !4943)
!4946 = !DILocation(line: 2116, column: 34, scope: !4943)
!4947 = !DILocation(line: 2116, column: 21, scope: !4943)
!4948 = !DILocation(line: 2116, column: 26, scope: !4943)
!4949 = !DILocation(line: 2116, column: 17, scope: !4943)
!4950 = !DILocation(line: 2116, column: 13, scope: !4943)
!4951 = distinct !{!4951, !4940, !4952}
!4952 = !DILocation(line: 2116, column: 47, scope: !4941)
!4953 = !DILocation(line: 2118, column: 15, scope: !4842)
!4954 = !DILocation(line: 2118, column: 18, scope: !4842)
!4955 = !DILocation(line: 2118, column: 10, scope: !4842)
!4956 = !DILocation(line: 2119, column: 7, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 2119, column: 7)
!4958 = !DILocation(line: 2119, column: 19, scope: !4957)
!4959 = !DILocation(line: 2119, column: 7, scope: !4842)
!4960 = !DILocation(line: 2121, column: 16, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 2120, column: 5)
!4962 = !DILocation(line: 2121, column: 7, scope: !4961)
!4963 = !DILocation(line: 2122, column: 7, scope: !4961)
!4964 = !DILocation(line: 2124, column: 21, scope: !4842)
!4965 = !DILocation(line: 2124, column: 24, scope: !4842)
!4966 = !DILocation(line: 2124, column: 16, scope: !4842)
!4967 = !DILocation(line: 2124, column: 14, scope: !4842)
!4968 = !DILocation(line: 2124, column: 27, scope: !4842)
!4969 = !DILocation(line: 2126, column: 3, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 2126, column: 3)
!4971 = !DILocation(line: 2126, column: 29, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 2126, column: 3)
!4973 = !DILocation(line: 2126, column: 44, scope: !4972)
!4974 = !DILocation(line: 2126, column: 43, scope: !4972)
!4975 = !DILocation(line: 2126, column: 37, scope: !4972)
!4976 = !DILocation(line: 2126, column: 21, scope: !4972)
!4977 = !DILocation(line: 2126, column: 27, scope: !4972)
!4978 = !DILocation(line: 2126, column: 17, scope: !4972)
!4979 = !DILocation(line: 2126, column: 13, scope: !4972)
!4980 = distinct !{!4980, !4969, !4981}
!4981 = !DILocation(line: 2126, column: 47, scope: !4970)
!4982 = !DILocation(line: 2127, column: 3, scope: !4842)
!4983 = !DILocation(line: 2129, column: 1, scope: !4842)
!4984 = distinct !DISubprogram(name: "vdot", scope: !3, file: !3, line: 2066, type: !260, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4985 = !{!4986, !4987}
!4986 = !DILocalVariable(name: "x1", arg: 1, scope: !4984, file: !3, line: 2066, type: !180)
!4987 = !DILocalVariable(name: "x2", arg: 2, scope: !4984, file: !3, line: 2066, type: !180)
!4988 = !DILocation(line: 0, scope: !4984)
!4989 = !DILocation(line: 2068, column: 11, scope: !4984)
!4990 = !DILocation(line: 2068, column: 17, scope: !4984)
!4991 = !DILocation(line: 2068, column: 16, scope: !4984)
!4992 = !DILocation(line: 2068, column: 25, scope: !4984)
!4993 = !DILocation(line: 2068, column: 31, scope: !4984)
!4994 = !DILocation(line: 2068, column: 30, scope: !4984)
!4995 = !DILocation(line: 2068, column: 23, scope: !4984)
!4996 = !DILocation(line: 2068, column: 39, scope: !4984)
!4997 = !DILocation(line: 2068, column: 45, scope: !4984)
!4998 = !DILocation(line: 2068, column: 44, scope: !4984)
!4999 = !DILocation(line: 2068, column: 37, scope: !4984)
!5000 = !DILocation(line: 2068, column: 3, scope: !4984)
!5001 = distinct !DISubprogram(name: "find_atom", scope: !3, file: !3, line: 1748, type: !5002, scopeLine: 1749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5004)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!36, !56, !241}
!5004 = !{!5005, !5006, !5007, !5008}
!5005 = !DILocalVariable(name: "res", arg: 1, scope: !5001, file: !3, line: 1748, type: !56)
!5006 = !DILocalVariable(name: "aname", arg: 2, scope: !5001, file: !3, line: 1748, type: !241)
!5007 = !DILocalVariable(name: "a", scope: !5001, file: !3, line: 1750, type: !36)
!5008 = !DILocalVariable(name: "ap", scope: !5001, file: !3, line: 1751, type: !102)
!5009 = !DILocation(line: 0, scope: !5001)
!5010 = !DILocation(line: 1753, column: 24, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 1753, column: 2)
!5012 = !DILocation(line: 1753, column: 42, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 1753, column: 2)
!5014 = !DILocation(line: 1753, column: 35, scope: !5013)
!5015 = !DILocation(line: 1753, column: 2, scope: !5011)
!5016 = !DILocation(line: 1754, column: 19, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 1754, column: 7)
!5018 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 1753, column: 63)
!5019 = !DILocation(line: 1754, column: 7, scope: !5017)
!5020 = !DILocation(line: 1754, column: 39, scope: !5017)
!5021 = !DILocation(line: 1754, column: 7, scope: !5018)
!5022 = !DILocation(line: 0, scope: !5011)
!5023 = !DILocation(line: 1755, column: 4, scope: !5017)
!5024 = !DILocation(line: 1756, column: 2, scope: !5018)
!5025 = !DILocation(line: 1753, column: 53, scope: !5013)
!5026 = !DILocation(line: 1753, column: 59, scope: !5013)
!5027 = distinct !{!5027, !5015, !5028}
!5028 = !DILocation(line: 1756, column: 2, scope: !5011)
!5029 = !DILocation(line: 1757, column: 2, scope: !5001)
!5030 = !DILocation(line: 1758, column: 1, scope: !5001)
!5031 = distinct !DISubprogram(name: "delete_atom", scope: !3, file: !3, line: 1760, type: !5032, scopeLine: 1761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5034)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!36, !56, !36}
!5034 = !{!5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043}
!5035 = !DILocalVariable(name: "res", arg: 1, scope: !5031, file: !3, line: 1760, type: !56)
!5036 = !DILocalVariable(name: "anum", arg: 2, scope: !5031, file: !3, line: 1760, type: !36)
!5037 = !DILocalVariable(name: "a", scope: !5031, file: !3, line: 1762, type: !36)
!5038 = !DILocalVariable(name: "ac", scope: !5031, file: !3, line: 1762, type: !36)
!5039 = !DILocalVariable(name: "c", scope: !5031, file: !3, line: 1762, type: !36)
!5040 = !DILocalVariable(name: "c1", scope: !5031, file: !3, line: 1762, type: !36)
!5041 = !DILocalVariable(name: "c2", scope: !5031, file: !3, line: 1762, type: !36)
!5042 = !DILocalVariable(name: "ap", scope: !5031, file: !3, line: 1763, type: !102)
!5043 = !DILocalVariable(name: "apc", scope: !5031, file: !3, line: 1763, type: !102)
!5044 = !DILocation(line: 0, scope: !5031)
!5045 = !DILocation(line: 1765, column: 11, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 1765, column: 6)
!5047 = !DILocation(line: 1765, column: 15, scope: !5046)
!5048 = !DILocation(line: 1765, column: 31, scope: !5046)
!5049 = !DILocation(line: 1765, column: 23, scope: !5046)
!5050 = !DILocation(line: 1765, column: 6, scope: !5031)
!5051 = !DILocation(line: 1766, column: 3, scope: !5046)
!5052 = !DILocation(line: 1767, column: 13, scope: !5031)
!5053 = !DILocation(line: 1767, column: 8, scope: !5031)
!5054 = !DILocation(line: 1768, column: 22, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 1768, column: 2)
!5056 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 1768, column: 2)
!5057 = !DILocation(line: 1768, column: 16, scope: !5055)
!5058 = !DILocation(line: 1768, column: 2, scope: !5056)
!5059 = !DILocation(line: 1769, column: 12, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 1768, column: 39)
!5061 = !DILocation(line: 1769, column: 8, scope: !5060)
!5062 = !DILocation(line: 1770, column: 15, scope: !5060)
!5063 = !DILocation(line: 1770, column: 10, scope: !5060)
!5064 = !DILocation(line: 1771, column: 26, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 1771, column: 3)
!5066 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 1771, column: 3)
!5067 = !DILocation(line: 1771, column: 19, scope: !5065)
!5068 = !DILocation(line: 1771, column: 3, scope: !5066)
!5069 = !DILocation(line: 1772, column: 13, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 1772, column: 8)
!5071 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 1771, column: 44)
!5072 = !DILocation(line: 1772, column: 8, scope: !5070)
!5073 = !DILocation(line: 1772, column: 29, scope: !5070)
!5074 = !DILocation(line: 1772, column: 8, scope: !5071)
!5075 = !DILocation(line: 1773, column: 29, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 1773, column: 5)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 1773, column: 5)
!5078 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 1772, column: 38)
!5079 = !DILocation(line: 1773, column: 40, scope: !5076)
!5080 = !DILocation(line: 1773, column: 22, scope: !5076)
!5081 = !DILocation(line: 1773, column: 5, scope: !5077)
!5082 = !DILocation(line: 1775, column: 12, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 1773, column: 51)
!5084 = !DILocation(line: 1773, column: 47, scope: !5076)
!5085 = !DILocation(line: 1775, column: 7, scope: !5083)
!5086 = !DILocation(line: 1774, column: 11, scope: !5083)
!5087 = !DILocation(line: 1774, column: 6, scope: !5083)
!5088 = !DILocation(line: 1774, column: 27, scope: !5083)
!5089 = !DILocation(line: 1776, column: 5, scope: !5083)
!5090 = distinct !{!5090, !5081, !5091}
!5091 = !DILocation(line: 1776, column: 5, scope: !5077)
!5092 = !DILocation(line: 1777, column: 10, scope: !5078)
!5093 = !DILocation(line: 1777, column: 20, scope: !5078)
!5094 = !DILocation(line: 1778, column: 20, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 1778, column: 5)
!5096 = !DILocation(line: 1778, column: 10, scope: !5095)
!5097 = !DILocation(line: 1779, column: 9, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 1778, column: 5)
!5099 = !DILocation(line: 1778, column: 5, scope: !5095)
!5100 = !DILocation(line: 1780, column: 11, scope: !5098)
!5101 = !DILocation(line: 1780, column: 6, scope: !5098)
!5102 = !DILocation(line: 1780, column: 27, scope: !5098)
!5103 = !DILocation(line: 1779, column: 29, scope: !5098)
!5104 = distinct !{!5104, !5099, !5105}
!5105 = !DILocation(line: 1780, column: 29, scope: !5095)
!5106 = !DILocation(line: 1781, column: 5, scope: !5078)
!5107 = !DILocation(line: 1783, column: 3, scope: !5071)
!5108 = !DILocation(line: 1771, column: 40, scope: !5065)
!5109 = distinct !{!5109, !5068, !5110}
!5110 = !DILocation(line: 1783, column: 3, scope: !5066)
!5111 = !DILocation(line: 1784, column: 2, scope: !5060)
!5112 = !DILocation(line: 1768, column: 35, scope: !5055)
!5113 = distinct !{!5113, !5058, !5114}
!5114 = !DILocation(line: 1784, column: 2, scope: !5056)
!5115 = !DILocation(line: 1785, column: 26, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5117, file: !3, line: 1785, column: 2)
!5117 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 1785, column: 2)
!5118 = !DILocation(line: 1785, column: 35, scope: !5116)
!5119 = !DILocation(line: 1785, column: 19, scope: !5116)
!5120 = !DILocation(line: 1785, column: 2, scope: !5117)
!5121 = !DILocation(line: 1786, column: 8, scope: !5116)
!5122 = !DILocation(line: 1786, column: 3, scope: !5116)
!5123 = !DILocation(line: 1786, column: 28, scope: !5116)
!5124 = !DILocation(line: 1785, column: 41, scope: !5116)
!5125 = !DILocation(line: 1786, column: 23, scope: !5116)
!5126 = !{i64 0, i64 8, !672, i64 8, i64 8, !672, i64 16, i64 4, !2389, i64 20, i64 4, !2389, i64 24, i64 32, !2382, i64 56, i64 8, !672, i64 64, i64 8, !456, i64 72, i64 8, !456, i64 80, i64 8, !456, i64 88, i64 8, !456, i64 96, i64 8, !672, i64 104, i64 4, !2389, i64 112, i64 8, !456, i64 120, i64 8, !456, i64 128, i64 4, !2389, i64 132, i64 4, !2389, i64 136, i64 8, !672, i64 144, i64 24, !2382, i64 168, i64 8, !456}
!5127 = distinct !{!5127, !5120, !5128}
!5128 = !DILocation(line: 1786, column: 43, scope: !5117)
!5129 = !DILocation(line: 1787, column: 7, scope: !5031)
!5130 = !DILocation(line: 1787, column: 15, scope: !5031)
!5131 = !DILocation(line: 1788, column: 23, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 1788, column: 2)
!5133 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 1788, column: 2)
!5134 = !DILocation(line: 1788, column: 32, scope: !5132)
!5135 = !DILocation(line: 1788, column: 16, scope: !5132)
!5136 = !DILocation(line: 1788, column: 2, scope: !5133)
!5137 = !DILocation(line: 1789, column: 14, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 1788, column: 42)
!5139 = !DILocation(line: 1789, column: 9, scope: !5138)
!5140 = !DILocation(line: 1790, column: 23, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5142, file: !3, line: 1790, column: 3)
!5142 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 1790, column: 3)
!5143 = !DILocation(line: 1790, column: 17, scope: !5141)
!5144 = !DILocation(line: 1790, column: 3, scope: !5142)
!5145 = !DILocation(line: 1791, column: 12, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 1791, column: 8)
!5147 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 1790, column: 40)
!5148 = !DILocation(line: 1791, column: 8, scope: !5146)
!5149 = !DILocation(line: 1791, column: 27, scope: !5146)
!5150 = !DILocation(line: 1791, column: 8, scope: !5147)
!5151 = !DILocation(line: 1792, column: 9, scope: !5146)
!5152 = !DILocation(line: 1792, column: 5, scope: !5146)
!5153 = !DILocation(line: 1792, column: 23, scope: !5146)
!5154 = !DILocation(line: 1793, column: 3, scope: !5147)
!5155 = !DILocation(line: 1790, column: 36, scope: !5141)
!5156 = distinct !{!5156, !5144, !5157}
!5157 = !DILocation(line: 1793, column: 3, scope: !5142)
!5158 = !DILocation(line: 1794, column: 2, scope: !5138)
!5159 = !DILocation(line: 1788, column: 38, scope: !5132)
!5160 = distinct !{!5160, !5136, !5161}
!5161 = !DILocation(line: 1794, column: 2, scope: !5133)
!5162 = !DILocation(line: 1795, column: 2, scope: !5031)
!5163 = !DILocation(line: 1796, column: 1, scope: !5031)
!5164 = distinct !DISubprogram(name: "add_atom", scope: !3, file: !3, line: 1798, type: !5002, scopeLine: 1799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5165)
!5165 = !{!5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176}
!5166 = !DILocalVariable(name: "res", arg: 1, scope: !5164, file: !3, line: 1798, type: !56)
!5167 = !DILocalVariable(name: "aname", arg: 2, scope: !5164, file: !3, line: 1798, type: !241)
!5168 = !DILocalVariable(name: "na", scope: !5164, file: !3, line: 1800, type: !36)
!5169 = !DILocalVariable(name: "a", scope: !5164, file: !3, line: 1800, type: !36)
!5170 = !DILocalVariable(name: "c", scope: !5164, file: !3, line: 1800, type: !36)
!5171 = !DILocalVariable(name: "ap", scope: !5164, file: !3, line: 1801, type: !102)
!5172 = !DILocalVariable(name: "nap", scope: !5164, file: !3, line: 1801, type: !102)
!5173 = !DILocalVariable(name: "oap", scope: !5164, file: !3, line: 1801, type: !102)
!5174 = !DILocalVariable(name: "nai", scope: !5164, file: !3, line: 1802, type: !277)
!5175 = !DILocalVariable(name: "oai", scope: !5164, file: !3, line: 1802, type: !277)
!5176 = !DILocalVariable(name: "anp", scope: !5164, file: !3, line: 1803, type: !241)
!5177 = !DILocation(line: 0, scope: !5164)
!5178 = !DILocation(line: 1805, column: 12, scope: !5164)
!5179 = !DILocation(line: 1805, column: 21, scope: !5164)
!5180 = !DILocation(line: 1806, column: 34, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 1806, column: 6)
!5182 = !DILocation(line: 1806, column: 37, scope: !5181)
!5183 = !DILocation(line: 1806, column: 26, scope: !5181)
!5184 = !DILocation(line: 1806, column: 14, scope: !5181)
!5185 = !DILocation(line: 1806, column: 60, scope: !5181)
!5186 = !DILocation(line: 1806, column: 6, scope: !5164)
!5187 = !DILocation(line: 1807, column: 12, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 1806, column: 69)
!5189 = !DILocation(line: 1807, column: 3, scope: !5188)
!5190 = !DILocation(line: 1808, column: 3, scope: !5188)
!5191 = !DILocation(line: 1810, column: 31, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 1810, column: 6)
!5193 = !DILocation(line: 1810, column: 34, scope: !5192)
!5194 = !DILocation(line: 1810, column: 23, scope: !5192)
!5195 = !DILocation(line: 1810, column: 14, scope: !5192)
!5196 = !DILocation(line: 1810, column: 54, scope: !5192)
!5197 = !DILocation(line: 1810, column: 6, scope: !5164)
!5198 = !DILocation(line: 1811, column: 12, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 1810, column: 63)
!5200 = !DILocation(line: 1811, column: 3, scope: !5199)
!5201 = !DILocation(line: 1812, column: 3, scope: !5199)
!5202 = !DILocation(line: 1814, column: 13, scope: !5164)
!5203 = !DILocation(line: 1815, column: 21, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 1815, column: 2)
!5205 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 1815, column: 2)
!5206 = !DILocation(line: 1815, column: 16, scope: !5204)
!5207 = !DILocation(line: 1815, column: 2, scope: !5205)
!5208 = !DILocation(line: 1816, column: 3, scope: !5204)
!5209 = !DILocation(line: 1816, column: 14, scope: !5204)
!5210 = !DILocation(line: 1815, column: 27, scope: !5204)
!5211 = distinct !{!5211, !5207, !5212}
!5212 = !DILocation(line: 1816, column: 21, scope: !5205)
!5213 = !DILocation(line: 1817, column: 16, scope: !5164)
!5214 = !DILocation(line: 1817, column: 8, scope: !5164)
!5215 = !DILocation(line: 1818, column: 38, scope: !5164)
!5216 = !DILocation(line: 1818, column: 26, scope: !5164)
!5217 = !DILocation(line: 1818, column: 51, scope: !5164)
!5218 = !DILocation(line: 1818, column: 18, scope: !5164)
!5219 = !DILocation(line: 1819, column: 10, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 1819, column: 6)
!5221 = !DILocation(line: 1819, column: 6, scope: !5164)
!5222 = !DILocation(line: 1820, column: 12, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 1819, column: 19)
!5224 = !DILocation(line: 1820, column: 3, scope: !5223)
!5225 = !DILocation(line: 1821, column: 3, scope: !5223)
!5226 = !DILocation(line: 1823, column: 6, scope: !5164)
!5227 = !DILocation(line: 1823, column: 17, scope: !5164)
!5228 = !DILocation(line: 1824, column: 14, scope: !5164)
!5229 = !DILocation(line: 1824, column: 2, scope: !5164)
!5230 = !DILocation(line: 1825, column: 6, scope: !5164)
!5231 = !DILocation(line: 1825, column: 13, scope: !5164)
!5232 = !DILocation(line: 1826, column: 6, scope: !5164)
!5233 = !DILocation(line: 1826, column: 17, scope: !5164)
!5234 = !DILocation(line: 1827, column: 2, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 1827, column: 2)
!5236 = !DILocation(line: 1828, column: 7, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 1827, column: 2)
!5238 = !DILocation(line: 1828, column: 3, scope: !5237)
!5239 = !DILocation(line: 1828, column: 22, scope: !5237)
!5240 = !DILocation(line: 1827, column: 35, scope: !5237)
!5241 = !DILocation(line: 1827, column: 16, scope: !5237)
!5242 = distinct !{!5242, !5234, !5243}
!5243 = !DILocation(line: 1828, column: 24, scope: !5235)
!5244 = !DILocation(line: 1829, column: 18, scope: !5164)
!5245 = !DILocation(line: 1829, column: 27, scope: !5164)
!5246 = !DILocation(line: 1829, column: 6, scope: !5164)
!5247 = !DILocation(line: 1829, column: 16, scope: !5164)
!5248 = !DILocation(line: 1830, column: 6, scope: !5164)
!5249 = !DILocation(line: 1830, column: 15, scope: !5164)
!5250 = !DILocation(line: 1831, column: 6, scope: !5164)
!5251 = !DILocation(line: 1831, column: 15, scope: !5164)
!5252 = !DILocation(line: 1832, column: 6, scope: !5164)
!5253 = !DILocation(line: 1832, column: 2, scope: !5164)
!5254 = !DILocation(line: 1832, column: 17, scope: !5164)
!5255 = !DILocation(line: 1833, column: 6, scope: !5164)
!5256 = !DILocation(line: 1833, column: 2, scope: !5164)
!5257 = !DILocation(line: 1833, column: 17, scope: !5164)
!5258 = !DILocation(line: 1834, column: 6, scope: !5164)
!5259 = !DILocation(line: 1834, column: 2, scope: !5164)
!5260 = !DILocation(line: 1834, column: 17, scope: !5164)
!5261 = !DILocation(line: 1835, column: 6, scope: !5164)
!5262 = !DILocation(line: 1835, column: 10, scope: !5164)
!5263 = !DILocation(line: 1836, column: 18, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 1836, column: 6)
!5265 = !DILocation(line: 1836, column: 11, scope: !5264)
!5266 = !DILocation(line: 1836, column: 6, scope: !5164)
!5267 = !DILocation(line: 1837, column: 22, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 1837, column: 3)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 1837, column: 3)
!5270 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 1836, column: 29)
!5271 = !DILocation(line: 1837, column: 17, scope: !5268)
!5272 = !DILocation(line: 1837, column: 3, scope: !5269)
!5273 = !DILocation(line: 1838, column: 15, scope: !5268)
!5274 = !DILocation(line: 1838, column: 4, scope: !5268)
!5275 = !DILocation(line: 1838, column: 13, scope: !5268)
!5276 = !DILocation(line: 1837, column: 28, scope: !5268)
!5277 = distinct !{!5277, !5272, !5278}
!5278 = !DILocation(line: 1838, column: 22, scope: !5269)
!5279 = !DILocation(line: 1839, column: 22, scope: !5270)
!5280 = !DILocation(line: 1839, column: 11, scope: !5270)
!5281 = !DILocation(line: 1839, column: 3, scope: !5270)
!5282 = !DILocation(line: 1839, column: 17, scope: !5270)
!5283 = !DILocation(line: 1840, column: 2, scope: !5270)
!5284 = !DILocation(line: 1841, column: 8, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 1841, column: 3)
!5286 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 1840, column: 7)
!5287 = !DILocation(line: 1841, column: 17, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 1841, column: 3)
!5289 = !DILocation(line: 1841, column: 3, scope: !5285)
!5290 = !DILocation(line: 1842, column: 4, scope: !5288)
!5291 = !DILocation(line: 1842, column: 13, scope: !5288)
!5292 = !DILocation(line: 1841, column: 24, scope: !5288)
!5293 = distinct !{!5293, !5289, !5294}
!5294 = !DILocation(line: 1842, column: 15, scope: !5285)
!5295 = !DILocation(line: 1844, column: 7, scope: !5164)
!5296 = !DILocation(line: 1844, column: 16, scope: !5164)
!5297 = !DILocation(line: 1846, column: 7, scope: !5164)
!5298 = !DILocation(line: 1846, column: 15, scope: !5164)
!5299 = !DILocation(line: 1847, column: 7, scope: !5164)
!5300 = !DILocation(line: 1847, column: 15, scope: !5164)
!5301 = !DILocation(line: 1849, column: 6, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 1849, column: 6)
!5303 = !DILocation(line: 1849, column: 6, scope: !5164)
!5304 = !DILocation(line: 1850, column: 9, scope: !5302)
!5305 = !DILocation(line: 1850, column: 3, scope: !5302)
!5306 = !DILocation(line: 1851, column: 8, scope: !5164)
!5307 = !DILocation(line: 1851, column: 2, scope: !5164)
!5308 = !DILocation(line: 1852, column: 2, scope: !5164)
!5309 = !DILocation(line: 1853, column: 1, scope: !5164)
