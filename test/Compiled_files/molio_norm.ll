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
  br label %60, !dbg !950

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
  br label %60, !dbg !963

22:                                               ; preds = %14, %16
  %23 = phi %struct._IO_FILE* [ %17, %16 ], [ %15, %14 ], !dbg !964
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !371, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata i32 0, metadata !379, metadata !DIExpression()), !dbg !937
  br label %24, !dbg !965

24:                                               ; preds = %44, %22
  %25 = phi i64 [ %45, %44 ], [ 0, %22 ]
  br label %26, !dbg !967

26:                                               ; preds = %24, %29
  call void @llvm.dbg.value(metadata i64 %25, metadata !379, metadata !DIExpression()), !dbg !937
  %27 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !968
  %28 = icmp eq i8* %27, null, !dbg !967
  br i1 %28, label %47, label %29, !dbg !967

29:                                               ; preds = %26
  %30 = load i8, i8* %3, align 16, !dbg !970, !tbaa !465
  %31 = icmp eq i8 %30, 35, !dbg !973
  br i1 %31, label %26, label %32, !dbg !974, !llvm.loop !975

32:                                               ; preds = %29
  %33 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %25, i64 0, !dbg !977
  %34 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %25, i64 1, !dbg !978
  %35 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %25, i64 2, !dbg !979
  %36 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %25, i64 3, !dbg !980
  %37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull %33, double* nonnull %34, double* nonnull %35, double* nonnull %36) #14, !dbg !981
  call void @llvm.dbg.value(metadata i32 %37, metadata !381, metadata !DIExpression()), !dbg !937
  %38 = icmp eq i32 %37, 4, !dbg !982
  br i1 %38, label %44, label %39, !dbg !984

39:                                               ; preds = %32
  %40 = trunc i64 %25 to i32, !dbg !985
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !985, !tbaa !471
  %42 = add nuw nsw i32 %40, 1, !dbg !987
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %37) #15, !dbg !988
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !989
  call void @llvm.dbg.value(metadata i32 1, metadata !383, metadata !DIExpression()), !dbg !937
  br label %53, !dbg !990

44:                                               ; preds = %32
  %45 = add nuw nsw i64 %25, 1, !dbg !991
  call void @llvm.dbg.value(metadata i64 %45, metadata !379, metadata !DIExpression()), !dbg !937
  %46 = icmp eq i64 %45, 4, !dbg !992
  br i1 %46, label %53, label %24, !dbg !994, !llvm.loop !975

47:                                               ; preds = %26
  %48 = trunc i64 %25 to i32, !dbg !995
  call void @llvm.dbg.value(metadata i32 %48, metadata !379, metadata !DIExpression()), !dbg !937
  %49 = icmp eq i32 %48, 4, !dbg !995
  br i1 %49, label %53, label %50, !dbg !997

50:                                               ; preds = %47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !998, !tbaa !471
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %48) #15, !dbg !1000
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1001
  call void @llvm.dbg.value(metadata i32 1, metadata !383, metadata !DIExpression()), !dbg !937
  br label %53, !dbg !1002

53:                                               ; preds = %44, %47, %50, %39
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !371, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.label(metadata !384), !dbg !1003
  %54 = icmp eq %struct._IO_FILE* %23, null, !dbg !1004
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1006
  %56 = icmp eq %struct._IO_FILE* %23, %55, !dbg !1007
  %57 = or i1 %54, %56, !dbg !1008
  br i1 %57, label %60, label %58, !dbg !1008

58:                                               ; preds = %53
  %59 = call i32 @fclose(%struct._IO_FILE* nonnull %23), !dbg !1009
  br label %60, !dbg !1009

60:                                               ; preds = %19, %8, %53, %58
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), metadata !382, metadata !DIExpression()), !dbg !937
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #14, !dbg !1010
  ret [4 x [4 x double]]* @getmatrix.mat, !dbg !1011
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
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* readonly %1, i8* readonly %2) local_unnamed_addr #0 !dbg !1012 {
  %4 = alloca [8 x i8], align 4
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !1021, metadata !DIExpression()), !dbg !1053
  %5 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !1038, metadata !DIExpression()), !dbg !1059
  %6 = alloca [7 x i8], align 1
  call void @llvm.dbg.declare(metadata [7 x i8]* %6, metadata !1040, metadata !DIExpression()), !dbg !1060
  %7 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !1044, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8* %0, metadata !1016, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1017, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8* %2, metadata !1018, metadata !DIExpression()), !dbg !1062
  %8 = icmp eq %struct.molecule_t* %1, null, !dbg !1063
  %9 = tail call i32 @get_mytaskid() #14, !dbg !1062
  %10 = icmp eq i32 %9, 0, !dbg !1062
  br i1 %8, label %11, label %15, !dbg !1065

11:                                               ; preds = %3
  br i1 %10, label %12, label %611, !dbg !1066

12:                                               ; preds = %11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1068, !tbaa !471
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %13) #15, !dbg !1071
  br label %611, !dbg !1072

15:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1020, metadata !DIExpression()), !dbg !1062
  br i1 %10, label %16, label %609, !dbg !1073

16:                                               ; preds = %15
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1074
  %18 = icmp eq i32 %17, 0, !dbg !1074
  br i1 %18, label %19, label %21, !dbg !1076

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1077, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !1019, metadata !DIExpression()), !dbg !1062
  br label %26, !dbg !1078

21:                                               ; preds = %16
  %22 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1079
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1019, metadata !DIExpression()), !dbg !1062
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !1081
  br i1 %23, label %24, label %26, !dbg !1082

24:                                               ; preds = %21
  %25 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1083
  call void @llvm.dbg.value(metadata i32 -1, metadata !1020, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 -1, metadata !1020, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1019, metadata !DIExpression()), !dbg !1062
  br label %609, !dbg !1085

26:                                               ; preds = %19, %21
  %27 = phi %struct._IO_FILE* [ %20, %19 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !1020, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1019, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1026, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1027, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i8* %2, metadata !1028, metadata !DIExpression()) #14, !dbg !1086
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #14, !dbg !1087
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1088
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #14, !dbg !1088
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %30) #14, !dbg !1089
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1090
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %31) #14, !dbg !1090
  call void @llvm.dbg.value(metadata i32 0, metadata !1045, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1046, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1047, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1048, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1049, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1050, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1051, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1052, metadata !DIExpression()) #14, !dbg !1086
  %32 = icmp eq %struct._IO_FILE* %27, null, !dbg !1091
  br i1 %32, label %33, label %36, !dbg !1093

33:                                               ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1094, !tbaa !471
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %34) #16, !dbg !1096
  br label %604, !dbg !1097

36:                                               ; preds = %26
  %37 = icmp eq i8* %2, null, !dbg !1098
  br i1 %37, label %38, label %39, !dbg !1100

38:                                               ; preds = %36
  store i8 0, i8* %31, align 16, !dbg !1101, !tbaa !465
  br label %42, !dbg !1102

39:                                               ; preds = %36
  %40 = call i8* @strncpy(i8* nonnull %31, i8* nonnull %2, i64 255) #14, !dbg !1103
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255, !dbg !1105
  store i8 0, i8* %41, align 1, !dbg !1106, !tbaa !465
  br label %42

42:                                               ; preds = %39, %38
  %43 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #13, !dbg !1107
  %44 = icmp ne i8* %43, null, !dbg !1108
  call void @llvm.dbg.value(metadata i1 %44, metadata !1045, metadata !DIExpression()) #14, !dbg !1086
  %45 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #13, !dbg !1109
  %46 = icmp ne i8* %45, null, !dbg !1110
  call void @llvm.dbg.value(metadata i1 %46, metadata !1046, metadata !DIExpression()) #14, !dbg !1086
  %47 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #13, !dbg !1111
  %48 = icmp ne i8* %47, null, !dbg !1112
  call void @llvm.dbg.value(metadata i1 %48, metadata !1047, metadata !DIExpression()) #14, !dbg !1086
  %49 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #13, !dbg !1113
  %50 = icmp ne i8* %49, null, !dbg !1114
  call void @llvm.dbg.value(metadata i1 %50, metadata !1048, metadata !DIExpression()) #14, !dbg !1086
  %51 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #13, !dbg !1115
  %52 = icmp ne i8* %51, null, !dbg !1116
  call void @llvm.dbg.value(metadata i1 %52, metadata !1049, metadata !DIExpression()) #14, !dbg !1086
  %53 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #13, !dbg !1117
  %54 = icmp eq i8* %53, null, !dbg !1118
  call void @llvm.dbg.value(metadata i1 %54, metadata !1050, metadata !DIExpression()) #14, !dbg !1086
  %55 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #13, !dbg !1119
  %56 = icmp ne i8* %55, null, !dbg !1120
  call void @llvm.dbg.value(metadata i1 %56, metadata !1051, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i1 undef, metadata !1050, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i1 undef, metadata !1121, metadata !DIExpression()) #14, !dbg !1133
  call void @llvm.dbg.value(metadata i1 %56, metadata !1126, metadata !DIExpression()) #14, !dbg !1133
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1127, metadata !DIExpression()) #14, !dbg !1133
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1128, metadata !DIExpression()) #14, !dbg !1133
  call void @llvm.dbg.value(metadata i32 0, metadata !1131, metadata !DIExpression()) #14, !dbg !1133
  %57 = or i1 %54, %56, !dbg !1135
  br i1 %57, label %58, label %109, !dbg !1137

58:                                               ; preds = %42
  %59 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 16) #14, !dbg !1138
  %60 = bitcast i8* %59 to %struct.cid_t*, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1128, metadata !DIExpression()) #14, !dbg !1133
  %61 = icmp eq i8* %59, null, !dbg !1140
  br i1 %61, label %62, label %65, !dbg !1142

62:                                               ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1143, !tbaa !471
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %63) #16, !dbg !1145
  call void @llvm.dbg.value(metadata i32 undef, metadata !1131, metadata !DIExpression()) #14, !dbg !1133
  call void @llvm.dbg.label(metadata !1132) #14, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1147, metadata !DIExpression()) #14, !dbg !1152
  br label %109, !dbg !1156

65:                                               ; preds = %58
  %66 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #14, !dbg !1157
  %67 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !1158
  %68 = bitcast i8* %67 to i8**, !dbg !1158
  store i8* %66, i8** %68, align 8, !dbg !1159, !tbaa !1160
  %69 = icmp eq i8* %66, null, !dbg !1162
  br i1 %69, label %106, label %70, !dbg !1164

70:                                               ; preds = %65
  %71 = bitcast i8* %59 to i32*, !dbg !1165
  store i32 65, i32* %71, align 8, !dbg !1166, !tbaa !1167
  %72 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1168
  %73 = bitcast i8* %72 to i32*, !dbg !1168
  store i32 90, i32* %73, align 4, !dbg !1169, !tbaa !1170
  call void @llvm.dbg.value(metadata i32 65, metadata !1129, metadata !DIExpression()) #14, !dbg !1133
  %74 = getelementptr i8, i8* %66, i64 65, !dbg !1171
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(26) %74, i8 0, i64 26, i1 false) #14, !dbg !1173
  call void @llvm.dbg.value(metadata i32 undef, metadata !1129, metadata !DIExpression()) #14, !dbg !1133
  br i1 %56, label %75, label %109, !dbg !1175

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1176
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1130, metadata !DIExpression()) #14, !dbg !1133
  %77 = load %struct.strand_t*, %struct.strand_t** %76, align 8, !dbg !1180, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %77, metadata !1130, metadata !DIExpression()) #14, !dbg !1133
  %78 = icmp eq %struct.strand_t* %77, null, !dbg !1181
  br i1 %78, label %96, label %79, !dbg !1181

79:                                               ; preds = %75, %92
  %80 = phi %struct.strand_t* [ %94, %92 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i64 0, i32 0, !dbg !1182
  %82 = load i8*, i8** %81, align 8, !dbg !1182, !tbaa !787
  %83 = call i64 @strlen(i8* nonnull dereferenceable(1) %82) #13, !dbg !1186
  %84 = icmp eq i64 %83, 1, !dbg !1187
  br i1 %84, label %85, label %92, !dbg !1188

85:                                               ; preds = %79
  %86 = load i8, i8* %82, align 1, !dbg !1189, !tbaa !465
  call void @llvm.dbg.value(metadata i8 %86, metadata !1129, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1133
  %87 = add i8 %86, -65, !dbg !1191
  %88 = icmp ult i8 %87, 26, !dbg !1191
  br i1 %88, label %89, label %92, !dbg !1191

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i8 %86, metadata !1129, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1133
  %90 = zext i8 %86 to i64, !dbg !1193
  %91 = getelementptr inbounds i8, i8* %66, i64 %90, !dbg !1193
  store i8 1, i8* %91, align 1, !dbg !1194, !tbaa !465
  br label %92, !dbg !1193

92:                                               ; preds = %89, %85, %79
  %93 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i64 0, i32 4, !dbg !1195
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1130, metadata !DIExpression()) #14, !dbg !1133
  %94 = load %struct.strand_t*, %struct.strand_t** %93, align 8, !dbg !1180, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %94, metadata !1130, metadata !DIExpression()) #14, !dbg !1133
  %95 = icmp eq %struct.strand_t* %94, null, !dbg !1181
  br i1 %95, label %96, label %79, !dbg !1181, !llvm.loop !1196

96:                                               ; preds = %92, %75
  br label %97, !dbg !1198

97:                                               ; preds = %96, %102
  %98 = phi i64 [ %103, %102 ], [ 65, %96 ]
  %99 = getelementptr inbounds i8, i8* %66, i64 %98, !dbg !1200
  %100 = load i8, i8* %99, align 1, !dbg !1200, !tbaa !465
  %101 = icmp eq i8 %100, 0, !dbg !1200
  br i1 %101, label %109, label %102, !dbg !1204

102:                                              ; preds = %97
  %103 = add nuw nsw i64 %98, 1, !dbg !1205
  %104 = trunc i64 %103 to i32, !dbg !1205
  store i32 %104, i32* %71, align 8, !dbg !1205, !tbaa !1167
  %105 = icmp eq i64 %103, 91, !dbg !1206
  br i1 %105, label %109, label %97, !dbg !1198, !llvm.loop !1207

106:                                              ; preds = %65
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1209, !tbaa !471
  %108 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %107) #16, !dbg !1211
  call void @llvm.dbg.value(metadata i32 undef, metadata !1131, metadata !DIExpression()) #14, !dbg !1133
  call void @llvm.dbg.label(metadata !1132) #14, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1147, metadata !DIExpression()) #14, !dbg !1152
  call void @free(i8* nonnull %59) #14, !dbg !1212
  br label %109, !dbg !1215

109:                                              ; preds = %102, %97, %106, %70, %62, %42
  %110 = phi %struct.cid_t* [ null, %42 ], [ %60, %70 ], [ null, %106 ], [ null, %62 ], [ %60, %97 ], [ %60, %102 ], !dbg !1133
  call void @llvm.dbg.value(metadata %struct.cid_t* %110, metadata !1052, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1030, metadata !DIExpression()) #14, !dbg !1086
  %111 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1216
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1035, metadata !DIExpression()) #14, !dbg !1086
  %112 = load %struct.strand_t*, %struct.strand_t** %111, align 8, !dbg !1218, !tbaa !471
  call void @llvm.dbg.value(metadata i32 0, metadata !1030, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata %struct.strand_t* %112, metadata !1035, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  %113 = icmp eq %struct.strand_t* %112, null, !dbg !1219
  br i1 %113, label %595, label %114, !dbg !1219

114:                                              ; preds = %109
  %115 = icmp eq %struct.cid_t* %110, null, !dbg !1220
  %116 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %110, i64 0, i32 0, !dbg !1234
  %117 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %110, i64 0, i32 1, !dbg !1234
  %118 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %110, i64 0, i32 2, !dbg !1236
  %119 = bitcast [8 x i8]* %4 to i32*, !dbg !1239
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1, !dbg !1253
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4, !dbg !1253
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2, !dbg !1269
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3, !dbg !1271
  %124 = bitcast [8 x i8]* %4 to i16*, !dbg !1273
  %125 = or i1 %48, %50, !dbg !1281
  %126 = xor i1 %125, true, !dbg !1281
  %127 = or i1 %44, %126, !dbg !1281
  %128 = or i1 %46, %127, !dbg !1281
  br label %129, !dbg !1219

129:                                              ; preds = %588, %114
  %130 = phi %struct.strand_t* [ %112, %114 ], [ %593, %588 ]
  %131 = phi i32 [ 0, %114 ], [ %590, %588 ]
  %132 = phi i32 [ 0, %114 ], [ %589, %588 ]
  call void @llvm.dbg.value(metadata i32 %131, metadata !1030, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %132, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata %struct.cid_t* %110, metadata !1226, metadata !DIExpression()) #14, !dbg !1283
  call void @llvm.dbg.value(metadata i1 undef, metadata !1227, metadata !DIExpression()) #14, !dbg !1283
  call void @llvm.dbg.value(metadata i1 %56, metadata !1228, metadata !DIExpression()) #14, !dbg !1283
  call void @llvm.dbg.value(metadata %struct.strand_t* %130, metadata !1229, metadata !DIExpression()) #14, !dbg !1283
  br i1 %57, label %133, label %173, !dbg !1284

133:                                              ; preds = %129
  br i1 %115, label %134, label %137, !dbg !1285

134:                                              ; preds = %133
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1286, !tbaa !471
  %136 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %135) #16, !dbg !1288
  br label %173, !dbg !1289

137:                                              ; preds = %133
  %138 = load i32, i32* %116, align 8, !dbg !1290, !tbaa !1167
  %139 = load i32, i32* %117, align 4, !dbg !1291, !tbaa !1170
  %140 = icmp sgt i32 %138, %139, !dbg !1292
  br i1 %140, label %173, label %141, !dbg !1293

141:                                              ; preds = %137
  br i1 %56, label %142, label %171, !dbg !1294

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %130, i64 0, i32 0, !dbg !1295
  %144 = load i8*, i8** %143, align 8, !dbg !1295, !tbaa !787
  %145 = call i64 @strlen(i8* nonnull dereferenceable(1) %144) #13, !dbg !1297
  %146 = icmp eq i64 %145, 1, !dbg !1298
  br i1 %146, label %147, label %153, !dbg !1299

147:                                              ; preds = %142
  %148 = load i8, i8* %144, align 1, !dbg !1300, !tbaa !465
  call void @llvm.dbg.value(metadata i8 %148, metadata !1230, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1283
  %149 = add i8 %148, -65, !dbg !1302
  %150 = icmp ult i8 %149, 26, !dbg !1302
  br i1 %150, label %151, label %153, !dbg !1302

151:                                              ; preds = %147
  %152 = zext i8 %148 to i32, !dbg !1300
  call void @llvm.dbg.value(metadata i32 %152, metadata !1230, metadata !DIExpression()) #14, !dbg !1283
  br label %173, !dbg !1304

153:                                              ; preds = %147, %142
  call void @llvm.dbg.value(metadata i32 %138, metadata !1230, metadata !DIExpression()) #14, !dbg !1283
  %154 = load i8*, i8** %118, align 8, !dbg !1305, !tbaa !1160
  %155 = sext i32 %138 to i64, !dbg !1306
  %156 = getelementptr inbounds i8, i8* %154, i64 %155, !dbg !1306
  store i8 1, i8* %156, align 1, !dbg !1307, !tbaa !465
  %157 = load i32, i32* %116, align 8, !dbg !1308, !tbaa !1167
  %158 = load i32, i32* %117, align 4, !dbg !1310, !tbaa !1170
  %159 = sext i32 %157 to i64, !dbg !1308
  %160 = sext i32 %158 to i64, !dbg !1308
  br label %161, !dbg !1308

161:                                              ; preds = %166, %153
  %162 = phi i64 [ %163, %166 ], [ %159, %153 ]
  %163 = add nsw i64 %162, 1, !dbg !1312
  %164 = trunc i64 %163 to i32, !dbg !1312
  store i32 %164, i32* %116, align 8, !dbg !1312, !tbaa !1167
  %165 = icmp slt i64 %162, %160, !dbg !1313
  br i1 %165, label %166, label %173, !dbg !1314

166:                                              ; preds = %161
  %167 = load i8*, i8** %118, align 8, !dbg !1315, !tbaa !1160
  %168 = getelementptr inbounds i8, i8* %167, i64 %163, !dbg !1318
  %169 = load i8, i8* %168, align 1, !dbg !1318, !tbaa !465
  %170 = icmp eq i8 %169, 0, !dbg !1318
  br i1 %170, label %173, label %161, !dbg !1319, !llvm.loop !1320

171:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i32 %138, metadata !1230, metadata !DIExpression()) #14, !dbg !1283
  %172 = add nsw i32 %138, 1, !dbg !1322
  store i32 %172, i32* %116, align 8, !dbg !1322, !tbaa !1167
  br label %173, !dbg !1324

173:                                              ; preds = %166, %161, %171, %151, %137, %134, %129
  %174 = phi i32 [ 32, %134 ], [ %152, %151 ], [ %138, %171 ], [ 32, %129 ], [ 32, %137 ], [ %138, %161 ], [ %138, %166 ], !dbg !1283
  call void @llvm.dbg.value(metadata i32 %174, metadata !1034, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1029, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %131, metadata !1030, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %132, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  %175 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %130, i64 0, i32 5, !dbg !1325
  %176 = load i32, i32* %175, align 8, !dbg !1325, !tbaa !1326
  %177 = icmp sgt i32 %176, 0, !dbg !1327
  br i1 %177, label %178, label %588, !dbg !1328

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %130, i64 0, i32 7, !dbg !1329
  %180 = shl i32 %174, 24, !dbg !1330
  %181 = ashr exact i32 %180, 24, !dbg !1330
  br label %182, !dbg !1328

182:                                              ; preds = %581, %178
  %183 = phi i64 [ 0, %178 ], [ %583, %581 ]
  %184 = phi i32 [ %131, %178 ], [ %584, %581 ]
  %185 = phi i32 [ %132, %178 ], [ %582, %581 ]
  call void @llvm.dbg.value(metadata i64 %183, metadata !1029, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %184, metadata !1030, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %185, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  %186 = load %struct.residue_t**, %struct.residue_t*** %179, align 8, !dbg !1335, !tbaa !800
  %187 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %186, i64 %183, !dbg !1336
  %188 = load %struct.residue_t*, %struct.residue_t** %187, align 8, !dbg !1336, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %188, metadata !1036, metadata !DIExpression()) #14, !dbg !1086
  %189 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %188, i64 0, i32 5, !dbg !1337
  %190 = load i8*, i8** %189, align 8, !dbg !1337, !tbaa !762
  %191 = icmp eq i8* %190, null, !dbg !1338
  %192 = select i1 %191, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), i8* %190, !dbg !1338
  %193 = call i8* @strcpy(i8* nonnull %30, i8* nonnull dereferenceable(1) %192) #14, !dbg !1339
  %194 = getelementptr %struct.residue_t, %struct.residue_t* %188, i64 0, i32 4, !dbg !1340
  %195 = load i8*, i8** %194, align 8, !dbg !1340, !tbaa !759
  br i1 %48, label %196, label %266, !dbg !1341

196:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i8* %28, metadata !1342, metadata !DIExpression()) #14, !dbg !1346
  %197 = call i8* @strcpy(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(1) %195) #14, !dbg !1348
  %198 = load i32, i32* %119, align 4, !dbg !1349
  switch i32 %198, label %204 [
    i32 4281671, label %199
    i32 4539457, label %200
    i32 5851220, label %201
    i32 5527875, label %202
    i32 4280917, label %203
  ], !dbg !1351

199:                                              ; preds = %196
  store i32 4661280, i32* %119, align 4, !dbg !1352
  br label %204, !dbg !1353

200:                                              ; preds = %196
  store i32 4268064, i32* %119, align 4, !dbg !1354
  br label %204, !dbg !1354

201:                                              ; preds = %196
  store i32 5513248, i32* %119, align 4, !dbg !1356
  br label %204, !dbg !1356

202:                                              ; preds = %196
  store i32 4399136, i32* %119, align 4, !dbg !1358
  br label %204, !dbg !1358

203:                                              ; preds = %196
  store i32 5578784, i32* %119, align 4, !dbg !1360
  br label %204, !dbg !1360

204:                                              ; preds = %203, %202, %201, %200, %199, %196
  %205 = phi i32 [ 5578784, %203 ], [ 4399136, %202 ], [ 5513248, %201 ], [ 4661280, %199 ], [ 4268064, %200 ], [ %198, %196 ]
  %206 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #14, !dbg !1362
  %207 = icmp eq i32 %206, 0, !dbg !1362
  br i1 %207, label %208, label %209, !dbg !1364

208:                                              ; preds = %204
  store i32 4661280, i32* %119, align 4, !dbg !1365
  br label %209, !dbg !1365

209:                                              ; preds = %208, %204
  %210 = phi i32 [ 4661280, %208 ], [ %205, %204 ]
  %211 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #14, !dbg !1366
  %212 = icmp eq i32 %211, 0, !dbg !1366
  br i1 %212, label %213, label %214, !dbg !1368

213:                                              ; preds = %209
  store i32 4268064, i32* %119, align 4, !dbg !1369
  br label %214, !dbg !1369

214:                                              ; preds = %213, %209
  %215 = phi i32 [ 4268064, %213 ], [ %210, %209 ]
  %216 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #14, !dbg !1370
  %217 = icmp eq i32 %216, 0, !dbg !1370
  br i1 %217, label %218, label %219, !dbg !1372

218:                                              ; preds = %214
  store i32 5513248, i32* %119, align 4, !dbg !1373
  br label %219, !dbg !1373

219:                                              ; preds = %218, %214
  %220 = phi i32 [ 5513248, %218 ], [ %215, %214 ]
  %221 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #14, !dbg !1374
  %222 = icmp eq i32 %221, 0, !dbg !1374
  br i1 %222, label %223, label %224, !dbg !1376

223:                                              ; preds = %219
  store i32 4399136, i32* %119, align 4, !dbg !1377
  br label %224, !dbg !1377

224:                                              ; preds = %223, %219
  %225 = phi i32 [ 4399136, %223 ], [ %220, %219 ]
  %226 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #14, !dbg !1378
  %227 = icmp eq i32 %226, 0, !dbg !1378
  br i1 %227, label %228, label %229, !dbg !1380

228:                                              ; preds = %224
  store i32 4661280, i32* %119, align 4, !dbg !1381
  br label %229, !dbg !1381

229:                                              ; preds = %228, %224
  %230 = phi i32 [ 4661280, %228 ], [ %225, %224 ]
  %231 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #14, !dbg !1382
  %232 = icmp eq i32 %231, 0, !dbg !1382
  br i1 %232, label %233, label %234, !dbg !1384

233:                                              ; preds = %229
  store i32 4268064, i32* %119, align 4, !dbg !1385
  br label %234, !dbg !1385

234:                                              ; preds = %233, %229
  %235 = phi i32 [ 4268064, %233 ], [ %230, %229 ]
  %236 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #14, !dbg !1386
  %237 = icmp eq i32 %236, 0, !dbg !1386
  br i1 %237, label %238, label %239, !dbg !1388

238:                                              ; preds = %234
  store i32 5578784, i32* %119, align 4, !dbg !1389
  br label %239, !dbg !1389

239:                                              ; preds = %238, %234
  %240 = phi i32 [ 5578784, %238 ], [ %235, %234 ]
  %241 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #14, !dbg !1390
  %242 = icmp eq i32 %241, 0, !dbg !1390
  br i1 %242, label %243, label %244, !dbg !1392

243:                                              ; preds = %239
  store i32 4399136, i32* %119, align 4, !dbg !1393
  br label %339, !dbg !1394

244:                                              ; preds = %239
  switch i32 %240, label %339 [
    i32 3360580, label %245
    i32 3359044, label %246
    i32 3363908, label %247
    i32 3359556, label %248
    i32 3360594, label %249
    i32 3359058, label %250
    i32 3364178, label %251
    i32 3359570, label %252
    i32 3491652, label %253
    i32 3490116, label %254
    i32 3494980, label %255
    i32 3490628, label %256
    i32 3491666, label %257
    i32 3490130, label %258
    i32 3495250, label %259
    i32 3490642, label %260
    i32 4475208, label %261
    i32 5261640, label %262
    i32 5790019, label %263
    i32 4739905, label %264
    i32 4738119, label %265
  ], !dbg !1394

245:                                              ; preds = %244
  store i32 4661280, i32* %119, align 4, !dbg !1395
  br label %339, !dbg !1395

246:                                              ; preds = %244
  store i32 4268064, i32* %119, align 4, !dbg !1397
  br label %339, !dbg !1397

247:                                              ; preds = %244
  store i32 5513248, i32* %119, align 4, !dbg !1399
  br label %339, !dbg !1399

248:                                              ; preds = %244
  store i32 4399136, i32* %119, align 4, !dbg !1401
  br label %339, !dbg !1401

249:                                              ; preds = %244
  store i32 4661280, i32* %119, align 4, !dbg !1403
  br label %339, !dbg !1403

250:                                              ; preds = %244
  store i32 4268064, i32* %119, align 4, !dbg !1405
  br label %339, !dbg !1405

251:                                              ; preds = %244
  store i32 5578784, i32* %119, align 4, !dbg !1407
  br label %339, !dbg !1407

252:                                              ; preds = %244
  store i32 4399136, i32* %119, align 4, !dbg !1409
  br label %339, !dbg !1409

