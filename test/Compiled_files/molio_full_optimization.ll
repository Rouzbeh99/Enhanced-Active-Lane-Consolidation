; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.residue_t = type { %struct.residue_t*, i32, i32, i32, i8*, i8*, i32, i32, i32, %struct.strand_t*, %struct.extbond_t*, i32, [2 x i32]*, i32, %struct.chiral_t*, i32, i32*, %struct.atom_t* }
%struct.strand_t = type { i8*, i32, i32, %struct.molecule_t*, %struct.strand_t*, i32, i32, %struct.residue_t** }
%struct.molecule_t = type { [4 x [3 x double]], i32, %struct.strand_t*, i32, i32, i32, %struct.parm* }
%struct.parm = type { [81 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, [3 x double], double, double, double, double, double, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double* }
%struct.extbond_t = type { %struct.extbond_t*, i32, i32, i32 }
%struct.chiral_t = type { [4 x i32], double }
%struct.atom_t = type { i8*, i8*, i32, i32, [8 x i32], %struct.residue_t*, double, double, double, double, i8*, i32, double, double, i32, i32, i8*, [3 x double], double }
%struct.cid_t = type { i32, i32, i8* }

@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"getpdb: can't open file %s\0A\00", align 1
@getmatrix.mat = internal global [4 x [4 x double]] zeroinitializer, align 16, !dbg !0
@.str.3 = private unnamed_addr constant [36 x i8] c"getmatrix: NULL or empty file name\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"getmatrix: can't read matrix file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%lf %lf %lf %lf\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"getmatrix: bad row %d: got %d elements, needed 4\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"getmatrix: missing rows: got %d rows, needed 4\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"putpdb: NULL molecule\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Can't open file %s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"putcif: NULL molecule\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"putbnd: NULL molecule\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Unable to allocate space for %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"aoff array in putbnd\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"putdist: NULL molecule\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"can't allocate res\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"can't open dist file %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"%3d %-4s %-4s %3d %-4s %4s %8.3f\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"putmatrix: NULL or empty file name\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"putmatrix: can't write file %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@n_atab = internal unnamed_addr global i32 0, align 4, !dbg !360
@.str.25 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@res = internal global %struct.residue_t zeroinitializer, align 8, !dbg !362
@.str.29 = private unnamed_addr constant [5 x i8] c"H2'1\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"-pqr\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%lf%lf\00", align 1
@atab = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !364
@.str.49 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"initres: can't allocate res->r_resname.\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"initres: can't allocate res->r_resid.\0A\00", align 1
@init_atab.init = internal unnamed_addr global i1 false, align 4, !dbg !385
@.str.53 = private unnamed_addr constant [36 x i8] c"init_atab: can't alloc a_atomname.\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"fputpdb: NULL file pointer\0A\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"-nobocc\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"-brook\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"-wwpdb\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-tr\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"-nocid\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"-allcid\00", align 1
@.str.62 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"ATOM  %5d %-4s %-3s %c%4d    %8.3f%8.3f%8.3f\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"ATOM  %05d %-4s %-3s %c%4d    %8.3f%8.3f%8.3f\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"ATOM  %5d %-4s %3s %-6s   %8.3f%8.3f%8.3f\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"ATOM  %05d %-4s %3s %-6s   %8.3f%8.3f%8.3f\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"%10.5f%10.5f   \00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"%6.2f%6.2f           \00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"%.1s  \00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"TER\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"initcid: can't allocate cid\0A\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"initcid: can't allocate c_cids\0A\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"nextcid: NULL cid\0A\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"DG\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c" H\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c" HB\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"H5'1\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c" H5'\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"H5'2\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"H5''\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c" H2'\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"H2'2\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"H2''\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c" O1P\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c" OP1\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c" O2P\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c" OP2\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c" H5T\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"HO5'\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c" H3T\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"HO3'\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c" Na+\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c" NA+\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c" Fe \00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c" FE \00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c" Cl \00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c" CL \00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c" Zn \00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c" ZN \00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c" Li+\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c" LI+\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c" Ca+\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c" CA+\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c" Mg+\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c" MG+\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c" Br-\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c" BR-\00", align 1
@.str.159 = private unnamed_addr constant [86 x i8] c"/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c\00", align 1
@__PRETTY_FUNCTION__.fputcif = private unnamed_addr constant [43 x i8] c"void fputcif(FILE *, char *, MOLECULE_T *)\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"data_%s\0A\0A\00", align 1
@.str.162 = private unnamed_addr constant [38 x i8] c"###########\0A## ENTRY ##\0A###########\0A\0A\00", align 1
@.str.163 = private unnamed_addr constant [21 x i8] c"_entry.id       %s\0A\0A\00", align 1
@.str.164 = private unnamed_addr constant [50 x i8] c"###############\0A## ATOM_SITE ##\0A###############\0A\0A\00", align 1
@.str.165 = private unnamed_addr constant [46 x i8] c"loop_\0A_atom_site.id\0A_atom_site.label_atom_id\0A\00", align 1
@.str.166 = private unnamed_addr constant [51 x i8] c"_atom_site.label_comp_id\0A_atom_site.label_asym_id\0A\00", align 1
@.str.167 = private unnamed_addr constant [43 x i8] c"_atom_site.auth_seq_id\0A_atom_site.cartn_x\0A\00", align 1
@.str.168 = private unnamed_addr constant [39 x i8] c"_atom_site.cartn_y\0A_atom_site.cartn_z\0A\00", align 1
@.str.169 = private unnamed_addr constant [52 x i8] c"_atom_site.label_entity_id\0A_atom_site.label_seq_id\0A\00", align 1
@.str.170 = private unnamed_addr constant [47 x i8] c"%5d %-4s %3s %c %4d %8.3f %8.3f %8.3f %3d %4d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @getpdb(i8* %0, i8* readonly %1) local_unnamed_addr #0 !dbg !390 {
  %3 = alloca [82 x i8], align 16
  call void @llvm.dbg.declare(metadata [82 x i8]* %3, metadata !401, metadata !DIExpression()), !dbg !450
  %4 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !413, metadata !DIExpression()), !dbg !452
  %5 = alloca [10 x i8], align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !417, metadata !DIExpression()), !dbg !453
  %6 = alloca [10 x i8], align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !418, metadata !DIExpression()), !dbg !454
  %7 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %7, metadata !419, metadata !DIExpression()), !dbg !455
  %8 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %8, metadata !420, metadata !DIExpression()), !dbg !456
  %9 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %9, metadata !421, metadata !DIExpression()), !dbg !457
  %10 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %10, metadata !422, metadata !DIExpression()), !dbg !458
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %14, metadata !436, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i8* %0, metadata !396, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i8* %1, metadata !397, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !398, metadata !DIExpression()), !dbg !460
  %15 = icmp eq i8* %0, null, !dbg !461
  br i1 %15, label %19, label %16, !dbg !463

16:                                               ; preds = %2
  %17 = load i8, i8* %0, align 1, !dbg !464, !tbaa !465
  %18 = icmp eq i8 %17, 0, !dbg !464
  br i1 %18, label %19, label %21, !dbg !468

19:                                               ; preds = %16, %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !469, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !398, metadata !DIExpression()), !dbg !460
  br label %41, !dbg !473

21:                                               ; preds = %16
  %22 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !474
  %23 = icmp eq i32 %22, 0, !dbg !474
  br i1 %23, label %24, label %26, !dbg !476

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !477, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !398, metadata !DIExpression()), !dbg !460
  br label %41, !dbg !479

26:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !400, metadata !DIExpression()), !dbg !460
  %27 = tail call i32 @get_mytaskid() #14, !dbg !480
  %28 = icmp eq i32 %27, 0, !dbg !483
  br i1 %28, label %29, label %35, !dbg !484

29:                                               ; preds = %26
  %30 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !485
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %30, metadata !398, metadata !DIExpression()), !dbg !460
  %31 = icmp eq %struct._IO_FILE* %30, null, !dbg !488
  br i1 %31, label %32, label %35, !dbg !489

32:                                               ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !490, !tbaa !471
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %0) #15, !dbg !492
  call void @llvm.dbg.value(metadata i32 -1, metadata !400, metadata !DIExpression()), !dbg !460
  br label %35, !dbg !493

35:                                               ; preds = %29, %32, %26
  %36 = phi %struct._IO_FILE* [ null, %32 ], [ %30, %29 ], [ null, %26 ], !dbg !460
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], [ 0, %26 ], !dbg !494
  call void @llvm.dbg.value(metadata i32 %37, metadata !400, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !398, metadata !DIExpression()), !dbg !460
  tail call void @reducerror(i32 %37) #14, !dbg !495
  %38 = tail call i32 @get_mytaskid() #14, !dbg !496
  %39 = icmp eq i32 %38, 0, !dbg !498
  %40 = select i1 %39, %struct._IO_FILE* %36, %struct._IO_FILE* null, !dbg !499
  br label %41, !dbg !499

41:                                               ; preds = %35, %24, %19
  %42 = phi %struct._IO_FILE* [ %25, %24 ], [ %20, %19 ], [ %40, %35 ], !dbg !500
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !398, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !406, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %1, metadata !407, metadata !DIExpression()) #14, !dbg !501
  %43 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !502
  call void @llvm.lifetime.start.p0i8(i64 82, i8* nonnull %43) #14, !dbg !502
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !503
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %44) #14, !dbg !503
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %45) #14, !dbg !504
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %46) #14, !dbg !505
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %47) #14, !dbg !505
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %48) #14, !dbg !506
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %49) #14, !dbg !506
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !507
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %50) #14, !dbg !507
  %51 = bitcast i32* %11 to i8*, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51) #14, !dbg !508
  %52 = bitcast double* %12 to i8*, !dbg !509
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #14, !dbg !509
  %53 = bitcast double* %13 to i8*, !dbg !509
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #14, !dbg !509
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !510
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %54) #14, !dbg !510
  %55 = icmp eq i8* %1, null, !dbg !511
  br i1 %55, label %56, label %57, !dbg !513

56:                                               ; preds = %41
  store i8 0, i8* %54, align 16, !dbg !514, !tbaa !465
  br label %59, !dbg !515

57:                                               ; preds = %41
  %58 = call i8* @strcpy(i8* nonnull %54, i8* nonnull %1) #14, !dbg !516
  br label %59

59:                                               ; preds = %57, %56
  call fastcc void @initres() #14, !dbg !517
  %60 = load i1, i1* @init_atab.init, align 4, !dbg !518
  br i1 %60, label %78, label %61, !dbg !521

61:                                               ; preds = %59, %70
  %62 = phi %struct.atom_t* [ %75, %70 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %59 ]
  %63 = phi i32 [ %74, %70 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %62, metadata !359, metadata !DIExpression()) #14, !dbg !522
  call void @llvm.dbg.value(metadata i32 %63, metadata !358, metadata !DIExpression()) #14, !dbg !522
  %64 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !523
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 0, !dbg !527
  store i8* %64, i8** %65, align 8, !dbg !528, !tbaa !529
  %66 = icmp eq i8* %64, null, !dbg !533
  br i1 %66, label %67, label %70, !dbg !535

67:                                               ; preds = %61
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !536, !tbaa !471
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %68) #16, !dbg !538
  call void @exit(i32 1) #17, !dbg !539
  unreachable, !dbg !539

70:                                               ; preds = %61
  store i8 0, i8* %64, align 1, !dbg !540, !tbaa !465
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 1, !dbg !541
  store i8* null, i8** %71, align 8, !dbg !542, !tbaa !543
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 10, !dbg !544
  store i8* null, i8** %72, align 8, !dbg !545, !tbaa !546
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 16, !dbg !547
  store i8* null, i8** %73, align 8, !dbg !548, !tbaa !549
  %74 = add nuw nsw i32 %63, 1, !dbg !550
  call void @llvm.dbg.value(metadata i32 %74, metadata !358, metadata !DIExpression()) #14, !dbg !522
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 1, !dbg !551
  call void @llvm.dbg.value(metadata %struct.atom_t* %75, metadata !359, metadata !DIExpression()) #14, !dbg !522
  %76 = icmp eq i32 %74, 1000, !dbg !552
  br i1 %76, label %77, label %61, !dbg !553, !llvm.loop !554

77:                                               ; preds = %70
  store i1 true, i1* @init_atab.init, align 4, !dbg !556
  br label %78, !dbg !557

78:                                               ; preds = %77, %59
  %79 = call %struct.molecule_t* @newmolecule() #14, !dbg !558
  call void @llvm.dbg.value(metadata %struct.molecule_t* %79, metadata !408, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()) #14, !dbg !501
  store i8 0, i8* %47, align 1, !dbg !559, !tbaa !465
  call void @llvm.dbg.value(metadata i32 0, metadata !426, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()) #14, !dbg !501
  store i32 0, i32* @n_atab, align 4, !dbg !560, !tbaa !561
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 0, metadata !412, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 0, metadata !426, metadata !DIExpression()) #14, !dbg !501
  %80 = call i8* @ggets(i8* nonnull %43, i32 82, %struct._IO_FILE* %42) #14, !dbg !562
  %81 = icmp eq i8* %80, null, !dbg !564
  br i1 %81, label %336, label %82, !dbg !565

82:                                               ; preds = %78
  %83 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 80, !dbg !566
  %84 = bitcast [82 x i8]* %3 to i32*, !dbg !567
  %85 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 12, !dbg !568
  %86 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 4, !dbg !568
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2, !dbg !569
  %88 = bitcast [10 x i8]* %5 to i32*, !dbg !571
  %89 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 17, !dbg !568
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 3, !dbg !568
  %91 = bitcast [10 x i8]* %6 to i16*, !dbg !573
  %92 = bitcast [10 x i8]* %6 to i32*, !dbg !573
  %93 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 21, !dbg !568
  %94 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6, !dbg !568
  %95 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 22, !dbg !568
  %96 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 30, !dbg !568
  %97 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8, !dbg !568
  %98 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 38, !dbg !568
  %99 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 46, !dbg !568
  %100 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 54, !dbg !575
  %101 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6, !dbg !578
  %102 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 60, !dbg !578
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 1, !dbg !580
  %104 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %79, i64 0, i32 2, !dbg !583
  %105 = bitcast double* %12 to i64*, !dbg !568
  %106 = bitcast double* %13 to i64*, !dbg !568
  br label %107, !dbg !565

107:                                              ; preds = %330, %82
  %108 = phi i32 [ 0, %82 ], [ %333, %330 ]
  %109 = phi i32 [ 0, %82 ], [ %332, %330 ]
  %110 = phi i32 [ 0, %82 ], [ %331, %330 ]
  call void @llvm.dbg.value(metadata i32 %108, metadata !410, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %109, metadata !412, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %110, metadata !426, metadata !DIExpression()) #14, !dbg !501
  %111 = call i64 @strlen(i8* nonnull %43) #13, !dbg !585
  %112 = trunc i64 %111 to i32, !dbg !585
  call void @llvm.dbg.value(metadata i32 %112, metadata !434, metadata !DIExpression()) #14, !dbg !501
  %113 = icmp slt i32 %112, 80, !dbg !587
  br i1 %113, label %114, label %121, !dbg !589

114:                                              ; preds = %107
  %115 = shl i64 %111, 32, !dbg !589
  %116 = ashr exact i64 %115, 32, !dbg !589
  %117 = getelementptr [82 x i8], [82 x i8]* %3, i64 0, i64 %116, !dbg !589
  %118 = sub i64 79, %111, !dbg !589
  %119 = and i64 %118, 4294967295, !dbg !589
  %120 = add nuw nsw i64 %119, 1, !dbg !589
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(1) %117, i8 32, i64 %120, i1 false) #14, !dbg !590
  call void @llvm.dbg.value(metadata i32 undef, metadata !434, metadata !DIExpression()) #14, !dbg !501
  br label %121, !dbg !591

121:                                              ; preds = %114, %107
  store i8 0, i8* %83, align 16, !dbg !591, !tbaa !465
  %122 = load i32, i32* %84, align 16, !dbg !592
  %123 = icmp eq i32 %122, 1297044545, !dbg !592
  br i1 %123, label %127, label %124, !dbg !593

124:                                              ; preds = %121
  %125 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* nonnull dereferenceable(6) %43, i64 6) #14, !dbg !594
  %126 = icmp eq i32 %125, 0, !dbg !595
  br i1 %126, label %127, label %313, !dbg !596

127:                                              ; preds = %124, %121
  %128 = call i8* @strncpy(i8* nonnull %45, i8* nonnull %85, i64 4) #14, !dbg !597
  store i8 0, i8* %86, align 4, !dbg !598, !tbaa !465
  call void @llvm.dbg.value(metadata i8* %45, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %45, metadata !423, metadata !DIExpression()) #14, !dbg !501
  br label %129, !dbg !599

129:                                              ; preds = %135, %127
  %130 = phi i8* [ %45, %127 ], [ %136, %135 ], !dbg !601
  %131 = phi i8* [ %45, %127 ], [ %137, %135 ], !dbg !601
  call void @llvm.dbg.value(metadata i8* %131, metadata !423, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  %132 = load i8, i8* %131, align 1, !dbg !602, !tbaa !465
  switch i8 %132, label %133 [
    i8 0, label %138
    i8 32, label %135
  ], !dbg !604

133:                                              ; preds = %129
  %134 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !605
  call void @llvm.dbg.value(metadata i8* %134, metadata !424, metadata !DIExpression()) #14, !dbg !501
  store i8 %132, i8* %130, align 1, !dbg !608, !tbaa !465
  br label %135, !dbg !609

135:                                              ; preds = %133, %129
  %136 = phi i8* [ %134, %133 ], [ %130, %129 ], !dbg !601
  call void @llvm.dbg.value(metadata i8* %136, metadata !424, metadata !DIExpression()) #14, !dbg !501
  %137 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !610
  call void @llvm.dbg.value(metadata i8* %137, metadata !423, metadata !DIExpression()) #14, !dbg !501
  br label %129, !dbg !611, !llvm.loop !612

138:                                              ; preds = %129
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %130, metadata !424, metadata !DIExpression()) #14, !dbg !501
  store i8 0, i8* %130, align 1, !dbg !614, !tbaa !465
  %139 = load i8, i8* %45, align 4, !dbg !615, !tbaa !465
  %140 = add i8 %139, -49, !dbg !617
  %141 = icmp ult i8 %140, 3, !dbg !617
  br i1 %141, label %142, label %161, !dbg !617

142:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 0, metadata !434, metadata !DIExpression()) #14, !dbg !501
  %143 = call i64 @strlen(i8* nonnull %45) #13, !dbg !618
  %144 = trunc i64 %143 to i32, !dbg !622
  %145 = icmp sgt i32 %144, 1, !dbg !623
  br i1 %145, label %146, label %157, !dbg !624

146:                                              ; preds = %142, %146
  %147 = phi i64 [ %148, %146 ], [ 0, %142 ]
  call void @llvm.dbg.value(metadata i64 %147, metadata !434, metadata !DIExpression()) #14, !dbg !501
  %148 = add nuw nsw i64 %147, 1, !dbg !625
  %149 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %148, !dbg !626
  %150 = load i8, i8* %149, align 1, !dbg !626, !tbaa !465
  %151 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %147, !dbg !627
  store i8 %150, i8* %151, align 1, !dbg !628, !tbaa !465
  call void @llvm.dbg.value(metadata i64 %148, metadata !434, metadata !DIExpression()) #14, !dbg !501
  %152 = call i64 @strlen(i8* nonnull %45) #13, !dbg !618
  %153 = shl i64 %152, 32, !dbg !623
  %154 = add i64 %153, -4294967296, !dbg !623
  %155 = ashr exact i64 %154, 32, !dbg !623
  %156 = icmp slt i64 %148, %155, !dbg !623
  br i1 %156, label %146, label %157, !dbg !624, !llvm.loop !629

157:                                              ; preds = %146, %142
  %158 = phi i64 [ 0, %142 ], [ %148, %146 ], !dbg !631
  %159 = and i64 %158, 4294967295, !dbg !632
  call void @llvm.dbg.value(metadata i64 %158, metadata !434, metadata !DIExpression()) #14, !dbg !501
  %160 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %159, !dbg !632
  store i8 %139, i8* %160, align 1, !dbg !633, !tbaa !465
  br label %161, !dbg !634

161:                                              ; preds = %157, %138
  %162 = load i8, i8* %87, align 2, !dbg !635, !tbaa !465
  %163 = icmp eq i8 %162, 42, !dbg !636
  br i1 %163, label %164, label %165, !dbg !637

164:                                              ; preds = %161
  store i8 39, i8* %87, align 2, !dbg !638, !tbaa !465
  br label %165, !dbg !639

165:                                              ; preds = %164, %161
  %166 = load i32, i32* %88, align 4, !dbg !640
  %167 = icmp eq i32 %166, 5059907, !dbg !640
  br i1 %167, label %168, label %169, !dbg !641

168:                                              ; preds = %165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(3) %45, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 3, i1 false) #14, !dbg !642
  br label %169, !dbg !642

169:                                              ; preds = %168, %165
  %170 = call i8* @strncpy(i8* nonnull %46, i8* nonnull %89, i64 3) #14, !dbg !643
  store i8 0, i8* %90, align 1, !dbg !644, !tbaa !465
  call void @llvm.dbg.value(metadata i8* %46, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %46, metadata !423, metadata !DIExpression()) #14, !dbg !501
  br label %171, !dbg !645

171:                                              ; preds = %177, %169
  %172 = phi i8* [ %46, %169 ], [ %178, %177 ], !dbg !647
  %173 = phi i8* [ %46, %169 ], [ %179, %177 ], !dbg !647
  call void @llvm.dbg.value(metadata i8* %173, metadata !423, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  %174 = load i8, i8* %173, align 1, !dbg !648, !tbaa !465
  switch i8 %174, label %175 [
    i8 0, label %180
    i8 32, label %177
  ], !dbg !650

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !651
  call void @llvm.dbg.value(metadata i8* %176, metadata !424, metadata !DIExpression()) #14, !dbg !501
  store i8 %174, i8* %172, align 1, !dbg !654, !tbaa !465
  br label %177, !dbg !655

177:                                              ; preds = %175, %171
  %178 = phi i8* [ %176, %175 ], [ %172, %171 ], !dbg !647
  call void @llvm.dbg.value(metadata i8* %178, metadata !424, metadata !DIExpression()) #14, !dbg !501
  %179 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !656
  call void @llvm.dbg.value(metadata i8* %179, metadata !423, metadata !DIExpression()) #14, !dbg !501
  br label %171, !dbg !657, !llvm.loop !658

180:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %172, metadata !424, metadata !DIExpression()) #14, !dbg !501
  store i8 0, i8* %172, align 1, !dbg !660, !tbaa !465
  %181 = load i32, i32* %88, align 4, !dbg !661
  %182 = icmp eq i32 %181, 2568783, !dbg !661
  br i1 %182, label %185, label %183, !dbg !663

183:                                              ; preds = %180
  %184 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4, !dbg !664
  br label %186, !dbg !663

185:                                              ; preds = %180
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4, !dbg !666, !tbaa !667
  br label %186, !dbg !669

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 2, %185 ], !dbg !664
  %188 = call i32 @bcmp(i8* nonnull dereferenceable(5) %45, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 5) #14, !dbg !670
  %189 = icmp eq i32 %188, 0, !dbg !670
  %190 = icmp eq i32 %187, 2, !dbg !671
  %191 = and i1 %190, %189, !dbg !672
  br i1 %191, label %192, label %193, !dbg !672

192:                                              ; preds = %186
  store i32 2568776, i32* %88, align 4, !dbg !673
  br label %193, !dbg !673

193:                                              ; preds = %192, %186
  %194 = load i16, i16* %91, align 4, !dbg !674
  switch i16 %194, label %200 [
    i16 65, label %195
    i16 67, label %196
    i16 71, label %197
    i16 84, label %198
    i16 85, label %199
  ], !dbg !675

195:                                              ; preds = %193
  store i32 4539457, i32* %92, align 4, !dbg !676
  br label %200, !dbg !677

196:                                              ; preds = %193
  store i32 5527875, i32* %92, align 4, !dbg !678
  br label %200, !dbg !678

197:                                              ; preds = %193
  store i32 4281671, i32* %92, align 4, !dbg !680
  br label %200, !dbg !680

198:                                              ; preds = %193
  store i32 5851220, i32* %92, align 4, !dbg !682
  br label %200, !dbg !682

199:                                              ; preds = %193
  store i32 4280917, i32* %92, align 4, !dbg !684
  br label %200, !dbg !684

200:                                              ; preds = %199, %198, %197, %196, %195, %193
  %201 = call i8* @strncpy(i8* nonnull %48, i8* nonnull %93, i64 6) #14, !dbg !686
  store i8 0, i8* %94, align 1, !dbg !687, !tbaa !465
  %202 = load i8, i8* %93, align 1, !dbg !688, !tbaa !465
  %203 = sext i8 %202 to i32, !dbg !688
  call void @llvm.dbg.value(metadata i32 %203, metadata !411, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32* %11, metadata !425, metadata !DIExpression(DW_OP_deref)) #14, !dbg !501
  %204 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* nonnull %11) #14, !dbg !689
  %205 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %96, i64 8) #14, !dbg !690
  store i8 0, i8* %97, align 1, !dbg !691, !tbaa !465
  call void @llvm.dbg.value(metadata i8* %50, metadata !692, metadata !DIExpression()) #14, !dbg !700
  %206 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !702
  call void @llvm.dbg.value(metadata double %206, metadata !427, metadata !DIExpression()) #14, !dbg !501
  %207 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %98, i64 8) #14, !dbg !703
  store i8 0, i8* %97, align 1, !dbg !704, !tbaa !465
  call void @llvm.dbg.value(metadata i8* %50, metadata !692, metadata !DIExpression()) #14, !dbg !705
  %208 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !707
  call void @llvm.dbg.value(metadata double %208, metadata !428, metadata !DIExpression()) #14, !dbg !501
  %209 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %99, i64 8) #14, !dbg !708
  store i8 0, i8* %97, align 1, !dbg !709, !tbaa !465
  call void @llvm.dbg.value(metadata i8* %50, metadata !692, metadata !DIExpression()) #14, !dbg !710
  %210 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !712
  call void @llvm.dbg.value(metadata double %210, metadata !429, metadata !DIExpression()) #14, !dbg !501
  %211 = call i8* @strstr(i8* nonnull %54, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #13, !dbg !713
  %212 = icmp eq i8* %211, null, !dbg !713
  br i1 %212, label %215, label %213, !dbg !714

213:                                              ; preds = %200
  call void @llvm.dbg.value(metadata double* %12, metadata !430, metadata !DIExpression(DW_OP_deref)) #14, !dbg !501
  call void @llvm.dbg.value(metadata double* %13, metadata !431, metadata !DIExpression(DW_OP_deref)) #14, !dbg !501
  %214 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* nonnull %12, double* nonnull %13) #14, !dbg !715
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !432, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !433, metadata !DIExpression()) #14, !dbg !501
  br label %229, !dbg !716

215:                                              ; preds = %200
  %216 = load i8, i8* %45, align 4, !dbg !717
  switch i8 %216, label %223 [
    i8 72, label %217
    i8 67, label %218
    i8 78, label %219
    i8 79, label %220
    i8 83, label %221
    i8 80, label %222
  ], !dbg !719

217:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.200000e+00, metadata !431, metadata !DIExpression()) #14, !dbg !501
  store double 1.200000e+00, double* %13, align 8, !dbg !720, !tbaa !721
  br label %224, !dbg !722

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !431, metadata !DIExpression()) #14, !dbg !501
  store double 1.700000e+00, double* %13, align 8, !dbg !723, !tbaa !721
  br label %224, !dbg !725

219:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.550000e+00, metadata !431, metadata !DIExpression()) #14, !dbg !501
  store double 1.550000e+00, double* %13, align 8, !dbg !726, !tbaa !721
  br label %224, !dbg !728

220:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.500000e+00, metadata !431, metadata !DIExpression()) #14, !dbg !501
  store double 1.500000e+00, double* %13, align 8, !dbg !729, !tbaa !721
  br label %224, !dbg !731

221:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.800000e+00, metadata !431, metadata !DIExpression()) #14, !dbg !501
  store double 1.800000e+00, double* %13, align 8, !dbg !732, !tbaa !721
  br label %224, !dbg !734

222:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.850000e+00, metadata !431, metadata !DIExpression()) #14, !dbg !501
  store double 1.850000e+00, double* %13, align 8, !dbg !735, !tbaa !721
  br label %224, !dbg !737

223:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !431, metadata !DIExpression()) #14, !dbg !501
  store double 1.700000e+00, double* %13, align 8, !dbg !738, !tbaa !721
  br label %224

224:                                              ; preds = %223, %222, %221, %220, %219, %218, %217
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !430, metadata !DIExpression()) #14, !dbg !501
  store double 0.000000e+00, double* %12, align 8, !dbg !739, !tbaa !721
  %225 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %100, i64 6) #14, !dbg !740
  store i8 0, i8* %101, align 1, !dbg !741, !tbaa !465
  call void @llvm.dbg.value(metadata i8* %50, metadata !692, metadata !DIExpression()) #14, !dbg !742
  %226 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !744
  call void @llvm.dbg.value(metadata double %226, metadata !432, metadata !DIExpression()) #14, !dbg !501
  %227 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %102, i64 6) #14, !dbg !745
  store i8 0, i8* %101, align 1, !dbg !746, !tbaa !465
  call void @llvm.dbg.value(metadata i8* %50, metadata !692, metadata !DIExpression()) #14, !dbg !747
  %228 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !749
  call void @llvm.dbg.value(metadata double %228, metadata !433, metadata !DIExpression()) #14, !dbg !501
  br label %229

229:                                              ; preds = %224, %213
  %230 = phi double [ 1.000000e+00, %213 ], [ %226, %224 ], !dbg !750
  %231 = phi double [ 0.000000e+00, %213 ], [ %228, %224 ], !dbg !750
  call void @llvm.dbg.value(metadata double %231, metadata !433, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata double %230, metadata !432, metadata !DIExpression()) #14, !dbg !501
  %232 = icmp eq i32 %108, %203, !dbg !751
  br i1 %232, label %272, label %233, !dbg !752

233:                                              ; preds = %229
  %234 = load i32, i32* @n_atab, align 4, !dbg !753, !tbaa !561
  %235 = icmp sgt i32 %234, 0, !dbg !755
  br i1 %235, label %236, label %243, !dbg !756

236:                                              ; preds = %233
  %237 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !757, !tbaa !759
  %238 = call i8* @strcpy(i8* nonnull dereferenceable(1) %237, i8* nonnull %47) #14, !dbg !760
  %239 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !761, !tbaa !762
  %240 = call i8* @strcpy(i8* nonnull dereferenceable(1) %239, i8* nonnull %49) #14, !dbg !763
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !764, !tbaa !765
  %241 = load i32, i32* @n_atab, align 4, !dbg !766, !tbaa !561
  store i32 %241, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !767, !tbaa !768
  call fastcc void @makebonds() #14, !dbg !769
  %242 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #14, !dbg !770
  call fastcc void @initres() #14, !dbg !771
  store i32 0, i32* @n_atab, align 4, !dbg !772, !tbaa !561
  br label %243, !dbg !773

243:                                              ; preds = %236, %233
  %244 = add nsw i32 %109, 1, !dbg !774
  call void @llvm.dbg.value(metadata i32 %244, metadata !412, metadata !DIExpression()) #14, !dbg !501
  %245 = icmp eq i8 %202, 32, !dbg !775
  br i1 %245, label %246, label %248, !dbg !776

246:                                              ; preds = %243
  %247 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %44, i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %244) #14, !dbg !777
  br label %249, !dbg !777

248:                                              ; preds = %243
  store i8 %202, i8* %44, align 1, !dbg !778, !tbaa !465
  store i8 0, i8* %103, align 1, !dbg !779, !tbaa !465
  br label %249

249:                                              ; preds = %248, %246
  %250 = call i32 @addstrand(%struct.molecule_t* %79, i8* nonnull %44) #14, !dbg !780
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !437, metadata !DIExpression()) #14, !dbg !781
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !446, metadata !DIExpression()) #14, !dbg !781
  %251 = load %struct.strand_t*, %struct.strand_t** %104, align 8, !dbg !583, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %251, metadata !446, metadata !DIExpression()) #14, !dbg !781
  %252 = icmp eq %struct.strand_t* %251, null, !dbg !782
  br i1 %252, label %263, label %253, !dbg !782

253:                                              ; preds = %249, %259
  %254 = phi %struct.strand_t* [ %261, %259 ], [ %251, %249 ]
  %255 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %254, i64 0, i32 0, !dbg !783
  %256 = load i8*, i8** %255, align 8, !dbg !783, !tbaa !787
  %257 = call i32 @strcmp(i8* nonnull dereferenceable(1) %256, i8* nonnull %44) #13, !dbg !789
  %258 = icmp eq i32 %257, 0, !dbg !789
  br i1 %258, label %263, label %259, !dbg !790

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %254, i64 0, i32 4, !dbg !791
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !446, metadata !DIExpression()) #14, !dbg !781
  %261 = load %struct.strand_t*, %struct.strand_t** %260, align 8, !dbg !583, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %261, metadata !446, metadata !DIExpression()) #14, !dbg !781
  %262 = icmp eq %struct.strand_t* %261, null, !dbg !782
  br i1 %262, label %263, label %253, !dbg !782, !llvm.loop !792

263:                                              ; preds = %259, %253, %249
  %264 = phi %struct.strand_t* [ null, %249 ], [ null, %259 ], [ %254, %253 ], !dbg !583
  call void @llvm.dbg.value(metadata %struct.strand_t* %264, metadata !437, metadata !DIExpression()) #14, !dbg !781
  %265 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %264, i64 0, i32 6, !dbg !794
  store i32 10000, i32* %265, align 4, !dbg !795, !tbaa !796
  %266 = call noalias dereferenceable_or_null(1280000) i8* @malloc(i64 1280000) #14, !dbg !797
  %267 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %264, i64 0, i32 7, !dbg !798
  %268 = bitcast %struct.residue_t*** %267 to i8**, !dbg !799
  store i8* %266, i8** %268, align 8, !dbg !799, !tbaa !800
  call void @llvm.dbg.value(metadata i32 %203, metadata !410, metadata !DIExpression()) #14, !dbg !501
  %269 = call i8* @strcpy(i8* nonnull %47, i8* nonnull %46) #14, !dbg !801
  %270 = call i8* @strcpy(i8* nonnull %49, i8* nonnull %48) #14, !dbg !802
  %271 = load i32, i32* %11, align 4, !dbg !803, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %271, metadata !425, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %271, metadata !426, metadata !DIExpression()) #14, !dbg !501
  br label %288, !dbg !804

272:                                              ; preds = %229
  %273 = load i32, i32* %11, align 4, !dbg !805, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %273, metadata !425, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i8* %47, metadata !807, metadata !DIExpression()) #14, !dbg !815
  call void @llvm.dbg.value(metadata i8* %46, metadata !812, metadata !DIExpression()) #14, !dbg !815
  call void @llvm.dbg.value(metadata i32 %110, metadata !813, metadata !DIExpression()) #14, !dbg !815
  call void @llvm.dbg.value(metadata i32 %273, metadata !814, metadata !DIExpression()) #14, !dbg !815
  %274 = call i32 @strcmp(i8* nonnull dereferenceable(1) %47, i8* nonnull dereferenceable(1) %46) #13, !dbg !817
  %275 = icmp eq i32 %274, 0, !dbg !817
  %276 = icmp eq i32 %110, %273, !dbg !818
  %277 = and i1 %276, %275, !dbg !819
  br i1 %277, label %288, label %278, !dbg !820

278:                                              ; preds = %272
  %279 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !821, !tbaa !759
  %280 = call i8* @strcpy(i8* nonnull dereferenceable(1) %279, i8* nonnull %47) #14, !dbg !823
  %281 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !824, !tbaa !762
  %282 = call i8* @strcpy(i8* nonnull dereferenceable(1) %281, i8* nonnull %49) #14, !dbg !825
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !826, !tbaa !765
  %283 = load i32, i32* @n_atab, align 4, !dbg !827, !tbaa !561
  store i32 %283, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !828, !tbaa !768
  call fastcc void @makebonds() #14, !dbg !829
  %284 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #14, !dbg !830
  call fastcc void @initres() #14, !dbg !831
  %285 = call i8* @strcpy(i8* nonnull %47, i8* nonnull %46) #14, !dbg !832
  %286 = call i8* @strcpy(i8* nonnull %49, i8* nonnull %48) #14, !dbg !833
  %287 = load i32, i32* %11, align 4, !dbg !834, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %287, metadata !425, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %287, metadata !426, metadata !DIExpression()) #14, !dbg !501
  store i32 0, i32* @n_atab, align 4, !dbg !835, !tbaa !561
  br label %288, !dbg !836

288:                                              ; preds = %278, %272, %263
  %289 = phi i32 [ %271, %263 ], [ %287, %278 ], [ %110, %272 ], !dbg !501
  %290 = phi i32 [ %244, %263 ], [ %109, %278 ], [ %109, %272 ], !dbg !837
  %291 = phi i32 [ %203, %263 ], [ %108, %278 ], [ %108, %272 ], !dbg !501
  call void @llvm.dbg.value(metadata i32 %291, metadata !410, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %290, metadata !412, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %289, metadata !426, metadata !DIExpression()) #14, !dbg !501
  %292 = load i32, i32* @n_atab, align 4, !dbg !838, !tbaa !561
  %293 = sext i32 %292 to i64, !dbg !839
  %294 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, !dbg !839
  call void @llvm.dbg.value(metadata %struct.atom_t* %294, metadata !409, metadata !DIExpression()) #14, !dbg !501
  call void @NAB_initatom(%struct.atom_t* nonnull %294, i32 0) #14, !dbg !840
  %295 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %294, i64 0, i32 0, !dbg !841
  %296 = load i8*, i8** %295, align 16, !dbg !841, !tbaa !529
  %297 = call i8* @strcpy(i8* nonnull dereferenceable(1) %296, i8* nonnull %45) #14, !dbg !842
  %298 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 2, !dbg !843
  store i32 0, i32* %298, align 16, !dbg !844, !tbaa !845
  %299 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 5, !dbg !846
  store %struct.residue_t* null, %struct.residue_t** %299, align 8, !dbg !847, !tbaa !848
  %300 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 17, i64 0, !dbg !849
  store double %206, double* %300, align 16, !dbg !850, !tbaa !721
  %301 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 17, i64 1, !dbg !851
  store double %208, double* %301, align 8, !dbg !852, !tbaa !721
  %302 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 17, i64 2, !dbg !853
  store double %210, double* %302, align 16, !dbg !854, !tbaa !721
  %303 = load i64, i64* %105, align 8, !dbg !855, !tbaa !721
  call void @llvm.dbg.value(metadata double undef, metadata !430, metadata !DIExpression()) #14, !dbg !501
  %304 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 6, !dbg !856
  %305 = bitcast double* %304 to i64*, !dbg !857
  store i64 %303, i64* %305, align 16, !dbg !857, !tbaa !858
  %306 = load i64, i64* %106, align 8, !dbg !859, !tbaa !721
  call void @llvm.dbg.value(metadata double undef, metadata !431, metadata !DIExpression()) #14, !dbg !501
  %307 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 7, !dbg !860
  %308 = bitcast double* %307 to i64*, !dbg !861
  store i64 %306, i64* %308, align 8, !dbg !861, !tbaa !862
  %309 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 9, !dbg !863
  store double %230, double* %309, align 8, !dbg !864, !tbaa !865
  %310 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 8, !dbg !866
  store double %231, double* %310, align 16, !dbg !867, !tbaa !868
  %311 = load i32, i32* @n_atab, align 4, !dbg !869, !tbaa !561
  %312 = add nsw i32 %311, 1, !dbg !869
  store i32 %312, i32* @n_atab, align 4, !dbg !869, !tbaa !561
  br label %330, !dbg !870

313:                                              ; preds = %124
  %314 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* nonnull dereferenceable(3) %43, i64 3) #14, !dbg !871
  %315 = icmp eq i32 %314, 0, !dbg !873
  br i1 %315, label %316, label %327, !dbg !874

316:                                              ; preds = %313
  %317 = load i32, i32* @n_atab, align 4, !dbg !875, !tbaa !561
  %318 = icmp sgt i32 %317, 0, !dbg !878
  br i1 %318, label %319, label %326, !dbg !879

319:                                              ; preds = %316
  %320 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !880, !tbaa !759
  %321 = call i8* @strcpy(i8* nonnull dereferenceable(1) %320, i8* nonnull %47) #14, !dbg !882
  %322 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !883, !tbaa !762
  %323 = call i8* @strcpy(i8* nonnull dereferenceable(1) %322, i8* nonnull %49) #14, !dbg !884
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !885, !tbaa !765
  %324 = load i32, i32* @n_atab, align 4, !dbg !886, !tbaa !561
  store i32 %324, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !887, !tbaa !768
  call fastcc void @makebonds() #14, !dbg !888
  %325 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #14, !dbg !889
  call fastcc void @initres() #14, !dbg !890
  store i32 0, i32* @n_atab, align 4, !dbg !891, !tbaa !561
  br label %326, !dbg !892

326:                                              ; preds = %319, %316
  call void @llvm.dbg.value(metadata i32 0, metadata !410, metadata !DIExpression()) #14, !dbg !501
  store i8 0, i8* %47, align 1, !dbg !893, !tbaa !465
  store i8 0, i8* %49, align 1, !dbg !894, !tbaa !465
  call void @llvm.dbg.value(metadata i32 0, metadata !426, metadata !DIExpression()) #14, !dbg !501
  br label %330, !dbg !895

327:                                              ; preds = %313
  %328 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* nonnull dereferenceable(3) %43, i64 3) #14, !dbg !896
  %329 = icmp eq i32 %328, 0, !dbg !898
  br i1 %329, label %336, label %330, !dbg !899

330:                                              ; preds = %327, %326, %288
  %331 = phi i32 [ %289, %288 ], [ 0, %326 ], [ %110, %327 ], !dbg !501
  %332 = phi i32 [ %290, %288 ], [ %109, %326 ], [ %109, %327 ], !dbg !837
  %333 = phi i32 [ %291, %288 ], [ 0, %326 ], [ %108, %327 ], !dbg !501
  call void @llvm.dbg.value(metadata i32 %333, metadata !410, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %332, metadata !412, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %331, metadata !426, metadata !DIExpression()) #14, !dbg !501
  %334 = call i8* @ggets(i8* nonnull %43, i32 82, %struct._IO_FILE* %42) #14, !dbg !562
  %335 = icmp eq i8* %334, null, !dbg !564
  br i1 %335, label %336, label %107, !dbg !565, !llvm.loop !900

336:                                              ; preds = %330, %327, %78
  %337 = phi i32 [ 0, %78 ], [ %331, %330 ], [ %110, %327 ], !dbg !501
  call void @llvm.dbg.value(metadata i32 %337, metadata !426, metadata !DIExpression()) #14, !dbg !501
  call void @llvm.dbg.value(metadata i32 %337, metadata !426, metadata !DIExpression()) #14, !dbg !501
  %338 = load i32, i32* @n_atab, align 4, !dbg !903, !tbaa !561
  %339 = icmp sgt i32 %338, 0, !dbg !905
  br i1 %339, label %340, label %347, !dbg !906

340:                                              ; preds = %336
  %341 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !907, !tbaa !759
  %342 = call i8* @strcpy(i8* nonnull dereferenceable(1) %341, i8* nonnull %47) #14, !dbg !909
  %343 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !910, !tbaa !762
  %344 = call i8* @strcpy(i8* nonnull dereferenceable(1) %343, i8* nonnull %49) #14, !dbg !911
  store i32 %337, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !912, !tbaa !765
  %345 = load i32, i32* @n_atab, align 4, !dbg !913, !tbaa !561
  store i32 %345, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !914, !tbaa !768
  call fastcc void @makebonds() #14, !dbg !915
  %346 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #14, !dbg !916
  call fastcc void @initres() #14, !dbg !917
  br label %347, !dbg !918

347:                                              ; preds = %336, %340
  %348 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %79, i64 0, i32 5, !dbg !919
  store i32 0, i32* %348, align 8, !dbg !920, !tbaa !921
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %54) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %51) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %50) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %49) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %48) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %47) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %46) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %45) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %44) #14, !dbg !923
  call void @llvm.lifetime.end.p0i8(i64 82, i8* nonnull %43) #14, !dbg !923
  call void @llvm.dbg.value(metadata %struct.molecule_t* %79, metadata !399, metadata !DIExpression()), !dbg !460
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !924, !tbaa !471
  %350 = icmp eq %struct._IO_FILE* %42, %349, !dbg !926
  br i1 %350, label %356, label %351, !dbg !927

351:                                              ; preds = %347
  %352 = call i32 @get_mytaskid() #14, !dbg !928
  %353 = icmp eq i32 %352, 0, !dbg !931
  br i1 %353, label %354, label %356, !dbg !932

354:                                              ; preds = %351
  %355 = call i32 @fclose(%struct._IO_FILE* %42), !dbg !933
  br label %356, !dbg !935

356:                                              ; preds = %347, %351, %354
  ret %struct.molecule_t* %79, !dbg !936
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #3

declare !dbg !35 dso_local i32 @get_mytaskid() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #5

declare !dbg !41 dso_local void @reducerror(i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !44 dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local nonnull [4 x [4 x double]]* @getmatrix(i8* %0) local_unnamed_addr #0 !dbg !2 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !371, metadata !DIExpression()), !dbg !937
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #14, !dbg !938
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !375, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !937
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !940
  %4 = icmp eq i8* %0, null, !dbg !941
  br i1 %4, label %8, label %5, !dbg !943

5:                                                ; preds = %1
  %6 = load i8, i8* %0, align 1, !dbg !944, !tbaa !465
  %7 = icmp eq i8 %6, 0, !dbg !945
  br i1 %7, label %8, label %11, !dbg !946

8:                                                ; preds = %5, %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !947, !tbaa !471
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %9) #15, !dbg !949
  call void @llvm.dbg.value(metadata i32 1, metadata !383, metadata !DIExpression()), !dbg !937
  br label %50, !dbg !950

11:                                               ; preds = %5
  %12 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !951
  %13 = icmp eq i32 %12, 0, !dbg !951
  br i1 %13, label %14, label %16, !dbg !953

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !954, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %15, metadata !371, metadata !DIExpression()), !dbg !937
  br label %22, !dbg !955

16:                                               ; preds = %11
  %17 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !956
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !371, metadata !DIExpression()), !dbg !937
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !958
  br i1 %18, label %19, label %22, !dbg !959

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !960, !tbaa !471
  %21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %0) #15, !dbg !962
  call void @llvm.dbg.value(metadata i32 1, metadata !383, metadata !DIExpression()), !dbg !937
  br label %50, !dbg !963

22:                                               ; preds = %14, %16
  %23 = phi %struct._IO_FILE* [ %17, %16 ], [ %15, %14 ], !dbg !964
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !371, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata i32 0, metadata !379, metadata !DIExpression()), !dbg !937
  br label %24, !dbg !965

24:                                               ; preds = %22, %27
  call void @llvm.dbg.value(metadata i64 0, metadata !379, metadata !DIExpression()), !dbg !937
  %25 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !967
  %26 = icmp eq i8* %25, null, !dbg !965
  br i1 %26, label %38, label %27, !dbg !965

27:                                               ; preds = %24
  %28 = load i8, i8* %3, align 16, !dbg !969, !tbaa !465
  %29 = icmp eq i8 %28, 35, !dbg !972
  br i1 %29, label %24, label %30, !dbg !973, !llvm.loop !974

30:                                               ; preds = %27
  %31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 1), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 2), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 3)) #14, !dbg !976
  call void @llvm.dbg.value(metadata i32 %31, metadata !381, metadata !DIExpression()), !dbg !937
  %32 = icmp eq i32 %31, 4, !dbg !977
  br i1 %32, label %51, label %33, !dbg !979

33:                                               ; preds = %75, %66, %57, %30
  %34 = phi i32 [ %31, %30 ], [ %58, %57 ], [ %67, %66 ], [ %76, %75 ], !dbg !976
  %35 = phi i32 [ 1, %30 ], [ 2, %57 ], [ 3, %66 ], [ 4, %75 ]
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !980, !tbaa !471
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 %34) #15, !dbg !982
  call void @llvm.dbg.value(metadata i32 1, metadata !383, metadata !DIExpression()), !dbg !937
  br label %42, !dbg !983

38:                                               ; preds = %24, %51, %60, %69
  %39 = phi i32 [ 3, %69 ], [ 2, %60 ], [ 1, %51 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i32 4, metadata !379, metadata !DIExpression()), !dbg !937
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !984, !tbaa !471
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %39) #15, !dbg !987
  call void @llvm.dbg.value(metadata i32 1, metadata !383, metadata !DIExpression()), !dbg !937
  br label %42, !dbg !988

42:                                               ; preds = %33, %38
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !937
  br label %43, !dbg !989

43:                                               ; preds = %42, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !371, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.label(metadata !384), !dbg !991
  %44 = icmp eq %struct._IO_FILE* %23, null, !dbg !989
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !992
  %46 = icmp eq %struct._IO_FILE* %23, %45, !dbg !993
  %47 = or i1 %44, %46, !dbg !994
  br i1 %47, label %50, label %48, !dbg !994

48:                                               ; preds = %43
  %49 = call i32 @fclose(%struct._IO_FILE* nonnull %23), !dbg !995
  br label %50, !dbg !995

50:                                               ; preds = %19, %8, %43, %48
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), metadata !382, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #14, !dbg !996
  ret [4 x [4 x double]]* @getmatrix.mat, !dbg !997

51:                                               ; preds = %30, %54
  call void @llvm.dbg.value(metadata i64 1, metadata !379, metadata !DIExpression()), !dbg !937
  %52 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !967
  %53 = icmp eq i8* %52, null, !dbg !965
  br i1 %53, label %38, label %54, !dbg !965

54:                                               ; preds = %51
  %55 = load i8, i8* %3, align 16, !dbg !969, !tbaa !465
  %56 = icmp eq i8 %55, 35, !dbg !972
  br i1 %56, label %51, label %57, !dbg !973, !llvm.loop !974

57:                                               ; preds = %54
  %58 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 1), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 2), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 3)) #14, !dbg !976
  call void @llvm.dbg.value(metadata i32 %58, metadata !381, metadata !DIExpression()), !dbg !937
  %59 = icmp eq i32 %58, 4, !dbg !977
  br i1 %59, label %60, label %33, !dbg !979

60:                                               ; preds = %57, %63
  call void @llvm.dbg.value(metadata i64 2, metadata !379, metadata !DIExpression()), !dbg !937
  %61 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !967
  %62 = icmp eq i8* %61, null, !dbg !965
  br i1 %62, label %38, label %63, !dbg !965

63:                                               ; preds = %60
  %64 = load i8, i8* %3, align 16, !dbg !969, !tbaa !465
  %65 = icmp eq i8 %64, 35, !dbg !972
  br i1 %65, label %60, label %66, !dbg !973, !llvm.loop !974

66:                                               ; preds = %63
  %67 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 1), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 2), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 3)) #14, !dbg !976
  call void @llvm.dbg.value(metadata i32 %67, metadata !381, metadata !DIExpression()), !dbg !937
  %68 = icmp eq i32 %67, 4, !dbg !977
  br i1 %68, label %69, label %33, !dbg !979

69:                                               ; preds = %66, %72
  call void @llvm.dbg.value(metadata i64 3, metadata !379, metadata !DIExpression()), !dbg !937
  %70 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !967
  %71 = icmp eq i8* %70, null, !dbg !965
  br i1 %71, label %38, label %72, !dbg !965

72:                                               ; preds = %69
  %73 = load i8, i8* %3, align 16, !dbg !969, !tbaa !465
  %74 = icmp eq i8 %73, 35, !dbg !972
  br i1 %74, label %69, label %75, !dbg !973, !llvm.loop !974

75:                                               ; preds = %72
  %76 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 1), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 2), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 3)) #14, !dbg !976
  call void @llvm.dbg.value(metadata i32 %76, metadata !381, metadata !DIExpression()), !dbg !937
  %77 = icmp eq i32 %76, 4, !dbg !977
  br i1 %77, label %43, label %33, !dbg !979
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare !dbg !104 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* readonly %1, i8* readonly %2) local_unnamed_addr #0 !dbg !998 {
  %4 = alloca [8 x i8], align 4
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !1007, metadata !DIExpression()), !dbg !1039
  %5 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !1024, metadata !DIExpression()), !dbg !1045
  %6 = alloca [7 x i8], align 1
  call void @llvm.dbg.declare(metadata [7 x i8]* %6, metadata !1026, metadata !DIExpression()), !dbg !1046
  %7 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !1030, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %0, metadata !1002, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1003, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i8* %2, metadata !1004, metadata !DIExpression()), !dbg !1048
  %8 = icmp eq %struct.molecule_t* %1, null, !dbg !1049
  %9 = tail call i32 @get_mytaskid() #14, !dbg !1048
  %10 = icmp eq i32 %9, 0, !dbg !1048
  br i1 %8, label %11, label %15, !dbg !1051

11:                                               ; preds = %3
  br i1 %10, label %12, label %705, !dbg !1052

12:                                               ; preds = %11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1054, !tbaa !471
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %13) #15, !dbg !1057
  br label %705, !dbg !1058

15:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1006, metadata !DIExpression()), !dbg !1048
  br i1 %10, label %16, label %703, !dbg !1059

16:                                               ; preds = %15
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1060
  %18 = icmp eq i32 %17, 0, !dbg !1060
  br i1 %18, label %19, label %21, !dbg !1062

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1063, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !1005, metadata !DIExpression()), !dbg !1048
  br label %26, !dbg !1064

21:                                               ; preds = %16
  %22 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1065
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1005, metadata !DIExpression()), !dbg !1048
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !1067
  br i1 %23, label %24, label %26, !dbg !1068

24:                                               ; preds = %21
  %25 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1069
  call void @llvm.dbg.value(metadata i32 -1, metadata !1006, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 -1, metadata !1006, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1005, metadata !DIExpression()), !dbg !1048
  br label %703, !dbg !1071

26:                                               ; preds = %19, %21
  %27 = phi %struct._IO_FILE* [ %20, %19 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !1006, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1005, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1012, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1013, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %2, metadata !1014, metadata !DIExpression()) #14, !dbg !1072
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1073
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #14, !dbg !1073
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1074
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #14, !dbg !1074
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %30) #14, !dbg !1075
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %31) #14, !dbg !1076
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1034, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1035, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1036, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1037, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1038, metadata !DIExpression()) #14, !dbg !1072
  %32 = icmp eq %struct._IO_FILE* %27, null, !dbg !1077
  br i1 %32, label %33, label %36, !dbg !1079

33:                                               ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1080, !tbaa !471
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %34) #16, !dbg !1082
  br label %698, !dbg !1083

36:                                               ; preds = %26
  %37 = icmp eq i8* %2, null, !dbg !1084
  br i1 %37, label %38, label %39, !dbg !1086

38:                                               ; preds = %36
  store i8 0, i8* %31, align 16, !dbg !1087, !tbaa !465
  br label %42, !dbg !1088

39:                                               ; preds = %36
  %40 = call i8* @strncpy(i8* nonnull %31, i8* nonnull %2, i64 255) #14, !dbg !1089
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255, !dbg !1091
  store i8 0, i8* %41, align 1, !dbg !1092, !tbaa !465
  br label %42

42:                                               ; preds = %39, %38
  %43 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #13, !dbg !1093
  %44 = icmp ne i8* %43, null, !dbg !1094
  call void @llvm.dbg.value(metadata i1 %44, metadata !1031, metadata !DIExpression()) #14, !dbg !1072
  %45 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #13, !dbg !1095
  %46 = icmp ne i8* %45, null, !dbg !1096
  call void @llvm.dbg.value(metadata i1 %46, metadata !1032, metadata !DIExpression()) #14, !dbg !1072
  %47 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #13, !dbg !1097
  %48 = icmp ne i8* %47, null, !dbg !1098
  call void @llvm.dbg.value(metadata i1 %48, metadata !1033, metadata !DIExpression()) #14, !dbg !1072
  %49 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #13, !dbg !1099
  %50 = icmp ne i8* %49, null, !dbg !1100
  call void @llvm.dbg.value(metadata i1 %50, metadata !1034, metadata !DIExpression()) #14, !dbg !1072
  %51 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #13, !dbg !1101
  %52 = icmp ne i8* %51, null, !dbg !1102
  call void @llvm.dbg.value(metadata i1 %52, metadata !1035, metadata !DIExpression()) #14, !dbg !1072
  %53 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #13, !dbg !1103
  %54 = icmp eq i8* %53, null, !dbg !1104
  call void @llvm.dbg.value(metadata i1 %54, metadata !1036, metadata !DIExpression()) #14, !dbg !1072
  %55 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #13, !dbg !1105
  %56 = icmp ne i8* %55, null, !dbg !1106
  call void @llvm.dbg.value(metadata i1 %56, metadata !1037, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i1 undef, metadata !1036, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i1 undef, metadata !1107, metadata !DIExpression()) #14, !dbg !1119
  call void @llvm.dbg.value(metadata i1 %56, metadata !1112, metadata !DIExpression()) #14, !dbg !1119
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1113, metadata !DIExpression()) #14, !dbg !1119
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1114, metadata !DIExpression()) #14, !dbg !1119
  call void @llvm.dbg.value(metadata i32 0, metadata !1117, metadata !DIExpression()) #14, !dbg !1119
  %57 = or i1 %54, %56, !dbg !1121
  br i1 %57, label %58, label %106, !dbg !1123

58:                                               ; preds = %42
  %59 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 16) #14, !dbg !1124
  %60 = bitcast i8* %59 to %struct.cid_t*, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1114, metadata !DIExpression()) #14, !dbg !1119
  %61 = icmp eq i8* %59, null, !dbg !1126
  br i1 %61, label %62, label %65, !dbg !1128

62:                                               ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1129, !tbaa !471
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %63) #16, !dbg !1131
  call void @llvm.dbg.value(metadata i32 undef, metadata !1117, metadata !DIExpression()) #14, !dbg !1119
  call void @llvm.dbg.label(metadata !1118) #14, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1133, metadata !DIExpression()) #14, !dbg !1138
  br label %106, !dbg !1142

65:                                               ; preds = %58
  %66 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #14, !dbg !1143
  %67 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !1144
  %68 = bitcast i8* %67 to i8**, !dbg !1144
  store i8* %66, i8** %68, align 8, !dbg !1145, !tbaa !1146
  %69 = icmp eq i8* %66, null, !dbg !1148
  br i1 %69, label %103, label %70, !dbg !1150

70:                                               ; preds = %65
  %71 = bitcast i8* %59 to i32*, !dbg !1151
  store i32 65, i32* %71, align 8, !dbg !1152, !tbaa !1153
  %72 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1154
  %73 = bitcast i8* %72 to i32*, !dbg !1154
  store i32 90, i32* %73, align 4, !dbg !1155, !tbaa !1156
  call void @llvm.dbg.value(metadata i32 65, metadata !1115, metadata !DIExpression()) #14, !dbg !1119
  %74 = getelementptr i8, i8* %66, i64 65, !dbg !1157
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(26) %74, i8 0, i64 26, i1 false) #14, !dbg !1159
  call void @llvm.dbg.value(metadata i32 undef, metadata !1115, metadata !DIExpression()) #14, !dbg !1119
  br i1 %56, label %75, label %106, !dbg !1161

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1116, metadata !DIExpression()) #14, !dbg !1119
  %77 = load %struct.strand_t*, %struct.strand_t** %76, align 8, !dbg !1166, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %77, metadata !1116, metadata !DIExpression()) #14, !dbg !1119
  %78 = icmp eq %struct.strand_t* %77, null, !dbg !1167
  br i1 %78, label %106, label %79, !dbg !1167

79:                                               ; preds = %75, %92
  %80 = phi %struct.strand_t* [ %94, %92 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i64 0, i32 0, !dbg !1168
  %82 = load i8*, i8** %81, align 8, !dbg !1168, !tbaa !787
  %83 = call i64 @strlen(i8* nonnull dereferenceable(1) %82) #13, !dbg !1172
  %84 = icmp eq i64 %83, 1, !dbg !1173
  br i1 %84, label %85, label %92, !dbg !1174

85:                                               ; preds = %79
  %86 = load i8, i8* %82, align 1, !dbg !1175, !tbaa !465
  call void @llvm.dbg.value(metadata i8 %86, metadata !1115, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1119
  %87 = add i8 %86, -65, !dbg !1177
  %88 = icmp ult i8 %87, 26, !dbg !1177
  br i1 %88, label %89, label %92, !dbg !1177

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i8 %86, metadata !1115, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1119
  %90 = zext i8 %86 to i64, !dbg !1179
  %91 = getelementptr inbounds i8, i8* %66, i64 %90, !dbg !1179
  store i8 1, i8* %91, align 1, !dbg !1180, !tbaa !465
  br label %92, !dbg !1179

92:                                               ; preds = %89, %85, %79
  %93 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i64 0, i32 4, !dbg !1181
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1116, metadata !DIExpression()) #14, !dbg !1119
  %94 = load %struct.strand_t*, %struct.strand_t** %93, align 8, !dbg !1166, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %94, metadata !1116, metadata !DIExpression()) #14, !dbg !1119
  %95 = icmp eq %struct.strand_t* %94, null, !dbg !1167
  br i1 %95, label %96, label %79, !dbg !1167, !llvm.loop !1182

96:                                               ; preds = %92
  %97 = load i8, i8* %74, align 1, !dbg !1184, !tbaa !465
  %98 = icmp eq i8 %97, 0, !dbg !1184
  br i1 %98, label %106, label %99, !dbg !1189

99:                                               ; preds = %96
  store i32 66, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %100 = getelementptr inbounds i8, i8* %66, i64 66, !dbg !1184
  %101 = load i8, i8* %100, align 1, !dbg !1184, !tbaa !465
  %102 = icmp eq i8 %101, 0, !dbg !1184
  br i1 %102, label %106, label %601, !dbg !1189

103:                                              ; preds = %65
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1191, !tbaa !471
  %105 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %104) #16, !dbg !1193
  call void @llvm.dbg.value(metadata i32 undef, metadata !1117, metadata !DIExpression()) #14, !dbg !1119
  call void @llvm.dbg.label(metadata !1118) #14, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1133, metadata !DIExpression()) #14, !dbg !1138
  call void @free(i8* nonnull %59) #14, !dbg !1194
  br label %106, !dbg !1197

106:                                              ; preds = %693, %689, %685, %681, %677, %673, %669, %665, %661, %657, %653, %649, %645, %641, %637, %633, %629, %625, %621, %617, %613, %609, %605, %601, %103, %99, %96, %75, %70, %62, %42
  %107 = phi %struct.cid_t* [ null, %42 ], [ %60, %70 ], [ null, %103 ], [ null, %62 ], [ %60, %689 ], [ %60, %685 ], [ %60, %681 ], [ %60, %677 ], [ %60, %673 ], [ %60, %669 ], [ %60, %665 ], [ %60, %661 ], [ %60, %657 ], [ %60, %653 ], [ %60, %649 ], [ %60, %645 ], [ %60, %641 ], [ %60, %637 ], [ %60, %633 ], [ %60, %629 ], [ %60, %625 ], [ %60, %621 ], [ %60, %617 ], [ %60, %613 ], [ %60, %609 ], [ %60, %605 ], [ %60, %601 ], [ %60, %99 ], [ %60, %96 ], [ %60, %75 ], [ %60, %693 ], !dbg !1119
  call void @llvm.dbg.value(metadata %struct.cid_t* %107, metadata !1038, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1016, metadata !DIExpression()) #14, !dbg !1072
  %108 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1198
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1021, metadata !DIExpression()) #14, !dbg !1072
  %109 = load %struct.strand_t*, %struct.strand_t** %108, align 8, !dbg !1200, !tbaa !471
  call void @llvm.dbg.value(metadata i32 0, metadata !1016, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata %struct.strand_t* %109, metadata !1021, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  %110 = icmp eq %struct.strand_t* %109, null, !dbg !1201
  br i1 %110, label %592, label %111, !dbg !1201

111:                                              ; preds = %106
  %112 = icmp eq %struct.cid_t* %107, null, !dbg !1202
  %113 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %107, i64 0, i32 0, !dbg !1216
  %114 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %107, i64 0, i32 1, !dbg !1216
  %115 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %107, i64 0, i32 2, !dbg !1218
  %116 = bitcast [8 x i8]* %4 to i32*, !dbg !1221
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1, !dbg !1235
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4, !dbg !1235
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2, !dbg !1251
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3, !dbg !1253
  %121 = bitcast [8 x i8]* %4 to i16*, !dbg !1255
  %122 = or i1 %48, %50, !dbg !1263
  %123 = xor i1 %122, true, !dbg !1263
  %124 = or i1 %44, %123, !dbg !1263
  %125 = or i1 %46, %124, !dbg !1263
  br label %126, !dbg !1201

126:                                              ; preds = %585, %111
  %127 = phi %struct.strand_t* [ %109, %111 ], [ %590, %585 ]
  %128 = phi i32 [ 0, %111 ], [ %587, %585 ]
  %129 = phi i32 [ 0, %111 ], [ %586, %585 ]
  call void @llvm.dbg.value(metadata i32 %128, metadata !1016, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %129, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata %struct.cid_t* %107, metadata !1208, metadata !DIExpression()) #14, !dbg !1265
  call void @llvm.dbg.value(metadata i1 undef, metadata !1209, metadata !DIExpression()) #14, !dbg !1265
  call void @llvm.dbg.value(metadata i1 %56, metadata !1210, metadata !DIExpression()) #14, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.strand_t* %127, metadata !1211, metadata !DIExpression()) #14, !dbg !1265
  br i1 %57, label %130, label %170, !dbg !1266

130:                                              ; preds = %126
  br i1 %112, label %131, label %134, !dbg !1267

131:                                              ; preds = %130
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1268, !tbaa !471
  %133 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %132) #16, !dbg !1270
  br label %170, !dbg !1271

134:                                              ; preds = %130
  %135 = load i32, i32* %113, align 8, !dbg !1272, !tbaa !1153
  %136 = load i32, i32* %114, align 4, !dbg !1273, !tbaa !1156
  %137 = icmp sgt i32 %135, %136, !dbg !1274
  br i1 %137, label %170, label %138, !dbg !1275

138:                                              ; preds = %134
  br i1 %56, label %139, label %168, !dbg !1276

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %127, i64 0, i32 0, !dbg !1277
  %141 = load i8*, i8** %140, align 8, !dbg !1277, !tbaa !787
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %141) #13, !dbg !1279
  %143 = icmp eq i64 %142, 1, !dbg !1280
  br i1 %143, label %144, label %150, !dbg !1281

144:                                              ; preds = %139
  %145 = load i8, i8* %141, align 1, !dbg !1282, !tbaa !465
  call void @llvm.dbg.value(metadata i8 %145, metadata !1212, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1265
  %146 = add i8 %145, -65, !dbg !1284
  %147 = icmp ult i8 %146, 26, !dbg !1284
  br i1 %147, label %148, label %150, !dbg !1284

148:                                              ; preds = %144
  %149 = zext i8 %145 to i32, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %149, metadata !1212, metadata !DIExpression()) #14, !dbg !1265
  br label %170, !dbg !1286

150:                                              ; preds = %144, %139
  call void @llvm.dbg.value(metadata i32 %135, metadata !1212, metadata !DIExpression()) #14, !dbg !1265
  %151 = load i8*, i8** %115, align 8, !dbg !1287, !tbaa !1146
  %152 = sext i32 %135 to i64, !dbg !1288
  %153 = getelementptr inbounds i8, i8* %151, i64 %152, !dbg !1288
  store i8 1, i8* %153, align 1, !dbg !1289, !tbaa !465
  %154 = load i32, i32* %113, align 8, !dbg !1290, !tbaa !1153
  %155 = load i32, i32* %114, align 4, !dbg !1292, !tbaa !1156
  %156 = sext i32 %154 to i64, !dbg !1290
  %157 = sext i32 %155 to i64, !dbg !1290
  br label %158, !dbg !1290

158:                                              ; preds = %163, %150
  %159 = phi i64 [ %160, %163 ], [ %156, %150 ]
  %160 = add nsw i64 %159, 1, !dbg !1294
  %161 = trunc i64 %160 to i32, !dbg !1294
  store i32 %161, i32* %113, align 8, !dbg !1294, !tbaa !1153
  %162 = icmp slt i64 %159, %157, !dbg !1295
  br i1 %162, label %163, label %170, !dbg !1296

163:                                              ; preds = %158
  %164 = load i8*, i8** %115, align 8, !dbg !1297, !tbaa !1146
  %165 = getelementptr inbounds i8, i8* %164, i64 %160, !dbg !1300
  %166 = load i8, i8* %165, align 1, !dbg !1300, !tbaa !465
  %167 = icmp eq i8 %166, 0, !dbg !1300
  br i1 %167, label %170, label %158, !dbg !1301, !llvm.loop !1302

168:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 %135, metadata !1212, metadata !DIExpression()) #14, !dbg !1265
  %169 = add nsw i32 %135, 1, !dbg !1304
  store i32 %169, i32* %113, align 8, !dbg !1304, !tbaa !1153
  br label %170, !dbg !1306

170:                                              ; preds = %163, %158, %168, %148, %134, %131, %126
  %171 = phi i32 [ 32, %131 ], [ %149, %148 ], [ %135, %168 ], [ 32, %126 ], [ 32, %134 ], [ %135, %158 ], [ %135, %163 ], !dbg !1265
  call void @llvm.dbg.value(metadata i32 %171, metadata !1020, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 0, metadata !1015, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %128, metadata !1016, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %129, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  %172 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %127, i64 0, i32 5, !dbg !1307
  %173 = load i32, i32* %172, align 8, !dbg !1307, !tbaa !1308
  %174 = icmp sgt i32 %173, 0, !dbg !1309
  br i1 %174, label %175, label %585, !dbg !1310

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %127, i64 0, i32 7, !dbg !1311
  %177 = shl i32 %171, 24, !dbg !1312
  %178 = ashr exact i32 %177, 24, !dbg !1312
  br label %179, !dbg !1310

179:                                              ; preds = %578, %175
  %180 = phi i64 [ 0, %175 ], [ %580, %578 ]
  %181 = phi i32 [ %128, %175 ], [ %581, %578 ]
  %182 = phi i32 [ %129, %175 ], [ %579, %578 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !1015, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %181, metadata !1016, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %182, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  %183 = load %struct.residue_t**, %struct.residue_t*** %176, align 8, !dbg !1317, !tbaa !800
  %184 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %183, i64 %180, !dbg !1318
  %185 = load %struct.residue_t*, %struct.residue_t** %184, align 8, !dbg !1318, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %185, metadata !1022, metadata !DIExpression()) #14, !dbg !1072
  %186 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 5, !dbg !1319
  %187 = load i8*, i8** %186, align 8, !dbg !1319, !tbaa !762
  %188 = icmp eq i8* %187, null, !dbg !1320
  %189 = select i1 %188, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), i8* %187, !dbg !1320
  %190 = call i8* @strcpy(i8* nonnull %30, i8* nonnull dereferenceable(1) %189) #14, !dbg !1321
  %191 = getelementptr %struct.residue_t, %struct.residue_t* %185, i64 0, i32 4, !dbg !1322
  %192 = load i8*, i8** %191, align 8, !dbg !1322, !tbaa !759
  br i1 %48, label %193, label %263, !dbg !1323

193:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i8* %28, metadata !1324, metadata !DIExpression()) #14, !dbg !1328
  %194 = call i8* @strcpy(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(1) %192) #14, !dbg !1330
  %195 = load i32, i32* %116, align 4, !dbg !1331
  switch i32 %195, label %201 [
    i32 4281671, label %196
    i32 4539457, label %197
    i32 5851220, label %198
    i32 5527875, label %199
    i32 4280917, label %200
  ], !dbg !1333

196:                                              ; preds = %193
  store i32 4661280, i32* %116, align 4, !dbg !1334
  br label %201, !dbg !1335

197:                                              ; preds = %193
  store i32 4268064, i32* %116, align 4, !dbg !1336
  br label %201, !dbg !1336

198:                                              ; preds = %193
  store i32 5513248, i32* %116, align 4, !dbg !1338
  br label %201, !dbg !1338

199:                                              ; preds = %193
  store i32 4399136, i32* %116, align 4, !dbg !1340
  br label %201, !dbg !1340

200:                                              ; preds = %193
  store i32 5578784, i32* %116, align 4, !dbg !1342
  br label %201, !dbg !1342

201:                                              ; preds = %200, %199, %198, %197, %196, %193
  %202 = phi i32 [ 5578784, %200 ], [ 4399136, %199 ], [ 5513248, %198 ], [ 4661280, %196 ], [ 4268064, %197 ], [ %195, %193 ]
  %203 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #14, !dbg !1344
  %204 = icmp eq i32 %203, 0, !dbg !1344
  br i1 %204, label %205, label %206, !dbg !1346

205:                                              ; preds = %201
  store i32 4661280, i32* %116, align 4, !dbg !1347
  br label %206, !dbg !1347

206:                                              ; preds = %205, %201
  %207 = phi i32 [ 4661280, %205 ], [ %202, %201 ]
  %208 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #14, !dbg !1348
  %209 = icmp eq i32 %208, 0, !dbg !1348
  br i1 %209, label %210, label %211, !dbg !1350

210:                                              ; preds = %206
  store i32 4268064, i32* %116, align 4, !dbg !1351
  br label %211, !dbg !1351

211:                                              ; preds = %210, %206
  %212 = phi i32 [ 4268064, %210 ], [ %207, %206 ]
  %213 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #14, !dbg !1352
  %214 = icmp eq i32 %213, 0, !dbg !1352
  br i1 %214, label %215, label %216, !dbg !1354

215:                                              ; preds = %211
  store i32 5513248, i32* %116, align 4, !dbg !1355
  br label %216, !dbg !1355

216:                                              ; preds = %215, %211
  %217 = phi i32 [ 5513248, %215 ], [ %212, %211 ]
  %218 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #14, !dbg !1356
  %219 = icmp eq i32 %218, 0, !dbg !1356
  br i1 %219, label %220, label %221, !dbg !1358

220:                                              ; preds = %216
  store i32 4399136, i32* %116, align 4, !dbg !1359
  br label %221, !dbg !1359

221:                                              ; preds = %220, %216
  %222 = phi i32 [ 4399136, %220 ], [ %217, %216 ]
  %223 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #14, !dbg !1360
  %224 = icmp eq i32 %223, 0, !dbg !1360
  br i1 %224, label %225, label %226, !dbg !1362

225:                                              ; preds = %221
  store i32 4661280, i32* %116, align 4, !dbg !1363
  br label %226, !dbg !1363

226:                                              ; preds = %225, %221
  %227 = phi i32 [ 4661280, %225 ], [ %222, %221 ]
  %228 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #14, !dbg !1364
  %229 = icmp eq i32 %228, 0, !dbg !1364
  br i1 %229, label %230, label %231, !dbg !1366

230:                                              ; preds = %226
  store i32 4268064, i32* %116, align 4, !dbg !1367
  br label %231, !dbg !1367

231:                                              ; preds = %230, %226
  %232 = phi i32 [ 4268064, %230 ], [ %227, %226 ]
  %233 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #14, !dbg !1368
  %234 = icmp eq i32 %233, 0, !dbg !1368
  br i1 %234, label %235, label %236, !dbg !1370

235:                                              ; preds = %231
  store i32 5578784, i32* %116, align 4, !dbg !1371
  br label %236, !dbg !1371

236:                                              ; preds = %235, %231
  %237 = phi i32 [ 5578784, %235 ], [ %232, %231 ]
  %238 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #14, !dbg !1372
  %239 = icmp eq i32 %238, 0, !dbg !1372
  br i1 %239, label %240, label %241, !dbg !1374

240:                                              ; preds = %236
  store i32 4399136, i32* %116, align 4, !dbg !1375
  br label %336, !dbg !1376

241:                                              ; preds = %236
  switch i32 %237, label %336 [
    i32 3360580, label %242
    i32 3359044, label %243
    i32 3363908, label %244
    i32 3359556, label %245
    i32 3360594, label %246
    i32 3359058, label %247
    i32 3364178, label %248
    i32 3359570, label %249
    i32 3491652, label %250
    i32 3490116, label %251
    i32 3494980, label %252
    i32 3490628, label %253
    i32 3491666, label %254
    i32 3490130, label %255
    i32 3495250, label %256
    i32 3490642, label %257
    i32 4475208, label %258
    i32 5261640, label %259
    i32 5790019, label %260
    i32 4739905, label %261
    i32 4738119, label %262
  ], !dbg !1376

242:                                              ; preds = %241
  store i32 4661280, i32* %116, align 4, !dbg !1377
  br label %336, !dbg !1377

243:                                              ; preds = %241
  store i32 4268064, i32* %116, align 4, !dbg !1379
  br label %336, !dbg !1379

244:                                              ; preds = %241
  store i32 5513248, i32* %116, align 4, !dbg !1381
  br label %336, !dbg !1381

245:                                              ; preds = %241
  store i32 4399136, i32* %116, align 4, !dbg !1383
  br label %336, !dbg !1383

246:                                              ; preds = %241
  store i32 4661280, i32* %116, align 4, !dbg !1385
  br label %336, !dbg !1385

247:                                              ; preds = %241
  store i32 4268064, i32* %116, align 4, !dbg !1387
  br label %336, !dbg !1387

248:                                              ; preds = %241
  store i32 5578784, i32* %116, align 4, !dbg !1389
  br label %336, !dbg !1389

249:                                              ; preds = %241
  store i32 4399136, i32* %116, align 4, !dbg !1391
  br label %336, !dbg !1391

250:                                              ; preds = %241
  store i32 4661280, i32* %116, align 4, !dbg !1393
  br label %336, !dbg !1393

251:                                              ; preds = %241
  store i32 4268064, i32* %116, align 4, !dbg !1395
  br label %336, !dbg !1395

252:                                              ; preds = %241
  store i32 5513248, i32* %116, align 4, !dbg !1397
  br label %336, !dbg !1397

253:                                              ; preds = %241
  store i32 4399136, i32* %116, align 4, !dbg !1399
  br label %336, !dbg !1399

254:                                              ; preds = %241
  store i32 4661280, i32* %116, align 4, !dbg !1401
  br label %336, !dbg !1401

255:                                              ; preds = %241
  store i32 4268064, i32* %116, align 4, !dbg !1403
  br label %336, !dbg !1403

256:                                              ; preds = %241
  store i32 5578784, i32* %116, align 4, !dbg !1405
  br label %336, !dbg !1405

257:                                              ; preds = %241
  store i32 4399136, i32* %116, align 4, !dbg !1407
  br label %336, !dbg !1409

258:                                              ; preds = %241
  store i32 5458248, i32* %116, align 4, !dbg !1410
  br label %336, !dbg !1410

259:                                              ; preds = %241
  store i32 5458248, i32* %116, align 4, !dbg !1412
  br label %336, !dbg !1412

260:                                              ; preds = %241
  store i32 5462339, i32* %116, align 4, !dbg !1414
  br label %336, !dbg !1414

261:                                              ; preds = %241
  store i32 5264193, i32* %116, align 4, !dbg !1416
  br label %336, !dbg !1416

262:                                              ; preds = %241
  store i32 5590087, i32* %116, align 4, !dbg !1418
  br label %336, !dbg !1418

263:                                              ; preds = %179
  br i1 %50, label %264, label %334, !dbg !1420

264:                                              ; preds = %263
  call void @llvm.dbg.value(metadata i8* %28, metadata !1227, metadata !DIExpression()) #14, !dbg !1421
  %265 = call i8* @strcpy(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(1) %192) #14, !dbg !1422
  %266 = load i32, i32* %116, align 4, !dbg !1423
  switch i32 %266, label %272 [
    i32 4281671, label %267
    i32 4539457, label %268
    i32 5851220, label %269
    i32 5527875, label %270
    i32 4280917, label %271
  ], !dbg !1424

267:                                              ; preds = %264
  store i32 4661280, i32* %116, align 4, !dbg !1425
  br label %272, !dbg !1426

268:                                              ; preds = %264
  store i32 4268064, i32* %116, align 4, !dbg !1427
  br label %272, !dbg !1427

269:                                              ; preds = %264
  store i32 5513248, i32* %116, align 4, !dbg !1429
  br label %272, !dbg !1429

270:                                              ; preds = %264
  store i32 4399136, i32* %116, align 4, !dbg !1431
  br label %272, !dbg !1431

271:                                              ; preds = %264
  store i32 5578784, i32* %116, align 4, !dbg !1433
  br label %272, !dbg !1433

272:                                              ; preds = %271, %270, %269, %268, %267, %264
  %273 = phi i32 [ 5578784, %271 ], [ 4399136, %270 ], [ 5513248, %269 ], [ 4661280, %267 ], [ 4268064, %268 ], [ %266, %264 ]
  %274 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #14, !dbg !1435
  %275 = icmp eq i32 %274, 0, !dbg !1435
  br i1 %275, label %276, label %277, !dbg !1437

276:                                              ; preds = %272
  store i32 4670496, i32* %116, align 4, !dbg !1438
  br label %277, !dbg !1438

277:                                              ; preds = %276, %272
  %278 = phi i32 [ 4670496, %276 ], [ %273, %272 ]
  %279 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #14, !dbg !1439
  %280 = icmp eq i32 %279, 0, !dbg !1439
  br i1 %280, label %281, label %282, !dbg !1441

281:                                              ; preds = %277
  store i32 4277280, i32* %116, align 4, !dbg !1442
  br label %282, !dbg !1442

282:                                              ; preds = %281, %277
  %283 = phi i32 [ 4277280, %281 ], [ %278, %277 ]
  %284 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #14, !dbg !1443
  %285 = icmp eq i32 %284, 0, !dbg !1443
  br i1 %285, label %286, label %287, !dbg !1445

286:                                              ; preds = %282
  store i32 5522464, i32* %116, align 4, !dbg !1446
  br label %287, !dbg !1446

287:                                              ; preds = %286, %282
  %288 = phi i32 [ 5522464, %286 ], [ %283, %282 ]
  %289 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #14, !dbg !1447
  %290 = icmp eq i32 %289, 0, !dbg !1447
  br i1 %290, label %291, label %292, !dbg !1449

291:                                              ; preds = %287
  store i32 4408352, i32* %116, align 4, !dbg !1450
  br label %292, !dbg !1450

292:                                              ; preds = %291, %287
  %293 = phi i32 [ 4408352, %291 ], [ %288, %287 ]
  %294 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #14, !dbg !1451
  %295 = icmp eq i32 %294, 0, !dbg !1451
  br i1 %295, label %296, label %297, !dbg !1453

296:                                              ; preds = %292
  store i32 4674080, i32* %116, align 4, !dbg !1454
  br label %297, !dbg !1454

297:                                              ; preds = %296, %292
  %298 = phi i32 [ 4674080, %296 ], [ %293, %292 ]
  %299 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #14, !dbg !1455
  %300 = icmp eq i32 %299, 0, !dbg !1455
  br i1 %300, label %301, label %302, !dbg !1457

301:                                              ; preds = %297
  store i32 4280864, i32* %116, align 4, !dbg !1458
  br label %302, !dbg !1458

302:                                              ; preds = %301, %297
  %303 = phi i32 [ 4280864, %301 ], [ %298, %297 ]
  %304 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #14, !dbg !1459
  %305 = icmp eq i32 %304, 0, !dbg !1459
  br i1 %305, label %306, label %307, !dbg !1461

306:                                              ; preds = %302
  store i32 5591584, i32* %116, align 4, !dbg !1462
  br label %307, !dbg !1462

307:                                              ; preds = %306, %302
  %308 = phi i32 [ 5591584, %306 ], [ %303, %302 ]
  %309 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #14, !dbg !1463
  %310 = icmp eq i32 %309, 0, !dbg !1463
  br i1 %310, label %311, label %312, !dbg !1465

311:                                              ; preds = %307
  store i32 4411936, i32* %116, align 4, !dbg !1466
  br label %336, !dbg !1467

312:                                              ; preds = %307
  switch i32 %308, label %336 [
    i32 3360580, label %313
    i32 3359044, label %314
    i32 3363908, label %315
    i32 3359556, label %316
    i32 3360594, label %317
    i32 3359058, label %318
    i32 3364178, label %319
    i32 3359570, label %320
    i32 3491652, label %321
    i32 3490116, label %322
    i32 3494980, label %323
    i32 3490628, label %324
    i32 3491666, label %325
    i32 3490130, label %326
    i32 3495250, label %327
    i32 3490642, label %328
    i32 4475208, label %329
    i32 5261640, label %330
    i32 5790019, label %331
    i32 4739905, label %332
    i32 4738119, label %333
  ], !dbg !1467

313:                                              ; preds = %312
  store i32 4670496, i32* %116, align 4, !dbg !1468
  br label %336, !dbg !1468

314:                                              ; preds = %312
  store i32 4277280, i32* %116, align 4, !dbg !1470
  br label %336, !dbg !1470

315:                                              ; preds = %312
  store i32 5522464, i32* %116, align 4, !dbg !1472
  br label %336, !dbg !1472

316:                                              ; preds = %312
  store i32 4408352, i32* %116, align 4, !dbg !1474
  br label %336, !dbg !1474

317:                                              ; preds = %312
  store i32 4674080, i32* %116, align 4, !dbg !1476
  br label %336, !dbg !1476

318:                                              ; preds = %312
  store i32 4280864, i32* %116, align 4, !dbg !1478
  br label %336, !dbg !1478

319:                                              ; preds = %312
  store i32 5591584, i32* %116, align 4, !dbg !1480
  br label %336, !dbg !1480

320:                                              ; preds = %312
  store i32 4411936, i32* %116, align 4, !dbg !1482
  br label %336, !dbg !1482

321:                                              ; preds = %312
  store i32 4670496, i32* %116, align 4, !dbg !1484
  br label %336, !dbg !1484

322:                                              ; preds = %312
  store i32 4277280, i32* %116, align 4, !dbg !1486
  br label %336, !dbg !1486

323:                                              ; preds = %312
  store i32 5522464, i32* %116, align 4, !dbg !1488
  br label %336, !dbg !1488

324:                                              ; preds = %312
  store i32 4408352, i32* %116, align 4, !dbg !1490
  br label %336, !dbg !1490

325:                                              ; preds = %312
  store i32 4674080, i32* %116, align 4, !dbg !1492
  br label %336, !dbg !1492

326:                                              ; preds = %312
  store i32 4280864, i32* %116, align 4, !dbg !1494
  br label %336, !dbg !1494

327:                                              ; preds = %312
  store i32 5591584, i32* %116, align 4, !dbg !1496
  br label %336, !dbg !1496

328:                                              ; preds = %312
  store i32 4411936, i32* %116, align 4, !dbg !1498
  br label %336, !dbg !1500

329:                                              ; preds = %312
  store i32 5458248, i32* %116, align 4, !dbg !1501
  br label %336, !dbg !1501

330:                                              ; preds = %312
  store i32 5458248, i32* %116, align 4, !dbg !1503
  br label %336, !dbg !1503

331:                                              ; preds = %312
  store i32 5462339, i32* %116, align 4, !dbg !1505
  br label %336, !dbg !1505

332:                                              ; preds = %312
  store i32 5264193, i32* %116, align 4, !dbg !1507
  br label %336, !dbg !1507

333:                                              ; preds = %312
  store i32 5590087, i32* %116, align 4, !dbg !1509
  br label %336, !dbg !1509

334:                                              ; preds = %263
  %335 = call i8* @strcpy(i8* nonnull %28, i8* nonnull dereferenceable(1) %192) #14, !dbg !1511
  br label %336

336:                                              ; preds = %334, %333, %332, %331, %330, %329, %328, %327, %326, %325, %324, %323, %322, %321, %320, %319, %318, %317, %316, %315, %314, %313, %312, %311, %262, %261, %260, %259, %258, %257, %256, %255, %254, %253, %252, %251, %250, %249, %248, %247, %246, %245, %244, %243, %242, %241, %240
  call void @llvm.dbg.value(metadata i32 0, metadata !1018, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %182, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  %337 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 15, !dbg !1512
  %338 = load i32, i32* %337, align 8, !dbg !1512, !tbaa !768
  %339 = icmp sgt i32 %338, 0, !dbg !1513
  br i1 %339, label %340, label %578, !dbg !1514

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 17, !dbg !1515
  %342 = trunc i64 %180 to i32, !dbg !1516
  %343 = select i1 %52, i32 %181, i32 %342, !dbg !1516
  %344 = add nsw i32 %343, 1, !dbg !1516
  br label %345, !dbg !1514

345:                                              ; preds = %572, %340
  %346 = phi i64 [ 0, %340 ], [ %574, %572 ]
  %347 = phi i32 [ %182, %340 ], [ %348, %572 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1018, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %347, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  %348 = add nsw i32 %347, 1, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %348, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  %349 = load %struct.atom_t*, %struct.atom_t** %341, align 8, !dbg !1518, !tbaa !1519
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1023, metadata !DIExpression()) #14, !dbg !1072
  %350 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 0, !dbg !1520
  %351 = load i8*, i8** %350, align 8, !dbg !1520, !tbaa !529
  br i1 %48, label %352, label %380, !dbg !1521

352:                                              ; preds = %345
  call void @llvm.dbg.value(metadata i8* %29, metadata !1259, metadata !DIExpression()) #14, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %351, metadata !1260, metadata !DIExpression()) #14, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %28, metadata !1261, metadata !DIExpression()) #14, !dbg !1522
  store i8 32, i8* %29, align 1, !dbg !1523, !tbaa !465
  %353 = call i64 @strlen(i8* nonnull dereferenceable(1) %351) #13, !dbg !1524
  %354 = icmp ugt i64 %353, 3, !dbg !1526
  br i1 %354, label %355, label %360, !dbg !1527

355:                                              ; preds = %352
  %356 = getelementptr inbounds i8, i8* %351, i64 3, !dbg !1528
  %357 = load i8, i8* %356, align 1, !dbg !1528, !tbaa !465
  %358 = icmp eq i8 %357, 32, !dbg !1529
  br i1 %358, label %360, label %359, !dbg !1530

359:                                              ; preds = %355
  store i8 %357, i8* %29, align 1, !dbg !1531, !tbaa !465
  br label %360, !dbg !1532

360:                                              ; preds = %359, %355, %352
  %361 = load i8, i8* %351, align 1, !dbg !1533, !tbaa !465
  store i8 %361, i8* %117, align 1, !dbg !1534, !tbaa !465
  %362 = getelementptr inbounds i8, i8* %351, i64 1, !dbg !1535
  %363 = load i8, i8* %362, align 1, !dbg !1535, !tbaa !465
  store i8 %363, i8* %119, align 1, !dbg !1536, !tbaa !465
  %364 = getelementptr inbounds i8, i8* %351, i64 2, !dbg !1537
  %365 = load i8, i8* %364, align 1, !dbg !1537, !tbaa !465
  %366 = icmp eq i8 %365, 39, !dbg !1538
  %367 = select i1 %366, i8 42, i8 %365, !dbg !1540
  store i8 %367, i8* %120, align 1, !dbg !1522, !tbaa !465
  store i8 0, i8* %118, align 1, !dbg !1541, !tbaa !465
  %368 = call i32 @bcmp(i8* nonnull dereferenceable(2) %29, i8* nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #14, !dbg !1542
  %369 = icmp eq i32 %368, 0, !dbg !1542
  %370 = add i8 %367, -49, !dbg !1543
  %371 = icmp ult i8 %370, 3, !dbg !1543
  %372 = and i1 %369, %371, !dbg !1544
  br i1 %372, label %373, label %514, !dbg !1544

373:                                              ; preds = %360
  %374 = call i32 @bcmp(i8* nonnull dereferenceable(3) %29, i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #14, !dbg !1545
  %375 = icmp ne i32 %374, 0, !dbg !1545
  %376 = load i16, i16* %121, align 4, !dbg !1546
  %377 = icmp eq i16 %376, 18760, !dbg !1546
  %378 = and i1 %375, %377, !dbg !1547
  br i1 %378, label %514, label %379, !dbg !1547

379:                                              ; preds = %373
  store i8 %367, i8* %29, align 1, !dbg !1548, !tbaa !465
  store i8 32, i8* %120, align 1, !dbg !1550, !tbaa !465
  br label %514, !dbg !1551

380:                                              ; preds = %345
  br i1 %50, label %381, label %512, !dbg !1552

381:                                              ; preds = %380
  call void @llvm.dbg.value(metadata i8* %29, metadata !1242, metadata !DIExpression()) #14, !dbg !1553
  call void @llvm.dbg.value(metadata i8* %351, metadata !1243, metadata !DIExpression()) #14, !dbg !1553
  call void @llvm.dbg.value(metadata i8* undef, metadata !1244, metadata !DIExpression()) #14, !dbg !1553
  %382 = call i64 @strlen(i8* nonnull dereferenceable(1) %351) #13, !dbg !1554
  %383 = icmp ugt i64 %382, 3, !dbg !1555
  br i1 %383, label %384, label %390, !dbg !1556

384:                                              ; preds = %381
  %385 = getelementptr inbounds i8, i8* %351, i64 3, !dbg !1557
  %386 = load i8, i8* %385, align 1, !dbg !1557, !tbaa !465
  %387 = icmp eq i8 %386, 32, !dbg !1558
  br i1 %387, label %390, label %388, !dbg !1559

388:                                              ; preds = %384
  %389 = call i8* @strncpy(i8* nonnull dereferenceable(1) %29, i8* nonnull dereferenceable(1) %351, i64 5) #14, !dbg !1560
  br label %392, !dbg !1562

390:                                              ; preds = %384, %381
  store i8 32, i8* %29, align 1, !dbg !1563, !tbaa !465
  %391 = call i8* @strncpy(i8* nonnull %117, i8* nonnull dereferenceable(1) %351, i64 3) #14, !dbg !1564
  store i8 0, i8* %118, align 1, !dbg !1565, !tbaa !465
  br label %392

392:                                              ; preds = %390, %388
  %393 = load i8, i8* %117, align 1, !dbg !1566, !tbaa !465
  %394 = icmp eq i8 %393, 0, !dbg !1568
  br i1 %394, label %395, label %396, !dbg !1569

395:                                              ; preds = %392
  store i8 32, i8* %117, align 1, !dbg !1570, !tbaa !465
  br label %396, !dbg !1571

396:                                              ; preds = %395, %392
  %397 = phi i8 [ 32, %395 ], [ %393, %392 ]
  %398 = load i8, i8* %119, align 1, !dbg !1572, !tbaa !465
  %399 = icmp eq i8 %398, 0, !dbg !1573
  br i1 %399, label %400, label %401, !dbg !1574

400:                                              ; preds = %396
  store i8 32, i8* %119, align 1, !dbg !1575, !tbaa !465
  br label %401, !dbg !1576

401:                                              ; preds = %400, %396
  %402 = phi i8 [ 32, %400 ], [ %398, %396 ]
  %403 = load i8, i8* %120, align 1, !dbg !1577, !tbaa !465
  %404 = icmp eq i8 %403, 0, !dbg !1578
  br i1 %404, label %405, label %406, !dbg !1579

405:                                              ; preds = %401
  store i8 32, i8* %120, align 1, !dbg !1580, !tbaa !465
  br label %406, !dbg !1581

406:                                              ; preds = %405, %401
  %407 = phi i8 [ 32, %405 ], [ %403, %401 ]
  %408 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #14, !dbg !1582
  %409 = icmp eq i32 %408, 0, !dbg !1582
  br i1 %409, label %410, label %411, !dbg !1584

410:                                              ; preds = %406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1585
  br label %411, !dbg !1585

411:                                              ; preds = %410, %406
  %412 = phi i8 [ %407, %406 ], [ 39, %410 ]
  %413 = phi i8 [ %402, %406 ], [ 53, %410 ]
  %414 = phi i8 [ %397, %406 ], [ 72, %410 ]
  %415 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #14, !dbg !1586
  %416 = icmp eq i32 %415, 0, !dbg !1586
  br i1 %416, label %417, label %418, !dbg !1588

417:                                              ; preds = %411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1589
  br label %418, !dbg !1589

418:                                              ; preds = %417, %411
  %419 = phi i8 [ %412, %411 ], [ 39, %417 ]
  %420 = phi i8 [ %413, %411 ], [ 39, %417 ]
  %421 = phi i8 [ %414, %411 ], [ 53, %417 ]
  %422 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #14, !dbg !1590
  %423 = icmp eq i32 %422, 0, !dbg !1590
  br i1 %423, label %424, label %425, !dbg !1592

424:                                              ; preds = %418
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1593
  br label %425, !dbg !1593

425:                                              ; preds = %424, %418
  %426 = phi i8 [ %419, %418 ], [ 39, %424 ]
  %427 = phi i8 [ %420, %418 ], [ 50, %424 ]
  %428 = phi i8 [ %421, %418 ], [ 72, %424 ]
  %429 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #14, !dbg !1594
  %430 = icmp eq i32 %429, 0, !dbg !1594
  br i1 %430, label %431, label %432, !dbg !1596

431:                                              ; preds = %425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1597
  br label %432, !dbg !1597

432:                                              ; preds = %431, %425
  %433 = phi i8 [ %426, %425 ], [ 39, %431 ]
  %434 = phi i8 [ %427, %425 ], [ 39, %431 ]
  %435 = phi i8 [ %428, %425 ], [ 50, %431 ]
  %436 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #14, !dbg !1598
  %437 = icmp eq i32 %436, 0, !dbg !1598
  br i1 %437, label %438, label %439, !dbg !1600

438:                                              ; preds = %432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1601
  br label %439, !dbg !1601

439:                                              ; preds = %438, %432
  %440 = phi i8 [ %433, %432 ], [ 49, %438 ]
  %441 = phi i8 [ %434, %432 ], [ 80, %438 ]
  %442 = phi i8 [ %435, %432 ], [ 79, %438 ]
  %443 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #14, !dbg !1602
  %444 = icmp eq i32 %443, 0, !dbg !1602
  br i1 %444, label %445, label %446, !dbg !1604

445:                                              ; preds = %439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1605
  br label %446, !dbg !1605

446:                                              ; preds = %445, %439
  %447 = phi i8 [ %440, %439 ], [ 50, %445 ]
  %448 = phi i8 [ %441, %439 ], [ 80, %445 ]
  %449 = phi i8 [ %442, %439 ], [ 79, %445 ]
  %450 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #14, !dbg !1606
  %451 = icmp eq i32 %450, 0, !dbg !1606
  br i1 %451, label %452, label %453, !dbg !1608

452:                                              ; preds = %446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1609
  br label %453, !dbg !1609

453:                                              ; preds = %452, %446
  %454 = phi i8 [ %447, %446 ], [ 39, %452 ]
  %455 = phi i8 [ %448, %446 ], [ 53, %452 ]
  %456 = phi i8 [ %449, %446 ], [ 79, %452 ]
  %457 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #14, !dbg !1610
  %458 = icmp eq i32 %457, 0, !dbg !1610
  br i1 %458, label %459, label %460, !dbg !1612

459:                                              ; preds = %453
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1613
  br label %460, !dbg !1613

460:                                              ; preds = %459, %453
  %461 = phi i8 [ %454, %453 ], [ 39, %459 ]
  %462 = phi i8 [ %455, %453 ], [ 51, %459 ]
  %463 = phi i8 [ %456, %453 ], [ 79, %459 ]
  %464 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #14, !dbg !1614
  %465 = icmp eq i32 %464, 0, !dbg !1614
  br i1 %465, label %511, label %466, !dbg !1616

466:                                              ; preds = %460
  %467 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #14, !dbg !1617
  %468 = icmp eq i32 %467, 0, !dbg !1617
  br i1 %468, label %511, label %469, !dbg !1618

469:                                              ; preds = %466
  %470 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #14, !dbg !1619
  %471 = icmp eq i32 %470, 0, !dbg !1619
  br i1 %471, label %511, label %472, !dbg !1620

472:                                              ; preds = %469
  %473 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #14, !dbg !1621
  %474 = icmp eq i32 %473, 0, !dbg !1621
  br i1 %474, label %511, label %475, !dbg !1622

475:                                              ; preds = %472
  %476 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #14, !dbg !1623
  %477 = icmp eq i32 %476, 0, !dbg !1623
  br i1 %477, label %511, label %478, !dbg !1624

478:                                              ; preds = %475
  %479 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #14, !dbg !1625
  %480 = icmp eq i32 %479, 0, !dbg !1625
  br i1 %480, label %511, label %481, !dbg !1626

481:                                              ; preds = %478
  %482 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #14, !dbg !1627
  %483 = icmp eq i32 %482, 0, !dbg !1627
  br i1 %483, label %511, label %484, !dbg !1628

484:                                              ; preds = %481
  %485 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #14, !dbg !1629
  %486 = icmp eq i32 %485, 0, !dbg !1629
  br i1 %486, label %511, label %487, !dbg !1630

487:                                              ; preds = %484
  %488 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #14, !dbg !1631
  %489 = icmp eq i32 %488, 0, !dbg !1631
  br i1 %489, label %511, label %490, !dbg !1632

490:                                              ; preds = %487
  %491 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #14, !dbg !1633
  %492 = icmp eq i32 %491, 0, !dbg !1633
  br i1 %492, label %511, label %493, !dbg !1634

493:                                              ; preds = %490
  %494 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #14, !dbg !1635
  %495 = icmp eq i32 %494, 0, !dbg !1635
  br i1 %495, label %511, label %496, !dbg !1636

496:                                              ; preds = %493
  %497 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #14, !dbg !1637
  %498 = icmp eq i32 %497, 0, !dbg !1637
  br i1 %498, label %511, label %499, !dbg !1638

499:                                              ; preds = %496
  %500 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #14, !dbg !1639
  %501 = icmp eq i32 %500, 0, !dbg !1639
  br i1 %501, label %511, label %502, !dbg !1640

502:                                              ; preds = %499
  %503 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #14, !dbg !1641
  %504 = icmp eq i32 %503, 0, !dbg !1641
  br i1 %504, label %511, label %505, !dbg !1642

505:                                              ; preds = %502
  %506 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #14, !dbg !1643
  %507 = icmp eq i32 %506, 0, !dbg !1643
  br i1 %507, label %511, label %508, !dbg !1644

508:                                              ; preds = %505
  %509 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #14, !dbg !1645
  %510 = icmp eq i32 %509, 0, !dbg !1645
  br i1 %510, label %511, label %514, !dbg !1646

511:                                              ; preds = %508, %505, %502, %499, %496, %493, %490, %487, %484, %481, %478, %475, %472, %469, %466, %460
  store i8 %463, i8* %29, align 1, !dbg !1647, !tbaa !465
  store i8 %462, i8* %117, align 1, !dbg !1649, !tbaa !465
  store i8 %461, i8* %119, align 1, !dbg !1650, !tbaa !465
  store i8 32, i8* %120, align 1, !dbg !1651, !tbaa !465
  br label %514, !dbg !1652

512:                                              ; preds = %380
  %513 = call i8* @strcpy(i8* nonnull %29, i8* nonnull dereferenceable(1) %351) #14, !dbg !1653
  br label %514

514:                                              ; preds = %512, %511, %508, %379, %373, %360
  %515 = load i8, i8* %30, align 1, !dbg !1654
  %516 = icmp eq i8 %515, 0, !dbg !1654
  %517 = or i1 %52, %516, !dbg !1655
  %518 = icmp slt i32 %347, 99999, !dbg !1656
  br i1 %517, label %519, label %537, !dbg !1655

519:                                              ; preds = %514
  call void @llvm.dbg.value(metadata i32 %344, metadata !1017, metadata !DIExpression()) #14, !dbg !1072
  br i1 %518, label %520, label %528, !dbg !1657

520:                                              ; preds = %519
  %521 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 0, !dbg !1658
  %522 = load double, double* %521, align 8, !dbg !1658, !tbaa !721
  %523 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 1, !dbg !1660
  %524 = load double, double* %523, align 8, !dbg !1660, !tbaa !721
  %525 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 2, !dbg !1661
  %526 = load double, double* %525, align 8, !dbg !1661, !tbaa !721
  %527 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %348, i8* nonnull %29, i8* nonnull %28, i32 %178, i32 %344, double %522, double %524, double %526) #14, !dbg !1662
  br label %555, !dbg !1663

528:                                              ; preds = %519
  %529 = srem i32 %348, 100000, !dbg !1664
  %530 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 0, !dbg !1665
  %531 = load double, double* %530, align 8, !dbg !1665, !tbaa !721
  %532 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 1, !dbg !1666
  %533 = load double, double* %532, align 8, !dbg !1666, !tbaa !721
  %534 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 2, !dbg !1667
  %535 = load double, double* %534, align 8, !dbg !1667, !tbaa !721
  %536 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %529, i8* nonnull %29, i8* nonnull %28, i32 %178, i32 %344, double %531, double %533, double %535) #14, !dbg !1668
  br label %555

537:                                              ; preds = %514
  br i1 %518, label %538, label %546, !dbg !1669

538:                                              ; preds = %537
  %539 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 0, !dbg !1671
  %540 = load double, double* %539, align 8, !dbg !1671, !tbaa !721
  %541 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 1, !dbg !1674
  %542 = load double, double* %541, align 8, !dbg !1674, !tbaa !721
  %543 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 2, !dbg !1675
  %544 = load double, double* %543, align 8, !dbg !1675, !tbaa !721
  %545 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %348, i8* nonnull %29, i8* nonnull %28, i8* nonnull %30, double %540, double %542, double %544) #14, !dbg !1676
  br label %555, !dbg !1677

546:                                              ; preds = %537
  %547 = srem i32 %348, 100000, !dbg !1678
  %548 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 0, !dbg !1680
  %549 = load double, double* %548, align 8, !dbg !1680, !tbaa !721
  %550 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 1, !dbg !1681
  %551 = load double, double* %550, align 8, !dbg !1681, !tbaa !721
  %552 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 2, !dbg !1682
  %553 = load double, double* %552, align 8, !dbg !1682, !tbaa !721
  %554 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %547, i8* nonnull %29, i8* nonnull %28, i8* nonnull %30, double %549, double %551, double %553) #14, !dbg !1683
  br label %555

555:                                              ; preds = %546, %538, %528, %520
  br i1 %44, label %556, label %562, !dbg !1684

556:                                              ; preds = %555
  %557 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 6, !dbg !1685
  %558 = load double, double* %557, align 8, !dbg !1685, !tbaa !858
  %559 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 7, !dbg !1688
  %560 = load double, double* %559, align 8, !dbg !1688, !tbaa !862
  %561 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %558, double %560) #14, !dbg !1689
  br label %572, !dbg !1690

562:                                              ; preds = %555
  br i1 %46, label %572, label %563, !dbg !1691

563:                                              ; preds = %562
  %564 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 9, !dbg !1692
  %565 = load double, double* %564, align 8, !dbg !1692, !tbaa !865
  %566 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 8, !dbg !1695
  %567 = load double, double* %566, align 8, !dbg !1695, !tbaa !868
  %568 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %565, double %567) #14, !dbg !1696
  br i1 %125, label %572, label %569, !dbg !1697

569:                                              ; preds = %563
  %570 = load i8*, i8** %350, align 8, !dbg !1698, !tbaa !529
  %571 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %570) #14, !dbg !1700
  br label %572, !dbg !1701

572:                                              ; preds = %569, %563, %562, %556
  %573 = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %27) #14, !dbg !1702
  %574 = add nuw nsw i64 %346, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %574, metadata !1018, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %348, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  %575 = load i32, i32* %337, align 8, !dbg !1512, !tbaa !768
  %576 = sext i32 %575 to i64, !dbg !1513
  %577 = icmp slt i64 %574, %576, !dbg !1513
  br i1 %577, label %345, label %578, !dbg !1514, !llvm.loop !1704

578:                                              ; preds = %572, %336
  %579 = phi i32 [ %182, %336 ], [ %348, %572 ], !dbg !1200
  call void @llvm.dbg.value(metadata i32 %579, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  %580 = add nuw nsw i64 %180, 1, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %580, metadata !1015, metadata !DIExpression()) #14, !dbg !1072
  %581 = add nsw i32 %181, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %581, metadata !1016, metadata !DIExpression()) #14, !dbg !1072
  %582 = load i32, i32* %172, align 8, !dbg !1307, !tbaa !1308
  %583 = sext i32 %582 to i64, !dbg !1309
  %584 = icmp slt i64 %580, %583, !dbg !1309
  br i1 %584, label %179, label %585, !dbg !1310, !llvm.loop !1708

585:                                              ; preds = %578, %170
  %586 = phi i32 [ %129, %170 ], [ %579, %578 ], !dbg !1710
  %587 = phi i32 [ %128, %170 ], [ %581, %578 ], !dbg !1200
  call void @llvm.dbg.value(metadata i32 %586, metadata !1019, metadata !DIExpression()) #14, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %587, metadata !1016, metadata !DIExpression()) #14, !dbg !1072
  %588 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %27) #14, !dbg !1711
  %589 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %127, i64 0, i32 4, !dbg !1712
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1021, metadata !DIExpression()) #14, !dbg !1072
  %590 = load %struct.strand_t*, %struct.strand_t** %589, align 8, !dbg !1200, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %590, metadata !1021, metadata !DIExpression()) #14, !dbg !1072
  %591 = icmp eq %struct.strand_t* %590, null, !dbg !1201
  br i1 %591, label %592, label %126, !dbg !1201, !llvm.loop !1713

592:                                              ; preds = %585, %106
  call void @llvm.dbg.value(metadata %struct.cid_t* %107, metadata !1133, metadata !DIExpression()) #14, !dbg !1715
  %593 = icmp eq %struct.cid_t* %107, null, !dbg !1717
  br i1 %593, label %698, label %594, !dbg !1718

594:                                              ; preds = %592
  %595 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %107, i64 0, i32 2, !dbg !1719
  %596 = load i8*, i8** %595, align 8, !dbg !1719, !tbaa !1146
  %597 = icmp eq i8* %596, null, !dbg !1721
  br i1 %597, label %599, label %598, !dbg !1722

598:                                              ; preds = %594
  call void @free(i8* nonnull %596) #14, !dbg !1723
  br label %599, !dbg !1723

599:                                              ; preds = %598, %594
  %600 = bitcast %struct.cid_t* %107 to i8*, !dbg !1724
  call void @free(i8* %600) #14, !dbg !1725
  br label %698, !dbg !1726

601:                                              ; preds = %99
  store i32 67, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %602 = getelementptr inbounds i8, i8* %66, i64 67, !dbg !1184
  %603 = load i8, i8* %602, align 1, !dbg !1184, !tbaa !465
  %604 = icmp eq i8 %603, 0, !dbg !1184
  br i1 %604, label %106, label %605, !dbg !1189

605:                                              ; preds = %601
  store i32 68, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %606 = getelementptr inbounds i8, i8* %66, i64 68, !dbg !1184
  %607 = load i8, i8* %606, align 1, !dbg !1184, !tbaa !465
  %608 = icmp eq i8 %607, 0, !dbg !1184
  br i1 %608, label %106, label %609, !dbg !1189

609:                                              ; preds = %605
  store i32 69, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %610 = getelementptr inbounds i8, i8* %66, i64 69, !dbg !1184
  %611 = load i8, i8* %610, align 1, !dbg !1184, !tbaa !465
  %612 = icmp eq i8 %611, 0, !dbg !1184
  br i1 %612, label %106, label %613, !dbg !1189

613:                                              ; preds = %609
  store i32 70, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %614 = getelementptr inbounds i8, i8* %66, i64 70, !dbg !1184
  %615 = load i8, i8* %614, align 1, !dbg !1184, !tbaa !465
  %616 = icmp eq i8 %615, 0, !dbg !1184
  br i1 %616, label %106, label %617, !dbg !1189

617:                                              ; preds = %613
  store i32 71, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %618 = getelementptr inbounds i8, i8* %66, i64 71, !dbg !1184
  %619 = load i8, i8* %618, align 1, !dbg !1184, !tbaa !465
  %620 = icmp eq i8 %619, 0, !dbg !1184
  br i1 %620, label %106, label %621, !dbg !1189

621:                                              ; preds = %617
  store i32 72, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %622 = getelementptr inbounds i8, i8* %66, i64 72, !dbg !1184
  %623 = load i8, i8* %622, align 1, !dbg !1184, !tbaa !465
  %624 = icmp eq i8 %623, 0, !dbg !1184
  br i1 %624, label %106, label %625, !dbg !1189

625:                                              ; preds = %621
  store i32 73, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %626 = getelementptr inbounds i8, i8* %66, i64 73, !dbg !1184
  %627 = load i8, i8* %626, align 1, !dbg !1184, !tbaa !465
  %628 = icmp eq i8 %627, 0, !dbg !1184
  br i1 %628, label %106, label %629, !dbg !1189

629:                                              ; preds = %625
  store i32 74, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %630 = getelementptr inbounds i8, i8* %66, i64 74, !dbg !1184
  %631 = load i8, i8* %630, align 1, !dbg !1184, !tbaa !465
  %632 = icmp eq i8 %631, 0, !dbg !1184
  br i1 %632, label %106, label %633, !dbg !1189

633:                                              ; preds = %629
  store i32 75, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %634 = getelementptr inbounds i8, i8* %66, i64 75, !dbg !1184
  %635 = load i8, i8* %634, align 1, !dbg !1184, !tbaa !465
  %636 = icmp eq i8 %635, 0, !dbg !1184
  br i1 %636, label %106, label %637, !dbg !1189

637:                                              ; preds = %633
  store i32 76, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %638 = getelementptr inbounds i8, i8* %66, i64 76, !dbg !1184
  %639 = load i8, i8* %638, align 1, !dbg !1184, !tbaa !465
  %640 = icmp eq i8 %639, 0, !dbg !1184
  br i1 %640, label %106, label %641, !dbg !1189

641:                                              ; preds = %637
  store i32 77, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %642 = getelementptr inbounds i8, i8* %66, i64 77, !dbg !1184
  %643 = load i8, i8* %642, align 1, !dbg !1184, !tbaa !465
  %644 = icmp eq i8 %643, 0, !dbg !1184
  br i1 %644, label %106, label %645, !dbg !1189

645:                                              ; preds = %641
  store i32 78, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %646 = getelementptr inbounds i8, i8* %66, i64 78, !dbg !1184
  %647 = load i8, i8* %646, align 1, !dbg !1184, !tbaa !465
  %648 = icmp eq i8 %647, 0, !dbg !1184
  br i1 %648, label %106, label %649, !dbg !1189

649:                                              ; preds = %645
  store i32 79, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %650 = getelementptr inbounds i8, i8* %66, i64 79, !dbg !1184
  %651 = load i8, i8* %650, align 1, !dbg !1184, !tbaa !465
  %652 = icmp eq i8 %651, 0, !dbg !1184
  br i1 %652, label %106, label %653, !dbg !1189

653:                                              ; preds = %649
  store i32 80, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %654 = getelementptr inbounds i8, i8* %66, i64 80, !dbg !1184
  %655 = load i8, i8* %654, align 1, !dbg !1184, !tbaa !465
  %656 = icmp eq i8 %655, 0, !dbg !1184
  br i1 %656, label %106, label %657, !dbg !1189

657:                                              ; preds = %653
  store i32 81, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %658 = getelementptr inbounds i8, i8* %66, i64 81, !dbg !1184
  %659 = load i8, i8* %658, align 1, !dbg !1184, !tbaa !465
  %660 = icmp eq i8 %659, 0, !dbg !1184
  br i1 %660, label %106, label %661, !dbg !1189

661:                                              ; preds = %657
  store i32 82, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %662 = getelementptr inbounds i8, i8* %66, i64 82, !dbg !1184
  %663 = load i8, i8* %662, align 1, !dbg !1184, !tbaa !465
  %664 = icmp eq i8 %663, 0, !dbg !1184
  br i1 %664, label %106, label %665, !dbg !1189

665:                                              ; preds = %661
  store i32 83, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %666 = getelementptr inbounds i8, i8* %66, i64 83, !dbg !1184
  %667 = load i8, i8* %666, align 1, !dbg !1184, !tbaa !465
  %668 = icmp eq i8 %667, 0, !dbg !1184
  br i1 %668, label %106, label %669, !dbg !1189

669:                                              ; preds = %665
  store i32 84, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %670 = getelementptr inbounds i8, i8* %66, i64 84, !dbg !1184
  %671 = load i8, i8* %670, align 1, !dbg !1184, !tbaa !465
  %672 = icmp eq i8 %671, 0, !dbg !1184
  br i1 %672, label %106, label %673, !dbg !1189

673:                                              ; preds = %669
  store i32 85, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %674 = getelementptr inbounds i8, i8* %66, i64 85, !dbg !1184
  %675 = load i8, i8* %674, align 1, !dbg !1184, !tbaa !465
  %676 = icmp eq i8 %675, 0, !dbg !1184
  br i1 %676, label %106, label %677, !dbg !1189

677:                                              ; preds = %673
  store i32 86, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %678 = getelementptr inbounds i8, i8* %66, i64 86, !dbg !1184
  %679 = load i8, i8* %678, align 1, !dbg !1184, !tbaa !465
  %680 = icmp eq i8 %679, 0, !dbg !1184
  br i1 %680, label %106, label %681, !dbg !1189

681:                                              ; preds = %677
  store i32 87, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %682 = getelementptr inbounds i8, i8* %66, i64 87, !dbg !1184
  %683 = load i8, i8* %682, align 1, !dbg !1184, !tbaa !465
  %684 = icmp eq i8 %683, 0, !dbg !1184
  br i1 %684, label %106, label %685, !dbg !1189

685:                                              ; preds = %681
  store i32 88, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %686 = getelementptr inbounds i8, i8* %66, i64 88, !dbg !1184
  %687 = load i8, i8* %686, align 1, !dbg !1184, !tbaa !465
  %688 = icmp eq i8 %687, 0, !dbg !1184
  br i1 %688, label %106, label %689, !dbg !1189

689:                                              ; preds = %685
  store i32 89, i32* %71, align 8, !dbg !1190, !tbaa !1153
  %690 = getelementptr inbounds i8, i8* %66, i64 89, !dbg !1184
  %691 = load i8, i8* %690, align 1, !dbg !1184, !tbaa !465
  %692 = icmp eq i8 %691, 0, !dbg !1184
  br i1 %692, label %106, label %693, !dbg !1189

693:                                              ; preds = %689
  %694 = getelementptr inbounds i8, i8* %66, i64 90, !dbg !1184
  %695 = load i8, i8* %694, align 1, !dbg !1184, !tbaa !465
  %696 = icmp eq i8 %695, 0, !dbg !1184
  %697 = select i1 %696, i32 90, i32 91, !dbg !1189
  store i32 %697, i32* %71, align 8, !dbg !1727
  br label %106, !dbg !1189

698:                                              ; preds = %33, %592, %599
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %31) #14, !dbg !1728
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %30) #14, !dbg !1728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #14, !dbg !1728
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #14, !dbg !1728
  %699 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1729, !tbaa !471
  %700 = icmp eq %struct._IO_FILE* %27, %699, !dbg !1731
  br i1 %700, label %703, label %701, !dbg !1732

701:                                              ; preds = %698
  %702 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !1733
  br label %703, !dbg !1733

703:                                              ; preds = %24, %698, %701, %15
  %704 = phi i32 [ 0, %701 ], [ 0, %698 ], [ -1, %24 ], [ 0, %15 ], !dbg !1048
  call void @llvm.dbg.value(metadata i32 %704, metadata !1006, metadata !DIExpression()), !dbg !1048
  call void @reducerror(i32 %704) #14, !dbg !1734
  br label %705, !dbg !1735

705:                                              ; preds = %11, %12, %703
  ret i32 0, !dbg !1736
}

declare !dbg !107 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* readonly %2) local_unnamed_addr #0 !dbg !1737 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1741, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8* %1, metadata !1742, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1743, metadata !DIExpression()), !dbg !1745
  %4 = icmp eq %struct.molecule_t* %2, null, !dbg !1746
  br i1 %4, label %5, label %8, !dbg !1748

5:                                                ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1749, !tbaa !471
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %6) #15, !dbg !1751
  br label %115, !dbg !1752

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1753
  %10 = icmp eq i32 %9, 0, !dbg !1753
  br i1 %10, label %16, label %11, !dbg !1755

11:                                               ; preds = %8
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1756
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !1744, metadata !DIExpression()), !dbg !1745
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !1758
  br i1 %13, label %14, label %20, !dbg !1759

14:                                               ; preds = %11
  %15 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1760
  tail call void @exit(i32 1) #17, !dbg !1762
  unreachable, !dbg !1762

16:                                               ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1763, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1744, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1744, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1764, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i8* %1, metadata !1769, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1770, metadata !DIExpression()) #14, !dbg !1780
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !1782
  br i1 %18, label %19, label %20, !dbg !1785

19:                                               ; preds = %16
  tail call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #17, !dbg !1782
  unreachable, !dbg !1782

20:                                               ; preds = %11, %16
  %21 = phi %struct._IO_FILE* [ %17, %16 ], [ %12, %11 ]
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 1, !dbg !1786
  %23 = load i32, i32* %22, align 8, !dbg !1786, !tbaa !1787
  call void @llvm.dbg.value(metadata i8 undef, metadata !1776, metadata !DIExpression()) #14, !dbg !1780
  %24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %1) #14, !dbg !1788
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1789
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %1) #14, !dbg !1790
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1791
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1792
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1793
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1794
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1795
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1796
  call void @llvm.dbg.value(metadata i32 0, metadata !1775, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1772, metadata !DIExpression()) #14, !dbg !1780
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 2, !dbg !1797
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1777, metadata !DIExpression()) #14, !dbg !1780
  %34 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !1799, !tbaa !471
  call void @llvm.dbg.value(metadata i32 0, metadata !1772, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !1777, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i8 undef, metadata !1776, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1775, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  %35 = icmp eq %struct.strand_t* %34, null, !dbg !1800
  br i1 %35, label %110, label %36, !dbg !1800

36:                                               ; preds = %20
  %37 = icmp sgt i32 %23, 1, !dbg !1801
  %38 = select i1 %37, i8 65, i8 46, !dbg !1802
  call void @llvm.dbg.value(metadata i8 %38, metadata !1776, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %38, metadata !1776, metadata !DIExpression()) #14, !dbg !1780
  br label %39, !dbg !1800

39:                                               ; preds = %100, %36
  %40 = phi %struct.strand_t* [ %108, %100 ], [ %34, %36 ]
  %41 = phi i32 [ %102, %100 ], [ 0, %36 ]
  %42 = phi i8 [ %106, %100 ], [ %38, %36 ]
  %43 = phi i32 [ %45, %100 ], [ 0, %36 ]
  %44 = phi i32 [ %101, %100 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !1772, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %42, metadata !1776, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %43, metadata !1775, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %44, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  %45 = add nuw nsw i32 %43, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %45, metadata !1775, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1771, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %41, metadata !1772, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %44, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 5, !dbg !1806
  %47 = load i32, i32* %46, align 8, !dbg !1806, !tbaa !1308
  %48 = icmp sgt i32 %47, 0, !dbg !1809
  br i1 %48, label %49, label %100, !dbg !1810

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 7, !dbg !1811
  %51 = sext i8 %42 to i32, !dbg !1813
  br label %52, !dbg !1810

52:                                               ; preds = %93, %49
  %53 = phi i32 [ %47, %49 ], [ %96, %93 ]
  %54 = phi i64 [ 0, %49 ], [ %95, %93 ]
  %55 = phi i32 [ %41, %49 ], [ %94, %93 ]
  %56 = phi i32 [ %44, %49 ], [ %97, %93 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !1771, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %55, metadata !1772, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %56, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  %57 = load %struct.residue_t**, %struct.residue_t*** %50, align 8, !dbg !1817, !tbaa !800
  %58 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %57, i64 %54, !dbg !1818
  %59 = load %struct.residue_t*, %struct.residue_t** %58, align 8, !dbg !1818, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %59, metadata !1778, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1773, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %56, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 15, !dbg !1819
  %61 = load i32, i32* %60, align 8, !dbg !1819, !tbaa !768
  %62 = icmp sgt i32 %61, 0, !dbg !1820
  br i1 %62, label %66, label %63, !dbg !1821

63:                                               ; preds = %52
  %64 = add nuw nsw i64 %54, 1, !dbg !1822
  %65 = add nsw i32 %55, 1, !dbg !1823
  br label %93, !dbg !1821

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 17, !dbg !1813
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 4, !dbg !1813
  %69 = add nsw i32 %55, 1, !dbg !1813
  %70 = add nuw nsw i64 %54, 1, !dbg !1813
  %71 = trunc i64 %70 to i32, !dbg !1813
  br label %72, !dbg !1821

72:                                               ; preds = %72, %66
  %73 = phi i64 [ 0, %66 ], [ %87, %72 ]
  %74 = phi i32 [ %56, %66 ], [ %75, %72 ]
  call void @llvm.dbg.value(metadata i32 %74, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %73, metadata !1773, metadata !DIExpression()) #14, !dbg !1780
  %75 = add nsw i32 %74, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %75, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  %76 = load %struct.atom_t*, %struct.atom_t** %67, align 8, !dbg !1825, !tbaa !1519
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1779, metadata !DIExpression()) #14, !dbg !1780
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 0, !dbg !1826
  %78 = load i8*, i8** %77, align 8, !dbg !1826, !tbaa !529
  %79 = load i8*, i8** %68, align 8, !dbg !1827, !tbaa !759
  %80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 0, !dbg !1828
  %81 = load double, double* %80, align 8, !dbg !1828, !tbaa !721
  %82 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 1, !dbg !1829
  %83 = load double, double* %82, align 8, !dbg !1829, !tbaa !721
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 2, !dbg !1830
  %85 = load double, double* %84, align 8, !dbg !1830, !tbaa !721
  %86 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %75, i8* %78, i8* %79, i32 %51, i32 %69, double %81, double %83, double %85, i32 %45, i32 %71) #14, !dbg !1831
  %87 = add nuw nsw i64 %73, 1, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %87, metadata !1773, metadata !DIExpression()) #14, !dbg !1780
  %88 = load i32, i32* %60, align 8, !dbg !1819, !tbaa !768
  %89 = sext i32 %88 to i64, !dbg !1820
  %90 = icmp slt i64 %87, %89, !dbg !1820
  br i1 %90, label %72, label %91, !dbg !1821, !llvm.loop !1833

91:                                               ; preds = %72
  %92 = load i32, i32* %46, align 8, !dbg !1806, !tbaa !1308
  br label %93, !dbg !1822

93:                                               ; preds = %91, %63
  %94 = phi i32 [ %65, %63 ], [ %69, %91 ], !dbg !1823
  %95 = phi i64 [ %64, %63 ], [ %70, %91 ], !dbg !1822
  %96 = phi i32 [ %53, %63 ], [ %92, %91 ], !dbg !1806
  %97 = phi i32 [ %56, %63 ], [ %75, %91 ], !dbg !1799
  call void @llvm.dbg.value(metadata i32 %97, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %95, metadata !1771, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %94, metadata !1772, metadata !DIExpression()) #14, !dbg !1780
  %98 = sext i32 %96 to i64, !dbg !1809
  %99 = icmp slt i64 %95, %98, !dbg !1809
  br i1 %99, label %52, label %100, !dbg !1810, !llvm.loop !1835

100:                                              ; preds = %93, %39
  %101 = phi i32 [ %44, %39 ], [ %97, %93 ], !dbg !1837
  %102 = phi i32 [ %41, %39 ], [ %94, %93 ], !dbg !1799
  call void @llvm.dbg.value(metadata i32 %101, metadata !1774, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %102, metadata !1772, metadata !DIExpression()) #14, !dbg !1780
  %103 = load i32, i32* %22, align 8, !dbg !1838, !tbaa !1787
  %104 = icmp sgt i32 %103, 1, !dbg !1840
  %105 = zext i1 %104 to i8, !dbg !1841
  %106 = add i8 %42, %105, !dbg !1841
  call void @llvm.dbg.value(metadata i8 %106, metadata !1776, metadata !DIExpression()) #14, !dbg !1780
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 4, !dbg !1842
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1777, metadata !DIExpression()) #14, !dbg !1780
  %108 = load %struct.strand_t*, %struct.strand_t** %107, align 8, !dbg !1799, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %108, metadata !1777, metadata !DIExpression()) #14, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %45, metadata !1775, metadata !DIExpression()) #14, !dbg !1780
  %109 = icmp eq %struct.strand_t* %108, null, !dbg !1800
  br i1 %109, label %110, label %39, !dbg !1800, !llvm.loop !1843

110:                                              ; preds = %100, %20
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1845, !tbaa !471
  %112 = icmp eq %struct._IO_FILE* %21, %111, !dbg !1847
  br i1 %112, label %115, label %113, !dbg !1848

113:                                              ; preds = %110
  %114 = tail call i32 @fclose(%struct._IO_FILE* %21), !dbg !1849
  br label %115, !dbg !1849

115:                                              ; preds = %113, %110, %5
  ret i32 0, !dbg !1850
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* readonly %1) local_unnamed_addr #0 !dbg !1851 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1855, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1856, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1867, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32* null, metadata !1868, metadata !DIExpression()), !dbg !1872
  %3 = icmp eq %struct.molecule_t* %1, null, !dbg !1873
  br i1 %3, label %4, label %7, !dbg !1875

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1876, !tbaa !471
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %5) #15, !dbg !1878
  br label %183, !dbg !1879

7:                                                ; preds = %2
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1880
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !1857, metadata !DIExpression()), !dbg !1872
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !1882
  br i1 %9, label %10, label %12, !dbg !1883

10:                                               ; preds = %7
  %11 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1884
  tail call void @exit(i32 1) #17, !dbg !1886
  unreachable, !dbg !1886

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1872
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1887
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1858, metadata !DIExpression()), !dbg !1872
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1889, !tbaa !471
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1858, metadata !DIExpression()), !dbg !1872
  %15 = icmp eq %struct.strand_t* %14, null, !dbg !1890
  br i1 %15, label %28, label %16, !dbg !1890

16:                                               ; preds = %12, %16
  %17 = phi %struct.strand_t* [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %21, %16 ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1866, metadata !DIExpression()), !dbg !1872
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i64 0, i32 5, !dbg !1891
  %20 = load i32, i32* %19, align 8, !dbg !1891, !tbaa !1308
  %21 = add nsw i32 %20, %18, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %21, metadata !1866, metadata !DIExpression()), !dbg !1872
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i64 0, i32 4, !dbg !1894
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1858, metadata !DIExpression()), !dbg !1872
  %23 = load %struct.strand_t*, %struct.strand_t** %22, align 8, !dbg !1889, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %23, metadata !1858, metadata !DIExpression()), !dbg !1872
  %24 = icmp eq %struct.strand_t* %23, null, !dbg !1890
  br i1 %24, label %25, label %16, !dbg !1890, !llvm.loop !1895

25:                                               ; preds = %16
  %26 = sext i32 %21 to i64, !dbg !1897
  %27 = shl nsw i64 %26, 2, !dbg !1897
  br label %28, !dbg !1897

28:                                               ; preds = %25, %12
  %29 = phi i64 [ 0, %12 ], [ %27, %25 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1866, metadata !DIExpression()), !dbg !1872
  %30 = tail call noalias i8* @malloc(i64 %29) #14, !dbg !1899
  %31 = bitcast i8* %30 to i32*, !dbg !1900
  call void @llvm.dbg.value(metadata i32* %31, metadata !1868, metadata !DIExpression()), !dbg !1872
  %32 = icmp eq i8* %30, null, !dbg !1901
  br i1 %32, label %34, label %33, !dbg !1902

33:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1858, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1861, metadata !DIExpression()), !dbg !1872
  br i1 %15, label %179, label %37, !dbg !1903

34:                                               ; preds = %28
  %35 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !1905
  call void @llvm.dbg.value(metadata i32 1, metadata !1867, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1867, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.label(metadata !1871), !dbg !1907
  br label %180, !dbg !1908

36:                                               ; preds = %99
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1858, metadata !DIExpression()), !dbg !1872
  br i1 %15, label %179, label %105, !dbg !1909

37:                                               ; preds = %33, %99
  %38 = phi %struct.strand_t* [ %103, %99 ], [ %14, %33 ]
  %39 = phi i32 [ %101, %99 ], [ 0, %33 ]
  %40 = phi i32 [ %100, %99 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !1866, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %40, metadata !1861, metadata !DIExpression()), !dbg !1872
  %41 = sext i32 %39 to i64, !dbg !1911
  %42 = getelementptr inbounds i32, i32* %31, i64 %41, !dbg !1911
  store i32 %40, i32* %42, align 4, !dbg !1914, !tbaa !561
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 5, !dbg !1915
  %44 = load i32, i32* %43, align 8, !dbg !1915, !tbaa !1308
  %45 = icmp sgt i32 %44, 0, !dbg !1917
  br i1 %45, label %46, label %99, !dbg !1918

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 7, !dbg !1919
  %48 = load %struct.residue_t**, %struct.residue_t*** %47, align 8, !dbg !1919, !tbaa !800
  %49 = load %struct.residue_t*, %struct.residue_t** %48, align 8, !dbg !1921, !tbaa !471
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %49, i64 0, i32 15, !dbg !1922
  %51 = load i32, i32* %50, align 8, !dbg !1922, !tbaa !768
  %52 = add nsw i32 %51, %40, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %52, metadata !1861, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 1, metadata !1864, metadata !DIExpression()), !dbg !1872
  %53 = icmp eq i32 %44, 1, !dbg !1924
  br i1 %53, label %96, label %54, !dbg !1927

54:                                               ; preds = %46
  %55 = zext i32 %44 to i64, !dbg !1924
  %56 = add nsw i64 %55, -1, !dbg !1927
  %57 = and i64 %56, 1, !dbg !1927
  %58 = icmp eq i32 %44, 2, !dbg !1927
  br i1 %58, label %83, label %59, !dbg !1927

59:                                               ; preds = %54
  %60 = sub nsw i64 %56, %57, !dbg !1927
  br label %61, !dbg !1927

61:                                               ; preds = %61, %59
  %62 = phi i64 [ 1, %59 ], [ %80, %61 ]
  %63 = phi i32 [ %52, %59 ], [ %79, %61 ]
  %64 = phi i64 [ %60, %59 ], [ %81, %61 ]
  call void @llvm.dbg.value(metadata i64 %62, metadata !1864, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %63, metadata !1861, metadata !DIExpression()), !dbg !1872
  %65 = add nsw i64 %62, %41, !dbg !1928
  %66 = getelementptr inbounds i32, i32* %31, i64 %65, !dbg !1930
  store i32 %63, i32* %66, align 4, !dbg !1931, !tbaa !561
  %67 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %62, !dbg !1932
  %68 = load %struct.residue_t*, %struct.residue_t** %67, align 8, !dbg !1932, !tbaa !471
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %68, i64 0, i32 15, !dbg !1933
  %70 = load i32, i32* %69, align 8, !dbg !1933, !tbaa !768
  %71 = add nsw i32 %70, %63, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %71, metadata !1861, metadata !DIExpression()), !dbg !1872
  %72 = add nuw nsw i64 %62, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %72, metadata !1864, metadata !DIExpression()), !dbg !1872
  %73 = add nsw i64 %72, %41, !dbg !1928
  %74 = getelementptr inbounds i32, i32* %31, i64 %73, !dbg !1930
  store i32 %71, i32* %74, align 4, !dbg !1931, !tbaa !561
  %75 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %72, !dbg !1932
  %76 = load %struct.residue_t*, %struct.residue_t** %75, align 8, !dbg !1932, !tbaa !471
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i64 0, i32 15, !dbg !1933
  %78 = load i32, i32* %77, align 8, !dbg !1933, !tbaa !768
  %79 = add nsw i32 %78, %71, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %79, metadata !1861, metadata !DIExpression()), !dbg !1872
  %80 = add nuw nsw i64 %62, 2, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %80, metadata !1864, metadata !DIExpression()), !dbg !1872
  %81 = add i64 %64, -2, !dbg !1927
  %82 = icmp eq i64 %81, 0, !dbg !1927
  br i1 %82, label %83, label %61, !dbg !1927, !llvm.loop !1936

83:                                               ; preds = %61, %54
  %84 = phi i32 [ undef, %54 ], [ %79, %61 ]
  %85 = phi i64 [ 1, %54 ], [ %80, %61 ]
  %86 = phi i32 [ %52, %54 ], [ %79, %61 ]
  %87 = icmp eq i64 %57, 0, !dbg !1927
  br i1 %87, label %96, label %88, !dbg !1927

88:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i64 %85, metadata !1864, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %86, metadata !1861, metadata !DIExpression()), !dbg !1872
  %89 = add nsw i64 %85, %41, !dbg !1928
  %90 = getelementptr inbounds i32, i32* %31, i64 %89, !dbg !1930
  store i32 %86, i32* %90, align 4, !dbg !1931, !tbaa !561
  call void @llvm.dbg.value(metadata i32 undef, metadata !1861, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %85, metadata !1864, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1872
  %91 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %85, !dbg !1932
  %92 = load %struct.residue_t*, %struct.residue_t** %91, align 8, !dbg !1932, !tbaa !471
  %93 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %92, i64 0, i32 15, !dbg !1933
  %94 = load i32, i32* %93, align 8, !dbg !1933, !tbaa !768
  %95 = add nsw i32 %94, %86, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %95, metadata !1861, metadata !DIExpression()), !dbg !1872
  br label %96, !dbg !1938

96:                                               ; preds = %88, %83, %46
  %97 = phi i32 [ %52, %46 ], [ %84, %83 ], [ %95, %88 ], !dbg !1939
  call void @llvm.dbg.value(metadata i32 %97, metadata !1861, metadata !DIExpression()), !dbg !1872
  %98 = add nsw i32 %44, %39, !dbg !1938
  call void @llvm.dbg.value(metadata i32 %98, metadata !1866, metadata !DIExpression()), !dbg !1872
  br label %99, !dbg !1940

99:                                               ; preds = %37, %96
  %100 = phi i32 [ %97, %96 ], [ %40, %37 ], !dbg !1941
  %101 = phi i32 [ %98, %96 ], [ %39, %37 ], !dbg !1941
  call void @llvm.dbg.value(metadata i32 %101, metadata !1866, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %100, metadata !1861, metadata !DIExpression()), !dbg !1872
  %102 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 4, !dbg !1942
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1858, metadata !DIExpression()), !dbg !1872
  %103 = load %struct.strand_t*, %struct.strand_t** %102, align 8, !dbg !1941, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %103, metadata !1858, metadata !DIExpression()), !dbg !1872
  %104 = icmp eq %struct.strand_t* %103, null, !dbg !1903
  br i1 %104, label %36, label %37, !dbg !1903, !llvm.loop !1943

105:                                              ; preds = %36, %173
  %106 = phi %struct.strand_t* [ %177, %173 ], [ %14, %36 ]
  %107 = phi i32 [ %175, %173 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %107, metadata !1866, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1864, metadata !DIExpression()), !dbg !1872
  %108 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i64 0, i32 5, !dbg !1945
  %109 = load i32, i32* %108, align 8, !dbg !1945, !tbaa !1308
  %110 = icmp sgt i32 %109, 0, !dbg !1950
  br i1 %110, label %111, label %173, !dbg !1951

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i64 0, i32 7, !dbg !1952
  %113 = add i32 %107, -1, !dbg !1954
  %114 = sext i32 %107 to i64, !dbg !1951
  br label %115, !dbg !1951

115:                                              ; preds = %111, %168
  %116 = phi i64 [ 0, %111 ], [ %169, %168 ]
  call void @llvm.dbg.value(metadata i64 %116, metadata !1864, metadata !DIExpression()), !dbg !1872
  %117 = load %struct.residue_t**, %struct.residue_t*** %112, align 8, !dbg !1958, !tbaa !800
  %118 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %117, i64 %116, !dbg !1959
  %119 = load %struct.residue_t*, %struct.residue_t** %118, align 8, !dbg !1959, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %119, metadata !1859, metadata !DIExpression()), !dbg !1872
  %120 = add nsw i64 %116, %114, !dbg !1960
  %121 = getelementptr inbounds i32, i32* %31, i64 %120, !dbg !1961
  %122 = load i32, i32* %121, align 4, !dbg !1961, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %122, metadata !1860, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1869, metadata !DIExpression()), !dbg !1872
  %123 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i64 0, i32 11, !dbg !1962
  %124 = load i32, i32* %123, align 8, !dbg !1962, !tbaa !1965
  %125 = icmp sgt i32 %124, 0, !dbg !1966
  br i1 %125, label %126, label %142, !dbg !1967

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i64 0, i32 12, !dbg !1968
  br label %128, !dbg !1967

128:                                              ; preds = %126, %128
  %129 = phi i64 [ 0, %126 ], [ %138, %128 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1869, metadata !DIExpression()), !dbg !1872
  %130 = load [2 x i32]*, [2 x i32]** %127, align 8, !dbg !1970, !tbaa !1971
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 %129, i64 0, !dbg !1972
  %132 = load i32, i32* %131, align 4, !dbg !1972, !tbaa !561
  %133 = add nsw i32 %132, %122, !dbg !1973
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 %129, i64 1, !dbg !1974
  %135 = load i32, i32* %134, align 4, !dbg !1974, !tbaa !561
  %136 = add nsw i32 %135, %122, !dbg !1975
  %137 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %133, i32 %136), !dbg !1976
  %138 = add nuw nsw i64 %129, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %138, metadata !1869, metadata !DIExpression()), !dbg !1872
  %139 = load i32, i32* %123, align 8, !dbg !1962, !tbaa !1965
  %140 = sext i32 %139 to i64, !dbg !1966
  %141 = icmp slt i64 %138, %140, !dbg !1966
  br i1 %141, label %128, label %142, !dbg !1967, !llvm.loop !1978

142:                                              ; preds = %128, %115
  %143 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i64 0, i32 10, !dbg !1980
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1870, metadata !DIExpression()), !dbg !1872
  %144 = load %struct.extbond_t*, %struct.extbond_t** %143, align 8, !dbg !1981, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.extbond_t* %144, metadata !1870, metadata !DIExpression()), !dbg !1872
  %145 = icmp eq %struct.extbond_t* %144, null, !dbg !1982
  br i1 %145, label %168, label %146, !dbg !1982

146:                                              ; preds = %142, %164
  %147 = phi %struct.extbond_t* [ %166, %164 ], [ %144, %142 ]
  %148 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %147, i64 0, i32 2, !dbg !1983
  %149 = load i32, i32* %148, align 4, !dbg !1983, !tbaa !1985
  call void @llvm.dbg.value(metadata i32 %149, metadata !1865, metadata !DIExpression()), !dbg !1872
  %150 = sext i32 %149 to i64, !dbg !1987
  %151 = icmp slt i64 %116, %150, !dbg !1987
  br i1 %151, label %152, label %164, !dbg !1988

152:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i32 %122, metadata !1862, metadata !DIExpression()), !dbg !1872
  %153 = add i32 %113, %149, !dbg !1989
  %154 = sext i32 %153 to i64, !dbg !1990
  %155 = getelementptr inbounds i32, i32* %31, i64 %154, !dbg !1990
  %156 = load i32, i32* %155, align 4, !dbg !1990, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %156, metadata !1863, metadata !DIExpression()), !dbg !1872
  %157 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %147, i64 0, i32 1, !dbg !1991
  %158 = load i32, i32* %157, align 8, !dbg !1991, !tbaa !1992
  %159 = add nsw i32 %158, %122, !dbg !1993
  %160 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %147, i64 0, i32 3, !dbg !1994
  %161 = load i32, i32* %160, align 8, !dbg !1994, !tbaa !1995
  %162 = add nsw i32 %161, %156, !dbg !1996
  %163 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %159, i32 %162), !dbg !1997
  br label %164, !dbg !1998

164:                                              ; preds = %146, %152
  %165 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %147, i64 0, i32 0, !dbg !1999
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1870, metadata !DIExpression()), !dbg !1872
  %166 = load %struct.extbond_t*, %struct.extbond_t** %165, align 8, !dbg !1981, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.extbond_t* %166, metadata !1870, metadata !DIExpression()), !dbg !1872
  %167 = icmp eq %struct.extbond_t* %166, null, !dbg !1982
  br i1 %167, label %168, label %146, !dbg !1982, !llvm.loop !2000

168:                                              ; preds = %164, %142
  %169 = add nuw nsw i64 %116, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %169, metadata !1864, metadata !DIExpression()), !dbg !1872
  %170 = load i32, i32* %108, align 8, !dbg !1945, !tbaa !1308
  %171 = sext i32 %170 to i64, !dbg !1950
  %172 = icmp slt i64 %169, %171, !dbg !1950
  br i1 %172, label %115, label %173, !dbg !1951, !llvm.loop !2003

173:                                              ; preds = %168, %105
  %174 = phi i32 [ %109, %105 ], [ %170, %168 ], !dbg !1945
  %175 = add nsw i32 %174, %107, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %175, metadata !1866, metadata !DIExpression()), !dbg !1872
  %176 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i64 0, i32 4, !dbg !2006
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1858, metadata !DIExpression()), !dbg !1872
  %177 = load %struct.strand_t*, %struct.strand_t** %176, align 8, !dbg !2007, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %177, metadata !1858, metadata !DIExpression()), !dbg !1872
  %178 = icmp eq %struct.strand_t* %177, null, !dbg !1909
  br i1 %178, label %179, label %105, !dbg !1909, !llvm.loop !2008

179:                                              ; preds = %173, %33, %36
  call void @llvm.dbg.value(metadata i32 0, metadata !1867, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.label(metadata !1871), !dbg !1907
  tail call void @free(i8* nonnull %30) #14, !dbg !2010
  br label %180, !dbg !2010

180:                                              ; preds = %34, %179
  %181 = phi i32 [ 1, %34 ], [ 0, %179 ]
  %182 = tail call i32 @fclose(%struct._IO_FILE* nonnull %8), !dbg !2012
  br label %183, !dbg !2013

183:                                              ; preds = %180, %4
  %184 = phi i32 [ %181, %180 ], [ 0, %4 ], !dbg !1872
  ret i32 %184, !dbg !2014
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !111 dso_local void @free(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) local_unnamed_addr #0 !dbg !2015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2019, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !2020, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8* %2, metadata !2021, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i8* %3, metadata !2022, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !2035, metadata !DIExpression()), !dbg !2037
  %5 = icmp eq %struct.molecule_t* %1, null, !dbg !2038
  br i1 %5, label %6, label %9, !dbg !2040

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2041, !tbaa !471
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %7) #15, !dbg !2043
  br label %298, !dbg !2044

9:                                                ; preds = %4
  tail call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %2) #14, !dbg !2045
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !2046
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2024, metadata !DIExpression()), !dbg !2037
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2048, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %11, metadata !2024, metadata !DIExpression()), !dbg !2037
  %12 = icmp eq %struct.strand_t* %11, null, !dbg !2049
  br i1 %12, label %83, label %13, !dbg !2049

13:                                               ; preds = %9, %79
  %14 = phi %struct.strand_t* [ %81, %79 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 2, !dbg !2050
  %16 = load i32, i32* %15, align 4, !dbg !2053, !tbaa !2054
  %17 = and i32 %16, -3, !dbg !2053
  %18 = shl i32 %16, 1, !dbg !2055
  %19 = and i32 %18, 2, !dbg !2055
  %20 = or i32 %19, %17, !dbg !2056
  store i32 %20, i32* %15, align 4, !dbg !2056, !tbaa !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2030, metadata !DIExpression()), !dbg !2037
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 5, !dbg !2057
  %22 = load i32, i32* %21, align 8, !dbg !2057, !tbaa !1308
  %23 = icmp sgt i32 %22, 0, !dbg !2060
  br i1 %23, label %24, label %79, !dbg !2061

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 7, !dbg !2062
  %26 = load %struct.residue_t**, %struct.residue_t*** %25, align 8, !dbg !2062, !tbaa !800
  %27 = zext i32 %22 to i64, !dbg !2061
  br label %28, !dbg !2061

28:                                               ; preds = %24, %76
  %29 = phi i64 [ 0, %24 ], [ %77, %76 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !2030, metadata !DIExpression()), !dbg !2037
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %26, i64 %29, !dbg !2064
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !2064, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %31, metadata !2025, metadata !DIExpression()), !dbg !2037
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 6, !dbg !2065
  %33 = load i32, i32* %32, align 8, !dbg !2066, !tbaa !2067
  %34 = and i32 %33, -3, !dbg !2066
  %35 = shl i32 %33, 1, !dbg !2068
  %36 = and i32 %35, 2, !dbg !2068
  %37 = or i32 %36, %34, !dbg !2069
  store i32 %37, i32* %32, align 8, !dbg !2069, !tbaa !2067
  call void @llvm.dbg.value(metadata i32 0, metadata !2032, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2027, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !2032, metadata !DIExpression()), !dbg !2037
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 15, !dbg !2070
  %39 = load i32, i32* %38, align 8, !dbg !2070, !tbaa !768
  %40 = icmp sgt i32 %39, 0, !dbg !2073
  br i1 %40, label %41, label %76, !dbg !2074

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 17, !dbg !2075
  %43 = load %struct.atom_t*, %struct.atom_t** %42, align 8, !dbg !2075, !tbaa !1519
  call void @llvm.dbg.value(metadata %struct.atom_t* %43, metadata !2027, metadata !DIExpression()), !dbg !2037
  %44 = and i32 %39, 1, !dbg !2074
  %45 = icmp eq i32 %39, 1, !dbg !2074
  br i1 %45, label %66, label %46, !dbg !2074

46:                                               ; preds = %41
  %47 = sub i32 %39, %44, !dbg !2074
  br label %48, !dbg !2074

48:                                               ; preds = %48, %46
  %49 = phi %struct.atom_t* [ %43, %46 ], [ %63, %48 ]
  %50 = phi i32 [ %47, %46 ], [ %64, %48 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2032, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.atom_t* %49, metadata !2027, metadata !DIExpression()), !dbg !2037
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i64 0, i32 2, !dbg !2076
  %52 = load i32, i32* %51, align 8, !dbg !2078, !tbaa !845
  %53 = and i32 %52, -3, !dbg !2078
  %54 = shl i32 %52, 1, !dbg !2079
  %55 = and i32 %54, 2, !dbg !2079
  %56 = or i32 %55, %53, !dbg !2080
  store i32 %56, i32* %51, align 8, !dbg !2080, !tbaa !845
  call void @llvm.dbg.value(metadata i32 undef, metadata !2032, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.atom_t* %49, metadata !2027, metadata !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value)), !dbg !2037
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i64 1, i32 2, !dbg !2076
  %58 = load i32, i32* %57, align 8, !dbg !2078, !tbaa !845
  %59 = and i32 %58, -3, !dbg !2078
  %60 = shl i32 %58, 1, !dbg !2079
  %61 = and i32 %60, 2, !dbg !2079
  %62 = or i32 %61, %59, !dbg !2080
  store i32 %62, i32* %57, align 8, !dbg !2080, !tbaa !845
  call void @llvm.dbg.value(metadata i32 undef, metadata !2032, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2037
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i64 2, !dbg !2081
  call void @llvm.dbg.value(metadata %struct.atom_t* %63, metadata !2027, metadata !DIExpression()), !dbg !2037
  %64 = add i32 %50, -2, !dbg !2074
  %65 = icmp eq i32 %64, 0, !dbg !2074
  br i1 %65, label %66, label %48, !dbg !2074, !llvm.loop !2082

66:                                               ; preds = %48, %41
  %67 = phi %struct.atom_t* [ %43, %41 ], [ %63, %48 ]
  %68 = icmp eq i32 %44, 0, !dbg !2074
  br i1 %68, label %76, label %69, !dbg !2074

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 undef, metadata !2032, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.atom_t* %67, metadata !2027, metadata !DIExpression()), !dbg !2037
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i64 0, i32 2, !dbg !2076
  %71 = load i32, i32* %70, align 8, !dbg !2078, !tbaa !845
  %72 = and i32 %71, -3, !dbg !2078
  %73 = shl i32 %71, 1, !dbg !2079
  %74 = and i32 %73, 2, !dbg !2079
  %75 = or i32 %74, %72, !dbg !2080
  store i32 %75, i32* %70, align 8, !dbg !2080, !tbaa !845
  call void @llvm.dbg.value(metadata i32 undef, metadata !2032, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.atom_t* %67, metadata !2027, metadata !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value)), !dbg !2037
  br label %76, !dbg !2084

76:                                               ; preds = %69, %66, %28
  %77 = add nuw nsw i64 %29, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %77, metadata !2030, metadata !DIExpression()), !dbg !2037
  %78 = icmp ult i64 %77, %27, !dbg !2060
  br i1 %78, label %28, label %79, !dbg !2061, !llvm.loop !2085

79:                                               ; preds = %76, %13
  %80 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 4, !dbg !2087
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2024, metadata !DIExpression()), !dbg !2037
  %81 = load %struct.strand_t*, %struct.strand_t** %80, align 8, !dbg !2048, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %81, metadata !2024, metadata !DIExpression()), !dbg !2037
  %82 = icmp eq %struct.strand_t* %81, null, !dbg !2049
  br i1 %82, label %83, label %13, !dbg !2049, !llvm.loop !2088

83:                                               ; preds = %79, %9
  tail call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %3) #14, !dbg !2090
  call void @llvm.dbg.value(metadata i32 0, metadata !2029, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2024, metadata !DIExpression()), !dbg !2037
  %84 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2091, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %84, metadata !2024, metadata !DIExpression()), !dbg !2037
  %85 = icmp eq %struct.strand_t* %84, null, !dbg !2093
  br i1 %85, label %95, label %86, !dbg !2093

86:                                               ; preds = %83, %86
  %87 = phi %struct.strand_t* [ %93, %86 ], [ %84, %83 ]
  %88 = phi i32 [ %91, %86 ], [ 0, %83 ]
  call void @llvm.dbg.value(metadata i32 %88, metadata !2029, metadata !DIExpression()), !dbg !2037
  %89 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 5, !dbg !2094
  %90 = load i32, i32* %89, align 8, !dbg !2094, !tbaa !1308
  %91 = add nsw i32 %90, %88, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %91, metadata !2029, metadata !DIExpression()), !dbg !2037
  %92 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 4, !dbg !2097
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2024, metadata !DIExpression()), !dbg !2037
  %93 = load %struct.strand_t*, %struct.strand_t** %92, align 8, !dbg !2091, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %93, metadata !2024, metadata !DIExpression()), !dbg !2037
  %94 = icmp eq %struct.strand_t* %93, null, !dbg !2093
  br i1 %94, label %95, label %86, !dbg !2093, !llvm.loop !2098

95:                                               ; preds = %86, %83
  %96 = phi i32 [ 0, %83 ], [ %91, %86 ], !dbg !2091
  call void @llvm.dbg.value(metadata i32 %96, metadata !2029, metadata !DIExpression()), !dbg !2037
  %97 = sext i32 %96 to i64, !dbg !2100
  %98 = shl nsw i64 %97, 3, !dbg !2102
  %99 = tail call noalias i8* @malloc(i64 %98) #14, !dbg !2103
  %100 = bitcast i8* %99 to %struct.residue_t**, !dbg !2104
  call void @llvm.dbg.value(metadata %struct.residue_t** %100, metadata !2034, metadata !DIExpression()), !dbg !2037
  %101 = icmp eq i8* %99, null, !dbg !2105
  br i1 %101, label %103, label %102, !dbg !2106

102:                                              ; preds = %95
  call void @llvm.dbg.value(metadata i32 0, metadata !2031, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata %struct.strand_t* %84, metadata !2024, metadata !DIExpression()), !dbg !2037
  br i1 %85, label %180, label %106, !dbg !2107

103:                                              ; preds = %95
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2109, !tbaa !471
  %105 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %104) #15, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %297, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.label(metadata !2036), !dbg !2112
  br label %298, !dbg !2113

106:                                              ; preds = %102, %175
  %107 = phi %struct.strand_t* [ %178, %175 ], [ %84, %102 ]
  %108 = phi i32 [ %176, %175 ], [ 0, %102 ]
  call void @llvm.dbg.value(metadata i32 %108, metadata !2031, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %108, metadata !2031, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !2030, metadata !DIExpression()), !dbg !2037
  %109 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %107, i64 0, i32 5, !dbg !2114
  %110 = load i32, i32* %109, align 8, !dbg !2114, !tbaa !1308
  %111 = icmp sgt i32 %110, 0, !dbg !2119
  br i1 %111, label %112, label %175, !dbg !2120

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %107, i64 0, i32 7, !dbg !2121
  %114 = bitcast %struct.residue_t*** %113 to i8**, !dbg !2121
  %115 = load i8*, i8** %114, align 8, !dbg !2121, !tbaa !800
  %116 = sext i32 %108 to i64, !dbg !2120
  %117 = zext i32 %110 to i64, !dbg !2120
  %118 = shl nsw i64 %116, 3, !dbg !2120
  %119 = getelementptr i8, i8* %99, i64 %118, !dbg !2120
  %120 = zext i32 %110 to i64, !dbg !2120
  %121 = shl nuw nsw i64 %120, 3, !dbg !2120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %115, i64 %121, i1 false), !dbg !2122
  %122 = icmp ult i32 %110, 4, !dbg !2120
  br i1 %122, label %163, label %123, !dbg !2120

123:                                              ; preds = %112
  %124 = and i64 %117, 4294967292, !dbg !2120
  %125 = insertelement <2 x i64> <i64 undef, i64 0>, i64 %116, i32 0, !dbg !2120
  %126 = add nsw i64 %124, -4, !dbg !2120
  %127 = lshr exact i64 %126, 2, !dbg !2120
  %128 = add nuw nsw i64 %127, 1, !dbg !2120
  %129 = and i64 %128, 7, !dbg !2120
  %130 = icmp ult i64 %126, 28, !dbg !2120
  br i1 %130, label %141, label %131, !dbg !2120

131:                                              ; preds = %123
  %132 = sub nsw i64 %128, %129, !dbg !2120
  br label %133, !dbg !2120

133:                                              ; preds = %133, %131
  %134 = phi <2 x i64> [ %125, %131 ], [ %137, %133 ]
  %135 = phi <2 x i64> [ zeroinitializer, %131 ], [ %138, %133 ]
  %136 = phi i64 [ %132, %131 ], [ %139, %133 ]
  %137 = add <2 x i64> %134, <i64 8, i64 8>, !dbg !2123
  %138 = add <2 x i64> %135, <i64 8, i64 8>, !dbg !2123
  %139 = add i64 %136, -8, !dbg !2124
  %140 = icmp eq i64 %139, 0, !dbg !2124
  br i1 %140, label %141, label %133, !dbg !2124, !llvm.loop !2125

141:                                              ; preds = %133, %123
  %142 = phi <2 x i64> [ undef, %123 ], [ %137, %133 ]
  %143 = phi <2 x i64> [ undef, %123 ], [ %138, %133 ]
  %144 = phi <2 x i64> [ %125, %123 ], [ %137, %133 ]
  %145 = phi <2 x i64> [ zeroinitializer, %123 ], [ %138, %133 ]
  %146 = icmp eq i64 %129, 0, !dbg !2124
  br i1 %146, label %155, label %147, !dbg !2124

147:                                              ; preds = %141, %147
  %148 = phi <2 x i64> [ %151, %147 ], [ %144, %141 ]
  %149 = phi <2 x i64> [ %152, %147 ], [ %145, %141 ]
  %150 = phi i64 [ %153, %147 ], [ %129, %141 ]
  %151 = add <2 x i64> %148, <i64 1, i64 1>, !dbg !2123
  %152 = add <2 x i64> %149, <i64 1, i64 1>, !dbg !2123
  %153 = add i64 %150, -1, !dbg !2124
  %154 = icmp eq i64 %153, 0, !dbg !2124
  br i1 %154, label %155, label %147, !dbg !2124, !llvm.loop !2128

155:                                              ; preds = %147, %141
  %156 = phi <2 x i64> [ %142, %141 ], [ %151, %147 ], !dbg !2123
  %157 = phi <2 x i64> [ %143, %141 ], [ %152, %147 ], !dbg !2123
  %158 = add <2 x i64> %157, %156, !dbg !2120
  %159 = shufflevector <2 x i64> %158, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>, !dbg !2120
  %160 = add <2 x i64> %158, %159, !dbg !2120
  %161 = extractelement <2 x i64> %160, i32 0, !dbg !2120
  %162 = icmp eq i64 %124, %117, !dbg !2120
  br i1 %162, label %172, label %163, !dbg !2120

163:                                              ; preds = %155, %112
  %164 = phi i64 [ 0, %112 ], [ %124, %155 ]
  %165 = phi i64 [ %116, %112 ], [ %161, %155 ]
  br label %166, !dbg !2120

166:                                              ; preds = %163, %166
  %167 = phi i64 [ %170, %166 ], [ %164, %163 ]
  %168 = phi i64 [ %169, %166 ], [ %165, %163 ]
  call void @llvm.dbg.value(metadata i64 %168, metadata !2031, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %167, metadata !2030, metadata !DIExpression()), !dbg !2037
  %169 = add nsw i64 %168, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %169, metadata !2031, metadata !DIExpression()), !dbg !2037
  %170 = add nuw nsw i64 %167, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %170, metadata !2030, metadata !DIExpression()), !dbg !2037
  %171 = icmp ult i64 %170, %117, !dbg !2119
  br i1 %171, label %166, label %172, !dbg !2120, !llvm.loop !2130

172:                                              ; preds = %166, %155
  %173 = phi i64 [ %161, %155 ], [ %169, %166 ], !dbg !2123
  %174 = trunc i64 %173 to i32, !dbg !2132
  br label %175, !dbg !2132

175:                                              ; preds = %172, %106
  %176 = phi i32 [ %108, %106 ], [ %174, %172 ], !dbg !2133
  call void @llvm.dbg.value(metadata i32 %176, metadata !2031, metadata !DIExpression()), !dbg !2037
  %177 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %107, i64 0, i32 4, !dbg !2132
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2024, metadata !DIExpression()), !dbg !2037
  %178 = load %struct.strand_t*, %struct.strand_t** %177, align 8, !dbg !2133, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %178, metadata !2024, metadata !DIExpression()), !dbg !2037
  %179 = icmp eq %struct.strand_t* %178, null, !dbg !2107
  br i1 %179, label %180, label %106, !dbg !2107, !llvm.loop !2134

180:                                              ; preds = %175, %102
  %181 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2136
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %181, metadata !2023, metadata !DIExpression()), !dbg !2037
  %182 = icmp eq %struct._IO_FILE* %181, null, !dbg !2138
  br i1 %182, label %187, label %183, !dbg !2139

183:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i32 0, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !2030, metadata !DIExpression()), !dbg !2037
  %184 = icmp sgt i32 %96, 0, !dbg !2140
  br i1 %184, label %185, label %296, !dbg !2143

185:                                              ; preds = %183
  %186 = zext i32 %96 to i64, !dbg !2140
  br label %190, !dbg !2143

187:                                              ; preds = %180
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2144, !tbaa !471
  %189 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %0) #15, !dbg !2146
  br label %296, !dbg !2147

190:                                              ; preds = %292, %185
  %191 = phi i64 [ 0, %185 ], [ %293, %292 ]
  %192 = phi i32 [ 0, %185 ], [ %294, %292 ]
  call void @llvm.dbg.value(metadata i32 %192, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %191, metadata !2030, metadata !DIExpression()), !dbg !2037
  %193 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %100, i64 %191, !dbg !2148
  %194 = load %struct.residue_t*, %struct.residue_t** %193, align 8, !dbg !2148, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %194, metadata !2025, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !2032, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %192, metadata !2035, metadata !DIExpression()), !dbg !2037
  %195 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %194, i64 0, i32 15, !dbg !2150
  %196 = load i32, i32* %195, align 8, !dbg !2150, !tbaa !768
  %197 = icmp sgt i32 %196, 0, !dbg !2153
  br i1 %197, label %200, label %198, !dbg !2154

198:                                              ; preds = %190
  %199 = add nuw nsw i64 %191, 1, !dbg !2155
  br label %292, !dbg !2154

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %194, i64 0, i32 17, !dbg !2156
  %202 = add nuw nsw i64 %191, 1, !dbg !2158
  %203 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %194, i64 0, i32 4, !dbg !2158
  %204 = trunc i64 %202 to i32, !dbg !2158
  br label %205, !dbg !2154

205:                                              ; preds = %200, %276
  %206 = phi i32 [ %196, %200 ], [ %277, %276 ]
  %207 = phi i64 [ 0, %200 ], [ %279, %276 ]
  %208 = phi i32 [ %192, %200 ], [ %278, %276 ]
  call void @llvm.dbg.value(metadata i32 %208, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %207, metadata !2032, metadata !DIExpression()), !dbg !2037
  %209 = load %struct.atom_t*, %struct.atom_t** %201, align 8, !dbg !2169, !tbaa !1519
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2027, metadata !DIExpression()), !dbg !2037
  %210 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 2, !dbg !2170
  %211 = load i32, i32* %210, align 8, !dbg !2170, !tbaa !845
  %212 = and i32 %211, 2, !dbg !2171
  %213 = icmp eq i32 %212, 0, !dbg !2171
  br i1 %213, label %276, label %287, !dbg !2172

214:                                              ; preds = %224, %287
  %215 = phi i64 [ 0, %287 ], [ %225, %224 ]
  %216 = phi i32 [ %208, %287 ], [ %226, %224 ]
  call void @llvm.dbg.value(metadata i32 %216, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %215, metadata !2031, metadata !DIExpression()), !dbg !2037
  %217 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %100, i64 %215, !dbg !2173
  %218 = load %struct.residue_t*, %struct.residue_t** %217, align 8, !dbg !2173, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %218, metadata !2026, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !2033, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %216, metadata !2035, metadata !DIExpression()), !dbg !2037
  %219 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i64 0, i32 15, !dbg !2174
  %220 = load i32, i32* %219, align 8, !dbg !2174, !tbaa !768
  %221 = icmp sgt i32 %220, 0, !dbg !2175
  br i1 %221, label %282, label %222, !dbg !2176

222:                                              ; preds = %214
  %223 = add nuw nsw i64 %215, 1, !dbg !2177
  br label %224, !dbg !2176

224:                                              ; preds = %268, %222
  %225 = phi i64 [ %223, %222 ], [ %284, %268 ], !dbg !2177
  %226 = phi i32 [ %216, %222 ], [ %270, %268 ], !dbg !2178
  call void @llvm.dbg.value(metadata i32 %226, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %225, metadata !2031, metadata !DIExpression()), !dbg !2037
  %227 = icmp eq i64 %225, %186, !dbg !2179
  br i1 %227, label %274, label %214, !dbg !2180, !llvm.loop !2181

228:                                              ; preds = %282, %268
  %229 = phi i32 [ %220, %282 ], [ %269, %268 ]
  %230 = phi i64 [ 0, %282 ], [ %271, %268 ]
  %231 = phi i32 [ %216, %282 ], [ %270, %268 ]
  call void @llvm.dbg.value(metadata i32 %231, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %230, metadata !2033, metadata !DIExpression()), !dbg !2037
  %232 = load %struct.atom_t*, %struct.atom_t** %283, align 8, !dbg !2183, !tbaa !1519
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2028, metadata !DIExpression()), !dbg !2037
  %233 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 2, !dbg !2184
  %234 = load i32, i32* %233, align 8, !dbg !2184, !tbaa !845
  %235 = and i32 %234, 1, !dbg !2185
  %236 = icmp eq i32 %235, 0, !dbg !2185
  br i1 %236, label %268, label %237, !dbg !2186

237:                                              ; preds = %228
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2028, metadata !DIExpression()), !dbg !2037
  %238 = load i8*, i8** %203, align 8, !dbg !2187, !tbaa !759
  %239 = load i8*, i8** %288, align 8, !dbg !2188, !tbaa !529
  %240 = load i8*, i8** %285, align 8, !dbg !2189, !tbaa !759
  %241 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 0, !dbg !2190
  %242 = load i8*, i8** %241, align 8, !dbg !2190, !tbaa !529
  %243 = load double, double* %289, align 8, !dbg !2191, !tbaa !721
  %244 = load double, double* %290, align 8, !dbg !2191, !tbaa !721
  %245 = load double, double* %291, align 8, !dbg !2191, !tbaa !721
  %246 = getelementptr %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 17, i64 0, !dbg !2191
  %247 = load double, double* %246, align 8, !dbg !2191, !tbaa !721
  %248 = getelementptr %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 17, i64 1, !dbg !2191
  %249 = load double, double* %248, align 8, !dbg !2191, !tbaa !721
  %250 = getelementptr %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 17, i64 2, !dbg !2191
  %251 = load double, double* %250, align 8, !dbg !2191, !tbaa !721
  %252 = fsub double %244, %249, !dbg !2192
  call void @llvm.dbg.value(metadata double %252, metadata !2200, metadata !DIExpression()) #14, !dbg !2203
  %253 = insertelement <2 x double> undef, double %243, i32 0, !dbg !2204
  %254 = insertelement <2 x double> %253, double %245, i32 1, !dbg !2204
  %255 = insertelement <2 x double> undef, double %247, i32 0, !dbg !2204
  %256 = insertelement <2 x double> %255, double %251, i32 1, !dbg !2204
  %257 = fsub <2 x double> %254, %256, !dbg !2204
  %258 = fmul double %252, %252, !dbg !2205
  %259 = fmul <2 x double> %257, %257, !dbg !2206
  %260 = extractelement <2 x double> %259, i32 0, !dbg !2207
  %261 = fadd double %260, %258, !dbg !2207
  %262 = extractelement <2 x double> %259, i32 1, !dbg !2208
  %263 = fadd double %261, %262, !dbg !2208
  %264 = tail call double @sqrt(double %263) #14, !dbg !2209
  %265 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %181, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %204, i8* %238, i8* %239, i32 %286, i8* %240, i8* %242, double %264), !dbg !2210
  %266 = add nsw i32 %231, 1, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %266, metadata !2035, metadata !DIExpression()), !dbg !2037
  %267 = load i32, i32* %219, align 8, !dbg !2174, !tbaa !768
  br label %268, !dbg !2212

268:                                              ; preds = %237, %228
  %269 = phi i32 [ %267, %237 ], [ %229, %228 ], !dbg !2174
  %270 = phi i32 [ %266, %237 ], [ %231, %228 ], !dbg !2178
  call void @llvm.dbg.value(metadata i32 %270, metadata !2035, metadata !DIExpression()), !dbg !2037
  %271 = add nuw nsw i64 %230, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %271, metadata !2033, metadata !DIExpression()), !dbg !2037
  %272 = sext i32 %269 to i64, !dbg !2175
  %273 = icmp slt i64 %271, %272, !dbg !2175
  br i1 %273, label %228, label %224, !dbg !2176, !llvm.loop !2214

274:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i32 %226, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %226, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %226, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %226, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %226, metadata !2035, metadata !DIExpression()), !dbg !2037
  %275 = load i32, i32* %195, align 8, !dbg !2150, !tbaa !768
  br label %276, !dbg !2216

276:                                              ; preds = %274, %205
  %277 = phi i32 [ %206, %205 ], [ %275, %274 ], !dbg !2150
  %278 = phi i32 [ %208, %205 ], [ %226, %274 ], !dbg !2217
  call void @llvm.dbg.value(metadata i32 %278, metadata !2035, metadata !DIExpression()), !dbg !2037
  %279 = add nuw nsw i64 %207, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %279, metadata !2032, metadata !DIExpression()), !dbg !2037
  %280 = sext i32 %277 to i64, !dbg !2153
  %281 = icmp slt i64 %279, %280, !dbg !2153
  br i1 %281, label %205, label %292, !dbg !2154, !llvm.loop !2218

282:                                              ; preds = %214
  %283 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i64 0, i32 17, !dbg !2220
  %284 = add nuw nsw i64 %215, 1, !dbg !2158
  %285 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i64 0, i32 4, !dbg !2158
  %286 = trunc i64 %284 to i32, !dbg !2158
  br label %228, !dbg !2176

287:                                              ; preds = %205
  call void @llvm.dbg.value(metadata i32 %208, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 0, metadata !2031, metadata !DIExpression()), !dbg !2037
  %288 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 0, !dbg !2158
  %289 = getelementptr %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 17, i64 0, !dbg !2158
  %290 = getelementptr %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 17, i64 1, !dbg !2158
  %291 = getelementptr %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 17, i64 2, !dbg !2158
  br label %214, !dbg !2180

292:                                              ; preds = %276, %198
  %293 = phi i64 [ %199, %198 ], [ %202, %276 ], !dbg !2155
  %294 = phi i32 [ %192, %198 ], [ %278, %276 ], !dbg !2217
  call void @llvm.dbg.value(metadata i32 %294, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64 %293, metadata !2030, metadata !DIExpression()), !dbg !2037
  %295 = icmp eq i64 %293, %186, !dbg !2140
  br i1 %295, label %296, label %190, !dbg !2143, !llvm.loop !2221

296:                                              ; preds = %292, %187, %183
  %297 = phi i32 [ 0, %187 ], [ 0, %183 ], [ %294, %292 ], !dbg !2037
  call void @llvm.dbg.value(metadata i32 %297, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.label(metadata !2036), !dbg !2112
  tail call void @free(i8* nonnull %99) #14, !dbg !2223
  br label %298, !dbg !2223

298:                                              ; preds = %103, %296, %6
  %299 = phi i32 [ 0, %6 ], [ %297, %296 ], [ 0, %103 ], !dbg !2037
  ret i32 %299, !dbg !2225
}

declare !dbg !115 dso_local void @select_atoms(%struct.molecule_t*, i8*) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* nocapture readonly %1) local_unnamed_addr #8 !dbg !2226 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2232, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !2233, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !2234, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 0, metadata !2237, metadata !DIExpression()), !dbg !2239
  %3 = icmp eq i8* %0, null, !dbg !2240
  br i1 %3, label %7, label %4, !dbg !2242

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1, !dbg !2243, !tbaa !465
  %6 = icmp eq i8 %5, 0, !dbg !2244
  br i1 %6, label %7, label %10, !dbg !2245

7:                                                ; preds = %4, %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2246, !tbaa !471
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %8) #15, !dbg !2248
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2239
  br label %81, !dbg !2249

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !2250
  %12 = icmp eq i32 %11, 0, !dbg !2250
  br i1 %12, label %13, label %15, !dbg !2252

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2253, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !2234, metadata !DIExpression()), !dbg !2239
  br label %21, !dbg !2254

15:                                               ; preds = %10
  %16 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2255
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !2234, metadata !DIExpression()), !dbg !2239
  %17 = icmp eq %struct._IO_FILE* %16, null, !dbg !2257
  br i1 %17, label %18, label %21, !dbg !2258

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2259, !tbaa !471
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %0) #15, !dbg !2261
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2239
  br label %81, !dbg !2262

21:                                               ; preds = %13, %15
  %22 = phi %struct._IO_FILE* [ %16, %15 ], [ %14, %13 ], !dbg !2263
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !2234, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 0, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 0, metadata !2236, metadata !DIExpression()), !dbg !2239
  %23 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 0, !dbg !2264
  %24 = load double, double* %23, align 8, !dbg !2264, !tbaa !721
  %25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %24), !dbg !2270
  call void @llvm.dbg.value(metadata i64 1, metadata !2236, metadata !DIExpression()), !dbg !2239
  %26 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 1, !dbg !2264
  %27 = load double, double* %26, align 8, !dbg !2264, !tbaa !721
  %28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %27), !dbg !2270
  call void @llvm.dbg.value(metadata i64 2, metadata !2236, metadata !DIExpression()), !dbg !2239
  %29 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 2, !dbg !2264
  %30 = load double, double* %29, align 8, !dbg !2264, !tbaa !721
  %31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %30), !dbg !2270
  call void @llvm.dbg.value(metadata i64 3, metadata !2236, metadata !DIExpression()), !dbg !2239
  %32 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 3, !dbg !2264
  %33 = load double, double* %32, align 8, !dbg !2264, !tbaa !721
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %33), !dbg !2270
  call void @llvm.dbg.value(metadata i64 4, metadata !2236, metadata !DIExpression()), !dbg !2239
  %35 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2271
  call void @llvm.dbg.value(metadata i64 1, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 0, metadata !2236, metadata !DIExpression()), !dbg !2239
  %36 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 0, !dbg !2264
  %37 = load double, double* %36, align 8, !dbg !2264, !tbaa !721
  %38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %37), !dbg !2270
  call void @llvm.dbg.value(metadata i64 1, metadata !2236, metadata !DIExpression()), !dbg !2239
  %39 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 1, !dbg !2264
  %40 = load double, double* %39, align 8, !dbg !2264, !tbaa !721
  %41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %40), !dbg !2270
  call void @llvm.dbg.value(metadata i64 2, metadata !2236, metadata !DIExpression()), !dbg !2239
  %42 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 2, !dbg !2264
  %43 = load double, double* %42, align 8, !dbg !2264, !tbaa !721
  %44 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %43), !dbg !2270
  call void @llvm.dbg.value(metadata i64 3, metadata !2236, metadata !DIExpression()), !dbg !2239
  %45 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 3, !dbg !2264
  %46 = load double, double* %45, align 8, !dbg !2264, !tbaa !721
  %47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %46), !dbg !2270
  call void @llvm.dbg.value(metadata i64 4, metadata !2236, metadata !DIExpression()), !dbg !2239
  %48 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2271
  call void @llvm.dbg.value(metadata i64 2, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 0, metadata !2236, metadata !DIExpression()), !dbg !2239
  %49 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 0, !dbg !2264
  %50 = load double, double* %49, align 8, !dbg !2264, !tbaa !721
  %51 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %50), !dbg !2270
  call void @llvm.dbg.value(metadata i64 1, metadata !2236, metadata !DIExpression()), !dbg !2239
  %52 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 1, !dbg !2264
  %53 = load double, double* %52, align 8, !dbg !2264, !tbaa !721
  %54 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %53), !dbg !2270
  call void @llvm.dbg.value(metadata i64 2, metadata !2236, metadata !DIExpression()), !dbg !2239
  %55 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 2, !dbg !2264
  %56 = load double, double* %55, align 8, !dbg !2264, !tbaa !721
  %57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %56), !dbg !2270
  call void @llvm.dbg.value(metadata i64 3, metadata !2236, metadata !DIExpression()), !dbg !2239
  %58 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 3, !dbg !2264
  %59 = load double, double* %58, align 8, !dbg !2264, !tbaa !721
  %60 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %59), !dbg !2270
  call void @llvm.dbg.value(metadata i64 4, metadata !2236, metadata !DIExpression()), !dbg !2239
  %61 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2271
  call void @llvm.dbg.value(metadata i64 3, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i64 0, metadata !2236, metadata !DIExpression()), !dbg !2239
  %62 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 0, !dbg !2264
  %63 = load double, double* %62, align 8, !dbg !2264, !tbaa !721
  %64 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %63), !dbg !2270
  call void @llvm.dbg.value(metadata i64 1, metadata !2236, metadata !DIExpression()), !dbg !2239
  %65 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 1, !dbg !2264
  %66 = load double, double* %65, align 8, !dbg !2264, !tbaa !721
  %67 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %66), !dbg !2270
  call void @llvm.dbg.value(metadata i64 2, metadata !2236, metadata !DIExpression()), !dbg !2239
  %68 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 2, !dbg !2264
  %69 = load double, double* %68, align 8, !dbg !2264, !tbaa !721
  %70 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %69), !dbg !2270
  call void @llvm.dbg.value(metadata i64 3, metadata !2236, metadata !DIExpression()), !dbg !2239
  %71 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 3, !dbg !2264
  %72 = load double, double* %71, align 8, !dbg !2264, !tbaa !721
  %73 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %72), !dbg !2270
  call void @llvm.dbg.value(metadata i64 4, metadata !2236, metadata !DIExpression()), !dbg !2239
  %74 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2271
  call void @llvm.dbg.value(metadata i64 4, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 0, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.label(metadata !2238), !dbg !2272
  %75 = icmp eq %struct._IO_FILE* %22, null, !dbg !2273
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2275
  %77 = icmp eq %struct._IO_FILE* %22, %76, !dbg !2276
  %78 = or i1 %75, %77, !dbg !2277
  br i1 %78, label %81, label %79, !dbg !2277

79:                                               ; preds = %21
  %80 = tail call i32 @fclose(%struct._IO_FILE* nonnull %22), !dbg !2278
  br label %81, !dbg !2278

81:                                               ; preds = %18, %7, %21, %79
  %82 = phi i32 [ 0, %21 ], [ 0, %79 ], [ 1, %7 ], [ 1, %18 ]
  ret i32 %82, !dbg !2279
}

; Function Attrs: nofree nounwind
declare dso_local i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @initres() unnamed_addr #0 !dbg !2280 {
  tail call void @NAB_initres(%struct.residue_t* nonnull @res, i32 0) #14, !dbg !2281
  %1 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2282, !tbaa !759
  %2 = icmp eq i8* %1, null, !dbg !2284
  br i1 %2, label %3, label %9, !dbg !2285

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !2286
  store i8* %4, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2288, !tbaa !759
  %5 = icmp eq i8* %4, null, !dbg !2289
  br i1 %5, label %6, label %9, !dbg !2291

6:                                                ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2292, !tbaa !471
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %7) #15, !dbg !2294
  tail call void @exit(i32 1) #17, !dbg !2295
  unreachable, !dbg !2295

9:                                                ; preds = %3, %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2296, !tbaa !762
  %11 = icmp eq i8* %10, null, !dbg !2298
  br i1 %11, label %12, label %18, !dbg !2299

12:                                               ; preds = %9
  %13 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !2300
  store i8* %13, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2302, !tbaa !762
  %14 = icmp eq i8* %13, null, !dbg !2303
  br i1 %14, label %15, label %18, !dbg !2305

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2306, !tbaa !471
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %16) #15, !dbg !2308
  tail call void @exit(i32 1) #17, !dbg !2309
  unreachable, !dbg !2309

18:                                               ; preds = %12, %9
  %19 = load i32, i32* @n_atab, align 4, !dbg !2310, !tbaa !561
  store i32 %19, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2311, !tbaa !768
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2312, !tbaa !1519
  ret void, !dbg !2313
}

declare !dbg !326 dso_local %struct.molecule_t* @newmolecule() local_unnamed_addr #4

declare !dbg !329 dso_local i8* @ggets(i8*, i32, %struct._IO_FILE*) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local i8* @strncpy(i8* noalias returned, i8* noalias nocapture readonly, i64) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @makebonds() unnamed_addr #8 !dbg !2314 {
  call void @llvm.dbg.value(metadata %struct.residue_t* @res, metadata !2318, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 0, metadata !2319, metadata !DIExpression()), !dbg !2326
  %1 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2327, !tbaa !768
  %2 = icmp sgt i32 %1, 0, !dbg !2330
  br i1 %2, label %3, label %206, !dbg !2331

3:                                                ; preds = %0
  %4 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2332, !tbaa !1519
  %5 = zext i32 %1 to i64, !dbg !2331
  %6 = add nsw i64 %5, -1, !dbg !2331
  %7 = and i64 %5, 3, !dbg !2331
  %8 = icmp ult i64 %6, 3, !dbg !2331
  br i1 %8, label %11, label %9, !dbg !2331

9:                                                ; preds = %3
  %10 = sub nsw i64 %5, %7, !dbg !2331
  br label %25, !dbg !2331

11:                                               ; preds = %25, %3
  %12 = phi i64 [ 0, %3 ], [ %35, %25 ]
  %13 = icmp eq i64 %7, 0, !dbg !2331
  br i1 %13, label %21, label %14, !dbg !2331

14:                                               ; preds = %11, %14
  %15 = phi i64 [ %18, %14 ], [ %12, %11 ]
  %16 = phi i64 [ %19, %14 ], [ %7, %11 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !2319, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2321, metadata !DIExpression()), !dbg !2326
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %15, i32 3, !dbg !2334
  store i32 0, i32* %17, align 4, !dbg !2335, !tbaa !2336
  %18 = add nuw nsw i64 %15, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %18, metadata !2319, metadata !DIExpression()), !dbg !2326
  %19 = add i64 %16, -1, !dbg !2331
  %20 = icmp eq i64 %19, 0, !dbg !2331
  br i1 %20, label %21, label %14, !dbg !2331, !llvm.loop !2338

21:                                               ; preds = %14, %11
  call void @llvm.dbg.value(metadata i32 0, metadata !2319, metadata !DIExpression()), !dbg !2326
  %22 = icmp sgt i32 %1, 1, !dbg !2339
  br i1 %22, label %23, label %206, !dbg !2342

23:                                               ; preds = %21
  %24 = tail call i16** @__ctype_b_loc() #18, !dbg !2343
  br label %44, !dbg !2342

25:                                               ; preds = %25, %9
  %26 = phi i64 [ 0, %9 ], [ %35, %25 ]
  %27 = phi i64 [ %10, %9 ], [ %36, %25 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !2319, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2321, metadata !DIExpression()), !dbg !2326
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %26, i32 3, !dbg !2334
  store i32 0, i32* %28, align 4, !dbg !2335, !tbaa !2336
  %29 = or i64 %26, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %29, metadata !2319, metadata !DIExpression()), !dbg !2326
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %29, i32 3, !dbg !2334
  store i32 0, i32* %30, align 4, !dbg !2335, !tbaa !2336
  %31 = or i64 %26, 2, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %31, metadata !2319, metadata !DIExpression()), !dbg !2326
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %31, i32 3, !dbg !2334
  store i32 0, i32* %32, align 4, !dbg !2335, !tbaa !2336
  %33 = or i64 %26, 3, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %33, metadata !2319, metadata !DIExpression()), !dbg !2326
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %33, i32 3, !dbg !2334
  store i32 0, i32* %34, align 4, !dbg !2335, !tbaa !2336
  %35 = add nuw nsw i64 %26, 4, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %35, metadata !2319, metadata !DIExpression()), !dbg !2326
  %36 = add i64 %27, -4, !dbg !2331
  %37 = icmp eq i64 %36, 0, !dbg !2331
  br i1 %37, label %11, label %25, !dbg !2331, !llvm.loop !2346

38:                                               ; preds = %198, %118, %61
  %39 = phi i32 [ %45, %61 ], [ %120, %118 ], [ %200, %198 ], !dbg !2348
  call void @llvm.dbg.value(metadata i64 %63, metadata !2319, metadata !DIExpression()), !dbg !2326
  %40 = add nsw i32 %39, -1, !dbg !2349
  %41 = sext i32 %40 to i64, !dbg !2339
  %42 = icmp slt i64 %63, %41, !dbg !2339
  %43 = add nuw nsw i64 %47, 1, !dbg !2342
  br i1 %42, label %44, label %206, !dbg !2342

44:                                               ; preds = %23, %38
  %45 = phi i32 [ %1, %23 ], [ %39, %38 ]
  %46 = phi i64 [ 0, %23 ], [ %63, %38 ]
  %47 = phi i64 [ 1, %23 ], [ %43, %38 ]
  call void @llvm.dbg.value(metadata i64 %46, metadata !2319, metadata !DIExpression()), !dbg !2326
  %48 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2350, !tbaa !1519
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2321, metadata !DIExpression()), !dbg !2326
  %49 = load i16*, i16** %24, align 8, !dbg !2351, !tbaa !471
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 0, !dbg !2351
  %51 = load i8*, i8** %50, align 8, !dbg !2351, !tbaa !529
  %52 = load i8, i8* %51, align 1, !dbg !2351, !tbaa !465
  %53 = sext i8 %52 to i64, !dbg !2351
  %54 = getelementptr inbounds i16, i16* %49, i64 %53, !dbg !2351
  %55 = load i16, i16* %54, align 2, !dbg !2351, !tbaa !2352
  %56 = and i16 %55, 2048, !dbg !2351
  %57 = icmp eq i16 %56, 0, !dbg !2351
  br i1 %57, label %61, label %58, !dbg !2354

58:                                               ; preds = %44
  %59 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !2355
  %60 = load i8, i8* %59, align 1, !dbg !2355, !tbaa !465
  call void @llvm.dbg.value(metadata i1 undef, metadata !2323, metadata !DIExpression()), !dbg !2326
  br label %61, !dbg !2356

61:                                               ; preds = %44, %58
  %62 = phi i8 [ %60, %58 ], [ %52, %44 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !2323, metadata !DIExpression()), !dbg !2326
  %63 = add nuw nsw i64 %46, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %63, metadata !2320, metadata !DIExpression()), !dbg !2326
  %64 = sext i32 %45 to i64, !dbg !2359
  %65 = icmp slt i64 %63, %64, !dbg !2359
  br i1 %65, label %66, label %38, !dbg !2361, !llvm.loop !2362

66:                                               ; preds = %61
  %67 = or i8 %62, 32, !dbg !2343
  %68 = icmp eq i8 %67, 104, !dbg !2343
  call void @llvm.dbg.value(metadata i1 %68, metadata !2323, metadata !DIExpression()), !dbg !2326
  %69 = getelementptr %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 17, i64 0, !dbg !2364
  %70 = getelementptr %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 17, i64 1, !dbg !2364
  %71 = getelementptr %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 17, i64 2, !dbg !2364
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 3, !dbg !2366
  %73 = trunc i64 %46 to i32, !dbg !2371
  br i1 %68, label %76, label %74, !dbg !2361

74:                                               ; preds = %66
  %75 = trunc i64 %46 to i32, !dbg !2372
  br label %125, !dbg !2361

76:                                               ; preds = %66, %123
  %77 = phi %struct.atom_t* [ %124, %123 ], [ %48, %66 ], !dbg !2378
  %78 = phi i64 [ %119, %123 ], [ %47, %66 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !2320, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2322, metadata !DIExpression()), !dbg !2326
  %79 = load double, double* %69, align 8, !dbg !2379, !tbaa !721
  %80 = load double, double* %70, align 8, !dbg !2379, !tbaa !721
  %81 = load double, double* %71, align 8, !dbg !2379, !tbaa !721
  %82 = getelementptr %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 17, i64 0, !dbg !2379
  %83 = load double, double* %82, align 8, !dbg !2379, !tbaa !721
  %84 = getelementptr %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 17, i64 1, !dbg !2379
  %85 = load double, double* %84, align 8, !dbg !2379, !tbaa !721
  %86 = getelementptr %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 17, i64 2, !dbg !2379
  %87 = load double, double* %86, align 8, !dbg !2379, !tbaa !721
  %88 = fsub double %80, %85, !dbg !2380
  call void @llvm.dbg.value(metadata double %88, metadata !2200, metadata !DIExpression()) #14, !dbg !2382
  %89 = insertelement <2 x double> undef, double %79, i32 0, !dbg !2383
  %90 = insertelement <2 x double> %89, double %81, i32 1, !dbg !2383
  %91 = insertelement <2 x double> undef, double %83, i32 0, !dbg !2383
  %92 = insertelement <2 x double> %91, double %87, i32 1, !dbg !2383
  %93 = fsub <2 x double> %90, %92, !dbg !2383
  %94 = fmul double %88, %88, !dbg !2384
  %95 = fmul <2 x double> %93, %93, !dbg !2385
  %96 = extractelement <2 x double> %95, i32 0, !dbg !2386
  %97 = fadd double %96, %94, !dbg !2386
  %98 = extractelement <2 x double> %95, i32 1, !dbg !2387
  %99 = fadd double %97, %98, !dbg !2387
  %100 = tail call double @sqrt(double %99) #14, !dbg !2388
  call void @llvm.dbg.value(metadata double %100, metadata !2325, metadata !DIExpression()), !dbg !2326
  %101 = fcmp ugt double %100, 1.200000e+00, !dbg !2389
  br i1 %101, label %118, label %102, !dbg !2390

102:                                              ; preds = %76
  %103 = load i32, i32* %72, align 4, !dbg !2391, !tbaa !2336
  %104 = icmp slt i32 %103, 8, !dbg !2392
  br i1 %104, label %105, label %118, !dbg !2393

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 3, !dbg !2394
  %107 = load i32, i32* %106, align 4, !dbg !2394, !tbaa !2336
  %108 = icmp slt i32 %107, 8, !dbg !2395
  br i1 %108, label %109, label %118, !dbg !2396

109:                                              ; preds = %105
  %110 = add nsw i32 %103, 1, !dbg !2397
  store i32 %110, i32* %72, align 4, !dbg !2397, !tbaa !2336
  %111 = sext i32 %103 to i64, !dbg !2398
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 4, i64 %111, !dbg !2398
  %113 = trunc i64 %78 to i32, !dbg !2399
  store i32 %113, i32* %112, align 4, !dbg !2399, !tbaa !561
  %114 = load i32, i32* %106, align 4, !dbg !2400, !tbaa !2336
  %115 = add nsw i32 %114, 1, !dbg !2400
  store i32 %115, i32* %106, align 4, !dbg !2400, !tbaa !2336
  %116 = sext i32 %114 to i64, !dbg !2401
  %117 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 4, i64 %116, !dbg !2401
  store i32 %73, i32* %117, align 4, !dbg !2402, !tbaa !561
  br label %118, !dbg !2403

118:                                              ; preds = %109, %105, %102, %76
  %119 = add nuw nsw i64 %78, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %119, metadata !2320, metadata !DIExpression()), !dbg !2326
  %120 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2405, !tbaa !768
  %121 = trunc i64 %119 to i32, !dbg !2359
  %122 = icmp sgt i32 %120, %121, !dbg !2359
  br i1 %122, label %123, label %38, !dbg !2361, !llvm.loop !2406

123:                                              ; preds = %118
  %124 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2378, !tbaa !1519
  br label %76, !dbg !2361

125:                                              ; preds = %203, %74
  %126 = phi i16* [ %49, %74 ], [ %205, %203 ], !dbg !2408
  %127 = phi %struct.atom_t* [ %48, %74 ], [ %204, %203 ], !dbg !2378
  %128 = phi i64 [ %47, %74 ], [ %199, %203 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !2320, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2322, metadata !DIExpression()), !dbg !2326
  %129 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 0, !dbg !2408
  %130 = load i8*, i8** %129, align 8, !dbg !2408, !tbaa !529
  %131 = load i8, i8* %130, align 1, !dbg !2408, !tbaa !465
  %132 = sext i8 %131 to i64, !dbg !2408
  %133 = getelementptr inbounds i16, i16* %126, i64 %132, !dbg !2408
  %134 = load i16, i16* %133, align 2, !dbg !2408, !tbaa !2352
  %135 = and i16 %134, 2048, !dbg !2408
  %136 = icmp eq i16 %135, 0, !dbg !2408
  br i1 %136, label %140, label %137, !dbg !2410

137:                                              ; preds = %125
  %138 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !2411
  %139 = load i8, i8* %138, align 1, !dbg !2411, !tbaa !465
  call void @llvm.dbg.value(metadata i1 undef, metadata !2324, metadata !DIExpression()), !dbg !2326
  br label %140, !dbg !2412

140:                                              ; preds = %125, %137
  %141 = phi i8 [ %139, %137 ], [ %131, %125 ]
  %142 = or i8 %141, 32, !dbg !2413
  %143 = icmp eq i8 %142, 104, !dbg !2413
  call void @llvm.dbg.value(metadata i1 %143, metadata !2324, metadata !DIExpression()), !dbg !2326
  %144 = load double, double* %69, align 8, !dbg !2379, !tbaa !721
  %145 = load double, double* %70, align 8, !dbg !2379, !tbaa !721
  %146 = load double, double* %71, align 8, !dbg !2379, !tbaa !721
  %147 = getelementptr %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 17, i64 0, !dbg !2379
  %148 = load double, double* %147, align 8, !dbg !2379, !tbaa !721
  %149 = getelementptr %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 17, i64 1, !dbg !2379
  %150 = load double, double* %149, align 8, !dbg !2379, !tbaa !721
  %151 = getelementptr %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 17, i64 2, !dbg !2379
  %152 = load double, double* %151, align 8, !dbg !2379, !tbaa !721
  %153 = fsub double %144, %148, !dbg !2383
  call void @llvm.dbg.value(metadata double %153, metadata !2199, metadata !DIExpression()) #14, !dbg !2382
  %154 = fsub double %145, %150, !dbg !2380
  call void @llvm.dbg.value(metadata double %154, metadata !2200, metadata !DIExpression()) #14, !dbg !2382
  %155 = fsub double %146, %152, !dbg !2414
  call void @llvm.dbg.value(metadata double %155, metadata !2201, metadata !DIExpression()) #14, !dbg !2382
  %156 = fmul double %153, %153, !dbg !2385
  %157 = fmul double %154, %154, !dbg !2384
  %158 = fadd double %156, %157, !dbg !2386
  %159 = fmul double %155, %155, !dbg !2415
  %160 = fadd double %158, %159, !dbg !2387
  %161 = tail call double @sqrt(double %160) #14, !dbg !2388
  call void @llvm.dbg.value(metadata double %161, metadata !2325, metadata !DIExpression()), !dbg !2326
  br i1 %143, label %162, label %180, !dbg !2416

162:                                              ; preds = %140
  %163 = fcmp ugt double %161, 1.200000e+00, !dbg !2389
  br i1 %163, label %198, label %164, !dbg !2390

164:                                              ; preds = %162
  %165 = load i32, i32* %72, align 4, !dbg !2391, !tbaa !2336
  %166 = icmp slt i32 %165, 8, !dbg !2392
  br i1 %166, label %167, label %198, !dbg !2393

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 3, !dbg !2394
  %169 = load i32, i32* %168, align 4, !dbg !2394, !tbaa !2336
  %170 = icmp slt i32 %169, 8, !dbg !2395
  br i1 %170, label %171, label %198, !dbg !2396

171:                                              ; preds = %167
  %172 = add nsw i32 %165, 1, !dbg !2397
  store i32 %172, i32* %72, align 4, !dbg !2397, !tbaa !2336
  %173 = sext i32 %165 to i64, !dbg !2398
  %174 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 4, i64 %173, !dbg !2398
  %175 = trunc i64 %128 to i32, !dbg !2399
  store i32 %175, i32* %174, align 4, !dbg !2399, !tbaa !561
  %176 = load i32, i32* %168, align 4, !dbg !2400, !tbaa !2336
  %177 = add nsw i32 %176, 1, !dbg !2400
  store i32 %177, i32* %168, align 4, !dbg !2400, !tbaa !2336
  %178 = sext i32 %176 to i64, !dbg !2401
  %179 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 4, i64 %178, !dbg !2401
  store i32 %75, i32* %179, align 4, !dbg !2402, !tbaa !561
  br label %198, !dbg !2403

180:                                              ; preds = %140
  %181 = fcmp ugt double %161, 1.850000e+00, !dbg !2417
  br i1 %181, label %198, label %182, !dbg !2418

182:                                              ; preds = %180
  %183 = load i32, i32* %72, align 4, !dbg !2419, !tbaa !2336
  %184 = icmp slt i32 %183, 8, !dbg !2420
  br i1 %184, label %185, label %198, !dbg !2421

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 3, !dbg !2422
  %187 = load i32, i32* %186, align 4, !dbg !2422, !tbaa !2336
  %188 = icmp slt i32 %187, 8, !dbg !2423
  br i1 %188, label %189, label %198, !dbg !2424

189:                                              ; preds = %185
  %190 = add nsw i32 %183, 1, !dbg !2425
  store i32 %190, i32* %72, align 4, !dbg !2425, !tbaa !2336
  %191 = sext i32 %183 to i64, !dbg !2427
  %192 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 4, i64 %191, !dbg !2427
  %193 = trunc i64 %128 to i32, !dbg !2428
  store i32 %193, i32* %192, align 4, !dbg !2428, !tbaa !561
  %194 = load i32, i32* %186, align 4, !dbg !2429, !tbaa !2336
  %195 = add nsw i32 %194, 1, !dbg !2429
  store i32 %195, i32* %186, align 4, !dbg !2429, !tbaa !2336
  %196 = sext i32 %194 to i64, !dbg !2430
  %197 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 4, i64 %196, !dbg !2430
  store i32 %73, i32* %197, align 4, !dbg !2431, !tbaa !561
  br label %198, !dbg !2432

198:                                              ; preds = %162, %180, %164, %167, %171, %182, %185, %189
  %199 = add nuw nsw i64 %128, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %199, metadata !2320, metadata !DIExpression()), !dbg !2326
  %200 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2405, !tbaa !768
  %201 = trunc i64 %199 to i32, !dbg !2359
  %202 = icmp sgt i32 %200, %201, !dbg !2359
  br i1 %202, label %203, label %38, !dbg !2361, !llvm.loop !2406

203:                                              ; preds = %198
  %204 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2378, !tbaa !1519
  %205 = load i16*, i16** %24, align 8, !dbg !2408, !tbaa !471
  br label %125, !dbg !2361

206:                                              ; preds = %38, %0, %21
  ret void, !dbg !2433
}

declare !dbg !330 dso_local i32 @addresidue(%struct.molecule_t*, i8*, %struct.residue_t*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #5

declare !dbg !333 dso_local i32 @addstrand(%struct.molecule_t*, i8*) local_unnamed_addr #4

declare !dbg !336 dso_local void @NAB_initatom(%struct.atom_t*, i32) local_unnamed_addr #4

declare !dbg !340 dso_local void @NAB_initres(%struct.residue_t*, i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare dso_local double @sqrt(double) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree nounwind readonly }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readnone }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!386, !387, !388}
!llvm.ident = !{!389}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mat", scope: !2, file: !3, line: 164, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "getmatrix", scope: !3, file: !3, line: 159, type: !4, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !369)
!3 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c", directory: "/home/rouzbeh/Graduate/Research")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_T", file: !8, line: 14, baseType: !9)
!8 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/nabtypes.h", directory: "/home/rouzbeh/Graduate/Research")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !11)
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !12}
!12 = !DISubrange(count: 4)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !17, retainedTypes: !34, globals: !351, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/molio.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files")
!17 = !{!18}
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 46, baseType: !20, size: 32, elements: !21)
!19 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!34 = !{!35, !40, !41, !44, !104, !107, !110, !111, !115, !144, !326, !329, !38, !330, !333, !336, !340, !13, !343, !75, !344}
!35 = !DISubprogram(name: "get_mytaskid", scope: !3, file: !3, line: 99, type: !36, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!36 = !DISubroutineType(types: !37)
!37 = !{!38}
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DISubprogram(name: "reducerror", scope: !3, file: !3, line: 100, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !38}
!44 = !DISubprogram(name: "fclose", scope: !45, file: !45, line: 213, type: !46, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!45 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!46 = !DISubroutineType(types: !47)
!47 = !{!38, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !50, line: 49, size: 1728, elements: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !68, !69, !70, !74, !76, !78, !82, !85, !87, !90, !93, !94, !95, !99, !100}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !49, file: !50, line: 51, baseType: !38, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !49, file: !50, line: 54, baseType: !13, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !49, file: !50, line: 55, baseType: !13, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !49, file: !50, line: 56, baseType: !13, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !49, file: !50, line: 57, baseType: !13, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !49, file: !50, line: 58, baseType: !13, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !49, file: !50, line: 59, baseType: !13, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !49, file: !50, line: 60, baseType: !13, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !49, file: !50, line: 61, baseType: !13, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !49, file: !50, line: 64, baseType: !13, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !49, file: !50, line: 65, baseType: !13, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !49, file: !50, line: 66, baseType: !13, size: 64, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !49, file: !50, line: 68, baseType: !65, size: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !50, line: 36, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !49, file: !50, line: 70, baseType: !48, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !49, file: !50, line: 72, baseType: !38, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !49, file: !50, line: 73, baseType: !38, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !49, file: !50, line: 74, baseType: !71, size: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 152, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!73 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !49, file: !50, line: 77, baseType: !75, size: 16, offset: 1024)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !49, file: !50, line: 78, baseType: !77, size: 8, offset: 1040)
!77 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !49, file: !50, line: 79, baseType: !79, size: 8, offset: 1048)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !49, file: !50, line: 81, baseType: !83, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !50, line: 43, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !49, file: !50, line: 89, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 153, baseType: !73)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !49, file: !50, line: 91, baseType: !88, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !50, line: 37, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !49, file: !50, line: 92, baseType: !91, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !50, line: 38, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !49, file: !50, line: 93, baseType: !48, size: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !49, file: !50, line: 94, baseType: !40, size: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !49, file: !50, line: 95, baseType: !96, size: 64, offset: 1472)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !49, file: !50, line: 96, baseType: !38, size: 32, offset: 1536)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !49, file: !50, line: 98, baseType: !101, size: 160, offset: 1568)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 20)
!104 = !DISubprogram(name: "fgets", scope: !45, file: !45, line: 564, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!105 = !DISubroutineType(types: !106)
!106 = !{!13, !13, !38, !48}
!107 = !DISubprogram(name: "rt_errormsg_s", scope: !3, file: !3, line: 107, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!108 = !DISubroutineType(types: !109)
!109 = !{!38, !38, !13, !13}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!111 = !DISubprogram(name: "free", scope: !112, file: !112, line: 565, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!112 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!113 = !DISubroutineType(types: !114)
!114 = !{null, !40}
!115 = !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 106, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118, !13}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !8, line: 118, size: 1088, elements: !120)
!120 = !{!121, !126, !128, !220, !221, !222, !223}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !119, file: !8, line: 119, baseType: !122, size: 768)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !8, line: 13, baseType: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 768, elements: !124)
!124 = !{!12, !125}
!125 = !DISubrange(count: 3)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !119, file: !8, line: 120, baseType: !127, size: 32, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !8, line: 6, baseType: !38)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !119, file: !8, line: 121, baseType: !129, size: 64, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !8, line: 93, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !8, line: 84, size: 384, elements: !132)
!132 = !{!133, !136, !137, !138, !139, !141, !142, !143}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !131, file: !8, line: 85, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !8, line: 17, baseType: !14)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !131, file: !8, line: 86, baseType: !127, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !131, file: !8, line: 87, baseType: !127, size: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !131, file: !8, line: 88, baseType: !118, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !131, file: !8, line: 89, baseType: !140, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !131, file: !8, line: 90, baseType: !127, size: 32, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !131, file: !8, line: 91, baseType: !127, size: 32, offset: 288)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !131, file: !8, line: 92, baseType: !144, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !8, line: 82, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !8, line: 63, size: 1024, elements: !148)
!148 = !{!149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !170, !171, !177, !178, !187, !188, !190}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !147, file: !8, line: 64, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !147, file: !8, line: 65, baseType: !127, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !147, file: !8, line: 66, baseType: !127, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !147, file: !8, line: 67, baseType: !127, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !147, file: !8, line: 68, baseType: !134, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !147, file: !8, line: 69, baseType: !134, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !147, file: !8, line: 70, baseType: !127, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !147, file: !8, line: 71, baseType: !127, size: 32, offset: 352)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !147, file: !8, line: 72, baseType: !127, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !147, file: !8, line: 73, baseType: !140, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !147, file: !8, line: 74, baseType: !161, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !8, line: 52, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !8, line: 47, size: 192, elements: !164)
!164 = !{!165, !167, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !163, file: !8, line: 48, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !163, file: !8, line: 49, baseType: !127, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !163, file: !8, line: 50, baseType: !127, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !163, file: !8, line: 51, baseType: !127, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !147, file: !8, line: 75, baseType: !127, size: 32, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !147, file: !8, line: 76, baseType: !172, size: 64, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !8, line: 54, baseType: !174)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 2)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !147, file: !8, line: 77, baseType: !127, size: 32, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !147, file: !8, line: 78, baseType: !179, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !8, line: 61, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !8, line: 58, size: 192, elements: !182)
!182 = !{!183, !186}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !181, file: !8, line: 59, baseType: !184, size: 128)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !185)
!185 = !{!12}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !181, file: !8, line: 60, baseType: !10, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !147, file: !8, line: 79, baseType: !127, size: 32, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !147, file: !8, line: 80, baseType: !189, size: 64, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !147, file: !8, line: 81, baseType: !191, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !8, line: 45, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !8, line: 25, size: 1408, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !219}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !193, file: !8, line: 26, baseType: !134, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !193, file: !8, line: 27, baseType: !134, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !193, file: !8, line: 28, baseType: !127, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !193, file: !8, line: 29, baseType: !127, size: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !193, file: !8, line: 30, baseType: !200, size: 256, offset: 192)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !193, file: !8, line: 31, baseType: !150, size: 64, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !193, file: !8, line: 32, baseType: !10, size: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !193, file: !8, line: 33, baseType: !10, size: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !193, file: !8, line: 34, baseType: !10, size: 64, offset: 640)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !193, file: !8, line: 35, baseType: !10, size: 64, offset: 704)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !193, file: !8, line: 36, baseType: !134, size: 64, offset: 768)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !193, file: !8, line: 37, baseType: !127, size: 32, offset: 832)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !193, file: !8, line: 38, baseType: !10, size: 64, offset: 896)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !193, file: !8, line: 39, baseType: !10, size: 64, offset: 960)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !193, file: !8, line: 40, baseType: !127, size: 32, offset: 1024)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !193, file: !8, line: 41, baseType: !127, size: 32, offset: 1056)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !193, file: !8, line: 42, baseType: !134, size: 64, offset: 1088)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !193, file: !8, line: 43, baseType: !216, size: 192, offset: 1152)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !8, line: 12, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !218)
!218 = !{!125}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !193, file: !8, line: 44, baseType: !10, size: 64, offset: 1344)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !119, file: !8, line: 122, baseType: !127, size: 32, offset: 896)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !119, file: !8, line: 123, baseType: !127, size: 32, offset: 928)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !119, file: !8, line: 124, baseType: !127, size: 32, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !119, file: !8, line: 125, baseType: !224, size: 64, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !8, line: 115, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !8, line: 95, size: 5760, elements: !227)
!227 = !{!228, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !226, file: !8, line: 96, baseType: !229, size: 648)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 81)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !226, file: !8, line: 97, baseType: !127, size: 32, offset: 672)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !226, file: !8, line: 97, baseType: !127, size: 32, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !226, file: !8, line: 97, baseType: !127, size: 32, offset: 736)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !226, file: !8, line: 98, baseType: !127, size: 32, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !226, file: !8, line: 98, baseType: !127, size: 32, offset: 800)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !226, file: !8, line: 98, baseType: !127, size: 32, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !226, file: !8, line: 98, baseType: !127, size: 32, offset: 864)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !226, file: !8, line: 98, baseType: !127, size: 32, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !226, file: !8, line: 98, baseType: !127, size: 32, offset: 928)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !226, file: !8, line: 99, baseType: !127, size: 32, offset: 960)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !226, file: !8, line: 99, baseType: !127, size: 32, offset: 992)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !226, file: !8, line: 99, baseType: !127, size: 32, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !226, file: !8, line: 99, baseType: !127, size: 32, offset: 1056)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !226, file: !8, line: 99, baseType: !127, size: 32, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !226, file: !8, line: 99, baseType: !127, size: 32, offset: 1120)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !226, file: !8, line: 100, baseType: !127, size: 32, offset: 1152)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !226, file: !8, line: 100, baseType: !127, size: 32, offset: 1184)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !226, file: !8, line: 100, baseType: !127, size: 32, offset: 1216)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !226, file: !8, line: 100, baseType: !127, size: 32, offset: 1248)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !226, file: !8, line: 100, baseType: !127, size: 32, offset: 1280)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !226, file: !8, line: 100, baseType: !127, size: 32, offset: 1312)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !226, file: !8, line: 101, baseType: !127, size: 32, offset: 1344)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !226, file: !8, line: 101, baseType: !127, size: 32, offset: 1376)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !226, file: !8, line: 101, baseType: !127, size: 32, offset: 1408)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !226, file: !8, line: 101, baseType: !127, size: 32, offset: 1440)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !226, file: !8, line: 101, baseType: !127, size: 32, offset: 1472)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !226, file: !8, line: 101, baseType: !127, size: 32, offset: 1504)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !226, file: !8, line: 101, baseType: !127, size: 32, offset: 1536)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !226, file: !8, line: 101, baseType: !127, size: 32, offset: 1568)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !226, file: !8, line: 102, baseType: !127, size: 32, offset: 1600)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !226, file: !8, line: 102, baseType: !127, size: 32, offset: 1632)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !226, file: !8, line: 102, baseType: !127, size: 32, offset: 1664)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !226, file: !8, line: 103, baseType: !134, size: 64, offset: 1728)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !226, file: !8, line: 103, baseType: !134, size: 64, offset: 1792)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !226, file: !8, line: 103, baseType: !134, size: 64, offset: 1856)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !226, file: !8, line: 103, baseType: !134, size: 64, offset: 1920)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 1984)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 2048)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 2112)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 2176)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 2240)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 2304)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 2368)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 2432)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !226, file: !8, line: 104, baseType: !269, size: 64, offset: 2496)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !226, file: !8, line: 105, baseType: !269, size: 64, offset: 2560)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !226, file: !8, line: 105, baseType: !269, size: 64, offset: 2624)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !226, file: !8, line: 105, baseType: !269, size: 64, offset: 2688)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !226, file: !8, line: 105, baseType: !269, size: 64, offset: 2752)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !226, file: !8, line: 105, baseType: !269, size: 64, offset: 2816)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !226, file: !8, line: 105, baseType: !269, size: 64, offset: 2880)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !226, file: !8, line: 105, baseType: !269, size: 64, offset: 2944)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !226, file: !8, line: 106, baseType: !217, size: 192, offset: 3008)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !226, file: !8, line: 106, baseType: !10, size: 64, offset: 3200)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !226, file: !8, line: 106, baseType: !10, size: 64, offset: 3264)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !226, file: !8, line: 106, baseType: !10, size: 64, offset: 3328)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !226, file: !8, line: 106, baseType: !10, size: 64, offset: 3392)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !226, file: !8, line: 106, baseType: !10, size: 64, offset: 3456)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !226, file: !8, line: 107, baseType: !189, size: 64, offset: 3520)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !226, file: !8, line: 107, baseType: !189, size: 64, offset: 3584)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !226, file: !8, line: 107, baseType: !189, size: 64, offset: 3648)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !226, file: !8, line: 107, baseType: !189, size: 64, offset: 3712)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !226, file: !8, line: 107, baseType: !189, size: 64, offset: 3776)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !226, file: !8, line: 107, baseType: !189, size: 64, offset: 3840)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !226, file: !8, line: 108, baseType: !189, size: 64, offset: 3904)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !226, file: !8, line: 108, baseType: !189, size: 64, offset: 3968)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !226, file: !8, line: 108, baseType: !189, size: 64, offset: 4032)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !226, file: !8, line: 108, baseType: !189, size: 64, offset: 4096)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !226, file: !8, line: 108, baseType: !189, size: 64, offset: 4160)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !226, file: !8, line: 108, baseType: !189, size: 64, offset: 4224)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !226, file: !8, line: 109, baseType: !189, size: 64, offset: 4288)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !226, file: !8, line: 109, baseType: !189, size: 64, offset: 4352)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !226, file: !8, line: 109, baseType: !189, size: 64, offset: 4416)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !226, file: !8, line: 109, baseType: !189, size: 64, offset: 4480)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !226, file: !8, line: 109, baseType: !189, size: 64, offset: 4544)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !226, file: !8, line: 110, baseType: !189, size: 64, offset: 4608)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !226, file: !8, line: 110, baseType: !189, size: 64, offset: 4672)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !226, file: !8, line: 110, baseType: !189, size: 64, offset: 4736)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !226, file: !8, line: 110, baseType: !189, size: 64, offset: 4800)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !226, file: !8, line: 110, baseType: !189, size: 64, offset: 4864)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !226, file: !8, line: 111, baseType: !189, size: 64, offset: 4928)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !226, file: !8, line: 111, baseType: !189, size: 64, offset: 4992)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !226, file: !8, line: 111, baseType: !189, size: 64, offset: 5056)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !226, file: !8, line: 111, baseType: !189, size: 64, offset: 5120)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !226, file: !8, line: 111, baseType: !189, size: 64, offset: 5184)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !226, file: !8, line: 111, baseType: !189, size: 64, offset: 5248)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !226, file: !8, line: 112, baseType: !189, size: 64, offset: 5312)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !226, file: !8, line: 112, baseType: !189, size: 64, offset: 5376)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !226, file: !8, line: 112, baseType: !189, size: 64, offset: 5440)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !226, file: !8, line: 112, baseType: !189, size: 64, offset: 5504)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !226, file: !8, line: 113, baseType: !189, size: 64, offset: 5568)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !226, file: !8, line: 113, baseType: !189, size: 64, offset: 5632)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !226, file: !8, line: 114, baseType: !269, size: 64, offset: 5696)
!326 = !DISubprogram(name: "newmolecule", scope: !3, file: !3, line: 103, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!327 = !DISubroutineType(types: !328)
!328 = !{!118}
!329 = !DISubprogram(name: "ggets", scope: !3, file: !3, line: 101, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!330 = !DISubprogram(name: "addresidue", scope: !3, file: !3, line: 105, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!331 = !DISubroutineType(types: !332)
!332 = !{!38, !118, !13, !150}
!333 = !DISubprogram(name: "addstrand", scope: !3, file: !3, line: 104, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!334 = !DISubroutineType(types: !335)
!335 = !{!38, !118, !13}
!336 = !DISubprogram(name: "NAB_initatom", scope: !3, file: !3, line: 89, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339, !38}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!340 = !DISubprogram(name: "NAB_initres", scope: !3, file: !3, line: 88, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !150, !38}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "CID_T", file: !3, line: 62, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cid_t", file: !3, line: 58, size: 128, elements: !347)
!347 = !{!348, !349, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !346, file: !3, line: 59, baseType: !38, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "c_last", scope: !346, file: !3, line: 60, baseType: !38, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "c_cids", scope: !346, file: !3, line: 61, baseType: !13, size: 64, offset: 64)
!351 = !{!0, !352, !360, !362, !364}
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "init", scope: !354, file: !3, line: 774, type: !38, isLocal: true, isDefinition: true)
!354 = distinct !DISubprogram(name: "init_atab", scope: !3, file: !3, line: 772, type: !355, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{null}
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "a", scope: !354, file: !3, line: 775, type: !38)
!359 = !DILocalVariable(name: "ap", scope: !354, file: !3, line: 776, type: !191)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "n_atab", scope: !15, file: !3, line: 70, type: !38, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "res", scope: !15, file: !3, line: 75, type: !146, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "atab", scope: !15, file: !3, line: 69, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 1408000, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 1000)
!369 = !{!370, !371, !375, !379, !380, !381, !382, !383, !384}
!370 = !DILocalVariable(name: "fname", arg: 1, scope: !2, file: !3, line: 159, type: !13)
!371 = !DILocalVariable(name: "fp", scope: !2, file: !3, line: 161, type: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !374, line: 7, baseType: !49)
!374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!375 = !DILocalVariable(name: "line", scope: !2, file: !3, line: 162, type: !376)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 256)
!379 = !DILocalVariable(name: "r", scope: !2, file: !3, line: 163, type: !38)
!380 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 163, type: !38)
!381 = !DILocalVariable(name: "cnt", scope: !2, file: !3, line: 163, type: !38)
!382 = !DILocalVariable(name: "ptr", scope: !2, file: !3, line: 165, type: !40)
!383 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 166, type: !38)
!384 = !DILabel(scope: !2, name: "CLEAN_UP", file: !3, line: 210)
!385 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!386 = !{i32 7, !"Dwarf Version", i32 4}
!387 = !{i32 2, !"Debug Info Version", i32 3}
!388 = !{i32 1, !"wchar_size", i32 4}
!389 = !{!"clang version 10.0.0-4ubuntu1 "}
!390 = distinct !DISubprogram(name: "getpdb", scope: !3, file: !3, line: 121, type: !391, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !395)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !13, !13}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !8, line: 126, baseType: !119)
!395 = !{!396, !397, !398, !399, !400}
!396 = !DILocalVariable(name: "fname", arg: 1, scope: !390, file: !3, line: 121, type: !13)
!397 = !DILocalVariable(name: "options", arg: 2, scope: !390, file: !3, line: 121, type: !13)
!398 = !DILocalVariable(name: "fp", scope: !390, file: !3, line: 123, type: !372)
!399 = !DILocalVariable(name: "mol", scope: !390, file: !3, line: 124, type: !393)
!400 = !DILocalVariable(name: "ier", scope: !390, file: !3, line: 125, type: !38)
!401 = !DILocalVariable(name: "line", scope: !402, file: !3, line: 470, type: !447)
!402 = distinct !DISubprogram(name: "fgetpdb", scope: !3, file: !3, line: 464, type: !403, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!393, !372, !13}
!405 = !{!406, !407, !408, !409, !410, !411, !412, !401, !413, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !446}
!406 = !DILocalVariable(name: "fp", arg: 1, scope: !402, file: !3, line: 464, type: !372)
!407 = !DILocalVariable(name: "options", arg: 2, scope: !402, file: !3, line: 464, type: !13)
!408 = !DILocalVariable(name: "mol", scope: !402, file: !3, line: 466, type: !393)
!409 = !DILocalVariable(name: "ap", scope: !402, file: !3, line: 467, type: !191)
!410 = !DILocalVariable(name: "l_cid", scope: !402, file: !3, line: 468, type: !38)
!411 = !DILocalVariable(name: "cid", scope: !402, file: !3, line: 468, type: !38)
!412 = !DILocalVariable(name: "nchains", scope: !402, file: !3, line: 469, type: !38)
!413 = !DILocalVariable(name: "sname", scope: !402, file: !3, line: 471, type: !414)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 10)
!417 = !DILocalVariable(name: "aname", scope: !402, file: !3, line: 472, type: !414)
!418 = !DILocalVariable(name: "rname", scope: !402, file: !3, line: 473, type: !414)
!419 = !DILocalVariable(name: "l_rname", scope: !402, file: !3, line: 473, type: !414)
!420 = !DILocalVariable(name: "rid", scope: !402, file: !3, line: 474, type: !414)
!421 = !DILocalVariable(name: "l_rid", scope: !402, file: !3, line: 474, type: !414)
!422 = !DILocalVariable(name: "field", scope: !402, file: !3, line: 475, type: !414)
!423 = !DILocalVariable(name: "np", scope: !402, file: !3, line: 476, type: !13)
!424 = !DILocalVariable(name: "np1", scope: !402, file: !3, line: 476, type: !13)
!425 = !DILocalVariable(name: "rnum", scope: !402, file: !3, line: 477, type: !38)
!426 = !DILocalVariable(name: "l_rnum", scope: !402, file: !3, line: 477, type: !38)
!427 = !DILocalVariable(name: "x", scope: !402, file: !3, line: 478, type: !10)
!428 = !DILocalVariable(name: "y", scope: !402, file: !3, line: 478, type: !10)
!429 = !DILocalVariable(name: "z", scope: !402, file: !3, line: 478, type: !10)
!430 = !DILocalVariable(name: "q", scope: !402, file: !3, line: 478, type: !10)
!431 = !DILocalVariable(name: "r", scope: !402, file: !3, line: 478, type: !10)
!432 = !DILocalVariable(name: "occ", scope: !402, file: !3, line: 478, type: !10)
!433 = !DILocalVariable(name: "bfact", scope: !402, file: !3, line: 478, type: !10)
!434 = !DILocalVariable(name: "i", scope: !402, file: !3, line: 479, type: !38)
!435 = !DILocalVariable(name: "temp", scope: !402, file: !3, line: 480, type: !14)
!436 = !DILocalVariable(name: "loptions", scope: !402, file: !3, line: 481, type: !376)
!437 = !DILocalVariable(name: "sp", scope: !438, file: !3, line: 661, type: !129)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 660, column: 17)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 639, column: 31)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 639, column: 17)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 512, column: 46)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 511, column: 13)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 496, column: 37)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 496, column: 5)
!445 = distinct !DILexicalBlock(scope: !402, file: !3, line: 496, column: 5)
!446 = !DILocalVariable(name: "spl", scope: !438, file: !3, line: 661, type: !129)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 656, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 82)
!450 = !DILocation(line: 470, column: 10, scope: !402, inlinedAt: !451)
!451 = distinct !DILocation(line: 148, column: 11, scope: !390)
!452 = !DILocation(line: 471, column: 10, scope: !402, inlinedAt: !451)
!453 = !DILocation(line: 472, column: 10, scope: !402, inlinedAt: !451)
!454 = !DILocation(line: 473, column: 10, scope: !402, inlinedAt: !451)
!455 = !DILocation(line: 473, column: 21, scope: !402, inlinedAt: !451)
!456 = !DILocation(line: 474, column: 10, scope: !402, inlinedAt: !451)
!457 = !DILocation(line: 474, column: 19, scope: !402, inlinedAt: !451)
!458 = !DILocation(line: 475, column: 10, scope: !402, inlinedAt: !451)
!459 = !DILocation(line: 481, column: 10, scope: !402, inlinedAt: !451)
!460 = !DILocation(line: 0, scope: !390)
!461 = !DILocation(line: 127, column: 10, scope: !462)
!462 = distinct !DILexicalBlock(scope: !390, file: !3, line: 127, column: 9)
!463 = !DILocation(line: 127, column: 16, scope: !462)
!464 = !DILocation(line: 127, column: 20, scope: !462)
!465 = !{!466, !466, i64 0}
!466 = !{!"omnipotent char", !467, i64 0}
!467 = !{!"Simple C/C++ TBAA"}
!468 = !DILocation(line: 127, column: 9, scope: !390)
!469 = !DILocation(line: 128, column: 14, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !3, line: 127, column: 28)
!471 = !{!472, !472, i64 0}
!472 = !{!"any pointer", !466, i64 0}
!473 = !DILocation(line: 129, column: 5, scope: !470)
!474 = !DILocation(line: 129, column: 17, scope: !475)
!475 = distinct !DILexicalBlock(scope: !462, file: !3, line: 129, column: 16)
!476 = !DILocation(line: 129, column: 16, scope: !462)
!477 = !DILocation(line: 130, column: 14, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !3, line: 129, column: 37)
!479 = !DILocation(line: 131, column: 5, scope: !478)
!480 = !DILocation(line: 133, column: 13, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 133, column: 13)
!482 = distinct !DILexicalBlock(scope: !475, file: !3, line: 131, column: 12)
!483 = !DILocation(line: 133, column: 28, scope: !481)
!484 = !DILocation(line: 133, column: 13, scope: !482)
!485 = !DILocation(line: 134, column: 23, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 134, column: 17)
!487 = distinct !DILexicalBlock(scope: !481, file: !3, line: 133, column: 34)
!488 = !DILocation(line: 134, column: 42, scope: !486)
!489 = !DILocation(line: 134, column: 17, scope: !487)
!490 = !DILocation(line: 135, column: 25, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !3, line: 134, column: 51)
!492 = !DILocation(line: 135, column: 17, scope: !491)
!493 = !DILocation(line: 137, column: 13, scope: !491)
!494 = !DILocation(line: 0, scope: !482)
!495 = !DILocation(line: 139, column: 9, scope: !482)
!496 = !DILocation(line: 143, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !482, file: !3, line: 143, column: 13)
!498 = !DILocation(line: 143, column: 28, scope: !497)
!499 = !DILocation(line: 143, column: 13, scope: !482)
!500 = !DILocation(line: 0, scope: !462)
!501 = !DILocation(line: 0, scope: !402, inlinedAt: !451)
!502 = !DILocation(line: 470, column: 5, scope: !402, inlinedAt: !451)
!503 = !DILocation(line: 471, column: 5, scope: !402, inlinedAt: !451)
!504 = !DILocation(line: 472, column: 5, scope: !402, inlinedAt: !451)
!505 = !DILocation(line: 473, column: 5, scope: !402, inlinedAt: !451)
!506 = !DILocation(line: 474, column: 5, scope: !402, inlinedAt: !451)
!507 = !DILocation(line: 475, column: 5, scope: !402, inlinedAt: !451)
!508 = !DILocation(line: 477, column: 5, scope: !402, inlinedAt: !451)
!509 = !DILocation(line: 478, column: 5, scope: !402, inlinedAt: !451)
!510 = !DILocation(line: 481, column: 5, scope: !402, inlinedAt: !451)
!511 = !DILocation(line: 483, column: 17, scope: !512, inlinedAt: !451)
!512 = distinct !DILexicalBlock(scope: !402, file: !3, line: 483, column: 9)
!513 = !DILocation(line: 483, column: 9, scope: !402, inlinedAt: !451)
!514 = !DILocation(line: 484, column: 19, scope: !512, inlinedAt: !451)
!515 = !DILocation(line: 484, column: 9, scope: !512, inlinedAt: !451)
!516 = !DILocation(line: 486, column: 9, scope: !512, inlinedAt: !451)
!517 = !DILocation(line: 488, column: 5, scope: !402, inlinedAt: !451)
!518 = !DILocation(line: 778, column: 10, scope: !519, inlinedAt: !520)
!519 = distinct !DILexicalBlock(scope: !354, file: !3, line: 778, column: 9)
!520 = distinct !DILocation(line: 489, column: 5, scope: !402, inlinedAt: !451)
!521 = !DILocation(line: 778, column: 9, scope: !354, inlinedAt: !520)
!522 = !DILocation(line: 0, scope: !354, inlinedAt: !520)
!523 = !DILocation(line: 781, column: 35, scope: !524, inlinedAt: !520)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 780, column: 54)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 780, column: 5)
!526 = distinct !DILexicalBlock(scope: !354, file: !3, line: 780, column: 5)
!527 = !DILocation(line: 781, column: 13, scope: !524, inlinedAt: !520)
!528 = !DILocation(line: 781, column: 24, scope: !524, inlinedAt: !520)
!529 = !{!530, !472, i64 0}
!530 = !{!"atom_t", !472, i64 0, !472, i64 8, !531, i64 16, !531, i64 20, !466, i64 24, !472, i64 56, !532, i64 64, !532, i64 72, !532, i64 80, !532, i64 88, !472, i64 96, !531, i64 104, !532, i64 112, !532, i64 120, !531, i64 128, !531, i64 132, !472, i64 136, !466, i64 144, !532, i64 168}
!531 = !{!"int", !466, i64 0}
!532 = !{!"double", !466, i64 0}
!533 = !DILocation(line: 782, column: 28, scope: !534, inlinedAt: !520)
!534 = distinct !DILexicalBlock(scope: !524, file: !3, line: 782, column: 13)
!535 = !DILocation(line: 782, column: 13, scope: !524, inlinedAt: !520)
!536 = !DILocation(line: 783, column: 21, scope: !537, inlinedAt: !520)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 782, column: 37)
!538 = !DILocation(line: 783, column: 13, scope: !537, inlinedAt: !520)
!539 = !DILocation(line: 784, column: 13, scope: !537, inlinedAt: !520)
!540 = !DILocation(line: 786, column: 25, scope: !524, inlinedAt: !520)
!541 = !DILocation(line: 787, column: 13, scope: !524, inlinedAt: !520)
!542 = !DILocation(line: 787, column: 24, scope: !524, inlinedAt: !520)
!543 = !{!530, !472, i64 8}
!544 = !DILocation(line: 788, column: 13, scope: !524, inlinedAt: !520)
!545 = !DILocation(line: 788, column: 23, scope: !524, inlinedAt: !520)
!546 = !{!530, !472, i64 96}
!547 = !DILocation(line: 789, column: 13, scope: !524, inlinedAt: !520)
!548 = !DILocation(line: 789, column: 24, scope: !524, inlinedAt: !520)
!549 = !{!530, !472, i64 136}
!550 = !DILocation(line: 780, column: 44, scope: !525, inlinedAt: !520)
!551 = !DILocation(line: 780, column: 50, scope: !525, inlinedAt: !520)
!552 = !DILocation(line: 780, column: 30, scope: !525, inlinedAt: !520)
!553 = !DILocation(line: 780, column: 5, scope: !526, inlinedAt: !520)
!554 = distinct !{!554, !553, !555}
!555 = !DILocation(line: 790, column: 5, scope: !526, inlinedAt: !520)
!556 = !DILocation(line: 791, column: 10, scope: !354, inlinedAt: !520)
!557 = !DILocation(line: 792, column: 1, scope: !354, inlinedAt: !520)
!558 = !DILocation(line: 491, column: 11, scope: !402, inlinedAt: !451)
!559 = !DILocation(line: 494, column: 14, scope: !402, inlinedAt: !451)
!560 = !DILocation(line: 496, column: 30, scope: !445, inlinedAt: !451)
!561 = !{!531, !531, i64 0}
!562 = !DILocation(line: 503, column: 13, scope: !563, inlinedAt: !451)
!563 = distinct !DILexicalBlock(scope: !443, file: !3, line: 503, column: 13)
!564 = !DILocation(line: 503, column: 43, scope: !563, inlinedAt: !451)
!565 = !DILocation(line: 503, column: 13, scope: !443, inlinedAt: !451)
!566 = !DILocation(line: 0, scope: !443, inlinedAt: !451)
!567 = !DILocation(line: 0, scope: !442, inlinedAt: !451)
!568 = !DILocation(line: 0, scope: !441, inlinedAt: !451)
!569 = !DILocation(line: 0, scope: !570, inlinedAt: !451)
!570 = distinct !DILexicalBlock(scope: !441, file: !3, line: 531, column: 17)
!571 = !DILocation(line: 0, scope: !572, inlinedAt: !451)
!572 = distinct !DILexicalBlock(scope: !441, file: !3, line: 533, column: 17)
!573 = !DILocation(line: 0, scope: !574, inlinedAt: !451)
!574 = distinct !DILexicalBlock(scope: !441, file: !3, line: 557, column: 17)
!575 = !DILocation(line: 0, scope: !576, inlinedAt: !451)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 587, column: 43)
!577 = distinct !DILexicalBlock(scope: !441, file: !3, line: 587, column: 17)
!578 = !DILocation(line: 0, scope: !579, inlinedAt: !451)
!579 = distinct !DILexicalBlock(scope: !577, file: !3, line: 611, column: 20)
!580 = !DILocation(line: 0, scope: !581, inlinedAt: !451)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 654, column: 22)
!582 = distinct !DILexicalBlock(scope: !439, file: !3, line: 652, column: 21)
!583 = !DILocation(line: 0, scope: !584, inlinedAt: !451)
!584 = distinct !DILexicalBlock(scope: !438, file: !3, line: 663, column: 21)
!585 = !DILocation(line: 507, column: 18, scope: !586, inlinedAt: !451)
!586 = distinct !DILexicalBlock(scope: !443, file: !3, line: 507, column: 9)
!587 = !DILocation(line: 507, column: 34, scope: !588, inlinedAt: !451)
!588 = distinct !DILexicalBlock(scope: !586, file: !3, line: 507, column: 9)
!589 = !DILocation(line: 507, column: 9, scope: !586, inlinedAt: !451)
!590 = !DILocation(line: 508, column: 21, scope: !588, inlinedAt: !451)
!591 = !DILocation(line: 509, column: 18, scope: !443, inlinedAt: !451)
!592 = !DILocation(line: 511, column: 13, scope: !442, inlinedAt: !451)
!593 = !DILocation(line: 511, column: 43, scope: !442, inlinedAt: !451)
!594 = !DILocation(line: 512, column: 13, scope: !442, inlinedAt: !451)
!595 = !DILocation(line: 512, column: 40, scope: !442, inlinedAt: !451)
!596 = !DILocation(line: 511, column: 13, scope: !443, inlinedAt: !451)
!597 = !DILocation(line: 513, column: 13, scope: !441, inlinedAt: !451)
!598 = !DILocation(line: 514, column: 33, scope: !441, inlinedAt: !451)
!599 = !DILocation(line: 516, column: 18, scope: !600, inlinedAt: !451)
!600 = distinct !DILexicalBlock(scope: !441, file: !3, line: 516, column: 13)
!601 = !DILocation(line: 0, scope: !600, inlinedAt: !451)
!602 = !DILocation(line: 516, column: 36, scope: !603, inlinedAt: !451)
!603 = distinct !DILexicalBlock(scope: !600, file: !3, line: 516, column: 13)
!604 = !DILocation(line: 516, column: 13, scope: !600, inlinedAt: !451)
!605 = !DILocation(line: 518, column: 25, scope: !606, inlinedAt: !451)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 517, column: 21)
!607 = distinct !DILexicalBlock(scope: !603, file: !3, line: 516, column: 47)
!608 = !DILocation(line: 518, column: 28, scope: !606, inlinedAt: !451)
!609 = !DILocation(line: 518, column: 21, scope: !606, inlinedAt: !451)
!610 = !DILocation(line: 516, column: 43, scope: !603, inlinedAt: !451)
!611 = !DILocation(line: 516, column: 13, scope: !603, inlinedAt: !451)
!612 = distinct !{!612, !604, !613}
!613 = !DILocation(line: 519, column: 13, scope: !600, inlinedAt: !451)
!614 = !DILocation(line: 520, column: 18, scope: !441, inlinedAt: !451)
!615 = !DILocation(line: 523, column: 17, scope: !616, inlinedAt: !451)
!616 = distinct !DILexicalBlock(scope: !441, file: !3, line: 523, column: 17)
!617 = !DILocation(line: 523, column: 33, scope: !616, inlinedAt: !451)
!618 = !DILocation(line: 525, column: 38, scope: !619, inlinedAt: !451)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 525, column: 17)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 525, column: 17)
!621 = distinct !DILexicalBlock(scope: !616, file: !3, line: 523, column: 72)
!622 = !DILocation(line: 525, column: 33, scope: !619, inlinedAt: !451)
!623 = !DILocation(line: 525, column: 31, scope: !619, inlinedAt: !451)
!624 = !DILocation(line: 525, column: 17, scope: !620, inlinedAt: !451)
!625 = !DILocation(line: 526, column: 40, scope: !619, inlinedAt: !451)
!626 = !DILocation(line: 526, column: 32, scope: !619, inlinedAt: !451)
!627 = !DILocation(line: 526, column: 21, scope: !619, inlinedAt: !451)
!628 = !DILocation(line: 526, column: 30, scope: !619, inlinedAt: !451)
!629 = distinct !{!629, !624, !630}
!630 = !DILocation(line: 526, column: 43, scope: !620, inlinedAt: !451)
!631 = !DILocation(line: 0, scope: !620, inlinedAt: !451)
!632 = !DILocation(line: 527, column: 17, scope: !621, inlinedAt: !451)
!633 = !DILocation(line: 527, column: 26, scope: !621, inlinedAt: !451)
!634 = !DILocation(line: 528, column: 13, scope: !621, inlinedAt: !451)
!635 = !DILocation(line: 531, column: 17, scope: !570, inlinedAt: !451)
!636 = !DILocation(line: 531, column: 26, scope: !570, inlinedAt: !451)
!637 = !DILocation(line: 531, column: 17, scope: !441, inlinedAt: !451)
!638 = !DILocation(line: 532, column: 26, scope: !570, inlinedAt: !451)
!639 = !DILocation(line: 532, column: 17, scope: !570, inlinedAt: !451)
!640 = !DILocation(line: 533, column: 18, scope: !572, inlinedAt: !451)
!641 = !DILocation(line: 533, column: 17, scope: !441, inlinedAt: !451)
!642 = !DILocation(line: 534, column: 17, scope: !572, inlinedAt: !451)
!643 = !DILocation(line: 536, column: 13, scope: !441, inlinedAt: !451)
!644 = !DILocation(line: 537, column: 33, scope: !441, inlinedAt: !451)
!645 = !DILocation(line: 538, column: 18, scope: !646, inlinedAt: !451)
!646 = distinct !DILexicalBlock(scope: !441, file: !3, line: 538, column: 13)
!647 = !DILocation(line: 0, scope: !646, inlinedAt: !451)
!648 = !DILocation(line: 538, column: 36, scope: !649, inlinedAt: !451)
!649 = distinct !DILexicalBlock(scope: !646, file: !3, line: 538, column: 13)
!650 = !DILocation(line: 538, column: 13, scope: !646, inlinedAt: !451)
!651 = !DILocation(line: 540, column: 25, scope: !652, inlinedAt: !451)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 539, column: 21)
!653 = distinct !DILexicalBlock(scope: !649, file: !3, line: 538, column: 47)
!654 = !DILocation(line: 540, column: 28, scope: !652, inlinedAt: !451)
!655 = !DILocation(line: 540, column: 21, scope: !652, inlinedAt: !451)
!656 = !DILocation(line: 538, column: 43, scope: !649, inlinedAt: !451)
!657 = !DILocation(line: 538, column: 13, scope: !649, inlinedAt: !451)
!658 = distinct !{!658, !650, !659}
!659 = !DILocation(line: 541, column: 13, scope: !646, inlinedAt: !451)
!660 = !DILocation(line: 542, column: 18, scope: !441, inlinedAt: !451)
!661 = !DILocation(line: 551, column: 18, scope: !662, inlinedAt: !451)
!662 = distinct !DILexicalBlock(scope: !441, file: !3, line: 551, column: 17)
!663 = !DILocation(line: 551, column: 17, scope: !441, inlinedAt: !451)
!664 = !DILocation(line: 553, column: 48, scope: !665, inlinedAt: !451)
!665 = distinct !DILexicalBlock(scope: !441, file: !3, line: 553, column: 17)
!666 = !DILocation(line: 552, column: 28, scope: !662, inlinedAt: !451)
!667 = !{!668, !531, i64 44}
!668 = !{!"residue_t", !472, i64 0, !531, i64 8, !531, i64 12, !531, i64 16, !472, i64 24, !472, i64 32, !531, i64 40, !531, i64 44, !531, i64 48, !472, i64 56, !472, i64 64, !531, i64 72, !472, i64 80, !531, i64 88, !472, i64 96, !531, i64 104, !472, i64 112, !472, i64 120}
!669 = !DILocation(line: 552, column: 17, scope: !662, inlinedAt: !451)
!670 = !DILocation(line: 553, column: 18, scope: !665, inlinedAt: !451)
!671 = !DILocation(line: 553, column: 55, scope: !665, inlinedAt: !451)
!672 = !DILocation(line: 553, column: 41, scope: !665, inlinedAt: !451)
!673 = !DILocation(line: 554, column: 17, scope: !665, inlinedAt: !451)
!674 = !DILocation(line: 557, column: 18, scope: !574, inlinedAt: !451)
!675 = !DILocation(line: 557, column: 17, scope: !441, inlinedAt: !451)
!676 = !DILocation(line: 558, column: 17, scope: !574, inlinedAt: !451)
!677 = !DILocation(line: 559, column: 17, scope: !441, inlinedAt: !451)
!678 = !DILocation(line: 560, column: 17, scope: !679, inlinedAt: !451)
!679 = distinct !DILexicalBlock(scope: !441, file: !3, line: 559, column: 17)
!680 = !DILocation(line: 562, column: 17, scope: !681, inlinedAt: !451)
!681 = distinct !DILexicalBlock(scope: !441, file: !3, line: 561, column: 17)
!682 = !DILocation(line: 564, column: 17, scope: !683, inlinedAt: !451)
!683 = distinct !DILexicalBlock(scope: !441, file: !3, line: 563, column: 17)
!684 = !DILocation(line: 566, column: 17, scope: !685, inlinedAt: !451)
!685 = distinct !DILexicalBlock(scope: !441, file: !3, line: 565, column: 17)
!686 = !DILocation(line: 569, column: 13, scope: !441, inlinedAt: !451)
!687 = !DILocation(line: 570, column: 30, scope: !441, inlinedAt: !451)
!688 = !DILocation(line: 572, column: 19, scope: !441, inlinedAt: !451)
!689 = !DILocation(line: 573, column: 13, scope: !441, inlinedAt: !451)
!690 = !DILocation(line: 575, column: 13, scope: !441, inlinedAt: !451)
!691 = !DILocation(line: 576, column: 33, scope: !441, inlinedAt: !451)
!692 = !DILocalVariable(name: "__nptr", arg: 1, scope: !693, file: !694, line: 25, type: !697)
!693 = distinct !DISubprogram(name: "atof", scope: !694, file: !694, line: 25, type: !695, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !699)
!694 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!695 = !DISubroutineType(types: !696)
!696 = !{!10, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!699 = !{!692}
!700 = !DILocation(line: 0, scope: !693, inlinedAt: !701)
!701 = distinct !DILocation(line: 577, column: 17, scope: !441, inlinedAt: !451)
!702 = !DILocation(line: 27, column: 10, scope: !693, inlinedAt: !701)
!703 = !DILocation(line: 579, column: 13, scope: !441, inlinedAt: !451)
!704 = !DILocation(line: 580, column: 33, scope: !441, inlinedAt: !451)
!705 = !DILocation(line: 0, scope: !693, inlinedAt: !706)
!706 = distinct !DILocation(line: 581, column: 17, scope: !441, inlinedAt: !451)
!707 = !DILocation(line: 27, column: 10, scope: !693, inlinedAt: !706)
!708 = !DILocation(line: 583, column: 13, scope: !441, inlinedAt: !451)
!709 = !DILocation(line: 584, column: 33, scope: !441, inlinedAt: !451)
!710 = !DILocation(line: 0, scope: !693, inlinedAt: !711)
!711 = distinct !DILocation(line: 585, column: 17, scope: !441, inlinedAt: !451)
!712 = !DILocation(line: 27, column: 10, scope: !693, inlinedAt: !711)
!713 = !DILocation(line: 587, column: 17, scope: !577, inlinedAt: !451)
!714 = !DILocation(line: 587, column: 17, scope: !441, inlinedAt: !451)
!715 = !DILocation(line: 603, column: 17, scope: !576, inlinedAt: !451)
!716 = !DILocation(line: 611, column: 13, scope: !576, inlinedAt: !451)
!717 = !DILocation(line: 613, column: 22, scope: !718, inlinedAt: !451)
!718 = distinct !DILexicalBlock(scope: !579, file: !3, line: 613, column: 21)
!719 = !DILocation(line: 613, column: 21, scope: !579, inlinedAt: !451)
!720 = !DILocation(line: 614, column: 23, scope: !718, inlinedAt: !451)
!721 = !{!532, !532, i64 0}
!722 = !DILocation(line: 614, column: 21, scope: !718, inlinedAt: !451)
!723 = !DILocation(line: 616, column: 23, scope: !724, inlinedAt: !451)
!724 = distinct !DILexicalBlock(scope: !718, file: !3, line: 615, column: 26)
!725 = !DILocation(line: 616, column: 21, scope: !724, inlinedAt: !451)
!726 = !DILocation(line: 618, column: 23, scope: !727, inlinedAt: !451)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 617, column: 26)
!728 = !DILocation(line: 618, column: 21, scope: !727, inlinedAt: !451)
!729 = !DILocation(line: 620, column: 23, scope: !730, inlinedAt: !451)
!730 = distinct !DILexicalBlock(scope: !727, file: !3, line: 619, column: 26)
!731 = !DILocation(line: 620, column: 21, scope: !730, inlinedAt: !451)
!732 = !DILocation(line: 622, column: 23, scope: !733, inlinedAt: !451)
!733 = distinct !DILexicalBlock(scope: !730, file: !3, line: 621, column: 26)
!734 = !DILocation(line: 622, column: 21, scope: !733, inlinedAt: !451)
!735 = !DILocation(line: 624, column: 23, scope: !736, inlinedAt: !451)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 623, column: 26)
!737 = !DILocation(line: 624, column: 21, scope: !736, inlinedAt: !451)
!738 = !DILocation(line: 626, column: 23, scope: !736, inlinedAt: !451)
!739 = !DILocation(line: 627, column: 19, scope: !579, inlinedAt: !451)
!740 = !DILocation(line: 630, column: 17, scope: !579, inlinedAt: !451)
!741 = !DILocation(line: 631, column: 37, scope: !579, inlinedAt: !451)
!742 = !DILocation(line: 0, scope: !693, inlinedAt: !743)
!743 = distinct !DILocation(line: 632, column: 23, scope: !579, inlinedAt: !451)
!744 = !DILocation(line: 27, column: 10, scope: !693, inlinedAt: !743)
!745 = !DILocation(line: 634, column: 17, scope: !579, inlinedAt: !451)
!746 = !DILocation(line: 635, column: 37, scope: !579, inlinedAt: !451)
!747 = !DILocation(line: 0, scope: !693, inlinedAt: !748)
!748 = distinct !DILocation(line: 636, column: 25, scope: !579, inlinedAt: !451)
!749 = !DILocation(line: 27, column: 10, scope: !693, inlinedAt: !748)
!750 = !DILocation(line: 0, scope: !577, inlinedAt: !451)
!751 = !DILocation(line: 639, column: 21, scope: !440, inlinedAt: !451)
!752 = !DILocation(line: 639, column: 17, scope: !441, inlinedAt: !451)
!753 = !DILocation(line: 640, column: 21, scope: !754, inlinedAt: !451)
!754 = distinct !DILexicalBlock(scope: !439, file: !3, line: 640, column: 21)
!755 = !DILocation(line: 640, column: 28, scope: !754, inlinedAt: !451)
!756 = !DILocation(line: 640, column: 21, scope: !439, inlinedAt: !451)
!757 = !DILocation(line: 641, column: 32, scope: !758, inlinedAt: !451)
!758 = distinct !DILexicalBlock(scope: !754, file: !3, line: 640, column: 33)
!759 = !{!668, !472, i64 24}
!760 = !DILocation(line: 641, column: 21, scope: !758, inlinedAt: !451)
!761 = !DILocation(line: 642, column: 32, scope: !758, inlinedAt: !451)
!762 = !{!668, !472, i64 32}
!763 = !DILocation(line: 642, column: 21, scope: !758, inlinedAt: !451)
!764 = !DILocation(line: 643, column: 31, scope: !758, inlinedAt: !451)
!765 = !{!668, !531, i64 8}
!766 = !DILocation(line: 644, column: 36, scope: !758, inlinedAt: !451)
!767 = !DILocation(line: 644, column: 34, scope: !758, inlinedAt: !451)
!768 = !{!668, !531, i64 104}
!769 = !DILocation(line: 645, column: 21, scope: !758, inlinedAt: !451)
!770 = !DILocation(line: 646, column: 21, scope: !758, inlinedAt: !451)
!771 = !DILocation(line: 647, column: 21, scope: !758, inlinedAt: !451)
!772 = !DILocation(line: 648, column: 28, scope: !758, inlinedAt: !451)
!773 = !DILocation(line: 649, column: 17, scope: !758, inlinedAt: !451)
!774 = !DILocation(line: 651, column: 24, scope: !439, inlinedAt: !451)
!775 = !DILocation(line: 652, column: 25, scope: !582, inlinedAt: !451)
!776 = !DILocation(line: 652, column: 21, scope: !439, inlinedAt: !451)
!777 = !DILocation(line: 653, column: 21, scope: !582, inlinedAt: !451)
!778 = !DILocation(line: 655, column: 30, scope: !581, inlinedAt: !451)
!779 = !DILocation(line: 656, column: 30, scope: !581, inlinedAt: !451)
!780 = !DILocation(line: 658, column: 17, scope: !439, inlinedAt: !451)
!781 = !DILocation(line: 0, scope: !438, inlinedAt: !451)
!782 = !DILocation(line: 663, column: 21, scope: !584, inlinedAt: !451)
!783 = !DILocation(line: 665, column: 42, scope: !784, inlinedAt: !451)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 665, column: 29)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 664, column: 45)
!786 = distinct !DILexicalBlock(scope: !584, file: !3, line: 663, column: 21)
!787 = !{!788, !472, i64 0}
!788 = !{!"strand_t", !472, i64 0, !531, i64 8, !531, i64 12, !472, i64 16, !472, i64 24, !531, i64 32, !531, i64 36, !472, i64 40}
!789 = !DILocation(line: 665, column: 30, scope: !784, inlinedAt: !451)
!790 = !DILocation(line: 665, column: 29, scope: !785, inlinedAt: !451)
!791 = !DILocation(line: 664, column: 37, scope: !786, inlinedAt: !451)
!792 = distinct !{!792, !782, !793}
!793 = !DILocation(line: 669, column: 21, scope: !584, inlinedAt: !451)
!794 = !DILocation(line: 670, column: 25, scope: !438, inlinedAt: !451)
!795 = !DILocation(line: 670, column: 36, scope: !438, inlinedAt: !451)
!796 = !{!788, !531, i64 36}
!797 = !DILocation(line: 672, column: 40, scope: !438, inlinedAt: !451)
!798 = !DILocation(line: 671, column: 25, scope: !438, inlinedAt: !451)
!799 = !DILocation(line: 671, column: 36, scope: !438, inlinedAt: !451)
!800 = !{!788, !472, i64 40}
!801 = !DILocation(line: 680, column: 17, scope: !439, inlinedAt: !451)
!802 = !DILocation(line: 681, column: 17, scope: !439, inlinedAt: !451)
!803 = !DILocation(line: 682, column: 26, scope: !439, inlinedAt: !451)
!804 = !DILocation(line: 684, column: 13, scope: !439, inlinedAt: !451)
!805 = !DILocation(line: 684, column: 57, scope: !806, inlinedAt: !451)
!806 = distinct !DILexicalBlock(scope: !440, file: !3, line: 684, column: 24)
!807 = !DILocalVariable(name: "l_rname", arg: 1, scope: !808, file: !3, line: 744, type: !13)
!808 = distinct !DISubprogram(name: "isnewres", scope: !3, file: !3, line: 744, type: !809, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{!38, !13, !13, !38, !38}
!811 = !{!807, !812, !813, !814}
!812 = !DILocalVariable(name: "rname", arg: 2, scope: !808, file: !3, line: 744, type: !13)
!813 = !DILocalVariable(name: "l_rnum", arg: 3, scope: !808, file: !3, line: 744, type: !38)
!814 = !DILocalVariable(name: "rnum", arg: 4, scope: !808, file: !3, line: 744, type: !38)
!815 = !DILocation(line: 0, scope: !808, inlinedAt: !816)
!816 = distinct !DILocation(line: 684, column: 24, scope: !806, inlinedAt: !451)
!817 = !DILocation(line: 747, column: 13, scope: !808, inlinedAt: !816)
!818 = !DILocation(line: 747, column: 36, scope: !808, inlinedAt: !816)
!819 = !DILocation(line: 684, column: 24, scope: !806, inlinedAt: !451)
!820 = !DILocation(line: 684, column: 24, scope: !440, inlinedAt: !451)
!821 = !DILocation(line: 685, column: 28, scope: !822, inlinedAt: !451)
!822 = distinct !DILexicalBlock(scope: !806, file: !3, line: 684, column: 64)
!823 = !DILocation(line: 685, column: 17, scope: !822, inlinedAt: !451)
!824 = !DILocation(line: 686, column: 28, scope: !822, inlinedAt: !451)
!825 = !DILocation(line: 686, column: 17, scope: !822, inlinedAt: !451)
!826 = !DILocation(line: 687, column: 27, scope: !822, inlinedAt: !451)
!827 = !DILocation(line: 688, column: 32, scope: !822, inlinedAt: !451)
!828 = !DILocation(line: 688, column: 30, scope: !822, inlinedAt: !451)
!829 = !DILocation(line: 689, column: 17, scope: !822, inlinedAt: !451)
!830 = !DILocation(line: 690, column: 17, scope: !822, inlinedAt: !451)
!831 = !DILocation(line: 691, column: 17, scope: !822, inlinedAt: !451)
!832 = !DILocation(line: 692, column: 17, scope: !822, inlinedAt: !451)
!833 = !DILocation(line: 693, column: 17, scope: !822, inlinedAt: !451)
!834 = !DILocation(line: 694, column: 26, scope: !822, inlinedAt: !451)
!835 = !DILocation(line: 695, column: 24, scope: !822, inlinedAt: !451)
!836 = !DILocation(line: 696, column: 13, scope: !822, inlinedAt: !451)
!837 = !DILocation(line: 0, scope: !445, inlinedAt: !451)
!838 = !DILocation(line: 697, column: 24, scope: !441, inlinedAt: !451)
!839 = !DILocation(line: 697, column: 19, scope: !441, inlinedAt: !451)
!840 = !DILocation(line: 698, column: 13, scope: !441, inlinedAt: !451)
!841 = !DILocation(line: 699, column: 24, scope: !441, inlinedAt: !451)
!842 = !DILocation(line: 699, column: 13, scope: !441, inlinedAt: !451)
!843 = !DILocation(line: 700, column: 17, scope: !441, inlinedAt: !451)
!844 = !DILocation(line: 700, column: 24, scope: !441, inlinedAt: !451)
!845 = !{!530, !531, i64 16}
!846 = !DILocation(line: 701, column: 17, scope: !441, inlinedAt: !451)
!847 = !DILocation(line: 701, column: 27, scope: !441, inlinedAt: !451)
!848 = !{!530, !472, i64 56}
!849 = !DILocation(line: 702, column: 13, scope: !441, inlinedAt: !451)
!850 = !DILocation(line: 702, column: 26, scope: !441, inlinedAt: !451)
!851 = !DILocation(line: 703, column: 13, scope: !441, inlinedAt: !451)
!852 = !DILocation(line: 703, column: 26, scope: !441, inlinedAt: !451)
!853 = !DILocation(line: 704, column: 13, scope: !441, inlinedAt: !451)
!854 = !DILocation(line: 704, column: 26, scope: !441, inlinedAt: !451)
!855 = !DILocation(line: 705, column: 28, scope: !441, inlinedAt: !451)
!856 = !DILocation(line: 705, column: 17, scope: !441, inlinedAt: !451)
!857 = !DILocation(line: 705, column: 26, scope: !441, inlinedAt: !451)
!858 = !{!530, !532, i64 64}
!859 = !DILocation(line: 706, column: 28, scope: !441, inlinedAt: !451)
!860 = !DILocation(line: 706, column: 17, scope: !441, inlinedAt: !451)
!861 = !DILocation(line: 706, column: 26, scope: !441, inlinedAt: !451)
!862 = !{!530, !532, i64 72}
!863 = !DILocation(line: 707, column: 17, scope: !441, inlinedAt: !451)
!864 = !DILocation(line: 707, column: 23, scope: !441, inlinedAt: !451)
!865 = !{!530, !532, i64 88}
!866 = !DILocation(line: 708, column: 17, scope: !441, inlinedAt: !451)
!867 = !DILocation(line: 708, column: 25, scope: !441, inlinedAt: !451)
!868 = !{!530, !532, i64 80}
!869 = !DILocation(line: 709, column: 19, scope: !441, inlinedAt: !451)
!870 = !DILocation(line: 711, column: 9, scope: !441, inlinedAt: !451)
!871 = !DILocation(line: 711, column: 20, scope: !872, inlinedAt: !451)
!872 = distinct !DILexicalBlock(scope: !442, file: !3, line: 711, column: 20)
!873 = !DILocation(line: 711, column: 44, scope: !872, inlinedAt: !451)
!874 = !DILocation(line: 711, column: 20, scope: !442, inlinedAt: !451)
!875 = !DILocation(line: 712, column: 17, scope: !876, inlinedAt: !451)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 712, column: 17)
!877 = distinct !DILexicalBlock(scope: !872, file: !3, line: 711, column: 50)
!878 = !DILocation(line: 712, column: 24, scope: !876, inlinedAt: !451)
!879 = !DILocation(line: 712, column: 17, scope: !877, inlinedAt: !451)
!880 = !DILocation(line: 713, column: 28, scope: !881, inlinedAt: !451)
!881 = distinct !DILexicalBlock(scope: !876, file: !3, line: 712, column: 29)
!882 = !DILocation(line: 713, column: 17, scope: !881, inlinedAt: !451)
!883 = !DILocation(line: 714, column: 28, scope: !881, inlinedAt: !451)
!884 = !DILocation(line: 714, column: 17, scope: !881, inlinedAt: !451)
!885 = !DILocation(line: 715, column: 27, scope: !881, inlinedAt: !451)
!886 = !DILocation(line: 716, column: 32, scope: !881, inlinedAt: !451)
!887 = !DILocation(line: 716, column: 30, scope: !881, inlinedAt: !451)
!888 = !DILocation(line: 717, column: 17, scope: !881, inlinedAt: !451)
!889 = !DILocation(line: 718, column: 17, scope: !881, inlinedAt: !451)
!890 = !DILocation(line: 719, column: 17, scope: !881, inlinedAt: !451)
!891 = !DILocation(line: 720, column: 24, scope: !881, inlinedAt: !451)
!892 = !DILocation(line: 721, column: 13, scope: !881, inlinedAt: !451)
!893 = !DILocation(line: 723, column: 22, scope: !877, inlinedAt: !451)
!894 = !DILocation(line: 724, column: 20, scope: !877, inlinedAt: !451)
!895 = !DILocation(line: 726, column: 9, scope: !877, inlinedAt: !451)
!896 = !DILocation(line: 726, column: 20, scope: !897, inlinedAt: !451)
!897 = distinct !DILexicalBlock(scope: !872, file: !3, line: 726, column: 20)
!898 = !DILocation(line: 726, column: 44, scope: !897, inlinedAt: !451)
!899 = !DILocation(line: 726, column: 20, scope: !872, inlinedAt: !451)
!900 = distinct !{!900, !901, !902}
!901 = !DILocation(line: 496, column: 5, scope: !445, inlinedAt: !451)
!902 = !DILocation(line: 728, column: 5, scope: !445, inlinedAt: !451)
!903 = !DILocation(line: 729, column: 9, scope: !904, inlinedAt: !451)
!904 = distinct !DILexicalBlock(scope: !402, file: !3, line: 729, column: 9)
!905 = !DILocation(line: 729, column: 16, scope: !904, inlinedAt: !451)
!906 = !DILocation(line: 729, column: 9, scope: !402, inlinedAt: !451)
!907 = !DILocation(line: 730, column: 20, scope: !908, inlinedAt: !451)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 729, column: 21)
!909 = !DILocation(line: 730, column: 9, scope: !908, inlinedAt: !451)
!910 = !DILocation(line: 731, column: 20, scope: !908, inlinedAt: !451)
!911 = !DILocation(line: 731, column: 9, scope: !908, inlinedAt: !451)
!912 = !DILocation(line: 732, column: 19, scope: !908, inlinedAt: !451)
!913 = !DILocation(line: 733, column: 24, scope: !908, inlinedAt: !451)
!914 = !DILocation(line: 733, column: 22, scope: !908, inlinedAt: !451)
!915 = !DILocation(line: 734, column: 9, scope: !908, inlinedAt: !451)
!916 = !DILocation(line: 735, column: 9, scope: !908, inlinedAt: !451)
!917 = !DILocation(line: 736, column: 9, scope: !908, inlinedAt: !451)
!918 = !DILocation(line: 737, column: 5, scope: !908, inlinedAt: !451)
!919 = !DILocation(line: 739, column: 10, scope: !402, inlinedAt: !451)
!920 = !DILocation(line: 739, column: 19, scope: !402, inlinedAt: !451)
!921 = !{!922, !531, i64 120}
!922 = !{!"molecule_t", !466, i64 0, !531, i64 96, !472, i64 104, !531, i64 112, !531, i64 116, !531, i64 120, !472, i64 128}
!923 = !DILocation(line: 742, column: 1, scope: !402, inlinedAt: !451)
!924 = !DILocation(line: 150, column: 15, scope: !925)
!925 = distinct !DILexicalBlock(scope: !390, file: !3, line: 150, column: 9)
!926 = !DILocation(line: 150, column: 12, scope: !925)
!927 = !DILocation(line: 150, column: 9, scope: !390)
!928 = !DILocation(line: 151, column: 13, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 151, column: 13)
!930 = distinct !DILexicalBlock(scope: !925, file: !3, line: 150, column: 22)
!931 = !DILocation(line: 151, column: 28, scope: !929)
!932 = !DILocation(line: 151, column: 13, scope: !930)
!933 = !DILocation(line: 152, column: 13, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !3, line: 151, column: 34)
!935 = !DILocation(line: 153, column: 9, scope: !934)
!936 = !DILocation(line: 156, column: 5, scope: !390)
!937 = !DILocation(line: 0, scope: !2)
!938 = !DILocation(line: 162, column: 5, scope: !2)
!939 = !DILocation(line: 162, column: 10, scope: !2)
!940 = !DILocation(line: 168, column: 5, scope: !2)
!941 = !DILocation(line: 169, column: 15, scope: !942)
!942 = distinct !DILexicalBlock(scope: !2, file: !3, line: 169, column: 9)
!943 = !DILocation(line: 169, column: 23, scope: !942)
!944 = !DILocation(line: 169, column: 26, scope: !942)
!945 = !DILocation(line: 169, column: 33, scope: !942)
!946 = !DILocation(line: 169, column: 9, scope: !2)
!947 = !DILocation(line: 170, column: 17, scope: !948)
!948 = distinct !DILexicalBlock(scope: !942, file: !3, line: 169, column: 42)
!949 = !DILocation(line: 170, column: 9, scope: !948)
!950 = !DILocation(line: 172, column: 9, scope: !948)
!951 = !DILocation(line: 173, column: 17, scope: !952)
!952 = distinct !DILexicalBlock(scope: !942, file: !3, line: 173, column: 16)
!953 = !DILocation(line: 173, column: 16, scope: !942)
!954 = !DILocation(line: 174, column: 14, scope: !952)
!955 = !DILocation(line: 174, column: 9, scope: !952)
!956 = !DILocation(line: 175, column: 20, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !3, line: 175, column: 14)
!958 = !DILocation(line: 175, column: 39, scope: !957)
!959 = !DILocation(line: 175, column: 14, scope: !952)
!960 = !DILocation(line: 176, column: 17, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !3, line: 175, column: 48)
!962 = !DILocation(line: 176, column: 9, scope: !961)
!963 = !DILocation(line: 178, column: 9, scope: !961)
!964 = !DILocation(line: 0, scope: !952)
!965 = !DILocation(line: 180, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!967 = !DILocation(line: 180, column: 17, scope: !968)
!968 = distinct !DILexicalBlock(scope: !966, file: !3, line: 180, column: 5)
!969 = !DILocation(line: 181, column: 13, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 181, column: 13)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 180, column: 49)
!972 = !DILocation(line: 181, column: 19, scope: !970)
!973 = !DILocation(line: 181, column: 13, scope: !971)
!974 = distinct !{!974, !965, !975}
!975 = !DILocation(line: 201, column: 5, scope: !966)
!976 = !DILocation(line: 184, column: 15, scope: !971)
!977 = !DILocation(line: 190, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !971, file: !3, line: 190, column: 13)
!979 = !DILocation(line: 190, column: 13, scope: !971)
!980 = !DILocation(line: 191, column: 21, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 190, column: 23)
!982 = !DILocation(line: 191, column: 13, scope: !981)
!983 = !DILocation(line: 196, column: 13, scope: !981)
!984 = !DILocation(line: 203, column: 17, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 202, column: 17)
!986 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!987 = !DILocation(line: 203, column: 9, scope: !985)
!988 = !DILocation(line: 207, column: 9, scope: !985)
!989 = !DILocation(line: 212, column: 12, scope: !990)
!990 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!991 = !DILocation(line: 210, column: 3, scope: !2)
!992 = !DILocation(line: 212, column: 29, scope: !990)
!993 = !DILocation(line: 212, column: 26, scope: !990)
!994 = !DILocation(line: 212, column: 20, scope: !990)
!995 = !DILocation(line: 213, column: 9, scope: !990)
!996 = !DILocation(line: 217, column: 1, scope: !2)
!997 = !DILocation(line: 216, column: 5, scope: !2)
!998 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !999, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!38, !13, !393, !13}
!1001 = !{!1002, !1003, !1004, !1005, !1006}
!1002 = !DILocalVariable(name: "fname", arg: 1, scope: !998, file: !3, line: 225, type: !13)
!1003 = !DILocalVariable(name: "mol", arg: 2, scope: !998, file: !3, line: 225, type: !393)
!1004 = !DILocalVariable(name: "options", arg: 3, scope: !998, file: !3, line: 225, type: !13)
!1005 = !DILocalVariable(name: "fp", scope: !998, file: !3, line: 227, type: !372)
!1006 = !DILocalVariable(name: "ier", scope: !998, file: !3, line: 228, type: !38)
!1007 = !DILocalVariable(name: "rname", scope: !1008, file: !3, line: 868, type: !1025)
!1008 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1009, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !372, !393, !13}
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1007, !1024, !1026, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038}
!1012 = !DILocalVariable(name: "fp", arg: 1, scope: !1008, file: !3, line: 849, type: !372)
!1013 = !DILocalVariable(name: "mol", arg: 2, scope: !1008, file: !3, line: 849, type: !393)
!1014 = !DILocalVariable(name: "options", arg: 3, scope: !1008, file: !3, line: 849, type: !13)
!1015 = !DILocalVariable(name: "r", scope: !1008, file: !3, line: 863, type: !38)
!1016 = !DILocalVariable(name: "tr", scope: !1008, file: !3, line: 863, type: !38)
!1017 = !DILocalVariable(name: "rn", scope: !1008, file: !3, line: 863, type: !38)
!1018 = !DILocalVariable(name: "a", scope: !1008, file: !3, line: 863, type: !38)
!1019 = !DILocalVariable(name: "ta", scope: !1008, file: !3, line: 863, type: !38)
!1020 = !DILocalVariable(name: "cid", scope: !1008, file: !3, line: 864, type: !14)
!1021 = !DILocalVariable(name: "sp", scope: !1008, file: !3, line: 865, type: !129)
!1022 = !DILocalVariable(name: "res", scope: !1008, file: !3, line: 866, type: !145)
!1023 = !DILocalVariable(name: "ap", scope: !1008, file: !3, line: 867, type: !191)
!1024 = !DILocalVariable(name: "aname", scope: !1008, file: !3, line: 869, type: !1025)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !201)
!1026 = !DILocalVariable(name: "rid", scope: !1008, file: !3, line: 870, type: !1027)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1028)
!1028 = !{!1029}
!1029 = !DISubrange(count: 7)
!1030 = !DILocalVariable(name: "loptions", scope: !1008, file: !3, line: 871, type: !376)
!1031 = !DILocalVariable(name: "opt_pqr", scope: !1008, file: !3, line: 872, type: !38)
!1032 = !DILocalVariable(name: "opt_nobocc", scope: !1008, file: !3, line: 873, type: !38)
!1033 = !DILocalVariable(name: "opt_brook", scope: !1008, file: !3, line: 874, type: !38)
!1034 = !DILocalVariable(name: "opt_wwpdb", scope: !1008, file: !3, line: 875, type: !38)
!1035 = !DILocalVariable(name: "opt_tr", scope: !1008, file: !3, line: 876, type: !38)
!1036 = !DILocalVariable(name: "opt_nocid", scope: !1008, file: !3, line: 877, type: !38)
!1037 = !DILocalVariable(name: "opt_allcid", scope: !1008, file: !3, line: 878, type: !38)
!1038 = !DILocalVariable(name: "cidstate", scope: !1008, file: !3, line: 879, type: !344)
!1039 = !DILocation(line: 868, column: 10, scope: !1008, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 246, column: 13, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 245, column: 23)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 245, column: 13)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 238, column: 30)
!1044 = distinct !DILexicalBlock(scope: !998, file: !3, line: 238, column: 9)
!1045 = !DILocation(line: 869, column: 10, scope: !1008, inlinedAt: !1040)
!1046 = !DILocation(line: 870, column: 10, scope: !1008, inlinedAt: !1040)
!1047 = !DILocation(line: 871, column: 10, scope: !1008, inlinedAt: !1040)
!1048 = !DILocation(line: 0, scope: !998)
!1049 = !DILocation(line: 230, column: 10, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !998, file: !3, line: 230, column: 9)
!1051 = !DILocation(line: 230, column: 9, scope: !998)
!1052 = !DILocation(line: 231, column: 13, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 230, column: 15)
!1054 = !DILocation(line: 232, column: 21, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 231, column: 34)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 231, column: 13)
!1057 = !DILocation(line: 232, column: 13, scope: !1055)
!1058 = !DILocation(line: 233, column: 9, scope: !1055)
!1059 = !DILocation(line: 238, column: 9, scope: !998)
!1060 = !DILocation(line: 239, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 239, column: 13)
!1062 = !DILocation(line: 239, column: 13, scope: !1043)
!1063 = !DILocation(line: 240, column: 18, scope: !1061)
!1064 = !DILocation(line: 240, column: 13, scope: !1061)
!1065 = !DILocation(line: 241, column: 24, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 241, column: 18)
!1067 = !DILocation(line: 241, column: 43, scope: !1066)
!1068 = !DILocation(line: 241, column: 18, scope: !1061)
!1069 = !DILocation(line: 242, column: 13, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 241, column: 52)
!1071 = !DILocation(line: 245, column: 13, scope: !1043)
!1072 = !DILocation(line: 0, scope: !1008, inlinedAt: !1040)
!1073 = !DILocation(line: 868, column: 5, scope: !1008, inlinedAt: !1040)
!1074 = !DILocation(line: 869, column: 5, scope: !1008, inlinedAt: !1040)
!1075 = !DILocation(line: 870, column: 5, scope: !1008, inlinedAt: !1040)
!1076 = !DILocation(line: 871, column: 5, scope: !1008, inlinedAt: !1040)
!1077 = !DILocation(line: 885, column: 10, scope: !1078, inlinedAt: !1040)
!1078 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 885, column: 9)
!1079 = !DILocation(line: 885, column: 9, scope: !1008, inlinedAt: !1040)
!1080 = !DILocation(line: 886, column: 17, scope: !1081, inlinedAt: !1040)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 885, column: 14)
!1082 = !DILocation(line: 886, column: 9, scope: !1081, inlinedAt: !1040)
!1083 = !DILocation(line: 887, column: 9, scope: !1081, inlinedAt: !1040)
!1084 = !DILocation(line: 890, column: 17, scope: !1085, inlinedAt: !1040)
!1085 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 890, column: 9)
!1086 = !DILocation(line: 890, column: 9, scope: !1008, inlinedAt: !1040)
!1087 = !DILocation(line: 891, column: 19, scope: !1085, inlinedAt: !1040)
!1088 = !DILocation(line: 891, column: 9, scope: !1085, inlinedAt: !1040)
!1089 = !DILocation(line: 893, column: 9, scope: !1090, inlinedAt: !1040)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 892, column: 10)
!1091 = !DILocation(line: 894, column: 9, scope: !1090, inlinedAt: !1040)
!1092 = !DILocation(line: 894, column: 23, scope: !1090, inlinedAt: !1040)
!1093 = !DILocation(line: 896, column: 15, scope: !1008, inlinedAt: !1040)
!1094 = !DILocation(line: 896, column: 40, scope: !1008, inlinedAt: !1040)
!1095 = !DILocation(line: 897, column: 18, scope: !1008, inlinedAt: !1040)
!1096 = !DILocation(line: 897, column: 46, scope: !1008, inlinedAt: !1040)
!1097 = !DILocation(line: 898, column: 17, scope: !1008, inlinedAt: !1040)
!1098 = !DILocation(line: 898, column: 44, scope: !1008, inlinedAt: !1040)
!1099 = !DILocation(line: 899, column: 17, scope: !1008, inlinedAt: !1040)
!1100 = !DILocation(line: 899, column: 44, scope: !1008, inlinedAt: !1040)
!1101 = !DILocation(line: 900, column: 14, scope: !1008, inlinedAt: !1040)
!1102 = !DILocation(line: 900, column: 38, scope: !1008, inlinedAt: !1040)
!1103 = !DILocation(line: 901, column: 17, scope: !1008, inlinedAt: !1040)
!1104 = !DILocation(line: 901, column: 44, scope: !1008, inlinedAt: !1040)
!1105 = !DILocation(line: 902, column: 18, scope: !1008, inlinedAt: !1040)
!1106 = !DILocation(line: 902, column: 46, scope: !1008, inlinedAt: !1040)
!1107 = !DILocalVariable(name: "nocid", arg: 1, scope: !1108, file: !3, line: 1021, type: !38)
!1108 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !1109, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!344, !38, !38, !393}
!1111 = !{!1107, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1112 = !DILocalVariable(name: "allcid", arg: 2, scope: !1108, file: !3, line: 1021, type: !38)
!1113 = !DILocalVariable(name: "mol", arg: 3, scope: !1108, file: !3, line: 1021, type: !393)
!1114 = !DILocalVariable(name: "cid", scope: !1108, file: !3, line: 1023, type: !344)
!1115 = !DILocalVariable(name: "c", scope: !1108, file: !3, line: 1024, type: !38)
!1116 = !DILocalVariable(name: "sp", scope: !1108, file: !3, line: 1025, type: !129)
!1117 = !DILocalVariable(name: "err", scope: !1108, file: !3, line: 1026, type: !38)
!1118 = !DILabel(scope: !1108, name: "CLEAN_UP", file: !3, line: 1067)
!1119 = !DILocation(line: 0, scope: !1108, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 905, column: 16, scope: !1008, inlinedAt: !1040)
!1121 = !DILocation(line: 1028, column: 9, scope: !1122, inlinedAt: !1120)
!1122 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1028, column: 9)
!1123 = !DILocation(line: 1028, column: 9, scope: !1108, inlinedAt: !1120)
!1124 = !DILocation(line: 1031, column: 21, scope: !1108, inlinedAt: !1120)
!1125 = !DILocation(line: 1031, column: 11, scope: !1108, inlinedAt: !1120)
!1126 = !DILocation(line: 1032, column: 13, scope: !1127, inlinedAt: !1120)
!1127 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1032, column: 9)
!1128 = !DILocation(line: 1032, column: 9, scope: !1108, inlinedAt: !1120)
!1129 = !DILocation(line: 1033, column: 17, scope: !1130, inlinedAt: !1120)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 1032, column: 22)
!1131 = !DILocation(line: 1033, column: 9, scope: !1130, inlinedAt: !1120)
!1132 = !DILocation(line: 1067, column: 3, scope: !1108, inlinedAt: !1120)
!1133 = !DILocalVariable(name: "cid", arg: 1, scope: !1134, file: !3, line: 1011, type: !344)
!1134 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !1135, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !344}
!1137 = !{!1133}
!1138 = !DILocation(line: 0, scope: !1134, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 1070, column: 9, scope: !1140, inlinedAt: !1120)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 1069, column: 14)
!1141 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1069, column: 9)
!1142 = !DILocation(line: 1014, column: 9, scope: !1134, inlinedAt: !1139)
!1143 = !DILocation(line: 1037, column: 28, scope: !1108, inlinedAt: !1120)
!1144 = !DILocation(line: 1037, column: 10, scope: !1108, inlinedAt: !1120)
!1145 = !DILocation(line: 1037, column: 17, scope: !1108, inlinedAt: !1120)
!1146 = !{!1147, !472, i64 8}
!1147 = !{!"cid_t", !531, i64 0, !531, i64 4, !472, i64 8}
!1148 = !DILocation(line: 1038, column: 21, scope: !1149, inlinedAt: !1120)
!1149 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1038, column: 9)
!1150 = !DILocation(line: 1038, column: 9, scope: !1108, inlinedAt: !1120)
!1151 = !DILocation(line: 1043, column: 10, scope: !1108, inlinedAt: !1120)
!1152 = !DILocation(line: 1043, column: 17, scope: !1108, inlinedAt: !1120)
!1153 = !{!1147, !531, i64 0}
!1154 = !DILocation(line: 1044, column: 10, scope: !1108, inlinedAt: !1120)
!1155 = !DILocation(line: 1044, column: 17, scope: !1108, inlinedAt: !1120)
!1156 = !{!1147, !531, i64 4}
!1157 = !DILocation(line: 1045, column: 5, scope: !1158, inlinedAt: !1120)
!1158 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1045, column: 5)
!1159 = !DILocation(line: 1046, column: 24, scope: !1160, inlinedAt: !1120)
!1160 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 1045, column: 5)
!1161 = !DILocation(line: 1048, column: 9, scope: !1108, inlinedAt: !1120)
!1162 = !DILocation(line: 1054, column: 24, scope: !1163, inlinedAt: !1120)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 1054, column: 9)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 1048, column: 17)
!1165 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1048, column: 9)
!1166 = !DILocation(line: 0, scope: !1163, inlinedAt: !1120)
!1167 = !DILocation(line: 1054, column: 9, scope: !1163, inlinedAt: !1120)
!1168 = !DILocation(line: 1055, column: 28, scope: !1169, inlinedAt: !1120)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1055, column: 17)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 1054, column: 56)
!1171 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 1054, column: 9)
!1172 = !DILocation(line: 1055, column: 17, scope: !1169, inlinedAt: !1120)
!1173 = !DILocation(line: 1055, column: 42, scope: !1169, inlinedAt: !1120)
!1174 = !DILocation(line: 1055, column: 17, scope: !1170, inlinedAt: !1120)
!1175 = !DILocation(line: 1056, column: 21, scope: !1176, inlinedAt: !1120)
!1176 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 1055, column: 48)
!1177 = !DILocation(line: 1057, column: 30, scope: !1178, inlinedAt: !1120)
!1178 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 1057, column: 21)
!1179 = !DILocation(line: 1058, column: 21, scope: !1178, inlinedAt: !1120)
!1180 = !DILocation(line: 1058, column: 36, scope: !1178, inlinedAt: !1120)
!1181 = !DILocation(line: 1054, column: 48, scope: !1171, inlinedAt: !1120)
!1182 = distinct !{!1182, !1167, !1183}
!1183 = !DILocation(line: 1060, column: 9, scope: !1163, inlinedAt: !1120)
!1184 = !DILocation(line: 1062, column: 18, scope: !1185, inlinedAt: !1120)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 1062, column: 17)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 1061, column: 59)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 1061, column: 9)
!1188 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 1061, column: 9)
!1189 = !DILocation(line: 1062, column: 17, scope: !1186, inlinedAt: !1120)
!1190 = !DILocation(line: 1061, column: 55, scope: !1187, inlinedAt: !1120)
!1191 = !DILocation(line: 1039, column: 17, scope: !1192, inlinedAt: !1120)
!1192 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 1038, column: 30)
!1193 = !DILocation(line: 1039, column: 9, scope: !1192, inlinedAt: !1120)
!1194 = !DILocation(line: 1017, column: 9, scope: !1195, inlinedAt: !1139)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 1014, column: 22)
!1196 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1014, column: 9)
!1197 = !DILocation(line: 1018, column: 5, scope: !1195, inlinedAt: !1139)
!1198 = !DILocation(line: 911, column: 36, scope: !1199, inlinedAt: !1040)
!1199 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 911, column: 5)
!1200 = !DILocation(line: 0, scope: !1199, inlinedAt: !1040)
!1201 = !DILocation(line: 911, column: 5, scope: !1199, inlinedAt: !1040)
!1202 = !DILocation(line: 0, scope: !1203, inlinedAt: !1213)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 1084, column: 9)
!1204 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !1205, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!38, !344, !38, !38, !129}
!1207 = !{!1208, !1209, !1210, !1211, !1212}
!1208 = !DILocalVariable(name: "cid", arg: 1, scope: !1204, file: !3, line: 1077, type: !344)
!1209 = !DILocalVariable(name: "nocid", arg: 2, scope: !1204, file: !3, line: 1077, type: !38)
!1210 = !DILocalVariable(name: "allcid", arg: 3, scope: !1204, file: !3, line: 1077, type: !38)
!1211 = !DILocalVariable(name: "sp", arg: 4, scope: !1204, file: !3, line: 1077, type: !129)
!1212 = !DILocalVariable(name: "c", scope: !1204, file: !3, line: 1079, type: !38)
!1213 = distinct !DILocation(line: 920, column: 15, scope: !1214, inlinedAt: !1040)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 911, column: 68)
!1215 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 911, column: 5)
!1216 = !DILocation(line: 0, scope: !1217, inlinedAt: !1213)
!1217 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 1087, column: 16)
!1218 = !DILocation(line: 0, scope: !1219, inlinedAt: !1213)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 1089, column: 22)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 1089, column: 14)
!1221 = !DILocation(line: 0, scope: !1222, inlinedAt: !1229)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1199, column: 9)
!1223 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !1224, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1226)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !13, !145}
!1226 = !{!1227, !1228}
!1227 = !DILocalVariable(name: "rname", arg: 1, scope: !1223, file: !3, line: 1194, type: !13)
!1228 = !DILocalVariable(name: "res", arg: 2, scope: !1223, file: !3, line: 1194, type: !145)
!1229 = distinct !DILocation(line: 927, column: 17, scope: !1230, inlinedAt: !1040)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 926, column: 22)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 924, column: 17)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 921, column: 53)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 921, column: 9)
!1234 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 921, column: 9)
!1235 = !DILocation(line: 0, scope: !1236, inlinedAt: !1245)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1331, column: 12)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1329, column: 9)
!1238 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !1239, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1241)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !13, !13, !13}
!1241 = !{!1242, !1243, !1244}
!1242 = !DILocalVariable(name: "aname", arg: 1, scope: !1238, file: !3, line: 1315, type: !13)
!1243 = !DILocalVariable(name: "name", arg: 2, scope: !1238, file: !3, line: 1315, type: !13)
!1244 = !DILocalVariable(name: "rname", arg: 3, scope: !1238, file: !3, line: 1315, type: !13)
!1245 = distinct !DILocation(line: 937, column: 21, scope: !1246, inlinedAt: !1040)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 936, column: 26)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 934, column: 21)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 930, column: 49)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 930, column: 13)
!1250 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 930, column: 13)
!1251 = !DILocation(line: 0, scope: !1252, inlinedAt: !1245)
!1252 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1338, column: 9)
!1253 = !DILocation(line: 0, scope: !1254, inlinedAt: !1245)
!1254 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1339, column: 9)
!1255 = !DILocation(line: 0, scope: !1256, inlinedAt: !1262)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 1297, column: 9)
!1257 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !1239, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DILocalVariable(name: "aname", arg: 1, scope: !1257, file: !3, line: 1279, type: !13)
!1260 = !DILocalVariable(name: "name", arg: 2, scope: !1257, file: !3, line: 1279, type: !13)
!1261 = !DILocalVariable(name: "rname", arg: 3, scope: !1257, file: !3, line: 1279, type: !13)
!1262 = distinct !DILocation(line: 935, column: 21, scope: !1247, inlinedAt: !1040)
!1263 = !DILocation(line: 0, scope: !1264, inlinedAt: !1040)
!1264 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 991, column: 21)
!1265 = !DILocation(line: 0, scope: !1204, inlinedAt: !1213)
!1266 = !DILocation(line: 1081, column: 9, scope: !1204, inlinedAt: !1213)
!1267 = !DILocation(line: 1084, column: 9, scope: !1204, inlinedAt: !1213)
!1268 = !DILocation(line: 1085, column: 17, scope: !1269, inlinedAt: !1213)
!1269 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 1084, column: 22)
!1270 = !DILocation(line: 1085, column: 9, scope: !1269, inlinedAt: !1213)
!1271 = !DILocation(line: 1086, column: 9, scope: !1269, inlinedAt: !1213)
!1272 = !DILocation(line: 1087, column: 21, scope: !1217, inlinedAt: !1213)
!1273 = !DILocation(line: 1087, column: 35, scope: !1217, inlinedAt: !1213)
!1274 = !DILocation(line: 1087, column: 28, scope: !1217, inlinedAt: !1213)
!1275 = !DILocation(line: 1087, column: 16, scope: !1203, inlinedAt: !1213)
!1276 = !DILocation(line: 1089, column: 14, scope: !1217, inlinedAt: !1213)
!1277 = !DILocation(line: 1090, column: 24, scope: !1278, inlinedAt: !1213)
!1278 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 1090, column: 13)
!1279 = !DILocation(line: 1090, column: 13, scope: !1278, inlinedAt: !1213)
!1280 = !DILocation(line: 1090, column: 38, scope: !1278, inlinedAt: !1213)
!1281 = !DILocation(line: 1090, column: 13, scope: !1219, inlinedAt: !1213)
!1282 = !DILocation(line: 1091, column: 17, scope: !1283, inlinedAt: !1213)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1090, column: 44)
!1284 = !DILocation(line: 1092, column: 26, scope: !1285, inlinedAt: !1213)
!1285 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 1092, column: 17)
!1286 = !DILocation(line: 1093, column: 17, scope: !1285, inlinedAt: !1213)
!1287 = !DILocation(line: 1096, column: 14, scope: !1219, inlinedAt: !1213)
!1288 = !DILocation(line: 1096, column: 9, scope: !1219, inlinedAt: !1213)
!1289 = !DILocation(line: 1096, column: 34, scope: !1219, inlinedAt: !1213)
!1290 = !DILocation(line: 1097, column: 14, scope: !1291, inlinedAt: !1213)
!1291 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 1097, column: 9)
!1292 = !DILocation(line: 0, scope: !1293, inlinedAt: !1213)
!1293 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 1097, column: 9)
!1294 = !DILocation(line: 0, scope: !1291, inlinedAt: !1213)
!1295 = !DILocation(line: 1097, column: 41, scope: !1293, inlinedAt: !1213)
!1296 = !DILocation(line: 1097, column: 9, scope: !1291, inlinedAt: !1213)
!1297 = !DILocation(line: 1098, column: 23, scope: !1298, inlinedAt: !1213)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 1098, column: 17)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 1097, column: 72)
!1300 = !DILocation(line: 1098, column: 18, scope: !1298, inlinedAt: !1213)
!1301 = !DILocation(line: 1098, column: 17, scope: !1299, inlinedAt: !1213)
!1302 = distinct !{!1302, !1296, !1303}
!1303 = !DILocation(line: 1100, column: 9, scope: !1291, inlinedAt: !1213)
!1304 = !DILocation(line: 1104, column: 20, scope: !1305, inlinedAt: !1213)
!1305 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 1102, column: 12)
!1306 = !DILocation(line: 1105, column: 9, scope: !1305, inlinedAt: !1213)
!1307 = !DILocation(line: 921, column: 29, scope: !1233, inlinedAt: !1040)
!1308 = !{!788, !531, i64 32}
!1309 = !DILocation(line: 921, column: 23, scope: !1233, inlinedAt: !1040)
!1310 = !DILocation(line: 921, column: 9, scope: !1234, inlinedAt: !1040)
!1311 = !DILocation(line: 0, scope: !1232, inlinedAt: !1040)
!1312 = !DILocation(line: 0, scope: !1313, inlinedAt: !1040)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 958, column: 28)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 949, column: 25)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 941, column: 49)
!1316 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 941, column: 21)
!1317 = !DILocation(line: 922, column: 23, scope: !1232, inlinedAt: !1040)
!1318 = !DILocation(line: 922, column: 19, scope: !1232, inlinedAt: !1040)
!1319 = !DILocation(line: 923, column: 30, scope: !1232, inlinedAt: !1040)
!1320 = !DILocation(line: 923, column: 25, scope: !1232, inlinedAt: !1040)
!1321 = !DILocation(line: 923, column: 13, scope: !1232, inlinedAt: !1040)
!1322 = !DILocation(line: 0, scope: !1231, inlinedAt: !1040)
!1323 = !DILocation(line: 924, column: 17, scope: !1232, inlinedAt: !1040)
!1324 = !DILocalVariable(name: "rname", arg: 1, scope: !1325, file: !3, line: 1109, type: !13)
!1325 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !1224, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1326)
!1326 = !{!1324, !1327}
!1327 = !DILocalVariable(name: "res", arg: 2, scope: !1325, file: !3, line: 1109, type: !145)
!1328 = !DILocation(line: 0, scope: !1325, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 925, column: 17, scope: !1231, inlinedAt: !1040)
!1330 = !DILocation(line: 1112, column: 5, scope: !1325, inlinedAt: !1329)
!1331 = !DILocation(line: 1114, column: 10, scope: !1332, inlinedAt: !1329)
!1332 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1114, column: 9)
!1333 = !DILocation(line: 1114, column: 9, scope: !1325, inlinedAt: !1329)
!1334 = !DILocation(line: 1115, column: 9, scope: !1332, inlinedAt: !1329)
!1335 = !DILocation(line: 1116, column: 9, scope: !1325, inlinedAt: !1329)
!1336 = !DILocation(line: 1117, column: 9, scope: !1337, inlinedAt: !1329)
!1337 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1116, column: 9)
!1338 = !DILocation(line: 1119, column: 9, scope: !1339, inlinedAt: !1329)
!1339 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1118, column: 9)
!1340 = !DILocation(line: 1121, column: 9, scope: !1341, inlinedAt: !1329)
!1341 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1120, column: 9)
!1342 = !DILocation(line: 1123, column: 9, scope: !1343, inlinedAt: !1329)
!1343 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1122, column: 9)
!1344 = !DILocation(line: 1125, column: 10, scope: !1345, inlinedAt: !1329)
!1345 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1125, column: 9)
!1346 = !DILocation(line: 1125, column: 9, scope: !1325, inlinedAt: !1329)
!1347 = !DILocation(line: 1126, column: 9, scope: !1345, inlinedAt: !1329)
!1348 = !DILocation(line: 1127, column: 10, scope: !1349, inlinedAt: !1329)
!1349 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1127, column: 9)
!1350 = !DILocation(line: 1127, column: 9, scope: !1325, inlinedAt: !1329)
!1351 = !DILocation(line: 1128, column: 9, scope: !1349, inlinedAt: !1329)
!1352 = !DILocation(line: 1129, column: 10, scope: !1353, inlinedAt: !1329)
!1353 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1129, column: 9)
!1354 = !DILocation(line: 1129, column: 9, scope: !1325, inlinedAt: !1329)
!1355 = !DILocation(line: 1130, column: 9, scope: !1353, inlinedAt: !1329)
!1356 = !DILocation(line: 1131, column: 10, scope: !1357, inlinedAt: !1329)
!1357 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1131, column: 9)
!1358 = !DILocation(line: 1131, column: 9, scope: !1325, inlinedAt: !1329)
!1359 = !DILocation(line: 1132, column: 9, scope: !1357, inlinedAt: !1329)
!1360 = !DILocation(line: 1134, column: 10, scope: !1361, inlinedAt: !1329)
!1361 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1134, column: 9)
!1362 = !DILocation(line: 1134, column: 9, scope: !1325, inlinedAt: !1329)
!1363 = !DILocation(line: 1135, column: 9, scope: !1361, inlinedAt: !1329)
!1364 = !DILocation(line: 1136, column: 10, scope: !1365, inlinedAt: !1329)
!1365 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1136, column: 9)
!1366 = !DILocation(line: 1136, column: 9, scope: !1325, inlinedAt: !1329)
!1367 = !DILocation(line: 1137, column: 9, scope: !1365, inlinedAt: !1329)
!1368 = !DILocation(line: 1138, column: 10, scope: !1369, inlinedAt: !1329)
!1369 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1138, column: 9)
!1370 = !DILocation(line: 1138, column: 9, scope: !1325, inlinedAt: !1329)
!1371 = !DILocation(line: 1139, column: 9, scope: !1369, inlinedAt: !1329)
!1372 = !DILocation(line: 1140, column: 10, scope: !1373, inlinedAt: !1329)
!1373 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1140, column: 9)
!1374 = !DILocation(line: 1140, column: 9, scope: !1325, inlinedAt: !1329)
!1375 = !DILocation(line: 1141, column: 9, scope: !1373, inlinedAt: !1329)
!1376 = !DILocation(line: 1143, column: 9, scope: !1325, inlinedAt: !1329)
!1377 = !DILocation(line: 1144, column: 9, scope: !1378, inlinedAt: !1329)
!1378 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1143, column: 9)
!1379 = !DILocation(line: 1146, column: 9, scope: !1380, inlinedAt: !1329)
!1380 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1145, column: 9)
!1381 = !DILocation(line: 1148, column: 9, scope: !1382, inlinedAt: !1329)
!1382 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1147, column: 9)
!1383 = !DILocation(line: 1150, column: 9, scope: !1384, inlinedAt: !1329)
!1384 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1149, column: 9)
!1385 = !DILocation(line: 1153, column: 9, scope: !1386, inlinedAt: !1329)
!1386 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1152, column: 9)
!1387 = !DILocation(line: 1155, column: 9, scope: !1388, inlinedAt: !1329)
!1388 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1154, column: 9)
!1389 = !DILocation(line: 1157, column: 9, scope: !1390, inlinedAt: !1329)
!1390 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1156, column: 9)
!1391 = !DILocation(line: 1159, column: 9, scope: !1392, inlinedAt: !1329)
!1392 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1158, column: 9)
!1393 = !DILocation(line: 1162, column: 9, scope: !1394, inlinedAt: !1329)
!1394 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1161, column: 9)
!1395 = !DILocation(line: 1164, column: 9, scope: !1396, inlinedAt: !1329)
!1396 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1163, column: 9)
!1397 = !DILocation(line: 1166, column: 9, scope: !1398, inlinedAt: !1329)
!1398 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1165, column: 9)
!1399 = !DILocation(line: 1168, column: 9, scope: !1400, inlinedAt: !1329)
!1400 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1167, column: 9)
!1401 = !DILocation(line: 1171, column: 9, scope: !1402, inlinedAt: !1329)
!1402 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1170, column: 9)
!1403 = !DILocation(line: 1173, column: 9, scope: !1404, inlinedAt: !1329)
!1404 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1172, column: 9)
!1405 = !DILocation(line: 1175, column: 9, scope: !1406, inlinedAt: !1329)
!1406 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1174, column: 9)
!1407 = !DILocation(line: 1177, column: 9, scope: !1408, inlinedAt: !1329)
!1408 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1176, column: 9)
!1409 = !DILocation(line: 1179, column: 9, scope: !1325, inlinedAt: !1329)
!1410 = !DILocation(line: 1180, column: 9, scope: !1411, inlinedAt: !1329)
!1411 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1179, column: 9)
!1412 = !DILocation(line: 1184, column: 9, scope: !1413, inlinedAt: !1329)
!1413 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1183, column: 9)
!1414 = !DILocation(line: 1186, column: 9, scope: !1415, inlinedAt: !1329)
!1415 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1185, column: 9)
!1416 = !DILocation(line: 1188, column: 9, scope: !1417, inlinedAt: !1329)
!1417 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1187, column: 9)
!1418 = !DILocation(line: 1190, column: 9, scope: !1419, inlinedAt: !1329)
!1419 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1189, column: 9)
!1420 = !DILocation(line: 926, column: 22, scope: !1231, inlinedAt: !1040)
!1421 = !DILocation(line: 0, scope: !1223, inlinedAt: !1229)
!1422 = !DILocation(line: 1197, column: 5, scope: !1223, inlinedAt: !1229)
!1423 = !DILocation(line: 1199, column: 10, scope: !1222, inlinedAt: !1229)
!1424 = !DILocation(line: 1199, column: 9, scope: !1223, inlinedAt: !1229)
!1425 = !DILocation(line: 1200, column: 9, scope: !1222, inlinedAt: !1229)
!1426 = !DILocation(line: 1201, column: 9, scope: !1223, inlinedAt: !1229)
!1427 = !DILocation(line: 1202, column: 9, scope: !1428, inlinedAt: !1229)
!1428 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1201, column: 9)
!1429 = !DILocation(line: 1204, column: 9, scope: !1430, inlinedAt: !1229)
!1430 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1203, column: 9)
!1431 = !DILocation(line: 1206, column: 9, scope: !1432, inlinedAt: !1229)
!1432 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1205, column: 9)
!1433 = !DILocation(line: 1208, column: 9, scope: !1434, inlinedAt: !1229)
!1434 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1207, column: 9)
!1435 = !DILocation(line: 1210, column: 10, scope: !1436, inlinedAt: !1229)
!1436 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1210, column: 9)
!1437 = !DILocation(line: 1210, column: 9, scope: !1223, inlinedAt: !1229)
!1438 = !DILocation(line: 1211, column: 9, scope: !1436, inlinedAt: !1229)
!1439 = !DILocation(line: 1212, column: 10, scope: !1440, inlinedAt: !1229)
!1440 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1212, column: 9)
!1441 = !DILocation(line: 1212, column: 9, scope: !1223, inlinedAt: !1229)
!1442 = !DILocation(line: 1213, column: 9, scope: !1440, inlinedAt: !1229)
!1443 = !DILocation(line: 1214, column: 10, scope: !1444, inlinedAt: !1229)
!1444 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1214, column: 9)
!1445 = !DILocation(line: 1214, column: 9, scope: !1223, inlinedAt: !1229)
!1446 = !DILocation(line: 1215, column: 9, scope: !1444, inlinedAt: !1229)
!1447 = !DILocation(line: 1216, column: 10, scope: !1448, inlinedAt: !1229)
!1448 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1216, column: 9)
!1449 = !DILocation(line: 1216, column: 9, scope: !1223, inlinedAt: !1229)
!1450 = !DILocation(line: 1217, column: 9, scope: !1448, inlinedAt: !1229)
!1451 = !DILocation(line: 1219, column: 10, scope: !1452, inlinedAt: !1229)
!1452 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1219, column: 9)
!1453 = !DILocation(line: 1219, column: 9, scope: !1223, inlinedAt: !1229)
!1454 = !DILocation(line: 1220, column: 9, scope: !1452, inlinedAt: !1229)
!1455 = !DILocation(line: 1221, column: 10, scope: !1456, inlinedAt: !1229)
!1456 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1221, column: 9)
!1457 = !DILocation(line: 1221, column: 9, scope: !1223, inlinedAt: !1229)
!1458 = !DILocation(line: 1222, column: 9, scope: !1456, inlinedAt: !1229)
!1459 = !DILocation(line: 1223, column: 10, scope: !1460, inlinedAt: !1229)
!1460 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1223, column: 9)
!1461 = !DILocation(line: 1223, column: 9, scope: !1223, inlinedAt: !1229)
!1462 = !DILocation(line: 1224, column: 9, scope: !1460, inlinedAt: !1229)
!1463 = !DILocation(line: 1225, column: 10, scope: !1464, inlinedAt: !1229)
!1464 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1225, column: 9)
!1465 = !DILocation(line: 1225, column: 9, scope: !1223, inlinedAt: !1229)
!1466 = !DILocation(line: 1226, column: 9, scope: !1464, inlinedAt: !1229)
!1467 = !DILocation(line: 1228, column: 9, scope: !1223, inlinedAt: !1229)
!1468 = !DILocation(line: 1229, column: 9, scope: !1469, inlinedAt: !1229)
!1469 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1228, column: 9)
!1470 = !DILocation(line: 1231, column: 9, scope: !1471, inlinedAt: !1229)
!1471 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1230, column: 9)
!1472 = !DILocation(line: 1233, column: 9, scope: !1473, inlinedAt: !1229)
!1473 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1232, column: 9)
!1474 = !DILocation(line: 1235, column: 9, scope: !1475, inlinedAt: !1229)
!1475 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1234, column: 9)
!1476 = !DILocation(line: 1238, column: 9, scope: !1477, inlinedAt: !1229)
!1477 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1237, column: 9)
!1478 = !DILocation(line: 1240, column: 9, scope: !1479, inlinedAt: !1229)
!1479 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1239, column: 9)
!1480 = !DILocation(line: 1242, column: 9, scope: !1481, inlinedAt: !1229)
!1481 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1241, column: 9)
!1482 = !DILocation(line: 1244, column: 9, scope: !1483, inlinedAt: !1229)
!1483 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1243, column: 9)
!1484 = !DILocation(line: 1247, column: 9, scope: !1485, inlinedAt: !1229)
!1485 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1246, column: 9)
!1486 = !DILocation(line: 1249, column: 9, scope: !1487, inlinedAt: !1229)
!1487 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1248, column: 9)
!1488 = !DILocation(line: 1251, column: 9, scope: !1489, inlinedAt: !1229)
!1489 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1250, column: 9)
!1490 = !DILocation(line: 1253, column: 9, scope: !1491, inlinedAt: !1229)
!1491 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1252, column: 9)
!1492 = !DILocation(line: 1256, column: 9, scope: !1493, inlinedAt: !1229)
!1493 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1255, column: 9)
!1494 = !DILocation(line: 1258, column: 9, scope: !1495, inlinedAt: !1229)
!1495 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1257, column: 9)
!1496 = !DILocation(line: 1260, column: 9, scope: !1497, inlinedAt: !1229)
!1497 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1259, column: 9)
!1498 = !DILocation(line: 1262, column: 9, scope: !1499, inlinedAt: !1229)
!1499 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1261, column: 9)
!1500 = !DILocation(line: 1264, column: 9, scope: !1223, inlinedAt: !1229)
!1501 = !DILocation(line: 1265, column: 9, scope: !1502, inlinedAt: !1229)
!1502 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1264, column: 9)
!1503 = !DILocation(line: 1269, column: 9, scope: !1504, inlinedAt: !1229)
!1504 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1268, column: 9)
!1505 = !DILocation(line: 1271, column: 9, scope: !1506, inlinedAt: !1229)
!1506 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1270, column: 9)
!1507 = !DILocation(line: 1273, column: 9, scope: !1508, inlinedAt: !1229)
!1508 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1272, column: 9)
!1509 = !DILocation(line: 1275, column: 9, scope: !1510, inlinedAt: !1229)
!1510 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1274, column: 9)
!1511 = !DILocation(line: 929, column: 17, scope: !1230, inlinedAt: !1040)
!1512 = !DILocation(line: 930, column: 34, scope: !1249, inlinedAt: !1040)
!1513 = !DILocation(line: 930, column: 27, scope: !1249, inlinedAt: !1040)
!1514 = !DILocation(line: 930, column: 13, scope: !1250, inlinedAt: !1040)
!1515 = !DILocation(line: 0, scope: !1248, inlinedAt: !1040)
!1516 = !DILocation(line: 0, scope: !1315, inlinedAt: !1040)
!1517 = !DILocation(line: 931, column: 19, scope: !1248, inlinedAt: !1040)
!1518 = !DILocation(line: 932, column: 28, scope: !1248, inlinedAt: !1040)
!1519 = !{!668, !472, i64 120}
!1520 = !DILocation(line: 0, scope: !1247, inlinedAt: !1040)
!1521 = !DILocation(line: 934, column: 21, scope: !1248, inlinedAt: !1040)
!1522 = !DILocation(line: 0, scope: !1257, inlinedAt: !1262)
!1523 = !DILocation(line: 1285, column: 14, scope: !1257, inlinedAt: !1262)
!1524 = !DILocation(line: 1287, column: 9, scope: !1525, inlinedAt: !1262)
!1525 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 1287, column: 9)
!1526 = !DILocation(line: 1287, column: 22, scope: !1525, inlinedAt: !1262)
!1527 = !DILocation(line: 1287, column: 27, scope: !1525, inlinedAt: !1262)
!1528 = !DILocation(line: 1287, column: 30, scope: !1525, inlinedAt: !1262)
!1529 = !DILocation(line: 1287, column: 38, scope: !1525, inlinedAt: !1262)
!1530 = !DILocation(line: 1287, column: 9, scope: !1257, inlinedAt: !1262)
!1531 = !DILocation(line: 1288, column: 18, scope: !1525, inlinedAt: !1262)
!1532 = !DILocation(line: 1288, column: 9, scope: !1525, inlinedAt: !1262)
!1533 = !DILocation(line: 1289, column: 16, scope: !1257, inlinedAt: !1262)
!1534 = !DILocation(line: 1289, column: 14, scope: !1257, inlinedAt: !1262)
!1535 = !DILocation(line: 1290, column: 16, scope: !1257, inlinedAt: !1262)
!1536 = !DILocation(line: 1290, column: 14, scope: !1257, inlinedAt: !1262)
!1537 = !DILocation(line: 1291, column: 16, scope: !1257, inlinedAt: !1262)
!1538 = !DILocation(line: 1292, column: 18, scope: !1539, inlinedAt: !1262)
!1539 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 1292, column: 9)
!1540 = !DILocation(line: 1292, column: 9, scope: !1257, inlinedAt: !1262)
!1541 = !DILocation(line: 1294, column: 14, scope: !1257, inlinedAt: !1262)
!1542 = !DILocation(line: 1297, column: 10, scope: !1256, inlinedAt: !1262)
!1543 = !DILocation(line: 1298, column: 26, scope: !1256, inlinedAt: !1262)
!1544 = !DILocation(line: 1297, column: 34, scope: !1256, inlinedAt: !1262)
!1545 = !DILocation(line: 1299, column: 11, scope: !1256, inlinedAt: !1262)
!1546 = !DILocation(line: 1305, column: 14, scope: !1256, inlinedAt: !1262)
!1547 = !DILocation(line: 1299, column: 36, scope: !1256, inlinedAt: !1262)
!1548 = !DILocation(line: 1306, column: 18, scope: !1549, inlinedAt: !1262)
!1549 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1305, column: 41)
!1550 = !DILocation(line: 1307, column: 18, scope: !1549, inlinedAt: !1262)
!1551 = !DILocation(line: 1308, column: 5, scope: !1549, inlinedAt: !1262)
!1552 = !DILocation(line: 936, column: 26, scope: !1247, inlinedAt: !1040)
!1553 = !DILocation(line: 0, scope: !1238, inlinedAt: !1245)
!1554 = !DILocation(line: 1329, column: 9, scope: !1237, inlinedAt: !1245)
!1555 = !DILocation(line: 1329, column: 22, scope: !1237, inlinedAt: !1245)
!1556 = !DILocation(line: 1329, column: 27, scope: !1237, inlinedAt: !1245)
!1557 = !DILocation(line: 1329, column: 30, scope: !1237, inlinedAt: !1245)
!1558 = !DILocation(line: 1329, column: 38, scope: !1237, inlinedAt: !1245)
!1559 = !DILocation(line: 1329, column: 9, scope: !1238, inlinedAt: !1245)
!1560 = !DILocation(line: 1330, column: 9, scope: !1561, inlinedAt: !1245)
!1561 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1329, column: 45)
!1562 = !DILocation(line: 1331, column: 5, scope: !1561, inlinedAt: !1245)
!1563 = !DILocation(line: 1332, column: 18, scope: !1236, inlinedAt: !1245)
!1564 = !DILocation(line: 1333, column: 9, scope: !1236, inlinedAt: !1245)
!1565 = !DILocation(line: 1334, column: 18, scope: !1236, inlinedAt: !1245)
!1566 = !DILocation(line: 1337, column: 9, scope: !1567, inlinedAt: !1245)
!1567 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1337, column: 9)
!1568 = !DILocation(line: 1337, column: 18, scope: !1567, inlinedAt: !1245)
!1569 = !DILocation(line: 1337, column: 9, scope: !1238, inlinedAt: !1245)
!1570 = !DILocation(line: 1337, column: 37, scope: !1567, inlinedAt: !1245)
!1571 = !DILocation(line: 1337, column: 28, scope: !1567, inlinedAt: !1245)
!1572 = !DILocation(line: 1338, column: 9, scope: !1252, inlinedAt: !1245)
!1573 = !DILocation(line: 1338, column: 18, scope: !1252, inlinedAt: !1245)
!1574 = !DILocation(line: 1338, column: 9, scope: !1238, inlinedAt: !1245)
!1575 = !DILocation(line: 1338, column: 37, scope: !1252, inlinedAt: !1245)
!1576 = !DILocation(line: 1338, column: 28, scope: !1252, inlinedAt: !1245)
!1577 = !DILocation(line: 1339, column: 9, scope: !1254, inlinedAt: !1245)
!1578 = !DILocation(line: 1339, column: 18, scope: !1254, inlinedAt: !1245)
!1579 = !DILocation(line: 1339, column: 9, scope: !1238, inlinedAt: !1245)
!1580 = !DILocation(line: 1339, column: 37, scope: !1254, inlinedAt: !1245)
!1581 = !DILocation(line: 1339, column: 28, scope: !1254, inlinedAt: !1245)
!1582 = !DILocation(line: 1346, column: 10, scope: !1583, inlinedAt: !1245)
!1583 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1346, column: 9)
!1584 = !DILocation(line: 1346, column: 9, scope: !1238, inlinedAt: !1245)
!1585 = !DILocation(line: 1346, column: 37, scope: !1583, inlinedAt: !1245)
!1586 = !DILocation(line: 1347, column: 10, scope: !1587, inlinedAt: !1245)
!1587 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1347, column: 9)
!1588 = !DILocation(line: 1347, column: 9, scope: !1238, inlinedAt: !1245)
!1589 = !DILocation(line: 1347, column: 37, scope: !1587, inlinedAt: !1245)
!1590 = !DILocation(line: 1348, column: 10, scope: !1591, inlinedAt: !1245)
!1591 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1348, column: 9)
!1592 = !DILocation(line: 1348, column: 9, scope: !1238, inlinedAt: !1245)
!1593 = !DILocation(line: 1348, column: 37, scope: !1591, inlinedAt: !1245)
!1594 = !DILocation(line: 1349, column: 10, scope: !1595, inlinedAt: !1245)
!1595 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1349, column: 9)
!1596 = !DILocation(line: 1349, column: 9, scope: !1238, inlinedAt: !1245)
!1597 = !DILocation(line: 1349, column: 37, scope: !1595, inlinedAt: !1245)
!1598 = !DILocation(line: 1350, column: 10, scope: !1599, inlinedAt: !1245)
!1599 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1350, column: 9)
!1600 = !DILocation(line: 1350, column: 9, scope: !1238, inlinedAt: !1245)
!1601 = !DILocation(line: 1350, column: 37, scope: !1599, inlinedAt: !1245)
!1602 = !DILocation(line: 1351, column: 10, scope: !1603, inlinedAt: !1245)
!1603 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1351, column: 9)
!1604 = !DILocation(line: 1351, column: 9, scope: !1238, inlinedAt: !1245)
!1605 = !DILocation(line: 1351, column: 37, scope: !1603, inlinedAt: !1245)
!1606 = !DILocation(line: 1352, column: 10, scope: !1607, inlinedAt: !1245)
!1607 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1352, column: 9)
!1608 = !DILocation(line: 1352, column: 9, scope: !1238, inlinedAt: !1245)
!1609 = !DILocation(line: 1352, column: 37, scope: !1607, inlinedAt: !1245)
!1610 = !DILocation(line: 1353, column: 10, scope: !1611, inlinedAt: !1245)
!1611 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1353, column: 9)
!1612 = !DILocation(line: 1353, column: 9, scope: !1238, inlinedAt: !1245)
!1613 = !DILocation(line: 1353, column: 37, scope: !1611, inlinedAt: !1245)
!1614 = !DILocation(line: 1359, column: 10, scope: !1615, inlinedAt: !1245)
!1615 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1359, column: 9)
!1616 = !DILocation(line: 1359, column: 36, scope: !1615, inlinedAt: !1245)
!1617 = !DILocation(line: 1359, column: 40, scope: !1615, inlinedAt: !1245)
!1618 = !DILocation(line: 1359, column: 66, scope: !1615, inlinedAt: !1245)
!1619 = !DILocation(line: 1360, column: 10, scope: !1615, inlinedAt: !1245)
!1620 = !DILocation(line: 1360, column: 36, scope: !1615, inlinedAt: !1245)
!1621 = !DILocation(line: 1360, column: 40, scope: !1615, inlinedAt: !1245)
!1622 = !DILocation(line: 1360, column: 66, scope: !1615, inlinedAt: !1245)
!1623 = !DILocation(line: 1361, column: 10, scope: !1615, inlinedAt: !1245)
!1624 = !DILocation(line: 1361, column: 36, scope: !1615, inlinedAt: !1245)
!1625 = !DILocation(line: 1361, column: 40, scope: !1615, inlinedAt: !1245)
!1626 = !DILocation(line: 1361, column: 66, scope: !1615, inlinedAt: !1245)
!1627 = !DILocation(line: 1362, column: 10, scope: !1615, inlinedAt: !1245)
!1628 = !DILocation(line: 1362, column: 36, scope: !1615, inlinedAt: !1245)
!1629 = !DILocation(line: 1362, column: 40, scope: !1615, inlinedAt: !1245)
!1630 = !DILocation(line: 1362, column: 66, scope: !1615, inlinedAt: !1245)
!1631 = !DILocation(line: 1363, column: 10, scope: !1615, inlinedAt: !1245)
!1632 = !DILocation(line: 1363, column: 36, scope: !1615, inlinedAt: !1245)
!1633 = !DILocation(line: 1363, column: 40, scope: !1615, inlinedAt: !1245)
!1634 = !DILocation(line: 1363, column: 66, scope: !1615, inlinedAt: !1245)
!1635 = !DILocation(line: 1364, column: 10, scope: !1615, inlinedAt: !1245)
!1636 = !DILocation(line: 1364, column: 36, scope: !1615, inlinedAt: !1245)
!1637 = !DILocation(line: 1364, column: 40, scope: !1615, inlinedAt: !1245)
!1638 = !DILocation(line: 1364, column: 66, scope: !1615, inlinedAt: !1245)
!1639 = !DILocation(line: 1365, column: 10, scope: !1615, inlinedAt: !1245)
!1640 = !DILocation(line: 1365, column: 36, scope: !1615, inlinedAt: !1245)
!1641 = !DILocation(line: 1365, column: 40, scope: !1615, inlinedAt: !1245)
!1642 = !DILocation(line: 1365, column: 66, scope: !1615, inlinedAt: !1245)
!1643 = !DILocation(line: 1366, column: 10, scope: !1615, inlinedAt: !1245)
!1644 = !DILocation(line: 1366, column: 36, scope: !1615, inlinedAt: !1245)
!1645 = !DILocation(line: 1366, column: 40, scope: !1615, inlinedAt: !1245)
!1646 = !DILocation(line: 1359, column: 9, scope: !1238, inlinedAt: !1245)
!1647 = !DILocation(line: 1367, column: 18, scope: !1648, inlinedAt: !1245)
!1648 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 1366, column: 67)
!1649 = !DILocation(line: 1368, column: 18, scope: !1648, inlinedAt: !1245)
!1650 = !DILocation(line: 1369, column: 18, scope: !1648, inlinedAt: !1245)
!1651 = !DILocation(line: 1370, column: 18, scope: !1648, inlinedAt: !1245)
!1652 = !DILocation(line: 1371, column: 5, scope: !1648, inlinedAt: !1245)
!1653 = !DILocation(line: 939, column: 21, scope: !1246, inlinedAt: !1040)
!1654 = !DILocation(line: 941, column: 22, scope: !1316, inlinedAt: !1040)
!1655 = !DILocation(line: 941, column: 38, scope: !1316, inlinedAt: !1040)
!1656 = !DILocation(line: 0, scope: !1316, inlinedAt: !1040)
!1657 = !DILocation(line: 949, column: 25, scope: !1315, inlinedAt: !1040)
!1658 = !DILocation(line: 957, column: 33, scope: !1659, inlinedAt: !1040)
!1659 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 949, column: 38)
!1660 = !DILocation(line: 957, column: 47, scope: !1659, inlinedAt: !1040)
!1661 = !DILocation(line: 957, column: 61, scope: !1659, inlinedAt: !1040)
!1662 = !DILocation(line: 950, column: 25, scope: !1659, inlinedAt: !1040)
!1663 = !DILocation(line: 958, column: 21, scope: !1659, inlinedAt: !1040)
!1664 = !DILocation(line: 961, column: 36, scope: !1313, inlinedAt: !1040)
!1665 = !DILocation(line: 966, column: 33, scope: !1313, inlinedAt: !1040)
!1666 = !DILocation(line: 966, column: 47, scope: !1313, inlinedAt: !1040)
!1667 = !DILocation(line: 966, column: 61, scope: !1313, inlinedAt: !1040)
!1668 = !DILocation(line: 959, column: 25, scope: !1313, inlinedAt: !1040)
!1669 = !DILocation(line: 970, column: 25, scope: !1670, inlinedAt: !1040)
!1670 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 968, column: 24)
!1671 = !DILocation(line: 974, column: 33, scope: !1672, inlinedAt: !1040)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 970, column: 38)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 970, column: 25)
!1674 = !DILocation(line: 974, column: 47, scope: !1672, inlinedAt: !1040)
!1675 = !DILocation(line: 974, column: 61, scope: !1672, inlinedAt: !1040)
!1676 = !DILocation(line: 971, column: 25, scope: !1672, inlinedAt: !1040)
!1677 = !DILocation(line: 975, column: 21, scope: !1672, inlinedAt: !1040)
!1678 = !DILocation(line: 978, column: 36, scope: !1679, inlinedAt: !1040)
!1679 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 975, column: 28)
!1680 = !DILocation(line: 979, column: 33, scope: !1679, inlinedAt: !1040)
!1681 = !DILocation(line: 979, column: 47, scope: !1679, inlinedAt: !1040)
!1682 = !DILocation(line: 979, column: 61, scope: !1679, inlinedAt: !1040)
!1683 = !DILocation(line: 976, column: 25, scope: !1679, inlinedAt: !1040)
!1684 = !DILocation(line: 982, column: 21, scope: !1248, inlinedAt: !1040)
!1685 = !DILocation(line: 985, column: 33, scope: !1686, inlinedAt: !1040)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 982, column: 30)
!1687 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 982, column: 21)
!1688 = !DILocation(line: 985, column: 47, scope: !1686, inlinedAt: !1040)
!1689 = !DILocation(line: 984, column: 21, scope: !1686, inlinedAt: !1040)
!1690 = !DILocation(line: 986, column: 17, scope: !1686, inlinedAt: !1040)
!1691 = !DILocation(line: 986, column: 28, scope: !1687, inlinedAt: !1040)
!1692 = !DILocation(line: 988, column: 33, scope: !1693, inlinedAt: !1040)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 986, column: 41)
!1694 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 986, column: 28)
!1695 = !DILocation(line: 988, column: 44, scope: !1693, inlinedAt: !1040)
!1696 = !DILocation(line: 987, column: 21, scope: !1693, inlinedAt: !1040)
!1697 = !DILocation(line: 991, column: 32, scope: !1264, inlinedAt: !1040)
!1698 = !DILocation(line: 992, column: 47, scope: !1699, inlinedAt: !1040)
!1699 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 991, column: 74)
!1700 = !DILocation(line: 992, column: 21, scope: !1699, inlinedAt: !1040)
!1701 = !DILocation(line: 993, column: 17, scope: !1699, inlinedAt: !1040)
!1702 = !DILocation(line: 995, column: 17, scope: !1248, inlinedAt: !1040)
!1703 = !DILocation(line: 930, column: 45, scope: !1249, inlinedAt: !1040)
!1704 = distinct !{!1704, !1514, !1705}
!1705 = !DILocation(line: 997, column: 13, scope: !1250, inlinedAt: !1040)
!1706 = !DILocation(line: 921, column: 43, scope: !1233, inlinedAt: !1040)
!1707 = !DILocation(line: 921, column: 49, scope: !1233, inlinedAt: !1040)
!1708 = distinct !{!1708, !1310, !1709}
!1709 = !DILocation(line: 999, column: 9, scope: !1234, inlinedAt: !1040)
!1710 = !DILocation(line: 911, column: 13, scope: !1199, inlinedAt: !1040)
!1711 = !DILocation(line: 1001, column: 9, scope: !1214, inlinedAt: !1040)
!1712 = !DILocation(line: 911, column: 60, scope: !1215, inlinedAt: !1040)
!1713 = distinct !{!1713, !1201, !1714}
!1714 = !DILocation(line: 1007, column: 5, scope: !1199, inlinedAt: !1040)
!1715 = !DILocation(line: 0, scope: !1134, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 1008, column: 5, scope: !1008, inlinedAt: !1040)
!1717 = !DILocation(line: 1014, column: 13, scope: !1196, inlinedAt: !1716)
!1718 = !DILocation(line: 1014, column: 9, scope: !1134, inlinedAt: !1716)
!1719 = !DILocation(line: 1015, column: 18, scope: !1720, inlinedAt: !1716)
!1720 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1015, column: 13)
!1721 = !DILocation(line: 1015, column: 25, scope: !1720, inlinedAt: !1716)
!1722 = !DILocation(line: 1015, column: 13, scope: !1195, inlinedAt: !1716)
!1723 = !DILocation(line: 1016, column: 13, scope: !1720, inlinedAt: !1716)
!1724 = !DILocation(line: 1017, column: 14, scope: !1195, inlinedAt: !1716)
!1725 = !DILocation(line: 1017, column: 9, scope: !1195, inlinedAt: !1716)
!1726 = !DILocation(line: 1018, column: 5, scope: !1195, inlinedAt: !1716)
!1727 = !DILocation(line: 0, scope: !1187, inlinedAt: !1120)
!1728 = !DILocation(line: 1009, column: 1, scope: !1008, inlinedAt: !1040)
!1729 = !DILocation(line: 247, column: 23, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 247, column: 17)
!1731 = !DILocation(line: 247, column: 20, scope: !1730)
!1732 = !DILocation(line: 247, column: 17, scope: !1041)
!1733 = !DILocation(line: 248, column: 17, scope: !1730)
!1734 = !DILocation(line: 251, column: 5, scope: !998)
!1735 = !DILocation(line: 253, column: 5, scope: !998)
!1736 = !DILocation(line: 254, column: 1, scope: !998)
!1737 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1738, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!38, !13, !13, !393}
!1740 = !{!1741, !1742, !1743, !1744}
!1741 = !DILocalVariable(name: "fname", arg: 1, scope: !1737, file: !3, line: 256, type: !13)
!1742 = !DILocalVariable(name: "blockId", arg: 2, scope: !1737, file: !3, line: 256, type: !13)
!1743 = !DILocalVariable(name: "mol", arg: 3, scope: !1737, file: !3, line: 256, type: !393)
!1744 = !DILocalVariable(name: "fp", scope: !1737, file: !3, line: 258, type: !372)
!1745 = !DILocation(line: 0, scope: !1737)
!1746 = !DILocation(line: 260, column: 10, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 260, column: 9)
!1748 = !DILocation(line: 260, column: 9, scope: !1737)
!1749 = !DILocation(line: 261, column: 17, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 260, column: 15)
!1751 = !DILocation(line: 261, column: 9, scope: !1750)
!1752 = !DILocation(line: 262, column: 9, scope: !1750)
!1753 = !DILocation(line: 264, column: 10, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 264, column: 9)
!1755 = !DILocation(line: 264, column: 9, scope: !1737)
!1756 = !DILocation(line: 266, column: 20, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 266, column: 14)
!1758 = !DILocation(line: 266, column: 39, scope: !1757)
!1759 = !DILocation(line: 266, column: 14, scope: !1754)
!1760 = !DILocation(line: 267, column: 9, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 266, column: 48)
!1762 = !DILocation(line: 268, column: 9, scope: !1761)
!1763 = !DILocation(line: 265, column: 14, scope: !1754)
!1764 = !DILocalVariable(name: "fp", arg: 1, scope: !1765, file: !3, line: 1381, type: !372)
!1765 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1766, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !372, !13, !393}
!1768 = !{!1764, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1769 = !DILocalVariable(name: "blockId", arg: 2, scope: !1765, file: !3, line: 1381, type: !13)
!1770 = !DILocalVariable(name: "mol", arg: 3, scope: !1765, file: !3, line: 1381, type: !393)
!1771 = !DILocalVariable(name: "r", scope: !1765, file: !3, line: 1383, type: !38)
!1772 = !DILocalVariable(name: "tr", scope: !1765, file: !3, line: 1383, type: !38)
!1773 = !DILocalVariable(name: "a", scope: !1765, file: !3, line: 1383, type: !38)
!1774 = !DILocalVariable(name: "ta", scope: !1765, file: !3, line: 1383, type: !38)
!1775 = !DILocalVariable(name: "strandnum", scope: !1765, file: !3, line: 1383, type: !38)
!1776 = !DILocalVariable(name: "cid", scope: !1765, file: !3, line: 1384, type: !14)
!1777 = !DILocalVariable(name: "sp", scope: !1765, file: !3, line: 1385, type: !129)
!1778 = !DILocalVariable(name: "res", scope: !1765, file: !3, line: 1386, type: !145)
!1779 = !DILocalVariable(name: "ap", scope: !1765, file: !3, line: 1387, type: !191)
!1780 = !DILocation(line: 0, scope: !1765, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 270, column: 5, scope: !1737)
!1782 = !DILocation(line: 1390, column: 5, scope: !1783, inlinedAt: !1781)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1390, column: 5)
!1784 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1390, column: 5)
!1785 = !DILocation(line: 1390, column: 5, scope: !1784, inlinedAt: !1781)
!1786 = !DILocation(line: 1392, column: 17, scope: !1765, inlinedAt: !1781)
!1787 = !{!922, !531, i64 96}
!1788 = !DILocation(line: 1396, column: 5, scope: !1765, inlinedAt: !1781)
!1789 = !DILocation(line: 1397, column: 5, scope: !1765, inlinedAt: !1781)
!1790 = !DILocation(line: 1398, column: 5, scope: !1765, inlinedAt: !1781)
!1791 = !DILocation(line: 1399, column: 5, scope: !1765, inlinedAt: !1781)
!1792 = !DILocation(line: 1400, column: 5, scope: !1765, inlinedAt: !1781)
!1793 = !DILocation(line: 1401, column: 5, scope: !1765, inlinedAt: !1781)
!1794 = !DILocation(line: 1402, column: 5, scope: !1765, inlinedAt: !1781)
!1795 = !DILocation(line: 1403, column: 5, scope: !1765, inlinedAt: !1781)
!1796 = !DILocation(line: 1404, column: 5, scope: !1765, inlinedAt: !1781)
!1797 = !DILocation(line: 1407, column: 36, scope: !1798, inlinedAt: !1781)
!1798 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1407, column: 5)
!1799 = !DILocation(line: 0, scope: !1798, inlinedAt: !1781)
!1800 = !DILocation(line: 1407, column: 5, scope: !1798, inlinedAt: !1781)
!1801 = !DILocation(line: 1392, column: 28, scope: !1765, inlinedAt: !1781)
!1802 = !DILocation(line: 1392, column: 11, scope: !1765, inlinedAt: !1781)
!1803 = !DILocation(line: 1408, column: 18, scope: !1804, inlinedAt: !1781)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1407, column: 68)
!1805 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 1407, column: 5)
!1806 = !DILocation(line: 1409, column: 29, scope: !1807, inlinedAt: !1781)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1409, column: 9)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1409, column: 9)
!1809 = !DILocation(line: 1409, column: 23, scope: !1807, inlinedAt: !1781)
!1810 = !DILocation(line: 1409, column: 9, scope: !1808, inlinedAt: !1781)
!1811 = !DILocation(line: 0, scope: !1812, inlinedAt: !1781)
!1812 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 1409, column: 53)
!1813 = !DILocation(line: 0, scope: !1814, inlinedAt: !1781)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 1411, column: 49)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1411, column: 13)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 1411, column: 13)
!1817 = !DILocation(line: 1410, column: 23, scope: !1812, inlinedAt: !1781)
!1818 = !DILocation(line: 1410, column: 19, scope: !1812, inlinedAt: !1781)
!1819 = !DILocation(line: 1411, column: 34, scope: !1815, inlinedAt: !1781)
!1820 = !DILocation(line: 1411, column: 27, scope: !1815, inlinedAt: !1781)
!1821 = !DILocation(line: 1411, column: 13, scope: !1816, inlinedAt: !1781)
!1822 = !DILocation(line: 1409, column: 43, scope: !1807, inlinedAt: !1781)
!1823 = !DILocation(line: 1409, column: 49, scope: !1807, inlinedAt: !1781)
!1824 = !DILocation(line: 1412, column: 19, scope: !1814, inlinedAt: !1781)
!1825 = !DILocation(line: 1413, column: 28, scope: !1814, inlinedAt: !1781)
!1826 = !DILocation(line: 1423, column: 33, scope: !1814, inlinedAt: !1781)
!1827 = !DILocation(line: 1423, column: 50, scope: !1814, inlinedAt: !1781)
!1828 = !DILocation(line: 1424, column: 25, scope: !1814, inlinedAt: !1781)
!1829 = !DILocation(line: 1424, column: 39, scope: !1814, inlinedAt: !1781)
!1830 = !DILocation(line: 1424, column: 53, scope: !1814, inlinedAt: !1781)
!1831 = !DILocation(line: 1421, column: 17, scope: !1814, inlinedAt: !1781)
!1832 = !DILocation(line: 1411, column: 45, scope: !1815, inlinedAt: !1781)
!1833 = distinct !{!1833, !1821, !1834}
!1834 = !DILocation(line: 1426, column: 13, scope: !1816, inlinedAt: !1781)
!1835 = distinct !{!1835, !1810, !1836}
!1836 = !DILocation(line: 1427, column: 9, scope: !1808, inlinedAt: !1781)
!1837 = !DILocation(line: 1407, column: 13, scope: !1798, inlinedAt: !1781)
!1838 = !DILocation(line: 1428, column: 18, scope: !1839, inlinedAt: !1781)
!1839 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1428, column: 13)
!1840 = !DILocation(line: 1428, column: 29, scope: !1839, inlinedAt: !1781)
!1841 = !DILocation(line: 1428, column: 13, scope: !1804, inlinedAt: !1781)
!1842 = !DILocation(line: 1407, column: 60, scope: !1805, inlinedAt: !1781)
!1843 = distinct !{!1843, !1800, !1844}
!1844 = !DILocation(line: 1430, column: 5, scope: !1798, inlinedAt: !1781)
!1845 = !DILocation(line: 271, column: 15, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 271, column: 9)
!1847 = !DILocation(line: 271, column: 12, scope: !1846)
!1848 = !DILocation(line: 271, column: 9, scope: !1737)
!1849 = !DILocation(line: 272, column: 9, scope: !1846)
!1850 = !DILocation(line: 274, column: 1, scope: !1737)
!1851 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1852, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!38, !13, !393}
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871}
!1855 = !DILocalVariable(name: "fname", arg: 1, scope: !1851, file: !3, line: 276, type: !13)
!1856 = !DILocalVariable(name: "mol", arg: 2, scope: !1851, file: !3, line: 276, type: !393)
!1857 = !DILocalVariable(name: "fp", scope: !1851, file: !3, line: 278, type: !372)
!1858 = !DILocalVariable(name: "sp", scope: !1851, file: !3, line: 279, type: !129)
!1859 = !DILocalVariable(name: "res", scope: !1851, file: !3, line: 280, type: !145)
!1860 = !DILocalVariable(name: "a", scope: !1851, file: !3, line: 281, type: !38)
!1861 = !DILocalVariable(name: "ta", scope: !1851, file: !3, line: 281, type: !38)
!1862 = !DILocalVariable(name: "ai", scope: !1851, file: !3, line: 281, type: !38)
!1863 = !DILocalVariable(name: "aj", scope: !1851, file: !3, line: 281, type: !38)
!1864 = !DILocalVariable(name: "r", scope: !1851, file: !3, line: 281, type: !38)
!1865 = !DILocalVariable(name: "rj", scope: !1851, file: !3, line: 281, type: !38)
!1866 = !DILocalVariable(name: "tr", scope: !1851, file: !3, line: 281, type: !38)
!1867 = !DILocalVariable(name: "rval", scope: !1851, file: !3, line: 282, type: !38)
!1868 = !DILocalVariable(name: "aoff", scope: !1851, file: !3, line: 283, type: !110)
!1869 = !DILocalVariable(name: "b", scope: !1851, file: !3, line: 284, type: !38)
!1870 = !DILocalVariable(name: "ebp", scope: !1851, file: !3, line: 285, type: !161)
!1871 = !DILabel(scope: !1851, name: "clean_up", file: !3, line: 338)
!1872 = !DILocation(line: 0, scope: !1851)
!1873 = !DILocation(line: 287, column: 10, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 287, column: 9)
!1875 = !DILocation(line: 287, column: 9, scope: !1851)
!1876 = !DILocation(line: 288, column: 17, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 287, column: 15)
!1878 = !DILocation(line: 288, column: 9, scope: !1877)
!1879 = !DILocation(line: 289, column: 9, scope: !1877)
!1880 = !DILocation(line: 291, column: 15, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 291, column: 9)
!1882 = !DILocation(line: 291, column: 34, scope: !1881)
!1883 = !DILocation(line: 291, column: 9, scope: !1851)
!1884 = !DILocation(line: 292, column: 9, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 291, column: 43)
!1886 = !DILocation(line: 293, column: 9, scope: !1885)
!1887 = !DILocation(line: 296, column: 28, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 296, column: 5)
!1889 = !DILocation(line: 0, scope: !1888)
!1890 = !DILocation(line: 296, column: 5, scope: !1888)
!1891 = !DILocation(line: 297, column: 19, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 296, column: 5)
!1893 = !DILocation(line: 297, column: 12, scope: !1892)
!1894 = !DILocation(line: 296, column: 52, scope: !1892)
!1895 = distinct !{!1895, !1890, !1896}
!1896 = !DILocation(line: 297, column: 19, scope: !1888)
!1897 = !DILocation(line: 299, column: 32, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 299, column: 9)
!1899 = !DILocation(line: 299, column: 25, scope: !1898)
!1900 = !DILocation(line: 299, column: 17, scope: !1898)
!1901 = !DILocation(line: 299, column: 51, scope: !1898)
!1902 = !DILocation(line: 299, column: 9, scope: !1851)
!1903 = !DILocation(line: 305, column: 5, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 305, column: 5)
!1905 = !DILocation(line: 300, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 299, column: 60)
!1907 = !DILocation(line: 338, column: 3, scope: !1851)
!1908 = !DILocation(line: 339, column: 9, scope: !1851)
!1909 = !DILocation(line: 317, column: 5, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 317, column: 5)
!1911 = !DILocation(line: 306, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 305, column: 68)
!1913 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 305, column: 5)
!1914 = !DILocation(line: 306, column: 18, scope: !1912)
!1915 = !DILocation(line: 307, column: 17, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 307, column: 13)
!1917 = !DILocation(line: 307, column: 29, scope: !1916)
!1918 = !DILocation(line: 307, column: 13, scope: !1912)
!1919 = !DILocation(line: 308, column: 23, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 307, column: 34)
!1921 = !DILocation(line: 308, column: 19, scope: !1920)
!1922 = !DILocation(line: 308, column: 38, scope: !1920)
!1923 = !DILocation(line: 308, column: 16, scope: !1920)
!1924 = !DILocation(line: 309, column: 27, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 309, column: 13)
!1926 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 309, column: 13)
!1927 = !DILocation(line: 309, column: 13, scope: !1926)
!1928 = !DILocation(line: 310, column: 25, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 309, column: 51)
!1930 = !DILocation(line: 310, column: 17, scope: !1929)
!1931 = !DILocation(line: 310, column: 30, scope: !1929)
!1932 = !DILocation(line: 311, column: 23, scope: !1929)
!1933 = !DILocation(line: 311, column: 42, scope: !1929)
!1934 = !DILocation(line: 311, column: 20, scope: !1929)
!1935 = !DILocation(line: 309, column: 47, scope: !1925)
!1936 = distinct !{!1936, !1927, !1937}
!1937 = !DILocation(line: 312, column: 13, scope: !1926)
!1938 = !DILocation(line: 313, column: 16, scope: !1920)
!1939 = !DILocation(line: 0, scope: !1920)
!1940 = !DILocation(line: 314, column: 9, scope: !1920)
!1941 = !DILocation(line: 0, scope: !1904)
!1942 = !DILocation(line: 305, column: 60, scope: !1913)
!1943 = distinct !{!1943, !1903, !1944}
!1944 = !DILocation(line: 315, column: 5, scope: !1904)
!1945 = !DILocation(line: 318, column: 29, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 318, column: 9)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 318, column: 9)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 317, column: 60)
!1949 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 317, column: 5)
!1950 = !DILocation(line: 318, column: 23, scope: !1946)
!1951 = !DILocation(line: 318, column: 9, scope: !1947)
!1952 = !DILocation(line: 0, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 318, column: 47)
!1954 = !DILocation(line: 0, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 326, column: 66)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 326, column: 13)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 326, column: 13)
!1958 = !DILocation(line: 319, column: 23, scope: !1953)
!1959 = !DILocation(line: 319, column: 19, scope: !1953)
!1960 = !DILocation(line: 320, column: 24, scope: !1953)
!1961 = !DILocation(line: 320, column: 17, scope: !1953)
!1962 = !DILocation(line: 321, column: 34, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 321, column: 13)
!1964 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 321, column: 13)
!1965 = !{!668, !531, i64 72}
!1966 = !DILocation(line: 321, column: 27, scope: !1963)
!1967 = !DILocation(line: 321, column: 13, scope: !1964)
!1968 = !DILocation(line: 0, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 321, column: 52)
!1970 = !DILocation(line: 323, column: 30, scope: !1969)
!1971 = !{!668, !472, i64 80}
!1972 = !DILocation(line: 323, column: 25, scope: !1969)
!1973 = !DILocation(line: 323, column: 47, scope: !1969)
!1974 = !DILocation(line: 324, column: 25, scope: !1969)
!1975 = !DILocation(line: 324, column: 47, scope: !1969)
!1976 = !DILocation(line: 322, column: 17, scope: !1969)
!1977 = !DILocation(line: 321, column: 48, scope: !1963)
!1978 = distinct !{!1978, !1967, !1979}
!1979 = !DILocation(line: 325, column: 13, scope: !1964)
!1980 = !DILocation(line: 326, column: 29, scope: !1957)
!1981 = !DILocation(line: 0, scope: !1957)
!1982 = !DILocation(line: 326, column: 13, scope: !1957)
!1983 = !DILocation(line: 327, column: 32, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 327, column: 21)
!1985 = !{!1986, !531, i64 12}
!1986 = !{!"extbond_t", !472, i64 0, !531, i64 8, !531, i64 12, !531, i64 16}
!1987 = !DILocation(line: 327, column: 41, scope: !1984)
!1988 = !DILocation(line: 327, column: 21, scope: !1955)
!1989 = !DILocation(line: 330, column: 35, scope: !1955)
!1990 = !DILocation(line: 330, column: 22, scope: !1955)
!1991 = !DILocation(line: 332, column: 30, scope: !1955)
!1992 = !{!1986, !531, i64 8}
!1993 = !DILocation(line: 332, column: 38, scope: !1955)
!1994 = !DILocation(line: 332, column: 49, scope: !1955)
!1995 = !{!1986, !531, i64 16}
!1996 = !DILocation(line: 332, column: 58, scope: !1955)
!1997 = !DILocation(line: 331, column: 17, scope: !1955)
!1998 = !DILocation(line: 333, column: 13, scope: !1955)
!1999 = !DILocation(line: 326, column: 57, scope: !1956)
!2000 = distinct !{!2000, !1982, !2001}
!2001 = !DILocation(line: 333, column: 13, scope: !1957)
!2002 = !DILocation(line: 318, column: 43, scope: !1946)
!2003 = distinct !{!2003, !1951, !2004}
!2004 = !DILocation(line: 334, column: 9, scope: !1947)
!2005 = !DILocation(line: 335, column: 12, scope: !1948)
!2006 = !DILocation(line: 317, column: 52, scope: !1949)
!2007 = !DILocation(line: 0, scope: !1910)
!2008 = distinct !{!2008, !1909, !2009}
!2009 = !DILocation(line: 336, column: 5, scope: !1910)
!2010 = !DILocation(line: 340, column: 9, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 339, column: 9)
!2012 = !DILocation(line: 342, column: 5, scope: !1851)
!2013 = !DILocation(line: 344, column: 5, scope: !1851)
!2014 = !DILocation(line: 345, column: 1, scope: !1851)
!2015 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !2016, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!38, !13, !393, !13, !13}
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036}
!2019 = !DILocalVariable(name: "fname", arg: 1, scope: !2015, file: !3, line: 347, type: !13)
!2020 = !DILocalVariable(name: "mol", arg: 2, scope: !2015, file: !3, line: 347, type: !393)
!2021 = !DILocalVariable(name: "aexp1", arg: 3, scope: !2015, file: !3, line: 347, type: !13)
!2022 = !DILocalVariable(name: "aexp2", arg: 4, scope: !2015, file: !3, line: 347, type: !13)
!2023 = !DILocalVariable(name: "fp", scope: !2015, file: !3, line: 349, type: !372)
!2024 = !DILocalVariable(name: "sp1", scope: !2015, file: !3, line: 350, type: !129)
!2025 = !DILocalVariable(name: "res1", scope: !2015, file: !3, line: 351, type: !145)
!2026 = !DILocalVariable(name: "res2", scope: !2015, file: !3, line: 351, type: !145)
!2027 = !DILocalVariable(name: "ap1", scope: !2015, file: !3, line: 352, type: !191)
!2028 = !DILocalVariable(name: "ap2", scope: !2015, file: !3, line: 352, type: !191)
!2029 = !DILocalVariable(name: "tr", scope: !2015, file: !3, line: 353, type: !38)
!2030 = !DILocalVariable(name: "r1", scope: !2015, file: !3, line: 353, type: !38)
!2031 = !DILocalVariable(name: "r2", scope: !2015, file: !3, line: 353, type: !38)
!2032 = !DILocalVariable(name: "a1", scope: !2015, file: !3, line: 353, type: !38)
!2033 = !DILocalVariable(name: "a2", scope: !2015, file: !3, line: 353, type: !38)
!2034 = !DILocalVariable(name: "res", scope: !2015, file: !3, line: 354, type: !144)
!2035 = !DILocalVariable(name: "cnt", scope: !2015, file: !3, line: 355, type: !38)
!2036 = !DILabel(scope: !2015, name: "clean_up", file: !3, line: 420)
!2037 = !DILocation(line: 0, scope: !2015)
!2038 = !DILocation(line: 357, column: 10, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 357, column: 9)
!2040 = !DILocation(line: 357, column: 9, scope: !2015)
!2041 = !DILocation(line: 358, column: 17, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 357, column: 15)
!2043 = !DILocation(line: 358, column: 9, scope: !2042)
!2044 = !DILocation(line: 359, column: 9, scope: !2042)
!2045 = !DILocation(line: 362, column: 5, scope: !2015)
!2046 = !DILocation(line: 363, column: 21, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 363, column: 5)
!2048 = !DILocation(line: 0, scope: !2047)
!2049 = !DILocation(line: 363, column: 5, scope: !2047)
!2050 = !DILocation(line: 364, column: 14, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 363, column: 56)
!2052 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 363, column: 5)
!2053 = !DILocation(line: 364, column: 21, scope: !2051)
!2054 = !{!788, !531, i64 12}
!2055 = !DILocation(line: 365, column: 24, scope: !2051)
!2056 = !DILocation(line: 365, column: 21, scope: !2051)
!2057 = !DILocation(line: 366, column: 32, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 366, column: 9)
!2059 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 366, column: 9)
!2060 = !DILocation(line: 366, column: 25, scope: !2058)
!2061 = !DILocation(line: 366, column: 9, scope: !2059)
!2062 = !DILocation(line: 0, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 366, column: 51)
!2064 = !DILocation(line: 367, column: 20, scope: !2063)
!2065 = !DILocation(line: 368, column: 19, scope: !2063)
!2066 = !DILocation(line: 368, column: 26, scope: !2063)
!2067 = !{!668, !531, i64 40}
!2068 = !DILocation(line: 369, column: 29, scope: !2063)
!2069 = !DILocation(line: 369, column: 26, scope: !2063)
!2070 = !DILocation(line: 370, column: 58, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 370, column: 13)
!2072 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 370, column: 13)
!2073 = !DILocation(line: 370, column: 50, scope: !2071)
!2074 = !DILocation(line: 370, column: 13, scope: !2072)
!2075 = !DILocation(line: 370, column: 38, scope: !2072)
!2076 = !DILocation(line: 372, column: 22, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 371, column: 31)
!2078 = !DILocation(line: 372, column: 29, scope: !2077)
!2079 = !DILocation(line: 373, column: 32, scope: !2077)
!2080 = !DILocation(line: 373, column: 29, scope: !2077)
!2081 = !DILocation(line: 371, column: 27, scope: !2071)
!2082 = distinct !{!2082, !2074, !2083}
!2083 = !DILocation(line: 374, column: 13, scope: !2072)
!2084 = !DILocation(line: 366, column: 47, scope: !2058)
!2085 = distinct !{!2085, !2061, !2086}
!2086 = !DILocation(line: 375, column: 9, scope: !2059)
!2087 = !DILocation(line: 363, column: 48, scope: !2052)
!2088 = distinct !{!2088, !2049, !2089}
!2089 = !DILocation(line: 376, column: 5, scope: !2047)
!2090 = !DILocation(line: 377, column: 5, scope: !2015)
!2091 = !DILocation(line: 0, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 379, column: 5)
!2093 = !DILocation(line: 379, column: 5, scope: !2092)
!2094 = !DILocation(line: 380, column: 20, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 379, column: 5)
!2096 = !DILocation(line: 380, column: 12, scope: !2095)
!2097 = !DILocation(line: 379, column: 56, scope: !2095)
!2098 = distinct !{!2098, !2093, !2099}
!2099 = !DILocation(line: 380, column: 20, scope: !2092)
!2100 = !DILocation(line: 381, column: 38, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 381, column: 9)
!2102 = !DILocation(line: 381, column: 41, scope: !2101)
!2103 = !DILocation(line: 381, column: 31, scope: !2101)
!2104 = !DILocation(line: 381, column: 16, scope: !2101)
!2105 = !DILocation(line: 382, column: 9, scope: !2101)
!2106 = !DILocation(line: 381, column: 9, scope: !2015)
!2107 = !DILocation(line: 386, column: 5, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 386, column: 5)
!2109 = !DILocation(line: 383, column: 17, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 382, column: 18)
!2111 = !DILocation(line: 383, column: 9, scope: !2110)
!2112 = !DILocation(line: 420, column: 3, scope: !2015)
!2113 = !DILocation(line: 421, column: 9, scope: !2015)
!2114 = !DILocation(line: 387, column: 32, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 387, column: 9)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 387, column: 9)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 386, column: 64)
!2118 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 386, column: 5)
!2119 = !DILocation(line: 387, column: 25, scope: !2115)
!2120 = !DILocation(line: 387, column: 9, scope: !2116)
!2121 = !DILocation(line: 0, scope: !2115)
!2122 = !DILocation(line: 388, column: 23, scope: !2115)
!2123 = !DILocation(line: 388, column: 19, scope: !2115)
!2124 = !DILocation(line: 387, column: 47, scope: !2115)
!2125 = distinct !{!2125, !2120, !2126, !2127}
!2126 = !DILocation(line: 388, column: 43, scope: !2116)
!2127 = !{!"llvm.loop.isvectorized", i32 1}
!2128 = distinct !{!2128, !2129}
!2129 = !{!"llvm.loop.unroll.disable"}
!2130 = distinct !{!2130, !2120, !2126, !2131, !2127}
!2131 = !{!"llvm.loop.unroll.runtime.disable"}
!2132 = !DILocation(line: 386, column: 56, scope: !2118)
!2133 = !DILocation(line: 0, scope: !2108)
!2134 = distinct !{!2134, !2107, !2135}
!2135 = !DILocation(line: 389, column: 5, scope: !2108)
!2136 = !DILocation(line: 391, column: 15, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 391, column: 9)
!2138 = !DILocation(line: 391, column: 34, scope: !2137)
!2139 = !DILocation(line: 391, column: 9, scope: !2015)
!2140 = !DILocation(line: 396, column: 30, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 396, column: 5)
!2142 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 396, column: 5)
!2143 = !DILocation(line: 396, column: 5, scope: !2142)
!2144 = !DILocation(line: 392, column: 17, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 391, column: 43)
!2146 = !DILocation(line: 392, column: 9, scope: !2145)
!2147 = !DILocation(line: 393, column: 9, scope: !2145)
!2148 = !DILocation(line: 397, column: 16, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 396, column: 42)
!2150 = !DILocation(line: 398, column: 33, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 398, column: 9)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 398, column: 9)
!2153 = !DILocation(line: 398, column: 25, scope: !2151)
!2154 = !DILocation(line: 398, column: 9, scope: !2152)
!2155 = !DILocation(line: 396, column: 38, scope: !2141)
!2156 = !DILocation(line: 0, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 398, column: 49)
!2158 = !DILocation(line: 0, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 405, column: 54)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 405, column: 29)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 403, column: 61)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 403, column: 21)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 403, column: 21)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 401, column: 45)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 401, column: 17)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 401, column: 17)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 400, column: 44)
!2168 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 400, column: 17)
!2169 = !DILocation(line: 399, column: 26, scope: !2157)
!2170 = !DILocation(line: 400, column: 36, scope: !2168)
!2171 = !DILocation(line: 400, column: 29, scope: !2168)
!2172 = !DILocation(line: 400, column: 17, scope: !2157)
!2173 = !DILocation(line: 402, column: 28, scope: !2164)
!2174 = !DILocation(line: 403, column: 45, scope: !2162)
!2175 = !DILocation(line: 403, column: 37, scope: !2162)
!2176 = !DILocation(line: 403, column: 21, scope: !2163)
!2177 = !DILocation(line: 401, column: 41, scope: !2165)
!2178 = !DILocation(line: 0, scope: !2142)
!2179 = !DILocation(line: 401, column: 33, scope: !2165)
!2180 = !DILocation(line: 401, column: 17, scope: !2166)
!2181 = distinct !{!2181, !2180, !2182}
!2182 = !DILocation(line: 415, column: 17, scope: !2166)
!2183 = !DILocation(line: 404, column: 38, scope: !2161)
!2184 = !DILocation(line: 405, column: 46, scope: !2160)
!2185 = !DILocation(line: 405, column: 39, scope: !2160)
!2186 = !DILocation(line: 405, column: 29, scope: !2161)
!2187 = !DILocation(line: 408, column: 51, scope: !2159)
!2188 = !DILocation(line: 409, column: 42, scope: !2159)
!2189 = !DILocation(line: 410, column: 43, scope: !2159)
!2190 = !DILocation(line: 410, column: 59, scope: !2159)
!2191 = !DILocation(line: 411, column: 37, scope: !2159)
!2192 = !DILocation(line: 844, column: 24, scope: !2193, inlinedAt: !2202)
!2193 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !2194, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!10, !191, !191}
!2196 = !{!2197, !2198, !2199, !2200, !2201}
!2197 = !DILocalVariable(name: "ap1", arg: 1, scope: !2193, file: !3, line: 839, type: !191)
!2198 = !DILocalVariable(name: "ap2", arg: 2, scope: !2193, file: !3, line: 839, type: !191)
!2199 = !DILocalVariable(name: "dx", scope: !2193, file: !3, line: 841, type: !10)
!2200 = !DILocalVariable(name: "dy", scope: !2193, file: !3, line: 841, type: !10)
!2201 = !DILocalVariable(name: "dz", scope: !2193, file: !3, line: 841, type: !10)
!2202 = distinct !DILocation(line: 411, column: 37, scope: !2159)
!2203 = !DILocation(line: 0, scope: !2193, inlinedAt: !2202)
!2204 = !DILocation(line: 843, column: 24, scope: !2193, inlinedAt: !2202)
!2205 = !DILocation(line: 846, column: 31, scope: !2193, inlinedAt: !2202)
!2206 = !DILocation(line: 846, column: 21, scope: !2193, inlinedAt: !2202)
!2207 = !DILocation(line: 846, column: 26, scope: !2193, inlinedAt: !2202)
!2208 = !DILocation(line: 846, column: 36, scope: !2193, inlinedAt: !2202)
!2209 = !DILocation(line: 846, column: 13, scope: !2193, inlinedAt: !2202)
!2210 = !DILocation(line: 406, column: 29, scope: !2159)
!2211 = !DILocation(line: 412, column: 32, scope: !2159)
!2212 = !DILocation(line: 413, column: 25, scope: !2159)
!2213 = !DILocation(line: 403, column: 57, scope: !2162)
!2214 = distinct !{!2214, !2176, !2215}
!2215 = !DILocation(line: 414, column: 21, scope: !2163)
!2216 = !DILocation(line: 398, column: 45, scope: !2151)
!2217 = !DILocation(line: 396, column: 14, scope: !2142)
!2218 = distinct !{!2218, !2154, !2219}
!2219 = !DILocation(line: 417, column: 9, scope: !2152)
!2220 = !DILocation(line: 0, scope: !2161)
!2221 = distinct !{!2221, !2143, !2222}
!2222 = !DILocation(line: 418, column: 5, scope: !2142)
!2223 = !DILocation(line: 422, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 421, column: 9)
!2225 = !DILocation(line: 425, column: 1, scope: !2015)
!2226 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !2227, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2231)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!38, !13, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !185)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2232 = !DILocalVariable(name: "fname", arg: 1, scope: !2226, file: !3, line: 427, type: !13)
!2233 = !DILocalVariable(name: "mat", arg: 2, scope: !2226, file: !3, line: 427, type: !2229)
!2234 = !DILocalVariable(name: "fp", scope: !2226, file: !3, line: 429, type: !372)
!2235 = !DILocalVariable(name: "i", scope: !2226, file: !3, line: 430, type: !38)
!2236 = !DILocalVariable(name: "j", scope: !2226, file: !3, line: 430, type: !38)
!2237 = !DILocalVariable(name: "err", scope: !2226, file: !3, line: 431, type: !38)
!2238 = !DILabel(scope: !2226, name: "CLEAN_UP", file: !3, line: 451)
!2239 = !DILocation(line: 0, scope: !2226)
!2240 = !DILocation(line: 433, column: 15, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 433, column: 9)
!2242 = !DILocation(line: 433, column: 23, scope: !2241)
!2243 = !DILocation(line: 433, column: 26, scope: !2241)
!2244 = !DILocation(line: 433, column: 33, scope: !2241)
!2245 = !DILocation(line: 433, column: 9, scope: !2226)
!2246 = !DILocation(line: 434, column: 17, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 433, column: 42)
!2248 = !DILocation(line: 434, column: 9, scope: !2247)
!2249 = !DILocation(line: 436, column: 9, scope: !2247)
!2250 = !DILocation(line: 437, column: 17, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 437, column: 16)
!2252 = !DILocation(line: 437, column: 16, scope: !2241)
!2253 = !DILocation(line: 438, column: 14, scope: !2251)
!2254 = !DILocation(line: 438, column: 9, scope: !2251)
!2255 = !DILocation(line: 439, column: 20, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 439, column: 14)
!2257 = !DILocation(line: 439, column: 39, scope: !2256)
!2258 = !DILocation(line: 439, column: 14, scope: !2251)
!2259 = !DILocation(line: 440, column: 17, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 439, column: 48)
!2261 = !DILocation(line: 440, column: 9, scope: !2260)
!2262 = !DILocation(line: 442, column: 9, scope: !2260)
!2263 = !DILocation(line: 0, scope: !2251)
!2264 = !DILocation(line: 447, column: 32, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 446, column: 9)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 446, column: 9)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 445, column: 29)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 445, column: 5)
!2269 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 445, column: 5)
!2270 = !DILocation(line: 447, column: 13, scope: !2265)
!2271 = !DILocation(line: 448, column: 9, scope: !2267)
!2272 = !DILocation(line: 451, column: 3, scope: !2226)
!2273 = !DILocation(line: 453, column: 12, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 453, column: 9)
!2275 = !DILocation(line: 453, column: 29, scope: !2274)
!2276 = !DILocation(line: 453, column: 26, scope: !2274)
!2277 = !DILocation(line: 453, column: 20, scope: !2274)
!2278 = !DILocation(line: 454, column: 9, scope: !2274)
!2279 = !DILocation(line: 455, column: 5, scope: !2226)
!2280 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !355, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !39)
!2281 = !DILocation(line: 753, column: 5, scope: !2280)
!2282 = !DILocation(line: 754, column: 13, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 754, column: 9)
!2284 = !DILocation(line: 754, column: 23, scope: !2283)
!2285 = !DILocation(line: 754, column: 9, scope: !2280)
!2286 = !DILocation(line: 755, column: 34, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 754, column: 32)
!2288 = !DILocation(line: 755, column: 23, scope: !2287)
!2289 = !DILocation(line: 756, column: 27, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 756, column: 13)
!2291 = !DILocation(line: 756, column: 13, scope: !2287)
!2292 = !DILocation(line: 757, column: 21, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 756, column: 36)
!2294 = !DILocation(line: 757, column: 13, scope: !2293)
!2295 = !DILocation(line: 758, column: 13, scope: !2293)
!2296 = !DILocation(line: 761, column: 13, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 761, column: 9)
!2298 = !DILocation(line: 761, column: 21, scope: !2297)
!2299 = !DILocation(line: 761, column: 9, scope: !2280)
!2300 = !DILocation(line: 762, column: 32, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 761, column: 30)
!2302 = !DILocation(line: 762, column: 21, scope: !2301)
!2303 = !DILocation(line: 763, column: 25, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 763, column: 13)
!2305 = !DILocation(line: 763, column: 13, scope: !2301)
!2306 = !DILocation(line: 764, column: 21, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 763, column: 34)
!2308 = !DILocation(line: 764, column: 13, scope: !2307)
!2309 = !DILocation(line: 765, column: 13, scope: !2307)
!2310 = !DILocation(line: 768, column: 20, scope: !2280)
!2311 = !DILocation(line: 768, column: 18, scope: !2280)
!2312 = !DILocation(line: 769, column: 17, scope: !2280)
!2313 = !DILocation(line: 770, column: 1, scope: !2280)
!2314 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2315, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !145}
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2318 = !DILocalVariable(name: "res", arg: 1, scope: !2314, file: !3, line: 794, type: !145)
!2319 = !DILocalVariable(name: "a1", scope: !2314, file: !3, line: 796, type: !38)
!2320 = !DILocalVariable(name: "a2", scope: !2314, file: !3, line: 796, type: !38)
!2321 = !DILocalVariable(name: "ap1", scope: !2314, file: !3, line: 797, type: !191)
!2322 = !DILocalVariable(name: "ap2", scope: !2314, file: !3, line: 797, type: !191)
!2323 = !DILocalVariable(name: "ih1", scope: !2314, file: !3, line: 798, type: !38)
!2324 = !DILocalVariable(name: "ih2", scope: !2314, file: !3, line: 798, type: !38)
!2325 = !DILocalVariable(name: "d", scope: !2314, file: !3, line: 799, type: !10)
!2326 = !DILocation(line: 0, scope: !2314)
!2327 = !DILocation(line: 801, column: 28, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 801, column: 5)
!2329 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 801, column: 5)
!2330 = !DILocation(line: 801, column: 21, scope: !2328)
!2331 = !DILocation(line: 801, column: 5, scope: !2329)
!2332 = !DILocation(line: 0, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 801, column: 44)
!2334 = !DILocation(line: 803, column: 14, scope: !2333)
!2335 = !DILocation(line: 803, column: 25, scope: !2333)
!2336 = !{!530, !531, i64 20}
!2337 = !DILocation(line: 801, column: 40, scope: !2328)
!2338 = distinct !{!2338, !2129}
!2339 = !DILocation(line: 806, column: 21, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 806, column: 5)
!2341 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 806, column: 5)
!2342 = !DILocation(line: 806, column: 5, scope: !2341)
!2343 = !DILocation(line: 0, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 808, column: 13)
!2345 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 806, column: 48)
!2346 = distinct !{!2346, !2331, !2347}
!2347 = !DILocation(line: 804, column: 5, scope: !2329)
!2348 = !DILocation(line: 806, column: 28, scope: !2340)
!2349 = !DILocation(line: 806, column: 37, scope: !2340)
!2350 = !DILocation(line: 807, column: 21, scope: !2345)
!2351 = !DILocation(line: 808, column: 13, scope: !2344)
!2352 = !{!2353, !2353, i64 0}
!2353 = !{!"short", !466, i64 0}
!2354 = !DILocation(line: 808, column: 13, scope: !2345)
!2355 = !DILocation(line: 809, column: 19, scope: !2344)
!2356 = !DILocation(line: 809, column: 13, scope: !2344)
!2357 = !DILocation(line: 812, column: 22, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 812, column: 9)
!2359 = !DILocation(line: 812, column: 30, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 812, column: 9)
!2361 = !DILocation(line: 812, column: 9, scope: !2358)
!2362 = distinct !{!2362, !2342, !2363}
!2363 = !DILocation(line: 836, column: 5, scope: !2341)
!2364 = !DILocation(line: 0, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 812, column: 53)
!2366 = !DILocation(line: 0, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 829, column: 21)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 828, column: 39)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 828, column: 24)
!2370 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 820, column: 17)
!2371 = !DILocation(line: 0, scope: !2370)
!2372 = !DILocation(line: 0, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 823, column: 59)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 822, column: 25)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 821, column: 37)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 821, column: 21)
!2377 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 820, column: 29)
!2378 = !DILocation(line: 813, column: 25, scope: !2365)
!2379 = !DILocation(line: 819, column: 17, scope: !2365)
!2380 = !DILocation(line: 844, column: 24, scope: !2193, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 819, column: 17, scope: !2365)
!2382 = !DILocation(line: 0, scope: !2193, inlinedAt: !2381)
!2383 = !DILocation(line: 843, column: 24, scope: !2193, inlinedAt: !2381)
!2384 = !DILocation(line: 846, column: 31, scope: !2193, inlinedAt: !2381)
!2385 = !DILocation(line: 846, column: 21, scope: !2193, inlinedAt: !2381)
!2386 = !DILocation(line: 846, column: 26, scope: !2193, inlinedAt: !2381)
!2387 = !DILocation(line: 846, column: 36, scope: !2193, inlinedAt: !2381)
!2388 = !DILocation(line: 846, column: 13, scope: !2193, inlinedAt: !2381)
!2389 = !DILocation(line: 821, column: 23, scope: !2376)
!2390 = !DILocation(line: 821, column: 21, scope: !2377)
!2391 = !DILocation(line: 822, column: 30, scope: !2374)
!2392 = !DILocation(line: 822, column: 41, scope: !2374)
!2393 = !DILocation(line: 822, column: 58, scope: !2374)
!2394 = !DILocation(line: 823, column: 30, scope: !2374)
!2395 = !DILocation(line: 823, column: 41, scope: !2374)
!2396 = !DILocation(line: 822, column: 25, scope: !2375)
!2397 = !DILocation(line: 824, column: 55, scope: !2373)
!2398 = !DILocation(line: 824, column: 25, scope: !2373)
!2399 = !DILocation(line: 824, column: 59, scope: !2373)
!2400 = !DILocation(line: 825, column: 55, scope: !2373)
!2401 = !DILocation(line: 825, column: 25, scope: !2373)
!2402 = !DILocation(line: 825, column: 59, scope: !2373)
!2403 = !DILocation(line: 826, column: 21, scope: !2373)
!2404 = !DILocation(line: 812, column: 49, scope: !2360)
!2405 = !DILocation(line: 812, column: 37, scope: !2360)
!2406 = distinct !{!2406, !2361, !2407}
!2407 = !DILocation(line: 835, column: 9, scope: !2358)
!2408 = !DILocation(line: 814, column: 17, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 814, column: 17)
!2410 = !DILocation(line: 814, column: 17, scope: !2365)
!2411 = !DILocation(line: 815, column: 23, scope: !2409)
!2412 = !DILocation(line: 815, column: 17, scope: !2409)
!2413 = !DILocation(line: 0, scope: !2409)
!2414 = !DILocation(line: 845, column: 24, scope: !2193, inlinedAt: !2381)
!2415 = !DILocation(line: 846, column: 41, scope: !2193, inlinedAt: !2381)
!2416 = !DILocation(line: 820, column: 21, scope: !2370)
!2417 = !DILocation(line: 828, column: 26, scope: !2369)
!2418 = !DILocation(line: 828, column: 24, scope: !2370)
!2419 = !DILocation(line: 829, column: 26, scope: !2367)
!2420 = !DILocation(line: 829, column: 37, scope: !2367)
!2421 = !DILocation(line: 829, column: 54, scope: !2367)
!2422 = !DILocation(line: 830, column: 26, scope: !2367)
!2423 = !DILocation(line: 830, column: 37, scope: !2367)
!2424 = !DILocation(line: 829, column: 21, scope: !2368)
!2425 = !DILocation(line: 831, column: 51, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 830, column: 55)
!2427 = !DILocation(line: 831, column: 21, scope: !2426)
!2428 = !DILocation(line: 831, column: 55, scope: !2426)
!2429 = !DILocation(line: 832, column: 51, scope: !2426)
!2430 = !DILocation(line: 832, column: 21, scope: !2426)
!2431 = !DILocation(line: 832, column: 55, scope: !2426)
!2432 = !DILocation(line: 833, column: 17, scope: !2426)
!2433 = !DILocation(line: 837, column: 1, scope: !2314)
