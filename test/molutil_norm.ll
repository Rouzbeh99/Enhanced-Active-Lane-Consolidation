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
  %1 = call noalias dereferenceable_or_null(136) i8* @malloc(i64 136) #11, !dbg !444
  %2 = bitcast i8* %1 to %struct.molecule_t*, !dbg !446
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !443, metadata !DIExpression()), !dbg !447
  %3 = icmp eq i8* %1, null, !dbg !448
  br i1 %3, label %4, label %6, !dbg !449

4:                                                ; preds = %0
  %5 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !450
  br label %24, !dbg !452

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 0, i64 0, !dbg !453
  store double 0.000000e+00, double* %7, align 8, !dbg !454, !tbaa !455
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 0, i64 1, !dbg !459
  store double 0.000000e+00, double* %8, align 8, !dbg !460, !tbaa !455
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 0, i64 2, !dbg !461
  store double 0.000000e+00, double* %9, align 8, !dbg !462, !tbaa !455
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 1, i64 0, !dbg !463
  store double 1.000000e+00, double* %10, align 8, !dbg !464, !tbaa !455
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 1, i64 1, !dbg !465
  store double 0.000000e+00, double* %11, align 8, !dbg !466, !tbaa !455
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 1, i64 2, !dbg !467
  store double 0.000000e+00, double* %12, align 8, !dbg !468, !tbaa !455
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 2, i64 0, !dbg !469
  store double 0.000000e+00, double* %13, align 8, !dbg !470, !tbaa !455
  %14 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 2, i64 1, !dbg !471
  store double 1.000000e+00, double* %14, align 8, !dbg !472, !tbaa !455
  %15 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 2, i64 2, !dbg !473
  store double 0.000000e+00, double* %15, align 8, !dbg !474, !tbaa !455
  %16 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 3, i64 0, !dbg !475
  store double 0.000000e+00, double* %16, align 8, !dbg !476, !tbaa !455
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 3, i64 1, !dbg !477
  store double 0.000000e+00, double* %17, align 8, !dbg !478, !tbaa !455
  %18 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 0, i64 3, i64 2, !dbg !479
  store double 1.000000e+00, double* %18, align 8, !dbg !480, !tbaa !455
  %19 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 1, !dbg !481
  store i32 0, i32* %19, align 8, !dbg !482, !tbaa !483
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 2, !dbg !487
  store %struct.strand_t* null, %struct.strand_t** %20, align 8, !dbg !488, !tbaa !489
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 3, !dbg !490
  store i32 0, i32* %21, align 8, !dbg !491, !tbaa !492
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 5, !dbg !493
  store i32 0, i32* %22, align 8, !dbg !494, !tbaa !495
  %23 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 6, !dbg !496
  store %struct.parm* null, %struct.parm** %23, align 8, !dbg !497, !tbaa !498
  br label %24, !dbg !499

24:                                               ; preds = %6, %4
  %.0 = phi %struct.molecule_t* [ null, %4 ], [ %2, %6 ], !dbg !447
  ret %struct.molecule_t* %.0, !dbg !500
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare !dbg !238 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @freeresidue(%struct.residue_t* %0) #0 !dbg !501 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !505, metadata !DIExpression()), !dbg !510
  %.not = icmp eq %struct.residue_t* %0, null, !dbg !511
  br i1 %.not, label %82, label %2, !dbg !513

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !514
  %4 = load i8*, i8** %3, align 8, !dbg !514, !tbaa !516
  %.not10 = icmp eq i8* %4, null, !dbg !518
  br i1 %.not10, label %8, label %5, !dbg !519

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !520
  %7 = load i8*, i8** %6, align 8, !dbg !520, !tbaa !516
  call void @free(i8* %7) #11, !dbg !521
  br label %8, !dbg !521

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !522
  %10 = load i8*, i8** %9, align 8, !dbg !522, !tbaa !524
  %.not11 = icmp eq i8* %10, null, !dbg !525
  br i1 %.not11, label %14, label %11, !dbg !526

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !527
  %13 = load i8*, i8** %12, align 8, !dbg !527, !tbaa !524
  call void @free(i8* %13) #11, !dbg !528
  br label %14, !dbg !528

14:                                               ; preds = %11, %8
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 10, !dbg !529
  %16 = load %struct.extbond_t*, %struct.extbond_t** %15, align 8, !dbg !529, !tbaa !531
  call void @llvm.dbg.value(metadata %struct.extbond_t* %16, metadata !508, metadata !DIExpression()), !dbg !510
  %.not12 = icmp eq %struct.extbond_t* %16, null, !dbg !532
  br i1 %.not12, label %._crit_edge, label %.lr.ph, !dbg !532

.lr.ph:                                           ; preds = %14, %.lr.ph
  %.034 = phi %struct.extbond_t* [ %18, %.lr.ph ], [ %16, %14 ]
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.034, metadata !508, metadata !DIExpression()), !dbg !510
  %17 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.034, i64 0, i32 0, !dbg !533
  %18 = load %struct.extbond_t*, %struct.extbond_t** %17, align 8, !dbg !533, !tbaa !536
  call void @llvm.dbg.value(metadata %struct.extbond_t* %18, metadata !509, metadata !DIExpression()), !dbg !510
  %19 = bitcast %struct.extbond_t* %.034 to i8*, !dbg !538
  call void @free(i8* %19) #11, !dbg !539
  call void @llvm.dbg.value(metadata %struct.extbond_t* %18, metadata !508, metadata !DIExpression()), !dbg !510
  %.not21 = icmp eq %struct.extbond_t* %18, null, !dbg !532
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !dbg !532, !llvm.loop !540

._crit_edge:                                      ; preds = %.lr.ph, %14
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !542
  %21 = load [2 x i32]*, [2 x i32]** %20, align 8, !dbg !542, !tbaa !544
  %.not13 = icmp eq [2 x i32]* %21, null, !dbg !545
  br i1 %.not13, label %26, label %22, !dbg !546

22:                                               ; preds = %._crit_edge
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !547
  %24 = bitcast [2 x i32]** %23 to i8**, !dbg !547
  %25 = load i8*, i8** %24, align 8, !dbg !547, !tbaa !544
  call void @free(i8* %25) #11, !dbg !548
  br label %26, !dbg !548

26:                                               ; preds = %22, %._crit_edge
  %27 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !549
  %28 = load %struct.chiral_t*, %struct.chiral_t** %27, align 8, !dbg !549, !tbaa !551
  %.not14 = icmp eq %struct.chiral_t* %28, null, !dbg !552
  br i1 %.not14, label %33, label %29, !dbg !553

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !554
  %31 = bitcast %struct.chiral_t** %30 to i8**, !dbg !554
  %32 = load i8*, i8** %31, align 8, !dbg !554, !tbaa !551
  call void @free(i8* %32) #11, !dbg !555
  br label %33, !dbg !555

33:                                               ; preds = %29, %26
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !556
  %35 = load i32*, i32** %34, align 8, !dbg !556, !tbaa !558
  %.not15 = icmp eq i32* %35, null, !dbg !559
  br i1 %.not15, label %40, label %36, !dbg !560

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !561
  %38 = bitcast i32** %37 to i8**, !dbg !561
  %39 = load i8*, i8** %38, align 8, !dbg !561, !tbaa !558
  call void @free(i8* %39) #11, !dbg !562
  br label %40, !dbg !562

40:                                               ; preds = %36, %33
  %41 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !563
  %42 = load %struct.atom_t*, %struct.atom_t** %41, align 8, !dbg !563, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.atom_t* %42, metadata !507, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i32 0, metadata !506, metadata !DIExpression()), !dbg !510
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !566
  %44 = load i32, i32* %43, align 8, !dbg !566, !tbaa !568
  %45 = icmp sgt i32 %44, 0, !dbg !569
  br i1 %45, label %.lr.ph8, label %._crit_edge9, !dbg !570

.lr.ph8:                                          ; preds = %40, %69
  %.016 = phi i32 [ %70, %69 ], [ 0, %40 ]
  %.025 = phi %struct.atom_t* [ %71, %69 ], [ %42, %40 ]
  call void @llvm.dbg.value(metadata i32 %.016, metadata !506, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata %struct.atom_t* %.025, metadata !507, metadata !DIExpression()), !dbg !510
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 0, !dbg !571
  %47 = load i8*, i8** %46, align 8, !dbg !571, !tbaa !574
  %.not17 = icmp eq i8* %47, null, !dbg !576
  br i1 %.not17, label %51, label %48, !dbg !577

48:                                               ; preds = %.lr.ph8
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 0, !dbg !578
  %50 = load i8*, i8** %49, align 8, !dbg !578, !tbaa !574
  call void @free(i8* %50) #11, !dbg !579
  br label %51, !dbg !579

51:                                               ; preds = %48, %.lr.ph8
  %52 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 1, !dbg !580
  %53 = load i8*, i8** %52, align 8, !dbg !580, !tbaa !582
  %.not18 = icmp eq i8* %53, null, !dbg !583
  br i1 %.not18, label %57, label %54, !dbg !584

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 1, !dbg !585
  %56 = load i8*, i8** %55, align 8, !dbg !585, !tbaa !582
  call void @free(i8* %56) #11, !dbg !586
  br label %57, !dbg !586

57:                                               ; preds = %54, %51
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 10, !dbg !587
  %59 = load i8*, i8** %58, align 8, !dbg !587, !tbaa !589
  %.not19 = icmp eq i8* %59, null, !dbg !590
  br i1 %.not19, label %63, label %60, !dbg !591

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 10, !dbg !592
  %62 = load i8*, i8** %61, align 8, !dbg !592, !tbaa !589
  call void @free(i8* %62) #11, !dbg !593
  br label %63, !dbg !593

63:                                               ; preds = %60, %57
  %64 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 16, !dbg !594
  %65 = load i8*, i8** %64, align 8, !dbg !594, !tbaa !596
  %.not20 = icmp eq i8* %65, null, !dbg !597
  br i1 %.not20, label %69, label %66, !dbg !598

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 0, i32 16, !dbg !599
  %68 = load i8*, i8** %67, align 8, !dbg !599, !tbaa !596
  call void @free(i8* %68) #11, !dbg !600
  br label %69, !dbg !600

69:                                               ; preds = %63, %66
  %70 = add nuw nsw i32 %.016, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %70, metadata !506, metadata !DIExpression()), !dbg !510
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.025, i64 1, !dbg !602
  call void @llvm.dbg.value(metadata %struct.atom_t* %71, metadata !507, metadata !DIExpression()), !dbg !510
  %72 = load i32, i32* %43, align 8, !dbg !566, !tbaa !568
  %73 = icmp slt i32 %70, %72, !dbg !569
  br i1 %73, label %.lr.ph8, label %._crit_edge9, !dbg !570, !llvm.loop !603

._crit_edge9:                                     ; preds = %69, %40
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !605
  %75 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !605, !tbaa !565
  %.not16 = icmp eq %struct.atom_t* %75, null, !dbg !607
  br i1 %.not16, label %80, label %76, !dbg !608

76:                                               ; preds = %._crit_edge9
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !609
  %78 = bitcast %struct.atom_t** %77 to i8**, !dbg !609
  %79 = load i8*, i8** %78, align 8, !dbg !609, !tbaa !565
  call void @free(i8* %79) #11, !dbg !610
  br label %80, !dbg !610

80:                                               ; preds = %76, %._crit_edge9
  %81 = bitcast %struct.residue_t* %0 to i8*, !dbg !611
  call void @free(i8* %81) #11, !dbg !612
  br label %82, !dbg !613

82:                                               ; preds = %1, %80
  ret i32 0, !dbg !614
}

; Function Attrs: nounwind
declare !dbg !243 dso_local void @free(i8*) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @freemolecule(%struct.molecule_t* %0) #0 !dbg !615 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !619, metadata !DIExpression()), !dbg !624
  %.not = icmp eq %struct.molecule_t* %0, null, !dbg !625
  br i1 %.not, label %65, label %2, !dbg !627

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !628
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !628, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !620, metadata !DIExpression()), !dbg !624
  %.not9 = icmp eq %struct.strand_t* %4, null, !dbg !630
  br i1 %.not9, label %._crit_edge8, label %.lr.ph7, !dbg !630

.lr.ph7:                                          ; preds = %2, %30
  %.015 = phi %struct.strand_t* [ %6, %30 ], [ %4, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.015, metadata !620, metadata !DIExpression()), !dbg !624
  %5 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i64 0, i32 4, !dbg !631
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !631, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !621, metadata !DIExpression()), !dbg !624
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i64 0, i32 0, !dbg !636
  %8 = load i8*, i8** %7, align 8, !dbg !636, !tbaa !638
  %.not15 = icmp eq i8* %8, null, !dbg !639
  br i1 %.not15, label %12, label %9, !dbg !640

9:                                                ; preds = %.lr.ph7
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i64 0, i32 0, !dbg !641
  %11 = load i8*, i8** %10, align 8, !dbg !641, !tbaa !638
  call void @free(i8* %11) #11, !dbg !642
  br label %12, !dbg !642

12:                                               ; preds = %9, %.lr.ph7
  call void @llvm.dbg.value(metadata i32 0, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i64 0, metadata !623, metadata !DIExpression()), !dbg !624
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i64 0, i32 5, !dbg !643
  %14 = load i32, i32* %13, align 8, !dbg !643, !tbaa !646
  %15 = icmp sgt i32 %14, 0, !dbg !647
  br i1 %15, label %.lr.ph, label %._crit_edge, !dbg !648

.lr.ph:                                           ; preds = %12, %.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !623, metadata !DIExpression()), !dbg !624
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i64 0, i32 7, !dbg !649
  %17 = load %struct.residue_t**, %struct.residue_t*** %16, align 8, !dbg !649, !tbaa !650
  %18 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %17, i64 %indvars.iv4, !dbg !651
  %19 = load %struct.residue_t*, %struct.residue_t** %18, align 8, !dbg !651, !tbaa !652
  %20 = call i32 @freeresidue(%struct.residue_t* %19), !dbg !653
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !654
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !623, metadata !DIExpression()), !dbg !624
  %21 = load i32, i32* %13, align 8, !dbg !643, !tbaa !646
  %22 = sext i32 %21 to i64, !dbg !647
  %23 = icmp slt i64 %indvars.iv.next, %22, !dbg !647
  br i1 %23, label %.lr.ph, label %._crit_edge, !dbg !648, !llvm.loop !655

._crit_edge:                                      ; preds = %.lr.ph, %12
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i64 0, i32 7, !dbg !657
  %25 = load %struct.residue_t**, %struct.residue_t*** %24, align 8, !dbg !657, !tbaa !650
  %.not16 = icmp eq %struct.residue_t** %25, null, !dbg !659
  br i1 %.not16, label %30, label %26, !dbg !660

26:                                               ; preds = %._crit_edge
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.015, i64 0, i32 7, !dbg !661
  %28 = bitcast %struct.residue_t*** %27 to i8**, !dbg !661
  %29 = load i8*, i8** %28, align 8, !dbg !661, !tbaa !650
  call void @free(i8* %29) #11, !dbg !662
  br label %30, !dbg !662

30:                                               ; preds = %._crit_edge, %26
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !620, metadata !DIExpression()), !dbg !624
  %.not17 = icmp eq %struct.strand_t* %6, null, !dbg !630
  br i1 %.not17, label %._crit_edge8, label %.lr.ph7, !dbg !630, !llvm.loop !663

._crit_edge8:                                     ; preds = %30, %2
  %31 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !665
  %32 = load %struct.parm*, %struct.parm** %31, align 8, !dbg !665, !tbaa !498
  %.not10 = icmp eq %struct.parm* %32, null, !dbg !667
  br i1 %.not10, label %63, label %33, !dbg !668

33:                                               ; preds = %._crit_edge8
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !669
  %35 = load %struct.parm*, %struct.parm** %34, align 8, !dbg !669, !tbaa !498
  call void @llvm.dbg.value(metadata %struct.parm* %35, metadata !622, metadata !DIExpression()), !dbg !624
  %36 = getelementptr inbounds %struct.parm, %struct.parm* %35, i64 0, i32 33, !dbg !671
  %37 = load i8*, i8** %36, align 8, !dbg !671, !tbaa !673
  %.not11 = icmp eq i8* %37, null, !dbg !675
  br i1 %.not11, label %41, label %38, !dbg !676

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.parm, %struct.parm* %35, i64 0, i32 33, !dbg !677
  %40 = load i8*, i8** %39, align 8, !dbg !677, !tbaa !673
  call void @free(i8* %40) #11, !dbg !678
  br label %41, !dbg !678

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.parm, %struct.parm* %35, i64 0, i32 34, !dbg !679
  %43 = load i8*, i8** %42, align 8, !dbg !679, !tbaa !681
  %.not12 = icmp eq i8* %43, null, !dbg !682
  br i1 %.not12, label %47, label %44, !dbg !683

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.parm, %struct.parm* %35, i64 0, i32 34, !dbg !684
  %46 = load i8*, i8** %45, align 8, !dbg !684, !tbaa !681
  call void @free(i8* %46) #11, !dbg !685
  br label %47, !dbg !685

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds %struct.parm, %struct.parm* %35, i64 0, i32 35, !dbg !686
  %49 = load i8*, i8** %48, align 8, !dbg !686, !tbaa !688
  %.not13 = icmp eq i8* %49, null, !dbg !689
  br i1 %.not13, label %53, label %50, !dbg !690

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.parm, %struct.parm* %35, i64 0, i32 35, !dbg !691
  %52 = load i8*, i8** %51, align 8, !dbg !691, !tbaa !688
  call void @free(i8* %52) #11, !dbg !692
  br label %53, !dbg !692

53:                                               ; preds = %50, %47
  %54 = getelementptr inbounds %struct.parm, %struct.parm* %35, i64 0, i32 36, !dbg !693
  %55 = load i8*, i8** %54, align 8, !dbg !693, !tbaa !695
  %.not14 = icmp eq i8* %55, null, !dbg !696
  br i1 %.not14, label %59, label %56, !dbg !697

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.parm, %struct.parm* %35, i64 0, i32 36, !dbg !698
  %58 = load i8*, i8** %57, align 8, !dbg !698, !tbaa !695
  call void @free(i8* %58) #11, !dbg !699
  br label %59, !dbg !699

59:                                               ; preds = %56, %53
  %60 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !700
  %61 = bitcast %struct.parm** %60 to i8**, !dbg !700
  %62 = load i8*, i8** %61, align 8, !dbg !700, !tbaa !498
  call void @free(i8* %62) #11, !dbg !701
  br label %63, !dbg !702

63:                                               ; preds = %59, %._crit_edge8
  %64 = bitcast %struct.molecule_t* %0 to i8*, !dbg !703
  call void @free(i8* %64) #11, !dbg !704
  br label %65, !dbg !705

65:                                               ; preds = %1, %63
  ret i32 0, !dbg !706
}

; Function Attrs: nounwind uwtable
define dso_local i32 @addstrand(%struct.molecule_t* %0, i8* %1) #0 !dbg !707 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !711, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i8* %1, metadata !712, metadata !DIExpression()), !dbg !717
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !718
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !718, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !713, metadata !DIExpression()), !dbg !717
  %.not = icmp eq %struct.strand_t* %4, null, !dbg !720
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !720

.lr.ph:                                           ; preds = %2, %11
  %.023 = phi %struct.strand_t* [ %13, %11 ], [ %4, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.023, metadata !713, metadata !DIExpression()), !dbg !717
  %5 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.023, i64 0, i32 0, !dbg !721
  %6 = load i8*, i8** %5, align 8, !dbg !721, !tbaa !638
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %1) #12, !dbg !725
  %.not10 = icmp eq i32 %7, 0, !dbg !725
  br i1 %.not10, label %8, label %11, !dbg !726

8:                                                ; preds = %.lr.ph
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !727, !tbaa !652
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %1) #13, !dbg !729
  br label %61, !dbg !730

11:                                               ; preds = %.lr.ph
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.023, i64 0, i32 4, !dbg !731
  %13 = load %struct.strand_t*, %struct.strand_t** %12, align 8, !dbg !731, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %13, metadata !713, metadata !DIExpression()), !dbg !717
  %.not11 = icmp eq %struct.strand_t* %13, null, !dbg !720
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !dbg !720, !llvm.loop !732

._crit_edge:                                      ; preds = %11, %2
  %14 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #11, !dbg !734
  %15 = bitcast i8* %14 to %struct.strand_t*, !dbg !736
  call void @llvm.dbg.value(metadata %struct.strand_t* %15, metadata !713, metadata !DIExpression()), !dbg !717
  %16 = icmp eq i8* %14, null, !dbg !737
  br i1 %16, label %17, label %20, !dbg !738

17:                                               ; preds = %._crit_edge
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %1) #11, !dbg !739
  %19 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !741
  br label %61, !dbg !742

20:                                               ; preds = %._crit_edge
  %21 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #12, !dbg !743
  call void @llvm.dbg.value(metadata i64 %21, metadata !715, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !717
  %22 = shl i64 %21, 32, !dbg !744
  %sext = add i64 %22, 4294967296, !dbg !744
  %23 = ashr exact i64 %sext, 32, !dbg !744
  %24 = call noalias i8* @malloc(i64 %23) #11, !dbg !746
  call void @llvm.dbg.value(metadata i8* %24, metadata !716, metadata !DIExpression()), !dbg !717
  %25 = icmp eq i8* %24, null, !dbg !747
  br i1 %25, label %26, label %29, !dbg !748

26:                                               ; preds = %20
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %1) #11, !dbg !749
  %28 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !751
  br label %61, !dbg !752

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i64 0, i32 0, !dbg !753
  store i8* %24, i8** %30, align 8, !dbg !754, !tbaa !638
  %31 = call i8* @strcpy(i8* noundef nonnull %24, i8* noundef nonnull dereferenceable(1) %1) #11, !dbg !755
  %32 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i64 0, i32 1, !dbg !756
  store i32 0, i32* %32, align 8, !dbg !757, !tbaa !758
  %33 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i64 0, i32 2, !dbg !759
  store i32 0, i32* %33, align 4, !dbg !760, !tbaa !761
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i64 0, i32 3, !dbg !762
  store %struct.molecule_t* %0, %struct.molecule_t** %34, align 8, !dbg !763, !tbaa !764
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i64 0, i32 4, !dbg !765
  store %struct.strand_t* null, %struct.strand_t** %35, align 8, !dbg !766, !tbaa !634
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i64 0, i32 5, !dbg !767
  store i32 0, i32* %36, align 8, !dbg !768, !tbaa !646
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i64 0, i32 6, !dbg !769
  store i32 0, i32* %37, align 4, !dbg !770, !tbaa !771
  %38 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %15, i64 0, i32 7, !dbg !772
  store %struct.residue_t** null, %struct.residue_t*** %38, align 8, !dbg !773, !tbaa !650
  %39 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !774
  %40 = load i32, i32* %39, align 8, !dbg !774, !tbaa !483
  %41 = icmp eq i32 %40, 0, !dbg !776
  br i1 %41, label %42, label %45, !dbg !777

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !778
  %44 = bitcast %struct.strand_t** %43 to i8**, !dbg !779
  store i8* %14, i8** %44, align 8, !dbg !779, !tbaa !489
  br label %56, !dbg !780

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !781
  %47 = load %struct.strand_t*, %struct.strand_t** %46, align 8, !dbg !781, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !714, metadata !DIExpression()), !dbg !717
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %47, i64 0, i32 4, !dbg !783
  %49 = load %struct.strand_t*, %struct.strand_t** %48, align 8, !dbg !783, !tbaa !634
  %.not8 = icmp eq %struct.strand_t* %49, null, !dbg !786
  br i1 %.not8, label %._crit_edge7, label %.lr.ph6, !dbg !786

.lr.ph6:                                          ; preds = %45, %.lr.ph6
  %.014 = phi %struct.strand_t* [ %51, %.lr.ph6 ], [ %47, %45 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.014, metadata !714, metadata !DIExpression()), !dbg !717
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.014, i64 0, i32 4, !dbg !787
  %51 = load %struct.strand_t*, %struct.strand_t** %50, align 8, !dbg !787, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %51, metadata !714, metadata !DIExpression()), !dbg !717
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %51, i64 0, i32 4, !dbg !783
  %53 = load %struct.strand_t*, %struct.strand_t** %52, align 8, !dbg !783, !tbaa !634
  %.not9 = icmp eq %struct.strand_t* %53, null, !dbg !786
  br i1 %.not9, label %._crit_edge7, label %.lr.ph6, !dbg !786, !llvm.loop !788

._crit_edge7:                                     ; preds = %.lr.ph6, %45
  %.01.lcssa = phi %struct.strand_t* [ %47, %45 ], [ %51, %.lr.ph6 ], !dbg !790
  %54 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01.lcssa, i64 0, i32 4, !dbg !791
  %55 = bitcast %struct.strand_t** %54 to i8**, !dbg !792
  store i8* %14, i8** %55, align 8, !dbg !792, !tbaa !634
  br label %56

56:                                               ; preds = %._crit_edge7, %42
  %57 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !793
  %58 = load i32, i32* %57, align 8, !dbg !794, !tbaa !483
  %59 = add nsw i32 %58, 1, !dbg !794
  store i32 %59, i32* %57, align 8, !dbg !794, !tbaa !483
  %60 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !795
  store i32 0, i32* %60, align 8, !dbg !796, !tbaa !495
  br label %61, !dbg !797

61:                                               ; preds = %56, %26, %17, %8
  %.0 = phi i32 [ 1, %8 ], [ 1, %17 ], [ 1, %26 ], [ 0, %56 ], !dbg !717
  ret i32 %.0, !dbg !798
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
define dso_local i32 @addresidue(%struct.molecule_t* %0, i8* %1, %struct.residue_t* %2) #0 !dbg !799 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !803, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i8* %1, metadata !804, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata %struct.residue_t* %2, metadata !805, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !807, metadata !DIExpression()), !dbg !812
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !813
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !813, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !806, metadata !DIExpression()), !dbg !812
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !815
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !815

.lr.ph:                                           ; preds = %3, %10
  %.036 = phi %struct.strand_t* [ %12, %10 ], [ %5, %3 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.036, metadata !806, metadata !DIExpression()), !dbg !812
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.036, i64 0, i32 0, !dbg !816
  %7 = load i8*, i8** %6, align 8, !dbg !816, !tbaa !638
  %8 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %7, i8* noundef nonnull dereferenceable(1) %1) #12, !dbg !820
  %9 = icmp eq i32 %8, 0, !dbg !821
  br i1 %9, label %.loopexit, label %10, !dbg !822

10:                                               ; preds = %.lr.ph
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.036, i64 0, i32 4, !dbg !823
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !823, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %12, metadata !806, metadata !DIExpression()), !dbg !812
  %.not9 = icmp eq %struct.strand_t* %12, null, !dbg !815
  br i1 %.not9, label %.loopexit, label %.lr.ph, !dbg !815, !llvm.loop !824

.loopexit:                                        ; preds = %3, %10, %.lr.ph
  %.02 = phi %struct.strand_t* [ %.036, %.lr.ph ], [ null, %10 ], [ null, %3 ], !dbg !826
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02, metadata !807, metadata !DIExpression()), !dbg !812
  %13 = icmp eq %struct.strand_t* %.02, null, !dbg !827
  br i1 %13, label %14, label %16, !dbg !829

14:                                               ; preds = %.loopexit
  %15 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %1) #11, !dbg !830
  br label %72, !dbg !832

16:                                               ; preds = %.loopexit
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !833
  %18 = load i32, i32* %17, align 8, !dbg !833, !tbaa !646
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 6, !dbg !835
  %20 = load i32, i32* %19, align 4, !dbg !835, !tbaa !771
  %21 = icmp eq i32 %18, %20, !dbg !836
  br i1 %21, label %22, label %59, !dbg !837

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 6, !dbg !838
  %24 = load i32, i32* %23, align 4, !dbg !838, !tbaa !771
  %25 = add nsw i32 %24, 10, !dbg !840
  call void @llvm.dbg.value(metadata i32 %25, metadata !811, metadata !DIExpression()), !dbg !812
  %26 = sext i32 %25 to i64, !dbg !841
  %27 = shl nsw i64 %26, 3, !dbg !843
  %28 = call noalias i8* @malloc(i64 %27) #11, !dbg !844
  %29 = bitcast i8* %28 to %struct.residue_t**, !dbg !845
  call void @llvm.dbg.value(metadata %struct.residue_t** %29, metadata !808, metadata !DIExpression()), !dbg !812
  %30 = icmp eq i8* %28, null, !dbg !846
  br i1 %30, label %31, label %36, !dbg !847

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 0, !dbg !848
  %33 = load i8*, i8** %32, align 8, !dbg !848, !tbaa !638
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %33) #11, !dbg !850
  %35 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !851
  br label %72, !dbg !852

36:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 0, metadata !810, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i64 0, metadata !810, metadata !DIExpression()), !dbg !812
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !853
  %38 = load i32, i32* %37, align 8, !dbg !853, !tbaa !646
  %39 = icmp sgt i32 %38, 0, !dbg !856
  br i1 %39, label %.lr.ph8, label %._crit_edge, !dbg !857

.lr.ph8:                                          ; preds = %36, %.lr.ph8
  %indvars.iv7 = phi i64 [ %indvars.iv.next, %.lr.ph8 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !810, metadata !DIExpression()), !dbg !812
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !858
  %41 = load %struct.residue_t**, %struct.residue_t*** %40, align 8, !dbg !858, !tbaa !650
  %42 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %41, i64 %indvars.iv7, !dbg !859
  %43 = load %struct.residue_t*, %struct.residue_t** %42, align 8, !dbg !859, !tbaa !652
  %44 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %29, i64 %indvars.iv7, !dbg !860
  store %struct.residue_t* %43, %struct.residue_t** %44, align 8, !dbg !861, !tbaa !652
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !862
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !810, metadata !DIExpression()), !dbg !812
  %45 = load i32, i32* %37, align 8, !dbg !853, !tbaa !646
  %46 = sext i32 %45 to i64, !dbg !856
  %47 = icmp slt i64 %indvars.iv.next, %46, !dbg !856
  br i1 %47, label %.lr.ph8, label %._crit_edge, !dbg !857, !llvm.loop !863

._crit_edge:                                      ; preds = %.lr.ph8, %36
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 6, !dbg !865
  %49 = load i32, i32* %48, align 4, !dbg !865, !tbaa !771
  %50 = icmp sgt i32 %49, 0, !dbg !867
  br i1 %50, label %51, label %55, !dbg !868

51:                                               ; preds = %._crit_edge
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !869
  %53 = bitcast %struct.residue_t*** %52 to i8**, !dbg !869
  %54 = load i8*, i8** %53, align 8, !dbg !869, !tbaa !650
  call void @free(i8* %54) #11, !dbg !870
  br label %55, !dbg !870

55:                                               ; preds = %51, %._crit_edge
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 6, !dbg !871
  store i32 %25, i32* %56, align 4, !dbg !872, !tbaa !771
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !873
  %58 = bitcast %struct.residue_t*** %57 to i8**, !dbg !874
  store i8* %28, i8** %58, align 8, !dbg !874, !tbaa !650
  br label %59, !dbg !875

59:                                               ; preds = %55, %16
  %60 = call %struct.residue_t* @copyresidue(%struct.residue_t* %2) #11, !dbg !876
  call void @llvm.dbg.value(metadata %struct.residue_t* %60, metadata !809, metadata !DIExpression()), !dbg !812
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !877
  %62 = load %struct.residue_t**, %struct.residue_t*** %61, align 8, !dbg !877, !tbaa !650
  %63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !878
  %64 = load i32, i32* %63, align 8, !dbg !878, !tbaa !646
  %65 = sext i32 %64 to i64, !dbg !879
  %66 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %62, i64 %65, !dbg !879
  store %struct.residue_t* %60, %struct.residue_t** %66, align 8, !dbg !880, !tbaa !652
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i64 0, i32 9, !dbg !881
  store %struct.strand_t* %.02, %struct.strand_t** %67, align 8, !dbg !882, !tbaa !883
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !884
  %69 = load i32, i32* %68, align 8, !dbg !885, !tbaa !646
  %70 = add nsw i32 %69, 1, !dbg !885
  store i32 %70, i32* %68, align 8, !dbg !885, !tbaa !646
  %71 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !886
  store i32 0, i32* %71, align 8, !dbg !887, !tbaa !495
  br label %72, !dbg !888

72:                                               ; preds = %59, %31, %14
  %.0 = phi i32 [ 1, %14 ], [ 0, %31 ], [ 0, %59 ], !dbg !812
  ret i32 %.0, !dbg !889
}

declare !dbg !247 dso_local %struct.residue_t* @copyresidue(%struct.residue_t*) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @connectres(%struct.molecule_t* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 !dbg !890 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !894, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i8* %1, metadata !895, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 %2, metadata !896, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i8* %3, metadata !897, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 %4, metadata !898, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i8* %5, metadata !899, metadata !DIExpression()), !dbg !909
  %7 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !910
  %8 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !910, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %8, metadata !900, metadata !DIExpression()), !dbg !909
  %.not = icmp eq %struct.strand_t* %8, null, !dbg !912
  br i1 %.not, label %.loopexit6, label %.lr.ph, !dbg !912

.lr.ph:                                           ; preds = %6, %13
  %.0415 = phi %struct.strand_t* [ %15, %13 ], [ %8, %6 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0415, metadata !900, metadata !DIExpression()), !dbg !909
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0415, i64 0, i32 0, !dbg !913
  %10 = load i8*, i8** %9, align 8, !dbg !913, !tbaa !638
  %11 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %10, i8* noundef nonnull dereferenceable(1) %1) #12, !dbg !917
  %12 = icmp eq i32 %11, 0, !dbg !918
  br i1 %12, label %.loopexit6, label %13, !dbg !919

13:                                               ; preds = %.lr.ph
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0415, i64 0, i32 4, !dbg !920
  %15 = load %struct.strand_t*, %struct.strand_t** %14, align 8, !dbg !920, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %15, metadata !900, metadata !DIExpression()), !dbg !909
  %.not20 = icmp eq %struct.strand_t* %15, null, !dbg !912
  br i1 %.not20, label %.loopexit6, label %.lr.ph, !dbg !912, !llvm.loop !921

.loopexit6:                                       ; preds = %6, %13, %.lr.ph
  %.0410 = phi %struct.strand_t* [ %.0415, %.lr.ph ], [ %8, %6 ], [ %15, %13 ]
  %16 = icmp eq %struct.strand_t* %.0410, null, !dbg !923
  br i1 %16, label %17, label %19, !dbg !925

17:                                               ; preds = %.loopexit6
  %18 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %1) #11, !dbg !926
  br label %136, !dbg !928

19:                                               ; preds = %.loopexit6
  %20 = icmp slt i32 %2, 1, !dbg !929
  br i1 %20, label %25, label %21, !dbg !931

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0410, i64 0, i32 5, !dbg !932
  %23 = load i32, i32* %22, align 8, !dbg !932, !tbaa !646
  %24 = icmp slt i32 %23, %2, !dbg !933
  br i1 %24, label %25, label %28, !dbg !934

25:                                               ; preds = %21, %19
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %2, i8* %1) #11, !dbg !935
  %27 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !937
  br label %136, !dbg !938

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0410, i64 0, i32 7, !dbg !939
  %30 = load %struct.residue_t**, %struct.residue_t*** %29, align 8, !dbg !939, !tbaa !650
  %31 = add nsw i32 %2, -1, !dbg !940
  %32 = sext i32 %31 to i64, !dbg !941
  %33 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %30, i64 %32, !dbg !941
  %34 = load %struct.residue_t*, %struct.residue_t** %33, align 8, !dbg !941, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %34, metadata !903, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 -1, metadata !907, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 0, metadata !906, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i64 0, metadata !906, metadata !DIExpression()), !dbg !909
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 15, !dbg !942
  %36 = load i32, i32* %35, align 8, !dbg !942, !tbaa !568
  %37 = icmp sgt i32 %36, 0, !dbg !945
  br i1 %37, label %.lr.ph17, label %.loopexit5, !dbg !946

.lr.ph17:                                         ; preds = %28, %46
  %indvars.iv16 = phi i64 [ %indvars.iv.next, %46 ], [ 0, %28 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv16, metadata !906, metadata !DIExpression()), !dbg !909
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 17, !dbg !947
  %39 = load %struct.atom_t*, %struct.atom_t** %38, align 8, !dbg !947, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %39, i64 %indvars.iv16), metadata !905, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !909
  %40 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i64 %indvars.iv16, i32 0, !dbg !949
  %41 = load i8*, i8** %40, align 8, !dbg !949, !tbaa !574
  %42 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %41, i8* noundef nonnull dereferenceable(1) %3) #12, !dbg !951
  %43 = icmp eq i32 %42, 0, !dbg !952
  br i1 %43, label %44, label %46, !dbg !953

44:                                               ; preds = %.lr.ph17
  %45 = trunc i64 %indvars.iv16 to i32, !dbg !909
  call void @llvm.dbg.value(metadata i32 %45, metadata !907, metadata !DIExpression()), !dbg !909
  br label %.loopexit5, !dbg !954

46:                                               ; preds = %.lr.ph17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv16, 1, !dbg !956
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !906, metadata !DIExpression()), !dbg !909
  %47 = load i32, i32* %35, align 8, !dbg !942, !tbaa !568
  %48 = sext i32 %47 to i64, !dbg !945
  %49 = icmp slt i64 %indvars.iv.next, %48, !dbg !945
  br i1 %49, label %.lr.ph17, label %.loopexit5, !dbg !946, !llvm.loop !957

.loopexit5:                                       ; preds = %28, %46, %44
  %.02 = phi i32 [ %45, %44 ], [ -1, %46 ], [ -1, %28 ], !dbg !959
  call void @llvm.dbg.value(metadata i32 %.02, metadata !907, metadata !DIExpression()), !dbg !909
  %50 = icmp eq i32 %.02, -1, !dbg !960
  br i1 %50, label %51, label %56, !dbg !962

51:                                               ; preds = %.loopexit5
  %52 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 4, !dbg !963
  %53 = load i8*, i8** %52, align 8, !dbg !963, !tbaa !516
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %3, i8* %53) #11, !dbg !965
  %55 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !966
  br label %136, !dbg !967

56:                                               ; preds = %.loopexit5
  %57 = icmp slt i32 %4, 1, !dbg !968
  br i1 %57, label %62, label %58, !dbg !970

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0410, i64 0, i32 5, !dbg !971
  %60 = load i32, i32* %59, align 8, !dbg !971, !tbaa !646
  %61 = icmp slt i32 %60, %4, !dbg !972
  br i1 %61, label %62, label %65, !dbg !973

62:                                               ; preds = %58, %56
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %4, i8* %1) #11, !dbg !974
  %64 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !976
  br label %136, !dbg !977

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0410, i64 0, i32 7, !dbg !978
  %67 = load %struct.residue_t**, %struct.residue_t*** %66, align 8, !dbg !978, !tbaa !650
  %68 = add nsw i32 %4, -1, !dbg !979
  %69 = sext i32 %68 to i64, !dbg !980
  %70 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %67, i64 %69, !dbg !980
  %71 = load %struct.residue_t*, %struct.residue_t** %70, align 8, !dbg !980, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %71, metadata !904, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 -1, metadata !908, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i32 0, metadata !906, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata i64 0, metadata !906, metadata !DIExpression()), !dbg !909
  %72 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i64 0, i32 15, !dbg !981
  %73 = load i32, i32* %72, align 8, !dbg !981, !tbaa !568
  %74 = icmp sgt i32 %73, 0, !dbg !984
  br i1 %74, label %.lr.ph19, label %.loopexit, !dbg !985

.lr.ph19:                                         ; preds = %65, %83
  %indvars.iv1218 = phi i64 [ %indvars.iv.next13, %83 ], [ 0, %65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1218, metadata !906, metadata !DIExpression()), !dbg !909
  %75 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i64 0, i32 17, !dbg !986
  %76 = load %struct.atom_t*, %struct.atom_t** %75, align 8, !dbg !986, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %76, i64 %indvars.iv1218), metadata !905, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !909
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %indvars.iv1218, i32 0, !dbg !988
  %78 = load i8*, i8** %77, align 8, !dbg !988, !tbaa !574
  %79 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %78, i8* noundef nonnull dereferenceable(1) %5) #12, !dbg !990
  %80 = icmp eq i32 %79, 0, !dbg !991
  br i1 %80, label %81, label %83, !dbg !992

81:                                               ; preds = %.lr.ph19
  %82 = trunc i64 %indvars.iv1218 to i32, !dbg !909
  call void @llvm.dbg.value(metadata i32 %82, metadata !908, metadata !DIExpression()), !dbg !909
  br label %.loopexit, !dbg !993

83:                                               ; preds = %.lr.ph19
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1218, 1, !dbg !995
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next13, metadata !906, metadata !DIExpression()), !dbg !909
  %84 = load i32, i32* %72, align 8, !dbg !981, !tbaa !568
  %85 = sext i32 %84 to i64, !dbg !984
  %86 = icmp slt i64 %indvars.iv.next13, %85, !dbg !984
  br i1 %86, label %.lr.ph19, label %.loopexit, !dbg !985, !llvm.loop !996

.loopexit:                                        ; preds = %65, %83, %81
  %.01 = phi i32 [ %82, %81 ], [ -1, %83 ], [ -1, %65 ], !dbg !998
  call void @llvm.dbg.value(metadata i32 %.01, metadata !908, metadata !DIExpression()), !dbg !909
  %87 = icmp eq i32 %.01, -1, !dbg !999
  br i1 %87, label %88, label %93, !dbg !1001

88:                                               ; preds = %.loopexit
  %89 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i64 0, i32 4, !dbg !1002
  %90 = load i8*, i8** %89, align 8, !dbg !1002, !tbaa !516
  %91 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %5, i8* %90) #11, !dbg !1004
  %92 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !1005
  br label %136, !dbg !1006

93:                                               ; preds = %.loopexit
  %94 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #11, !dbg !1007
  %95 = bitcast i8* %94 to %struct.extbond_t*, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.extbond_t* %95, metadata !901, metadata !DIExpression()), !dbg !909
  %96 = icmp eq i8* %94, null, !dbg !1010
  br i1 %96, label %97, label %104, !dbg !1011

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 4, !dbg !1012
  %99 = load i8*, i8** %98, align 8, !dbg !1012, !tbaa !516
  %100 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i64 0, i32 4, !dbg !1014
  %101 = load i8*, i8** %100, align 8, !dbg !1014, !tbaa !516
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %99, i32 %2, i8* %3, i8* %101, i32 %4, i8* %5) #11, !dbg !1015
  %103 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !1016
  br label %136, !dbg !1017

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 10, !dbg !1018
  %106 = load %struct.extbond_t*, %struct.extbond_t** %105, align 8, !dbg !1018, !tbaa !531
  %107 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %95, i64 0, i32 0, !dbg !1020
  store %struct.extbond_t* %106, %struct.extbond_t** %107, align 8, !dbg !1021, !tbaa !536
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 10, !dbg !1022
  %109 = bitcast %struct.extbond_t** %108 to i8**, !dbg !1023
  store i8* %94, i8** %109, align 8, !dbg !1023, !tbaa !531
  %110 = add nsw i32 %.02, 1, !dbg !1024
  %111 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %95, i64 0, i32 1, !dbg !1025
  store i32 %110, i32* %111, align 8, !dbg !1026, !tbaa !1027
  %112 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %95, i64 0, i32 2, !dbg !1028
  store i32 %4, i32* %112, align 4, !dbg !1029, !tbaa !1030
  %113 = add nsw i32 %.01, 1, !dbg !1031
  %114 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %95, i64 0, i32 3, !dbg !1032
  store i32 %113, i32* %114, align 8, !dbg !1033, !tbaa !1034
  %115 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #11, !dbg !1035
  %116 = bitcast i8* %115 to %struct.extbond_t*, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.extbond_t* %116, metadata !902, metadata !DIExpression()), !dbg !909
  %117 = icmp eq i8* %115, null, !dbg !1038
  br i1 %117, label %118, label %125, !dbg !1039

118:                                              ; preds = %104
  %119 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i64 0, i32 4, !dbg !1040
  %120 = load i8*, i8** %119, align 8, !dbg !1040, !tbaa !516
  %121 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 4, !dbg !1042
  %122 = load i8*, i8** %121, align 8, !dbg !1042, !tbaa !516
  %123 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %120, i32 %4, i8* %5, i8* %122, i32 %2, i8* %3) #11, !dbg !1043
  %124 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !1044
  br label %136, !dbg !1045

125:                                              ; preds = %104
  %126 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i64 0, i32 10, !dbg !1046
  %127 = load %struct.extbond_t*, %struct.extbond_t** %126, align 8, !dbg !1046, !tbaa !531
  %128 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %116, i64 0, i32 0, !dbg !1048
  store %struct.extbond_t* %127, %struct.extbond_t** %128, align 8, !dbg !1049, !tbaa !536
  %129 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i64 0, i32 10, !dbg !1050
  %130 = bitcast %struct.extbond_t** %129 to i8**, !dbg !1051
  store i8* %115, i8** %130, align 8, !dbg !1051, !tbaa !531
  %131 = add nsw i32 %.01, 1, !dbg !1052
  %132 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %116, i64 0, i32 1, !dbg !1053
  store i32 %131, i32* %132, align 8, !dbg !1054, !tbaa !1027
  %133 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %116, i64 0, i32 2, !dbg !1055
  store i32 %2, i32* %133, align 4, !dbg !1056, !tbaa !1030
  %134 = add nsw i32 %.02, 1, !dbg !1057
  %135 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %116, i64 0, i32 3, !dbg !1058
  store i32 %134, i32* %135, align 8, !dbg !1059, !tbaa !1034
  br label %136, !dbg !1060

136:                                              ; preds = %125, %118, %97, %88, %62, %51, %25, %17
  %.0 = phi i32 [ 1, %17 ], [ 1, %25 ], [ 1, %51 ], [ 1, %62 ], [ 1, %88 ], [ 1, %97 ], [ 1, %118 ], [ 0, %125 ], !dbg !909
  ret i32 %.0, !dbg !1061
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mergestr(%struct.molecule_t* %0, i8* %1, i8* %2, %struct.molecule_t* %3, i8* %4, i8* %5) #0 !dbg !1062 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1066, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %1, metadata !1067, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %2, metadata !1068, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata %struct.molecule_t* %3, metadata !1069, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %4, metadata !1070, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %5, metadata !1071, metadata !DIExpression()), !dbg !1082
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !1083
  %8 = icmp eq i32 %7, 0, !dbg !1085
  br i1 %8, label %9, label %12, !dbg !1086

9:                                                ; preds = %6
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !1087
  %11 = icmp eq i32 %10, 0, !dbg !1088
  br i1 %11, label %21, label %12, !dbg !1089

12:                                               ; preds = %9, %6
  %13 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !1090
  %14 = icmp eq i32 %13, 0, !dbg !1092
  br i1 %14, label %15, label %18, !dbg !1093

15:                                               ; preds = %12
  %16 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !1094
  %17 = icmp eq i32 %16, 0, !dbg !1095
  br i1 %17, label %21, label %18, !dbg !1096

18:                                               ; preds = %15, %12
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %2, i8* %5) #11, !dbg !1097
  %20 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !1099
  br label %223, !dbg !1100

21:                                               ; preds = %15, %9
  %.not70 = phi i1 [ true, %15 ], [ false, %9 ], !dbg !1101
  call void @llvm.dbg.value(metadata i32 undef, metadata !1072, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1079, metadata !DIExpression()), !dbg !1082
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1102
  %23 = load %struct.strand_t*, %struct.strand_t** %22, align 8, !dbg !1102, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %23, metadata !1078, metadata !DIExpression()), !dbg !1082
  %.not = icmp eq %struct.strand_t* %23, null, !dbg !1104
  br i1 %.not, label %.loopexit10, label %.lr.ph, !dbg !1104

.lr.ph:                                           ; preds = %21, %28
  %.0335 = phi %struct.strand_t* [ %30, %28 ], [ %23, %21 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0335, metadata !1078, metadata !DIExpression()), !dbg !1082
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0335, i64 0, i32 0, !dbg !1105
  %25 = load i8*, i8** %24, align 8, !dbg !1105, !tbaa !638
  %26 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %25, i8* noundef nonnull dereferenceable(1) %1) #12, !dbg !1109
  %27 = icmp eq i32 %26, 0, !dbg !1110
  br i1 %27, label %.loopexit10, label %28, !dbg !1111

28:                                               ; preds = %.lr.ph
  %29 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0335, i64 0, i32 4, !dbg !1112
  %30 = load %struct.strand_t*, %struct.strand_t** %29, align 8, !dbg !1112, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %30, metadata !1078, metadata !DIExpression()), !dbg !1082
  %.not73 = icmp eq %struct.strand_t* %30, null, !dbg !1104
  br i1 %.not73, label %.loopexit10, label %.lr.ph, !dbg !1104, !llvm.loop !1113

.loopexit10:                                      ; preds = %21, %28, %.lr.ph
  %.02 = phi %struct.strand_t* [ %.0335, %.lr.ph ], [ null, %28 ], [ null, %21 ], !dbg !1115
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02, metadata !1079, metadata !DIExpression()), !dbg !1082
  %31 = icmp eq %struct.strand_t* %.02, null, !dbg !1116
  br i1 %31, label %32, label %34, !dbg !1118

32:                                               ; preds = %.loopexit10
  %33 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %1) #11, !dbg !1119
  br label %223, !dbg !1121

34:                                               ; preds = %.loopexit10
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1080, metadata !DIExpression()), !dbg !1082
  %35 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %3, i64 0, i32 2, !dbg !1122
  %36 = load %struct.strand_t*, %struct.strand_t** %35, align 8, !dbg !1122, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %36, metadata !1078, metadata !DIExpression()), !dbg !1082
  %.not69 = icmp eq %struct.strand_t* %36, null, !dbg !1124
  br i1 %.not69, label %.loopexit, label %.lr.ph37, !dbg !1124

.lr.ph37:                                         ; preds = %34, %41
  %.136 = phi %struct.strand_t* [ %43, %41 ], [ %36, %34 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.136, metadata !1078, metadata !DIExpression()), !dbg !1082
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.136, i64 0, i32 0, !dbg !1125
  %38 = load i8*, i8** %37, align 8, !dbg !1125, !tbaa !638
  %39 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %38, i8* noundef nonnull dereferenceable(1) %4) #12, !dbg !1129
  %40 = icmp eq i32 %39, 0, !dbg !1130
  br i1 %40, label %.loopexit, label %41, !dbg !1131

41:                                               ; preds = %.lr.ph37
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.136, i64 0, i32 4, !dbg !1132
  %43 = load %struct.strand_t*, %struct.strand_t** %42, align 8, !dbg !1132, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %43, metadata !1078, metadata !DIExpression()), !dbg !1082
  %.not72 = icmp eq %struct.strand_t* %43, null, !dbg !1124
  br i1 %.not72, label %.loopexit, label %.lr.ph37, !dbg !1124, !llvm.loop !1133

.loopexit:                                        ; preds = %34, %41, %.lr.ph37
  %.01 = phi %struct.strand_t* [ %.136, %.lr.ph37 ], [ null, %41 ], [ null, %34 ], !dbg !1135
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1080, metadata !DIExpression()), !dbg !1082
  %44 = icmp eq %struct.strand_t* %.01, null, !dbg !1136
  br i1 %44, label %45, label %47, !dbg !1138

45:                                               ; preds = %.loopexit
  %46 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %4) #11, !dbg !1139
  br label %223, !dbg !1141

47:                                               ; preds = %.loopexit
  %48 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !1142
  %49 = load i32, i32* %48, align 8, !dbg !1142, !tbaa !646
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1143
  %51 = load i32, i32* %50, align 8, !dbg !1143, !tbaa !646
  %52 = add nsw i32 %49, %51, !dbg !1144
  call void @llvm.dbg.value(metadata i32 %52, metadata !1073, metadata !DIExpression()), !dbg !1082
  %53 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 6, !dbg !1145
  %54 = load i32, i32* %53, align 4, !dbg !1145, !tbaa !771
  %55 = icmp sgt i32 %52, %54, !dbg !1147
  br i1 %55, label %56, label %88, !dbg !1148

56:                                               ; preds = %47
  %57 = add nsw i32 %52, 10, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %57, metadata !1074, metadata !DIExpression()), !dbg !1082
  %58 = sext i32 %57 to i64, !dbg !1151
  %59 = shl nsw i64 %58, 3, !dbg !1153
  %60 = call noalias i8* @malloc(i64 %59) #11, !dbg !1154
  %61 = bitcast i8* %60 to %struct.residue_t**, !dbg !1155
  call void @llvm.dbg.value(metadata %struct.residue_t** %61, metadata !1081, metadata !DIExpression()), !dbg !1082
  %62 = icmp eq i8* %60, null, !dbg !1156
  br i1 %62, label %63, label %65, !dbg !1157

63:                                               ; preds = %56
  %64 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !1158
  br label %223, !dbg !1160

65:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i32 0, metadata !1075, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 0, metadata !1075, metadata !DIExpression()), !dbg !1082
  %66 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !1161
  %67 = load i32, i32* %66, align 8, !dbg !1161, !tbaa !646
  %68 = icmp sgt i32 %67, 0, !dbg !1164
  br i1 %68, label %.lr.ph39, label %._crit_edge, !dbg !1165

.lr.ph39:                                         ; preds = %65, %.lr.ph39
  %indvars.iv38 = phi i64 [ %indvars.iv.next, %.lr.ph39 ], [ 0, %65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv38, metadata !1075, metadata !DIExpression()), !dbg !1082
  %69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1166
  %70 = load %struct.residue_t**, %struct.residue_t*** %69, align 8, !dbg !1166, !tbaa !650
  %71 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %70, i64 %indvars.iv38, !dbg !1167
  %72 = load %struct.residue_t*, %struct.residue_t** %71, align 8, !dbg !1167, !tbaa !652
  %73 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %61, i64 %indvars.iv38, !dbg !1168
  store %struct.residue_t* %72, %struct.residue_t** %73, align 8, !dbg !1169, !tbaa !652
  %indvars.iv.next = add nuw nsw i64 %indvars.iv38, 1, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1075, metadata !DIExpression()), !dbg !1082
  %74 = load i32, i32* %66, align 8, !dbg !1161, !tbaa !646
  %75 = sext i32 %74 to i64, !dbg !1164
  %76 = icmp slt i64 %indvars.iv.next, %75, !dbg !1164
  br i1 %76, label %.lr.ph39, label %._crit_edge, !dbg !1165, !llvm.loop !1171

._crit_edge:                                      ; preds = %.lr.ph39, %65
  %77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 6, !dbg !1173
  %78 = load i32, i32* %77, align 4, !dbg !1173, !tbaa !771
  %79 = icmp sgt i32 %78, 0, !dbg !1175
  br i1 %79, label %80, label %84, !dbg !1176

80:                                               ; preds = %._crit_edge
  %81 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1177
  %82 = bitcast %struct.residue_t*** %81 to i8**, !dbg !1177
  %83 = load i8*, i8** %82, align 8, !dbg !1177, !tbaa !650
  call void @free(i8* %83) #11, !dbg !1178
  br label %84, !dbg !1178

84:                                               ; preds = %80, %._crit_edge
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1179
  %86 = bitcast %struct.residue_t*** %85 to i8**, !dbg !1180
  store i8* %60, i8** %86, align 8, !dbg !1180, !tbaa !650
  %87 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 6, !dbg !1181
  store i32 %57, i32* %87, align 4, !dbg !1182, !tbaa !771
  br label %88, !dbg !1183

88:                                               ; preds = %84, %47
  %.not71 = icmp eq %struct.molecule_t* %0, %3, !dbg !1184
  call void @llvm.dbg.value(metadata i1 %.not71, metadata !1077, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1082
  br i1 %.not70, label %151, label %89, !dbg !1185

89:                                               ; preds = %88
  call void @llvm.dbg.value(metadata i1 %.not71, metadata !1077, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1082
  %90 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !1186
  %91 = load i32, i32* %90, align 8, !dbg !1186, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %91, metadata !1075, metadata !DIExpression()), !dbg !1082
  br i1 %.not71, label %116, label %92, !dbg !1189

92:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  %93 = sext i32 %91 to i64, !dbg !1190
  %94 = sext i32 %91 to i64, !dbg !1190
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  %95 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1194
  %96 = load i32, i32* %95, align 8, !dbg !1194, !tbaa !646
  %97 = icmp sgt i32 %96, 0, !dbg !1196
  br i1 %97, label %.lr.ph63, label %._crit_edge64, !dbg !1197

.lr.ph63:                                         ; preds = %92, %.lr.ph63
  %indvars.iv2961 = phi i64 [ %indvars.iv.next30, %.lr.ph63 ], [ 0, %92 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2961, metadata !1076, metadata !DIExpression()), !dbg !1082
  %98 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 7, !dbg !1198
  %99 = load %struct.residue_t**, %struct.residue_t*** %98, align 8, !dbg !1198, !tbaa !650
  %100 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %99, i64 %indvars.iv2961, !dbg !1200
  %101 = load %struct.residue_t*, %struct.residue_t** %100, align 8, !dbg !1200, !tbaa !652
  %102 = call %struct.residue_t* @copyresidue(%struct.residue_t* %101) #11, !dbg !1201
  %103 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1202
  %104 = load %struct.residue_t**, %struct.residue_t*** %103, align 8, !dbg !1202, !tbaa !650
  %105 = add nsw i64 %indvars.iv2961, %93, !dbg !1203
  %106 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %104, i64 %105, !dbg !1204
  store %struct.residue_t* %102, %struct.residue_t** %106, align 8, !dbg !1205, !tbaa !652
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1206
  %108 = load %struct.residue_t**, %struct.residue_t*** %107, align 8, !dbg !1206, !tbaa !650
  %109 = add nsw i64 %indvars.iv2961, %94, !dbg !1207
  %110 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %108, i64 %109, !dbg !1208
  %111 = load %struct.residue_t*, %struct.residue_t** %110, align 8, !dbg !1208, !tbaa !652
  %112 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %111, i64 0, i32 9, !dbg !1209
  store %struct.strand_t* %.02, %struct.strand_t** %112, align 8, !dbg !1210, !tbaa !883
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv2961, 1, !dbg !1211
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next30, metadata !1076, metadata !DIExpression()), !dbg !1082
  %113 = load i32, i32* %95, align 8, !dbg !1194, !tbaa !646
  %114 = sext i32 %113 to i64, !dbg !1196
  %115 = icmp slt i64 %indvars.iv.next30, %114, !dbg !1196
  br i1 %115, label %.lr.ph63, label %._crit_edge64, !dbg !1197, !llvm.loop !1212

116:                                              ; preds = %89
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  %117 = sext i32 %91 to i64, !dbg !1214
  %118 = sext i32 %91 to i64, !dbg !1214
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  %119 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1217
  %120 = load i32, i32* %119, align 8, !dbg !1217, !tbaa !646
  %121 = icmp sgt i32 %120, 0, !dbg !1219
  br i1 %121, label %.lr.ph59, label %._crit_edge64, !dbg !1220

.lr.ph59:                                         ; preds = %116, %.lr.ph59
  %indvars.iv2657 = phi i64 [ %indvars.iv.next27, %.lr.ph59 ], [ 0, %116 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2657, metadata !1076, metadata !DIExpression()), !dbg !1082
  %122 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 7, !dbg !1221
  %123 = load %struct.residue_t**, %struct.residue_t*** %122, align 8, !dbg !1221, !tbaa !650
  %124 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %123, i64 %indvars.iv2657, !dbg !1223
  %125 = load %struct.residue_t*, %struct.residue_t** %124, align 8, !dbg !1223, !tbaa !652
  %126 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1224
  %127 = load %struct.residue_t**, %struct.residue_t*** %126, align 8, !dbg !1224, !tbaa !650
  %128 = add nsw i64 %indvars.iv2657, %117, !dbg !1225
  %129 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %127, i64 %128, !dbg !1226
  store %struct.residue_t* %125, %struct.residue_t** %129, align 8, !dbg !1227, !tbaa !652
  %130 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1228
  %131 = load %struct.residue_t**, %struct.residue_t*** %130, align 8, !dbg !1228, !tbaa !650
  %132 = add nsw i64 %indvars.iv2657, %118, !dbg !1229
  %133 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %131, i64 %132, !dbg !1230
  %134 = load %struct.residue_t*, %struct.residue_t** %133, align 8, !dbg !1230, !tbaa !652
  %135 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %134, i64 0, i32 9, !dbg !1231
  store %struct.strand_t* %.02, %struct.strand_t** %135, align 8, !dbg !1232, !tbaa !883
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv2657, 1, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next27, metadata !1076, metadata !DIExpression()), !dbg !1082
  %136 = load i32, i32* %119, align 8, !dbg !1217, !tbaa !646
  %137 = sext i32 %136 to i64, !dbg !1219
  %138 = icmp slt i64 %indvars.iv.next27, %137, !dbg !1219
  br i1 %138, label %.lr.ph59, label %._crit_edge64, !dbg !1220, !llvm.loop !1234

._crit_edge64:                                    ; preds = %116, %.lr.ph59, %92, %.lr.ph63
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  %139 = sext i32 %91 to i64, !dbg !1236
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  %140 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1238
  %141 = load i32, i32* %140, align 8, !dbg !1238, !tbaa !646
  %142 = icmp sgt i32 %141, 0, !dbg !1240
  br i1 %142, label %.lr.ph67, label %._crit_edge68, !dbg !1241

.lr.ph67:                                         ; preds = %._crit_edge64, %.lr.ph67
  %indvars.iv3265 = phi i64 [ %indvars.iv.next33, %.lr.ph67 ], [ 0, %._crit_edge64 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3265, metadata !1076, metadata !DIExpression()), !dbg !1082
  %143 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1242
  %144 = load %struct.residue_t**, %struct.residue_t*** %143, align 8, !dbg !1242, !tbaa !650
  %145 = add nsw i64 %indvars.iv3265, %139, !dbg !1243
  %146 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %144, i64 %145, !dbg !1244
  %147 = load %struct.residue_t*, %struct.residue_t** %146, align 8, !dbg !1244, !tbaa !652
  call void @fixextbonds(%struct.residue_t* %147, i32 %91), !dbg !1245
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv3265, 1, !dbg !1246
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next33, metadata !1076, metadata !DIExpression()), !dbg !1082
  %148 = load i32, i32* %140, align 8, !dbg !1238, !tbaa !646
  %149 = sext i32 %148 to i64, !dbg !1240
  %150 = icmp slt i64 %indvars.iv.next33, %149, !dbg !1240
  br i1 %150, label %.lr.ph67, label %._crit_edge68, !dbg !1241, !llvm.loop !1247

151:                                              ; preds = %88
  %152 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1249
  %153 = load i32, i32* %152, align 8, !dbg !1249, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %153, metadata !1076, metadata !DIExpression()), !dbg !1082
  %154 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !1251
  %155 = load i32, i32* %154, align 8, !dbg !1251, !tbaa !646
  %156 = add i32 %155, -1, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %156, metadata !1075, metadata !DIExpression()), !dbg !1082
  %157 = sext i32 %156 to i64, !dbg !1254
  %158 = sext i32 %153 to i64, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %157, metadata !1075, metadata !DIExpression()), !dbg !1082
  %159 = icmp sgt i32 %156, -1, !dbg !1255
  br i1 %159, label %.lr.ph42, label %._crit_edge43, !dbg !1257

.lr.ph42:                                         ; preds = %151, %.lr.ph42
  %indvars.iv1440 = phi i64 [ %indvars.iv.next15, %.lr.ph42 ], [ %157, %151 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1440, metadata !1075, metadata !DIExpression()), !dbg !1082
  %160 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1258
  %161 = load %struct.residue_t**, %struct.residue_t*** %160, align 8, !dbg !1258, !tbaa !650
  %162 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %161, i64 %indvars.iv1440, !dbg !1259
  %163 = load %struct.residue_t*, %struct.residue_t** %162, align 8, !dbg !1259, !tbaa !652
  %164 = add nsw i64 %indvars.iv1440, %158, !dbg !1260
  %165 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %161, i64 %164, !dbg !1261
  store %struct.residue_t* %163, %struct.residue_t** %165, align 8, !dbg !1262, !tbaa !652
  %indvars.iv.next15 = add nsw i64 %indvars.iv1440, -1, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next15, metadata !1075, metadata !DIExpression()), !dbg !1082
  %166 = icmp sgt i64 %indvars.iv1440, 0, !dbg !1255
  br i1 %166, label %.lr.ph42, label %._crit_edge43, !dbg !1257, !llvm.loop !1264

._crit_edge43:                                    ; preds = %.lr.ph42, %151
  br i1 %.not71, label %187, label %167, !dbg !1266

167:                                              ; preds = %._crit_edge43
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  %168 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1267
  %169 = load i32, i32* %168, align 8, !dbg !1267, !tbaa !646
  %170 = icmp sgt i32 %169, 0, !dbg !1272
  br i1 %170, label %.lr.ph50, label %._crit_edge51, !dbg !1273

.lr.ph50:                                         ; preds = %167, %.lr.ph50
  %indvars.iv2048 = phi i64 [ %indvars.iv.next21, %.lr.ph50 ], [ 0, %167 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2048, metadata !1076, metadata !DIExpression()), !dbg !1082
  %171 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 7, !dbg !1274
  %172 = load %struct.residue_t**, %struct.residue_t*** %171, align 8, !dbg !1274, !tbaa !650
  %173 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %172, i64 %indvars.iv2048, !dbg !1276
  %174 = load %struct.residue_t*, %struct.residue_t** %173, align 8, !dbg !1276, !tbaa !652
  %175 = call %struct.residue_t* @copyresidue(%struct.residue_t* %174) #11, !dbg !1277
  %176 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1278
  %177 = load %struct.residue_t**, %struct.residue_t*** %176, align 8, !dbg !1278, !tbaa !650
  %178 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %177, i64 %indvars.iv2048, !dbg !1279
  store %struct.residue_t* %175, %struct.residue_t** %178, align 8, !dbg !1280, !tbaa !652
  %179 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1281
  %180 = load %struct.residue_t**, %struct.residue_t*** %179, align 8, !dbg !1281, !tbaa !650
  %181 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %180, i64 %indvars.iv2048, !dbg !1282
  %182 = load %struct.residue_t*, %struct.residue_t** %181, align 8, !dbg !1282, !tbaa !652
  %183 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %182, i64 0, i32 9, !dbg !1283
  store %struct.strand_t* %.02, %struct.strand_t** %183, align 8, !dbg !1284, !tbaa !883
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv2048, 1, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next21, metadata !1076, metadata !DIExpression()), !dbg !1082
  %184 = load i32, i32* %168, align 8, !dbg !1267, !tbaa !646
  %185 = sext i32 %184 to i64, !dbg !1272
  %186 = icmp slt i64 %indvars.iv.next21, %185, !dbg !1272
  br i1 %186, label %.lr.ph50, label %._crit_edge51, !dbg !1273, !llvm.loop !1286

._crit_edge51:                                    ; preds = %.lr.ph50, %167
  %.3.lcssa.wide = phi i64 [ 0, %167 ], [ %indvars.iv.next21, %.lr.ph50 ]
  br label %206, !dbg !1288

187:                                              ; preds = %._crit_edge43
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()), !dbg !1082
  %188 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1289
  %189 = load i32, i32* %188, align 8, !dbg !1289, !tbaa !646
  %190 = icmp sgt i32 %189, 0, !dbg !1293
  br i1 %190, label %.lr.ph46, label %._crit_edge47, !dbg !1294

.lr.ph46:                                         ; preds = %187, %.lr.ph46
  %indvars.iv1744 = phi i64 [ %indvars.iv.next18, %.lr.ph46 ], [ 0, %187 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1744, metadata !1076, metadata !DIExpression()), !dbg !1082
  %191 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 7, !dbg !1295
  %192 = load %struct.residue_t**, %struct.residue_t*** %191, align 8, !dbg !1295, !tbaa !650
  %193 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %192, i64 %indvars.iv1744, !dbg !1297
  %194 = load %struct.residue_t*, %struct.residue_t** %193, align 8, !dbg !1297, !tbaa !652
  %195 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1298
  %196 = load %struct.residue_t**, %struct.residue_t*** %195, align 8, !dbg !1298, !tbaa !650
  %197 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %196, i64 %indvars.iv1744, !dbg !1299
  store %struct.residue_t* %194, %struct.residue_t** %197, align 8, !dbg !1300, !tbaa !652
  %198 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1301
  %199 = load %struct.residue_t**, %struct.residue_t*** %198, align 8, !dbg !1301, !tbaa !650
  %200 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %199, i64 %indvars.iv1744, !dbg !1302
  %201 = load %struct.residue_t*, %struct.residue_t** %200, align 8, !dbg !1302, !tbaa !652
  %202 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %201, i64 0, i32 9, !dbg !1303
  store %struct.strand_t* %.02, %struct.strand_t** %202, align 8, !dbg !1304, !tbaa !883
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv1744, 1, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next18, metadata !1076, metadata !DIExpression()), !dbg !1082
  %203 = load i32, i32* %188, align 8, !dbg !1289, !tbaa !646
  %204 = sext i32 %203 to i64, !dbg !1293
  %205 = icmp slt i64 %indvars.iv.next18, %204, !dbg !1293
  br i1 %205, label %.lr.ph46, label %._crit_edge47, !dbg !1294, !llvm.loop !1306

._crit_edge47:                                    ; preds = %.lr.ph46, %187
  %.4.lcssa.wide = phi i64 [ 0, %187 ], [ %indvars.iv.next18, %.lr.ph46 ]
  br label %206

206:                                              ; preds = %._crit_edge47, %._crit_edge51
  %.5.in = phi i64 [ %.3.lcssa.wide, %._crit_edge51 ], [ %.4.lcssa.wide, %._crit_edge47 ]
  %.5 = trunc i64 %.5.in to i32, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %.5, metadata !1076, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 0, metadata !1075, metadata !DIExpression()), !dbg !1082
  %sext = shl i64 %.5.in, 32, !dbg !1309
  %207 = ashr exact i64 %sext, 32, !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !1075, metadata !DIExpression()), !dbg !1082
  %208 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !1311
  %209 = load i32, i32* %208, align 8, !dbg !1311, !tbaa !646
  %210 = icmp sgt i32 %209, 0, !dbg !1313
  br i1 %210, label %.lr.ph55, label %._crit_edge68, !dbg !1314

.lr.ph55:                                         ; preds = %206, %.lr.ph55
  %indvars.iv2353 = phi i64 [ %indvars.iv.next24, %.lr.ph55 ], [ 0, %206 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2353, metadata !1075, metadata !DIExpression()), !dbg !1082
  %211 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !1315
  %212 = load %struct.residue_t**, %struct.residue_t*** %211, align 8, !dbg !1315, !tbaa !650
  %213 = add nuw nsw i64 %207, %indvars.iv2353, !dbg !1317
  %214 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %212, i64 %213, !dbg !1318
  %215 = load %struct.residue_t*, %struct.residue_t** %214, align 8, !dbg !1318, !tbaa !652
  call void @fixextbonds(%struct.residue_t* %215, i32 %.5), !dbg !1319
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv2353, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next24, metadata !1075, metadata !DIExpression()), !dbg !1082
  %216 = load i32, i32* %208, align 8, !dbg !1311, !tbaa !646
  %217 = sext i32 %216 to i64, !dbg !1313
  %218 = icmp slt i64 %indvars.iv.next24, %217, !dbg !1313
  br i1 %218, label %.lr.ph55, label %._crit_edge68, !dbg !1314, !llvm.loop !1321

._crit_edge68:                                    ; preds = %206, %.lr.ph55, %._crit_edge64, %.lr.ph67
  %219 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !1323
  store i32 %52, i32* %219, align 8, !dbg !1324, !tbaa !646
  br i1 %.not71, label %220, label %221, !dbg !1325

220:                                              ; preds = %._crit_edge68
  call void @freestrand(%struct.molecule_t* %0, i8* %4), !dbg !1326
  br label %221, !dbg !1326

221:                                              ; preds = %220, %._crit_edge68
  %222 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !1328
  store i32 0, i32* %222, align 8, !dbg !1329, !tbaa !495
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !1330
  br label %223, !dbg !1331

223:                                              ; preds = %221, %63, %45, %32, %18
  %.0 = phi i32 [ 1, %32 ], [ 1, %45 ], [ 1, %63 ], [ 0, %221 ], [ 1, %18 ], !dbg !1082
  ret i32 %.0, !dbg !1332
}

; Function Attrs: nounwind uwtable
define internal void @fixextbonds(%struct.residue_t* %0, i32 %1) #0 !dbg !1333 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1337, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i32 %1, metadata !1338, metadata !DIExpression()), !dbg !1340
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 10, !dbg !1341
  %4 = load %struct.extbond_t*, %struct.extbond_t** %3, align 8, !dbg !1341, !tbaa !531
  call void @llvm.dbg.value(metadata %struct.extbond_t* %4, metadata !1339, metadata !DIExpression()), !dbg !1340
  %.not = icmp eq %struct.extbond_t* %4, null, !dbg !1343
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1343

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.01 = phi %struct.extbond_t* [ %9, %.lr.ph ], [ %4, %2 ]
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.01, metadata !1339, metadata !DIExpression()), !dbg !1340
  %5 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.01, i64 0, i32 2, !dbg !1344
  %6 = load i32, i32* %5, align 4, !dbg !1346, !tbaa !1030
  %7 = add nsw i32 %6, %1, !dbg !1346
  store i32 %7, i32* %5, align 4, !dbg !1346, !tbaa !1030
  %8 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.01, i64 0, i32 0, !dbg !1347
  %9 = load %struct.extbond_t*, %struct.extbond_t** %8, align 8, !dbg !1347, !tbaa !536
  call void @llvm.dbg.value(metadata %struct.extbond_t* %9, metadata !1339, metadata !DIExpression()), !dbg !1340
  %.not2 = icmp eq %struct.extbond_t* %9, null, !dbg !1343
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !dbg !1343, !llvm.loop !1348

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret void, !dbg !1350
}

; Function Attrs: nounwind uwtable
define internal void @freestrand(%struct.molecule_t* %0, i8* %1) #0 !dbg !1351 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1355, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8* %1, metadata !1356, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1359, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1358, metadata !DIExpression()), !dbg !1360
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1361
  %4 = load %struct.strand_t*, %struct.strand_t** %3, align 8, !dbg !1361, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %4, metadata !1357, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !1358, metadata !DIExpression()), !dbg !1360
  %.not = icmp eq %struct.strand_t* %4, null, !dbg !1363
  br i1 %.not, label %.loopexit, label %.lr.ph, !dbg !1363

.lr.ph:                                           ; preds = %2, %9
  %.028 = phi %struct.strand_t* [ %11, %9 ], [ %4, %2 ]
  %.037 = phi %struct.strand_t* [ %.028, %9 ], [ null, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.028, metadata !1357, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata %struct.strand_t* %.037, metadata !1358, metadata !DIExpression()), !dbg !1360
  %5 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.028, i64 0, i32 0, !dbg !1364
  %6 = load i8*, i8** %5, align 8, !dbg !1364, !tbaa !638
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) %1) #12, !dbg !1368
  %8 = icmp eq i32 %7, 0, !dbg !1369
  br i1 %8, label %.loopexit, label %9, !dbg !1370

9:                                                ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata %struct.strand_t* %.028, metadata !1358, metadata !DIExpression()), !dbg !1360
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.028, i64 0, i32 4, !dbg !1371
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !1371, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %11, metadata !1357, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata %struct.strand_t* %.028, metadata !1358, metadata !DIExpression()), !dbg !1360
  %.not9 = icmp eq %struct.strand_t* %11, null, !dbg !1363
  br i1 %.not9, label %.loopexit, label %.lr.ph, !dbg !1363, !llvm.loop !1372

.loopexit:                                        ; preds = %2, %9, %.lr.ph
  %.036 = phi %struct.strand_t* [ %.037, %.lr.ph ], [ null, %2 ], [ %.028, %9 ]
  %.01 = phi %struct.strand_t* [ %.028, %.lr.ph ], [ null, %2 ], [ null, %9 ], !dbg !1374
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1359, metadata !DIExpression()), !dbg !1360
  %12 = icmp eq %struct.strand_t* %.01, null, !dbg !1375
  br i1 %12, label %13, label %15, !dbg !1377

13:                                               ; preds = %.loopexit
  %14 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %1) #11, !dbg !1378
  br label %29, !dbg !1380

15:                                               ; preds = %.loopexit
  %16 = icmp eq %struct.strand_t* %.036, null, !dbg !1381
  br i1 %16, label %17, label %21, !dbg !1383

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 4, !dbg !1384
  %19 = load %struct.strand_t*, %struct.strand_t** %18, align 8, !dbg !1384, !tbaa !634
  %20 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1385
  store %struct.strand_t* %19, %struct.strand_t** %20, align 8, !dbg !1386, !tbaa !489
  br label %25, !dbg !1387

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 4, !dbg !1388
  %23 = load %struct.strand_t*, %struct.strand_t** %22, align 8, !dbg !1388, !tbaa !634
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.036, i64 0, i32 4, !dbg !1389
  store %struct.strand_t* %23, %struct.strand_t** %24, align 8, !dbg !1390, !tbaa !634
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !1391
  %27 = load i32, i32* %26, align 8, !dbg !1392, !tbaa !483
  %28 = add nsw i32 %27, -1, !dbg !1392
  store i32 %28, i32* %26, align 8, !dbg !1392, !tbaa !483
  br label %29, !dbg !1393

29:                                               ; preds = %13, %25
  ret void, !dbg !1393
}

; Function Attrs: nounwind uwtable
define dso_local void @upd_molnumbers(%struct.molecule_t* %0) #0 !dbg !1394 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1398, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1408
  %2 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1409
  %3 = load %struct.strand_t*, %struct.strand_t** %2, align 8, !dbg !1409, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1399, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1404, metadata !DIExpression()), !dbg !1408
  %.not = icmp eq %struct.strand_t* %3, null, !dbg !1411
  br i1 %.not, label %._crit_edge32, label %.lr.ph31, !dbg !1411

.lr.ph31:                                         ; preds = %1, %._crit_edge23
  %.029 = phi %struct.strand_t* [ %37, %._crit_edge23 ], [ %3, %1 ]
  %.0128 = phi i32 [ %35, %._crit_edge23 ], [ 0, %1 ]
  %.0527 = phi i32 [ %.16.lcssa, %._crit_edge23 ], [ 0, %1 ]
  %.0726 = phi i32 [ %.18.lcssa, %._crit_edge23 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.029, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.0128, metadata !1399, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.0527, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.0726, metadata !1404, metadata !DIExpression()), !dbg !1408
  %4 = add nuw nsw i32 %.0128, 1, !dbg !1412
  %5 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.029, i64 0, i32 1, !dbg !1415
  store i32 %4, i32* %5, align 8, !dbg !1416, !tbaa !758
  call void @llvm.dbg.value(metadata i32 0, metadata !1400, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 0, metadata !1401, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 0, metadata !1400, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.0527, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.0726, metadata !1404, metadata !DIExpression()), !dbg !1408
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.029, i64 0, i32 5, !dbg !1417
  %7 = load i32, i32* %6, align 8, !dbg !1417, !tbaa !646
  %8 = icmp sgt i32 %7, 0, !dbg !1420
  br i1 %8, label %.lr.ph22, label %._crit_edge23, !dbg !1421

.lr.ph22:                                         ; preds = %.lr.ph31, %._crit_edge
  %.0320 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.lr.ph31 ]
  %.1619 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0527, %.lr.ph31 ]
  %.1818 = phi i32 [ %31, %._crit_edge ], [ %.0726, %.lr.ph31 ]
  %indvars.iv1017 = phi i64 [ %indvars.iv.next11, %._crit_edge ], [ 0, %.lr.ph31 ]
  call void @llvm.dbg.value(metadata i32 %.0320, metadata !1401, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.1619, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.1818, metadata !1404, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %indvars.iv1017, metadata !1400, metadata !DIExpression()), !dbg !1408
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.029, i64 0, i32 7, !dbg !1422
  %10 = load %struct.residue_t**, %struct.residue_t*** %9, align 8, !dbg !1422, !tbaa !650
  %11 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %10, i64 %indvars.iv1017, !dbg !1424
  %12 = load %struct.residue_t*, %struct.residue_t** %11, align 8, !dbg !1424, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %12, metadata !1406, metadata !DIExpression()), !dbg !1408
  %13 = add nsw i32 %.1818, 1, !dbg !1425
  %14 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 2, !dbg !1426
  store i32 %13, i32* %14, align 4, !dbg !1427, !tbaa !1428
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv1017, 1, !dbg !1429
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 3, !dbg !1430
  %16 = trunc i64 %indvars.iv.next11 to i32, !dbg !1431
  store i32 %16, i32* %15, align 8, !dbg !1431, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 0, metadata !1402, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.0320, metadata !1401, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 0, metadata !1402, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.1619, metadata !1403, metadata !DIExpression()), !dbg !1408
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 15, !dbg !1433
  %18 = load i32, i32* %17, align 8, !dbg !1433, !tbaa !568
  %19 = icmp sgt i32 %18, 0, !dbg !1436
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !1437

.lr.ph:                                           ; preds = %.lr.ph22, %.lr.ph
  %.115 = phi i32 [ %27, %.lr.ph ], [ %.0320, %.lr.ph22 ]
  %.214 = phi i32 [ %26, %.lr.ph ], [ %.1619, %.lr.ph22 ]
  %indvars.iv13 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph22 ]
  call void @llvm.dbg.value(metadata i32 %.115, metadata !1401, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.214, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !1402, metadata !DIExpression()), !dbg !1408
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 17, !dbg !1438
  %21 = load %struct.atom_t*, %struct.atom_t** %20, align 8, !dbg !1438, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %21, i64 %indvars.iv13), metadata !1407, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1408
  %22 = add nsw i32 %.115, 1, !dbg !1440
  %23 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %indvars.iv13, i32 15, !dbg !1441
  store i32 %22, i32* %23, align 4, !dbg !1442, !tbaa !1443
  %24 = add nsw i32 %.214, 1, !dbg !1444
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i64 %indvars.iv13, i32 14, !dbg !1445
  store i32 %24, i32* %25, align 8, !dbg !1446, !tbaa !1447
  %indvars.iv.next = add nuw nsw i64 %indvars.iv13, 1, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1402, metadata !DIExpression()), !dbg !1408
  %26 = add nsw i32 %.214, 1, !dbg !1449
  call void @llvm.dbg.value(metadata i32 %26, metadata !1403, metadata !DIExpression()), !dbg !1408
  %27 = add nsw i32 %.115, 1, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %27, metadata !1401, metadata !DIExpression()), !dbg !1408
  %28 = load i32, i32* %17, align 8, !dbg !1433, !tbaa !568
  %29 = sext i32 %28 to i64, !dbg !1436
  %30 = icmp slt i64 %indvars.iv.next, %29, !dbg !1436
  br i1 %30, label %.lr.ph, label %._crit_edge, !dbg !1437, !llvm.loop !1451

._crit_edge:                                      ; preds = %.lr.ph22, %.lr.ph
  %.2.lcssa = phi i32 [ %.1619, %.lr.ph22 ], [ %26, %.lr.ph ], !dbg !1453
  %.1.lcssa = phi i32 [ %.0320, %.lr.ph22 ], [ %27, %.lr.ph ], !dbg !1454
  %31 = add nsw i32 %.1818, 1, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11, metadata !1400, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1401, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %31, metadata !1404, metadata !DIExpression()), !dbg !1408
  %32 = load i32, i32* %6, align 8, !dbg !1417, !tbaa !646
  %33 = sext i32 %32 to i64, !dbg !1420
  %34 = icmp slt i64 %indvars.iv.next11, %33, !dbg !1420
  br i1 %34, label %.lr.ph22, label %._crit_edge23, !dbg !1421, !llvm.loop !1456

._crit_edge23:                                    ; preds = %.lr.ph31, %._crit_edge
  %.18.lcssa = phi i32 [ %.0726, %.lr.ph31 ], [ %31, %._crit_edge ], !dbg !1453
  %.16.lcssa = phi i32 [ %.0527, %.lr.ph31 ], [ %.2.lcssa, %._crit_edge ], !dbg !1458
  %35 = add nuw nsw i32 %.0128, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i32 %35, metadata !1399, metadata !DIExpression()), !dbg !1408
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.029, i64 0, i32 4, !dbg !1460
  %37 = load %struct.strand_t*, %struct.strand_t** %36, align 8, !dbg !1460, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %37, metadata !1405, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !1403, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %.18.lcssa, metadata !1404, metadata !DIExpression()), !dbg !1408
  %.not36 = icmp eq %struct.strand_t* %37, null, !dbg !1411
  br i1 %.not36, label %._crit_edge32, label %.lr.ph31, !dbg !1411, !llvm.loop !1461

._crit_edge32:                                    ; preds = %._crit_edge23, %1
  %.07.lcssa = phi i32 [ 0, %1 ], [ %.18.lcssa, %._crit_edge23 ], !dbg !1463
  %.05.lcssa = phi i32 [ 0, %1 ], [ %.16.lcssa, %._crit_edge23 ], !dbg !1458
  %.01.lcssa = phi i32 [ 0, %1 ], [ %35, %._crit_edge23 ], !dbg !1453
  %38 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !1464
  store i32 %.01.lcssa, i32* %38, align 8, !dbg !1465, !tbaa !483
  %39 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !1466
  store i32 %.07.lcssa, i32* %39, align 8, !dbg !1467, !tbaa !492
  %40 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !1468
  store i32 %.05.lcssa, i32* %40, align 4, !dbg !1469, !tbaa !1470
  %41 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !1471
  store i32 1, i32* %41, align 8, !dbg !1472, !tbaa !495
  ret void, !dbg !1473
}

; Function Attrs: nounwind uwtable
define dso_local i32 @countmolstrands(%struct.molecule_t* %0, i8* %1) #0 !dbg !1474 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %1, metadata !1477, metadata !DIExpression()), !dbg !1480
  %3 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #11, !dbg !1481
  call void @llvm.dbg.value(metadata i32 0, metadata !1478, metadata !DIExpression()), !dbg !1480
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1482
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1482, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1479, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 0, metadata !1478, metadata !DIExpression()), !dbg !1480
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !1484
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1484

.lr.ph:                                           ; preds = %2, %.lr.ph
  %.03 = phi %struct.strand_t* [ %10, %.lr.ph ], [ %5, %2 ]
  %.012 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.03, metadata !1479, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %.012, metadata !1478, metadata !DIExpression()), !dbg !1480
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i64 0, i32 2, !dbg !1485
  %7 = load i32, i32* %6, align 4, !dbg !1485, !tbaa !761
  %8 = and i32 %7, 1, !dbg !1489
  %spec.select = add nuw nsw i32 %.012, %8, !dbg !1490
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1478, metadata !DIExpression()), !dbg !1480
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.03, i64 0, i32 4, !dbg !1491
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1491, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %10, metadata !1479, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1478, metadata !DIExpression()), !dbg !1480
  %.not5 = icmp eq %struct.strand_t* %10, null, !dbg !1484
  br i1 %.not5, label %._crit_edge, label %.lr.ph, !dbg !1484, !llvm.loop !1492

._crit_edge:                                      ; preds = %.lr.ph, %2
  %.01.lcssa = phi i32 [ 0, %2 ], [ %spec.select, %.lr.ph ], !dbg !1494
  ret i32 %.01.lcssa, !dbg !1495
}

declare !dbg !253 dso_local i32 @select_atoms(%struct.molecule_t*, i8*) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @countstrandresidues(%struct.molecule_t* %0, i32 %1) #0 !dbg !1496 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1500, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 %1, metadata !1501, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 1, metadata !1503, metadata !DIExpression()), !dbg !1504
  %3 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1505
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1502, metadata !DIExpression()), !dbg !1504
  br label %4, !dbg !1507

4:                                                ; preds = %7, %2
  %.01.in = phi %struct.strand_t** [ %3, %2 ], [ %9, %7 ]
  %.0 = phi i32 [ 1, %2 ], [ %8, %7 ], !dbg !1508
  %.01 = load %struct.strand_t*, %struct.strand_t** %.01.in, align 8, !dbg !1508, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1503, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1502, metadata !DIExpression()), !dbg !1504
  %5 = icmp ne %struct.strand_t* %.01, null, !dbg !1509
  %6 = icmp slt i32 %.0, %1
  %spec.select = select i1 %5, i1 %6, i1 false, !dbg !1511
  br i1 %spec.select, label %7, label %10, !dbg !1512

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %.0, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i32 %8, metadata !1503, metadata !DIExpression()), !dbg !1504
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 4, !dbg !1515
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1502, metadata !DIExpression()), !dbg !1504
  br label %4, !dbg !1516, !llvm.loop !1517

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1519
  %12 = load i32, i32* %11, align 8, !dbg !1519, !tbaa !646
  ret i32 %12, !dbg !1520
}

; Function Attrs: nounwind uwtable
define dso_local i32 @countmolres(%struct.molecule_t* %0, i8* %1) #0 !dbg !1521 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1523, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i8* %1, metadata !1524, metadata !DIExpression()), !dbg !1529
  %3 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #11, !dbg !1530
  call void @llvm.dbg.value(metadata i32 0, metadata !1526, metadata !DIExpression()), !dbg !1529
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1531
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1531, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1527, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i32 0, metadata !1526, metadata !DIExpression()), !dbg !1529
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !1533
  br i1 %.not, label %._crit_edge10, label %.lr.ph9, !dbg !1533

.lr.ph9:                                          ; preds = %2, %._crit_edge
  %.07 = phi %struct.strand_t* [ %20, %._crit_edge ], [ %5, %2 ]
  %.016 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.07, metadata !1527, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i32 %.016, metadata !1526, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i32 0, metadata !1525, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i32 %.016, metadata !1526, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 0, metadata !1525, metadata !DIExpression()), !dbg !1529
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.07, i64 0, i32 5, !dbg !1534
  %7 = load i32, i32* %6, align 8, !dbg !1534, !tbaa !646
  %8 = icmp sgt i32 %7, 0, !dbg !1539
  br i1 %8, label %.lr.ph, label %._crit_edge, !dbg !1540

.lr.ph:                                           ; preds = %.lr.ph9, %.lr.ph
  %.15 = phi i32 [ %spec.select, %.lr.ph ], [ %.016, %.lr.ph9 ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph9 ]
  call void @llvm.dbg.value(metadata i32 %.15, metadata !1526, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !1525, metadata !DIExpression()), !dbg !1529
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.07, i64 0, i32 7, !dbg !1541
  %10 = load %struct.residue_t**, %struct.residue_t*** %9, align 8, !dbg !1541, !tbaa !650
  %11 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %10, i64 %indvars.iv4, !dbg !1543
  %12 = load %struct.residue_t*, %struct.residue_t** %11, align 8, !dbg !1543, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %12, metadata !1528, metadata !DIExpression()), !dbg !1529
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 6, !dbg !1544
  %14 = load i32, i32* %13, align 8, !dbg !1544, !tbaa !1546
  %15 = and i32 %14, 1, !dbg !1547
  %spec.select = add nsw i32 %.15, %15, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1526, metadata !DIExpression()), !dbg !1529
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1526, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1525, metadata !DIExpression()), !dbg !1529
  %16 = load i32, i32* %6, align 8, !dbg !1534, !tbaa !646
  %17 = sext i32 %16 to i64, !dbg !1539
  %18 = icmp slt i64 %indvars.iv.next, %17, !dbg !1539
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !1540, !llvm.loop !1550

._crit_edge:                                      ; preds = %.lr.ph9, %.lr.ph
  %.1.lcssa = phi i32 [ %.016, %.lr.ph9 ], [ %spec.select, %.lr.ph ], !dbg !1552
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.07, i64 0, i32 4, !dbg !1553
  %20 = load %struct.strand_t*, %struct.strand_t** %19, align 8, !dbg !1553, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %20, metadata !1527, metadata !DIExpression()), !dbg !1529
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1526, metadata !DIExpression()), !dbg !1529
  %.not12 = icmp eq %struct.strand_t* %20, null, !dbg !1533
  br i1 %.not12, label %._crit_edge10, label %.lr.ph9, !dbg !1533, !llvm.loop !1554

._crit_edge10:                                    ; preds = %._crit_edge, %2
  %.01.lcssa = phi i32 [ 0, %2 ], [ %.1.lcssa, %._crit_edge ], !dbg !1556
  ret i32 %.01.lcssa, !dbg !1557
}

; Function Attrs: nounwind uwtable
define dso_local i32 @countmolatoms(%struct.molecule_t* %0, i8* %1) #0 !dbg !1558 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1560, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8* %1, metadata !1561, metadata !DIExpression()), !dbg !1568
  %3 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #11, !dbg !1569
  call void @llvm.dbg.value(metadata i32 0, metadata !1564, metadata !DIExpression()), !dbg !1568
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1570
  %5 = load %struct.strand_t*, %struct.strand_t** %4, align 8, !dbg !1570, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %5, metadata !1565, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 0, metadata !1564, metadata !DIExpression()), !dbg !1568
  %.not = icmp eq %struct.strand_t* %5, null, !dbg !1572
  br i1 %.not, label %._crit_edge20, label %.lr.ph19, !dbg !1572

.lr.ph19:                                         ; preds = %2, %._crit_edge14
  %.017 = phi %struct.strand_t* [ %28, %._crit_edge14 ], [ %5, %2 ]
  %.0116 = phi i32 [ %.1.lcssa, %._crit_edge14 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.017, metadata !1565, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 0, metadata !1562, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 0, metadata !1562, metadata !DIExpression()), !dbg !1568
  %6 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 5, !dbg !1573
  %7 = load i32, i32* %6, align 8, !dbg !1573, !tbaa !646
  %8 = icmp sgt i32 %7, 0, !dbg !1578
  br i1 %8, label %.lr.ph13, label %._crit_edge14, !dbg !1579

.lr.ph13:                                         ; preds = %.lr.ph19, %._crit_edge
  %.111 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0116, %.lr.ph19 ]
  %indvars.iv510 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 0, %.lr.ph19 ]
  call void @llvm.dbg.value(metadata i32 %.111, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %indvars.iv510, metadata !1562, metadata !DIExpression()), !dbg !1568
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 7, !dbg !1580
  %10 = load %struct.residue_t**, %struct.residue_t*** %9, align 8, !dbg !1580, !tbaa !650
  %11 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %10, i64 %indvars.iv510, !dbg !1582
  %12 = load %struct.residue_t*, %struct.residue_t** %11, align 8, !dbg !1582, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %12, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 0, metadata !1563, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %.111, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 0, metadata !1563, metadata !DIExpression()), !dbg !1568
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 15, !dbg !1583
  %14 = load i32, i32* %13, align 8, !dbg !1583, !tbaa !568
  %15 = icmp sgt i32 %14, 0, !dbg !1586
  br i1 %15, label %.lr.ph, label %._crit_edge, !dbg !1587

.lr.ph:                                           ; preds = %.lr.ph13, %.lr.ph
  %.29 = phi i32 [ %spec.select, %.lr.ph ], [ %.111, %.lr.ph13 ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph13 ]
  call void @llvm.dbg.value(metadata i32 %.29, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !1563, metadata !DIExpression()), !dbg !1568
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 17, !dbg !1588
  %17 = load %struct.atom_t*, %struct.atom_t** %16, align 8, !dbg !1588, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %17, i64 %indvars.iv8), metadata !1567, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1568
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %indvars.iv8, i32 2, !dbg !1590
  %19 = load i32, i32* %18, align 8, !dbg !1590, !tbaa !1592
  %20 = and i32 %19, 1, !dbg !1593
  %spec.select = add nsw i32 %.29, %20, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1564, metadata !DIExpression()), !dbg !1568
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1563, metadata !DIExpression()), !dbg !1568
  %21 = load i32, i32* %13, align 8, !dbg !1583, !tbaa !568
  %22 = sext i32 %21 to i64, !dbg !1586
  %23 = icmp slt i64 %indvars.iv.next, %22, !dbg !1586
  br i1 %23, label %.lr.ph, label %._crit_edge, !dbg !1587, !llvm.loop !1596

._crit_edge:                                      ; preds = %.lr.ph13, %.lr.ph
  %.2.lcssa = phi i32 [ %.111, %.lr.ph13 ], [ %spec.select, %.lr.ph ], !dbg !1598
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv510, 1, !dbg !1599
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !1562, metadata !DIExpression()), !dbg !1568
  %24 = load i32, i32* %6, align 8, !dbg !1573, !tbaa !646
  %25 = sext i32 %24 to i64, !dbg !1578
  %26 = icmp slt i64 %indvars.iv.next6, %25, !dbg !1578
  br i1 %26, label %.lr.ph13, label %._crit_edge14, !dbg !1579, !llvm.loop !1600

._crit_edge14:                                    ; preds = %.lr.ph19, %._crit_edge
  %.1.lcssa = phi i32 [ %.0116, %.lr.ph19 ], [ %.2.lcssa, %._crit_edge ], !dbg !1602
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 4, !dbg !1603
  %28 = load %struct.strand_t*, %struct.strand_t** %27, align 8, !dbg !1603, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %28, metadata !1565, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1568
  %.not22 = icmp eq %struct.strand_t* %28, null, !dbg !1572
  br i1 %.not22, label %._crit_edge20, label %.lr.ph19, !dbg !1572, !llvm.loop !1604

._crit_edge20:                                    ; preds = %._crit_edge14, %2
  %.01.lcssa = phi i32 [ 0, %2 ], [ %.1.lcssa, %._crit_edge14 ], !dbg !1602
  ret i32 %.01.lcssa, !dbg !1606
}

; Function Attrs: nounwind uwtable
define dso_local double @dist(%struct.molecule_t* %0, i8* %1, i8* %2) #0 !dbg !1607 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1611, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8* %1, metadata !1612, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8* %2, metadata !1613, metadata !DIExpression()), !dbg !1616
  %6 = bitcast [3 x double]* %4 to i8*, !dbg !1617
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !1617
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !1614, metadata !DIExpression()), !dbg !1618
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !1617
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #11, !dbg !1617
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !1615, metadata !DIExpression()), !dbg !1619
  %8 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !1620
  %9 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* nonnull %8) #11, !dbg !1621
  %10 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !1622
  %11 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* nonnull %10) #11, !dbg !1623
  %12 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !1624
  %13 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !1625
  %14 = call double @distp(double* nonnull %12, double* nonnull %13), !dbg !1626
  %15 = bitcast [3 x double]* %5 to i8*, !dbg !1627
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #11, !dbg !1627
  %16 = bitcast [3 x double]* %4 to i8*, !dbg !1627
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #11, !dbg !1627
  ret double %14, !dbg !1628
}

declare !dbg !256 dso_local i32 @setpoint(%struct.molecule_t*, i8*, double*) #4

; Function Attrs: nounwind uwtable
define dso_local double @distp(double* %0, double* %1) #0 !dbg !1629 {
  call void @llvm.dbg.value(metadata double* %0, metadata !1631, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata double* %1, metadata !1632, metadata !DIExpression()), !dbg !1636
  %3 = load double, double* %0, align 8, !dbg !1637, !tbaa !455
  %4 = load double, double* %1, align 8, !dbg !1638, !tbaa !455
  %5 = fsub double %3, %4, !dbg !1639
  call void @llvm.dbg.value(metadata double %5, metadata !1633, metadata !DIExpression()), !dbg !1636
  %6 = getelementptr inbounds double, double* %0, i64 1, !dbg !1640
  %7 = load double, double* %6, align 8, !dbg !1640, !tbaa !455
  %8 = getelementptr inbounds double, double* %1, i64 1, !dbg !1641
  %9 = load double, double* %8, align 8, !dbg !1641, !tbaa !455
  %10 = fsub double %7, %9, !dbg !1642
  call void @llvm.dbg.value(metadata double %10, metadata !1634, metadata !DIExpression()), !dbg !1636
  %11 = getelementptr inbounds double, double* %0, i64 2, !dbg !1643
  %12 = load double, double* %11, align 8, !dbg !1643, !tbaa !455
  %13 = getelementptr inbounds double, double* %1, i64 2, !dbg !1644
  %14 = load double, double* %13, align 8, !dbg !1644, !tbaa !455
  %15 = fsub double %12, %14, !dbg !1645
  call void @llvm.dbg.value(metadata double %15, metadata !1635, metadata !DIExpression()), !dbg !1636
  %16 = fmul double %5, %5, !dbg !1646
  %17 = fmul double %10, %10, !dbg !1647
  %18 = fadd double %16, %17, !dbg !1648
  %19 = fmul double %15, %15, !dbg !1649
  %20 = fadd double %18, %19, !dbg !1650
  %21 = call double @sqrt(double %20) #11, !dbg !1651
  ret double %21, !dbg !1652
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define dso_local double @angle(%struct.molecule_t* %0, i8* %1, i8* %2, i8* %3) #0 !dbg !1653 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1657, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8* %1, metadata !1658, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8* %2, metadata !1659, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8* %3, metadata !1660, metadata !DIExpression()), !dbg !1664
  %8 = bitcast [3 x double]* %5 to i8*, !dbg !1665
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #11, !dbg !1665
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !1661, metadata !DIExpression()), !dbg !1666
  %9 = bitcast [3 x double]* %6 to i8*, !dbg !1665
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #11, !dbg !1665
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !1662, metadata !DIExpression()), !dbg !1667
  %10 = bitcast [3 x double]* %7 to i8*, !dbg !1665
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #11, !dbg !1665
  call void @llvm.dbg.declare(metadata [3 x double]* %7, metadata !1663, metadata !DIExpression()), !dbg !1668
  %11 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !1669
  %12 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* nonnull %11) #11, !dbg !1670
  %13 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1671
  %14 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* nonnull %13) #11, !dbg !1672
  %15 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !1673
  %16 = call i32 @setpoint(%struct.molecule_t* %0, i8* %3, double* nonnull %15) #11, !dbg !1674
  %17 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !1675
  %18 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1676
  %19 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !1677
  %20 = call double @anglep(double* nonnull %17, double* nonnull %18, double* nonnull %19), !dbg !1678
  %21 = bitcast [3 x double]* %7 to i8*, !dbg !1679
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21) #11, !dbg !1679
  %22 = bitcast [3 x double]* %6 to i8*, !dbg !1679
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %22) #11, !dbg !1679
  %23 = bitcast [3 x double]* %5 to i8*, !dbg !1679
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #11, !dbg !1679
  ret double %20, !dbg !1680
}

; Function Attrs: nounwind uwtable
define dso_local double @anglep(double* %0, double* %1, double* %2) #0 !dbg !1681 {
  call void @llvm.dbg.value(metadata double* %0, metadata !1683, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata double* %1, metadata !1684, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata double* %2, metadata !1685, metadata !DIExpression()), !dbg !1695
  %4 = load double, double* %0, align 8, !dbg !1696, !tbaa !455
  %5 = load double, double* %1, align 8, !dbg !1697, !tbaa !455
  %6 = fsub double %4, %5, !dbg !1698
  call void @llvm.dbg.value(metadata double %6, metadata !1686, metadata !DIExpression()), !dbg !1695
  %7 = getelementptr inbounds double, double* %0, i64 1, !dbg !1699
  %8 = load double, double* %7, align 8, !dbg !1699, !tbaa !455
  %9 = getelementptr inbounds double, double* %1, i64 1, !dbg !1700
  %10 = load double, double* %9, align 8, !dbg !1700, !tbaa !455
  %11 = fsub double %8, %10, !dbg !1701
  call void @llvm.dbg.value(metadata double %11, metadata !1688, metadata !DIExpression()), !dbg !1695
  %12 = getelementptr inbounds double, double* %0, i64 2, !dbg !1702
  %13 = load double, double* %12, align 8, !dbg !1702, !tbaa !455
  %14 = getelementptr inbounds double, double* %1, i64 2, !dbg !1703
  %15 = load double, double* %14, align 8, !dbg !1703, !tbaa !455
  %16 = fsub double %13, %15, !dbg !1704
  call void @llvm.dbg.value(metadata double %16, metadata !1690, metadata !DIExpression()), !dbg !1695
  %17 = load double, double* %2, align 8, !dbg !1705, !tbaa !455
  %18 = load double, double* %1, align 8, !dbg !1706, !tbaa !455
  %19 = fsub double %17, %18, !dbg !1707
  call void @llvm.dbg.value(metadata double %19, metadata !1687, metadata !DIExpression()), !dbg !1695
  %20 = getelementptr inbounds double, double* %2, i64 1, !dbg !1708
  %21 = load double, double* %20, align 8, !dbg !1708, !tbaa !455
  %22 = getelementptr inbounds double, double* %1, i64 1, !dbg !1709
  %23 = load double, double* %22, align 8, !dbg !1709, !tbaa !455
  %24 = fsub double %21, %23, !dbg !1710
  call void @llvm.dbg.value(metadata double %24, metadata !1689, metadata !DIExpression()), !dbg !1695
  %25 = getelementptr inbounds double, double* %2, i64 2, !dbg !1711
  %26 = load double, double* %25, align 8, !dbg !1711, !tbaa !455
  %27 = getelementptr inbounds double, double* %1, i64 2, !dbg !1712
  %28 = load double, double* %27, align 8, !dbg !1712, !tbaa !455
  %29 = fsub double %26, %28, !dbg !1713
  call void @llvm.dbg.value(metadata double %29, metadata !1691, metadata !DIExpression()), !dbg !1695
  %30 = fmul double %6, %6, !dbg !1714
  %31 = fmul double %11, %11, !dbg !1715
  %32 = fadd double %30, %31, !dbg !1716
  %33 = fmul double %16, %16, !dbg !1717
  %34 = fadd double %32, %33, !dbg !1718
  %35 = call double @sqrt(double %34) #11, !dbg !1719
  call void @llvm.dbg.value(metadata double %35, metadata !1692, metadata !DIExpression()), !dbg !1695
  %36 = fmul double %19, %19, !dbg !1720
  %37 = fmul double %24, %24, !dbg !1721
  %38 = fadd double %36, %37, !dbg !1722
  %39 = fmul double %29, %29, !dbg !1723
  %40 = fadd double %38, %39, !dbg !1724
  %41 = call double @sqrt(double %40) #11, !dbg !1725
  call void @llvm.dbg.value(metadata double %41, metadata !1693, metadata !DIExpression()), !dbg !1695
  %42 = fcmp oeq double %35, 0.000000e+00, !dbg !1726
  br i1 %42, label %43, label %46, !dbg !1728

43:                                               ; preds = %3
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1729, !tbaa !652
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %44) #14, !dbg !1731
  br label %61, !dbg !1732

46:                                               ; preds = %3
  %47 = fcmp oeq double %41, 0.000000e+00, !dbg !1733
  br i1 %47, label %48, label %51, !dbg !1735

48:                                               ; preds = %46
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1736, !tbaa !652
  %50 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %49) #14, !dbg !1738
  br label %61, !dbg !1739

51:                                               ; preds = %46
  %52 = fmul double %6, %19, !dbg !1740
  %53 = fmul double %11, %24, !dbg !1741
  %54 = fadd double %52, %53, !dbg !1742
  %55 = fmul double %16, %29, !dbg !1743
  %56 = fadd double %54, %55, !dbg !1744
  call void @llvm.dbg.value(metadata double %56, metadata !1694, metadata !DIExpression()), !dbg !1695
  %57 = fmul double %35, %41, !dbg !1745
  %58 = fdiv double %56, %57, !dbg !1746
  %59 = call double @acos(double %58) #11, !dbg !1747
  %60 = fmul double %59, 0x404CA5DC1A63C1F8, !dbg !1748
  br label %61, !dbg !1749

61:                                               ; preds = %51, %48, %43
  %.0 = phi double [ 0.000000e+00, %43 ], [ 0.000000e+00, %48 ], [ %60, %51 ], !dbg !1695
  ret double %.0, !dbg !1750
}

; Function Attrs: nounwind
declare dso_local double @acos(double) #3

; Function Attrs: nounwind uwtable
define dso_local double @torsion(%struct.molecule_t* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 !dbg !1751 {
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1755, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8* %1, metadata !1756, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8* %2, metadata !1757, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8* %3, metadata !1758, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8* %4, metadata !1759, metadata !DIExpression()), !dbg !1764
  %10 = bitcast [3 x double]* %6 to i8*, !dbg !1765
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #11, !dbg !1765
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !1760, metadata !DIExpression()), !dbg !1766
  %11 = bitcast [3 x double]* %7 to i8*, !dbg !1765
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #11, !dbg !1765
  call void @llvm.dbg.declare(metadata [3 x double]* %7, metadata !1761, metadata !DIExpression()), !dbg !1767
  %12 = bitcast [3 x double]* %8 to i8*, !dbg !1765
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #11, !dbg !1765
  call void @llvm.dbg.declare(metadata [3 x double]* %8, metadata !1762, metadata !DIExpression()), !dbg !1768
  %13 = bitcast [3 x double]* %9 to i8*, !dbg !1765
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #11, !dbg !1765
  call void @llvm.dbg.declare(metadata [3 x double]* %9, metadata !1763, metadata !DIExpression()), !dbg !1769
  %14 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1770
  %15 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* nonnull %14) #11, !dbg !1771
  %16 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !1772
  %17 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* nonnull %16) #11, !dbg !1773
  %18 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0, !dbg !1774
  %19 = call i32 @setpoint(%struct.molecule_t* %0, i8* %3, double* nonnull %18) #11, !dbg !1775
  %20 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0, !dbg !1776
  %21 = call i32 @setpoint(%struct.molecule_t* %0, i8* %4, double* nonnull %20) #11, !dbg !1777
  %22 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1778
  %23 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !1779
  %24 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0, !dbg !1780
  %25 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0, !dbg !1781
  %26 = call double @torsionp(double* nonnull %22, double* nonnull %23, double* nonnull %24, double* nonnull %25), !dbg !1782
  %27 = bitcast [3 x double]* %9 to i8*, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %27) #11, !dbg !1783
  %28 = bitcast [3 x double]* %8 to i8*, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #11, !dbg !1783
  %29 = bitcast [3 x double]* %7 to i8*, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %29) #11, !dbg !1783
  %30 = bitcast [3 x double]* %6 to i8*, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30) #11, !dbg !1783
  ret double %26, !dbg !1784
}

; Function Attrs: nounwind uwtable
define dso_local double @torsionp(double* %0, double* %1, double* %2, double* %3) #0 !dbg !1785 {
  call void @llvm.dbg.value(metadata double* %0, metadata !1787, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata double* %1, metadata !1788, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata double* %2, metadata !1789, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata double* %3, metadata !1790, metadata !DIExpression()), !dbg !1812
  %5 = load double, double* %0, align 8, !dbg !1813, !tbaa !455
  %6 = load double, double* %1, align 8, !dbg !1814, !tbaa !455
  %7 = fsub double %5, %6, !dbg !1815
  call void @llvm.dbg.value(metadata double %7, metadata !1791, metadata !DIExpression()), !dbg !1812
  %8 = getelementptr inbounds double, double* %0, i64 1, !dbg !1816
  %9 = load double, double* %8, align 8, !dbg !1816, !tbaa !455
  %10 = getelementptr inbounds double, double* %1, i64 1, !dbg !1817
  %11 = load double, double* %10, align 8, !dbg !1817, !tbaa !455
  %12 = fsub double %9, %11, !dbg !1818
  call void @llvm.dbg.value(metadata double %12, metadata !1792, metadata !DIExpression()), !dbg !1812
  %13 = getelementptr inbounds double, double* %0, i64 2, !dbg !1819
  %14 = load double, double* %13, align 8, !dbg !1819, !tbaa !455
  %15 = getelementptr inbounds double, double* %1, i64 2, !dbg !1820
  %16 = load double, double* %15, align 8, !dbg !1820, !tbaa !455
  %17 = fsub double %14, %16, !dbg !1821
  call void @llvm.dbg.value(metadata double %17, metadata !1793, metadata !DIExpression()), !dbg !1812
  %18 = load double, double* %2, align 8, !dbg !1822, !tbaa !455
  %19 = load double, double* %1, align 8, !dbg !1823, !tbaa !455
  %20 = fsub double %18, %19, !dbg !1824
  call void @llvm.dbg.value(metadata double %20, metadata !1794, metadata !DIExpression()), !dbg !1812
  %21 = getelementptr inbounds double, double* %2, i64 1, !dbg !1825
  %22 = load double, double* %21, align 8, !dbg !1825, !tbaa !455
  %23 = getelementptr inbounds double, double* %1, i64 1, !dbg !1826
  %24 = load double, double* %23, align 8, !dbg !1826, !tbaa !455
  %25 = fsub double %22, %24, !dbg !1827
  call void @llvm.dbg.value(metadata double %25, metadata !1795, metadata !DIExpression()), !dbg !1812
  %26 = getelementptr inbounds double, double* %2, i64 2, !dbg !1828
  %27 = load double, double* %26, align 8, !dbg !1828, !tbaa !455
  %28 = getelementptr inbounds double, double* %1, i64 2, !dbg !1829
  %29 = load double, double* %28, align 8, !dbg !1829, !tbaa !455
  %30 = fsub double %27, %29, !dbg !1830
  call void @llvm.dbg.value(metadata double %30, metadata !1796, metadata !DIExpression()), !dbg !1812
  %31 = load double, double* %2, align 8, !dbg !1831, !tbaa !455
  %32 = load double, double* %3, align 8, !dbg !1832, !tbaa !455
  %33 = fsub double %31, %32, !dbg !1833
  call void @llvm.dbg.value(metadata double %33, metadata !1797, metadata !DIExpression()), !dbg !1812
  %34 = getelementptr inbounds double, double* %2, i64 1, !dbg !1834
  %35 = load double, double* %34, align 8, !dbg !1834, !tbaa !455
  %36 = getelementptr inbounds double, double* %3, i64 1, !dbg !1835
  %37 = load double, double* %36, align 8, !dbg !1835, !tbaa !455
  %38 = fsub double %35, %37, !dbg !1836
  call void @llvm.dbg.value(metadata double %38, metadata !1798, metadata !DIExpression()), !dbg !1812
  %39 = getelementptr inbounds double, double* %2, i64 2, !dbg !1837
  %40 = load double, double* %39, align 8, !dbg !1837, !tbaa !455
  %41 = getelementptr inbounds double, double* %3, i64 2, !dbg !1838
  %42 = load double, double* %41, align 8, !dbg !1838, !tbaa !455
  %43 = fsub double %40, %42, !dbg !1839
  call void @llvm.dbg.value(metadata double %43, metadata !1799, metadata !DIExpression()), !dbg !1812
  %44 = fmul double %12, %30, !dbg !1840
  %45 = fmul double %17, %25, !dbg !1841
  %46 = fsub double %44, %45, !dbg !1842
  call void @llvm.dbg.value(metadata double %46, metadata !1800, metadata !DIExpression()), !dbg !1812
  %47 = fmul double %17, %20, !dbg !1843
  %48 = fmul double %7, %30, !dbg !1844
  %49 = fsub double %47, %48, !dbg !1845
  call void @llvm.dbg.value(metadata double %49, metadata !1801, metadata !DIExpression()), !dbg !1812
  %50 = fmul double %7, %25, !dbg !1846
  %51 = fmul double %12, %20, !dbg !1847
  %52 = fsub double %50, %51, !dbg !1848
  call void @llvm.dbg.value(metadata double %52, metadata !1802, metadata !DIExpression()), !dbg !1812
  %53 = fmul double %30, %38, !dbg !1849
  %54 = fmul double %25, %43, !dbg !1850
  %55 = fsub double %53, %54, !dbg !1851
  call void @llvm.dbg.value(metadata double %55, metadata !1803, metadata !DIExpression()), !dbg !1812
  %56 = fmul double %20, %43, !dbg !1852
  %57 = fmul double %30, %33, !dbg !1853
  %58 = fsub double %56, %57, !dbg !1854
  call void @llvm.dbg.value(metadata double %58, metadata !1804, metadata !DIExpression()), !dbg !1812
  %59 = fmul double %25, %33, !dbg !1855
  %60 = fmul double %20, %38, !dbg !1856
  %61 = fsub double %59, %60, !dbg !1857
  call void @llvm.dbg.value(metadata double %61, metadata !1805, metadata !DIExpression()), !dbg !1812
  %62 = fmul double %46, %46, !dbg !1858
  %63 = fmul double %49, %49, !dbg !1859
  %64 = fadd double %62, %63, !dbg !1860
  %65 = fmul double %52, %52, !dbg !1861
  %66 = fadd double %64, %65, !dbg !1862
  call void @llvm.dbg.value(metadata double %66, metadata !1806, metadata !DIExpression()), !dbg !1812
  %67 = fmul double %55, %55, !dbg !1863
  %68 = fmul double %58, %58, !dbg !1864
  %69 = fadd double %67, %68, !dbg !1865
  %70 = fmul double %61, %61, !dbg !1866
  %71 = fadd double %69, %70, !dbg !1867
  call void @llvm.dbg.value(metadata double %71, metadata !1807, metadata !DIExpression()), !dbg !1812
  %72 = fmul double %46, %55, !dbg !1868
  %73 = fmul double %49, %58, !dbg !1869
  %74 = fadd double %72, %73, !dbg !1870
  %75 = fmul double %52, %61, !dbg !1871
  %76 = fadd double %74, %75, !dbg !1872
  call void @llvm.dbg.value(metadata double %76, metadata !1808, metadata !DIExpression()), !dbg !1812
  %77 = fmul double %66, %71, !dbg !1873
  %78 = call double @sqrt(double %77) #11, !dbg !1874
  %79 = fdiv double %76, %78, !dbg !1875
  call void @llvm.dbg.value(metadata double %79, metadata !1808, metadata !DIExpression()), !dbg !1812
  %80 = fcmp olt double %79, -1.000000e+00, !dbg !1876
  %81 = fcmp ogt double %79, 1.000000e+00, !dbg !1878
  %.02 = select i1 %81, double 1.000000e+00, double %79, !dbg !1878
  %.1 = select i1 %80, double -1.000000e+00, double %.02, !dbg !1878
  call void @llvm.dbg.value(metadata double %.1, metadata !1808, metadata !DIExpression()), !dbg !1812
  %82 = call double @acos(double %.1) #11, !dbg !1879
  call void @llvm.dbg.value(metadata double %82, metadata !1810, metadata !DIExpression()), !dbg !1812
  %83 = fmul double %52, %58, !dbg !1880
  %84 = fmul double %49, %61, !dbg !1881
  %85 = fsub double %83, %84, !dbg !1882
  %86 = fmul double %20, %85, !dbg !1883
  %87 = fmul double %46, %61, !dbg !1884
  %88 = fmul double %52, %55, !dbg !1885
  %89 = fsub double %87, %88, !dbg !1886
  %90 = fmul double %25, %89, !dbg !1887
  %91 = fadd double %86, %90, !dbg !1888
  %92 = fmul double %49, %55, !dbg !1889
  %93 = fmul double %46, %58, !dbg !1890
  %94 = fsub double %92, %93, !dbg !1891
  %95 = fmul double %30, %94, !dbg !1892
  %96 = fadd double %91, %95, !dbg !1893
  call void @llvm.dbg.value(metadata double %96, metadata !1809, metadata !DIExpression()), !dbg !1812
  %97 = fcmp olt double %96, 0.000000e+00, !dbg !1894
  %98 = fneg double %82, !dbg !1896
  %.01 = select i1 %97, double %98, double %82, !dbg !1896
  call void @llvm.dbg.value(metadata double %.01, metadata !1810, metadata !DIExpression()), !dbg !1812
  %99 = fsub double 0x400921FB54442D18, %.01, !dbg !1897
  call void @llvm.dbg.value(metadata double %99, metadata !1810, metadata !DIExpression()), !dbg !1812
  %100 = fmul double %99, 1.800000e+02, !dbg !1898
  %101 = fdiv double %100, 0x400921FB54442D18, !dbg !1899
  call void @llvm.dbg.value(metadata double %101, metadata !1811, metadata !DIExpression()), !dbg !1812
  %102 = fcmp ogt double %101, 1.800000e+02, !dbg !1900
  %103 = fadd double %101, -3.600000e+02, !dbg !1902
  %.0 = select i1 %102, double %103, double %101, !dbg !1902
  call void @llvm.dbg.value(metadata double %.0, metadata !1811, metadata !DIExpression()), !dbg !1812
  ret double %.0, !dbg !1903
}

; Function Attrs: nounwind uwtable
define dso_local i8* @getresname(%struct.residue_t* %0) #0 !dbg !345 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !349, metadata !DIExpression()), !dbg !1904
  %2 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #11, !dbg !1905
  store i8* %2, i8** @getresname.rname, align 8, !dbg !1907, !tbaa !652
  %3 = icmp eq i8* %2, null, !dbg !1908
  br i1 %3, label %10, label %4, !dbg !1909

4:                                                ; preds = %1
  %5 = load i8*, i8** @getresname.rname, align 8, !dbg !1910, !tbaa !652
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !1911
  %7 = load i8*, i8** %6, align 8, !dbg !1911, !tbaa !516
  %8 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) %7) #11, !dbg !1912
  %9 = load i8*, i8** @getresname.rname, align 8, !dbg !1913, !tbaa !652
  br label %10, !dbg !1914

10:                                               ; preds = %1, %4
  %.0 = phi i8* [ %9, %4 ], [ null, %1 ], !dbg !1904
  ret i8* %.0, !dbg !1915
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cap(%struct.molecule_t* %0, i8* %1, i32 %2, i32 %3) #0 !dbg !1916 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !1920, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8* %1, metadata !1921, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %2, metadata !1922, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %3, metadata !1923, metadata !DIExpression()), !dbg !1925
  %5 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #11, !dbg !1926
  %6 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !1927
  %7 = load %struct.strand_t*, %struct.strand_t** %6, align 8, !dbg !1927, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %7, metadata !1924, metadata !DIExpression()), !dbg !1925
  %.not = icmp eq %struct.strand_t* %7, null, !dbg !1929
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1929

.lr.ph:                                           ; preds = %4, %30
  %.01 = phi %struct.strand_t* [ %32, %30 ], [ %7, %4 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !1924, metadata !DIExpression()), !dbg !1925
  %8 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1930
  %9 = load i32, i32* %8, align 8, !dbg !1930, !tbaa !646
  %10 = icmp sgt i32 %9, 0, !dbg !1934
  br i1 %10, label %11, label %30, !dbg !1935

11:                                               ; preds = %.lr.ph
  %12 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 2, !dbg !1936
  %13 = load i32, i32* %12, align 4, !dbg !1936, !tbaa !761
  %14 = and i32 %13, 1, !dbg !1937
  %.not3 = icmp eq i32 %14, 0, !dbg !1937
  br i1 %.not3, label %30, label %15, !dbg !1938

15:                                               ; preds = %11
  %.not4 = icmp eq i32 %2, 0, !dbg !1939
  br i1 %.not4, label %20, label %16, !dbg !1942

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 7, !dbg !1943
  %18 = load %struct.residue_t**, %struct.residue_t*** %17, align 8, !dbg !1943, !tbaa !650
  %19 = load %struct.residue_t*, %struct.residue_t** %18, align 8, !dbg !1944, !tbaa !652
  call void @cvt_p2hb(%struct.residue_t* %19), !dbg !1945
  br label %20, !dbg !1945

20:                                               ; preds = %16, %15
  %.not5 = icmp eq i32 %3, 0, !dbg !1946
  br i1 %.not5, label %30, label %21, !dbg !1948

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 7, !dbg !1949
  %23 = load %struct.residue_t**, %struct.residue_t*** %22, align 8, !dbg !1949, !tbaa !650
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 5, !dbg !1950
  %25 = load i32, i32* %24, align 8, !dbg !1950, !tbaa !646
  %26 = add nsw i32 %25, -1, !dbg !1951
  %27 = sext i32 %26 to i64, !dbg !1952
  %28 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %23, i64 %27, !dbg !1952
  %29 = load %struct.residue_t*, %struct.residue_t** %28, align 8, !dbg !1952, !tbaa !652
  call void @add_he2o3(%struct.residue_t* %29), !dbg !1953
  br label %30, !dbg !1953

30:                                               ; preds = %.lr.ph, %11, %21, %20
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 4, !dbg !1954
  %32 = load %struct.strand_t*, %struct.strand_t** %31, align 8, !dbg !1954, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %32, metadata !1924, metadata !DIExpression()), !dbg !1925
  %.not2 = icmp eq %struct.strand_t* %32, null, !dbg !1929
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !dbg !1929, !llvm.loop !1955

._crit_edge:                                      ; preds = %30, %4
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !1957
  store i32 0, i32* %33, align 8, !dbg !1958, !tbaa !495
  ret i32 0, !dbg !1959
}

; Function Attrs: nounwind uwtable
define internal void @cvt_p2hb(%struct.residue_t* %0) #0 !dbg !1960 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1964, metadata !DIExpression()), !dbg !1973
  %2 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)), !dbg !1974
  call void @llvm.dbg.value(metadata i32 %2, metadata !1965, metadata !DIExpression()), !dbg !1973
  %3 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)), !dbg !1975
  call void @llvm.dbg.value(metadata i32 %3, metadata !1966, metadata !DIExpression()), !dbg !1973
  %4 = icmp eq i32 %3, -1, !dbg !1977
  br i1 %4, label %5, label %7, !dbg !1978

5:                                                ; preds = %1
  %6 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)), !dbg !1979
  call void @llvm.dbg.value(metadata i32 %6, metadata !1966, metadata !DIExpression()), !dbg !1973
  br label %7, !dbg !1980

7:                                                ; preds = %5, %1
  %.01 = phi i32 [ %6, %5 ], [ %3, %1 ], !dbg !1981
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1966, metadata !DIExpression()), !dbg !1973
  %8 = icmp ne i32 %.01, -1, !dbg !1982
  %9 = icmp ne i32 %2, -1
  %or.cond = select i1 %8, i1 %9, i1 false, !dbg !1984
  br i1 %or.cond, label %10, label %100, !dbg !1984

10:                                               ; preds = %7
  %11 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)), !dbg !1985
  call void @llvm.dbg.value(metadata i32 %11, metadata !1967, metadata !DIExpression()), !dbg !1973
  %12 = icmp eq i32 %11, -1, !dbg !1989
  br i1 %12, label %13, label %17, !dbg !1990

13:                                               ; preds = %10
  %14 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)), !dbg !1991
  call void @llvm.dbg.value(metadata i32 %14, metadata !1967, metadata !DIExpression()), !dbg !1973
  %.not2 = icmp eq i32 %14, -1, !dbg !1994
  br i1 %.not2, label %19, label %15, !dbg !1995

15:                                               ; preds = %13
  %16 = call i32 @delete_atom(%struct.residue_t* %0, i32 %14), !dbg !1996
  br label %19, !dbg !1996

17:                                               ; preds = %10
  %18 = call i32 @delete_atom(%struct.residue_t* %0, i32 %11), !dbg !1997
  br label %19

19:                                               ; preds = %13, %15, %17
  %20 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)), !dbg !1998
  call void @llvm.dbg.value(metadata i32 %20, metadata !1967, metadata !DIExpression()), !dbg !1973
  %21 = icmp eq i32 %20, -1, !dbg !2000
  br i1 %21, label %22, label %26, !dbg !2001

22:                                               ; preds = %19
  %23 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0)), !dbg !2002
  call void @llvm.dbg.value(metadata i32 %23, metadata !1967, metadata !DIExpression()), !dbg !1973
  %.not = icmp eq i32 %23, -1, !dbg !2005
  br i1 %.not, label %28, label %24, !dbg !2006

24:                                               ; preds = %22
  %25 = call i32 @delete_atom(%struct.residue_t* %0, i32 %23), !dbg !2007
  br label %28, !dbg !2007

26:                                               ; preds = %19
  %27 = call i32 @delete_atom(%struct.residue_t* %0, i32 %20), !dbg !2008
  br label %28

28:                                               ; preds = %22, %24, %26
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2009
  %30 = load %struct.atom_t*, %struct.atom_t** %29, align 8, !dbg !2009, !tbaa !565
  %31 = sext i32 %2 to i64, !dbg !2010
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %30, i64 %31), metadata !1972, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1973
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %30, i64 %31, i32 0, !dbg !2011
  %33 = load i8*, i8** %32, align 8, !dbg !2011, !tbaa !574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %33, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i64 3, i1 false) #11, !dbg !2012
  %34 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)), !dbg !2013
  call void @llvm.dbg.value(metadata i32 %34, metadata !1966, metadata !DIExpression()), !dbg !1973
  %35 = icmp eq i32 %34, -1, !dbg !2015
  br i1 %35, label %36, label %38, !dbg !2016

36:                                               ; preds = %28
  %37 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)), !dbg !2017
  call void @llvm.dbg.value(metadata i32 %37, metadata !1966, metadata !DIExpression()), !dbg !1973
  br label %38, !dbg !2018

38:                                               ; preds = %36, %28
  %.1 = phi i32 [ %37, %36 ], [ %34, %28 ], !dbg !2019
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1966, metadata !DIExpression()), !dbg !1973
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2020
  %40 = load %struct.atom_t*, %struct.atom_t** %39, align 8, !dbg !2020, !tbaa !565
  %41 = sext i32 %2 to i64, !dbg !2021
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %41, i32 17, i64 0, !dbg !2021
  %43 = load double, double* %42, align 8, !dbg !2021, !tbaa !455
  %44 = sext i32 %.1 to i64, !dbg !2022
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %40, i64 %44, i32 17, i64 0, !dbg !2022
  %46 = load double, double* %45, align 8, !dbg !2022, !tbaa !455
  %47 = fsub double %43, %46, !dbg !2023
  call void @llvm.dbg.value(metadata double %47, metadata !1968, metadata !DIExpression()), !dbg !1973
  %48 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2024
  %49 = load %struct.atom_t*, %struct.atom_t** %48, align 8, !dbg !2024, !tbaa !565
  %50 = sext i32 %2 to i64, !dbg !2025
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i64 %50, i32 17, i64 1, !dbg !2025
  %52 = load double, double* %51, align 8, !dbg !2025, !tbaa !455
  %53 = sext i32 %.1 to i64, !dbg !2026
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i64 %53, i32 17, i64 1, !dbg !2026
  %55 = load double, double* %54, align 8, !dbg !2026, !tbaa !455
  %56 = fsub double %52, %55, !dbg !2027
  call void @llvm.dbg.value(metadata double %56, metadata !1969, metadata !DIExpression()), !dbg !1973
  %57 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2028
  %58 = load %struct.atom_t*, %struct.atom_t** %57, align 8, !dbg !2028, !tbaa !565
  %59 = sext i32 %2 to i64, !dbg !2029
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %58, i64 %59, i32 17, i64 2, !dbg !2029
  %61 = load double, double* %60, align 8, !dbg !2029, !tbaa !455
  %62 = sext i32 %.1 to i64, !dbg !2030
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %58, i64 %62, i32 17, i64 2, !dbg !2030
  %64 = load double, double* %63, align 8, !dbg !2030, !tbaa !455
  %65 = fsub double %61, %64, !dbg !2031
  call void @llvm.dbg.value(metadata double %65, metadata !1970, metadata !DIExpression()), !dbg !1973
  %66 = fmul double %47, %47, !dbg !2032
  %67 = fmul double %56, %56, !dbg !2033
  %68 = fadd double %66, %67, !dbg !2034
  %69 = fmul double %65, %65, !dbg !2035
  %70 = fadd double %68, %69, !dbg !2036
  %71 = call double @sqrt(double %70) #11, !dbg !2037
  %72 = fdiv double 0x3FEEB851EB851EB8, %71, !dbg !2038
  call void @llvm.dbg.value(metadata double %72, metadata !1971, metadata !DIExpression()), !dbg !1973
  %73 = fmul double %72, %47, !dbg !2039
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2040
  %75 = load %struct.atom_t*, %struct.atom_t** %74, align 8, !dbg !2040, !tbaa !565
  %76 = sext i32 %.1 to i64, !dbg !2041
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %75, i64 %76, i32 17, i64 0, !dbg !2041
  %78 = load double, double* %77, align 8, !dbg !2041, !tbaa !455
  %79 = fadd double %73, %78, !dbg !2042
  %80 = sext i32 %2 to i64, !dbg !2043
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %75, i64 %80, i32 17, i64 0, !dbg !2043
  store double %79, double* %81, align 8, !dbg !2044, !tbaa !455
  %82 = fmul double %72, %56, !dbg !2045
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2046
  %84 = load %struct.atom_t*, %struct.atom_t** %83, align 8, !dbg !2046, !tbaa !565
  %85 = sext i32 %.1 to i64, !dbg !2047
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %84, i64 %85, i32 17, i64 1, !dbg !2047
  %87 = load double, double* %86, align 8, !dbg !2047, !tbaa !455
  %88 = fadd double %82, %87, !dbg !2048
  %89 = sext i32 %2 to i64, !dbg !2049
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %84, i64 %89, i32 17, i64 1, !dbg !2049
  store double %88, double* %90, align 8, !dbg !2050, !tbaa !455
  %91 = fmul double %72, %65, !dbg !2051
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2052
  %93 = load %struct.atom_t*, %struct.atom_t** %92, align 8, !dbg !2052, !tbaa !565
  %94 = sext i32 %.1 to i64, !dbg !2053
  %95 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %93, i64 %94, i32 17, i64 2, !dbg !2053
  %96 = load double, double* %95, align 8, !dbg !2053, !tbaa !455
  %97 = fadd double %91, %96, !dbg !2054
  %98 = sext i32 %2 to i64, !dbg !2055
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %93, i64 %98, i32 17, i64 2, !dbg !2055
  store double %97, double* %99, align 8, !dbg !2056, !tbaa !455
  br label %100, !dbg !2057

100:                                              ; preds = %7, %38
  ret void, !dbg !2058
}

; Function Attrs: nounwind uwtable
define internal void @add_he2o3(%struct.residue_t* %0) #0 !dbg !2059 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2061, metadata !DIExpression()), !dbg !2078
  %2 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)), !dbg !2079
  %.not = icmp eq i32 %2, -1, !dbg !2081
  br i1 %.not, label %3, label %91, !dbg !2082

3:                                                ; preds = %1
  %4 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %4, metadata !2063, metadata !DIExpression()), !dbg !2078
  %5 = icmp eq i32 %4, -1, !dbg !2085
  br i1 %5, label %6, label %8, !dbg !2086

6:                                                ; preds = %3
  %7 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)), !dbg !2087
  call void @llvm.dbg.value(metadata i32 %7, metadata !2063, metadata !DIExpression()), !dbg !2078
  br label %8, !dbg !2088

8:                                                ; preds = %6, %3
  %.02 = phi i32 [ %7, %6 ], [ %4, %3 ], !dbg !2089
  call void @llvm.dbg.value(metadata i32 %.02, metadata !2063, metadata !DIExpression()), !dbg !2078
  %9 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0)), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %9, metadata !2062, metadata !DIExpression()), !dbg !2078
  %10 = icmp eq i32 %9, -1, !dbg !2092
  br i1 %10, label %11, label %13, !dbg !2093

11:                                               ; preds = %8
  %12 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i64 0, i64 0)), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %12, metadata !2062, metadata !DIExpression()), !dbg !2078
  br label %13, !dbg !2095

13:                                               ; preds = %11, %8
  %.01 = phi i32 [ %12, %11 ], [ %9, %8 ], !dbg !2096
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2062, metadata !DIExpression()), !dbg !2078
  %14 = icmp eq i32 %.01, -1, !dbg !2097
  %15 = icmp eq i32 %.02, -1
  %or.cond = select i1 %14, i1 true, i1 %15, !dbg !2099
  br i1 %or.cond, label %91, label %16, !dbg !2099

16:                                               ; preds = %13
  %17 = call i32 @add_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)), !dbg !2100
  %18 = call i32 @find_atom(%struct.residue_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)), !dbg !2101
  call void @llvm.dbg.value(metadata i32 %18, metadata !2064, metadata !DIExpression()), !dbg !2078
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2102
  %20 = load %struct.atom_t*, %struct.atom_t** %19, align 8, !dbg !2102, !tbaa !565
  %21 = sext i32 %.02 to i64, !dbg !2103
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %20, i64 %21, i32 17, i64 0, !dbg !2103
  %23 = load double, double* %22, align 8, !dbg !2103, !tbaa !455
  %24 = sext i32 %.01 to i64, !dbg !2104
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %20, i64 %24, i32 17, i64 0, !dbg !2104
  %26 = load double, double* %25, align 8, !dbg !2104, !tbaa !455
  %27 = fsub double %23, %26, !dbg !2105
  call void @llvm.dbg.value(metadata double %27, metadata !2065, metadata !DIExpression()), !dbg !2078
  %28 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2106
  %29 = load %struct.atom_t*, %struct.atom_t** %28, align 8, !dbg !2106, !tbaa !565
  %30 = sext i32 %.02 to i64, !dbg !2107
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i64 %30, i32 17, i64 1, !dbg !2107
  %32 = load double, double* %31, align 8, !dbg !2107, !tbaa !455
  %33 = sext i32 %.01 to i64, !dbg !2108
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i64 %33, i32 17, i64 1, !dbg !2108
  %35 = load double, double* %34, align 8, !dbg !2108, !tbaa !455
  %36 = fsub double %32, %35, !dbg !2109
  call void @llvm.dbg.value(metadata double %36, metadata !2066, metadata !DIExpression()), !dbg !2078
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2110
  %38 = load %struct.atom_t*, %struct.atom_t** %37, align 8, !dbg !2110, !tbaa !565
  %39 = sext i32 %.02 to i64, !dbg !2111
  %40 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i64 %39, i32 17, i64 2, !dbg !2111
  %41 = load double, double* %40, align 8, !dbg !2111, !tbaa !455
  %42 = sext i32 %.01 to i64, !dbg !2112
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %38, i64 %42, i32 17, i64 2, !dbg !2112
  %44 = load double, double* %43, align 8, !dbg !2112, !tbaa !455
  %45 = fsub double %41, %44, !dbg !2113
  call void @llvm.dbg.value(metadata double %45, metadata !2067, metadata !DIExpression()), !dbg !2078
  %46 = fmul double %27, %27, !dbg !2114
  %47 = fmul double %36, %36, !dbg !2115
  %48 = fadd double %46, %47, !dbg !2116
  %49 = fmul double %45, %45, !dbg !2117
  %50 = fadd double %48, %49, !dbg !2118
  %51 = call double @sqrt(double %50) #11, !dbg !2119
  call void @llvm.dbg.value(metadata double %51, metadata !2068, metadata !DIExpression()), !dbg !2078
  %52 = call double @cos(double 0x3FF3F770E9584BA6) #11, !dbg !2120
  %53 = fdiv double 0x3FD37EC54D4F9170, %51, !dbg !2121
  call void @llvm.dbg.value(metadata double %53, metadata !2075, metadata !DIExpression()), !dbg !2078
  %54 = fmul double %53, %27, !dbg !2122
  call void @llvm.dbg.value(metadata double %54, metadata !2069, metadata !DIExpression()), !dbg !2078
  %55 = fmul double %53, %36, !dbg !2123
  call void @llvm.dbg.value(metadata double %55, metadata !2070, metadata !DIExpression()), !dbg !2078
  %56 = fmul double %53, %45, !dbg !2124
  call void @llvm.dbg.value(metadata double %56, metadata !2071, metadata !DIExpression()), !dbg !2078
  %57 = fcmp une double %55, 0.000000e+00, !dbg !2125
  br i1 %57, label %58, label %61, !dbg !2127

58:                                               ; preds = %16
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !2072, metadata !DIExpression()), !dbg !2078
  %59 = fneg double %54, !dbg !2128
  %60 = fdiv double %59, %55, !dbg !2130
  call void @llvm.dbg.value(metadata double %60, metadata !2073, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2074, metadata !DIExpression()), !dbg !2078
  br label %61, !dbg !2131

61:                                               ; preds = %16, %58
  %.05 = phi double [ 1.000000e+00, %58 ], [ 0.000000e+00, %16 ], !dbg !2132
  %.04 = phi double [ %60, %58 ], [ 1.000000e+00, %16 ], !dbg !2132
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2074, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata double %.04, metadata !2073, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata double %.05, metadata !2072, metadata !DIExpression()), !dbg !2078
  %62 = fmul double %.05, %.05, !dbg !2133
  %63 = fmul double %.04, %.04, !dbg !2134
  %64 = fadd double %62, %63, !dbg !2135
  %65 = fadd double %64, 0.000000e+00, !dbg !2136
  %66 = call double @sqrt(double %65) #11, !dbg !2137
  call void @llvm.dbg.value(metadata double %66, metadata !2068, metadata !DIExpression()), !dbg !2078
  %67 = call double @sin(double 0x3FF3F770E9584BA6) #11, !dbg !2138
  %68 = fdiv double 0x3FED21EBB2374F7E, %66, !dbg !2139
  call void @llvm.dbg.value(metadata double %68, metadata !2075, metadata !DIExpression()), !dbg !2078
  %69 = fmul double %68, %.05, !dbg !2140
  call void @llvm.dbg.value(metadata double %69, metadata !2072, metadata !DIExpression()), !dbg !2078
  %70 = fmul double %68, %.04, !dbg !2141
  call void @llvm.dbg.value(metadata double %70, metadata !2073, metadata !DIExpression()), !dbg !2078
  %71 = fmul double %68, 0.000000e+00, !dbg !2142
  call void @llvm.dbg.value(metadata double %71, metadata !2074, metadata !DIExpression()), !dbg !2078
  %72 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2143
  %73 = load %struct.atom_t*, %struct.atom_t** %72, align 8, !dbg !2143, !tbaa !565
  %74 = sext i32 %.02 to i64, !dbg !2144
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %73, i64 %74), metadata !2077, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2078
  %75 = sext i32 %18 to i64, !dbg !2145
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %73, i64 %75), metadata !2076, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2078
  %76 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %73, i64 %74, i32 17, i64 0, !dbg !2146
  %77 = load double, double* %76, align 8, !dbg !2146, !tbaa !455
  %78 = fadd double %77, %54, !dbg !2147
  %79 = fadd double %78, %69, !dbg !2148
  %80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %73, i64 %75, i32 17, i64 0, !dbg !2149
  store double %79, double* %80, align 8, !dbg !2150, !tbaa !455
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %73, i64 %74, i32 17, i64 1, !dbg !2151
  %82 = load double, double* %81, align 8, !dbg !2151, !tbaa !455
  %83 = fadd double %82, %55, !dbg !2152
  %84 = fadd double %83, %70, !dbg !2153
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %73, i64 %75, i32 17, i64 1, !dbg !2154
  store double %84, double* %85, align 8, !dbg !2155, !tbaa !455
  %86 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %73, i64 %74, i32 17, i64 2, !dbg !2156
  %87 = load double, double* %86, align 8, !dbg !2156, !tbaa !455
  %88 = fadd double %87, %56, !dbg !2157
  %89 = fadd double %88, %71, !dbg !2158
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %73, i64 %75, i32 17, i64 2, !dbg !2159
  store double %89, double* %90, align 8, !dbg !2160, !tbaa !455
  br label %91, !dbg !2161

91:                                               ; preds = %61, %1, %13
  ret void, !dbg !2161
}

; Function Attrs: nounwind uwtable
define dso_local %struct.extbond_t* @copyextbonds(%struct.residue_t* %0) #0 !dbg !2162 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2166, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.extbond_t* null, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.extbond_t* null, metadata !2170, metadata !DIExpression()), !dbg !2171
  %2 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 10, !dbg !2172
  %3 = load %struct.extbond_t*, %struct.extbond_t** %2, align 8, !dbg !2172, !tbaa !531
  call void @llvm.dbg.value(metadata %struct.extbond_t* %3, metadata !2169, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.extbond_t* null, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.extbond_t* null, metadata !2168, metadata !DIExpression()), !dbg !2171
  %.not = icmp eq %struct.extbond_t* %3, null, !dbg !2174
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2174

.lr.ph:                                           ; preds = %1, %23
  %.017 = phi %struct.extbond_t* [ %spec.select, %23 ], [ null, %1 ]
  %.026 = phi %struct.extbond_t* [ %5, %23 ], [ null, %1 ]
  %.035 = phi %struct.extbond_t* [ %25, %23 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.017, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.026, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.035, metadata !2169, metadata !DIExpression()), !dbg !2171
  %4 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #11, !dbg !2175
  %5 = bitcast i8* %4 to %struct.extbond_t*, !dbg !2179
  call void @llvm.dbg.value(metadata %struct.extbond_t* %5, metadata !2167, metadata !DIExpression()), !dbg !2171
  %6 = icmp eq i8* %4, null, !dbg !2180
  br i1 %6, label %7, label %9, !dbg !2181

7:                                                ; preds = %.lr.ph
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(22) getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(22) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i64 22, i1 false), !dbg !2182
  %8 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @e_msg, i64 0, i64 0)) #11, !dbg !2184
  br label %._crit_edge, !dbg !2185

9:                                                ; preds = %.lr.ph
  %10 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %5, i64 0, i32 0, !dbg !2186
  store %struct.extbond_t* null, %struct.extbond_t** %10, align 8, !dbg !2187, !tbaa !536
  %11 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.035, i64 0, i32 1, !dbg !2188
  %12 = load i32, i32* %11, align 8, !dbg !2188, !tbaa !1027
  %13 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %5, i64 0, i32 1, !dbg !2189
  store i32 %12, i32* %13, align 8, !dbg !2190, !tbaa !1027
  %14 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.035, i64 0, i32 2, !dbg !2191
  %15 = load i32, i32* %14, align 4, !dbg !2191, !tbaa !1030
  %16 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %5, i64 0, i32 2, !dbg !2192
  store i32 %15, i32* %16, align 4, !dbg !2193, !tbaa !1030
  %17 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.035, i64 0, i32 3, !dbg !2194
  %18 = load i32, i32* %17, align 8, !dbg !2194, !tbaa !1034
  %19 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %5, i64 0, i32 3, !dbg !2195
  store i32 %18, i32* %19, align 8, !dbg !2196, !tbaa !1034
  %20 = icmp eq %struct.extbond_t* %.017, null, !dbg !2197
  %spec.select = select i1 %20, %struct.extbond_t* %5, %struct.extbond_t* %.017, !dbg !2199
  call void @llvm.dbg.value(metadata %struct.extbond_t* %spec.select, metadata !2170, metadata !DIExpression()), !dbg !2171
  %.not8 = icmp eq %struct.extbond_t* %.026, null, !dbg !2200
  br i1 %.not8, label %23, label %21, !dbg !2202

21:                                               ; preds = %9
  %22 = bitcast %struct.extbond_t* %.026 to i8**, !dbg !2203
  store i8* %4, i8** %22, align 8, !dbg !2203, !tbaa !536
  br label %23, !dbg !2204

23:                                               ; preds = %9, %21
  call void @llvm.dbg.value(metadata %struct.extbond_t* %5, metadata !2168, metadata !DIExpression()), !dbg !2171
  %24 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.035, i64 0, i32 0, !dbg !2205
  %25 = load %struct.extbond_t*, %struct.extbond_t** %24, align 8, !dbg !2205, !tbaa !536
  call void @llvm.dbg.value(metadata %struct.extbond_t* %spec.select, metadata !2170, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.extbond_t* %5, metadata !2168, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.extbond_t* %25, metadata !2169, metadata !DIExpression()), !dbg !2171
  %.not9 = icmp eq %struct.extbond_t* %25, null, !dbg !2174
  br i1 %.not9, label %._crit_edge, label %.lr.ph, !dbg !2174, !llvm.loop !2206

._crit_edge:                                      ; preds = %1, %23, %7
  %.0 = phi %struct.extbond_t* [ null, %7 ], [ null, %1 ], [ %spec.select, %23 ], !dbg !2171
  ret %struct.extbond_t* %.0, !dbg !2208
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setreskind(%struct.molecule_t* %0, i8* %1, i8* %2) #0 !dbg !2209 {
  %4 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2213, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %1, metadata !2214, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %2, metadata !2215, metadata !DIExpression()), !dbg !2230
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %5) #11, !dbg !2231
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !2222, metadata !DIExpression()), !dbg !2232
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2233
  call void @llvm.dbg.value(metadata i8* %6, metadata !2221, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %2, metadata !2220, metadata !DIExpression()), !dbg !2230
  %7 = load i8, i8* %2, align 1, !dbg !2234, !tbaa !2235
  %.not = icmp eq i8 %7, 0, !dbg !2236
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !2236

.lr.ph:                                           ; preds = %3, %25
  %.08 = phi i8* [ %28, %25 ], [ %6, %3 ]
  %.016 = phi i8* [ %29, %25 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i8* %.08, metadata !2221, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %.016, metadata !2220, metadata !DIExpression()), !dbg !2230
  %8 = call i16** @__ctype_b_loc() #15, !dbg !2237
  %9 = load i16*, i16** %8, align 8, !dbg !2237, !tbaa !652
  %10 = load i8, i8* %.016, align 1, !dbg !2237, !tbaa !2235
  %11 = sext i8 %10 to i64, !dbg !2237
  %12 = getelementptr inbounds i16, i16* %9, i64 %11, !dbg !2237
  %13 = load i16, i16* %12, align 2, !dbg !2237, !tbaa !2238
  %14 = and i16 %13, 256, !dbg !2237
  %.not25 = icmp eq i16 %14, 0, !dbg !2237
  br i1 %.not25, label %22, label %15, !dbg !2237

15:                                               ; preds = %.lr.ph
  %16 = call i32** @__ctype_tolower_loc() #15, !dbg !2240
  %17 = load i32*, i32** %16, align 8, !dbg !2240, !tbaa !652
  %18 = load i8, i8* %.016, align 1, !dbg !2240, !tbaa !2235
  %19 = sext i8 %18 to i64, !dbg !2240
  %20 = getelementptr inbounds i32, i32* %17, i64 %19, !dbg !2240
  %21 = load i32, i32* %20, align 4, !dbg !2240, !tbaa !2242
  call void @llvm.dbg.value(metadata i32 %21, metadata !2226, metadata !DIExpression()), !dbg !2243
  br label %25, !dbg !2237

22:                                               ; preds = %.lr.ph
  %23 = load i8, i8* %.016, align 1, !dbg !2244, !tbaa !2235
  %24 = sext i8 %23 to i32, !dbg !2244
  br label %25, !dbg !2237

25:                                               ; preds = %22, %15
  %26 = phi i32 [ %21, %15 ], [ %24, %22 ], !dbg !2237
  %27 = trunc i32 %26 to i8, !dbg !2237
  %28 = getelementptr inbounds i8, i8* %.08, i64 1, !dbg !2245
  call void @llvm.dbg.value(metadata i8* %28, metadata !2221, metadata !DIExpression()), !dbg !2230
  store i8 %27, i8* %.08, align 1, !dbg !2246, !tbaa !2235
  %29 = getelementptr inbounds i8, i8* %.016, i64 1, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %28, metadata !2221, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8* %29, metadata !2220, metadata !DIExpression()), !dbg !2230
  %30 = load i8, i8* %29, align 1, !dbg !2234, !tbaa !2235
  %.not26 = icmp eq i8 %30, 0, !dbg !2236
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !dbg !2236, !llvm.loop !2248

._crit_edge:                                      ; preds = %25, %3
  %.0.lcssa = phi i8* [ %6, %3 ], [ %28, %25 ], !dbg !2250
  store i8 0, i8* %.0.lcssa, align 1, !dbg !2251, !tbaa !2235
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2252
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %31, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 4), !dbg !2254
  %.not17 = icmp eq i32 %bcmp, 0, !dbg !2254
  br i1 %.not17, label %39, label %32, !dbg !2255

32:                                               ; preds = %._crit_edge
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2256
  %bcmp21 = call i32 @bcmp(i8* noundef nonnull dereferenceable(4) %33, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 4), !dbg !2258
  %.not22 = icmp eq i32 %bcmp21, 0, !dbg !2258
  br i1 %.not22, label %39, label %34, !dbg !2259

34:                                               ; preds = %32
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2260
  %bcmp23 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) %35, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i64 3), !dbg !2262
  %.not24 = icmp eq i32 %bcmp23, 0, !dbg !2262
  br i1 %.not24, label %39, label %36, !dbg !2263

36:                                               ; preds = %34
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2264, !tbaa !652
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %2) #13, !dbg !2266
  call void @llvm.dbg.value(metadata i32 0, metadata !2219, metadata !DIExpression()), !dbg !2230
  br label %39

39:                                               ; preds = %32, %34, %36, %._crit_edge
  %.2 = phi i32 [ 1, %._crit_edge ], [ 2, %32 ], [ 0, %36 ], [ 3, %34 ], !dbg !2267
  call void @llvm.dbg.value(metadata i32 %.2, metadata !2219, metadata !DIExpression()), !dbg !2230
  %40 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #11, !dbg !2268
  %41 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !2269
  %42 = load %struct.strand_t*, %struct.strand_t** %41, align 8, !dbg !2269, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %42, metadata !2216, metadata !DIExpression()), !dbg !2230
  %.not18 = icmp eq %struct.strand_t* %42, null, !dbg !2271
  br i1 %.not18, label %._crit_edge16, label %.lr.ph15, !dbg !2271

.lr.ph15:                                         ; preds = %39, %._crit_edge12
  %.0313 = phi %struct.strand_t* [ %60, %._crit_edge12 ], [ %42, %39 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0313, metadata !2216, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i32 0, metadata !2218, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i64 0, metadata !2218, metadata !DIExpression()), !dbg !2230
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0313, i64 0, i32 5, !dbg !2272
  %44 = load i32, i32* %43, align 8, !dbg !2272, !tbaa !646
  %45 = icmp sgt i32 %44, 0, !dbg !2277
  br i1 %45, label %.lr.ph11, label %._crit_edge12, !dbg !2278

.lr.ph11:                                         ; preds = %.lr.ph15, %55
  %indvars.iv9 = phi i64 [ %indvars.iv.next, %55 ], [ 0, %.lr.ph15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !2218, metadata !DIExpression()), !dbg !2230
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0313, i64 0, i32 7, !dbg !2279
  %47 = load %struct.residue_t**, %struct.residue_t*** %46, align 8, !dbg !2279, !tbaa !650
  %48 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %47, i64 %indvars.iv9, !dbg !2281
  %49 = load %struct.residue_t*, %struct.residue_t** %48, align 8, !dbg !2281, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %49, metadata !2217, metadata !DIExpression()), !dbg !2230
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %49, i64 0, i32 6, !dbg !2282
  %51 = load i32, i32* %50, align 8, !dbg !2282, !tbaa !1546
  %52 = and i32 %51, 1, !dbg !2284
  %.not20 = icmp eq i32 %52, 0, !dbg !2284
  br i1 %.not20, label %55, label %53, !dbg !2285

53:                                               ; preds = %.lr.ph11
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %49, i64 0, i32 7, !dbg !2286
  store i32 %.2, i32* %54, align 4, !dbg !2287, !tbaa !2288
  br label %55, !dbg !2289

55:                                               ; preds = %.lr.ph11, %53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2218, metadata !DIExpression()), !dbg !2230
  %56 = load i32, i32* %43, align 8, !dbg !2272, !tbaa !646
  %57 = sext i32 %56 to i64, !dbg !2277
  %58 = icmp slt i64 %indvars.iv.next, %57, !dbg !2277
  br i1 %58, label %.lr.ph11, label %._crit_edge12, !dbg !2278, !llvm.loop !2291

._crit_edge12:                                    ; preds = %.lr.ph15, %55
  %59 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0313, i64 0, i32 4, !dbg !2293
  %60 = load %struct.strand_t*, %struct.strand_t** %59, align 8, !dbg !2293, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %60, metadata !2216, metadata !DIExpression()), !dbg !2230
  %.not19 = icmp eq %struct.strand_t* %60, null, !dbg !2271
  br i1 %.not19, label %._crit_edge16, label %.lr.ph15, !dbg !2271, !llvm.loop !2294

._crit_edge16:                                    ; preds = %._crit_edge12, %39
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !2296
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %61) #11, !dbg !2296
  ret i32 0, !dbg !2297
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind readnone
declare dso_local i32** @__ctype_tolower_loc() #6

; Function Attrs: nounwind uwtable
define dso_local i32 @setxyz_from_mol(%struct.molecule_t** %0, i8** %1, [3 x double]* %2) #0 !dbg !2298 {
  call void @llvm.dbg.value(metadata %struct.molecule_t** %0, metadata !2305, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8** %1, metadata !2306, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata [3 x double]* %2, metadata !2307, metadata !DIExpression()), !dbg !2314
  %4 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2315, !tbaa !652
  %.not = icmp eq i8** %1, null, !dbg !2316
  br i1 %.not, label %7, label %5, !dbg !2316

5:                                                ; preds = %3
  %6 = load i8*, i8** %1, align 8, !dbg !2317, !tbaa !652
  br label %7, !dbg !2316

7:                                                ; preds = %3, %5
  %8 = phi i8* [ %6, %5 ], [ null, %3 ], !dbg !2316
  %9 = call i32 @select_atoms(%struct.molecule_t* %4, i8* %8) #11, !dbg !2318
  call void @llvm.dbg.value(metadata i32 0, metadata !2310, metadata !DIExpression()), !dbg !2314
  %10 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2319, !tbaa !652
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %10, i64 0, i32 2, !dbg !2321
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2321, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %12, metadata !2311, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 0, metadata !2310, metadata !DIExpression()), !dbg !2314
  %.not22 = icmp eq %struct.strand_t* %12, null, !dbg !2322
  br i1 %.not22, label %._crit_edge20, label %.lr.ph19, !dbg !2322

.lr.ph19:                                         ; preds = %7, %._crit_edge14
  %.017 = phi %struct.strand_t* [ %50, %._crit_edge14 ], [ %12, %7 ]
  %.0116 = phi i32 [ %.1.lcssa, %._crit_edge14 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.017, metadata !2311, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 0, metadata !2308, metadata !DIExpression()), !dbg !2314
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 5, !dbg !2323
  %14 = load i32, i32* %13, align 8, !dbg !2323, !tbaa !646
  %15 = icmp sgt i32 %14, 0, !dbg !2328
  br i1 %15, label %.lr.ph13, label %._crit_edge14, !dbg !2329

.lr.ph13:                                         ; preds = %.lr.ph19, %._crit_edge
  %.111 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0116, %.lr.ph19 ]
  %indvars.iv510 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 0, %.lr.ph19 ]
  call void @llvm.dbg.value(metadata i32 %.111, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %indvars.iv510, metadata !2308, metadata !DIExpression()), !dbg !2314
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 7, !dbg !2330
  %17 = load %struct.residue_t**, %struct.residue_t*** %16, align 8, !dbg !2330, !tbaa !650
  %18 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %17, i64 %indvars.iv510, !dbg !2332
  %19 = load %struct.residue_t*, %struct.residue_t** %18, align 8, !dbg !2332, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %19, metadata !2312, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 0, metadata !2309, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %.111, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 0, metadata !2309, metadata !DIExpression()), !dbg !2314
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 15, !dbg !2333
  %21 = load i32, i32* %20, align 8, !dbg !2333, !tbaa !568
  %22 = icmp sgt i32 %21, 0, !dbg !2336
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !2337

.lr.ph:                                           ; preds = %.lr.ph13, %42
  %.29 = phi i32 [ %.3, %42 ], [ %.111, %.lr.ph13 ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next, %42 ], [ 0, %.lr.ph13 ]
  call void @llvm.dbg.value(metadata i32 %.29, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2309, metadata !DIExpression()), !dbg !2314
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 17, !dbg !2338
  %24 = load %struct.atom_t*, %struct.atom_t** %23, align 8, !dbg !2338, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %24, i64 %indvars.iv8), metadata !2313, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2314
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 2, !dbg !2340
  %26 = load i32, i32* %25, align 8, !dbg !2340, !tbaa !1592
  %27 = and i32 %26, 1, !dbg !2342
  %.not24 = icmp eq i32 %27, 0, !dbg !2342
  br i1 %.not24, label %42, label %28, !dbg !2343

28:                                               ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %24, i64 %indvars.iv8), metadata !2313, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2314
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 0, !dbg !2344
  %30 = load double, double* %29, align 8, !dbg !2344, !tbaa !455
  %31 = sext i32 %.29 to i64, !dbg !2346
  %32 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %31, i64 0, !dbg !2346
  store double %30, double* %32, align 8, !dbg !2347, !tbaa !455
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 1, !dbg !2348
  %34 = load double, double* %33, align 8, !dbg !2348, !tbaa !455
  %35 = sext i32 %.29 to i64, !dbg !2349
  %36 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %35, i64 1, !dbg !2349
  store double %34, double* %36, align 8, !dbg !2350, !tbaa !455
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 2, !dbg !2351
  %38 = load double, double* %37, align 8, !dbg !2351, !tbaa !455
  %39 = sext i32 %.29 to i64, !dbg !2352
  %40 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %39, i64 2, !dbg !2352
  store double %38, double* %40, align 8, !dbg !2353, !tbaa !455
  %41 = add nsw i32 %.29, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %41, metadata !2310, metadata !DIExpression()), !dbg !2314
  br label %42, !dbg !2355

42:                                               ; preds = %.lr.ph, %28
  %.3 = phi i32 [ %41, %28 ], [ %.29, %.lr.ph ], !dbg !2356
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2310, metadata !DIExpression()), !dbg !2314
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2309, metadata !DIExpression()), !dbg !2314
  %43 = load i32, i32* %20, align 8, !dbg !2333, !tbaa !568
  %44 = sext i32 %43 to i64, !dbg !2336
  %45 = icmp slt i64 %indvars.iv.next, %44, !dbg !2336
  br i1 %45, label %.lr.ph, label %._crit_edge, !dbg !2337, !llvm.loop !2358

._crit_edge:                                      ; preds = %.lr.ph13, %42
  %.2.lcssa = phi i32 [ %.111, %.lr.ph13 ], [ %.3, %42 ], !dbg !2356
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv510, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2310, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !2308, metadata !DIExpression()), !dbg !2314
  %46 = load i32, i32* %13, align 8, !dbg !2323, !tbaa !646
  %47 = sext i32 %46 to i64, !dbg !2328
  %48 = icmp slt i64 %indvars.iv.next6, %47, !dbg !2328
  br i1 %48, label %.lr.ph13, label %._crit_edge14, !dbg !2329, !llvm.loop !2361

._crit_edge14:                                    ; preds = %.lr.ph19, %._crit_edge
  %.1.lcssa = phi i32 [ %.0116, %.lr.ph19 ], [ %.2.lcssa, %._crit_edge ], !dbg !2363
  %49 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 4, !dbg !2364
  %50 = load %struct.strand_t*, %struct.strand_t** %49, align 8, !dbg !2364, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %50, metadata !2311, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2310, metadata !DIExpression()), !dbg !2314
  %.not23 = icmp eq %struct.strand_t* %50, null, !dbg !2322
  br i1 %.not23, label %._crit_edge20, label %.lr.ph19, !dbg !2322, !llvm.loop !2365

._crit_edge20:                                    ; preds = %._crit_edge14, %7
  %.01.lcssa = phi i32 [ 0, %7 ], [ %.1.lcssa, %._crit_edge14 ], !dbg !2363
  ret i32 %.01.lcssa, !dbg !2367
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setxyzw_from_mol(%struct.molecule_t** %0, i8** %1, double* %2) #0 !dbg !2368 {
  call void @llvm.dbg.value(metadata %struct.molecule_t** %0, metadata !2372, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8** %1, metadata !2373, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata double* %2, metadata !2374, metadata !DIExpression()), !dbg !2381
  %4 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2382, !tbaa !652
  %.not = icmp eq i8** %1, null, !dbg !2383
  br i1 %.not, label %7, label %5, !dbg !2383

5:                                                ; preds = %3
  %6 = load i8*, i8** %1, align 8, !dbg !2384, !tbaa !652
  br label %7, !dbg !2383

7:                                                ; preds = %3, %5
  %8 = phi i8* [ %6, %5 ], [ null, %3 ], !dbg !2383
  %9 = call i32 @select_atoms(%struct.molecule_t* %4, i8* %8) #11, !dbg !2385
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()), !dbg !2381
  %10 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2386, !tbaa !652
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %10, i64 0, i32 2, !dbg !2388
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2388, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %12, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()), !dbg !2381
  %.not22 = icmp eq %struct.strand_t* %12, null, !dbg !2389
  br i1 %.not22, label %._crit_edge20, label %.lr.ph19, !dbg !2389

.lr.ph19:                                         ; preds = %7, %._crit_edge14
  %.017 = phi %struct.strand_t* [ %61, %._crit_edge14 ], [ %12, %7 ]
  %.0116 = phi i32 [ %.1.lcssa, %._crit_edge14 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.017, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 0, metadata !2375, metadata !DIExpression()), !dbg !2381
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 5, !dbg !2390
  %14 = load i32, i32* %13, align 8, !dbg !2390, !tbaa !646
  %15 = icmp sgt i32 %14, 0, !dbg !2395
  br i1 %15, label %.lr.ph13, label %._crit_edge14, !dbg !2396

.lr.ph13:                                         ; preds = %.lr.ph19, %._crit_edge
  %.111 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0116, %.lr.ph19 ]
  %indvars.iv510 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 0, %.lr.ph19 ]
  call void @llvm.dbg.value(metadata i32 %.111, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %indvars.iv510, metadata !2375, metadata !DIExpression()), !dbg !2381
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 7, !dbg !2397
  %17 = load %struct.residue_t**, %struct.residue_t*** %16, align 8, !dbg !2397, !tbaa !650
  %18 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %17, i64 %indvars.iv510, !dbg !2399
  %19 = load %struct.residue_t*, %struct.residue_t** %18, align 8, !dbg !2399, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %19, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2376, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %.111, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 0, metadata !2376, metadata !DIExpression()), !dbg !2381
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 15, !dbg !2400
  %21 = load i32, i32* %20, align 8, !dbg !2400, !tbaa !568
  %22 = icmp sgt i32 %21, 0, !dbg !2403
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !2404

.lr.ph:                                           ; preds = %.lr.ph13, %53
  %.29 = phi i32 [ %.3, %53 ], [ %.111, %.lr.ph13 ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next, %53 ], [ 0, %.lr.ph13 ]
  call void @llvm.dbg.value(metadata i32 %.29, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2376, metadata !DIExpression()), !dbg !2381
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 17, !dbg !2405
  %24 = load %struct.atom_t*, %struct.atom_t** %23, align 8, !dbg !2405, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %24, i64 %indvars.iv8), metadata !2380, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2381
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 2, !dbg !2407
  %26 = load i32, i32* %25, align 8, !dbg !2407, !tbaa !1592
  %27 = and i32 %26, 1, !dbg !2409
  %.not24 = icmp eq i32 %27, 0, !dbg !2409
  br i1 %.not24, label %53, label %28, !dbg !2410

28:                                               ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %24, i64 %indvars.iv8), metadata !2380, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2381
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 0, !dbg !2411
  %30 = load double, double* %29, align 8, !dbg !2411, !tbaa !455
  %31 = shl nsw i32 %.29, 2, !dbg !2413
  %32 = sext i32 %31 to i64, !dbg !2414
  %33 = getelementptr inbounds double, double* %2, i64 %32, !dbg !2414
  store double %30, double* %33, align 8, !dbg !2415, !tbaa !455
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 1, !dbg !2416
  %35 = load double, double* %34, align 8, !dbg !2416, !tbaa !455
  %36 = shl nsw i32 %.29, 2, !dbg !2417
  %37 = or i32 %36, 1, !dbg !2418
  %38 = sext i32 %37 to i64, !dbg !2419
  %39 = getelementptr inbounds double, double* %2, i64 %38, !dbg !2419
  store double %35, double* %39, align 8, !dbg !2420, !tbaa !455
  %40 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 2, !dbg !2421
  %41 = load double, double* %40, align 8, !dbg !2421, !tbaa !455
  %42 = shl nsw i32 %.29, 2, !dbg !2422
  %43 = or i32 %42, 2, !dbg !2423
  %44 = sext i32 %43 to i64, !dbg !2424
  %45 = getelementptr inbounds double, double* %2, i64 %44, !dbg !2424
  store double %41, double* %45, align 8, !dbg !2425, !tbaa !455
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 18, !dbg !2426
  %47 = load double, double* %46, align 8, !dbg !2426, !tbaa !2427
  %48 = shl nsw i32 %.29, 2, !dbg !2428
  %49 = or i32 %48, 3, !dbg !2429
  %50 = sext i32 %49 to i64, !dbg !2430
  %51 = getelementptr inbounds double, double* %2, i64 %50, !dbg !2430
  store double %47, double* %51, align 8, !dbg !2431, !tbaa !455
  %52 = add nsw i32 %.29, 1, !dbg !2432
  call void @llvm.dbg.value(metadata i32 %52, metadata !2377, metadata !DIExpression()), !dbg !2381
  br label %53, !dbg !2433

53:                                               ; preds = %.lr.ph, %28
  %.3 = phi i32 [ %52, %28 ], [ %.29, %.lr.ph ], !dbg !2434
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2377, metadata !DIExpression()), !dbg !2381
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2376, metadata !DIExpression()), !dbg !2381
  %54 = load i32, i32* %20, align 8, !dbg !2400, !tbaa !568
  %55 = sext i32 %54 to i64, !dbg !2403
  %56 = icmp slt i64 %indvars.iv.next, %55, !dbg !2403
  br i1 %56, label %.lr.ph, label %._crit_edge, !dbg !2404, !llvm.loop !2436

._crit_edge:                                      ; preds = %.lr.ph13, %53
  %.2.lcssa = phi i32 [ %.111, %.lr.ph13 ], [ %.3, %53 ], !dbg !2434
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv510, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !2375, metadata !DIExpression()), !dbg !2381
  %57 = load i32, i32* %13, align 8, !dbg !2390, !tbaa !646
  %58 = sext i32 %57 to i64, !dbg !2395
  %59 = icmp slt i64 %indvars.iv.next6, %58, !dbg !2395
  br i1 %59, label %.lr.ph13, label %._crit_edge14, !dbg !2396, !llvm.loop !2439

._crit_edge14:                                    ; preds = %.lr.ph19, %._crit_edge
  %.1.lcssa = phi i32 [ %.0116, %.lr.ph19 ], [ %.2.lcssa, %._crit_edge ], !dbg !2441
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 4, !dbg !2442
  %61 = load %struct.strand_t*, %struct.strand_t** %60, align 8, !dbg !2442, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %61, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2377, metadata !DIExpression()), !dbg !2381
  %.not23 = icmp eq %struct.strand_t* %61, null, !dbg !2389
  br i1 %.not23, label %._crit_edge20, label %.lr.ph19, !dbg !2389, !llvm.loop !2443

._crit_edge20:                                    ; preds = %._crit_edge14, %7
  %.01.lcssa = phi i32 [ 0, %7 ], [ %.1.lcssa, %._crit_edge14 ], !dbg !2441
  ret i32 %.01.lcssa, !dbg !2445
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setmol_from_xyz(%struct.molecule_t** %0, i8** %1, double* %2) #0 !dbg !2446 {
  call void @llvm.dbg.value(metadata %struct.molecule_t** %0, metadata !2448, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8** %1, metadata !2449, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata double* %2, metadata !2450, metadata !DIExpression()), !dbg !2457
  %4 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2458, !tbaa !652
  %.not = icmp eq i8** %1, null, !dbg !2459
  br i1 %.not, label %7, label %5, !dbg !2459

5:                                                ; preds = %3
  %6 = load i8*, i8** %1, align 8, !dbg !2460, !tbaa !652
  br label %7, !dbg !2459

7:                                                ; preds = %3, %5
  %8 = phi i8* [ %6, %5 ], [ null, %3 ], !dbg !2459
  %9 = call i32 @select_atoms(%struct.molecule_t* %4, i8* %8) #11, !dbg !2461
  call void @llvm.dbg.value(metadata i32 0, metadata !2453, metadata !DIExpression()), !dbg !2457
  %10 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2462, !tbaa !652
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %10, i64 0, i32 2, !dbg !2464
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2464, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %12, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2453, metadata !DIExpression()), !dbg !2457
  %.not22 = icmp eq %struct.strand_t* %12, null, !dbg !2465
  br i1 %.not22, label %._crit_edge20, label %.lr.ph19, !dbg !2465

.lr.ph19:                                         ; preds = %7, %._crit_edge14
  %.017 = phi %struct.strand_t* [ %55, %._crit_edge14 ], [ %12, %7 ]
  %.0116 = phi i32 [ %.1.lcssa, %._crit_edge14 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.017, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2451, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 0, metadata !2451, metadata !DIExpression()), !dbg !2457
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 5, !dbg !2466
  %14 = load i32, i32* %13, align 8, !dbg !2466, !tbaa !646
  %15 = icmp sgt i32 %14, 0, !dbg !2471
  br i1 %15, label %.lr.ph13, label %._crit_edge14, !dbg !2472

.lr.ph13:                                         ; preds = %.lr.ph19, %._crit_edge
  %.111 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0116, %.lr.ph19 ]
  %indvars.iv510 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 0, %.lr.ph19 ]
  call void @llvm.dbg.value(metadata i32 %.111, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %indvars.iv510, metadata !2451, metadata !DIExpression()), !dbg !2457
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 7, !dbg !2473
  %17 = load %struct.residue_t**, %struct.residue_t*** %16, align 8, !dbg !2473, !tbaa !650
  %18 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %17, i64 %indvars.iv510, !dbg !2475
  %19 = load %struct.residue_t*, %struct.residue_t** %18, align 8, !dbg !2475, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %19, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2452, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %.111, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 0, metadata !2452, metadata !DIExpression()), !dbg !2457
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 15, !dbg !2476
  %21 = load i32, i32* %20, align 8, !dbg !2476, !tbaa !568
  %22 = icmp sgt i32 %21, 0, !dbg !2479
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !2480

.lr.ph:                                           ; preds = %.lr.ph13, %47
  %.29 = phi i32 [ %.3, %47 ], [ %.111, %.lr.ph13 ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next, %47 ], [ 0, %.lr.ph13 ]
  call void @llvm.dbg.value(metadata i32 %.29, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2452, metadata !DIExpression()), !dbg !2457
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 17, !dbg !2481
  %24 = load %struct.atom_t*, %struct.atom_t** %23, align 8, !dbg !2481, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %24, i64 %indvars.iv8), metadata !2456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2457
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 2, !dbg !2483
  %26 = load i32, i32* %25, align 8, !dbg !2483, !tbaa !1592
  %27 = and i32 %26, 1, !dbg !2485
  %.not24 = icmp eq i32 %27, 0, !dbg !2485
  br i1 %.not24, label %47, label %28, !dbg !2486

28:                                               ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %24, i64 %indvars.iv8), metadata !2456, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2457
  %29 = mul nsw i32 %.29, 3, !dbg !2487
  %30 = sext i32 %29 to i64, !dbg !2489
  %31 = getelementptr inbounds double, double* %2, i64 %30, !dbg !2489
  %32 = load double, double* %31, align 8, !dbg !2489, !tbaa !455
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 0, !dbg !2490
  store double %32, double* %33, align 8, !dbg !2491, !tbaa !455
  %34 = mul nsw i32 %.29, 3, !dbg !2492
  %35 = add nsw i32 %34, 1, !dbg !2493
  %36 = sext i32 %35 to i64, !dbg !2494
  %37 = getelementptr inbounds double, double* %2, i64 %36, !dbg !2494
  %38 = load double, double* %37, align 8, !dbg !2494, !tbaa !455
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 1, !dbg !2495
  store double %38, double* %39, align 8, !dbg !2496, !tbaa !455
  %40 = mul nsw i32 %.29, 3, !dbg !2497
  %41 = add nsw i32 %40, 2, !dbg !2498
  %42 = sext i32 %41 to i64, !dbg !2499
  %43 = getelementptr inbounds double, double* %2, i64 %42, !dbg !2499
  %44 = load double, double* %43, align 8, !dbg !2499, !tbaa !455
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 2, !dbg !2500
  store double %44, double* %45, align 8, !dbg !2501, !tbaa !455
  %46 = add nsw i32 %.29, 1, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %46, metadata !2453, metadata !DIExpression()), !dbg !2457
  br label %47, !dbg !2503

47:                                               ; preds = %.lr.ph, %28
  %.3 = phi i32 [ %46, %28 ], [ %.29, %.lr.ph ], !dbg !2504
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2453, metadata !DIExpression()), !dbg !2457
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2452, metadata !DIExpression()), !dbg !2457
  %48 = load i32, i32* %20, align 8, !dbg !2476, !tbaa !568
  %49 = sext i32 %48 to i64, !dbg !2479
  %50 = icmp slt i64 %indvars.iv.next, %49, !dbg !2479
  br i1 %50, label %.lr.ph, label %._crit_edge, !dbg !2480, !llvm.loop !2506

._crit_edge:                                      ; preds = %.lr.ph13, %47
  %.2.lcssa = phi i32 [ %.111, %.lr.ph13 ], [ %.3, %47 ], !dbg !2504
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv510, 1, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !2451, metadata !DIExpression()), !dbg !2457
  %51 = load i32, i32* %13, align 8, !dbg !2466, !tbaa !646
  %52 = sext i32 %51 to i64, !dbg !2471
  %53 = icmp slt i64 %indvars.iv.next6, %52, !dbg !2471
  br i1 %53, label %.lr.ph13, label %._crit_edge14, !dbg !2472, !llvm.loop !2509

._crit_edge14:                                    ; preds = %.lr.ph19, %._crit_edge
  %.1.lcssa = phi i32 [ %.0116, %.lr.ph19 ], [ %.2.lcssa, %._crit_edge ], !dbg !2511
  %54 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 4, !dbg !2512
  %55 = load %struct.strand_t*, %struct.strand_t** %54, align 8, !dbg !2512, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %55, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2453, metadata !DIExpression()), !dbg !2457
  %.not23 = icmp eq %struct.strand_t* %55, null, !dbg !2465
  br i1 %.not23, label %._crit_edge20, label %.lr.ph19, !dbg !2465, !llvm.loop !2513

._crit_edge20:                                    ; preds = %._crit_edge14, %7
  %.01.lcssa = phi i32 [ 0, %7 ], [ %.1.lcssa, %._crit_edge14 ], !dbg !2511
  ret i32 %.01.lcssa, !dbg !2515
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setmol_from_xyzw(%struct.molecule_t** %0, i8** %1, double* %2) #0 !dbg !2516 {
  call void @llvm.dbg.value(metadata %struct.molecule_t** %0, metadata !2518, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8** %1, metadata !2519, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata double* %2, metadata !2520, metadata !DIExpression()), !dbg !2527
  %4 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2528, !tbaa !652
  %.not = icmp eq i8** %1, null, !dbg !2529
  br i1 %.not, label %7, label %5, !dbg !2529

5:                                                ; preds = %3
  %6 = load i8*, i8** %1, align 8, !dbg !2530, !tbaa !652
  br label %7, !dbg !2529

7:                                                ; preds = %3, %5
  %8 = phi i8* [ %6, %5 ], [ null, %3 ], !dbg !2529
  %9 = call i32 @select_atoms(%struct.molecule_t* %4, i8* %8) #11, !dbg !2531
  call void @llvm.dbg.value(metadata i32 0, metadata !2523, metadata !DIExpression()), !dbg !2527
  %10 = load %struct.molecule_t*, %struct.molecule_t** %0, align 8, !dbg !2532, !tbaa !652
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %10, i64 0, i32 2, !dbg !2534
  %12 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2534, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %12, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 0, metadata !2523, metadata !DIExpression()), !dbg !2527
  %.not22 = icmp eq %struct.strand_t* %12, null, !dbg !2535
  br i1 %.not22, label %._crit_edge20, label %.lr.ph19, !dbg !2535

.lr.ph19:                                         ; preds = %7, %._crit_edge14
  %.017 = phi %struct.strand_t* [ %61, %._crit_edge14 ], [ %12, %7 ]
  %.0116 = phi i32 [ %.1.lcssa, %._crit_edge14 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.017, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 0, metadata !2521, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %.0116, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 0, metadata !2521, metadata !DIExpression()), !dbg !2527
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 5, !dbg !2536
  %14 = load i32, i32* %13, align 8, !dbg !2536, !tbaa !646
  %15 = icmp sgt i32 %14, 0, !dbg !2541
  br i1 %15, label %.lr.ph13, label %._crit_edge14, !dbg !2542

.lr.ph13:                                         ; preds = %.lr.ph19, %._crit_edge
  %.111 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0116, %.lr.ph19 ]
  %indvars.iv510 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 0, %.lr.ph19 ]
  call void @llvm.dbg.value(metadata i32 %.111, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 %indvars.iv510, metadata !2521, metadata !DIExpression()), !dbg !2527
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 7, !dbg !2543
  %17 = load %struct.residue_t**, %struct.residue_t*** %16, align 8, !dbg !2543, !tbaa !650
  %18 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %17, i64 %indvars.iv510, !dbg !2545
  %19 = load %struct.residue_t*, %struct.residue_t** %18, align 8, !dbg !2545, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %19, metadata !2525, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %.111, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 0, metadata !2522, metadata !DIExpression()), !dbg !2527
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 15, !dbg !2546
  %21 = load i32, i32* %20, align 8, !dbg !2546, !tbaa !568
  %22 = icmp sgt i32 %21, 0, !dbg !2549
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !2550

.lr.ph:                                           ; preds = %.lr.ph13, %53
  %.29 = phi i32 [ %.3, %53 ], [ %.111, %.lr.ph13 ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next, %53 ], [ 0, %.lr.ph13 ]
  call void @llvm.dbg.value(metadata i32 %.29, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !2522, metadata !DIExpression()), !dbg !2527
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %19, i64 0, i32 17, !dbg !2551
  %24 = load %struct.atom_t*, %struct.atom_t** %23, align 8, !dbg !2551, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %24, i64 %indvars.iv8), metadata !2526, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2527
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 2, !dbg !2553
  %26 = load i32, i32* %25, align 8, !dbg !2553, !tbaa !1592
  %27 = and i32 %26, 1, !dbg !2555
  %.not24 = icmp eq i32 %27, 0, !dbg !2555
  br i1 %.not24, label %53, label %28, !dbg !2556

28:                                               ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %24, i64 %indvars.iv8), metadata !2526, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2527
  %29 = shl nsw i32 %.29, 2, !dbg !2557
  %30 = sext i32 %29 to i64, !dbg !2559
  %31 = getelementptr inbounds double, double* %2, i64 %30, !dbg !2559
  %32 = load double, double* %31, align 8, !dbg !2559, !tbaa !455
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 0, !dbg !2560
  store double %32, double* %33, align 8, !dbg !2561, !tbaa !455
  %34 = shl nsw i32 %.29, 2, !dbg !2562
  %35 = or i32 %34, 1, !dbg !2563
  %36 = sext i32 %35 to i64, !dbg !2564
  %37 = getelementptr inbounds double, double* %2, i64 %36, !dbg !2564
  %38 = load double, double* %37, align 8, !dbg !2564, !tbaa !455
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 1, !dbg !2565
  store double %38, double* %39, align 8, !dbg !2566, !tbaa !455
  %40 = shl nsw i32 %.29, 2, !dbg !2567
  %41 = or i32 %40, 2, !dbg !2568
  %42 = sext i32 %41 to i64, !dbg !2569
  %43 = getelementptr inbounds double, double* %2, i64 %42, !dbg !2569
  %44 = load double, double* %43, align 8, !dbg !2569, !tbaa !455
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 17, i64 2, !dbg !2570
  store double %44, double* %45, align 8, !dbg !2571, !tbaa !455
  %46 = shl nsw i32 %.29, 2, !dbg !2572
  %47 = or i32 %46, 3, !dbg !2573
  %48 = sext i32 %47 to i64, !dbg !2574
  %49 = getelementptr inbounds double, double* %2, i64 %48, !dbg !2574
  %50 = load double, double* %49, align 8, !dbg !2574, !tbaa !455
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv8, i32 18, !dbg !2575
  store double %50, double* %51, align 8, !dbg !2576, !tbaa !2427
  %52 = add nsw i32 %.29, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %52, metadata !2523, metadata !DIExpression()), !dbg !2527
  br label %53, !dbg !2578

53:                                               ; preds = %.lr.ph, %28
  %.3 = phi i32 [ %52, %28 ], [ %.29, %.lr.ph ], !dbg !2579
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2523, metadata !DIExpression()), !dbg !2527
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %.3, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2522, metadata !DIExpression()), !dbg !2527
  %54 = load i32, i32* %20, align 8, !dbg !2546, !tbaa !568
  %55 = sext i32 %54 to i64, !dbg !2549
  %56 = icmp slt i64 %indvars.iv.next, %55, !dbg !2549
  br i1 %56, label %.lr.ph, label %._crit_edge, !dbg !2550, !llvm.loop !2581

._crit_edge:                                      ; preds = %.lr.ph13, %53
  %.2.lcssa = phi i32 [ %.111, %.lr.ph13 ], [ %.3, %53 ], !dbg !2579
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv510, 1, !dbg !2583
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !2521, metadata !DIExpression()), !dbg !2527
  %57 = load i32, i32* %13, align 8, !dbg !2536, !tbaa !646
  %58 = sext i32 %57 to i64, !dbg !2541
  %59 = icmp slt i64 %indvars.iv.next6, %58, !dbg !2541
  br i1 %59, label %.lr.ph13, label %._crit_edge14, !dbg !2542, !llvm.loop !2584

._crit_edge14:                                    ; preds = %.lr.ph19, %._crit_edge
  %.1.lcssa = phi i32 [ %.0116, %.lr.ph19 ], [ %.2.lcssa, %._crit_edge ], !dbg !2586
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.017, i64 0, i32 4, !dbg !2587
  %61 = load %struct.strand_t*, %struct.strand_t** %60, align 8, !dbg !2587, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %61, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !2523, metadata !DIExpression()), !dbg !2527
  %.not23 = icmp eq %struct.strand_t* %61, null, !dbg !2535
  br i1 %.not23, label %._crit_edge20, label %.lr.ph19, !dbg !2535, !llvm.loop !2588

._crit_edge20:                                    ; preds = %._crit_edge14, %7
  %.01.lcssa = phi i32 [ 0, %7 ], [ %.1.lcssa, %._crit_edge14 ], !dbg !2586
  ret i32 %.01.lcssa, !dbg !2590
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NAB_ainit(i8** %0, i32 %1) #0 !dbg !2591 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 %1, metadata !2596, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()), !dbg !2598
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0), !dbg !2599
  %wide.trip.count = zext i32 %smax to i64, !dbg !2601
  call void @llvm.dbg.value(metadata i64 0, metadata !2597, metadata !DIExpression()), !dbg !2598
  %exitcond2.not = icmp slt i32 %1, 1, !dbg !2601
  br i1 %exitcond2.not, label %._crit_edge, label %.lr.ph, !dbg !2603

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !2597, metadata !DIExpression()), !dbg !2598
  %3 = getelementptr inbounds i8*, i8** %0, i64 %indvars.iv3, !dbg !2604
  store i8* null, i8** %3, align 8, !dbg !2605, !tbaa !652
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2597, metadata !DIExpression()), !dbg !2598
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2601
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !2603, !llvm.loop !2607

._crit_edge:                                      ; preds = %.lr.ph, %2
  ret i32 0, !dbg !2609
}

; Function Attrs: nounwind uwtable
define dso_local void @NAB_initres(%struct.residue_t* %0, i32 %1) #0 !dbg !2610 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2612, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 %1, metadata !2613, metadata !DIExpression()), !dbg !2614
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 0, !dbg !2615
  store %struct.residue_t* null, %struct.residue_t** %3, align 8, !dbg !2616, !tbaa !2617
  %4 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 1, !dbg !2618
  store i32 0, i32* %4, align 8, !dbg !2619, !tbaa !2620
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 2, !dbg !2621
  store i32 0, i32* %5, align 4, !dbg !2622, !tbaa !1428
  %6 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 3, !dbg !2623
  store i32 0, i32* %6, align 8, !dbg !2624, !tbaa !1432
  %.not = icmp eq i32 %1, 0, !dbg !2625
  br i1 %.not, label %10, label %7, !dbg !2627

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !2628
  store i8* null, i8** %8, align 8, !dbg !2630, !tbaa !516
  %9 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !2631
  store i8* null, i8** %9, align 8, !dbg !2632, !tbaa !524
  br label %10, !dbg !2633

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 6, !dbg !2634
  store i32 0, i32* %11, align 8, !dbg !2635, !tbaa !1546
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 7, !dbg !2636
  store i32 0, i32* %12, align 4, !dbg !2637, !tbaa !2288
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !2638
  store i32 0, i32* %13, align 8, !dbg !2639, !tbaa !2640
  %14 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !2641
  store %struct.strand_t* null, %struct.strand_t** %14, align 8, !dbg !2642, !tbaa !883
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 10, !dbg !2643
  store %struct.extbond_t* null, %struct.extbond_t** %15, align 8, !dbg !2644, !tbaa !531
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 11, !dbg !2645
  store i32 0, i32* %16, align 8, !dbg !2646, !tbaa !2647
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 12, !dbg !2648
  store [2 x i32]* null, [2 x i32]** %17, align 8, !dbg !2649, !tbaa !544
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 8, !dbg !2650
  store i32 0, i32* %18, align 8, !dbg !2651, !tbaa !2640
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 13, !dbg !2652
  store i32 0, i32* %19, align 8, !dbg !2653, !tbaa !2654
  %20 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 14, !dbg !2655
  store %struct.chiral_t* null, %struct.chiral_t** %20, align 8, !dbg !2656, !tbaa !551
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !2657
  store i32 0, i32* %21, align 8, !dbg !2658, !tbaa !568
  %22 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !2659
  store i32* null, i32** %22, align 8, !dbg !2660, !tbaa !558
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2661
  store %struct.atom_t* null, %struct.atom_t** %23, align 8, !dbg !2662, !tbaa !565
  ret void, !dbg !2663
}

; Function Attrs: nounwind uwtable
define dso_local void @NAB_initatom(%struct.atom_t* %0, i32 %1) #0 !dbg !2664 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !2668, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 %1, metadata !2669, metadata !DIExpression()), !dbg !2671
  %cond = icmp eq i32 %1, 0, !dbg !2672
  br i1 %cond, label %6, label %3, !dbg !2672

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 0, !dbg !2673
  store i8* null, i8** %4, align 8, !dbg !2675, !tbaa !574
  %5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 1, !dbg !2676
  store i8* null, i8** %5, align 8, !dbg !2678, !tbaa !582
  br label %6, !dbg !2679

6:                                                ; preds = %2, %3
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 2, !dbg !2680
  store i32 0, i32* %7, align 8, !dbg !2681, !tbaa !1592
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 3, !dbg !2682
  store i32 0, i32* %8, align 4, !dbg !2683, !tbaa !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 0, metadata !2670, metadata !DIExpression()), !dbg !2671
  br label %9, !dbg !2685

9:                                                ; preds = %6, %9
  %indvars.iv2 = phi i64 [ 0, %6 ], [ %indvars.iv.next, %9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !2670, metadata !DIExpression()), !dbg !2671
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 4, i64 %indvars.iv2, !dbg !2687
  store i32 0, i32* %10, align 4, !dbg !2689, !tbaa !2242
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2670, metadata !DIExpression()), !dbg !2671
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !2691
  br i1 %exitcond.not, label %11, label %9, !dbg !2685, !llvm.loop !2692

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !2694
  store %struct.residue_t* null, %struct.residue_t** %12, align 8, !dbg !2695, !tbaa !2696
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 6, !dbg !2697
  store double 0.000000e+00, double* %13, align 8, !dbg !2698, !tbaa !2699
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 7, !dbg !2700
  store double 0.000000e+00, double* %14, align 8, !dbg !2701, !tbaa !2702
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 8, !dbg !2703
  store double 0.000000e+00, double* %15, align 8, !dbg !2704, !tbaa !2705
  %16 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 9, !dbg !2706
  store double 1.000000e+00, double* %16, align 8, !dbg !2707, !tbaa !2708
  %.not = icmp eq i32 %1, 0, !dbg !2709
  br i1 %.not, label %19, label %17, !dbg !2711

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 10, !dbg !2712
  store i8* null, i8** %18, align 8, !dbg !2713, !tbaa !589
  br label %19, !dbg !2714

19:                                               ; preds = %17, %11
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 11, !dbg !2715
  store i32 0, i32* %20, align 8, !dbg !2716, !tbaa !2717
  %21 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 12, !dbg !2718
  store double 0.000000e+00, double* %21, align 8, !dbg !2719, !tbaa !2720
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 13, !dbg !2721
  store double 0.000000e+00, double* %22, align 8, !dbg !2722, !tbaa !2723
  %23 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 14, !dbg !2724
  store i32 0, i32* %23, align 8, !dbg !2725, !tbaa !1447
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 15, !dbg !2726
  store i32 0, i32* %24, align 4, !dbg !2727, !tbaa !1443
  %.not3 = icmp eq i32 %1, 0, !dbg !2728
  br i1 %.not3, label %27, label %25, !dbg !2730

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 16, !dbg !2731
  store i8* null, i8** %26, align 8, !dbg !2732, !tbaa !596
  br label %27, !dbg !2733

27:                                               ; preds = %25, %19
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 0, !dbg !2734
  store double 0.000000e+00, double* %28, align 8, !dbg !2735, !tbaa !455
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 1, !dbg !2736
  store double 0.000000e+00, double* %29, align 8, !dbg !2737, !tbaa !455
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 2, !dbg !2738
  store double 0.000000e+00, double* %30, align 8, !dbg !2739, !tbaa !455
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 18, !dbg !2740
  store double 0.000000e+00, double* %31, align 8, !dbg !2741, !tbaa !2427
  ret void, !dbg !2742
}

; Function Attrs: nounwind uwtable
define dso_local %struct.atom_t* @NAB_mnext(%struct.molecule_t* %0, %struct.atom_t* %1) #0 !dbg !2743 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2747, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata %struct.atom_t* %1, metadata !2748, metadata !DIExpression()), !dbg !2755
  %.not = icmp eq %struct.atom_t* %1, null, !dbg !2756
  br i1 %.not, label %3, label %18, !dbg !2758

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !2759
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2749, metadata !DIExpression()), !dbg !2755
  br label %5, !dbg !2762

5:                                                ; preds = %10, %3
  %.02.in = phi %struct.strand_t** [ %4, %3 ], [ %11, %10 ]
  %.02 = load %struct.strand_t*, %struct.strand_t** %.02.in, align 8, !dbg !2763, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02, metadata !2749, metadata !DIExpression()), !dbg !2755
  %.not8 = icmp eq %struct.strand_t* %.02, null, !dbg !2764
  br i1 %.not8, label %.critedge, label %6, !dbg !2766

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !2767
  %8 = load i32, i32* %7, align 8, !dbg !2767, !tbaa !646
  %9 = icmp eq i32 %8, 0, !dbg !2768
  br i1 %9, label %10, label %.critedge, !dbg !2769

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 4, !dbg !2770
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2749, metadata !DIExpression()), !dbg !2755
  br label %5, !dbg !2771, !llvm.loop !2772

.critedge:                                        ; preds = %5, %6
  %.not9 = icmp eq %struct.strand_t* %.02, null, !dbg !2774
  br i1 %.not9, label %80, label %12, !dbg !2776

12:                                               ; preds = %.critedge
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !2777
  %14 = load %struct.residue_t**, %struct.residue_t*** %13, align 8, !dbg !2777, !tbaa !650
  %15 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !2778, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %15, metadata !2750, metadata !DIExpression()), !dbg !2755
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %15, i64 0, i32 17, !dbg !2779
  %17 = load %struct.atom_t*, %struct.atom_t** %16, align 8, !dbg !2779, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.atom_t* %17, metadata !2751, metadata !DIExpression()), !dbg !2755
  br label %80, !dbg !2780

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 0, i32 5, !dbg !2781
  %20 = load %struct.residue_t*, %struct.residue_t** %19, align 8, !dbg !2781, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %20, metadata !2750, metadata !DIExpression()), !dbg !2755
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %20, i64 0, i32 17, !dbg !2783
  %22 = load %struct.atom_t*, %struct.atom_t** %21, align 8, !dbg !2783, !tbaa !565
  %23 = ptrtoint %struct.atom_t* %1 to i64, !dbg !2784
  %24 = ptrtoint %struct.atom_t* %22 to i64, !dbg !2784
  %25 = sub i64 %23, %24, !dbg !2784
  %26 = sdiv exact i64 %25, 176, !dbg !2784
  %27 = trunc i64 %26 to i32, !dbg !2785
  %28 = add i32 %27, 1, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %28, metadata !2754, metadata !DIExpression()), !dbg !2755
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %20, i64 0, i32 15, !dbg !2786
  %30 = load i32, i32* %29, align 8, !dbg !2786, !tbaa !568
  %31 = icmp slt i32 %28, %30, !dbg !2788
  br i1 %31, label %32, label %37, !dbg !2789

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %20, i64 0, i32 17, !dbg !2790
  %34 = load %struct.atom_t*, %struct.atom_t** %33, align 8, !dbg !2790, !tbaa !565
  %35 = sext i32 %28 to i64, !dbg !2792
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i64 %35, !dbg !2792
  call void @llvm.dbg.value(metadata %struct.atom_t* %36, metadata !2751, metadata !DIExpression()), !dbg !2755
  br label %80, !dbg !2793

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %20, i64 0, i32 9, !dbg !2794
  %39 = load %struct.strand_t*, %struct.strand_t** %38, align 8, !dbg !2794, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %39, metadata !2749, metadata !DIExpression()), !dbg !2755
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i64 0, i32 5, !dbg !2795
  %41 = load i32, i32* %40, align 8, !dbg !2795, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %41, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 0, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 0, metadata !2752, metadata !DIExpression()), !dbg !2755
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i64 0, i32 5, !dbg !2797
  %43 = icmp sgt i32 %41, 0, !dbg !2799
  br i1 %43, label %.lr.ph, label %.loopexit, !dbg !2800

.lr.ph:                                           ; preds = %37, %52
  %indvars.iv6 = phi i64 [ %indvars.iv.next, %52 ], [ 0, %37 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2752, metadata !DIExpression()), !dbg !2755
  %44 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i64 0, i32 7, !dbg !2801
  %45 = load %struct.residue_t**, %struct.residue_t*** %44, align 8, !dbg !2801, !tbaa !650
  %46 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %45, i64 %indvars.iv6, !dbg !2804
  %47 = load %struct.residue_t*, %struct.residue_t** %46, align 8, !dbg !2804, !tbaa !652
  %48 = icmp eq %struct.residue_t* %47, %20, !dbg !2805
  br i1 %48, label %49, label %52, !dbg !2806

49:                                               ; preds = %.lr.ph
  %50 = trunc i64 %indvars.iv6 to i32, !dbg !2807
  %51 = add nsw i32 %50, 1, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %51, metadata !2753, metadata !DIExpression()), !dbg !2755
  br label %.loopexit, !dbg !2809

52:                                               ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !2810
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2752, metadata !DIExpression()), !dbg !2755
  %53 = load i32, i32* %42, align 8, !dbg !2797, !tbaa !646
  %54 = sext i32 %53 to i64, !dbg !2799
  %55 = icmp slt i64 %indvars.iv.next, %54, !dbg !2799
  br i1 %55, label %.lr.ph, label %.loopexit, !dbg !2800, !llvm.loop !2811

.loopexit:                                        ; preds = %37, %52, %49
  %.01 = phi i32 [ %51, %49 ], [ %41, %52 ], [ %41, %37 ], !dbg !2813
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2753, metadata !DIExpression()), !dbg !2755
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i64 0, i32 5, !dbg !2814
  %57 = load i32, i32* %56, align 8, !dbg !2814, !tbaa !646
  %58 = icmp slt i32 %.01, %57, !dbg !2816
  br i1 %58, label %59, label %67, !dbg !2817

59:                                               ; preds = %.loopexit
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i64 0, i32 7, !dbg !2818
  %61 = load %struct.residue_t**, %struct.residue_t*** %60, align 8, !dbg !2818, !tbaa !650
  %62 = sext i32 %.01 to i64, !dbg !2820
  %63 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %61, i64 %62, !dbg !2820
  %64 = load %struct.residue_t*, %struct.residue_t** %63, align 8, !dbg !2820, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %64, metadata !2750, metadata !DIExpression()), !dbg !2755
  %65 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %64, i64 0, i32 17, !dbg !2821
  %66 = load %struct.atom_t*, %struct.atom_t** %65, align 8, !dbg !2821, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.atom_t* %66, metadata !2751, metadata !DIExpression()), !dbg !2755
  br label %80, !dbg !2822

67:                                               ; preds = %.loopexit
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2749, metadata !DIExpression()), !dbg !2755
  br label %68, !dbg !2823

68:                                               ; preds = %73, %67
  %.pn = phi %struct.strand_t* [ %39, %67 ], [ %.1, %73 ]
  %.1.in = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.pn, i64 0, i32 4, !dbg !2825
  %.1 = load %struct.strand_t*, %struct.strand_t** %.1.in, align 8, !dbg !2825, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1, metadata !2749, metadata !DIExpression()), !dbg !2755
  %.not10 = icmp eq %struct.strand_t* %.1, null, !dbg !2826
  br i1 %.not10, label %.critedge7, label %69, !dbg !2828

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1, i64 0, i32 5, !dbg !2829
  %71 = load i32, i32* %70, align 8, !dbg !2829, !tbaa !646
  %72 = icmp eq i32 %71, 0, !dbg !2830
  br i1 %72, label %73, label %.critedge7, !dbg !2831

73:                                               ; preds = %69
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2749, metadata !DIExpression()), !dbg !2755
  br label %68, !dbg !2832, !llvm.loop !2833

.critedge7:                                       ; preds = %68, %69
  %.not11 = icmp eq %struct.strand_t* %.1, null, !dbg !2835
  br i1 %.not11, label %80, label %74, !dbg !2837

74:                                               ; preds = %.critedge7
  %75 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1, i64 0, i32 7, !dbg !2838
  %76 = load %struct.residue_t**, %struct.residue_t*** %75, align 8, !dbg !2838, !tbaa !650
  %77 = load %struct.residue_t*, %struct.residue_t** %76, align 8, !dbg !2839, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %77, metadata !2750, metadata !DIExpression()), !dbg !2755
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %77, i64 0, i32 17, !dbg !2840
  %79 = load %struct.atom_t*, %struct.atom_t** %78, align 8, !dbg !2840, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.atom_t* %79, metadata !2751, metadata !DIExpression()), !dbg !2755
  br label %80, !dbg !2841

80:                                               ; preds = %.critedge7, %.critedge, %74, %59, %32, %12
  %.0 = phi %struct.atom_t* [ %36, %32 ], [ %66, %59 ], [ %79, %74 ], [ %17, %12 ], [ null, %.critedge ], [ null, %.critedge7 ], !dbg !2842
  ret %struct.atom_t* %.0, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @NAB_rnext(%struct.molecule_t* %0, %struct.residue_t* %1) #0 !dbg !2844 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2848, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata %struct.residue_t* %1, metadata !2849, metadata !DIExpression()), !dbg !2854
  %.not = icmp eq %struct.residue_t* %1, null, !dbg !2855
  br i1 %.not, label %3, label %16, !dbg !2857

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !2858
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2850, metadata !DIExpression()), !dbg !2854
  br label %5, !dbg !2861

5:                                                ; preds = %10, %3
  %.02.in = phi %struct.strand_t** [ %4, %3 ], [ %11, %10 ]
  %.02 = load %struct.strand_t*, %struct.strand_t** %.02.in, align 8, !dbg !2862, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.strand_t* %.02, metadata !2850, metadata !DIExpression()), !dbg !2854
  %.not8 = icmp eq %struct.strand_t* %.02, null, !dbg !2863
  br i1 %.not8, label %.critedge, label %6, !dbg !2865

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 5, !dbg !2866
  %8 = load i32, i32* %7, align 8, !dbg !2866, !tbaa !646
  %9 = icmp eq i32 %8, 0, !dbg !2867
  br i1 %9, label %10, label %.critedge, !dbg !2868

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 4, !dbg !2869
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2850, metadata !DIExpression()), !dbg !2854
  br label %5, !dbg !2870, !llvm.loop !2871

.critedge:                                        ; preds = %5, %6
  %.not9 = icmp eq %struct.strand_t* %.02, null, !dbg !2873
  br i1 %.not9, label %55, label %12, !dbg !2875

12:                                               ; preds = %.critedge
  %13 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.02, i64 0, i32 7, !dbg !2876
  %14 = load %struct.residue_t**, %struct.residue_t*** %13, align 8, !dbg !2876, !tbaa !650
  %15 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !2877, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %15, metadata !2851, metadata !DIExpression()), !dbg !2854
  br label %55, !dbg !2878

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1, i64 0, i32 9, !dbg !2879
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8, !dbg !2879, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %18, metadata !2850, metadata !DIExpression()), !dbg !2854
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i64 0, i32 5, !dbg !2881
  %20 = load i32, i32* %19, align 8, !dbg !2881, !tbaa !646
  call void @llvm.dbg.value(metadata i32 %20, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 0, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 0, metadata !2852, metadata !DIExpression()), !dbg !2854
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i64 0, i32 5, !dbg !2883
  %22 = icmp sgt i32 %20, 0, !dbg !2885
  br i1 %22, label %.lr.ph, label %.loopexit, !dbg !2886

.lr.ph:                                           ; preds = %16, %31
  %indvars.iv6 = phi i64 [ %indvars.iv.next, %31 ], [ 0, %16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2852, metadata !DIExpression()), !dbg !2854
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i64 0, i32 7, !dbg !2887
  %24 = load %struct.residue_t**, %struct.residue_t*** %23, align 8, !dbg !2887, !tbaa !650
  %25 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %24, i64 %indvars.iv6, !dbg !2890
  %26 = load %struct.residue_t*, %struct.residue_t** %25, align 8, !dbg !2890, !tbaa !652
  %27 = icmp eq %struct.residue_t* %26, %1, !dbg !2891
  br i1 %27, label %28, label %31, !dbg !2892

28:                                               ; preds = %.lr.ph
  %29 = trunc i64 %indvars.iv6 to i32, !dbg !2893
  %30 = add nsw i32 %29, 1, !dbg !2893
  call void @llvm.dbg.value(metadata i32 %30, metadata !2853, metadata !DIExpression()), !dbg !2854
  br label %.loopexit, !dbg !2895

31:                                               ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2852, metadata !DIExpression()), !dbg !2854
  %32 = load i32, i32* %21, align 8, !dbg !2883, !tbaa !646
  %33 = sext i32 %32 to i64, !dbg !2885
  %34 = icmp slt i64 %indvars.iv.next, %33, !dbg !2885
  br i1 %34, label %.lr.ph, label %.loopexit, !dbg !2886, !llvm.loop !2897

.loopexit:                                        ; preds = %16, %31, %28
  %.01 = phi i32 [ %30, %28 ], [ %20, %31 ], [ %20, %16 ], !dbg !2899
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2853, metadata !DIExpression()), !dbg !2854
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i64 0, i32 5, !dbg !2900
  %36 = load i32, i32* %35, align 8, !dbg !2900, !tbaa !646
  %37 = icmp slt i32 %.01, %36, !dbg !2902
  br i1 %37, label %38, label %44, !dbg !2903

38:                                               ; preds = %.loopexit
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i64 0, i32 7, !dbg !2904
  %40 = load %struct.residue_t**, %struct.residue_t*** %39, align 8, !dbg !2904, !tbaa !650
  %41 = sext i32 %.01 to i64, !dbg !2906
  %42 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %40, i64 %41, !dbg !2906
  %43 = load %struct.residue_t*, %struct.residue_t** %42, align 8, !dbg !2906, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %43, metadata !2851, metadata !DIExpression()), !dbg !2854
  br label %55, !dbg !2907

44:                                               ; preds = %.loopexit
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2850, metadata !DIExpression()), !dbg !2854
  br label %45, !dbg !2908

45:                                               ; preds = %50, %44
  %.pn = phi %struct.strand_t* [ %18, %44 ], [ %.1, %50 ]
  %.1.in = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.pn, i64 0, i32 4, !dbg !2910
  %.1 = load %struct.strand_t*, %struct.strand_t** %.1.in, align 8, !dbg !2910, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1, metadata !2850, metadata !DIExpression()), !dbg !2854
  %.not10 = icmp eq %struct.strand_t* %.1, null, !dbg !2911
  br i1 %.not10, label %.critedge7, label %46, !dbg !2913

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1, i64 0, i32 5, !dbg !2914
  %48 = load i32, i32* %47, align 8, !dbg !2914, !tbaa !646
  %49 = icmp eq i32 %48, 0, !dbg !2915
  br i1 %49, label %50, label %.critedge7, !dbg !2916

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2850, metadata !DIExpression()), !dbg !2854
  br label %45, !dbg !2917, !llvm.loop !2918

.critedge7:                                       ; preds = %45, %46
  %.not11 = icmp eq %struct.strand_t* %.1, null, !dbg !2920
  br i1 %.not11, label %55, label %51, !dbg !2922

51:                                               ; preds = %.critedge7
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1, i64 0, i32 7, !dbg !2923
  %53 = load %struct.residue_t**, %struct.residue_t*** %52, align 8, !dbg !2923, !tbaa !650
  %54 = load %struct.residue_t*, %struct.residue_t** %53, align 8, !dbg !2924, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %54, metadata !2851, metadata !DIExpression()), !dbg !2854
  br label %55, !dbg !2925

55:                                               ; preds = %.critedge7, %.critedge, %51, %38, %12
  %.0 = phi %struct.residue_t* [ %43, %38 ], [ %54, %51 ], [ %15, %12 ], [ null, %.critedge ], [ null, %.critedge7 ], !dbg !2926
  ret %struct.residue_t* %.0, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local %struct.atom_t* @NAB_anext(%struct.residue_t* %0, %struct.atom_t* %1) #0 !dbg !2928 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2932, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata %struct.atom_t* %1, metadata !2933, metadata !DIExpression()), !dbg !2936
  %.not = icmp eq %struct.atom_t* %1, null, !dbg !2937
  br i1 %.not, label %3, label %6, !dbg !2939

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2940
  %5 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !2940, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.atom_t* %5, metadata !2934, metadata !DIExpression()), !dbg !2936
  br label %23, !dbg !2942

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2943
  %8 = load %struct.atom_t*, %struct.atom_t** %7, align 8, !dbg !2943, !tbaa !565
  %9 = ptrtoint %struct.atom_t* %1 to i64, !dbg !2945
  %10 = ptrtoint %struct.atom_t* %8 to i64, !dbg !2945
  %11 = sub i64 %9, %10, !dbg !2945
  %12 = sdiv exact i64 %11, 176, !dbg !2945
  %13 = trunc i64 %12 to i32, !dbg !2946
  %14 = add i32 %13, 1, !dbg !2946
  call void @llvm.dbg.value(metadata i32 %14, metadata !2935, metadata !DIExpression()), !dbg !2936
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !2947
  %16 = load i32, i32* %15, align 8, !dbg !2947, !tbaa !568
  %17 = icmp slt i32 %14, %16, !dbg !2949
  br i1 %17, label %18, label %23, !dbg !2950

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2951
  %20 = load %struct.atom_t*, %struct.atom_t** %19, align 8, !dbg !2951, !tbaa !565
  %21 = sext i32 %14 to i64, !dbg !2953
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %20, i64 %21, !dbg !2953
  call void @llvm.dbg.value(metadata %struct.atom_t* %22, metadata !2934, metadata !DIExpression()), !dbg !2936
  br label %23, !dbg !2954

23:                                               ; preds = %6, %18, %3
  %.0 = phi %struct.atom_t* [ %22, %18 ], [ %5, %3 ], [ null, %6 ], !dbg !2955
  ret %struct.atom_t* %.0, !dbg !2956
}

; Function Attrs: nounwind uwtable
define dso_local i32* @NAB_mri(%struct.molecule_t* %0, i8* %1) #0 !dbg !2957 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2962, metadata !DIExpression()), !dbg !2963
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)) #12, !dbg !2964
  %.not = icmp eq i32 %3, 0, !dbg !2964
  br i1 %.not, label %4, label %10, !dbg !2966

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !2967
  %6 = load i32, i32* %5, align 8, !dbg !2967, !tbaa !495
  %.not1 = icmp eq i32 %6, 0, !dbg !2970
  br i1 %.not1, label %7, label %8, !dbg !2971

7:                                                ; preds = %4
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !2972
  br label %8, !dbg !2972

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 1, !dbg !2973
  br label %29, !dbg !2974

10:                                               ; preds = %2
  %11 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !2975
  %.not2 = icmp eq i32 %11, 0, !dbg !2975
  br i1 %.not2, label %12, label %18, !dbg !2977

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !2978
  %14 = load i32, i32* %13, align 8, !dbg !2978, !tbaa !495
  %.not3 = icmp eq i32 %14, 0, !dbg !2981
  br i1 %.not3, label %15, label %16, !dbg !2982

15:                                               ; preds = %12
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !2983
  br label %16, !dbg !2983

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 3, !dbg !2984
  br label %29, !dbg !2985

18:                                               ; preds = %10
  %19 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0)) #12, !dbg !2986
  %.not4 = icmp eq i32 %19, 0, !dbg !2986
  br i1 %.not4, label %20, label %26, !dbg !2988

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 5, !dbg !2989
  %22 = load i32, i32* %21, align 8, !dbg !2989, !tbaa !495
  %.not5 = icmp eq i32 %22, 0, !dbg !2992
  br i1 %.not5, label %23, label %24, !dbg !2993

23:                                               ; preds = %20
  call void @upd_molnumbers(%struct.molecule_t* %0), !dbg !2994
  br label %24, !dbg !2994

24:                                               ; preds = %23, %20
  %25 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 4, !dbg !2995
  br label %29, !dbg !2996

26:                                               ; preds = %18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2997, !tbaa !652
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i8* %1) #13, !dbg !2998
  br label %29, !dbg !2999

29:                                               ; preds = %26, %24, %16, %8
  %.0 = phi i32* [ null, %26 ], [ %25, %24 ], [ %17, %16 ], [ %9, %8 ], !dbg !2963
  ret i32* %.0, !dbg !3000
}

; Function Attrs: nounwind uwtable
define dso_local i32* @NAB_rri(%struct.residue_t* %0, i8* %1) #0 !dbg !352 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !356, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8* %1, metadata !357, metadata !DIExpression()), !dbg !3001
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #12, !dbg !3002
  %.not = icmp eq i32 %3, 0, !dbg !3002
  br i1 %.not, label %4, label %14, !dbg !3004

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !3005
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !3005, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !358, metadata !DIExpression()), !dbg !3001
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %6, i64 0, i32 3, !dbg !3007
  %8 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !3007, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %8, metadata !359, metadata !DIExpression()), !dbg !3001
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %8, i64 0, i32 5, !dbg !3008
  %10 = load i32, i32* %9, align 8, !dbg !3008, !tbaa !495
  %.not1 = icmp eq i32 %10, 0, !dbg !3010
  br i1 %.not1, label %11, label %12, !dbg !3011

11:                                               ; preds = %4
  call void @upd_molnumbers(%struct.molecule_t* %8), !dbg !3012
  br label %12, !dbg !3012

12:                                               ; preds = %11, %4
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 3, !dbg !3013
  br label %41, !dbg !3014

14:                                               ; preds = %2
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !3015
  %.not2 = icmp eq i32 %15, 0, !dbg !3015
  br i1 %.not2, label %16, label %26, !dbg !3017

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !3018
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8, !dbg !3018, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %18, metadata !358, metadata !DIExpression()), !dbg !3001
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %18, i64 0, i32 3, !dbg !3020
  %20 = load %struct.molecule_t*, %struct.molecule_t** %19, align 8, !dbg !3020, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %20, metadata !359, metadata !DIExpression()), !dbg !3001
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %20, i64 0, i32 5, !dbg !3021
  %22 = load i32, i32* %21, align 8, !dbg !3021, !tbaa !495
  %.not3 = icmp eq i32 %22, 0, !dbg !3023
  br i1 %.not3, label %23, label %24, !dbg !3024

23:                                               ; preds = %16
  call void @upd_molnumbers(%struct.molecule_t* %20), !dbg !3025
  br label %24, !dbg !3025

24:                                               ; preds = %23, %16
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 2, !dbg !3026
  br label %41, !dbg !3027

26:                                               ; preds = %14
  %27 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !3028
  %.not4 = icmp eq i32 %27, 0, !dbg !3028
  br i1 %.not4, label %28, label %38, !dbg !3030

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !3031
  %30 = load %struct.strand_t*, %struct.strand_t** %29, align 8, !dbg !3031, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %30, metadata !358, metadata !DIExpression()), !dbg !3001
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i64 0, i32 3, !dbg !3033
  %32 = load %struct.molecule_t*, %struct.molecule_t** %31, align 8, !dbg !3033, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %32, metadata !359, metadata !DIExpression()), !dbg !3001
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %32, i64 0, i32 5, !dbg !3034
  %34 = load i32, i32* %33, align 8, !dbg !3034, !tbaa !495
  %.not5 = icmp eq i32 %34, 0, !dbg !3036
  br i1 %.not5, label %35, label %36, !dbg !3037

35:                                               ; preds = %28
  call void @upd_molnumbers(%struct.molecule_t* %32), !dbg !3038
  br label %36, !dbg !3038

36:                                               ; preds = %35, %28
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %30, i64 0, i32 1, !dbg !3039
  br label %41, !dbg !3040

38:                                               ; preds = %26
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3041, !tbaa !652
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i8* %1) #13, !dbg !3042
  store i32 0, i32* @NAB_rri.rv_err, align 4, !dbg !3043, !tbaa !2242
  br label %41, !dbg !3044

41:                                               ; preds = %38, %36, %24, %12
  %.0 = phi i32* [ @NAB_rri.rv_err, %38 ], [ %37, %36 ], [ %25, %24 ], [ %13, %12 ], !dbg !3001
  ret i32* %.0, !dbg !3045
}

; Function Attrs: nounwind uwtable
define dso_local i8** @NAB_rrc(%struct.residue_t* %0, i8* %1) #0 !dbg !3046 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8* %1, metadata !3051, metadata !DIExpression()), !dbg !3053
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #12, !dbg !3054
  %.not = icmp eq i32 %3, 0, !dbg !3054
  br i1 %.not, label %4, label %6, !dbg !3056

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 4, !dbg !3057
  br label %19, !dbg !3059

6:                                                ; preds = %2
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #12, !dbg !3060
  %.not1 = icmp eq i32 %7, 0, !dbg !3060
  br i1 %.not1, label %8, label %10, !dbg !3062

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 5, !dbg !3063
  br label %19, !dbg !3065

10:                                               ; preds = %6
  %11 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !3066
  %.not2 = icmp eq i32 %11, 0, !dbg !3066
  br i1 %.not2, label %12, label %16, !dbg !3068

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 9, !dbg !3069
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !3069, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !3052, metadata !DIExpression()), !dbg !3053
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 0, !dbg !3071
  br label %19, !dbg !3072

16:                                               ; preds = %10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3073, !tbaa !652
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i8* %1) #13, !dbg !3075
  br label %19, !dbg !3076

19:                                               ; preds = %16, %12, %8, %4
  %.0 = phi i8** [ null, %16 ], [ %15, %12 ], [ %9, %8 ], [ %5, %4 ], !dbg !3077
  ret i8** %.0, !dbg !3078
}

; Function Attrs: nounwind uwtable
define dso_local i32* @NAB_ari(%struct.atom_t* %0, i8* %1) #0 !dbg !362 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !366, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8* %1, metadata !367, metadata !DIExpression()), !dbg !3079
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #12, !dbg !3080
  %.not = icmp eq i32 %3, 0, !dbg !3080
  br i1 %.not, label %4, label %16, !dbg !3082

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3083
  %6 = load %struct.residue_t*, %struct.residue_t** %5, align 8, !dbg !3083, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %6, metadata !368, metadata !DIExpression()), !dbg !3079
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i64 0, i32 9, !dbg !3085
  %8 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !3085, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %8, metadata !369, metadata !DIExpression()), !dbg !3079
  %9 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 3, !dbg !3086
  %10 = load %struct.molecule_t*, %struct.molecule_t** %9, align 8, !dbg !3086, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %10, metadata !370, metadata !DIExpression()), !dbg !3079
  %11 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %10, i64 0, i32 5, !dbg !3087
  %12 = load i32, i32* %11, align 8, !dbg !3087, !tbaa !495
  %.not1 = icmp eq i32 %12, 0, !dbg !3089
  br i1 %.not1, label %13, label %14, !dbg !3090

13:                                               ; preds = %4
  call void @upd_molnumbers(%struct.molecule_t* %10), !dbg !3091
  br label %14, !dbg !3091

14:                                               ; preds = %13, %4
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %8, i64 0, i32 1, !dbg !3092
  br label %79, !dbg !3093

16:                                               ; preds = %2
  %17 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #12, !dbg !3094
  %.not2 = icmp eq i32 %17, 0, !dbg !3094
  br i1 %.not2, label %18, label %30, !dbg !3096

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3097
  %20 = load %struct.residue_t*, %struct.residue_t** %19, align 8, !dbg !3097, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %20, metadata !368, metadata !DIExpression()), !dbg !3079
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %20, i64 0, i32 9, !dbg !3099
  %22 = load %struct.strand_t*, %struct.strand_t** %21, align 8, !dbg !3099, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %22, metadata !369, metadata !DIExpression()), !dbg !3079
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %22, i64 0, i32 3, !dbg !3100
  %24 = load %struct.molecule_t*, %struct.molecule_t** %23, align 8, !dbg !3100, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %24, metadata !370, metadata !DIExpression()), !dbg !3079
  %25 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %24, i64 0, i32 5, !dbg !3101
  %26 = load i32, i32* %25, align 8, !dbg !3101, !tbaa !495
  %.not3 = icmp eq i32 %26, 0, !dbg !3103
  br i1 %.not3, label %27, label %28, !dbg !3104

27:                                               ; preds = %18
  call void @upd_molnumbers(%struct.molecule_t* %24), !dbg !3105
  br label %28, !dbg !3105

28:                                               ; preds = %27, %18
  %29 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %20, i64 0, i32 3, !dbg !3106
  br label %79, !dbg !3107

30:                                               ; preds = %16
  %31 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !3108
  %.not4 = icmp eq i32 %31, 0, !dbg !3108
  br i1 %.not4, label %32, label %44, !dbg !3110

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3111
  %34 = load %struct.residue_t*, %struct.residue_t** %33, align 8, !dbg !3111, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %34, metadata !368, metadata !DIExpression()), !dbg !3079
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 9, !dbg !3113
  %36 = load %struct.strand_t*, %struct.strand_t** %35, align 8, !dbg !3113, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %36, metadata !369, metadata !DIExpression()), !dbg !3079
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %36, i64 0, i32 3, !dbg !3114
  %38 = load %struct.molecule_t*, %struct.molecule_t** %37, align 8, !dbg !3114, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %38, metadata !370, metadata !DIExpression()), !dbg !3079
  %39 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %38, i64 0, i32 5, !dbg !3115
  %40 = load i32, i32* %39, align 8, !dbg !3115, !tbaa !495
  %.not5 = icmp eq i32 %40, 0, !dbg !3117
  br i1 %.not5, label %41, label %42, !dbg !3118

41:                                               ; preds = %32
  call void @upd_molnumbers(%struct.molecule_t* %38), !dbg !3119
  br label %42, !dbg !3119

42:                                               ; preds = %41, %32
  %43 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %34, i64 0, i32 2, !dbg !3120
  br label %79, !dbg !3121

44:                                               ; preds = %30
  %45 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0)) #12, !dbg !3122
  %.not6 = icmp eq i32 %45, 0, !dbg !3122
  br i1 %.not6, label %46, label %58, !dbg !3124

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3125
  %48 = load %struct.residue_t*, %struct.residue_t** %47, align 8, !dbg !3125, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %48, metadata !368, metadata !DIExpression()), !dbg !3079
  %49 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %48, i64 0, i32 9, !dbg !3127
  %50 = load %struct.strand_t*, %struct.strand_t** %49, align 8, !dbg !3127, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %50, metadata !369, metadata !DIExpression()), !dbg !3079
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %50, i64 0, i32 3, !dbg !3128
  %52 = load %struct.molecule_t*, %struct.molecule_t** %51, align 8, !dbg !3128, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %52, metadata !370, metadata !DIExpression()), !dbg !3079
  %53 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %52, i64 0, i32 5, !dbg !3129
  %54 = load i32, i32* %53, align 8, !dbg !3129, !tbaa !495
  %.not7 = icmp eq i32 %54, 0, !dbg !3131
  br i1 %.not7, label %55, label %56, !dbg !3132

55:                                               ; preds = %46
  call void @upd_molnumbers(%struct.molecule_t* %52), !dbg !3133
  br label %56, !dbg !3133

56:                                               ; preds = %55, %46
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 15, !dbg !3134
  br label %79, !dbg !3135

58:                                               ; preds = %44
  %59 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0)) #12, !dbg !3136
  %.not8 = icmp eq i32 %59, 0, !dbg !3136
  br i1 %.not8, label %60, label %72, !dbg !3138

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3139
  %62 = load %struct.residue_t*, %struct.residue_t** %61, align 8, !dbg !3139, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %62, metadata !368, metadata !DIExpression()), !dbg !3079
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %62, i64 0, i32 9, !dbg !3141
  %64 = load %struct.strand_t*, %struct.strand_t** %63, align 8, !dbg !3141, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !369, metadata !DIExpression()), !dbg !3079
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %64, i64 0, i32 3, !dbg !3142
  %66 = load %struct.molecule_t*, %struct.molecule_t** %65, align 8, !dbg !3142, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %66, metadata !370, metadata !DIExpression()), !dbg !3079
  %67 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %66, i64 0, i32 5, !dbg !3143
  %68 = load i32, i32* %67, align 8, !dbg !3143, !tbaa !495
  %.not9 = icmp eq i32 %68, 0, !dbg !3145
  br i1 %.not9, label %69, label %70, !dbg !3146

69:                                               ; preds = %60
  call void @upd_molnumbers(%struct.molecule_t* %66), !dbg !3147
  br label %70, !dbg !3147

70:                                               ; preds = %69, %60
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 14, !dbg !3148
  br label %79, !dbg !3149

72:                                               ; preds = %58
  %73 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #12, !dbg !3150
  %.not10 = icmp eq i32 %73, 0, !dbg !3150
  br i1 %.not10, label %74, label %76, !dbg !3152

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 11, !dbg !3153
  br label %79, !dbg !3155

76:                                               ; preds = %72
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3156, !tbaa !652
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.40, i64 0, i64 0), i8* %1) #13, !dbg !3157
  store i32 0, i32* @NAB_ari.rv_err, align 4, !dbg !3158, !tbaa !2242
  br label %79, !dbg !3159

79:                                               ; preds = %76, %74, %70, %56, %42, %28, %14
  %.0 = phi i32* [ @NAB_ari.rv_err, %76 ], [ %75, %74 ], [ %71, %70 ], [ %57, %56 ], [ %43, %42 ], [ %29, %28 ], [ %15, %14 ], !dbg !3079
  ret i32* %.0, !dbg !3160
}

; Function Attrs: nounwind uwtable
define dso_local double* @NAB_arf(%struct.atom_t* %0, i8* %1) #0 !dbg !373 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !377, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i8* %1, metadata !378, metadata !DIExpression()), !dbg !3161
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #12, !dbg !3162
  %.not = icmp eq i32 %3, 0, !dbg !3162
  br i1 %.not, label %4, label %6, !dbg !3164

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 0, !dbg !3165
  br label %33, !dbg !3166

6:                                                ; preds = %2
  %7 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #12, !dbg !3167
  %.not1 = icmp eq i32 %7, 0, !dbg !3167
  br i1 %.not1, label %8, label %10, !dbg !3169

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 1, !dbg !3170
  br label %33, !dbg !3171

10:                                               ; preds = %6
  %11 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12, !dbg !3172
  %.not2 = icmp eq i32 %11, 0, !dbg !3172
  br i1 %.not2, label %12, label %14, !dbg !3174

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 2, !dbg !3175
  br label %33, !dbg !3176

14:                                               ; preds = %10
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !3177
  %.not3 = icmp eq i32 %15, 0, !dbg !3177
  br i1 %.not3, label %16, label %18, !dbg !3179

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 6, !dbg !3180
  br label %33, !dbg !3181

18:                                               ; preds = %14
  %19 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i64 0, i64 0)) #12, !dbg !3182
  %.not4 = icmp eq i32 %19, 0, !dbg !3182
  br i1 %.not4, label %20, label %22, !dbg !3184

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 7, !dbg !3185
  br label %33, !dbg !3186

22:                                               ; preds = %18
  %23 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #12, !dbg !3187
  %.not5 = icmp eq i32 %23, 0, !dbg !3187
  br i1 %.not5, label %24, label %26, !dbg !3189

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 12, !dbg !3190
  br label %33, !dbg !3191

26:                                               ; preds = %22
  %27 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0)) #12, !dbg !3192
  %.not6 = icmp eq i32 %27, 0, !dbg !3192
  br i1 %.not6, label %28, label %30, !dbg !3194

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 13, !dbg !3195
  br label %33, !dbg !3196

30:                                               ; preds = %26
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3197, !tbaa !652
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0), i8* %1) #13, !dbg !3199
  store double 0.000000e+00, double* @NAB_arf.f, align 8, !dbg !3200, !tbaa !455
  br label %33, !dbg !3201

33:                                               ; preds = %30, %28, %24, %20, %16, %12, %8, %4
  %.0 = phi double* [ @NAB_arf.f, %30 ], [ %29, %28 ], [ %25, %24 ], [ %21, %20 ], [ %17, %16 ], [ %13, %12 ], [ %9, %8 ], [ %5, %4 ], !dbg !3202
  ret double* %.0, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local i8** @NAB_arc(%struct.atom_t* %0, i8* %1) #0 !dbg !3204 {
  %3 = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !3208, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %1, metadata !3209, metadata !DIExpression()), !dbg !3220
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !3221
  call void @llvm.lifetime.start.p0i8(i64 100, i8* nonnull %4) #11, !dbg !3221
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !3216, metadata !DIExpression()), !dbg !3222
  %5 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #12, !dbg !3223
  %.not = icmp eq i32 %5, 0, !dbg !3223
  br i1 %.not, label %6, label %8, !dbg !3225

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 0, !dbg !3226
  br label %80, !dbg !3228

8:                                                ; preds = %2
  %9 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0)) #12, !dbg !3229
  %.not14 = icmp eq i32 %9, 0, !dbg !3229
  br i1 %.not14, label %10, label %14, !dbg !3231

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3232
  %12 = load %struct.residue_t*, %struct.residue_t** %11, align 8, !dbg !3232, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %12, metadata !3210, metadata !DIExpression()), !dbg !3220
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i64 0, i32 4, !dbg !3234
  br label %80, !dbg !3235

14:                                               ; preds = %8
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0)) #12, !dbg !3236
  %.not15 = icmp eq i32 %15, 0, !dbg !3236
  br i1 %.not15, label %16, label %20, !dbg !3238

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3239
  %18 = load %struct.residue_t*, %struct.residue_t** %17, align 8, !dbg !3239, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %18, metadata !3210, metadata !DIExpression()), !dbg !3220
  %19 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %18, i64 0, i32 5, !dbg !3241
  br label %80, !dbg !3242

20:                                               ; preds = %14
  %21 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #12, !dbg !3243
  %.not16 = icmp eq i32 %21, 0, !dbg !3243
  br i1 %.not16, label %22, label %28, !dbg !3245

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3246
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !dbg !3246, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %24, metadata !3210, metadata !DIExpression()), !dbg !3220
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 9, !dbg !3248
  %26 = load %struct.strand_t*, %struct.strand_t** %25, align 8, !dbg !3248, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %26, metadata !3211, metadata !DIExpression()), !dbg !3220
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %26, i64 0, i32 0, !dbg !3249
  br label %80, !dbg !3250

28:                                               ; preds = %20
  %29 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0)) #12, !dbg !3251
  %.not17 = icmp eq i32 %29, 0, !dbg !3251
  br i1 %.not17, label %30, label %77, !dbg !3253

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 5, !dbg !3254
  %32 = load %struct.residue_t*, %struct.residue_t** %31, align 8, !dbg !3254, !tbaa !2696
  call void @llvm.dbg.value(metadata %struct.residue_t* %32, metadata !3210, metadata !DIExpression()), !dbg !3220
  %33 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %32, i64 0, i32 9, !dbg !3256
  %34 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !3256, !tbaa !883
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !3211, metadata !DIExpression()), !dbg !3220
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i64 0, i32 3, !dbg !3257
  %36 = load %struct.molecule_t*, %struct.molecule_t** %35, align 8, !dbg !3257, !tbaa !764
  call void @llvm.dbg.value(metadata %struct.molecule_t* %36, metadata !3213, metadata !DIExpression()), !dbg !3220
  call void @upd_molnumbers(%struct.molecule_t* %36), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 0, metadata !3215, metadata !DIExpression()), !dbg !3220
  %37 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i64 0, i32 5, !dbg !3259
  %38 = load i32, i32* %37, align 8, !dbg !3259, !tbaa !646
  %39 = icmp sgt i32 %38, 0, !dbg !3262
  br i1 %39, label %.lr.ph, label %.loopexit4, !dbg !3263

.lr.ph:                                           ; preds = %30, %46
  %indvars.iv9 = phi i64 [ %indvars.iv.next, %46 ], [ 0, %30 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !3215, metadata !DIExpression()), !dbg !3220
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %34, i64 0, i32 7, !dbg !3264
  %41 = load %struct.residue_t**, %struct.residue_t*** %40, align 8, !dbg !3264, !tbaa !650
  %42 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %41, i64 %indvars.iv9, !dbg !3266
  %43 = load %struct.residue_t*, %struct.residue_t** %42, align 8, !dbg !3266, !tbaa !652
  %44 = icmp eq %struct.residue_t* %43, %32, !dbg !3267
  br i1 %44, label %45, label %46, !dbg !3268

45:                                               ; preds = %.lr.ph
  br label %50, !dbg !3269

46:                                               ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3215, metadata !DIExpression()), !dbg !3220
  %47 = load i32, i32* %37, align 8, !dbg !3259, !tbaa !646
  %48 = sext i32 %47 to i64, !dbg !3262
  %49 = icmp slt i64 %indvars.iv.next, %48, !dbg !3262
  br i1 %49, label %.lr.ph, label %.loopexit4, !dbg !3263, !llvm.loop !3271

.loopexit4:                                       ; preds = %46, %30
  %.01.lcssa.wide = phi i64 [ 0, %30 ], [ %indvars.iv.next, %46 ]
  br label %50, !dbg !3273

50:                                               ; preds = %.loopexit4, %45
  %.017.in = phi i64 [ %.01.lcssa.wide, %.loopexit4 ], [ %indvars.iv9, %45 ]
  %.017 = trunc i64 %.017.in to i32, !dbg !3275
  call void @llvm.dbg.value(metadata i32 0, metadata !3214, metadata !DIExpression()), !dbg !3220
  %51 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %36, i64 0, i32 2, !dbg !3273
  %52 = load %struct.strand_t*, %struct.strand_t** %51, align 8, !dbg !3273, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %52, metadata !3212, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 0, metadata !3214, metadata !DIExpression()), !dbg !3220
  %.not18 = icmp eq %struct.strand_t* %52, null, !dbg !3276
  br i1 %.not18, label %.loopexit, label %.lr.ph12, !dbg !3276

.lr.ph12:                                         ; preds = %50, %55
  %.0211 = phi %struct.strand_t* [ %57, %55 ], [ %52, %50 ]
  %.0310 = phi i32 [ %53, %55 ], [ 0, %50 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0211, metadata !3212, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 %.0310, metadata !3214, metadata !DIExpression()), !dbg !3220
  %53 = add nuw nsw i32 %.0310, 1, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %53, metadata !3214, metadata !DIExpression()), !dbg !3220
  %54 = icmp eq %struct.strand_t* %.0211, %34, !dbg !3280
  br i1 %54, label %.loopexit, label %55, !dbg !3282

55:                                               ; preds = %.lr.ph12
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0211, i64 0, i32 4, !dbg !3283
  %57 = load %struct.strand_t*, %struct.strand_t** %56, align 8, !dbg !3283, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %57, metadata !3212, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 %53, metadata !3214, metadata !DIExpression()), !dbg !3220
  %.not20 = icmp eq %struct.strand_t* %57, null, !dbg !3276
  br i1 %.not20, label %.loopexit, label %.lr.ph12, !dbg !3276, !llvm.loop !3284

.loopexit:                                        ; preds = %50, %55, %.lr.ph12
  %.1 = phi i32 [ %53, %.lr.ph12 ], [ 0, %50 ], [ %53, %55 ], !dbg !3286
  call void @llvm.dbg.value(metadata i32 %.1, metadata !3214, metadata !DIExpression()), !dbg !3220
  %58 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !3287
  %59 = add nsw i32 %.017, 1, !dbg !3288
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 0, !dbg !3289
  %61 = load i8*, i8** %60, align 8, !dbg !3289, !tbaa !574
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %58, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i32 %.1, i32 %59, i8* %61) #11, !dbg !3290
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 16, !dbg !3291
  %64 = load i8*, i8** %63, align 8, !dbg !3291, !tbaa !596
  %.not19 = icmp eq i8* %64, null, !dbg !3293
  br i1 %.not19, label %68, label %65, !dbg !3294

65:                                               ; preds = %.loopexit
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 16, !dbg !3295
  %67 = load i8*, i8** %66, align 8, !dbg !3295, !tbaa !596
  call void @free(i8* %67) #11, !dbg !3296
  br label %68, !dbg !3296

68:                                               ; preds = %65, %.loopexit
  %69 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !3297
  %70 = call i64 @strlen(i8* noundef nonnull %69) #12, !dbg !3298
  %71 = add i64 %70, 1, !dbg !3299
  %72 = call noalias i8* @malloc(i64 %71) #11, !dbg !3300
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 16, !dbg !3301
  store i8* %72, i8** %73, align 8, !dbg !3302, !tbaa !596
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !3303
  %75 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %72, i8* noundef nonnull %74) #11, !dbg !3304
  %76 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 16, !dbg !3305
  br label %80, !dbg !3306

77:                                               ; preds = %28
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3307, !tbaa !652
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i64 0, i64 0), i8* %1) #13, !dbg !3309
  br label %80, !dbg !3310

80:                                               ; preds = %77, %68, %22, %16, %10, %6
  %.0 = phi i8** [ null, %77 ], [ %76, %68 ], [ %27, %22 ], [ %19, %16 ], [ %13, %10 ], [ %7, %6 ], !dbg !3311
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !3312
  call void @llvm.lifetime.end.p0i8(i64 100, i8* nonnull %81) #11, !dbg !3312
  ret i8** %.0, !dbg !3312
}

; Function Attrs: nounwind uwtable
define dso_local [3 x double]* @NAB_arp(%struct.atom_t* %0, i8* %1) #0 !dbg !3313 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !3317, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8* %1, metadata !3318, metadata !DIExpression()), !dbg !3320
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 0, !dbg !3321
  %4 = bitcast double* %3 to [3 x double]*, !dbg !3322
  call void @llvm.dbg.value(metadata [3 x double]* %4, metadata !3319, metadata !DIExpression()), !dbg !3320
  ret [3 x double]* %4, !dbg !3323
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @newtransform(double %0, double %1, double %2, double %3, double %4, double %5) #0 !dbg !381 {
  %7 = alloca [4 x [4 x double]], align 16
  %8 = alloca [4 x [4 x double]], align 16
  %9 = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata double %0, metadata !385, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata double %1, metadata !386, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata double %2, metadata !387, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata double %3, metadata !388, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata double %4, metadata !389, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata double %5, metadata !390, metadata !DIExpression()), !dbg !3324
  %10 = bitcast [4 x [4 x double]]* %7 to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %10) #11, !dbg !3325
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %7, metadata !392, metadata !DIExpression()), !dbg !3326
  %11 = bitcast [4 x [4 x double]]* %8 to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #11, !dbg !3325
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %8, metadata !393, metadata !DIExpression()), !dbg !3327
  %12 = bitcast [4 x [4 x double]]* %9 to i8*, !dbg !3325
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #11, !dbg !3325
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %9, metadata !394, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata double undef, metadata !390, metadata !DIExpression()), !dbg !3324
  call void @mk_idmat([4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 0)), !dbg !3329
  store double %0, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 3, i64 0), align 16, !dbg !3330, !tbaa !455
  store double %1, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 3, i64 1), align 8, !dbg !3331, !tbaa !455
  store double %2, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 3, i64 2), align 16, !dbg !3332, !tbaa !455
  %13 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3333
  call void @mk_idmat([4 x double]* nonnull %13), !dbg !3334
  %14 = fcmp une double %3, 0.000000e+00, !dbg !3335
  br i1 %14, label %15, label %35, !dbg !3337

15:                                               ; preds = %6
  %16 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3338
  call void @mk_idmat([4 x double]* nonnull %16), !dbg !3340
  %17 = fmul double %3, 0x3F91DF46A2529D39, !dbg !3341
  %18 = call double @cos(double %17) #11, !dbg !3342
  %19 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 1, i64 1, !dbg !3343
  store double %18, double* %19, align 8, !dbg !3344, !tbaa !455
  %20 = fmul double %3, 0x3F91DF46A2529D39, !dbg !3345
  %21 = call double @sin(double %20) #11, !dbg !3346
  %22 = fneg double %21, !dbg !3347
  %23 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 1, i64 2, !dbg !3348
  store double %22, double* %23, align 16, !dbg !3349, !tbaa !455
  %24 = fmul double %3, 0x3F91DF46A2529D39, !dbg !3350
  %25 = call double @sin(double %24) #11, !dbg !3351
  %26 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 2, i64 1, !dbg !3352
  store double %25, double* %26, align 8, !dbg !3353, !tbaa !455
  %27 = fmul double %3, 0x3F91DF46A2529D39, !dbg !3354
  %28 = call double @cos(double %27) #11, !dbg !3355
  %29 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 2, i64 2, !dbg !3356
  store double %28, double* %29, align 16, !dbg !3357, !tbaa !455
  %30 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3358
  %31 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3359
  %32 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3360
  call void @concat_mat([4 x double]* nonnull %30, [4 x double]* nonnull %31, [4 x double]* nonnull %32), !dbg !3361
  %33 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3362
  %34 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3363
  call void @copy_mat([4 x double]* nonnull %33, [4 x double]* nonnull %34), !dbg !3364
  br label %35, !dbg !3365

35:                                               ; preds = %15, %6
  %36 = fcmp une double %4, 0.000000e+00, !dbg !3366
  br i1 %36, label %37, label %57, !dbg !3368

37:                                               ; preds = %35
  %38 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3369
  call void @mk_idmat([4 x double]* nonnull %38), !dbg !3371
  %39 = fmul double %4, 0x3F91DF46A2529D39, !dbg !3372
  %40 = call double @cos(double %39) #11, !dbg !3373
  %41 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, i64 0, !dbg !3374
  store double %40, double* %41, align 16, !dbg !3375, !tbaa !455
  %42 = fmul double %4, 0x3F91DF46A2529D39, !dbg !3376
  %43 = call double @sin(double %42) #11, !dbg !3377
  %44 = fneg double %43, !dbg !3378
  %45 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, i64 2, !dbg !3379
  store double %44, double* %45, align 16, !dbg !3380, !tbaa !455
  %46 = fmul double %4, 0x3F91DF46A2529D39, !dbg !3381
  %47 = call double @sin(double %46) #11, !dbg !3382
  %48 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 2, i64 0, !dbg !3383
  store double %47, double* %48, align 16, !dbg !3384, !tbaa !455
  %49 = fmul double %4, 0x3F91DF46A2529D39, !dbg !3385
  %50 = call double @cos(double %49) #11, !dbg !3386
  %51 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 2, i64 2, !dbg !3387
  store double %50, double* %51, align 16, !dbg !3388, !tbaa !455
  %52 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3389
  %53 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3390
  %54 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3391
  call void @concat_mat([4 x double]* nonnull %52, [4 x double]* nonnull %53, [4 x double]* nonnull %54), !dbg !3392
  %55 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3393
  %56 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3394
  call void @copy_mat([4 x double]* nonnull %55, [4 x double]* nonnull %56), !dbg !3395
  br label %57, !dbg !3396

57:                                               ; preds = %37, %35
  %58 = fcmp une double %5, 0.000000e+00, !dbg !3397
  br i1 %58, label %59, label %79, !dbg !3399

59:                                               ; preds = %57
  %60 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3400
  call void @mk_idmat([4 x double]* nonnull %60), !dbg !3402
  %61 = fmul double %5, 0xBF91DF46A2529D39, !dbg !3403
  %62 = call double @cos(double %61) #11, !dbg !3404
  %63 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, i64 0, !dbg !3405
  store double %62, double* %63, align 16, !dbg !3406, !tbaa !455
  %64 = fmul double %5, 0xBF91DF46A2529D39, !dbg !3407
  %65 = call double @sin(double %64) #11, !dbg !3408
  %66 = fneg double %65, !dbg !3409
  %67 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, i64 1, !dbg !3410
  store double %66, double* %67, align 8, !dbg !3411, !tbaa !455
  %68 = fmul double %5, 0xBF91DF46A2529D39, !dbg !3412
  %69 = call double @sin(double %68) #11, !dbg !3413
  %70 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 1, i64 0, !dbg !3414
  store double %69, double* %70, align 16, !dbg !3415, !tbaa !455
  %71 = fmul double %5, 0xBF91DF46A2529D39, !dbg !3416
  %72 = call double @cos(double %71) #11, !dbg !3417
  %73 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 1, i64 1, !dbg !3418
  store double %72, double* %73, align 8, !dbg !3419, !tbaa !455
  %74 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3420
  %75 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %8, i64 0, i64 0, !dbg !3421
  %76 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3422
  call void @concat_mat([4 x double]* nonnull %74, [4 x double]* nonnull %75, [4 x double]* nonnull %76), !dbg !3423
  %77 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3424
  %78 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3425
  call void @copy_mat([4 x double]* nonnull %77, [4 x double]* nonnull %78), !dbg !3426
  br label %79, !dbg !3427

79:                                               ; preds = %59, %57
  %80 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3428
  %81 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3429
  call void @concat_mat([4 x double]* nonnull %80, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 0), [4 x double]* nonnull %81), !dbg !3430
  %82 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %9, i64 0, i64 0, !dbg !3431
  call void @copy_mat([4 x double]* nonnull %82, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @newtransform.mp, i64 0, i64 0)), !dbg !3432
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @newtransform.mp to i8*), metadata !391, metadata !DIExpression()), !dbg !3324
  %83 = bitcast [4 x [4 x double]]* %9 to i8*, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %83) #11, !dbg !3433
  %84 = bitcast [4 x [4 x double]]* %8 to i8*, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %84) #11, !dbg !3433
  %85 = bitcast [4 x [4 x double]]* %7 to i8*, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %85) #11, !dbg !3433
  ret [4 x [4 x double]]* @newtransform.mp, !dbg !3434
}

; Function Attrs: nounwind uwtable
define internal void @mk_idmat([4 x double]* %0) #0 !dbg !3435 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3439, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 0, metadata !3440, metadata !DIExpression()), !dbg !3442
  br label %2, !dbg !3443

2:                                                ; preds = %1, %7
  %indvars.iv38 = phi i64 [ 0, %1 ], [ %indvars.iv.next4, %7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv38, metadata !3440, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 0, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 0, metadata !3441, metadata !DIExpression()), !dbg !3442
  br label %3, !dbg !3445

3:                                                ; preds = %2, %3
  %indvars.iv7 = phi i64 [ 0, %2 ], [ %indvars.iv.next, %3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !3441, metadata !DIExpression()), !dbg !3442
  %4 = icmp eq i64 %indvars.iv38, %indvars.iv7, !dbg !3449
  %5 = select i1 %4, double 1.000000e+00, double 0.000000e+00, !dbg !3452
  %6 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 %indvars.iv38, i64 %indvars.iv7, !dbg !3453
  store double %5, double* %6, align 8, !dbg !3454, !tbaa !455
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3441, metadata !DIExpression()), !dbg !3442
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !3456
  br i1 %exitcond.not, label %7, label %3, !dbg !3445, !llvm.loop !3457

7:                                                ; preds = %3
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv38, 1, !dbg !3459
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !3440, metadata !DIExpression()), !dbg !3442
  %exitcond6.not = icmp eq i64 %indvars.iv.next4, 4, !dbg !3460
  br i1 %exitcond6.not, label %8, label %2, !dbg !3443, !llvm.loop !3461

8:                                                ; preds = %7
  ret void, !dbg !3463
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #3

; Function Attrs: nounwind
declare dso_local double @sin(double) #3

; Function Attrs: nounwind uwtable
define internal void @concat_mat([4 x double]* %0, [4 x double]* %1, [4 x double]* %2) #0 !dbg !3464 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3468, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !3469, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata [4 x double]* %2, metadata !3470, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 0, metadata !3471, metadata !DIExpression()), !dbg !3474
  br label %4, !dbg !3475

4:                                                ; preds = %3, %17
  %indvars.iv814 = phi i64 [ 0, %3 ], [ %indvars.iv.next9, %17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv814, metadata !3471, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 0, metadata !3472, metadata !DIExpression()), !dbg !3474
  br label %5, !dbg !3477

5:                                                ; preds = %4, %16
  %indvars.iv413 = phi i64 [ 0, %4 ], [ %indvars.iv.next5, %16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv413, metadata !3472, metadata !DIExpression()), !dbg !3474
  %6 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 %indvars.iv814, i64 %indvars.iv413, !dbg !3481
  store double 0.000000e+00, double* %6, align 8, !dbg !3484, !tbaa !455
  call void @llvm.dbg.value(metadata i32 0, metadata !3473, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 0, metadata !3473, metadata !DIExpression()), !dbg !3474
  br label %7, !dbg !3485

7:                                                ; preds = %5, %7
  %indvars.iv12 = phi i64 [ 0, %5 ], [ %indvars.iv.next, %7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv12, metadata !3473, metadata !DIExpression()), !dbg !3474
  %8 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 %indvars.iv814, i64 %indvars.iv12, !dbg !3487
  %9 = load double, double* %8, align 8, !dbg !3487, !tbaa !455
  %10 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv12, i64 %indvars.iv413, !dbg !3490
  %11 = load double, double* %10, align 8, !dbg !3490, !tbaa !455
  %12 = fmul double %9, %11, !dbg !3491
  %13 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 %indvars.iv814, i64 %indvars.iv413, !dbg !3492
  %14 = load double, double* %13, align 8, !dbg !3493, !tbaa !455
  %15 = fadd double %14, %12, !dbg !3493
  store double %15, double* %13, align 8, !dbg !3493, !tbaa !455
  %indvars.iv.next = add nuw nsw i64 %indvars.iv12, 1, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3473, metadata !DIExpression()), !dbg !3474
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !3495
  br i1 %exitcond.not, label %16, label %7, !dbg !3485, !llvm.loop !3496

16:                                               ; preds = %7
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv413, 1, !dbg !3498
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !3472, metadata !DIExpression()), !dbg !3474
  %exitcond7.not = icmp eq i64 %indvars.iv.next5, 4, !dbg !3499
  br i1 %exitcond7.not, label %17, label %5, !dbg !3477, !llvm.loop !3500

17:                                               ; preds = %16
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv814, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !3471, metadata !DIExpression()), !dbg !3474
  %exitcond11.not = icmp eq i64 %indvars.iv.next9, 4, !dbg !3503
  br i1 %exitcond11.not, label %18, label %4, !dbg !3475, !llvm.loop !3504

18:                                               ; preds = %17
  ret void, !dbg !3506
}

; Function Attrs: nounwind uwtable
define internal void @copy_mat([4 x double]* %0, [4 x double]* %1) #0 !dbg !3507 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3511, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !3512, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 0, metadata !3513, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 0, metadata !3513, metadata !DIExpression()), !dbg !3515
  br label %3, !dbg !3516

3:                                                ; preds = %2, %8
  %indvars.iv38 = phi i64 [ 0, %2 ], [ %indvars.iv.next4, %8 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv38, metadata !3513, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 0, metadata !3514, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 0, metadata !3514, metadata !DIExpression()), !dbg !3515
  br label %4, !dbg !3518

4:                                                ; preds = %3, %4
  %indvars.iv7 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !3514, metadata !DIExpression()), !dbg !3515
  %5 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 %indvars.iv38, i64 %indvars.iv7, !dbg !3522
  %6 = load double, double* %5, align 8, !dbg !3522, !tbaa !455
  %7 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv38, i64 %indvars.iv7, !dbg !3524
  store double %6, double* %7, align 8, !dbg !3525, !tbaa !455
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3514, metadata !DIExpression()), !dbg !3515
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !3527
  br i1 %exitcond.not, label %8, label %4, !dbg !3518, !llvm.loop !3528

8:                                                ; preds = %4
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv38, 1, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !3513, metadata !DIExpression()), !dbg !3515
  %exitcond6.not = icmp eq i64 %indvars.iv.next4, 4, !dbg !3531
  br i1 %exitcond6.not, label %9, label %3, !dbg !3516, !llvm.loop !3532

9:                                                ; preds = %8
  ret void, !dbg !3534
}

; Function Attrs: nounwind uwtable
define dso_local %struct.residue_t* @transformres([4 x double]* %0, %struct.residue_t* %1, i8* %2) #0 !dbg !3535 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3539, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata %struct.residue_t* %1, metadata !3540, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i8* %2, metadata !3541, metadata !DIExpression()), !dbg !3548
  %6 = bitcast [3 x double]* %4 to i8*, !dbg !3549
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3549
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !3546, metadata !DIExpression()), !dbg !3550
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !3549
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #11, !dbg !3549
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !3547, metadata !DIExpression()), !dbg !3551
  %8 = call %struct.residue_t* @copyresidue(%struct.residue_t* %1) #11, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.residue_t* %8, metadata !3542, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 0, metadata !3543, metadata !DIExpression()), !dbg !3548
  %9 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %8, i64 0, i32 15, !dbg !3553
  %10 = load i32, i32* %9, align 8, !dbg !3553, !tbaa !568
  %11 = icmp sgt i32 %10, 0, !dbg !3556
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !3557

.lr.ph:                                           ; preds = %3, %25
  %indvars.iv712 = phi i64 [ %indvars.iv.next8, %25 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv712, metadata !3543, metadata !DIExpression()), !dbg !3548
  %12 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %8, i64 0, i32 17, !dbg !3558
  %13 = load %struct.atom_t*, %struct.atom_t** %12, align 8, !dbg !3558, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %13, i64 %indvars.iv712), metadata !3545, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3548
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 0, metadata !3544, metadata !DIExpression()), !dbg !3548
  br label %14, !dbg !3560

14:                                               ; preds = %.lr.ph, %14
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !3544, metadata !DIExpression()), !dbg !3548
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 %indvars.iv712, i32 17, i64 %indvars.iv10, !dbg !3562
  %16 = load double, double* %15, align 8, !dbg !3562, !tbaa !455
  %17 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 %indvars.iv10, !dbg !3564
  store double %16, double* %17, align 8, !dbg !3565, !tbaa !455
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 1, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3544, metadata !DIExpression()), !dbg !3548
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !3567
  br i1 %exitcond.not, label %18, label %14, !dbg !3560, !llvm.loop !3568

18:                                               ; preds = %14
  %19 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !3570
  %20 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !3571
  call void @xfm_xyz(double* nonnull %19, [4 x double]* %0, double* nonnull %20), !dbg !3572
  call void @llvm.dbg.value(metadata i32 0, metadata !3544, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i64 0, metadata !3544, metadata !DIExpression()), !dbg !3548
  br label %21, !dbg !3573

21:                                               ; preds = %18, %21
  %indvars.iv311 = phi i64 [ 0, %18 ], [ %indvars.iv.next4, %21 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv311, metadata !3544, metadata !DIExpression()), !dbg !3548
  %22 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %indvars.iv311, !dbg !3575
  %23 = load double, double* %22, align 8, !dbg !3575, !tbaa !455
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %13, i64 %indvars.iv712, i32 17, i64 %indvars.iv311, !dbg !3577
  store double %23, double* %24, align 8, !dbg !3578, !tbaa !455
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv311, 1, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !3544, metadata !DIExpression()), !dbg !3548
  %exitcond6.not = icmp eq i64 %indvars.iv.next4, 3, !dbg !3580
  br i1 %exitcond6.not, label %25, label %21, !dbg !3573, !llvm.loop !3581

25:                                               ; preds = %21
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv712, 1, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !3543, metadata !DIExpression()), !dbg !3548
  %26 = load i32, i32* %9, align 8, !dbg !3553, !tbaa !568
  %27 = sext i32 %26 to i64, !dbg !3556
  %28 = icmp slt i64 %indvars.iv.next8, %27, !dbg !3556
  br i1 %28, label %.lr.ph, label %._crit_edge, !dbg !3557, !llvm.loop !3584

._crit_edge:                                      ; preds = %25, %3
  %29 = bitcast [3 x double]* %5 to i8*, !dbg !3586
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %29) #11, !dbg !3586
  %30 = bitcast [3 x double]* %4 to i8*, !dbg !3586
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30) #11, !dbg !3586
  ret %struct.residue_t* %8, !dbg !3587
}

; Function Attrs: nounwind uwtable
define internal void @xfm_xyz(double* %0, [4 x double]* %1, double* %2) #0 !dbg !3588 {
  %4 = alloca [4 x double], align 16
  %5 = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata double* %0, metadata !3592, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !3593, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata double* %2, metadata !3594, metadata !DIExpression()), !dbg !3599
  %6 = bitcast [4 x double]* %4 to i8*, !dbg !3600
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #11, !dbg !3600
  call void @llvm.dbg.declare(metadata [4 x double]* %4, metadata !3597, metadata !DIExpression()), !dbg !3601
  %7 = bitcast [4 x double]* %5 to i8*, !dbg !3600
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #11, !dbg !3600
  call void @llvm.dbg.declare(metadata [4 x double]* %5, metadata !3598, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 0, metadata !3595, metadata !DIExpression()), !dbg !3599
  br label %8, !dbg !3603

8:                                                ; preds = %3, %8
  %indvars.iv15 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %8 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !3595, metadata !DIExpression()), !dbg !3599
  %9 = getelementptr inbounds double, double* %0, i64 %indvars.iv15, !dbg !3605
  %10 = load double, double* %9, align 8, !dbg !3605, !tbaa !455
  %11 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 %indvars.iv15, !dbg !3607
  store double %10, double* %11, align 8, !dbg !3608, !tbaa !455
  %indvars.iv.next = add nuw nsw i64 %indvars.iv15, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3595, metadata !DIExpression()), !dbg !3599
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !3610
  br i1 %exitcond.not, label %12, label %8, !dbg !3603, !llvm.loop !3611

12:                                               ; preds = %8
  %13 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3, !dbg !3613
  store double 1.000000e+00, double* %13, align 8, !dbg !3614, !tbaa !455
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 0, metadata !3595, metadata !DIExpression()), !dbg !3599
  br label %14, !dbg !3615

14:                                               ; preds = %12, %25
  %indvars.iv717 = phi i64 [ 0, %12 ], [ %indvars.iv.next8, %25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv717, metadata !3595, metadata !DIExpression()), !dbg !3599
  %15 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %indvars.iv717, !dbg !3617
  store double 0.000000e+00, double* %15, align 8, !dbg !3620, !tbaa !455
  call void @llvm.dbg.value(metadata i32 0, metadata !3596, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 0, metadata !3596, metadata !DIExpression()), !dbg !3599
  br label %16, !dbg !3621

16:                                               ; preds = %14, %16
  %indvars.iv316 = phi i64 [ 0, %14 ], [ %indvars.iv.next4, %16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv316, metadata !3596, metadata !DIExpression()), !dbg !3599
  %17 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 %indvars.iv316, !dbg !3623
  %18 = load double, double* %17, align 8, !dbg !3623, !tbaa !455
  %19 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv316, i64 %indvars.iv717, !dbg !3626
  %20 = load double, double* %19, align 8, !dbg !3626, !tbaa !455
  %21 = fmul double %18, %20, !dbg !3627
  %22 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %indvars.iv717, !dbg !3628
  %23 = load double, double* %22, align 8, !dbg !3629, !tbaa !455
  %24 = fadd double %23, %21, !dbg !3629
  store double %24, double* %22, align 8, !dbg !3629, !tbaa !455
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv316, 1, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !3596, metadata !DIExpression()), !dbg !3599
  %exitcond6.not = icmp eq i64 %indvars.iv.next4, 4, !dbg !3631
  br i1 %exitcond6.not, label %25, label %16, !dbg !3621, !llvm.loop !3632

25:                                               ; preds = %16
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv717, 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !3595, metadata !DIExpression()), !dbg !3599
  %exitcond10.not = icmp eq i64 %indvars.iv.next8, 4, !dbg !3635
  br i1 %exitcond10.not, label %26, label %14, !dbg !3615, !llvm.loop !3636

26:                                               ; preds = %25, %26
  %indvars.iv1118 = phi i64 [ %indvars.iv.next12, %26 ], [ 0, %25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1118, metadata !3595, metadata !DIExpression()), !dbg !3599
  %27 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 %indvars.iv1118, !dbg !3638
  %28 = load double, double* %27, align 8, !dbg !3638, !tbaa !455
  %29 = getelementptr inbounds double, double* %2, i64 %indvars.iv1118, !dbg !3641
  store double %28, double* %29, align 8, !dbg !3642, !tbaa !455
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv1118, 1, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next12, metadata !3595, metadata !DIExpression()), !dbg !3599
  %exitcond14.not = icmp eq i64 %indvars.iv.next12, 3, !dbg !3644
  br i1 %exitcond14.not, label %30, label %26, !dbg !3645, !llvm.loop !3646

30:                                               ; preds = %26
  %31 = bitcast [4 x double]* %5 to i8*, !dbg !3648
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %31) #11, !dbg !3648
  %32 = bitcast [4 x double]* %4 to i8*, !dbg !3648
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %32) #11, !dbg !3648
  ret void, !dbg !3648
}

; Function Attrs: nounwind uwtable
define dso_local i32 @transformmol([4 x double]* %0, %struct.molecule_t* %1, i8* %2) #0 !dbg !3649 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3653, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !3654, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %2, metadata !3655, metadata !DIExpression()), !dbg !3665
  %6 = bitcast [3 x double]* %4 to i8*, !dbg !3666
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3666
  call void @llvm.dbg.declare(metadata [3 x double]* %4, metadata !3663, metadata !DIExpression()), !dbg !3667
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !3666
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #11, !dbg !3666
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !3664, metadata !DIExpression()), !dbg !3668
  %8 = call i32 @select_atoms(%struct.molecule_t* %1, i8* %2) #11, !dbg !3669
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !3670
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !3670, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %10, metadata !3656, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 0, metadata !3661, metadata !DIExpression()), !dbg !3665
  %.not = icmp eq %struct.strand_t* %10, null, !dbg !3672
  br i1 %.not, label %._crit_edge31, label %.lr.ph30, !dbg !3672

.lr.ph30:                                         ; preds = %3, %._crit_edge25
  %.028 = phi i32 [ %.1.lcssa, %._crit_edge25 ], [ 0, %3 ]
  %.0427 = phi %struct.strand_t* [ %47, %._crit_edge25 ], [ %10, %3 ]
  call void @llvm.dbg.value(metadata i32 %.028, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0427, metadata !3656, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 0, metadata !3658, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 %.028, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 0, metadata !3658, metadata !DIExpression()), !dbg !3665
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0427, i64 0, i32 5, !dbg !3673
  %12 = load i32, i32* %11, align 8, !dbg !3673, !tbaa !646
  %13 = icmp sgt i32 %12, 0, !dbg !3678
  br i1 %13, label %.lr.ph24, label %._crit_edge25, !dbg !3679

.lr.ph24:                                         ; preds = %.lr.ph30, %._crit_edge
  %.122 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.028, %.lr.ph30 ]
  %indvars.iv1421 = phi i64 [ %indvars.iv.next15, %._crit_edge ], [ 0, %.lr.ph30 ]
  call void @llvm.dbg.value(metadata i32 %.122, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %indvars.iv1421, metadata !3658, metadata !DIExpression()), !dbg !3665
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0427, i64 0, i32 7, !dbg !3680
  %15 = load %struct.residue_t**, %struct.residue_t*** %14, align 8, !dbg !3680, !tbaa !650
  %16 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %15, i64 %indvars.iv1421, !dbg !3682
  %17 = load %struct.residue_t*, %struct.residue_t** %16, align 8, !dbg !3682, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %17, metadata !3657, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 0, metadata !3659, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 %.122, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 0, metadata !3659, metadata !DIExpression()), !dbg !3665
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 15, !dbg !3683
  %19 = load i32, i32* %18, align 8, !dbg !3683, !tbaa !568
  %20 = icmp sgt i32 %19, 0, !dbg !3686
  br i1 %20, label %.lr.ph, label %._crit_edge, !dbg !3687

.lr.ph:                                           ; preds = %.lr.ph24, %39
  %.220 = phi i32 [ %.3, %39 ], [ %.122, %.lr.ph24 ]
  %indvars.iv1119 = phi i64 [ %indvars.iv.next12, %39 ], [ 0, %.lr.ph24 ]
  call void @llvm.dbg.value(metadata i32 %.220, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %indvars.iv1119, metadata !3659, metadata !DIExpression()), !dbg !3665
  %21 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i64 0, i32 17, !dbg !3688
  %22 = load %struct.atom_t*, %struct.atom_t** %21, align 8, !dbg !3688, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %22, i64 %indvars.iv1119), metadata !3662, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3665
  %23 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %indvars.iv1119, i32 2, !dbg !3690
  %24 = load i32, i32* %23, align 8, !dbg !3690, !tbaa !1592
  %25 = and i32 %24, 1, !dbg !3692
  %.not34 = icmp eq i32 %25, 0, !dbg !3692
  br i1 %.not34, label %39, label %26, !dbg !3693

26:                                               ; preds = %.lr.ph, %26
  %indvars.iv17 = phi i64 [ %indvars.iv.next, %26 ], [ 0, %.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !3660, metadata !DIExpression()), !dbg !3665
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %indvars.iv1119, i32 17, i64 %indvars.iv17, !dbg !3694
  %28 = load double, double* %27, align 8, !dbg !3694, !tbaa !455
  %29 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 %indvars.iv17, !dbg !3698
  store double %28, double* %29, align 8, !dbg !3699, !tbaa !455
  %indvars.iv.next = add nuw nsw i64 %indvars.iv17, 1, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3660, metadata !DIExpression()), !dbg !3665
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !3701
  br i1 %exitcond.not, label %30, label %26, !dbg !3702, !llvm.loop !3703

30:                                               ; preds = %26
  %31 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0, !dbg !3705
  %32 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !3706
  call void @xfm_xyz(double* nonnull %31, [4 x double]* %0, double* nonnull %32), !dbg !3707
  call void @llvm.dbg.value(metadata i32 0, metadata !3660, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 0, metadata !3660, metadata !DIExpression()), !dbg !3665
  br label %33, !dbg !3708

33:                                               ; preds = %30, %33
  %indvars.iv718 = phi i64 [ 0, %30 ], [ %indvars.iv.next8, %33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv718, metadata !3660, metadata !DIExpression()), !dbg !3665
  %34 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %indvars.iv718, !dbg !3710
  %35 = load double, double* %34, align 8, !dbg !3710, !tbaa !455
  %36 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i64 %indvars.iv1119, i32 17, i64 %indvars.iv718, !dbg !3712
  store double %35, double* %36, align 8, !dbg !3713, !tbaa !455
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv718, 1, !dbg !3714
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !3660, metadata !DIExpression()), !dbg !3665
  %exitcond10.not = icmp eq i64 %indvars.iv.next8, 3, !dbg !3715
  br i1 %exitcond10.not, label %37, label %33, !dbg !3708, !llvm.loop !3716

37:                                               ; preds = %33
  %38 = add nsw i32 %.220, 1, !dbg !3718
  br label %39, !dbg !3719

39:                                               ; preds = %.lr.ph, %37
  %.3 = phi i32 [ %38, %37 ], [ %.220, %.lr.ph ], !dbg !3720
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3661, metadata !DIExpression()), !dbg !3665
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv1119, 1, !dbg !3721
  call void @llvm.dbg.value(metadata i32 %.3, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next12, metadata !3659, metadata !DIExpression()), !dbg !3665
  %40 = load i32, i32* %18, align 8, !dbg !3683, !tbaa !568
  %41 = sext i32 %40 to i64, !dbg !3686
  %42 = icmp slt i64 %indvars.iv.next12, %41, !dbg !3686
  br i1 %42, label %.lr.ph, label %._crit_edge, !dbg !3687, !llvm.loop !3722

._crit_edge:                                      ; preds = %.lr.ph24, %39
  %.2.lcssa = phi i32 [ %.122, %.lr.ph24 ], [ %.3, %39 ], !dbg !3720
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv1421, 1, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next15, metadata !3658, metadata !DIExpression()), !dbg !3665
  %43 = load i32, i32* %11, align 8, !dbg !3673, !tbaa !646
  %44 = sext i32 %43 to i64, !dbg !3678
  %45 = icmp slt i64 %indvars.iv.next15, %44, !dbg !3678
  br i1 %45, label %.lr.ph24, label %._crit_edge25, !dbg !3679, !llvm.loop !3725

._crit_edge25:                                    ; preds = %.lr.ph30, %._crit_edge
  %.1.lcssa = phi i32 [ %.028, %.lr.ph30 ], [ %.2.lcssa, %._crit_edge ], !dbg !3727
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0427, i64 0, i32 4, !dbg !3728
  %47 = load %struct.strand_t*, %struct.strand_t** %46, align 8, !dbg !3728, !tbaa !634
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata %struct.strand_t* %47, metadata !3656, metadata !DIExpression()), !dbg !3665
  %.not33 = icmp eq %struct.strand_t* %47, null, !dbg !3672
  br i1 %.not33, label %._crit_edge31, label %.lr.ph30, !dbg !3672, !llvm.loop !3729

._crit_edge31:                                    ; preds = %._crit_edge25, %3
  %.0.lcssa = phi i32 [ 0, %3 ], [ %.1.lcssa, %._crit_edge25 ], !dbg !3727
  %48 = bitcast [3 x double]* %5 to i8*, !dbg !3731
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %48) #11, !dbg !3731
  %49 = bitcast [3 x double]* %4 to i8*, !dbg !3731
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %49) #11, !dbg !3731
  ret i32 %.0.lcssa, !dbg !3732
}

; Function Attrs: nounwind uwtable
define dso_local i32 @transformpts([4 x double]* %0, [3 x double]* %1, i32 %2) #0 !dbg !3733 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !3737, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata [3 x double]* %1, metadata !3738, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 %2, metadata !3739, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i32 0, metadata !3740, metadata !DIExpression()), !dbg !3741
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0), !dbg !3742
  %wide.trip.count = zext i32 %smax to i64, !dbg !3744
  call void @llvm.dbg.value(metadata i64 0, metadata !3740, metadata !DIExpression()), !dbg !3741
  %exitcond2.not = icmp slt i32 %2, 1, !dbg !3744
  br i1 %exitcond2.not, label %._crit_edge, label %.lr.ph, !dbg !3746

.lr.ph:                                           ; preds = %3, %.lr.ph
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3740, metadata !DIExpression()), !dbg !3741
  %4 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %indvars.iv3, i64 0, !dbg !3747
  %5 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %indvars.iv3, i64 0, !dbg !3748
  call void @xfm_xyz(double* %4, [4 x double]* %0, double* %5), !dbg !3749
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !3750
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3740, metadata !DIExpression()), !dbg !3741
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3744
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !3746, !llvm.loop !3751

._crit_edge:                                      ; preds = %.lr.ph, %3
  ret i32 0, !dbg !3753
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @updtransform([4 x double]* %0, [4 x double]* %1) #0 !dbg !397 {
  call void @llvm.dbg.value(metadata [4 x double]* %0, metadata !403, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !404, metadata !DIExpression()), !dbg !3754
  call void @concat_mat([4 x double]* %0, [4 x double]* %1, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @updtransform.mr, i64 0, i64 0)), !dbg !3755
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @updtransform.mr to i8*), metadata !405, metadata !DIExpression()), !dbg !3754
  ret [4 x [4 x double]]* @updtransform.mr, !dbg !3756
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @trans4p(double* %0, double* %1, double %2) #0 !dbg !408 {
  call void @llvm.dbg.value(metadata double* %0, metadata !412, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata double* %1, metadata !413, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata double %2, metadata !414, metadata !DIExpression()), !dbg !3757
  %4 = load double, double* %1, align 8, !dbg !3758, !tbaa !455
  %5 = load double, double* %0, align 8, !dbg !3759, !tbaa !455
  %6 = fsub double %4, %5, !dbg !3760
  call void @llvm.dbg.value(metadata double %6, metadata !416, metadata !DIExpression()), !dbg !3757
  %7 = getelementptr inbounds double, double* %1, i64 1, !dbg !3761
  %8 = load double, double* %7, align 8, !dbg !3761, !tbaa !455
  %9 = getelementptr inbounds double, double* %0, i64 1, !dbg !3762
  %10 = load double, double* %9, align 8, !dbg !3762, !tbaa !455
  %11 = fsub double %8, %10, !dbg !3763
  call void @llvm.dbg.value(metadata double %11, metadata !417, metadata !DIExpression()), !dbg !3757
  %12 = getelementptr inbounds double, double* %1, i64 2, !dbg !3764
  %13 = load double, double* %12, align 8, !dbg !3764, !tbaa !455
  %14 = getelementptr inbounds double, double* %0, i64 2, !dbg !3765
  %15 = load double, double* %14, align 8, !dbg !3765, !tbaa !455
  %16 = fsub double %13, %15, !dbg !3766
  call void @llvm.dbg.value(metadata double %16, metadata !418, metadata !DIExpression()), !dbg !3757
  %17 = fmul double %6, %6, !dbg !3767
  %18 = fmul double %11, %11, !dbg !3769
  %19 = fadd double %17, %18, !dbg !3770
  %20 = fmul double %16, %16, !dbg !3771
  %21 = fadd double %19, %20, !dbg !3772
  %22 = call double @sqrt(double %21) #11, !dbg !3773
  call void @llvm.dbg.value(metadata double %22, metadata !419, metadata !DIExpression()), !dbg !3757
  %23 = fcmp oeq double %22, 0.000000e+00, !dbg !3774
  br i1 %23, label %24, label %28, !dbg !3775

24:                                               ; preds = %3
  %25 = call [4 x [4 x double]]* @newtransform(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00), !dbg !3776
  %26 = bitcast [4 x [4 x double]]* %25 to i8*, !dbg !3776
  %27 = call [4 x [4 x double]]* @NAB_matcpy(i8* bitcast ([4 x [4 x double]]* @trans4p.mat to i8*), i8* %26), !dbg !3778
  br label %38, !dbg !3779

28:                                               ; preds = %3
  %29 = fdiv double %6, %22, !dbg !3780
  call void @llvm.dbg.value(metadata double %29, metadata !416, metadata !DIExpression()), !dbg !3757
  %30 = fdiv double %11, %22, !dbg !3782
  call void @llvm.dbg.value(metadata double %30, metadata !417, metadata !DIExpression()), !dbg !3757
  %31 = fdiv double %16, %22, !dbg !3783
  call void @llvm.dbg.value(metadata double %31, metadata !418, metadata !DIExpression()), !dbg !3757
  %32 = fmul double %29, %2, !dbg !3784
  %33 = fmul double %30, %2, !dbg !3785
  %34 = fmul double %31, %2, !dbg !3786
  %35 = call [4 x [4 x double]]* @newtransform(double %32, double %33, double %34, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00), !dbg !3787
  %36 = bitcast [4 x [4 x double]]* %35 to i8*, !dbg !3787
  %37 = call [4 x [4 x double]]* @NAB_matcpy(i8* bitcast ([4 x [4 x double]]* @trans4p.mat to i8*), i8* %36), !dbg !3788
  br label %38

38:                                               ; preds = %28, %24
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @trans4p.mat to i8*), metadata !415, metadata !DIExpression()), !dbg !3757
  ret [4 x [4 x double]]* @trans4p.mat, !dbg !3789
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @NAB_matcpy(i8* %0, i8* %1) #0 !dbg !3790 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3794, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8* %1, metadata !3795, metadata !DIExpression()), !dbg !3796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %0, i8* noundef nonnull align 1 dereferenceable(128) %1, i64 128, i1 false), !dbg !3797
  %3 = bitcast i8* %0 to [4 x [4 x double]]*, !dbg !3798
  ret [4 x [4 x double]]* %3, !dbg !3799
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @trans4(%struct.molecule_t* %0, i8* %1, i8* %2, double %3) #0 !dbg !3800 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !3804, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* %1, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* %2, metadata !3806, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata double %3, metadata !3807, metadata !DIExpression()), !dbg !3810
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !3811
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #11, !dbg !3811
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !3808, metadata !DIExpression()), !dbg !3812
  %8 = bitcast [3 x double]* %6 to i8*, !dbg !3811
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #11, !dbg !3811
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !3809, metadata !DIExpression()), !dbg !3813
  %9 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !3814
  %10 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* nonnull %9) #11, !dbg !3815
  %11 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !3816
  %12 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* nonnull %11) #11, !dbg !3817
  %13 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !3818
  %14 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !3819
  %15 = call [4 x [4 x double]]* @trans4p(double* nonnull %13, double* nonnull %14, double %3), !dbg !3820
  %16 = bitcast [3 x double]* %6 to i8*, !dbg !3821
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #11, !dbg !3821
  %17 = bitcast [3 x double]* %5 to i8*, !dbg !3821
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #11, !dbg !3821
  ret [4 x [4 x double]]* %15, !dbg !3822
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @rot4p(double* %0, double* %1, double %2) #0 !dbg !422 {
  %4 = alloca [4 x [4 x double]], align 16
  %5 = alloca [4 x [4 x double]], align 16
  %6 = alloca [4 x [4 x double]], align 16
  %7 = alloca [4 x [4 x double]], align 16
  call void @llvm.dbg.value(metadata double* %0, metadata !424, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata double* %1, metadata !425, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata double %2, metadata !426, metadata !DIExpression()), !dbg !3823
  %8 = bitcast [4 x [4 x double]]* %4 to i8*, !dbg !3824
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %8) #11, !dbg !3824
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %4, metadata !428, metadata !DIExpression()), !dbg !3825
  %9 = bitcast [4 x [4 x double]]* %5 to i8*, !dbg !3824
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #11, !dbg !3824
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %5, metadata !429, metadata !DIExpression()), !dbg !3826
  %10 = bitcast [4 x [4 x double]]* %6 to i8*, !dbg !3824
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %10) #11, !dbg !3824
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %6, metadata !430, metadata !DIExpression()), !dbg !3827
  %11 = bitcast [4 x [4 x double]]* %7 to i8*, !dbg !3824
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %11) #11, !dbg !3824
  call void @llvm.dbg.declare(metadata [4 x [4 x double]]* %7, metadata !431, metadata !DIExpression()), !dbg !3828
  %12 = bitcast [4 x [4 x double]]* %4 to i8*, !dbg !3829
  %13 = load double, double* %0, align 8, !dbg !3830, !tbaa !455
  %14 = fneg double %13, !dbg !3831
  %15 = getelementptr inbounds double, double* %0, i64 1, !dbg !3832
  %16 = load double, double* %15, align 8, !dbg !3832, !tbaa !455
  %17 = fneg double %16, !dbg !3833
  %18 = getelementptr inbounds double, double* %0, i64 2, !dbg !3834
  %19 = load double, double* %18, align 8, !dbg !3834, !tbaa !455
  %20 = fneg double %19, !dbg !3835
  %21 = call [4 x [4 x double]]* @newtransform(double %14, double %17, double %20, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00), !dbg !3836
  %22 = bitcast [4 x [4 x double]]* %21 to i8*, !dbg !3836
  %23 = call [4 x [4 x double]]* @NAB_matcpy(i8* nonnull %12, i8* %22), !dbg !3837
  %24 = load double, double* %1, align 8, !dbg !3838, !tbaa !455
  %25 = load double, double* %0, align 8, !dbg !3839, !tbaa !455
  %26 = fsub double %24, %25, !dbg !3840
  %27 = getelementptr inbounds double, double* %1, i64 1, !dbg !3841
  %28 = load double, double* %27, align 8, !dbg !3841, !tbaa !455
  %29 = getelementptr inbounds double, double* %0, i64 1, !dbg !3842
  %30 = load double, double* %29, align 8, !dbg !3842, !tbaa !455
  %31 = fsub double %28, %30, !dbg !3843
  %32 = getelementptr inbounds double, double* %1, i64 2, !dbg !3844
  %33 = load double, double* %32, align 8, !dbg !3844, !tbaa !455
  %34 = getelementptr inbounds double, double* %0, i64 2, !dbg !3845
  %35 = load double, double* %34, align 8, !dbg !3845, !tbaa !455
  %36 = fsub double %33, %35, !dbg !3846
  %37 = fneg double %2, !dbg !3847
  %38 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, !dbg !3848
  call void @raa2mat(double %26, double %31, double %36, double %37, [4 x double]* nonnull %38), !dbg !3849
  %39 = bitcast [4 x [4 x double]]* %6 to i8*, !dbg !3850
  %40 = load double, double* %0, align 8, !dbg !3851, !tbaa !455
  %41 = getelementptr inbounds double, double* %0, i64 1, !dbg !3852
  %42 = load double, double* %41, align 8, !dbg !3852, !tbaa !455
  %43 = getelementptr inbounds double, double* %0, i64 2, !dbg !3853
  %44 = load double, double* %43, align 8, !dbg !3853, !tbaa !455
  %45 = call [4 x [4 x double]]* @newtransform(double %40, double %42, double %44, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00), !dbg !3854
  %46 = bitcast [4 x [4 x double]]* %45 to i8*, !dbg !3854
  %47 = call [4 x [4 x double]]* @NAB_matcpy(i8* nonnull %39, i8* %46), !dbg !3855
  %48 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 0, !dbg !3856
  %49 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %5, i64 0, i64 0, !dbg !3857
  %50 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3858
  call void @concat_mat([4 x double]* nonnull %48, [4 x double]* nonnull %49, [4 x double]* nonnull %50), !dbg !3859
  %51 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %7, i64 0, i64 0, !dbg !3860
  %52 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %6, i64 0, i64 0, !dbg !3861
  call void @concat_mat([4 x double]* nonnull %51, [4 x double]* nonnull %52, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @rot4p.mat5, i64 0, i64 0)), !dbg !3862
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @rot4p.mat5 to i8*), metadata !427, metadata !DIExpression()), !dbg !3823
  %53 = bitcast [4 x [4 x double]]* %7 to i8*, !dbg !3863
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %53) #11, !dbg !3863
  %54 = bitcast [4 x [4 x double]]* %6 to i8*, !dbg !3863
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %54) #11, !dbg !3863
  %55 = bitcast [4 x [4 x double]]* %5 to i8*, !dbg !3863
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %55) #11, !dbg !3863
  %56 = bitcast [4 x [4 x double]]* %4 to i8*, !dbg !3863
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %56) #11, !dbg !3863
  ret [4 x [4 x double]]* @rot4p.mat5, !dbg !3864
}

; Function Attrs: nounwind uwtable
define internal void @raa2mat(double %0, double %1, double %2, double %3, [4 x double]* %4) #0 !dbg !3865 {
  call void @llvm.dbg.value(metadata double %0, metadata !3869, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %1, metadata !3870, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %2, metadata !3871, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %3, metadata !3872, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata [4 x double]* %4, metadata !3873, metadata !DIExpression()), !dbg !3892
  %6 = call double @hypot(double %0, double %1) #11, !dbg !3893
  %7 = call double @hypot(double %6, double %2) #11, !dbg !3895
  call void @llvm.dbg.value(metadata double %7, metadata !3874, metadata !DIExpression()), !dbg !3892
  %8 = fcmp oeq double %7, 0.000000e+00, !dbg !3896
  br i1 %8, label %9, label %10, !dbg !3897

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3869, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3870, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3871, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3874, metadata !DIExpression()), !dbg !3892
  br label %10, !dbg !3898

10:                                               ; preds = %9, %5
  %.03 = phi double [ 1.000000e+00, %9 ], [ %7, %5 ], !dbg !3900
  %.02 = phi double [ 1.000000e+00, %9 ], [ %2, %5 ]
  %.01 = phi double [ 0.000000e+00, %9 ], [ %1, %5 ]
  %.0 = phi double [ 0.000000e+00, %9 ], [ %0, %5 ]
  call void @llvm.dbg.value(metadata double %.0, metadata !3869, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %.01, metadata !3870, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %.02, metadata !3871, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %.03, metadata !3874, metadata !DIExpression()), !dbg !3892
  %11 = fdiv double %.0, %.03, !dbg !3901
  call void @llvm.dbg.value(metadata double %11, metadata !3869, metadata !DIExpression()), !dbg !3892
  %12 = fdiv double %.01, %.03, !dbg !3902
  call void @llvm.dbg.value(metadata double %12, metadata !3870, metadata !DIExpression()), !dbg !3892
  %13 = fdiv double %.02, %.03, !dbg !3903
  call void @llvm.dbg.value(metadata double %13, metadata !3871, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %11, metadata !3875, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %12, metadata !3876, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata double %13, metadata !3877, metadata !DIExpression()), !dbg !3892
  %14 = fmul double %11, %11, !dbg !3904
  call void @llvm.dbg.value(metadata double %14, metadata !3878, metadata !DIExpression()), !dbg !3892
  %15 = fmul double %11, %12, !dbg !3905
  call void @llvm.dbg.value(metadata double %15, metadata !3879, metadata !DIExpression()), !dbg !3892
  %16 = fmul double %11, %13, !dbg !3906
  call void @llvm.dbg.value(metadata double %16, metadata !3880, metadata !DIExpression()), !dbg !3892
  %17 = fmul double %12, %12, !dbg !3907
  call void @llvm.dbg.value(metadata double %17, metadata !3881, metadata !DIExpression()), !dbg !3892
  %18 = fmul double %12, %13, !dbg !3908
  call void @llvm.dbg.value(metadata double %18, metadata !3882, metadata !DIExpression()), !dbg !3892
  %19 = fmul double %13, %13, !dbg !3909
  call void @llvm.dbg.value(metadata double %19, metadata !3883, metadata !DIExpression()), !dbg !3892
  %20 = fmul double %3, 0x3F91DF46A2529D39, !dbg !3910
  %21 = call double @sin(double %20) #11, !dbg !3911
  call void @llvm.dbg.value(metadata double %21, metadata !3891, metadata !DIExpression()), !dbg !3892
  %22 = fmul double %3, 0x3F91DF46A2529D39, !dbg !3912
  %23 = call double @cos(double %22) #11, !dbg !3913
  call void @llvm.dbg.value(metadata double %23, metadata !3890, metadata !DIExpression()), !dbg !3892
  %24 = fmul double %23, %15, !dbg !3914
  call void @llvm.dbg.value(metadata double %24, metadata !3884, metadata !DIExpression()), !dbg !3892
  %25 = fmul double %23, %18, !dbg !3915
  call void @llvm.dbg.value(metadata double %25, metadata !3885, metadata !DIExpression()), !dbg !3892
  %26 = fmul double %23, %16, !dbg !3916
  call void @llvm.dbg.value(metadata double %26, metadata !3886, metadata !DIExpression()), !dbg !3892
  %27 = fmul double %21, %11, !dbg !3917
  call void @llvm.dbg.value(metadata double %27, metadata !3887, metadata !DIExpression()), !dbg !3892
  %28 = fmul double %21, %12, !dbg !3918
  call void @llvm.dbg.value(metadata double %28, metadata !3888, metadata !DIExpression()), !dbg !3892
  %29 = fmul double %21, %13, !dbg !3919
  call void @llvm.dbg.value(metadata double %29, metadata !3889, metadata !DIExpression()), !dbg !3892
  %30 = fsub double 1.000000e+00, %14, !dbg !3920
  %31 = fmul double %23, %30, !dbg !3920
  %32 = fadd double %14, %31, !dbg !3920
  %33 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0, !dbg !3921
  store double %32, double* %33, align 8, !dbg !3922, !tbaa !455
  %34 = fsub double %15, %24, !dbg !3923
  %35 = fsub double %34, %29, !dbg !3923
  %36 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 1, !dbg !3924
  store double %35, double* %36, align 8, !dbg !3925, !tbaa !455
  %37 = fsub double %16, %26, !dbg !3926
  %38 = fadd double %37, %28, !dbg !3926
  %39 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 2, !dbg !3927
  store double %38, double* %39, align 8, !dbg !3928, !tbaa !455
  %40 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3, !dbg !3929
  store double 0.000000e+00, double* %40, align 8, !dbg !3930, !tbaa !455
  %41 = fsub double %15, %24, !dbg !3931
  %42 = fadd double %41, %29, !dbg !3931
  %43 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 1, i64 0, !dbg !3932
  store double %42, double* %43, align 8, !dbg !3933, !tbaa !455
  %44 = fsub double 1.000000e+00, %17, !dbg !3934
  %45 = fmul double %23, %44, !dbg !3934
  %46 = fadd double %17, %45, !dbg !3934
  %47 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 1, i64 1, !dbg !3935
  store double %46, double* %47, align 8, !dbg !3936, !tbaa !455
  %48 = fsub double %18, %25, !dbg !3937
  %49 = fsub double %48, %27, !dbg !3937
  %50 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 1, i64 2, !dbg !3938
  store double %49, double* %50, align 8, !dbg !3939, !tbaa !455
  %51 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 1, i64 3, !dbg !3940
  store double 0.000000e+00, double* %51, align 8, !dbg !3941, !tbaa !455
  %52 = fsub double %16, %26, !dbg !3942
  %53 = fsub double %52, %28, !dbg !3942
  %54 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 2, i64 0, !dbg !3943
  store double %53, double* %54, align 8, !dbg !3944, !tbaa !455
  %55 = fsub double %18, %25, !dbg !3945
  %56 = fadd double %55, %27, !dbg !3945
  %57 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 2, i64 1, !dbg !3946
  store double %56, double* %57, align 8, !dbg !3947, !tbaa !455
  %58 = fsub double 1.000000e+00, %19, !dbg !3948
  %59 = fmul double %23, %58, !dbg !3948
  %60 = fadd double %19, %59, !dbg !3948
  %61 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 2, i64 2, !dbg !3949
  store double %60, double* %61, align 8, !dbg !3950, !tbaa !455
  %62 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 2, i64 3, !dbg !3951
  store double 0.000000e+00, double* %62, align 8, !dbg !3952, !tbaa !455
  %63 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 3, i64 0, !dbg !3953
  store double 0.000000e+00, double* %63, align 8, !dbg !3954, !tbaa !455
  %64 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 3, i64 1, !dbg !3955
  store double 0.000000e+00, double* %64, align 8, !dbg !3956, !tbaa !455
  %65 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 3, i64 2, !dbg !3957
  store double 0.000000e+00, double* %65, align 8, !dbg !3958, !tbaa !455
  %66 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 3, i64 3, !dbg !3959
  store double 1.000000e+00, double* %66, align 8, !dbg !3960, !tbaa !455
  ret void, !dbg !3961
}

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @rot4(%struct.molecule_t* %0, i8* %1, i8* %2, double %3) #0 !dbg !3962 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !3964, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %1, metadata !3965, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %2, metadata !3966, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata double %3, metadata !3967, metadata !DIExpression()), !dbg !3970
  %7 = bitcast [3 x double]* %5 to i8*, !dbg !3971
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #11, !dbg !3971
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !3968, metadata !DIExpression()), !dbg !3972
  %8 = bitcast [3 x double]* %6 to i8*, !dbg !3971
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #11, !dbg !3971
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !3969, metadata !DIExpression()), !dbg !3973
  %9 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !3974
  %10 = call i32 @setpoint(%struct.molecule_t* %0, i8* %1, double* nonnull %9) #11, !dbg !3975
  %11 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !3976
  %12 = call i32 @setpoint(%struct.molecule_t* %0, i8* %2, double* nonnull %11) #11, !dbg !3977
  %13 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !3978
  %14 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !3979
  %15 = call [4 x [4 x double]]* @rot4p(double* nonnull %13, double* nonnull %14, double %3), !dbg !3980
  %16 = bitcast [3 x double]* %6 to i8*, !dbg !3981
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #11, !dbg !3981
  %17 = bitcast [3 x double]* %5 to i8*, !dbg !3981
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #11, !dbg !3981
  ret [4 x [4 x double]]* %15, !dbg !3982
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @set_belly_mask(%struct.molecule_t* %0, i8* %1, i32* %2) #0 !dbg !3983 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !3987, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i8* %1, metadata !3988, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32* %2, metadata !3989, metadata !DIExpression()), !dbg !4009
  %4 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #11, !dbg !4010
  call void @llvm.dbg.value(metadata i32 0, metadata !3998, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3997, metadata !DIExpression()), !dbg !4009
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !4011
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !4011, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !4005, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3998, metadata !DIExpression()), !dbg !4009
  %.not = icmp eq %struct.strand_t* %6, null, !dbg !4013
  br i1 %.not, label %._crit_edge79, label %.lr.ph78, !dbg !4013

.lr.ph78:                                         ; preds = %3, %._crit_edge71
  %.076 = phi %struct.strand_t* [ %37, %._crit_edge71 ], [ %6, %3 ]
  %.0975 = phi i32 [ %.110.lcssa, %._crit_edge71 ], [ 0, %3 ]
  %.01274 = phi i32 [ %.113.lcssa, %._crit_edge71 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.076, metadata !4005, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.0975, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.01274, metadata !3998, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3995, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3995, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.0975, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.01274, metadata !3998, metadata !DIExpression()), !dbg !4009
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.076, i64 0, i32 5, !dbg !4014
  %8 = load i32, i32* %7, align 8, !dbg !4014, !tbaa !646
  %9 = icmp sgt i32 %8, 0, !dbg !4019
  br i1 %9, label %.lr.ph70, label %._crit_edge71, !dbg !4020

.lr.ph70:                                         ; preds = %.lr.ph78, %._crit_edge
  %.11068 = phi i32 [ %32, %._crit_edge ], [ %.0975, %.lr.ph78 ]
  %.11367 = phi i32 [ %.214.lcssa, %._crit_edge ], [ %.01274, %.lr.ph78 ]
  %indvars.iv2766 = phi i64 [ %indvars.iv.next28, %._crit_edge ], [ 0, %.lr.ph78 ]
  call void @llvm.dbg.value(metadata i32 %.11068, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.11367, metadata !3998, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv2766, metadata !3995, metadata !DIExpression()), !dbg !4009
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.076, i64 0, i32 7, !dbg !4021
  %11 = load %struct.residue_t**, %struct.residue_t*** %10, align 8, !dbg !4021, !tbaa !650
  %12 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %11, i64 %indvars.iv2766, !dbg !4023
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !4023, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %13, metadata !4006, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3996, metadata !DIExpression()), !dbg !4009
  %14 = sext i32 %.11068 to i64, !dbg !4024
  call void @llvm.dbg.value(metadata i64 0, metadata !3996, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %14, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.11367, metadata !3998, metadata !DIExpression()), !dbg !4009
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 15, !dbg !4026
  %16 = load i32, i32* %15, align 8, !dbg !4026, !tbaa !568
  %17 = icmp sgt i32 %16, 0, !dbg !4028
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !4029

.lr.ph:                                           ; preds = %.lr.ph70, %28
  %.21464 = phi i32 [ %.315, %28 ], [ %.11367, %.lr.ph70 ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next, %28 ], [ %14, %.lr.ph70 ]
  %indvars.iv2261 = phi i64 [ %indvars.iv.next23, %28 ], [ 0, %.lr.ph70 ]
  call void @llvm.dbg.value(metadata i32 %.21464, metadata !3998, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv62, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv2261, metadata !3996, metadata !DIExpression()), !dbg !4009
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 17, !dbg !4030
  %19 = load %struct.atom_t*, %struct.atom_t** %18, align 8, !dbg !4030, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %19, i64 %indvars.iv2261), metadata !4007, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4009
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %19, i64 %indvars.iv2261, i32 2, !dbg !4032
  %21 = load i32, i32* %20, align 8, !dbg !4032, !tbaa !1592
  %22 = and i32 %21, 1, !dbg !4034
  %.not161 = icmp eq i32 %22, 0, !dbg !4034
  br i1 %.not161, label %25, label %23, !dbg !4035

23:                                               ; preds = %.lr.ph
  %24 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv62, !dbg !4036
  store i32 0, i32* %24, align 4, !dbg !4037, !tbaa !2242
  br label %28, !dbg !4036

25:                                               ; preds = %.lr.ph
  %26 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv62, !dbg !4038
  store i32 1, i32* %26, align 4, !dbg !4040, !tbaa !2242
  %27 = add nsw i32 %.21464, 1, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %27, metadata !3998, metadata !DIExpression()), !dbg !4009
  br label %28

28:                                               ; preds = %25, %23
  %.315 = phi i32 [ %.21464, %23 ], [ %27, %25 ], !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.315, metadata !3998, metadata !DIExpression()), !dbg !4009
  %indvars.iv.next = add nsw i64 %indvars.iv62, 1, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3997, metadata !DIExpression()), !dbg !4009
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv2261, 1, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next23, metadata !3996, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.315, metadata !3998, metadata !DIExpression()), !dbg !4009
  %29 = load i32, i32* %15, align 8, !dbg !4026, !tbaa !568
  %30 = sext i32 %29 to i64, !dbg !4028
  %31 = icmp slt i64 %indvars.iv.next23, %30, !dbg !4028
  br i1 %31, label %.lr.ph, label %._crit_edge, !dbg !4029, !llvm.loop !4044

._crit_edge:                                      ; preds = %28, %.lr.ph70
  %.214.lcssa = phi i32 [ %.11367, %.lr.ph70 ], [ %.315, %28 ], !dbg !4046
  %.211.lcssa.wide = phi i64 [ %14, %.lr.ph70 ], [ %indvars.iv.next, %28 ]
  %32 = trunc i64 %.211.lcssa.wide to i32, !dbg !4047
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv2766, 1, !dbg !4048
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next28, metadata !3995, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %32, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.214.lcssa, metadata !3998, metadata !DIExpression()), !dbg !4009
  %33 = load i32, i32* %7, align 8, !dbg !4014, !tbaa !646
  %34 = sext i32 %33 to i64, !dbg !4019
  %35 = icmp slt i64 %indvars.iv.next28, %34, !dbg !4019
  br i1 %35, label %.lr.ph70, label %._crit_edge71, !dbg !4020, !llvm.loop !4049

._crit_edge71:                                    ; preds = %.lr.ph78, %._crit_edge
  %.113.lcssa = phi i32 [ %.01274, %.lr.ph78 ], [ %.214.lcssa, %._crit_edge ], !dbg !4046
  %.110.lcssa = phi i32 [ %.0975, %.lr.ph78 ], [ %32, %._crit_edge ], !dbg !4051
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.076, i64 0, i32 4, !dbg !4052
  %37 = load %struct.strand_t*, %struct.strand_t** %36, align 8, !dbg !4052, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %37, metadata !4005, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.110.lcssa, metadata !3997, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.113.lcssa, metadata !3998, metadata !DIExpression()), !dbg !4009
  %.not160 = icmp eq %struct.strand_t* %37, null, !dbg !4013
  br i1 %.not160, label %._crit_edge79, label %.lr.ph78, !dbg !4013, !llvm.loop !4053

._crit_edge79:                                    ; preds = %._crit_edge71, %3
  %.012.lcssa = phi i32 [ 0, %3 ], [ %.113.lcssa, %._crit_edge71 ], !dbg !4046
  %38 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 6, !dbg !4055
  %39 = load %struct.parm*, %struct.parm** %38, align 8, !dbg !4055, !tbaa !498
  call void @llvm.dbg.value(metadata %struct.parm* %39, metadata !4008, metadata !DIExpression()), !dbg !4009
  %.not141 = icmp eq %struct.parm* %39, null, !dbg !4056
  br i1 %.not141, label %479, label %40, !dbg !4058

40:                                               ; preds = %._crit_edge79
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  %41 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 6, !dbg !4059
  %42 = load i32, i32* %41, align 8, !dbg !4059, !tbaa !4063
  %43 = icmp sgt i32 %42, 0, !dbg !4064
  br i1 %43, label %.lr.ph85, label %._crit_edge86, !dbg !4065

.lr.ph85:                                         ; preds = %40, %81
  %.01683 = phi i32 [ %.117, %81 ], [ 0, %40 ]
  %indvars.iv3081 = phi i64 [ %indvars.iv.next31, %81 ], [ 0, %40 ]
  call void @llvm.dbg.value(metadata i32 %.01683, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv3081, metadata !3994, metadata !DIExpression()), !dbg !4009
  %44 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 66, !dbg !4066
  %45 = load i32*, i32** %44, align 8, !dbg !4066, !tbaa !4068
  %46 = getelementptr inbounds i32, i32* %45, i64 %indvars.iv3081, !dbg !4069
  %47 = load i32, i32* %46, align 4, !dbg !4069, !tbaa !2242
  %48 = sdiv i32 %47, 3, !dbg !4070
  call void @llvm.dbg.value(metadata i32 %48, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %49 = sext i32 %48 to i64, !dbg !4071
  %50 = getelementptr inbounds i32, i32* %2, i64 %49, !dbg !4071
  %51 = load i32, i32* %50, align 4, !dbg !4071, !tbaa !2242
  %.not158 = icmp eq i32 %51, 0, !dbg !4071
  br i1 %.not158, label %61, label %52, !dbg !4073

52:                                               ; preds = %.lr.ph85
  %53 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 67, !dbg !4074
  %54 = load i32*, i32** %53, align 8, !dbg !4074, !tbaa !4075
  %55 = getelementptr inbounds i32, i32* %54, i64 %indvars.iv3081, !dbg !4076
  %56 = load i32, i32* %55, align 4, !dbg !4076, !tbaa !2242
  call void @llvm.dbg.value(metadata i32 %56, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %57 = sdiv i32 %56, 3, !dbg !4077
  call void @llvm.dbg.value(metadata i32 %57, metadata !3991, metadata !DIExpression()), !dbg !4009
  %58 = sext i32 %57 to i64, !dbg !4078
  %59 = getelementptr inbounds i32, i32* %2, i64 %58, !dbg !4078
  %60 = load i32, i32* %59, align 4, !dbg !4078, !tbaa !2242
  %.not159 = icmp eq i32 %60, 0, !dbg !4078
  br i1 %.not159, label %61, label %81, !dbg !4079

61:                                               ; preds = %52, %.lr.ph85
  %62 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 66, !dbg !4080
  %63 = load i32*, i32** %62, align 8, !dbg !4080, !tbaa !4068
  %64 = getelementptr inbounds i32, i32* %63, i64 %indvars.iv3081, !dbg !4082
  %65 = load i32, i32* %64, align 4, !dbg !4082, !tbaa !2242
  %66 = sext i32 %.01683 to i64, !dbg !4083
  %67 = getelementptr inbounds i32, i32* %63, i64 %66, !dbg !4083
  store i32 %65, i32* %67, align 4, !dbg !4084, !tbaa !2242
  %68 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 67, !dbg !4085
  %69 = load i32*, i32** %68, align 8, !dbg !4085, !tbaa !4075
  %70 = getelementptr inbounds i32, i32* %69, i64 %indvars.iv3081, !dbg !4086
  %71 = load i32, i32* %70, align 4, !dbg !4086, !tbaa !2242
  %72 = sext i32 %.01683 to i64, !dbg !4087
  %73 = getelementptr inbounds i32, i32* %69, i64 %72, !dbg !4087
  store i32 %71, i32* %73, align 4, !dbg !4088, !tbaa !2242
  %74 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 68, !dbg !4089
  %75 = load i32*, i32** %74, align 8, !dbg !4089, !tbaa !4090
  %76 = getelementptr inbounds i32, i32* %75, i64 %indvars.iv3081, !dbg !4091
  %77 = load i32, i32* %76, align 4, !dbg !4091, !tbaa !2242
  %78 = sext i32 %.01683 to i64, !dbg !4092
  %79 = getelementptr inbounds i32, i32* %75, i64 %78, !dbg !4092
  store i32 %77, i32* %79, align 4, !dbg !4093, !tbaa !2242
  %80 = add nsw i32 %.01683, 1, !dbg !4094
  call void @llvm.dbg.value(metadata i32 %80, metadata !3999, metadata !DIExpression()), !dbg !4009
  br label %81, !dbg !4095

81:                                               ; preds = %52, %61
  %.117 = phi i32 [ %.01683, %52 ], [ %80, %61 ], !dbg !4096
  call void @llvm.dbg.value(metadata i32 %.117, metadata !3999, metadata !DIExpression()), !dbg !4009
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv3081, 1, !dbg !4097
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next31, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.117, metadata !3999, metadata !DIExpression()), !dbg !4009
  %82 = load i32, i32* %41, align 8, !dbg !4059, !tbaa !4063
  %83 = sext i32 %82 to i64, !dbg !4064
  %84 = icmp slt i64 %indvars.iv.next31, %83, !dbg !4064
  br i1 %84, label %.lr.ph85, label %._crit_edge86, !dbg !4065, !llvm.loop !4098

._crit_edge86:                                    ; preds = %81, %40
  %.016.lcssa = phi i32 [ 0, %40 ], [ %.117, %81 ], !dbg !4100
  %85 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 6, !dbg !4101
  store i32 %.016.lcssa, i32* %85, align 8, !dbg !4102, !tbaa !4063
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  %86 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 16, !dbg !4103
  %87 = load i32, i32* %86, align 8, !dbg !4103, !tbaa !4106
  %88 = icmp sgt i32 %87, 0, !dbg !4107
  br i1 %88, label %.lr.ph92, label %._crit_edge93, !dbg !4108

.lr.ph92:                                         ; preds = %._crit_edge86, %126
  %.21890 = phi i32 [ %.319, %126 ], [ 0, %._crit_edge86 ]
  %indvars.iv3388 = phi i64 [ %indvars.iv.next34, %126 ], [ 0, %._crit_edge86 ]
  call void @llvm.dbg.value(metadata i32 %.21890, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv3388, metadata !3994, metadata !DIExpression()), !dbg !4009
  %89 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 69, !dbg !4109
  %90 = load i32*, i32** %89, align 8, !dbg !4109, !tbaa !4111
  %91 = getelementptr inbounds i32, i32* %90, i64 %indvars.iv3388, !dbg !4112
  %92 = load i32, i32* %91, align 4, !dbg !4112, !tbaa !2242
  %93 = sdiv i32 %92, 3, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %93, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %94 = sext i32 %93 to i64, !dbg !4114
  %95 = getelementptr inbounds i32, i32* %2, i64 %94, !dbg !4114
  %96 = load i32, i32* %95, align 4, !dbg !4114, !tbaa !2242
  %.not156 = icmp eq i32 %96, 0, !dbg !4114
  br i1 %.not156, label %106, label %97, !dbg !4116

97:                                               ; preds = %.lr.ph92
  %98 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 70, !dbg !4117
  %99 = load i32*, i32** %98, align 8, !dbg !4117, !tbaa !4118
  %100 = getelementptr inbounds i32, i32* %99, i64 %indvars.iv3388, !dbg !4119
  %101 = load i32, i32* %100, align 4, !dbg !4119, !tbaa !2242
  call void @llvm.dbg.value(metadata i32 %101, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %102 = sdiv i32 %101, 3, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %102, metadata !3991, metadata !DIExpression()), !dbg !4009
  %103 = sext i32 %102 to i64, !dbg !4121
  %104 = getelementptr inbounds i32, i32* %2, i64 %103, !dbg !4121
  %105 = load i32, i32* %104, align 4, !dbg !4121, !tbaa !2242
  %.not157 = icmp eq i32 %105, 0, !dbg !4121
  br i1 %.not157, label %106, label %126, !dbg !4122

106:                                              ; preds = %97, %.lr.ph92
  %107 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 69, !dbg !4123
  %108 = load i32*, i32** %107, align 8, !dbg !4123, !tbaa !4111
  %109 = getelementptr inbounds i32, i32* %108, i64 %indvars.iv3388, !dbg !4125
  %110 = load i32, i32* %109, align 4, !dbg !4125, !tbaa !2242
  %111 = sext i32 %.21890 to i64, !dbg !4126
  %112 = getelementptr inbounds i32, i32* %108, i64 %111, !dbg !4126
  store i32 %110, i32* %112, align 4, !dbg !4127, !tbaa !2242
  %113 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 70, !dbg !4128
  %114 = load i32*, i32** %113, align 8, !dbg !4128, !tbaa !4118
  %115 = getelementptr inbounds i32, i32* %114, i64 %indvars.iv3388, !dbg !4129
  %116 = load i32, i32* %115, align 4, !dbg !4129, !tbaa !2242
  %117 = sext i32 %.21890 to i64, !dbg !4130
  %118 = getelementptr inbounds i32, i32* %114, i64 %117, !dbg !4130
  store i32 %116, i32* %118, align 4, !dbg !4131, !tbaa !2242
  %119 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 71, !dbg !4132
  %120 = load i32*, i32** %119, align 8, !dbg !4132, !tbaa !4133
  %121 = getelementptr inbounds i32, i32* %120, i64 %indvars.iv3388, !dbg !4134
  %122 = load i32, i32* %121, align 4, !dbg !4134, !tbaa !2242
  %123 = sext i32 %.21890 to i64, !dbg !4135
  %124 = getelementptr inbounds i32, i32* %120, i64 %123, !dbg !4135
  store i32 %122, i32* %124, align 4, !dbg !4136, !tbaa !2242
  %125 = add nsw i32 %.21890, 1, !dbg !4137
  call void @llvm.dbg.value(metadata i32 %125, metadata !3999, metadata !DIExpression()), !dbg !4009
  br label %126, !dbg !4138

126:                                              ; preds = %97, %106
  %.319 = phi i32 [ %.21890, %97 ], [ %125, %106 ], !dbg !4139
  call void @llvm.dbg.value(metadata i32 %.319, metadata !3999, metadata !DIExpression()), !dbg !4009
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv3388, 1, !dbg !4140
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next34, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.319, metadata !3999, metadata !DIExpression()), !dbg !4009
  %127 = load i32, i32* %86, align 8, !dbg !4103, !tbaa !4106
  %128 = sext i32 %127 to i64, !dbg !4107
  %129 = icmp slt i64 %indvars.iv.next34, %128, !dbg !4107
  br i1 %129, label %.lr.ph92, label %._crit_edge93, !dbg !4108, !llvm.loop !4141

._crit_edge93:                                    ; preds = %126, %._crit_edge86
  %.218.lcssa = phi i32 [ 0, %._crit_edge86 ], [ %.319, %126 ], !dbg !4143
  %130 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 16, !dbg !4144
  store i32 %.218.lcssa, i32* %130, align 8, !dbg !4145, !tbaa !4106
  %131 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 7, !dbg !4146
  store i32 %.218.lcssa, i32* %131, align 4, !dbg !4147, !tbaa !4148
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  %132 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 8, !dbg !4149
  %133 = load i32, i32* %132, align 8, !dbg !4149, !tbaa !4152
  %134 = icmp sgt i32 %133, 0, !dbg !4153
  br i1 %134, label %.lr.ph99, label %._crit_edge100, !dbg !4154

.lr.ph99:                                         ; preds = %._crit_edge93, %187
  %.42097 = phi i32 [ %.521, %187 ], [ 0, %._crit_edge93 ]
  %indvars.iv3695 = phi i64 [ %indvars.iv.next37, %187 ], [ 0, %._crit_edge93 ]
  call void @llvm.dbg.value(metadata i32 %.42097, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv3695, metadata !3994, metadata !DIExpression()), !dbg !4009
  %135 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 72, !dbg !4155
  %136 = load i32*, i32** %135, align 8, !dbg !4155, !tbaa !4157
  %137 = getelementptr inbounds i32, i32* %136, i64 %indvars.iv3695, !dbg !4158
  %138 = load i32, i32* %137, align 4, !dbg !4158, !tbaa !2242
  %139 = sdiv i32 %138, 3, !dbg !4159
  call void @llvm.dbg.value(metadata i32 %139, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %140 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 74, !dbg !4160
  %141 = load i32*, i32** %140, align 8, !dbg !4160, !tbaa !4161
  %142 = getelementptr inbounds i32, i32* %141, i64 %indvars.iv3695, !dbg !4162
  %143 = load i32, i32* %142, align 4, !dbg !4162, !tbaa !2242
  %144 = sdiv i32 %143, 3, !dbg !4163
  call void @llvm.dbg.value(metadata i32 %144, metadata !3992, metadata !DIExpression()), !dbg !4009
  %145 = sext i32 %139 to i64, !dbg !4164
  %146 = getelementptr inbounds i32, i32* %2, i64 %145, !dbg !4164
  %147 = load i32, i32* %146, align 4, !dbg !4164, !tbaa !2242
  %.not153 = icmp eq i32 %147, 0, !dbg !4164
  br i1 %.not153, label %161, label %148, !dbg !4166

148:                                              ; preds = %.lr.ph99
  %149 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 73, !dbg !4167
  %150 = load i32*, i32** %149, align 8, !dbg !4167, !tbaa !4168
  %151 = getelementptr inbounds i32, i32* %150, i64 %indvars.iv3695, !dbg !4169
  %152 = load i32, i32* %151, align 4, !dbg !4169, !tbaa !2242
  call void @llvm.dbg.value(metadata i32 %152, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %153 = sdiv i32 %152, 3, !dbg !4170
  call void @llvm.dbg.value(metadata i32 %153, metadata !3991, metadata !DIExpression()), !dbg !4009
  %154 = sext i32 %153 to i64, !dbg !4171
  %155 = getelementptr inbounds i32, i32* %2, i64 %154, !dbg !4171
  %156 = load i32, i32* %155, align 4, !dbg !4171, !tbaa !2242
  %.not154 = icmp eq i32 %156, 0, !dbg !4171
  br i1 %.not154, label %161, label %157, !dbg !4172

157:                                              ; preds = %148
  %158 = sext i32 %144 to i64, !dbg !4173
  %159 = getelementptr inbounds i32, i32* %2, i64 %158, !dbg !4173
  %160 = load i32, i32* %159, align 4, !dbg !4173, !tbaa !2242
  %.not155 = icmp eq i32 %160, 0, !dbg !4173
  br i1 %.not155, label %161, label %187, !dbg !4174

161:                                              ; preds = %157, %148, %.lr.ph99
  %162 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 72, !dbg !4175
  %163 = load i32*, i32** %162, align 8, !dbg !4175, !tbaa !4157
  %164 = getelementptr inbounds i32, i32* %163, i64 %indvars.iv3695, !dbg !4177
  %165 = load i32, i32* %164, align 4, !dbg !4177, !tbaa !2242
  %166 = sext i32 %.42097 to i64, !dbg !4178
  %167 = getelementptr inbounds i32, i32* %163, i64 %166, !dbg !4178
  store i32 %165, i32* %167, align 4, !dbg !4179, !tbaa !2242
  %168 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 73, !dbg !4180
  %169 = load i32*, i32** %168, align 8, !dbg !4180, !tbaa !4168
  %170 = getelementptr inbounds i32, i32* %169, i64 %indvars.iv3695, !dbg !4181
  %171 = load i32, i32* %170, align 4, !dbg !4181, !tbaa !2242
  %172 = sext i32 %.42097 to i64, !dbg !4182
  %173 = getelementptr inbounds i32, i32* %169, i64 %172, !dbg !4182
  store i32 %171, i32* %173, align 4, !dbg !4183, !tbaa !2242
  %174 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 74, !dbg !4184
  %175 = load i32*, i32** %174, align 8, !dbg !4184, !tbaa !4161
  %176 = getelementptr inbounds i32, i32* %175, i64 %indvars.iv3695, !dbg !4185
  %177 = load i32, i32* %176, align 4, !dbg !4185, !tbaa !2242
  %178 = sext i32 %.42097 to i64, !dbg !4186
  %179 = getelementptr inbounds i32, i32* %175, i64 %178, !dbg !4186
  store i32 %177, i32* %179, align 4, !dbg !4187, !tbaa !2242
  %180 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 75, !dbg !4188
  %181 = load i32*, i32** %180, align 8, !dbg !4188, !tbaa !4189
  %182 = getelementptr inbounds i32, i32* %181, i64 %indvars.iv3695, !dbg !4190
  %183 = load i32, i32* %182, align 4, !dbg !4190, !tbaa !2242
  %184 = sext i32 %.42097 to i64, !dbg !4191
  %185 = getelementptr inbounds i32, i32* %181, i64 %184, !dbg !4191
  store i32 %183, i32* %185, align 4, !dbg !4192, !tbaa !2242
  %186 = add nsw i32 %.42097, 1, !dbg !4193
  call void @llvm.dbg.value(metadata i32 %186, metadata !3999, metadata !DIExpression()), !dbg !4009
  br label %187, !dbg !4194

187:                                              ; preds = %157, %161
  %.521 = phi i32 [ %.42097, %157 ], [ %186, %161 ], !dbg !4195
  call void @llvm.dbg.value(metadata i32 %.521, metadata !3999, metadata !DIExpression()), !dbg !4009
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv3695, 1, !dbg !4196
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next37, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.521, metadata !3999, metadata !DIExpression()), !dbg !4009
  %188 = load i32, i32* %132, align 8, !dbg !4149, !tbaa !4152
  %189 = sext i32 %188 to i64, !dbg !4153
  %190 = icmp slt i64 %indvars.iv.next37, %189, !dbg !4153
  br i1 %190, label %.lr.ph99, label %._crit_edge100, !dbg !4154, !llvm.loop !4197

._crit_edge100:                                   ; preds = %187, %._crit_edge93
  %.420.lcssa = phi i32 [ 0, %._crit_edge93 ], [ %.521, %187 ], !dbg !4199
  %191 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 8, !dbg !4200
  store i32 %.420.lcssa, i32* %191, align 8, !dbg !4201, !tbaa !4152
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  %192 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 17, !dbg !4202
  %193 = load i32, i32* %192, align 4, !dbg !4202, !tbaa !4205
  %194 = icmp sgt i32 %193, 0, !dbg !4206
  br i1 %194, label %.lr.ph106, label %._crit_edge107, !dbg !4207

.lr.ph106:                                        ; preds = %._crit_edge100, %247
  %.6104 = phi i32 [ %.7, %247 ], [ 0, %._crit_edge100 ]
  %indvars.iv39102 = phi i64 [ %indvars.iv.next40, %247 ], [ 0, %._crit_edge100 ]
  call void @llvm.dbg.value(metadata i32 %.6104, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv39102, metadata !3994, metadata !DIExpression()), !dbg !4009
  %195 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 76, !dbg !4208
  %196 = load i32*, i32** %195, align 8, !dbg !4208, !tbaa !4210
  %197 = getelementptr inbounds i32, i32* %196, i64 %indvars.iv39102, !dbg !4211
  %198 = load i32, i32* %197, align 4, !dbg !4211, !tbaa !2242
  %199 = sdiv i32 %198, 3, !dbg !4212
  call void @llvm.dbg.value(metadata i32 %199, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %200 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 78, !dbg !4213
  %201 = load i32*, i32** %200, align 8, !dbg !4213, !tbaa !4214
  %202 = getelementptr inbounds i32, i32* %201, i64 %indvars.iv39102, !dbg !4215
  %203 = load i32, i32* %202, align 4, !dbg !4215, !tbaa !2242
  %204 = sdiv i32 %203, 3, !dbg !4216
  call void @llvm.dbg.value(metadata i32 %204, metadata !3992, metadata !DIExpression()), !dbg !4009
  %205 = sext i32 %199 to i64, !dbg !4217
  %206 = getelementptr inbounds i32, i32* %2, i64 %205, !dbg !4217
  %207 = load i32, i32* %206, align 4, !dbg !4217, !tbaa !2242
  %.not150 = icmp eq i32 %207, 0, !dbg !4217
  br i1 %.not150, label %221, label %208, !dbg !4219

208:                                              ; preds = %.lr.ph106
  %209 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 77, !dbg !4220
  %210 = load i32*, i32** %209, align 8, !dbg !4220, !tbaa !4221
  %211 = getelementptr inbounds i32, i32* %210, i64 %indvars.iv39102, !dbg !4222
  %212 = load i32, i32* %211, align 4, !dbg !4222, !tbaa !2242
  call void @llvm.dbg.value(metadata i32 %212, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %213 = sdiv i32 %212, 3, !dbg !4223
  call void @llvm.dbg.value(metadata i32 %213, metadata !3991, metadata !DIExpression()), !dbg !4009
  %214 = sext i32 %213 to i64, !dbg !4224
  %215 = getelementptr inbounds i32, i32* %2, i64 %214, !dbg !4224
  %216 = load i32, i32* %215, align 4, !dbg !4224, !tbaa !2242
  %.not151 = icmp eq i32 %216, 0, !dbg !4224
  br i1 %.not151, label %221, label %217, !dbg !4225

217:                                              ; preds = %208
  %218 = sext i32 %204 to i64, !dbg !4226
  %219 = getelementptr inbounds i32, i32* %2, i64 %218, !dbg !4226
  %220 = load i32, i32* %219, align 4, !dbg !4226, !tbaa !2242
  %.not152 = icmp eq i32 %220, 0, !dbg !4226
  br i1 %.not152, label %221, label %247, !dbg !4227

221:                                              ; preds = %217, %208, %.lr.ph106
  %222 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 76, !dbg !4228
  %223 = load i32*, i32** %222, align 8, !dbg !4228, !tbaa !4210
  %224 = getelementptr inbounds i32, i32* %223, i64 %indvars.iv39102, !dbg !4230
  %225 = load i32, i32* %224, align 4, !dbg !4230, !tbaa !2242
  %226 = sext i32 %.6104 to i64, !dbg !4231
  %227 = getelementptr inbounds i32, i32* %223, i64 %226, !dbg !4231
  store i32 %225, i32* %227, align 4, !dbg !4232, !tbaa !2242
  %228 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 77, !dbg !4233
  %229 = load i32*, i32** %228, align 8, !dbg !4233, !tbaa !4221
  %230 = getelementptr inbounds i32, i32* %229, i64 %indvars.iv39102, !dbg !4234
  %231 = load i32, i32* %230, align 4, !dbg !4234, !tbaa !2242
  %232 = sext i32 %.6104 to i64, !dbg !4235
  %233 = getelementptr inbounds i32, i32* %229, i64 %232, !dbg !4235
  store i32 %231, i32* %233, align 4, !dbg !4236, !tbaa !2242
  %234 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 78, !dbg !4237
  %235 = load i32*, i32** %234, align 8, !dbg !4237, !tbaa !4214
  %236 = getelementptr inbounds i32, i32* %235, i64 %indvars.iv39102, !dbg !4238
  %237 = load i32, i32* %236, align 4, !dbg !4238, !tbaa !2242
  %238 = sext i32 %.6104 to i64, !dbg !4239
  %239 = getelementptr inbounds i32, i32* %235, i64 %238, !dbg !4239
  store i32 %237, i32* %239, align 4, !dbg !4240, !tbaa !2242
  %240 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 79, !dbg !4241
  %241 = load i32*, i32** %240, align 8, !dbg !4241, !tbaa !4242
  %242 = getelementptr inbounds i32, i32* %241, i64 %indvars.iv39102, !dbg !4243
  %243 = load i32, i32* %242, align 4, !dbg !4243, !tbaa !2242
  %244 = sext i32 %.6104 to i64, !dbg !4244
  %245 = getelementptr inbounds i32, i32* %241, i64 %244, !dbg !4244
  store i32 %243, i32* %245, align 4, !dbg !4245, !tbaa !2242
  %246 = add nsw i32 %.6104, 1, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %246, metadata !3999, metadata !DIExpression()), !dbg !4009
  br label %247, !dbg !4247

247:                                              ; preds = %217, %221
  %.7 = phi i32 [ %.6104, %217 ], [ %246, %221 ], !dbg !4248
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3999, metadata !DIExpression()), !dbg !4009
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39102, 1, !dbg !4249
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next40, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.7, metadata !3999, metadata !DIExpression()), !dbg !4009
  %248 = load i32, i32* %192, align 4, !dbg !4202, !tbaa !4205
  %249 = sext i32 %248 to i64, !dbg !4206
  %250 = icmp slt i64 %indvars.iv.next40, %249, !dbg !4206
  br i1 %250, label %.lr.ph106, label %._crit_edge107, !dbg !4207, !llvm.loop !4250

._crit_edge107:                                   ; preds = %247, %._crit_edge100
  %.6.lcssa = phi i32 [ 0, %._crit_edge100 ], [ %.7, %247 ], !dbg !4252
  %251 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 17, !dbg !4253
  store i32 %.6.lcssa, i32* %251, align 4, !dbg !4254, !tbaa !4205
  call void @llvm.dbg.value(metadata i32 0, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3990, metadata !DIExpression()), !dbg !4009
  %252 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 4, !dbg !4255
  %253 = load i32, i32* %252, align 8, !dbg !4255, !tbaa !4258
  %254 = icmp sgt i32 %253, 0, !dbg !4259
  br i1 %254, label %.lr.ph111, label %._crit_edge112, !dbg !4260

.lr.ph111:                                        ; preds = %._crit_edge107, %.lr.ph111
  %indvars.iv42109 = phi i64 [ %indvars.iv.next43, %.lr.ph111 ], [ 0, %._crit_edge107 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv42109, metadata !3990, metadata !DIExpression()), !dbg !4009
  %255 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 91, !dbg !4261
  %256 = load i32*, i32** %255, align 8, !dbg !4261, !tbaa !4262
  %257 = getelementptr inbounds i32, i32* %256, i64 %indvars.iv42109, !dbg !4263
  store i32 0, i32* %257, align 4, !dbg !4264, !tbaa !2242
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42109, 1, !dbg !4265
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next43, metadata !3990, metadata !DIExpression()), !dbg !4009
  %258 = load i32, i32* %252, align 8, !dbg !4255, !tbaa !4258
  %259 = sext i32 %258 to i64, !dbg !4259
  %260 = icmp slt i64 %indvars.iv.next43, %259, !dbg !4259
  br i1 %260, label %.lr.ph111, label %._crit_edge112, !dbg !4260, !llvm.loop !4266

._crit_edge112:                                   ; preds = %.lr.ph111, %._crit_edge107
  %261 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 4, !dbg !4268
  %262 = load i32, i32* %261, align 8, !dbg !4268, !tbaa !4258
  %263 = sext i32 %262 to i64, !dbg !4269
  %264 = mul nsw i64 %263, 48, !dbg !4270
  %265 = call i8* @get(i64 %264), !dbg !4271
  %266 = bitcast i8* %265 to i32*, !dbg !4272
  call void @llvm.dbg.value(metadata i32* %266, metadata !4004, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  %267 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 10, !dbg !4273
  %268 = load i32, i32* %267, align 8, !dbg !4273, !tbaa !4276
  %269 = icmp sgt i32 %268, 0, !dbg !4277
  br i1 %269, label %.lr.ph117, label %._crit_edge118, !dbg !4278

.lr.ph117:                                        ; preds = %._crit_edge112, %355
  %.8115 = phi i32 [ %.9, %355 ], [ 0, %._crit_edge112 ]
  %indvars.iv45113 = phi i64 [ %indvars.iv.next46, %355 ], [ 0, %._crit_edge112 ]
  call void @llvm.dbg.value(metadata i32 %.8115, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv45113, metadata !3994, metadata !DIExpression()), !dbg !4009
  %270 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 80, !dbg !4279
  %271 = load i32*, i32** %270, align 8, !dbg !4279, !tbaa !4281
  %272 = getelementptr inbounds i32, i32* %271, i64 %indvars.iv45113, !dbg !4282
  %273 = load i32, i32* %272, align 4, !dbg !4282, !tbaa !2242
  %274 = sdiv i32 %273, 3, !dbg !4283
  call void @llvm.dbg.value(metadata i32 %274, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %275 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 82, !dbg !4284
  %276 = load i32*, i32** %275, align 8, !dbg !4284, !tbaa !4285
  %277 = getelementptr inbounds i32, i32* %276, i64 %indvars.iv45113, !dbg !4286
  %278 = load i32, i32* %277, align 4, !dbg !4286, !tbaa !2242
  %279 = sdiv i32 %278, 3, !dbg !4287
  call void @llvm.dbg.value(metadata i32 %279, metadata !3992, metadata !DIExpression()), !dbg !4009
  %280 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 83, !dbg !4288
  %281 = load i32*, i32** %280, align 8, !dbg !4288, !tbaa !4289
  %282 = getelementptr inbounds i32, i32* %281, i64 %indvars.iv45113, !dbg !4290
  %283 = load i32, i32* %282, align 4, !dbg !4290, !tbaa !2242
  %284 = sdiv i32 %283, 3, !dbg !4291
  call void @llvm.dbg.value(metadata i32 %284, metadata !3993, metadata !DIExpression()), !dbg !4009
  %285 = call i32 @llvm.abs.i32(i32 %279, i1 true), !dbg !4292
  call void @llvm.dbg.value(metadata i32 %285, metadata !4002, metadata !DIExpression()), !dbg !4009
  %286 = call i32 @llvm.abs.i32(i32 %284, i1 true), !dbg !4293
  call void @llvm.dbg.value(metadata i32 %286, metadata !4003, metadata !DIExpression()), !dbg !4009
  %287 = sext i32 %274 to i64, !dbg !4294
  %288 = getelementptr inbounds i32, i32* %2, i64 %287, !dbg !4294
  %289 = load i32, i32* %288, align 4, !dbg !4294, !tbaa !2242
  %.not146 = icmp eq i32 %289, 0, !dbg !4294
  br i1 %.not146, label %307, label %290, !dbg !4296

290:                                              ; preds = %.lr.ph117
  %291 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 81, !dbg !4297
  %292 = load i32*, i32** %291, align 8, !dbg !4297, !tbaa !4298
  %293 = getelementptr inbounds i32, i32* %292, i64 %indvars.iv45113, !dbg !4299
  %294 = load i32, i32* %293, align 4, !dbg !4299, !tbaa !2242
  call void @llvm.dbg.value(metadata i32 %294, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %295 = sdiv i32 %294, 3, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %295, metadata !3991, metadata !DIExpression()), !dbg !4009
  %296 = sext i32 %295 to i64, !dbg !4301
  %297 = getelementptr inbounds i32, i32* %2, i64 %296, !dbg !4301
  %298 = load i32, i32* %297, align 4, !dbg !4301, !tbaa !2242
  %.not147 = icmp eq i32 %298, 0, !dbg !4301
  br i1 %.not147, label %307, label %299, !dbg !4302

299:                                              ; preds = %290
  %300 = zext i32 %285 to i64, !dbg !4303
  %301 = getelementptr inbounds i32, i32* %2, i64 %300, !dbg !4303
  %302 = load i32, i32* %301, align 4, !dbg !4303, !tbaa !2242
  %.not148 = icmp eq i32 %302, 0, !dbg !4303
  br i1 %.not148, label %307, label %303, !dbg !4304

303:                                              ; preds = %299
  %304 = zext i32 %286 to i64, !dbg !4305
  %305 = getelementptr inbounds i32, i32* %2, i64 %304, !dbg !4305
  %306 = load i32, i32* %305, align 4, !dbg !4305, !tbaa !2242
  %.not149 = icmp eq i32 %306, 0, !dbg !4305
  br i1 %.not149, label %307, label %355, !dbg !4306

307:                                              ; preds = %303, %299, %290, %.lr.ph117
  %308 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 80, !dbg !4307
  %309 = load i32*, i32** %308, align 8, !dbg !4307, !tbaa !4281
  %310 = getelementptr inbounds i32, i32* %309, i64 %indvars.iv45113, !dbg !4309
  %311 = load i32, i32* %310, align 4, !dbg !4309, !tbaa !2242
  %312 = sext i32 %.8115 to i64, !dbg !4310
  %313 = getelementptr inbounds i32, i32* %309, i64 %312, !dbg !4310
  store i32 %311, i32* %313, align 4, !dbg !4311, !tbaa !2242
  %314 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 81, !dbg !4312
  %315 = load i32*, i32** %314, align 8, !dbg !4312, !tbaa !4298
  %316 = getelementptr inbounds i32, i32* %315, i64 %indvars.iv45113, !dbg !4313
  %317 = load i32, i32* %316, align 4, !dbg !4313, !tbaa !2242
  %318 = sext i32 %.8115 to i64, !dbg !4314
  %319 = getelementptr inbounds i32, i32* %315, i64 %318, !dbg !4314
  store i32 %317, i32* %319, align 4, !dbg !4315, !tbaa !2242
  %320 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 82, !dbg !4316
  %321 = load i32*, i32** %320, align 8, !dbg !4316, !tbaa !4285
  %322 = getelementptr inbounds i32, i32* %321, i64 %indvars.iv45113, !dbg !4317
  %323 = load i32, i32* %322, align 4, !dbg !4317, !tbaa !2242
  %324 = sext i32 %.8115 to i64, !dbg !4318
  %325 = getelementptr inbounds i32, i32* %321, i64 %324, !dbg !4318
  store i32 %323, i32* %325, align 4, !dbg !4319, !tbaa !2242
  %326 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 83, !dbg !4320
  %327 = load i32*, i32** %326, align 8, !dbg !4320, !tbaa !4289
  %328 = getelementptr inbounds i32, i32* %327, i64 %indvars.iv45113, !dbg !4321
  %329 = load i32, i32* %328, align 4, !dbg !4321, !tbaa !2242
  %330 = sext i32 %.8115 to i64, !dbg !4322
  %331 = getelementptr inbounds i32, i32* %327, i64 %330, !dbg !4322
  store i32 %329, i32* %331, align 4, !dbg !4323, !tbaa !2242
  %332 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 84, !dbg !4324
  %333 = load i32*, i32** %332, align 8, !dbg !4324, !tbaa !4325
  %334 = getelementptr inbounds i32, i32* %333, i64 %indvars.iv45113, !dbg !4326
  %335 = load i32, i32* %334, align 4, !dbg !4326, !tbaa !2242
  %336 = sext i32 %.8115 to i64, !dbg !4327
  %337 = getelementptr inbounds i32, i32* %333, i64 %336, !dbg !4327
  store i32 %335, i32* %337, align 4, !dbg !4328, !tbaa !2242
  %338 = add nsw i32 %.8115, 1, !dbg !4329
  call void @llvm.dbg.value(metadata i32 %338, metadata !3999, metadata !DIExpression()), !dbg !4009
  %339 = icmp sgt i32 %278, -3, !dbg !4330
  %340 = icmp sgt i32 %283, -3
  %or.cond = select i1 %339, i1 %340, i1 false, !dbg !4332
  br i1 %or.cond, label %341, label %355, !dbg !4332

341:                                              ; preds = %307
  %342 = icmp slt i32 %274, %284, !dbg !4333
  %. = select i1 %342, i32 %274, i32 %284, !dbg !4335
  call void @llvm.dbg.value(metadata i32 %., metadata !4001, metadata !DIExpression()), !dbg !4009
  %343 = icmp sgt i32 %274, %284, !dbg !4336
  %344 = select i1 %343, i32 %274, i32 %284, !dbg !4337
  call void @llvm.dbg.value(metadata i32 %344, metadata !4000, metadata !DIExpression()), !dbg !4009
  %345 = mul nsw i32 %., 12, !dbg !4338
  %346 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 91, !dbg !4339
  %347 = load i32*, i32** %346, align 8, !dbg !4339, !tbaa !4262
  %348 = sext i32 %. to i64, !dbg !4340
  %349 = getelementptr inbounds i32, i32* %347, i64 %348, !dbg !4340
  %350 = load i32, i32* %349, align 4, !dbg !4341, !tbaa !2242
  %351 = add nsw i32 %350, 1, !dbg !4341
  store i32 %351, i32* %349, align 4, !dbg !4341, !tbaa !2242
  %352 = add nsw i32 %345, %350, !dbg !4342
  %353 = sext i32 %352 to i64, !dbg !4343
  %354 = getelementptr inbounds i32, i32* %266, i64 %353, !dbg !4343
  store i32 %344, i32* %354, align 4, !dbg !4344, !tbaa !2242
  br label %355, !dbg !4345

355:                                              ; preds = %303, %341, %307
  %.9 = phi i32 [ %.8115, %303 ], [ %338, %341 ], [ %338, %307 ], !dbg !4346
  call void @llvm.dbg.value(metadata i32 %.9, metadata !3999, metadata !DIExpression()), !dbg !4009
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45113, 1, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next46, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.9, metadata !3999, metadata !DIExpression()), !dbg !4009
  %356 = load i32, i32* %267, align 8, !dbg !4273, !tbaa !4276
  %357 = sext i32 %356 to i64, !dbg !4277
  %358 = icmp slt i64 %indvars.iv.next46, %357, !dbg !4277
  br i1 %358, label %.lr.ph117, label %._crit_edge118, !dbg !4278, !llvm.loop !4348

._crit_edge118:                                   ; preds = %355, %._crit_edge112
  %.8.lcssa = phi i32 [ 0, %._crit_edge112 ], [ %.9, %355 ], !dbg !4350
  %359 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 10, !dbg !4351
  store i32 %.8.lcssa, i32* %359, align 8, !dbg !4352, !tbaa !4276
  call void @llvm.dbg.value(metadata i32 0, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3994, metadata !DIExpression()), !dbg !4009
  %360 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 18, !dbg !4353
  %361 = load i32, i32* %360, align 8, !dbg !4353, !tbaa !4356
  %362 = icmp sgt i32 %361, 0, !dbg !4357
  br i1 %362, label %.lr.ph124, label %._crit_edge125, !dbg !4358

.lr.ph124:                                        ; preds = %._crit_edge118, %448
  %.10122 = phi i32 [ %.11, %448 ], [ 0, %._crit_edge118 ]
  %indvars.iv48120 = phi i64 [ %indvars.iv.next49, %448 ], [ 0, %._crit_edge118 ]
  call void @llvm.dbg.value(metadata i32 %.10122, metadata !3999, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv48120, metadata !3994, metadata !DIExpression()), !dbg !4009
  %363 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 85, !dbg !4359
  %364 = load i32*, i32** %363, align 8, !dbg !4359, !tbaa !4361
  %365 = getelementptr inbounds i32, i32* %364, i64 %indvars.iv48120, !dbg !4362
  %366 = load i32, i32* %365, align 4, !dbg !4362, !tbaa !2242
  %367 = sdiv i32 %366, 3, !dbg !4363
  call void @llvm.dbg.value(metadata i32 %367, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 undef, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %368 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 87, !dbg !4364
  %369 = load i32*, i32** %368, align 8, !dbg !4364, !tbaa !4365
  %370 = getelementptr inbounds i32, i32* %369, i64 %indvars.iv48120, !dbg !4366
  %371 = load i32, i32* %370, align 4, !dbg !4366, !tbaa !2242
  %372 = sdiv i32 %371, 3, !dbg !4367
  call void @llvm.dbg.value(metadata i32 %372, metadata !3992, metadata !DIExpression()), !dbg !4009
  %373 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 88, !dbg !4368
  %374 = load i32*, i32** %373, align 8, !dbg !4368, !tbaa !4369
  %375 = getelementptr inbounds i32, i32* %374, i64 %indvars.iv48120, !dbg !4370
  %376 = load i32, i32* %375, align 4, !dbg !4370, !tbaa !2242
  %377 = sdiv i32 %376, 3, !dbg !4371
  call void @llvm.dbg.value(metadata i32 %377, metadata !3993, metadata !DIExpression()), !dbg !4009
  %378 = call i32 @llvm.abs.i32(i32 %372, i1 true), !dbg !4372
  call void @llvm.dbg.value(metadata i32 %378, metadata !4002, metadata !DIExpression()), !dbg !4009
  %379 = call i32 @llvm.abs.i32(i32 %377, i1 true), !dbg !4373
  call void @llvm.dbg.value(metadata i32 %379, metadata !4003, metadata !DIExpression()), !dbg !4009
  %380 = sext i32 %367 to i64, !dbg !4374
  %381 = getelementptr inbounds i32, i32* %2, i64 %380, !dbg !4374
  %382 = load i32, i32* %381, align 4, !dbg !4374, !tbaa !2242
  %.not142 = icmp eq i32 %382, 0, !dbg !4374
  br i1 %.not142, label %400, label %383, !dbg !4376

383:                                              ; preds = %.lr.ph124
  %384 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 86, !dbg !4377
  %385 = load i32*, i32** %384, align 8, !dbg !4377, !tbaa !4378
  %386 = getelementptr inbounds i32, i32* %385, i64 %indvars.iv48120, !dbg !4379
  %387 = load i32, i32* %386, align 4, !dbg !4379, !tbaa !2242
  call void @llvm.dbg.value(metadata i32 %387, metadata !3991, metadata !DIExpression(DW_OP_constu, 3, DW_OP_div, DW_OP_stack_value)), !dbg !4009
  %388 = sdiv i32 %387, 3, !dbg !4380
  call void @llvm.dbg.value(metadata i32 %388, metadata !3991, metadata !DIExpression()), !dbg !4009
  %389 = sext i32 %388 to i64, !dbg !4381
  %390 = getelementptr inbounds i32, i32* %2, i64 %389, !dbg !4381
  %391 = load i32, i32* %390, align 4, !dbg !4381, !tbaa !2242
  %.not143 = icmp eq i32 %391, 0, !dbg !4381
  br i1 %.not143, label %400, label %392, !dbg !4382

392:                                              ; preds = %383
  %393 = zext i32 %378 to i64, !dbg !4383
  %394 = getelementptr inbounds i32, i32* %2, i64 %393, !dbg !4383
  %395 = load i32, i32* %394, align 4, !dbg !4383, !tbaa !2242
  %.not144 = icmp eq i32 %395, 0, !dbg !4383
  br i1 %.not144, label %400, label %396, !dbg !4384

396:                                              ; preds = %392
  %397 = zext i32 %379 to i64, !dbg !4385
  %398 = getelementptr inbounds i32, i32* %2, i64 %397, !dbg !4385
  %399 = load i32, i32* %398, align 4, !dbg !4385, !tbaa !2242
  %.not145 = icmp eq i32 %399, 0, !dbg !4385
  br i1 %.not145, label %400, label %448, !dbg !4386

400:                                              ; preds = %396, %392, %383, %.lr.ph124
  %401 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 85, !dbg !4387
  %402 = load i32*, i32** %401, align 8, !dbg !4387, !tbaa !4361
  %403 = getelementptr inbounds i32, i32* %402, i64 %indvars.iv48120, !dbg !4389
  %404 = load i32, i32* %403, align 4, !dbg !4389, !tbaa !2242
  %405 = sext i32 %.10122 to i64, !dbg !4390
  %406 = getelementptr inbounds i32, i32* %402, i64 %405, !dbg !4390
  store i32 %404, i32* %406, align 4, !dbg !4391, !tbaa !2242
  %407 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 86, !dbg !4392
  %408 = load i32*, i32** %407, align 8, !dbg !4392, !tbaa !4378
  %409 = getelementptr inbounds i32, i32* %408, i64 %indvars.iv48120, !dbg !4393
  %410 = load i32, i32* %409, align 4, !dbg !4393, !tbaa !2242
  %411 = sext i32 %.10122 to i64, !dbg !4394
  %412 = getelementptr inbounds i32, i32* %408, i64 %411, !dbg !4394
  store i32 %410, i32* %412, align 4, !dbg !4395, !tbaa !2242
  %413 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 87, !dbg !4396
  %414 = load i32*, i32** %413, align 8, !dbg !4396, !tbaa !4365
  %415 = getelementptr inbounds i32, i32* %414, i64 %indvars.iv48120, !dbg !4397
  %416 = load i32, i32* %415, align 4, !dbg !4397, !tbaa !2242
  %417 = sext i32 %.10122 to i64, !dbg !4398
  %418 = getelementptr inbounds i32, i32* %414, i64 %417, !dbg !4398
  store i32 %416, i32* %418, align 4, !dbg !4399, !tbaa !2242
  %419 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 88, !dbg !4400
  %420 = load i32*, i32** %419, align 8, !dbg !4400, !tbaa !4369
  %421 = getelementptr inbounds i32, i32* %420, i64 %indvars.iv48120, !dbg !4401
  %422 = load i32, i32* %421, align 4, !dbg !4401, !tbaa !2242
  %423 = sext i32 %.10122 to i64, !dbg !4402
  %424 = getelementptr inbounds i32, i32* %420, i64 %423, !dbg !4402
  store i32 %422, i32* %424, align 4, !dbg !4403, !tbaa !2242
  %425 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 89, !dbg !4404
  %426 = load i32*, i32** %425, align 8, !dbg !4404, !tbaa !4405
  %427 = getelementptr inbounds i32, i32* %426, i64 %indvars.iv48120, !dbg !4406
  %428 = load i32, i32* %427, align 4, !dbg !4406, !tbaa !2242
  %429 = sext i32 %.10122 to i64, !dbg !4407
  %430 = getelementptr inbounds i32, i32* %426, i64 %429, !dbg !4407
  store i32 %428, i32* %430, align 4, !dbg !4408, !tbaa !2242
  %431 = add nsw i32 %.10122, 1, !dbg !4409
  call void @llvm.dbg.value(metadata i32 %431, metadata !3999, metadata !DIExpression()), !dbg !4009
  %432 = icmp sgt i32 %371, -3, !dbg !4410
  %433 = icmp sgt i32 %376, -3
  %or.cond139 = select i1 %432, i1 %433, i1 false, !dbg !4412
  br i1 %or.cond139, label %434, label %448, !dbg !4412

434:                                              ; preds = %400
  %435 = icmp slt i32 %367, %377, !dbg !4413
  %.140 = select i1 %435, i32 %367, i32 %377, !dbg !4415
  call void @llvm.dbg.value(metadata i32 %.140, metadata !4001, metadata !DIExpression()), !dbg !4009
  %436 = icmp sgt i32 %367, %377, !dbg !4416
  %437 = select i1 %436, i32 %367, i32 %377, !dbg !4417
  call void @llvm.dbg.value(metadata i32 %437, metadata !4000, metadata !DIExpression()), !dbg !4009
  %438 = mul nsw i32 %.140, 12, !dbg !4418
  %439 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 91, !dbg !4419
  %440 = load i32*, i32** %439, align 8, !dbg !4419, !tbaa !4262
  %441 = sext i32 %.140 to i64, !dbg !4420
  %442 = getelementptr inbounds i32, i32* %440, i64 %441, !dbg !4420
  %443 = load i32, i32* %442, align 4, !dbg !4421, !tbaa !2242
  %444 = add nsw i32 %443, 1, !dbg !4421
  store i32 %444, i32* %442, align 4, !dbg !4421, !tbaa !2242
  %445 = add nsw i32 %438, %443, !dbg !4422
  %446 = sext i32 %445 to i64, !dbg !4423
  %447 = getelementptr inbounds i32, i32* %266, i64 %446, !dbg !4423
  store i32 %437, i32* %447, align 4, !dbg !4424, !tbaa !2242
  br label %448, !dbg !4425

448:                                              ; preds = %396, %434, %400
  %.11 = phi i32 [ %.10122, %396 ], [ %431, %434 ], [ %431, %400 ], !dbg !4426
  call void @llvm.dbg.value(metadata i32 %.11, metadata !3999, metadata !DIExpression()), !dbg !4009
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48120, 1, !dbg !4427
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next49, metadata !3994, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %.11, metadata !3999, metadata !DIExpression()), !dbg !4009
  %449 = load i32, i32* %360, align 8, !dbg !4353, !tbaa !4356
  %450 = sext i32 %449 to i64, !dbg !4357
  %451 = icmp slt i64 %indvars.iv.next49, %450, !dbg !4357
  br i1 %451, label %.lr.ph124, label %._crit_edge125, !dbg !4358, !llvm.loop !4428

._crit_edge125:                                   ; preds = %448, %._crit_edge118
  %.10.lcssa = phi i32 [ 0, %._crit_edge118 ], [ %.11, %448 ], !dbg !4430
  %452 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 18, !dbg !4431
  store i32 %.10.lcssa, i32* %452, align 8, !dbg !4432, !tbaa !4356
  %453 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 11, !dbg !4433
  store i32 %.10.lcssa, i32* %453, align 4, !dbg !4434, !tbaa !4435
  call void @llvm.dbg.value(metadata i32 0, metadata !3991, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3990, metadata !DIExpression()), !dbg !4009
  %454 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 4, !dbg !4436
  %455 = load i32, i32* %454, align 8, !dbg !4436, !tbaa !4258
  %456 = icmp sgt i32 %455, 1, !dbg !4439
  br i1 %456, label %.lr.ph137, label %._crit_edge138, !dbg !4440

.lr.ph137:                                        ; preds = %._crit_edge125, %._crit_edge131
  %.02135 = phi i64 [ %.13.lcssa.wide, %._crit_edge131 ], [ 0, %._crit_edge125 ]
  %indvars.iv58133 = phi i64 [ %indvars.iv.next59, %._crit_edge131 ], [ 0, %._crit_edge125 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3991, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv58133, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 0, metadata !3992, metadata !DIExpression()), !dbg !4009
  %sext = shl i64 %.02135, 32, !dbg !4441
  %457 = ashr exact i64 %sext, 32, !dbg !4441
  call void @llvm.dbg.value(metadata i64 %457, metadata !3991, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 0, metadata !3992, metadata !DIExpression()), !dbg !4009
  %458 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 91, !dbg !4444
  %459 = load i32*, i32** %458, align 8, !dbg !4444, !tbaa !4262
  %460 = getelementptr inbounds i32, i32* %459, i64 %indvars.iv58133, !dbg !4446
  %461 = load i32, i32* %460, align 4, !dbg !4446, !tbaa !2242
  %462 = icmp sgt i32 %461, 0, !dbg !4447
  br i1 %462, label %.lr.ph130, label %._crit_edge131, !dbg !4448

.lr.ph130:                                        ; preds = %.lr.ph137, %.lr.ph130
  %indvars.iv51128 = phi i64 [ %indvars.iv.next52, %.lr.ph130 ], [ 0, %.lr.ph137 ]
  %indvars.iv53127 = phi i64 [ %indvars.iv.next54, %.lr.ph130 ], [ %457, %.lr.ph137 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv51128, metadata !3992, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv53127, metadata !3991, metadata !DIExpression()), !dbg !4009
  %463 = mul nuw nsw i64 %indvars.iv58133, 12, !dbg !4449
  %464 = add nuw nsw i64 %463, %indvars.iv51128, !dbg !4450
  %465 = getelementptr inbounds i32, i32* %266, i64 %464, !dbg !4451
  %466 = load i32, i32* %465, align 4, !dbg !4451, !tbaa !2242
  %467 = getelementptr inbounds %struct.parm, %struct.parm* %39, i64 0, i32 92, !dbg !4452
  %468 = load i32*, i32** %467, align 8, !dbg !4452, !tbaa !4453
  %indvars.iv.next54 = add nsw i64 %indvars.iv53127, 1, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next54, metadata !3991, metadata !DIExpression()), !dbg !4009
  %469 = getelementptr inbounds i32, i32* %468, i64 %indvars.iv53127, !dbg !4455
  store i32 %466, i32* %469, align 4, !dbg !4456, !tbaa !2242
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51128, 1, !dbg !4457
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next54, metadata !3991, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next52, metadata !3992, metadata !DIExpression()), !dbg !4009
  %470 = load i32*, i32** %458, align 8, !dbg !4444, !tbaa !4262
  %471 = getelementptr inbounds i32, i32* %470, i64 %indvars.iv58133, !dbg !4446
  %472 = load i32, i32* %471, align 4, !dbg !4446, !tbaa !2242
  %473 = sext i32 %472 to i64, !dbg !4447
  %474 = icmp slt i64 %indvars.iv.next52, %473, !dbg !4447
  br i1 %474, label %.lr.ph130, label %._crit_edge131, !dbg !4448, !llvm.loop !4458

._crit_edge131:                                   ; preds = %.lr.ph130, %.lr.ph137
  %.13.lcssa.wide = phi i64 [ %457, %.lr.ph137 ], [ %indvars.iv.next54, %.lr.ph130 ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58133, 1, !dbg !4460
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next59, metadata !3990, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i64 %.13.lcssa.wide, metadata !3991, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4009
  %475 = load i32, i32* %454, align 8, !dbg !4436, !tbaa !4258
  %476 = add nsw i32 %475, -1, !dbg !4461
  %477 = sext i32 %476 to i64, !dbg !4439
  %478 = icmp slt i64 %indvars.iv.next59, %477, !dbg !4439
  br i1 %478, label %.lr.ph137, label %._crit_edge138, !dbg !4440, !llvm.loop !4462

._crit_edge138:                                   ; preds = %._crit_edge131, %._crit_edge125
  call void @free(i8* %265) #11, !dbg !4464
  br label %479, !dbg !4465

479:                                              ; preds = %._crit_edge138, %._crit_edge79
  ret i32 %.012.lcssa, !dbg !4466
}

; Function Attrs: nounwind uwtable
define internal i8* @get(i64 %0) #0 !dbg !4467 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4471, metadata !DIExpression()), !dbg !4473
  %2 = icmp eq i64 %0, 0, !dbg !4474
  br i1 %2, label %11, label %3, !dbg !4476

3:                                                ; preds = %1
  %4 = call noalias i8* @malloc(i64 %0) #11, !dbg !4477
  call void @llvm.dbg.value(metadata i8* %4, metadata !4472, metadata !DIExpression()), !dbg !4473
  %5 = icmp eq i8* %4, null, !dbg !4479
  br i1 %5, label %6, label %11, !dbg !4480

6:                                                ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !4481, !tbaa !652
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i64 %0) #11, !dbg !4483
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @nabout, align 8, !dbg !4484, !tbaa !652
  %10 = call i32 @fflush(%struct._IO_FILE* %9) #11, !dbg !4485
  call void @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0)) #13, !dbg !4486
  call void @exit(i32 1) #16, !dbg !4487
  unreachable, !dbg !4487

11:                                               ; preds = %3, %1
  %.0 = phi i8* [ null, %1 ], [ %4, %3 ], !dbg !4473
  ret i8* %.0, !dbg !4488
}

; Function Attrs: nounwind uwtable
define dso_local i32 @set_cons_mask(%struct.molecule_t* %0, i8* %1, i32* %2) #0 !dbg !4489 {
  call void @llvm.dbg.value(metadata %struct.molecule_t* %0, metadata !4491, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i8* %1, metadata !4492, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32* %2, metadata !4493, metadata !DIExpression()), !dbg !4501
  %4 = call i32 @select_atoms(%struct.molecule_t* %0, i8* %1) #11, !dbg !4502
  call void @llvm.dbg.value(metadata i32 0, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 0, metadata !4496, metadata !DIExpression()), !dbg !4501
  %5 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %0, i64 0, i32 2, !dbg !4503
  %6 = load %struct.strand_t*, %struct.strand_t** %5, align 8, !dbg !4503, !tbaa !489
  call void @llvm.dbg.value(metadata %struct.strand_t* %6, metadata !4498, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 0, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 0, metadata !4496, metadata !DIExpression()), !dbg !4501
  %.not = icmp eq %struct.strand_t* %6, null, !dbg !4505
  br i1 %.not, label %._crit_edge33, label %.lr.ph32, !dbg !4505

.lr.ph32:                                         ; preds = %3, %._crit_edge25
  %.030 = phi %struct.strand_t* [ %37, %._crit_edge25 ], [ %6, %3 ]
  %.0129 = phi i32 [ %.1.lcssa, %._crit_edge25 ], [ 0, %3 ]
  %.0228 = phi i32 [ %.13.lcssa, %._crit_edge25 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.030, metadata !4498, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %.0129, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %.0228, metadata !4496, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 0, metadata !4494, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %.0129, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %.0228, metadata !4496, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 0, metadata !4494, metadata !DIExpression()), !dbg !4501
  %7 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.030, i64 0, i32 5, !dbg !4506
  %8 = load i32, i32* %7, align 8, !dbg !4506, !tbaa !646
  %9 = icmp sgt i32 %8, 0, !dbg !4511
  br i1 %9, label %.lr.ph24, label %._crit_edge25, !dbg !4512

.lr.ph24:                                         ; preds = %.lr.ph32, %._crit_edge
  %.122 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0129, %.lr.ph32 ]
  %.1321 = phi i32 [ %32, %._crit_edge ], [ %.0228, %.lr.ph32 ]
  %indvars.iv1220 = phi i64 [ %indvars.iv.next13, %._crit_edge ], [ 0, %.lr.ph32 ]
  call void @llvm.dbg.value(metadata i32 %.122, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %.1321, metadata !4496, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %indvars.iv1220, metadata !4494, metadata !DIExpression()), !dbg !4501
  %10 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.030, i64 0, i32 7, !dbg !4513
  %11 = load %struct.residue_t**, %struct.residue_t*** %10, align 8, !dbg !4513, !tbaa !650
  %12 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %11, i64 %indvars.iv1220, !dbg !4515
  %13 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !4515, !tbaa !652
  call void @llvm.dbg.value(metadata %struct.residue_t* %13, metadata !4499, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 0, metadata !4495, metadata !DIExpression()), !dbg !4501
  %14 = sext i32 %.1321 to i64, !dbg !4516
  call void @llvm.dbg.value(metadata i32 %.122, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %14, metadata !4496, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 0, metadata !4495, metadata !DIExpression()), !dbg !4501
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 15, !dbg !4518
  %16 = load i32, i32* %15, align 8, !dbg !4518, !tbaa !568
  %17 = icmp sgt i32 %16, 0, !dbg !4520
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !4521

.lr.ph:                                           ; preds = %.lr.ph24, %28
  %.218 = phi i32 [ %.3, %28 ], [ %.122, %.lr.ph24 ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next, %28 ], [ 0, %.lr.ph24 ]
  %indvars.iv715 = phi i64 [ %indvars.iv.next8, %28 ], [ %14, %.lr.ph24 ]
  call void @llvm.dbg.value(metadata i32 %.218, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !4495, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %indvars.iv715, metadata !4496, metadata !DIExpression()), !dbg !4501
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %13, i64 0, i32 17, !dbg !4522
  %19 = load %struct.atom_t*, %struct.atom_t** %18, align 8, !dbg !4522, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %19, i64 %indvars.iv17), metadata !4500, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4501
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %19, i64 %indvars.iv17, i32 2, !dbg !4524
  %21 = load i32, i32* %20, align 8, !dbg !4524, !tbaa !1592
  %22 = and i32 %21, 1, !dbg !4526
  %.not36 = icmp eq i32 %22, 0, !dbg !4526
  br i1 %.not36, label %26, label %23, !dbg !4527

23:                                               ; preds = %.lr.ph
  %24 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv715, !dbg !4528
  store i32 1, i32* %24, align 4, !dbg !4530, !tbaa !2242
  %25 = add nsw i32 %.218, 1, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %25, metadata !4497, metadata !DIExpression()), !dbg !4501
  br label %28, !dbg !4532

26:                                               ; preds = %.lr.ph
  %27 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv715, !dbg !4533
  store i32 0, i32* %27, align 4, !dbg !4535, !tbaa !2242
  br label %28

28:                                               ; preds = %26, %23
  %.3 = phi i32 [ %25, %23 ], [ %.218, %26 ], !dbg !4501
  call void @llvm.dbg.value(metadata i32 %.3, metadata !4497, metadata !DIExpression()), !dbg !4501
  %indvars.iv.next8 = add nsw i64 %indvars.iv715, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !4496, metadata !DIExpression()), !dbg !4501
  %indvars.iv.next = add nuw nsw i64 %indvars.iv17, 1, !dbg !4537
  call void @llvm.dbg.value(metadata i32 %.3, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !4496, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4495, metadata !DIExpression()), !dbg !4501
  %29 = load i32, i32* %15, align 8, !dbg !4518, !tbaa !568
  %30 = sext i32 %29 to i64, !dbg !4520
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !4520
  br i1 %31, label %.lr.ph, label %._crit_edge, !dbg !4521, !llvm.loop !4538

._crit_edge:                                      ; preds = %28, %.lr.ph24
  %.24.lcssa.wide = phi i64 [ %14, %.lr.ph24 ], [ %indvars.iv.next8, %28 ]
  %.2.lcssa = phi i32 [ %.122, %.lr.ph24 ], [ %.3, %28 ], !dbg !4501
  %32 = trunc i64 %.24.lcssa.wide to i32, !dbg !4540
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv1220, 1, !dbg !4541
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %32, metadata !4496, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next13, metadata !4494, metadata !DIExpression()), !dbg !4501
  %33 = load i32, i32* %7, align 8, !dbg !4506, !tbaa !646
  %34 = sext i32 %33 to i64, !dbg !4511
  %35 = icmp slt i64 %indvars.iv.next13, %34, !dbg !4511
  br i1 %35, label %.lr.ph24, label %._crit_edge25, !dbg !4512, !llvm.loop !4542

._crit_edge25:                                    ; preds = %.lr.ph32, %._crit_edge
  %.13.lcssa = phi i32 [ %.0228, %.lr.ph32 ], [ %32, %._crit_edge ], !dbg !4544
  %.1.lcssa = phi i32 [ %.0129, %.lr.ph32 ], [ %.2.lcssa, %._crit_edge ], !dbg !4545
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.030, i64 0, i32 4, !dbg !4546
  %37 = load %struct.strand_t*, %struct.strand_t** %36, align 8, !dbg !4546, !tbaa !634
  call void @llvm.dbg.value(metadata %struct.strand_t* %37, metadata !4498, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !4497, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i32 %.13.lcssa, metadata !4496, metadata !DIExpression()), !dbg !4501
  %.not35 = icmp eq %struct.strand_t* %37, null, !dbg !4505
  br i1 %.not35, label %._crit_edge33, label %.lr.ph32, !dbg !4505, !llvm.loop !4547

._crit_edge33:                                    ; preds = %._crit_edge25, %3
  %.01.lcssa = phi i32 [ 0, %3 ], [ %.1.lcssa, %._crit_edge25 ], !dbg !4545
  ret i32 %.01.lcssa, !dbg !4549
}

; Function Attrs: nounwind uwtable
define dso_local i32 @circle(double* %0, double* %1, double* %2, double* %3) #0 !dbg !4550 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata double* %0, metadata !4554, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata double* %1, metadata !4555, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata double* %2, metadata !4556, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata double* %3, metadata !4557, metadata !DIExpression()), !dbg !4567
  %11 = bitcast [3 x double]* %5 to i8*, !dbg !4568
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #11, !dbg !4568
  call void @llvm.dbg.declare(metadata [3 x double]* %5, metadata !4559, metadata !DIExpression()), !dbg !4569
  %12 = bitcast [3 x double]* %6 to i8*, !dbg !4570
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #11, !dbg !4570
  call void @llvm.dbg.declare(metadata [3 x double]* %6, metadata !4560, metadata !DIExpression()), !dbg !4571
  %13 = bitcast [3 x double]* %7 to i8*, !dbg !4572
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #11, !dbg !4572
  call void @llvm.dbg.declare(metadata [3 x double]* %7, metadata !4561, metadata !DIExpression()), !dbg !4573
  %14 = bitcast [3 x double]* %8 to i8*, !dbg !4574
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !4574
  call void @llvm.dbg.declare(metadata [3 x double]* %8, metadata !4562, metadata !DIExpression()), !dbg !4575
  %15 = bitcast [3 x double]* %9 to i8*, !dbg !4576
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #11, !dbg !4576
  call void @llvm.dbg.declare(metadata [3 x double]* %9, metadata !4563, metadata !DIExpression()), !dbg !4577
  %16 = bitcast [3 x double]* %10 to i8*, !dbg !4578
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #11, !dbg !4578
  call void @llvm.dbg.declare(metadata [3 x double]* %10, metadata !4564, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i32 0, metadata !4558, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i64 0, metadata !4558, metadata !DIExpression()), !dbg !4567
  br label %17, !dbg !4580

17:                                               ; preds = %4, %17
  %indvars.iv27 = phi i64 [ 0, %4 ], [ %indvars.iv.next, %17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !4558, metadata !DIExpression()), !dbg !4567
  %18 = getelementptr inbounds double, double* %1, i64 %indvars.iv27, !dbg !4582
  %19 = load double, double* %18, align 8, !dbg !4582, !tbaa !455
  %20 = getelementptr inbounds double, double* %0, i64 %indvars.iv27, !dbg !4584
  %21 = load double, double* %20, align 8, !dbg !4584, !tbaa !455
  %22 = fsub double %19, %21, !dbg !4585
  %23 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %indvars.iv27, !dbg !4586
  store double %22, double* %23, align 8, !dbg !4587, !tbaa !455
  %indvars.iv.next = add nuw nsw i64 %indvars.iv27, 1, !dbg !4588
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4558, metadata !DIExpression()), !dbg !4567
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !4589
  br i1 %exitcond.not, label %24, label %17, !dbg !4580, !llvm.loop !4590

24:                                               ; preds = %17, %24
  %indvars.iv328 = phi i64 [ %indvars.iv.next4, %24 ], [ 0, %17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv328, metadata !4558, metadata !DIExpression()), !dbg !4567
  %25 = getelementptr inbounds double, double* %2, i64 %indvars.iv328, !dbg !4592
  %26 = load double, double* %25, align 8, !dbg !4592, !tbaa !455
  %27 = getelementptr inbounds double, double* %0, i64 %indvars.iv328, !dbg !4595
  %28 = load double, double* %27, align 8, !dbg !4595, !tbaa !455
  %29 = fsub double %26, %28, !dbg !4596
  %30 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %indvars.iv328, !dbg !4597
  store double %29, double* %30, align 8, !dbg !4598, !tbaa !455
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv328, 1, !dbg !4599
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4, metadata !4558, metadata !DIExpression()), !dbg !4567
  %exitcond6.not = icmp eq i64 %indvars.iv.next4, 3, !dbg !4600
  br i1 %exitcond6.not, label %31, label %24, !dbg !4601, !llvm.loop !4602

31:                                               ; preds = %24, %31
  %indvars.iv729 = phi i64 [ %indvars.iv.next8, %31 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv729, metadata !4558, metadata !DIExpression()), !dbg !4567
  %32 = getelementptr inbounds double, double* %2, i64 %indvars.iv729, !dbg !4604
  %33 = load double, double* %32, align 8, !dbg !4604, !tbaa !455
  %34 = getelementptr inbounds double, double* %1, i64 %indvars.iv729, !dbg !4607
  %35 = load double, double* %34, align 8, !dbg !4607, !tbaa !455
  %36 = fsub double %33, %35, !dbg !4608
  %37 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 %indvars.iv729, !dbg !4609
  store double %36, double* %37, align 8, !dbg !4610, !tbaa !455
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv729, 1, !dbg !4611
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !4558, metadata !DIExpression()), !dbg !4567
  %exitcond10.not = icmp eq i64 %indvars.iv.next8, 3, !dbg !4612
  br i1 %exitcond10.not, label %38, label %31, !dbg !4613, !llvm.loop !4614

38:                                               ; preds = %31, %38
  %indvars.iv1130 = phi i64 [ %indvars.iv.next12, %38 ], [ 0, %31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1130, metadata !4558, metadata !DIExpression()), !dbg !4567
  %39 = getelementptr inbounds double, double* %0, i64 %indvars.iv1130, !dbg !4616
  %40 = load double, double* %39, align 8, !dbg !4616, !tbaa !455
  %41 = getelementptr inbounds double, double* %1, i64 %indvars.iv1130, !dbg !4619
  %42 = load double, double* %41, align 8, !dbg !4619, !tbaa !455
  %43 = fadd double %40, %42, !dbg !4620
  %44 = fmul double %43, 5.000000e-01, !dbg !4621
  %45 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %indvars.iv1130, !dbg !4622
  store double %44, double* %45, align 8, !dbg !4623, !tbaa !455
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv1130, 1, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next12, metadata !4558, metadata !DIExpression()), !dbg !4567
  %exitcond14.not = icmp eq i64 %indvars.iv.next12, 3, !dbg !4625
  br i1 %exitcond14.not, label %46, label %38, !dbg !4626, !llvm.loop !4627

46:                                               ; preds = %38, %46
  %indvars.iv1531 = phi i64 [ %indvars.iv.next16, %46 ], [ 0, %38 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1531, metadata !4558, metadata !DIExpression()), !dbg !4567
  %47 = getelementptr inbounds double, double* %2, i64 %indvars.iv1531, !dbg !4629
  %48 = load double, double* %47, align 8, !dbg !4629, !tbaa !455
  %49 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %indvars.iv1531, !dbg !4632
  %50 = load double, double* %49, align 8, !dbg !4632, !tbaa !455
  %51 = fsub double %48, %50, !dbg !4633
  %52 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 %indvars.iv1531, !dbg !4634
  store double %51, double* %52, align 8, !dbg !4635, !tbaa !455
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv1531, 1, !dbg !4636
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next16, metadata !4558, metadata !DIExpression()), !dbg !4567
  %exitcond18.not = icmp eq i64 %indvars.iv.next16, 3, !dbg !4637
  br i1 %exitcond18.not, label %53, label %46, !dbg !4638, !llvm.loop !4639

53:                                               ; preds = %46
  %54 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4641
  %55 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !4642
  %56 = call double @vdot(double* nonnull %54, double* nonnull %55), !dbg !4643
  %57 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4644
  %58 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !4645
  %59 = call double @vdot(double* nonnull %57, double* nonnull %58), !dbg !4646
  %60 = fdiv double %56, %59, !dbg !4647
  call void @llvm.dbg.value(metadata double %60, metadata !4565, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i32 0, metadata !4558, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i64 0, metadata !4558, metadata !DIExpression()), !dbg !4567
  br label %61, !dbg !4648

61:                                               ; preds = %53, %61
  %indvars.iv1932 = phi i64 [ 0, %53 ], [ %indvars.iv.next20, %61 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1932, metadata !4558, metadata !DIExpression()), !dbg !4567
  %62 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 %indvars.iv1932, !dbg !4650
  %63 = load double, double* %62, align 8, !dbg !4650, !tbaa !455
  %64 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %indvars.iv1932, !dbg !4652
  %65 = load double, double* %64, align 8, !dbg !4652, !tbaa !455
  %66 = fmul double %60, %65, !dbg !4653
  %67 = fsub double %63, %66, !dbg !4654
  %68 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %indvars.iv1932, !dbg !4655
  store double %67, double* %68, align 8, !dbg !4656, !tbaa !455
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv1932, 1, !dbg !4657
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next20, metadata !4558, metadata !DIExpression()), !dbg !4567
  %exitcond22.not = icmp eq i64 %indvars.iv.next20, 3, !dbg !4658
  br i1 %exitcond22.not, label %69, label %61, !dbg !4648, !llvm.loop !4659

69:                                               ; preds = %61
  %70 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0, !dbg !4661
  %71 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 0, !dbg !4662
  %72 = call double @vdot(double* nonnull %70, double* nonnull %71), !dbg !4663
  call void @llvm.dbg.value(metadata double %72, metadata !4566, metadata !DIExpression()), !dbg !4567
  %73 = call double @llvm.fabs.f64(double %72), !dbg !4664
  %74 = fcmp olt double %73, 1.000000e-09, !dbg !4666
  br i1 %74, label %75, label %78, !dbg !4667

75:                                               ; preds = %69
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4668, !tbaa !652
  %77 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %76) #14, !dbg !4670
  br label %92, !dbg !4671

78:                                               ; preds = %69
  %79 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0, i64 0, !dbg !4672
  %80 = getelementptr inbounds [3 x double], [3 x double]* %7, i64 0, i64 0, !dbg !4673
  %81 = call double @vdot(double* nonnull %79, double* nonnull %80), !dbg !4674
  %82 = fmul double %81, 5.000000e-01, !dbg !4675
  %83 = fdiv double %82, %72, !dbg !4676
  call void @llvm.dbg.value(metadata double %83, metadata !4566, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i32 0, metadata !4558, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.value(metadata i64 0, metadata !4558, metadata !DIExpression()), !dbg !4567
  br label %84, !dbg !4677

84:                                               ; preds = %78, %84
  %indvars.iv2333 = phi i64 [ 0, %78 ], [ %indvars.iv.next24, %84 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2333, metadata !4558, metadata !DIExpression()), !dbg !4567
  %85 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 %indvars.iv2333, !dbg !4679
  %86 = load double, double* %85, align 8, !dbg !4679, !tbaa !455
  %87 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0, i64 %indvars.iv2333, !dbg !4681
  %88 = load double, double* %87, align 8, !dbg !4681, !tbaa !455
  %89 = fmul double %83, %88, !dbg !4682
  %90 = fadd double %86, %89, !dbg !4683
  %91 = getelementptr inbounds double, double* %3, i64 %indvars.iv2333, !dbg !4684
  store double %90, double* %91, align 8, !dbg !4685, !tbaa !455
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv2333, 1, !dbg !4686
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next24, metadata !4558, metadata !DIExpression()), !dbg !4567
  %exitcond26.not = icmp eq i64 %indvars.iv.next24, 3, !dbg !4687
  br i1 %exitcond26.not, label %92, label %84, !dbg !4677, !llvm.loop !4688

92:                                               ; preds = %84, %75
  %.0 = phi i32 [ 1, %75 ], [ 0, %84 ], !dbg !4567
  %93 = bitcast [3 x double]* %10 to i8*, !dbg !4690
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %93) #11, !dbg !4690
  %94 = bitcast [3 x double]* %9 to i8*, !dbg !4690
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %94) #11, !dbg !4690
  %95 = bitcast [3 x double]* %8 to i8*, !dbg !4690
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %95) #11, !dbg !4690
  %96 = bitcast [3 x double]* %7 to i8*, !dbg !4690
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %96) #11, !dbg !4690
  %97 = bitcast [3 x double]* %6 to i8*, !dbg !4690
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %97) #11, !dbg !4690
  %98 = bitcast [3 x double]* %5 to i8*, !dbg !4690
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %98) #11, !dbg !4690
  ret i32 %.0, !dbg !4690
}

; Function Attrs: nounwind uwtable
define internal double @vdot(double* %0, double* %1) #0 !dbg !4691 {
  call void @llvm.dbg.value(metadata double* %0, metadata !4693, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata double* %1, metadata !4694, metadata !DIExpression()), !dbg !4695
  %3 = load double, double* %0, align 8, !dbg !4696, !tbaa !455
  %4 = load double, double* %1, align 8, !dbg !4697, !tbaa !455
  %5 = fmul double %3, %4, !dbg !4698
  %6 = getelementptr inbounds double, double* %0, i64 1, !dbg !4699
  %7 = load double, double* %6, align 8, !dbg !4699, !tbaa !455
  %8 = getelementptr inbounds double, double* %1, i64 1, !dbg !4700
  %9 = load double, double* %8, align 8, !dbg !4700, !tbaa !455
  %10 = fmul double %7, %9, !dbg !4701
  %11 = fadd double %5, %10, !dbg !4702
  %12 = getelementptr inbounds double, double* %0, i64 2, !dbg !4703
  %13 = load double, double* %12, align 8, !dbg !4703, !tbaa !455
  %14 = getelementptr inbounds double, double* %1, i64 2, !dbg !4704
  %15 = load double, double* %14, align 8, !dbg !4704, !tbaa !455
  %16 = fmul double %13, %15, !dbg !4705
  %17 = fadd double %11, %16, !dbg !4706
  ret double %17, !dbg !4707
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @hypot(double, double) #3

; Function Attrs: nounwind uwtable
define internal i32 @find_atom(%struct.residue_t* %0, i8* %1) #0 !dbg !4708 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !4712, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata i8* %1, metadata !4713, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata i32 0, metadata !4714, metadata !DIExpression()), !dbg !4716
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !4717
  %4 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !4717, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.atom_t* %4, metadata !4715, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata i32 0, metadata !4714, metadata !DIExpression()), !dbg !4716
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !4719
  %6 = load i32, i32* %5, align 8, !dbg !4719, !tbaa !568
  %7 = icmp sgt i32 %6, 0, !dbg !4721
  br i1 %7, label %.lr.ph, label %._crit_edge, !dbg !4722

.lr.ph:                                           ; preds = %2, %12
  %.015 = phi %struct.atom_t* [ %14, %12 ], [ %4, %2 ]
  %.024 = phi i32 [ %13, %12 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %.015, metadata !4715, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata i32 %.024, metadata !4714, metadata !DIExpression()), !dbg !4716
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.015, i64 0, i32 0, !dbg !4723
  %9 = load i8*, i8** %8, align 8, !dbg !4723, !tbaa !574
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(1) %1) #12, !dbg !4726
  %11 = icmp eq i32 %10, 0, !dbg !4727
  br i1 %11, label %._crit_edge, label %12, !dbg !4728

12:                                               ; preds = %.lr.ph
  %13 = add nuw nsw i32 %.024, 1, !dbg !4729
  call void @llvm.dbg.value(metadata i32 %13, metadata !4714, metadata !DIExpression()), !dbg !4716
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.015, i64 1, !dbg !4730
  call void @llvm.dbg.value(metadata %struct.atom_t* %14, metadata !4715, metadata !DIExpression()), !dbg !4716
  %15 = load i32, i32* %5, align 8, !dbg !4719, !tbaa !568
  %16 = icmp slt i32 %13, %15, !dbg !4721
  br i1 %16, label %.lr.ph, label %._crit_edge, !dbg !4722, !llvm.loop !4731

._crit_edge:                                      ; preds = %2, %12, %.lr.ph
  %.0 = phi i32 [ %.024, %.lr.ph ], [ -1, %12 ], [ -1, %2 ], !dbg !4716
  ret i32 %.0, !dbg !4733
}

; Function Attrs: nounwind uwtable
define internal i32 @delete_atom(%struct.residue_t* %0, i32 %1) #0 !dbg !4734 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !4738, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 %1, metadata !4739, metadata !DIExpression()), !dbg !4747
  %3 = icmp slt i32 %1, 0, !dbg !4748
  br i1 %3, label %._crit_edge51, label %4, !dbg !4750

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !4751
  %6 = load i32, i32* %5, align 8, !dbg !4751, !tbaa !568
  %.not = icmp sgt i32 %6, %1, !dbg !4752
  br i1 %.not, label %7, label %._crit_edge51, !dbg !4753

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !4754
  %9 = load %struct.atom_t*, %struct.atom_t** %8, align 8, !dbg !4754, !tbaa !565
  %10 = sext i32 %1 to i64, !dbg !4755
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %9, i64 %10), metadata !4745, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4747
  call void @llvm.dbg.value(metadata i32 0, metadata !4742, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 0, metadata !4742, metadata !DIExpression()), !dbg !4747
  %11 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %10, i32 3, !dbg !4756
  %12 = load i32, i32* %11, align 4, !dbg !4756, !tbaa !2684
  %13 = icmp sgt i32 %12, 0, !dbg !4759
  br i1 %13, label %.lr.ph37, label %._crit_edge38, !dbg !4760

.lr.ph37:                                         ; preds = %7, %._crit_edge34
  %indvars.iv1535 = phi i64 [ %indvars.iv.next16, %._crit_edge34 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1535, metadata !4742, metadata !DIExpression()), !dbg !4747
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %10, i32 4, i64 %indvars.iv1535, !dbg !4761
  %15 = load i32, i32* %14, align 4, !dbg !4761, !tbaa !2242
  call void @llvm.dbg.value(metadata i32 %15, metadata !4741, metadata !DIExpression()), !dbg !4747
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !4763
  %17 = load %struct.atom_t*, %struct.atom_t** %16, align 8, !dbg !4763, !tbaa !565
  %18 = sext i32 %15 to i64, !dbg !4764
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %17, i64 %18), metadata !4746, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4747
  call void @llvm.dbg.value(metadata i32 0, metadata !4743, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 0, metadata !4743, metadata !DIExpression()), !dbg !4747
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %18, i32 3, !dbg !4765
  %20 = load i32, i32* %19, align 4, !dbg !4765, !tbaa !2684
  %21 = icmp sgt i32 %20, 0, !dbg !4768
  br i1 %21, label %.lr.ph, label %._crit_edge34, !dbg !4769

.lr.ph:                                           ; preds = %.lr.ph37, %43
  %indvars.iv27 = phi i64 [ %indvars.iv.next, %43 ], [ 0, %.lr.ph37 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !4743, metadata !DIExpression()), !dbg !4747
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %18, i32 4, i64 %indvars.iv27, !dbg !4770
  %23 = load i32, i32* %22, align 4, !dbg !4770, !tbaa !2242
  %24 = icmp eq i32 %23, %1, !dbg !4773
  br i1 %24, label %25, label %43, !dbg !4774

25:                                               ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !4744, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !4744, metadata !DIExpression()), !dbg !4747
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %18, i32 3, !dbg !4775
  %27 = load i32, i32* %26, align 4, !dbg !4775, !tbaa !2684
  %28 = add nsw i32 %27, -1, !dbg !4779
  %29 = sext i32 %28 to i64, !dbg !4780
  %30 = icmp slt i64 %indvars.iv27, %29, !dbg !4780
  br i1 %30, label %.lr.ph29, label %._crit_edge, !dbg !4781

.lr.ph29:                                         ; preds = %25, %.lr.ph29
  %indvars.iv928 = phi i64 [ %indvars.iv.next10, %.lr.ph29 ], [ %indvars.iv27, %25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv928, metadata !4744, metadata !DIExpression()), !dbg !4747
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv928, 1, !dbg !4782
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %18, i32 4, i64 %indvars.iv.next10, !dbg !4783
  %32 = load i32, i32* %31, align 4, !dbg !4783, !tbaa !2242
  %33 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %18, i32 4, i64 %indvars.iv928, !dbg !4785
  store i32 %32, i32* %33, align 4, !dbg !4786, !tbaa !2242
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !4744, metadata !DIExpression()), !dbg !4747
  %34 = load i32, i32* %26, align 4, !dbg !4775, !tbaa !2684
  %35 = add nsw i32 %34, -1, !dbg !4779
  %36 = sext i32 %35 to i64, !dbg !4780
  %37 = icmp slt i64 %indvars.iv.next10, %36, !dbg !4780
  br i1 %37, label %.lr.ph29, label %._crit_edge, !dbg !4781, !llvm.loop !4787

._crit_edge:                                      ; preds = %.lr.ph29, %25
  %38 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %18, i32 3, !dbg !4789
  %39 = load i32, i32* %38, align 4, !dbg !4790, !tbaa !2684
  %40 = add nsw i32 %39, -1, !dbg !4790
  store i32 %40, i32* %38, align 4, !dbg !4790, !tbaa !2684
  call void @llvm.dbg.value(metadata i32 %40, metadata !4744, metadata !DIExpression()), !dbg !4747
  %41 = sext i32 %40 to i64, !dbg !4791
  %smax = call i32 @llvm.smax.i32(i32 %40, i32 8), !dbg !4791
  %wide.trip.count = zext i32 %smax to i64, !dbg !4793
  call void @llvm.dbg.value(metadata i64 %41, metadata !4744, metadata !DIExpression()), !dbg !4747
  %exitcond30.not = icmp eq i64 %41, %wide.trip.count, !dbg !4793
  br i1 %exitcond30.not, label %._crit_edge34, label %.lr.ph33, !dbg !4795

.lr.ph33:                                         ; preds = %._crit_edge, %.lr.ph33
  %indvars.iv1231 = phi i64 [ %indvars.iv.next13, %.lr.ph33 ], [ %41, %._crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1231, metadata !4744, metadata !DIExpression()), !dbg !4747
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 %18, i32 4, i64 %indvars.iv1231, !dbg !4796
  store i32 -1, i32* %42, align 4, !dbg !4797, !tbaa !2242
  %indvars.iv.next13 = add nsw i64 %indvars.iv1231, 1, !dbg !4798
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next13, metadata !4744, metadata !DIExpression()), !dbg !4747
  %exitcond.not = icmp eq i64 %indvars.iv.next13, %wide.trip.count, !dbg !4793
  br i1 %exitcond.not, label %._crit_edge34, label %.lr.ph33, !dbg !4795, !llvm.loop !4799

43:                                               ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv27, 1, !dbg !4801
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4743, metadata !DIExpression()), !dbg !4747
  %44 = load i32, i32* %19, align 4, !dbg !4765, !tbaa !2684
  %45 = sext i32 %44 to i64, !dbg !4768
  %46 = icmp slt i64 %indvars.iv.next, %45, !dbg !4768
  br i1 %46, label %.lr.ph, label %._crit_edge34, !dbg !4769, !llvm.loop !4802

._crit_edge34:                                    ; preds = %.lr.ph33, %._crit_edge, %43, %.lr.ph37
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv1535, 1, !dbg !4804
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next16, metadata !4742, metadata !DIExpression()), !dbg !4747
  %47 = load i32, i32* %11, align 4, !dbg !4756, !tbaa !2684
  %48 = sext i32 %47 to i64, !dbg !4759
  %49 = icmp slt i64 %indvars.iv.next16, %48, !dbg !4759
  br i1 %49, label %.lr.ph37, label %._crit_edge38, !dbg !4760, !llvm.loop !4805

._crit_edge38:                                    ; preds = %._crit_edge34, %7
  call void @llvm.dbg.value(metadata i32 %1, metadata !4740, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 %10, metadata !4740, metadata !DIExpression()), !dbg !4747
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !4807
  %51 = load i32, i32* %50, align 8, !dbg !4807, !tbaa !568
  %52 = add nsw i32 %51, -1, !dbg !4810
  %53 = icmp sgt i32 %52, %1, !dbg !4811
  br i1 %53, label %.lr.ph41, label %._crit_edge42, !dbg !4812

.lr.ph41:                                         ; preds = %._crit_edge38, %.lr.ph41
  %indvars.iv1839 = phi i64 [ %indvars.iv.next19, %.lr.ph41 ], [ %10, %._crit_edge38 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1839, metadata !4740, metadata !DIExpression()), !dbg !4747
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !4813
  %55 = load %struct.atom_t*, %struct.atom_t** %54, align 8, !dbg !4813, !tbaa !565
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %55, i64 %indvars.iv1839, !dbg !4814
  %indvars.iv.next19 = add nsw i64 %indvars.iv1839, 1, !dbg !4815
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %55, i64 %indvars.iv.next19, !dbg !4816
  %58 = bitcast %struct.atom_t* %56 to i8*, !dbg !4816
  %59 = bitcast %struct.atom_t* %57 to i8*, !dbg !4816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(176) %58, i8* noundef nonnull align 8 dereferenceable(176) %59, i64 176, i1 false), !dbg !4816, !tbaa.struct !4817
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next19, metadata !4740, metadata !DIExpression()), !dbg !4747
  %60 = load i32, i32* %50, align 8, !dbg !4807, !tbaa !568
  %61 = add nsw i32 %60, -1, !dbg !4810
  %62 = sext i32 %61 to i64, !dbg !4811
  %63 = icmp slt i64 %indvars.iv.next19, %62, !dbg !4811
  br i1 %63, label %.lr.ph41, label %._crit_edge42, !dbg !4812, !llvm.loop !4818

._crit_edge42:                                    ; preds = %.lr.ph41, %._crit_edge38
  %64 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !4820
  %65 = load i32, i32* %64, align 8, !dbg !4821, !tbaa !568
  %66 = add nsw i32 %65, -1, !dbg !4821
  store i32 %66, i32* %64, align 8, !dbg !4821, !tbaa !568
  call void @llvm.dbg.value(metadata i32 0, metadata !4740, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 0, metadata !4740, metadata !DIExpression()), !dbg !4747
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !4822
  %68 = icmp sgt i32 %65, 2, !dbg !4825
  br i1 %68, label %.lr.ph50, label %._crit_edge51, !dbg !4826

.lr.ph50:                                         ; preds = %._crit_edge42, %._crit_edge47
  %indvars.iv2448 = phi i64 [ %indvars.iv.next25, %._crit_edge47 ], [ 0, %._crit_edge42 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2448, metadata !4740, metadata !DIExpression()), !dbg !4747
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !4827
  %70 = load %struct.atom_t*, %struct.atom_t** %69, align 8, !dbg !4827, !tbaa !565
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %70, i64 %indvars.iv2448), metadata !4745, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4747
  call void @llvm.dbg.value(metadata i32 0, metadata !4742, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i64 0, metadata !4742, metadata !DIExpression()), !dbg !4747
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %70, i64 %indvars.iv2448, i32 3, !dbg !4829
  %72 = load i32, i32* %71, align 4, !dbg !4829, !tbaa !2684
  %73 = icmp sgt i32 %72, 0, !dbg !4832
  br i1 %73, label %.lr.ph46, label %._crit_edge47, !dbg !4833

.lr.ph46:                                         ; preds = %.lr.ph50, %81
  %indvars.iv2143 = phi i64 [ %indvars.iv.next22, %81 ], [ 0, %.lr.ph50 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2143, metadata !4742, metadata !DIExpression()), !dbg !4747
  %74 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %70, i64 %indvars.iv2448, i32 4, i64 %indvars.iv2143, !dbg !4834
  %75 = load i32, i32* %74, align 4, !dbg !4834, !tbaa !2242
  %76 = icmp sgt i32 %75, %1, !dbg !4837
  br i1 %76, label %77, label %81, !dbg !4838

77:                                               ; preds = %.lr.ph46
  %78 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %70, i64 %indvars.iv2448, i32 4, i64 %indvars.iv2143, !dbg !4839
  %79 = load i32, i32* %78, align 4, !dbg !4840, !tbaa !2242
  %80 = add nsw i32 %79, -1, !dbg !4840
  store i32 %80, i32* %78, align 4, !dbg !4840, !tbaa !2242
  br label %81, !dbg !4839

81:                                               ; preds = %77, %.lr.ph46
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv2143, 1, !dbg !4841
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next22, metadata !4742, metadata !DIExpression()), !dbg !4747
  %82 = load i32, i32* %71, align 4, !dbg !4829, !tbaa !2684
  %83 = sext i32 %82 to i64, !dbg !4832
  %84 = icmp slt i64 %indvars.iv.next22, %83, !dbg !4832
  br i1 %84, label %.lr.ph46, label %._crit_edge47, !dbg !4833, !llvm.loop !4842

._crit_edge47:                                    ; preds = %.lr.ph50, %81
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2448, 1, !dbg !4844
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next25, metadata !4740, metadata !DIExpression()), !dbg !4747
  %85 = load i32, i32* %67, align 8, !dbg !4822, !tbaa !568
  %86 = add nsw i32 %85, -1, !dbg !4845
  %87 = sext i32 %86 to i64, !dbg !4825
  %88 = icmp slt i64 %indvars.iv.next25, %87, !dbg !4825
  br i1 %88, label %.lr.ph50, label %._crit_edge51, !dbg !4826, !llvm.loop !4846

._crit_edge51:                                    ; preds = %._crit_edge42, %._crit_edge47, %2, %4
  %.0 = phi i32 [ 1, %4 ], [ 1, %2 ], [ 0, %._crit_edge47 ], [ 0, %._crit_edge42 ], !dbg !4747
  ret i32 %.0, !dbg !4848
}

; Function Attrs: nounwind uwtable
define internal i32 @add_atom(%struct.residue_t* %0, i8* %1) #0 !dbg !4849 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !4851, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i8* %1, metadata !4852, metadata !DIExpression()), !dbg !4862
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !4863
  %4 = load i32, i32* %3, align 8, !dbg !4863, !tbaa !568
  %5 = add i32 %4, 1, !dbg !4864
  call void @llvm.dbg.value(metadata i32 %5, metadata !4853, metadata !DIExpression()), !dbg !4862
  %6 = sext i32 %5 to i64, !dbg !4865
  %7 = mul nsw i64 %6, 176, !dbg !4867
  %8 = call noalias i8* @malloc(i64 %7) #11, !dbg !4868
  %9 = bitcast i8* %8 to %struct.atom_t*, !dbg !4869
  call void @llvm.dbg.value(metadata %struct.atom_t* %9, metadata !4857, metadata !DIExpression()), !dbg !4862
  %10 = icmp eq i8* %8, null, !dbg !4870
  br i1 %10, label %11, label %14, !dbg !4871

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4872, !tbaa !652
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.67, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %12) #14, !dbg !4874
  br label %80, !dbg !4875

14:                                               ; preds = %2
  %15 = sext i32 %5 to i64, !dbg !4876
  %16 = shl nsw i64 %15, 2, !dbg !4878
  %17 = call noalias i8* @malloc(i64 %16) #11, !dbg !4879
  %18 = bitcast i8* %17 to i32*, !dbg !4880
  call void @llvm.dbg.value(metadata i32* %18, metadata !4859, metadata !DIExpression()), !dbg !4862
  %19 = icmp eq i8* %17, null, !dbg !4881
  br i1 %19, label %20, label %23, !dbg !4882

20:                                               ; preds = %14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4883, !tbaa !652
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %21) #14, !dbg !4885
  br label %80, !dbg !4886

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !4887
  %25 = load %struct.atom_t*, %struct.atom_t** %24, align 8, !dbg !4887, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.atom_t* %25, metadata !4858, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i32 0, metadata !4854, metadata !DIExpression()), !dbg !4862
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0), !dbg !4888
  %wide.trip.count = zext i32 %smax to i64, !dbg !4890
  call void @llvm.dbg.value(metadata i64 0, metadata !4854, metadata !DIExpression()), !dbg !4862
  %exitcond19.not = icmp slt i32 %4, 1, !dbg !4890
  br i1 %exitcond19.not, label %._crit_edge, label %.lr.ph, !dbg !4892

.lr.ph:                                           ; preds = %23, %.lr.ph
  %indvars.iv20 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %23 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv20, metadata !4854, metadata !DIExpression()), !dbg !4862
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %indvars.iv20, !dbg !4893
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %indvars.iv20, !dbg !4894
  %28 = bitcast %struct.atom_t* %26 to i8*, !dbg !4894
  %29 = bitcast %struct.atom_t* %27 to i8*, !dbg !4894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(176) %28, i8* noundef nonnull align 8 dereferenceable(176) %29, i64 176, i1 false), !dbg !4894, !tbaa.struct !4817
  %indvars.iv.next = add nuw nsw i64 %indvars.iv20, 1, !dbg !4895
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4854, metadata !DIExpression()), !dbg !4862
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !4890
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !4892, !llvm.loop !4896

._crit_edge:                                      ; preds = %.lr.ph, %23
  %30 = sext i32 %4 to i64, !dbg !4898
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, !dbg !4898
  call void @llvm.dbg.value(metadata %struct.atom_t* %31, metadata !4856, metadata !DIExpression()), !dbg !4862
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %31, i64 0, i32 0, !dbg !4899
  %33 = load i8*, i8** %32, align 8, !dbg !4899, !tbaa !574
  %34 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %33) #12, !dbg !4900
  %35 = add i64 %34, 1, !dbg !4901
  %36 = call noalias i8* @malloc(i64 %35) #11, !dbg !4902
  call void @llvm.dbg.value(metadata i8* %36, metadata !4861, metadata !DIExpression()), !dbg !4862
  %37 = icmp eq i8* %36, null, !dbg !4903
  br i1 %37, label %38, label %41, !dbg !4905

38:                                               ; preds = %._crit_edge
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4906, !tbaa !652
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %39) #14, !dbg !4908
  call void @exit(i32 1) #16, !dbg !4909
  unreachable, !dbg !4909

41:                                               ; preds = %._crit_edge
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %31, i64 0, i32 0, !dbg !4910
  store i8* %36, i8** %42, align 8, !dbg !4911, !tbaa !574
  %43 = call i8* @strcpy(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(1) %1) #11, !dbg !4912
  %44 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 2, !dbg !4913
  store i32 0, i32* %44, align 8, !dbg !4914, !tbaa !1592
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 3, !dbg !4915
  store i32 0, i32* %45, align 4, !dbg !4916, !tbaa !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !4855, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i64 0, metadata !4855, metadata !DIExpression()), !dbg !4862
  br label %46, !dbg !4917

46:                                               ; preds = %41, %46
  %indvars.iv421 = phi i64 [ 0, %41 ], [ %indvars.iv.next5, %46 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv421, metadata !4855, metadata !DIExpression()), !dbg !4862
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 4, i64 %indvars.iv421, !dbg !4919
  store i32 -1, i32* %47, align 4, !dbg !4921, !tbaa !2242
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv421, 1, !dbg !4922
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !4855, metadata !DIExpression()), !dbg !4862
  %exitcond7.not = icmp eq i64 %indvars.iv.next5, 8, !dbg !4923
  br i1 %exitcond7.not, label %48, label %46, !dbg !4917, !llvm.loop !4924

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 0, i32 5, !dbg !4926
  %50 = load %struct.residue_t*, %struct.residue_t** %49, align 8, !dbg !4926, !tbaa !2696
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 5, !dbg !4927
  store %struct.residue_t* %50, %struct.residue_t** %51, align 8, !dbg !4928, !tbaa !2696
  %52 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 6, !dbg !4929
  store double 0.000000e+00, double* %52, align 8, !dbg !4930, !tbaa !2699
  %53 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 7, !dbg !4931
  store double 1.000000e+00, double* %53, align 8, !dbg !4932, !tbaa !2702
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 17, i64 0, !dbg !4933
  store double 0.000000e+00, double* %54, align 8, !dbg !4934, !tbaa !455
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 17, i64 1, !dbg !4935
  store double 0.000000e+00, double* %55, align 8, !dbg !4936, !tbaa !455
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 17, i64 2, !dbg !4937
  store double 0.000000e+00, double* %56, align 8, !dbg !4938, !tbaa !455
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i64 %30, i32 18, !dbg !4939
  store double 0.000000e+00, double* %57, align 8, !dbg !4940, !tbaa !2427
  %58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !4941
  %59 = load i32*, i32** %58, align 8, !dbg !4941, !tbaa !558
  call void @llvm.dbg.value(metadata i32* %59, metadata !4860, metadata !DIExpression()), !dbg !4862
  %.not = icmp eq i32* %59, null, !dbg !4943
  br i1 %.not, label %66, label %60, !dbg !4944

60:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 0, metadata !4854, metadata !DIExpression()), !dbg !4862
  %wide.trip.count17 = zext i32 %smax to i64, !dbg !4945
  call void @llvm.dbg.value(metadata i64 0, metadata !4854, metadata !DIExpression()), !dbg !4862
  %exitcond1827.not = icmp slt i32 %4, 1, !dbg !4945
  br i1 %exitcond1827.not, label %._crit_edge31, label %.lr.ph30, !dbg !4949

.lr.ph30:                                         ; preds = %60, %.lr.ph30
  %indvars.iv1428 = phi i64 [ %indvars.iv.next15, %.lr.ph30 ], [ 0, %60 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1428, metadata !4854, metadata !DIExpression()), !dbg !4862
  %61 = getelementptr inbounds i32, i32* %59, i64 %indvars.iv1428, !dbg !4950
  %62 = load i32, i32* %61, align 4, !dbg !4950, !tbaa !2242
  %63 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv1428, !dbg !4951
  store i32 %62, i32* %63, align 4, !dbg !4952, !tbaa !2242
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv1428, 1, !dbg !4953
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next15, metadata !4854, metadata !DIExpression()), !dbg !4862
  %exitcond18.not = icmp eq i64 %indvars.iv.next15, %wide.trip.count17, !dbg !4945
  br i1 %exitcond18.not, label %._crit_edge31, label %.lr.ph30, !dbg !4949, !llvm.loop !4954

._crit_edge31:                                    ; preds = %.lr.ph30, %60
  %64 = sext i32 %4 to i64, !dbg !4956
  %65 = getelementptr inbounds i32, i32* %18, i64 %64, !dbg !4956
  store i32 %4, i32* %65, align 4, !dbg !4957, !tbaa !2242
  br label %._crit_edge26, !dbg !4958

66:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i32 0, metadata !4854, metadata !DIExpression()), !dbg !4862
  %smax11 = call i32 @llvm.smax.i32(i32 %5, i32 0), !dbg !4959
  %wide.trip.count12 = zext i32 %smax11 to i64, !dbg !4962
  call void @llvm.dbg.value(metadata i64 0, metadata !4854, metadata !DIExpression()), !dbg !4862
  %exitcond1322.not = icmp ugt i32 %4, 2147483646, !dbg !4962
  br i1 %exitcond1322.not, label %._crit_edge26, label %.lr.ph25, !dbg !4964

.lr.ph25:                                         ; preds = %66, %.lr.ph25
  %indvars.iv823 = phi i64 [ %indvars.iv.next9, %.lr.ph25 ], [ 0, %66 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv823, metadata !4854, metadata !DIExpression()), !dbg !4862
  %67 = getelementptr inbounds i32, i32* %18, i64 %indvars.iv823, !dbg !4965
  %68 = trunc i64 %indvars.iv823 to i32, !dbg !4966
  store i32 %68, i32* %67, align 4, !dbg !4966, !tbaa !2242
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv823, 1, !dbg !4967
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !4854, metadata !DIExpression()), !dbg !4862
  %exitcond13.not = icmp eq i64 %indvars.iv.next9, %wide.trip.count12, !dbg !4962
  br i1 %exitcond13.not, label %._crit_edge26, label %.lr.ph25, !dbg !4964, !llvm.loop !4968

._crit_edge26:                                    ; preds = %66, %.lr.ph25, %._crit_edge31
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 16, !dbg !4970
  %70 = bitcast i32** %69 to i8**, !dbg !4971
  store i8* %17, i8** %70, align 8, !dbg !4971, !tbaa !558
  %71 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !4972
  %72 = load i32, i32* %71, align 8, !dbg !4973, !tbaa !568
  %73 = add nsw i32 %72, 1, !dbg !4973
  store i32 %73, i32* %71, align 8, !dbg !4973, !tbaa !568
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !4974
  %75 = bitcast %struct.atom_t** %74 to i8**, !dbg !4975
  store i8* %8, i8** %75, align 8, !dbg !4975, !tbaa !565
  %.not32 = icmp eq i32* %59, null, !dbg !4976
  br i1 %.not32, label %78, label %76, !dbg !4978

76:                                               ; preds = %._crit_edge26
  %77 = bitcast i32* %59 to i8*, !dbg !4979
  call void @free(i8* %77) #11, !dbg !4980
  br label %78, !dbg !4980

78:                                               ; preds = %76, %._crit_edge26
  %79 = bitcast %struct.atom_t* %25 to i8*, !dbg !4981
  call void @free(i8* %79) #11, !dbg !4982
  br label %80, !dbg !4983

80:                                               ; preds = %78, %20, %11
  %.0 = phi i32 [ 1, %11 ], [ 1, %20 ], [ 0, %78 ], !dbg !4862
  ret i32 %.0, !dbg !4984
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #8

declare !dbg !279 dso_local i32 @fflush(%struct._IO_FILE*) #4

declare !dbg !337 dso_local void @perror(i8*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind readnone }
attributes #16 = { noreturn nounwind }

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
!453 = !DILocation(line: 130, column: 2, scope: !439)
!454 = !DILocation(line: 130, column: 24, scope: !439)
!455 = !{!456, !456, i64 0}
!456 = !{!"double", !457, i64 0}
!457 = !{!"omnipotent char", !458, i64 0}
!458 = !{!"Simple C/C++ TBAA"}
!459 = !DILocation(line: 131, column: 2, scope: !439)
!460 = !DILocation(line: 131, column: 24, scope: !439)
!461 = !DILocation(line: 132, column: 2, scope: !439)
!462 = !DILocation(line: 132, column: 24, scope: !439)
!463 = !DILocation(line: 134, column: 2, scope: !439)
!464 = !DILocation(line: 134, column: 24, scope: !439)
!465 = !DILocation(line: 135, column: 2, scope: !439)
!466 = !DILocation(line: 135, column: 24, scope: !439)
!467 = !DILocation(line: 136, column: 2, scope: !439)
!468 = !DILocation(line: 136, column: 24, scope: !439)
!469 = !DILocation(line: 138, column: 2, scope: !439)
!470 = !DILocation(line: 138, column: 24, scope: !439)
!471 = !DILocation(line: 139, column: 2, scope: !439)
!472 = !DILocation(line: 139, column: 24, scope: !439)
!473 = !DILocation(line: 140, column: 2, scope: !439)
!474 = !DILocation(line: 140, column: 24, scope: !439)
!475 = !DILocation(line: 142, column: 2, scope: !439)
!476 = !DILocation(line: 142, column: 24, scope: !439)
!477 = !DILocation(line: 143, column: 2, scope: !439)
!478 = !DILocation(line: 143, column: 24, scope: !439)
!479 = !DILocation(line: 144, column: 2, scope: !439)
!480 = !DILocation(line: 144, column: 24, scope: !439)
!481 = !DILocation(line: 146, column: 6, scope: !439)
!482 = !DILocation(line: 146, column: 17, scope: !439)
!483 = !{!484, !485, i64 96}
!484 = !{!"molecule_t", !457, i64 0, !485, i64 96, !486, i64 104, !485, i64 112, !485, i64 116, !485, i64 120, !486, i64 128}
!485 = !{!"int", !457, i64 0}
!486 = !{!"any pointer", !457, i64 0}
!487 = !DILocation(line: 147, column: 6, scope: !439)
!488 = !DILocation(line: 147, column: 16, scope: !439)
!489 = !{!484, !486, i64 104}
!490 = !DILocation(line: 150, column: 6, scope: !439)
!491 = !DILocation(line: 150, column: 18, scope: !439)
!492 = !{!484, !485, i64 112}
!493 = !DILocation(line: 152, column: 6, scope: !439)
!494 = !DILocation(line: 152, column: 15, scope: !439)
!495 = !{!484, !485, i64 120}
!496 = !DILocation(line: 154, column: 6, scope: !439)
!497 = !DILocation(line: 154, column: 12, scope: !439)
!498 = !{!484, !486, i64 128}
!499 = !DILocation(line: 156, column: 2, scope: !439)
!500 = !DILocation(line: 157, column: 1, scope: !439)
!501 = distinct !DISubprogram(name: "freeresidue", scope: !3, file: !3, line: 159, type: !502, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!36, !56}
!504 = !{!505, !506, !507, !508, !509}
!505 = !DILocalVariable(name: "res", arg: 1, scope: !501, file: !3, line: 159, type: !56)
!506 = !DILocalVariable(name: "a", scope: !501, file: !3, line: 161, type: !36)
!507 = !DILocalVariable(name: "ap", scope: !501, file: !3, line: 162, type: !102)
!508 = !DILocalVariable(name: "ep", scope: !501, file: !3, line: 163, type: !72)
!509 = !DILocalVariable(name: "epn", scope: !501, file: !3, line: 163, type: !72)
!510 = !DILocation(line: 0, scope: !501)
!511 = !DILocation(line: 165, column: 8, scope: !512)
!512 = distinct !DILexicalBlock(scope: !501, file: !3, line: 165, column: 7)
!513 = !DILocation(line: 165, column: 7, scope: !501)
!514 = !DILocation(line: 168, column: 11, scope: !515)
!515 = distinct !DILexicalBlock(scope: !501, file: !3, line: 168, column: 6)
!516 = !{!517, !486, i64 24}
!517 = !{!"residue_t", !486, i64 0, !485, i64 8, !485, i64 12, !485, i64 16, !486, i64 24, !486, i64 32, !485, i64 40, !485, i64 44, !485, i64 48, !486, i64 56, !486, i64 64, !485, i64 72, !486, i64 80, !485, i64 88, !486, i64 96, !485, i64 104, !486, i64 112, !486, i64 120}
!518 = !DILocation(line: 168, column: 6, scope: !515)
!519 = !DILocation(line: 168, column: 6, scope: !501)
!520 = !DILocation(line: 169, column: 25, scope: !515)
!521 = !DILocation(line: 169, column: 3, scope: !515)
!522 = !DILocation(line: 170, column: 11, scope: !523)
!523 = distinct !DILexicalBlock(scope: !501, file: !3, line: 170, column: 6)
!524 = !{!517, !486, i64 32}
!525 = !DILocation(line: 170, column: 6, scope: !523)
!526 = !DILocation(line: 170, column: 6, scope: !501)
!527 = !DILocation(line: 171, column: 25, scope: !523)
!528 = !DILocation(line: 171, column: 3, scope: !523)
!529 = !DILocation(line: 172, column: 17, scope: !530)
!530 = distinct !DILexicalBlock(scope: !501, file: !3, line: 172, column: 2)
!531 = !{!517, !486, i64 64}
!532 = !DILocation(line: 172, column: 2, scope: !530)
!533 = !DILocation(line: 173, column: 13, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 172, column: 43)
!535 = distinct !DILexicalBlock(scope: !530, file: !3, line: 172, column: 2)
!536 = !{!537, !486, i64 0}
!537 = !{!"extbond_t", !486, i64 0, !485, i64 8, !485, i64 12, !485, i64 16}
!538 = !DILocation(line: 174, column: 9, scope: !534)
!539 = !DILocation(line: 174, column: 3, scope: !534)
!540 = distinct !{!540, !532, !541}
!541 = !DILocation(line: 175, column: 2, scope: !530)
!542 = !DILocation(line: 176, column: 11, scope: !543)
!543 = distinct !DILexicalBlock(scope: !501, file: !3, line: 176, column: 6)
!544 = !{!517, !486, i64 80}
!545 = !DILocation(line: 176, column: 6, scope: !543)
!546 = !DILocation(line: 176, column: 6, scope: !501)
!547 = !DILocation(line: 177, column: 25, scope: !543)
!548 = !DILocation(line: 177, column: 3, scope: !543)
!549 = !DILocation(line: 178, column: 11, scope: !550)
!550 = distinct !DILexicalBlock(scope: !501, file: !3, line: 178, column: 6)
!551 = !{!517, !486, i64 96}
!552 = !DILocation(line: 178, column: 6, scope: !550)
!553 = !DILocation(line: 178, column: 6, scope: !501)
!554 = !DILocation(line: 179, column: 25, scope: !550)
!555 = !DILocation(line: 179, column: 3, scope: !550)
!556 = !DILocation(line: 180, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !501, file: !3, line: 180, column: 6)
!558 = !{!517, !486, i64 112}
!559 = !DILocation(line: 180, column: 6, scope: !557)
!560 = !DILocation(line: 180, column: 6, scope: !501)
!561 = !DILocation(line: 181, column: 25, scope: !557)
!562 = !DILocation(line: 181, column: 3, scope: !557)
!563 = !DILocation(line: 182, column: 15, scope: !564)
!564 = distinct !DILexicalBlock(scope: !501, file: !3, line: 182, column: 2)
!565 = !{!517, !486, i64 120}
!566 = !DILocation(line: 182, column: 36, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !3, line: 182, column: 2)
!568 = !{!517, !485, i64 104}
!569 = !DILocation(line: 182, column: 30, scope: !567)
!570 = !DILocation(line: 182, column: 2, scope: !564)
!571 = !DILocation(line: 183, column: 11, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !3, line: 183, column: 7)
!573 = distinct !DILexicalBlock(scope: !567, file: !3, line: 182, column: 57)
!574 = !{!575, !486, i64 0}
!575 = !{!"atom_t", !486, i64 0, !486, i64 8, !485, i64 16, !485, i64 20, !457, i64 24, !486, i64 56, !456, i64 64, !456, i64 72, !456, i64 80, !456, i64 88, !486, i64 96, !485, i64 104, !456, i64 112, !456, i64 120, !485, i64 128, !485, i64 132, !486, i64 136, !457, i64 144, !456, i64 168}
!576 = !DILocation(line: 183, column: 7, scope: !572)
!577 = !DILocation(line: 183, column: 7, scope: !573)
!578 = !DILocation(line: 184, column: 24, scope: !572)
!579 = !DILocation(line: 184, column: 4, scope: !572)
!580 = !DILocation(line: 185, column: 11, scope: !581)
!581 = distinct !DILexicalBlock(scope: !573, file: !3, line: 185, column: 7)
!582 = !{!575, !486, i64 8}
!583 = !DILocation(line: 185, column: 7, scope: !581)
!584 = !DILocation(line: 185, column: 7, scope: !573)
!585 = !DILocation(line: 186, column: 24, scope: !581)
!586 = !DILocation(line: 186, column: 4, scope: !581)
!587 = !DILocation(line: 187, column: 11, scope: !588)
!588 = distinct !DILexicalBlock(scope: !573, file: !3, line: 187, column: 7)
!589 = !{!575, !486, i64 96}
!590 = !DILocation(line: 187, column: 7, scope: !588)
!591 = !DILocation(line: 187, column: 7, scope: !573)
!592 = !DILocation(line: 188, column: 24, scope: !588)
!593 = !DILocation(line: 188, column: 4, scope: !588)
!594 = !DILocation(line: 189, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !573, file: !3, line: 189, column: 7)
!596 = !{!575, !486, i64 136}
!597 = !DILocation(line: 189, column: 7, scope: !595)
!598 = !DILocation(line: 189, column: 7, scope: !573)
!599 = !DILocation(line: 190, column: 25, scope: !595)
!600 = !DILocation(line: 190, column: 4, scope: !595)
!601 = !DILocation(line: 182, column: 47, scope: !567)
!602 = !DILocation(line: 182, column: 53, scope: !567)
!603 = distinct !{!603, !570, !604}
!604 = !DILocation(line: 191, column: 2, scope: !564)
!605 = !DILocation(line: 192, column: 11, scope: !606)
!606 = distinct !DILexicalBlock(scope: !501, file: !3, line: 192, column: 6)
!607 = !DILocation(line: 192, column: 6, scope: !606)
!608 = !DILocation(line: 192, column: 6, scope: !501)
!609 = !DILocation(line: 193, column: 25, scope: !606)
!610 = !DILocation(line: 193, column: 3, scope: !606)
!611 = !DILocation(line: 195, column: 8, scope: !501)
!612 = !DILocation(line: 195, column: 2, scope: !501)
!613 = !DILocation(line: 197, column: 2, scope: !501)
!614 = !DILocation(line: 198, column: 1, scope: !501)
!615 = distinct !DISubprogram(name: "freemolecule", scope: !3, file: !3, line: 200, type: !616, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!36, !22}
!618 = !{!619, !620, !621, !622, !623}
!619 = !DILocalVariable(name: "mol", arg: 1, scope: !615, file: !3, line: 200, type: !22)
!620 = !DILocalVariable(name: "sp", scope: !615, file: !3, line: 202, type: !38)
!621 = !DILocalVariable(name: "spn", scope: !615, file: !3, line: 202, type: !38)
!622 = !DILocalVariable(name: "pp", scope: !615, file: !3, line: 203, type: !135)
!623 = !DILocalVariable(name: "r", scope: !615, file: !3, line: 204, type: !36)
!624 = !DILocation(line: 0, scope: !615)
!625 = !DILocation(line: 206, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !615, file: !3, line: 206, column: 6)
!627 = !DILocation(line: 206, column: 6, scope: !615)
!628 = !DILocation(line: 209, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !615, file: !3, line: 209, column: 2)
!630 = !DILocation(line: 209, column: 2, scope: !629)
!631 = !DILocation(line: 210, column: 13, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 209, column: 42)
!633 = distinct !DILexicalBlock(scope: !629, file: !3, line: 209, column: 2)
!634 = !{!635, !486, i64 24}
!635 = !{!"strand_t", !486, i64 0, !485, i64 8, !485, i64 12, !486, i64 16, !486, i64 24, !485, i64 32, !485, i64 36, !486, i64 40}
!636 = !DILocation(line: 211, column: 11, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !3, line: 211, column: 7)
!638 = !{!635, !486, i64 0}
!639 = !DILocation(line: 211, column: 7, scope: !637)
!640 = !DILocation(line: 211, column: 7, scope: !632)
!641 = !DILocation(line: 212, column: 25, scope: !637)
!642 = !DILocation(line: 212, column: 4, scope: !637)
!643 = !DILocation(line: 213, column: 23, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 213, column: 3)
!645 = distinct !DILexicalBlock(scope: !632, file: !3, line: 213, column: 3)
!646 = !{!635, !485, i64 32}
!647 = !DILocation(line: 213, column: 17, scope: !644)
!648 = !DILocation(line: 213, column: 3, scope: !645)
!649 = !DILocation(line: 214, column: 21, scope: !644)
!650 = !{!635, !486, i64 40}
!651 = !DILocation(line: 214, column: 17, scope: !644)
!652 = !{!486, !486, i64 0}
!653 = !DILocation(line: 214, column: 4, scope: !644)
!654 = !DILocation(line: 213, column: 37, scope: !644)
!655 = distinct !{!655, !648, !656}
!656 = !DILocation(line: 214, column: 37, scope: !645)
!657 = !DILocation(line: 215, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !632, file: !3, line: 215, column: 7)
!659 = !DILocation(line: 215, column: 7, scope: !658)
!660 = !DILocation(line: 215, column: 7, scope: !632)
!661 = !DILocation(line: 216, column: 25, scope: !658)
!662 = !DILocation(line: 216, column: 4, scope: !658)
!663 = distinct !{!663, !630, !664}
!664 = !DILocation(line: 217, column: 2, scope: !629)
!665 = !DILocation(line: 218, column: 11, scope: !666)
!666 = distinct !DILexicalBlock(scope: !615, file: !3, line: 218, column: 6)
!667 = !DILocation(line: 218, column: 6, scope: !666)
!668 = !DILocation(line: 218, column: 6, scope: !615)
!669 = !DILocation(line: 219, column: 13, scope: !670)
!670 = distinct !DILexicalBlock(scope: !666, file: !3, line: 218, column: 18)
!671 = !DILocation(line: 220, column: 11, scope: !672)
!672 = distinct !DILexicalBlock(scope: !670, file: !3, line: 220, column: 7)
!673 = !{!674, !486, i64 216}
!674 = !{!"parm", !457, i64 0, !485, i64 84, !485, i64 88, !485, i64 92, !485, i64 96, !485, i64 100, !485, i64 104, !485, i64 108, !485, i64 112, !485, i64 116, !485, i64 120, !485, i64 124, !485, i64 128, !485, i64 132, !485, i64 136, !485, i64 140, !485, i64 144, !485, i64 148, !485, i64 152, !485, i64 156, !485, i64 160, !485, i64 164, !485, i64 168, !485, i64 172, !485, i64 176, !485, i64 180, !485, i64 184, !485, i64 188, !485, i64 192, !485, i64 196, !485, i64 200, !485, i64 204, !485, i64 208, !486, i64 216, !486, i64 224, !486, i64 232, !486, i64 240, !486, i64 248, !486, i64 256, !486, i64 264, !486, i64 272, !486, i64 280, !486, i64 288, !486, i64 296, !486, i64 304, !486, i64 312, !486, i64 320, !486, i64 328, !486, i64 336, !486, i64 344, !486, i64 352, !486, i64 360, !486, i64 368, !457, i64 376, !456, i64 400, !456, i64 408, !456, i64 416, !456, i64 424, !456, i64 432, !486, i64 440, !486, i64 448, !486, i64 456, !486, i64 464, !486, i64 472, !486, i64 480, !486, i64 488, !486, i64 496, !486, i64 504, !486, i64 512, !486, i64 520, !486, i64 528, !486, i64 536, !486, i64 544, !486, i64 552, !486, i64 560, !486, i64 568, !486, i64 576, !486, i64 584, !486, i64 592, !486, i64 600, !486, i64 608, !486, i64 616, !486, i64 624, !486, i64 632, !486, i64 640, !486, i64 648, !486, i64 656, !486, i64 664, !486, i64 672, !486, i64 680, !486, i64 688, !486, i64 696, !486, i64 704, !486, i64 712}
!675 = !DILocation(line: 220, column: 7, scope: !672)
!676 = !DILocation(line: 220, column: 7, scope: !670)
!677 = !DILocation(line: 221, column: 25, scope: !672)
!678 = !DILocation(line: 221, column: 4, scope: !672)
!679 = !DILocation(line: 222, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !670, file: !3, line: 222, column: 7)
!681 = !{!674, !486, i64 224}
!682 = !DILocation(line: 222, column: 7, scope: !680)
!683 = !DILocation(line: 222, column: 7, scope: !670)
!684 = !DILocation(line: 223, column: 25, scope: !680)
!685 = !DILocation(line: 223, column: 4, scope: !680)
!686 = !DILocation(line: 224, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !670, file: !3, line: 224, column: 7)
!688 = !{!674, !486, i64 232}
!689 = !DILocation(line: 224, column: 7, scope: !687)
!690 = !DILocation(line: 224, column: 7, scope: !670)
!691 = !DILocation(line: 225, column: 25, scope: !687)
!692 = !DILocation(line: 225, column: 4, scope: !687)
!693 = !DILocation(line: 226, column: 11, scope: !694)
!694 = distinct !DILexicalBlock(scope: !670, file: !3, line: 226, column: 7)
!695 = !{!674, !486, i64 240}
!696 = !DILocation(line: 226, column: 7, scope: !694)
!697 = !DILocation(line: 226, column: 7, scope: !670)
!698 = !DILocation(line: 227, column: 25, scope: !694)
!699 = !DILocation(line: 227, column: 4, scope: !694)
!700 = !DILocation(line: 228, column: 25, scope: !670)
!701 = !DILocation(line: 228, column: 3, scope: !670)
!702 = !DILocation(line: 229, column: 2, scope: !670)
!703 = !DILocation(line: 231, column: 8, scope: !615)
!704 = !DILocation(line: 231, column: 2, scope: !615)
!705 = !DILocation(line: 232, column: 2, scope: !615)
!706 = !DILocation(line: 233, column: 1, scope: !615)
!707 = distinct !DISubprogram(name: "addstrand", scope: !3, file: !3, line: 235, type: !708, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!36, !22, !241}
!710 = !{!711, !712, !713, !714, !715, !716}
!711 = !DILocalVariable(name: "mp", arg: 1, scope: !707, file: !3, line: 235, type: !22)
!712 = !DILocalVariable(name: "sname", arg: 2, scope: !707, file: !3, line: 235, type: !241)
!713 = !DILocalVariable(name: "sp", scope: !707, file: !3, line: 237, type: !38)
!714 = !DILocalVariable(name: "spl", scope: !707, file: !3, line: 237, type: !38)
!715 = !DILocalVariable(name: "nsize", scope: !707, file: !3, line: 238, type: !36)
!716 = !DILocalVariable(name: "np", scope: !707, file: !3, line: 239, type: !241)
!717 = !DILocation(line: 0, scope: !707)
!718 = !DILocation(line: 241, column: 16, scope: !719)
!719 = distinct !DILexicalBlock(scope: !707, file: !3, line: 241, column: 2)
!720 = !DILocation(line: 241, column: 2, scope: !719)
!721 = !DILocation(line: 242, column: 20, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 242, column: 7)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 241, column: 48)
!724 = distinct !DILexicalBlock(scope: !719, file: !3, line: 241, column: 2)
!725 = !DILocation(line: 242, column: 8, scope: !722)
!726 = !DILocation(line: 242, column: 7, scope: !723)
!727 = !DILocation(line: 243, column: 13, scope: !728)
!728 = distinct !DILexicalBlock(scope: !722, file: !3, line: 242, column: 43)
!729 = !DILocation(line: 243, column: 4, scope: !728)
!730 = !DILocation(line: 246, column: 4, scope: !728)
!731 = !DILocation(line: 241, column: 40, scope: !724)
!732 = distinct !{!732, !720, !733}
!733 = !DILocation(line: 248, column: 2, scope: !719)
!734 = !DILocation(line: 250, column: 21, scope: !735)
!735 = distinct !DILexicalBlock(scope: !707, file: !3, line: 250, column: 5)
!736 = !DILocation(line: 250, column: 9, scope: !735)
!737 = !DILocation(line: 250, column: 47, scope: !735)
!738 = !DILocation(line: 250, column: 5, scope: !707)
!739 = !DILocation(line: 251, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !3, line: 250, column: 56)
!741 = !DILocation(line: 252, column: 3, scope: !740)
!742 = !DILocation(line: 253, column: 3, scope: !740)
!743 = !DILocation(line: 255, column: 10, scope: !707)
!744 = !DILocation(line: 256, column: 24, scope: !745)
!745 = distinct !DILexicalBlock(scope: !707, file: !3, line: 256, column: 5)
!746 = !DILocation(line: 256, column: 17, scope: !745)
!747 = !DILocation(line: 256, column: 46, scope: !745)
!748 = !DILocation(line: 256, column: 5, scope: !707)
!749 = !DILocation(line: 257, column: 3, scope: !750)
!750 = distinct !DILexicalBlock(scope: !745, file: !3, line: 256, column: 55)
!751 = !DILocation(line: 258, column: 3, scope: !750)
!752 = !DILocation(line: 259, column: 3, scope: !750)
!753 = !DILocation(line: 261, column: 7, scope: !745)
!754 = !DILocation(line: 261, column: 20, scope: !745)
!755 = !DILocation(line: 263, column: 2, scope: !707)
!756 = !DILocation(line: 264, column: 6, scope: !707)
!757 = !DILocation(line: 264, column: 18, scope: !707)
!758 = !{!635, !485, i64 8}
!759 = !DILocation(line: 265, column: 6, scope: !707)
!760 = !DILocation(line: 265, column: 13, scope: !707)
!761 = !{!635, !485, i64 12}
!762 = !DILocation(line: 266, column: 6, scope: !707)
!763 = !DILocation(line: 266, column: 17, scope: !707)
!764 = !{!635, !486, i64 16}
!765 = !DILocation(line: 267, column: 6, scope: !707)
!766 = !DILocation(line: 267, column: 13, scope: !707)
!767 = !DILocation(line: 268, column: 6, scope: !707)
!768 = !DILocation(line: 268, column: 18, scope: !707)
!769 = !DILocation(line: 269, column: 6, scope: !707)
!770 = !DILocation(line: 269, column: 17, scope: !707)
!771 = !{!635, !485, i64 36}
!772 = !DILocation(line: 270, column: 6, scope: !707)
!773 = !DILocation(line: 270, column: 17, scope: !707)
!774 = !DILocation(line: 272, column: 10, scope: !775)
!775 = distinct !DILexicalBlock(scope: !707, file: !3, line: 272, column: 6)
!776 = !DILocation(line: 272, column: 21, scope: !775)
!777 = !DILocation(line: 272, column: 6, scope: !707)
!778 = !DILocation(line: 273, column: 7, scope: !775)
!779 = !DILocation(line: 273, column: 17, scope: !775)
!780 = !DILocation(line: 273, column: 3, scope: !775)
!781 = !DILocation(line: 275, column: 13, scope: !782)
!782 = distinct !DILexicalBlock(scope: !775, file: !3, line: 274, column: 6)
!783 = !DILocation(line: 276, column: 15, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 276, column: 3)
!785 = distinct !DILexicalBlock(scope: !782, file: !3, line: 276, column: 3)
!786 = !DILocation(line: 276, column: 3, scope: !785)
!787 = !DILocation(line: 276, column: 34, scope: !784)
!788 = distinct !{!788, !786, !789}
!789 = !DILocation(line: 277, column: 4, scope: !785)
!790 = !DILocation(line: 0, scope: !782)
!791 = !DILocation(line: 278, column: 8, scope: !782)
!792 = !DILocation(line: 278, column: 15, scope: !782)
!793 = !DILocation(line: 280, column: 6, scope: !707)
!794 = !DILocation(line: 280, column: 16, scope: !707)
!795 = !DILocation(line: 284, column: 6, scope: !707)
!796 = !DILocation(line: 284, column: 15, scope: !707)
!797 = !DILocation(line: 285, column: 2, scope: !707)
!798 = !DILocation(line: 286, column: 1, scope: !707)
!799 = distinct !DISubprogram(name: "addresidue", scope: !3, file: !3, line: 288, type: !800, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{!36, !22, !241, !56}
!802 = !{!803, !804, !805, !806, !807, !808, !809, !810, !811}
!803 = !DILocalVariable(name: "mp", arg: 1, scope: !799, file: !3, line: 288, type: !22)
!804 = !DILocalVariable(name: "sname", arg: 2, scope: !799, file: !3, line: 288, type: !241)
!805 = !DILocalVariable(name: "res", arg: 3, scope: !799, file: !3, line: 288, type: !56)
!806 = !DILocalVariable(name: "spl", scope: !799, file: !3, line: 290, type: !38)
!807 = !DILocalVariable(name: "sp", scope: !799, file: !3, line: 290, type: !38)
!808 = !DILocalVariable(name: "rap", scope: !799, file: !3, line: 291, type: !55)
!809 = !DILocalVariable(name: "nres", scope: !799, file: !3, line: 291, type: !56)
!810 = !DILocalVariable(name: "r", scope: !799, file: !3, line: 292, type: !36)
!811 = !DILocalVariable(name: "rsize", scope: !799, file: !3, line: 292, type: !36)
!812 = !DILocation(line: 0, scope: !799)
!813 = !DILocation(line: 294, column: 28, scope: !814)
!814 = distinct !DILexicalBlock(scope: !799, file: !3, line: 294, column: 2)
!815 = !DILocation(line: 294, column: 2, scope: !814)
!816 = !DILocation(line: 295, column: 20, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 295, column: 7)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 294, column: 63)
!819 = distinct !DILexicalBlock(scope: !814, file: !3, line: 294, column: 2)
!820 = !DILocation(line: 295, column: 7, scope: !817)
!821 = !DILocation(line: 295, column: 42, scope: !817)
!822 = !DILocation(line: 295, column: 7, scope: !818)
!823 = !DILocation(line: 294, column: 55, scope: !819)
!824 = distinct !{!824, !815, !825}
!825 = !DILocation(line: 299, column: 2, scope: !814)
!826 = !DILocation(line: 0, scope: !814)
!827 = !DILocation(line: 301, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !799, file: !3, line: 301, column: 6)
!829 = !DILocation(line: 301, column: 6, scope: !799)
!830 = !DILocation(line: 302, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 301, column: 18)
!832 = !DILocation(line: 303, column: 3, scope: !831)
!833 = !DILocation(line: 306, column: 10, scope: !834)
!834 = distinct !DILexicalBlock(scope: !799, file: !3, line: 306, column: 6)
!835 = !DILocation(line: 306, column: 29, scope: !834)
!836 = !DILocation(line: 306, column: 22, scope: !834)
!837 = !DILocation(line: 306, column: 6, scope: !799)
!838 = !DILocation(line: 307, column: 15, scope: !839)
!839 = distinct !DILexicalBlock(scope: !834, file: !3, line: 306, column: 41)
!840 = !DILocation(line: 307, column: 26, scope: !839)
!841 = !DILocation(line: 308, column: 38, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !3, line: 308, column: 7)
!843 = !DILocation(line: 308, column: 43, scope: !842)
!844 = !DILocation(line: 308, column: 31, scope: !842)
!845 = !DILocation(line: 308, column: 15, scope: !842)
!846 = !DILocation(line: 309, column: 4, scope: !842)
!847 = !DILocation(line: 308, column: 7, scope: !839)
!848 = !DILocation(line: 312, column: 9, scope: !849)
!849 = distinct !DILexicalBlock(scope: !842, file: !3, line: 310, column: 3)
!850 = !DILocation(line: 311, column: 4, scope: !849)
!851 = !DILocation(line: 313, column: 4, scope: !849)
!852 = !DILocation(line: 314, column: 4, scope: !849)
!853 = !DILocation(line: 316, column: 23, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 316, column: 3)
!855 = distinct !DILexicalBlock(scope: !839, file: !3, line: 316, column: 3)
!856 = !DILocation(line: 316, column: 17, scope: !854)
!857 = !DILocation(line: 316, column: 3, scope: !855)
!858 = !DILocation(line: 317, column: 19, scope: !854)
!859 = !DILocation(line: 317, column: 15, scope: !854)
!860 = !DILocation(line: 317, column: 4, scope: !854)
!861 = !DILocation(line: 317, column: 13, scope: !854)
!862 = !DILocation(line: 316, column: 37, scope: !854)
!863 = distinct !{!863, !857, !864}
!864 = !DILocation(line: 317, column: 33, scope: !855)
!865 = !DILocation(line: 318, column: 12, scope: !866)
!866 = distinct !DILexicalBlock(scope: !839, file: !3, line: 318, column: 8)
!867 = !DILocation(line: 318, column: 23, scope: !866)
!868 = !DILocation(line: 318, column: 8, scope: !839)
!869 = !DILocation(line: 319, column: 14, scope: !866)
!870 = !DILocation(line: 319, column: 4, scope: !866)
!871 = !DILocation(line: 320, column: 7, scope: !839)
!872 = !DILocation(line: 320, column: 18, scope: !839)
!873 = !DILocation(line: 321, column: 7, scope: !839)
!874 = !DILocation(line: 321, column: 18, scope: !839)
!875 = !DILocation(line: 322, column: 2, scope: !839)
!876 = !DILocation(line: 324, column: 45, scope: !799)
!877 = !DILocation(line: 324, column: 6, scope: !799)
!878 = !DILocation(line: 324, column: 22, scope: !799)
!879 = !DILocation(line: 324, column: 2, scope: !799)
!880 = !DILocation(line: 324, column: 36, scope: !799)
!881 = !DILocation(line: 325, column: 8, scope: !799)
!882 = !DILocation(line: 325, column: 17, scope: !799)
!883 = !{!517, !486, i64 56}
!884 = !DILocation(line: 326, column: 6, scope: !799)
!885 = !DILocation(line: 326, column: 17, scope: !799)
!886 = !DILocation(line: 330, column: 6, scope: !799)
!887 = !DILocation(line: 330, column: 15, scope: !799)
!888 = !DILocation(line: 331, column: 2, scope: !799)
!889 = !DILocation(line: 332, column: 1, scope: !799)
!890 = distinct !DISubprogram(name: "connectres", scope: !3, file: !3, line: 334, type: !891, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !893)
!891 = !DISubroutineType(types: !892)
!892 = !{!36, !22, !241, !36, !241, !36, !241}
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908}
!894 = !DILocalVariable(name: "mol", arg: 1, scope: !890, file: !3, line: 334, type: !22)
!895 = !DILocalVariable(name: "sname", arg: 2, scope: !890, file: !3, line: 334, type: !241)
!896 = !DILocalVariable(name: "ri", arg: 3, scope: !890, file: !3, line: 334, type: !36)
!897 = !DILocalVariable(name: "ainame", arg: 4, scope: !890, file: !3, line: 334, type: !241)
!898 = !DILocalVariable(name: "rj", arg: 5, scope: !890, file: !3, line: 334, type: !36)
!899 = !DILocalVariable(name: "ajname", arg: 6, scope: !890, file: !3, line: 334, type: !241)
!900 = !DILocalVariable(name: "sp", scope: !890, file: !3, line: 336, type: !38)
!901 = !DILocalVariable(name: "ebi", scope: !890, file: !3, line: 337, type: !72)
!902 = !DILocalVariable(name: "ebj", scope: !890, file: !3, line: 337, type: !72)
!903 = !DILocalVariable(name: "resi", scope: !890, file: !3, line: 338, type: !56)
!904 = !DILocalVariable(name: "resj", scope: !890, file: !3, line: 338, type: !56)
!905 = !DILocalVariable(name: "ap", scope: !890, file: !3, line: 339, type: !102)
!906 = !DILocalVariable(name: "a", scope: !890, file: !3, line: 340, type: !36)
!907 = !DILocalVariable(name: "ai", scope: !890, file: !3, line: 340, type: !36)
!908 = !DILocalVariable(name: "aj", scope: !890, file: !3, line: 340, type: !36)
!909 = !DILocation(line: 0, scope: !890)
!910 = !DILocation(line: 342, column: 17, scope: !911)
!911 = distinct !DILexicalBlock(scope: !890, file: !3, line: 342, column: 2)
!912 = !DILocation(line: 342, column: 2, scope: !911)
!913 = !DILocation(line: 343, column: 19, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 343, column: 7)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 342, column: 49)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 342, column: 2)
!917 = !DILocation(line: 343, column: 7, scope: !914)
!918 = !DILocation(line: 343, column: 41, scope: !914)
!919 = !DILocation(line: 343, column: 7, scope: !915)
!920 = !DILocation(line: 342, column: 41, scope: !916)
!921 = distinct !{!921, !912, !922}
!922 = !DILocation(line: 345, column: 2, scope: !911)
!923 = !DILocation(line: 346, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !890, file: !3, line: 346, column: 6)
!925 = !DILocation(line: 346, column: 6, scope: !890)
!926 = !DILocation(line: 347, column: 3, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !3, line: 346, column: 18)
!928 = !DILocation(line: 348, column: 3, scope: !927)
!929 = !DILocation(line: 350, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !890, file: !3, line: 350, column: 6)
!931 = !DILocation(line: 350, column: 13, scope: !930)
!932 = !DILocation(line: 350, column: 25, scope: !930)
!933 = !DILocation(line: 350, column: 19, scope: !930)
!934 = !DILocation(line: 350, column: 6, scope: !890)
!935 = !DILocation(line: 351, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !930, file: !3, line: 350, column: 38)
!937 = !DILocation(line: 352, column: 3, scope: !936)
!938 = !DILocation(line: 353, column: 3, scope: !936)
!939 = !DILocation(line: 355, column: 14, scope: !930)
!940 = !DILocation(line: 355, column: 29, scope: !930)
!941 = !DILocation(line: 355, column: 10, scope: !930)
!942 = !DILocation(line: 357, column: 36, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 357, column: 2)
!944 = distinct !DILexicalBlock(scope: !890, file: !3, line: 357, column: 2)
!945 = !DILocation(line: 357, column: 28, scope: !943)
!946 = !DILocation(line: 357, column: 2, scope: !944)
!947 = !DILocation(line: 358, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !3, line: 357, column: 51)
!949 = !DILocation(line: 359, column: 19, scope: !950)
!950 = distinct !DILexicalBlock(scope: !948, file: !3, line: 359, column: 7)
!951 = !DILocation(line: 359, column: 7, scope: !950)
!952 = !DILocation(line: 359, column: 40, scope: !950)
!953 = !DILocation(line: 359, column: 7, scope: !948)
!954 = !DILocation(line: 361, column: 4, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !3, line: 359, column: 46)
!956 = !DILocation(line: 357, column: 47, scope: !943)
!957 = distinct !{!957, !946, !958}
!958 = !DILocation(line: 363, column: 2, scope: !944)
!959 = !DILocation(line: 0, scope: !944)
!960 = !DILocation(line: 364, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !890, file: !3, line: 364, column: 6)
!962 = !DILocation(line: 364, column: 6, scope: !890)
!963 = !DILocation(line: 366, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 364, column: 19)
!965 = !DILocation(line: 365, column: 3, scope: !964)
!966 = !DILocation(line: 367, column: 3, scope: !964)
!967 = !DILocation(line: 368, column: 3, scope: !964)
!968 = !DILocation(line: 371, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !890, file: !3, line: 371, column: 6)
!970 = !DILocation(line: 371, column: 13, scope: !969)
!971 = !DILocation(line: 371, column: 25, scope: !969)
!972 = !DILocation(line: 371, column: 19, scope: !969)
!973 = !DILocation(line: 371, column: 6, scope: !890)
!974 = !DILocation(line: 372, column: 3, scope: !975)
!975 = distinct !DILexicalBlock(scope: !969, file: !3, line: 371, column: 38)
!976 = !DILocation(line: 373, column: 3, scope: !975)
!977 = !DILocation(line: 374, column: 3, scope: !975)
!978 = !DILocation(line: 376, column: 14, scope: !969)
!979 = !DILocation(line: 376, column: 29, scope: !969)
!980 = !DILocation(line: 376, column: 10, scope: !969)
!981 = !DILocation(line: 378, column: 36, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !3, line: 378, column: 2)
!983 = distinct !DILexicalBlock(scope: !890, file: !3, line: 378, column: 2)
!984 = !DILocation(line: 378, column: 28, scope: !982)
!985 = !DILocation(line: 378, column: 2, scope: !983)
!986 = !DILocation(line: 379, column: 15, scope: !987)
!987 = distinct !DILexicalBlock(scope: !982, file: !3, line: 378, column: 51)
!988 = !DILocation(line: 380, column: 19, scope: !989)
!989 = distinct !DILexicalBlock(scope: !987, file: !3, line: 380, column: 7)
!990 = !DILocation(line: 380, column: 7, scope: !989)
!991 = !DILocation(line: 380, column: 40, scope: !989)
!992 = !DILocation(line: 380, column: 7, scope: !987)
!993 = !DILocation(line: 382, column: 4, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !3, line: 380, column: 46)
!995 = !DILocation(line: 378, column: 47, scope: !982)
!996 = distinct !{!996, !985, !997}
!997 = !DILocation(line: 384, column: 2, scope: !983)
!998 = !DILocation(line: 0, scope: !983)
!999 = !DILocation(line: 385, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !890, file: !3, line: 385, column: 6)
!1001 = !DILocation(line: 385, column: 6, scope: !890)
!1002 = !DILocation(line: 387, column: 18, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 385, column: 19)
!1004 = !DILocation(line: 386, column: 3, scope: !1003)
!1005 = !DILocation(line: 388, column: 3, scope: !1003)
!1006 = !DILocation(line: 389, column: 3, scope: !1003)
!1007 = !DILocation(line: 392, column: 29, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !890, file: !3, line: 392, column: 6)
!1009 = !DILocation(line: 392, column: 14, scope: !1008)
!1010 = !DILocation(line: 392, column: 61, scope: !1008)
!1011 = !DILocation(line: 392, column: 6, scope: !890)
!1012 = !DILocation(line: 394, column: 10, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 392, column: 70)
!1014 = !DILocation(line: 395, column: 10, scope: !1013)
!1015 = !DILocation(line: 393, column: 3, scope: !1013)
!1016 = !DILocation(line: 396, column: 3, scope: !1013)
!1017 = !DILocation(line: 397, column: 3, scope: !1013)
!1018 = !DILocation(line: 399, column: 24, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 398, column: 7)
!1020 = !DILocation(line: 399, column: 8, scope: !1019)
!1021 = !DILocation(line: 399, column: 16, scope: !1019)
!1022 = !DILocation(line: 400, column: 9, scope: !1019)
!1023 = !DILocation(line: 400, column: 20, scope: !1019)
!1024 = !DILocation(line: 401, column: 21, scope: !1019)
!1025 = !DILocation(line: 401, column: 8, scope: !1019)
!1026 = !DILocation(line: 401, column: 16, scope: !1019)
!1027 = !{!537, !485, i64 8}
!1028 = !DILocation(line: 402, column: 8, scope: !1019)
!1029 = !DILocation(line: 402, column: 16, scope: !1019)
!1030 = !{!537, !485, i64 12}
!1031 = !DILocation(line: 403, column: 22, scope: !1019)
!1032 = !DILocation(line: 403, column: 8, scope: !1019)
!1033 = !DILocation(line: 403, column: 17, scope: !1019)
!1034 = !{!537, !485, i64 16}
!1035 = !DILocation(line: 406, column: 29, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !890, file: !3, line: 406, column: 6)
!1037 = !DILocation(line: 406, column: 14, scope: !1036)
!1038 = !DILocation(line: 406, column: 61, scope: !1036)
!1039 = !DILocation(line: 406, column: 6, scope: !890)
!1040 = !DILocation(line: 408, column: 10, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 406, column: 70)
!1042 = !DILocation(line: 409, column: 10, scope: !1041)
!1043 = !DILocation(line: 407, column: 3, scope: !1041)
!1044 = !DILocation(line: 410, column: 3, scope: !1041)
!1045 = !DILocation(line: 411, column: 3, scope: !1041)
!1046 = !DILocation(line: 413, column: 24, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 412, column: 7)
!1048 = !DILocation(line: 413, column: 8, scope: !1047)
!1049 = !DILocation(line: 413, column: 16, scope: !1047)
!1050 = !DILocation(line: 414, column: 9, scope: !1047)
!1051 = !DILocation(line: 414, column: 20, scope: !1047)
!1052 = !DILocation(line: 415, column: 21, scope: !1047)
!1053 = !DILocation(line: 415, column: 8, scope: !1047)
!1054 = !DILocation(line: 415, column: 16, scope: !1047)
!1055 = !DILocation(line: 416, column: 8, scope: !1047)
!1056 = !DILocation(line: 416, column: 16, scope: !1047)
!1057 = !DILocation(line: 417, column: 22, scope: !1047)
!1058 = !DILocation(line: 417, column: 8, scope: !1047)
!1059 = !DILocation(line: 417, column: 17, scope: !1047)
!1060 = !DILocation(line: 420, column: 2, scope: !890)
!1061 = !DILocation(line: 421, column: 1, scope: !890)
!1062 = distinct !DISubprogram(name: "mergestr", scope: !3, file: !3, line: 441, type: !1063, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!36, !22, !241, !241, !22, !241, !241}
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1066 = !DILocalVariable(name: "mol1", arg: 1, scope: !1062, file: !3, line: 441, type: !22)
!1067 = !DILocalVariable(name: "strand1", arg: 2, scope: !1062, file: !3, line: 441, type: !241)
!1068 = !DILocalVariable(name: "end1", arg: 3, scope: !1062, file: !3, line: 441, type: !241)
!1069 = !DILocalVariable(name: "mol2", arg: 4, scope: !1062, file: !3, line: 442, type: !22)
!1070 = !DILocalVariable(name: "strand2", arg: 5, scope: !1062, file: !3, line: 442, type: !241)
!1071 = !DILocalVariable(name: "end2", arg: 6, scope: !1062, file: !3, line: 442, type: !241)
!1072 = !DILocalVariable(name: "after", scope: !1062, file: !3, line: 444, type: !36)
!1073 = !DILocalVariable(name: "nres", scope: !1062, file: !3, line: 445, type: !36)
!1074 = !DILocalVariable(name: "nsize", scope: !1062, file: !3, line: 445, type: !36)
!1075 = !DILocalVariable(name: "r1", scope: !1062, file: !3, line: 446, type: !36)
!1076 = !DILocalVariable(name: "r2", scope: !1062, file: !3, line: 446, type: !36)
!1077 = !DILocalVariable(name: "copy", scope: !1062, file: !3, line: 447, type: !36)
!1078 = !DILocalVariable(name: "sp", scope: !1062, file: !3, line: 448, type: !38)
!1079 = !DILocalVariable(name: "sp1", scope: !1062, file: !3, line: 448, type: !38)
!1080 = !DILocalVariable(name: "sp2", scope: !1062, file: !3, line: 448, type: !38)
!1081 = !DILocalVariable(name: "rap", scope: !1062, file: !3, line: 449, type: !55)
!1082 = !DILocation(line: 0, scope: !1062)
!1083 = !DILocation(line: 451, column: 6, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 451, column: 6)
!1085 = !DILocation(line: 451, column: 29, scope: !1084)
!1086 = !DILocation(line: 451, column: 34, scope: !1084)
!1087 = !DILocation(line: 451, column: 37, scope: !1084)
!1088 = !DILocation(line: 451, column: 61, scope: !1084)
!1089 = !DILocation(line: 451, column: 6, scope: !1062)
!1090 = !DILocation(line: 453, column: 11, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 453, column: 11)
!1092 = !DILocation(line: 453, column: 35, scope: !1091)
!1093 = !DILocation(line: 453, column: 40, scope: !1091)
!1094 = !DILocation(line: 453, column: 43, scope: !1091)
!1095 = !DILocation(line: 453, column: 66, scope: !1091)
!1096 = !DILocation(line: 453, column: 11, scope: !1084)
!1097 = !DILocation(line: 456, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 455, column: 6)
!1099 = !DILocation(line: 457, column: 3, scope: !1098)
!1100 = !DILocation(line: 458, column: 3, scope: !1098)
!1101 = !DILocation(line: 0, scope: !1084)
!1102 = !DILocation(line: 461, column: 30, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 461, column: 2)
!1104 = !DILocation(line: 461, column: 2, scope: !1103)
!1105 = !DILocation(line: 462, column: 19, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 462, column: 7)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 461, column: 62)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 461, column: 2)
!1109 = !DILocation(line: 462, column: 7, scope: !1106)
!1110 = !DILocation(line: 462, column: 43, scope: !1106)
!1111 = !DILocation(line: 462, column: 7, scope: !1107)
!1112 = !DILocation(line: 461, column: 54, scope: !1108)
!1113 = distinct !{!1113, !1104, !1114}
!1114 = !DILocation(line: 466, column: 2, scope: !1103)
!1115 = !DILocation(line: 0, scope: !1103)
!1116 = !DILocation(line: 467, column: 10, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 467, column: 6)
!1118 = !DILocation(line: 467, column: 6, scope: !1062)
!1119 = !DILocation(line: 468, column: 3, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 467, column: 19)
!1121 = !DILocation(line: 469, column: 3, scope: !1120)
!1122 = !DILocation(line: 472, column: 30, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 472, column: 2)
!1124 = !DILocation(line: 472, column: 2, scope: !1123)
!1125 = !DILocation(line: 473, column: 19, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 473, column: 7)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 472, column: 62)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 472, column: 2)
!1129 = !DILocation(line: 473, column: 7, scope: !1126)
!1130 = !DILocation(line: 473, column: 43, scope: !1126)
!1131 = !DILocation(line: 473, column: 7, scope: !1127)
!1132 = !DILocation(line: 472, column: 54, scope: !1128)
!1133 = distinct !{!1133, !1124, !1134}
!1134 = !DILocation(line: 477, column: 2, scope: !1123)
!1135 = !DILocation(line: 0, scope: !1123)
!1136 = !DILocation(line: 478, column: 10, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 478, column: 6)
!1138 = !DILocation(line: 478, column: 6, scope: !1062)
!1139 = !DILocation(line: 479, column: 3, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 478, column: 19)
!1141 = !DILocation(line: 480, column: 3, scope: !1140)
!1142 = !DILocation(line: 483, column: 14, scope: !1062)
!1143 = !DILocation(line: 483, column: 33, scope: !1062)
!1144 = !DILocation(line: 483, column: 26, scope: !1062)
!1145 = !DILocation(line: 484, column: 18, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 484, column: 6)
!1147 = !DILocation(line: 484, column: 11, scope: !1146)
!1148 = !DILocation(line: 484, column: 6, scope: !1062)
!1149 = !DILocation(line: 486, column: 16, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 484, column: 30)
!1151 = !DILocation(line: 488, column: 12, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 487, column: 7)
!1153 = !DILocation(line: 488, column: 18, scope: !1152)
!1154 = !DILocation(line: 488, column: 4, scope: !1152)
!1155 = !DILocation(line: 487, column: 15, scope: !1152)
!1156 = !DILocation(line: 488, column: 46, scope: !1152)
!1157 = !DILocation(line: 487, column: 7, scope: !1150)
!1158 = !DILocation(line: 489, column: 4, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 488, column: 55)
!1160 = !DILocation(line: 491, column: 4, scope: !1159)
!1161 = !DILocation(line: 493, column: 26, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 493, column: 3)
!1163 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 493, column: 3)
!1164 = !DILocation(line: 493, column: 19, scope: !1162)
!1165 = !DILocation(line: 493, column: 3, scope: !1163)
!1166 = !DILocation(line: 494, column: 21, scope: !1162)
!1167 = !DILocation(line: 494, column: 16, scope: !1162)
!1168 = !DILocation(line: 494, column: 4, scope: !1162)
!1169 = !DILocation(line: 494, column: 14, scope: !1162)
!1170 = !DILocation(line: 493, column: 41, scope: !1162)
!1171 = distinct !{!1171, !1165, !1172}
!1172 = !DILocation(line: 494, column: 36, scope: !1163)
!1173 = !DILocation(line: 495, column: 12, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 495, column: 7)
!1175 = !DILocation(line: 495, column: 23, scope: !1174)
!1176 = !DILocation(line: 495, column: 7, scope: !1150)
!1177 = !DILocation(line: 496, column: 15, scope: !1174)
!1178 = !DILocation(line: 496, column: 4, scope: !1174)
!1179 = !DILocation(line: 497, column: 8, scope: !1150)
!1180 = !DILocation(line: 497, column: 19, scope: !1150)
!1181 = !DILocation(line: 498, column: 8, scope: !1150)
!1182 = !DILocation(line: 498, column: 19, scope: !1150)
!1183 = !DILocation(line: 499, column: 2, scope: !1150)
!1184 = !DILocation(line: 501, column: 14, scope: !1062)
!1185 = !DILocation(line: 504, column: 6, scope: !1062)
!1186 = !DILocation(line: 505, column: 13, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 504, column: 13)
!1188 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 504, column: 6)
!1189 = !DILocation(line: 506, column: 7, scope: !1187)
!1190 = !DILocation(line: 507, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 507, column: 4)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 506, column: 13)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 506, column: 7)
!1194 = !DILocation(line: 507, column: 27, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 507, column: 4)
!1196 = !DILocation(line: 507, column: 20, scope: !1195)
!1197 = !DILocation(line: 507, column: 4, scope: !1191)
!1198 = !DILocation(line: 509, column: 24, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 507, column: 46)
!1200 = !DILocation(line: 509, column: 19, scope: !1199)
!1201 = !DILocation(line: 509, column: 6, scope: !1199)
!1202 = !DILocation(line: 508, column: 10, scope: !1199)
!1203 = !DILocation(line: 508, column: 25, scope: !1199)
!1204 = !DILocation(line: 508, column: 5, scope: !1199)
!1205 = !DILocation(line: 508, column: 32, scope: !1199)
!1206 = !DILocation(line: 510, column: 10, scope: !1199)
!1207 = !DILocation(line: 510, column: 25, scope: !1199)
!1208 = !DILocation(line: 510, column: 5, scope: !1199)
!1209 = !DILocation(line: 510, column: 33, scope: !1199)
!1210 = !DILocation(line: 510, column: 42, scope: !1199)
!1211 = !DILocation(line: 507, column: 42, scope: !1195)
!1212 = distinct !{!1212, !1197, !1213}
!1213 = !DILocation(line: 511, column: 4, scope: !1191)
!1214 = !DILocation(line: 513, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 513, column: 4)
!1216 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 512, column: 8)
!1217 = !DILocation(line: 513, column: 27, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 513, column: 4)
!1219 = !DILocation(line: 513, column: 20, scope: !1218)
!1220 = !DILocation(line: 513, column: 4, scope: !1215)
!1221 = !DILocation(line: 515, column: 11, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 513, column: 46)
!1223 = !DILocation(line: 515, column: 6, scope: !1222)
!1224 = !DILocation(line: 514, column: 10, scope: !1222)
!1225 = !DILocation(line: 514, column: 25, scope: !1222)
!1226 = !DILocation(line: 514, column: 5, scope: !1222)
!1227 = !DILocation(line: 514, column: 32, scope: !1222)
!1228 = !DILocation(line: 516, column: 10, scope: !1222)
!1229 = !DILocation(line: 516, column: 25, scope: !1222)
!1230 = !DILocation(line: 516, column: 5, scope: !1222)
!1231 = !DILocation(line: 516, column: 33, scope: !1222)
!1232 = !DILocation(line: 516, column: 42, scope: !1222)
!1233 = !DILocation(line: 513, column: 42, scope: !1218)
!1234 = distinct !{!1234, !1220, !1235}
!1235 = !DILocation(line: 517, column: 4, scope: !1215)
!1236 = !DILocation(line: 519, column: 8, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 519, column: 3)
!1238 = !DILocation(line: 519, column: 26, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 519, column: 3)
!1240 = !DILocation(line: 519, column: 19, scope: !1239)
!1241 = !DILocation(line: 519, column: 3, scope: !1237)
!1242 = !DILocation(line: 520, column: 22, scope: !1239)
!1243 = !DILocation(line: 520, column: 37, scope: !1239)
!1244 = !DILocation(line: 520, column: 17, scope: !1239)
!1245 = !DILocation(line: 520, column: 4, scope: !1239)
!1246 = !DILocation(line: 519, column: 41, scope: !1239)
!1247 = distinct !{!1247, !1241, !1248}
!1248 = !DILocation(line: 520, column: 48, scope: !1237)
!1249 = !DILocation(line: 522, column: 13, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 521, column: 7)
!1251 = !DILocation(line: 523, column: 18, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 523, column: 3)
!1253 = !DILocation(line: 523, column: 30, scope: !1252)
!1254 = !DILocation(line: 523, column: 8, scope: !1252)
!1255 = !DILocation(line: 523, column: 38, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 523, column: 3)
!1257 = !DILocation(line: 523, column: 3, scope: !1252)
!1258 = !DILocation(line: 524, column: 38, scope: !1256)
!1259 = !DILocation(line: 524, column: 33, scope: !1256)
!1260 = !DILocation(line: 524, column: 24, scope: !1256)
!1261 = !DILocation(line: 524, column: 4, scope: !1256)
!1262 = !DILocation(line: 524, column: 31, scope: !1256)
!1263 = !DILocation(line: 523, column: 46, scope: !1256)
!1264 = distinct !{!1264, !1257, !1265}
!1265 = !DILocation(line: 524, column: 53, scope: !1252)
!1266 = !DILocation(line: 525, column: 7, scope: !1250)
!1267 = !DILocation(line: 526, column: 27, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 526, column: 4)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 526, column: 4)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 525, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 525, column: 7)
!1272 = !DILocation(line: 526, column: 20, scope: !1268)
!1273 = !DILocation(line: 526, column: 4, scope: !1269)
!1274 = !DILocation(line: 528, column: 24, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 526, column: 46)
!1276 = !DILocation(line: 528, column: 19, scope: !1275)
!1277 = !DILocation(line: 528, column: 6, scope: !1275)
!1278 = !DILocation(line: 527, column: 10, scope: !1275)
!1279 = !DILocation(line: 527, column: 5, scope: !1275)
!1280 = !DILocation(line: 527, column: 27, scope: !1275)
!1281 = !DILocation(line: 529, column: 10, scope: !1275)
!1282 = !DILocation(line: 529, column: 5, scope: !1275)
!1283 = !DILocation(line: 529, column: 28, scope: !1275)
!1284 = !DILocation(line: 529, column: 37, scope: !1275)
!1285 = !DILocation(line: 526, column: 42, scope: !1268)
!1286 = distinct !{!1286, !1273, !1287}
!1287 = !DILocation(line: 530, column: 4, scope: !1269)
!1288 = !DILocation(line: 531, column: 3, scope: !1270)
!1289 = !DILocation(line: 532, column: 27, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 532, column: 4)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 532, column: 4)
!1292 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 531, column: 8)
!1293 = !DILocation(line: 532, column: 20, scope: !1290)
!1294 = !DILocation(line: 532, column: 4, scope: !1291)
!1295 = !DILocation(line: 533, column: 34, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 532, column: 46)
!1297 = !DILocation(line: 533, column: 29, scope: !1296)
!1298 = !DILocation(line: 533, column: 10, scope: !1296)
!1299 = !DILocation(line: 533, column: 5, scope: !1296)
!1300 = !DILocation(line: 533, column: 27, scope: !1296)
!1301 = !DILocation(line: 534, column: 10, scope: !1296)
!1302 = !DILocation(line: 534, column: 5, scope: !1296)
!1303 = !DILocation(line: 534, column: 28, scope: !1296)
!1304 = !DILocation(line: 534, column: 37, scope: !1296)
!1305 = !DILocation(line: 532, column: 42, scope: !1290)
!1306 = distinct !{!1306, !1294, !1307}
!1307 = !DILocation(line: 535, column: 4, scope: !1291)
!1308 = !DILocation(line: 0, scope: !1271)
!1309 = !DILocation(line: 537, column: 8, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 537, column: 3)
!1311 = !DILocation(line: 537, column: 26, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 537, column: 3)
!1313 = !DILocation(line: 537, column: 19, scope: !1312)
!1314 = !DILocation(line: 537, column: 3, scope: !1310)
!1315 = !DILocation(line: 538, column: 22, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 537, column: 45)
!1317 = !DILocation(line: 538, column: 37, scope: !1316)
!1318 = !DILocation(line: 538, column: 17, scope: !1316)
!1319 = !DILocation(line: 538, column: 4, scope: !1316)
!1320 = !DILocation(line: 537, column: 41, scope: !1312)
!1321 = distinct !{!1321, !1314, !1322}
!1322 = !DILocation(line: 539, column: 3, scope: !1310)
!1323 = !DILocation(line: 541, column: 7, scope: !1062)
!1324 = !DILocation(line: 541, column: 19, scope: !1062)
!1325 = !DILocation(line: 543, column: 6, scope: !1062)
!1326 = !DILocation(line: 544, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 543, column: 6)
!1328 = !DILocation(line: 546, column: 8, scope: !1062)
!1329 = !DILocation(line: 546, column: 17, scope: !1062)
!1330 = !DILocation(line: 547, column: 2, scope: !1062)
!1331 = !DILocation(line: 549, column: 2, scope: !1062)
!1332 = !DILocation(line: 550, column: 1, scope: !1062)
!1333 = distinct !DISubprogram(name: "fixextbonds", scope: !3, file: !3, line: 1618, type: !1334, scopeLine: 1619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{null, !56, !36}
!1336 = !{!1337, !1338, !1339}
!1337 = !DILocalVariable(name: "res", arg: 1, scope: !1333, file: !3, line: 1618, type: !56)
!1338 = !DILocalVariable(name: "roff", arg: 2, scope: !1333, file: !3, line: 1618, type: !36)
!1339 = !DILocalVariable(name: "ep", scope: !1333, file: !3, line: 1620, type: !72)
!1340 = !DILocation(line: 0, scope: !1333)
!1341 = !DILocation(line: 1622, column: 17, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 1622, column: 2)
!1343 = !DILocation(line: 1622, column: 2, scope: !1342)
!1344 = !DILocation(line: 1623, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1622, column: 2)
!1346 = !DILocation(line: 1623, column: 15, scope: !1345)
!1347 = !DILocation(line: 1622, column: 42, scope: !1345)
!1348 = distinct !{!1348, !1343, !1349}
!1349 = !DILocation(line: 1623, column: 18, scope: !1342)
!1350 = !DILocation(line: 1624, column: 1, scope: !1333)
!1351 = distinct !DISubprogram(name: "freestrand", scope: !3, file: !3, line: 1626, type: !1352, scopeLine: 1627, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !22, !241}
!1354 = !{!1355, !1356, !1357, !1358, !1359}
!1355 = !DILocalVariable(name: "mol", arg: 1, scope: !1351, file: !3, line: 1626, type: !22)
!1356 = !DILocalVariable(name: "sname", arg: 2, scope: !1351, file: !3, line: 1626, type: !241)
!1357 = !DILocalVariable(name: "sp", scope: !1351, file: !3, line: 1628, type: !38)
!1358 = !DILocalVariable(name: "spl", scope: !1351, file: !3, line: 1628, type: !38)
!1359 = !DILocalVariable(name: "sprm", scope: !1351, file: !3, line: 1628, type: !38)
!1360 = !DILocation(line: 0, scope: !1351)
!1361 = !DILocation(line: 1630, column: 36, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 1630, column: 2)
!1363 = !DILocation(line: 1630, column: 2, scope: !1362)
!1364 = !DILocation(line: 1631, column: 19, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1631, column: 7)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 1630, column: 68)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 1630, column: 2)
!1368 = !DILocation(line: 1631, column: 7, scope: !1365)
!1369 = !DILocation(line: 1631, column: 41, scope: !1365)
!1370 = !DILocation(line: 1631, column: 7, scope: !1366)
!1371 = !DILocation(line: 1630, column: 60, scope: !1367)
!1372 = distinct !{!1372, !1363, !1373}
!1373 = !DILocation(line: 1636, column: 2, scope: !1362)
!1374 = !DILocation(line: 0, scope: !1362)
!1375 = !DILocation(line: 1638, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 1638, column: 6)
!1377 = !DILocation(line: 1638, column: 6, scope: !1351)
!1378 = !DILocation(line: 1639, column: 3, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1638, column: 20)
!1380 = !DILocation(line: 1640, column: 3, scope: !1379)
!1381 = !DILocation(line: 1643, column: 10, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 1643, column: 6)
!1383 = !DILocation(line: 1643, column: 6, scope: !1351)
!1384 = !DILocation(line: 1644, column: 26, scope: !1382)
!1385 = !DILocation(line: 1644, column: 8, scope: !1382)
!1386 = !DILocation(line: 1644, column: 18, scope: !1382)
!1387 = !DILocation(line: 1644, column: 3, scope: !1382)
!1388 = !DILocation(line: 1646, column: 23, scope: !1382)
!1389 = !DILocation(line: 1646, column: 8, scope: !1382)
!1390 = !DILocation(line: 1646, column: 15, scope: !1382)
!1391 = !DILocation(line: 1647, column: 7, scope: !1351)
!1392 = !DILocation(line: 1647, column: 17, scope: !1351)
!1393 = !DILocation(line: 1648, column: 1, scope: !1351)
!1394 = distinct !DISubprogram(name: "upd_molnumbers", scope: !3, file: !3, line: 1288, type: !1395, scopeLine: 1289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !22}
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407}
!1398 = !DILocalVariable(name: "mp", arg: 1, scope: !1394, file: !3, line: 1288, type: !22)
!1399 = !DILocalVariable(name: "s", scope: !1394, file: !3, line: 1290, type: !36)
!1400 = !DILocalVariable(name: "r", scope: !1394, file: !3, line: 1290, type: !36)
!1401 = !DILocalVariable(name: "a", scope: !1394, file: !3, line: 1290, type: !36)
!1402 = !DILocalVariable(name: "a1", scope: !1394, file: !3, line: 1290, type: !36)
!1403 = !DILocalVariable(name: "ta", scope: !1394, file: !3, line: 1291, type: !36)
!1404 = !DILocalVariable(name: "tr", scope: !1394, file: !3, line: 1291, type: !36)
!1405 = !DILocalVariable(name: "sp", scope: !1394, file: !3, line: 1292, type: !38)
!1406 = !DILocalVariable(name: "res", scope: !1394, file: !3, line: 1293, type: !56)
!1407 = !DILocalVariable(name: "ap", scope: !1394, file: !3, line: 1294, type: !102)
!1408 = !DILocation(line: 0, scope: !1394)
!1409 = !DILocation(line: 1296, column: 33, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1296, column: 2)
!1411 = !DILocation(line: 1296, column: 2, scope: !1410)
!1412 = !DILocation(line: 1297, column: 23, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1296, column: 70)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1296, column: 2)
!1415 = !DILocation(line: 1297, column: 7, scope: !1413)
!1416 = !DILocation(line: 1297, column: 19, scope: !1413)
!1417 = !DILocation(line: 1298, column: 27, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1298, column: 3)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 1298, column: 3)
!1420 = !DILocation(line: 1298, column: 21, scope: !1418)
!1421 = !DILocation(line: 1298, column: 3, scope: !1419)
!1422 = !DILocation(line: 1299, column: 14, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1298, column: 51)
!1424 = !DILocation(line: 1299, column: 10, scope: !1423)
!1425 = !DILocation(line: 1300, column: 24, scope: !1423)
!1426 = !DILocation(line: 1300, column: 9, scope: !1423)
!1427 = !DILocation(line: 1300, column: 19, scope: !1423)
!1428 = !{!517, !485, i64 12}
!1429 = !DILocation(line: 1298, column: 47, scope: !1418)
!1430 = !DILocation(line: 1301, column: 9, scope: !1423)
!1431 = !DILocation(line: 1301, column: 18, scope: !1423)
!1432 = !{!517, !485, i64 16}
!1433 = !DILocation(line: 1302, column: 27, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 1302, column: 4)
!1435 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1302, column: 4)
!1436 = !DILocation(line: 1302, column: 20, scope: !1434)
!1437 = !DILocation(line: 1302, column: 4, scope: !1435)
!1438 = !DILocation(line: 1303, column: 16, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1302, column: 54)
!1440 = !DILocation(line: 1304, column: 23, scope: !1439)
!1441 = !DILocation(line: 1304, column: 9, scope: !1439)
!1442 = !DILocation(line: 1304, column: 19, scope: !1439)
!1443 = !{!575, !485, i64 132}
!1444 = !DILocation(line: 1305, column: 25, scope: !1439)
!1445 = !DILocation(line: 1305, column: 9, scope: !1439)
!1446 = !DILocation(line: 1305, column: 20, scope: !1439)
!1447 = !{!575, !485, i64 128}
!1448 = !DILocation(line: 1302, column: 39, scope: !1434)
!1449 = !DILocation(line: 1302, column: 45, scope: !1434)
!1450 = !DILocation(line: 1302, column: 50, scope: !1434)
!1451 = distinct !{!1451, !1437, !1452}
!1452 = !DILocation(line: 1306, column: 4, scope: !1435)
!1453 = !DILocation(line: 0, scope: !1410)
!1454 = !DILocation(line: 0, scope: !1419)
!1455 = !DILocation(line: 1298, column: 42, scope: !1418)
!1456 = distinct !{!1456, !1421, !1457}
!1457 = !DILocation(line: 1307, column: 3, scope: !1419)
!1458 = !DILocation(line: 1296, column: 10, scope: !1410)
!1459 = !DILocation(line: 1296, column: 49, scope: !1414)
!1460 = !DILocation(line: 1296, column: 62, scope: !1414)
!1461 = distinct !{!1461, !1411, !1462}
!1462 = !DILocation(line: 1308, column: 2, scope: !1410)
!1463 = !DILocation(line: 1296, column: 15, scope: !1410)
!1464 = !DILocation(line: 1309, column: 6, scope: !1394)
!1465 = !DILocation(line: 1309, column: 17, scope: !1394)
!1466 = !DILocation(line: 1310, column: 6, scope: !1394)
!1467 = !DILocation(line: 1310, column: 18, scope: !1394)
!1468 = !DILocation(line: 1311, column: 6, scope: !1394)
!1469 = !DILocation(line: 1311, column: 15, scope: !1394)
!1470 = !{!484, !485, i64 116}
!1471 = !DILocation(line: 1312, column: 6, scope: !1394)
!1472 = !DILocation(line: 1312, column: 15, scope: !1394)
!1473 = !DILocation(line: 1313, column: 1, scope: !1394)
!1474 = distinct !DISubprogram(name: "countmolstrands", scope: !3, file: !3, line: 552, type: !708, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1475)
!1475 = !{!1476, !1477, !1478, !1479}
!1476 = !DILocalVariable(name: "m", arg: 1, scope: !1474, file: !3, line: 552, type: !22)
!1477 = !DILocalVariable(name: "aex", arg: 2, scope: !1474, file: !3, line: 552, type: !241)
!1478 = !DILocalVariable(name: "n", scope: !1474, file: !3, line: 554, type: !36)
!1479 = !DILocalVariable(name: "sp", scope: !1474, file: !3, line: 555, type: !38)
!1480 = !DILocation(line: 0, scope: !1474)
!1481 = !DILocation(line: 557, column: 2, scope: !1474)
!1482 = !DILocation(line: 558, column: 22, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 558, column: 2)
!1484 = !DILocation(line: 558, column: 2, scope: !1483)
!1485 = !DILocation(line: 559, column: 11, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 559, column: 7)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 558, column: 54)
!1488 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 558, column: 2)
!1489 = !DILocation(line: 559, column: 18, scope: !1486)
!1490 = !DILocation(line: 559, column: 7, scope: !1487)
!1491 = !DILocation(line: 558, column: 46, scope: !1488)
!1492 = distinct !{!1492, !1484, !1493}
!1493 = !DILocation(line: 561, column: 2, scope: !1483)
!1494 = !DILocation(line: 0, scope: !1483)
!1495 = !DILocation(line: 562, column: 2, scope: !1474)
!1496 = distinct !DISubprogram(name: "countstrandresidues", scope: !3, file: !3, line: 565, type: !1497, scopeLine: 566, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!36, !22, !36}
!1499 = !{!1500, !1501, !1502, !1503}
!1500 = !DILocalVariable(name: "m", arg: 1, scope: !1496, file: !3, line: 565, type: !22)
!1501 = !DILocalVariable(name: "strandnum", arg: 2, scope: !1496, file: !3, line: 565, type: !36)
!1502 = !DILocalVariable(name: "sp", scope: !1496, file: !3, line: 567, type: !38)
!1503 = !DILocalVariable(name: "i", scope: !1496, file: !3, line: 568, type: !36)
!1504 = !DILocation(line: 0, scope: !1496)
!1505 = !DILocation(line: 569, column: 22, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 569, column: 2)
!1507 = !DILocation(line: 569, column: 7, scope: !1506)
!1508 = !DILocation(line: 0, scope: !1506)
!1509 = !DILocation(line: 569, column: 33, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 569, column: 2)
!1511 = !DILocation(line: 569, column: 38, scope: !1510)
!1512 = !DILocation(line: 569, column: 2, scope: !1506)
!1513 = !DILocation(line: 570, column: 4, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 569, column: 75)
!1515 = !DILocation(line: 569, column: 67, scope: !1510)
!1516 = !DILocation(line: 569, column: 2, scope: !1510)
!1517 = distinct !{!1517, !1512, !1518}
!1518 = !DILocation(line: 571, column: 2, scope: !1506)
!1519 = !DILocation(line: 572, column: 14, scope: !1496)
!1520 = !DILocation(line: 572, column: 2, scope: !1496)
!1521 = distinct !DISubprogram(name: "countmolres", scope: !3, file: !3, line: 575, type: !708, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1522)
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528}
!1523 = !DILocalVariable(name: "m", arg: 1, scope: !1521, file: !3, line: 575, type: !22)
!1524 = !DILocalVariable(name: "aex", arg: 2, scope: !1521, file: !3, line: 575, type: !241)
!1525 = !DILocalVariable(name: "r", scope: !1521, file: !3, line: 577, type: !36)
!1526 = !DILocalVariable(name: "n", scope: !1521, file: !3, line: 577, type: !36)
!1527 = !DILocalVariable(name: "sp", scope: !1521, file: !3, line: 578, type: !38)
!1528 = !DILocalVariable(name: "res", scope: !1521, file: !3, line: 579, type: !56)
!1529 = !DILocation(line: 0, scope: !1521)
!1530 = !DILocation(line: 581, column: 2, scope: !1521)
!1531 = !DILocation(line: 582, column: 22, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 582, column: 2)
!1533 = !DILocation(line: 582, column: 2, scope: !1532)
!1534 = !DILocation(line: 583, column: 23, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 583, column: 3)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 583, column: 3)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 582, column: 54)
!1538 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 582, column: 2)
!1539 = !DILocation(line: 583, column: 17, scope: !1535)
!1540 = !DILocation(line: 583, column: 3, scope: !1536)
!1541 = !DILocation(line: 584, column: 14, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 583, column: 41)
!1543 = !DILocation(line: 584, column: 10, scope: !1542)
!1544 = !DILocation(line: 585, column: 13, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 585, column: 8)
!1546 = !{!517, !485, i64 40}
!1547 = !DILocation(line: 585, column: 20, scope: !1545)
!1548 = !DILocation(line: 585, column: 8, scope: !1542)
!1549 = !DILocation(line: 583, column: 37, scope: !1535)
!1550 = distinct !{!1550, !1540, !1551}
!1551 = !DILocation(line: 587, column: 3, scope: !1536)
!1552 = !DILocation(line: 0, scope: !1532)
!1553 = !DILocation(line: 582, column: 46, scope: !1538)
!1554 = distinct !{!1554, !1533, !1555}
!1555 = !DILocation(line: 588, column: 2, scope: !1532)
!1556 = !DILocation(line: 582, column: 9, scope: !1532)
!1557 = !DILocation(line: 589, column: 2, scope: !1521)
!1558 = distinct !DISubprogram(name: "countmolatoms", scope: !3, file: !3, line: 592, type: !708, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1560 = !DILocalVariable(name: "m", arg: 1, scope: !1558, file: !3, line: 592, type: !22)
!1561 = !DILocalVariable(name: "aex", arg: 2, scope: !1558, file: !3, line: 592, type: !241)
!1562 = !DILocalVariable(name: "r", scope: !1558, file: !3, line: 594, type: !36)
!1563 = !DILocalVariable(name: "a", scope: !1558, file: !3, line: 594, type: !36)
!1564 = !DILocalVariable(name: "n", scope: !1558, file: !3, line: 594, type: !36)
!1565 = !DILocalVariable(name: "sp", scope: !1558, file: !3, line: 595, type: !38)
!1566 = !DILocalVariable(name: "res", scope: !1558, file: !3, line: 596, type: !56)
!1567 = !DILocalVariable(name: "ap", scope: !1558, file: !3, line: 597, type: !102)
!1568 = !DILocation(line: 0, scope: !1558)
!1569 = !DILocation(line: 599, column: 2, scope: !1558)
!1570 = !DILocation(line: 600, column: 22, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 600, column: 2)
!1572 = !DILocation(line: 600, column: 2, scope: !1571)
!1573 = !DILocation(line: 601, column: 23, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 601, column: 3)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 601, column: 3)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 600, column: 54)
!1577 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 600, column: 2)
!1578 = !DILocation(line: 601, column: 17, scope: !1574)
!1579 = !DILocation(line: 601, column: 3, scope: !1575)
!1580 = !DILocation(line: 602, column: 14, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 601, column: 41)
!1582 = !DILocation(line: 602, column: 10, scope: !1581)
!1583 = !DILocation(line: 603, column: 25, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 603, column: 4)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 603, column: 4)
!1586 = !DILocation(line: 603, column: 18, scope: !1584)
!1587 = !DILocation(line: 603, column: 4, scope: !1585)
!1588 = !DILocation(line: 604, column: 16, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 603, column: 40)
!1590 = !DILocation(line: 605, column: 13, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 605, column: 9)
!1592 = !{!575, !485, i64 16}
!1593 = !DILocation(line: 605, column: 20, scope: !1591)
!1594 = !DILocation(line: 605, column: 9, scope: !1589)
!1595 = !DILocation(line: 603, column: 36, scope: !1584)
!1596 = distinct !{!1596, !1587, !1597}
!1597 = !DILocation(line: 607, column: 4, scope: !1585)
!1598 = !DILocation(line: 0, scope: !1571)
!1599 = !DILocation(line: 601, column: 37, scope: !1574)
!1600 = distinct !{!1600, !1579, !1601}
!1601 = !DILocation(line: 608, column: 3, scope: !1575)
!1602 = !DILocation(line: 600, column: 9, scope: !1571)
!1603 = !DILocation(line: 600, column: 46, scope: !1577)
!1604 = distinct !{!1604, !1572, !1605}
!1605 = !DILocation(line: 609, column: 2, scope: !1571)
!1606 = !DILocation(line: 610, column: 2, scope: !1558)
!1607 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 613, type: !1608, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!30, !22, !241, !241}
!1610 = !{!1611, !1612, !1613, !1614, !1615}
!1611 = !DILocalVariable(name: "m", arg: 1, scope: !1607, file: !3, line: 613, type: !22)
!1612 = !DILocalVariable(name: "aex1", arg: 2, scope: !1607, file: !3, line: 613, type: !241)
!1613 = !DILocalVariable(name: "aex2", arg: 3, scope: !1607, file: !3, line: 613, type: !241)
!1614 = !DILocalVariable(name: "p1", scope: !1607, file: !3, line: 615, type: !127)
!1615 = !DILocalVariable(name: "p2", scope: !1607, file: !3, line: 615, type: !127)
!1616 = !DILocation(line: 0, scope: !1607)
!1617 = !DILocation(line: 615, column: 2, scope: !1607)
!1618 = !DILocation(line: 615, column: 10, scope: !1607)
!1619 = !DILocation(line: 615, column: 14, scope: !1607)
!1620 = !DILocation(line: 617, column: 21, scope: !1607)
!1621 = !DILocation(line: 617, column: 2, scope: !1607)
!1622 = !DILocation(line: 618, column: 21, scope: !1607)
!1623 = !DILocation(line: 618, column: 2, scope: !1607)
!1624 = !DILocation(line: 619, column: 17, scope: !1607)
!1625 = !DILocation(line: 619, column: 21, scope: !1607)
!1626 = !DILocation(line: 619, column: 10, scope: !1607)
!1627 = !DILocation(line: 620, column: 1, scope: !1607)
!1628 = !DILocation(line: 619, column: 2, scope: !1607)
!1629 = distinct !DISubprogram(name: "distp", scope: !3, file: !3, line: 622, type: !260, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1630)
!1630 = !{!1631, !1632, !1633, !1634, !1635}
!1631 = !DILocalVariable(name: "pi", arg: 1, scope: !1629, file: !3, line: 622, type: !180)
!1632 = !DILocalVariable(name: "pj", arg: 2, scope: !1629, file: !3, line: 622, type: !180)
!1633 = !DILocalVariable(name: "dx", scope: !1629, file: !3, line: 624, type: !30)
!1634 = !DILocalVariable(name: "dy", scope: !1629, file: !3, line: 624, type: !30)
!1635 = !DILocalVariable(name: "dz", scope: !1629, file: !3, line: 624, type: !30)
!1636 = !DILocation(line: 0, scope: !1629)
!1637 = !DILocation(line: 626, column: 7, scope: !1629)
!1638 = !DILocation(line: 626, column: 17, scope: !1629)
!1639 = !DILocation(line: 626, column: 15, scope: !1629)
!1640 = !DILocation(line: 627, column: 7, scope: !1629)
!1641 = !DILocation(line: 627, column: 17, scope: !1629)
!1642 = !DILocation(line: 627, column: 15, scope: !1629)
!1643 = !DILocation(line: 628, column: 7, scope: !1629)
!1644 = !DILocation(line: 628, column: 17, scope: !1629)
!1645 = !DILocation(line: 628, column: 15, scope: !1629)
!1646 = !DILocation(line: 629, column: 19, scope: !1629)
!1647 = !DILocation(line: 629, column: 29, scope: !1629)
!1648 = !DILocation(line: 629, column: 24, scope: !1629)
!1649 = !DILocation(line: 629, column: 39, scope: !1629)
!1650 = !DILocation(line: 629, column: 34, scope: !1629)
!1651 = !DILocation(line: 629, column: 10, scope: !1629)
!1652 = !DILocation(line: 629, column: 2, scope: !1629)
!1653 = distinct !DISubprogram(name: "angle", scope: !3, file: !3, line: 632, type: !1654, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!30, !22, !241, !241, !241}
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1662, !1663}
!1657 = !DILocalVariable(name: "m", arg: 1, scope: !1653, file: !3, line: 632, type: !22)
!1658 = !DILocalVariable(name: "aex1", arg: 2, scope: !1653, file: !3, line: 632, type: !241)
!1659 = !DILocalVariable(name: "aex2", arg: 3, scope: !1653, file: !3, line: 632, type: !241)
!1660 = !DILocalVariable(name: "aex3", arg: 4, scope: !1653, file: !3, line: 632, type: !241)
!1661 = !DILocalVariable(name: "p1", scope: !1653, file: !3, line: 634, type: !127)
!1662 = !DILocalVariable(name: "p2", scope: !1653, file: !3, line: 634, type: !127)
!1663 = !DILocalVariable(name: "p3", scope: !1653, file: !3, line: 634, type: !127)
!1664 = !DILocation(line: 0, scope: !1653)
!1665 = !DILocation(line: 634, column: 2, scope: !1653)
!1666 = !DILocation(line: 634, column: 10, scope: !1653)
!1667 = !DILocation(line: 634, column: 14, scope: !1653)
!1668 = !DILocation(line: 634, column: 18, scope: !1653)
!1669 = !DILocation(line: 636, column: 21, scope: !1653)
!1670 = !DILocation(line: 636, column: 2, scope: !1653)
!1671 = !DILocation(line: 637, column: 21, scope: !1653)
!1672 = !DILocation(line: 637, column: 2, scope: !1653)
!1673 = !DILocation(line: 638, column: 21, scope: !1653)
!1674 = !DILocation(line: 638, column: 2, scope: !1653)
!1675 = !DILocation(line: 639, column: 18, scope: !1653)
!1676 = !DILocation(line: 639, column: 22, scope: !1653)
!1677 = !DILocation(line: 639, column: 26, scope: !1653)
!1678 = !DILocation(line: 639, column: 10, scope: !1653)
!1679 = !DILocation(line: 640, column: 1, scope: !1653)
!1680 = !DILocation(line: 639, column: 2, scope: !1653)
!1681 = distinct !DISubprogram(name: "anglep", scope: !3, file: !3, line: 642, type: !263, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1682)
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694}
!1683 = !DILocalVariable(name: "p1", arg: 1, scope: !1681, file: !3, line: 642, type: !180)
!1684 = !DILocalVariable(name: "p2", arg: 2, scope: !1681, file: !3, line: 642, type: !180)
!1685 = !DILocalVariable(name: "p3", arg: 3, scope: !1681, file: !3, line: 642, type: !180)
!1686 = !DILocalVariable(name: "x12", scope: !1681, file: !3, line: 644, type: !30)
!1687 = !DILocalVariable(name: "x32", scope: !1681, file: !3, line: 644, type: !30)
!1688 = !DILocalVariable(name: "y12", scope: !1681, file: !3, line: 645, type: !30)
!1689 = !DILocalVariable(name: "y32", scope: !1681, file: !3, line: 645, type: !30)
!1690 = !DILocalVariable(name: "z12", scope: !1681, file: !3, line: 646, type: !30)
!1691 = !DILocalVariable(name: "z32", scope: !1681, file: !3, line: 646, type: !30)
!1692 = !DILocalVariable(name: "l12", scope: !1681, file: !3, line: 647, type: !30)
!1693 = !DILocalVariable(name: "l32", scope: !1681, file: !3, line: 647, type: !30)
!1694 = !DILocalVariable(name: "dp", scope: !1681, file: !3, line: 647, type: !30)
!1695 = !DILocation(line: 0, scope: !1681)
!1696 = !DILocation(line: 649, column: 8, scope: !1681)
!1697 = !DILocation(line: 649, column: 18, scope: !1681)
!1698 = !DILocation(line: 649, column: 16, scope: !1681)
!1699 = !DILocation(line: 650, column: 8, scope: !1681)
!1700 = !DILocation(line: 650, column: 18, scope: !1681)
!1701 = !DILocation(line: 650, column: 16, scope: !1681)
!1702 = !DILocation(line: 651, column: 8, scope: !1681)
!1703 = !DILocation(line: 651, column: 18, scope: !1681)
!1704 = !DILocation(line: 651, column: 16, scope: !1681)
!1705 = !DILocation(line: 652, column: 8, scope: !1681)
!1706 = !DILocation(line: 652, column: 18, scope: !1681)
!1707 = !DILocation(line: 652, column: 16, scope: !1681)
!1708 = !DILocation(line: 653, column: 8, scope: !1681)
!1709 = !DILocation(line: 653, column: 18, scope: !1681)
!1710 = !DILocation(line: 653, column: 16, scope: !1681)
!1711 = !DILocation(line: 654, column: 8, scope: !1681)
!1712 = !DILocation(line: 654, column: 18, scope: !1681)
!1713 = !DILocation(line: 654, column: 16, scope: !1681)
!1714 = !DILocation(line: 655, column: 18, scope: !1681)
!1715 = !DILocation(line: 655, column: 30, scope: !1681)
!1716 = !DILocation(line: 655, column: 24, scope: !1681)
!1717 = !DILocation(line: 655, column: 42, scope: !1681)
!1718 = !DILocation(line: 655, column: 36, scope: !1681)
!1719 = !DILocation(line: 655, column: 8, scope: !1681)
!1720 = !DILocation(line: 656, column: 18, scope: !1681)
!1721 = !DILocation(line: 656, column: 30, scope: !1681)
!1722 = !DILocation(line: 656, column: 24, scope: !1681)
!1723 = !DILocation(line: 656, column: 42, scope: !1681)
!1724 = !DILocation(line: 656, column: 36, scope: !1681)
!1725 = !DILocation(line: 656, column: 8, scope: !1681)
!1726 = !DILocation(line: 657, column: 10, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 657, column: 6)
!1728 = !DILocation(line: 657, column: 6, scope: !1681)
!1729 = !DILocation(line: 658, column: 12, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 657, column: 18)
!1731 = !DILocation(line: 658, column: 3, scope: !1730)
!1732 = !DILocation(line: 660, column: 3, scope: !1730)
!1733 = !DILocation(line: 662, column: 10, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 662, column: 6)
!1735 = !DILocation(line: 662, column: 6, scope: !1681)
!1736 = !DILocation(line: 663, column: 12, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 662, column: 18)
!1738 = !DILocation(line: 663, column: 3, scope: !1737)
!1739 = !DILocation(line: 665, column: 3, scope: !1737)
!1740 = !DILocation(line: 667, column: 11, scope: !1681)
!1741 = !DILocation(line: 667, column: 23, scope: !1681)
!1742 = !DILocation(line: 667, column: 17, scope: !1681)
!1743 = !DILocation(line: 667, column: 35, scope: !1681)
!1744 = !DILocation(line: 667, column: 29, scope: !1681)
!1745 = !DILocation(line: 668, column: 33, scope: !1681)
!1746 = !DILocation(line: 668, column: 25, scope: !1681)
!1747 = !DILocation(line: 668, column: 16, scope: !1681)
!1748 = !DILocation(line: 668, column: 14, scope: !1681)
!1749 = !DILocation(line: 668, column: 2, scope: !1681)
!1750 = !DILocation(line: 669, column: 1, scope: !1681)
!1751 = distinct !DISubprogram(name: "torsion", scope: !3, file: !3, line: 671, type: !1752, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!30, !22, !241, !241, !241, !241}
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1755 = !DILocalVariable(name: "mol", arg: 1, scope: !1751, file: !3, line: 671, type: !22)
!1756 = !DILocalVariable(name: "aei", arg: 2, scope: !1751, file: !3, line: 671, type: !241)
!1757 = !DILocalVariable(name: "aej", arg: 3, scope: !1751, file: !3, line: 671, type: !241)
!1758 = !DILocalVariable(name: "aek", arg: 4, scope: !1751, file: !3, line: 671, type: !241)
!1759 = !DILocalVariable(name: "ael", arg: 5, scope: !1751, file: !3, line: 671, type: !241)
!1760 = !DILocalVariable(name: "pi", scope: !1751, file: !3, line: 673, type: !127)
!1761 = !DILocalVariable(name: "pj", scope: !1751, file: !3, line: 673, type: !127)
!1762 = !DILocalVariable(name: "pk", scope: !1751, file: !3, line: 673, type: !127)
!1763 = !DILocalVariable(name: "pl", scope: !1751, file: !3, line: 673, type: !127)
!1764 = !DILocation(line: 0, scope: !1751)
!1765 = !DILocation(line: 673, column: 2, scope: !1751)
!1766 = !DILocation(line: 673, column: 10, scope: !1751)
!1767 = !DILocation(line: 673, column: 14, scope: !1751)
!1768 = !DILocation(line: 673, column: 18, scope: !1751)
!1769 = !DILocation(line: 673, column: 22, scope: !1751)
!1770 = !DILocation(line: 675, column: 22, scope: !1751)
!1771 = !DILocation(line: 675, column: 2, scope: !1751)
!1772 = !DILocation(line: 676, column: 22, scope: !1751)
!1773 = !DILocation(line: 676, column: 2, scope: !1751)
!1774 = !DILocation(line: 677, column: 22, scope: !1751)
!1775 = !DILocation(line: 677, column: 2, scope: !1751)
!1776 = !DILocation(line: 678, column: 22, scope: !1751)
!1777 = !DILocation(line: 678, column: 2, scope: !1751)
!1778 = !DILocation(line: 680, column: 20, scope: !1751)
!1779 = !DILocation(line: 680, column: 24, scope: !1751)
!1780 = !DILocation(line: 680, column: 28, scope: !1751)
!1781 = !DILocation(line: 680, column: 32, scope: !1751)
!1782 = !DILocation(line: 680, column: 10, scope: !1751)
!1783 = !DILocation(line: 681, column: 1, scope: !1751)
!1784 = !DILocation(line: 680, column: 2, scope: !1751)
!1785 = distinct !DISubprogram(name: "torsionp", scope: !3, file: !3, line: 683, type: !266, scopeLine: 684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1786)
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1787 = !DILocalVariable(name: "pi", arg: 1, scope: !1785, file: !3, line: 683, type: !180)
!1788 = !DILocalVariable(name: "pj", arg: 2, scope: !1785, file: !3, line: 683, type: !180)
!1789 = !DILocalVariable(name: "pk", arg: 3, scope: !1785, file: !3, line: 683, type: !180)
!1790 = !DILocalVariable(name: "pl", arg: 4, scope: !1785, file: !3, line: 683, type: !180)
!1791 = !DILocalVariable(name: "xij", scope: !1785, file: !3, line: 685, type: !30)
!1792 = !DILocalVariable(name: "yij", scope: !1785, file: !3, line: 685, type: !30)
!1793 = !DILocalVariable(name: "zij", scope: !1785, file: !3, line: 685, type: !30)
!1794 = !DILocalVariable(name: "xkj", scope: !1785, file: !3, line: 686, type: !30)
!1795 = !DILocalVariable(name: "ykj", scope: !1785, file: !3, line: 686, type: !30)
!1796 = !DILocalVariable(name: "zkj", scope: !1785, file: !3, line: 686, type: !30)
!1797 = !DILocalVariable(name: "xkl", scope: !1785, file: !3, line: 687, type: !30)
!1798 = !DILocalVariable(name: "ykl", scope: !1785, file: !3, line: 687, type: !30)
!1799 = !DILocalVariable(name: "zkl", scope: !1785, file: !3, line: 687, type: !30)
!1800 = !DILocalVariable(name: "dx", scope: !1785, file: !3, line: 688, type: !30)
!1801 = !DILocalVariable(name: "dy", scope: !1785, file: !3, line: 688, type: !30)
!1802 = !DILocalVariable(name: "dz", scope: !1785, file: !3, line: 688, type: !30)
!1803 = !DILocalVariable(name: "gx", scope: !1785, file: !3, line: 689, type: !30)
!1804 = !DILocalVariable(name: "gy", scope: !1785, file: !3, line: 689, type: !30)
!1805 = !DILocalVariable(name: "gz", scope: !1785, file: !3, line: 689, type: !30)
!1806 = !DILocalVariable(name: "bi", scope: !1785, file: !3, line: 690, type: !30)
!1807 = !DILocalVariable(name: "bk", scope: !1785, file: !3, line: 690, type: !30)
!1808 = !DILocalVariable(name: "ct", scope: !1785, file: !3, line: 691, type: !30)
!1809 = !DILocalVariable(name: "d", scope: !1785, file: !3, line: 691, type: !30)
!1810 = !DILocalVariable(name: "ap", scope: !1785, file: !3, line: 691, type: !30)
!1811 = !DILocalVariable(name: "app", scope: !1785, file: !3, line: 691, type: !30)
!1812 = !DILocation(line: 0, scope: !1785)
!1813 = !DILocation(line: 693, column: 8, scope: !1785)
!1814 = !DILocation(line: 693, column: 18, scope: !1785)
!1815 = !DILocation(line: 693, column: 16, scope: !1785)
!1816 = !DILocation(line: 694, column: 8, scope: !1785)
!1817 = !DILocation(line: 694, column: 18, scope: !1785)
!1818 = !DILocation(line: 694, column: 16, scope: !1785)
!1819 = !DILocation(line: 695, column: 8, scope: !1785)
!1820 = !DILocation(line: 695, column: 18, scope: !1785)
!1821 = !DILocation(line: 695, column: 16, scope: !1785)
!1822 = !DILocation(line: 696, column: 8, scope: !1785)
!1823 = !DILocation(line: 696, column: 18, scope: !1785)
!1824 = !DILocation(line: 696, column: 16, scope: !1785)
!1825 = !DILocation(line: 697, column: 8, scope: !1785)
!1826 = !DILocation(line: 697, column: 18, scope: !1785)
!1827 = !DILocation(line: 697, column: 16, scope: !1785)
!1828 = !DILocation(line: 698, column: 8, scope: !1785)
!1829 = !DILocation(line: 698, column: 18, scope: !1785)
!1830 = !DILocation(line: 698, column: 16, scope: !1785)
!1831 = !DILocation(line: 699, column: 8, scope: !1785)
!1832 = !DILocation(line: 699, column: 18, scope: !1785)
!1833 = !DILocation(line: 699, column: 16, scope: !1785)
!1834 = !DILocation(line: 700, column: 8, scope: !1785)
!1835 = !DILocation(line: 700, column: 18, scope: !1785)
!1836 = !DILocation(line: 700, column: 16, scope: !1785)
!1837 = !DILocation(line: 701, column: 8, scope: !1785)
!1838 = !DILocation(line: 701, column: 18, scope: !1785)
!1839 = !DILocation(line: 701, column: 16, scope: !1785)
!1840 = !DILocation(line: 703, column: 11, scope: !1785)
!1841 = !DILocation(line: 703, column: 23, scope: !1785)
!1842 = !DILocation(line: 703, column: 17, scope: !1785)
!1843 = !DILocation(line: 704, column: 18, scope: !1785)
!1844 = !DILocation(line: 704, column: 30, scope: !1785)
!1845 = !DILocation(line: 704, column: 24, scope: !1785)
!1846 = !DILocation(line: 705, column: 18, scope: !1785)
!1847 = !DILocation(line: 705, column: 30, scope: !1785)
!1848 = !DILocation(line: 705, column: 24, scope: !1785)
!1849 = !DILocation(line: 706, column: 18, scope: !1785)
!1850 = !DILocation(line: 706, column: 30, scope: !1785)
!1851 = !DILocation(line: 706, column: 24, scope: !1785)
!1852 = !DILocation(line: 707, column: 18, scope: !1785)
!1853 = !DILocation(line: 707, column: 30, scope: !1785)
!1854 = !DILocation(line: 707, column: 24, scope: !1785)
!1855 = !DILocation(line: 708, column: 18, scope: !1785)
!1856 = !DILocation(line: 708, column: 30, scope: !1785)
!1857 = !DILocation(line: 708, column: 24, scope: !1785)
!1858 = !DILocation(line: 710, column: 17, scope: !1785)
!1859 = !DILocation(line: 710, column: 27, scope: !1785)
!1860 = !DILocation(line: 710, column: 22, scope: !1785)
!1861 = !DILocation(line: 710, column: 37, scope: !1785)
!1862 = !DILocation(line: 710, column: 32, scope: !1785)
!1863 = !DILocation(line: 711, column: 17, scope: !1785)
!1864 = !DILocation(line: 711, column: 27, scope: !1785)
!1865 = !DILocation(line: 711, column: 22, scope: !1785)
!1866 = !DILocation(line: 711, column: 37, scope: !1785)
!1867 = !DILocation(line: 711, column: 32, scope: !1785)
!1868 = !DILocation(line: 712, column: 17, scope: !1785)
!1869 = !DILocation(line: 712, column: 27, scope: !1785)
!1870 = !DILocation(line: 712, column: 22, scope: !1785)
!1871 = !DILocation(line: 712, column: 37, scope: !1785)
!1872 = !DILocation(line: 712, column: 32, scope: !1785)
!1873 = !DILocation(line: 713, column: 28, scope: !1785)
!1874 = !DILocation(line: 713, column: 19, scope: !1785)
!1875 = !DILocation(line: 713, column: 17, scope: !1785)
!1876 = !DILocation(line: 714, column: 16, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 714, column: 13)
!1878 = !DILocation(line: 714, column: 13, scope: !1785)
!1879 = !DILocation(line: 719, column: 7, scope: !1785)
!1880 = !DILocation(line: 720, column: 14, scope: !1785)
!1881 = !DILocation(line: 720, column: 20, scope: !1785)
!1882 = !DILocation(line: 720, column: 17, scope: !1785)
!1883 = !DILocation(line: 720, column: 10, scope: !1785)
!1884 = !DILocation(line: 720, column: 34, scope: !1785)
!1885 = !DILocation(line: 720, column: 40, scope: !1785)
!1886 = !DILocation(line: 720, column: 37, scope: !1785)
!1887 = !DILocation(line: 720, column: 30, scope: !1785)
!1888 = !DILocation(line: 720, column: 25, scope: !1785)
!1889 = !DILocation(line: 720, column: 54, scope: !1785)
!1890 = !DILocation(line: 720, column: 60, scope: !1785)
!1891 = !DILocation(line: 720, column: 57, scope: !1785)
!1892 = !DILocation(line: 720, column: 50, scope: !1785)
!1893 = !DILocation(line: 720, column: 45, scope: !1785)
!1894 = !DILocation(line: 721, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 721, column: 13)
!1896 = !DILocation(line: 721, column: 13, scope: !1785)
!1897 = !DILocation(line: 723, column: 17, scope: !1785)
!1898 = !DILocation(line: 724, column: 14, scope: !1785)
!1899 = !DILocation(line: 724, column: 19, scope: !1785)
!1900 = !DILocation(line: 725, column: 10, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 725, column: 6)
!1902 = !DILocation(line: 725, column: 6, scope: !1785)
!1903 = !DILocation(line: 728, column: 2, scope: !1785)
!1904 = !DILocation(line: 0, scope: !345)
!1905 = !DILocation(line: 735, column: 26, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !345, file: !3, line: 735, column: 6)
!1907 = !DILocation(line: 735, column: 14, scope: !1906)
!1908 = !DILocation(line: 735, column: 63, scope: !1906)
!1909 = !DILocation(line: 735, column: 6, scope: !345)
!1910 = !DILocation(line: 738, column: 10, scope: !345)
!1911 = !DILocation(line: 738, column: 22, scope: !345)
!1912 = !DILocation(line: 738, column: 2, scope: !345)
!1913 = !DILocation(line: 739, column: 10, scope: !345)
!1914 = !DILocation(line: 739, column: 2, scope: !345)
!1915 = !DILocation(line: 740, column: 1, scope: !345)
!1916 = distinct !DISubprogram(name: "cap", scope: !3, file: !3, line: 742, type: !1917, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!36, !22, !241, !36, !36}
!1919 = !{!1920, !1921, !1922, !1923, !1924}
!1920 = !DILocalVariable(name: "mol", arg: 1, scope: !1916, file: !3, line: 742, type: !22)
!1921 = !DILocalVariable(name: "aex", arg: 2, scope: !1916, file: !3, line: 742, type: !241)
!1922 = !DILocalVariable(name: "five", arg: 3, scope: !1916, file: !3, line: 742, type: !36)
!1923 = !DILocalVariable(name: "three", arg: 4, scope: !1916, file: !3, line: 742, type: !36)
!1924 = !DILocalVariable(name: "sp", scope: !1916, file: !3, line: 744, type: !38)
!1925 = !DILocation(line: 0, scope: !1916)
!1926 = !DILocation(line: 746, column: 2, scope: !1916)
!1927 = !DILocation(line: 747, column: 17, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 747, column: 2)
!1929 = !DILocation(line: 747, column: 2, scope: !1928)
!1930 = !DILocation(line: 748, column: 11, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 748, column: 7)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 747, column: 49)
!1933 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 747, column: 2)
!1934 = !DILocation(line: 748, column: 23, scope: !1931)
!1935 = !DILocation(line: 748, column: 27, scope: !1931)
!1936 = !DILocation(line: 748, column: 36, scope: !1931)
!1937 = !DILocation(line: 748, column: 43, scope: !1931)
!1938 = !DILocation(line: 748, column: 7, scope: !1932)
!1939 = !DILocation(line: 749, column: 8, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 749, column: 8)
!1941 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 748, column: 58)
!1942 = !DILocation(line: 749, column: 8, scope: !1941)
!1943 = !DILocation(line: 750, column: 19, scope: !1940)
!1944 = !DILocation(line: 750, column: 15, scope: !1940)
!1945 = !DILocation(line: 750, column: 5, scope: !1940)
!1946 = !DILocation(line: 751, column: 8, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 751, column: 8)
!1948 = !DILocation(line: 751, column: 8, scope: !1941)
!1949 = !DILocation(line: 752, column: 20, scope: !1947)
!1950 = !DILocation(line: 752, column: 35, scope: !1947)
!1951 = !DILocation(line: 752, column: 46, scope: !1947)
!1952 = !DILocation(line: 752, column: 16, scope: !1947)
!1953 = !DILocation(line: 752, column: 5, scope: !1947)
!1954 = !DILocation(line: 747, column: 41, scope: !1933)
!1955 = distinct !{!1955, !1929, !1956}
!1956 = !DILocation(line: 754, column: 2, scope: !1928)
!1957 = !DILocation(line: 755, column: 7, scope: !1916)
!1958 = !DILocation(line: 755, column: 16, scope: !1916)
!1959 = !DILocation(line: 756, column: 2, scope: !1916)
!1960 = distinct !DISubprogram(name: "cvt_p2hb", scope: !3, file: !3, line: 1650, type: !1961, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !56}
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972}
!1964 = !DILocalVariable(name: "res", arg: 1, scope: !1960, file: !3, line: 1650, type: !56)
!1965 = !DILocalVariable(name: "p", scope: !1960, file: !3, line: 1652, type: !36)
!1966 = !DILocalVariable(name: "o5", scope: !1960, file: !3, line: 1652, type: !36)
!1967 = !DILocalVariable(name: "oxp", scope: !1960, file: !3, line: 1652, type: !36)
!1968 = !DILocalVariable(name: "dx", scope: !1960, file: !3, line: 1653, type: !30)
!1969 = !DILocalVariable(name: "dy", scope: !1960, file: !3, line: 1653, type: !30)
!1970 = !DILocalVariable(name: "dz", scope: !1960, file: !3, line: 1653, type: !30)
!1971 = !DILocalVariable(name: "f", scope: !1960, file: !3, line: 1653, type: !30)
!1972 = !DILocalVariable(name: "ap", scope: !1960, file: !3, line: 1654, type: !102)
!1973 = !DILocation(line: 0, scope: !1960)
!1974 = !DILocation(line: 1656, column: 6, scope: !1960)
!1975 = !DILocation(line: 1657, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 1657, column: 6)
!1977 = !DILocation(line: 1657, column: 39, scope: !1976)
!1978 = !DILocation(line: 1657, column: 6, scope: !1960)
!1979 = !DILocation(line: 1658, column: 8, scope: !1976)
!1980 = !DILocation(line: 1658, column: 3, scope: !1976)
!1981 = !DILocation(line: 0, scope: !1976)
!1982 = !DILocation(line: 1660, column: 9, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 1660, column: 6)
!1984 = !DILocation(line: 1660, column: 6, scope: !1960)
!1985 = !DILocation(line: 1663, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 1663, column: 7)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 1662, column: 23)
!1988 = distinct !DILexicalBlock(scope: !1983, file: !3, line: 1662, column: 11)
!1989 = !DILocation(line: 1663, column: 41, scope: !1986)
!1990 = !DILocation(line: 1663, column: 7, scope: !1987)
!1991 = !DILocation(line: 1664, column: 16, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 1664, column: 8)
!1993 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 1663, column: 51)
!1994 = !DILocation(line: 1664, column: 42, scope: !1992)
!1995 = !DILocation(line: 1664, column: 8, scope: !1993)
!1996 = !DILocation(line: 1665, column: 5, scope: !1992)
!1997 = !DILocation(line: 1667, column: 4, scope: !1986)
!1998 = !DILocation(line: 1668, column: 15, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 1668, column: 7)
!2000 = !DILocation(line: 1668, column: 41, scope: !1999)
!2001 = !DILocation(line: 1668, column: 7, scope: !1987)
!2002 = !DILocation(line: 1669, column: 16, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 1669, column: 8)
!2004 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 1668, column: 51)
!2005 = !DILocation(line: 1669, column: 42, scope: !2003)
!2006 = !DILocation(line: 1669, column: 8, scope: !2004)
!2007 = !DILocation(line: 1670, column: 5, scope: !2003)
!2008 = !DILocation(line: 1672, column: 4, scope: !1999)
!2009 = !DILocation(line: 1673, column: 14, scope: !1987)
!2010 = !DILocation(line: 1673, column: 9, scope: !1987)
!2011 = !DILocation(line: 1674, column: 15, scope: !1987)
!2012 = !DILocation(line: 1674, column: 3, scope: !1987)
!2013 = !DILocation(line: 1675, column: 14, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 1675, column: 7)
!2015 = !DILocation(line: 1675, column: 40, scope: !2014)
!2016 = !DILocation(line: 1675, column: 7, scope: !1987)
!2017 = !DILocation(line: 1676, column: 9, scope: !2014)
!2018 = !DILocation(line: 1676, column: 4, scope: !2014)
!2019 = !DILocation(line: 0, scope: !2014)
!2020 = !DILocation(line: 1678, column: 13, scope: !1987)
!2021 = !DILocation(line: 1678, column: 8, scope: !1987)
!2022 = !DILocation(line: 1679, column: 4, scope: !1987)
!2023 = !DILocation(line: 1678, column: 37, scope: !1987)
!2024 = !DILocation(line: 1680, column: 13, scope: !1987)
!2025 = !DILocation(line: 1680, column: 8, scope: !1987)
!2026 = !DILocation(line: 1681, column: 4, scope: !1987)
!2027 = !DILocation(line: 1680, column: 37, scope: !1987)
!2028 = !DILocation(line: 1682, column: 13, scope: !1987)
!2029 = !DILocation(line: 1682, column: 8, scope: !1987)
!2030 = !DILocation(line: 1683, column: 4, scope: !1987)
!2031 = !DILocation(line: 1682, column: 37, scope: !1987)
!2032 = !DILocation(line: 1684, column: 27, scope: !1987)
!2033 = !DILocation(line: 1684, column: 37, scope: !1987)
!2034 = !DILocation(line: 1684, column: 32, scope: !1987)
!2035 = !DILocation(line: 1684, column: 47, scope: !1987)
!2036 = !DILocation(line: 1684, column: 42, scope: !1987)
!2037 = !DILocation(line: 1684, column: 18, scope: !1987)
!2038 = !DILocation(line: 1684, column: 16, scope: !1987)
!2039 = !DILocation(line: 1685, column: 36, scope: !1987)
!2040 = !DILocation(line: 1686, column: 9, scope: !1987)
!2041 = !DILocation(line: 1686, column: 4, scope: !1987)
!2042 = !DILocation(line: 1685, column: 41, scope: !1987)
!2043 = !DILocation(line: 1685, column: 3, scope: !1987)
!2044 = !DILocation(line: 1685, column: 32, scope: !1987)
!2045 = !DILocation(line: 1687, column: 36, scope: !1987)
!2046 = !DILocation(line: 1688, column: 9, scope: !1987)
!2047 = !DILocation(line: 1688, column: 4, scope: !1987)
!2048 = !DILocation(line: 1687, column: 41, scope: !1987)
!2049 = !DILocation(line: 1687, column: 3, scope: !1987)
!2050 = !DILocation(line: 1687, column: 32, scope: !1987)
!2051 = !DILocation(line: 1689, column: 36, scope: !1987)
!2052 = !DILocation(line: 1690, column: 9, scope: !1987)
!2053 = !DILocation(line: 1690, column: 4, scope: !1987)
!2054 = !DILocation(line: 1689, column: 41, scope: !1987)
!2055 = !DILocation(line: 1689, column: 3, scope: !1987)
!2056 = !DILocation(line: 1689, column: 32, scope: !1987)
!2057 = !DILocation(line: 1691, column: 2, scope: !1987)
!2058 = !DILocation(line: 1692, column: 1, scope: !1960)
!2059 = distinct !DISubprogram(name: "add_he2o3", scope: !3, file: !3, line: 1694, type: !1961, scopeLine: 1695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077}
!2061 = !DILocalVariable(name: "res", arg: 1, scope: !2059, file: !3, line: 1694, type: !56)
!2062 = !DILocalVariable(name: "c3", scope: !2059, file: !3, line: 1696, type: !36)
!2063 = !DILocalVariable(name: "o3", scope: !2059, file: !3, line: 1696, type: !36)
!2064 = !DILocalVariable(name: "he", scope: !2059, file: !3, line: 1696, type: !36)
!2065 = !DILocalVariable(name: "dx", scope: !2059, file: !3, line: 1697, type: !30)
!2066 = !DILocalVariable(name: "dy", scope: !2059, file: !3, line: 1697, type: !30)
!2067 = !DILocalVariable(name: "dz", scope: !2059, file: !3, line: 1697, type: !30)
!2068 = !DILocalVariable(name: "dist", scope: !2059, file: !3, line: 1697, type: !30)
!2069 = !DILocalVariable(name: "cx", scope: !2059, file: !3, line: 1698, type: !30)
!2070 = !DILocalVariable(name: "cy", scope: !2059, file: !3, line: 1698, type: !30)
!2071 = !DILocalVariable(name: "cz", scope: !2059, file: !3, line: 1698, type: !30)
!2072 = !DILocalVariable(name: "sx", scope: !2059, file: !3, line: 1699, type: !30)
!2073 = !DILocalVariable(name: "sy", scope: !2059, file: !3, line: 1699, type: !30)
!2074 = !DILocalVariable(name: "sz", scope: !2059, file: !3, line: 1699, type: !30)
!2075 = !DILocalVariable(name: "f", scope: !2059, file: !3, line: 1700, type: !30)
!2076 = !DILocalVariable(name: "aph", scope: !2059, file: !3, line: 1701, type: !102)
!2077 = !DILocalVariable(name: "apo", scope: !2059, file: !3, line: 1701, type: !102)
!2078 = !DILocation(line: 0, scope: !2059)
!2079 = !DILocation(line: 1703, column: 6, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1703, column: 6)
!2081 = !DILocation(line: 1703, column: 29, scope: !2080)
!2082 = !DILocation(line: 1703, column: 6, scope: !2059)
!2083 = !DILocation(line: 1705, column: 13, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1705, column: 6)
!2085 = !DILocation(line: 1705, column: 39, scope: !2084)
!2086 = !DILocation(line: 1705, column: 6, scope: !2059)
!2087 = !DILocation(line: 1706, column: 8, scope: !2084)
!2088 = !DILocation(line: 1706, column: 3, scope: !2084)
!2089 = !DILocation(line: 0, scope: !2084)
!2090 = !DILocation(line: 1707, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1707, column: 6)
!2092 = !DILocation(line: 1707, column: 39, scope: !2091)
!2093 = !DILocation(line: 1707, column: 6, scope: !2059)
!2094 = !DILocation(line: 1708, column: 8, scope: !2091)
!2095 = !DILocation(line: 1708, column: 3, scope: !2091)
!2096 = !DILocation(line: 0, scope: !2091)
!2097 = !DILocation(line: 1710, column: 9, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1710, column: 6)
!2099 = !DILocation(line: 1710, column: 18, scope: !2098)
!2100 = !DILocation(line: 1713, column: 2, scope: !2059)
!2101 = !DILocation(line: 1714, column: 7, scope: !2059)
!2102 = !DILocation(line: 1715, column: 12, scope: !2059)
!2103 = !DILocation(line: 1715, column: 7, scope: !2059)
!2104 = !DILocation(line: 1716, column: 3, scope: !2059)
!2105 = !DILocation(line: 1715, column: 37, scope: !2059)
!2106 = !DILocation(line: 1717, column: 12, scope: !2059)
!2107 = !DILocation(line: 1717, column: 7, scope: !2059)
!2108 = !DILocation(line: 1718, column: 3, scope: !2059)
!2109 = !DILocation(line: 1717, column: 37, scope: !2059)
!2110 = !DILocation(line: 1719, column: 12, scope: !2059)
!2111 = !DILocation(line: 1719, column: 7, scope: !2059)
!2112 = !DILocation(line: 1720, column: 3, scope: !2059)
!2113 = !DILocation(line: 1719, column: 37, scope: !2059)
!2114 = !DILocation(line: 1721, column: 18, scope: !2059)
!2115 = !DILocation(line: 1721, column: 28, scope: !2059)
!2116 = !DILocation(line: 1721, column: 23, scope: !2059)
!2117 = !DILocation(line: 1721, column: 38, scope: !2059)
!2118 = !DILocation(line: 1721, column: 33, scope: !2059)
!2119 = !DILocation(line: 1721, column: 9, scope: !2059)
!2120 = !DILocation(line: 1722, column: 17, scope: !2059)
!2121 = !DILocation(line: 1722, column: 52, scope: !2059)
!2122 = !DILocation(line: 1723, column: 9, scope: !2059)
!2123 = !DILocation(line: 1724, column: 9, scope: !2059)
!2124 = !DILocation(line: 1725, column: 9, scope: !2059)
!2125 = !DILocation(line: 1726, column: 9, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1726, column: 6)
!2127 = !DILocation(line: 1726, column: 6, scope: !2059)
!2128 = !DILocation(line: 1728, column: 8, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1726, column: 17)
!2130 = !DILocation(line: 1728, column: 12, scope: !2129)
!2131 = !DILocation(line: 1730, column: 2, scope: !2129)
!2132 = !DILocation(line: 0, scope: !2126)
!2133 = !DILocation(line: 1735, column: 18, scope: !2059)
!2134 = !DILocation(line: 1735, column: 28, scope: !2059)
!2135 = !DILocation(line: 1735, column: 23, scope: !2059)
!2136 = !DILocation(line: 1735, column: 33, scope: !2059)
!2137 = !DILocation(line: 1735, column: 9, scope: !2059)
!2138 = !DILocation(line: 1736, column: 17, scope: !2059)
!2139 = !DILocation(line: 1736, column: 52, scope: !2059)
!2140 = !DILocation(line: 1737, column: 9, scope: !2059)
!2141 = !DILocation(line: 1738, column: 9, scope: !2059)
!2142 = !DILocation(line: 1739, column: 9, scope: !2059)
!2143 = !DILocation(line: 1741, column: 14, scope: !2059)
!2144 = !DILocation(line: 1741, column: 9, scope: !2059)
!2145 = !DILocation(line: 1742, column: 9, scope: !2059)
!2146 = !DILocation(line: 1743, column: 20, scope: !2059)
!2147 = !DILocation(line: 1743, column: 36, scope: !2059)
!2148 = !DILocation(line: 1743, column: 41, scope: !2059)
!2149 = !DILocation(line: 1743, column: 2, scope: !2059)
!2150 = !DILocation(line: 1743, column: 18, scope: !2059)
!2151 = !DILocation(line: 1744, column: 20, scope: !2059)
!2152 = !DILocation(line: 1744, column: 36, scope: !2059)
!2153 = !DILocation(line: 1744, column: 41, scope: !2059)
!2154 = !DILocation(line: 1744, column: 2, scope: !2059)
!2155 = !DILocation(line: 1744, column: 18, scope: !2059)
!2156 = !DILocation(line: 1745, column: 20, scope: !2059)
!2157 = !DILocation(line: 1745, column: 36, scope: !2059)
!2158 = !DILocation(line: 1745, column: 41, scope: !2059)
!2159 = !DILocation(line: 1745, column: 2, scope: !2059)
!2160 = !DILocation(line: 1745, column: 18, scope: !2059)
!2161 = !DILocation(line: 1746, column: 1, scope: !2059)
!2162 = distinct !DISubprogram(name: "copyextbonds", scope: !3, file: !3, line: 759, type: !2163, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!72, !56}
!2165 = !{!2166, !2167, !2168, !2169, !2170}
!2166 = !DILocalVariable(name: "res", arg: 1, scope: !2162, file: !3, line: 759, type: !56)
!2167 = !DILocalVariable(name: "ep", scope: !2162, file: !3, line: 761, type: !72)
!2168 = !DILocalVariable(name: "ep1", scope: !2162, file: !3, line: 761, type: !72)
!2169 = !DILocalVariable(name: "epo", scope: !2162, file: !3, line: 761, type: !72)
!2170 = !DILocalVariable(name: "epn", scope: !2162, file: !3, line: 761, type: !72)
!2171 = !DILocation(line: 0, scope: !2162)
!2172 = !DILocation(line: 763, column: 36, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 763, column: 2)
!2174 = !DILocation(line: 763, column: 2, scope: !2173)
!2175 = !DILocation(line: 764, column: 29, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 764, column: 7)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 763, column: 73)
!2178 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 763, column: 2)
!2179 = !DILocation(line: 764, column: 14, scope: !2176)
!2180 = !DILocation(line: 764, column: 61, scope: !2176)
!2181 = !DILocation(line: 764, column: 7, scope: !2177)
!2182 = !DILocation(line: 766, column: 4, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 765, column: 10)
!2184 = !DILocation(line: 767, column: 4, scope: !2183)
!2185 = !DILocation(line: 768, column: 4, scope: !2183)
!2186 = !DILocation(line: 770, column: 7, scope: !2177)
!2187 = !DILocation(line: 770, column: 15, scope: !2177)
!2188 = !DILocation(line: 771, column: 22, scope: !2177)
!2189 = !DILocation(line: 771, column: 7, scope: !2177)
!2190 = !DILocation(line: 771, column: 15, scope: !2177)
!2191 = !DILocation(line: 772, column: 22, scope: !2177)
!2192 = !DILocation(line: 772, column: 7, scope: !2177)
!2193 = !DILocation(line: 772, column: 15, scope: !2177)
!2194 = !DILocation(line: 773, column: 23, scope: !2177)
!2195 = !DILocation(line: 773, column: 7, scope: !2177)
!2196 = !DILocation(line: 773, column: 16, scope: !2177)
!2197 = !DILocation(line: 774, column: 11, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 774, column: 7)
!2199 = !DILocation(line: 774, column: 7, scope: !2177)
!2200 = !DILocation(line: 776, column: 11, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 776, column: 7)
!2202 = !DILocation(line: 776, column: 7, scope: !2177)
!2203 = !DILocation(line: 777, column: 17, scope: !2201)
!2204 = !DILocation(line: 777, column: 4, scope: !2201)
!2205 = !DILocation(line: 763, column: 64, scope: !2178)
!2206 = distinct !{!2206, !2174, !2207}
!2207 = !DILocation(line: 779, column: 2, scope: !2173)
!2208 = !DILocation(line: 782, column: 1, scope: !2162)
!2209 = distinct !DISubprogram(name: "setreskind", scope: !3, file: !3, line: 784, type: !2210, scopeLine: 785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!36, !22, !241, !241}
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2226}
!2213 = !DILocalVariable(name: "m", arg: 1, scope: !2209, file: !3, line: 784, type: !22)
!2214 = !DILocalVariable(name: "aexp", arg: 2, scope: !2209, file: !3, line: 784, type: !241)
!2215 = !DILocalVariable(name: "rkind", arg: 3, scope: !2209, file: !3, line: 784, type: !241)
!2216 = !DILocalVariable(name: "sp", scope: !2209, file: !3, line: 786, type: !38)
!2217 = !DILocalVariable(name: "res", scope: !2209, file: !3, line: 787, type: !56)
!2218 = !DILocalVariable(name: "r", scope: !2209, file: !3, line: 788, type: !36)
!2219 = !DILocalVariable(name: "rk", scope: !2209, file: !3, line: 789, type: !36)
!2220 = !DILocalVariable(name: "rp", scope: !2209, file: !3, line: 790, type: !241)
!2221 = !DILocalVariable(name: "tp", scope: !2209, file: !3, line: 790, type: !241)
!2222 = !DILocalVariable(name: "trkind", scope: !2209, file: !3, line: 790, type: !2223)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 10)
!2226 = !DILocalVariable(name: "__res", scope: !2227, file: !3, line: 793, type: !36)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 793, column: 28)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 792, column: 2)
!2229 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 792, column: 2)
!2230 = !DILocation(line: 0, scope: !2209)
!2231 = !DILocation(line: 790, column: 2, scope: !2209)
!2232 = !DILocation(line: 790, column: 17, scope: !2209)
!2233 = !DILocation(line: 792, column: 12, scope: !2229)
!2234 = !DILocation(line: 792, column: 32, scope: !2228)
!2235 = !{!457, !457, i64 0}
!2236 = !DILocation(line: 792, column: 2, scope: !2229)
!2237 = !DILocation(line: 793, column: 11, scope: !2228)
!2238 = !{!2239, !2239, i64 0}
!2239 = !{!"short", !457, i64 0}
!2240 = !DILocation(line: 793, column: 28, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 793, column: 28)
!2242 = !{!485, !485, i64 0}
!2243 = !DILocation(line: 0, scope: !2227)
!2244 = !DILocation(line: 793, column: 45, scope: !2228)
!2245 = !DILocation(line: 793, column: 6, scope: !2228)
!2246 = !DILocation(line: 793, column: 9, scope: !2228)
!2247 = !DILocation(line: 792, column: 39, scope: !2228)
!2248 = distinct !{!2248, !2236, !2249}
!2249 = !DILocation(line: 793, column: 46, scope: !2229)
!2250 = !DILocation(line: 0, scope: !2229)
!2251 = !DILocation(line: 794, column: 6, scope: !2209)
!2252 = !DILocation(line: 796, column: 15, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 796, column: 6)
!2254 = !DILocation(line: 796, column: 7, scope: !2253)
!2255 = !DILocation(line: 796, column: 6, scope: !2209)
!2256 = !DILocation(line: 798, column: 20, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 798, column: 11)
!2258 = !DILocation(line: 798, column: 12, scope: !2257)
!2259 = !DILocation(line: 798, column: 11, scope: !2253)
!2260 = !DILocation(line: 800, column: 20, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 800, column: 11)
!2262 = !DILocation(line: 800, column: 12, scope: !2261)
!2263 = !DILocation(line: 800, column: 11, scope: !2257)
!2264 = !DILocation(line: 803, column: 12, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 802, column: 6)
!2266 = !DILocation(line: 803, column: 3, scope: !2265)
!2267 = !DILocation(line: 0, scope: !2253)
!2268 = !DILocation(line: 808, column: 2, scope: !2209)
!2269 = !DILocation(line: 809, column: 15, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 809, column: 2)
!2271 = !DILocation(line: 809, column: 2, scope: !2270)
!2272 = !DILocation(line: 810, column: 23, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 810, column: 3)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 810, column: 3)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 809, column: 47)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 809, column: 2)
!2277 = !DILocation(line: 810, column: 17, scope: !2273)
!2278 = !DILocation(line: 810, column: 3, scope: !2274)
!2279 = !DILocation(line: 811, column: 14, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 810, column: 41)
!2281 = !DILocation(line: 811, column: 10, scope: !2280)
!2282 = !DILocation(line: 812, column: 13, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 812, column: 8)
!2284 = !DILocation(line: 812, column: 20, scope: !2283)
!2285 = !DILocation(line: 812, column: 8, scope: !2280)
!2286 = !DILocation(line: 813, column: 10, scope: !2283)
!2287 = !DILocation(line: 813, column: 17, scope: !2283)
!2288 = !{!517, !485, i64 44}
!2289 = !DILocation(line: 813, column: 5, scope: !2283)
!2290 = !DILocation(line: 810, column: 37, scope: !2273)
!2291 = distinct !{!2291, !2278, !2292}
!2292 = !DILocation(line: 814, column: 3, scope: !2274)
!2293 = !DILocation(line: 809, column: 39, scope: !2276)
!2294 = distinct !{!2294, !2271, !2295}
!2295 = !DILocation(line: 815, column: 2, scope: !2270)
!2296 = !DILocation(line: 817, column: 1, scope: !2209)
!2297 = !DILocation(line: 816, column: 2, scope: !2209)
!2298 = distinct !DISubprogram(name: "setxyz_from_mol", scope: !3, file: !3, line: 819, type: !2299, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!36, !2301, !2302, !2303}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2305 = !DILocalVariable(name: "m", arg: 1, scope: !2298, file: !3, line: 819, type: !2301)
!2306 = !DILocalVariable(name: "aex", arg: 2, scope: !2298, file: !3, line: 819, type: !2302)
!2307 = !DILocalVariable(name: "xyz", arg: 3, scope: !2298, file: !3, line: 819, type: !2303)
!2308 = !DILocalVariable(name: "r", scope: !2298, file: !3, line: 821, type: !36)
!2309 = !DILocalVariable(name: "a", scope: !2298, file: !3, line: 821, type: !36)
!2310 = !DILocalVariable(name: "n", scope: !2298, file: !3, line: 821, type: !36)
!2311 = !DILocalVariable(name: "sp", scope: !2298, file: !3, line: 822, type: !38)
!2312 = !DILocalVariable(name: "res", scope: !2298, file: !3, line: 823, type: !56)
!2313 = !DILocalVariable(name: "ap", scope: !2298, file: !3, line: 824, type: !102)
!2314 = !DILocation(line: 0, scope: !2298)
!2315 = !DILocation(line: 826, column: 16, scope: !2298)
!2316 = !DILocation(line: 826, column: 20, scope: !2298)
!2317 = !DILocation(line: 826, column: 26, scope: !2298)
!2318 = !DILocation(line: 826, column: 2, scope: !2298)
!2319 = !DILocation(line: 827, column: 20, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 827, column: 2)
!2321 = !DILocation(line: 827, column: 25, scope: !2320)
!2322 = !DILocation(line: 827, column: 2, scope: !2320)
!2323 = !DILocation(line: 828, column: 23, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 828, column: 3)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 828, column: 3)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 827, column: 57)
!2327 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 827, column: 2)
!2328 = !DILocation(line: 828, column: 17, scope: !2324)
!2329 = !DILocation(line: 828, column: 3, scope: !2325)
!2330 = !DILocation(line: 829, column: 14, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 828, column: 41)
!2332 = !DILocation(line: 829, column: 10, scope: !2331)
!2333 = !DILocation(line: 830, column: 25, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 830, column: 4)
!2335 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 830, column: 4)
!2336 = !DILocation(line: 830, column: 18, scope: !2334)
!2337 = !DILocation(line: 830, column: 4, scope: !2335)
!2338 = !DILocation(line: 831, column: 16, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 830, column: 40)
!2340 = !DILocation(line: 832, column: 13, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 832, column: 9)
!2342 = !DILocation(line: 832, column: 20, scope: !2341)
!2343 = !DILocation(line: 832, column: 9, scope: !2339)
!2344 = !DILocation(line: 833, column: 22, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 832, column: 33)
!2346 = !DILocation(line: 833, column: 6, scope: !2345)
!2347 = !DILocation(line: 833, column: 20, scope: !2345)
!2348 = !DILocation(line: 834, column: 22, scope: !2345)
!2349 = !DILocation(line: 834, column: 6, scope: !2345)
!2350 = !DILocation(line: 834, column: 20, scope: !2345)
!2351 = !DILocation(line: 835, column: 22, scope: !2345)
!2352 = !DILocation(line: 835, column: 6, scope: !2345)
!2353 = !DILocation(line: 835, column: 20, scope: !2345)
!2354 = !DILocation(line: 836, column: 7, scope: !2345)
!2355 = !DILocation(line: 837, column: 5, scope: !2345)
!2356 = !DILocation(line: 0, scope: !2320)
!2357 = !DILocation(line: 830, column: 36, scope: !2334)
!2358 = distinct !{!2358, !2337, !2359}
!2359 = !DILocation(line: 838, column: 4, scope: !2335)
!2360 = !DILocation(line: 828, column: 37, scope: !2324)
!2361 = distinct !{!2361, !2329, !2362}
!2362 = !DILocation(line: 839, column: 3, scope: !2325)
!2363 = !DILocation(line: 827, column: 9, scope: !2320)
!2364 = !DILocation(line: 827, column: 49, scope: !2327)
!2365 = distinct !{!2365, !2322, !2366}
!2366 = !DILocation(line: 840, column: 2, scope: !2320)
!2367 = !DILocation(line: 841, column: 2, scope: !2298)
!2368 = distinct !DISubprogram(name: "setxyzw_from_mol", scope: !3, file: !3, line: 844, type: !2369, scopeLine: 845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!36, !2301, !2302, !180}
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2372 = !DILocalVariable(name: "m", arg: 1, scope: !2368, file: !3, line: 844, type: !2301)
!2373 = !DILocalVariable(name: "aex", arg: 2, scope: !2368, file: !3, line: 844, type: !2302)
!2374 = !DILocalVariable(name: "xyzw", arg: 3, scope: !2368, file: !3, line: 844, type: !180)
!2375 = !DILocalVariable(name: "r", scope: !2368, file: !3, line: 846, type: !36)
!2376 = !DILocalVariable(name: "a", scope: !2368, file: !3, line: 846, type: !36)
!2377 = !DILocalVariable(name: "n", scope: !2368, file: !3, line: 846, type: !36)
!2378 = !DILocalVariable(name: "sp", scope: !2368, file: !3, line: 847, type: !38)
!2379 = !DILocalVariable(name: "res", scope: !2368, file: !3, line: 848, type: !56)
!2380 = !DILocalVariable(name: "ap", scope: !2368, file: !3, line: 849, type: !102)
!2381 = !DILocation(line: 0, scope: !2368)
!2382 = !DILocation(line: 851, column: 16, scope: !2368)
!2383 = !DILocation(line: 851, column: 20, scope: !2368)
!2384 = !DILocation(line: 851, column: 26, scope: !2368)
!2385 = !DILocation(line: 851, column: 2, scope: !2368)
!2386 = !DILocation(line: 852, column: 20, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 852, column: 2)
!2388 = !DILocation(line: 852, column: 25, scope: !2387)
!2389 = !DILocation(line: 852, column: 2, scope: !2387)
!2390 = !DILocation(line: 853, column: 23, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 853, column: 3)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 853, column: 3)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 852, column: 57)
!2394 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 852, column: 2)
!2395 = !DILocation(line: 853, column: 17, scope: !2391)
!2396 = !DILocation(line: 853, column: 3, scope: !2392)
!2397 = !DILocation(line: 854, column: 14, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 853, column: 41)
!2399 = !DILocation(line: 854, column: 10, scope: !2398)
!2400 = !DILocation(line: 855, column: 25, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 855, column: 4)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 855, column: 4)
!2403 = !DILocation(line: 855, column: 18, scope: !2401)
!2404 = !DILocation(line: 855, column: 4, scope: !2402)
!2405 = !DILocation(line: 856, column: 16, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 855, column: 40)
!2407 = !DILocation(line: 857, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 857, column: 9)
!2409 = !DILocation(line: 857, column: 20, scope: !2408)
!2410 = !DILocation(line: 857, column: 9, scope: !2406)
!2411 = !DILocation(line: 858, column: 24, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 857, column: 33)
!2413 = !DILocation(line: 858, column: 13, scope: !2412)
!2414 = !DILocation(line: 858, column: 6, scope: !2412)
!2415 = !DILocation(line: 858, column: 22, scope: !2412)
!2416 = !DILocation(line: 859, column: 24, scope: !2412)
!2417 = !DILocation(line: 859, column: 13, scope: !2412)
!2418 = !DILocation(line: 859, column: 16, scope: !2412)
!2419 = !DILocation(line: 859, column: 6, scope: !2412)
!2420 = !DILocation(line: 859, column: 22, scope: !2412)
!2421 = !DILocation(line: 860, column: 24, scope: !2412)
!2422 = !DILocation(line: 860, column: 13, scope: !2412)
!2423 = !DILocation(line: 860, column: 16, scope: !2412)
!2424 = !DILocation(line: 860, column: 6, scope: !2412)
!2425 = !DILocation(line: 860, column: 22, scope: !2412)
!2426 = !DILocation(line: 861, column: 28, scope: !2412)
!2427 = !{!575, !456, i64 168}
!2428 = !DILocation(line: 861, column: 13, scope: !2412)
!2429 = !DILocation(line: 861, column: 16, scope: !2412)
!2430 = !DILocation(line: 861, column: 6, scope: !2412)
!2431 = !DILocation(line: 861, column: 22, scope: !2412)
!2432 = !DILocation(line: 862, column: 7, scope: !2412)
!2433 = !DILocation(line: 863, column: 5, scope: !2412)
!2434 = !DILocation(line: 0, scope: !2387)
!2435 = !DILocation(line: 855, column: 36, scope: !2401)
!2436 = distinct !{!2436, !2404, !2437}
!2437 = !DILocation(line: 864, column: 4, scope: !2402)
!2438 = !DILocation(line: 853, column: 37, scope: !2391)
!2439 = distinct !{!2439, !2396, !2440}
!2440 = !DILocation(line: 865, column: 3, scope: !2392)
!2441 = !DILocation(line: 852, column: 9, scope: !2387)
!2442 = !DILocation(line: 852, column: 49, scope: !2394)
!2443 = distinct !{!2443, !2389, !2444}
!2444 = !DILocation(line: 866, column: 2, scope: !2387)
!2445 = !DILocation(line: 867, column: 2, scope: !2368)
!2446 = distinct !DISubprogram(name: "setmol_from_xyz", scope: !3, file: !3, line: 870, type: !2369, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2447)
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456}
!2448 = !DILocalVariable(name: "m", arg: 1, scope: !2446, file: !3, line: 870, type: !2301)
!2449 = !DILocalVariable(name: "aex", arg: 2, scope: !2446, file: !3, line: 870, type: !2302)
!2450 = !DILocalVariable(name: "xyz", arg: 3, scope: !2446, file: !3, line: 870, type: !180)
!2451 = !DILocalVariable(name: "r", scope: !2446, file: !3, line: 872, type: !36)
!2452 = !DILocalVariable(name: "a", scope: !2446, file: !3, line: 872, type: !36)
!2453 = !DILocalVariable(name: "n", scope: !2446, file: !3, line: 872, type: !36)
!2454 = !DILocalVariable(name: "sp", scope: !2446, file: !3, line: 873, type: !38)
!2455 = !DILocalVariable(name: "res", scope: !2446, file: !3, line: 874, type: !56)
!2456 = !DILocalVariable(name: "ap", scope: !2446, file: !3, line: 875, type: !102)
!2457 = !DILocation(line: 0, scope: !2446)
!2458 = !DILocation(line: 877, column: 16, scope: !2446)
!2459 = !DILocation(line: 877, column: 20, scope: !2446)
!2460 = !DILocation(line: 877, column: 26, scope: !2446)
!2461 = !DILocation(line: 877, column: 2, scope: !2446)
!2462 = !DILocation(line: 878, column: 20, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 878, column: 2)
!2464 = !DILocation(line: 878, column: 25, scope: !2463)
!2465 = !DILocation(line: 878, column: 2, scope: !2463)
!2466 = !DILocation(line: 879, column: 23, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 879, column: 3)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 879, column: 3)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 878, column: 57)
!2470 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 878, column: 2)
!2471 = !DILocation(line: 879, column: 17, scope: !2467)
!2472 = !DILocation(line: 879, column: 3, scope: !2468)
!2473 = !DILocation(line: 880, column: 14, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 879, column: 41)
!2475 = !DILocation(line: 880, column: 10, scope: !2474)
!2476 = !DILocation(line: 881, column: 25, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 881, column: 4)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 881, column: 4)
!2479 = !DILocation(line: 881, column: 18, scope: !2477)
!2480 = !DILocation(line: 881, column: 4, scope: !2478)
!2481 = !DILocation(line: 882, column: 16, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 881, column: 40)
!2483 = !DILocation(line: 883, column: 13, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 883, column: 9)
!2485 = !DILocation(line: 883, column: 20, scope: !2484)
!2486 = !DILocation(line: 883, column: 9, scope: !2482)
!2487 = !DILocation(line: 884, column: 29, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 883, column: 33)
!2489 = !DILocation(line: 884, column: 23, scope: !2488)
!2490 = !DILocation(line: 884, column: 6, scope: !2488)
!2491 = !DILocation(line: 884, column: 21, scope: !2488)
!2492 = !DILocation(line: 885, column: 29, scope: !2488)
!2493 = !DILocation(line: 885, column: 32, scope: !2488)
!2494 = !DILocation(line: 885, column: 23, scope: !2488)
!2495 = !DILocation(line: 885, column: 6, scope: !2488)
!2496 = !DILocation(line: 885, column: 21, scope: !2488)
!2497 = !DILocation(line: 886, column: 29, scope: !2488)
!2498 = !DILocation(line: 886, column: 32, scope: !2488)
!2499 = !DILocation(line: 886, column: 23, scope: !2488)
!2500 = !DILocation(line: 886, column: 6, scope: !2488)
!2501 = !DILocation(line: 886, column: 21, scope: !2488)
!2502 = !DILocation(line: 887, column: 7, scope: !2488)
!2503 = !DILocation(line: 888, column: 5, scope: !2488)
!2504 = !DILocation(line: 0, scope: !2463)
!2505 = !DILocation(line: 881, column: 36, scope: !2477)
!2506 = distinct !{!2506, !2480, !2507}
!2507 = !DILocation(line: 889, column: 4, scope: !2478)
!2508 = !DILocation(line: 879, column: 37, scope: !2467)
!2509 = distinct !{!2509, !2472, !2510}
!2510 = !DILocation(line: 890, column: 3, scope: !2468)
!2511 = !DILocation(line: 878, column: 9, scope: !2463)
!2512 = !DILocation(line: 878, column: 49, scope: !2470)
!2513 = distinct !{!2513, !2465, !2514}
!2514 = !DILocation(line: 891, column: 2, scope: !2463)
!2515 = !DILocation(line: 892, column: 2, scope: !2446)
!2516 = distinct !DISubprogram(name: "setmol_from_xyzw", scope: !3, file: !3, line: 895, type: !2369, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526}
!2518 = !DILocalVariable(name: "m", arg: 1, scope: !2516, file: !3, line: 895, type: !2301)
!2519 = !DILocalVariable(name: "aex", arg: 2, scope: !2516, file: !3, line: 895, type: !2302)
!2520 = !DILocalVariable(name: "xyzw", arg: 3, scope: !2516, file: !3, line: 895, type: !180)
!2521 = !DILocalVariable(name: "r", scope: !2516, file: !3, line: 897, type: !36)
!2522 = !DILocalVariable(name: "a", scope: !2516, file: !3, line: 897, type: !36)
!2523 = !DILocalVariable(name: "n", scope: !2516, file: !3, line: 897, type: !36)
!2524 = !DILocalVariable(name: "sp", scope: !2516, file: !3, line: 898, type: !38)
!2525 = !DILocalVariable(name: "res", scope: !2516, file: !3, line: 899, type: !56)
!2526 = !DILocalVariable(name: "ap", scope: !2516, file: !3, line: 900, type: !102)
!2527 = !DILocation(line: 0, scope: !2516)
!2528 = !DILocation(line: 902, column: 16, scope: !2516)
!2529 = !DILocation(line: 902, column: 20, scope: !2516)
!2530 = !DILocation(line: 902, column: 26, scope: !2516)
!2531 = !DILocation(line: 902, column: 2, scope: !2516)
!2532 = !DILocation(line: 903, column: 20, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 903, column: 2)
!2534 = !DILocation(line: 903, column: 25, scope: !2533)
!2535 = !DILocation(line: 903, column: 2, scope: !2533)
!2536 = !DILocation(line: 904, column: 23, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 904, column: 3)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 904, column: 3)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 903, column: 57)
!2540 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 903, column: 2)
!2541 = !DILocation(line: 904, column: 17, scope: !2537)
!2542 = !DILocation(line: 904, column: 3, scope: !2538)
!2543 = !DILocation(line: 905, column: 14, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 904, column: 41)
!2545 = !DILocation(line: 905, column: 10, scope: !2544)
!2546 = !DILocation(line: 906, column: 25, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 906, column: 4)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 906, column: 4)
!2549 = !DILocation(line: 906, column: 18, scope: !2547)
!2550 = !DILocation(line: 906, column: 4, scope: !2548)
!2551 = !DILocation(line: 907, column: 16, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 906, column: 40)
!2553 = !DILocation(line: 908, column: 13, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 908, column: 9)
!2555 = !DILocation(line: 908, column: 20, scope: !2554)
!2556 = !DILocation(line: 908, column: 9, scope: !2552)
!2557 = !DILocation(line: 909, column: 30, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 908, column: 33)
!2559 = !DILocation(line: 909, column: 23, scope: !2558)
!2560 = !DILocation(line: 909, column: 6, scope: !2558)
!2561 = !DILocation(line: 909, column: 21, scope: !2558)
!2562 = !DILocation(line: 910, column: 30, scope: !2558)
!2563 = !DILocation(line: 910, column: 33, scope: !2558)
!2564 = !DILocation(line: 910, column: 23, scope: !2558)
!2565 = !DILocation(line: 910, column: 6, scope: !2558)
!2566 = !DILocation(line: 910, column: 21, scope: !2558)
!2567 = !DILocation(line: 911, column: 30, scope: !2558)
!2568 = !DILocation(line: 911, column: 33, scope: !2558)
!2569 = !DILocation(line: 911, column: 23, scope: !2558)
!2570 = !DILocation(line: 911, column: 6, scope: !2558)
!2571 = !DILocation(line: 911, column: 21, scope: !2558)
!2572 = !DILocation(line: 912, column: 30, scope: !2558)
!2573 = !DILocation(line: 912, column: 33, scope: !2558)
!2574 = !DILocation(line: 912, column: 23, scope: !2558)
!2575 = !DILocation(line: 912, column: 10, scope: !2558)
!2576 = !DILocation(line: 912, column: 21, scope: !2558)
!2577 = !DILocation(line: 913, column: 7, scope: !2558)
!2578 = !DILocation(line: 914, column: 5, scope: !2558)
!2579 = !DILocation(line: 0, scope: !2533)
!2580 = !DILocation(line: 906, column: 36, scope: !2547)
!2581 = distinct !{!2581, !2550, !2582}
!2582 = !DILocation(line: 915, column: 4, scope: !2548)
!2583 = !DILocation(line: 904, column: 37, scope: !2537)
!2584 = distinct !{!2584, !2542, !2585}
!2585 = !DILocation(line: 916, column: 3, scope: !2538)
!2586 = !DILocation(line: 903, column: 9, scope: !2533)
!2587 = !DILocation(line: 903, column: 49, scope: !2540)
!2588 = distinct !{!2588, !2535, !2589}
!2589 = !DILocation(line: 917, column: 2, scope: !2533)
!2590 = !DILocation(line: 918, column: 2, scope: !2516)
!2591 = distinct !DISubprogram(name: "NAB_ainit", scope: !3, file: !3, line: 921, type: !2592, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!36, !2302, !36}
!2594 = !{!2595, !2596, !2597}
!2595 = !DILocalVariable(name: "a", arg: 1, scope: !2591, file: !3, line: 921, type: !2302)
!2596 = !DILocalVariable(name: "s", arg: 2, scope: !2591, file: !3, line: 921, type: !36)
!2597 = !DILocalVariable(name: "i", scope: !2591, file: !3, line: 923, type: !36)
!2598 = !DILocation(line: 0, scope: !2591)
!2599 = !DILocation(line: 925, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 925, column: 2)
!2601 = !DILocation(line: 925, column: 16, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 925, column: 2)
!2603 = !DILocation(line: 925, column: 2, scope: !2600)
!2604 = !DILocation(line: 926, column: 3, scope: !2602)
!2605 = !DILocation(line: 926, column: 10, scope: !2602)
!2606 = !DILocation(line: 925, column: 22, scope: !2602)
!2607 = distinct !{!2607, !2603, !2608}
!2608 = !DILocation(line: 926, column: 12, scope: !2600)
!2609 = !DILocation(line: 927, column: 2, scope: !2591)
!2610 = distinct !DISubprogram(name: "NAB_initres", scope: !3, file: !3, line: 930, type: !1334, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2611)
!2611 = !{!2612, !2613}
!2612 = !DILocalVariable(name: "res", arg: 1, scope: !2610, file: !3, line: 930, type: !56)
!2613 = !DILocalVariable(name: "init_str", arg: 2, scope: !2610, file: !3, line: 930, type: !36)
!2614 = !DILocation(line: 0, scope: !2610)
!2615 = !DILocation(line: 933, column: 7, scope: !2610)
!2616 = !DILocation(line: 933, column: 14, scope: !2610)
!2617 = !{!517, !486, i64 0}
!2618 = !DILocation(line: 934, column: 7, scope: !2610)
!2619 = !DILocation(line: 934, column: 13, scope: !2610)
!2620 = !{!517, !485, i64 8}
!2621 = !DILocation(line: 935, column: 7, scope: !2610)
!2622 = !DILocation(line: 935, column: 17, scope: !2610)
!2623 = !DILocation(line: 936, column: 7, scope: !2610)
!2624 = !DILocation(line: 936, column: 16, scope: !2610)
!2625 = !DILocation(line: 937, column: 6, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 937, column: 6)
!2627 = !DILocation(line: 937, column: 6, scope: !2610)
!2628 = !DILocation(line: 938, column: 8, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 937, column: 16)
!2630 = !DILocation(line: 938, column: 18, scope: !2629)
!2631 = !DILocation(line: 939, column: 8, scope: !2629)
!2632 = !DILocation(line: 939, column: 16, scope: !2629)
!2633 = !DILocation(line: 940, column: 2, scope: !2629)
!2634 = !DILocation(line: 941, column: 7, scope: !2610)
!2635 = !DILocation(line: 941, column: 14, scope: !2610)
!2636 = !DILocation(line: 942, column: 7, scope: !2610)
!2637 = !DILocation(line: 942, column: 14, scope: !2610)
!2638 = !DILocation(line: 943, column: 7, scope: !2610)
!2639 = !DILocation(line: 943, column: 18, scope: !2610)
!2640 = !{!517, !485, i64 48}
!2641 = !DILocation(line: 944, column: 7, scope: !2610)
!2642 = !DILocation(line: 944, column: 16, scope: !2610)
!2643 = !DILocation(line: 945, column: 7, scope: !2610)
!2644 = !DILocation(line: 945, column: 18, scope: !2610)
!2645 = !DILocation(line: 946, column: 7, scope: !2610)
!2646 = !DILocation(line: 946, column: 19, scope: !2610)
!2647 = !{!517, !485, i64 72}
!2648 = !DILocation(line: 947, column: 7, scope: !2610)
!2649 = !DILocation(line: 947, column: 18, scope: !2610)
!2650 = !DILocation(line: 948, column: 7, scope: !2610)
!2651 = !DILocation(line: 948, column: 18, scope: !2610)
!2652 = !DILocation(line: 949, column: 7, scope: !2610)
!2653 = !DILocation(line: 949, column: 17, scope: !2610)
!2654 = !{!517, !485, i64 88}
!2655 = !DILocation(line: 950, column: 7, scope: !2610)
!2656 = !DILocation(line: 950, column: 16, scope: !2610)
!2657 = !DILocation(line: 951, column: 7, scope: !2610)
!2658 = !DILocation(line: 951, column: 16, scope: !2610)
!2659 = !DILocation(line: 952, column: 7, scope: !2610)
!2660 = !DILocation(line: 952, column: 16, scope: !2610)
!2661 = !DILocation(line: 953, column: 7, scope: !2610)
!2662 = !DILocation(line: 953, column: 15, scope: !2610)
!2663 = !DILocation(line: 954, column: 1, scope: !2610)
!2664 = distinct !DISubprogram(name: "NAB_initatom", scope: !3, file: !3, line: 956, type: !2665, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !102, !36}
!2667 = !{!2668, !2669, !2670}
!2668 = !DILocalVariable(name: "ap", arg: 1, scope: !2664, file: !3, line: 956, type: !102)
!2669 = !DILocalVariable(name: "init_str", arg: 2, scope: !2664, file: !3, line: 956, type: !36)
!2670 = !DILocalVariable(name: "i", scope: !2664, file: !3, line: 958, type: !36)
!2671 = !DILocation(line: 0, scope: !2664)
!2672 = !DILocation(line: 960, column: 6, scope: !2664)
!2673 = !DILocation(line: 961, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 960, column: 6)
!2675 = !DILocation(line: 961, column: 18, scope: !2674)
!2676 = !DILocation(line: 963, column: 7, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 962, column: 6)
!2678 = !DILocation(line: 963, column: 18, scope: !2677)
!2679 = !DILocation(line: 963, column: 3, scope: !2677)
!2680 = !DILocation(line: 964, column: 6, scope: !2664)
!2681 = !DILocation(line: 964, column: 17, scope: !2664)
!2682 = !DILocation(line: 965, column: 6, scope: !2664)
!2683 = !DILocation(line: 965, column: 17, scope: !2664)
!2684 = !{!575, !485, i64 20}
!2685 = !DILocation(line: 966, column: 2, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 966, column: 2)
!2687 = !DILocation(line: 967, column: 3, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 966, column: 2)
!2689 = !DILocation(line: 967, column: 22, scope: !2688)
!2690 = !DILocation(line: 966, column: 35, scope: !2688)
!2691 = !DILocation(line: 966, column: 16, scope: !2688)
!2692 = distinct !{!2692, !2685, !2693}
!2693 = !DILocation(line: 967, column: 24, scope: !2686)
!2694 = !DILocation(line: 968, column: 6, scope: !2664)
!2695 = !DILocation(line: 968, column: 17, scope: !2664)
!2696 = !{!575, !486, i64 56}
!2697 = !DILocation(line: 969, column: 6, scope: !2664)
!2698 = !DILocation(line: 969, column: 17, scope: !2664)
!2699 = !{!575, !456, i64 64}
!2700 = !DILocation(line: 970, column: 6, scope: !2664)
!2701 = !DILocation(line: 970, column: 17, scope: !2664)
!2702 = !{!575, !456, i64 72}
!2703 = !DILocation(line: 971, column: 6, scope: !2664)
!2704 = !DILocation(line: 971, column: 17, scope: !2664)
!2705 = !{!575, !456, i64 80}
!2706 = !DILocation(line: 972, column: 6, scope: !2664)
!2707 = !DILocation(line: 972, column: 17, scope: !2664)
!2708 = !{!575, !456, i64 88}
!2709 = !DILocation(line: 973, column: 6, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 973, column: 6)
!2711 = !DILocation(line: 973, column: 6, scope: !2664)
!2712 = !DILocation(line: 974, column: 7, scope: !2710)
!2713 = !DILocation(line: 974, column: 17, scope: !2710)
!2714 = !DILocation(line: 974, column: 3, scope: !2710)
!2715 = !DILocation(line: 975, column: 6, scope: !2664)
!2716 = !DILocation(line: 975, column: 17, scope: !2664)
!2717 = !{!575, !485, i64 104}
!2718 = !DILocation(line: 976, column: 6, scope: !2664)
!2719 = !DILocation(line: 976, column: 17, scope: !2664)
!2720 = !{!575, !456, i64 112}
!2721 = !DILocation(line: 977, column: 6, scope: !2664)
!2722 = !DILocation(line: 977, column: 17, scope: !2664)
!2723 = !{!575, !456, i64 120}
!2724 = !DILocation(line: 978, column: 6, scope: !2664)
!2725 = !DILocation(line: 978, column: 17, scope: !2664)
!2726 = !DILocation(line: 979, column: 6, scope: !2664)
!2727 = !DILocation(line: 979, column: 17, scope: !2664)
!2728 = !DILocation(line: 980, column: 6, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 980, column: 6)
!2730 = !DILocation(line: 980, column: 6, scope: !2664)
!2731 = !DILocation(line: 981, column: 7, scope: !2729)
!2732 = !DILocation(line: 981, column: 18, scope: !2729)
!2733 = !DILocation(line: 981, column: 3, scope: !2729)
!2734 = !DILocation(line: 982, column: 2, scope: !2664)
!2735 = !DILocation(line: 982, column: 17, scope: !2664)
!2736 = !DILocation(line: 983, column: 2, scope: !2664)
!2737 = !DILocation(line: 983, column: 17, scope: !2664)
!2738 = !DILocation(line: 984, column: 2, scope: !2664)
!2739 = !DILocation(line: 984, column: 17, scope: !2664)
!2740 = !DILocation(line: 985, column: 6, scope: !2664)
!2741 = !DILocation(line: 985, column: 17, scope: !2664)
!2742 = !DILocation(line: 986, column: 1, scope: !2664)
!2743 = distinct !DISubprogram(name: "NAB_mnext", scope: !3, file: !3, line: 988, type: !2744, scopeLine: 989, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!102, !22, !102}
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754}
!2747 = !DILocalVariable(name: "mol", arg: 1, scope: !2743, file: !3, line: 988, type: !22)
!2748 = !DILocalVariable(name: "cap", arg: 2, scope: !2743, file: !3, line: 988, type: !102)
!2749 = !DILocalVariable(name: "sp", scope: !2743, file: !3, line: 990, type: !38)
!2750 = !DILocalVariable(name: "res", scope: !2743, file: !3, line: 991, type: !56)
!2751 = !DILocalVariable(name: "ap", scope: !2743, file: !3, line: 992, type: !102)
!2752 = !DILocalVariable(name: "r", scope: !2743, file: !3, line: 993, type: !36)
!2753 = !DILocalVariable(name: "nr", scope: !2743, file: !3, line: 993, type: !36)
!2754 = !DILocalVariable(name: "a", scope: !2743, file: !3, line: 993, type: !36)
!2755 = !DILocation(line: 0, scope: !2743)
!2756 = !DILocation(line: 995, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 995, column: 6)
!2758 = !DILocation(line: 995, column: 6, scope: !2743)
!2759 = !DILocation(line: 996, column: 18, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 996, column: 3)
!2761 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 995, column: 12)
!2762 = !DILocation(line: 996, column: 8, scope: !2760)
!2763 = !DILocation(line: 0, scope: !2760)
!2764 = !DILocation(line: 997, column: 4, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 996, column: 3)
!2766 = !DILocation(line: 997, column: 7, scope: !2765)
!2767 = !DILocation(line: 997, column: 14, scope: !2765)
!2768 = !DILocation(line: 997, column: 26, scope: !2765)
!2769 = !DILocation(line: 996, column: 3, scope: !2760)
!2770 = !DILocation(line: 997, column: 41, scope: !2765)
!2771 = !DILocation(line: 996, column: 3, scope: !2765)
!2772 = distinct !{!2772, !2769, !2773}
!2773 = !DILocation(line: 998, column: 4, scope: !2760)
!2774 = !DILocation(line: 999, column: 8, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 999, column: 7)
!2776 = !DILocation(line: 999, column: 7, scope: !2761)
!2777 = !DILocation(line: 1001, column: 13, scope: !2761)
!2778 = !DILocation(line: 1001, column: 9, scope: !2761)
!2779 = !DILocation(line: 1002, column: 14, scope: !2761)
!2780 = !DILocation(line: 1003, column: 3, scope: !2761)
!2781 = !DILocation(line: 1005, column: 14, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 1004, column: 7)
!2783 = !DILocation(line: 1006, column: 18, scope: !2782)
!2784 = !DILocation(line: 1006, column: 11, scope: !2782)
!2785 = !DILocation(line: 1006, column: 7, scope: !2782)
!2786 = !DILocation(line: 1007, column: 16, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1007, column: 7)
!2788 = !DILocation(line: 1007, column: 9, scope: !2787)
!2789 = !DILocation(line: 1007, column: 7, scope: !2782)
!2790 = !DILocation(line: 1008, column: 15, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1007, column: 26)
!2792 = !DILocation(line: 1008, column: 10, scope: !2791)
!2793 = !DILocation(line: 1009, column: 4, scope: !2791)
!2794 = !DILocation(line: 1012, column: 13, scope: !2782)
!2795 = !DILocation(line: 1013, column: 17, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1013, column: 3)
!2797 = !DILocation(line: 1013, column: 45, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 1013, column: 3)
!2799 = !DILocation(line: 1013, column: 39, scope: !2798)
!2800 = !DILocation(line: 1013, column: 3, scope: !2796)
!2801 = !DILocation(line: 1014, column: 12, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 1014, column: 8)
!2803 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1013, column: 63)
!2804 = !DILocation(line: 1014, column: 8, scope: !2802)
!2805 = !DILocation(line: 1014, column: 28, scope: !2802)
!2806 = !DILocation(line: 1014, column: 8, scope: !2803)
!2807 = !DILocation(line: 1015, column: 12, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 1014, column: 36)
!2809 = !DILocation(line: 1016, column: 5, scope: !2808)
!2810 = !DILocation(line: 1013, column: 59, scope: !2798)
!2811 = distinct !{!2811, !2800, !2812}
!2812 = !DILocation(line: 1018, column: 3, scope: !2796)
!2813 = !DILocation(line: 0, scope: !2796)
!2814 = !DILocation(line: 1019, column: 16, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1019, column: 7)
!2816 = !DILocation(line: 1019, column: 10, scope: !2815)
!2817 = !DILocation(line: 1019, column: 7, scope: !2782)
!2818 = !DILocation(line: 1020, column: 14, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 1019, column: 29)
!2820 = !DILocation(line: 1020, column: 10, scope: !2819)
!2821 = !DILocation(line: 1021, column: 15, scope: !2819)
!2822 = !DILocation(line: 1022, column: 4, scope: !2819)
!2823 = !DILocation(line: 1025, column: 8, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1025, column: 3)
!2825 = !DILocation(line: 0, scope: !2824)
!2826 = !DILocation(line: 1026, column: 4, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1025, column: 3)
!2828 = !DILocation(line: 1026, column: 7, scope: !2827)
!2829 = !DILocation(line: 1026, column: 14, scope: !2827)
!2830 = !DILocation(line: 1026, column: 26, scope: !2827)
!2831 = !DILocation(line: 1025, column: 3, scope: !2824)
!2832 = !DILocation(line: 1025, column: 3, scope: !2827)
!2833 = distinct !{!2833, !2831, !2834}
!2834 = !DILocation(line: 1027, column: 4, scope: !2824)
!2835 = !DILocation(line: 1028, column: 8, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1028, column: 7)
!2837 = !DILocation(line: 1028, column: 7, scope: !2782)
!2838 = !DILocation(line: 1030, column: 13, scope: !2782)
!2839 = !DILocation(line: 1030, column: 9, scope: !2782)
!2840 = !DILocation(line: 1031, column: 14, scope: !2782)
!2841 = !DILocation(line: 1032, column: 3, scope: !2782)
!2842 = !DILocation(line: 0, scope: !2757)
!2843 = !DILocation(line: 1034, column: 1, scope: !2743)
!2844 = distinct !DISubprogram(name: "NAB_rnext", scope: !3, file: !3, line: 1036, type: !2845, scopeLine: 1037, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!56, !22, !56}
!2847 = !{!2848, !2849, !2850, !2851, !2852, !2853}
!2848 = !DILocalVariable(name: "mol", arg: 1, scope: !2844, file: !3, line: 1036, type: !22)
!2849 = !DILocalVariable(name: "crp", arg: 2, scope: !2844, file: !3, line: 1036, type: !56)
!2850 = !DILocalVariable(name: "sp", scope: !2844, file: !3, line: 1038, type: !38)
!2851 = !DILocalVariable(name: "res", scope: !2844, file: !3, line: 1039, type: !56)
!2852 = !DILocalVariable(name: "r", scope: !2844, file: !3, line: 1040, type: !36)
!2853 = !DILocalVariable(name: "nr", scope: !2844, file: !3, line: 1040, type: !36)
!2854 = !DILocation(line: 0, scope: !2844)
!2855 = !DILocation(line: 1042, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 1042, column: 6)
!2857 = !DILocation(line: 1042, column: 6, scope: !2844)
!2858 = !DILocation(line: 1043, column: 18, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 1043, column: 3)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1042, column: 12)
!2861 = !DILocation(line: 1043, column: 8, scope: !2859)
!2862 = !DILocation(line: 0, scope: !2859)
!2863 = !DILocation(line: 1044, column: 4, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1043, column: 3)
!2865 = !DILocation(line: 1044, column: 7, scope: !2864)
!2866 = !DILocation(line: 1044, column: 14, scope: !2864)
!2867 = !DILocation(line: 1044, column: 26, scope: !2864)
!2868 = !DILocation(line: 1043, column: 3, scope: !2859)
!2869 = !DILocation(line: 1044, column: 41, scope: !2864)
!2870 = !DILocation(line: 1043, column: 3, scope: !2864)
!2871 = distinct !{!2871, !2868, !2872}
!2872 = !DILocation(line: 1045, column: 4, scope: !2859)
!2873 = !DILocation(line: 1046, column: 8, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 1046, column: 7)
!2875 = !DILocation(line: 1046, column: 7, scope: !2860)
!2876 = !DILocation(line: 1048, column: 13, scope: !2860)
!2877 = !DILocation(line: 1048, column: 9, scope: !2860)
!2878 = !DILocation(line: 1049, column: 3, scope: !2860)
!2879 = !DILocation(line: 1052, column: 13, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1050, column: 7)
!2881 = !DILocation(line: 1053, column: 17, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1053, column: 3)
!2883 = !DILocation(line: 1053, column: 45, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 1053, column: 3)
!2885 = !DILocation(line: 1053, column: 39, scope: !2884)
!2886 = !DILocation(line: 1053, column: 3, scope: !2882)
!2887 = !DILocation(line: 1054, column: 12, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1054, column: 8)
!2889 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1053, column: 63)
!2890 = !DILocation(line: 1054, column: 8, scope: !2888)
!2891 = !DILocation(line: 1054, column: 28, scope: !2888)
!2892 = !DILocation(line: 1054, column: 8, scope: !2889)
!2893 = !DILocation(line: 1055, column: 12, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1054, column: 36)
!2895 = !DILocation(line: 1056, column: 5, scope: !2894)
!2896 = !DILocation(line: 1053, column: 59, scope: !2884)
!2897 = distinct !{!2897, !2886, !2898}
!2898 = !DILocation(line: 1058, column: 3, scope: !2882)
!2899 = !DILocation(line: 0, scope: !2882)
!2900 = !DILocation(line: 1059, column: 16, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1059, column: 7)
!2902 = !DILocation(line: 1059, column: 10, scope: !2901)
!2903 = !DILocation(line: 1059, column: 7, scope: !2880)
!2904 = !DILocation(line: 1060, column: 14, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 1059, column: 29)
!2906 = !DILocation(line: 1060, column: 10, scope: !2905)
!2907 = !DILocation(line: 1061, column: 4, scope: !2905)
!2908 = !DILocation(line: 1064, column: 8, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1064, column: 3)
!2910 = !DILocation(line: 0, scope: !2909)
!2911 = !DILocation(line: 1065, column: 4, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 1064, column: 3)
!2913 = !DILocation(line: 1065, column: 7, scope: !2912)
!2914 = !DILocation(line: 1065, column: 14, scope: !2912)
!2915 = !DILocation(line: 1065, column: 26, scope: !2912)
!2916 = !DILocation(line: 1064, column: 3, scope: !2909)
!2917 = !DILocation(line: 1064, column: 3, scope: !2912)
!2918 = distinct !{!2918, !2916, !2919}
!2919 = !DILocation(line: 1066, column: 4, scope: !2909)
!2920 = !DILocation(line: 1067, column: 8, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1067, column: 7)
!2922 = !DILocation(line: 1067, column: 7, scope: !2880)
!2923 = !DILocation(line: 1069, column: 13, scope: !2880)
!2924 = !DILocation(line: 1069, column: 9, scope: !2880)
!2925 = !DILocation(line: 1070, column: 3, scope: !2880)
!2926 = !DILocation(line: 0, scope: !2856)
!2927 = !DILocation(line: 1072, column: 1, scope: !2844)
!2928 = distinct !DISubprogram(name: "NAB_anext", scope: !3, file: !3, line: 1074, type: !2929, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!102, !56, !102}
!2931 = !{!2932, !2933, !2934, !2935}
!2932 = !DILocalVariable(name: "res", arg: 1, scope: !2928, file: !3, line: 1074, type: !56)
!2933 = !DILocalVariable(name: "cap", arg: 2, scope: !2928, file: !3, line: 1074, type: !102)
!2934 = !DILocalVariable(name: "ap", scope: !2928, file: !3, line: 1076, type: !102)
!2935 = !DILocalVariable(name: "na", scope: !2928, file: !3, line: 1077, type: !36)
!2936 = !DILocation(line: 0, scope: !2928)
!2937 = !DILocation(line: 1079, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 1079, column: 6)
!2939 = !DILocation(line: 1079, column: 6, scope: !2928)
!2940 = !DILocation(line: 1080, column: 13, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 1079, column: 12)
!2942 = !DILocation(line: 1081, column: 3, scope: !2941)
!2943 = !DILocation(line: 1084, column: 21, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 1082, column: 7)
!2945 = !DILocation(line: 1084, column: 14, scope: !2944)
!2946 = !DILocation(line: 1084, column: 8, scope: !2944)
!2947 = !DILocation(line: 1085, column: 17, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 1085, column: 7)
!2949 = !DILocation(line: 1085, column: 10, scope: !2948)
!2950 = !DILocation(line: 1085, column: 7, scope: !2944)
!2951 = !DILocation(line: 1086, column: 15, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 1085, column: 27)
!2953 = !DILocation(line: 1086, column: 10, scope: !2952)
!2954 = !DILocation(line: 1087, column: 4, scope: !2952)
!2955 = !DILocation(line: 0, scope: !2938)
!2956 = !DILocation(line: 1091, column: 1, scope: !2928)
!2957 = distinct !DISubprogram(name: "NAB_mri", scope: !3, file: !3, line: 1093, type: !2958, scopeLine: 1094, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!277, !22, !241}
!2960 = !{!2961, !2962}
!2961 = !DILocalVariable(name: "mol", arg: 1, scope: !2957, file: !3, line: 1093, type: !22)
!2962 = !DILocalVariable(name: "key", arg: 2, scope: !2957, file: !3, line: 1093, type: !241)
!2963 = !DILocation(line: 0, scope: !2957)
!2964 = !DILocation(line: 1096, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 1096, column: 6)
!2966 = !DILocation(line: 1096, column: 6, scope: !2957)
!2967 = !DILocation(line: 1097, column: 13, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 1097, column: 7)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 1096, column: 34)
!2970 = !DILocation(line: 1097, column: 8, scope: !2968)
!2971 = !DILocation(line: 1097, column: 7, scope: !2969)
!2972 = !DILocation(line: 1098, column: 4, scope: !2968)
!2973 = !DILocation(line: 1099, column: 17, scope: !2969)
!2974 = !DILocation(line: 1099, column: 3, scope: !2969)
!2975 = !DILocation(line: 1100, column: 13, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 1100, column: 12)
!2977 = !DILocation(line: 1100, column: 12, scope: !2965)
!2978 = !DILocation(line: 1101, column: 13, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1101, column: 7)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 1100, column: 41)
!2981 = !DILocation(line: 1101, column: 8, scope: !2979)
!2982 = !DILocation(line: 1101, column: 7, scope: !2980)
!2983 = !DILocation(line: 1102, column: 4, scope: !2979)
!2984 = !DILocation(line: 1103, column: 17, scope: !2980)
!2985 = !DILocation(line: 1103, column: 3, scope: !2980)
!2986 = !DILocation(line: 1104, column: 13, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 1104, column: 12)
!2988 = !DILocation(line: 1104, column: 12, scope: !2976)
!2989 = !DILocation(line: 1105, column: 13, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1105, column: 7)
!2991 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 1104, column: 38)
!2992 = !DILocation(line: 1105, column: 8, scope: !2990)
!2993 = !DILocation(line: 1105, column: 7, scope: !2991)
!2994 = !DILocation(line: 1106, column: 4, scope: !2990)
!2995 = !DILocation(line: 1107, column: 17, scope: !2991)
!2996 = !DILocation(line: 1107, column: 3, scope: !2991)
!2997 = !DILocation(line: 1109, column: 12, scope: !2987)
!2998 = !DILocation(line: 1109, column: 3, scope: !2987)
!2999 = !DILocation(line: 1110, column: 2, scope: !2957)
!3000 = !DILocation(line: 1111, column: 1, scope: !2957)
!3001 = !DILocation(line: 0, scope: !352)
!3002 = !DILocation(line: 1119, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !352, file: !3, line: 1119, column: 6)
!3004 = !DILocation(line: 1119, column: 6, scope: !352)
!3005 = !DILocation(line: 1120, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1119, column: 32)
!3007 = !DILocation(line: 1121, column: 12, scope: !3006)
!3008 = !DILocation(line: 1122, column: 12, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 1122, column: 7)
!3010 = !DILocation(line: 1122, column: 8, scope: !3009)
!3011 = !DILocation(line: 1122, column: 7, scope: !3006)
!3012 = !DILocation(line: 1123, column: 4, scope: !3009)
!3013 = !DILocation(line: 1124, column: 17, scope: !3006)
!3014 = !DILocation(line: 1124, column: 3, scope: !3006)
!3015 = !DILocation(line: 1125, column: 13, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1125, column: 12)
!3017 = !DILocation(line: 1125, column: 12, scope: !3003)
!3018 = !DILocation(line: 1126, column: 13, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 1125, column: 39)
!3020 = !DILocation(line: 1127, column: 12, scope: !3019)
!3021 = !DILocation(line: 1128, column: 12, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1128, column: 7)
!3023 = !DILocation(line: 1128, column: 8, scope: !3022)
!3024 = !DILocation(line: 1128, column: 7, scope: !3019)
!3025 = !DILocation(line: 1129, column: 4, scope: !3022)
!3026 = !DILocation(line: 1130, column: 17, scope: !3019)
!3027 = !DILocation(line: 1130, column: 3, scope: !3019)
!3028 = !DILocation(line: 1131, column: 13, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 1131, column: 12)
!3030 = !DILocation(line: 1131, column: 12, scope: !3016)
!3031 = !DILocation(line: 1132, column: 13, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 1131, column: 41)
!3033 = !DILocation(line: 1133, column: 12, scope: !3032)
!3034 = !DILocation(line: 1134, column: 12, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1134, column: 7)
!3036 = !DILocation(line: 1134, column: 8, scope: !3035)
!3037 = !DILocation(line: 1134, column: 7, scope: !3032)
!3038 = !DILocation(line: 1135, column: 4, scope: !3035)
!3039 = !DILocation(line: 1136, column: 16, scope: !3032)
!3040 = !DILocation(line: 1136, column: 3, scope: !3032)
!3041 = !DILocation(line: 1138, column: 12, scope: !3029)
!3042 = !DILocation(line: 1138, column: 3, scope: !3029)
!3043 = !DILocation(line: 1139, column: 9, scope: !352)
!3044 = !DILocation(line: 1140, column: 2, scope: !352)
!3045 = !DILocation(line: 1141, column: 1, scope: !352)
!3046 = distinct !DISubprogram(name: "NAB_rrc", scope: !3, file: !3, line: 1143, type: !3047, scopeLine: 1144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!2302, !56, !241}
!3049 = !{!3050, !3051, !3052}
!3050 = !DILocalVariable(name: "res", arg: 1, scope: !3046, file: !3, line: 1143, type: !56)
!3051 = !DILocalVariable(name: "key", arg: 2, scope: !3046, file: !3, line: 1143, type: !241)
!3052 = !DILocalVariable(name: "sp", scope: !3046, file: !3, line: 1145, type: !38)
!3053 = !DILocation(line: 0, scope: !3046)
!3054 = !DILocation(line: 1147, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1147, column: 6)
!3056 = !DILocation(line: 1147, column: 6, scope: !3046)
!3057 = !DILocation(line: 1148, column: 17, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 1147, column: 33)
!3059 = !DILocation(line: 1148, column: 3, scope: !3058)
!3060 = !DILocation(line: 1149, column: 13, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 1149, column: 12)
!3062 = !DILocation(line: 1149, column: 12, scope: !3055)
!3063 = !DILocation(line: 1150, column: 17, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 1149, column: 37)
!3065 = !DILocation(line: 1150, column: 3, scope: !3064)
!3066 = !DILocation(line: 1151, column: 13, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 1151, column: 12)
!3068 = !DILocation(line: 1151, column: 12, scope: !3061)
!3069 = !DILocation(line: 1152, column: 13, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1151, column: 42)
!3071 = !DILocation(line: 1153, column: 16, scope: !3070)
!3072 = !DILocation(line: 1153, column: 3, scope: !3070)
!3073 = !DILocation(line: 1155, column: 12, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1154, column: 7)
!3075 = !DILocation(line: 1155, column: 3, scope: !3074)
!3076 = !DILocation(line: 1156, column: 3, scope: !3074)
!3077 = !DILocation(line: 0, scope: !3055)
!3078 = !DILocation(line: 1158, column: 1, scope: !3046)
!3079 = !DILocation(line: 0, scope: !362)
!3080 = !DILocation(line: 1167, column: 7, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !362, file: !3, line: 1167, column: 6)
!3082 = !DILocation(line: 1167, column: 6, scope: !362)
!3083 = !DILocation(line: 1168, column: 13, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1167, column: 35)
!3085 = !DILocation(line: 1169, column: 13, scope: !3084)
!3086 = !DILocation(line: 1170, column: 12, scope: !3084)
!3087 = !DILocation(line: 1171, column: 12, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 1171, column: 7)
!3089 = !DILocation(line: 1171, column: 8, scope: !3088)
!3090 = !DILocation(line: 1171, column: 7, scope: !3084)
!3091 = !DILocation(line: 1172, column: 4, scope: !3088)
!3092 = !DILocation(line: 1173, column: 16, scope: !3084)
!3093 = !DILocation(line: 1173, column: 3, scope: !3084)
!3094 = !DILocation(line: 1174, column: 13, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1174, column: 12)
!3096 = !DILocation(line: 1174, column: 12, scope: !3081)
!3097 = !DILocation(line: 1175, column: 13, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1174, column: 38)
!3099 = !DILocation(line: 1176, column: 13, scope: !3098)
!3100 = !DILocation(line: 1177, column: 12, scope: !3098)
!3101 = !DILocation(line: 1178, column: 12, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 1178, column: 7)
!3103 = !DILocation(line: 1178, column: 8, scope: !3102)
!3104 = !DILocation(line: 1178, column: 7, scope: !3098)
!3105 = !DILocation(line: 1179, column: 4, scope: !3102)
!3106 = !DILocation(line: 1180, column: 17, scope: !3098)
!3107 = !DILocation(line: 1180, column: 3, scope: !3098)
!3108 = !DILocation(line: 1181, column: 13, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1181, column: 12)
!3110 = !DILocation(line: 1181, column: 12, scope: !3095)
!3111 = !DILocation(line: 1182, column: 13, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 1181, column: 39)
!3113 = !DILocation(line: 1183, column: 13, scope: !3112)
!3114 = !DILocation(line: 1184, column: 12, scope: !3112)
!3115 = !DILocation(line: 1185, column: 12, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 1185, column: 7)
!3117 = !DILocation(line: 1185, column: 8, scope: !3116)
!3118 = !DILocation(line: 1185, column: 7, scope: !3112)
!3119 = !DILocation(line: 1186, column: 4, scope: !3116)
!3120 = !DILocation(line: 1187, column: 17, scope: !3112)
!3121 = !DILocation(line: 1187, column: 3, scope: !3112)
!3122 = !DILocation(line: 1188, column: 13, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 1188, column: 12)
!3124 = !DILocation(line: 1188, column: 12, scope: !3109)
!3125 = !DILocation(line: 1189, column: 13, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 1188, column: 39)
!3127 = !DILocation(line: 1190, column: 13, scope: !3126)
!3128 = !DILocation(line: 1191, column: 12, scope: !3126)
!3129 = !DILocation(line: 1192, column: 12, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 1192, column: 7)
!3131 = !DILocation(line: 1192, column: 8, scope: !3130)
!3132 = !DILocation(line: 1192, column: 7, scope: !3126)
!3133 = !DILocation(line: 1193, column: 4, scope: !3130)
!3134 = !DILocation(line: 1194, column: 16, scope: !3126)
!3135 = !DILocation(line: 1194, column: 3, scope: !3126)
!3136 = !DILocation(line: 1195, column: 13, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 1195, column: 12)
!3138 = !DILocation(line: 1195, column: 12, scope: !3123)
!3139 = !DILocation(line: 1196, column: 13, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1195, column: 40)
!3141 = !DILocation(line: 1197, column: 13, scope: !3140)
!3142 = !DILocation(line: 1198, column: 12, scope: !3140)
!3143 = !DILocation(line: 1199, column: 12, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1199, column: 7)
!3145 = !DILocation(line: 1199, column: 8, scope: !3144)
!3146 = !DILocation(line: 1199, column: 7, scope: !3140)
!3147 = !DILocation(line: 1200, column: 4, scope: !3144)
!3148 = !DILocation(line: 1201, column: 16, scope: !3140)
!3149 = !DILocation(line: 1201, column: 3, scope: !3140)
!3150 = !DILocation(line: 1202, column: 13, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1202, column: 12)
!3152 = !DILocation(line: 1202, column: 12, scope: !3137)
!3153 = !DILocation(line: 1203, column: 16, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 1202, column: 36)
!3155 = !DILocation(line: 1203, column: 3, scope: !3154)
!3156 = !DILocation(line: 1205, column: 12, scope: !3151)
!3157 = !DILocation(line: 1205, column: 3, scope: !3151)
!3158 = !DILocation(line: 1206, column: 9, scope: !362)
!3159 = !DILocation(line: 1207, column: 2, scope: !362)
!3160 = !DILocation(line: 1208, column: 1, scope: !362)
!3161 = !DILocation(line: 0, scope: !373)
!3162 = !DILocation(line: 1214, column: 7, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1214, column: 6)
!3164 = !DILocation(line: 1214, column: 6, scope: !373)
!3165 = !DILocation(line: 1215, column: 12, scope: !3163)
!3166 = !DILocation(line: 1215, column: 3, scope: !3163)
!3167 = !DILocation(line: 1216, column: 12, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 1216, column: 11)
!3169 = !DILocation(line: 1216, column: 11, scope: !3163)
!3170 = !DILocation(line: 1217, column: 12, scope: !3168)
!3171 = !DILocation(line: 1217, column: 3, scope: !3168)
!3172 = !DILocation(line: 1218, column: 12, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 1218, column: 11)
!3174 = !DILocation(line: 1218, column: 11, scope: !3168)
!3175 = !DILocation(line: 1219, column: 12, scope: !3173)
!3176 = !DILocation(line: 1219, column: 3, scope: !3173)
!3177 = !DILocation(line: 1220, column: 12, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 1220, column: 11)
!3179 = !DILocation(line: 1220, column: 11, scope: !3173)
!3180 = !DILocation(line: 1221, column: 16, scope: !3178)
!3181 = !DILocation(line: 1221, column: 3, scope: !3178)
!3182 = !DILocation(line: 1222, column: 12, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1222, column: 11)
!3184 = !DILocation(line: 1222, column: 11, scope: !3178)
!3185 = !DILocation(line: 1223, column: 16, scope: !3183)
!3186 = !DILocation(line: 1223, column: 3, scope: !3183)
!3187 = !DILocation(line: 1224, column: 12, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 1224, column: 11)
!3189 = !DILocation(line: 1224, column: 11, scope: !3183)
!3190 = !DILocation(line: 1225, column: 16, scope: !3188)
!3191 = !DILocation(line: 1225, column: 3, scope: !3188)
!3192 = !DILocation(line: 1226, column: 12, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 1226, column: 11)
!3194 = !DILocation(line: 1226, column: 11, scope: !3188)
!3195 = !DILocation(line: 1227, column: 16, scope: !3193)
!3196 = !DILocation(line: 1227, column: 3, scope: !3193)
!3197 = !DILocation(line: 1229, column: 12, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 1228, column: 6)
!3199 = !DILocation(line: 1229, column: 3, scope: !3198)
!3200 = !DILocation(line: 1230, column: 5, scope: !3198)
!3201 = !DILocation(line: 1231, column: 3, scope: !3198)
!3202 = !DILocation(line: 0, scope: !3163)
!3203 = !DILocation(line: 1233, column: 1, scope: !373)
!3204 = distinct !DISubprogram(name: "NAB_arc", scope: !3, file: !3, line: 1235, type: !3205, scopeLine: 1236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3207)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!2302, !102, !241}
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216}
!3208 = !DILocalVariable(name: "ap", arg: 1, scope: !3204, file: !3, line: 1235, type: !102)
!3209 = !DILocalVariable(name: "key", arg: 2, scope: !3204, file: !3, line: 1235, type: !241)
!3210 = !DILocalVariable(name: "res", scope: !3204, file: !3, line: 1237, type: !56)
!3211 = !DILocalVariable(name: "sp", scope: !3204, file: !3, line: 1238, type: !38)
!3212 = !DILocalVariable(name: "sp1", scope: !3204, file: !3, line: 1238, type: !38)
!3213 = !DILocalVariable(name: "mp", scope: !3204, file: !3, line: 1239, type: !22)
!3214 = !DILocalVariable(name: "s", scope: !3204, file: !3, line: 1240, type: !36)
!3215 = !DILocalVariable(name: "r", scope: !3204, file: !3, line: 1240, type: !36)
!3216 = !DILocalVariable(name: "name", scope: !3204, file: !3, line: 1241, type: !3217)
!3217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 800, elements: !3218)
!3218 = !{!3219}
!3219 = !DISubrange(count: 100)
!3220 = !DILocation(line: 0, scope: !3204)
!3221 = !DILocation(line: 1241, column: 2, scope: !3204)
!3222 = !DILocation(line: 1241, column: 7, scope: !3204)
!3223 = !DILocation(line: 1243, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1243, column: 6)
!3225 = !DILocation(line: 1243, column: 6, scope: !3204)
!3226 = !DILocation(line: 1244, column: 16, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1243, column: 34)
!3228 = !DILocation(line: 1244, column: 3, scope: !3227)
!3229 = !DILocation(line: 1245, column: 13, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1245, column: 12)
!3231 = !DILocation(line: 1245, column: 12, scope: !3224)
!3232 = !DILocation(line: 1246, column: 13, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1245, column: 39)
!3234 = !DILocation(line: 1247, column: 17, scope: !3233)
!3235 = !DILocation(line: 1247, column: 3, scope: !3233)
!3236 = !DILocation(line: 1248, column: 13, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1248, column: 12)
!3238 = !DILocation(line: 1248, column: 12, scope: !3230)
!3239 = !DILocation(line: 1249, column: 13, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 1248, column: 37)
!3241 = !DILocation(line: 1250, column: 17, scope: !3240)
!3242 = !DILocation(line: 1250, column: 3, scope: !3240)
!3243 = !DILocation(line: 1251, column: 13, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 1251, column: 12)
!3245 = !DILocation(line: 1251, column: 12, scope: !3237)
!3246 = !DILocation(line: 1252, column: 13, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1251, column: 42)
!3248 = !DILocation(line: 1253, column: 13, scope: !3247)
!3249 = !DILocation(line: 1254, column: 16, scope: !3247)
!3250 = !DILocation(line: 1254, column: 3, scope: !3247)
!3251 = !DILocation(line: 1255, column: 13, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3244, file: !3, line: 1255, column: 12)
!3253 = !DILocation(line: 1255, column: 12, scope: !3244)
!3254 = !DILocation(line: 1256, column: 13, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1255, column: 40)
!3256 = !DILocation(line: 1257, column: 13, scope: !3255)
!3257 = !DILocation(line: 1258, column: 12, scope: !3255)
!3258 = !DILocation(line: 1259, column: 3, scope: !3255)
!3259 = !DILocation(line: 1260, column: 23, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 1260, column: 3)
!3261 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1260, column: 3)
!3262 = !DILocation(line: 1260, column: 17, scope: !3260)
!3263 = !DILocation(line: 1260, column: 3, scope: !3261)
!3264 = !DILocation(line: 1261, column: 12, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1261, column: 8)
!3266 = !DILocation(line: 1261, column: 8, scope: !3265)
!3267 = !DILocation(line: 1261, column: 28, scope: !3265)
!3268 = !DILocation(line: 1261, column: 8, scope: !3260)
!3269 = !DILocation(line: 1262, column: 5, scope: !3265)
!3270 = !DILocation(line: 1260, column: 37, scope: !3260)
!3271 = distinct !{!3271, !3263, !3272}
!3272 = !DILocation(line: 1262, column: 5, scope: !3261)
!3273 = !DILocation(line: 1263, column: 25, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1263, column: 3)
!3275 = !DILocation(line: 0, scope: !3255)
!3276 = !DILocation(line: 1263, column: 3, scope: !3274)
!3277 = !DILocation(line: 1264, column: 5, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 1263, column: 60)
!3279 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 1263, column: 3)
!3280 = !DILocation(line: 1265, column: 12, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 1265, column: 8)
!3282 = !DILocation(line: 1265, column: 8, scope: !3278)
!3283 = !DILocation(line: 1263, column: 52, scope: !3279)
!3284 = distinct !{!3284, !3276, !3285}
!3285 = !DILocation(line: 1267, column: 3, scope: !3274)
!3286 = !DILocation(line: 0, scope: !3274)
!3287 = !DILocation(line: 1268, column: 12, scope: !3255)
!3288 = !DILocation(line: 1268, column: 35, scope: !3255)
!3289 = !DILocation(line: 1268, column: 44, scope: !3255)
!3290 = !DILocation(line: 1268, column: 3, scope: !3255)
!3291 = !DILocation(line: 1269, column: 11, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1269, column: 7)
!3293 = !DILocation(line: 1269, column: 7, scope: !3292)
!3294 = !DILocation(line: 1269, column: 7, scope: !3255)
!3295 = !DILocation(line: 1270, column: 14, scope: !3292)
!3296 = !DILocation(line: 1270, column: 4, scope: !3292)
!3297 = !DILocation(line: 1271, column: 47, scope: !3255)
!3298 = !DILocation(line: 1271, column: 39, scope: !3255)
!3299 = !DILocation(line: 1271, column: 54, scope: !3255)
!3300 = !DILocation(line: 1271, column: 30, scope: !3255)
!3301 = !DILocation(line: 1271, column: 7, scope: !3255)
!3302 = !DILocation(line: 1271, column: 18, scope: !3255)
!3303 = !DILocation(line: 1272, column: 27, scope: !3255)
!3304 = !DILocation(line: 1272, column: 3, scope: !3255)
!3305 = !DILocation(line: 1273, column: 16, scope: !3255)
!3306 = !DILocation(line: 1273, column: 3, scope: !3255)
!3307 = !DILocation(line: 1275, column: 12, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 1274, column: 7)
!3309 = !DILocation(line: 1275, column: 3, scope: !3308)
!3310 = !DILocation(line: 1276, column: 3, scope: !3308)
!3311 = !DILocation(line: 0, scope: !3224)
!3312 = !DILocation(line: 1278, column: 1, scope: !3204)
!3313 = distinct !DISubprogram(name: "NAB_arp", scope: !3, file: !3, line: 1280, type: !3314, scopeLine: 1281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!2303, !102, !241}
!3316 = !{!3317, !3318, !3319}
!3317 = !DILocalVariable(name: "ap", arg: 1, scope: !3313, file: !3, line: 1280, type: !102)
!3318 = !DILocalVariable(name: "key", arg: 2, scope: !3313, file: !3, line: 1280, type: !241)
!3319 = !DILocalVariable(name: "temp", scope: !3313, file: !3, line: 1282, type: !237)
!3320 = !DILocation(line: 0, scope: !3313)
!3321 = !DILocation(line: 1284, column: 9, scope: !3313)
!3322 = !DILocation(line: 1285, column: 8, scope: !3313)
!3323 = !DILocation(line: 1285, column: 2, scope: !3313)
!3324 = !DILocation(line: 0, scope: !381)
!3325 = !DILocation(line: 1319, column: 2, scope: !381)
!3326 = !DILocation(line: 1319, column: 11, scope: !381)
!3327 = !DILocation(line: 1319, column: 17, scope: !381)
!3328 = !DILocation(line: 1319, column: 24, scope: !381)
!3329 = !DILocation(line: 1324, column: 2, scope: !381)
!3330 = !DILocation(line: 1325, column: 15, scope: !381)
!3331 = !DILocation(line: 1326, column: 15, scope: !381)
!3332 = !DILocation(line: 1327, column: 15, scope: !381)
!3333 = !DILocation(line: 1329, column: 12, scope: !381)
!3334 = !DILocation(line: 1329, column: 2, scope: !381)
!3335 = !DILocation(line: 1330, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1330, column: 6)
!3337 = !DILocation(line: 1330, column: 6, scope: !381)
!3338 = !DILocation(line: 1331, column: 13, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1330, column: 17)
!3340 = !DILocation(line: 1331, column: 3, scope: !3339)
!3341 = !DILocation(line: 1332, column: 29, scope: !3339)
!3342 = !DILocation(line: 1332, column: 20, scope: !3339)
!3343 = !DILocation(line: 1332, column: 3, scope: !3339)
!3344 = !DILocation(line: 1332, column: 18, scope: !3339)
!3345 = !DILocation(line: 1333, column: 30, scope: !3339)
!3346 = !DILocation(line: 1333, column: 21, scope: !3339)
!3347 = !DILocation(line: 1333, column: 20, scope: !3339)
!3348 = !DILocation(line: 1333, column: 3, scope: !3339)
!3349 = !DILocation(line: 1333, column: 18, scope: !3339)
!3350 = !DILocation(line: 1334, column: 29, scope: !3339)
!3351 = !DILocation(line: 1334, column: 20, scope: !3339)
!3352 = !DILocation(line: 1334, column: 3, scope: !3339)
!3353 = !DILocation(line: 1334, column: 18, scope: !3339)
!3354 = !DILocation(line: 1335, column: 29, scope: !3339)
!3355 = !DILocation(line: 1335, column: 20, scope: !3339)
!3356 = !DILocation(line: 1335, column: 3, scope: !3339)
!3357 = !DILocation(line: 1335, column: 18, scope: !3339)
!3358 = !DILocation(line: 1336, column: 15, scope: !3339)
!3359 = !DILocation(line: 1336, column: 21, scope: !3339)
!3360 = !DILocation(line: 1336, column: 28, scope: !3339)
!3361 = !DILocation(line: 1336, column: 3, scope: !3339)
!3362 = !DILocation(line: 1337, column: 13, scope: !3339)
!3363 = !DILocation(line: 1337, column: 19, scope: !3339)
!3364 = !DILocation(line: 1337, column: 3, scope: !3339)
!3365 = !DILocation(line: 1338, column: 2, scope: !3339)
!3366 = !DILocation(line: 1339, column: 9, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1339, column: 6)
!3368 = !DILocation(line: 1339, column: 6, scope: !381)
!3369 = !DILocation(line: 1340, column: 13, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 1339, column: 17)
!3371 = !DILocation(line: 1340, column: 3, scope: !3370)
!3372 = !DILocation(line: 1341, column: 29, scope: !3370)
!3373 = !DILocation(line: 1341, column: 20, scope: !3370)
!3374 = !DILocation(line: 1341, column: 3, scope: !3370)
!3375 = !DILocation(line: 1341, column: 18, scope: !3370)
!3376 = !DILocation(line: 1346, column: 30, scope: !3370)
!3377 = !DILocation(line: 1346, column: 21, scope: !3370)
!3378 = !DILocation(line: 1346, column: 20, scope: !3370)
!3379 = !DILocation(line: 1346, column: 3, scope: !3370)
!3380 = !DILocation(line: 1346, column: 18, scope: !3370)
!3381 = !DILocation(line: 1347, column: 29, scope: !3370)
!3382 = !DILocation(line: 1347, column: 20, scope: !3370)
!3383 = !DILocation(line: 1347, column: 3, scope: !3370)
!3384 = !DILocation(line: 1347, column: 18, scope: !3370)
!3385 = !DILocation(line: 1348, column: 29, scope: !3370)
!3386 = !DILocation(line: 1348, column: 20, scope: !3370)
!3387 = !DILocation(line: 1348, column: 3, scope: !3370)
!3388 = !DILocation(line: 1348, column: 18, scope: !3370)
!3389 = !DILocation(line: 1349, column: 15, scope: !3370)
!3390 = !DILocation(line: 1349, column: 21, scope: !3370)
!3391 = !DILocation(line: 1349, column: 28, scope: !3370)
!3392 = !DILocation(line: 1349, column: 3, scope: !3370)
!3393 = !DILocation(line: 1350, column: 13, scope: !3370)
!3394 = !DILocation(line: 1350, column: 19, scope: !3370)
!3395 = !DILocation(line: 1350, column: 3, scope: !3370)
!3396 = !DILocation(line: 1351, column: 2, scope: !3370)
!3397 = !DILocation(line: 1352, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1352, column: 6)
!3399 = !DILocation(line: 1352, column: 6, scope: !381)
!3400 = !DILocation(line: 1353, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 1352, column: 17)
!3402 = !DILocation(line: 1353, column: 3, scope: !3401)
!3403 = !DILocation(line: 1354, column: 29, scope: !3401)
!3404 = !DILocation(line: 1354, column: 20, scope: !3401)
!3405 = !DILocation(line: 1354, column: 3, scope: !3401)
!3406 = !DILocation(line: 1354, column: 18, scope: !3401)
!3407 = !DILocation(line: 1355, column: 30, scope: !3401)
!3408 = !DILocation(line: 1355, column: 21, scope: !3401)
!3409 = !DILocation(line: 1355, column: 20, scope: !3401)
!3410 = !DILocation(line: 1355, column: 3, scope: !3401)
!3411 = !DILocation(line: 1355, column: 18, scope: !3401)
!3412 = !DILocation(line: 1356, column: 29, scope: !3401)
!3413 = !DILocation(line: 1356, column: 20, scope: !3401)
!3414 = !DILocation(line: 1356, column: 3, scope: !3401)
!3415 = !DILocation(line: 1356, column: 18, scope: !3401)
!3416 = !DILocation(line: 1357, column: 29, scope: !3401)
!3417 = !DILocation(line: 1357, column: 20, scope: !3401)
!3418 = !DILocation(line: 1357, column: 3, scope: !3401)
!3419 = !DILocation(line: 1357, column: 18, scope: !3401)
!3420 = !DILocation(line: 1358, column: 15, scope: !3401)
!3421 = !DILocation(line: 1358, column: 21, scope: !3401)
!3422 = !DILocation(line: 1358, column: 28, scope: !3401)
!3423 = !DILocation(line: 1358, column: 3, scope: !3401)
!3424 = !DILocation(line: 1359, column: 13, scope: !3401)
!3425 = !DILocation(line: 1359, column: 19, scope: !3401)
!3426 = !DILocation(line: 1359, column: 3, scope: !3401)
!3427 = !DILocation(line: 1360, column: 2, scope: !3401)
!3428 = !DILocation(line: 1362, column: 14, scope: !381)
!3429 = !DILocation(line: 1362, column: 24, scope: !381)
!3430 = !DILocation(line: 1362, column: 2, scope: !381)
!3431 = !DILocation(line: 1363, column: 12, scope: !381)
!3432 = !DILocation(line: 1363, column: 2, scope: !381)
!3433 = !DILocation(line: 1367, column: 1, scope: !381)
!3434 = !DILocation(line: 1366, column: 2, scope: !381)
!3435 = distinct !DISubprogram(name: "mk_idmat", scope: !3, file: !3, line: 1563, type: !3436, scopeLine: 1564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !400}
!3438 = !{!3439, !3440, !3441}
!3439 = !DILocalVariable(name: "idmat", arg: 1, scope: !3435, file: !3, line: 1563, type: !400)
!3440 = !DILocalVariable(name: "i", scope: !3435, file: !3, line: 1565, type: !36)
!3441 = !DILocalVariable(name: "j", scope: !3435, file: !3, line: 1565, type: !36)
!3442 = !DILocation(line: 0, scope: !3435)
!3443 = !DILocation(line: 1567, column: 2, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 1567, column: 2)
!3445 = !DILocation(line: 1568, column: 3, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 1568, column: 3)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1567, column: 26)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 1567, column: 2)
!3449 = !DILocation(line: 1569, column: 26, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 1568, column: 27)
!3451 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 1568, column: 3)
!3452 = !DILocation(line: 1569, column: 22, scope: !3450)
!3453 = !DILocation(line: 1569, column: 4, scope: !3450)
!3454 = !DILocation(line: 1569, column: 20, scope: !3450)
!3455 = !DILocation(line: 1568, column: 23, scope: !3451)
!3456 = !DILocation(line: 1568, column: 17, scope: !3451)
!3457 = distinct !{!3457, !3445, !3458}
!3458 = !DILocation(line: 1570, column: 3, scope: !3446)
!3459 = !DILocation(line: 1567, column: 22, scope: !3448)
!3460 = !DILocation(line: 1567, column: 16, scope: !3448)
!3461 = distinct !{!3461, !3443, !3462}
!3462 = !DILocation(line: 1571, column: 2, scope: !3444)
!3463 = !DILocation(line: 1572, column: 1, scope: !3435)
!3464 = distinct !DISubprogram(name: "concat_mat", scope: !3, file: !3, line: 1574, type: !3465, scopeLine: 1575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{null, !400, !400, !400}
!3467 = !{!3468, !3469, !3470, !3471, !3472, !3473}
!3468 = !DILocalVariable(name: "m1", arg: 1, scope: !3464, file: !3, line: 1574, type: !400)
!3469 = !DILocalVariable(name: "m2", arg: 2, scope: !3464, file: !3, line: 1574, type: !400)
!3470 = !DILocalVariable(name: "m3", arg: 3, scope: !3464, file: !3, line: 1574, type: !400)
!3471 = !DILocalVariable(name: "i", scope: !3464, file: !3, line: 1576, type: !36)
!3472 = !DILocalVariable(name: "j", scope: !3464, file: !3, line: 1576, type: !36)
!3473 = !DILocalVariable(name: "k", scope: !3464, file: !3, line: 1576, type: !36)
!3474 = !DILocation(line: 0, scope: !3464)
!3475 = !DILocation(line: 1578, column: 2, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 1578, column: 2)
!3477 = !DILocation(line: 1579, column: 3, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 1579, column: 3)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 1578, column: 26)
!3480 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 1578, column: 2)
!3481 = !DILocation(line: 1580, column: 4, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 1579, column: 27)
!3483 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 1579, column: 3)
!3484 = !DILocation(line: 1580, column: 17, scope: !3482)
!3485 = !DILocation(line: 1581, column: 4, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 1581, column: 4)
!3487 = !DILocation(line: 1582, column: 21, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 1581, column: 28)
!3489 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 1581, column: 4)
!3490 = !DILocation(line: 1582, column: 36, scope: !3488)
!3491 = !DILocation(line: 1582, column: 34, scope: !3488)
!3492 = !DILocation(line: 1582, column: 5, scope: !3488)
!3493 = !DILocation(line: 1582, column: 18, scope: !3488)
!3494 = !DILocation(line: 1581, column: 24, scope: !3489)
!3495 = !DILocation(line: 1581, column: 18, scope: !3489)
!3496 = distinct !{!3496, !3485, !3497}
!3497 = !DILocation(line: 1583, column: 4, scope: !3486)
!3498 = !DILocation(line: 1579, column: 23, scope: !3483)
!3499 = !DILocation(line: 1579, column: 17, scope: !3483)
!3500 = distinct !{!3500, !3477, !3501}
!3501 = !DILocation(line: 1584, column: 3, scope: !3478)
!3502 = !DILocation(line: 1578, column: 22, scope: !3480)
!3503 = !DILocation(line: 1578, column: 16, scope: !3480)
!3504 = distinct !{!3504, !3475, !3505}
!3505 = !DILocation(line: 1585, column: 2, scope: !3476)
!3506 = !DILocation(line: 1586, column: 1, scope: !3464)
!3507 = distinct !DISubprogram(name: "copy_mat", scope: !3, file: !3, line: 1588, type: !3508, scopeLine: 1589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !400, !400}
!3510 = !{!3511, !3512, !3513, !3514}
!3511 = !DILocalVariable(name: "mold", arg: 1, scope: !3507, file: !3, line: 1588, type: !400)
!3512 = !DILocalVariable(name: "mnew", arg: 2, scope: !3507, file: !3, line: 1588, type: !400)
!3513 = !DILocalVariable(name: "i", scope: !3507, file: !3, line: 1590, type: !36)
!3514 = !DILocalVariable(name: "j", scope: !3507, file: !3, line: 1590, type: !36)
!3515 = !DILocation(line: 0, scope: !3507)
!3516 = !DILocation(line: 1592, column: 2, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1592, column: 2)
!3518 = !DILocation(line: 1593, column: 3, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 1593, column: 3)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 1592, column: 26)
!3521 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1592, column: 2)
!3522 = !DILocation(line: 1594, column: 21, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 1593, column: 3)
!3524 = !DILocation(line: 1594, column: 4, scope: !3523)
!3525 = !DILocation(line: 1594, column: 19, scope: !3523)
!3526 = !DILocation(line: 1593, column: 23, scope: !3523)
!3527 = !DILocation(line: 1593, column: 17, scope: !3523)
!3528 = distinct !{!3528, !3518, !3529}
!3529 = !DILocation(line: 1594, column: 34, scope: !3519)
!3530 = !DILocation(line: 1592, column: 22, scope: !3521)
!3531 = !DILocation(line: 1592, column: 16, scope: !3521)
!3532 = distinct !{!3532, !3516, !3533}
!3533 = !DILocation(line: 1595, column: 2, scope: !3517)
!3534 = !DILocation(line: 1596, column: 1, scope: !3507)
!3535 = distinct !DISubprogram(name: "transformres", scope: !3, file: !3, line: 1369, type: !3536, scopeLine: 1370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!56, !400, !56, !241}
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547}
!3539 = !DILocalVariable(name: "mat", arg: 1, scope: !3535, file: !3, line: 1369, type: !400)
!3540 = !DILocalVariable(name: "res", arg: 2, scope: !3535, file: !3, line: 1369, type: !56)
!3541 = !DILocalVariable(name: "aexp", arg: 3, scope: !3535, file: !3, line: 1369, type: !241)
!3542 = !DILocalVariable(name: "nres", scope: !3535, file: !3, line: 1371, type: !56)
!3543 = !DILocalVariable(name: "a", scope: !3535, file: !3, line: 1372, type: !36)
!3544 = !DILocalVariable(name: "i", scope: !3535, file: !3, line: 1372, type: !36)
!3545 = !DILocalVariable(name: "ap", scope: !3535, file: !3, line: 1373, type: !102)
!3546 = !DILocalVariable(name: "xyz", scope: !3535, file: !3, line: 1374, type: !127)
!3547 = !DILocalVariable(name: "nxyz", scope: !3535, file: !3, line: 1374, type: !127)
!3548 = !DILocation(line: 0, scope: !3535)
!3549 = !DILocation(line: 1374, column: 2, scope: !3535)
!3550 = !DILocation(line: 1374, column: 11, scope: !3535)
!3551 = !DILocation(line: 1374, column: 16, scope: !3535)
!3552 = !DILocation(line: 1376, column: 9, scope: !3535)
!3553 = !DILocation(line: 1377, column: 24, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1377, column: 2)
!3555 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 1377, column: 2)
!3556 = !DILocation(line: 1377, column: 16, scope: !3554)
!3557 = !DILocation(line: 1377, column: 2, scope: !3555)
!3558 = !DILocation(line: 1378, column: 15, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1377, column: 39)
!3560 = !DILocation(line: 1379, column: 3, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 1379, column: 3)
!3562 = !DILocation(line: 1380, column: 15, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1379, column: 3)
!3564 = !DILocation(line: 1380, column: 4, scope: !3563)
!3565 = !DILocation(line: 1380, column: 13, scope: !3563)
!3566 = !DILocation(line: 1379, column: 23, scope: !3563)
!3567 = !DILocation(line: 1379, column: 17, scope: !3563)
!3568 = distinct !{!3568, !3560, !3569}
!3569 = !DILocation(line: 1380, column: 28, scope: !3561)
!3570 = !DILocation(line: 1381, column: 12, scope: !3559)
!3571 = !DILocation(line: 1381, column: 22, scope: !3559)
!3572 = !DILocation(line: 1381, column: 3, scope: !3559)
!3573 = !DILocation(line: 1382, column: 3, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 1382, column: 3)
!3575 = !DILocation(line: 1383, column: 21, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 1382, column: 3)
!3577 = !DILocation(line: 1383, column: 4, scope: !3576)
!3578 = !DILocation(line: 1383, column: 19, scope: !3576)
!3579 = !DILocation(line: 1382, column: 23, scope: !3576)
!3580 = !DILocation(line: 1382, column: 17, scope: !3576)
!3581 = distinct !{!3581, !3573, !3582}
!3582 = !DILocation(line: 1383, column: 29, scope: !3574)
!3583 = !DILocation(line: 1377, column: 35, scope: !3554)
!3584 = distinct !{!3584, !3557, !3585}
!3585 = !DILocation(line: 1384, column: 2, scope: !3555)
!3586 = !DILocation(line: 1387, column: 1, scope: !3535)
!3587 = !DILocation(line: 1386, column: 2, scope: !3535)
!3588 = distinct !DISubprogram(name: "xfm_xyz", scope: !3, file: !3, line: 1598, type: !3589, scopeLine: 1599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3591)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{null, !180, !400, !180}
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3592 = !DILocalVariable(name: "oxyz", arg: 1, scope: !3588, file: !3, line: 1598, type: !180)
!3593 = !DILocalVariable(name: "mat", arg: 2, scope: !3588, file: !3, line: 1598, type: !400)
!3594 = !DILocalVariable(name: "nxyz", arg: 3, scope: !3588, file: !3, line: 1598, type: !180)
!3595 = !DILocalVariable(name: "i", scope: !3588, file: !3, line: 1600, type: !36)
!3596 = !DILocalVariable(name: "j", scope: !3588, file: !3, line: 1600, type: !36)
!3597 = !DILocalVariable(name: "oxyz4", scope: !3588, file: !3, line: 1601, type: !401)
!3598 = !DILocalVariable(name: "nxyz4", scope: !3588, file: !3, line: 1601, type: !401)
!3599 = !DILocation(line: 0, scope: !3588)
!3600 = !DILocation(line: 1601, column: 2, scope: !3588)
!3601 = !DILocation(line: 1601, column: 9, scope: !3588)
!3602 = !DILocation(line: 1601, column: 21, scope: !3588)
!3603 = !DILocation(line: 1603, column: 2, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 1603, column: 2)
!3605 = !DILocation(line: 1604, column: 16, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1603, column: 2)
!3607 = !DILocation(line: 1604, column: 3, scope: !3606)
!3608 = !DILocation(line: 1604, column: 14, scope: !3606)
!3609 = !DILocation(line: 1603, column: 22, scope: !3606)
!3610 = !DILocation(line: 1603, column: 16, scope: !3606)
!3611 = distinct !{!3611, !3603, !3612}
!3612 = !DILocation(line: 1604, column: 24, scope: !3604)
!3613 = !DILocation(line: 1605, column: 2, scope: !3588)
!3614 = !DILocation(line: 1605, column: 13, scope: !3588)
!3615 = !DILocation(line: 1607, column: 2, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 1607, column: 2)
!3617 = !DILocation(line: 1608, column: 3, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 1607, column: 26)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 1607, column: 2)
!3620 = !DILocation(line: 1608, column: 14, scope: !3618)
!3621 = !DILocation(line: 1609, column: 3, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3618, file: !3, line: 1609, column: 3)
!3623 = !DILocation(line: 1610, column: 18, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 1609, column: 27)
!3625 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 1609, column: 3)
!3626 = !DILocation(line: 1610, column: 31, scope: !3624)
!3627 = !DILocation(line: 1610, column: 29, scope: !3624)
!3628 = !DILocation(line: 1610, column: 4, scope: !3624)
!3629 = !DILocation(line: 1610, column: 15, scope: !3624)
!3630 = !DILocation(line: 1609, column: 23, scope: !3625)
!3631 = !DILocation(line: 1609, column: 17, scope: !3625)
!3632 = distinct !{!3632, !3621, !3633}
!3633 = !DILocation(line: 1611, column: 3, scope: !3622)
!3634 = !DILocation(line: 1607, column: 22, scope: !3619)
!3635 = !DILocation(line: 1607, column: 16, scope: !3619)
!3636 = distinct !{!3636, !3615, !3637}
!3637 = !DILocation(line: 1612, column: 2, scope: !3616)
!3638 = !DILocation(line: 1615, column: 15, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1614, column: 2)
!3640 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 1614, column: 2)
!3641 = !DILocation(line: 1615, column: 3, scope: !3639)
!3642 = !DILocation(line: 1615, column: 13, scope: !3639)
!3643 = !DILocation(line: 1614, column: 22, scope: !3639)
!3644 = !DILocation(line: 1614, column: 16, scope: !3639)
!3645 = !DILocation(line: 1614, column: 2, scope: !3640)
!3646 = distinct !{!3646, !3645, !3647}
!3647 = !DILocation(line: 1615, column: 24, scope: !3640)
!3648 = !DILocation(line: 1616, column: 1, scope: !3588)
!3649 = distinct !DISubprogram(name: "transformmol", scope: !3, file: !3, line: 1389, type: !3650, scopeLine: 1390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3652)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!36, !400, !22, !241}
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664}
!3653 = !DILocalVariable(name: "mat", arg: 1, scope: !3649, file: !3, line: 1389, type: !400)
!3654 = !DILocalVariable(name: "mol", arg: 2, scope: !3649, file: !3, line: 1389, type: !22)
!3655 = !DILocalVariable(name: "aexp", arg: 3, scope: !3649, file: !3, line: 1389, type: !241)
!3656 = !DILocalVariable(name: "sp", scope: !3649, file: !3, line: 1391, type: !38)
!3657 = !DILocalVariable(name: "res", scope: !3649, file: !3, line: 1392, type: !56)
!3658 = !DILocalVariable(name: "r", scope: !3649, file: !3, line: 1393, type: !36)
!3659 = !DILocalVariable(name: "a", scope: !3649, file: !3, line: 1393, type: !36)
!3660 = !DILocalVariable(name: "i", scope: !3649, file: !3, line: 1393, type: !36)
!3661 = !DILocalVariable(name: "k", scope: !3649, file: !3, line: 1393, type: !36)
!3662 = !DILocalVariable(name: "ap", scope: !3649, file: !3, line: 1394, type: !102)
!3663 = !DILocalVariable(name: "xyz", scope: !3649, file: !3, line: 1395, type: !127)
!3664 = !DILocalVariable(name: "nxyz", scope: !3649, file: !3, line: 1395, type: !127)
!3665 = !DILocation(line: 0, scope: !3649)
!3666 = !DILocation(line: 1395, column: 2, scope: !3649)
!3667 = !DILocation(line: 1395, column: 11, scope: !3649)
!3668 = !DILocation(line: 1395, column: 16, scope: !3649)
!3669 = !DILocation(line: 1397, column: 2, scope: !3649)
!3670 = !DILocation(line: 1399, column: 17, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 1399, column: 2)
!3672 = !DILocation(line: 1399, column: 2, scope: !3671)
!3673 = !DILocation(line: 1400, column: 23, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1400, column: 3)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 1400, column: 3)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1399, column: 54)
!3677 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 1399, column: 2)
!3678 = !DILocation(line: 1400, column: 17, scope: !3674)
!3679 = !DILocation(line: 1400, column: 3, scope: !3675)
!3680 = !DILocation(line: 1401, column: 14, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 1400, column: 41)
!3682 = !DILocation(line: 1401, column: 10, scope: !3681)
!3683 = !DILocation(line: 1402, column: 25, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 1402, column: 4)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 1402, column: 4)
!3686 = !DILocation(line: 1402, column: 18, scope: !3684)
!3687 = !DILocation(line: 1402, column: 4, scope: !3685)
!3688 = !DILocation(line: 1403, column: 16, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 1402, column: 40)
!3690 = !DILocation(line: 1404, column: 13, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 1404, column: 9)
!3692 = !DILocation(line: 1404, column: 20, scope: !3691)
!3693 = !DILocation(line: 1404, column: 9, scope: !3689)
!3694 = !DILocation(line: 1407, column: 18, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !3, line: 1406, column: 6)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 1406, column: 6)
!3697 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1404, column: 33)
!3698 = !DILocation(line: 1407, column: 7, scope: !3695)
!3699 = !DILocation(line: 1407, column: 16, scope: !3695)
!3700 = !DILocation(line: 1406, column: 26, scope: !3695)
!3701 = !DILocation(line: 1406, column: 20, scope: !3695)
!3702 = !DILocation(line: 1406, column: 6, scope: !3696)
!3703 = distinct !{!3703, !3702, !3704}
!3704 = !DILocation(line: 1407, column: 31, scope: !3696)
!3705 = !DILocation(line: 1408, column: 15, scope: !3697)
!3706 = !DILocation(line: 1408, column: 25, scope: !3697)
!3707 = !DILocation(line: 1408, column: 6, scope: !3697)
!3708 = !DILocation(line: 1409, column: 6, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 1409, column: 6)
!3710 = !DILocation(line: 1410, column: 24, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 1409, column: 6)
!3712 = !DILocation(line: 1410, column: 7, scope: !3711)
!3713 = !DILocation(line: 1410, column: 22, scope: !3711)
!3714 = !DILocation(line: 1409, column: 26, scope: !3711)
!3715 = !DILocation(line: 1409, column: 20, scope: !3711)
!3716 = distinct !{!3716, !3708, !3717}
!3717 = !DILocation(line: 1410, column: 32, scope: !3709)
!3718 = !DILocation(line: 1405, column: 7, scope: !3697)
!3719 = !DILocation(line: 1411, column: 5, scope: !3697)
!3720 = !DILocation(line: 0, scope: !3671)
!3721 = !DILocation(line: 1402, column: 36, scope: !3684)
!3722 = distinct !{!3722, !3687, !3723}
!3723 = !DILocation(line: 1412, column: 4, scope: !3685)
!3724 = !DILocation(line: 1400, column: 37, scope: !3674)
!3725 = distinct !{!3725, !3679, !3726}
!3726 = !DILocation(line: 1413, column: 3, scope: !3675)
!3727 = !DILocation(line: 1399, column: 29, scope: !3671)
!3728 = !DILocation(line: 1399, column: 46, scope: !3677)
!3729 = distinct !{!3729, !3672, !3730}
!3730 = !DILocation(line: 1414, column: 2, scope: !3671)
!3731 = !DILocation(line: 1417, column: 1, scope: !3649)
!3732 = !DILocation(line: 1416, column: 2, scope: !3649)
!3733 = distinct !DISubprogram(name: "transformpts", scope: !3, file: !3, line: 1419, type: !3734, scopeLine: 1420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!36, !400, !2303, !36}
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DILocalVariable(name: "mat", arg: 1, scope: !3733, file: !3, line: 1419, type: !400)
!3738 = !DILocalVariable(name: "pts", arg: 2, scope: !3733, file: !3, line: 1419, type: !2303)
!3739 = !DILocalVariable(name: "npts", arg: 3, scope: !3733, file: !3, line: 1419, type: !36)
!3740 = !DILocalVariable(name: "i", scope: !3733, file: !3, line: 1421, type: !36)
!3741 = !DILocation(line: 0, scope: !3733)
!3742 = !DILocation(line: 1423, column: 7, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 1423, column: 2)
!3744 = !DILocation(line: 1423, column: 16, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 1423, column: 2)
!3746 = !DILocation(line: 1423, column: 2, scope: !3743)
!3747 = !DILocation(line: 1424, column: 12, scope: !3745)
!3748 = !DILocation(line: 1424, column: 27, scope: !3745)
!3749 = !DILocation(line: 1424, column: 3, scope: !3745)
!3750 = !DILocation(line: 1423, column: 25, scope: !3745)
!3751 = distinct !{!3751, !3746, !3752}
!3752 = !DILocation(line: 1424, column: 36, scope: !3743)
!3753 = !DILocation(line: 1425, column: 2, scope: !3733)
!3754 = !DILocation(line: 0, scope: !397)
!3755 = !DILocation(line: 1434, column: 2, scope: !397)
!3756 = !DILocation(line: 1436, column: 2, scope: !397)
!3757 = !DILocation(line: 0, scope: !408)
!3758 = !DILocation(line: 1445, column: 7, scope: !408)
!3759 = !DILocation(line: 1445, column: 17, scope: !408)
!3760 = !DILocation(line: 1445, column: 15, scope: !408)
!3761 = !DILocation(line: 1446, column: 7, scope: !408)
!3762 = !DILocation(line: 1446, column: 17, scope: !408)
!3763 = !DILocation(line: 1446, column: 15, scope: !408)
!3764 = !DILocation(line: 1447, column: 7, scope: !408)
!3765 = !DILocation(line: 1447, column: 17, scope: !408)
!3766 = !DILocation(line: 1447, column: 15, scope: !408)
!3767 = !DILocation(line: 1448, column: 23, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !408, file: !3, line: 1448, column: 6)
!3769 = !DILocation(line: 1448, column: 33, scope: !3768)
!3770 = !DILocation(line: 1448, column: 28, scope: !3768)
!3771 = !DILocation(line: 1448, column: 43, scope: !3768)
!3772 = !DILocation(line: 1448, column: 38, scope: !3768)
!3773 = !DILocation(line: 1448, column: 14, scope: !3768)
!3774 = !DILocation(line: 1448, column: 52, scope: !3768)
!3775 = !DILocation(line: 1448, column: 6, scope: !408)
!3776 = !DILocation(line: 1449, column: 20, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 1448, column: 60)
!3778 = !DILocation(line: 1449, column: 3, scope: !3777)
!3779 = !DILocation(line: 1450, column: 2, scope: !3777)
!3780 = !DILocation(line: 1451, column: 6, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 1450, column: 7)
!3782 = !DILocation(line: 1452, column: 6, scope: !3781)
!3783 = !DILocation(line: 1453, column: 6, scope: !3781)
!3784 = !DILocation(line: 1455, column: 20, scope: !3781)
!3785 = !DILocation(line: 1455, column: 28, scope: !3781)
!3786 = !DILocation(line: 1455, column: 36, scope: !3781)
!3787 = !DILocation(line: 1455, column: 4, scope: !3781)
!3788 = !DILocation(line: 1454, column: 3, scope: !3781)
!3789 = !DILocation(line: 1458, column: 2, scope: !408)
!3790 = distinct !DISubprogram(name: "NAB_matcpy", scope: !3, file: !3, line: 1500, type: !3791, scopeLine: 1501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!275, !237, !237}
!3793 = !{!3794, !3795}
!3794 = !DILocalVariable(name: "mdst", arg: 1, scope: !3790, file: !3, line: 1500, type: !237)
!3795 = !DILocalVariable(name: "msrc", arg: 2, scope: !3790, file: !3, line: 1500, type: !237)
!3796 = !DILocation(line: 0, scope: !3790)
!3797 = !DILocation(line: 1503, column: 24, scope: !3790)
!3798 = !DILocation(line: 1503, column: 10, scope: !3790)
!3799 = !DILocation(line: 1503, column: 2, scope: !3790)
!3800 = distinct !DISubprogram(name: "trans4", scope: !3, file: !3, line: 1461, type: !3801, scopeLine: 1462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3803)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!275, !22, !241, !241, !30}
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809}
!3804 = !DILocalVariable(name: "mol", arg: 1, scope: !3800, file: !3, line: 1461, type: !22)
!3805 = !DILocalVariable(name: "aex1", arg: 2, scope: !3800, file: !3, line: 1461, type: !241)
!3806 = !DILocalVariable(name: "aex2", arg: 3, scope: !3800, file: !3, line: 1461, type: !241)
!3807 = !DILocalVariable(name: "d", arg: 4, scope: !3800, file: !3, line: 1461, type: !30)
!3808 = !DILocalVariable(name: "p1", scope: !3800, file: !3, line: 1463, type: !127)
!3809 = !DILocalVariable(name: "p2", scope: !3800, file: !3, line: 1463, type: !127)
!3810 = !DILocation(line: 0, scope: !3800)
!3811 = !DILocation(line: 1463, column: 2, scope: !3800)
!3812 = !DILocation(line: 1463, column: 10, scope: !3800)
!3813 = !DILocation(line: 1463, column: 14, scope: !3800)
!3814 = !DILocation(line: 1465, column: 23, scope: !3800)
!3815 = !DILocation(line: 1465, column: 2, scope: !3800)
!3816 = !DILocation(line: 1466, column: 23, scope: !3800)
!3817 = !DILocation(line: 1466, column: 2, scope: !3800)
!3818 = !DILocation(line: 1467, column: 19, scope: !3800)
!3819 = !DILocation(line: 1467, column: 23, scope: !3800)
!3820 = !DILocation(line: 1467, column: 10, scope: !3800)
!3821 = !DILocation(line: 1468, column: 1, scope: !3800)
!3822 = !DILocation(line: 1467, column: 2, scope: !3800)
!3823 = !DILocation(line: 0, scope: !422)
!3824 = !DILocation(line: 1473, column: 2, scope: !422)
!3825 = !DILocation(line: 1473, column: 11, scope: !422)
!3826 = !DILocation(line: 1473, column: 17, scope: !422)
!3827 = !DILocation(line: 1473, column: 23, scope: !422)
!3828 = !DILocation(line: 1473, column: 29, scope: !422)
!3829 = !DILocation(line: 1476, column: 14, scope: !422)
!3830 = !DILocation(line: 1477, column: 18, scope: !422)
!3831 = !DILocation(line: 1477, column: 17, scope: !422)
!3832 = !DILocation(line: 1477, column: 26, scope: !422)
!3833 = !DILocation(line: 1477, column: 25, scope: !422)
!3834 = !DILocation(line: 1477, column: 34, scope: !422)
!3835 = !DILocation(line: 1477, column: 33, scope: !422)
!3836 = !DILocation(line: 1477, column: 3, scope: !422)
!3837 = !DILocation(line: 1476, column: 2, scope: !422)
!3838 = !DILocation(line: 1479, column: 11, scope: !422)
!3839 = !DILocation(line: 1479, column: 17, scope: !422)
!3840 = !DILocation(line: 1479, column: 16, scope: !422)
!3841 = !DILocation(line: 1479, column: 24, scope: !422)
!3842 = !DILocation(line: 1479, column: 30, scope: !422)
!3843 = !DILocation(line: 1479, column: 29, scope: !422)
!3844 = !DILocation(line: 1479, column: 37, scope: !422)
!3845 = !DILocation(line: 1479, column: 43, scope: !422)
!3846 = !DILocation(line: 1479, column: 42, scope: !422)
!3847 = !DILocation(line: 1479, column: 50, scope: !422)
!3848 = !DILocation(line: 1479, column: 58, scope: !422)
!3849 = !DILocation(line: 1479, column: 2, scope: !422)
!3850 = !DILocation(line: 1481, column: 14, scope: !422)
!3851 = !DILocation(line: 1481, column: 34, scope: !422)
!3852 = !DILocation(line: 1481, column: 41, scope: !422)
!3853 = !DILocation(line: 1481, column: 48, scope: !422)
!3854 = !DILocation(line: 1481, column: 20, scope: !422)
!3855 = !DILocation(line: 1481, column: 2, scope: !422)
!3856 = !DILocation(line: 1483, column: 14, scope: !422)
!3857 = !DILocation(line: 1483, column: 20, scope: !422)
!3858 = !DILocation(line: 1483, column: 26, scope: !422)
!3859 = !DILocation(line: 1483, column: 2, scope: !422)
!3860 = !DILocation(line: 1484, column: 14, scope: !422)
!3861 = !DILocation(line: 1484, column: 20, scope: !422)
!3862 = !DILocation(line: 1484, column: 2, scope: !422)
!3863 = !DILocation(line: 1488, column: 1, scope: !422)
!3864 = !DILocation(line: 1487, column: 2, scope: !422)
!3865 = distinct !DISubprogram(name: "raa2mat", scope: !3, file: !3, line: 1506, type: !3866, scopeLine: 1507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3868)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{null, !30, !30, !30, !30, !400}
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3869 = !DILocalVariable(name: "x", arg: 1, scope: !3865, file: !3, line: 1506, type: !30)
!3870 = !DILocalVariable(name: "y", arg: 2, scope: !3865, file: !3, line: 1506, type: !30)
!3871 = !DILocalVariable(name: "z", arg: 3, scope: !3865, file: !3, line: 1506, type: !30)
!3872 = !DILocalVariable(name: "angle", arg: 4, scope: !3865, file: !3, line: 1506, type: !30)
!3873 = !DILocalVariable(name: "mat", arg: 5, scope: !3865, file: !3, line: 1506, type: !400)
!3874 = !DILocalVariable(name: "axlen", scope: !3865, file: !3, line: 1508, type: !30)
!3875 = !DILocalVariable(name: "a1", scope: !3865, file: !3, line: 1509, type: !30)
!3876 = !DILocalVariable(name: "a2", scope: !3865, file: !3, line: 1509, type: !30)
!3877 = !DILocalVariable(name: "a3", scope: !3865, file: !3, line: 1509, type: !30)
!3878 = !DILocalVariable(name: "a1a1", scope: !3865, file: !3, line: 1509, type: !30)
!3879 = !DILocalVariable(name: "a1a2", scope: !3865, file: !3, line: 1509, type: !30)
!3880 = !DILocalVariable(name: "a1a3", scope: !3865, file: !3, line: 1509, type: !30)
!3881 = !DILocalVariable(name: "a2a2", scope: !3865, file: !3, line: 1509, type: !30)
!3882 = !DILocalVariable(name: "a2a3", scope: !3865, file: !3, line: 1509, type: !30)
!3883 = !DILocalVariable(name: "a3a3", scope: !3865, file: !3, line: 1509, type: !30)
!3884 = !DILocalVariable(name: "ca1a2", scope: !3865, file: !3, line: 1510, type: !30)
!3885 = !DILocalVariable(name: "ca2a3", scope: !3865, file: !3, line: 1510, type: !30)
!3886 = !DILocalVariable(name: "ca1a3", scope: !3865, file: !3, line: 1510, type: !30)
!3887 = !DILocalVariable(name: "sa1", scope: !3865, file: !3, line: 1510, type: !30)
!3888 = !DILocalVariable(name: "sa2", scope: !3865, file: !3, line: 1510, type: !30)
!3889 = !DILocalVariable(name: "sa3", scope: !3865, file: !3, line: 1510, type: !30)
!3890 = !DILocalVariable(name: "c", scope: !3865, file: !3, line: 1511, type: !30)
!3891 = !DILocalVariable(name: "s", scope: !3865, file: !3, line: 1511, type: !30)
!3892 = !DILocation(line: 0, scope: !3865)
!3893 = !DILocation(line: 1513, column: 23, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 1513, column: 6)
!3895 = !DILocation(line: 1513, column: 16, scope: !3894)
!3896 = !DILocation(line: 1513, column: 44, scope: !3894)
!3897 = !DILocation(line: 1513, column: 6, scope: !3865)
!3898 = !DILocation(line: 1518, column: 2, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 1513, column: 52)
!3900 = !DILocation(line: 0, scope: !3894)
!3901 = !DILocation(line: 1519, column: 4, scope: !3865)
!3902 = !DILocation(line: 1520, column: 4, scope: !3865)
!3903 = !DILocation(line: 1521, column: 4, scope: !3865)
!3904 = !DILocation(line: 1526, column: 11, scope: !3865)
!3905 = !DILocation(line: 1527, column: 11, scope: !3865)
!3906 = !DILocation(line: 1528, column: 11, scope: !3865)
!3907 = !DILocation(line: 1529, column: 11, scope: !3865)
!3908 = !DILocation(line: 1530, column: 11, scope: !3865)
!3909 = !DILocation(line: 1531, column: 11, scope: !3865)
!3910 = !DILocation(line: 1532, column: 15, scope: !3865)
!3911 = !DILocation(line: 1532, column: 6, scope: !3865)
!3912 = !DILocation(line: 1533, column: 15, scope: !3865)
!3913 = !DILocation(line: 1533, column: 6, scope: !3865)
!3914 = !DILocation(line: 1535, column: 12, scope: !3865)
!3915 = !DILocation(line: 1536, column: 12, scope: !3865)
!3916 = !DILocation(line: 1537, column: 12, scope: !3865)
!3917 = !DILocation(line: 1538, column: 10, scope: !3865)
!3918 = !DILocation(line: 1539, column: 10, scope: !3865)
!3919 = !DILocation(line: 1540, column: 10, scope: !3865)
!3920 = !DILocation(line: 1542, column: 18, scope: !3865)
!3921 = !DILocation(line: 1542, column: 2, scope: !3865)
!3922 = !DILocation(line: 1542, column: 16, scope: !3865)
!3923 = !DILocation(line: 1543, column: 18, scope: !3865)
!3924 = !DILocation(line: 1543, column: 2, scope: !3865)
!3925 = !DILocation(line: 1543, column: 16, scope: !3865)
!3926 = !DILocation(line: 1544, column: 18, scope: !3865)
!3927 = !DILocation(line: 1544, column: 2, scope: !3865)
!3928 = !DILocation(line: 1544, column: 16, scope: !3865)
!3929 = !DILocation(line: 1545, column: 2, scope: !3865)
!3930 = !DILocation(line: 1545, column: 16, scope: !3865)
!3931 = !DILocation(line: 1547, column: 18, scope: !3865)
!3932 = !DILocation(line: 1547, column: 2, scope: !3865)
!3933 = !DILocation(line: 1547, column: 16, scope: !3865)
!3934 = !DILocation(line: 1548, column: 18, scope: !3865)
!3935 = !DILocation(line: 1548, column: 2, scope: !3865)
!3936 = !DILocation(line: 1548, column: 16, scope: !3865)
!3937 = !DILocation(line: 1549, column: 18, scope: !3865)
!3938 = !DILocation(line: 1549, column: 2, scope: !3865)
!3939 = !DILocation(line: 1549, column: 16, scope: !3865)
!3940 = !DILocation(line: 1550, column: 2, scope: !3865)
!3941 = !DILocation(line: 1550, column: 16, scope: !3865)
!3942 = !DILocation(line: 1552, column: 18, scope: !3865)
!3943 = !DILocation(line: 1552, column: 2, scope: !3865)
!3944 = !DILocation(line: 1552, column: 16, scope: !3865)
!3945 = !DILocation(line: 1553, column: 18, scope: !3865)
!3946 = !DILocation(line: 1553, column: 2, scope: !3865)
!3947 = !DILocation(line: 1553, column: 16, scope: !3865)
!3948 = !DILocation(line: 1554, column: 18, scope: !3865)
!3949 = !DILocation(line: 1554, column: 2, scope: !3865)
!3950 = !DILocation(line: 1554, column: 16, scope: !3865)
!3951 = !DILocation(line: 1555, column: 2, scope: !3865)
!3952 = !DILocation(line: 1555, column: 16, scope: !3865)
!3953 = !DILocation(line: 1557, column: 2, scope: !3865)
!3954 = !DILocation(line: 1557, column: 16, scope: !3865)
!3955 = !DILocation(line: 1558, column: 2, scope: !3865)
!3956 = !DILocation(line: 1558, column: 16, scope: !3865)
!3957 = !DILocation(line: 1559, column: 2, scope: !3865)
!3958 = !DILocation(line: 1559, column: 16, scope: !3865)
!3959 = !DILocation(line: 1560, column: 2, scope: !3865)
!3960 = !DILocation(line: 1560, column: 16, scope: !3865)
!3961 = !DILocation(line: 1561, column: 1, scope: !3865)
!3962 = distinct !DISubprogram(name: "rot4", scope: !3, file: !3, line: 1490, type: !3801, scopeLine: 1491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969}
!3964 = !DILocalVariable(name: "mol", arg: 1, scope: !3962, file: !3, line: 1490, type: !22)
!3965 = !DILocalVariable(name: "aex1", arg: 2, scope: !3962, file: !3, line: 1490, type: !241)
!3966 = !DILocalVariable(name: "aex2", arg: 3, scope: !3962, file: !3, line: 1490, type: !241)
!3967 = !DILocalVariable(name: "angle", arg: 4, scope: !3962, file: !3, line: 1490, type: !30)
!3968 = !DILocalVariable(name: "p1", scope: !3962, file: !3, line: 1492, type: !127)
!3969 = !DILocalVariable(name: "p2", scope: !3962, file: !3, line: 1492, type: !127)
!3970 = !DILocation(line: 0, scope: !3962)
!3971 = !DILocation(line: 1492, column: 2, scope: !3962)
!3972 = !DILocation(line: 1492, column: 10, scope: !3962)
!3973 = !DILocation(line: 1492, column: 14, scope: !3962)
!3974 = !DILocation(line: 1494, column: 23, scope: !3962)
!3975 = !DILocation(line: 1494, column: 2, scope: !3962)
!3976 = !DILocation(line: 1495, column: 23, scope: !3962)
!3977 = !DILocation(line: 1495, column: 2, scope: !3962)
!3978 = !DILocation(line: 1497, column: 17, scope: !3962)
!3979 = !DILocation(line: 1497, column: 21, scope: !3962)
!3980 = !DILocation(line: 1497, column: 10, scope: !3962)
!3981 = !DILocation(line: 1498, column: 1, scope: !3962)
!3982 = !DILocation(line: 1497, column: 2, scope: !3962)
!3983 = distinct !DISubprogram(name: "set_belly_mask", scope: !3, file: !3, line: 1894, type: !3984, scopeLine: 1898, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3986)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!36, !22, !241, !277}
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008}
!3987 = !DILocalVariable(name: "m", arg: 1, scope: !3983, file: !3, line: 1895, type: !22)
!3988 = !DILocalVariable(name: "aex", arg: 2, scope: !3983, file: !3, line: 1896, type: !241)
!3989 = !DILocalVariable(name: "frozen", arg: 3, scope: !3983, file: !3, line: 1897, type: !277)
!3990 = !DILocalVariable(name: "i", scope: !3983, file: !3, line: 1899, type: !36)
!3991 = !DILocalVariable(name: "j", scope: !3983, file: !3, line: 1899, type: !36)
!3992 = !DILocalVariable(name: "k", scope: !3983, file: !3, line: 1899, type: !36)
!3993 = !DILocalVariable(name: "l", scope: !3983, file: !3, line: 1899, type: !36)
!3994 = !DILocalVariable(name: "ib", scope: !3983, file: !3, line: 1899, type: !36)
!3995 = !DILocalVariable(name: "r", scope: !3983, file: !3, line: 1899, type: !36)
!3996 = !DILocalVariable(name: "a", scope: !3983, file: !3, line: 1899, type: !36)
!3997 = !DILocalVariable(name: "n", scope: !3983, file: !3, line: 1899, type: !36)
!3998 = !DILocalVariable(name: "nfrozen", scope: !3983, file: !3, line: 1899, type: !36)
!3999 = !DILocalVariable(name: "nb", scope: !3983, file: !3, line: 1899, type: !36)
!4000 = !DILocalVariable(name: "ibig", scope: !3983, file: !3, line: 1899, type: !36)
!4001 = !DILocalVariable(name: "ismall", scope: !3983, file: !3, line: 1899, type: !36)
!4002 = !DILocalVariable(name: "ka", scope: !3983, file: !3, line: 1899, type: !36)
!4003 = !DILocalVariable(name: "la", scope: !3983, file: !3, line: 1899, type: !36)
!4004 = !DILocalVariable(name: "iptmp", scope: !3983, file: !3, line: 1900, type: !277)
!4005 = !DILocalVariable(name: "sp", scope: !3983, file: !3, line: 1901, type: !38)
!4006 = !DILocalVariable(name: "res", scope: !3983, file: !3, line: 1902, type: !56)
!4007 = !DILocalVariable(name: "ap", scope: !3983, file: !3, line: 1903, type: !102)
!4008 = !DILocalVariable(name: "prm", scope: !3983, file: !3, line: 1904, type: !135)
!4009 = !DILocation(line: 0, scope: !3983)
!4010 = !DILocation(line: 1906, column: 2, scope: !3983)
!4011 = !DILocation(line: 1908, column: 22, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1908, column: 2)
!4013 = !DILocation(line: 1908, column: 2, scope: !4012)
!4014 = !DILocation(line: 1909, column: 23, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 1909, column: 3)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 1909, column: 3)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 1908, column: 54)
!4018 = distinct !DILexicalBlock(scope: !4012, file: !3, line: 1908, column: 2)
!4019 = !DILocation(line: 1909, column: 17, scope: !4015)
!4020 = !DILocation(line: 1909, column: 3, scope: !4016)
!4021 = !DILocation(line: 1910, column: 14, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1909, column: 41)
!4023 = !DILocation(line: 1910, column: 10, scope: !4022)
!4024 = !DILocation(line: 1911, column: 9, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 1911, column: 4)
!4026 = !DILocation(line: 1911, column: 25, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 1911, column: 4)
!4028 = !DILocation(line: 1911, column: 18, scope: !4027)
!4029 = !DILocation(line: 1911, column: 4, scope: !4025)
!4030 = !DILocation(line: 1912, column: 16, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 1911, column: 40)
!4032 = !DILocation(line: 1913, column: 13, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 1913, column: 9)
!4034 = !DILocation(line: 1913, column: 20, scope: !4033)
!4035 = !DILocation(line: 1913, column: 9, scope: !4031)
!4036 = !DILocation(line: 1913, column: 34, scope: !4033)
!4037 = !DILocation(line: 1913, column: 44, scope: !4033)
!4038 = !DILocation(line: 1914, column: 12, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4033, file: !3, line: 1914, column: 11)
!4040 = !DILocation(line: 1914, column: 22, scope: !4039)
!4041 = !DILocation(line: 1914, column: 34, scope: !4039)
!4042 = !DILocation(line: 1915, column: 6, scope: !4031)
!4043 = !DILocation(line: 1911, column: 36, scope: !4027)
!4044 = distinct !{!4044, !4029, !4045}
!4045 = !DILocation(line: 1916, column: 4, scope: !4025)
!4046 = !DILocation(line: 1907, column: 10, scope: !3983)
!4047 = !DILocation(line: 1917, column: 3, scope: !4022)
!4048 = !DILocation(line: 1909, column: 37, scope: !4015)
!4049 = distinct !{!4049, !4020, !4050}
!4050 = !DILocation(line: 1917, column: 3, scope: !4016)
!4051 = !DILocation(line: 1908, column: 9, scope: !4012)
!4052 = !DILocation(line: 1908, column: 46, scope: !4018)
!4053 = distinct !{!4053, !4013, !4054}
!4054 = !DILocation(line: 1918, column: 2, scope: !4012)
!4055 = !DILocation(line: 1922, column: 11, scope: !3983)
!4056 = !DILocation(line: 1923, column: 6, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !3983, file: !3, line: 1923, column: 6)
!4058 = !DILocation(line: 1923, column: 6, scope: !3983)
!4059 = !DILocation(line: 1926, column: 28, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !3, line: 1926, column: 3)
!4061 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1926, column: 3)
!4062 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 1923, column: 11)
!4063 = !{!674, !485, i64 104}
!4064 = !DILocation(line: 1926, column: 22, scope: !4060)
!4065 = !DILocation(line: 1926, column: 3, scope: !4061)
!4066 = !DILocation(line: 1927, column: 13, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 1926, column: 41)
!4068 = !{!674, !486, i64 496}
!4069 = !DILocation(line: 1927, column: 8, scope: !4067)
!4070 = !DILocation(line: 1927, column: 25, scope: !4067)
!4071 = !DILocation(line: 1929, column: 9, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 1929, column: 8)
!4073 = !DILocation(line: 1929, column: 19, scope: !4072)
!4074 = !DILocation(line: 1928, column: 13, scope: !4067)
!4075 = !{!674, !486, i64 504}
!4076 = !DILocation(line: 1928, column: 8, scope: !4067)
!4077 = !DILocation(line: 1928, column: 25, scope: !4067)
!4078 = !DILocation(line: 1929, column: 23, scope: !4072)
!4079 = !DILocation(line: 1929, column: 8, scope: !4067)
!4080 = !DILocation(line: 1930, column: 30, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 1929, column: 34)
!4082 = !DILocation(line: 1930, column: 25, scope: !4081)
!4083 = !DILocation(line: 1930, column: 5, scope: !4081)
!4084 = !DILocation(line: 1930, column: 23, scope: !4081)
!4085 = !DILocation(line: 1931, column: 30, scope: !4081)
!4086 = !DILocation(line: 1931, column: 25, scope: !4081)
!4087 = !DILocation(line: 1931, column: 5, scope: !4081)
!4088 = !DILocation(line: 1931, column: 23, scope: !4081)
!4089 = !DILocation(line: 1932, column: 30, scope: !4081)
!4090 = !{!674, !486, i64 512}
!4091 = !DILocation(line: 1932, column: 25, scope: !4081)
!4092 = !DILocation(line: 1932, column: 5, scope: !4081)
!4093 = !DILocation(line: 1932, column: 23, scope: !4081)
!4094 = !DILocation(line: 1933, column: 7, scope: !4081)
!4095 = !DILocation(line: 1934, column: 4, scope: !4081)
!4096 = !DILocation(line: 0, scope: !4061)
!4097 = !DILocation(line: 1926, column: 37, scope: !4060)
!4098 = distinct !{!4098, !4065, !4099}
!4099 = !DILocation(line: 1935, column: 3, scope: !4061)
!4100 = !DILocation(line: 1926, column: 10, scope: !4061)
!4101 = !DILocation(line: 1936, column: 8, scope: !4062)
!4102 = !DILocation(line: 1936, column: 14, scope: !4062)
!4103 = !DILocation(line: 1937, column: 28, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 1937, column: 3)
!4105 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1937, column: 3)
!4106 = !{!674, !485, i64 144}
!4107 = !DILocation(line: 1937, column: 22, scope: !4104)
!4108 = !DILocation(line: 1937, column: 3, scope: !4105)
!4109 = !DILocation(line: 1938, column: 13, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 1937, column: 41)
!4111 = !{!674, !486, i64 520}
!4112 = !DILocation(line: 1938, column: 8, scope: !4110)
!4113 = !DILocation(line: 1938, column: 24, scope: !4110)
!4114 = !DILocation(line: 1940, column: 9, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 1940, column: 8)
!4116 = !DILocation(line: 1940, column: 19, scope: !4115)
!4117 = !DILocation(line: 1939, column: 13, scope: !4110)
!4118 = !{!674, !486, i64 528}
!4119 = !DILocation(line: 1939, column: 8, scope: !4110)
!4120 = !DILocation(line: 1939, column: 24, scope: !4110)
!4121 = !DILocation(line: 1940, column: 23, scope: !4115)
!4122 = !DILocation(line: 1940, column: 8, scope: !4110)
!4123 = !DILocation(line: 1941, column: 29, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 1940, column: 34)
!4125 = !DILocation(line: 1941, column: 24, scope: !4124)
!4126 = !DILocation(line: 1941, column: 5, scope: !4124)
!4127 = !DILocation(line: 1941, column: 22, scope: !4124)
!4128 = !DILocation(line: 1942, column: 29, scope: !4124)
!4129 = !DILocation(line: 1942, column: 24, scope: !4124)
!4130 = !DILocation(line: 1942, column: 5, scope: !4124)
!4131 = !DILocation(line: 1942, column: 22, scope: !4124)
!4132 = !DILocation(line: 1943, column: 29, scope: !4124)
!4133 = !{!674, !486, i64 536}
!4134 = !DILocation(line: 1943, column: 24, scope: !4124)
!4135 = !DILocation(line: 1943, column: 5, scope: !4124)
!4136 = !DILocation(line: 1943, column: 22, scope: !4124)
!4137 = !DILocation(line: 1944, column: 7, scope: !4124)
!4138 = !DILocation(line: 1945, column: 4, scope: !4124)
!4139 = !DILocation(line: 0, scope: !4105)
!4140 = !DILocation(line: 1937, column: 37, scope: !4104)
!4141 = distinct !{!4141, !4108, !4142}
!4142 = !DILocation(line: 1946, column: 3, scope: !4105)
!4143 = !DILocation(line: 1937, column: 10, scope: !4105)
!4144 = !DILocation(line: 1947, column: 8, scope: !4062)
!4145 = !DILocation(line: 1947, column: 14, scope: !4062)
!4146 = !DILocation(line: 1948, column: 8, scope: !4062)
!4147 = !DILocation(line: 1948, column: 14, scope: !4062)
!4148 = !{!674, !485, i64 108}
!4149 = !DILocation(line: 1951, column: 28, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 1951, column: 3)
!4151 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1951, column: 3)
!4152 = !{!674, !485, i64 112}
!4153 = !DILocation(line: 1951, column: 22, scope: !4150)
!4154 = !DILocation(line: 1951, column: 3, scope: !4151)
!4155 = !DILocation(line: 1952, column: 13, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 1951, column: 42)
!4157 = !{!674, !486, i64 544}
!4158 = !DILocation(line: 1952, column: 8, scope: !4156)
!4159 = !DILocation(line: 1952, column: 26, scope: !4156)
!4160 = !DILocation(line: 1954, column: 13, scope: !4156)
!4161 = !{!674, !486, i64 560}
!4162 = !DILocation(line: 1954, column: 8, scope: !4156)
!4163 = !DILocation(line: 1954, column: 26, scope: !4156)
!4164 = !DILocation(line: 1955, column: 9, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 1955, column: 8)
!4166 = !DILocation(line: 1955, column: 19, scope: !4165)
!4167 = !DILocation(line: 1953, column: 13, scope: !4156)
!4168 = !{!674, !486, i64 552}
!4169 = !DILocation(line: 1953, column: 8, scope: !4156)
!4170 = !DILocation(line: 1953, column: 26, scope: !4156)
!4171 = !DILocation(line: 1955, column: 23, scope: !4165)
!4172 = !DILocation(line: 1955, column: 33, scope: !4165)
!4173 = !DILocation(line: 1955, column: 37, scope: !4165)
!4174 = !DILocation(line: 1955, column: 8, scope: !4156)
!4175 = !DILocation(line: 1956, column: 31, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 1955, column: 48)
!4177 = !DILocation(line: 1956, column: 26, scope: !4176)
!4178 = !DILocation(line: 1956, column: 5, scope: !4176)
!4179 = !DILocation(line: 1956, column: 24, scope: !4176)
!4180 = !DILocation(line: 1957, column: 31, scope: !4176)
!4181 = !DILocation(line: 1957, column: 26, scope: !4176)
!4182 = !DILocation(line: 1957, column: 5, scope: !4176)
!4183 = !DILocation(line: 1957, column: 24, scope: !4176)
!4184 = !DILocation(line: 1958, column: 31, scope: !4176)
!4185 = !DILocation(line: 1958, column: 26, scope: !4176)
!4186 = !DILocation(line: 1958, column: 5, scope: !4176)
!4187 = !DILocation(line: 1958, column: 24, scope: !4176)
!4188 = !DILocation(line: 1959, column: 31, scope: !4176)
!4189 = !{!674, !486, i64 568}
!4190 = !DILocation(line: 1959, column: 26, scope: !4176)
!4191 = !DILocation(line: 1959, column: 5, scope: !4176)
!4192 = !DILocation(line: 1959, column: 24, scope: !4176)
!4193 = !DILocation(line: 1960, column: 7, scope: !4176)
!4194 = !DILocation(line: 1961, column: 4, scope: !4176)
!4195 = !DILocation(line: 0, scope: !4151)
!4196 = !DILocation(line: 1951, column: 38, scope: !4150)
!4197 = distinct !{!4197, !4154, !4198}
!4198 = !DILocation(line: 1962, column: 3, scope: !4151)
!4199 = !DILocation(line: 1951, column: 10, scope: !4151)
!4200 = !DILocation(line: 1963, column: 8, scope: !4062)
!4201 = !DILocation(line: 1963, column: 15, scope: !4062)
!4202 = !DILocation(line: 1964, column: 28, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 1964, column: 3)
!4204 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1964, column: 3)
!4205 = !{!674, !485, i64 148}
!4206 = !DILocation(line: 1964, column: 22, scope: !4203)
!4207 = !DILocation(line: 1964, column: 3, scope: !4204)
!4208 = !DILocation(line: 1965, column: 13, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 1964, column: 42)
!4210 = !{!674, !486, i64 576}
!4211 = !DILocation(line: 1965, column: 8, scope: !4209)
!4212 = !DILocation(line: 1965, column: 25, scope: !4209)
!4213 = !DILocation(line: 1967, column: 13, scope: !4209)
!4214 = !{!674, !486, i64 592}
!4215 = !DILocation(line: 1967, column: 8, scope: !4209)
!4216 = !DILocation(line: 1967, column: 25, scope: !4209)
!4217 = !DILocation(line: 1968, column: 9, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 1968, column: 8)
!4219 = !DILocation(line: 1968, column: 19, scope: !4218)
!4220 = !DILocation(line: 1966, column: 13, scope: !4209)
!4221 = !{!674, !486, i64 584}
!4222 = !DILocation(line: 1966, column: 8, scope: !4209)
!4223 = !DILocation(line: 1966, column: 25, scope: !4209)
!4224 = !DILocation(line: 1968, column: 23, scope: !4218)
!4225 = !DILocation(line: 1968, column: 33, scope: !4218)
!4226 = !DILocation(line: 1968, column: 37, scope: !4218)
!4227 = !DILocation(line: 1968, column: 8, scope: !4209)
!4228 = !DILocation(line: 1969, column: 30, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 1968, column: 48)
!4230 = !DILocation(line: 1969, column: 25, scope: !4229)
!4231 = !DILocation(line: 1969, column: 5, scope: !4229)
!4232 = !DILocation(line: 1969, column: 23, scope: !4229)
!4233 = !DILocation(line: 1970, column: 30, scope: !4229)
!4234 = !DILocation(line: 1970, column: 25, scope: !4229)
!4235 = !DILocation(line: 1970, column: 5, scope: !4229)
!4236 = !DILocation(line: 1970, column: 23, scope: !4229)
!4237 = !DILocation(line: 1971, column: 30, scope: !4229)
!4238 = !DILocation(line: 1971, column: 25, scope: !4229)
!4239 = !DILocation(line: 1971, column: 5, scope: !4229)
!4240 = !DILocation(line: 1971, column: 23, scope: !4229)
!4241 = !DILocation(line: 1972, column: 30, scope: !4229)
!4242 = !{!674, !486, i64 600}
!4243 = !DILocation(line: 1972, column: 25, scope: !4229)
!4244 = !DILocation(line: 1972, column: 5, scope: !4229)
!4245 = !DILocation(line: 1972, column: 23, scope: !4229)
!4246 = !DILocation(line: 1973, column: 7, scope: !4229)
!4247 = !DILocation(line: 1974, column: 4, scope: !4229)
!4248 = !DILocation(line: 0, scope: !4204)
!4249 = !DILocation(line: 1964, column: 38, scope: !4203)
!4250 = distinct !{!4250, !4207, !4251}
!4251 = !DILocation(line: 1975, column: 3, scope: !4204)
!4252 = !DILocation(line: 1964, column: 10, scope: !4204)
!4253 = !DILocation(line: 1976, column: 8, scope: !4062)
!4254 = !DILocation(line: 1976, column: 15, scope: !4062)
!4255 = !DILocation(line: 1980, column: 20, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 1980, column: 3)
!4257 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1980, column: 3)
!4258 = !{!674, !485, i64 96}
!4259 = !DILocation(line: 1980, column: 14, scope: !4256)
!4260 = !DILocation(line: 1980, column: 3, scope: !4257)
!4261 = !DILocation(line: 1980, column: 38, scope: !4256)
!4262 = !{!674, !486, i64 696}
!4263 = !DILocation(line: 1980, column: 33, scope: !4256)
!4264 = !DILocation(line: 1980, column: 50, scope: !4256)
!4265 = !DILocation(line: 1980, column: 28, scope: !4256)
!4266 = distinct !{!4266, !4260, !4267}
!4267 = !DILocation(line: 1980, column: 52, scope: !4257)
!4268 = !DILocation(line: 1981, column: 43, scope: !4062)
!4269 = !DILocation(line: 1981, column: 38, scope: !4062)
!4270 = !DILocation(line: 1981, column: 37, scope: !4062)
!4271 = !DILocation(line: 1981, column: 19, scope: !4062)
!4272 = !DILocation(line: 1981, column: 11, scope: !4062)
!4273 = !DILocation(line: 1982, column: 28, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 1982, column: 3)
!4275 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 1982, column: 3)
!4276 = !{!674, !485, i64 120}
!4277 = !DILocation(line: 1982, column: 22, scope: !4274)
!4278 = !DILocation(line: 1982, column: 3, scope: !4275)
!4279 = !DILocation(line: 1983, column: 13, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 1982, column: 41)
!4281 = !{!674, !486, i64 608}
!4282 = !DILocation(line: 1983, column: 8, scope: !4280)
!4283 = !DILocation(line: 1983, column: 24, scope: !4280)
!4284 = !DILocation(line: 1985, column: 13, scope: !4280)
!4285 = !{!674, !486, i64 624}
!4286 = !DILocation(line: 1985, column: 8, scope: !4280)
!4287 = !DILocation(line: 1985, column: 24, scope: !4280)
!4288 = !DILocation(line: 1986, column: 13, scope: !4280)
!4289 = !{!674, !486, i64 632}
!4290 = !DILocation(line: 1986, column: 8, scope: !4280)
!4291 = !DILocation(line: 1986, column: 24, scope: !4280)
!4292 = !DILocation(line: 1987, column: 9, scope: !4280)
!4293 = !DILocation(line: 1988, column: 9, scope: !4280)
!4294 = !DILocation(line: 1989, column: 9, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 1989, column: 8)
!4296 = !DILocation(line: 1989, column: 19, scope: !4295)
!4297 = !DILocation(line: 1984, column: 13, scope: !4280)
!4298 = !{!674, !486, i64 616}
!4299 = !DILocation(line: 1984, column: 8, scope: !4280)
!4300 = !DILocation(line: 1984, column: 24, scope: !4280)
!4301 = !DILocation(line: 1989, column: 23, scope: !4295)
!4302 = !DILocation(line: 1989, column: 33, scope: !4295)
!4303 = !DILocation(line: 1989, column: 37, scope: !4295)
!4304 = !DILocation(line: 1989, column: 48, scope: !4295)
!4305 = !DILocation(line: 1989, column: 52, scope: !4295)
!4306 = !DILocation(line: 1989, column: 8, scope: !4280)
!4307 = !DILocation(line: 1990, column: 29, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 1989, column: 64)
!4309 = !DILocation(line: 1990, column: 24, scope: !4308)
!4310 = !DILocation(line: 1990, column: 5, scope: !4308)
!4311 = !DILocation(line: 1990, column: 22, scope: !4308)
!4312 = !DILocation(line: 1991, column: 29, scope: !4308)
!4313 = !DILocation(line: 1991, column: 24, scope: !4308)
!4314 = !DILocation(line: 1991, column: 5, scope: !4308)
!4315 = !DILocation(line: 1991, column: 22, scope: !4308)
!4316 = !DILocation(line: 1992, column: 29, scope: !4308)
!4317 = !DILocation(line: 1992, column: 24, scope: !4308)
!4318 = !DILocation(line: 1992, column: 5, scope: !4308)
!4319 = !DILocation(line: 1992, column: 22, scope: !4308)
!4320 = !DILocation(line: 1993, column: 29, scope: !4308)
!4321 = !DILocation(line: 1993, column: 24, scope: !4308)
!4322 = !DILocation(line: 1993, column: 5, scope: !4308)
!4323 = !DILocation(line: 1993, column: 22, scope: !4308)
!4324 = !DILocation(line: 1994, column: 29, scope: !4308)
!4325 = !{!674, !486, i64 640}
!4326 = !DILocation(line: 1994, column: 24, scope: !4308)
!4327 = !DILocation(line: 1994, column: 5, scope: !4308)
!4328 = !DILocation(line: 1994, column: 22, scope: !4308)
!4329 = !DILocation(line: 1995, column: 7, scope: !4308)
!4330 = !DILocation(line: 1996, column: 11, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 1996, column: 9)
!4332 = !DILocation(line: 1996, column: 16, scope: !4331)
!4333 = !DILocation(line: 1997, column: 17, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 1996, column: 27)
!4335 = !DILocation(line: 1997, column: 15, scope: !4334)
!4336 = !DILocation(line: 1998, column: 17, scope: !4334)
!4337 = !DILocation(line: 1998, column: 15, scope: !4334)
!4338 = !DILocation(line: 1999, column: 14, scope: !4334)
!4339 = !DILocation(line: 1999, column: 29, scope: !4334)
!4340 = !DILocation(line: 1999, column: 24, scope: !4334)
!4341 = !DILocation(line: 1999, column: 45, scope: !4334)
!4342 = !DILocation(line: 1999, column: 22, scope: !4334)
!4343 = !DILocation(line: 1999, column: 6, scope: !4334)
!4344 = !DILocation(line: 1999, column: 49, scope: !4334)
!4345 = !DILocation(line: 2000, column: 5, scope: !4334)
!4346 = !DILocation(line: 0, scope: !4275)
!4347 = !DILocation(line: 1982, column: 37, scope: !4274)
!4348 = distinct !{!4348, !4278, !4349}
!4349 = !DILocation(line: 2002, column: 3, scope: !4275)
!4350 = !DILocation(line: 1982, column: 10, scope: !4275)
!4351 = !DILocation(line: 2003, column: 8, scope: !4062)
!4352 = !DILocation(line: 2003, column: 14, scope: !4062)
!4353 = !DILocation(line: 2004, column: 28, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 2004, column: 3)
!4355 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 2004, column: 3)
!4356 = !{!674, !485, i64 152}
!4357 = !DILocation(line: 2004, column: 22, scope: !4354)
!4358 = !DILocation(line: 2004, column: 3, scope: !4355)
!4359 = !DILocation(line: 2005, column: 13, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 2004, column: 41)
!4361 = !{!674, !486, i64 648}
!4362 = !DILocation(line: 2005, column: 8, scope: !4360)
!4363 = !DILocation(line: 2005, column: 23, scope: !4360)
!4364 = !DILocation(line: 2007, column: 13, scope: !4360)
!4365 = !{!674, !486, i64 664}
!4366 = !DILocation(line: 2007, column: 8, scope: !4360)
!4367 = !DILocation(line: 2007, column: 23, scope: !4360)
!4368 = !DILocation(line: 2008, column: 13, scope: !4360)
!4369 = !{!674, !486, i64 672}
!4370 = !DILocation(line: 2008, column: 8, scope: !4360)
!4371 = !DILocation(line: 2008, column: 23, scope: !4360)
!4372 = !DILocation(line: 2009, column: 9, scope: !4360)
!4373 = !DILocation(line: 2010, column: 9, scope: !4360)
!4374 = !DILocation(line: 2011, column: 9, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 2011, column: 8)
!4376 = !DILocation(line: 2011, column: 19, scope: !4375)
!4377 = !DILocation(line: 2006, column: 13, scope: !4360)
!4378 = !{!674, !486, i64 656}
!4379 = !DILocation(line: 2006, column: 8, scope: !4360)
!4380 = !DILocation(line: 2006, column: 23, scope: !4360)
!4381 = !DILocation(line: 2011, column: 23, scope: !4375)
!4382 = !DILocation(line: 2011, column: 33, scope: !4375)
!4383 = !DILocation(line: 2011, column: 37, scope: !4375)
!4384 = !DILocation(line: 2011, column: 48, scope: !4375)
!4385 = !DILocation(line: 2011, column: 52, scope: !4375)
!4386 = !DILocation(line: 2011, column: 8, scope: !4360)
!4387 = !DILocation(line: 2012, column: 28, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 2011, column: 64)
!4389 = !DILocation(line: 2012, column: 23, scope: !4388)
!4390 = !DILocation(line: 2012, column: 5, scope: !4388)
!4391 = !DILocation(line: 2012, column: 21, scope: !4388)
!4392 = !DILocation(line: 2013, column: 28, scope: !4388)
!4393 = !DILocation(line: 2013, column: 23, scope: !4388)
!4394 = !DILocation(line: 2013, column: 5, scope: !4388)
!4395 = !DILocation(line: 2013, column: 21, scope: !4388)
!4396 = !DILocation(line: 2014, column: 28, scope: !4388)
!4397 = !DILocation(line: 2014, column: 23, scope: !4388)
!4398 = !DILocation(line: 2014, column: 5, scope: !4388)
!4399 = !DILocation(line: 2014, column: 21, scope: !4388)
!4400 = !DILocation(line: 2015, column: 28, scope: !4388)
!4401 = !DILocation(line: 2015, column: 23, scope: !4388)
!4402 = !DILocation(line: 2015, column: 5, scope: !4388)
!4403 = !DILocation(line: 2015, column: 21, scope: !4388)
!4404 = !DILocation(line: 2016, column: 28, scope: !4388)
!4405 = !{!674, !486, i64 680}
!4406 = !DILocation(line: 2016, column: 23, scope: !4388)
!4407 = !DILocation(line: 2016, column: 5, scope: !4388)
!4408 = !DILocation(line: 2016, column: 21, scope: !4388)
!4409 = !DILocation(line: 2017, column: 7, scope: !4388)
!4410 = !DILocation(line: 2018, column: 11, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 2018, column: 9)
!4412 = !DILocation(line: 2018, column: 16, scope: !4411)
!4413 = !DILocation(line: 2019, column: 17, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 2018, column: 27)
!4415 = !DILocation(line: 2019, column: 15, scope: !4414)
!4416 = !DILocation(line: 2020, column: 17, scope: !4414)
!4417 = !DILocation(line: 2020, column: 15, scope: !4414)
!4418 = !DILocation(line: 2021, column: 14, scope: !4414)
!4419 = !DILocation(line: 2021, column: 29, scope: !4414)
!4420 = !DILocation(line: 2021, column: 24, scope: !4414)
!4421 = !DILocation(line: 2021, column: 45, scope: !4414)
!4422 = !DILocation(line: 2021, column: 22, scope: !4414)
!4423 = !DILocation(line: 2021, column: 6, scope: !4414)
!4424 = !DILocation(line: 2021, column: 49, scope: !4414)
!4425 = !DILocation(line: 2022, column: 5, scope: !4414)
!4426 = !DILocation(line: 0, scope: !4355)
!4427 = !DILocation(line: 2004, column: 37, scope: !4354)
!4428 = distinct !{!4428, !4358, !4429}
!4429 = !DILocation(line: 2024, column: 3, scope: !4355)
!4430 = !DILocation(line: 2004, column: 10, scope: !4355)
!4431 = !DILocation(line: 2025, column: 8, scope: !4062)
!4432 = !DILocation(line: 2025, column: 14, scope: !4062)
!4433 = !DILocation(line: 2026, column: 8, scope: !4062)
!4434 = !DILocation(line: 2026, column: 14, scope: !4062)
!4435 = !{!674, !485, i64 124}
!4436 = !DILocation(line: 2028, column: 20, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 2028, column: 3)
!4438 = distinct !DILexicalBlock(scope: !4062, file: !3, line: 2028, column: 3)
!4439 = !DILocation(line: 2028, column: 14, scope: !4437)
!4440 = !DILocation(line: 2028, column: 3, scope: !4438)
!4441 = !DILocation(line: 2029, column: 9, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 2029, column: 4)
!4443 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 2028, column: 36)
!4444 = !DILocation(line: 2029, column: 21, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 2029, column: 4)
!4446 = !DILocation(line: 2029, column: 16, scope: !4445)
!4447 = !DILocation(line: 2029, column: 15, scope: !4445)
!4448 = !DILocation(line: 2029, column: 4, scope: !4442)
!4449 = !DILocation(line: 2030, column: 38, scope: !4445)
!4450 = !DILocation(line: 2030, column: 41, scope: !4445)
!4451 = !DILocation(line: 2030, column: 30, scope: !4445)
!4452 = !DILocation(line: 2030, column: 11, scope: !4445)
!4453 = !{!674, !486, i64 704}
!4454 = !DILocation(line: 2030, column: 24, scope: !4445)
!4455 = !DILocation(line: 2030, column: 6, scope: !4445)
!4456 = !DILocation(line: 2030, column: 28, scope: !4445)
!4457 = !DILocation(line: 2029, column: 35, scope: !4445)
!4458 = distinct !{!4458, !4448, !4459}
!4459 = !DILocation(line: 2030, column: 44, scope: !4442)
!4460 = !DILocation(line: 2028, column: 32, scope: !4437)
!4461 = !DILocation(line: 2028, column: 26, scope: !4437)
!4462 = distinct !{!4462, !4440, !4463}
!4463 = !DILocation(line: 2031, column: 3, scope: !4438)
!4464 = !DILocation(line: 2032, column: 3, scope: !4062)
!4465 = !DILocation(line: 2033, column: 2, scope: !4062)
!4466 = !DILocation(line: 2034, column: 2, scope: !3983)
!4467 = distinct !DISubprogram(name: "get", scope: !3, file: !3, line: 102, type: !4468, scopeLine: 104, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4470)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!241, !329}
!4470 = !{!4471, !4472}
!4471 = !DILocalVariable(name: "size", arg: 1, scope: !4467, file: !3, line: 103, type: !329)
!4472 = !DILocalVariable(name: "ptr", scope: !4467, file: !3, line: 105, type: !241)
!4473 = !DILocation(line: 0, scope: !4467)
!4474 = !DILocation(line: 107, column: 11, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 107, column: 6)
!4476 = !DILocation(line: 107, column: 6, scope: !4467)
!4477 = !DILocation(line: 110, column: 22, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 110, column: 6)
!4479 = !DILocation(line: 110, column: 51, scope: !4478)
!4480 = !DILocation(line: 110, column: 6, scope: !4467)
!4481 = !DILocation(line: 111, column: 12, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 110, column: 60)
!4483 = !DILocation(line: 111, column: 3, scope: !4482)
!4484 = !DILocation(line: 112, column: 10, scope: !4482)
!4485 = !DILocation(line: 112, column: 3, scope: !4482)
!4486 = !DILocation(line: 113, column: 3, scope: !4482)
!4487 = !DILocation(line: 114, column: 3, scope: !4482)
!4488 = !DILocation(line: 117, column: 1, scope: !4467)
!4489 = distinct !DISubprogram(name: "set_cons_mask", scope: !3, file: !3, line: 2037, type: !3984, scopeLine: 2041, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4490)
!4490 = !{!4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500}
!4491 = !DILocalVariable(name: "m", arg: 1, scope: !4489, file: !3, line: 2038, type: !22)
!4492 = !DILocalVariable(name: "aex", arg: 2, scope: !4489, file: !3, line: 2039, type: !241)
!4493 = !DILocalVariable(name: "cons", arg: 3, scope: !4489, file: !3, line: 2040, type: !277)
!4494 = !DILocalVariable(name: "r", scope: !4489, file: !3, line: 2042, type: !36)
!4495 = !DILocalVariable(name: "a", scope: !4489, file: !3, line: 2042, type: !36)
!4496 = !DILocalVariable(name: "n", scope: !4489, file: !3, line: 2042, type: !36)
!4497 = !DILocalVariable(name: "ncons", scope: !4489, file: !3, line: 2042, type: !36)
!4498 = !DILocalVariable(name: "sp", scope: !4489, file: !3, line: 2043, type: !38)
!4499 = !DILocalVariable(name: "res", scope: !4489, file: !3, line: 2044, type: !56)
!4500 = !DILocalVariable(name: "ap", scope: !4489, file: !3, line: 2045, type: !102)
!4501 = !DILocation(line: 0, scope: !4489)
!4502 = !DILocation(line: 2047, column: 2, scope: !4489)
!4503 = !DILocation(line: 2049, column: 22, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 2049, column: 2)
!4505 = !DILocation(line: 2049, column: 2, scope: !4504)
!4506 = !DILocation(line: 2050, column: 23, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 2050, column: 3)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 2050, column: 3)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 2049, column: 54)
!4510 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 2049, column: 2)
!4511 = !DILocation(line: 2050, column: 17, scope: !4507)
!4512 = !DILocation(line: 2050, column: 3, scope: !4508)
!4513 = !DILocation(line: 2051, column: 14, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 2050, column: 41)
!4515 = !DILocation(line: 2051, column: 10, scope: !4514)
!4516 = !DILocation(line: 2052, column: 9, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 2052, column: 4)
!4518 = !DILocation(line: 2052, column: 25, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 2052, column: 4)
!4520 = !DILocation(line: 2052, column: 18, scope: !4519)
!4521 = !DILocation(line: 2052, column: 4, scope: !4517)
!4522 = !DILocation(line: 2053, column: 16, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 2052, column: 40)
!4524 = !DILocation(line: 2054, column: 13, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 2054, column: 9)
!4526 = !DILocation(line: 2054, column: 20, scope: !4525)
!4527 = !DILocation(line: 2054, column: 9, scope: !4523)
!4528 = !DILocation(line: 2054, column: 35, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 2054, column: 34)
!4530 = !DILocation(line: 2054, column: 43, scope: !4529)
!4531 = !DILocation(line: 2054, column: 53, scope: !4529)
!4532 = !DILocation(line: 2054, column: 57, scope: !4529)
!4533 = !DILocation(line: 2055, column: 12, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 2055, column: 11)
!4535 = !DILocation(line: 2055, column: 20, scope: !4534)
!4536 = !DILocation(line: 2056, column: 6, scope: !4523)
!4537 = !DILocation(line: 2052, column: 36, scope: !4519)
!4538 = distinct !{!4538, !4521, !4539}
!4539 = !DILocation(line: 2057, column: 4, scope: !4517)
!4540 = !DILocation(line: 2058, column: 3, scope: !4514)
!4541 = !DILocation(line: 2050, column: 37, scope: !4507)
!4542 = distinct !{!4542, !4512, !4543}
!4543 = !DILocation(line: 2058, column: 3, scope: !4508)
!4544 = !DILocation(line: 2049, column: 9, scope: !4504)
!4545 = !DILocation(line: 2048, column: 8, scope: !4489)
!4546 = !DILocation(line: 2049, column: 46, scope: !4510)
!4547 = distinct !{!4547, !4505, !4548}
!4548 = !DILocation(line: 2059, column: 2, scope: !4504)
!4549 = !DILocation(line: 2060, column: 2, scope: !4489)
!4550 = distinct !DISubprogram(name: "circle", scope: !3, file: !3, line: 2088, type: !4551, scopeLine: 2089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4553)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!35, !180, !180, !180, !180}
!4553 = !{!4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566}
!4554 = !DILocalVariable(name: "p1", arg: 1, scope: !4550, file: !3, line: 2088, type: !180)
!4555 = !DILocalVariable(name: "p2", arg: 2, scope: !4550, file: !3, line: 2088, type: !180)
!4556 = !DILocalVariable(name: "p3", arg: 3, scope: !4550, file: !3, line: 2088, type: !180)
!4557 = !DILocalVariable(name: "pc", arg: 4, scope: !4550, file: !3, line: 2088, type: !180)
!4558 = !DILocalVariable(name: "i", scope: !4550, file: !3, line: 2099, type: !35)
!4559 = !DILocalVariable(name: "v", scope: !4550, file: !3, line: 2100, type: !128)
!4560 = !DILocalVariable(name: "ab", scope: !4550, file: !3, line: 2101, type: !128)
!4561 = !DILocalVariable(name: "ac", scope: !4550, file: !3, line: 2102, type: !128)
!4562 = !DILocalVariable(name: "bc", scope: !4550, file: !3, line: 2103, type: !128)
!4563 = !DILocalVariable(name: "m_ab", scope: !4550, file: !3, line: 2104, type: !128)
!4564 = !DILocalVariable(name: "cm", scope: !4550, file: !3, line: 2105, type: !128)
!4565 = !DILocalVariable(name: "fac1", scope: !4550, file: !3, line: 2106, type: !30)
!4566 = !DILocalVariable(name: "fac2", scope: !4550, file: !3, line: 2106, type: !30)
!4567 = !DILocation(line: 0, scope: !4550)
!4568 = !DILocation(line: 2100, column: 3, scope: !4550)
!4569 = !DILocation(line: 2100, column: 10, scope: !4550)
!4570 = !DILocation(line: 2101, column: 3, scope: !4550)
!4571 = !DILocation(line: 2101, column: 10, scope: !4550)
!4572 = !DILocation(line: 2102, column: 3, scope: !4550)
!4573 = !DILocation(line: 2102, column: 10, scope: !4550)
!4574 = !DILocation(line: 2103, column: 3, scope: !4550)
!4575 = !DILocation(line: 2103, column: 10, scope: !4550)
!4576 = !DILocation(line: 2104, column: 3, scope: !4550)
!4577 = !DILocation(line: 2104, column: 10, scope: !4550)
!4578 = !DILocation(line: 2105, column: 3, scope: !4550)
!4579 = !DILocation(line: 2105, column: 10, scope: !4550)
!4580 = !DILocation(line: 2108, column: 3, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 2108, column: 3)
!4582 = !DILocation(line: 2108, column: 29, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 2108, column: 3)
!4584 = !DILocation(line: 2108, column: 37, scope: !4583)
!4585 = !DILocation(line: 2108, column: 35, scope: !4583)
!4586 = !DILocation(line: 2108, column: 21, scope: !4583)
!4587 = !DILocation(line: 2108, column: 27, scope: !4583)
!4588 = !DILocation(line: 2108, column: 17, scope: !4583)
!4589 = !DILocation(line: 2108, column: 13, scope: !4583)
!4590 = distinct !{!4590, !4580, !4591}
!4591 = !DILocation(line: 2108, column: 41, scope: !4581)
!4592 = !DILocation(line: 2109, column: 29, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 2109, column: 3)
!4594 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 2109, column: 3)
!4595 = !DILocation(line: 2109, column: 37, scope: !4593)
!4596 = !DILocation(line: 2109, column: 35, scope: !4593)
!4597 = !DILocation(line: 2109, column: 21, scope: !4593)
!4598 = !DILocation(line: 2109, column: 27, scope: !4593)
!4599 = !DILocation(line: 2109, column: 17, scope: !4593)
!4600 = !DILocation(line: 2109, column: 13, scope: !4593)
!4601 = !DILocation(line: 2109, column: 3, scope: !4594)
!4602 = distinct !{!4602, !4601, !4603}
!4603 = !DILocation(line: 2109, column: 41, scope: !4594)
!4604 = !DILocation(line: 2110, column: 29, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 2110, column: 3)
!4606 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 2110, column: 3)
!4607 = !DILocation(line: 2110, column: 37, scope: !4605)
!4608 = !DILocation(line: 2110, column: 35, scope: !4605)
!4609 = !DILocation(line: 2110, column: 21, scope: !4605)
!4610 = !DILocation(line: 2110, column: 27, scope: !4605)
!4611 = !DILocation(line: 2110, column: 17, scope: !4605)
!4612 = !DILocation(line: 2110, column: 13, scope: !4605)
!4613 = !DILocation(line: 2110, column: 3, scope: !4606)
!4614 = distinct !{!4614, !4613, !4615}
!4615 = !DILocation(line: 2110, column: 41, scope: !4606)
!4616 = !DILocation(line: 2111, column: 36, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 2111, column: 3)
!4618 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 2111, column: 3)
!4619 = !DILocation(line: 2111, column: 44, scope: !4617)
!4620 = !DILocation(line: 2111, column: 42, scope: !4617)
!4621 = !DILocation(line: 2111, column: 34, scope: !4617)
!4622 = !DILocation(line: 2111, column: 21, scope: !4617)
!4623 = !DILocation(line: 2111, column: 29, scope: !4617)
!4624 = !DILocation(line: 2111, column: 17, scope: !4617)
!4625 = !DILocation(line: 2111, column: 13, scope: !4617)
!4626 = !DILocation(line: 2111, column: 3, scope: !4618)
!4627 = distinct !{!4627, !4626, !4628}
!4628 = !DILocation(line: 2111, column: 49, scope: !4618)
!4629 = !DILocation(line: 2112, column: 29, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 2112, column: 3)
!4631 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 2112, column: 3)
!4632 = !DILocation(line: 2112, column: 37, scope: !4630)
!4633 = !DILocation(line: 2112, column: 35, scope: !4630)
!4634 = !DILocation(line: 2112, column: 21, scope: !4630)
!4635 = !DILocation(line: 2112, column: 27, scope: !4630)
!4636 = !DILocation(line: 2112, column: 17, scope: !4630)
!4637 = !DILocation(line: 2112, column: 13, scope: !4630)
!4638 = !DILocation(line: 2112, column: 3, scope: !4631)
!4639 = distinct !{!4639, !4638, !4640}
!4640 = !DILocation(line: 2112, column: 43, scope: !4631)
!4641 = !DILocation(line: 2114, column: 15, scope: !4550)
!4642 = !DILocation(line: 2114, column: 18, scope: !4550)
!4643 = !DILocation(line: 2114, column: 10, scope: !4550)
!4644 = !DILocation(line: 2114, column: 29, scope: !4550)
!4645 = !DILocation(line: 2114, column: 32, scope: !4550)
!4646 = !DILocation(line: 2114, column: 24, scope: !4550)
!4647 = !DILocation(line: 2114, column: 22, scope: !4550)
!4648 = !DILocation(line: 2116, column: 3, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 2116, column: 3)
!4650 = !DILocation(line: 2116, column: 28, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 2116, column: 3)
!4652 = !DILocation(line: 2116, column: 43, scope: !4651)
!4653 = !DILocation(line: 2116, column: 41, scope: !4651)
!4654 = !DILocation(line: 2116, column: 34, scope: !4651)
!4655 = !DILocation(line: 2116, column: 21, scope: !4651)
!4656 = !DILocation(line: 2116, column: 26, scope: !4651)
!4657 = !DILocation(line: 2116, column: 17, scope: !4651)
!4658 = !DILocation(line: 2116, column: 13, scope: !4651)
!4659 = distinct !{!4659, !4648, !4660}
!4660 = !DILocation(line: 2116, column: 47, scope: !4649)
!4661 = !DILocation(line: 2118, column: 15, scope: !4550)
!4662 = !DILocation(line: 2118, column: 18, scope: !4550)
!4663 = !DILocation(line: 2118, column: 10, scope: !4550)
!4664 = !DILocation(line: 2119, column: 7, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 2119, column: 7)
!4666 = !DILocation(line: 2119, column: 19, scope: !4665)
!4667 = !DILocation(line: 2119, column: 7, scope: !4550)
!4668 = !DILocation(line: 2121, column: 16, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 2120, column: 5)
!4670 = !DILocation(line: 2121, column: 7, scope: !4669)
!4671 = !DILocation(line: 2122, column: 7, scope: !4669)
!4672 = !DILocation(line: 2124, column: 21, scope: !4550)
!4673 = !DILocation(line: 2124, column: 24, scope: !4550)
!4674 = !DILocation(line: 2124, column: 16, scope: !4550)
!4675 = !DILocation(line: 2124, column: 14, scope: !4550)
!4676 = !DILocation(line: 2124, column: 27, scope: !4550)
!4677 = !DILocation(line: 2126, column: 3, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 2126, column: 3)
!4679 = !DILocation(line: 2126, column: 29, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 2126, column: 3)
!4681 = !DILocation(line: 2126, column: 44, scope: !4680)
!4682 = !DILocation(line: 2126, column: 43, scope: !4680)
!4683 = !DILocation(line: 2126, column: 37, scope: !4680)
!4684 = !DILocation(line: 2126, column: 21, scope: !4680)
!4685 = !DILocation(line: 2126, column: 27, scope: !4680)
!4686 = !DILocation(line: 2126, column: 17, scope: !4680)
!4687 = !DILocation(line: 2126, column: 13, scope: !4680)
!4688 = distinct !{!4688, !4677, !4689}
!4689 = !DILocation(line: 2126, column: 47, scope: !4678)
!4690 = !DILocation(line: 2129, column: 1, scope: !4550)
!4691 = distinct !DISubprogram(name: "vdot", scope: !3, file: !3, line: 2066, type: !260, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4692)
!4692 = !{!4693, !4694}
!4693 = !DILocalVariable(name: "x1", arg: 1, scope: !4691, file: !3, line: 2066, type: !180)
!4694 = !DILocalVariable(name: "x2", arg: 2, scope: !4691, file: !3, line: 2066, type: !180)
!4695 = !DILocation(line: 0, scope: !4691)
!4696 = !DILocation(line: 2068, column: 11, scope: !4691)
!4697 = !DILocation(line: 2068, column: 17, scope: !4691)
!4698 = !DILocation(line: 2068, column: 16, scope: !4691)
!4699 = !DILocation(line: 2068, column: 25, scope: !4691)
!4700 = !DILocation(line: 2068, column: 31, scope: !4691)
!4701 = !DILocation(line: 2068, column: 30, scope: !4691)
!4702 = !DILocation(line: 2068, column: 23, scope: !4691)
!4703 = !DILocation(line: 2068, column: 39, scope: !4691)
!4704 = !DILocation(line: 2068, column: 45, scope: !4691)
!4705 = !DILocation(line: 2068, column: 44, scope: !4691)
!4706 = !DILocation(line: 2068, column: 37, scope: !4691)
!4707 = !DILocation(line: 2068, column: 3, scope: !4691)
!4708 = distinct !DISubprogram(name: "find_atom", scope: !3, file: !3, line: 1748, type: !4709, scopeLine: 1749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4711)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!36, !56, !241}
!4711 = !{!4712, !4713, !4714, !4715}
!4712 = !DILocalVariable(name: "res", arg: 1, scope: !4708, file: !3, line: 1748, type: !56)
!4713 = !DILocalVariable(name: "aname", arg: 2, scope: !4708, file: !3, line: 1748, type: !241)
!4714 = !DILocalVariable(name: "a", scope: !4708, file: !3, line: 1750, type: !36)
!4715 = !DILocalVariable(name: "ap", scope: !4708, file: !3, line: 1751, type: !102)
!4716 = !DILocation(line: 0, scope: !4708)
!4717 = !DILocation(line: 1753, column: 24, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 1753, column: 2)
!4719 = !DILocation(line: 1753, column: 42, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 1753, column: 2)
!4721 = !DILocation(line: 1753, column: 35, scope: !4720)
!4722 = !DILocation(line: 1753, column: 2, scope: !4718)
!4723 = !DILocation(line: 1754, column: 19, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 1754, column: 7)
!4725 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 1753, column: 63)
!4726 = !DILocation(line: 1754, column: 7, scope: !4724)
!4727 = !DILocation(line: 1754, column: 39, scope: !4724)
!4728 = !DILocation(line: 1754, column: 7, scope: !4725)
!4729 = !DILocation(line: 1753, column: 53, scope: !4720)
!4730 = !DILocation(line: 1753, column: 59, scope: !4720)
!4731 = distinct !{!4731, !4722, !4732}
!4732 = !DILocation(line: 1756, column: 2, scope: !4718)
!4733 = !DILocation(line: 1758, column: 1, scope: !4708)
!4734 = distinct !DISubprogram(name: "delete_atom", scope: !3, file: !3, line: 1760, type: !4735, scopeLine: 1761, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4737)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!36, !56, !36}
!4737 = !{!4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746}
!4738 = !DILocalVariable(name: "res", arg: 1, scope: !4734, file: !3, line: 1760, type: !56)
!4739 = !DILocalVariable(name: "anum", arg: 2, scope: !4734, file: !3, line: 1760, type: !36)
!4740 = !DILocalVariable(name: "a", scope: !4734, file: !3, line: 1762, type: !36)
!4741 = !DILocalVariable(name: "ac", scope: !4734, file: !3, line: 1762, type: !36)
!4742 = !DILocalVariable(name: "c", scope: !4734, file: !3, line: 1762, type: !36)
!4743 = !DILocalVariable(name: "c1", scope: !4734, file: !3, line: 1762, type: !36)
!4744 = !DILocalVariable(name: "c2", scope: !4734, file: !3, line: 1762, type: !36)
!4745 = !DILocalVariable(name: "ap", scope: !4734, file: !3, line: 1763, type: !102)
!4746 = !DILocalVariable(name: "apc", scope: !4734, file: !3, line: 1763, type: !102)
!4747 = !DILocation(line: 0, scope: !4734)
!4748 = !DILocation(line: 1765, column: 11, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1765, column: 6)
!4750 = !DILocation(line: 1765, column: 15, scope: !4749)
!4751 = !DILocation(line: 1765, column: 31, scope: !4749)
!4752 = !DILocation(line: 1765, column: 23, scope: !4749)
!4753 = !DILocation(line: 1765, column: 6, scope: !4734)
!4754 = !DILocation(line: 1767, column: 13, scope: !4734)
!4755 = !DILocation(line: 1767, column: 8, scope: !4734)
!4756 = !DILocation(line: 1768, column: 22, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 1768, column: 2)
!4758 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1768, column: 2)
!4759 = !DILocation(line: 1768, column: 16, scope: !4757)
!4760 = !DILocation(line: 1768, column: 2, scope: !4758)
!4761 = !DILocation(line: 1769, column: 8, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 1768, column: 39)
!4763 = !DILocation(line: 1770, column: 15, scope: !4762)
!4764 = !DILocation(line: 1770, column: 10, scope: !4762)
!4765 = !DILocation(line: 1771, column: 26, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 1771, column: 3)
!4767 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 1771, column: 3)
!4768 = !DILocation(line: 1771, column: 19, scope: !4766)
!4769 = !DILocation(line: 1771, column: 3, scope: !4767)
!4770 = !DILocation(line: 1772, column: 8, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 1772, column: 8)
!4772 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 1771, column: 44)
!4773 = !DILocation(line: 1772, column: 29, scope: !4771)
!4774 = !DILocation(line: 1772, column: 8, scope: !4772)
!4775 = !DILocation(line: 1773, column: 29, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 1773, column: 5)
!4777 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 1773, column: 5)
!4778 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 1772, column: 38)
!4779 = !DILocation(line: 1773, column: 40, scope: !4776)
!4780 = !DILocation(line: 1773, column: 22, scope: !4776)
!4781 = !DILocation(line: 1773, column: 5, scope: !4777)
!4782 = !DILocation(line: 1773, column: 47, scope: !4776)
!4783 = !DILocation(line: 1775, column: 7, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 1773, column: 51)
!4785 = !DILocation(line: 1774, column: 6, scope: !4784)
!4786 = !DILocation(line: 1774, column: 27, scope: !4784)
!4787 = distinct !{!4787, !4781, !4788}
!4788 = !DILocation(line: 1776, column: 5, scope: !4777)
!4789 = !DILocation(line: 1777, column: 10, scope: !4778)
!4790 = !DILocation(line: 1777, column: 20, scope: !4778)
!4791 = !DILocation(line: 1778, column: 10, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 1778, column: 5)
!4793 = !DILocation(line: 1779, column: 9, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 1778, column: 5)
!4795 = !DILocation(line: 1778, column: 5, scope: !4792)
!4796 = !DILocation(line: 1780, column: 6, scope: !4794)
!4797 = !DILocation(line: 1780, column: 27, scope: !4794)
!4798 = !DILocation(line: 1779, column: 29, scope: !4794)
!4799 = distinct !{!4799, !4795, !4800}
!4800 = !DILocation(line: 1780, column: 29, scope: !4792)
!4801 = !DILocation(line: 1771, column: 40, scope: !4766)
!4802 = distinct !{!4802, !4769, !4803}
!4803 = !DILocation(line: 1783, column: 3, scope: !4767)
!4804 = !DILocation(line: 1768, column: 35, scope: !4757)
!4805 = distinct !{!4805, !4760, !4806}
!4806 = !DILocation(line: 1784, column: 2, scope: !4758)
!4807 = !DILocation(line: 1785, column: 26, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 1785, column: 2)
!4809 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1785, column: 2)
!4810 = !DILocation(line: 1785, column: 35, scope: !4808)
!4811 = !DILocation(line: 1785, column: 19, scope: !4808)
!4812 = !DILocation(line: 1785, column: 2, scope: !4809)
!4813 = !DILocation(line: 1786, column: 8, scope: !4808)
!4814 = !DILocation(line: 1786, column: 3, scope: !4808)
!4815 = !DILocation(line: 1785, column: 41, scope: !4808)
!4816 = !DILocation(line: 1786, column: 23, scope: !4808)
!4817 = !{i64 0, i64 8, !652, i64 8, i64 8, !652, i64 16, i64 4, !2242, i64 20, i64 4, !2242, i64 24, i64 32, !2235, i64 56, i64 8, !652, i64 64, i64 8, !455, i64 72, i64 8, !455, i64 80, i64 8, !455, i64 88, i64 8, !455, i64 96, i64 8, !652, i64 104, i64 4, !2242, i64 112, i64 8, !455, i64 120, i64 8, !455, i64 128, i64 4, !2242, i64 132, i64 4, !2242, i64 136, i64 8, !652, i64 144, i64 24, !2235, i64 168, i64 8, !455}
!4818 = distinct !{!4818, !4812, !4819}
!4819 = !DILocation(line: 1786, column: 43, scope: !4809)
!4820 = !DILocation(line: 1787, column: 7, scope: !4734)
!4821 = !DILocation(line: 1787, column: 15, scope: !4734)
!4822 = !DILocation(line: 1788, column: 23, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !3, line: 1788, column: 2)
!4824 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 1788, column: 2)
!4825 = !DILocation(line: 1788, column: 16, scope: !4823)
!4826 = !DILocation(line: 1788, column: 2, scope: !4824)
!4827 = !DILocation(line: 1789, column: 14, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 1788, column: 42)
!4829 = !DILocation(line: 1790, column: 23, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 1790, column: 3)
!4831 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 1790, column: 3)
!4832 = !DILocation(line: 1790, column: 17, scope: !4830)
!4833 = !DILocation(line: 1790, column: 3, scope: !4831)
!4834 = !DILocation(line: 1791, column: 8, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 1791, column: 8)
!4836 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 1790, column: 40)
!4837 = !DILocation(line: 1791, column: 27, scope: !4835)
!4838 = !DILocation(line: 1791, column: 8, scope: !4836)
!4839 = !DILocation(line: 1792, column: 5, scope: !4835)
!4840 = !DILocation(line: 1792, column: 23, scope: !4835)
!4841 = !DILocation(line: 1790, column: 36, scope: !4830)
!4842 = distinct !{!4842, !4833, !4843}
!4843 = !DILocation(line: 1793, column: 3, scope: !4831)
!4844 = !DILocation(line: 1788, column: 38, scope: !4823)
!4845 = !DILocation(line: 1788, column: 32, scope: !4823)
!4846 = distinct !{!4846, !4826, !4847}
!4847 = !DILocation(line: 1794, column: 2, scope: !4824)
!4848 = !DILocation(line: 1796, column: 1, scope: !4734)
!4849 = distinct !DISubprogram(name: "add_atom", scope: !3, file: !3, line: 1798, type: !4709, scopeLine: 1799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4850)
!4850 = !{!4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861}
!4851 = !DILocalVariable(name: "res", arg: 1, scope: !4849, file: !3, line: 1798, type: !56)
!4852 = !DILocalVariable(name: "aname", arg: 2, scope: !4849, file: !3, line: 1798, type: !241)
!4853 = !DILocalVariable(name: "na", scope: !4849, file: !3, line: 1800, type: !36)
!4854 = !DILocalVariable(name: "a", scope: !4849, file: !3, line: 1800, type: !36)
!4855 = !DILocalVariable(name: "c", scope: !4849, file: !3, line: 1800, type: !36)
!4856 = !DILocalVariable(name: "ap", scope: !4849, file: !3, line: 1801, type: !102)
!4857 = !DILocalVariable(name: "nap", scope: !4849, file: !3, line: 1801, type: !102)
!4858 = !DILocalVariable(name: "oap", scope: !4849, file: !3, line: 1801, type: !102)
!4859 = !DILocalVariable(name: "nai", scope: !4849, file: !3, line: 1802, type: !277)
!4860 = !DILocalVariable(name: "oai", scope: !4849, file: !3, line: 1802, type: !277)
!4861 = !DILocalVariable(name: "anp", scope: !4849, file: !3, line: 1803, type: !241)
!4862 = !DILocation(line: 0, scope: !4849)
!4863 = !DILocation(line: 1805, column: 12, scope: !4849)
!4864 = !DILocation(line: 1805, column: 21, scope: !4849)
!4865 = !DILocation(line: 1806, column: 34, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 1806, column: 6)
!4867 = !DILocation(line: 1806, column: 37, scope: !4866)
!4868 = !DILocation(line: 1806, column: 26, scope: !4866)
!4869 = !DILocation(line: 1806, column: 14, scope: !4866)
!4870 = !DILocation(line: 1806, column: 60, scope: !4866)
!4871 = !DILocation(line: 1806, column: 6, scope: !4849)
!4872 = !DILocation(line: 1807, column: 12, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 1806, column: 69)
!4874 = !DILocation(line: 1807, column: 3, scope: !4873)
!4875 = !DILocation(line: 1808, column: 3, scope: !4873)
!4876 = !DILocation(line: 1810, column: 31, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 1810, column: 6)
!4878 = !DILocation(line: 1810, column: 34, scope: !4877)
!4879 = !DILocation(line: 1810, column: 23, scope: !4877)
!4880 = !DILocation(line: 1810, column: 14, scope: !4877)
!4881 = !DILocation(line: 1810, column: 54, scope: !4877)
!4882 = !DILocation(line: 1810, column: 6, scope: !4849)
!4883 = !DILocation(line: 1811, column: 12, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 1810, column: 63)
!4885 = !DILocation(line: 1811, column: 3, scope: !4884)
!4886 = !DILocation(line: 1812, column: 3, scope: !4884)
!4887 = !DILocation(line: 1814, column: 13, scope: !4849)
!4888 = !DILocation(line: 1815, column: 7, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 1815, column: 2)
!4890 = !DILocation(line: 1815, column: 16, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 1815, column: 2)
!4892 = !DILocation(line: 1815, column: 2, scope: !4889)
!4893 = !DILocation(line: 1816, column: 3, scope: !4891)
!4894 = !DILocation(line: 1816, column: 14, scope: !4891)
!4895 = !DILocation(line: 1815, column: 27, scope: !4891)
!4896 = distinct !{!4896, !4892, !4897}
!4897 = !DILocation(line: 1816, column: 21, scope: !4889)
!4898 = !DILocation(line: 1817, column: 8, scope: !4849)
!4899 = !DILocation(line: 1818, column: 38, scope: !4849)
!4900 = !DILocation(line: 1818, column: 26, scope: !4849)
!4901 = !DILocation(line: 1818, column: 51, scope: !4849)
!4902 = !DILocation(line: 1818, column: 18, scope: !4849)
!4903 = !DILocation(line: 1819, column: 10, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 1819, column: 6)
!4905 = !DILocation(line: 1819, column: 6, scope: !4849)
!4906 = !DILocation(line: 1820, column: 12, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 1819, column: 19)
!4908 = !DILocation(line: 1820, column: 3, scope: !4907)
!4909 = !DILocation(line: 1821, column: 3, scope: !4907)
!4910 = !DILocation(line: 1823, column: 6, scope: !4849)
!4911 = !DILocation(line: 1823, column: 17, scope: !4849)
!4912 = !DILocation(line: 1824, column: 2, scope: !4849)
!4913 = !DILocation(line: 1825, column: 6, scope: !4849)
!4914 = !DILocation(line: 1825, column: 13, scope: !4849)
!4915 = !DILocation(line: 1826, column: 6, scope: !4849)
!4916 = !DILocation(line: 1826, column: 17, scope: !4849)
!4917 = !DILocation(line: 1827, column: 2, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 1827, column: 2)
!4919 = !DILocation(line: 1828, column: 3, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 1827, column: 2)
!4921 = !DILocation(line: 1828, column: 22, scope: !4920)
!4922 = !DILocation(line: 1827, column: 35, scope: !4920)
!4923 = !DILocation(line: 1827, column: 16, scope: !4920)
!4924 = distinct !{!4924, !4917, !4925}
!4925 = !DILocation(line: 1828, column: 24, scope: !4918)
!4926 = !DILocation(line: 1829, column: 27, scope: !4849)
!4927 = !DILocation(line: 1829, column: 6, scope: !4849)
!4928 = !DILocation(line: 1829, column: 16, scope: !4849)
!4929 = !DILocation(line: 1830, column: 6, scope: !4849)
!4930 = !DILocation(line: 1830, column: 15, scope: !4849)
!4931 = !DILocation(line: 1831, column: 6, scope: !4849)
!4932 = !DILocation(line: 1831, column: 15, scope: !4849)
!4933 = !DILocation(line: 1832, column: 2, scope: !4849)
!4934 = !DILocation(line: 1832, column: 17, scope: !4849)
!4935 = !DILocation(line: 1833, column: 2, scope: !4849)
!4936 = !DILocation(line: 1833, column: 17, scope: !4849)
!4937 = !DILocation(line: 1834, column: 2, scope: !4849)
!4938 = !DILocation(line: 1834, column: 17, scope: !4849)
!4939 = !DILocation(line: 1835, column: 6, scope: !4849)
!4940 = !DILocation(line: 1835, column: 10, scope: !4849)
!4941 = !DILocation(line: 1836, column: 18, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 1836, column: 6)
!4943 = !DILocation(line: 1836, column: 11, scope: !4942)
!4944 = !DILocation(line: 1836, column: 6, scope: !4849)
!4945 = !DILocation(line: 1837, column: 17, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 1837, column: 3)
!4947 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 1837, column: 3)
!4948 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 1836, column: 29)
!4949 = !DILocation(line: 1837, column: 3, scope: !4947)
!4950 = !DILocation(line: 1838, column: 15, scope: !4946)
!4951 = !DILocation(line: 1838, column: 4, scope: !4946)
!4952 = !DILocation(line: 1838, column: 13, scope: !4946)
!4953 = !DILocation(line: 1837, column: 28, scope: !4946)
!4954 = distinct !{!4954, !4949, !4955}
!4955 = !DILocation(line: 1838, column: 22, scope: !4947)
!4956 = !DILocation(line: 1839, column: 3, scope: !4948)
!4957 = !DILocation(line: 1839, column: 17, scope: !4948)
!4958 = !DILocation(line: 1840, column: 2, scope: !4948)
!4959 = !DILocation(line: 1841, column: 8, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 1841, column: 3)
!4961 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 1840, column: 7)
!4962 = !DILocation(line: 1841, column: 17, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 1841, column: 3)
!4964 = !DILocation(line: 1841, column: 3, scope: !4960)
!4965 = !DILocation(line: 1842, column: 4, scope: !4963)
!4966 = !DILocation(line: 1842, column: 13, scope: !4963)
!4967 = !DILocation(line: 1841, column: 24, scope: !4963)
!4968 = distinct !{!4968, !4964, !4969}
!4969 = !DILocation(line: 1842, column: 15, scope: !4960)
!4970 = !DILocation(line: 1844, column: 7, scope: !4849)
!4971 = !DILocation(line: 1844, column: 16, scope: !4849)
!4972 = !DILocation(line: 1846, column: 7, scope: !4849)
!4973 = !DILocation(line: 1846, column: 15, scope: !4849)
!4974 = !DILocation(line: 1847, column: 7, scope: !4849)
!4975 = !DILocation(line: 1847, column: 15, scope: !4849)
!4976 = !DILocation(line: 1849, column: 6, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 1849, column: 6)
!4978 = !DILocation(line: 1849, column: 6, scope: !4849)
!4979 = !DILocation(line: 1850, column: 9, scope: !4977)
!4980 = !DILocation(line: 1850, column: 3, scope: !4977)
!4981 = !DILocation(line: 1851, column: 8, scope: !4849)
!4982 = !DILocation(line: 1851, column: 2, scope: !4849)
!4983 = !DILocation(line: 1852, column: 2, scope: !4849)
!4984 = !DILocation(line: 1853, column: 1, scope: !4849)