253:                                              ; preds = %244
  store i32 4661280, i32* %119, align 4, !dbg !1411
  br label %339, !dbg !1411

254:                                              ; preds = %244
  store i32 4268064, i32* %119, align 4, !dbg !1413
  br label %339, !dbg !1413

255:                                              ; preds = %244
  store i32 5513248, i32* %119, align 4, !dbg !1415
  br label %339, !dbg !1415

256:                                              ; preds = %244
  store i32 4399136, i32* %119, align 4, !dbg !1417
  br label %339, !dbg !1417

257:                                              ; preds = %244
  store i32 4661280, i32* %119, align 4, !dbg !1419
  br label %339, !dbg !1419

258:                                              ; preds = %244
  store i32 4268064, i32* %119, align 4, !dbg !1421
  br label %339, !dbg !1421

259:                                              ; preds = %244
  store i32 5578784, i32* %119, align 4, !dbg !1423
  br label %339, !dbg !1423

260:                                              ; preds = %244
  store i32 4399136, i32* %119, align 4, !dbg !1425
  br label %339, !dbg !1427

261:                                              ; preds = %244
  store i32 5458248, i32* %119, align 4, !dbg !1428
  br label %339, !dbg !1428

262:                                              ; preds = %244
  store i32 5458248, i32* %119, align 4, !dbg !1430
  br label %339, !dbg !1430

263:                                              ; preds = %244
  store i32 5462339, i32* %119, align 4, !dbg !1432
  br label %339, !dbg !1432

264:                                              ; preds = %244
  store i32 5264193, i32* %119, align 4, !dbg !1434
  br label %339, !dbg !1434

265:                                              ; preds = %244
  store i32 5590087, i32* %119, align 4, !dbg !1436
  br label %339, !dbg !1436

266:                                              ; preds = %182
  br i1 %50, label %267, label %337, !dbg !1438

267:                                              ; preds = %266
  call void @llvm.dbg.value(metadata i8* %28, metadata !1245, metadata !DIExpression()) #14, !dbg !1439
  %268 = call i8* @strcpy(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(1) %195) #14, !dbg !1440
  %269 = load i32, i32* %119, align 4, !dbg !1441
  switch i32 %269, label %275 [
    i32 4281671, label %270
    i32 4539457, label %271
    i32 5851220, label %272
    i32 5527875, label %273
    i32 4280917, label %274
  ], !dbg !1442

270:                                              ; preds = %267
  store i32 4661280, i32* %119, align 4, !dbg !1443
  br label %275, !dbg !1444

271:                                              ; preds = %267
  store i32 4268064, i32* %119, align 4, !dbg !1445
  br label %275, !dbg !1445

272:                                              ; preds = %267
  store i32 5513248, i32* %119, align 4, !dbg !1447
  br label %275, !dbg !1447

273:                                              ; preds = %267
  store i32 4399136, i32* %119, align 4, !dbg !1449
  br label %275, !dbg !1449

274:                                              ; preds = %267
  store i32 5578784, i32* %119, align 4, !dbg !1451
  br label %275, !dbg !1451

275:                                              ; preds = %274, %273, %272, %271, %270, %267
  %276 = phi i32 [ 5578784, %274 ], [ 4399136, %273 ], [ 5513248, %272 ], [ 4661280, %270 ], [ 4268064, %271 ], [ %269, %267 ]
  %277 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #14, !dbg !1453
  %278 = icmp eq i32 %277, 0, !dbg !1453
  br i1 %278, label %279, label %280, !dbg !1455

279:                                              ; preds = %275
  store i32 4670496, i32* %119, align 4, !dbg !1456
  br label %280, !dbg !1456

280:                                              ; preds = %279, %275
  %281 = phi i32 [ 4670496, %279 ], [ %276, %275 ]
  %282 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #14, !dbg !1457
  %283 = icmp eq i32 %282, 0, !dbg !1457
  br i1 %283, label %284, label %285, !dbg !1459

284:                                              ; preds = %280
  store i32 4277280, i32* %119, align 4, !dbg !1460
  br label %285, !dbg !1460

285:                                              ; preds = %284, %280
  %286 = phi i32 [ 4277280, %284 ], [ %281, %280 ]
  %287 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #14, !dbg !1461
  %288 = icmp eq i32 %287, 0, !dbg !1461
  br i1 %288, label %289, label %290, !dbg !1463

289:                                              ; preds = %285
  store i32 5522464, i32* %119, align 4, !dbg !1464
  br label %290, !dbg !1464

290:                                              ; preds = %289, %285
  %291 = phi i32 [ 5522464, %289 ], [ %286, %285 ]
  %292 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #14, !dbg !1465
  %293 = icmp eq i32 %292, 0, !dbg !1465
  br i1 %293, label %294, label %295, !dbg !1467

294:                                              ; preds = %290
  store i32 4408352, i32* %119, align 4, !dbg !1468
  br label %295, !dbg !1468

295:                                              ; preds = %294, %290
  %296 = phi i32 [ 4408352, %294 ], [ %291, %290 ]
  %297 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #14, !dbg !1469
  %298 = icmp eq i32 %297, 0, !dbg !1469
  br i1 %298, label %299, label %300, !dbg !1471

299:                                              ; preds = %295
  store i32 4674080, i32* %119, align 4, !dbg !1472
  br label %300, !dbg !1472

300:                                              ; preds = %299, %295
  %301 = phi i32 [ 4674080, %299 ], [ %296, %295 ]
  %302 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #14, !dbg !1473
  %303 = icmp eq i32 %302, 0, !dbg !1473
  br i1 %303, label %304, label %305, !dbg !1475

304:                                              ; preds = %300
  store i32 4280864, i32* %119, align 4, !dbg !1476
  br label %305, !dbg !1476

305:                                              ; preds = %304, %300
  %306 = phi i32 [ 4280864, %304 ], [ %301, %300 ]
  %307 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #14, !dbg !1477
  %308 = icmp eq i32 %307, 0, !dbg !1477
  br i1 %308, label %309, label %310, !dbg !1479

309:                                              ; preds = %305
  store i32 5591584, i32* %119, align 4, !dbg !1480
  br label %310, !dbg !1480

310:                                              ; preds = %309, %305
  %311 = phi i32 [ 5591584, %309 ], [ %306, %305 ]
  %312 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #14, !dbg !1481
  %313 = icmp eq i32 %312, 0, !dbg !1481
  br i1 %313, label %314, label %315, !dbg !1483

314:                                              ; preds = %310
  store i32 4411936, i32* %119, align 4, !dbg !1484
  br label %339, !dbg !1485

315:                                              ; preds = %310
  switch i32 %311, label %339 [
    i32 3360580, label %316
    i32 3359044, label %317
    i32 3363908, label %318
    i32 3359556, label %319
    i32 3360594, label %320
    i32 3359058, label %321
    i32 3364178, label %322
    i32 3359570, label %323
    i32 3491652, label %324
    i32 3490116, label %325
    i32 3494980, label %326
    i32 3490628, label %327
    i32 3491666, label %328
    i32 3490130, label %329
    i32 3495250, label %330
    i32 3490642, label %331
    i32 4475208, label %332
    i32 5261640, label %333
    i32 5790019, label %334
    i32 4739905, label %335
    i32 4738119, label %336
  ], !dbg !1485

316:                                              ; preds = %315
  store i32 4670496, i32* %119, align 4, !dbg !1486
  br label %339, !dbg !1486

317:                                              ; preds = %315
  store i32 4277280, i32* %119, align 4, !dbg !1488
  br label %339, !dbg !1488

318:                                              ; preds = %315
  store i32 5522464, i32* %119, align 4, !dbg !1490
  br label %339, !dbg !1490

319:                                              ; preds = %315
  store i32 4408352, i32* %119, align 4, !dbg !1492
  br label %339, !dbg !1492

320:                                              ; preds = %315
  store i32 4674080, i32* %119, align 4, !dbg !1494
  br label %339, !dbg !1494

321:                                              ; preds = %315
  store i32 4280864, i32* %119, align 4, !dbg !1496
  br label %339, !dbg !1496

322:                                              ; preds = %315
  store i32 5591584, i32* %119, align 4, !dbg !1498
  br label %339, !dbg !1498

323:                                              ; preds = %315
  store i32 4411936, i32* %119, align 4, !dbg !1500
  br label %339, !dbg !1500

324:                                              ; preds = %315
  store i32 4670496, i32* %119, align 4, !dbg !1502
  br label %339, !dbg !1502

325:                                              ; preds = %315
  store i32 4277280, i32* %119, align 4, !dbg !1504
  br label %339, !dbg !1504

326:                                              ; preds = %315
  store i32 5522464, i32* %119, align 4, !dbg !1506
  br label %339, !dbg !1506

327:                                              ; preds = %315
  store i32 4408352, i32* %119, align 4, !dbg !1508
  br label %339, !dbg !1508

328:                                              ; preds = %315
  store i32 4674080, i32* %119, align 4, !dbg !1510
  br label %339, !dbg !1510

329:                                              ; preds = %315
  store i32 4280864, i32* %119, align 4, !dbg !1512
  br label %339, !dbg !1512

330:                                              ; preds = %315
  store i32 5591584, i32* %119, align 4, !dbg !1514
  br label %339, !dbg !1514

331:                                              ; preds = %315
  store i32 4411936, i32* %119, align 4, !dbg !1516
  br label %339, !dbg !1518

332:                                              ; preds = %315
  store i32 5458248, i32* %119, align 4, !dbg !1519
  br label %339, !dbg !1519

333:                                              ; preds = %315
  store i32 5458248, i32* %119, align 4, !dbg !1521
  br label %339, !dbg !1521

334:                                              ; preds = %315
  store i32 5462339, i32* %119, align 4, !dbg !1523
  br label %339, !dbg !1523

335:                                              ; preds = %315
  store i32 5264193, i32* %119, align 4, !dbg !1525
  br label %339, !dbg !1525

336:                                              ; preds = %315
  store i32 5590087, i32* %119, align 4, !dbg !1527
  br label %339, !dbg !1527

337:                                              ; preds = %266
  %338 = call i8* @strcpy(i8* nonnull %28, i8* nonnull dereferenceable(1) %195) #14, !dbg !1529
  br label %339

339:                                              ; preds = %337, %336, %335, %334, %333, %332, %331, %330, %329, %328, %327, %326, %325, %324, %323, %322, %321, %320, %319, %318, %317, %316, %315, %314, %265, %264, %263, %262, %261, %260, %259, %258, %257, %256, %255, %254, %253, %252, %251, %250, %249, %248, %247, %246, %245, %244, %243
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %185, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  %340 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %188, i64 0, i32 15, !dbg !1530
  %341 = load i32, i32* %340, align 8, !dbg !1530, !tbaa !768
  %342 = icmp sgt i32 %341, 0, !dbg !1531
  br i1 %342, label %343, label %581, !dbg !1532

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %188, i64 0, i32 17, !dbg !1533
  %345 = trunc i64 %183 to i32, !dbg !1534
  %346 = select i1 %52, i32 %184, i32 %345, !dbg !1534
  %347 = add nsw i32 %346, 1, !dbg !1534
  br label %348, !dbg !1532

348:                                              ; preds = %575, %343
  %349 = phi i64 [ 0, %343 ], [ %577, %575 ]
  %350 = phi i32 [ %185, %343 ], [ %351, %575 ]
  call void @llvm.dbg.value(metadata i64 %349, metadata !1032, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %350, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  %351 = add nsw i32 %350, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %351, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  %352 = load %struct.atom_t*, %struct.atom_t** %344, align 8, !dbg !1536, !tbaa !1537
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1037, metadata !DIExpression()) #14, !dbg !1086
  %353 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 0, !dbg !1538
  %354 = load i8*, i8** %353, align 8, !dbg !1538, !tbaa !529
  br i1 %48, label %355, label %383, !dbg !1539

355:                                              ; preds = %348
  call void @llvm.dbg.value(metadata i8* %29, metadata !1277, metadata !DIExpression()) #14, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %354, metadata !1278, metadata !DIExpression()) #14, !dbg !1540
  call void @llvm.dbg.value(metadata i8* %28, metadata !1279, metadata !DIExpression()) #14, !dbg !1540
  store i8 32, i8* %29, align 1, !dbg !1541, !tbaa !465
  %356 = call i64 @strlen(i8* nonnull dereferenceable(1) %354) #13, !dbg !1542
  %357 = icmp ugt i64 %356, 3, !dbg !1544
  br i1 %357, label %358, label %363, !dbg !1545

358:                                              ; preds = %355
  %359 = getelementptr inbounds i8, i8* %354, i64 3, !dbg !1546
  %360 = load i8, i8* %359, align 1, !dbg !1546, !tbaa !465
  %361 = icmp eq i8 %360, 32, !dbg !1547
  br i1 %361, label %363, label %362, !dbg !1548

362:                                              ; preds = %358
  store i8 %360, i8* %29, align 1, !dbg !1549, !tbaa !465
  br label %363, !dbg !1550

363:                                              ; preds = %362, %358, %355
  %364 = load i8, i8* %354, align 1, !dbg !1551, !tbaa !465
  store i8 %364, i8* %120, align 1, !dbg !1552, !tbaa !465
  %365 = getelementptr inbounds i8, i8* %354, i64 1, !dbg !1553
  %366 = load i8, i8* %365, align 1, !dbg !1553, !tbaa !465
  store i8 %366, i8* %122, align 1, !dbg !1554, !tbaa !465
  %367 = getelementptr inbounds i8, i8* %354, i64 2, !dbg !1555
  %368 = load i8, i8* %367, align 1, !dbg !1555, !tbaa !465
  %369 = icmp eq i8 %368, 39, !dbg !1556
  %370 = select i1 %369, i8 42, i8 %368, !dbg !1558
  store i8 %370, i8* %123, align 1, !dbg !1540, !tbaa !465
  store i8 0, i8* %121, align 1, !dbg !1559, !tbaa !465
  %371 = call i32 @bcmp(i8* nonnull dereferenceable(2) %29, i8* nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #14, !dbg !1560
  %372 = icmp eq i32 %371, 0, !dbg !1560
  %373 = add i8 %370, -49, !dbg !1561
  %374 = icmp ult i8 %373, 3, !dbg !1561
  %375 = and i1 %372, %374, !dbg !1562
  br i1 %375, label %376, label %517, !dbg !1562

376:                                              ; preds = %363
  %377 = call i32 @bcmp(i8* nonnull dereferenceable(3) %29, i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #14, !dbg !1563
  %378 = icmp ne i32 %377, 0, !dbg !1563
  %379 = load i16, i16* %124, align 4, !dbg !1564
  %380 = icmp eq i16 %379, 18760, !dbg !1564
  %381 = and i1 %378, %380, !dbg !1565
  br i1 %381, label %517, label %382, !dbg !1565

382:                                              ; preds = %376
  store i8 %370, i8* %29, align 1, !dbg !1566, !tbaa !465
  store i8 32, i8* %123, align 1, !dbg !1568, !tbaa !465
  br label %517, !dbg !1569

383:                                              ; preds = %348
  br i1 %50, label %384, label %515, !dbg !1570

384:                                              ; preds = %383
  call void @llvm.dbg.value(metadata i8* %29, metadata !1260, metadata !DIExpression()) #14, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %354, metadata !1261, metadata !DIExpression()) #14, !dbg !1571
  call void @llvm.dbg.value(metadata i8* undef, metadata !1262, metadata !DIExpression()) #14, !dbg !1571
  %385 = call i64 @strlen(i8* nonnull dereferenceable(1) %354) #13, !dbg !1572
  %386 = icmp ugt i64 %385, 3, !dbg !1573
  br i1 %386, label %387, label %393, !dbg !1574

387:                                              ; preds = %384
  %388 = getelementptr inbounds i8, i8* %354, i64 3, !dbg !1575
  %389 = load i8, i8* %388, align 1, !dbg !1575, !tbaa !465
  %390 = icmp eq i8 %389, 32, !dbg !1576
  br i1 %390, label %393, label %391, !dbg !1577

391:                                              ; preds = %387
  %392 = call i8* @strncpy(i8* nonnull dereferenceable(1) %29, i8* nonnull dereferenceable(1) %354, i64 5) #14, !dbg !1578
  br label %395, !dbg !1580

393:                                              ; preds = %387, %384
  store i8 32, i8* %29, align 1, !dbg !1581, !tbaa !465
  %394 = call i8* @strncpy(i8* nonnull %120, i8* nonnull dereferenceable(1) %354, i64 3) #14, !dbg !1582
  store i8 0, i8* %121, align 1, !dbg !1583, !tbaa !465
  br label %395

395:                                              ; preds = %393, %391
  %396 = load i8, i8* %120, align 1, !dbg !1584, !tbaa !465
  %397 = icmp eq i8 %396, 0, !dbg !1586
  br i1 %397, label %398, label %399, !dbg !1587

398:                                              ; preds = %395
  store i8 32, i8* %120, align 1, !dbg !1588, !tbaa !465
  br label %399, !dbg !1589

399:                                              ; preds = %398, %395
  %400 = phi i8 [ 32, %398 ], [ %396, %395 ]
  %401 = load i8, i8* %122, align 1, !dbg !1590, !tbaa !465
  %402 = icmp eq i8 %401, 0, !dbg !1591
  br i1 %402, label %403, label %404, !dbg !1592

403:                                              ; preds = %399
  store i8 32, i8* %122, align 1, !dbg !1593, !tbaa !465
  br label %404, !dbg !1594

404:                                              ; preds = %403, %399
  %405 = phi i8 [ 32, %403 ], [ %401, %399 ]
  %406 = load i8, i8* %123, align 1, !dbg !1595, !tbaa !465
  %407 = icmp eq i8 %406, 0, !dbg !1596
  br i1 %407, label %408, label %409, !dbg !1597

408:                                              ; preds = %404
  store i8 32, i8* %123, align 1, !dbg !1598, !tbaa !465
  br label %409, !dbg !1599

409:                                              ; preds = %408, %404
  %410 = phi i8 [ 32, %408 ], [ %406, %404 ]
  %411 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #14, !dbg !1600
  %412 = icmp eq i32 %411, 0, !dbg !1600
  br i1 %412, label %413, label %414, !dbg !1602

413:                                              ; preds = %409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1603
  br label %414, !dbg !1603

414:                                              ; preds = %413, %409
  %415 = phi i8 [ %410, %409 ], [ 39, %413 ]
  %416 = phi i8 [ %405, %409 ], [ 53, %413 ]
  %417 = phi i8 [ %400, %409 ], [ 72, %413 ]
  %418 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #14, !dbg !1604
  %419 = icmp eq i32 %418, 0, !dbg !1604
  br i1 %419, label %420, label %421, !dbg !1606

420:                                              ; preds = %414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1607
  br label %421, !dbg !1607

421:                                              ; preds = %420, %414
  %422 = phi i8 [ %415, %414 ], [ 39, %420 ]
  %423 = phi i8 [ %416, %414 ], [ 39, %420 ]
  %424 = phi i8 [ %417, %414 ], [ 53, %420 ]
  %425 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #14, !dbg !1608
  %426 = icmp eq i32 %425, 0, !dbg !1608
  br i1 %426, label %427, label %428, !dbg !1610

427:                                              ; preds = %421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1611
  br label %428, !dbg !1611

428:                                              ; preds = %427, %421
  %429 = phi i8 [ %422, %421 ], [ 39, %427 ]
  %430 = phi i8 [ %423, %421 ], [ 50, %427 ]
  %431 = phi i8 [ %424, %421 ], [ 72, %427 ]
  %432 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #14, !dbg !1612
  %433 = icmp eq i32 %432, 0, !dbg !1612
  br i1 %433, label %434, label %435, !dbg !1614

434:                                              ; preds = %428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1615
  br label %435, !dbg !1615

435:                                              ; preds = %434, %428
  %436 = phi i8 [ %429, %428 ], [ 39, %434 ]
  %437 = phi i8 [ %430, %428 ], [ 39, %434 ]
  %438 = phi i8 [ %431, %428 ], [ 50, %434 ]
  %439 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #14, !dbg !1616
  %440 = icmp eq i32 %439, 0, !dbg !1616
  br i1 %440, label %441, label %442, !dbg !1618

441:                                              ; preds = %435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1619
  br label %442, !dbg !1619

442:                                              ; preds = %441, %435
  %443 = phi i8 [ %436, %435 ], [ 49, %441 ]
  %444 = phi i8 [ %437, %435 ], [ 80, %441 ]
  %445 = phi i8 [ %438, %435 ], [ 79, %441 ]
  %446 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #14, !dbg !1620
  %447 = icmp eq i32 %446, 0, !dbg !1620
  br i1 %447, label %448, label %449, !dbg !1622

448:                                              ; preds = %442
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1623
  br label %449, !dbg !1623

449:                                              ; preds = %448, %442
  %450 = phi i8 [ %443, %442 ], [ 50, %448 ]
  %451 = phi i8 [ %444, %442 ], [ 80, %448 ]
  %452 = phi i8 [ %445, %442 ], [ 79, %448 ]
  %453 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #14, !dbg !1624
  %454 = icmp eq i32 %453, 0, !dbg !1624
  br i1 %454, label %455, label %456, !dbg !1626

455:                                              ; preds = %449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1627
  br label %456, !dbg !1627

456:                                              ; preds = %455, %449
  %457 = phi i8 [ %450, %449 ], [ 39, %455 ]
  %458 = phi i8 [ %451, %449 ], [ 53, %455 ]
  %459 = phi i8 [ %452, %449 ], [ 79, %455 ]
  %460 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #14, !dbg !1628
  %461 = icmp eq i32 %460, 0, !dbg !1628
  br i1 %461, label %462, label %463, !dbg !1630

462:                                              ; preds = %456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1631
  br label %463, !dbg !1631

463:                                              ; preds = %462, %456
  %464 = phi i8 [ %457, %456 ], [ 39, %462 ]
  %465 = phi i8 [ %458, %456 ], [ 51, %462 ]
  %466 = phi i8 [ %459, %456 ], [ 79, %462 ]
  %467 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #14, !dbg !1632
  %468 = icmp eq i32 %467, 0, !dbg !1632
  br i1 %468, label %514, label %469, !dbg !1634

469:                                              ; preds = %463
  %470 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #14, !dbg !1635
  %471 = icmp eq i32 %470, 0, !dbg !1635
  br i1 %471, label %514, label %472, !dbg !1636

472:                                              ; preds = %469
  %473 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #14, !dbg !1637
  %474 = icmp eq i32 %473, 0, !dbg !1637
  br i1 %474, label %514, label %475, !dbg !1638

475:                                              ; preds = %472
  %476 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #14, !dbg !1639
  %477 = icmp eq i32 %476, 0, !dbg !1639
  br i1 %477, label %514, label %478, !dbg !1640

478:                                              ; preds = %475
  %479 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #14, !dbg !1641
  %480 = icmp eq i32 %479, 0, !dbg !1641
  br i1 %480, label %514, label %481, !dbg !1642

481:                                              ; preds = %478
  %482 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #14, !dbg !1643
  %483 = icmp eq i32 %482, 0, !dbg !1643
  br i1 %483, label %514, label %484, !dbg !1644

484:                                              ; preds = %481
  %485 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #14, !dbg !1645
  %486 = icmp eq i32 %485, 0, !dbg !1645
  br i1 %486, label %514, label %487, !dbg !1646

487:                                              ; preds = %484
  %488 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #14, !dbg !1647
  %489 = icmp eq i32 %488, 0, !dbg !1647
  br i1 %489, label %514, label %490, !dbg !1648

490:                                              ; preds = %487
  %491 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #14, !dbg !1649
  %492 = icmp eq i32 %491, 0, !dbg !1649
  br i1 %492, label %514, label %493, !dbg !1650

493:                                              ; preds = %490
  %494 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #14, !dbg !1651
  %495 = icmp eq i32 %494, 0, !dbg !1651
  br i1 %495, label %514, label %496, !dbg !1652

496:                                              ; preds = %493
  %497 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #14, !dbg !1653
  %498 = icmp eq i32 %497, 0, !dbg !1653
  br i1 %498, label %514, label %499, !dbg !1654

499:                                              ; preds = %496
  %500 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #14, !dbg !1655
  %501 = icmp eq i32 %500, 0, !dbg !1655
  br i1 %501, label %514, label %502, !dbg !1656

502:                                              ; preds = %499
  %503 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #14, !dbg !1657
  %504 = icmp eq i32 %503, 0, !dbg !1657
  br i1 %504, label %514, label %505, !dbg !1658

505:                                              ; preds = %502
  %506 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #14, !dbg !1659
  %507 = icmp eq i32 %506, 0, !dbg !1659
  br i1 %507, label %514, label %508, !dbg !1660

508:                                              ; preds = %505
  %509 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #14, !dbg !1661
  %510 = icmp eq i32 %509, 0, !dbg !1661
  br i1 %510, label %514, label %511, !dbg !1662

511:                                              ; preds = %508
  %512 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #14, !dbg !1663
  %513 = icmp eq i32 %512, 0, !dbg !1663
  br i1 %513, label %514, label %517, !dbg !1664

514:                                              ; preds = %511, %508, %505, %502, %499, %496, %493, %490, %487, %484, %481, %478, %475, %472, %469, %463
  store i8 %466, i8* %29, align 1, !dbg !1665, !tbaa !465
  store i8 %465, i8* %120, align 1, !dbg !1667, !tbaa !465
  store i8 %464, i8* %122, align 1, !dbg !1668, !tbaa !465
  store i8 32, i8* %123, align 1, !dbg !1669, !tbaa !465
  br label %517, !dbg !1670

515:                                              ; preds = %383
  %516 = call i8* @strcpy(i8* nonnull %29, i8* nonnull dereferenceable(1) %354) #14, !dbg !1671
  br label %517

517:                                              ; preds = %515, %514, %511, %382, %376, %363
  %518 = load i8, i8* %30, align 1, !dbg !1672
  %519 = icmp eq i8 %518, 0, !dbg !1672
  %520 = or i1 %52, %519, !dbg !1673
  %521 = icmp slt i32 %350, 99999, !dbg !1674
  br i1 %520, label %522, label %540, !dbg !1673

522:                                              ; preds = %517
  call void @llvm.dbg.value(metadata i32 %347, metadata !1031, metadata !DIExpression()) #14, !dbg !1086
  br i1 %521, label %523, label %531, !dbg !1675

523:                                              ; preds = %522
  %524 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 0, !dbg !1676
  %525 = load double, double* %524, align 8, !dbg !1676, !tbaa !721
  %526 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 1, !dbg !1678
  %527 = load double, double* %526, align 8, !dbg !1678, !tbaa !721
  %528 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 2, !dbg !1679
  %529 = load double, double* %528, align 8, !dbg !1679, !tbaa !721
  %530 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %351, i8* nonnull %29, i8* nonnull %28, i32 %181, i32 %347, double %525, double %527, double %529) #14, !dbg !1680
  br label %558, !dbg !1681

531:                                              ; preds = %522
  %532 = srem i32 %351, 100000, !dbg !1682
  %533 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 0, !dbg !1683
  %534 = load double, double* %533, align 8, !dbg !1683, !tbaa !721
  %535 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 1, !dbg !1684
  %536 = load double, double* %535, align 8, !dbg !1684, !tbaa !721
  %537 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 2, !dbg !1685
  %538 = load double, double* %537, align 8, !dbg !1685, !tbaa !721
  %539 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %532, i8* nonnull %29, i8* nonnull %28, i32 %181, i32 %347, double %534, double %536, double %538) #14, !dbg !1686
  br label %558

540:                                              ; preds = %517
  br i1 %521, label %541, label %549, !dbg !1687

541:                                              ; preds = %540
  %542 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 0, !dbg !1689
  %543 = load double, double* %542, align 8, !dbg !1689, !tbaa !721
  %544 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 1, !dbg !1692
  %545 = load double, double* %544, align 8, !dbg !1692, !tbaa !721
  %546 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 2, !dbg !1693
  %547 = load double, double* %546, align 8, !dbg !1693, !tbaa !721
  %548 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %351, i8* nonnull %29, i8* nonnull %28, i8* nonnull %30, double %543, double %545, double %547) #14, !dbg !1694
  br label %558, !dbg !1695

549:                                              ; preds = %540
  %550 = srem i32 %351, 100000, !dbg !1696
  %551 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 0, !dbg !1698
  %552 = load double, double* %551, align 8, !dbg !1698, !tbaa !721
  %553 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 1, !dbg !1699
  %554 = load double, double* %553, align 8, !dbg !1699, !tbaa !721
  %555 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 2, !dbg !1700
  %556 = load double, double* %555, align 8, !dbg !1700, !tbaa !721
  %557 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %550, i8* nonnull %29, i8* nonnull %28, i8* nonnull %30, double %552, double %554, double %556) #14, !dbg !1701
  br label %558

558:                                              ; preds = %549, %541, %531, %523
  br i1 %44, label %559, label %565, !dbg !1702

559:                                              ; preds = %558
  %560 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 6, !dbg !1703
  %561 = load double, double* %560, align 8, !dbg !1703, !tbaa !858
  %562 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 7, !dbg !1706
  %563 = load double, double* %562, align 8, !dbg !1706, !tbaa !862
  %564 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %561, double %563) #14, !dbg !1707
  br label %575, !dbg !1708

565:                                              ; preds = %558
  br i1 %46, label %575, label %566, !dbg !1709

566:                                              ; preds = %565
  %567 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 9, !dbg !1710
  %568 = load double, double* %567, align 8, !dbg !1710, !tbaa !865
  %569 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 8, !dbg !1713
  %570 = load double, double* %569, align 8, !dbg !1713, !tbaa !868
  %571 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %568, double %570) #14, !dbg !1714
  br i1 %128, label %575, label %572, !dbg !1715

572:                                              ; preds = %566
  %573 = load i8*, i8** %353, align 8, !dbg !1716, !tbaa !529
  %574 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %573) #14, !dbg !1718
  br label %575, !dbg !1719

575:                                              ; preds = %572, %566, %565, %559
  %576 = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %27) #14, !dbg !1720
  %577 = add nuw nsw i64 %349, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %577, metadata !1032, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %351, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  %578 = load i32, i32* %340, align 8, !dbg !1530, !tbaa !768
  %579 = sext i32 %578 to i64, !dbg !1531
  %580 = icmp slt i64 %577, %579, !dbg !1531
  br i1 %580, label %348, label %581, !dbg !1532, !llvm.loop !1722

581:                                              ; preds = %575, %339
  %582 = phi i32 [ %185, %339 ], [ %351, %575 ], !dbg !1218
  call void @llvm.dbg.value(metadata i32 %582, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  %583 = add nuw nsw i64 %183, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %583, metadata !1029, metadata !DIExpression()) #14, !dbg !1086
  %584 = add nsw i32 %184, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %584, metadata !1030, metadata !DIExpression()) #14, !dbg !1086
  %585 = load i32, i32* %175, align 8, !dbg !1325, !tbaa !1326
  %586 = sext i32 %585 to i64, !dbg !1327
  %587 = icmp slt i64 %583, %586, !dbg !1327
  br i1 %587, label %182, label %588, !dbg !1328, !llvm.loop !1726

588:                                              ; preds = %581, %173
  %589 = phi i32 [ %132, %173 ], [ %582, %581 ], !dbg !1728
  %590 = phi i32 [ %131, %173 ], [ %584, %581 ], !dbg !1218
  call void @llvm.dbg.value(metadata i32 %589, metadata !1033, metadata !DIExpression()) #14, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %590, metadata !1030, metadata !DIExpression()) #14, !dbg !1086
  %591 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %27) #14, !dbg !1729
  %592 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %130, i64 0, i32 4, !dbg !1730
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1035, metadata !DIExpression()) #14, !dbg !1086
  %593 = load %struct.strand_t*, %struct.strand_t** %592, align 8, !dbg !1218, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %593, metadata !1035, metadata !DIExpression()) #14, !dbg !1086
  %594 = icmp eq %struct.strand_t* %593, null, !dbg !1219
  br i1 %594, label %595, label %129, !dbg !1219, !llvm.loop !1731

595:                                              ; preds = %588, %109
  call void @llvm.dbg.value(metadata %struct.cid_t* %110, metadata !1147, metadata !DIExpression()) #14, !dbg !1733
  %596 = icmp eq %struct.cid_t* %110, null, !dbg !1735
  br i1 %596, label %604, label %597, !dbg !1736

597:                                              ; preds = %595
  %598 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %110, i64 0, i32 2, !dbg !1737
  %599 = load i8*, i8** %598, align 8, !dbg !1737, !tbaa !1160
  %600 = icmp eq i8* %599, null, !dbg !1739
  br i1 %600, label %602, label %601, !dbg !1740

601:                                              ; preds = %597
  call void @free(i8* nonnull %599) #14, !dbg !1741
  br label %602, !dbg !1741

602:                                              ; preds = %601, %597
  %603 = bitcast %struct.cid_t* %110 to i8*, !dbg !1742
  call void @free(i8* %603) #14, !dbg !1743
  br label %604, !dbg !1744

604:                                              ; preds = %33, %595, %602
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %31) #14, !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %30) #14, !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #14, !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #14, !dbg !1745
  %605 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1746, !tbaa !471
  %606 = icmp eq %struct._IO_FILE* %27, %605, !dbg !1748
  br i1 %606, label %609, label %607, !dbg !1749

607:                                              ; preds = %604
  %608 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !1750
  br label %609, !dbg !1750

609:                                              ; preds = %24, %604, %607, %15
  %610 = phi i32 [ 0, %607 ], [ 0, %604 ], [ -1, %24 ], [ 0, %15 ], !dbg !1062
  call void @llvm.dbg.value(metadata i32 %610, metadata !1020, metadata !DIExpression()), !dbg !1062
  call void @reducerror(i32 %610) #14, !dbg !1751
  br label %611, !dbg !1752

611:                                              ; preds = %11, %12, %609
  ret i32 0, !dbg !1753
}

declare !dbg !107 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* readonly %2) local_unnamed_addr #0 !dbg !1754 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1758, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8* %1, metadata !1759, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1760, metadata !DIExpression()), !dbg !1762
  %4 = icmp eq %struct.molecule_t* %2, null, !dbg !1763
  br i1 %4, label %5, label %8, !dbg !1765

5:                                                ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1766, !tbaa !471
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %6) #15, !dbg !1768
  br label %115, !dbg !1769

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1770
  %10 = icmp eq i32 %9, 0, !dbg !1770
  br i1 %10, label %16, label %11, !dbg !1772

11:                                               ; preds = %8
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1773
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !1761, metadata !DIExpression()), !dbg !1762
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !1775
  br i1 %13, label %14, label %20, !dbg !1776

14:                                               ; preds = %11
  %15 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1777
  tail call void @exit(i32 1) #17, !dbg !1779
  unreachable, !dbg !1779

16:                                               ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1780, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1761, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1761, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1781, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i8* %1, metadata !1786, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1787, metadata !DIExpression()) #14, !dbg !1797
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !1799
  br i1 %18, label %19, label %20, !dbg !1802

19:                                               ; preds = %16
  tail call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #17, !dbg !1799
  unreachable, !dbg !1799

20:                                               ; preds = %11, %16
  %21 = phi %struct._IO_FILE* [ %17, %16 ], [ %12, %11 ]
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 1, !dbg !1803
  %23 = load i32, i32* %22, align 8, !dbg !1803, !tbaa !1804
  call void @llvm.dbg.value(metadata i8 undef, metadata !1793, metadata !DIExpression()) #14, !dbg !1797
  %24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %1) #14, !dbg !1805
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1806
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %1) #14, !dbg !1807
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1808
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1809
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1810
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1811
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1812
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1813
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 0, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 0, metadata !1789, metadata !DIExpression()) #14, !dbg !1797
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 2, !dbg !1814
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1794, metadata !DIExpression()) #14, !dbg !1797
  %34 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !1816, !tbaa !471
  call void @llvm.dbg.value(metadata i32 0, metadata !1789, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !1794, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i8 undef, metadata !1793, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 0, metadata !1792, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 0, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  %35 = icmp eq %struct.strand_t* %34, null, !dbg !1817
  br i1 %35, label %110, label %36, !dbg !1817

36:                                               ; preds = %20
  %37 = icmp sgt i32 %23, 1, !dbg !1818
  %38 = select i1 %37, i8 65, i8 46, !dbg !1819
  call void @llvm.dbg.value(metadata i8 %38, metadata !1793, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i8 %38, metadata !1793, metadata !DIExpression()) #14, !dbg !1797
  br label %39, !dbg !1817

39:                                               ; preds = %100, %36
  %40 = phi %struct.strand_t* [ %108, %100 ], [ %34, %36 ]
  %41 = phi i32 [ %102, %100 ], [ 0, %36 ]
  %42 = phi i8 [ %106, %100 ], [ %38, %36 ]
  %43 = phi i32 [ %45, %100 ], [ 0, %36 ]
  %44 = phi i32 [ %101, %100 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !1789, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i8 %42, metadata !1793, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %43, metadata !1792, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %44, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  %45 = add nuw nsw i32 %43, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %45, metadata !1792, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 0, metadata !1788, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %41, metadata !1789, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %44, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 5, !dbg !1823
  %47 = load i32, i32* %46, align 8, !dbg !1823, !tbaa !1326
  %48 = icmp sgt i32 %47, 0, !dbg !1826
  br i1 %48, label %49, label %100, !dbg !1827

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 7, !dbg !1828
  %51 = sext i8 %42 to i32, !dbg !1830
  br label %52, !dbg !1827

52:                                               ; preds = %93, %49
  %53 = phi i32 [ %47, %49 ], [ %96, %93 ]
  %54 = phi i64 [ 0, %49 ], [ %95, %93 ]
  %55 = phi i32 [ %41, %49 ], [ %94, %93 ]
  %56 = phi i32 [ %44, %49 ], [ %97, %93 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !1788, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %55, metadata !1789, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %56, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  %57 = load %struct.residue_t**, %struct.residue_t*** %50, align 8, !dbg !1834, !tbaa !800
  %58 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %57, i64 %54, !dbg !1835
  %59 = load %struct.residue_t*, %struct.residue_t** %58, align 8, !dbg !1835, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %59, metadata !1795, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %56, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 15, !dbg !1836
  %61 = load i32, i32* %60, align 8, !dbg !1836, !tbaa !768
  %62 = icmp sgt i32 %61, 0, !dbg !1837
  br i1 %62, label %66, label %63, !dbg !1838

63:                                               ; preds = %52
  %64 = add nuw nsw i64 %54, 1, !dbg !1839
  %65 = add nsw i32 %55, 1, !dbg !1840
  br label %93, !dbg !1838

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 17, !dbg !1830
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 4, !dbg !1830
  %69 = add nsw i32 %55, 1, !dbg !1830
  %70 = add nuw nsw i64 %54, 1, !dbg !1830
  %71 = trunc i64 %70 to i32, !dbg !1830
  br label %72, !dbg !1838

72:                                               ; preds = %72, %66
  %73 = phi i64 [ 0, %66 ], [ %87, %72 ]
  %74 = phi i32 [ %56, %66 ], [ %75, %72 ]
  call void @llvm.dbg.value(metadata i32 %74, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %73, metadata !1790, metadata !DIExpression()) #14, !dbg !1797
  %75 = add nsw i32 %74, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %75, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  %76 = load %struct.atom_t*, %struct.atom_t** %67, align 8, !dbg !1842, !tbaa !1537
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1796, metadata !DIExpression()) #14, !dbg !1797
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 0, !dbg !1843
  %78 = load i8*, i8** %77, align 8, !dbg !1843, !tbaa !529
  %79 = load i8*, i8** %68, align 8, !dbg !1844, !tbaa !759
  %80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 0, !dbg !1845
  %81 = load double, double* %80, align 8, !dbg !1845, !tbaa !721
  %82 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 1, !dbg !1846
  %83 = load double, double* %82, align 8, !dbg !1846, !tbaa !721
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 2, !dbg !1847
  %85 = load double, double* %84, align 8, !dbg !1847, !tbaa !721
  %86 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %75, i8* %78, i8* %79, i32 %51, i32 %69, double %81, double %83, double %85, i32 %45, i32 %71) #14, !dbg !1848
  %87 = add nuw nsw i64 %73, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %87, metadata !1790, metadata !DIExpression()) #14, !dbg !1797
  %88 = load i32, i32* %60, align 8, !dbg !1836, !tbaa !768
  %89 = sext i32 %88 to i64, !dbg !1837
  %90 = icmp slt i64 %87, %89, !dbg !1837
  br i1 %90, label %72, label %91, !dbg !1838, !llvm.loop !1850

91:                                               ; preds = %72
  %92 = load i32, i32* %46, align 8, !dbg !1823, !tbaa !1326
  br label %93, !dbg !1839

93:                                               ; preds = %91, %63
  %94 = phi i32 [ %65, %63 ], [ %69, %91 ], !dbg !1840
  %95 = phi i64 [ %64, %63 ], [ %70, %91 ], !dbg !1839
  %96 = phi i32 [ %53, %63 ], [ %92, %91 ], !dbg !1823
  %97 = phi i32 [ %56, %63 ], [ %75, %91 ], !dbg !1816
  call void @llvm.dbg.value(metadata i32 %97, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %95, metadata !1788, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %94, metadata !1789, metadata !DIExpression()) #14, !dbg !1797
  %98 = sext i32 %96 to i64, !dbg !1826
  %99 = icmp slt i64 %95, %98, !dbg !1826
  br i1 %99, label %52, label %100, !dbg !1827, !llvm.loop !1852

100:                                              ; preds = %93, %39
  %101 = phi i32 [ %44, %39 ], [ %97, %93 ], !dbg !1854
  %102 = phi i32 [ %41, %39 ], [ %94, %93 ], !dbg !1816
  call void @llvm.dbg.value(metadata i32 %101, metadata !1791, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %102, metadata !1789, metadata !DIExpression()) #14, !dbg !1797
  %103 = load i32, i32* %22, align 8, !dbg !1855, !tbaa !1804
  %104 = icmp sgt i32 %103, 1, !dbg !1857
  %105 = zext i1 %104 to i8, !dbg !1858
  %106 = add i8 %42, %105, !dbg !1858
  call void @llvm.dbg.value(metadata i8 %106, metadata !1793, metadata !DIExpression()) #14, !dbg !1797
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 4, !dbg !1859
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1794, metadata !DIExpression()) #14, !dbg !1797
  %108 = load %struct.strand_t*, %struct.strand_t** %107, align 8, !dbg !1816, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %108, metadata !1794, metadata !DIExpression()) #14, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %45, metadata !1792, metadata !DIExpression()) #14, !dbg !1797
  %109 = icmp eq %struct.strand_t* %108, null, !dbg !1817
  br i1 %109, label %110, label %39, !dbg !1817, !llvm.loop !1860

110:                                              ; preds = %100, %20
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1862, !tbaa !471
  %112 = icmp eq %struct._IO_FILE* %21, %111, !dbg !1864
  br i1 %112, label %115, label %113, !dbg !1865

113:                                              ; preds = %110
  %114 = tail call i32 @fclose(%struct._IO_FILE* %21), !dbg !1866
  br label %115, !dbg !1866

115:                                              ; preds = %113, %110, %5
  ret i32 0, !dbg !1867
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* readonly %1) local_unnamed_addr #0 !dbg !1868 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1872, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1873, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 0, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32* null, metadata !1885, metadata !DIExpression()), !dbg !1889
  %3 = icmp eq %struct.molecule_t* %1, null, !dbg !1890
  br i1 %3, label %4, label %7, !dbg !1892

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1893, !tbaa !471
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %5) #15, !dbg !1895
  br label %155, !dbg !1896

7:                                                ; preds = %2
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1897
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !1874, metadata !DIExpression()), !dbg !1889
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !1899
  br i1 %9, label %10, label %12, !dbg !1900

10:                                               ; preds = %7
  %11 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1901
  tail call void @exit(i32 1) #17, !dbg !1903
  unreachable, !dbg !1903

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1883, metadata !DIExpression()), !dbg !1889
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1904
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1875, metadata !DIExpression()), !dbg !1889
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1906, !tbaa !471
  call void @llvm.dbg.value(metadata i32 0, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1875, metadata !DIExpression()), !dbg !1889
  %15 = icmp eq %struct.strand_t* %14, null, !dbg !1907
  br i1 %15, label %28, label %16, !dbg !1907

16:                                               ; preds = %12, %16
  %17 = phi %struct.strand_t* [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %21, %16 ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1883, metadata !DIExpression()), !dbg !1889
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i64 0, i32 5, !dbg !1908
  %20 = load i32, i32* %19, align 8, !dbg !1908, !tbaa !1326
  %21 = add nsw i32 %20, %18, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %21, metadata !1883, metadata !DIExpression()), !dbg !1889
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i64 0, i32 4, !dbg !1911
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1875, metadata !DIExpression()), !dbg !1889
  %23 = load %struct.strand_t*, %struct.strand_t** %22, align 8, !dbg !1906, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %23, metadata !1875, metadata !DIExpression()), !dbg !1889
  %24 = icmp eq %struct.strand_t* %23, null, !dbg !1907
  br i1 %24, label %25, label %16, !dbg !1907, !llvm.loop !1912

25:                                               ; preds = %16
  %26 = sext i32 %21 to i64, !dbg !1914
  %27 = shl nsw i64 %26, 2, !dbg !1914
  br label %28, !dbg !1914

28:                                               ; preds = %25, %12
  %29 = phi i64 [ 0, %12 ], [ %27, %25 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1883, metadata !DIExpression()), !dbg !1889
  %30 = tail call noalias i8* @malloc(i64 %29) #14, !dbg !1916
  %31 = bitcast i8* %30 to i32*, !dbg !1917
  call void @llvm.dbg.value(metadata i32* %31, metadata !1885, metadata !DIExpression()), !dbg !1889
  %32 = icmp eq i8* %30, null, !dbg !1918
  br i1 %32, label %34, label %33, !dbg !1919

33:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1875, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 0, metadata !1878, metadata !DIExpression()), !dbg !1889
  br i1 %15, label %151, label %37, !dbg !1920

34:                                               ; preds = %28
  %35 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !1922
  call void @llvm.dbg.value(metadata i32 1, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 0, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.label(metadata !1888), !dbg !1924
  br label %152, !dbg !1925

36:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 0, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1875, metadata !DIExpression()), !dbg !1889
  br i1 %15, label %151, label %77, !dbg !1926

37:                                               ; preds = %33, %71
  %38 = phi %struct.strand_t* [ %75, %71 ], [ %14, %33 ]
  %39 = phi i32 [ %73, %71 ], [ 0, %33 ]
  %40 = phi i32 [ %72, %71 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %40, metadata !1878, metadata !DIExpression()), !dbg !1889
  %41 = sext i32 %39 to i64, !dbg !1928
  %42 = getelementptr inbounds i32, i32* %31, i64 %41, !dbg !1928
  store i32 %40, i32* %42, align 4, !dbg !1931, !tbaa !561
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 5, !dbg !1932
  %44 = load i32, i32* %43, align 8, !dbg !1932, !tbaa !1326
  %45 = icmp sgt i32 %44, 0, !dbg !1934
  br i1 %45, label %46, label %71, !dbg !1935

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 7, !dbg !1936
  %48 = load %struct.residue_t**, %struct.residue_t*** %47, align 8, !dbg !1936, !tbaa !800
  %49 = load %struct.residue_t*, %struct.residue_t** %48, align 8, !dbg !1938, !tbaa !471
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %49, i64 0, i32 15, !dbg !1939
  %51 = load i32, i32* %50, align 8, !dbg !1939, !tbaa !768
  %52 = add nsw i32 %51, %40, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %52, metadata !1878, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 1, metadata !1881, metadata !DIExpression()), !dbg !1889
  %53 = icmp eq i32 %44, 1, !dbg !1941
  br i1 %53, label %68, label %54, !dbg !1944

54:                                               ; preds = %46
  %55 = zext i32 %44 to i64, !dbg !1941
  br label %56, !dbg !1944

56:                                               ; preds = %56, %54
  %57 = phi i64 [ 1, %54 ], [ %66, %56 ]
  %58 = phi i32 [ %52, %54 ], [ %65, %56 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !1881, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %58, metadata !1878, metadata !DIExpression()), !dbg !1889
  %59 = add nsw i64 %57, %41, !dbg !1945
  %60 = getelementptr inbounds i32, i32* %31, i64 %59, !dbg !1947
  store i32 %58, i32* %60, align 4, !dbg !1948, !tbaa !561
  %61 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %57, !dbg !1949
  %62 = load %struct.residue_t*, %struct.residue_t** %61, align 8, !dbg !1949, !tbaa !471
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %62, i64 0, i32 15, !dbg !1950
  %64 = load i32, i32* %63, align 8, !dbg !1950, !tbaa !768
  %65 = add nsw i32 %64, %58, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %65, metadata !1878, metadata !DIExpression()), !dbg !1889
  %66 = add nuw nsw i64 %57, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %66, metadata !1881, metadata !DIExpression()), !dbg !1889
  %67 = icmp eq i64 %66, %55, !dbg !1941
  br i1 %67, label %68, label %56, !dbg !1944, !llvm.loop !1953

68:                                               ; preds = %56, %46
  %69 = phi i32 [ %52, %46 ], [ %65, %56 ], !dbg !1955
  call void @llvm.dbg.value(metadata i32 %69, metadata !1878, metadata !DIExpression()), !dbg !1889
  %70 = add nsw i32 %44, %39, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %70, metadata !1883, metadata !DIExpression()), !dbg !1889
  br label %71, !dbg !1957

71:                                               ; preds = %37, %68
  %72 = phi i32 [ %69, %68 ], [ %40, %37 ], !dbg !1958
  %73 = phi i32 [ %70, %68 ], [ %39, %37 ], !dbg !1958
  call void @llvm.dbg.value(metadata i32 %73, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %72, metadata !1878, metadata !DIExpression()), !dbg !1889
  %74 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 4, !dbg !1959
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1875, metadata !DIExpression()), !dbg !1889
  %75 = load %struct.strand_t*, %struct.strand_t** %74, align 8, !dbg !1958, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %75, metadata !1875, metadata !DIExpression()), !dbg !1889
  %76 = icmp eq %struct.strand_t* %75, null, !dbg !1920
  br i1 %76, label %36, label %37, !dbg !1920, !llvm.loop !1960

77:                                               ; preds = %36, %145
  %78 = phi %struct.strand_t* [ %149, %145 ], [ %14, %36 ]
  %79 = phi i32 [ %147, %145 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !1883, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 0, metadata !1881, metadata !DIExpression()), !dbg !1889
  %80 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %78, i64 0, i32 5, !dbg !1962
  %81 = load i32, i32* %80, align 8, !dbg !1962, !tbaa !1326
  %82 = icmp sgt i32 %81, 0, !dbg !1967
  br i1 %82, label %83, label %145, !dbg !1968

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %78, i64 0, i32 7, !dbg !1969
  %85 = add i32 %79, -1, !dbg !1971
  %86 = sext i32 %79 to i64, !dbg !1968
  br label %87, !dbg !1968

87:                                               ; preds = %83, %140
  %88 = phi i64 [ 0, %83 ], [ %141, %140 ]
  call void @llvm.dbg.value(metadata i64 %88, metadata !1881, metadata !DIExpression()), !dbg !1889
  %89 = load %struct.residue_t**, %struct.residue_t*** %84, align 8, !dbg !1975, !tbaa !800
  %90 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %89, i64 %88, !dbg !1976
  %91 = load %struct.residue_t*, %struct.residue_t** %90, align 8, !dbg !1976, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %91, metadata !1876, metadata !DIExpression()), !dbg !1889
  %92 = add nsw i64 %88, %86, !dbg !1977
  %93 = getelementptr inbounds i32, i32* %31, i64 %92, !dbg !1978
  %94 = load i32, i32* %93, align 4, !dbg !1978, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %94, metadata !1877, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 0, metadata !1886, metadata !DIExpression()), !dbg !1889
  %95 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i64 0, i32 11, !dbg !1979
  %96 = load i32, i32* %95, align 8, !dbg !1979, !tbaa !1982
  %97 = icmp sgt i32 %96, 0, !dbg !1983
  br i1 %97, label %98, label %114, !dbg !1984

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i64 0, i32 12, !dbg !1985
  br label %100, !dbg !1984

100:                                              ; preds = %98, %100
  %101 = phi i64 [ 0, %98 ], [ %110, %100 ]
  call void @llvm.dbg.value(metadata i64 %101, metadata !1886, metadata !DIExpression()), !dbg !1889
  %102 = load [2 x i32]*, [2 x i32]** %99, align 8, !dbg !1987, !tbaa !1988
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %102, i64 %101, i64 0, !dbg !1989
  %104 = load i32, i32* %103, align 4, !dbg !1989, !tbaa !561
  %105 = add nsw i32 %104, %94, !dbg !1990
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %102, i64 %101, i64 1, !dbg !1991
  %107 = load i32, i32* %106, align 4, !dbg !1991, !tbaa !561
  %108 = add nsw i32 %107, %94, !dbg !1992
  %109 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %105, i32 %108), !dbg !1993
  %110 = add nuw nsw i64 %101, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %110, metadata !1886, metadata !DIExpression()), !dbg !1889
  %111 = load i32, i32* %95, align 8, !dbg !1979, !tbaa !1982
  %112 = sext i32 %111 to i64, !dbg !1983
  %113 = icmp slt i64 %110, %112, !dbg !1983
  br i1 %113, label %100, label %114, !dbg !1984, !llvm.loop !1995

114:                                              ; preds = %100, %87
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i64 0, i32 10, !dbg !1997
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1887, metadata !DIExpression()), !dbg !1889
  %116 = load %struct.extbond_t*, %struct.extbond_t** %115, align 8, !dbg !1998, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.extbond_t* %116, metadata !1887, metadata !DIExpression()), !dbg !1889
  %117 = icmp eq %struct.extbond_t* %116, null, !dbg !1999
  br i1 %117, label %140, label %118, !dbg !1999

118:                                              ; preds = %114, %136
  %119 = phi %struct.extbond_t* [ %138, %136 ], [ %116, %114 ]
  %120 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %119, i64 0, i32 2, !dbg !2000
  %121 = load i32, i32* %120, align 4, !dbg !2000, !tbaa !2002
  call void @llvm.dbg.value(metadata i32 %121, metadata !1882, metadata !DIExpression()), !dbg !1889
  %122 = sext i32 %121 to i64, !dbg !2004
  %123 = icmp slt i64 %88, %122, !dbg !2004
  br i1 %123, label %124, label %136, !dbg !2005

124:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 %94, metadata !1879, metadata !DIExpression()), !dbg !1889
  %125 = add i32 %85, %121, !dbg !2006
  %126 = sext i32 %125 to i64, !dbg !2007
  %127 = getelementptr inbounds i32, i32* %31, i64 %126, !dbg !2007
  %128 = load i32, i32* %127, align 4, !dbg !2007, !tbaa !561
  call void @llvm.dbg.value(metadata i32 %128, metadata !1880, metadata !DIExpression()), !dbg !1889
  %129 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %119, i64 0, i32 1, !dbg !2008
  %130 = load i32, i32* %129, align 8, !dbg !2008, !tbaa !2009
  %131 = add nsw i32 %130, %94, !dbg !2010
  %132 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %119, i64 0, i32 3, !dbg !2011
  %133 = load i32, i32* %132, align 8, !dbg !2011, !tbaa !2012
  %134 = add nsw i32 %133, %128, !dbg !2013
  %135 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %131, i32 %134), !dbg !2014
  br label %136, !dbg !2015

136:                                              ; preds = %118, %124
  %137 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %119, i64 0, i32 0, !dbg !2016
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1887, metadata !DIExpression()), !dbg !1889
  %138 = load %struct.extbond_t*, %struct.extbond_t** %137, align 8, !dbg !1998, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.extbond_t* %138, metadata !1887, metadata !DIExpression()), !dbg !1889
  %139 = icmp eq %struct.extbond_t* %138, null, !dbg !1999
  br i1 %139, label %140, label %118, !dbg !1999, !llvm.loop !2017

140:                                              ; preds = %136, %114
  %141 = add nuw nsw i64 %88, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %141, metadata !1881, metadata !DIExpression()), !dbg !1889
  %142 = load i32, i32* %80, align 8, !dbg !1962, !tbaa !1326
  %143 = sext i32 %142 to i64, !dbg !1967
  %144 = icmp slt i64 %141, %143, !dbg !1967
  br i1 %144, label %87, label %145, !dbg !1968, !llvm.loop !2020

145:                                              ; preds = %140, %77
  %146 = phi i32 [ %81, %77 ], [ %142, %140 ], !dbg !1962
  %147 = add nsw i32 %146, %79, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %147, metadata !1883, metadata !DIExpression()), !dbg !1889
  %148 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %78, i64 0, i32 4, !dbg !2023
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1875, metadata !DIExpression()), !dbg !1889
  %149 = load %struct.strand_t*, %struct.strand_t** %148, align 8, !dbg !2024, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %149, metadata !1875, metadata !DIExpression()), !dbg !1889
  %150 = icmp eq %struct.strand_t* %149, null, !dbg !1926
  br i1 %150, label %151, label %77, !dbg !1926, !llvm.loop !2025

151:                                              ; preds = %145, %33, %36
  call void @llvm.dbg.value(metadata i32 0, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.label(metadata !1888), !dbg !1924
  tail call void @free(i8* nonnull %30) #14, !dbg !2027
  br label %152, !dbg !2027

152:                                              ; preds = %34, %151
  %153 = phi i32 [ 1, %34 ], [ 0, %151 ]
  %154 = tail call i32 @fclose(%struct._IO_FILE* nonnull %8), !dbg !2029
  br label %155, !dbg !2030

155:                                              ; preds = %152, %4
  %156 = phi i32 [ %153, %152 ], [ 0, %4 ], !dbg !1889
  ret i32 %156, !dbg !2031
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !111 dso_local void @free(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) local_unnamed_addr #0 !dbg !2032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2036, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !2037, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8* %2, metadata !2038, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8* %3, metadata !2039, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2052, metadata !DIExpression()), !dbg !2054
  %5 = icmp eq %struct.molecule_t* %1, null, !dbg !2055
  br i1 %5, label %6, label %9, !dbg !2057

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2058, !tbaa !471
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %7) #15, !dbg !2060
  br label %229, !dbg !2061

9:                                                ; preds = %4
  tail call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %2) #14, !dbg !2062
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !2063
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2041, metadata !DIExpression()), !dbg !2054
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2065, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %11, metadata !2041, metadata !DIExpression()), !dbg !2054
  %12 = icmp eq %struct.strand_t* %11, null, !dbg !2066
  br i1 %12, label %63, label %13, !dbg !2066

13:                                               ; preds = %9, %59
  %14 = phi %struct.strand_t* [ %61, %59 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 2, !dbg !2067
  %16 = load i32, i32* %15, align 4, !dbg !2070, !tbaa !2071
  %17 = and i32 %16, -3, !dbg !2070
  %18 = shl i32 %16, 1, !dbg !2072
  %19 = and i32 %18, 2, !dbg !2072
  %20 = or i32 %19, %17, !dbg !2073
  store i32 %20, i32* %15, align 4, !dbg !2073, !tbaa !2071
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2054
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 5, !dbg !2074
  %22 = load i32, i32* %21, align 8, !dbg !2074, !tbaa !1326
  %23 = icmp sgt i32 %22, 0, !dbg !2077
  br i1 %23, label %24, label %59, !dbg !2078

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 7, !dbg !2079
  %26 = load %struct.residue_t**, %struct.residue_t*** %25, align 8, !dbg !2079, !tbaa !800
  %27 = zext i32 %22 to i64, !dbg !2078
  br label %28, !dbg !2078

28:                                               ; preds = %24, %56
  %29 = phi i64 [ 0, %24 ], [ %57, %56 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !2047, metadata !DIExpression()), !dbg !2054
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %26, i64 %29, !dbg !2081
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !2081, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %31, metadata !2042, metadata !DIExpression()), !dbg !2054
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 6, !dbg !2082
  %33 = load i32, i32* %32, align 8, !dbg !2083, !tbaa !2084
  %34 = and i32 %33, -3, !dbg !2083
  %35 = shl i32 %33, 1, !dbg !2085
  %36 = and i32 %35, 2, !dbg !2085
  %37 = or i32 %36, %34, !dbg !2086
  store i32 %37, i32* %32, align 8, !dbg !2086, !tbaa !2084
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2044, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2054
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 15, !dbg !2087
  %39 = load i32, i32* %38, align 8, !dbg !2087, !tbaa !768
  %40 = icmp sgt i32 %39, 0, !dbg !2090
  br i1 %40, label %41, label %56, !dbg !2091

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 17, !dbg !2092
  %43 = load %struct.atom_t*, %struct.atom_t** %42, align 8, !dbg !2092, !tbaa !1537
  call void @llvm.dbg.value(metadata %struct.atom_t* %43, metadata !2044, metadata !DIExpression()), !dbg !2054
  br label %44, !dbg !2091

44:                                               ; preds = %41, %44
  %45 = phi i32 [ 0, %41 ], [ %53, %44 ]
  %46 = phi %struct.atom_t* [ %43, %41 ], [ %54, %44 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !2049, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.atom_t* %46, metadata !2044, metadata !DIExpression()), !dbg !2054
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i64 0, i32 2, !dbg !2093
  %48 = load i32, i32* %47, align 8, !dbg !2095, !tbaa !845
  %49 = and i32 %48, -3, !dbg !2095
  %50 = shl i32 %48, 1, !dbg !2096
  %51 = and i32 %50, 2, !dbg !2096
  %52 = or i32 %51, %49, !dbg !2097
  store i32 %52, i32* %47, align 8, !dbg !2097, !tbaa !845
  %53 = add nuw nsw i32 %45, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %53, metadata !2049, metadata !DIExpression()), !dbg !2054
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i64 1, !dbg !2099
  call void @llvm.dbg.value(metadata %struct.atom_t* %54, metadata !2044, metadata !DIExpression()), !dbg !2054
  %55 = icmp slt i32 %53, %39, !dbg !2090
  br i1 %55, label %44, label %56, !dbg !2091, !llvm.loop !2100

56:                                               ; preds = %44, %28
  %57 = add nuw nsw i64 %29, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %57, metadata !2047, metadata !DIExpression()), !dbg !2054
  %58 = icmp ult i64 %57, %27, !dbg !2077
  br i1 %58, label %28, label %59, !dbg !2078, !llvm.loop !2103

59:                                               ; preds = %56, %13
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 4, !dbg !2105
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2041, metadata !DIExpression()), !dbg !2054
  %61 = load %struct.strand_t*, %struct.strand_t** %60, align 8, !dbg !2065, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %61, metadata !2041, metadata !DIExpression()), !dbg !2054
  %62 = icmp eq %struct.strand_t* %61, null, !dbg !2066
  br i1 %62, label %63, label %13, !dbg !2066, !llvm.loop !2106

63:                                               ; preds = %59, %9
  tail call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %3) #14, !dbg !2108
  call void @llvm.dbg.value(metadata i32 0, metadata !2046, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2041, metadata !DIExpression()), !dbg !2054
  %64 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2109, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !2041, metadata !DIExpression()), !dbg !2054
  %65 = icmp eq %struct.strand_t* %64, null, !dbg !2111
  br i1 %65, label %75, label %66, !dbg !2111

66:                                               ; preds = %63, %66
  %67 = phi %struct.strand_t* [ %73, %66 ], [ %64, %63 ]
  %68 = phi i32 [ %71, %66 ], [ 0, %63 ]
  call void @llvm.dbg.value(metadata i32 %68, metadata !2046, metadata !DIExpression()), !dbg !2054
  %69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %67, i64 0, i32 5, !dbg !2112
  %70 = load i32, i32* %69, align 8, !dbg !2112, !tbaa !1326
  %71 = add nsw i32 %70, %68, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %71, metadata !2046, metadata !DIExpression()), !dbg !2054
  %72 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %67, i64 0, i32 4, !dbg !2115
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2041, metadata !DIExpression()), !dbg !2054
  %73 = load %struct.strand_t*, %struct.strand_t** %72, align 8, !dbg !2109, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %73, metadata !2041, metadata !DIExpression()), !dbg !2054
  %74 = icmp eq %struct.strand_t* %73, null, !dbg !2111
  br i1 %74, label %75, label %66, !dbg !2111, !llvm.loop !2116

75:                                               ; preds = %66, %63
  %76 = phi i32 [ 0, %63 ], [ %71, %66 ], !dbg !2109
  call void @llvm.dbg.value(metadata i32 %76, metadata !2046, metadata !DIExpression()), !dbg !2054
  %77 = sext i32 %76 to i64, !dbg !2118
  %78 = shl nsw i64 %77, 3, !dbg !2120
  %79 = tail call noalias i8* @malloc(i64 %78) #14, !dbg !2121
  %80 = bitcast i8* %79 to %struct.residue_t**, !dbg !2122
  call void @llvm.dbg.value(metadata %struct.residue_t** %80, metadata !2051, metadata !DIExpression()), !dbg !2054
  %81 = icmp eq i8* %79, null, !dbg !2123
  br i1 %81, label %83, label %82, !dbg !2124

82:                                               ; preds = %75
  call void @llvm.dbg.value(metadata i32 0, metadata !2048, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !2041, metadata !DIExpression()), !dbg !2054
  br i1 %65, label %115, label %86, !dbg !2125

83:                                               ; preds = %75
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2127, !tbaa !471
  %85 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %84) #15, !dbg !2129
  call void @llvm.dbg.value(metadata i32 %228, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.label(metadata !2053), !dbg !2130
  br label %229, !dbg !2131

86:                                               ; preds = %82, %110
  %87 = phi %struct.strand_t* [ %113, %110 ], [ %64, %82 ]
  %88 = phi i32 [ %111, %110 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i32 %88, metadata !2048, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %88, metadata !2048, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2054
  %89 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 5, !dbg !2132
  %90 = load i32, i32* %89, align 8, !dbg !2132, !tbaa !1326
  %91 = icmp sgt i32 %90, 0, !dbg !2137
  br i1 %91, label %92, label %110, !dbg !2138

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 7, !dbg !2139
  %94 = bitcast %struct.residue_t*** %93 to i8**, !dbg !2139
  %95 = load i8*, i8** %94, align 8, !dbg !2139, !tbaa !800
  %96 = sext i32 %88 to i64, !dbg !2138
  %97 = zext i32 %90 to i64, !dbg !2138
  %98 = shl nsw i64 %96, 3, !dbg !2138
  %99 = getelementptr i8, i8* %79, i64 %98, !dbg !2138
  %100 = zext i32 %90 to i64, !dbg !2138
  %101 = shl nuw nsw i64 %100, 3, !dbg !2138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %95, i64 %101, i1 false), !dbg !2140
  br label %102, !dbg !2138

102:                                              ; preds = %92, %102
  %103 = phi i64 [ 0, %92 ], [ %106, %102 ]
  %104 = phi i64 [ %96, %92 ], [ %105, %102 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !2048, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %103, metadata !2047, metadata !DIExpression()), !dbg !2054
  %105 = add nsw i64 %104, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %105, metadata !2048, metadata !DIExpression()), !dbg !2054
  %106 = add nuw nsw i64 %103, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %106, metadata !2047, metadata !DIExpression()), !dbg !2054
  %107 = icmp ult i64 %106, %97, !dbg !2137
  br i1 %107, label %102, label %108, !dbg !2138, !llvm.loop !2143

108:                                              ; preds = %102
  %109 = trunc i64 %105 to i32, !dbg !2145
  br label %110, !dbg !2145

110:                                              ; preds = %108, %86
  %111 = phi i32 [ %88, %86 ], [ %109, %108 ], !dbg !2146
  call void @llvm.dbg.value(metadata i32 %111, metadata !2048, metadata !DIExpression()), !dbg !2054
  %112 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 4, !dbg !2145
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2041, metadata !DIExpression()), !dbg !2054
  %113 = load %struct.strand_t*, %struct.strand_t** %112, align 8, !dbg !2146, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.strand_t* %113, metadata !2041, metadata !DIExpression()), !dbg !2054
  %114 = icmp eq %struct.strand_t* %113, null, !dbg !2125
  br i1 %114, label %115, label %86, !dbg !2125, !llvm.loop !2147

115:                                              ; preds = %110, %82
  %116 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2149
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, metadata !2040, metadata !DIExpression()), !dbg !2054
  %117 = icmp eq %struct._IO_FILE* %116, null, !dbg !2151
  br i1 %117, label %122, label %118, !dbg !2152

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 0, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2054
  %119 = icmp sgt i32 %76, 0, !dbg !2153
  br i1 %119, label %120, label %227, !dbg !2156

120:                                              ; preds = %118
  %121 = zext i32 %76 to i64, !dbg !2153
  br label %125, !dbg !2156

122:                                              ; preds = %115
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2157, !tbaa !471
  %124 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %0) #15, !dbg !2159
  br label %227, !dbg !2160

125:                                              ; preds = %223, %120
  %126 = phi i64 [ 0, %120 ], [ %224, %223 ]
  %127 = phi i32 [ 0, %120 ], [ %225, %223 ]
  call void @llvm.dbg.value(metadata i32 %127, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %126, metadata !2047, metadata !DIExpression()), !dbg !2054
  %128 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %80, i64 %126, !dbg !2161
  %129 = load %struct.residue_t*, %struct.residue_t** %128, align 8, !dbg !2161, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %129, metadata !2042, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %127, metadata !2052, metadata !DIExpression()), !dbg !2054
  %130 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %129, i64 0, i32 15, !dbg !2163
  %131 = load i32, i32* %130, align 8, !dbg !2163, !tbaa !768
  %132 = icmp sgt i32 %131, 0, !dbg !2166
  br i1 %132, label %135, label %133, !dbg !2167

133:                                              ; preds = %125
  %134 = add nuw nsw i64 %126, 1, !dbg !2168
  br label %223, !dbg !2167

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %129, i64 0, i32 17, !dbg !2169
  %137 = add nuw nsw i64 %126, 1, !dbg !2171
  %138 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %129, i64 0, i32 4, !dbg !2171
  %139 = trunc i64 %137 to i32, !dbg !2171
  br label %140, !dbg !2167

140:                                              ; preds = %135, %207
  %141 = phi i32 [ %131, %135 ], [ %208, %207 ]
  %142 = phi i64 [ 0, %135 ], [ %210, %207 ]
  %143 = phi i32 [ %127, %135 ], [ %209, %207 ]
  call void @llvm.dbg.value(metadata i32 %143, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %142, metadata !2049, metadata !DIExpression()), !dbg !2054
  %144 = load %struct.atom_t*, %struct.atom_t** %136, align 8, !dbg !2182, !tbaa !1537
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2044, metadata !DIExpression()), !dbg !2054
  %145 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 2, !dbg !2183
  %146 = load i32, i32* %145, align 8, !dbg !2183, !tbaa !845
  %147 = and i32 %146, 2, !dbg !2184
  %148 = icmp eq i32 %147, 0, !dbg !2184
  br i1 %148, label %207, label %218, !dbg !2185

149:                                              ; preds = %159, %218
  %150 = phi i64 [ 0, %218 ], [ %160, %159 ]
  %151 = phi i32 [ %143, %218 ], [ %161, %159 ]
  call void @llvm.dbg.value(metadata i32 %151, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %150, metadata !2048, metadata !DIExpression()), !dbg !2054
  %152 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %80, i64 %150, !dbg !2186
  %153 = load %struct.residue_t*, %struct.residue_t** %152, align 8, !dbg !2186, !tbaa !471
  call void @llvm.dbg.value(metadata %struct.residue_t* %153, metadata !2043, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2050, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %151, metadata !2052, metadata !DIExpression()), !dbg !2054
  %154 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i64 0, i32 15, !dbg !2187
  %155 = load i32, i32* %154, align 8, !dbg !2187, !tbaa !768
  %156 = icmp sgt i32 %155, 0, !dbg !2188
  br i1 %156, label %213, label %157, !dbg !2189

157:                                              ; preds = %149
  %158 = add nuw nsw i64 %150, 1, !dbg !2190
  br label %159, !dbg !2189

159:                                              ; preds = %199, %157
  %160 = phi i64 [ %158, %157 ], [ %215, %199 ], !dbg !2190
  %161 = phi i32 [ %151, %157 ], [ %201, %199 ], !dbg !2191
  call void @llvm.dbg.value(metadata i32 %161, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %160, metadata !2048, metadata !DIExpression()), !dbg !2054
  %162 = icmp eq i64 %160, %121, !dbg !2192
  br i1 %162, label %205, label %149, !dbg !2193, !llvm.loop !2194

163:                                              ; preds = %213, %199
  %164 = phi i32 [ %155, %213 ], [ %200, %199 ]
  %165 = phi i64 [ 0, %213 ], [ %202, %199 ]
  %166 = phi i32 [ %151, %213 ], [ %201, %199 ]
  call void @llvm.dbg.value(metadata i32 %166, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %165, metadata !2050, metadata !DIExpression()), !dbg !2054
  %167 = load %struct.atom_t*, %struct.atom_t** %214, align 8, !dbg !2196, !tbaa !1537
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2045, metadata !DIExpression()), !dbg !2054
  %168 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 2, !dbg !2197
  %169 = load i32, i32* %168, align 8, !dbg !2197, !tbaa !845
  %170 = and i32 %169, 1, !dbg !2198
  %171 = icmp eq i32 %170, 0, !dbg !2198
  br i1 %171, label %199, label %172, !dbg !2199

172:                                              ; preds = %163
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2045, metadata !DIExpression()), !dbg !2054
  %173 = load i8*, i8** %138, align 8, !dbg !2200, !tbaa !759
  %174 = load i8*, i8** %219, align 8, !dbg !2201, !tbaa !529
  %175 = load i8*, i8** %216, align 8, !dbg !2202, !tbaa !759
  %176 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 0, !dbg !2203
  %177 = load i8*, i8** %176, align 8, !dbg !2203, !tbaa !529
  %178 = load double, double* %220, align 8, !dbg !2204, !tbaa !721
  %179 = load double, double* %221, align 8, !dbg !2204, !tbaa !721
  %180 = load double, double* %222, align 8, !dbg !2204, !tbaa !721
  %181 = getelementptr %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 17, i64 0, !dbg !2204
  %182 = load double, double* %181, align 8, !dbg !2204, !tbaa !721
  %183 = getelementptr %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 17, i64 1, !dbg !2204
  %184 = load double, double* %183, align 8, !dbg !2204, !tbaa !721
  %185 = getelementptr %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 17, i64 2, !dbg !2204
  %186 = load double, double* %185, align 8, !dbg !2204, !tbaa !721
  %187 = fsub double %178, %182, !dbg !2205
  call void @llvm.dbg.value(metadata double %187, metadata !2212, metadata !DIExpression()) #14, !dbg !2216
  %188 = fsub double %179, %184, !dbg !2217
  call void @llvm.dbg.value(metadata double %188, metadata !2213, metadata !DIExpression()) #14, !dbg !2216
  %189 = fsub double %180, %186, !dbg !2218
  call void @llvm.dbg.value(metadata double %189, metadata !2214, metadata !DIExpression()) #14, !dbg !2216
  %190 = fmul double %187, %187, !dbg !2219
  %191 = fmul double %188, %188, !dbg !2220
  %192 = fadd double %190, %191, !dbg !2221
  %193 = fmul double %189, %189, !dbg !2222
  %194 = fadd double %192, %193, !dbg !2223
  %195 = tail call double @sqrt(double %194) #14, !dbg !2224
  %196 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %139, i8* %173, i8* %174, i32 %217, i8* %175, i8* %177, double %195), !dbg !2225
  %197 = add nsw i32 %166, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %197, metadata !2052, metadata !DIExpression()), !dbg !2054
  %198 = load i32, i32* %154, align 8, !dbg !2187, !tbaa !768
  br label %199, !dbg !2227

199:                                              ; preds = %172, %163
  %200 = phi i32 [ %198, %172 ], [ %164, %163 ], !dbg !2187
  %201 = phi i32 [ %197, %172 ], [ %166, %163 ], !dbg !2191
  call void @llvm.dbg.value(metadata i32 %201, metadata !2052, metadata !DIExpression()), !dbg !2054
  %202 = add nuw nsw i64 %165, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %202, metadata !2050, metadata !DIExpression()), !dbg !2054
  %203 = sext i32 %200 to i64, !dbg !2188
  %204 = icmp slt i64 %202, %203, !dbg !2188
  br i1 %204, label %163, label %159, !dbg !2189, !llvm.loop !2229

205:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i32 %161, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %161, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %161, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 %161, metadata !2052, metadata !DIExpression()), !dbg !2054
  %206 = load i32, i32* %130, align 8, !dbg !2163, !tbaa !768
  br label %207, !dbg !2231

207:                                              ; preds = %205, %140
  %208 = phi i32 [ %141, %140 ], [ %206, %205 ], !dbg !2163
  %209 = phi i32 [ %143, %140 ], [ %161, %205 ], !dbg !2232
  call void @llvm.dbg.value(metadata i32 %209, metadata !2052, metadata !DIExpression()), !dbg !2054
  %210 = add nuw nsw i64 %142, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %210, metadata !2049, metadata !DIExpression()), !dbg !2054
  %211 = sext i32 %208 to i64, !dbg !2166
  %212 = icmp slt i64 %210, %211, !dbg !2166
  br i1 %212, label %140, label %223, !dbg !2167, !llvm.loop !2233

213:                                              ; preds = %149
  %214 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i64 0, i32 17, !dbg !2235
  %215 = add nuw nsw i64 %150, 1, !dbg !2171
  %216 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i64 0, i32 4, !dbg !2171
  %217 = trunc i64 %215 to i32, !dbg !2171
  br label %163, !dbg !2189

218:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i32 %143, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 0, metadata !2048, metadata !DIExpression()), !dbg !2054
  %219 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 0, !dbg !2171
  %220 = getelementptr %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 17, i64 0, !dbg !2171
  %221 = getelementptr %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 17, i64 1, !dbg !2171
  %222 = getelementptr %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 17, i64 2, !dbg !2171
  br label %149, !dbg !2193

223:                                              ; preds = %207, %133
  %224 = phi i64 [ %134, %133 ], [ %137, %207 ], !dbg !2168
  %225 = phi i32 [ %127, %133 ], [ %209, %207 ], !dbg !2232
  call void @llvm.dbg.value(metadata i32 %225, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %224, metadata !2047, metadata !DIExpression()), !dbg !2054
  %226 = icmp eq i64 %224, %121, !dbg !2153
  br i1 %226, label %227, label %125, !dbg !2156, !llvm.loop !2236

227:                                              ; preds = %223, %122, %118
  %228 = phi i32 [ 0, %122 ], [ 0, %118 ], [ %225, %223 ], !dbg !2054
  call void @llvm.dbg.value(metadata i32 %228, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.label(metadata !2053), !dbg !2130
  tail call void @free(i8* nonnull %79) #14, !dbg !2238
  br label %229, !dbg !2238

229:                                              ; preds = %83, %227, %6
  %230 = phi i32 [ 0, %6 ], [ %228, %227 ], [ 0, %83 ], !dbg !2054
  ret i32 %230, !dbg !2240
}

declare !dbg !115 dso_local void @select_atoms(%struct.molecule_t*, i8*) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* nocapture readonly %1) local_unnamed_addr #8 !dbg !2241 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2247, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !2248, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !2249, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 0, metadata !2252, metadata !DIExpression()), !dbg !2254
  %3 = icmp eq i8* %0, null, !dbg !2255
  br i1 %3, label %7, label %4, !dbg !2257

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1, !dbg !2258, !tbaa !465
  %6 = icmp eq i8 %5, 0, !dbg !2259
  br i1 %6, label %7, label %10, !dbg !2260

7:                                                ; preds = %4, %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2261, !tbaa !471
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %8) #15, !dbg !2263
  call void @llvm.dbg.value(metadata i32 1, metadata !2252, metadata !DIExpression()), !dbg !2254
  br label %43, !dbg !2264

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !2265
  %12 = icmp eq i32 %11, 0, !dbg !2265
  br i1 %12, label %13, label %15, !dbg !2267

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2268, !tbaa !471
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !2249, metadata !DIExpression()), !dbg !2254
  br label %21, !dbg !2269

15:                                               ; preds = %10
  %16 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2270
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !2249, metadata !DIExpression()), !dbg !2254
  %17 = icmp eq %struct._IO_FILE* %16, null, !dbg !2272
  br i1 %17, label %18, label %21, !dbg !2273

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2274, !tbaa !471
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %0) #15, !dbg !2276
  call void @llvm.dbg.value(metadata i32 1, metadata !2252, metadata !DIExpression()), !dbg !2254
  br label %43, !dbg !2277

21:                                               ; preds = %13, %15
  %22 = phi %struct._IO_FILE* [ %16, %15 ], [ %14, %13 ], !dbg !2278
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !2249, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 0, metadata !2250, metadata !DIExpression()), !dbg !2254
  br label %23, !dbg !2279

23:                                               ; preds = %32, %21
  %24 = phi i64 [ 0, %21 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !2250, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 0, metadata !2251, metadata !DIExpression()), !dbg !2254
  br label %25, !dbg !2281

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %30, %25 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !2251, metadata !DIExpression()), !dbg !2254
  %27 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %24, i64 %26, !dbg !2285
  %28 = load double, double* %27, align 8, !dbg !2285, !tbaa !721
  %29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %28), !dbg !2287
  %30 = add nuw nsw i64 %26, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %30, metadata !2251, metadata !DIExpression()), !dbg !2254
  %31 = icmp eq i64 %30, 4, !dbg !2289
  br i1 %31, label %32, label %25, !dbg !2281, !llvm.loop !2290

32:                                               ; preds = %25
  %33 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2292
  %34 = add nuw nsw i64 %24, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %34, metadata !2250, metadata !DIExpression()), !dbg !2254
  %35 = icmp eq i64 %34, 4, !dbg !2294
  br i1 %35, label %36, label %23, !dbg !2279, !llvm.loop !2295

36:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 0, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !2249, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.label(metadata !2253), !dbg !2297
  %37 = icmp eq %struct._IO_FILE* %22, null, !dbg !2298
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2300
  %39 = icmp eq %struct._IO_FILE* %22, %38, !dbg !2301
  %40 = or i1 %37, %39, !dbg !2302
  br i1 %40, label %43, label %41, !dbg !2302

41:                                               ; preds = %36
  %42 = tail call i32 @fclose(%struct._IO_FILE* nonnull %22), !dbg !2303
  br label %43, !dbg !2303

43:                                               ; preds = %18, %7, %36, %41
  %44 = phi i32 [ 0, %36 ], [ 0, %41 ], [ 1, %7 ], [ 1, %18 ]
  ret i32 %44, !dbg !2304
}

; Function Attrs: nofree nounwind
declare dso_local i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @initres() unnamed_addr #0 !dbg !2305 {
  tail call void @NAB_initres(%struct.residue_t* nonnull @res, i32 0) #14, !dbg !2306
  %1 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2307, !tbaa !759
  %2 = icmp eq i8* %1, null, !dbg !2309
  br i1 %2, label %3, label %9, !dbg !2310

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !2311
  store i8* %4, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2313, !tbaa !759
  %5 = icmp eq i8* %4, null, !dbg !2314
  br i1 %5, label %6, label %9, !dbg !2316

6:                                                ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2317, !tbaa !471
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %7) #15, !dbg !2319
  tail call void @exit(i32 1) #17, !dbg !2320
  unreachable, !dbg !2320

9:                                                ; preds = %3, %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2321, !tbaa !762
  %11 = icmp eq i8* %10, null, !dbg !2323
  br i1 %11, label %12, label %18, !dbg !2324

12:                                               ; preds = %9
  %13 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !2325
  store i8* %13, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2327, !tbaa !762
  %14 = icmp eq i8* %13, null, !dbg !2328
  br i1 %14, label %15, label %18, !dbg !2330

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2331, !tbaa !471
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %16) #15, !dbg !2333
  tail call void @exit(i32 1) #17, !dbg !2334
  unreachable, !dbg !2334

18:                                               ; preds = %12, %9
  %19 = load i32, i32* @n_atab, align 4, !dbg !2335, !tbaa !561
  store i32 %19, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2336, !tbaa !768
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2337, !tbaa !1537
  ret void, !dbg !2338
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
define internal fastcc void @makebonds() unnamed_addr #8 !dbg !2339 {
  call void @llvm.dbg.value(metadata %struct.residue_t* @res, metadata !2343, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 0, metadata !2344, metadata !DIExpression()), !dbg !2351
  %1 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2352, !tbaa !768
  %2 = icmp sgt i32 %1, 0, !dbg !2355
  br i1 %2, label %3, label %179, !dbg !2356

3:                                                ; preds = %0
  %4 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2357, !tbaa !1537
  %5 = zext i32 %1 to i64, !dbg !2356
  br label %10, !dbg !2356

6:                                                ; preds = %10
  call void @llvm.dbg.value(metadata i32 0, metadata !2344, metadata !DIExpression()), !dbg !2351
  %7 = icmp sgt i32 %1, 1, !dbg !2359
  br i1 %7, label %8, label %179, !dbg !2362

8:                                                ; preds = %6
  %9 = tail call i16** @__ctype_b_loc() #18, !dbg !2363
  br label %21, !dbg !2362

10:                                               ; preds = %3, %10
  %11 = phi i64 [ 0, %3 ], [ %13, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2344, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2346, metadata !DIExpression()), !dbg !2351
  %12 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %11, i32 3, !dbg !2366
  store i32 0, i32* %12, align 4, !dbg !2367, !tbaa !2368
  %13 = add nuw nsw i64 %11, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %13, metadata !2344, metadata !DIExpression()), !dbg !2351
  %14 = icmp ult i64 %13, %5, !dbg !2355
  br i1 %14, label %10, label %6, !dbg !2356, !llvm.loop !2370

15:                                               ; preds = %171, %91, %38
  %16 = phi i32 [ %22, %38 ], [ %93, %91 ], [ %173, %171 ], !dbg !2372
  call void @llvm.dbg.value(metadata i64 %40, metadata !2344, metadata !DIExpression()), !dbg !2351
  %17 = add nsw i32 %16, -1, !dbg !2373
  %18 = sext i32 %17 to i64, !dbg !2359
  %19 = icmp slt i64 %40, %18, !dbg !2359
  %20 = add nuw nsw i64 %24, 1, !dbg !2362
  br i1 %19, label %21, label %179, !dbg !2362

21:                                               ; preds = %8, %15
  %22 = phi i32 [ %1, %8 ], [ %16, %15 ]
  %23 = phi i64 [ 0, %8 ], [ %40, %15 ]
  %24 = phi i64 [ 1, %8 ], [ %20, %15 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !2344, metadata !DIExpression()), !dbg !2351
  %25 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2374, !tbaa !1537
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2346, metadata !DIExpression()), !dbg !2351
  %26 = load i16*, i16** %9, align 8, !dbg !2375, !tbaa !471
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 0, !dbg !2375
  %28 = load i8*, i8** %27, align 8, !dbg !2375, !tbaa !529
  %29 = load i8, i8* %28, align 1, !dbg !2375, !tbaa !465
  %30 = sext i8 %29 to i64, !dbg !2375
  %31 = getelementptr inbounds i16, i16* %26, i64 %30, !dbg !2375
  %32 = load i16, i16* %31, align 2, !dbg !2375, !tbaa !2376
  %33 = and i16 %32, 2048, !dbg !2375
  %34 = icmp eq i16 %33, 0, !dbg !2375
  br i1 %34, label %38, label %35, !dbg !2378

35:                                               ; preds = %21
  %36 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2379
  %37 = load i8, i8* %36, align 1, !dbg !2379, !tbaa !465
  call void @llvm.dbg.value(metadata i1 undef, metadata !2348, metadata !DIExpression()), !dbg !2351
  br label %38, !dbg !2380

38:                                               ; preds = %21, %35
  %39 = phi i8 [ %37, %35 ], [ %29, %21 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !2348, metadata !DIExpression()), !dbg !2351
  %40 = add nuw nsw i64 %23, 1, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %40, metadata !2345, metadata !DIExpression()), !dbg !2351
  %41 = sext i32 %22 to i64, !dbg !2383
  %42 = icmp slt i64 %40, %41, !dbg !2383
  br i1 %42, label %43, label %15, !dbg !2385, !llvm.loop !2386

43:                                               ; preds = %38
  %44 = or i8 %39, 32, !dbg !2363
  %45 = icmp eq i8 %44, 104, !dbg !2363
  call void @llvm.dbg.value(metadata i1 %45, metadata !2348, metadata !DIExpression()), !dbg !2351
  %46 = getelementptr %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 17, i64 0, !dbg !2388
  %47 = getelementptr %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 17, i64 1, !dbg !2388
  %48 = getelementptr %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 17, i64 2, !dbg !2388
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 3, !dbg !2390
  %50 = trunc i64 %23 to i32, !dbg !2395
  br i1 %45, label %53, label %51, !dbg !2385

51:                                               ; preds = %43
  %52 = trunc i64 %23 to i32, !dbg !2396
  br label %98, !dbg !2385

53:                                               ; preds = %43, %96
  %54 = phi %struct.atom_t* [ %97, %96 ], [ %25, %43 ], !dbg !2402
  %55 = phi i64 [ %92, %96 ], [ %24, %43 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !2345, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2347, metadata !DIExpression()), !dbg !2351
  %56 = load double, double* %46, align 8, !dbg !2403, !tbaa !721
  %57 = load double, double* %47, align 8, !dbg !2403, !tbaa !721
  %58 = load double, double* %48, align 8, !dbg !2403, !tbaa !721
  %59 = getelementptr %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 17, i64 0, !dbg !2403
  %60 = load double, double* %59, align 8, !dbg !2403, !tbaa !721
  %61 = getelementptr %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 17, i64 1, !dbg !2403
  %62 = load double, double* %61, align 8, !dbg !2403, !tbaa !721
  %63 = getelementptr %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 17, i64 2, !dbg !2403
  %64 = load double, double* %63, align 8, !dbg !2403, !tbaa !721
  %65 = fsub double %56, %60, !dbg !2404
  call void @llvm.dbg.value(metadata double %65, metadata !2212, metadata !DIExpression()) #14, !dbg !2406
  %66 = fsub double %57, %62, !dbg !2407
  call void @llvm.dbg.value(metadata double %66, metadata !2213, metadata !DIExpression()) #14, !dbg !2406
  %67 = fsub double %58, %64, !dbg !2408
  call void @llvm.dbg.value(metadata double %67, metadata !2214, metadata !DIExpression()) #14, !dbg !2406
  %68 = fmul double %65, %65, !dbg !2409
  %69 = fmul double %66, %66, !dbg !2410
  %70 = fadd double %68, %69, !dbg !2411
  %71 = fmul double %67, %67, !dbg !2412
  %72 = fadd double %70, %71, !dbg !2413
  %73 = tail call double @sqrt(double %72) #14, !dbg !2414
  call void @llvm.dbg.value(metadata double %73, metadata !2350, metadata !DIExpression()), !dbg !2351
  %74 = fcmp ugt double %73, 1.200000e+00, !dbg !2415
  br i1 %74, label %91, label %75, !dbg !2416

75:                                               ; preds = %53
  %76 = load i32, i32* %49, align 4, !dbg !2417, !tbaa !2368
  %77 = icmp slt i32 %76, 8, !dbg !2418
  br i1 %77, label %78, label %91, !dbg !2419

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 3, !dbg !2420
  %80 = load i32, i32* %79, align 4, !dbg !2420, !tbaa !2368
  %81 = icmp slt i32 %80, 8, !dbg !2421
  br i1 %81, label %82, label %91, !dbg !2422

82:                                               ; preds = %78
  %83 = add nsw i32 %76, 1, !dbg !2423
  store i32 %83, i32* %49, align 4, !dbg !2423, !tbaa !2368
  %84 = sext i32 %76 to i64, !dbg !2424
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 4, i64 %84, !dbg !2424
  %86 = trunc i64 %55 to i32, !dbg !2425
  store i32 %86, i32* %85, align 4, !dbg !2425, !tbaa !561
  %87 = load i32, i32* %79, align 4, !dbg !2426, !tbaa !2368
  %88 = add nsw i32 %87, 1, !dbg !2426
  store i32 %88, i32* %79, align 4, !dbg !2426, !tbaa !2368
  %89 = sext i32 %87 to i64, !dbg !2427
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 4, i64 %89, !dbg !2427
  store i32 %50, i32* %90, align 4, !dbg !2428, !tbaa !561
  br label %91, !dbg !2429

91:                                               ; preds = %82, %78, %75, %53
  %92 = add nuw nsw i64 %55, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %92, metadata !2345, metadata !DIExpression()), !dbg !2351
  %93 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2431, !tbaa !768
  %94 = trunc i64 %92 to i32, !dbg !2383
  %95 = icmp sgt i32 %93, %94, !dbg !2383
  br i1 %95, label %96, label %15, !dbg !2385, !llvm.loop !2432

96:                                               ; preds = %91
  %97 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2402, !tbaa !1537
  br label %53, !dbg !2385

98:                                               ; preds = %176, %51
  %99 = phi i16* [ %26, %51 ], [ %178, %176 ], !dbg !2434
  %100 = phi %struct.atom_t* [ %25, %51 ], [ %177, %176 ], !dbg !2402
  %101 = phi i64 [ %24, %51 ], [ %172, %176 ]
  call void @llvm.dbg.value(metadata i64 %101, metadata !2345, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2347, metadata !DIExpression()), !dbg !2351
  %102 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 0, !dbg !2434
  %103 = load i8*, i8** %102, align 8, !dbg !2434, !tbaa !529
  %104 = load i8, i8* %103, align 1, !dbg !2434, !tbaa !465
  %105 = sext i8 %104 to i64, !dbg !2434
  %106 = getelementptr inbounds i16, i16* %99, i64 %105, !dbg !2434
  %107 = load i16, i16* %106, align 2, !dbg !2434, !tbaa !2376
  %108 = and i16 %107, 2048, !dbg !2434
  %109 = icmp eq i16 %108, 0, !dbg !2434
  br i1 %109, label %113, label %110, !dbg !2436

110:                                              ; preds = %98
  %111 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !2437
  %112 = load i8, i8* %111, align 1, !dbg !2437, !tbaa !465
  call void @llvm.dbg.value(metadata i1 undef, metadata !2349, metadata !DIExpression()), !dbg !2351
  br label %113, !dbg !2438

113:                                              ; preds = %98, %110
  %114 = phi i8 [ %112, %110 ], [ %104, %98 ]
  %115 = or i8 %114, 32, !dbg !2439
  %116 = icmp eq i8 %115, 104, !dbg !2439
  call void @llvm.dbg.value(metadata i1 %116, metadata !2349, metadata !DIExpression()), !dbg !2351
  %117 = load double, double* %46, align 8, !dbg !2403, !tbaa !721
  %118 = load double, double* %47, align 8, !dbg !2403, !tbaa !721
  %119 = load double, double* %48, align 8, !dbg !2403, !tbaa !721
  %120 = getelementptr %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 17, i64 0, !dbg !2403
  %121 = load double, double* %120, align 8, !dbg !2403, !tbaa !721
  %122 = getelementptr %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 17, i64 1, !dbg !2403
  %123 = load double, double* %122, align 8, !dbg !2403, !tbaa !721
  %124 = getelementptr %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 17, i64 2, !dbg !2403
  %125 = load double, double* %124, align 8, !dbg !2403, !tbaa !721
  %126 = fsub double %117, %121, !dbg !2404
  call void @llvm.dbg.value(metadata double %126, metadata !2212, metadata !DIExpression()) #14, !dbg !2406
  %127 = fsub double %118, %123, !dbg !2407
  call void @llvm.dbg.value(metadata double %127, metadata !2213, metadata !DIExpression()) #14, !dbg !2406
  %128 = fsub double %119, %125, !dbg !2408
  call void @llvm.dbg.value(metadata double %128, metadata !2214, metadata !DIExpression()) #14, !dbg !2406
  %129 = fmul double %126, %126, !dbg !2409
  %130 = fmul double %127, %127, !dbg !2410
  %131 = fadd double %129, %130, !dbg !2411
  %132 = fmul double %128, %128, !dbg !2412
  %133 = fadd double %131, %132, !dbg !2413
  %134 = tail call double @sqrt(double %133) #14, !dbg !2414
  call void @llvm.dbg.value(metadata double %134, metadata !2350, metadata !DIExpression()), !dbg !2351
  br i1 %116, label %135, label %153, !dbg !2440

135:                                              ; preds = %113
  %136 = fcmp ugt double %134, 1.200000e+00, !dbg !2415
  br i1 %136, label %171, label %137, !dbg !2416

137:                                              ; preds = %135
  %138 = load i32, i32* %49, align 4, !dbg !2417, !tbaa !2368
  %139 = icmp slt i32 %138, 8, !dbg !2418
  br i1 %139, label %140, label %171, !dbg !2419

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 3, !dbg !2420
  %142 = load i32, i32* %141, align 4, !dbg !2420, !tbaa !2368
  %143 = icmp slt i32 %142, 8, !dbg !2421
  br i1 %143, label %144, label %171, !dbg !2422

144:                                              ; preds = %140
  %145 = add nsw i32 %138, 1, !dbg !2423
  store i32 %145, i32* %49, align 4, !dbg !2423, !tbaa !2368
  %146 = sext i32 %138 to i64, !dbg !2424
  %147 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 4, i64 %146, !dbg !2424
  %148 = trunc i64 %101 to i32, !dbg !2425
  store i32 %148, i32* %147, align 4, !dbg !2425, !tbaa !561
  %149 = load i32, i32* %141, align 4, !dbg !2426, !tbaa !2368
  %150 = add nsw i32 %149, 1, !dbg !2426
  store i32 %150, i32* %141, align 4, !dbg !2426, !tbaa !2368
  %151 = sext i32 %149 to i64, !dbg !2427
  %152 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 4, i64 %151, !dbg !2427
  store i32 %52, i32* %152, align 4, !dbg !2428, !tbaa !561
  br label %171, !dbg !2429

153:                                              ; preds = %113
  %154 = fcmp ugt double %134, 1.850000e+00, !dbg !2441
  br i1 %154, label %171, label %155, !dbg !2442

155:                                              ; preds = %153
  %156 = load i32, i32* %49, align 4, !dbg !2443, !tbaa !2368
  %157 = icmp slt i32 %156, 8, !dbg !2444
  br i1 %157, label %158, label %171, !dbg !2445

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 3, !dbg !2446
  %160 = load i32, i32* %159, align 4, !dbg !2446, !tbaa !2368
  %161 = icmp slt i32 %160, 8, !dbg !2447
  br i1 %161, label %162, label %171, !dbg !2448

162:                                              ; preds = %158
  %163 = add nsw i32 %156, 1, !dbg !2449
  store i32 %163, i32* %49, align 4, !dbg !2449, !tbaa !2368
  %164 = sext i32 %156 to i64, !dbg !2451
  %165 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 4, i64 %164, !dbg !2451
  %166 = trunc i64 %101 to i32, !dbg !2452
  store i32 %166, i32* %165, align 4, !dbg !2452, !tbaa !561
  %167 = load i32, i32* %159, align 4, !dbg !2453, !tbaa !2368
  %168 = add nsw i32 %167, 1, !dbg !2453
  store i32 %168, i32* %159, align 4, !dbg !2453, !tbaa !2368
  %169 = sext i32 %167 to i64, !dbg !2454
  %170 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 4, i64 %169, !dbg !2454
  store i32 %50, i32* %170, align 4, !dbg !2455, !tbaa !561
  br label %171, !dbg !2456

171:                                              ; preds = %135, %153, %137, %140, %144, %155, %158, %162
  %172 = add nuw nsw i64 %101, 1, !dbg !2430
  call void @llvm.dbg.value(metadata i64 %172, metadata !2345, metadata !DIExpression()), !dbg !2351
  %173 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2431, !tbaa !768
  %174 = trunc i64 %172 to i32, !dbg !2383
  %175 = icmp sgt i32 %173, %174, !dbg !2383
  br i1 %175, label %176, label %15, !dbg !2385, !llvm.loop !2432

176:                                              ; preds = %171
  %177 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2402, !tbaa !1537
  %178 = load i16*, i16** %9, align 8, !dbg !2434, !tbaa !471
  br label %98, !dbg !2385

179:                                              ; preds = %15, %0, %6
  ret void, !dbg !2457
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
!965 = !DILocation(line: 180, column: 10, scope: !966)
!966 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!967 = !DILocation(line: 180, column: 5, scope: !966)
!968 = !DILocation(line: 180, column: 17, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !3, line: 180, column: 5)
!970 = !DILocation(line: 181, column: 13, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 181, column: 13)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 180, column: 49)
!973 = !DILocation(line: 181, column: 19, scope: !971)
!974 = !DILocation(line: 181, column: 13, scope: !972)
!975 = distinct !{!975, !967, !976}
!976 = !DILocation(line: 201, column: 5, scope: !966)
!977 = !DILocation(line: 185, column: 23, scope: !972)
!978 = !DILocation(line: 185, column: 35, scope: !972)
!979 = !DILocation(line: 185, column: 47, scope: !972)
!980 = !DILocation(line: 185, column: 59, scope: !972)
!981 = !DILocation(line: 184, column: 15, scope: !972)
!982 = !DILocation(line: 190, column: 17, scope: !983)
!983 = distinct !DILexicalBlock(scope: !972, file: !3, line: 190, column: 13)
!984 = !DILocation(line: 190, column: 13, scope: !972)
!985 = !DILocation(line: 191, column: 21, scope: !986)
!986 = distinct !DILexicalBlock(scope: !983, file: !3, line: 190, column: 23)
!987 = !DILocation(line: 193, column: 23, scope: !986)
!988 = !DILocation(line: 191, column: 13, scope: !986)
!989 = !DILocation(line: 194, column: 13, scope: !986)
!990 = !DILocation(line: 196, column: 13, scope: !986)
!991 = !DILocation(line: 198, column: 10, scope: !972)
!992 = !DILocation(line: 199, column: 15, scope: !993)
!993 = distinct !DILexicalBlock(scope: !972, file: !3, line: 199, column: 13)
!994 = !DILocation(line: 199, column: 13, scope: !972)
!995 = !DILocation(line: 202, column: 11, scope: !996)
!996 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!997 = !DILocation(line: 202, column: 9, scope: !2)
!998 = !DILocation(line: 203, column: 17, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 202, column: 17)
!1000 = !DILocation(line: 203, column: 9, scope: !999)
!1001 = !DILocation(line: 205, column: 9, scope: !999)
!1002 = !DILocation(line: 207, column: 9, scope: !999)
!1003 = !DILocation(line: 210, column: 3, scope: !2)
!1004 = !DILocation(line: 212, column: 12, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!1006 = !DILocation(line: 212, column: 29, scope: !1005)
!1007 = !DILocation(line: 212, column: 26, scope: !1005)
!1008 = !DILocation(line: 212, column: 20, scope: !1005)
!1009 = !DILocation(line: 213, column: 9, scope: !1005)
!1010 = !DILocation(line: 217, column: 1, scope: !2)
!1011 = !DILocation(line: 216, column: 5, scope: !2)
!1012 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !1013, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!38, !13, !393, !13}
!1015 = !{!1016, !1017, !1018, !1019, !1020}
!1016 = !DILocalVariable(name: "fname", arg: 1, scope: !1012, file: !3, line: 225, type: !13)
!1017 = !DILocalVariable(name: "mol", arg: 2, scope: !1012, file: !3, line: 225, type: !393)
!1018 = !DILocalVariable(name: "options", arg: 3, scope: !1012, file: !3, line: 225, type: !13)
!1019 = !DILocalVariable(name: "fp", scope: !1012, file: !3, line: 227, type: !372)
!1020 = !DILocalVariable(name: "ier", scope: !1012, file: !3, line: 228, type: !38)
!1021 = !DILocalVariable(name: "rname", scope: !1022, file: !3, line: 868, type: !1039)
!1022 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1023, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1025)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !372, !393, !13}
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1021, !1038, !1040, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052}
!1026 = !DILocalVariable(name: "fp", arg: 1, scope: !1022, file: !3, line: 849, type: !372)
!1027 = !DILocalVariable(name: "mol", arg: 2, scope: !1022, file: !3, line: 849, type: !393)
!1028 = !DILocalVariable(name: "options", arg: 3, scope: !1022, file: !3, line: 849, type: !13)
!1029 = !DILocalVariable(name: "r", scope: !1022, file: !3, line: 863, type: !38)
!1030 = !DILocalVariable(name: "tr", scope: !1022, file: !3, line: 863, type: !38)
!1031 = !DILocalVariable(name: "rn", scope: !1022, file: !3, line: 863, type: !38)
!1032 = !DILocalVariable(name: "a", scope: !1022, file: !3, line: 863, type: !38)
!1033 = !DILocalVariable(name: "ta", scope: !1022, file: !3, line: 863, type: !38)
!1034 = !DILocalVariable(name: "cid", scope: !1022, file: !3, line: 864, type: !14)
!1035 = !DILocalVariable(name: "sp", scope: !1022, file: !3, line: 865, type: !129)
!1036 = !DILocalVariable(name: "res", scope: !1022, file: !3, line: 866, type: !145)
!1037 = !DILocalVariable(name: "ap", scope: !1022, file: !3, line: 867, type: !191)
!1038 = !DILocalVariable(name: "aname", scope: !1022, file: !3, line: 869, type: !1039)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !201)
!1040 = !DILocalVariable(name: "rid", scope: !1022, file: !3, line: 870, type: !1041)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 7)
!1044 = !DILocalVariable(name: "loptions", scope: !1022, file: !3, line: 871, type: !376)
!1045 = !DILocalVariable(name: "opt_pqr", scope: !1022, file: !3, line: 872, type: !38)
!1046 = !DILocalVariable(name: "opt_nobocc", scope: !1022, file: !3, line: 873, type: !38)
!1047 = !DILocalVariable(name: "opt_brook", scope: !1022, file: !3, line: 874, type: !38)
!1048 = !DILocalVariable(name: "opt_wwpdb", scope: !1022, file: !3, line: 875, type: !38)
!1049 = !DILocalVariable(name: "opt_tr", scope: !1022, file: !3, line: 876, type: !38)
!1050 = !DILocalVariable(name: "opt_nocid", scope: !1022, file: !3, line: 877, type: !38)
!1051 = !DILocalVariable(name: "opt_allcid", scope: !1022, file: !3, line: 878, type: !38)
!1052 = !DILocalVariable(name: "cidstate", scope: !1022, file: !3, line: 879, type: !344)
!1053 = !DILocation(line: 868, column: 10, scope: !1022, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 246, column: 13, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 245, column: 23)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 245, column: 13)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 238, column: 30)
!1058 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 238, column: 9)
!1059 = !DILocation(line: 869, column: 10, scope: !1022, inlinedAt: !1054)
!1060 = !DILocation(line: 870, column: 10, scope: !1022, inlinedAt: !1054)
!1061 = !DILocation(line: 871, column: 10, scope: !1022, inlinedAt: !1054)
!1062 = !DILocation(line: 0, scope: !1012)
!1063 = !DILocation(line: 230, column: 10, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 230, column: 9)
!1065 = !DILocation(line: 230, column: 9, scope: !1012)
!1066 = !DILocation(line: 231, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 230, column: 15)
!1068 = !DILocation(line: 232, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 231, column: 34)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 231, column: 13)
!1071 = !DILocation(line: 232, column: 13, scope: !1069)
!1072 = !DILocation(line: 233, column: 9, scope: !1069)
!1073 = !DILocation(line: 238, column: 9, scope: !1012)
!1074 = !DILocation(line: 239, column: 14, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 239, column: 13)
!1076 = !DILocation(line: 239, column: 13, scope: !1057)
!1077 = !DILocation(line: 240, column: 18, scope: !1075)
!1078 = !DILocation(line: 240, column: 13, scope: !1075)
!1079 = !DILocation(line: 241, column: 24, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 241, column: 18)
!1081 = !DILocation(line: 241, column: 43, scope: !1080)
!1082 = !DILocation(line: 241, column: 18, scope: !1075)
!1083 = !DILocation(line: 242, column: 13, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 241, column: 52)
!1085 = !DILocation(line: 245, column: 13, scope: !1057)
!1086 = !DILocation(line: 0, scope: !1022, inlinedAt: !1054)
!1087 = !DILocation(line: 868, column: 5, scope: !1022, inlinedAt: !1054)
!1088 = !DILocation(line: 869, column: 5, scope: !1022, inlinedAt: !1054)
!1089 = !DILocation(line: 870, column: 5, scope: !1022, inlinedAt: !1054)
!1090 = !DILocation(line: 871, column: 5, scope: !1022, inlinedAt: !1054)
!1091 = !DILocation(line: 885, column: 10, scope: !1092, inlinedAt: !1054)
!1092 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 885, column: 9)
!1093 = !DILocation(line: 885, column: 9, scope: !1022, inlinedAt: !1054)
!1094 = !DILocation(line: 886, column: 17, scope: !1095, inlinedAt: !1054)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 885, column: 14)
!1096 = !DILocation(line: 886, column: 9, scope: !1095, inlinedAt: !1054)
!1097 = !DILocation(line: 887, column: 9, scope: !1095, inlinedAt: !1054)
!1098 = !DILocation(line: 890, column: 17, scope: !1099, inlinedAt: !1054)
!1099 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 890, column: 9)
!1100 = !DILocation(line: 890, column: 9, scope: !1022, inlinedAt: !1054)
!1101 = !DILocation(line: 891, column: 19, scope: !1099, inlinedAt: !1054)
!1102 = !DILocation(line: 891, column: 9, scope: !1099, inlinedAt: !1054)
!1103 = !DILocation(line: 893, column: 9, scope: !1104, inlinedAt: !1054)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 892, column: 10)
!1105 = !DILocation(line: 894, column: 9, scope: !1104, inlinedAt: !1054)
!1106 = !DILocation(line: 894, column: 23, scope: !1104, inlinedAt: !1054)
!1107 = !DILocation(line: 896, column: 15, scope: !1022, inlinedAt: !1054)
!1108 = !DILocation(line: 896, column: 40, scope: !1022, inlinedAt: !1054)
!1109 = !DILocation(line: 897, column: 18, scope: !1022, inlinedAt: !1054)
!1110 = !DILocation(line: 897, column: 46, scope: !1022, inlinedAt: !1054)
!1111 = !DILocation(line: 898, column: 17, scope: !1022, inlinedAt: !1054)
!1112 = !DILocation(line: 898, column: 44, scope: !1022, inlinedAt: !1054)
!1113 = !DILocation(line: 899, column: 17, scope: !1022, inlinedAt: !1054)
!1114 = !DILocation(line: 899, column: 44, scope: !1022, inlinedAt: !1054)
!1115 = !DILocation(line: 900, column: 14, scope: !1022, inlinedAt: !1054)
!1116 = !DILocation(line: 900, column: 38, scope: !1022, inlinedAt: !1054)
!1117 = !DILocation(line: 901, column: 17, scope: !1022, inlinedAt: !1054)
!1118 = !DILocation(line: 901, column: 44, scope: !1022, inlinedAt: !1054)
!1119 = !DILocation(line: 902, column: 18, scope: !1022, inlinedAt: !1054)
!1120 = !DILocation(line: 902, column: 46, scope: !1022, inlinedAt: !1054)
!1121 = !DILocalVariable(name: "nocid", arg: 1, scope: !1122, file: !3, line: 1021, type: !38)
!1122 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !1123, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!344, !38, !38, !393}
!1125 = !{!1121, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1126 = !DILocalVariable(name: "allcid", arg: 2, scope: !1122, file: !3, line: 1021, type: !38)
!1127 = !DILocalVariable(name: "mol", arg: 3, scope: !1122, file: !3, line: 1021, type: !393)
!1128 = !DILocalVariable(name: "cid", scope: !1122, file: !3, line: 1023, type: !344)
!1129 = !DILocalVariable(name: "c", scope: !1122, file: !3, line: 1024, type: !38)
!1130 = !DILocalVariable(name: "sp", scope: !1122, file: !3, line: 1025, type: !129)
!1131 = !DILocalVariable(name: "err", scope: !1122, file: !3, line: 1026, type: !38)
!1132 = !DILabel(scope: !1122, name: "CLEAN_UP", file: !3, line: 1067)
!1133 = !DILocation(line: 0, scope: !1122, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 905, column: 16, scope: !1022, inlinedAt: !1054)
!1135 = !DILocation(line: 1028, column: 9, scope: !1136, inlinedAt: !1134)
!1136 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1028, column: 9)
!1137 = !DILocation(line: 1028, column: 9, scope: !1122, inlinedAt: !1134)
!1138 = !DILocation(line: 1031, column: 21, scope: !1122, inlinedAt: !1134)
!1139 = !DILocation(line: 1031, column: 11, scope: !1122, inlinedAt: !1134)
!1140 = !DILocation(line: 1032, column: 13, scope: !1141, inlinedAt: !1134)
!1141 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1032, column: 9)
!1142 = !DILocation(line: 1032, column: 9, scope: !1122, inlinedAt: !1134)
!1143 = !DILocation(line: 1033, column: 17, scope: !1144, inlinedAt: !1134)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 1032, column: 22)
!1145 = !DILocation(line: 1033, column: 9, scope: !1144, inlinedAt: !1134)
!1146 = !DILocation(line: 1067, column: 3, scope: !1122, inlinedAt: !1134)
!1147 = !DILocalVariable(name: "cid", arg: 1, scope: !1148, file: !3, line: 1011, type: !344)
!1148 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !1149, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !344}
!1151 = !{!1147}
!1152 = !DILocation(line: 0, scope: !1148, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 1070, column: 9, scope: !1154, inlinedAt: !1134)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 1069, column: 14)
!1155 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1069, column: 9)
!1156 = !DILocation(line: 1014, column: 9, scope: !1148, inlinedAt: !1153)
!1157 = !DILocation(line: 1037, column: 28, scope: !1122, inlinedAt: !1134)
!1158 = !DILocation(line: 1037, column: 10, scope: !1122, inlinedAt: !1134)
!1159 = !DILocation(line: 1037, column: 17, scope: !1122, inlinedAt: !1134)
!1160 = !{!1161, !472, i64 8}
!1161 = !{!"cid_t", !531, i64 0, !531, i64 4, !472, i64 8}
!1162 = !DILocation(line: 1038, column: 21, scope: !1163, inlinedAt: !1134)
!1163 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1038, column: 9)
!1164 = !DILocation(line: 1038, column: 9, scope: !1122, inlinedAt: !1134)
!1165 = !DILocation(line: 1043, column: 10, scope: !1122, inlinedAt: !1134)
!1166 = !DILocation(line: 1043, column: 17, scope: !1122, inlinedAt: !1134)
!1167 = !{!1161, !531, i64 0}
!1168 = !DILocation(line: 1044, column: 10, scope: !1122, inlinedAt: !1134)
!1169 = !DILocation(line: 1044, column: 17, scope: !1122, inlinedAt: !1134)
!1170 = !{!1161, !531, i64 4}
!1171 = !DILocation(line: 1045, column: 5, scope: !1172, inlinedAt: !1134)
!1172 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1045, column: 5)
!1173 = !DILocation(line: 1046, column: 24, scope: !1174, inlinedAt: !1134)
!1174 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 1045, column: 5)
!1175 = !DILocation(line: 1048, column: 9, scope: !1122, inlinedAt: !1134)
!1176 = !DILocation(line: 1054, column: 24, scope: !1177, inlinedAt: !1134)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1054, column: 9)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1048, column: 17)
!1179 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1048, column: 9)
!1180 = !DILocation(line: 0, scope: !1177, inlinedAt: !1134)
!1181 = !DILocation(line: 1054, column: 9, scope: !1177, inlinedAt: !1134)
!1182 = !DILocation(line: 1055, column: 28, scope: !1183, inlinedAt: !1134)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 1055, column: 17)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 1054, column: 56)
!1185 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 1054, column: 9)
!1186 = !DILocation(line: 1055, column: 17, scope: !1183, inlinedAt: !1134)
!1187 = !DILocation(line: 1055, column: 42, scope: !1183, inlinedAt: !1134)
!1188 = !DILocation(line: 1055, column: 17, scope: !1184, inlinedAt: !1134)
!1189 = !DILocation(line: 1056, column: 21, scope: !1190, inlinedAt: !1134)
!1190 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 1055, column: 48)
!1191 = !DILocation(line: 1057, column: 30, scope: !1192, inlinedAt: !1134)
!1192 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 1057, column: 21)
!1193 = !DILocation(line: 1058, column: 21, scope: !1192, inlinedAt: !1134)
!1194 = !DILocation(line: 1058, column: 36, scope: !1192, inlinedAt: !1134)
!1195 = !DILocation(line: 1054, column: 48, scope: !1185, inlinedAt: !1134)
!1196 = distinct !{!1196, !1181, !1197}
!1197 = !DILocation(line: 1060, column: 9, scope: !1177, inlinedAt: !1134)
!1198 = !DILocation(line: 1061, column: 9, scope: !1199, inlinedAt: !1134)
!1199 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1061, column: 9)
!1200 = !DILocation(line: 1062, column: 18, scope: !1201, inlinedAt: !1134)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1062, column: 17)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 1061, column: 59)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1061, column: 9)
!1204 = !DILocation(line: 1062, column: 17, scope: !1202, inlinedAt: !1134)
!1205 = !DILocation(line: 1061, column: 55, scope: !1203, inlinedAt: !1134)
!1206 = !DILocation(line: 1061, column: 28, scope: !1203, inlinedAt: !1134)
!1207 = distinct !{!1207, !1198, !1208}
!1208 = !DILocation(line: 1064, column: 9, scope: !1199, inlinedAt: !1134)
!1209 = !DILocation(line: 1039, column: 17, scope: !1210, inlinedAt: !1134)
!1210 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 1038, column: 30)
!1211 = !DILocation(line: 1039, column: 9, scope: !1210, inlinedAt: !1134)
!1212 = !DILocation(line: 1017, column: 9, scope: !1213, inlinedAt: !1153)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 1014, column: 22)
!1214 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 1014, column: 9)
!1215 = !DILocation(line: 1018, column: 5, scope: !1213, inlinedAt: !1153)
!1216 = !DILocation(line: 911, column: 36, scope: !1217, inlinedAt: !1054)
!1217 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 911, column: 5)
!1218 = !DILocation(line: 0, scope: !1217, inlinedAt: !1054)
!1219 = !DILocation(line: 911, column: 5, scope: !1217, inlinedAt: !1054)
!1220 = !DILocation(line: 0, scope: !1221, inlinedAt: !1231)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1084, column: 9)
!1222 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !1223, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!38, !344, !38, !38, !129}
!1225 = !{!1226, !1227, !1228, !1229, !1230}
!1226 = !DILocalVariable(name: "cid", arg: 1, scope: !1222, file: !3, line: 1077, type: !344)
!1227 = !DILocalVariable(name: "nocid", arg: 2, scope: !1222, file: !3, line: 1077, type: !38)
!1228 = !DILocalVariable(name: "allcid", arg: 3, scope: !1222, file: !3, line: 1077, type: !38)
!1229 = !DILocalVariable(name: "sp", arg: 4, scope: !1222, file: !3, line: 1077, type: !129)
!1230 = !DILocalVariable(name: "c", scope: !1222, file: !3, line: 1079, type: !38)
!1231 = distinct !DILocation(line: 920, column: 15, scope: !1232, inlinedAt: !1054)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 911, column: 68)
!1233 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 911, column: 5)
!1234 = !DILocation(line: 0, scope: !1235, inlinedAt: !1231)
!1235 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 1087, column: 16)
!1236 = !DILocation(line: 0, scope: !1237, inlinedAt: !1231)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1089, column: 22)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 1089, column: 14)
!1239 = !DILocation(line: 0, scope: !1240, inlinedAt: !1247)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1199, column: 9)
!1241 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !1242, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !13, !145}
!1244 = !{!1245, !1246}
!1245 = !DILocalVariable(name: "rname", arg: 1, scope: !1241, file: !3, line: 1194, type: !13)
!1246 = !DILocalVariable(name: "res", arg: 2, scope: !1241, file: !3, line: 1194, type: !145)
!1247 = distinct !DILocation(line: 927, column: 17, scope: !1248, inlinedAt: !1054)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 926, column: 22)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 924, column: 17)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 921, column: 53)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 921, column: 9)
!1252 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 921, column: 9)
!1253 = !DILocation(line: 0, scope: !1254, inlinedAt: !1263)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1331, column: 12)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1329, column: 9)
!1256 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !1257, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !13, !13, !13}
!1259 = !{!1260, !1261, !1262}
!1260 = !DILocalVariable(name: "aname", arg: 1, scope: !1256, file: !3, line: 1315, type: !13)
!1261 = !DILocalVariable(name: "name", arg: 2, scope: !1256, file: !3, line: 1315, type: !13)
!1262 = !DILocalVariable(name: "rname", arg: 3, scope: !1256, file: !3, line: 1315, type: !13)
!1263 = distinct !DILocation(line: 937, column: 21, scope: !1264, inlinedAt: !1054)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 936, column: 26)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 934, column: 21)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 930, column: 49)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 930, column: 13)
!1268 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 930, column: 13)
!1269 = !DILocation(line: 0, scope: !1270, inlinedAt: !1263)
!1270 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1338, column: 9)
!1271 = !DILocation(line: 0, scope: !1272, inlinedAt: !1263)
!1272 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1339, column: 9)
!1273 = !DILocation(line: 0, scope: !1274, inlinedAt: !1280)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1297, column: 9)
!1275 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !1257, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1276)
!1276 = !{!1277, !1278, !1279}
!1277 = !DILocalVariable(name: "aname", arg: 1, scope: !1275, file: !3, line: 1279, type: !13)
!1278 = !DILocalVariable(name: "name", arg: 2, scope: !1275, file: !3, line: 1279, type: !13)
!1279 = !DILocalVariable(name: "rname", arg: 3, scope: !1275, file: !3, line: 1279, type: !13)
!1280 = distinct !DILocation(line: 935, column: 21, scope: !1265, inlinedAt: !1054)
!1281 = !DILocation(line: 0, scope: !1282, inlinedAt: !1054)
!1282 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 991, column: 21)
!1283 = !DILocation(line: 0, scope: !1222, inlinedAt: !1231)
!1284 = !DILocation(line: 1081, column: 9, scope: !1222, inlinedAt: !1231)
!1285 = !DILocation(line: 1084, column: 9, scope: !1222, inlinedAt: !1231)
!1286 = !DILocation(line: 1085, column: 17, scope: !1287, inlinedAt: !1231)
!1287 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 1084, column: 22)
!1288 = !DILocation(line: 1085, column: 9, scope: !1287, inlinedAt: !1231)
!1289 = !DILocation(line: 1086, column: 9, scope: !1287, inlinedAt: !1231)
!1290 = !DILocation(line: 1087, column: 21, scope: !1235, inlinedAt: !1231)
!1291 = !DILocation(line: 1087, column: 35, scope: !1235, inlinedAt: !1231)
!1292 = !DILocation(line: 1087, column: 28, scope: !1235, inlinedAt: !1231)
!1293 = !DILocation(line: 1087, column: 16, scope: !1221, inlinedAt: !1231)
!1294 = !DILocation(line: 1089, column: 14, scope: !1235, inlinedAt: !1231)
!1295 = !DILocation(line: 1090, column: 24, scope: !1296, inlinedAt: !1231)
!1296 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1090, column: 13)
!1297 = !DILocation(line: 1090, column: 13, scope: !1296, inlinedAt: !1231)
!1298 = !DILocation(line: 1090, column: 38, scope: !1296, inlinedAt: !1231)
!1299 = !DILocation(line: 1090, column: 13, scope: !1237, inlinedAt: !1231)
!1300 = !DILocation(line: 1091, column: 17, scope: !1301, inlinedAt: !1231)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 1090, column: 44)
!1302 = !DILocation(line: 1092, column: 26, scope: !1303, inlinedAt: !1231)
!1303 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 1092, column: 17)
!1304 = !DILocation(line: 1093, column: 17, scope: !1303, inlinedAt: !1231)
!1305 = !DILocation(line: 1096, column: 14, scope: !1237, inlinedAt: !1231)
!1306 = !DILocation(line: 1096, column: 9, scope: !1237, inlinedAt: !1231)
!1307 = !DILocation(line: 1096, column: 34, scope: !1237, inlinedAt: !1231)
!1308 = !DILocation(line: 1097, column: 14, scope: !1309, inlinedAt: !1231)
!1309 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1097, column: 9)
!1310 = !DILocation(line: 0, scope: !1311, inlinedAt: !1231)
!1311 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1097, column: 9)
!1312 = !DILocation(line: 0, scope: !1309, inlinedAt: !1231)
!1313 = !DILocation(line: 1097, column: 41, scope: !1311, inlinedAt: !1231)
!1314 = !DILocation(line: 1097, column: 9, scope: !1309, inlinedAt: !1231)
!1315 = !DILocation(line: 1098, column: 23, scope: !1316, inlinedAt: !1231)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1098, column: 17)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 1097, column: 72)
!1318 = !DILocation(line: 1098, column: 18, scope: !1316, inlinedAt: !1231)
!1319 = !DILocation(line: 1098, column: 17, scope: !1317, inlinedAt: !1231)
!1320 = distinct !{!1320, !1314, !1321}
!1321 = !DILocation(line: 1100, column: 9, scope: !1309, inlinedAt: !1231)
!1322 = !DILocation(line: 1104, column: 20, scope: !1323, inlinedAt: !1231)
!1323 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1102, column: 12)
!1324 = !DILocation(line: 1105, column: 9, scope: !1323, inlinedAt: !1231)
!1325 = !DILocation(line: 921, column: 29, scope: !1251, inlinedAt: !1054)
!1326 = !{!788, !531, i64 32}
!1327 = !DILocation(line: 921, column: 23, scope: !1251, inlinedAt: !1054)
!1328 = !DILocation(line: 921, column: 9, scope: !1252, inlinedAt: !1054)
!1329 = !DILocation(line: 0, scope: !1250, inlinedAt: !1054)
!1330 = !DILocation(line: 0, scope: !1331, inlinedAt: !1054)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 958, column: 28)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 949, column: 25)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 941, column: 49)
!1334 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 941, column: 21)
!1335 = !DILocation(line: 922, column: 23, scope: !1250, inlinedAt: !1054)
!1336 = !DILocation(line: 922, column: 19, scope: !1250, inlinedAt: !1054)
!1337 = !DILocation(line: 923, column: 30, scope: !1250, inlinedAt: !1054)
!1338 = !DILocation(line: 923, column: 25, scope: !1250, inlinedAt: !1054)
!1339 = !DILocation(line: 923, column: 13, scope: !1250, inlinedAt: !1054)
!1340 = !DILocation(line: 0, scope: !1249, inlinedAt: !1054)
!1341 = !DILocation(line: 924, column: 17, scope: !1250, inlinedAt: !1054)
!1342 = !DILocalVariable(name: "rname", arg: 1, scope: !1343, file: !3, line: 1109, type: !13)
!1343 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !1242, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1344)
!1344 = !{!1342, !1345}
!1345 = !DILocalVariable(name: "res", arg: 2, scope: !1343, file: !3, line: 1109, type: !145)
!1346 = !DILocation(line: 0, scope: !1343, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 925, column: 17, scope: !1249, inlinedAt: !1054)
!1348 = !DILocation(line: 1112, column: 5, scope: !1343, inlinedAt: !1347)
!1349 = !DILocation(line: 1114, column: 10, scope: !1350, inlinedAt: !1347)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1114, column: 9)
!1351 = !DILocation(line: 1114, column: 9, scope: !1343, inlinedAt: !1347)
!1352 = !DILocation(line: 1115, column: 9, scope: !1350, inlinedAt: !1347)
!1353 = !DILocation(line: 1116, column: 9, scope: !1343, inlinedAt: !1347)
!1354 = !DILocation(line: 1117, column: 9, scope: !1355, inlinedAt: !1347)
!1355 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1116, column: 9)
!1356 = !DILocation(line: 1119, column: 9, scope: !1357, inlinedAt: !1347)
!1357 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1118, column: 9)
!1358 = !DILocation(line: 1121, column: 9, scope: !1359, inlinedAt: !1347)
!1359 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1120, column: 9)
!1360 = !DILocation(line: 1123, column: 9, scope: !1361, inlinedAt: !1347)
!1361 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1122, column: 9)
!1362 = !DILocation(line: 1125, column: 10, scope: !1363, inlinedAt: !1347)
!1363 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1125, column: 9)
!1364 = !DILocation(line: 1125, column: 9, scope: !1343, inlinedAt: !1347)
!1365 = !DILocation(line: 1126, column: 9, scope: !1363, inlinedAt: !1347)
!1366 = !DILocation(line: 1127, column: 10, scope: !1367, inlinedAt: !1347)
!1367 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1127, column: 9)
!1368 = !DILocation(line: 1127, column: 9, scope: !1343, inlinedAt: !1347)
!1369 = !DILocation(line: 1128, column: 9, scope: !1367, inlinedAt: !1347)
!1370 = !DILocation(line: 1129, column: 10, scope: !1371, inlinedAt: !1347)
!1371 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1129, column: 9)
!1372 = !DILocation(line: 1129, column: 9, scope: !1343, inlinedAt: !1347)
!1373 = !DILocation(line: 1130, column: 9, scope: !1371, inlinedAt: !1347)
!1374 = !DILocation(line: 1131, column: 10, scope: !1375, inlinedAt: !1347)
!1375 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1131, column: 9)
!1376 = !DILocation(line: 1131, column: 9, scope: !1343, inlinedAt: !1347)
!1377 = !DILocation(line: 1132, column: 9, scope: !1375, inlinedAt: !1347)
!1378 = !DILocation(line: 1134, column: 10, scope: !1379, inlinedAt: !1347)
!1379 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1134, column: 9)
!1380 = !DILocation(line: 1134, column: 9, scope: !1343, inlinedAt: !1347)
!1381 = !DILocation(line: 1135, column: 9, scope: !1379, inlinedAt: !1347)
!1382 = !DILocation(line: 1136, column: 10, scope: !1383, inlinedAt: !1347)
!1383 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1136, column: 9)
!1384 = !DILocation(line: 1136, column: 9, scope: !1343, inlinedAt: !1347)
!1385 = !DILocation(line: 1137, column: 9, scope: !1383, inlinedAt: !1347)
!1386 = !DILocation(line: 1138, column: 10, scope: !1387, inlinedAt: !1347)
!1387 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1138, column: 9)
!1388 = !DILocation(line: 1138, column: 9, scope: !1343, inlinedAt: !1347)
!1389 = !DILocation(line: 1139, column: 9, scope: !1387, inlinedAt: !1347)
!1390 = !DILocation(line: 1140, column: 10, scope: !1391, inlinedAt: !1347)
!1391 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1140, column: 9)
!1392 = !DILocation(line: 1140, column: 9, scope: !1343, inlinedAt: !1347)
!1393 = !DILocation(line: 1141, column: 9, scope: !1391, inlinedAt: !1347)
!1394 = !DILocation(line: 1143, column: 9, scope: !1343, inlinedAt: !1347)
!1395 = !DILocation(line: 1144, column: 9, scope: !1396, inlinedAt: !1347)
!1396 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1143, column: 9)
!1397 = !DILocation(line: 1146, column: 9, scope: !1398, inlinedAt: !1347)
!1398 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1145, column: 9)
!1399 = !DILocation(line: 1148, column: 9, scope: !1400, inlinedAt: !1347)
!1400 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1147, column: 9)
!1401 = !DILocation(line: 1150, column: 9, scope: !1402, inlinedAt: !1347)
!1402 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1149, column: 9)
!1403 = !DILocation(line: 1153, column: 9, scope: !1404, inlinedAt: !1347)
!1404 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1152, column: 9)
!1405 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !1347)
!1406 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1154, column: 9)
!1407 = !DILocation(line: 1157, column: 9, scope: !1408, inlinedAt: !1347)
!1408 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1156, column: 9)
!1409 = !DILocation(line: 1159, column: 9, scope: !1410, inlinedAt: !1347)
!1410 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1158, column: 9)
!1411 = !DILocation(line: 1162, column: 9, scope: !1412, inlinedAt: !1347)
!1412 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1161, column: 9)
!1413 = !DILocation(line: 1164, column: 9, scope: !1414, inlinedAt: !1347)
!1414 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1163, column: 9)
!1415 = !DILocation(line: 1166, column: 9, scope: !1416, inlinedAt: !1347)
!1416 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1165, column: 9)
!1417 = !DILocation(line: 1168, column: 9, scope: !1418, inlinedAt: !1347)
!1418 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1167, column: 9)
!1419 = !DILocation(line: 1171, column: 9, scope: !1420, inlinedAt: !1347)
!1420 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1170, column: 9)
!1421 = !DILocation(line: 1173, column: 9, scope: !1422, inlinedAt: !1347)
!1422 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1172, column: 9)
!1423 = !DILocation(line: 1175, column: 9, scope: !1424, inlinedAt: !1347)
!1424 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1174, column: 9)
!1425 = !DILocation(line: 1177, column: 9, scope: !1426, inlinedAt: !1347)
!1426 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1176, column: 9)
!1427 = !DILocation(line: 1179, column: 9, scope: !1343, inlinedAt: !1347)
!1428 = !DILocation(line: 1180, column: 9, scope: !1429, inlinedAt: !1347)
!1429 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1179, column: 9)
!1430 = !DILocation(line: 1184, column: 9, scope: !1431, inlinedAt: !1347)
!1431 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1183, column: 9)
!1432 = !DILocation(line: 1186, column: 9, scope: !1433, inlinedAt: !1347)
!1433 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1185, column: 9)
!1434 = !DILocation(line: 1188, column: 9, scope: !1435, inlinedAt: !1347)
!1435 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1187, column: 9)
!1436 = !DILocation(line: 1190, column: 9, scope: !1437, inlinedAt: !1347)
!1437 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1189, column: 9)
!1438 = !DILocation(line: 926, column: 22, scope: !1249, inlinedAt: !1054)
!1439 = !DILocation(line: 0, scope: !1241, inlinedAt: !1247)
!1440 = !DILocation(line: 1197, column: 5, scope: !1241, inlinedAt: !1247)
!1441 = !DILocation(line: 1199, column: 10, scope: !1240, inlinedAt: !1247)
!1442 = !DILocation(line: 1199, column: 9, scope: !1241, inlinedAt: !1247)
!1443 = !DILocation(line: 1200, column: 9, scope: !1240, inlinedAt: !1247)
!1444 = !DILocation(line: 1201, column: 9, scope: !1241, inlinedAt: !1247)
!1445 = !DILocation(line: 1202, column: 9, scope: !1446, inlinedAt: !1247)
!1446 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1201, column: 9)
!1447 = !DILocation(line: 1204, column: 9, scope: !1448, inlinedAt: !1247)
!1448 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1203, column: 9)
!1449 = !DILocation(line: 1206, column: 9, scope: !1450, inlinedAt: !1247)
!1450 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1205, column: 9)
!1451 = !DILocation(line: 1208, column: 9, scope: !1452, inlinedAt: !1247)
!1452 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1207, column: 9)
!1453 = !DILocation(line: 1210, column: 10, scope: !1454, inlinedAt: !1247)
!1454 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1210, column: 9)
!1455 = !DILocation(line: 1210, column: 9, scope: !1241, inlinedAt: !1247)
!1456 = !DILocation(line: 1211, column: 9, scope: !1454, inlinedAt: !1247)
!1457 = !DILocation(line: 1212, column: 10, scope: !1458, inlinedAt: !1247)
!1458 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1212, column: 9)
!1459 = !DILocation(line: 1212, column: 9, scope: !1241, inlinedAt: !1247)
!1460 = !DILocation(line: 1213, column: 9, scope: !1458, inlinedAt: !1247)
!1461 = !DILocation(line: 1214, column: 10, scope: !1462, inlinedAt: !1247)
!1462 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1214, column: 9)
!1463 = !DILocation(line: 1214, column: 9, scope: !1241, inlinedAt: !1247)
!1464 = !DILocation(line: 1215, column: 9, scope: !1462, inlinedAt: !1247)
!1465 = !DILocation(line: 1216, column: 10, scope: !1466, inlinedAt: !1247)
!1466 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1216, column: 9)
!1467 = !DILocation(line: 1216, column: 9, scope: !1241, inlinedAt: !1247)
!1468 = !DILocation(line: 1217, column: 9, scope: !1466, inlinedAt: !1247)
!1469 = !DILocation(line: 1219, column: 10, scope: !1470, inlinedAt: !1247)
!1470 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1219, column: 9)
!1471 = !DILocation(line: 1219, column: 9, scope: !1241, inlinedAt: !1247)
!1472 = !DILocation(line: 1220, column: 9, scope: !1470, inlinedAt: !1247)
!1473 = !DILocation(line: 1221, column: 10, scope: !1474, inlinedAt: !1247)
!1474 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1221, column: 9)
!1475 = !DILocation(line: 1221, column: 9, scope: !1241, inlinedAt: !1247)
!1476 = !DILocation(line: 1222, column: 9, scope: !1474, inlinedAt: !1247)
!1477 = !DILocation(line: 1223, column: 10, scope: !1478, inlinedAt: !1247)
!1478 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1223, column: 9)
!1479 = !DILocation(line: 1223, column: 9, scope: !1241, inlinedAt: !1247)
!1480 = !DILocation(line: 1224, column: 9, scope: !1478, inlinedAt: !1247)
!1481 = !DILocation(line: 1225, column: 10, scope: !1482, inlinedAt: !1247)
!1482 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1225, column: 9)
!1483 = !DILocation(line: 1225, column: 9, scope: !1241, inlinedAt: !1247)
!1484 = !DILocation(line: 1226, column: 9, scope: !1482, inlinedAt: !1247)
!1485 = !DILocation(line: 1228, column: 9, scope: !1241, inlinedAt: !1247)
!1486 = !DILocation(line: 1229, column: 9, scope: !1487, inlinedAt: !1247)
!1487 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1228, column: 9)
!1488 = !DILocation(line: 1231, column: 9, scope: !1489, inlinedAt: !1247)
!1489 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1230, column: 9)
!1490 = !DILocation(line: 1233, column: 9, scope: !1491, inlinedAt: !1247)
!1491 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1232, column: 9)
!1492 = !DILocation(line: 1235, column: 9, scope: !1493, inlinedAt: !1247)
!1493 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1234, column: 9)
!1494 = !DILocation(line: 1238, column: 9, scope: !1495, inlinedAt: !1247)
!1495 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1237, column: 9)
!1496 = !DILocation(line: 1240, column: 9, scope: !1497, inlinedAt: !1247)
!1497 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1239, column: 9)
!1498 = !DILocation(line: 1242, column: 9, scope: !1499, inlinedAt: !1247)
!1499 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1241, column: 9)
!1500 = !DILocation(line: 1244, column: 9, scope: !1501, inlinedAt: !1247)
!1501 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1243, column: 9)
!1502 = !DILocation(line: 1247, column: 9, scope: !1503, inlinedAt: !1247)
!1503 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1246, column: 9)
!1504 = !DILocation(line: 1249, column: 9, scope: !1505, inlinedAt: !1247)
!1505 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1248, column: 9)
!1506 = !DILocation(line: 1251, column: 9, scope: !1507, inlinedAt: !1247)
!1507 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1250, column: 9)
!1508 = !DILocation(line: 1253, column: 9, scope: !1509, inlinedAt: !1247)
!1509 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1252, column: 9)
!1510 = !DILocation(line: 1256, column: 9, scope: !1511, inlinedAt: !1247)
!1511 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1255, column: 9)
!1512 = !DILocation(line: 1258, column: 9, scope: !1513, inlinedAt: !1247)
!1513 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1257, column: 9)
!1514 = !DILocation(line: 1260, column: 9, scope: !1515, inlinedAt: !1247)
!1515 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1259, column: 9)
!1516 = !DILocation(line: 1262, column: 9, scope: !1517, inlinedAt: !1247)
!1517 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1261, column: 9)
!1518 = !DILocation(line: 1264, column: 9, scope: !1241, inlinedAt: !1247)
!1519 = !DILocation(line: 1265, column: 9, scope: !1520, inlinedAt: !1247)
!1520 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1264, column: 9)
!1521 = !DILocation(line: 1269, column: 9, scope: !1522, inlinedAt: !1247)
!1522 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1268, column: 9)
!1523 = !DILocation(line: 1271, column: 9, scope: !1524, inlinedAt: !1247)
!1524 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1270, column: 9)
!1525 = !DILocation(line: 1273, column: 9, scope: !1526, inlinedAt: !1247)
!1526 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1272, column: 9)
!1527 = !DILocation(line: 1275, column: 9, scope: !1528, inlinedAt: !1247)
!1528 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1274, column: 9)
!1529 = !DILocation(line: 929, column: 17, scope: !1248, inlinedAt: !1054)
!1530 = !DILocation(line: 930, column: 34, scope: !1267, inlinedAt: !1054)
!1531 = !DILocation(line: 930, column: 27, scope: !1267, inlinedAt: !1054)
!1532 = !DILocation(line: 930, column: 13, scope: !1268, inlinedAt: !1054)
!1533 = !DILocation(line: 0, scope: !1266, inlinedAt: !1054)
!1534 = !DILocation(line: 0, scope: !1333, inlinedAt: !1054)
!1535 = !DILocation(line: 931, column: 19, scope: !1266, inlinedAt: !1054)
!1536 = !DILocation(line: 932, column: 28, scope: !1266, inlinedAt: !1054)
!1537 = !{!668, !472, i64 120}
!1538 = !DILocation(line: 0, scope: !1265, inlinedAt: !1054)
!1539 = !DILocation(line: 934, column: 21, scope: !1266, inlinedAt: !1054)
!1540 = !DILocation(line: 0, scope: !1275, inlinedAt: !1280)
!1541 = !DILocation(line: 1285, column: 14, scope: !1275, inlinedAt: !1280)
!1542 = !DILocation(line: 1287, column: 9, scope: !1543, inlinedAt: !1280)
!1543 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1287, column: 9)
!1544 = !DILocation(line: 1287, column: 22, scope: !1543, inlinedAt: !1280)
!1545 = !DILocation(line: 1287, column: 27, scope: !1543, inlinedAt: !1280)
!1546 = !DILocation(line: 1287, column: 30, scope: !1543, inlinedAt: !1280)
!1547 = !DILocation(line: 1287, column: 38, scope: !1543, inlinedAt: !1280)
!1548 = !DILocation(line: 1287, column: 9, scope: !1275, inlinedAt: !1280)
!1549 = !DILocation(line: 1288, column: 18, scope: !1543, inlinedAt: !1280)
!1550 = !DILocation(line: 1288, column: 9, scope: !1543, inlinedAt: !1280)
!1551 = !DILocation(line: 1289, column: 16, scope: !1275, inlinedAt: !1280)
!1552 = !DILocation(line: 1289, column: 14, scope: !1275, inlinedAt: !1280)
!1553 = !DILocation(line: 1290, column: 16, scope: !1275, inlinedAt: !1280)
!1554 = !DILocation(line: 1290, column: 14, scope: !1275, inlinedAt: !1280)
!1555 = !DILocation(line: 1291, column: 16, scope: !1275, inlinedAt: !1280)
!1556 = !DILocation(line: 1292, column: 18, scope: !1557, inlinedAt: !1280)
!1557 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1292, column: 9)
!1558 = !DILocation(line: 1292, column: 9, scope: !1275, inlinedAt: !1280)
!1559 = !DILocation(line: 1294, column: 14, scope: !1275, inlinedAt: !1280)
!1560 = !DILocation(line: 1297, column: 10, scope: !1274, inlinedAt: !1280)
!1561 = !DILocation(line: 1298, column: 26, scope: !1274, inlinedAt: !1280)
!1562 = !DILocation(line: 1297, column: 34, scope: !1274, inlinedAt: !1280)
!1563 = !DILocation(line: 1299, column: 11, scope: !1274, inlinedAt: !1280)
!1564 = !DILocation(line: 1305, column: 14, scope: !1274, inlinedAt: !1280)
!1565 = !DILocation(line: 1299, column: 36, scope: !1274, inlinedAt: !1280)
!1566 = !DILocation(line: 1306, column: 18, scope: !1567, inlinedAt: !1280)
!1567 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1305, column: 41)
!1568 = !DILocation(line: 1307, column: 18, scope: !1567, inlinedAt: !1280)
!1569 = !DILocation(line: 1308, column: 5, scope: !1567, inlinedAt: !1280)
!1570 = !DILocation(line: 936, column: 26, scope: !1265, inlinedAt: !1054)
!1571 = !DILocation(line: 0, scope: !1256, inlinedAt: !1263)
!1572 = !DILocation(line: 1329, column: 9, scope: !1255, inlinedAt: !1263)
!1573 = !DILocation(line: 1329, column: 22, scope: !1255, inlinedAt: !1263)
!1574 = !DILocation(line: 1329, column: 27, scope: !1255, inlinedAt: !1263)
!1575 = !DILocation(line: 1329, column: 30, scope: !1255, inlinedAt: !1263)
!1576 = !DILocation(line: 1329, column: 38, scope: !1255, inlinedAt: !1263)
!1577 = !DILocation(line: 1329, column: 9, scope: !1256, inlinedAt: !1263)
!1578 = !DILocation(line: 1330, column: 9, scope: !1579, inlinedAt: !1263)
!1579 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1329, column: 45)
!1580 = !DILocation(line: 1331, column: 5, scope: !1579, inlinedAt: !1263)
!1581 = !DILocation(line: 1332, column: 18, scope: !1254, inlinedAt: !1263)
!1582 = !DILocation(line: 1333, column: 9, scope: !1254, inlinedAt: !1263)
!1583 = !DILocation(line: 1334, column: 18, scope: !1254, inlinedAt: !1263)
!1584 = !DILocation(line: 1337, column: 9, scope: !1585, inlinedAt: !1263)
!1585 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1337, column: 9)
!1586 = !DILocation(line: 1337, column: 18, scope: !1585, inlinedAt: !1263)
!1587 = !DILocation(line: 1337, column: 9, scope: !1256, inlinedAt: !1263)
!1588 = !DILocation(line: 1337, column: 37, scope: !1585, inlinedAt: !1263)
!1589 = !DILocation(line: 1337, column: 28, scope: !1585, inlinedAt: !1263)
!1590 = !DILocation(line: 1338, column: 9, scope: !1270, inlinedAt: !1263)
!1591 = !DILocation(line: 1338, column: 18, scope: !1270, inlinedAt: !1263)
!1592 = !DILocation(line: 1338, column: 9, scope: !1256, inlinedAt: !1263)
!1593 = !DILocation(line: 1338, column: 37, scope: !1270, inlinedAt: !1263)
!1594 = !DILocation(line: 1338, column: 28, scope: !1270, inlinedAt: !1263)
!1595 = !DILocation(line: 1339, column: 9, scope: !1272, inlinedAt: !1263)
!1596 = !DILocation(line: 1339, column: 18, scope: !1272, inlinedAt: !1263)
!1597 = !DILocation(line: 1339, column: 9, scope: !1256, inlinedAt: !1263)
!1598 = !DILocation(line: 1339, column: 37, scope: !1272, inlinedAt: !1263)
!1599 = !DILocation(line: 1339, column: 28, scope: !1272, inlinedAt: !1263)
!1600 = !DILocation(line: 1346, column: 10, scope: !1601, inlinedAt: !1263)
!1601 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1346, column: 9)
!1602 = !DILocation(line: 1346, column: 9, scope: !1256, inlinedAt: !1263)
!1603 = !DILocation(line: 1346, column: 37, scope: !1601, inlinedAt: !1263)
!1604 = !DILocation(line: 1347, column: 10, scope: !1605, inlinedAt: !1263)
!1605 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1347, column: 9)
!1606 = !DILocation(line: 1347, column: 9, scope: !1256, inlinedAt: !1263)
!1607 = !DILocation(line: 1347, column: 37, scope: !1605, inlinedAt: !1263)
!1608 = !DILocation(line: 1348, column: 10, scope: !1609, inlinedAt: !1263)
!1609 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1348, column: 9)
!1610 = !DILocation(line: 1348, column: 9, scope: !1256, inlinedAt: !1263)
!1611 = !DILocation(line: 1348, column: 37, scope: !1609, inlinedAt: !1263)
!1612 = !DILocation(line: 1349, column: 10, scope: !1613, inlinedAt: !1263)
!1613 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1349, column: 9)
!1614 = !DILocation(line: 1349, column: 9, scope: !1256, inlinedAt: !1263)
!1615 = !DILocation(line: 1349, column: 37, scope: !1613, inlinedAt: !1263)
!1616 = !DILocation(line: 1350, column: 10, scope: !1617, inlinedAt: !1263)
!1617 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1350, column: 9)
!1618 = !DILocation(line: 1350, column: 9, scope: !1256, inlinedAt: !1263)
!1619 = !DILocation(line: 1350, column: 37, scope: !1617, inlinedAt: !1263)
!1620 = !DILocation(line: 1351, column: 10, scope: !1621, inlinedAt: !1263)
!1621 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1351, column: 9)
!1622 = !DILocation(line: 1351, column: 9, scope: !1256, inlinedAt: !1263)
!1623 = !DILocation(line: 1351, column: 37, scope: !1621, inlinedAt: !1263)
!1624 = !DILocation(line: 1352, column: 10, scope: !1625, inlinedAt: !1263)
!1625 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1352, column: 9)
!1626 = !DILocation(line: 1352, column: 9, scope: !1256, inlinedAt: !1263)
!1627 = !DILocation(line: 1352, column: 37, scope: !1625, inlinedAt: !1263)
!1628 = !DILocation(line: 1353, column: 10, scope: !1629, inlinedAt: !1263)
!1629 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1353, column: 9)
!1630 = !DILocation(line: 1353, column: 9, scope: !1256, inlinedAt: !1263)
!1631 = !DILocation(line: 1353, column: 37, scope: !1629, inlinedAt: !1263)
!1632 = !DILocation(line: 1359, column: 10, scope: !1633, inlinedAt: !1263)
!1633 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1359, column: 9)
!1634 = !DILocation(line: 1359, column: 36, scope: !1633, inlinedAt: !1263)
!1635 = !DILocation(line: 1359, column: 40, scope: !1633, inlinedAt: !1263)
!1636 = !DILocation(line: 1359, column: 66, scope: !1633, inlinedAt: !1263)
!1637 = !DILocation(line: 1360, column: 10, scope: !1633, inlinedAt: !1263)
!1638 = !DILocation(line: 1360, column: 36, scope: !1633, inlinedAt: !1263)
!1639 = !DILocation(line: 1360, column: 40, scope: !1633, inlinedAt: !1263)
!1640 = !DILocation(line: 1360, column: 66, scope: !1633, inlinedAt: !1263)
!1641 = !DILocation(line: 1361, column: 10, scope: !1633, inlinedAt: !1263)
!1642 = !DILocation(line: 1361, column: 36, scope: !1633, inlinedAt: !1263)
!1643 = !DILocation(line: 1361, column: 40, scope: !1633, inlinedAt: !1263)
!1644 = !DILocation(line: 1361, column: 66, scope: !1633, inlinedAt: !1263)
!1645 = !DILocation(line: 1362, column: 10, scope: !1633, inlinedAt: !1263)
!1646 = !DILocation(line: 1362, column: 36, scope: !1633, inlinedAt: !1263)
!1647 = !DILocation(line: 1362, column: 40, scope: !1633, inlinedAt: !1263)
!1648 = !DILocation(line: 1362, column: 66, scope: !1633, inlinedAt: !1263)
!1649 = !DILocation(line: 1363, column: 10, scope: !1633, inlinedAt: !1263)
!1650 = !DILocation(line: 1363, column: 36, scope: !1633, inlinedAt: !1263)
!1651 = !DILocation(line: 1363, column: 40, scope: !1633, inlinedAt: !1263)
!1652 = !DILocation(line: 1363, column: 66, scope: !1633, inlinedAt: !1263)
!1653 = !DILocation(line: 1364, column: 10, scope: !1633, inlinedAt: !1263)
!1654 = !DILocation(line: 1364, column: 36, scope: !1633, inlinedAt: !1263)
!1655 = !DILocation(line: 1364, column: 40, scope: !1633, inlinedAt: !1263)
!1656 = !DILocation(line: 1364, column: 66, scope: !1633, inlinedAt: !1263)
!1657 = !DILocation(line: 1365, column: 10, scope: !1633, inlinedAt: !1263)
!1658 = !DILocation(line: 1365, column: 36, scope: !1633, inlinedAt: !1263)
!1659 = !DILocation(line: 1365, column: 40, scope: !1633, inlinedAt: !1263)
!1660 = !DILocation(line: 1365, column: 66, scope: !1633, inlinedAt: !1263)
!1661 = !DILocation(line: 1366, column: 10, scope: !1633, inlinedAt: !1263)
!1662 = !DILocation(line: 1366, column: 36, scope: !1633, inlinedAt: !1263)
!1663 = !DILocation(line: 1366, column: 40, scope: !1633, inlinedAt: !1263)
!1664 = !DILocation(line: 1359, column: 9, scope: !1256, inlinedAt: !1263)
!1665 = !DILocation(line: 1367, column: 18, scope: !1666, inlinedAt: !1263)
!1666 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 1366, column: 67)
!1667 = !DILocation(line: 1368, column: 18, scope: !1666, inlinedAt: !1263)
!1668 = !DILocation(line: 1369, column: 18, scope: !1666, inlinedAt: !1263)
!1669 = !DILocation(line: 1370, column: 18, scope: !1666, inlinedAt: !1263)
!1670 = !DILocation(line: 1371, column: 5, scope: !1666, inlinedAt: !1263)
!1671 = !DILocation(line: 939, column: 21, scope: !1264, inlinedAt: !1054)
!1672 = !DILocation(line: 941, column: 22, scope: !1334, inlinedAt: !1054)
!1673 = !DILocation(line: 941, column: 38, scope: !1334, inlinedAt: !1054)
!1674 = !DILocation(line: 0, scope: !1334, inlinedAt: !1054)
!1675 = !DILocation(line: 949, column: 25, scope: !1333, inlinedAt: !1054)
!1676 = !DILocation(line: 957, column: 33, scope: !1677, inlinedAt: !1054)
!1677 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 949, column: 38)
!1678 = !DILocation(line: 957, column: 47, scope: !1677, inlinedAt: !1054)
!1679 = !DILocation(line: 957, column: 61, scope: !1677, inlinedAt: !1054)
!1680 = !DILocation(line: 950, column: 25, scope: !1677, inlinedAt: !1054)
!1681 = !DILocation(line: 958, column: 21, scope: !1677, inlinedAt: !1054)
!1682 = !DILocation(line: 961, column: 36, scope: !1331, inlinedAt: !1054)
!1683 = !DILocation(line: 966, column: 33, scope: !1331, inlinedAt: !1054)
!1684 = !DILocation(line: 966, column: 47, scope: !1331, inlinedAt: !1054)
!1685 = !DILocation(line: 966, column: 61, scope: !1331, inlinedAt: !1054)
!1686 = !DILocation(line: 959, column: 25, scope: !1331, inlinedAt: !1054)
!1687 = !DILocation(line: 970, column: 25, scope: !1688, inlinedAt: !1054)
!1688 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 968, column: 24)
!1689 = !DILocation(line: 974, column: 33, scope: !1690, inlinedAt: !1054)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 970, column: 38)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 970, column: 25)
!1692 = !DILocation(line: 974, column: 47, scope: !1690, inlinedAt: !1054)
!1693 = !DILocation(line: 974, column: 61, scope: !1690, inlinedAt: !1054)
!1694 = !DILocation(line: 971, column: 25, scope: !1690, inlinedAt: !1054)
!1695 = !DILocation(line: 975, column: 21, scope: !1690, inlinedAt: !1054)
!1696 = !DILocation(line: 978, column: 36, scope: !1697, inlinedAt: !1054)
!1697 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 975, column: 28)
!1698 = !DILocation(line: 979, column: 33, scope: !1697, inlinedAt: !1054)
!1699 = !DILocation(line: 979, column: 47, scope: !1697, inlinedAt: !1054)
!1700 = !DILocation(line: 979, column: 61, scope: !1697, inlinedAt: !1054)
!1701 = !DILocation(line: 976, column: 25, scope: !1697, inlinedAt: !1054)
!1702 = !DILocation(line: 982, column: 21, scope: !1266, inlinedAt: !1054)
!1703 = !DILocation(line: 985, column: 33, scope: !1704, inlinedAt: !1054)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 982, column: 30)
!1705 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 982, column: 21)
!1706 = !DILocation(line: 985, column: 47, scope: !1704, inlinedAt: !1054)
!1707 = !DILocation(line: 984, column: 21, scope: !1704, inlinedAt: !1054)
!1708 = !DILocation(line: 986, column: 17, scope: !1704, inlinedAt: !1054)
!1709 = !DILocation(line: 986, column: 28, scope: !1705, inlinedAt: !1054)
!1710 = !DILocation(line: 988, column: 33, scope: !1711, inlinedAt: !1054)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 986, column: 41)
!1712 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 986, column: 28)
!1713 = !DILocation(line: 988, column: 44, scope: !1711, inlinedAt: !1054)
!1714 = !DILocation(line: 987, column: 21, scope: !1711, inlinedAt: !1054)
!1715 = !DILocation(line: 991, column: 32, scope: !1282, inlinedAt: !1054)
!1716 = !DILocation(line: 992, column: 47, scope: !1717, inlinedAt: !1054)
!1717 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 991, column: 74)
!1718 = !DILocation(line: 992, column: 21, scope: !1717, inlinedAt: !1054)
!1719 = !DILocation(line: 993, column: 17, scope: !1717, inlinedAt: !1054)
!1720 = !DILocation(line: 995, column: 17, scope: !1266, inlinedAt: !1054)
!1721 = !DILocation(line: 930, column: 45, scope: !1267, inlinedAt: !1054)
!1722 = distinct !{!1722, !1532, !1723}
!1723 = !DILocation(line: 997, column: 13, scope: !1268, inlinedAt: !1054)
!1724 = !DILocation(line: 921, column: 43, scope: !1251, inlinedAt: !1054)
!1725 = !DILocation(line: 921, column: 49, scope: !1251, inlinedAt: !1054)
!1726 = distinct !{!1726, !1328, !1727}
!1727 = !DILocation(line: 999, column: 9, scope: !1252, inlinedAt: !1054)
!1728 = !DILocation(line: 911, column: 13, scope: !1217, inlinedAt: !1054)
!1729 = !DILocation(line: 1001, column: 9, scope: !1232, inlinedAt: !1054)
!1730 = !DILocation(line: 911, column: 60, scope: !1233, inlinedAt: !1054)
!1731 = distinct !{!1731, !1219, !1732}
!1732 = !DILocation(line: 1007, column: 5, scope: !1217, inlinedAt: !1054)
!1733 = !DILocation(line: 0, scope: !1148, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 1008, column: 5, scope: !1022, inlinedAt: !1054)
!1735 = !DILocation(line: 1014, column: 13, scope: !1214, inlinedAt: !1734)
!1736 = !DILocation(line: 1014, column: 9, scope: !1148, inlinedAt: !1734)
!1737 = !DILocation(line: 1015, column: 18, scope: !1738, inlinedAt: !1734)
!1738 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1015, column: 13)
!1739 = !DILocation(line: 1015, column: 25, scope: !1738, inlinedAt: !1734)
!1740 = !DILocation(line: 1015, column: 13, scope: !1213, inlinedAt: !1734)
!1741 = !DILocation(line: 1016, column: 13, scope: !1738, inlinedAt: !1734)
!1742 = !DILocation(line: 1017, column: 14, scope: !1213, inlinedAt: !1734)
!1743 = !DILocation(line: 1017, column: 9, scope: !1213, inlinedAt: !1734)
!1744 = !DILocation(line: 1018, column: 5, scope: !1213, inlinedAt: !1734)
!1745 = !DILocation(line: 1009, column: 1, scope: !1022, inlinedAt: !1054)
!1746 = !DILocation(line: 247, column: 23, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 247, column: 17)
!1748 = !DILocation(line: 247, column: 20, scope: !1747)
!1749 = !DILocation(line: 247, column: 17, scope: !1055)
!1750 = !DILocation(line: 248, column: 17, scope: !1747)
!1751 = !DILocation(line: 251, column: 5, scope: !1012)
!1752 = !DILocation(line: 253, column: 5, scope: !1012)
!1753 = !DILocation(line: 254, column: 1, scope: !1012)
!1754 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1755, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!38, !13, !13, !393}
!1757 = !{!1758, !1759, !1760, !1761}
!1758 = !DILocalVariable(name: "fname", arg: 1, scope: !1754, file: !3, line: 256, type: !13)
!1759 = !DILocalVariable(name: "blockId", arg: 2, scope: !1754, file: !3, line: 256, type: !13)
!1760 = !DILocalVariable(name: "mol", arg: 3, scope: !1754, file: !3, line: 256, type: !393)
!1761 = !DILocalVariable(name: "fp", scope: !1754, file: !3, line: 258, type: !372)
!1762 = !DILocation(line: 0, scope: !1754)
!1763 = !DILocation(line: 260, column: 10, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 260, column: 9)
!1765 = !DILocation(line: 260, column: 9, scope: !1754)
!1766 = !DILocation(line: 261, column: 17, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 260, column: 15)
!1768 = !DILocation(line: 261, column: 9, scope: !1767)
!1769 = !DILocation(line: 262, column: 9, scope: !1767)
!1770 = !DILocation(line: 264, column: 10, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 264, column: 9)
!1772 = !DILocation(line: 264, column: 9, scope: !1754)
!1773 = !DILocation(line: 266, column: 20, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 266, column: 14)
!1775 = !DILocation(line: 266, column: 39, scope: !1774)
!1776 = !DILocation(line: 266, column: 14, scope: !1771)
!1777 = !DILocation(line: 267, column: 9, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 266, column: 48)
!1779 = !DILocation(line: 268, column: 9, scope: !1778)
!1780 = !DILocation(line: 265, column: 14, scope: !1771)
!1781 = !DILocalVariable(name: "fp", arg: 1, scope: !1782, file: !3, line: 1381, type: !372)
!1782 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1783, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1785)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !372, !13, !393}
!1785 = !{!1781, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1786 = !DILocalVariable(name: "blockId", arg: 2, scope: !1782, file: !3, line: 1381, type: !13)
!1787 = !DILocalVariable(name: "mol", arg: 3, scope: !1782, file: !3, line: 1381, type: !393)
!1788 = !DILocalVariable(name: "r", scope: !1782, file: !3, line: 1383, type: !38)
!1789 = !DILocalVariable(name: "tr", scope: !1782, file: !3, line: 1383, type: !38)
!1790 = !DILocalVariable(name: "a", scope: !1782, file: !3, line: 1383, type: !38)
!1791 = !DILocalVariable(name: "ta", scope: !1782, file: !3, line: 1383, type: !38)
!1792 = !DILocalVariable(name: "strandnum", scope: !1782, file: !3, line: 1383, type: !38)
!1793 = !DILocalVariable(name: "cid", scope: !1782, file: !3, line: 1384, type: !14)
!1794 = !DILocalVariable(name: "sp", scope: !1782, file: !3, line: 1385, type: !129)
!1795 = !DILocalVariable(name: "res", scope: !1782, file: !3, line: 1386, type: !145)
!1796 = !DILocalVariable(name: "ap", scope: !1782, file: !3, line: 1387, type: !191)
!1797 = !DILocation(line: 0, scope: !1782, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 270, column: 5, scope: !1754)
!1799 = !DILocation(line: 1390, column: 5, scope: !1800, inlinedAt: !1798)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 1390, column: 5)
!1801 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 1390, column: 5)
!1802 = !DILocation(line: 1390, column: 5, scope: !1801, inlinedAt: !1798)
!1803 = !DILocation(line: 1392, column: 17, scope: !1782, inlinedAt: !1798)
!1804 = !{!922, !531, i64 96}
!1805 = !DILocation(line: 1396, column: 5, scope: !1782, inlinedAt: !1798)
!1806 = !DILocation(line: 1397, column: 5, scope: !1782, inlinedAt: !1798)
!1807 = !DILocation(line: 1398, column: 5, scope: !1782, inlinedAt: !1798)
!1808 = !DILocation(line: 1399, column: 5, scope: !1782, inlinedAt: !1798)
!1809 = !DILocation(line: 1400, column: 5, scope: !1782, inlinedAt: !1798)
!1810 = !DILocation(line: 1401, column: 5, scope: !1782, inlinedAt: !1798)
!1811 = !DILocation(line: 1402, column: 5, scope: !1782, inlinedAt: !1798)
!1812 = !DILocation(line: 1403, column: 5, scope: !1782, inlinedAt: !1798)
!1813 = !DILocation(line: 1404, column: 5, scope: !1782, inlinedAt: !1798)
!1814 = !DILocation(line: 1407, column: 36, scope: !1815, inlinedAt: !1798)
!1815 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 1407, column: 5)
!1816 = !DILocation(line: 0, scope: !1815, inlinedAt: !1798)
!1817 = !DILocation(line: 1407, column: 5, scope: !1815, inlinedAt: !1798)
!1818 = !DILocation(line: 1392, column: 28, scope: !1782, inlinedAt: !1798)
!1819 = !DILocation(line: 1392, column: 11, scope: !1782, inlinedAt: !1798)
!1820 = !DILocation(line: 1408, column: 18, scope: !1821, inlinedAt: !1798)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 1407, column: 68)
!1822 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 1407, column: 5)
!1823 = !DILocation(line: 1409, column: 29, scope: !1824, inlinedAt: !1798)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 1409, column: 9)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 1409, column: 9)
!1826 = !DILocation(line: 1409, column: 23, scope: !1824, inlinedAt: !1798)
!1827 = !DILocation(line: 1409, column: 9, scope: !1825, inlinedAt: !1798)
!1828 = !DILocation(line: 0, scope: !1829, inlinedAt: !1798)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 1409, column: 53)
!1830 = !DILocation(line: 0, scope: !1831, inlinedAt: !1798)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1411, column: 49)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 1411, column: 13)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 1411, column: 13)
!1834 = !DILocation(line: 1410, column: 23, scope: !1829, inlinedAt: !1798)
!1835 = !DILocation(line: 1410, column: 19, scope: !1829, inlinedAt: !1798)
!1836 = !DILocation(line: 1411, column: 34, scope: !1832, inlinedAt: !1798)
!1837 = !DILocation(line: 1411, column: 27, scope: !1832, inlinedAt: !1798)
!1838 = !DILocation(line: 1411, column: 13, scope: !1833, inlinedAt: !1798)
!1839 = !DILocation(line: 1409, column: 43, scope: !1824, inlinedAt: !1798)
!1840 = !DILocation(line: 1409, column: 49, scope: !1824, inlinedAt: !1798)
!1841 = !DILocation(line: 1412, column: 19, scope: !1831, inlinedAt: !1798)
!1842 = !DILocation(line: 1413, column: 28, scope: !1831, inlinedAt: !1798)
!1843 = !DILocation(line: 1423, column: 33, scope: !1831, inlinedAt: !1798)
!1844 = !DILocation(line: 1423, column: 50, scope: !1831, inlinedAt: !1798)
!1845 = !DILocation(line: 1424, column: 25, scope: !1831, inlinedAt: !1798)
!1846 = !DILocation(line: 1424, column: 39, scope: !1831, inlinedAt: !1798)
!1847 = !DILocation(line: 1424, column: 53, scope: !1831, inlinedAt: !1798)
!1848 = !DILocation(line: 1421, column: 17, scope: !1831, inlinedAt: !1798)
!1849 = !DILocation(line: 1411, column: 45, scope: !1832, inlinedAt: !1798)
!1850 = distinct !{!1850, !1838, !1851}
!1851 = !DILocation(line: 1426, column: 13, scope: !1833, inlinedAt: !1798)
!1852 = distinct !{!1852, !1827, !1853}
!1853 = !DILocation(line: 1427, column: 9, scope: !1825, inlinedAt: !1798)
!1854 = !DILocation(line: 1407, column: 13, scope: !1815, inlinedAt: !1798)
!1855 = !DILocation(line: 1428, column: 18, scope: !1856, inlinedAt: !1798)
!1856 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 1428, column: 13)
!1857 = !DILocation(line: 1428, column: 29, scope: !1856, inlinedAt: !1798)
!1858 = !DILocation(line: 1428, column: 13, scope: !1821, inlinedAt: !1798)
!1859 = !DILocation(line: 1407, column: 60, scope: !1822, inlinedAt: !1798)
!1860 = distinct !{!1860, !1817, !1861}
!1861 = !DILocation(line: 1430, column: 5, scope: !1815, inlinedAt: !1798)
!1862 = !DILocation(line: 271, column: 15, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 271, column: 9)
!1864 = !DILocation(line: 271, column: 12, scope: !1863)
!1865 = !DILocation(line: 271, column: 9, scope: !1754)
!1866 = !DILocation(line: 272, column: 9, scope: !1863)
!1867 = !DILocation(line: 274, column: 1, scope: !1754)
!1868 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1869, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1871)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!38, !13, !393}
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888}
!1872 = !DILocalVariable(name: "fname", arg: 1, scope: !1868, file: !3, line: 276, type: !13)
!1873 = !DILocalVariable(name: "mol", arg: 2, scope: !1868, file: !3, line: 276, type: !393)
!1874 = !DILocalVariable(name: "fp", scope: !1868, file: !3, line: 278, type: !372)
!1875 = !DILocalVariable(name: "sp", scope: !1868, file: !3, line: 279, type: !129)
!1876 = !DILocalVariable(name: "res", scope: !1868, file: !3, line: 280, type: !145)
!1877 = !DILocalVariable(name: "a", scope: !1868, file: !3, line: 281, type: !38)
!1878 = !DILocalVariable(name: "ta", scope: !1868, file: !3, line: 281, type: !38)
!1879 = !DILocalVariable(name: "ai", scope: !1868, file: !3, line: 281, type: !38)
!1880 = !DILocalVariable(name: "aj", scope: !1868, file: !3, line: 281, type: !38)
!1881 = !DILocalVariable(name: "r", scope: !1868, file: !3, line: 281, type: !38)
!1882 = !DILocalVariable(name: "rj", scope: !1868, file: !3, line: 281, type: !38)
!1883 = !DILocalVariable(name: "tr", scope: !1868, file: !3, line: 281, type: !38)
!1884 = !DILocalVariable(name: "rval", scope: !1868, file: !3, line: 282, type: !38)
!1885 = !DILocalVariable(name: "aoff", scope: !1868, file: !3, line: 283, type: !110)
!1886 = !DILocalVariable(name: "b", scope: !1868, file: !3, line: 284, type: !38)
!1887 = !DILocalVariable(name: "ebp", scope: !1868, file: !3, line: 285, type: !161)
!1888 = !DILabel(scope: !1868, name: "clean_up", file: !3, line: 338)
!1889 = !DILocation(line: 0, scope: !1868)
!1890 = !DILocation(line: 287, column: 10, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 287, column: 9)
!1892 = !DILocation(line: 287, column: 9, scope: !1868)
!1893 = !DILocation(line: 288, column: 17, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 287, column: 15)
!1895 = !DILocation(line: 288, column: 9, scope: !1894)
!1896 = !DILocation(line: 289, column: 9, scope: !1894)
!1897 = !DILocation(line: 291, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 291, column: 9)
!1899 = !DILocation(line: 291, column: 34, scope: !1898)
!1900 = !DILocation(line: 291, column: 9, scope: !1868)
!1901 = !DILocation(line: 292, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 291, column: 43)
!1903 = !DILocation(line: 293, column: 9, scope: !1902)
!1904 = !DILocation(line: 296, column: 28, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 296, column: 5)
!1906 = !DILocation(line: 0, scope: !1905)
!1907 = !DILocation(line: 296, column: 5, scope: !1905)
!1908 = !DILocation(line: 297, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 296, column: 5)
!1910 = !DILocation(line: 297, column: 12, scope: !1909)
!1911 = !DILocation(line: 296, column: 52, scope: !1909)
!1912 = distinct !{!1912, !1907, !1913}
!1913 = !DILocation(line: 297, column: 19, scope: !1905)
!1914 = !DILocation(line: 299, column: 32, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 299, column: 9)
!1916 = !DILocation(line: 299, column: 25, scope: !1915)
!1917 = !DILocation(line: 299, column: 17, scope: !1915)
!1918 = !DILocation(line: 299, column: 51, scope: !1915)
!1919 = !DILocation(line: 299, column: 9, scope: !1868)
!1920 = !DILocation(line: 305, column: 5, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 305, column: 5)
!1922 = !DILocation(line: 300, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 299, column: 60)
!1924 = !DILocation(line: 338, column: 3, scope: !1868)
!1925 = !DILocation(line: 339, column: 9, scope: !1868)
!1926 = !DILocation(line: 317, column: 5, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 317, column: 5)
!1928 = !DILocation(line: 306, column: 9, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 305, column: 68)
!1930 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 305, column: 5)
!1931 = !DILocation(line: 306, column: 18, scope: !1929)
!1932 = !DILocation(line: 307, column: 17, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 307, column: 13)
!1934 = !DILocation(line: 307, column: 29, scope: !1933)
!1935 = !DILocation(line: 307, column: 13, scope: !1929)
!1936 = !DILocation(line: 308, column: 23, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 307, column: 34)
!1938 = !DILocation(line: 308, column: 19, scope: !1937)
!1939 = !DILocation(line: 308, column: 38, scope: !1937)
!1940 = !DILocation(line: 308, column: 16, scope: !1937)
!1941 = !DILocation(line: 309, column: 27, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 309, column: 13)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 309, column: 13)
!1944 = !DILocation(line: 309, column: 13, scope: !1943)
!1945 = !DILocation(line: 310, column: 25, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 309, column: 51)
!1947 = !DILocation(line: 310, column: 17, scope: !1946)
!1948 = !DILocation(line: 310, column: 30, scope: !1946)
!1949 = !DILocation(line: 311, column: 23, scope: !1946)
!1950 = !DILocation(line: 311, column: 42, scope: !1946)
!1951 = !DILocation(line: 311, column: 20, scope: !1946)
!1952 = !DILocation(line: 309, column: 47, scope: !1942)
!1953 = distinct !{!1953, !1944, !1954}
!1954 = !DILocation(line: 312, column: 13, scope: !1943)
!1955 = !DILocation(line: 0, scope: !1937)
!1956 = !DILocation(line: 313, column: 16, scope: !1937)
!1957 = !DILocation(line: 314, column: 9, scope: !1937)
!1958 = !DILocation(line: 0, scope: !1921)
!1959 = !DILocation(line: 305, column: 60, scope: !1930)
!1960 = distinct !{!1960, !1920, !1961}
!1961 = !DILocation(line: 315, column: 5, scope: !1921)
!1962 = !DILocation(line: 318, column: 29, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 318, column: 9)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 318, column: 9)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 317, column: 60)
!1966 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 317, column: 5)
!1967 = !DILocation(line: 318, column: 23, scope: !1963)
!1968 = !DILocation(line: 318, column: 9, scope: !1964)
!1969 = !DILocation(line: 0, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 318, column: 47)
!1971 = !DILocation(line: 0, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 326, column: 66)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 326, column: 13)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 326, column: 13)
!1975 = !DILocation(line: 319, column: 23, scope: !1970)
!1976 = !DILocation(line: 319, column: 19, scope: !1970)
!1977 = !DILocation(line: 320, column: 24, scope: !1970)
!1978 = !DILocation(line: 320, column: 17, scope: !1970)
!1979 = !DILocation(line: 321, column: 34, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 321, column: 13)
!1981 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 321, column: 13)
!1982 = !{!668, !531, i64 72}
!1983 = !DILocation(line: 321, column: 27, scope: !1980)
!1984 = !DILocation(line: 321, column: 13, scope: !1981)
!1985 = !DILocation(line: 0, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 321, column: 52)
!1987 = !DILocation(line: 323, column: 30, scope: !1986)
!1988 = !{!668, !472, i64 80}
!1989 = !DILocation(line: 323, column: 25, scope: !1986)
!1990 = !DILocation(line: 323, column: 47, scope: !1986)
!1991 = !DILocation(line: 324, column: 25, scope: !1986)
!1992 = !DILocation(line: 324, column: 47, scope: !1986)
!1993 = !DILocation(line: 322, column: 17, scope: !1986)
!1994 = !DILocation(line: 321, column: 48, scope: !1980)
!1995 = distinct !{!1995, !1984, !1996}
!1996 = !DILocation(line: 325, column: 13, scope: !1981)
!1997 = !DILocation(line: 326, column: 29, scope: !1974)
!1998 = !DILocation(line: 0, scope: !1974)
!1999 = !DILocation(line: 326, column: 13, scope: !1974)
!2000 = !DILocation(line: 327, column: 32, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 327, column: 21)
!2002 = !{!2003, !531, i64 12}
!2003 = !{!"extbond_t", !472, i64 0, !531, i64 8, !531, i64 12, !531, i64 16}
!2004 = !DILocation(line: 327, column: 41, scope: !2001)
!2005 = !DILocation(line: 327, column: 21, scope: !1972)
!2006 = !DILocation(line: 330, column: 35, scope: !1972)
!2007 = !DILocation(line: 330, column: 22, scope: !1972)
!2008 = !DILocation(line: 332, column: 30, scope: !1972)
!2009 = !{!2003, !531, i64 8}
!2010 = !DILocation(line: 332, column: 38, scope: !1972)
!2011 = !DILocation(line: 332, column: 49, scope: !1972)
!2012 = !{!2003, !531, i64 16}
!2013 = !DILocation(line: 332, column: 58, scope: !1972)
!2014 = !DILocation(line: 331, column: 17, scope: !1972)
!2015 = !DILocation(line: 333, column: 13, scope: !1972)
!2016 = !DILocation(line: 326, column: 57, scope: !1973)
!2017 = distinct !{!2017, !1999, !2018}
!2018 = !DILocation(line: 333, column: 13, scope: !1974)
!2019 = !DILocation(line: 318, column: 43, scope: !1963)
!2020 = distinct !{!2020, !1968, !2021}
!2021 = !DILocation(line: 334, column: 9, scope: !1964)
!2022 = !DILocation(line: 335, column: 12, scope: !1965)
!2023 = !DILocation(line: 317, column: 52, scope: !1966)
!2024 = !DILocation(line: 0, scope: !1927)
!2025 = distinct !{!2025, !1926, !2026}
!2026 = !DILocation(line: 336, column: 5, scope: !1927)
!2027 = !DILocation(line: 340, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 339, column: 9)
!2029 = !DILocation(line: 342, column: 5, scope: !1868)
!2030 = !DILocation(line: 344, column: 5, scope: !1868)
!2031 = !DILocation(line: 345, column: 1, scope: !1868)
!2032 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !2033, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2035)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!38, !13, !393, !13, !13}
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!2036 = !DILocalVariable(name: "fname", arg: 1, scope: !2032, file: !3, line: 347, type: !13)
!2037 = !DILocalVariable(name: "mol", arg: 2, scope: !2032, file: !3, line: 347, type: !393)
!2038 = !DILocalVariable(name: "aexp1", arg: 3, scope: !2032, file: !3, line: 347, type: !13)
!2039 = !DILocalVariable(name: "aexp2", arg: 4, scope: !2032, file: !3, line: 347, type: !13)
!2040 = !DILocalVariable(name: "fp", scope: !2032, file: !3, line: 349, type: !372)
!2041 = !DILocalVariable(name: "sp1", scope: !2032, file: !3, line: 350, type: !129)
!2042 = !DILocalVariable(name: "res1", scope: !2032, file: !3, line: 351, type: !145)
!2043 = !DILocalVariable(name: "res2", scope: !2032, file: !3, line: 351, type: !145)
!2044 = !DILocalVariable(name: "ap1", scope: !2032, file: !3, line: 352, type: !191)
!2045 = !DILocalVariable(name: "ap2", scope: !2032, file: !3, line: 352, type: !191)
!2046 = !DILocalVariable(name: "tr", scope: !2032, file: !3, line: 353, type: !38)
!2047 = !DILocalVariable(name: "r1", scope: !2032, file: !3, line: 353, type: !38)
!2048 = !DILocalVariable(name: "r2", scope: !2032, file: !3, line: 353, type: !38)
!2049 = !DILocalVariable(name: "a1", scope: !2032, file: !3, line: 353, type: !38)
!2050 = !DILocalVariable(name: "a2", scope: !2032, file: !3, line: 353, type: !38)
!2051 = !DILocalVariable(name: "res", scope: !2032, file: !3, line: 354, type: !144)
!2052 = !DILocalVariable(name: "cnt", scope: !2032, file: !3, line: 355, type: !38)
!2053 = !DILabel(scope: !2032, name: "clean_up", file: !3, line: 420)
!2054 = !DILocation(line: 0, scope: !2032)
!2055 = !DILocation(line: 357, column: 10, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 357, column: 9)
!2057 = !DILocation(line: 357, column: 9, scope: !2032)
!2058 = !DILocation(line: 358, column: 17, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 357, column: 15)
!2060 = !DILocation(line: 358, column: 9, scope: !2059)
!2061 = !DILocation(line: 359, column: 9, scope: !2059)
!2062 = !DILocation(line: 362, column: 5, scope: !2032)
!2063 = !DILocation(line: 363, column: 21, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 363, column: 5)
!2065 = !DILocation(line: 0, scope: !2064)
!2066 = !DILocation(line: 363, column: 5, scope: !2064)
!2067 = !DILocation(line: 364, column: 14, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 363, column: 56)
!2069 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 363, column: 5)
!2070 = !DILocation(line: 364, column: 21, scope: !2068)
!2071 = !{!788, !531, i64 12}
!2072 = !DILocation(line: 365, column: 24, scope: !2068)
!2073 = !DILocation(line: 365, column: 21, scope: !2068)
!2074 = !DILocation(line: 366, column: 32, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 366, column: 9)
!2076 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 366, column: 9)
!2077 = !DILocation(line: 366, column: 25, scope: !2075)
!2078 = !DILocation(line: 366, column: 9, scope: !2076)
!2079 = !DILocation(line: 0, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 366, column: 51)
!2081 = !DILocation(line: 367, column: 20, scope: !2080)
!2082 = !DILocation(line: 368, column: 19, scope: !2080)
!2083 = !DILocation(line: 368, column: 26, scope: !2080)
!2084 = !{!668, !531, i64 40}
!2085 = !DILocation(line: 369, column: 29, scope: !2080)
!2086 = !DILocation(line: 369, column: 26, scope: !2080)
!2087 = !DILocation(line: 370, column: 58, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 370, column: 13)
!2089 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 370, column: 13)
!2090 = !DILocation(line: 370, column: 50, scope: !2088)
!2091 = !DILocation(line: 370, column: 13, scope: !2089)
!2092 = !DILocation(line: 370, column: 38, scope: !2089)
!2093 = !DILocation(line: 372, column: 22, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 371, column: 31)
!2095 = !DILocation(line: 372, column: 29, scope: !2094)
!2096 = !DILocation(line: 373, column: 32, scope: !2094)
!2097 = !DILocation(line: 373, column: 29, scope: !2094)
!2098 = !DILocation(line: 371, column: 20, scope: !2088)
!2099 = !DILocation(line: 371, column: 27, scope: !2088)
!2100 = distinct !{!2100, !2091, !2101}
!2101 = !DILocation(line: 374, column: 13, scope: !2089)
!2102 = !DILocation(line: 366, column: 47, scope: !2075)
!2103 = distinct !{!2103, !2078, !2104}
!2104 = !DILocation(line: 375, column: 9, scope: !2076)
!2105 = !DILocation(line: 363, column: 48, scope: !2069)
!2106 = distinct !{!2106, !2066, !2107}
!2107 = !DILocation(line: 376, column: 5, scope: !2064)
!2108 = !DILocation(line: 377, column: 5, scope: !2032)
!2109 = !DILocation(line: 0, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 379, column: 5)
!2111 = !DILocation(line: 379, column: 5, scope: !2110)
!2112 = !DILocation(line: 380, column: 20, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 379, column: 5)
!2114 = !DILocation(line: 380, column: 12, scope: !2113)
!2115 = !DILocation(line: 379, column: 56, scope: !2113)
!2116 = distinct !{!2116, !2111, !2117}
!2117 = !DILocation(line: 380, column: 20, scope: !2110)
!2118 = !DILocation(line: 381, column: 38, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 381, column: 9)
!2120 = !DILocation(line: 381, column: 41, scope: !2119)
!2121 = !DILocation(line: 381, column: 31, scope: !2119)
!2122 = !DILocation(line: 381, column: 16, scope: !2119)
!2123 = !DILocation(line: 382, column: 9, scope: !2119)
!2124 = !DILocation(line: 381, column: 9, scope: !2032)
!2125 = !DILocation(line: 386, column: 5, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 386, column: 5)
!2127 = !DILocation(line: 383, column: 17, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 382, column: 18)
!2129 = !DILocation(line: 383, column: 9, scope: !2128)
!2130 = !DILocation(line: 420, column: 3, scope: !2032)
!2131 = !DILocation(line: 421, column: 9, scope: !2032)
!2132 = !DILocation(line: 387, column: 32, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 387, column: 9)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 387, column: 9)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 386, column: 64)
!2136 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 386, column: 5)
!2137 = !DILocation(line: 387, column: 25, scope: !2133)
!2138 = !DILocation(line: 387, column: 9, scope: !2134)
!2139 = !DILocation(line: 0, scope: !2133)
!2140 = !DILocation(line: 388, column: 23, scope: !2133)
!2141 = !DILocation(line: 388, column: 19, scope: !2133)
!2142 = !DILocation(line: 387, column: 47, scope: !2133)
!2143 = distinct !{!2143, !2138, !2144}
!2144 = !DILocation(line: 388, column: 43, scope: !2134)
!2145 = !DILocation(line: 386, column: 56, scope: !2136)
!2146 = !DILocation(line: 0, scope: !2126)
!2147 = distinct !{!2147, !2125, !2148}
!2148 = !DILocation(line: 389, column: 5, scope: !2126)
!2149 = !DILocation(line: 391, column: 15, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 391, column: 9)
!2151 = !DILocation(line: 391, column: 34, scope: !2150)
!2152 = !DILocation(line: 391, column: 9, scope: !2032)
!2153 = !DILocation(line: 396, column: 30, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 396, column: 5)
!2155 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 396, column: 5)
!2156 = !DILocation(line: 396, column: 5, scope: !2155)
!2157 = !DILocation(line: 392, column: 17, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 391, column: 43)
!2159 = !DILocation(line: 392, column: 9, scope: !2158)
!2160 = !DILocation(line: 393, column: 9, scope: !2158)
!2161 = !DILocation(line: 397, column: 16, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 396, column: 42)
!2163 = !DILocation(line: 398, column: 33, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 398, column: 9)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 398, column: 9)
!2166 = !DILocation(line: 398, column: 25, scope: !2164)
!2167 = !DILocation(line: 398, column: 9, scope: !2165)
!2168 = !DILocation(line: 396, column: 38, scope: !2154)
!2169 = !DILocation(line: 0, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 398, column: 49)
!2171 = !DILocation(line: 0, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 405, column: 54)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 405, column: 29)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 403, column: 61)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 403, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 403, column: 21)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 401, column: 45)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 401, column: 17)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 401, column: 17)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 400, column: 44)
!2181 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 400, column: 17)
!2182 = !DILocation(line: 399, column: 26, scope: !2170)
!2183 = !DILocation(line: 400, column: 36, scope: !2181)
!2184 = !DILocation(line: 400, column: 29, scope: !2181)
!2185 = !DILocation(line: 400, column: 17, scope: !2170)
!2186 = !DILocation(line: 402, column: 28, scope: !2177)
!2187 = !DILocation(line: 403, column: 45, scope: !2175)
!2188 = !DILocation(line: 403, column: 37, scope: !2175)
!2189 = !DILocation(line: 403, column: 21, scope: !2176)
!2190 = !DILocation(line: 401, column: 41, scope: !2178)
!2191 = !DILocation(line: 0, scope: !2155)
!2192 = !DILocation(line: 401, column: 33, scope: !2178)
!2193 = !DILocation(line: 401, column: 17, scope: !2179)
!2194 = distinct !{!2194, !2193, !2195}
!2195 = !DILocation(line: 415, column: 17, scope: !2179)
!2196 = !DILocation(line: 404, column: 38, scope: !2174)
!2197 = !DILocation(line: 405, column: 46, scope: !2173)
!2198 = !DILocation(line: 405, column: 39, scope: !2173)
!2199 = !DILocation(line: 405, column: 29, scope: !2174)
!2200 = !DILocation(line: 408, column: 51, scope: !2172)
!2201 = !DILocation(line: 409, column: 42, scope: !2172)
!2202 = !DILocation(line: 410, column: 43, scope: !2172)
!2203 = !DILocation(line: 410, column: 59, scope: !2172)
!2204 = !DILocation(line: 411, column: 37, scope: !2172)
!2205 = !DILocation(line: 843, column: 24, scope: !2206, inlinedAt: !2215)
!2206 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !2207, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!10, !191, !191}
!2209 = !{!2210, !2211, !2212, !2213, !2214}
!2210 = !DILocalVariable(name: "ap1", arg: 1, scope: !2206, file: !3, line: 839, type: !191)
!2211 = !DILocalVariable(name: "ap2", arg: 2, scope: !2206, file: !3, line: 839, type: !191)
!2212 = !DILocalVariable(name: "dx", scope: !2206, file: !3, line: 841, type: !10)
!2213 = !DILocalVariable(name: "dy", scope: !2206, file: !3, line: 841, type: !10)
!2214 = !DILocalVariable(name: "dz", scope: !2206, file: !3, line: 841, type: !10)
!2215 = distinct !DILocation(line: 411, column: 37, scope: !2172)
!2216 = !DILocation(line: 0, scope: !2206, inlinedAt: !2215)
!2217 = !DILocation(line: 844, column: 24, scope: !2206, inlinedAt: !2215)
!2218 = !DILocation(line: 845, column: 24, scope: !2206, inlinedAt: !2215)
!2219 = !DILocation(line: 846, column: 21, scope: !2206, inlinedAt: !2215)
!2220 = !DILocation(line: 846, column: 31, scope: !2206, inlinedAt: !2215)
!2221 = !DILocation(line: 846, column: 26, scope: !2206, inlinedAt: !2215)
!2222 = !DILocation(line: 846, column: 41, scope: !2206, inlinedAt: !2215)
!2223 = !DILocation(line: 846, column: 36, scope: !2206, inlinedAt: !2215)
!2224 = !DILocation(line: 846, column: 13, scope: !2206, inlinedAt: !2215)
!2225 = !DILocation(line: 406, column: 29, scope: !2172)
!2226 = !DILocation(line: 412, column: 32, scope: !2172)
!2227 = !DILocation(line: 413, column: 25, scope: !2172)
!2228 = !DILocation(line: 403, column: 57, scope: !2175)
!2229 = distinct !{!2229, !2189, !2230}
!2230 = !DILocation(line: 414, column: 21, scope: !2176)
!2231 = !DILocation(line: 398, column: 45, scope: !2164)
!2232 = !DILocation(line: 396, column: 14, scope: !2155)
!2233 = distinct !{!2233, !2167, !2234}
!2234 = !DILocation(line: 417, column: 9, scope: !2165)
!2235 = !DILocation(line: 0, scope: !2174)
!2236 = distinct !{!2236, !2156, !2237}
!2237 = !DILocation(line: 418, column: 5, scope: !2155)
!2238 = !DILocation(line: 422, column: 9, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 421, column: 9)
!2240 = !DILocation(line: 425, column: 1, scope: !2032)
!2241 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !2242, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2246)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!38, !13, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !185)
!2246 = !{!2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2247 = !DILocalVariable(name: "fname", arg: 1, scope: !2241, file: !3, line: 427, type: !13)
!2248 = !DILocalVariable(name: "mat", arg: 2, scope: !2241, file: !3, line: 427, type: !2244)
!2249 = !DILocalVariable(name: "fp", scope: !2241, file: !3, line: 429, type: !372)
!2250 = !DILocalVariable(name: "i", scope: !2241, file: !3, line: 430, type: !38)
!2251 = !DILocalVariable(name: "j", scope: !2241, file: !3, line: 430, type: !38)
!2252 = !DILocalVariable(name: "err", scope: !2241, file: !3, line: 431, type: !38)
!2253 = !DILabel(scope: !2241, name: "CLEAN_UP", file: !3, line: 451)
!2254 = !DILocation(line: 0, scope: !2241)
!2255 = !DILocation(line: 433, column: 15, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 433, column: 9)
!2257 = !DILocation(line: 433, column: 23, scope: !2256)
!2258 = !DILocation(line: 433, column: 26, scope: !2256)
!2259 = !DILocation(line: 433, column: 33, scope: !2256)
!2260 = !DILocation(line: 433, column: 9, scope: !2241)
!2261 = !DILocation(line: 434, column: 17, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 433, column: 42)
!2263 = !DILocation(line: 434, column: 9, scope: !2262)
!2264 = !DILocation(line: 436, column: 9, scope: !2262)
!2265 = !DILocation(line: 437, column: 17, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 437, column: 16)
!2267 = !DILocation(line: 437, column: 16, scope: !2256)
!2268 = !DILocation(line: 438, column: 14, scope: !2266)
!2269 = !DILocation(line: 438, column: 9, scope: !2266)
!2270 = !DILocation(line: 439, column: 20, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 439, column: 14)
!2272 = !DILocation(line: 439, column: 39, scope: !2271)
!2273 = !DILocation(line: 439, column: 14, scope: !2266)
!2274 = !DILocation(line: 440, column: 17, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 439, column: 48)
!2276 = !DILocation(line: 440, column: 9, scope: !2275)
!2277 = !DILocation(line: 442, column: 9, scope: !2275)
!2278 = !DILocation(line: 0, scope: !2266)
!2279 = !DILocation(line: 445, column: 5, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 445, column: 5)
!2281 = !DILocation(line: 446, column: 9, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 446, column: 9)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 445, column: 29)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 445, column: 5)
!2285 = !DILocation(line: 447, column: 32, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 446, column: 9)
!2287 = !DILocation(line: 447, column: 13, scope: !2286)
!2288 = !DILocation(line: 446, column: 29, scope: !2286)
!2289 = !DILocation(line: 446, column: 23, scope: !2286)
!2290 = distinct !{!2290, !2281, !2291}
!2291 = !DILocation(line: 447, column: 41, scope: !2282)
!2292 = !DILocation(line: 448, column: 9, scope: !2283)
!2293 = !DILocation(line: 445, column: 25, scope: !2284)
!2294 = !DILocation(line: 445, column: 19, scope: !2284)
!2295 = distinct !{!2295, !2279, !2296}
!2296 = !DILocation(line: 449, column: 5, scope: !2280)
!2297 = !DILocation(line: 451, column: 3, scope: !2241)
!2298 = !DILocation(line: 453, column: 12, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 453, column: 9)
!2300 = !DILocation(line: 453, column: 29, scope: !2299)
!2301 = !DILocation(line: 453, column: 26, scope: !2299)
!2302 = !DILocation(line: 453, column: 20, scope: !2299)
!2303 = !DILocation(line: 454, column: 9, scope: !2299)
!2304 = !DILocation(line: 455, column: 5, scope: !2241)
!2305 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !355, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !39)
!2306 = !DILocation(line: 753, column: 5, scope: !2305)
!2307 = !DILocation(line: 754, column: 13, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 754, column: 9)
!2309 = !DILocation(line: 754, column: 23, scope: !2308)
!2310 = !DILocation(line: 754, column: 9, scope: !2305)
!2311 = !DILocation(line: 755, column: 34, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 754, column: 32)
!2313 = !DILocation(line: 755, column: 23, scope: !2312)
!2314 = !DILocation(line: 756, column: 27, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 756, column: 13)
!2316 = !DILocation(line: 756, column: 13, scope: !2312)
!2317 = !DILocation(line: 757, column: 21, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 756, column: 36)
!2319 = !DILocation(line: 757, column: 13, scope: !2318)
!2320 = !DILocation(line: 758, column: 13, scope: !2318)
!2321 = !DILocation(line: 761, column: 13, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 761, column: 9)
!2323 = !DILocation(line: 761, column: 21, scope: !2322)
!2324 = !DILocation(line: 761, column: 9, scope: !2305)
!2325 = !DILocation(line: 762, column: 32, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 761, column: 30)
!2327 = !DILocation(line: 762, column: 21, scope: !2326)
!2328 = !DILocation(line: 763, column: 25, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 763, column: 13)
!2330 = !DILocation(line: 763, column: 13, scope: !2326)
!2331 = !DILocation(line: 764, column: 21, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 763, column: 34)
!2333 = !DILocation(line: 764, column: 13, scope: !2332)
!2334 = !DILocation(line: 765, column: 13, scope: !2332)
!2335 = !DILocation(line: 768, column: 20, scope: !2305)
!2336 = !DILocation(line: 768, column: 18, scope: !2305)
!2337 = !DILocation(line: 769, column: 17, scope: !2305)
!2338 = !DILocation(line: 770, column: 1, scope: !2305)
!2339 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2340, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{null, !145}
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2343 = !DILocalVariable(name: "res", arg: 1, scope: !2339, file: !3, line: 794, type: !145)
!2344 = !DILocalVariable(name: "a1", scope: !2339, file: !3, line: 796, type: !38)
!2345 = !DILocalVariable(name: "a2", scope: !2339, file: !3, line: 796, type: !38)
!2346 = !DILocalVariable(name: "ap1", scope: !2339, file: !3, line: 797, type: !191)
!2347 = !DILocalVariable(name: "ap2", scope: !2339, file: !3, line: 797, type: !191)
!2348 = !DILocalVariable(name: "ih1", scope: !2339, file: !3, line: 798, type: !38)
!2349 = !DILocalVariable(name: "ih2", scope: !2339, file: !3, line: 798, type: !38)
!2350 = !DILocalVariable(name: "d", scope: !2339, file: !3, line: 799, type: !10)
!2351 = !DILocation(line: 0, scope: !2339)
!2352 = !DILocation(line: 801, column: 28, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 801, column: 5)
!2354 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 801, column: 5)
!2355 = !DILocation(line: 801, column: 21, scope: !2353)
!2356 = !DILocation(line: 801, column: 5, scope: !2354)
!2357 = !DILocation(line: 0, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 801, column: 44)
!2359 = !DILocation(line: 806, column: 21, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 806, column: 5)
!2361 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 806, column: 5)
!2362 = !DILocation(line: 806, column: 5, scope: !2361)
!2363 = !DILocation(line: 0, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 808, column: 13)
!2365 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 806, column: 48)
!2366 = !DILocation(line: 803, column: 14, scope: !2358)
!2367 = !DILocation(line: 803, column: 25, scope: !2358)
!2368 = !{!530, !531, i64 20}
!2369 = !DILocation(line: 801, column: 40, scope: !2353)
!2370 = distinct !{!2370, !2356, !2371}
!2371 = !DILocation(line: 804, column: 5, scope: !2354)
!2372 = !DILocation(line: 806, column: 28, scope: !2360)
!2373 = !DILocation(line: 806, column: 37, scope: !2360)
!2374 = !DILocation(line: 807, column: 21, scope: !2365)
!2375 = !DILocation(line: 808, column: 13, scope: !2364)
!2376 = !{!2377, !2377, i64 0}
!2377 = !{!"short", !466, i64 0}
!2378 = !DILocation(line: 808, column: 13, scope: !2365)
!2379 = !DILocation(line: 809, column: 19, scope: !2364)
!2380 = !DILocation(line: 809, column: 13, scope: !2364)
!2381 = !DILocation(line: 812, column: 22, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 812, column: 9)
!2383 = !DILocation(line: 812, column: 30, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 812, column: 9)
!2385 = !DILocation(line: 812, column: 9, scope: !2382)
!2386 = distinct !{!2386, !2362, !2387}
!2387 = !DILocation(line: 836, column: 5, scope: !2361)
!2388 = !DILocation(line: 0, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 812, column: 53)
!2390 = !DILocation(line: 0, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 829, column: 21)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 828, column: 39)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 828, column: 24)
!2394 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 820, column: 17)
!2395 = !DILocation(line: 0, scope: !2394)
!2396 = !DILocation(line: 0, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 823, column: 59)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 822, column: 25)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 821, column: 37)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 821, column: 21)
!2401 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 820, column: 29)
!2402 = !DILocation(line: 813, column: 25, scope: !2389)
!2403 = !DILocation(line: 819, column: 17, scope: !2389)
!2404 = !DILocation(line: 843, column: 24, scope: !2206, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 819, column: 17, scope: !2389)
!2406 = !DILocation(line: 0, scope: !2206, inlinedAt: !2405)
!2407 = !DILocation(line: 844, column: 24, scope: !2206, inlinedAt: !2405)
!2408 = !DILocation(line: 845, column: 24, scope: !2206, inlinedAt: !2405)
!2409 = !DILocation(line: 846, column: 21, scope: !2206, inlinedAt: !2405)
!2410 = !DILocation(line: 846, column: 31, scope: !2206, inlinedAt: !2405)
!2411 = !DILocation(line: 846, column: 26, scope: !2206, inlinedAt: !2405)
!2412 = !DILocation(line: 846, column: 41, scope: !2206, inlinedAt: !2405)
!2413 = !DILocation(line: 846, column: 36, scope: !2206, inlinedAt: !2405)
!2414 = !DILocation(line: 846, column: 13, scope: !2206, inlinedAt: !2405)
!2415 = !DILocation(line: 821, column: 23, scope: !2400)
!2416 = !DILocation(line: 821, column: 21, scope: !2401)
!2417 = !DILocation(line: 822, column: 30, scope: !2398)
!2418 = !DILocation(line: 822, column: 41, scope: !2398)
!2419 = !DILocation(line: 822, column: 58, scope: !2398)
!2420 = !DILocation(line: 823, column: 30, scope: !2398)
!2421 = !DILocation(line: 823, column: 41, scope: !2398)
!2422 = !DILocation(line: 822, column: 25, scope: !2399)
!2423 = !DILocation(line: 824, column: 55, scope: !2397)
!2424 = !DILocation(line: 824, column: 25, scope: !2397)
!2425 = !DILocation(line: 824, column: 59, scope: !2397)
!2426 = !DILocation(line: 825, column: 55, scope: !2397)
!2427 = !DILocation(line: 825, column: 25, scope: !2397)
!2428 = !DILocation(line: 825, column: 59, scope: !2397)
!2429 = !DILocation(line: 826, column: 21, scope: !2397)
!2430 = !DILocation(line: 812, column: 49, scope: !2384)
!2431 = !DILocation(line: 812, column: 37, scope: !2384)
!2432 = distinct !{!2432, !2385, !2433}
!2433 = !DILocation(line: 835, column: 9, scope: !2382)
!2434 = !DILocation(line: 814, column: 17, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 814, column: 17)
!2436 = !DILocation(line: 814, column: 17, scope: !2389)
!2437 = !DILocation(line: 815, column: 23, scope: !2435)
!2438 = !DILocation(line: 815, column: 17, scope: !2435)
!2439 = !DILocation(line: 0, scope: !2435)
!2440 = !DILocation(line: 820, column: 21, scope: !2394)
!2441 = !DILocation(line: 828, column: 26, scope: !2393)
!2442 = !DILocation(line: 828, column: 24, scope: !2394)
!2443 = !DILocation(line: 829, column: 26, scope: !2391)
!2444 = !DILocation(line: 829, column: 37, scope: !2391)
!2445 = !DILocation(line: 829, column: 54, scope: !2391)
!2446 = !DILocation(line: 830, column: 26, scope: !2391)
!2447 = !DILocation(line: 830, column: 37, scope: !2391)
!2448 = !DILocation(line: 829, column: 21, scope: !2392)
!2449 = !DILocation(line: 831, column: 51, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 830, column: 55)
!2451 = !DILocation(line: 831, column: 21, scope: !2450)
!2452 = !DILocation(line: 831, column: 55, scope: !2450)
!2453 = !DILocation(line: 832, column: 51, scope: !2450)
!2454 = !DILocation(line: 832, column: 21, scope: !2450)
!2455 = !DILocation(line: 832, column: 55, scope: !2450)
!2456 = !DILocation(line: 833, column: 17, scope: !2450)
!2457 = !DILocation(line: 837, column: 1, scope: !2339)
