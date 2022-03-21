; ModuleID = 'molio.c'
source_filename = "molio.c"
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
@n_atab = internal unnamed_addr global i32 0, align 4, !dbg !359
@.str.25 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@res = internal global %struct.residue_t zeroinitializer, align 8, !dbg !361
@.str.29 = private unnamed_addr constant [5 x i8] c"H2'1\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"-pqr\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%lf%lf\00", align 1
@atab = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !363
@.str.49 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"initres: can't allocate res->r_resname.\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"initres: can't allocate res->r_resid.\0A\00", align 1
@init_atab.init = internal unnamed_addr global i1 false, align 4, !dbg !384
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
@.str.159 = private unnamed_addr constant [8 x i8] c"molio.c\00", align 1
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
define dso_local %struct.molecule_t* @getpdb(i8* %0, i8* readonly %1) local_unnamed_addr #0 !dbg !389 {
  %3 = alloca [82 x i8], align 16
  call void @llvm.dbg.declare(metadata [82 x i8]* %3, metadata !400, metadata !DIExpression()), !dbg !449
  %4 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !412, metadata !DIExpression()), !dbg !451
  %5 = alloca [10 x i8], align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !416, metadata !DIExpression()), !dbg !452
  %6 = alloca [10 x i8], align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !417, metadata !DIExpression()), !dbg !453
  %7 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %7, metadata !418, metadata !DIExpression()), !dbg !454
  %8 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %8, metadata !419, metadata !DIExpression()), !dbg !455
  %9 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %9, metadata !420, metadata !DIExpression()), !dbg !456
  %10 = alloca [10 x i8], align 1
  call void @llvm.dbg.declare(metadata [10 x i8]* %10, metadata !421, metadata !DIExpression()), !dbg !457
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %14, metadata !435, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i8* %0, metadata !395, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i8* %1, metadata !396, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !397, metadata !DIExpression()), !dbg !459
  %15 = icmp eq i8* %0, null, !dbg !460
  br i1 %15, label %19, label %16, !dbg !462

16:                                               ; preds = %2
  %17 = load i8, i8* %0, align 1, !dbg !463, !tbaa !464
  %18 = icmp eq i8 %17, 0, !dbg !463
  br i1 %18, label %19, label %21, !dbg !467

19:                                               ; preds = %16, %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !468, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !397, metadata !DIExpression()), !dbg !459
  br label %41, !dbg !472

21:                                               ; preds = %16
  %22 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !473
  %23 = icmp eq i32 %22, 0, !dbg !473
  br i1 %23, label %24, label %26, !dbg !475

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !476, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !397, metadata !DIExpression()), !dbg !459
  br label %41, !dbg !478

26:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !399, metadata !DIExpression()), !dbg !459
  %27 = tail call i32 @get_mytaskid() #14, !dbg !479
  %28 = icmp eq i32 %27, 0, !dbg !482
  br i1 %28, label %29, label %35, !dbg !483

29:                                               ; preds = %26
  %30 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !484
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %30, metadata !397, metadata !DIExpression()), !dbg !459
  %31 = icmp eq %struct._IO_FILE* %30, null, !dbg !487
  br i1 %31, label %32, label %35, !dbg !488

32:                                               ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !489, !tbaa !470
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %0) #15, !dbg !491
  call void @llvm.dbg.value(metadata i32 -1, metadata !399, metadata !DIExpression()), !dbg !459
  br label %35, !dbg !492

35:                                               ; preds = %29, %32, %26
  %36 = phi %struct._IO_FILE* [ null, %32 ], [ %30, %29 ], [ null, %26 ], !dbg !459
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], [ 0, %26 ], !dbg !493
  call void @llvm.dbg.value(metadata i32 %37, metadata !399, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !397, metadata !DIExpression()), !dbg !459
  tail call void @reducerror(i32 %37) #14, !dbg !494
  %38 = tail call i32 @get_mytaskid() #14, !dbg !495
  %39 = icmp eq i32 %38, 0, !dbg !497
  %40 = select i1 %39, %struct._IO_FILE* %36, %struct._IO_FILE* null, !dbg !498
  br label %41, !dbg !498

41:                                               ; preds = %35, %24, %19
  %42 = phi %struct._IO_FILE* [ %25, %24 ], [ %20, %19 ], [ %40, %35 ], !dbg !499
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !397, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !405, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %1, metadata !406, metadata !DIExpression()) #14, !dbg !500
  %43 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !501
  call void @llvm.lifetime.start.p0i8(i64 82, i8* nonnull %43) #14, !dbg !501
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !502
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %44) #14, !dbg !502
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !503
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %45) #14, !dbg !503
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %46) #14, !dbg !504
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %47) #14, !dbg !504
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %48) #14, !dbg !505
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %49) #14, !dbg !505
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %50) #14, !dbg !506
  %51 = bitcast i32* %11 to i8*, !dbg !507
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51) #14, !dbg !507
  %52 = bitcast double* %12 to i8*, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #14, !dbg !508
  %53 = bitcast double* %13 to i8*, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #14, !dbg !508
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !509
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %54) #14, !dbg !509
  %55 = icmp eq i8* %1, null, !dbg !510
  br i1 %55, label %56, label %57, !dbg !512

56:                                               ; preds = %41
  store i8 0, i8* %54, align 16, !dbg !513, !tbaa !464
  br label %59, !dbg !514

57:                                               ; preds = %41
  %58 = call i8* @strcpy(i8* nonnull %54, i8* nonnull %1) #14, !dbg !515
  br label %59

59:                                               ; preds = %57, %56
  call fastcc void @initres() #14, !dbg !516
  %60 = load i1, i1* @init_atab.init, align 4, !dbg !517
  br i1 %60, label %78, label %61, !dbg !520

61:                                               ; preds = %59, %70
  %62 = phi %struct.atom_t* [ %75, %70 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %59 ]
  %63 = phi i32 [ %74, %70 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %62, metadata !358, metadata !DIExpression()) #14, !dbg !521
  call void @llvm.dbg.value(metadata i32 %63, metadata !357, metadata !DIExpression()) #14, !dbg !521
  %64 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !522
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 0, !dbg !526
  store i8* %64, i8** %65, align 8, !dbg !527, !tbaa !528
  %66 = icmp eq i8* %64, null, !dbg !532
  br i1 %66, label %67, label %70, !dbg !534

67:                                               ; preds = %61
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !535, !tbaa !470
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %68) #16, !dbg !537
  call void @exit(i32 1) #17, !dbg !538
  unreachable, !dbg !538

70:                                               ; preds = %61
  store i8 0, i8* %64, align 1, !dbg !539, !tbaa !464
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 1, !dbg !540
  store i8* null, i8** %71, align 8, !dbg !541, !tbaa !542
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 10, !dbg !543
  store i8* null, i8** %72, align 8, !dbg !544, !tbaa !545
  %73 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 16, !dbg !546
  store i8* null, i8** %73, align 8, !dbg !547, !tbaa !548
  %74 = add nuw nsw i32 %63, 1, !dbg !549
  call void @llvm.dbg.value(metadata i32 %74, metadata !357, metadata !DIExpression()) #14, !dbg !521
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 1, !dbg !550
  call void @llvm.dbg.value(metadata %struct.atom_t* %75, metadata !358, metadata !DIExpression()) #14, !dbg !521
  %76 = icmp eq i32 %74, 1000, !dbg !551
  br i1 %76, label %77, label %61, !dbg !552, !llvm.loop !553

77:                                               ; preds = %70
  store i1 true, i1* @init_atab.init, align 4, !dbg !555
  br label %78, !dbg !556

78:                                               ; preds = %77, %59
  %79 = call %struct.molecule_t* @newmolecule() #14, !dbg !557
  call void @llvm.dbg.value(metadata %struct.molecule_t* %79, metadata !407, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 0, metadata !409, metadata !DIExpression()) #14, !dbg !500
  store i8 0, i8* %47, align 1, !dbg !558, !tbaa !464
  call void @llvm.dbg.value(metadata i32 0, metadata !425, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()) #14, !dbg !500
  store i32 0, i32* @n_atab, align 4, !dbg !559, !tbaa !560
  call void @llvm.dbg.value(metadata i32 0, metadata !409, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 0, metadata !425, metadata !DIExpression()) #14, !dbg !500
  %80 = call i8* @ggets(i8* nonnull %43, i32 82, %struct._IO_FILE* %42) #14, !dbg !561
  %81 = icmp eq i8* %80, null, !dbg !563
  br i1 %81, label %336, label %82, !dbg !564

82:                                               ; preds = %78
  %83 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 80, !dbg !565
  %84 = bitcast [82 x i8]* %3 to i32*, !dbg !566
  %85 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 12, !dbg !567
  %86 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 4, !dbg !567
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2, !dbg !568
  %88 = bitcast [10 x i8]* %5 to i32*, !dbg !570
  %89 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 17, !dbg !567
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 3, !dbg !567
  %91 = bitcast [10 x i8]* %6 to i16*, !dbg !572
  %92 = bitcast [10 x i8]* %6 to i32*, !dbg !572
  %93 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 21, !dbg !567
  %94 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6, !dbg !567
  %95 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 22, !dbg !567
  %96 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 30, !dbg !567
  %97 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8, !dbg !567
  %98 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 38, !dbg !567
  %99 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 46, !dbg !567
  %100 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 54, !dbg !574
  %101 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6, !dbg !577
  %102 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 60, !dbg !577
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 1, !dbg !579
  %104 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %79, i64 0, i32 2, !dbg !582
  %105 = bitcast double* %12 to i64*, !dbg !567
  %106 = bitcast double* %13 to i64*, !dbg !567
  br label %107, !dbg !564

107:                                              ; preds = %330, %82
  %108 = phi i32 [ 0, %82 ], [ %333, %330 ]
  %109 = phi i32 [ 0, %82 ], [ %332, %330 ]
  %110 = phi i32 [ 0, %82 ], [ %331, %330 ]
  call void @llvm.dbg.value(metadata i32 %108, metadata !409, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %109, metadata !411, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %110, metadata !425, metadata !DIExpression()) #14, !dbg !500
  %111 = call i64 @strlen(i8* nonnull %43) #13, !dbg !584
  %112 = trunc i64 %111 to i32, !dbg !584
  call void @llvm.dbg.value(metadata i32 %112, metadata !433, metadata !DIExpression()) #14, !dbg !500
  %113 = icmp slt i32 %112, 80, !dbg !586
  br i1 %113, label %114, label %121, !dbg !588

114:                                              ; preds = %107
  %115 = shl i64 %111, 32, !dbg !588
  %116 = ashr exact i64 %115, 32, !dbg !588
  %117 = getelementptr [82 x i8], [82 x i8]* %3, i64 0, i64 %116, !dbg !588
  %118 = sub i64 79, %111, !dbg !588
  %119 = and i64 %118, 4294967295, !dbg !588
  %120 = add nuw nsw i64 %119, 1, !dbg !588
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(1) %117, i8 32, i64 %120, i1 false) #14, !dbg !589
  call void @llvm.dbg.value(metadata i32 undef, metadata !433, metadata !DIExpression()) #14, !dbg !500
  br label %121, !dbg !590

121:                                              ; preds = %114, %107
  store i8 0, i8* %83, align 16, !dbg !590, !tbaa !464
  %122 = load i32, i32* %84, align 16, !dbg !591
  %123 = icmp eq i32 %122, 1297044545, !dbg !591
  br i1 %123, label %127, label %124, !dbg !592

124:                                              ; preds = %121
  %125 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* nonnull dereferenceable(6) %43, i64 6) #14, !dbg !593
  %126 = icmp eq i32 %125, 0, !dbg !594
  br i1 %126, label %127, label %313, !dbg !595

127:                                              ; preds = %124, %121
  %128 = call i8* @strncpy(i8* nonnull %45, i8* nonnull %85, i64 4) #14, !dbg !596
  store i8 0, i8* %86, align 4, !dbg !597, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %45, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %45, metadata !422, metadata !DIExpression()) #14, !dbg !500
  br label %129, !dbg !598

129:                                              ; preds = %135, %127
  %130 = phi i8* [ %45, %127 ], [ %136, %135 ], !dbg !600
  %131 = phi i8* [ %45, %127 ], [ %137, %135 ], !dbg !600
  call void @llvm.dbg.value(metadata i8* %131, metadata !422, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  %132 = load i8, i8* %131, align 1, !dbg !601, !tbaa !464
  switch i8 %132, label %133 [
    i8 0, label %138
    i8 32, label %135
  ], !dbg !603

133:                                              ; preds = %129
  %134 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !604
  call void @llvm.dbg.value(metadata i8* %134, metadata !423, metadata !DIExpression()) #14, !dbg !500
  store i8 %132, i8* %130, align 1, !dbg !607, !tbaa !464
  br label %135, !dbg !608

135:                                              ; preds = %133, %129
  %136 = phi i8* [ %134, %133 ], [ %130, %129 ], !dbg !600
  call void @llvm.dbg.value(metadata i8* %136, metadata !423, metadata !DIExpression()) #14, !dbg !500
  %137 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !609
  call void @llvm.dbg.value(metadata i8* %137, metadata !422, metadata !DIExpression()) #14, !dbg !500
  br label %129, !dbg !610, !llvm.loop !611

138:                                              ; preds = %129
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #14, !dbg !500
  store i8 0, i8* %130, align 1, !dbg !613, !tbaa !464
  %139 = load i8, i8* %45, align 4, !dbg !614, !tbaa !464
  %140 = add i8 %139, -49, !dbg !616
  %141 = icmp ult i8 %140, 3, !dbg !616
  br i1 %141, label %142, label %161, !dbg !616

142:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 0, metadata !433, metadata !DIExpression()) #14, !dbg !500
  %143 = call i64 @strlen(i8* nonnull %45) #13, !dbg !617
  %144 = trunc i64 %143 to i32, !dbg !621
  %145 = icmp sgt i32 %144, 1, !dbg !622
  br i1 %145, label %146, label %157, !dbg !623

146:                                              ; preds = %142, %146
  %147 = phi i64 [ %148, %146 ], [ 0, %142 ]
  call void @llvm.dbg.value(metadata i64 %147, metadata !433, metadata !DIExpression()) #14, !dbg !500
  %148 = add nuw nsw i64 %147, 1, !dbg !624
  %149 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %148, !dbg !625
  %150 = load i8, i8* %149, align 1, !dbg !625, !tbaa !464
  %151 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %147, !dbg !626
  store i8 %150, i8* %151, align 1, !dbg !627, !tbaa !464
  call void @llvm.dbg.value(metadata i64 %148, metadata !433, metadata !DIExpression()) #14, !dbg !500
  %152 = call i64 @strlen(i8* nonnull %45) #13, !dbg !617
  %153 = shl i64 %152, 32, !dbg !622
  %154 = add i64 %153, -4294967296, !dbg !622
  %155 = ashr exact i64 %154, 32, !dbg !622
  %156 = icmp slt i64 %148, %155, !dbg !622
  br i1 %156, label %146, label %157, !dbg !623, !llvm.loop !628

157:                                              ; preds = %146, %142
  %158 = phi i64 [ 0, %142 ], [ %148, %146 ], !dbg !630
  %159 = and i64 %158, 4294967295, !dbg !631
  call void @llvm.dbg.value(metadata i64 %158, metadata !433, metadata !DIExpression()) #14, !dbg !500
  %160 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %159, !dbg !631
  store i8 %139, i8* %160, align 1, !dbg !632, !tbaa !464
  br label %161, !dbg !633

161:                                              ; preds = %157, %138
  %162 = load i8, i8* %87, align 2, !dbg !634, !tbaa !464
  %163 = icmp eq i8 %162, 42, !dbg !635
  br i1 %163, label %164, label %165, !dbg !636

164:                                              ; preds = %161
  store i8 39, i8* %87, align 2, !dbg !637, !tbaa !464
  br label %165, !dbg !638

165:                                              ; preds = %164, %161
  %166 = load i32, i32* %88, align 4, !dbg !639
  %167 = icmp eq i32 %166, 5059907, !dbg !639
  br i1 %167, label %168, label %169, !dbg !640

168:                                              ; preds = %165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(3) %45, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 3, i1 false) #14, !dbg !641
  br label %169, !dbg !641

169:                                              ; preds = %168, %165
  %170 = call i8* @strncpy(i8* nonnull %46, i8* nonnull %89, i64 3) #14, !dbg !642
  store i8 0, i8* %90, align 1, !dbg !643, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %46, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %46, metadata !422, metadata !DIExpression()) #14, !dbg !500
  br label %171, !dbg !644

171:                                              ; preds = %177, %169
  %172 = phi i8* [ %46, %169 ], [ %178, %177 ], !dbg !646
  %173 = phi i8* [ %46, %169 ], [ %179, %177 ], !dbg !646
  call void @llvm.dbg.value(metadata i8* %173, metadata !422, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  %174 = load i8, i8* %173, align 1, !dbg !647, !tbaa !464
  switch i8 %174, label %175 [
    i8 0, label %180
    i8 32, label %177
  ], !dbg !649

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !650
  call void @llvm.dbg.value(metadata i8* %176, metadata !423, metadata !DIExpression()) #14, !dbg !500
  store i8 %174, i8* %172, align 1, !dbg !653, !tbaa !464
  br label %177, !dbg !654

177:                                              ; preds = %175, %171
  %178 = phi i8* [ %176, %175 ], [ %172, %171 ], !dbg !646
  call void @llvm.dbg.value(metadata i8* %178, metadata !423, metadata !DIExpression()) #14, !dbg !500
  %179 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !655
  call void @llvm.dbg.value(metadata i8* %179, metadata !422, metadata !DIExpression()) #14, !dbg !500
  br label %171, !dbg !656, !llvm.loop !657

180:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #14, !dbg !500
  store i8 0, i8* %172, align 1, !dbg !659, !tbaa !464
  %181 = load i32, i32* %88, align 4, !dbg !660
  %182 = icmp eq i32 %181, 2568783, !dbg !660
  br i1 %182, label %185, label %183, !dbg !662

183:                                              ; preds = %180
  %184 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4, !dbg !663
  br label %186, !dbg !662

185:                                              ; preds = %180
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4, !dbg !665, !tbaa !666
  br label %186, !dbg !668

186:                                              ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 2, %185 ], !dbg !663
  %188 = call i32 @bcmp(i8* nonnull dereferenceable(5) %45, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 5) #14, !dbg !669
  %189 = icmp eq i32 %188, 0, !dbg !669
  %190 = icmp eq i32 %187, 2, !dbg !670
  %191 = and i1 %190, %189, !dbg !671
  br i1 %191, label %192, label %193, !dbg !671

192:                                              ; preds = %186
  store i32 2568776, i32* %88, align 4, !dbg !672
  br label %193, !dbg !672

193:                                              ; preds = %192, %186
  %194 = load i16, i16* %91, align 4, !dbg !673
  switch i16 %194, label %200 [
    i16 65, label %195
    i16 67, label %196
    i16 71, label %197
    i16 84, label %198
    i16 85, label %199
  ], !dbg !674

195:                                              ; preds = %193
  store i32 4539457, i32* %92, align 4, !dbg !675
  br label %200, !dbg !676

196:                                              ; preds = %193
  store i32 5527875, i32* %92, align 4, !dbg !677
  br label %200, !dbg !677

197:                                              ; preds = %193
  store i32 4281671, i32* %92, align 4, !dbg !679
  br label %200, !dbg !679

198:                                              ; preds = %193
  store i32 5851220, i32* %92, align 4, !dbg !681
  br label %200, !dbg !681

199:                                              ; preds = %193
  store i32 4280917, i32* %92, align 4, !dbg !683
  br label %200, !dbg !683

200:                                              ; preds = %199, %198, %197, %196, %195, %193
  %201 = call i8* @strncpy(i8* nonnull %48, i8* nonnull %93, i64 6) #14, !dbg !685
  store i8 0, i8* %94, align 1, !dbg !686, !tbaa !464
  %202 = load i8, i8* %93, align 1, !dbg !687, !tbaa !464
  %203 = sext i8 %202 to i32, !dbg !687
  call void @llvm.dbg.value(metadata i32 %203, metadata !410, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32* %11, metadata !424, metadata !DIExpression(DW_OP_deref)) #14, !dbg !500
  %204 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* nonnull %11) #14, !dbg !688
  %205 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %96, i64 8) #14, !dbg !689
  store i8 0, i8* %97, align 1, !dbg !690, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #14, !dbg !699
  %206 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !701
  call void @llvm.dbg.value(metadata double %206, metadata !426, metadata !DIExpression()) #14, !dbg !500
  %207 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %98, i64 8) #14, !dbg !702
  store i8 0, i8* %97, align 1, !dbg !703, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #14, !dbg !704
  %208 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !706
  call void @llvm.dbg.value(metadata double %208, metadata !427, metadata !DIExpression()) #14, !dbg !500
  %209 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %99, i64 8) #14, !dbg !707
  store i8 0, i8* %97, align 1, !dbg !708, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #14, !dbg !709
  %210 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !711
  call void @llvm.dbg.value(metadata double %210, metadata !428, metadata !DIExpression()) #14, !dbg !500
  %211 = call i8* @strstr(i8* nonnull %54, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #13, !dbg !712
  %212 = icmp eq i8* %211, null, !dbg !712
  br i1 %212, label %215, label %213, !dbg !713

213:                                              ; preds = %200
  call void @llvm.dbg.value(metadata double* %12, metadata !429, metadata !DIExpression(DW_OP_deref)) #14, !dbg !500
  call void @llvm.dbg.value(metadata double* %13, metadata !430, metadata !DIExpression(DW_OP_deref)) #14, !dbg !500
  %214 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* nonnull %12, double* nonnull %13) #14, !dbg !714
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !431, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !432, metadata !DIExpression()) #14, !dbg !500
  br label %229, !dbg !715

215:                                              ; preds = %200
  %216 = load i8, i8* %45, align 4, !dbg !716
  switch i8 %216, label %223 [
    i8 72, label %217
    i8 67, label %218
    i8 78, label %219
    i8 79, label %220
    i8 83, label %221
    i8 80, label %222
  ], !dbg !718

217:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.200000e+00, metadata !430, metadata !DIExpression()) #14, !dbg !500
  store double 1.200000e+00, double* %13, align 8, !dbg !719, !tbaa !720
  br label %224, !dbg !721

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !430, metadata !DIExpression()) #14, !dbg !500
  store double 1.700000e+00, double* %13, align 8, !dbg !722, !tbaa !720
  br label %224, !dbg !724

219:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.550000e+00, metadata !430, metadata !DIExpression()) #14, !dbg !500
  store double 1.550000e+00, double* %13, align 8, !dbg !725, !tbaa !720
  br label %224, !dbg !727

220:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.500000e+00, metadata !430, metadata !DIExpression()) #14, !dbg !500
  store double 1.500000e+00, double* %13, align 8, !dbg !728, !tbaa !720
  br label %224, !dbg !730

221:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.800000e+00, metadata !430, metadata !DIExpression()) #14, !dbg !500
  store double 1.800000e+00, double* %13, align 8, !dbg !731, !tbaa !720
  br label %224, !dbg !733

222:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.850000e+00, metadata !430, metadata !DIExpression()) #14, !dbg !500
  store double 1.850000e+00, double* %13, align 8, !dbg !734, !tbaa !720
  br label %224, !dbg !736

223:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !430, metadata !DIExpression()) #14, !dbg !500
  store double 1.700000e+00, double* %13, align 8, !dbg !737, !tbaa !720
  br label %224

224:                                              ; preds = %223, %222, %221, %220, %219, %218, %217
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !429, metadata !DIExpression()) #14, !dbg !500
  store double 0.000000e+00, double* %12, align 8, !dbg !738, !tbaa !720
  %225 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %100, i64 6) #14, !dbg !739
  store i8 0, i8* %101, align 1, !dbg !740, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #14, !dbg !741
  %226 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !743
  call void @llvm.dbg.value(metadata double %226, metadata !431, metadata !DIExpression()) #14, !dbg !500
  %227 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %102, i64 6) #14, !dbg !744
  store i8 0, i8* %101, align 1, !dbg !745, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #14, !dbg !746
  %228 = call double @strtod(i8* nocapture nonnull %50, i8** null) #14, !dbg !748
  call void @llvm.dbg.value(metadata double %228, metadata !432, metadata !DIExpression()) #14, !dbg !500
  br label %229

229:                                              ; preds = %224, %213
  %230 = phi double [ 1.000000e+00, %213 ], [ %226, %224 ], !dbg !749
  %231 = phi double [ 0.000000e+00, %213 ], [ %228, %224 ], !dbg !749
  call void @llvm.dbg.value(metadata double %231, metadata !432, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata double %230, metadata !431, metadata !DIExpression()) #14, !dbg !500
  %232 = icmp eq i32 %108, %203, !dbg !750
  br i1 %232, label %272, label %233, !dbg !751

233:                                              ; preds = %229
  %234 = load i32, i32* @n_atab, align 4, !dbg !752, !tbaa !560
  %235 = icmp sgt i32 %234, 0, !dbg !754
  br i1 %235, label %236, label %243, !dbg !755

236:                                              ; preds = %233
  %237 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !756, !tbaa !758
  %238 = call i8* @strcpy(i8* nonnull dereferenceable(1) %237, i8* nonnull %47) #14, !dbg !759
  %239 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !760, !tbaa !761
  %240 = call i8* @strcpy(i8* nonnull dereferenceable(1) %239, i8* nonnull %49) #14, !dbg !762
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !763, !tbaa !764
  %241 = load i32, i32* @n_atab, align 4, !dbg !765, !tbaa !560
  store i32 %241, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !766, !tbaa !767
  call fastcc void @makebonds() #14, !dbg !768
  %242 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #14, !dbg !769
  call fastcc void @initres() #14, !dbg !770
  store i32 0, i32* @n_atab, align 4, !dbg !771, !tbaa !560
  br label %243, !dbg !772

243:                                              ; preds = %236, %233
  %244 = add nsw i32 %109, 1, !dbg !773
  call void @llvm.dbg.value(metadata i32 %244, metadata !411, metadata !DIExpression()) #14, !dbg !500
  %245 = icmp eq i8 %202, 32, !dbg !774
  br i1 %245, label %246, label %248, !dbg !775

246:                                              ; preds = %243
  %247 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %44, i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %244) #14, !dbg !776
  br label %249, !dbg !776

248:                                              ; preds = %243
  store i8 %202, i8* %44, align 1, !dbg !777, !tbaa !464
  store i8 0, i8* %103, align 1, !dbg !778, !tbaa !464
  br label %249

249:                                              ; preds = %248, %246
  %250 = call i32 @addstrand(%struct.molecule_t* %79, i8* nonnull %44) #14, !dbg !779
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !436, metadata !DIExpression()) #14, !dbg !780
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !445, metadata !DIExpression()) #14, !dbg !780
  %251 = load %struct.strand_t*, %struct.strand_t** %104, align 8, !dbg !582, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %251, metadata !445, metadata !DIExpression()) #14, !dbg !780
  %252 = icmp eq %struct.strand_t* %251, null, !dbg !781
  br i1 %252, label %263, label %253, !dbg !781

253:                                              ; preds = %249, %259
  %254 = phi %struct.strand_t* [ %261, %259 ], [ %251, %249 ]
  %255 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %254, i64 0, i32 0, !dbg !782
  %256 = load i8*, i8** %255, align 8, !dbg !782, !tbaa !786
  %257 = call i32 @strcmp(i8* nonnull dereferenceable(1) %256, i8* nonnull %44) #13, !dbg !788
  %258 = icmp eq i32 %257, 0, !dbg !788
  br i1 %258, label %263, label %259, !dbg !789

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %254, i64 0, i32 4, !dbg !790
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !445, metadata !DIExpression()) #14, !dbg !780
  %261 = load %struct.strand_t*, %struct.strand_t** %260, align 8, !dbg !582, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %261, metadata !445, metadata !DIExpression()) #14, !dbg !780
  %262 = icmp eq %struct.strand_t* %261, null, !dbg !781
  br i1 %262, label %263, label %253, !dbg !781, !llvm.loop !791

263:                                              ; preds = %259, %253, %249
  %264 = phi %struct.strand_t* [ null, %249 ], [ null, %259 ], [ %254, %253 ], !dbg !582
  call void @llvm.dbg.value(metadata %struct.strand_t* %264, metadata !436, metadata !DIExpression()) #14, !dbg !780
  %265 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %264, i64 0, i32 6, !dbg !793
  store i32 10000, i32* %265, align 4, !dbg !794, !tbaa !795
  %266 = call noalias dereferenceable_or_null(1280000) i8* @malloc(i64 1280000) #14, !dbg !796
  %267 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %264, i64 0, i32 7, !dbg !797
  %268 = bitcast %struct.residue_t*** %267 to i8**, !dbg !798
  store i8* %266, i8** %268, align 8, !dbg !798, !tbaa !799
  call void @llvm.dbg.value(metadata i32 %203, metadata !409, metadata !DIExpression()) #14, !dbg !500
  %269 = call i8* @strcpy(i8* nonnull %47, i8* nonnull %46) #14, !dbg !800
  %270 = call i8* @strcpy(i8* nonnull %49, i8* nonnull %48) #14, !dbg !801
  %271 = load i32, i32* %11, align 4, !dbg !802, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %271, metadata !424, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %271, metadata !425, metadata !DIExpression()) #14, !dbg !500
  br label %288, !dbg !803

272:                                              ; preds = %229
  %273 = load i32, i32* %11, align 4, !dbg !804, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %273, metadata !424, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i8* %47, metadata !806, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata i8* %46, metadata !811, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata i32 %110, metadata !812, metadata !DIExpression()) #14, !dbg !814
  call void @llvm.dbg.value(metadata i32 %273, metadata !813, metadata !DIExpression()) #14, !dbg !814
  %274 = call i32 @strcmp(i8* nonnull dereferenceable(1) %47, i8* nonnull dereferenceable(1) %46) #13, !dbg !816
  %275 = icmp eq i32 %274, 0, !dbg !816
  %276 = icmp eq i32 %110, %273, !dbg !817
  %277 = and i1 %276, %275, !dbg !818
  br i1 %277, label %288, label %278, !dbg !819

278:                                              ; preds = %272
  %279 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !820, !tbaa !758
  %280 = call i8* @strcpy(i8* nonnull dereferenceable(1) %279, i8* nonnull %47) #14, !dbg !822
  %281 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !823, !tbaa !761
  %282 = call i8* @strcpy(i8* nonnull dereferenceable(1) %281, i8* nonnull %49) #14, !dbg !824
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !825, !tbaa !764
  %283 = load i32, i32* @n_atab, align 4, !dbg !826, !tbaa !560
  store i32 %283, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !827, !tbaa !767
  call fastcc void @makebonds() #14, !dbg !828
  %284 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #14, !dbg !829
  call fastcc void @initres() #14, !dbg !830
  %285 = call i8* @strcpy(i8* nonnull %47, i8* nonnull %46) #14, !dbg !831
  %286 = call i8* @strcpy(i8* nonnull %49, i8* nonnull %48) #14, !dbg !832
  %287 = load i32, i32* %11, align 4, !dbg !833, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %287, metadata !424, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %287, metadata !425, metadata !DIExpression()) #14, !dbg !500
  store i32 0, i32* @n_atab, align 4, !dbg !834, !tbaa !560
  br label %288, !dbg !835

288:                                              ; preds = %278, %272, %263
  %289 = phi i32 [ %271, %263 ], [ %287, %278 ], [ %110, %272 ], !dbg !500
  %290 = phi i32 [ %244, %263 ], [ %109, %278 ], [ %109, %272 ], !dbg !836
  %291 = phi i32 [ %203, %263 ], [ %108, %278 ], [ %108, %272 ], !dbg !500
  call void @llvm.dbg.value(metadata i32 %291, metadata !409, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %290, metadata !411, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %289, metadata !425, metadata !DIExpression()) #14, !dbg !500
  %292 = load i32, i32* @n_atab, align 4, !dbg !837, !tbaa !560
  %293 = sext i32 %292 to i64, !dbg !838
  %294 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, !dbg !838
  call void @llvm.dbg.value(metadata %struct.atom_t* %294, metadata !408, metadata !DIExpression()) #14, !dbg !500
  call void @NAB_initatom(%struct.atom_t* nonnull %294, i32 0) #14, !dbg !839
  %295 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %294, i64 0, i32 0, !dbg !840
  %296 = load i8*, i8** %295, align 16, !dbg !840, !tbaa !528
  %297 = call i8* @strcpy(i8* nonnull dereferenceable(1) %296, i8* nonnull %45) #14, !dbg !841
  %298 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 2, !dbg !842
  store i32 0, i32* %298, align 16, !dbg !843, !tbaa !844
  %299 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 5, !dbg !845
  store %struct.residue_t* null, %struct.residue_t** %299, align 8, !dbg !846, !tbaa !847
  %300 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 17, i64 0, !dbg !848
  store double %206, double* %300, align 16, !dbg !849, !tbaa !720
  %301 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 17, i64 1, !dbg !850
  store double %208, double* %301, align 8, !dbg !851, !tbaa !720
  %302 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 17, i64 2, !dbg !852
  store double %210, double* %302, align 16, !dbg !853, !tbaa !720
  %303 = load i64, i64* %105, align 8, !dbg !854, !tbaa !720
  call void @llvm.dbg.value(metadata double undef, metadata !429, metadata !DIExpression()) #14, !dbg !500
  %304 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 6, !dbg !855
  %305 = bitcast double* %304 to i64*, !dbg !856
  store i64 %303, i64* %305, align 16, !dbg !856, !tbaa !857
  %306 = load i64, i64* %106, align 8, !dbg !858, !tbaa !720
  call void @llvm.dbg.value(metadata double undef, metadata !430, metadata !DIExpression()) #14, !dbg !500
  %307 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 7, !dbg !859
  %308 = bitcast double* %307 to i64*, !dbg !860
  store i64 %306, i64* %308, align 8, !dbg !860, !tbaa !861
  %309 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 9, !dbg !862
  store double %230, double* %309, align 8, !dbg !863, !tbaa !864
  %310 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 8, !dbg !865
  store double %231, double* %310, align 16, !dbg !866, !tbaa !867
  %311 = load i32, i32* @n_atab, align 4, !dbg !868, !tbaa !560
  %312 = add nsw i32 %311, 1, !dbg !868
  store i32 %312, i32* @n_atab, align 4, !dbg !868, !tbaa !560
  br label %330, !dbg !869

313:                                              ; preds = %124
  %314 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* nonnull dereferenceable(3) %43, i64 3) #14, !dbg !870
  %315 = icmp eq i32 %314, 0, !dbg !872
  br i1 %315, label %316, label %327, !dbg !873

316:                                              ; preds = %313
  %317 = load i32, i32* @n_atab, align 4, !dbg !874, !tbaa !560
  %318 = icmp sgt i32 %317, 0, !dbg !877
  br i1 %318, label %319, label %326, !dbg !878

319:                                              ; preds = %316
  %320 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !879, !tbaa !758
  %321 = call i8* @strcpy(i8* nonnull dereferenceable(1) %320, i8* nonnull %47) #14, !dbg !881
  %322 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !882, !tbaa !761
  %323 = call i8* @strcpy(i8* nonnull dereferenceable(1) %322, i8* nonnull %49) #14, !dbg !883
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !884, !tbaa !764
  %324 = load i32, i32* @n_atab, align 4, !dbg !885, !tbaa !560
  store i32 %324, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !886, !tbaa !767
  call fastcc void @makebonds() #14, !dbg !887
  %325 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #14, !dbg !888
  call fastcc void @initres() #14, !dbg !889
  store i32 0, i32* @n_atab, align 4, !dbg !890, !tbaa !560
  br label %326, !dbg !891

326:                                              ; preds = %319, %316
  call void @llvm.dbg.value(metadata i32 0, metadata !409, metadata !DIExpression()) #14, !dbg !500
  store i8 0, i8* %47, align 1, !dbg !892, !tbaa !464
  store i8 0, i8* %49, align 1, !dbg !893, !tbaa !464
  call void @llvm.dbg.value(metadata i32 0, metadata !425, metadata !DIExpression()) #14, !dbg !500
  br label %330, !dbg !894

327:                                              ; preds = %313
  %328 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* nonnull dereferenceable(3) %43, i64 3) #14, !dbg !895
  %329 = icmp eq i32 %328, 0, !dbg !897
  br i1 %329, label %336, label %330, !dbg !898

330:                                              ; preds = %327, %326, %288
  %331 = phi i32 [ %289, %288 ], [ 0, %326 ], [ %110, %327 ], !dbg !500
  %332 = phi i32 [ %290, %288 ], [ %109, %326 ], [ %109, %327 ], !dbg !836
  %333 = phi i32 [ %291, %288 ], [ 0, %326 ], [ %108, %327 ], !dbg !500
  call void @llvm.dbg.value(metadata i32 %333, metadata !409, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %332, metadata !411, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %331, metadata !425, metadata !DIExpression()) #14, !dbg !500
  %334 = call i8* @ggets(i8* nonnull %43, i32 82, %struct._IO_FILE* %42) #14, !dbg !561
  %335 = icmp eq i8* %334, null, !dbg !563
  br i1 %335, label %336, label %107, !dbg !564, !llvm.loop !899

336:                                              ; preds = %330, %327, %78
  %337 = phi i32 [ 0, %78 ], [ %331, %330 ], [ %110, %327 ], !dbg !500
  call void @llvm.dbg.value(metadata i32 %337, metadata !425, metadata !DIExpression()) #14, !dbg !500
  call void @llvm.dbg.value(metadata i32 %337, metadata !425, metadata !DIExpression()) #14, !dbg !500
  %338 = load i32, i32* @n_atab, align 4, !dbg !902, !tbaa !560
  %339 = icmp sgt i32 %338, 0, !dbg !904
  br i1 %339, label %340, label %347, !dbg !905

340:                                              ; preds = %336
  %341 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !906, !tbaa !758
  %342 = call i8* @strcpy(i8* nonnull dereferenceable(1) %341, i8* nonnull %47) #14, !dbg !908
  %343 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !909, !tbaa !761
  %344 = call i8* @strcpy(i8* nonnull dereferenceable(1) %343, i8* nonnull %49) #14, !dbg !910
  store i32 %337, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !911, !tbaa !764
  %345 = load i32, i32* @n_atab, align 4, !dbg !912, !tbaa !560
  store i32 %345, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !913, !tbaa !767
  call fastcc void @makebonds() #14, !dbg !914
  %346 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #14, !dbg !915
  call fastcc void @initres() #14, !dbg !916
  br label %347, !dbg !917

347:                                              ; preds = %336, %340
  %348 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %79, i64 0, i32 5, !dbg !918
  store i32 0, i32* %348, align 8, !dbg !919, !tbaa !920
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %54) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %51) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %50) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %49) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %48) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %47) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %46) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %45) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %44) #14, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 82, i8* nonnull %43) #14, !dbg !922
  call void @llvm.dbg.value(metadata %struct.molecule_t* %79, metadata !398, metadata !DIExpression()), !dbg !459
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !923, !tbaa !470
  %350 = icmp eq %struct._IO_FILE* %42, %349, !dbg !925
  br i1 %350, label %356, label %351, !dbg !926

351:                                              ; preds = %347
  %352 = call i32 @get_mytaskid() #14, !dbg !927
  %353 = icmp eq i32 %352, 0, !dbg !930
  br i1 %353, label %354, label %356, !dbg !931

354:                                              ; preds = %351
  %355 = call i32 @fclose(%struct._IO_FILE* %42), !dbg !932
  br label %356, !dbg !934

356:                                              ; preds = %347, %351, %354
  ret %struct.molecule_t* %79, !dbg !935
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #3

declare !dbg !34 dso_local i32 @get_mytaskid() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #5

declare !dbg !40 dso_local void @reducerror(i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !43 dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local nonnull [4 x [4 x double]]* @getmatrix(i8* %0) local_unnamed_addr #0 !dbg !2 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !370, metadata !DIExpression()), !dbg !936
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #14, !dbg !937
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !374, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i32 0, metadata !382, metadata !DIExpression()), !dbg !936
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !939
  %4 = icmp eq i8* %0, null, !dbg !940
  br i1 %4, label %8, label %5, !dbg !942

5:                                                ; preds = %1
  %6 = load i8, i8* %0, align 1, !dbg !943, !tbaa !464
  %7 = icmp eq i8 %6, 0, !dbg !944
  br i1 %7, label %8, label %11, !dbg !945

8:                                                ; preds = %5, %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !946, !tbaa !470
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %9) #15, !dbg !948
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !936
  br label %50, !dbg !949

11:                                               ; preds = %5
  %12 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !950
  %13 = icmp eq i32 %12, 0, !dbg !950
  br i1 %13, label %14, label %16, !dbg !952

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !953, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %15, metadata !370, metadata !DIExpression()), !dbg !936
  br label %22, !dbg !954

16:                                               ; preds = %11
  %17 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !955
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !370, metadata !DIExpression()), !dbg !936
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !957
  br i1 %18, label %19, label %22, !dbg !958

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !959, !tbaa !470
  %21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %0) #15, !dbg !961
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !936
  br label %50, !dbg !962

22:                                               ; preds = %14, %16
  %23 = phi %struct._IO_FILE* [ %17, %16 ], [ %15, %14 ], !dbg !963
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !370, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i32 0, metadata !378, metadata !DIExpression()), !dbg !936
  br label %24, !dbg !964

24:                                               ; preds = %22, %27
  call void @llvm.dbg.value(metadata i64 0, metadata !378, metadata !DIExpression()), !dbg !936
  %25 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !966
  %26 = icmp eq i8* %25, null, !dbg !964
  br i1 %26, label %38, label %27, !dbg !964

27:                                               ; preds = %24
  %28 = load i8, i8* %3, align 16, !dbg !968, !tbaa !464
  %29 = icmp eq i8 %28, 35, !dbg !971
  br i1 %29, label %24, label %30, !dbg !972, !llvm.loop !973

30:                                               ; preds = %27
  %31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 1), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 2), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 0, i64 3)) #14, !dbg !975
  call void @llvm.dbg.value(metadata i32 %31, metadata !380, metadata !DIExpression()), !dbg !936
  %32 = icmp eq i32 %31, 4, !dbg !976
  br i1 %32, label %51, label %33, !dbg !978

33:                                               ; preds = %75, %66, %57, %30
  %34 = phi i32 [ %31, %30 ], [ %58, %57 ], [ %67, %66 ], [ %76, %75 ], !dbg !975
  %35 = phi i32 [ 1, %30 ], [ 2, %57 ], [ 3, %66 ], [ 4, %75 ]
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !979, !tbaa !470
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 %34) #15, !dbg !981
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !936
  br label %42, !dbg !982

38:                                               ; preds = %24, %51, %60, %69
  %39 = phi i32 [ 3, %69 ], [ 2, %60 ], [ 1, %51 ], [ 0, %24 ]
  call void @llvm.dbg.value(metadata i32 4, metadata !378, metadata !DIExpression()), !dbg !936
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !983, !tbaa !470
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %39) #15, !dbg !986
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !936
  br label %42, !dbg !987

42:                                               ; preds = %33, %38
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !936
  br label %43, !dbg !988

43:                                               ; preds = %42, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !370, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.label(metadata !383), !dbg !990
  %44 = icmp eq %struct._IO_FILE* %23, null, !dbg !988
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !991
  %46 = icmp eq %struct._IO_FILE* %23, %45, !dbg !992
  %47 = or i1 %44, %46, !dbg !993
  br i1 %47, label %50, label %48, !dbg !993

48:                                               ; preds = %43
  %49 = call i32 @fclose(%struct._IO_FILE* nonnull %23), !dbg !994
  br label %50, !dbg !994

50:                                               ; preds = %19, %8, %43, %48
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), metadata !381, metadata !DIExpression()), !dbg !936
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #14, !dbg !995
  ret [4 x [4 x double]]* @getmatrix.mat, !dbg !996

51:                                               ; preds = %30, %54
  call void @llvm.dbg.value(metadata i64 1, metadata !378, metadata !DIExpression()), !dbg !936
  %52 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !966
  %53 = icmp eq i8* %52, null, !dbg !964
  br i1 %53, label %38, label %54, !dbg !964

54:                                               ; preds = %51
  %55 = load i8, i8* %3, align 16, !dbg !968, !tbaa !464
  %56 = icmp eq i8 %55, 35, !dbg !971
  br i1 %56, label %51, label %57, !dbg !972, !llvm.loop !973

57:                                               ; preds = %54
  %58 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 1), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 2), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 1, i64 3)) #14, !dbg !975
  call void @llvm.dbg.value(metadata i32 %58, metadata !380, metadata !DIExpression()), !dbg !936
  %59 = icmp eq i32 %58, 4, !dbg !976
  br i1 %59, label %60, label %33, !dbg !978

60:                                               ; preds = %57, %63
  call void @llvm.dbg.value(metadata i64 2, metadata !378, metadata !DIExpression()), !dbg !936
  %61 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !966
  %62 = icmp eq i8* %61, null, !dbg !964
  br i1 %62, label %38, label %63, !dbg !964

63:                                               ; preds = %60
  %64 = load i8, i8* %3, align 16, !dbg !968, !tbaa !464
  %65 = icmp eq i8 %64, 35, !dbg !971
  br i1 %65, label %60, label %66, !dbg !972, !llvm.loop !973

66:                                               ; preds = %63
  %67 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 1), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 2), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 2, i64 3)) #14, !dbg !975
  call void @llvm.dbg.value(metadata i32 %67, metadata !380, metadata !DIExpression()), !dbg !936
  %68 = icmp eq i32 %67, 4, !dbg !976
  br i1 %68, label %69, label %33, !dbg !978

69:                                               ; preds = %66, %72
  call void @llvm.dbg.value(metadata i64 3, metadata !378, metadata !DIExpression()), !dbg !936
  %70 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !966
  %71 = icmp eq i8* %70, null, !dbg !964
  br i1 %71, label %38, label %72, !dbg !964

72:                                               ; preds = %69
  %73 = load i8, i8* %3, align 16, !dbg !968, !tbaa !464
  %74 = icmp eq i8 %73, 35, !dbg !971
  br i1 %74, label %69, label %75, !dbg !972, !llvm.loop !973

75:                                               ; preds = %72
  %76 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 0), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 1), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 2), double* nonnull getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 3, i64 3)) #14, !dbg !975
  call void @llvm.dbg.value(metadata i32 %76, metadata !380, metadata !DIExpression()), !dbg !936
  %77 = icmp eq i32 %76, 4, !dbg !976
  br i1 %77, label %43, label %33, !dbg !978
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare !dbg !103 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* readonly %1, i8* readonly %2) local_unnamed_addr #0 !dbg !997 {
  %4 = alloca [8 x i8], align 4
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !1006, metadata !DIExpression()), !dbg !1038
  %5 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !1023, metadata !DIExpression()), !dbg !1044
  %6 = alloca [7 x i8], align 1
  call void @llvm.dbg.declare(metadata [7 x i8]* %6, metadata !1025, metadata !DIExpression()), !dbg !1045
  %7 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !1029, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %0, metadata !1001, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1002, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8* %2, metadata !1003, metadata !DIExpression()), !dbg !1047
  %8 = icmp eq %struct.molecule_t* %1, null, !dbg !1048
  %9 = tail call i32 @get_mytaskid() #14, !dbg !1047
  %10 = icmp eq i32 %9, 0, !dbg !1047
  br i1 %8, label %11, label %15, !dbg !1050

11:                                               ; preds = %3
  br i1 %10, label %12, label %705, !dbg !1051

12:                                               ; preds = %11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1053, !tbaa !470
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %13) #15, !dbg !1056
  br label %705, !dbg !1057

15:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1005, metadata !DIExpression()), !dbg !1047
  br i1 %10, label %16, label %703, !dbg !1058

16:                                               ; preds = %15
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1059
  %18 = icmp eq i32 %17, 0, !dbg !1059
  br i1 %18, label %19, label %21, !dbg !1061

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1062, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !1004, metadata !DIExpression()), !dbg !1047
  br label %26, !dbg !1063

21:                                               ; preds = %16
  %22 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1064
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1004, metadata !DIExpression()), !dbg !1047
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !1066
  br i1 %23, label %24, label %26, !dbg !1067

24:                                               ; preds = %21
  %25 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1068
  call void @llvm.dbg.value(metadata i32 -1, metadata !1005, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i32 -1, metadata !1005, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1004, metadata !DIExpression()), !dbg !1047
  br label %703, !dbg !1070

26:                                               ; preds = %19, %21
  %27 = phi %struct._IO_FILE* [ %20, %19 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !1005, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1004, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1011, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1012, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %2, metadata !1013, metadata !DIExpression()) #14, !dbg !1071
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1072
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #14, !dbg !1072
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1073
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #14, !dbg !1073
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1074
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %30) #14, !dbg !1074
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %31) #14, !dbg !1075
  call void @llvm.dbg.value(metadata i32 0, metadata !1030, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1033, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1034, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1035, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1036, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1037, metadata !DIExpression()) #14, !dbg !1071
  %32 = icmp eq %struct._IO_FILE* %27, null, !dbg !1076
  br i1 %32, label %33, label %36, !dbg !1078

33:                                               ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1079, !tbaa !470
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %34) #16, !dbg !1081
  br label %698, !dbg !1082

36:                                               ; preds = %26
  %37 = icmp eq i8* %2, null, !dbg !1083
  br i1 %37, label %38, label %39, !dbg !1085

38:                                               ; preds = %36
  store i8 0, i8* %31, align 16, !dbg !1086, !tbaa !464
  br label %42, !dbg !1087

39:                                               ; preds = %36
  %40 = call i8* @strncpy(i8* nonnull %31, i8* nonnull %2, i64 255) #14, !dbg !1088
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255, !dbg !1090
  store i8 0, i8* %41, align 1, !dbg !1091, !tbaa !464
  br label %42

42:                                               ; preds = %39, %38
  %43 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #13, !dbg !1092
  %44 = icmp ne i8* %43, null, !dbg !1093
  call void @llvm.dbg.value(metadata i1 %44, metadata !1030, metadata !DIExpression()) #14, !dbg !1071
  %45 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #13, !dbg !1094
  %46 = icmp ne i8* %45, null, !dbg !1095
  call void @llvm.dbg.value(metadata i1 %46, metadata !1031, metadata !DIExpression()) #14, !dbg !1071
  %47 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #13, !dbg !1096
  %48 = icmp ne i8* %47, null, !dbg !1097
  call void @llvm.dbg.value(metadata i1 %48, metadata !1032, metadata !DIExpression()) #14, !dbg !1071
  %49 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #13, !dbg !1098
  %50 = icmp ne i8* %49, null, !dbg !1099
  call void @llvm.dbg.value(metadata i1 %50, metadata !1033, metadata !DIExpression()) #14, !dbg !1071
  %51 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #13, !dbg !1100
  %52 = icmp ne i8* %51, null, !dbg !1101
  call void @llvm.dbg.value(metadata i1 %52, metadata !1034, metadata !DIExpression()) #14, !dbg !1071
  %53 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #13, !dbg !1102
  %54 = icmp eq i8* %53, null, !dbg !1103
  call void @llvm.dbg.value(metadata i1 %54, metadata !1035, metadata !DIExpression()) #14, !dbg !1071
  %55 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #13, !dbg !1104
  %56 = icmp ne i8* %55, null, !dbg !1105
  call void @llvm.dbg.value(metadata i1 %56, metadata !1036, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i1 undef, metadata !1035, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i1 undef, metadata !1106, metadata !DIExpression()) #14, !dbg !1118
  call void @llvm.dbg.value(metadata i1 %56, metadata !1111, metadata !DIExpression()) #14, !dbg !1118
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1112, metadata !DIExpression()) #14, !dbg !1118
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1113, metadata !DIExpression()) #14, !dbg !1118
  call void @llvm.dbg.value(metadata i32 0, metadata !1116, metadata !DIExpression()) #14, !dbg !1118
  %57 = or i1 %54, %56, !dbg !1120
  br i1 %57, label %58, label %106, !dbg !1122

58:                                               ; preds = %42
  %59 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 16) #14, !dbg !1123
  %60 = bitcast i8* %59 to %struct.cid_t*, !dbg !1124
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1113, metadata !DIExpression()) #14, !dbg !1118
  %61 = icmp eq i8* %59, null, !dbg !1125
  br i1 %61, label %62, label %65, !dbg !1127

62:                                               ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1128, !tbaa !470
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %63) #16, !dbg !1130
  call void @llvm.dbg.value(metadata i32 undef, metadata !1116, metadata !DIExpression()) #14, !dbg !1118
  call void @llvm.dbg.label(metadata !1117) #14, !dbg !1131
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1132, metadata !DIExpression()) #14, !dbg !1137
  br label %106, !dbg !1141

65:                                               ; preds = %58
  %66 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #14, !dbg !1142
  %67 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !1143
  %68 = bitcast i8* %67 to i8**, !dbg !1143
  store i8* %66, i8** %68, align 8, !dbg !1144, !tbaa !1145
  %69 = icmp eq i8* %66, null, !dbg !1147
  br i1 %69, label %103, label %70, !dbg !1149

70:                                               ; preds = %65
  %71 = bitcast i8* %59 to i32*, !dbg !1150
  store i32 65, i32* %71, align 8, !dbg !1151, !tbaa !1152
  %72 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1153
  %73 = bitcast i8* %72 to i32*, !dbg !1153
  store i32 90, i32* %73, align 4, !dbg !1154, !tbaa !1155
  call void @llvm.dbg.value(metadata i32 65, metadata !1114, metadata !DIExpression()) #14, !dbg !1118
  %74 = getelementptr i8, i8* %66, i64 65, !dbg !1156
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(26) %74, i8 0, i64 26, i1 false) #14, !dbg !1158
  call void @llvm.dbg.value(metadata i32 undef, metadata !1114, metadata !DIExpression()) #14, !dbg !1118
  br i1 %56, label %75, label %106, !dbg !1160

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1161
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1115, metadata !DIExpression()) #14, !dbg !1118
  %77 = load %struct.strand_t*, %struct.strand_t** %76, align 8, !dbg !1165, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %77, metadata !1115, metadata !DIExpression()) #14, !dbg !1118
  %78 = icmp eq %struct.strand_t* %77, null, !dbg !1166
  br i1 %78, label %106, label %79, !dbg !1166

79:                                               ; preds = %75, %92
  %80 = phi %struct.strand_t* [ %94, %92 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i64 0, i32 0, !dbg !1167
  %82 = load i8*, i8** %81, align 8, !dbg !1167, !tbaa !786
  %83 = call i64 @strlen(i8* nonnull dereferenceable(1) %82) #13, !dbg !1171
  %84 = icmp eq i64 %83, 1, !dbg !1172
  br i1 %84, label %85, label %92, !dbg !1173

85:                                               ; preds = %79
  %86 = load i8, i8* %82, align 1, !dbg !1174, !tbaa !464
  call void @llvm.dbg.value(metadata i8 %86, metadata !1114, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1118
  %87 = add i8 %86, -65, !dbg !1176
  %88 = icmp ult i8 %87, 26, !dbg !1176
  br i1 %88, label %89, label %92, !dbg !1176

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i8 %86, metadata !1114, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1118
  %90 = zext i8 %86 to i64, !dbg !1178
  %91 = getelementptr inbounds i8, i8* %66, i64 %90, !dbg !1178
  store i8 1, i8* %91, align 1, !dbg !1179, !tbaa !464
  br label %92, !dbg !1178

92:                                               ; preds = %89, %85, %79
  %93 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i64 0, i32 4, !dbg !1180
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1115, metadata !DIExpression()) #14, !dbg !1118
  %94 = load %struct.strand_t*, %struct.strand_t** %93, align 8, !dbg !1165, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %94, metadata !1115, metadata !DIExpression()) #14, !dbg !1118
  %95 = icmp eq %struct.strand_t* %94, null, !dbg !1166
  br i1 %95, label %96, label %79, !dbg !1166, !llvm.loop !1181

96:                                               ; preds = %92
  %97 = load i8, i8* %74, align 1, !dbg !1183, !tbaa !464
  %98 = icmp eq i8 %97, 0, !dbg !1183
  br i1 %98, label %106, label %99, !dbg !1188

99:                                               ; preds = %96
  store i32 66, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %100 = getelementptr inbounds i8, i8* %66, i64 66, !dbg !1183
  %101 = load i8, i8* %100, align 1, !dbg !1183, !tbaa !464
  %102 = icmp eq i8 %101, 0, !dbg !1183
  br i1 %102, label %106, label %601, !dbg !1188

103:                                              ; preds = %65
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1190, !tbaa !470
  %105 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %104) #16, !dbg !1192
  call void @llvm.dbg.value(metadata i32 undef, metadata !1116, metadata !DIExpression()) #14, !dbg !1118
  call void @llvm.dbg.label(metadata !1117) #14, !dbg !1131
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1132, metadata !DIExpression()) #14, !dbg !1137
  call void @free(i8* nonnull %59) #14, !dbg !1193
  br label %106, !dbg !1196

106:                                              ; preds = %693, %689, %685, %681, %677, %673, %669, %665, %661, %657, %653, %649, %645, %641, %637, %633, %629, %625, %621, %617, %613, %609, %605, %601, %103, %99, %96, %75, %70, %62, %42
  %107 = phi %struct.cid_t* [ null, %42 ], [ %60, %70 ], [ null, %103 ], [ null, %62 ], [ %60, %689 ], [ %60, %685 ], [ %60, %681 ], [ %60, %677 ], [ %60, %673 ], [ %60, %669 ], [ %60, %665 ], [ %60, %661 ], [ %60, %657 ], [ %60, %653 ], [ %60, %649 ], [ %60, %645 ], [ %60, %641 ], [ %60, %637 ], [ %60, %633 ], [ %60, %629 ], [ %60, %625 ], [ %60, %621 ], [ %60, %617 ], [ %60, %613 ], [ %60, %609 ], [ %60, %605 ], [ %60, %601 ], [ %60, %99 ], [ %60, %96 ], [ %60, %75 ], [ %60, %693 ], !dbg !1118
  call void @llvm.dbg.value(metadata %struct.cid_t* %107, metadata !1037, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1015, metadata !DIExpression()) #14, !dbg !1071
  %108 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1197
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1020, metadata !DIExpression()) #14, !dbg !1071
  %109 = load %struct.strand_t*, %struct.strand_t** %108, align 8, !dbg !1199, !tbaa !470
  call void @llvm.dbg.value(metadata i32 0, metadata !1015, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata %struct.strand_t* %109, metadata !1020, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  %110 = icmp eq %struct.strand_t* %109, null, !dbg !1200
  br i1 %110, label %592, label %111, !dbg !1200

111:                                              ; preds = %106
  %112 = icmp eq %struct.cid_t* %107, null, !dbg !1201
  %113 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %107, i64 0, i32 0, !dbg !1215
  %114 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %107, i64 0, i32 1, !dbg !1215
  %115 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %107, i64 0, i32 2, !dbg !1217
  %116 = bitcast [8 x i8]* %4 to i32*, !dbg !1220
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1, !dbg !1234
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4, !dbg !1234
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2, !dbg !1250
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3, !dbg !1252
  %121 = bitcast [8 x i8]* %4 to i16*, !dbg !1254
  %122 = or i1 %48, %50, !dbg !1262
  %123 = xor i1 %122, true, !dbg !1262
  %124 = or i1 %44, %123, !dbg !1262
  %125 = or i1 %46, %124, !dbg !1262
  br label %126, !dbg !1200

126:                                              ; preds = %585, %111
  %127 = phi %struct.strand_t* [ %109, %111 ], [ %590, %585 ]
  %128 = phi i32 [ 0, %111 ], [ %587, %585 ]
  %129 = phi i32 [ 0, %111 ], [ %586, %585 ]
  call void @llvm.dbg.value(metadata i32 %128, metadata !1015, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %129, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata %struct.cid_t* %107, metadata !1207, metadata !DIExpression()) #14, !dbg !1264
  call void @llvm.dbg.value(metadata i1 undef, metadata !1208, metadata !DIExpression()) #14, !dbg !1264
  call void @llvm.dbg.value(metadata i1 %56, metadata !1209, metadata !DIExpression()) #14, !dbg !1264
  call void @llvm.dbg.value(metadata %struct.strand_t* %127, metadata !1210, metadata !DIExpression()) #14, !dbg !1264
  br i1 %57, label %130, label %170, !dbg !1265

130:                                              ; preds = %126
  br i1 %112, label %131, label %134, !dbg !1266

131:                                              ; preds = %130
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1267, !tbaa !470
  %133 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %132) #16, !dbg !1269
  br label %170, !dbg !1270

134:                                              ; preds = %130
  %135 = load i32, i32* %113, align 8, !dbg !1271, !tbaa !1152
  %136 = load i32, i32* %114, align 4, !dbg !1272, !tbaa !1155
  %137 = icmp sgt i32 %135, %136, !dbg !1273
  br i1 %137, label %170, label %138, !dbg !1274

138:                                              ; preds = %134
  br i1 %56, label %139, label %168, !dbg !1275

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %127, i64 0, i32 0, !dbg !1276
  %141 = load i8*, i8** %140, align 8, !dbg !1276, !tbaa !786
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %141) #13, !dbg !1278
  %143 = icmp eq i64 %142, 1, !dbg !1279
  br i1 %143, label %144, label %150, !dbg !1280

144:                                              ; preds = %139
  %145 = load i8, i8* %141, align 1, !dbg !1281, !tbaa !464
  call void @llvm.dbg.value(metadata i8 %145, metadata !1211, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #14, !dbg !1264
  %146 = add i8 %145, -65, !dbg !1283
  %147 = icmp ult i8 %146, 26, !dbg !1283
  br i1 %147, label %148, label %150, !dbg !1283

148:                                              ; preds = %144
  %149 = zext i8 %145 to i32, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %149, metadata !1211, metadata !DIExpression()) #14, !dbg !1264
  br label %170, !dbg !1285

150:                                              ; preds = %144, %139
  call void @llvm.dbg.value(metadata i32 %135, metadata !1211, metadata !DIExpression()) #14, !dbg !1264
  %151 = load i8*, i8** %115, align 8, !dbg !1286, !tbaa !1145
  %152 = sext i32 %135 to i64, !dbg !1287
  %153 = getelementptr inbounds i8, i8* %151, i64 %152, !dbg !1287
  store i8 1, i8* %153, align 1, !dbg !1288, !tbaa !464
  %154 = load i32, i32* %113, align 8, !dbg !1289, !tbaa !1152
  %155 = load i32, i32* %114, align 4, !dbg !1291, !tbaa !1155
  %156 = sext i32 %154 to i64, !dbg !1289
  %157 = sext i32 %155 to i64, !dbg !1289
  br label %158, !dbg !1289

158:                                              ; preds = %163, %150
  %159 = phi i64 [ %160, %163 ], [ %156, %150 ]
  %160 = add nsw i64 %159, 1, !dbg !1293
  %161 = trunc i64 %160 to i32, !dbg !1293
  store i32 %161, i32* %113, align 8, !dbg !1293, !tbaa !1152
  %162 = icmp slt i64 %159, %157, !dbg !1294
  br i1 %162, label %163, label %170, !dbg !1295

163:                                              ; preds = %158
  %164 = load i8*, i8** %115, align 8, !dbg !1296, !tbaa !1145
  %165 = getelementptr inbounds i8, i8* %164, i64 %160, !dbg !1299
  %166 = load i8, i8* %165, align 1, !dbg !1299, !tbaa !464
  %167 = icmp eq i8 %166, 0, !dbg !1299
  br i1 %167, label %170, label %158, !dbg !1300, !llvm.loop !1301

168:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 %135, metadata !1211, metadata !DIExpression()) #14, !dbg !1264
  %169 = add nsw i32 %135, 1, !dbg !1303
  store i32 %169, i32* %113, align 8, !dbg !1303, !tbaa !1152
  br label %170, !dbg !1305

170:                                              ; preds = %163, %158, %168, %148, %134, %131, %126
  %171 = phi i32 [ 32, %131 ], [ %149, %148 ], [ %135, %168 ], [ 32, %126 ], [ 32, %134 ], [ %135, %158 ], [ %135, %163 ], !dbg !1264
  call void @llvm.dbg.value(metadata i32 %171, metadata !1019, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 0, metadata !1014, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %128, metadata !1015, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %129, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  %172 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %127, i64 0, i32 5, !dbg !1306
  %173 = load i32, i32* %172, align 8, !dbg !1306, !tbaa !1307
  %174 = icmp sgt i32 %173, 0, !dbg !1308
  br i1 %174, label %175, label %585, !dbg !1309

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %127, i64 0, i32 7, !dbg !1310
  %177 = shl i32 %171, 24, !dbg !1311
  %178 = ashr exact i32 %177, 24, !dbg !1311
  br label %179, !dbg !1309

179:                                              ; preds = %578, %175
  %180 = phi i64 [ 0, %175 ], [ %580, %578 ]
  %181 = phi i32 [ %128, %175 ], [ %581, %578 ]
  %182 = phi i32 [ %129, %175 ], [ %579, %578 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !1014, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %181, metadata !1015, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %182, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  %183 = load %struct.residue_t**, %struct.residue_t*** %176, align 8, !dbg !1316, !tbaa !799
  %184 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %183, i64 %180, !dbg !1317
  %185 = load %struct.residue_t*, %struct.residue_t** %184, align 8, !dbg !1317, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %185, metadata !1021, metadata !DIExpression()) #14, !dbg !1071
  %186 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 5, !dbg !1318
  %187 = load i8*, i8** %186, align 8, !dbg !1318, !tbaa !761
  %188 = icmp eq i8* %187, null, !dbg !1319
  %189 = select i1 %188, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), i8* %187, !dbg !1319
  %190 = call i8* @strcpy(i8* nonnull %30, i8* nonnull dereferenceable(1) %189) #14, !dbg !1320
  %191 = getelementptr %struct.residue_t, %struct.residue_t* %185, i64 0, i32 4, !dbg !1321
  %192 = load i8*, i8** %191, align 8, !dbg !1321, !tbaa !758
  br i1 %48, label %193, label %263, !dbg !1322

193:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i8* %28, metadata !1323, metadata !DIExpression()) #14, !dbg !1327
  %194 = call i8* @strcpy(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(1) %192) #14, !dbg !1329
  %195 = load i32, i32* %116, align 4, !dbg !1330
  switch i32 %195, label %201 [
    i32 4281671, label %196
    i32 4539457, label %197
    i32 5851220, label %198
    i32 5527875, label %199
    i32 4280917, label %200
  ], !dbg !1332

196:                                              ; preds = %193
  store i32 4661280, i32* %116, align 4, !dbg !1333
  br label %201, !dbg !1334

197:                                              ; preds = %193
  store i32 4268064, i32* %116, align 4, !dbg !1335
  br label %201, !dbg !1335

198:                                              ; preds = %193
  store i32 5513248, i32* %116, align 4, !dbg !1337
  br label %201, !dbg !1337

199:                                              ; preds = %193
  store i32 4399136, i32* %116, align 4, !dbg !1339
  br label %201, !dbg !1339

200:                                              ; preds = %193
  store i32 5578784, i32* %116, align 4, !dbg !1341
  br label %201, !dbg !1341

201:                                              ; preds = %200, %199, %198, %197, %196, %193
  %202 = phi i32 [ 5578784, %200 ], [ 4399136, %199 ], [ 5513248, %198 ], [ 4661280, %196 ], [ 4268064, %197 ], [ %195, %193 ]
  %203 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #14, !dbg !1343
  %204 = icmp eq i32 %203, 0, !dbg !1343
  br i1 %204, label %205, label %206, !dbg !1345

205:                                              ; preds = %201
  store i32 4661280, i32* %116, align 4, !dbg !1346
  br label %206, !dbg !1346

206:                                              ; preds = %205, %201
  %207 = phi i32 [ 4661280, %205 ], [ %202, %201 ]
  %208 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #14, !dbg !1347
  %209 = icmp eq i32 %208, 0, !dbg !1347
  br i1 %209, label %210, label %211, !dbg !1349

210:                                              ; preds = %206
  store i32 4268064, i32* %116, align 4, !dbg !1350
  br label %211, !dbg !1350

211:                                              ; preds = %210, %206
  %212 = phi i32 [ 4268064, %210 ], [ %207, %206 ]
  %213 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #14, !dbg !1351
  %214 = icmp eq i32 %213, 0, !dbg !1351
  br i1 %214, label %215, label %216, !dbg !1353

215:                                              ; preds = %211
  store i32 5513248, i32* %116, align 4, !dbg !1354
  br label %216, !dbg !1354

216:                                              ; preds = %215, %211
  %217 = phi i32 [ 5513248, %215 ], [ %212, %211 ]
  %218 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #14, !dbg !1355
  %219 = icmp eq i32 %218, 0, !dbg !1355
  br i1 %219, label %220, label %221, !dbg !1357

220:                                              ; preds = %216
  store i32 4399136, i32* %116, align 4, !dbg !1358
  br label %221, !dbg !1358

221:                                              ; preds = %220, %216
  %222 = phi i32 [ 4399136, %220 ], [ %217, %216 ]
  %223 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #14, !dbg !1359
  %224 = icmp eq i32 %223, 0, !dbg !1359
  br i1 %224, label %225, label %226, !dbg !1361

225:                                              ; preds = %221
  store i32 4661280, i32* %116, align 4, !dbg !1362
  br label %226, !dbg !1362

226:                                              ; preds = %225, %221
  %227 = phi i32 [ 4661280, %225 ], [ %222, %221 ]
  %228 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #14, !dbg !1363
  %229 = icmp eq i32 %228, 0, !dbg !1363
  br i1 %229, label %230, label %231, !dbg !1365

230:                                              ; preds = %226
  store i32 4268064, i32* %116, align 4, !dbg !1366
  br label %231, !dbg !1366

231:                                              ; preds = %230, %226
  %232 = phi i32 [ 4268064, %230 ], [ %227, %226 ]
  %233 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #14, !dbg !1367
  %234 = icmp eq i32 %233, 0, !dbg !1367
  br i1 %234, label %235, label %236, !dbg !1369

235:                                              ; preds = %231
  store i32 5578784, i32* %116, align 4, !dbg !1370
  br label %236, !dbg !1370

236:                                              ; preds = %235, %231
  %237 = phi i32 [ 5578784, %235 ], [ %232, %231 ]
  %238 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #14, !dbg !1371
  %239 = icmp eq i32 %238, 0, !dbg !1371
  br i1 %239, label %240, label %241, !dbg !1373

240:                                              ; preds = %236
  store i32 4399136, i32* %116, align 4, !dbg !1374
  br label %336, !dbg !1375

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
  ], !dbg !1375

242:                                              ; preds = %241
  store i32 4661280, i32* %116, align 4, !dbg !1376
  br label %336, !dbg !1376

243:                                              ; preds = %241
  store i32 4268064, i32* %116, align 4, !dbg !1378
  br label %336, !dbg !1378

244:                                              ; preds = %241
  store i32 5513248, i32* %116, align 4, !dbg !1380
  br label %336, !dbg !1380

245:                                              ; preds = %241
  store i32 4399136, i32* %116, align 4, !dbg !1382
  br label %336, !dbg !1382

246:                                              ; preds = %241
  store i32 4661280, i32* %116, align 4, !dbg !1384
  br label %336, !dbg !1384

247:                                              ; preds = %241
  store i32 4268064, i32* %116, align 4, !dbg !1386
  br label %336, !dbg !1386

248:                                              ; preds = %241
  store i32 5578784, i32* %116, align 4, !dbg !1388
  br label %336, !dbg !1388

249:                                              ; preds = %241
  store i32 4399136, i32* %116, align 4, !dbg !1390
  br label %336, !dbg !1390

250:                                              ; preds = %241
  store i32 4661280, i32* %116, align 4, !dbg !1392
  br label %336, !dbg !1392

251:                                              ; preds = %241
  store i32 4268064, i32* %116, align 4, !dbg !1394
  br label %336, !dbg !1394

252:                                              ; preds = %241
  store i32 5513248, i32* %116, align 4, !dbg !1396
  br label %336, !dbg !1396

253:                                              ; preds = %241
  store i32 4399136, i32* %116, align 4, !dbg !1398
  br label %336, !dbg !1398

254:                                              ; preds = %241
  store i32 4661280, i32* %116, align 4, !dbg !1400
  br label %336, !dbg !1400

255:                                              ; preds = %241
  store i32 4268064, i32* %116, align 4, !dbg !1402
  br label %336, !dbg !1402

256:                                              ; preds = %241
  store i32 5578784, i32* %116, align 4, !dbg !1404
  br label %336, !dbg !1404

257:                                              ; preds = %241
  store i32 4399136, i32* %116, align 4, !dbg !1406
  br label %336, !dbg !1408

258:                                              ; preds = %241
  store i32 5458248, i32* %116, align 4, !dbg !1409
  br label %336, !dbg !1409

259:                                              ; preds = %241
  store i32 5458248, i32* %116, align 4, !dbg !1411
  br label %336, !dbg !1411

260:                                              ; preds = %241
  store i32 5462339, i32* %116, align 4, !dbg !1413
  br label %336, !dbg !1413

261:                                              ; preds = %241
  store i32 5264193, i32* %116, align 4, !dbg !1415
  br label %336, !dbg !1415

262:                                              ; preds = %241
  store i32 5590087, i32* %116, align 4, !dbg !1417
  br label %336, !dbg !1417

263:                                              ; preds = %179
  br i1 %50, label %264, label %334, !dbg !1419

264:                                              ; preds = %263
  call void @llvm.dbg.value(metadata i8* %28, metadata !1226, metadata !DIExpression()) #14, !dbg !1420
  %265 = call i8* @strcpy(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(1) %192) #14, !dbg !1421
  %266 = load i32, i32* %116, align 4, !dbg !1422
  switch i32 %266, label %272 [
    i32 4281671, label %267
    i32 4539457, label %268
    i32 5851220, label %269
    i32 5527875, label %270
    i32 4280917, label %271
  ], !dbg !1423

267:                                              ; preds = %264
  store i32 4661280, i32* %116, align 4, !dbg !1424
  br label %272, !dbg !1425

268:                                              ; preds = %264
  store i32 4268064, i32* %116, align 4, !dbg !1426
  br label %272, !dbg !1426

269:                                              ; preds = %264
  store i32 5513248, i32* %116, align 4, !dbg !1428
  br label %272, !dbg !1428

270:                                              ; preds = %264
  store i32 4399136, i32* %116, align 4, !dbg !1430
  br label %272, !dbg !1430

271:                                              ; preds = %264
  store i32 5578784, i32* %116, align 4, !dbg !1432
  br label %272, !dbg !1432

272:                                              ; preds = %271, %270, %269, %268, %267, %264
  %273 = phi i32 [ 5578784, %271 ], [ 4399136, %270 ], [ 5513248, %269 ], [ 4661280, %267 ], [ 4268064, %268 ], [ %266, %264 ]
  %274 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #14, !dbg !1434
  %275 = icmp eq i32 %274, 0, !dbg !1434
  br i1 %275, label %276, label %277, !dbg !1436

276:                                              ; preds = %272
  store i32 4670496, i32* %116, align 4, !dbg !1437
  br label %277, !dbg !1437

277:                                              ; preds = %276, %272
  %278 = phi i32 [ 4670496, %276 ], [ %273, %272 ]
  %279 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #14, !dbg !1438
  %280 = icmp eq i32 %279, 0, !dbg !1438
  br i1 %280, label %281, label %282, !dbg !1440

281:                                              ; preds = %277
  store i32 4277280, i32* %116, align 4, !dbg !1441
  br label %282, !dbg !1441

282:                                              ; preds = %281, %277
  %283 = phi i32 [ 4277280, %281 ], [ %278, %277 ]
  %284 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #14, !dbg !1442
  %285 = icmp eq i32 %284, 0, !dbg !1442
  br i1 %285, label %286, label %287, !dbg !1444

286:                                              ; preds = %282
  store i32 5522464, i32* %116, align 4, !dbg !1445
  br label %287, !dbg !1445

287:                                              ; preds = %286, %282
  %288 = phi i32 [ 5522464, %286 ], [ %283, %282 ]
  %289 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #14, !dbg !1446
  %290 = icmp eq i32 %289, 0, !dbg !1446
  br i1 %290, label %291, label %292, !dbg !1448

291:                                              ; preds = %287
  store i32 4408352, i32* %116, align 4, !dbg !1449
  br label %292, !dbg !1449

292:                                              ; preds = %291, %287
  %293 = phi i32 [ 4408352, %291 ], [ %288, %287 ]
  %294 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #14, !dbg !1450
  %295 = icmp eq i32 %294, 0, !dbg !1450
  br i1 %295, label %296, label %297, !dbg !1452

296:                                              ; preds = %292
  store i32 4674080, i32* %116, align 4, !dbg !1453
  br label %297, !dbg !1453

297:                                              ; preds = %296, %292
  %298 = phi i32 [ 4674080, %296 ], [ %293, %292 ]
  %299 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #14, !dbg !1454
  %300 = icmp eq i32 %299, 0, !dbg !1454
  br i1 %300, label %301, label %302, !dbg !1456

301:                                              ; preds = %297
  store i32 4280864, i32* %116, align 4, !dbg !1457
  br label %302, !dbg !1457

302:                                              ; preds = %301, %297
  %303 = phi i32 [ 4280864, %301 ], [ %298, %297 ]
  %304 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #14, !dbg !1458
  %305 = icmp eq i32 %304, 0, !dbg !1458
  br i1 %305, label %306, label %307, !dbg !1460

306:                                              ; preds = %302
  store i32 5591584, i32* %116, align 4, !dbg !1461
  br label %307, !dbg !1461

307:                                              ; preds = %306, %302
  %308 = phi i32 [ 5591584, %306 ], [ %303, %302 ]
  %309 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #14, !dbg !1462
  %310 = icmp eq i32 %309, 0, !dbg !1462
  br i1 %310, label %311, label %312, !dbg !1464

311:                                              ; preds = %307
  store i32 4411936, i32* %116, align 4, !dbg !1465
  br label %336, !dbg !1466

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
  ], !dbg !1466

313:                                              ; preds = %312
  store i32 4670496, i32* %116, align 4, !dbg !1467
  br label %336, !dbg !1467

314:                                              ; preds = %312
  store i32 4277280, i32* %116, align 4, !dbg !1469
  br label %336, !dbg !1469

315:                                              ; preds = %312
  store i32 5522464, i32* %116, align 4, !dbg !1471
  br label %336, !dbg !1471

316:                                              ; preds = %312
  store i32 4408352, i32* %116, align 4, !dbg !1473
  br label %336, !dbg !1473

317:                                              ; preds = %312
  store i32 4674080, i32* %116, align 4, !dbg !1475
  br label %336, !dbg !1475

318:                                              ; preds = %312
  store i32 4280864, i32* %116, align 4, !dbg !1477
  br label %336, !dbg !1477

319:                                              ; preds = %312
  store i32 5591584, i32* %116, align 4, !dbg !1479
  br label %336, !dbg !1479

320:                                              ; preds = %312
  store i32 4411936, i32* %116, align 4, !dbg !1481
  br label %336, !dbg !1481

321:                                              ; preds = %312
  store i32 4670496, i32* %116, align 4, !dbg !1483
  br label %336, !dbg !1483

322:                                              ; preds = %312
  store i32 4277280, i32* %116, align 4, !dbg !1485
  br label %336, !dbg !1485

323:                                              ; preds = %312
  store i32 5522464, i32* %116, align 4, !dbg !1487
  br label %336, !dbg !1487

324:                                              ; preds = %312
  store i32 4408352, i32* %116, align 4, !dbg !1489
  br label %336, !dbg !1489

325:                                              ; preds = %312
  store i32 4674080, i32* %116, align 4, !dbg !1491
  br label %336, !dbg !1491

326:                                              ; preds = %312
  store i32 4280864, i32* %116, align 4, !dbg !1493
  br label %336, !dbg !1493

327:                                              ; preds = %312
  store i32 5591584, i32* %116, align 4, !dbg !1495
  br label %336, !dbg !1495

328:                                              ; preds = %312
  store i32 4411936, i32* %116, align 4, !dbg !1497
  br label %336, !dbg !1499

329:                                              ; preds = %312
  store i32 5458248, i32* %116, align 4, !dbg !1500
  br label %336, !dbg !1500

330:                                              ; preds = %312
  store i32 5458248, i32* %116, align 4, !dbg !1502
  br label %336, !dbg !1502

331:                                              ; preds = %312
  store i32 5462339, i32* %116, align 4, !dbg !1504
  br label %336, !dbg !1504

332:                                              ; preds = %312
  store i32 5264193, i32* %116, align 4, !dbg !1506
  br label %336, !dbg !1506

333:                                              ; preds = %312
  store i32 5590087, i32* %116, align 4, !dbg !1508
  br label %336, !dbg !1508

334:                                              ; preds = %263
  %335 = call i8* @strcpy(i8* nonnull %28, i8* nonnull dereferenceable(1) %192) #14, !dbg !1510
  br label %336

336:                                              ; preds = %334, %333, %332, %331, %330, %329, %328, %327, %326, %325, %324, %323, %322, %321, %320, %319, %318, %317, %316, %315, %314, %313, %312, %311, %262, %261, %260, %259, %258, %257, %256, %255, %254, %253, %252, %251, %250, %249, %248, %247, %246, %245, %244, %243, %242, %241, %240
  call void @llvm.dbg.value(metadata i32 0, metadata !1017, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %182, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  %337 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 15, !dbg !1511
  %338 = load i32, i32* %337, align 8, !dbg !1511, !tbaa !767
  %339 = icmp sgt i32 %338, 0, !dbg !1512
  br i1 %339, label %340, label %578, !dbg !1513

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %185, i64 0, i32 17, !dbg !1514
  %342 = trunc i64 %180 to i32, !dbg !1515
  %343 = select i1 %52, i32 %181, i32 %342, !dbg !1515
  %344 = add nsw i32 %343, 1, !dbg !1515
  br label %345, !dbg !1513

345:                                              ; preds = %572, %340
  %346 = phi i64 [ 0, %340 ], [ %574, %572 ]
  %347 = phi i32 [ %182, %340 ], [ %348, %572 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1017, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %347, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  %348 = add nsw i32 %347, 1, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %348, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  %349 = load %struct.atom_t*, %struct.atom_t** %341, align 8, !dbg !1517, !tbaa !1518
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1022, metadata !DIExpression()) #14, !dbg !1071
  %350 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 0, !dbg !1519
  %351 = load i8*, i8** %350, align 8, !dbg !1519, !tbaa !528
  br i1 %48, label %352, label %380, !dbg !1520

352:                                              ; preds = %345
  call void @llvm.dbg.value(metadata i8* %29, metadata !1258, metadata !DIExpression()) #14, !dbg !1521
  call void @llvm.dbg.value(metadata i8* %351, metadata !1259, metadata !DIExpression()) #14, !dbg !1521
  call void @llvm.dbg.value(metadata i8* %28, metadata !1260, metadata !DIExpression()) #14, !dbg !1521
  store i8 32, i8* %29, align 1, !dbg !1522, !tbaa !464
  %353 = call i64 @strlen(i8* nonnull dereferenceable(1) %351) #13, !dbg !1523
  %354 = icmp ugt i64 %353, 3, !dbg !1525
  br i1 %354, label %355, label %360, !dbg !1526

355:                                              ; preds = %352
  %356 = getelementptr inbounds i8, i8* %351, i64 3, !dbg !1527
  %357 = load i8, i8* %356, align 1, !dbg !1527, !tbaa !464
  %358 = icmp eq i8 %357, 32, !dbg !1528
  br i1 %358, label %360, label %359, !dbg !1529

359:                                              ; preds = %355
  store i8 %357, i8* %29, align 1, !dbg !1530, !tbaa !464
  br label %360, !dbg !1531

360:                                              ; preds = %359, %355, %352
  %361 = load i8, i8* %351, align 1, !dbg !1532, !tbaa !464
  store i8 %361, i8* %117, align 1, !dbg !1533, !tbaa !464
  %362 = getelementptr inbounds i8, i8* %351, i64 1, !dbg !1534
  %363 = load i8, i8* %362, align 1, !dbg !1534, !tbaa !464
  store i8 %363, i8* %119, align 1, !dbg !1535, !tbaa !464
  %364 = getelementptr inbounds i8, i8* %351, i64 2, !dbg !1536
  %365 = load i8, i8* %364, align 1, !dbg !1536, !tbaa !464
  %366 = icmp eq i8 %365, 39, !dbg !1537
  %367 = select i1 %366, i8 42, i8 %365, !dbg !1539
  store i8 %367, i8* %120, align 1, !dbg !1521, !tbaa !464
  store i8 0, i8* %118, align 1, !dbg !1540, !tbaa !464
  %368 = call i32 @bcmp(i8* nonnull dereferenceable(2) %29, i8* nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #14, !dbg !1541
  %369 = icmp eq i32 %368, 0, !dbg !1541
  %370 = add i8 %367, -49, !dbg !1542
  %371 = icmp ult i8 %370, 3, !dbg !1542
  %372 = and i1 %369, %371, !dbg !1543
  br i1 %372, label %373, label %514, !dbg !1543

373:                                              ; preds = %360
  %374 = call i32 @bcmp(i8* nonnull dereferenceable(3) %29, i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #14, !dbg !1544
  %375 = icmp ne i32 %374, 0, !dbg !1544
  %376 = load i16, i16* %121, align 4, !dbg !1545
  %377 = icmp eq i16 %376, 18760, !dbg !1545
  %378 = and i1 %375, %377, !dbg !1546
  br i1 %378, label %514, label %379, !dbg !1546

379:                                              ; preds = %373
  store i8 %367, i8* %29, align 1, !dbg !1547, !tbaa !464
  store i8 32, i8* %120, align 1, !dbg !1549, !tbaa !464
  br label %514, !dbg !1550

380:                                              ; preds = %345
  br i1 %50, label %381, label %512, !dbg !1551

381:                                              ; preds = %380
  call void @llvm.dbg.value(metadata i8* %29, metadata !1241, metadata !DIExpression()) #14, !dbg !1552
  call void @llvm.dbg.value(metadata i8* %351, metadata !1242, metadata !DIExpression()) #14, !dbg !1552
  call void @llvm.dbg.value(metadata i8* undef, metadata !1243, metadata !DIExpression()) #14, !dbg !1552
  %382 = call i64 @strlen(i8* nonnull dereferenceable(1) %351) #13, !dbg !1553
  %383 = icmp ugt i64 %382, 3, !dbg !1554
  br i1 %383, label %384, label %390, !dbg !1555

384:                                              ; preds = %381
  %385 = getelementptr inbounds i8, i8* %351, i64 3, !dbg !1556
  %386 = load i8, i8* %385, align 1, !dbg !1556, !tbaa !464
  %387 = icmp eq i8 %386, 32, !dbg !1557
  br i1 %387, label %390, label %388, !dbg !1558

388:                                              ; preds = %384
  %389 = call i8* @strncpy(i8* nonnull dereferenceable(1) %29, i8* nonnull dereferenceable(1) %351, i64 5) #14, !dbg !1559
  br label %392, !dbg !1561

390:                                              ; preds = %384, %381
  store i8 32, i8* %29, align 1, !dbg !1562, !tbaa !464
  %391 = call i8* @strncpy(i8* nonnull %117, i8* nonnull dereferenceable(1) %351, i64 3) #14, !dbg !1563
  store i8 0, i8* %118, align 1, !dbg !1564, !tbaa !464
  br label %392

392:                                              ; preds = %390, %388
  %393 = load i8, i8* %117, align 1, !dbg !1565, !tbaa !464
  %394 = icmp eq i8 %393, 0, !dbg !1567
  br i1 %394, label %395, label %396, !dbg !1568

395:                                              ; preds = %392
  store i8 32, i8* %117, align 1, !dbg !1569, !tbaa !464
  br label %396, !dbg !1570

396:                                              ; preds = %395, %392
  %397 = phi i8 [ 32, %395 ], [ %393, %392 ]
  %398 = load i8, i8* %119, align 1, !dbg !1571, !tbaa !464
  %399 = icmp eq i8 %398, 0, !dbg !1572
  br i1 %399, label %400, label %401, !dbg !1573

400:                                              ; preds = %396
  store i8 32, i8* %119, align 1, !dbg !1574, !tbaa !464
  br label %401, !dbg !1575

401:                                              ; preds = %400, %396
  %402 = phi i8 [ 32, %400 ], [ %398, %396 ]
  %403 = load i8, i8* %120, align 1, !dbg !1576, !tbaa !464
  %404 = icmp eq i8 %403, 0, !dbg !1577
  br i1 %404, label %405, label %406, !dbg !1578

405:                                              ; preds = %401
  store i8 32, i8* %120, align 1, !dbg !1579, !tbaa !464
  br label %406, !dbg !1580

406:                                              ; preds = %405, %401
  %407 = phi i8 [ 32, %405 ], [ %403, %401 ]
  %408 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #14, !dbg !1581
  %409 = icmp eq i32 %408, 0, !dbg !1581
  br i1 %409, label %410, label %411, !dbg !1583

410:                                              ; preds = %406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1584
  br label %411, !dbg !1584

411:                                              ; preds = %410, %406
  %412 = phi i8 [ %407, %406 ], [ 39, %410 ]
  %413 = phi i8 [ %402, %406 ], [ 53, %410 ]
  %414 = phi i8 [ %397, %406 ], [ 72, %410 ]
  %415 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #14, !dbg !1585
  %416 = icmp eq i32 %415, 0, !dbg !1585
  br i1 %416, label %417, label %418, !dbg !1587

417:                                              ; preds = %411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1588
  br label %418, !dbg !1588

418:                                              ; preds = %417, %411
  %419 = phi i8 [ %412, %411 ], [ 39, %417 ]
  %420 = phi i8 [ %413, %411 ], [ 39, %417 ]
  %421 = phi i8 [ %414, %411 ], [ 53, %417 ]
  %422 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #14, !dbg !1589
  %423 = icmp eq i32 %422, 0, !dbg !1589
  br i1 %423, label %424, label %425, !dbg !1591

424:                                              ; preds = %418
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1592
  br label %425, !dbg !1592

425:                                              ; preds = %424, %418
  %426 = phi i8 [ %419, %418 ], [ 39, %424 ]
  %427 = phi i8 [ %420, %418 ], [ 50, %424 ]
  %428 = phi i8 [ %421, %418 ], [ 72, %424 ]
  %429 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #14, !dbg !1593
  %430 = icmp eq i32 %429, 0, !dbg !1593
  br i1 %430, label %431, label %432, !dbg !1595

431:                                              ; preds = %425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1596
  br label %432, !dbg !1596

432:                                              ; preds = %431, %425
  %433 = phi i8 [ %426, %425 ], [ 39, %431 ]
  %434 = phi i8 [ %427, %425 ], [ 39, %431 ]
  %435 = phi i8 [ %428, %425 ], [ 50, %431 ]
  %436 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #14, !dbg !1597
  %437 = icmp eq i32 %436, 0, !dbg !1597
  br i1 %437, label %438, label %439, !dbg !1599

438:                                              ; preds = %432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1600
  br label %439, !dbg !1600

439:                                              ; preds = %438, %432
  %440 = phi i8 [ %433, %432 ], [ 49, %438 ]
  %441 = phi i8 [ %434, %432 ], [ 80, %438 ]
  %442 = phi i8 [ %435, %432 ], [ 79, %438 ]
  %443 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #14, !dbg !1601
  %444 = icmp eq i32 %443, 0, !dbg !1601
  br i1 %444, label %445, label %446, !dbg !1603

445:                                              ; preds = %439
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1604
  br label %446, !dbg !1604

446:                                              ; preds = %445, %439
  %447 = phi i8 [ %440, %439 ], [ 50, %445 ]
  %448 = phi i8 [ %441, %439 ], [ 80, %445 ]
  %449 = phi i8 [ %442, %439 ], [ 79, %445 ]
  %450 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #14, !dbg !1605
  %451 = icmp eq i32 %450, 0, !dbg !1605
  br i1 %451, label %452, label %453, !dbg !1607

452:                                              ; preds = %446
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1608
  br label %453, !dbg !1608

453:                                              ; preds = %452, %446
  %454 = phi i8 [ %447, %446 ], [ 39, %452 ]
  %455 = phi i8 [ %448, %446 ], [ 53, %452 ]
  %456 = phi i8 [ %449, %446 ], [ 79, %452 ]
  %457 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #14, !dbg !1609
  %458 = icmp eq i32 %457, 0, !dbg !1609
  br i1 %458, label %459, label %460, !dbg !1611

459:                                              ; preds = %453
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5, i1 false) #14, !dbg !1612
  br label %460, !dbg !1612

460:                                              ; preds = %459, %453
  %461 = phi i8 [ %454, %453 ], [ 39, %459 ]
  %462 = phi i8 [ %455, %453 ], [ 51, %459 ]
  %463 = phi i8 [ %456, %453 ], [ 79, %459 ]
  %464 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #14, !dbg !1613
  %465 = icmp eq i32 %464, 0, !dbg !1613
  br i1 %465, label %511, label %466, !dbg !1615

466:                                              ; preds = %460
  %467 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #14, !dbg !1616
  %468 = icmp eq i32 %467, 0, !dbg !1616
  br i1 %468, label %511, label %469, !dbg !1617

469:                                              ; preds = %466
  %470 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #14, !dbg !1618
  %471 = icmp eq i32 %470, 0, !dbg !1618
  br i1 %471, label %511, label %472, !dbg !1619

472:                                              ; preds = %469
  %473 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #14, !dbg !1620
  %474 = icmp eq i32 %473, 0, !dbg !1620
  br i1 %474, label %511, label %475, !dbg !1621

475:                                              ; preds = %472
  %476 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #14, !dbg !1622
  %477 = icmp eq i32 %476, 0, !dbg !1622
  br i1 %477, label %511, label %478, !dbg !1623

478:                                              ; preds = %475
  %479 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #14, !dbg !1624
  %480 = icmp eq i32 %479, 0, !dbg !1624
  br i1 %480, label %511, label %481, !dbg !1625

481:                                              ; preds = %478
  %482 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #14, !dbg !1626
  %483 = icmp eq i32 %482, 0, !dbg !1626
  br i1 %483, label %511, label %484, !dbg !1627

484:                                              ; preds = %481
  %485 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #14, !dbg !1628
  %486 = icmp eq i32 %485, 0, !dbg !1628
  br i1 %486, label %511, label %487, !dbg !1629

487:                                              ; preds = %484
  %488 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #14, !dbg !1630
  %489 = icmp eq i32 %488, 0, !dbg !1630
  br i1 %489, label %511, label %490, !dbg !1631

490:                                              ; preds = %487
  %491 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #14, !dbg !1632
  %492 = icmp eq i32 %491, 0, !dbg !1632
  br i1 %492, label %511, label %493, !dbg !1633

493:                                              ; preds = %490
  %494 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #14, !dbg !1634
  %495 = icmp eq i32 %494, 0, !dbg !1634
  br i1 %495, label %511, label %496, !dbg !1635

496:                                              ; preds = %493
  %497 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #14, !dbg !1636
  %498 = icmp eq i32 %497, 0, !dbg !1636
  br i1 %498, label %511, label %499, !dbg !1637

499:                                              ; preds = %496
  %500 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #14, !dbg !1638
  %501 = icmp eq i32 %500, 0, !dbg !1638
  br i1 %501, label %511, label %502, !dbg !1639

502:                                              ; preds = %499
  %503 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #14, !dbg !1640
  %504 = icmp eq i32 %503, 0, !dbg !1640
  br i1 %504, label %511, label %505, !dbg !1641

505:                                              ; preds = %502
  %506 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #14, !dbg !1642
  %507 = icmp eq i32 %506, 0, !dbg !1642
  br i1 %507, label %511, label %508, !dbg !1643

508:                                              ; preds = %505
  %509 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #14, !dbg !1644
  %510 = icmp eq i32 %509, 0, !dbg !1644
  br i1 %510, label %511, label %514, !dbg !1645

511:                                              ; preds = %508, %505, %502, %499, %496, %493, %490, %487, %484, %481, %478, %475, %472, %469, %466, %460
  store i8 %463, i8* %29, align 1, !dbg !1646, !tbaa !464
  store i8 %462, i8* %117, align 1, !dbg !1648, !tbaa !464
  store i8 %461, i8* %119, align 1, !dbg !1649, !tbaa !464
  store i8 32, i8* %120, align 1, !dbg !1650, !tbaa !464
  br label %514, !dbg !1651

512:                                              ; preds = %380
  %513 = call i8* @strcpy(i8* nonnull %29, i8* nonnull dereferenceable(1) %351) #14, !dbg !1652
  br label %514

514:                                              ; preds = %512, %511, %508, %379, %373, %360
  %515 = load i8, i8* %30, align 1, !dbg !1653
  %516 = icmp eq i8 %515, 0, !dbg !1653
  %517 = or i1 %52, %516, !dbg !1654
  %518 = icmp slt i32 %347, 99999, !dbg !1655
  br i1 %517, label %519, label %537, !dbg !1654

519:                                              ; preds = %514
  call void @llvm.dbg.value(metadata i32 %344, metadata !1016, metadata !DIExpression()) #14, !dbg !1071
  br i1 %518, label %520, label %528, !dbg !1656

520:                                              ; preds = %519
  %521 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 0, !dbg !1657
  %522 = load double, double* %521, align 8, !dbg !1657, !tbaa !720
  %523 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 1, !dbg !1659
  %524 = load double, double* %523, align 8, !dbg !1659, !tbaa !720
  %525 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 2, !dbg !1660
  %526 = load double, double* %525, align 8, !dbg !1660, !tbaa !720
  %527 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %348, i8* nonnull %29, i8* nonnull %28, i32 %178, i32 %344, double %522, double %524, double %526) #14, !dbg !1661
  br label %555, !dbg !1662

528:                                              ; preds = %519
  %529 = srem i32 %348, 100000, !dbg !1663
  %530 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 0, !dbg !1664
  %531 = load double, double* %530, align 8, !dbg !1664, !tbaa !720
  %532 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 1, !dbg !1665
  %533 = load double, double* %532, align 8, !dbg !1665, !tbaa !720
  %534 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 2, !dbg !1666
  %535 = load double, double* %534, align 8, !dbg !1666, !tbaa !720
  %536 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %529, i8* nonnull %29, i8* nonnull %28, i32 %178, i32 %344, double %531, double %533, double %535) #14, !dbg !1667
  br label %555

537:                                              ; preds = %514
  br i1 %518, label %538, label %546, !dbg !1668

538:                                              ; preds = %537
  %539 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 0, !dbg !1670
  %540 = load double, double* %539, align 8, !dbg !1670, !tbaa !720
  %541 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 1, !dbg !1673
  %542 = load double, double* %541, align 8, !dbg !1673, !tbaa !720
  %543 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 2, !dbg !1674
  %544 = load double, double* %543, align 8, !dbg !1674, !tbaa !720
  %545 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %348, i8* nonnull %29, i8* nonnull %28, i8* nonnull %30, double %540, double %542, double %544) #14, !dbg !1675
  br label %555, !dbg !1676

546:                                              ; preds = %537
  %547 = srem i32 %348, 100000, !dbg !1677
  %548 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 0, !dbg !1679
  %549 = load double, double* %548, align 8, !dbg !1679, !tbaa !720
  %550 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 1, !dbg !1680
  %551 = load double, double* %550, align 8, !dbg !1680, !tbaa !720
  %552 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 17, i64 2, !dbg !1681
  %553 = load double, double* %552, align 8, !dbg !1681, !tbaa !720
  %554 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %547, i8* nonnull %29, i8* nonnull %28, i8* nonnull %30, double %549, double %551, double %553) #14, !dbg !1682
  br label %555

555:                                              ; preds = %546, %538, %528, %520
  br i1 %44, label %556, label %562, !dbg !1683

556:                                              ; preds = %555
  %557 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 6, !dbg !1684
  %558 = load double, double* %557, align 8, !dbg !1684, !tbaa !857
  %559 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 7, !dbg !1687
  %560 = load double, double* %559, align 8, !dbg !1687, !tbaa !861
  %561 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %558, double %560) #14, !dbg !1688
  br label %572, !dbg !1689

562:                                              ; preds = %555
  br i1 %46, label %572, label %563, !dbg !1690

563:                                              ; preds = %562
  %564 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 9, !dbg !1691
  %565 = load double, double* %564, align 8, !dbg !1691, !tbaa !864
  %566 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %349, i64 %346, i32 8, !dbg !1694
  %567 = load double, double* %566, align 8, !dbg !1694, !tbaa !867
  %568 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %565, double %567) #14, !dbg !1695
  br i1 %125, label %572, label %569, !dbg !1696

569:                                              ; preds = %563
  %570 = load i8*, i8** %350, align 8, !dbg !1697, !tbaa !528
  %571 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %570) #14, !dbg !1699
  br label %572, !dbg !1700

572:                                              ; preds = %569, %563, %562, %556
  %573 = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %27) #14, !dbg !1701
  %574 = add nuw nsw i64 %346, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %574, metadata !1017, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %348, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  %575 = load i32, i32* %337, align 8, !dbg !1511, !tbaa !767
  %576 = sext i32 %575 to i64, !dbg !1512
  %577 = icmp slt i64 %574, %576, !dbg !1512
  br i1 %577, label %345, label %578, !dbg !1513, !llvm.loop !1703

578:                                              ; preds = %572, %336
  %579 = phi i32 [ %182, %336 ], [ %348, %572 ], !dbg !1199
  call void @llvm.dbg.value(metadata i32 %579, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  %580 = add nuw nsw i64 %180, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %580, metadata !1014, metadata !DIExpression()) #14, !dbg !1071
  %581 = add nsw i32 %181, 1, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %581, metadata !1015, metadata !DIExpression()) #14, !dbg !1071
  %582 = load i32, i32* %172, align 8, !dbg !1306, !tbaa !1307
  %583 = sext i32 %582 to i64, !dbg !1308
  %584 = icmp slt i64 %580, %583, !dbg !1308
  br i1 %584, label %179, label %585, !dbg !1309, !llvm.loop !1707

585:                                              ; preds = %578, %170
  %586 = phi i32 [ %129, %170 ], [ %579, %578 ], !dbg !1709
  %587 = phi i32 [ %128, %170 ], [ %581, %578 ], !dbg !1199
  call void @llvm.dbg.value(metadata i32 %586, metadata !1018, metadata !DIExpression()) #14, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %587, metadata !1015, metadata !DIExpression()) #14, !dbg !1071
  %588 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %27) #14, !dbg !1710
  %589 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %127, i64 0, i32 4, !dbg !1711
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1020, metadata !DIExpression()) #14, !dbg !1071
  %590 = load %struct.strand_t*, %struct.strand_t** %589, align 8, !dbg !1199, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %590, metadata !1020, metadata !DIExpression()) #14, !dbg !1071
  %591 = icmp eq %struct.strand_t* %590, null, !dbg !1200
  br i1 %591, label %592, label %126, !dbg !1200, !llvm.loop !1712

592:                                              ; preds = %585, %106
  call void @llvm.dbg.value(metadata %struct.cid_t* %107, metadata !1132, metadata !DIExpression()) #14, !dbg !1714
  %593 = icmp eq %struct.cid_t* %107, null, !dbg !1716
  br i1 %593, label %698, label %594, !dbg !1717

594:                                              ; preds = %592
  %595 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %107, i64 0, i32 2, !dbg !1718
  %596 = load i8*, i8** %595, align 8, !dbg !1718, !tbaa !1145
  %597 = icmp eq i8* %596, null, !dbg !1720
  br i1 %597, label %599, label %598, !dbg !1721

598:                                              ; preds = %594
  call void @free(i8* nonnull %596) #14, !dbg !1722
  br label %599, !dbg !1722

599:                                              ; preds = %598, %594
  %600 = bitcast %struct.cid_t* %107 to i8*, !dbg !1723
  call void @free(i8* %600) #14, !dbg !1724
  br label %698, !dbg !1725

601:                                              ; preds = %99
  store i32 67, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %602 = getelementptr inbounds i8, i8* %66, i64 67, !dbg !1183
  %603 = load i8, i8* %602, align 1, !dbg !1183, !tbaa !464
  %604 = icmp eq i8 %603, 0, !dbg !1183
  br i1 %604, label %106, label %605, !dbg !1188

605:                                              ; preds = %601
  store i32 68, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %606 = getelementptr inbounds i8, i8* %66, i64 68, !dbg !1183
  %607 = load i8, i8* %606, align 1, !dbg !1183, !tbaa !464
  %608 = icmp eq i8 %607, 0, !dbg !1183
  br i1 %608, label %106, label %609, !dbg !1188

609:                                              ; preds = %605
  store i32 69, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %610 = getelementptr inbounds i8, i8* %66, i64 69, !dbg !1183
  %611 = load i8, i8* %610, align 1, !dbg !1183, !tbaa !464
  %612 = icmp eq i8 %611, 0, !dbg !1183
  br i1 %612, label %106, label %613, !dbg !1188

613:                                              ; preds = %609
  store i32 70, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %614 = getelementptr inbounds i8, i8* %66, i64 70, !dbg !1183
  %615 = load i8, i8* %614, align 1, !dbg !1183, !tbaa !464
  %616 = icmp eq i8 %615, 0, !dbg !1183
  br i1 %616, label %106, label %617, !dbg !1188

617:                                              ; preds = %613
  store i32 71, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %618 = getelementptr inbounds i8, i8* %66, i64 71, !dbg !1183
  %619 = load i8, i8* %618, align 1, !dbg !1183, !tbaa !464
  %620 = icmp eq i8 %619, 0, !dbg !1183
  br i1 %620, label %106, label %621, !dbg !1188

621:                                              ; preds = %617
  store i32 72, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %622 = getelementptr inbounds i8, i8* %66, i64 72, !dbg !1183
  %623 = load i8, i8* %622, align 1, !dbg !1183, !tbaa !464
  %624 = icmp eq i8 %623, 0, !dbg !1183
  br i1 %624, label %106, label %625, !dbg !1188

625:                                              ; preds = %621
  store i32 73, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %626 = getelementptr inbounds i8, i8* %66, i64 73, !dbg !1183
  %627 = load i8, i8* %626, align 1, !dbg !1183, !tbaa !464
  %628 = icmp eq i8 %627, 0, !dbg !1183
  br i1 %628, label %106, label %629, !dbg !1188

629:                                              ; preds = %625
  store i32 74, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %630 = getelementptr inbounds i8, i8* %66, i64 74, !dbg !1183
  %631 = load i8, i8* %630, align 1, !dbg !1183, !tbaa !464
  %632 = icmp eq i8 %631, 0, !dbg !1183
  br i1 %632, label %106, label %633, !dbg !1188

633:                                              ; preds = %629
  store i32 75, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %634 = getelementptr inbounds i8, i8* %66, i64 75, !dbg !1183
  %635 = load i8, i8* %634, align 1, !dbg !1183, !tbaa !464
  %636 = icmp eq i8 %635, 0, !dbg !1183
  br i1 %636, label %106, label %637, !dbg !1188

637:                                              ; preds = %633
  store i32 76, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %638 = getelementptr inbounds i8, i8* %66, i64 76, !dbg !1183
  %639 = load i8, i8* %638, align 1, !dbg !1183, !tbaa !464
  %640 = icmp eq i8 %639, 0, !dbg !1183
  br i1 %640, label %106, label %641, !dbg !1188

641:                                              ; preds = %637
  store i32 77, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %642 = getelementptr inbounds i8, i8* %66, i64 77, !dbg !1183
  %643 = load i8, i8* %642, align 1, !dbg !1183, !tbaa !464
  %644 = icmp eq i8 %643, 0, !dbg !1183
  br i1 %644, label %106, label %645, !dbg !1188

645:                                              ; preds = %641
  store i32 78, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %646 = getelementptr inbounds i8, i8* %66, i64 78, !dbg !1183
  %647 = load i8, i8* %646, align 1, !dbg !1183, !tbaa !464
  %648 = icmp eq i8 %647, 0, !dbg !1183
  br i1 %648, label %106, label %649, !dbg !1188

649:                                              ; preds = %645
  store i32 79, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %650 = getelementptr inbounds i8, i8* %66, i64 79, !dbg !1183
  %651 = load i8, i8* %650, align 1, !dbg !1183, !tbaa !464
  %652 = icmp eq i8 %651, 0, !dbg !1183
  br i1 %652, label %106, label %653, !dbg !1188

653:                                              ; preds = %649
  store i32 80, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %654 = getelementptr inbounds i8, i8* %66, i64 80, !dbg !1183
  %655 = load i8, i8* %654, align 1, !dbg !1183, !tbaa !464
  %656 = icmp eq i8 %655, 0, !dbg !1183
  br i1 %656, label %106, label %657, !dbg !1188

657:                                              ; preds = %653
  store i32 81, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %658 = getelementptr inbounds i8, i8* %66, i64 81, !dbg !1183
  %659 = load i8, i8* %658, align 1, !dbg !1183, !tbaa !464
  %660 = icmp eq i8 %659, 0, !dbg !1183
  br i1 %660, label %106, label %661, !dbg !1188

661:                                              ; preds = %657
  store i32 82, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %662 = getelementptr inbounds i8, i8* %66, i64 82, !dbg !1183
  %663 = load i8, i8* %662, align 1, !dbg !1183, !tbaa !464
  %664 = icmp eq i8 %663, 0, !dbg !1183
  br i1 %664, label %106, label %665, !dbg !1188

665:                                              ; preds = %661
  store i32 83, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %666 = getelementptr inbounds i8, i8* %66, i64 83, !dbg !1183
  %667 = load i8, i8* %666, align 1, !dbg !1183, !tbaa !464
  %668 = icmp eq i8 %667, 0, !dbg !1183
  br i1 %668, label %106, label %669, !dbg !1188

669:                                              ; preds = %665
  store i32 84, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %670 = getelementptr inbounds i8, i8* %66, i64 84, !dbg !1183
  %671 = load i8, i8* %670, align 1, !dbg !1183, !tbaa !464
  %672 = icmp eq i8 %671, 0, !dbg !1183
  br i1 %672, label %106, label %673, !dbg !1188

673:                                              ; preds = %669
  store i32 85, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %674 = getelementptr inbounds i8, i8* %66, i64 85, !dbg !1183
  %675 = load i8, i8* %674, align 1, !dbg !1183, !tbaa !464
  %676 = icmp eq i8 %675, 0, !dbg !1183
  br i1 %676, label %106, label %677, !dbg !1188

677:                                              ; preds = %673
  store i32 86, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %678 = getelementptr inbounds i8, i8* %66, i64 86, !dbg !1183
  %679 = load i8, i8* %678, align 1, !dbg !1183, !tbaa !464
  %680 = icmp eq i8 %679, 0, !dbg !1183
  br i1 %680, label %106, label %681, !dbg !1188

681:                                              ; preds = %677
  store i32 87, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %682 = getelementptr inbounds i8, i8* %66, i64 87, !dbg !1183
  %683 = load i8, i8* %682, align 1, !dbg !1183, !tbaa !464
  %684 = icmp eq i8 %683, 0, !dbg !1183
  br i1 %684, label %106, label %685, !dbg !1188

685:                                              ; preds = %681
  store i32 88, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %686 = getelementptr inbounds i8, i8* %66, i64 88, !dbg !1183
  %687 = load i8, i8* %686, align 1, !dbg !1183, !tbaa !464
  %688 = icmp eq i8 %687, 0, !dbg !1183
  br i1 %688, label %106, label %689, !dbg !1188

689:                                              ; preds = %685
  store i32 89, i32* %71, align 8, !dbg !1189, !tbaa !1152
  %690 = getelementptr inbounds i8, i8* %66, i64 89, !dbg !1183
  %691 = load i8, i8* %690, align 1, !dbg !1183, !tbaa !464
  %692 = icmp eq i8 %691, 0, !dbg !1183
  br i1 %692, label %106, label %693, !dbg !1188

693:                                              ; preds = %689
  %694 = getelementptr inbounds i8, i8* %66, i64 90, !dbg !1183
  %695 = load i8, i8* %694, align 1, !dbg !1183, !tbaa !464
  %696 = icmp eq i8 %695, 0, !dbg !1183
  %697 = select i1 %696, i32 90, i32 91, !dbg !1188
  store i32 %697, i32* %71, align 8, !dbg !1726
  br label %106, !dbg !1188

698:                                              ; preds = %33, %592, %599
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %31) #14, !dbg !1727
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %30) #14, !dbg !1727
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #14, !dbg !1727
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #14, !dbg !1727
  %699 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1728, !tbaa !470
  %700 = icmp eq %struct._IO_FILE* %27, %699, !dbg !1730
  br i1 %700, label %703, label %701, !dbg !1731

701:                                              ; preds = %698
  %702 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !1732
  br label %703, !dbg !1732

703:                                              ; preds = %24, %698, %701, %15
  %704 = phi i32 [ 0, %701 ], [ 0, %698 ], [ -1, %24 ], [ 0, %15 ], !dbg !1047
  call void @llvm.dbg.value(metadata i32 %704, metadata !1005, metadata !DIExpression()), !dbg !1047
  call void @reducerror(i32 %704) #14, !dbg !1733
  br label %705, !dbg !1734

705:                                              ; preds = %11, %12, %703
  ret i32 0, !dbg !1735
}

declare !dbg !106 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* readonly %2) local_unnamed_addr #0 !dbg !1736 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1740, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %1, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1742, metadata !DIExpression()), !dbg !1744
  %4 = icmp eq %struct.molecule_t* %2, null, !dbg !1745
  br i1 %4, label %5, label %8, !dbg !1747

5:                                                ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1748, !tbaa !470
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %6) #15, !dbg !1750
  br label %115, !dbg !1751

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1752
  %10 = icmp eq i32 %9, 0, !dbg !1752
  br i1 %10, label %16, label %11, !dbg !1754

11:                                               ; preds = %8
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1755
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !1743, metadata !DIExpression()), !dbg !1744
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !1757
  br i1 %13, label %14, label %20, !dbg !1758

14:                                               ; preds = %11
  %15 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1759
  tail call void @exit(i32 1) #17, !dbg !1761
  unreachable, !dbg !1761

16:                                               ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1762, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1763, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i8* %1, metadata !1768, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1769, metadata !DIExpression()) #14, !dbg !1779
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !1781
  br i1 %18, label %19, label %20, !dbg !1784

19:                                               ; preds = %16
  tail call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #17, !dbg !1781
  unreachable, !dbg !1781

20:                                               ; preds = %11, %16
  %21 = phi %struct._IO_FILE* [ %17, %16 ], [ %12, %11 ]
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 1, !dbg !1785
  %23 = load i32, i32* %22, align 8, !dbg !1785, !tbaa !1786
  call void @llvm.dbg.value(metadata i8 undef, metadata !1775, metadata !DIExpression()) #14, !dbg !1779
  %24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %1) #14, !dbg !1787
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1788
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %1) #14, !dbg !1789
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1790
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1791
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1792
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1793
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1794
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* nonnull %21) #14, !dbg !1795
  call void @llvm.dbg.value(metadata i32 0, metadata !1774, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1771, metadata !DIExpression()) #14, !dbg !1779
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 2, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1776, metadata !DIExpression()) #14, !dbg !1779
  %34 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !1798, !tbaa !470
  call void @llvm.dbg.value(metadata i32 0, metadata !1771, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !1776, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i8 undef, metadata !1775, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1774, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  %35 = icmp eq %struct.strand_t* %34, null, !dbg !1799
  br i1 %35, label %110, label %36, !dbg !1799

36:                                               ; preds = %20
  %37 = icmp sgt i32 %23, 1, !dbg !1800
  %38 = select i1 %37, i8 65, i8 46, !dbg !1801
  call void @llvm.dbg.value(metadata i8 %38, metadata !1775, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i8 %38, metadata !1775, metadata !DIExpression()) #14, !dbg !1779
  br label %39, !dbg !1799

39:                                               ; preds = %100, %36
  %40 = phi %struct.strand_t* [ %108, %100 ], [ %34, %36 ]
  %41 = phi i32 [ %102, %100 ], [ 0, %36 ]
  %42 = phi i8 [ %106, %100 ], [ %38, %36 ]
  %43 = phi i32 [ %45, %100 ], [ 0, %36 ]
  %44 = phi i32 [ %101, %100 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !1771, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i8 %42, metadata !1775, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %43, metadata !1774, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %44, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  %45 = add nuw nsw i32 %43, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %45, metadata !1774, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1770, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %41, metadata !1771, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %44, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 5, !dbg !1805
  %47 = load i32, i32* %46, align 8, !dbg !1805, !tbaa !1307
  %48 = icmp sgt i32 %47, 0, !dbg !1808
  br i1 %48, label %49, label %100, !dbg !1809

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 7, !dbg !1810
  %51 = sext i8 %42 to i32, !dbg !1812
  br label %52, !dbg !1809

52:                                               ; preds = %93, %49
  %53 = phi i32 [ %47, %49 ], [ %96, %93 ]
  %54 = phi i64 [ 0, %49 ], [ %95, %93 ]
  %55 = phi i32 [ %41, %49 ], [ %94, %93 ]
  %56 = phi i32 [ %44, %49 ], [ %97, %93 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !1770, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %55, metadata !1771, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %56, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  %57 = load %struct.residue_t**, %struct.residue_t*** %50, align 8, !dbg !1816, !tbaa !799
  %58 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %57, i64 %54, !dbg !1817
  %59 = load %struct.residue_t*, %struct.residue_t** %58, align 8, !dbg !1817, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %59, metadata !1777, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 0, metadata !1772, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %56, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 15, !dbg !1818
  %61 = load i32, i32* %60, align 8, !dbg !1818, !tbaa !767
  %62 = icmp sgt i32 %61, 0, !dbg !1819
  br i1 %62, label %66, label %63, !dbg !1820

63:                                               ; preds = %52
  %64 = add nuw nsw i64 %54, 1, !dbg !1821
  %65 = add nsw i32 %55, 1, !dbg !1822
  br label %93, !dbg !1820

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 17, !dbg !1812
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 4, !dbg !1812
  %69 = add nsw i32 %55, 1, !dbg !1812
  %70 = add nuw nsw i64 %54, 1, !dbg !1812
  %71 = trunc i64 %70 to i32, !dbg !1812
  br label %72, !dbg !1820

72:                                               ; preds = %72, %66
  %73 = phi i64 [ 0, %66 ], [ %87, %72 ]
  %74 = phi i32 [ %56, %66 ], [ %75, %72 ]
  call void @llvm.dbg.value(metadata i32 %74, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %73, metadata !1772, metadata !DIExpression()) #14, !dbg !1779
  %75 = add nsw i32 %74, 1, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %75, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  %76 = load %struct.atom_t*, %struct.atom_t** %67, align 8, !dbg !1824, !tbaa !1518
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1778, metadata !DIExpression()) #14, !dbg !1779
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 0, !dbg !1825
  %78 = load i8*, i8** %77, align 8, !dbg !1825, !tbaa !528
  %79 = load i8*, i8** %68, align 8, !dbg !1826, !tbaa !758
  %80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 0, !dbg !1827
  %81 = load double, double* %80, align 8, !dbg !1827, !tbaa !720
  %82 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 1, !dbg !1828
  %83 = load double, double* %82, align 8, !dbg !1828, !tbaa !720
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 2, !dbg !1829
  %85 = load double, double* %84, align 8, !dbg !1829, !tbaa !720
  %86 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %75, i8* %78, i8* %79, i32 %51, i32 %69, double %81, double %83, double %85, i32 %45, i32 %71) #14, !dbg !1830
  %87 = add nuw nsw i64 %73, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %87, metadata !1772, metadata !DIExpression()) #14, !dbg !1779
  %88 = load i32, i32* %60, align 8, !dbg !1818, !tbaa !767
  %89 = sext i32 %88 to i64, !dbg !1819
  %90 = icmp slt i64 %87, %89, !dbg !1819
  br i1 %90, label %72, label %91, !dbg !1820, !llvm.loop !1832

91:                                               ; preds = %72
  %92 = load i32, i32* %46, align 8, !dbg !1805, !tbaa !1307
  br label %93, !dbg !1821

93:                                               ; preds = %91, %63
  %94 = phi i32 [ %65, %63 ], [ %69, %91 ], !dbg !1822
  %95 = phi i64 [ %64, %63 ], [ %70, %91 ], !dbg !1821
  %96 = phi i32 [ %53, %63 ], [ %92, %91 ], !dbg !1805
  %97 = phi i32 [ %56, %63 ], [ %75, %91 ], !dbg !1798
  call void @llvm.dbg.value(metadata i32 %97, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %95, metadata !1770, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %94, metadata !1771, metadata !DIExpression()) #14, !dbg !1779
  %98 = sext i32 %96 to i64, !dbg !1808
  %99 = icmp slt i64 %95, %98, !dbg !1808
  br i1 %99, label %52, label %100, !dbg !1809, !llvm.loop !1834

100:                                              ; preds = %93, %39
  %101 = phi i32 [ %44, %39 ], [ %97, %93 ], !dbg !1836
  %102 = phi i32 [ %41, %39 ], [ %94, %93 ], !dbg !1798
  call void @llvm.dbg.value(metadata i32 %101, metadata !1773, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %102, metadata !1771, metadata !DIExpression()) #14, !dbg !1779
  %103 = load i32, i32* %22, align 8, !dbg !1837, !tbaa !1786
  %104 = icmp sgt i32 %103, 1, !dbg !1839
  %105 = zext i1 %104 to i8, !dbg !1840
  %106 = add i8 %42, %105, !dbg !1840
  call void @llvm.dbg.value(metadata i8 %106, metadata !1775, metadata !DIExpression()) #14, !dbg !1779
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 4, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1776, metadata !DIExpression()) #14, !dbg !1779
  %108 = load %struct.strand_t*, %struct.strand_t** %107, align 8, !dbg !1798, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %108, metadata !1776, metadata !DIExpression()) #14, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %45, metadata !1774, metadata !DIExpression()) #14, !dbg !1779
  %109 = icmp eq %struct.strand_t* %108, null, !dbg !1799
  br i1 %109, label %110, label %39, !dbg !1799, !llvm.loop !1842

110:                                              ; preds = %100, %20
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1844, !tbaa !470
  %112 = icmp eq %struct._IO_FILE* %21, %111, !dbg !1846
  br i1 %112, label %115, label %113, !dbg !1847

113:                                              ; preds = %110
  %114 = tail call i32 @fclose(%struct._IO_FILE* %21), !dbg !1848
  br label %115, !dbg !1848

115:                                              ; preds = %113, %110, %5
  ret i32 0, !dbg !1849
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* readonly %1) local_unnamed_addr #0 !dbg !1850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1854, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1855, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32* null, metadata !1867, metadata !DIExpression()), !dbg !1871
  %3 = icmp eq %struct.molecule_t* %1, null, !dbg !1872
  br i1 %3, label %4, label %7, !dbg !1874

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1875, !tbaa !470
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %5) #15, !dbg !1877
  br label %183, !dbg !1878

7:                                                ; preds = %2
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1879
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !1856, metadata !DIExpression()), !dbg !1871
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !1881
  br i1 %9, label %10, label %12, !dbg !1882

10:                                               ; preds = %7
  %11 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1883
  tail call void @exit(i32 1) #17, !dbg !1885
  unreachable, !dbg !1885

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1865, metadata !DIExpression()), !dbg !1871
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1857, metadata !DIExpression()), !dbg !1871
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1888, !tbaa !470
  call void @llvm.dbg.value(metadata i32 0, metadata !1865, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1857, metadata !DIExpression()), !dbg !1871
  %15 = icmp eq %struct.strand_t* %14, null, !dbg !1889
  br i1 %15, label %28, label %16, !dbg !1889

16:                                               ; preds = %12, %16
  %17 = phi %struct.strand_t* [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %21, %16 ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1865, metadata !DIExpression()), !dbg !1871
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i64 0, i32 5, !dbg !1890
  %20 = load i32, i32* %19, align 8, !dbg !1890, !tbaa !1307
  %21 = add nsw i32 %20, %18, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %21, metadata !1865, metadata !DIExpression()), !dbg !1871
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i64 0, i32 4, !dbg !1893
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1857, metadata !DIExpression()), !dbg !1871
  %23 = load %struct.strand_t*, %struct.strand_t** %22, align 8, !dbg !1888, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %23, metadata !1857, metadata !DIExpression()), !dbg !1871
  %24 = icmp eq %struct.strand_t* %23, null, !dbg !1889
  br i1 %24, label %25, label %16, !dbg !1889, !llvm.loop !1894

25:                                               ; preds = %16
  %26 = sext i32 %21 to i64, !dbg !1896
  %27 = shl nsw i64 %26, 2, !dbg !1896
  br label %28, !dbg !1896

28:                                               ; preds = %25, %12
  %29 = phi i64 [ 0, %12 ], [ %27, %25 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1865, metadata !DIExpression()), !dbg !1871
  %30 = tail call noalias i8* @malloc(i64 %29) #14, !dbg !1898
  %31 = bitcast i8* %30 to i32*, !dbg !1899
  call void @llvm.dbg.value(metadata i32* %31, metadata !1867, metadata !DIExpression()), !dbg !1871
  %32 = icmp eq i8* %30, null, !dbg !1900
  br i1 %32, label %34, label %33, !dbg !1901

33:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !1865, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1857, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 0, metadata !1860, metadata !DIExpression()), !dbg !1871
  br i1 %15, label %179, label %37, !dbg !1902

34:                                               ; preds = %28
  %35 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !1904
  call void @llvm.dbg.value(metadata i32 1, metadata !1866, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.label(metadata !1870), !dbg !1906
  br label %180, !dbg !1907

36:                                               ; preds = %99
  call void @llvm.dbg.value(metadata i32 0, metadata !1865, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1857, metadata !DIExpression()), !dbg !1871
  br i1 %15, label %179, label %105, !dbg !1908

37:                                               ; preds = %33, %99
  %38 = phi %struct.strand_t* [ %103, %99 ], [ %14, %33 ]
  %39 = phi i32 [ %101, %99 ], [ 0, %33 ]
  %40 = phi i32 [ %100, %99 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !1865, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 %40, metadata !1860, metadata !DIExpression()), !dbg !1871
  %41 = sext i32 %39 to i64, !dbg !1910
  %42 = getelementptr inbounds i32, i32* %31, i64 %41, !dbg !1910
  store i32 %40, i32* %42, align 4, !dbg !1913, !tbaa !560
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 5, !dbg !1914
  %44 = load i32, i32* %43, align 8, !dbg !1914, !tbaa !1307
  %45 = icmp sgt i32 %44, 0, !dbg !1916
  br i1 %45, label %46, label %99, !dbg !1917

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 7, !dbg !1918
  %48 = load %struct.residue_t**, %struct.residue_t*** %47, align 8, !dbg !1918, !tbaa !799
  %49 = load %struct.residue_t*, %struct.residue_t** %48, align 8, !dbg !1920, !tbaa !470
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %49, i64 0, i32 15, !dbg !1921
  %51 = load i32, i32* %50, align 8, !dbg !1921, !tbaa !767
  %52 = add nsw i32 %51, %40, !dbg !1922
  call void @llvm.dbg.value(metadata i32 %52, metadata !1860, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 1, metadata !1863, metadata !DIExpression()), !dbg !1871
  %53 = icmp eq i32 %44, 1, !dbg !1923
  br i1 %53, label %96, label %54, !dbg !1926

54:                                               ; preds = %46
  %55 = zext i32 %44 to i64, !dbg !1923
  %56 = add nsw i64 %55, -1, !dbg !1926
  %57 = and i64 %56, 1, !dbg !1926
  %58 = icmp eq i32 %44, 2, !dbg !1926
  br i1 %58, label %83, label %59, !dbg !1926

59:                                               ; preds = %54
  %60 = sub nsw i64 %56, %57, !dbg !1926
  br label %61, !dbg !1926

61:                                               ; preds = %61, %59
  %62 = phi i64 [ 1, %59 ], [ %80, %61 ]
  %63 = phi i32 [ %52, %59 ], [ %79, %61 ]
  %64 = phi i64 [ %60, %59 ], [ %81, %61 ]
  call void @llvm.dbg.value(metadata i64 %62, metadata !1863, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 %63, metadata !1860, metadata !DIExpression()), !dbg !1871
  %65 = add nsw i64 %62, %41, !dbg !1927
  %66 = getelementptr inbounds i32, i32* %31, i64 %65, !dbg !1929
  store i32 %63, i32* %66, align 4, !dbg !1930, !tbaa !560
  %67 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %62, !dbg !1931
  %68 = load %struct.residue_t*, %struct.residue_t** %67, align 8, !dbg !1931, !tbaa !470
  %69 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %68, i64 0, i32 15, !dbg !1932
  %70 = load i32, i32* %69, align 8, !dbg !1932, !tbaa !767
  %71 = add nsw i32 %70, %63, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %71, metadata !1860, metadata !DIExpression()), !dbg !1871
  %72 = add nuw nsw i64 %62, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %72, metadata !1863, metadata !DIExpression()), !dbg !1871
  %73 = add nsw i64 %72, %41, !dbg !1927
  %74 = getelementptr inbounds i32, i32* %31, i64 %73, !dbg !1929
  store i32 %71, i32* %74, align 4, !dbg !1930, !tbaa !560
  %75 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %72, !dbg !1931
  %76 = load %struct.residue_t*, %struct.residue_t** %75, align 8, !dbg !1931, !tbaa !470
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i64 0, i32 15, !dbg !1932
  %78 = load i32, i32* %77, align 8, !dbg !1932, !tbaa !767
  %79 = add nsw i32 %78, %71, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %79, metadata !1860, metadata !DIExpression()), !dbg !1871
  %80 = add nuw nsw i64 %62, 2, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %80, metadata !1863, metadata !DIExpression()), !dbg !1871
  %81 = add i64 %64, -2, !dbg !1926
  %82 = icmp eq i64 %81, 0, !dbg !1926
  br i1 %82, label %83, label %61, !dbg !1926, !llvm.loop !1935

83:                                               ; preds = %61, %54
  %84 = phi i32 [ undef, %54 ], [ %79, %61 ]
  %85 = phi i64 [ 1, %54 ], [ %80, %61 ]
  %86 = phi i32 [ %52, %54 ], [ %79, %61 ]
  %87 = icmp eq i64 %57, 0, !dbg !1926
  br i1 %87, label %96, label %88, !dbg !1926

88:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i64 %85, metadata !1863, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 %86, metadata !1860, metadata !DIExpression()), !dbg !1871
  %89 = add nsw i64 %85, %41, !dbg !1927
  %90 = getelementptr inbounds i32, i32* %31, i64 %89, !dbg !1929
  store i32 %86, i32* %90, align 4, !dbg !1930, !tbaa !560
  call void @llvm.dbg.value(metadata i32 undef, metadata !1860, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %85, metadata !1863, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1871
  %91 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %85, !dbg !1931
  %92 = load %struct.residue_t*, %struct.residue_t** %91, align 8, !dbg !1931, !tbaa !470
  %93 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %92, i64 0, i32 15, !dbg !1932
  %94 = load i32, i32* %93, align 8, !dbg !1932, !tbaa !767
  %95 = add nsw i32 %94, %86, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %95, metadata !1860, metadata !DIExpression()), !dbg !1871
  br label %96, !dbg !1937

96:                                               ; preds = %88, %83, %46
  %97 = phi i32 [ %52, %46 ], [ %84, %83 ], [ %95, %88 ], !dbg !1938
  call void @llvm.dbg.value(metadata i32 %97, metadata !1860, metadata !DIExpression()), !dbg !1871
  %98 = add nsw i32 %44, %39, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %98, metadata !1865, metadata !DIExpression()), !dbg !1871
  br label %99, !dbg !1939

99:                                               ; preds = %37, %96
  %100 = phi i32 [ %97, %96 ], [ %40, %37 ], !dbg !1940
  %101 = phi i32 [ %98, %96 ], [ %39, %37 ], !dbg !1940
  call void @llvm.dbg.value(metadata i32 %101, metadata !1865, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 %100, metadata !1860, metadata !DIExpression()), !dbg !1871
  %102 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 4, !dbg !1941
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1857, metadata !DIExpression()), !dbg !1871
  %103 = load %struct.strand_t*, %struct.strand_t** %102, align 8, !dbg !1940, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %103, metadata !1857, metadata !DIExpression()), !dbg !1871
  %104 = icmp eq %struct.strand_t* %103, null, !dbg !1902
  br i1 %104, label %36, label %37, !dbg !1902, !llvm.loop !1942

105:                                              ; preds = %36, %173
  %106 = phi %struct.strand_t* [ %177, %173 ], [ %14, %36 ]
  %107 = phi i32 [ %175, %173 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %107, metadata !1865, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 0, metadata !1863, metadata !DIExpression()), !dbg !1871
  %108 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i64 0, i32 5, !dbg !1944
  %109 = load i32, i32* %108, align 8, !dbg !1944, !tbaa !1307
  %110 = icmp sgt i32 %109, 0, !dbg !1949
  br i1 %110, label %111, label %173, !dbg !1950

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i64 0, i32 7, !dbg !1951
  %113 = add i32 %107, -1, !dbg !1953
  %114 = sext i32 %107 to i64, !dbg !1950
  br label %115, !dbg !1950

115:                                              ; preds = %111, %168
  %116 = phi i64 [ 0, %111 ], [ %169, %168 ]
  call void @llvm.dbg.value(metadata i64 %116, metadata !1863, metadata !DIExpression()), !dbg !1871
  %117 = load %struct.residue_t**, %struct.residue_t*** %112, align 8, !dbg !1957, !tbaa !799
  %118 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %117, i64 %116, !dbg !1958
  %119 = load %struct.residue_t*, %struct.residue_t** %118, align 8, !dbg !1958, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %119, metadata !1858, metadata !DIExpression()), !dbg !1871
  %120 = add nsw i64 %116, %114, !dbg !1959
  %121 = getelementptr inbounds i32, i32* %31, i64 %120, !dbg !1960
  %122 = load i32, i32* %121, align 4, !dbg !1960, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %122, metadata !1859, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i32 0, metadata !1868, metadata !DIExpression()), !dbg !1871
  %123 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i64 0, i32 11, !dbg !1961
  %124 = load i32, i32* %123, align 8, !dbg !1961, !tbaa !1964
  %125 = icmp sgt i32 %124, 0, !dbg !1965
  br i1 %125, label %126, label %142, !dbg !1966

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i64 0, i32 12, !dbg !1967
  br label %128, !dbg !1966

128:                                              ; preds = %126, %128
  %129 = phi i64 [ 0, %126 ], [ %138, %128 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1868, metadata !DIExpression()), !dbg !1871
  %130 = load [2 x i32]*, [2 x i32]** %127, align 8, !dbg !1969, !tbaa !1970
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 %129, i64 0, !dbg !1971
  %132 = load i32, i32* %131, align 4, !dbg !1971, !tbaa !560
  %133 = add nsw i32 %132, %122, !dbg !1972
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 %129, i64 1, !dbg !1973
  %135 = load i32, i32* %134, align 4, !dbg !1973, !tbaa !560
  %136 = add nsw i32 %135, %122, !dbg !1974
  %137 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %133, i32 %136), !dbg !1975
  %138 = add nuw nsw i64 %129, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %138, metadata !1868, metadata !DIExpression()), !dbg !1871
  %139 = load i32, i32* %123, align 8, !dbg !1961, !tbaa !1964
  %140 = sext i32 %139 to i64, !dbg !1965
  %141 = icmp slt i64 %138, %140, !dbg !1965
  br i1 %141, label %128, label %142, !dbg !1966, !llvm.loop !1977

142:                                              ; preds = %128, %115
  %143 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i64 0, i32 10, !dbg !1979
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1869, metadata !DIExpression()), !dbg !1871
  %144 = load %struct.extbond_t*, %struct.extbond_t** %143, align 8, !dbg !1980, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.extbond_t* %144, metadata !1869, metadata !DIExpression()), !dbg !1871
  %145 = icmp eq %struct.extbond_t* %144, null, !dbg !1981
  br i1 %145, label %168, label %146, !dbg !1981

146:                                              ; preds = %142, %164
  %147 = phi %struct.extbond_t* [ %166, %164 ], [ %144, %142 ]
  %148 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %147, i64 0, i32 2, !dbg !1982
  %149 = load i32, i32* %148, align 4, !dbg !1982, !tbaa !1984
  call void @llvm.dbg.value(metadata i32 %149, metadata !1864, metadata !DIExpression()), !dbg !1871
  %150 = sext i32 %149 to i64, !dbg !1986
  %151 = icmp slt i64 %116, %150, !dbg !1986
  br i1 %151, label %152, label %164, !dbg !1987

152:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i32 %122, metadata !1861, metadata !DIExpression()), !dbg !1871
  %153 = add i32 %113, %149, !dbg !1988
  %154 = sext i32 %153 to i64, !dbg !1989
  %155 = getelementptr inbounds i32, i32* %31, i64 %154, !dbg !1989
  %156 = load i32, i32* %155, align 4, !dbg !1989, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %156, metadata !1862, metadata !DIExpression()), !dbg !1871
  %157 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %147, i64 0, i32 1, !dbg !1990
  %158 = load i32, i32* %157, align 8, !dbg !1990, !tbaa !1991
  %159 = add nsw i32 %158, %122, !dbg !1992
  %160 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %147, i64 0, i32 3, !dbg !1993
  %161 = load i32, i32* %160, align 8, !dbg !1993, !tbaa !1994
  %162 = add nsw i32 %161, %156, !dbg !1995
  %163 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %159, i32 %162), !dbg !1996
  br label %164, !dbg !1997

164:                                              ; preds = %146, %152
  %165 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %147, i64 0, i32 0, !dbg !1998
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1869, metadata !DIExpression()), !dbg !1871
  %166 = load %struct.extbond_t*, %struct.extbond_t** %165, align 8, !dbg !1980, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.extbond_t* %166, metadata !1869, metadata !DIExpression()), !dbg !1871
  %167 = icmp eq %struct.extbond_t* %166, null, !dbg !1981
  br i1 %167, label %168, label %146, !dbg !1981, !llvm.loop !1999

168:                                              ; preds = %164, %142
  %169 = add nuw nsw i64 %116, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %169, metadata !1863, metadata !DIExpression()), !dbg !1871
  %170 = load i32, i32* %108, align 8, !dbg !1944, !tbaa !1307
  %171 = sext i32 %170 to i64, !dbg !1949
  %172 = icmp slt i64 %169, %171, !dbg !1949
  br i1 %172, label %115, label %173, !dbg !1950, !llvm.loop !2002

173:                                              ; preds = %168, %105
  %174 = phi i32 [ %109, %105 ], [ %170, %168 ], !dbg !1944
  %175 = add nsw i32 %174, %107, !dbg !2004
  call void @llvm.dbg.value(metadata i32 %175, metadata !1865, metadata !DIExpression()), !dbg !1871
  %176 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i64 0, i32 4, !dbg !2005
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1857, metadata !DIExpression()), !dbg !1871
  %177 = load %struct.strand_t*, %struct.strand_t** %176, align 8, !dbg !2006, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %177, metadata !1857, metadata !DIExpression()), !dbg !1871
  %178 = icmp eq %struct.strand_t* %177, null, !dbg !1908
  br i1 %178, label %179, label %105, !dbg !1908, !llvm.loop !2007

179:                                              ; preds = %173, %33, %36
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.label(metadata !1870), !dbg !1906
  tail call void @free(i8* nonnull %30) #14, !dbg !2009
  br label %180, !dbg !2009

180:                                              ; preds = %34, %179
  %181 = phi i32 [ 1, %34 ], [ 0, %179 ]
  %182 = tail call i32 @fclose(%struct._IO_FILE* nonnull %8), !dbg !2011
  br label %183, !dbg !2012

183:                                              ; preds = %180, %4
  %184 = phi i32 [ %181, %180 ], [ 0, %4 ], !dbg !1871
  ret i32 %184, !dbg !2013
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !110 dso_local void @free(i8* nocapture) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) local_unnamed_addr #0 !dbg !2014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2018, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !2019, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %2, metadata !2020, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %3, metadata !2021, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2034, metadata !DIExpression()), !dbg !2036
  %5 = icmp eq %struct.molecule_t* %1, null, !dbg !2037
  br i1 %5, label %6, label %9, !dbg !2039

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2040, !tbaa !470
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %7) #15, !dbg !2042
  br label %298, !dbg !2043

9:                                                ; preds = %4
  tail call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %2) #14, !dbg !2044
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !2045
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2023, metadata !DIExpression()), !dbg !2036
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2047, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %11, metadata !2023, metadata !DIExpression()), !dbg !2036
  %12 = icmp eq %struct.strand_t* %11, null, !dbg !2048
  br i1 %12, label %83, label %13, !dbg !2048

13:                                               ; preds = %9, %79
  %14 = phi %struct.strand_t* [ %81, %79 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 2, !dbg !2049
  %16 = load i32, i32* %15, align 4, !dbg !2052, !tbaa !2053
  %17 = and i32 %16, -3, !dbg !2052
  %18 = shl i32 %16, 1, !dbg !2054
  %19 = and i32 %18, 2, !dbg !2054
  %20 = or i32 %19, %17, !dbg !2055
  store i32 %20, i32* %15, align 4, !dbg !2055, !tbaa !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2029, metadata !DIExpression()), !dbg !2036
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 5, !dbg !2056
  %22 = load i32, i32* %21, align 8, !dbg !2056, !tbaa !1307
  %23 = icmp sgt i32 %22, 0, !dbg !2059
  br i1 %23, label %24, label %79, !dbg !2060

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 7, !dbg !2061
  %26 = load %struct.residue_t**, %struct.residue_t*** %25, align 8, !dbg !2061, !tbaa !799
  %27 = zext i32 %22 to i64, !dbg !2060
  br label %28, !dbg !2060

28:                                               ; preds = %24, %76
  %29 = phi i64 [ 0, %24 ], [ %77, %76 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !2029, metadata !DIExpression()), !dbg !2036
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %26, i64 %29, !dbg !2063
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !2063, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %31, metadata !2024, metadata !DIExpression()), !dbg !2036
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 6, !dbg !2064
  %33 = load i32, i32* %32, align 8, !dbg !2065, !tbaa !2066
  %34 = and i32 %33, -3, !dbg !2065
  %35 = shl i32 %33, 1, !dbg !2067
  %36 = and i32 %35, 2, !dbg !2067
  %37 = or i32 %36, %34, !dbg !2068
  store i32 %37, i32* %32, align 8, !dbg !2068, !tbaa !2066
  call void @llvm.dbg.value(metadata i32 0, metadata !2031, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2026, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2031, metadata !DIExpression()), !dbg !2036
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 15, !dbg !2069
  %39 = load i32, i32* %38, align 8, !dbg !2069, !tbaa !767
  %40 = icmp sgt i32 %39, 0, !dbg !2072
  br i1 %40, label %41, label %76, !dbg !2073

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 17, !dbg !2074
  %43 = load %struct.atom_t*, %struct.atom_t** %42, align 8, !dbg !2074, !tbaa !1518
  call void @llvm.dbg.value(metadata %struct.atom_t* %43, metadata !2026, metadata !DIExpression()), !dbg !2036
  %44 = and i32 %39, 1, !dbg !2073
  %45 = icmp eq i32 %39, 1, !dbg !2073
  br i1 %45, label %66, label %46, !dbg !2073

46:                                               ; preds = %41
  %47 = sub i32 %39, %44, !dbg !2073
  br label %48, !dbg !2073

48:                                               ; preds = %48, %46
  %49 = phi %struct.atom_t* [ %43, %46 ], [ %63, %48 ]
  %50 = phi i32 [ %47, %46 ], [ %64, %48 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2031, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.atom_t* %49, metadata !2026, metadata !DIExpression()), !dbg !2036
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i64 0, i32 2, !dbg !2075
  %52 = load i32, i32* %51, align 8, !dbg !2077, !tbaa !844
  %53 = and i32 %52, -3, !dbg !2077
  %54 = shl i32 %52, 1, !dbg !2078
  %55 = and i32 %54, 2, !dbg !2078
  %56 = or i32 %55, %53, !dbg !2079
  store i32 %56, i32* %51, align 8, !dbg !2079, !tbaa !844
  call void @llvm.dbg.value(metadata i32 undef, metadata !2031, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.atom_t* %49, metadata !2026, metadata !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value)), !dbg !2036
  %57 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i64 1, i32 2, !dbg !2075
  %58 = load i32, i32* %57, align 8, !dbg !2077, !tbaa !844
  %59 = and i32 %58, -3, !dbg !2077
  %60 = shl i32 %58, 1, !dbg !2078
  %61 = and i32 %60, 2, !dbg !2078
  %62 = or i32 %61, %59, !dbg !2079
  store i32 %62, i32* %57, align 8, !dbg !2079, !tbaa !844
  call void @llvm.dbg.value(metadata i32 undef, metadata !2031, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2036
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %49, i64 2, !dbg !2080
  call void @llvm.dbg.value(metadata %struct.atom_t* %63, metadata !2026, metadata !DIExpression()), !dbg !2036
  %64 = add i32 %50, -2, !dbg !2073
  %65 = icmp eq i32 %64, 0, !dbg !2073
  br i1 %65, label %66, label %48, !dbg !2073, !llvm.loop !2081

66:                                               ; preds = %48, %41
  %67 = phi %struct.atom_t* [ %43, %41 ], [ %63, %48 ]
  %68 = icmp eq i32 %44, 0, !dbg !2073
  br i1 %68, label %76, label %69, !dbg !2073

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 undef, metadata !2031, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.atom_t* %67, metadata !2026, metadata !DIExpression()), !dbg !2036
  %70 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %67, i64 0, i32 2, !dbg !2075
  %71 = load i32, i32* %70, align 8, !dbg !2077, !tbaa !844
  %72 = and i32 %71, -3, !dbg !2077
  %73 = shl i32 %71, 1, !dbg !2078
  %74 = and i32 %73, 2, !dbg !2078
  %75 = or i32 %74, %72, !dbg !2079
  store i32 %75, i32* %70, align 8, !dbg !2079, !tbaa !844
  call void @llvm.dbg.value(metadata i32 undef, metadata !2031, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.atom_t* %67, metadata !2026, metadata !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value)), !dbg !2036
  br label %76, !dbg !2083

76:                                               ; preds = %69, %66, %28
  %77 = add nuw nsw i64 %29, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %77, metadata !2029, metadata !DIExpression()), !dbg !2036
  %78 = icmp ult i64 %77, %27, !dbg !2059
  br i1 %78, label %28, label %79, !dbg !2060, !llvm.loop !2084

79:                                               ; preds = %76, %13
  %80 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 4, !dbg !2086
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2023, metadata !DIExpression()), !dbg !2036
  %81 = load %struct.strand_t*, %struct.strand_t** %80, align 8, !dbg !2047, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %81, metadata !2023, metadata !DIExpression()), !dbg !2036
  %82 = icmp eq %struct.strand_t* %81, null, !dbg !2048
  br i1 %82, label %83, label %13, !dbg !2048, !llvm.loop !2087

83:                                               ; preds = %79, %9
  tail call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %3) #14, !dbg !2089
  call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2023, metadata !DIExpression()), !dbg !2036
  %84 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2090, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %84, metadata !2023, metadata !DIExpression()), !dbg !2036
  %85 = icmp eq %struct.strand_t* %84, null, !dbg !2092
  br i1 %85, label %95, label %86, !dbg !2092

86:                                               ; preds = %83, %86
  %87 = phi %struct.strand_t* [ %93, %86 ], [ %84, %83 ]
  %88 = phi i32 [ %91, %86 ], [ 0, %83 ]
  call void @llvm.dbg.value(metadata i32 %88, metadata !2028, metadata !DIExpression()), !dbg !2036
  %89 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 5, !dbg !2093
  %90 = load i32, i32* %89, align 8, !dbg !2093, !tbaa !1307
  %91 = add nsw i32 %90, %88, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %91, metadata !2028, metadata !DIExpression()), !dbg !2036
  %92 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 4, !dbg !2096
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2023, metadata !DIExpression()), !dbg !2036
  %93 = load %struct.strand_t*, %struct.strand_t** %92, align 8, !dbg !2090, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %93, metadata !2023, metadata !DIExpression()), !dbg !2036
  %94 = icmp eq %struct.strand_t* %93, null, !dbg !2092
  br i1 %94, label %95, label %86, !dbg !2092, !llvm.loop !2097

95:                                               ; preds = %86, %83
  %96 = phi i32 [ 0, %83 ], [ %91, %86 ], !dbg !2090
  call void @llvm.dbg.value(metadata i32 %96, metadata !2028, metadata !DIExpression()), !dbg !2036
  %97 = sext i32 %96 to i64, !dbg !2099
  %98 = shl nsw i64 %97, 3, !dbg !2101
  %99 = tail call noalias i8* @malloc(i64 %98) #14, !dbg !2102
  %100 = bitcast i8* %99 to %struct.residue_t**, !dbg !2103
  call void @llvm.dbg.value(metadata %struct.residue_t** %100, metadata !2033, metadata !DIExpression()), !dbg !2036
  %101 = icmp eq i8* %99, null, !dbg !2104
  br i1 %101, label %103, label %102, !dbg !2105

102:                                              ; preds = %95
  call void @llvm.dbg.value(metadata i32 0, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata %struct.strand_t* %84, metadata !2023, metadata !DIExpression()), !dbg !2036
  br i1 %85, label %180, label %106, !dbg !2106

103:                                              ; preds = %95
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2108, !tbaa !470
  %105 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %104) #15, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %297, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.label(metadata !2035), !dbg !2111
  br label %298, !dbg !2112

106:                                              ; preds = %102, %175
  %107 = phi %struct.strand_t* [ %178, %175 ], [ %84, %102 ]
  %108 = phi i32 [ %176, %175 ], [ 0, %102 ]
  call void @llvm.dbg.value(metadata i32 %108, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %108, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2029, metadata !DIExpression()), !dbg !2036
  %109 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %107, i64 0, i32 5, !dbg !2113
  %110 = load i32, i32* %109, align 8, !dbg !2113, !tbaa !1307
  %111 = icmp sgt i32 %110, 0, !dbg !2118
  br i1 %111, label %112, label %175, !dbg !2119

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %107, i64 0, i32 7, !dbg !2120
  %114 = bitcast %struct.residue_t*** %113 to i8**, !dbg !2120
  %115 = load i8*, i8** %114, align 8, !dbg !2120, !tbaa !799
  %116 = sext i32 %108 to i64, !dbg !2119
  %117 = zext i32 %110 to i64, !dbg !2119
  %118 = shl nsw i64 %116, 3, !dbg !2119
  %119 = getelementptr i8, i8* %99, i64 %118, !dbg !2119
  %120 = zext i32 %110 to i64, !dbg !2119
  %121 = shl nuw nsw i64 %120, 3, !dbg !2119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %115, i64 %121, i1 false), !dbg !2121
  %122 = icmp ult i32 %110, 4, !dbg !2119
  br i1 %122, label %163, label %123, !dbg !2119

123:                                              ; preds = %112
  %124 = and i64 %117, 4294967292, !dbg !2119
  %125 = insertelement <2 x i64> <i64 undef, i64 0>, i64 %116, i32 0, !dbg !2119
  %126 = add nsw i64 %124, -4, !dbg !2119
  %127 = lshr exact i64 %126, 2, !dbg !2119
  %128 = add nuw nsw i64 %127, 1, !dbg !2119
  %129 = and i64 %128, 7, !dbg !2119
  %130 = icmp ult i64 %126, 28, !dbg !2119
  br i1 %130, label %141, label %131, !dbg !2119

131:                                              ; preds = %123
  %132 = sub nsw i64 %128, %129, !dbg !2119
  br label %133, !dbg !2119

133:                                              ; preds = %133, %131
  %134 = phi <2 x i64> [ %125, %131 ], [ %137, %133 ]
  %135 = phi <2 x i64> [ zeroinitializer, %131 ], [ %138, %133 ]
  %136 = phi i64 [ %132, %131 ], [ %139, %133 ]
  %137 = add <2 x i64> %134, <i64 8, i64 8>, !dbg !2122
  %138 = add <2 x i64> %135, <i64 8, i64 8>, !dbg !2122
  %139 = add i64 %136, -8, !dbg !2123
  %140 = icmp eq i64 %139, 0, !dbg !2123
  br i1 %140, label %141, label %133, !dbg !2123, !llvm.loop !2124

141:                                              ; preds = %133, %123
  %142 = phi <2 x i64> [ undef, %123 ], [ %137, %133 ]
  %143 = phi <2 x i64> [ undef, %123 ], [ %138, %133 ]
  %144 = phi <2 x i64> [ %125, %123 ], [ %137, %133 ]
  %145 = phi <2 x i64> [ zeroinitializer, %123 ], [ %138, %133 ]
  %146 = icmp eq i64 %129, 0, !dbg !2123
  br i1 %146, label %155, label %147, !dbg !2123

147:                                              ; preds = %141, %147
  %148 = phi <2 x i64> [ %151, %147 ], [ %144, %141 ]
  %149 = phi <2 x i64> [ %152, %147 ], [ %145, %141 ]
  %150 = phi i64 [ %153, %147 ], [ %129, %141 ]
  %151 = add <2 x i64> %148, <i64 1, i64 1>, !dbg !2122
  %152 = add <2 x i64> %149, <i64 1, i64 1>, !dbg !2122
  %153 = add i64 %150, -1, !dbg !2123
  %154 = icmp eq i64 %153, 0, !dbg !2123
  br i1 %154, label %155, label %147, !dbg !2123, !llvm.loop !2127

155:                                              ; preds = %147, %141
  %156 = phi <2 x i64> [ %142, %141 ], [ %151, %147 ], !dbg !2122
  %157 = phi <2 x i64> [ %143, %141 ], [ %152, %147 ], !dbg !2122
  %158 = add <2 x i64> %157, %156, !dbg !2119
  %159 = shufflevector <2 x i64> %158, <2 x i64> undef, <2 x i32> <i32 1, i32 undef>, !dbg !2119
  %160 = add <2 x i64> %158, %159, !dbg !2119
  %161 = extractelement <2 x i64> %160, i32 0, !dbg !2119
  %162 = icmp eq i64 %124, %117, !dbg !2119
  br i1 %162, label %172, label %163, !dbg !2119

163:                                              ; preds = %155, %112
  %164 = phi i64 [ 0, %112 ], [ %124, %155 ]
  %165 = phi i64 [ %116, %112 ], [ %161, %155 ]
  br label %166, !dbg !2119

166:                                              ; preds = %163, %166
  %167 = phi i64 [ %170, %166 ], [ %164, %163 ]
  %168 = phi i64 [ %169, %166 ], [ %165, %163 ]
  call void @llvm.dbg.value(metadata i64 %168, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %167, metadata !2029, metadata !DIExpression()), !dbg !2036
  %169 = add nsw i64 %168, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %169, metadata !2030, metadata !DIExpression()), !dbg !2036
  %170 = add nuw nsw i64 %167, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %170, metadata !2029, metadata !DIExpression()), !dbg !2036
  %171 = icmp ult i64 %170, %117, !dbg !2118
  br i1 %171, label %166, label %172, !dbg !2119, !llvm.loop !2129

172:                                              ; preds = %166, %155
  %173 = phi i64 [ %161, %155 ], [ %169, %166 ], !dbg !2122
  %174 = trunc i64 %173 to i32, !dbg !2131
  br label %175, !dbg !2131

175:                                              ; preds = %172, %106
  %176 = phi i32 [ %108, %106 ], [ %174, %172 ], !dbg !2132
  call void @llvm.dbg.value(metadata i32 %176, metadata !2030, metadata !DIExpression()), !dbg !2036
  %177 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %107, i64 0, i32 4, !dbg !2131
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2023, metadata !DIExpression()), !dbg !2036
  %178 = load %struct.strand_t*, %struct.strand_t** %177, align 8, !dbg !2132, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %178, metadata !2023, metadata !DIExpression()), !dbg !2036
  %179 = icmp eq %struct.strand_t* %178, null, !dbg !2106
  br i1 %179, label %180, label %106, !dbg !2106, !llvm.loop !2133

180:                                              ; preds = %175, %102
  %181 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2135
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %181, metadata !2022, metadata !DIExpression()), !dbg !2036
  %182 = icmp eq %struct._IO_FILE* %181, null, !dbg !2137
  br i1 %182, label %187, label %183, !dbg !2138

183:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i32 0, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2029, metadata !DIExpression()), !dbg !2036
  %184 = icmp sgt i32 %96, 0, !dbg !2139
  br i1 %184, label %185, label %296, !dbg !2142

185:                                              ; preds = %183
  %186 = zext i32 %96 to i64, !dbg !2139
  br label %190, !dbg !2142

187:                                              ; preds = %180
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2143, !tbaa !470
  %189 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %0) #15, !dbg !2145
  br label %296, !dbg !2146

190:                                              ; preds = %292, %185
  %191 = phi i64 [ 0, %185 ], [ %293, %292 ]
  %192 = phi i32 [ 0, %185 ], [ %294, %292 ]
  call void @llvm.dbg.value(metadata i32 %192, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %191, metadata !2029, metadata !DIExpression()), !dbg !2036
  %193 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %100, i64 %191, !dbg !2147
  %194 = load %struct.residue_t*, %struct.residue_t** %193, align 8, !dbg !2147, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %194, metadata !2024, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2031, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %192, metadata !2034, metadata !DIExpression()), !dbg !2036
  %195 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %194, i64 0, i32 15, !dbg !2149
  %196 = load i32, i32* %195, align 8, !dbg !2149, !tbaa !767
  %197 = icmp sgt i32 %196, 0, !dbg !2152
  br i1 %197, label %200, label %198, !dbg !2153

198:                                              ; preds = %190
  %199 = add nuw nsw i64 %191, 1, !dbg !2154
  br label %292, !dbg !2153

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %194, i64 0, i32 17, !dbg !2155
  %202 = add nuw nsw i64 %191, 1, !dbg !2157
  %203 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %194, i64 0, i32 4, !dbg !2157
  %204 = trunc i64 %202 to i32, !dbg !2157
  br label %205, !dbg !2153

205:                                              ; preds = %200, %276
  %206 = phi i32 [ %196, %200 ], [ %277, %276 ]
  %207 = phi i64 [ 0, %200 ], [ %279, %276 ]
  %208 = phi i32 [ %192, %200 ], [ %278, %276 ]
  call void @llvm.dbg.value(metadata i32 %208, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %207, metadata !2031, metadata !DIExpression()), !dbg !2036
  %209 = load %struct.atom_t*, %struct.atom_t** %201, align 8, !dbg !2168, !tbaa !1518
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2026, metadata !DIExpression()), !dbg !2036
  %210 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 2, !dbg !2169
  %211 = load i32, i32* %210, align 8, !dbg !2169, !tbaa !844
  %212 = and i32 %211, 2, !dbg !2170
  %213 = icmp eq i32 %212, 0, !dbg !2170
  br i1 %213, label %276, label %287, !dbg !2171

214:                                              ; preds = %224, %287
  %215 = phi i64 [ 0, %287 ], [ %225, %224 ]
  %216 = phi i32 [ %208, %287 ], [ %226, %224 ]
  call void @llvm.dbg.value(metadata i32 %216, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %215, metadata !2030, metadata !DIExpression()), !dbg !2036
  %217 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %100, i64 %215, !dbg !2172
  %218 = load %struct.residue_t*, %struct.residue_t** %217, align 8, !dbg !2172, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %218, metadata !2025, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2032, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %216, metadata !2034, metadata !DIExpression()), !dbg !2036
  %219 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i64 0, i32 15, !dbg !2173
  %220 = load i32, i32* %219, align 8, !dbg !2173, !tbaa !767
  %221 = icmp sgt i32 %220, 0, !dbg !2174
  br i1 %221, label %282, label %222, !dbg !2175

222:                                              ; preds = %214
  %223 = add nuw nsw i64 %215, 1, !dbg !2176
  br label %224, !dbg !2175

224:                                              ; preds = %268, %222
  %225 = phi i64 [ %223, %222 ], [ %284, %268 ], !dbg !2176
  %226 = phi i32 [ %216, %222 ], [ %270, %268 ], !dbg !2177
  call void @llvm.dbg.value(metadata i32 %226, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %225, metadata !2030, metadata !DIExpression()), !dbg !2036
  %227 = icmp eq i64 %225, %186, !dbg !2178
  br i1 %227, label %274, label %214, !dbg !2179, !llvm.loop !2180

228:                                              ; preds = %282, %268
  %229 = phi i32 [ %220, %282 ], [ %269, %268 ]
  %230 = phi i64 [ 0, %282 ], [ %271, %268 ]
  %231 = phi i32 [ %216, %282 ], [ %270, %268 ]
  call void @llvm.dbg.value(metadata i32 %231, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %230, metadata !2032, metadata !DIExpression()), !dbg !2036
  %232 = load %struct.atom_t*, %struct.atom_t** %283, align 8, !dbg !2182, !tbaa !1518
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2027, metadata !DIExpression()), !dbg !2036
  %233 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 2, !dbg !2183
  %234 = load i32, i32* %233, align 8, !dbg !2183, !tbaa !844
  %235 = and i32 %234, 1, !dbg !2184
  %236 = icmp eq i32 %235, 0, !dbg !2184
  br i1 %236, label %268, label %237, !dbg !2185

237:                                              ; preds = %228
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2027, metadata !DIExpression()), !dbg !2036
  %238 = load i8*, i8** %203, align 8, !dbg !2186, !tbaa !758
  %239 = load i8*, i8** %288, align 8, !dbg !2187, !tbaa !528
  %240 = load i8*, i8** %285, align 8, !dbg !2188, !tbaa !758
  %241 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 0, !dbg !2189
  %242 = load i8*, i8** %241, align 8, !dbg !2189, !tbaa !528
  %243 = load double, double* %289, align 8, !dbg !2190, !tbaa !720
  %244 = load double, double* %290, align 8, !dbg !2190, !tbaa !720
  %245 = load double, double* %291, align 8, !dbg !2190, !tbaa !720
  %246 = getelementptr %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 17, i64 0, !dbg !2190
  %247 = load double, double* %246, align 8, !dbg !2190, !tbaa !720
  %248 = getelementptr %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 17, i64 1, !dbg !2190
  %249 = load double, double* %248, align 8, !dbg !2190, !tbaa !720
  %250 = getelementptr %struct.atom_t, %struct.atom_t* %232, i64 %230, i32 17, i64 2, !dbg !2190
  %251 = load double, double* %250, align 8, !dbg !2190, !tbaa !720
  %252 = fsub double %244, %249, !dbg !2191
  call void @llvm.dbg.value(metadata double %252, metadata !2199, metadata !DIExpression()) #14, !dbg !2202
  %253 = insertelement <2 x double> undef, double %243, i32 0, !dbg !2203
  %254 = insertelement <2 x double> %253, double %245, i32 1, !dbg !2203
  %255 = insertelement <2 x double> undef, double %247, i32 0, !dbg !2203
  %256 = insertelement <2 x double> %255, double %251, i32 1, !dbg !2203
  %257 = fsub <2 x double> %254, %256, !dbg !2203
  %258 = fmul double %252, %252, !dbg !2204
  %259 = fmul <2 x double> %257, %257, !dbg !2205
  %260 = extractelement <2 x double> %259, i32 0, !dbg !2206
  %261 = fadd double %260, %258, !dbg !2206
  %262 = extractelement <2 x double> %259, i32 1, !dbg !2207
  %263 = fadd double %261, %262, !dbg !2207
  %264 = tail call double @sqrt(double %263) #14, !dbg !2208
  %265 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %181, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %204, i8* %238, i8* %239, i32 %286, i8* %240, i8* %242, double %264), !dbg !2209
  %266 = add nsw i32 %231, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %266, metadata !2034, metadata !DIExpression()), !dbg !2036
  %267 = load i32, i32* %219, align 8, !dbg !2173, !tbaa !767
  br label %268, !dbg !2211

268:                                              ; preds = %237, %228
  %269 = phi i32 [ %267, %237 ], [ %229, %228 ], !dbg !2173
  %270 = phi i32 [ %266, %237 ], [ %231, %228 ], !dbg !2177
  call void @llvm.dbg.value(metadata i32 %270, metadata !2034, metadata !DIExpression()), !dbg !2036
  %271 = add nuw nsw i64 %230, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %271, metadata !2032, metadata !DIExpression()), !dbg !2036
  %272 = sext i32 %269 to i64, !dbg !2174
  %273 = icmp slt i64 %271, %272, !dbg !2174
  br i1 %273, label %228, label %224, !dbg !2175, !llvm.loop !2213

274:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i32 %226, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %226, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %226, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %226, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %226, metadata !2034, metadata !DIExpression()), !dbg !2036
  %275 = load i32, i32* %195, align 8, !dbg !2149, !tbaa !767
  br label %276, !dbg !2215

276:                                              ; preds = %274, %205
  %277 = phi i32 [ %206, %205 ], [ %275, %274 ], !dbg !2149
  %278 = phi i32 [ %208, %205 ], [ %226, %274 ], !dbg !2216
  call void @llvm.dbg.value(metadata i32 %278, metadata !2034, metadata !DIExpression()), !dbg !2036
  %279 = add nuw nsw i64 %207, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %279, metadata !2031, metadata !DIExpression()), !dbg !2036
  %280 = sext i32 %277 to i64, !dbg !2152
  %281 = icmp slt i64 %279, %280, !dbg !2152
  br i1 %281, label %205, label %292, !dbg !2153, !llvm.loop !2217

282:                                              ; preds = %214
  %283 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i64 0, i32 17, !dbg !2219
  %284 = add nuw nsw i64 %215, 1, !dbg !2157
  %285 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %218, i64 0, i32 4, !dbg !2157
  %286 = trunc i64 %284 to i32, !dbg !2157
  br label %228, !dbg !2175

287:                                              ; preds = %205
  call void @llvm.dbg.value(metadata i32 %208, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2030, metadata !DIExpression()), !dbg !2036
  %288 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 0, !dbg !2157
  %289 = getelementptr %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 17, i64 0, !dbg !2157
  %290 = getelementptr %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 17, i64 1, !dbg !2157
  %291 = getelementptr %struct.atom_t, %struct.atom_t* %209, i64 %207, i32 17, i64 2, !dbg !2157
  br label %214, !dbg !2179

292:                                              ; preds = %276, %198
  %293 = phi i64 [ %199, %198 ], [ %202, %276 ], !dbg !2154
  %294 = phi i32 [ %192, %198 ], [ %278, %276 ], !dbg !2216
  call void @llvm.dbg.value(metadata i32 %294, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %293, metadata !2029, metadata !DIExpression()), !dbg !2036
  %295 = icmp eq i64 %293, %186, !dbg !2139
  br i1 %295, label %296, label %190, !dbg !2142, !llvm.loop !2220

296:                                              ; preds = %292, %187, %183
  %297 = phi i32 [ 0, %187 ], [ 0, %183 ], [ %294, %292 ], !dbg !2036
  call void @llvm.dbg.value(metadata i32 %297, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.label(metadata !2035), !dbg !2111
  tail call void @free(i8* nonnull %99) #14, !dbg !2222
  br label %298, !dbg !2222

298:                                              ; preds = %103, %296, %6
  %299 = phi i32 [ 0, %6 ], [ %297, %296 ], [ 0, %103 ], !dbg !2036
  ret i32 %299, !dbg !2224
}

declare !dbg !114 dso_local void @select_atoms(%struct.molecule_t*, i8*) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* nocapture readonly %1) local_unnamed_addr #8 !dbg !2225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !2232, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !2233, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 0, metadata !2236, metadata !DIExpression()), !dbg !2238
  %3 = icmp eq i8* %0, null, !dbg !2239
  br i1 %3, label %7, label %4, !dbg !2241

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1, !dbg !2242, !tbaa !464
  %6 = icmp eq i8 %5, 0, !dbg !2243
  br i1 %6, label %7, label %10, !dbg !2244

7:                                                ; preds = %4, %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2245, !tbaa !470
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %8) #15, !dbg !2247
  call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !2238
  br label %81, !dbg !2248

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !2249
  %12 = icmp eq i32 %11, 0, !dbg !2249
  br i1 %12, label %13, label %15, !dbg !2251

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2252, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !2233, metadata !DIExpression()), !dbg !2238
  br label %21, !dbg !2253

15:                                               ; preds = %10
  %16 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2254
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !2233, metadata !DIExpression()), !dbg !2238
  %17 = icmp eq %struct._IO_FILE* %16, null, !dbg !2256
  br i1 %17, label %18, label %21, !dbg !2257

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2258, !tbaa !470
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %0) #15, !dbg !2260
  call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !2238
  br label %81, !dbg !2261

21:                                               ; preds = %13, %15
  %22 = phi %struct._IO_FILE* [ %16, %15 ], [ %14, %13 ], !dbg !2262
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !2233, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 0, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 0, metadata !2235, metadata !DIExpression()), !dbg !2238
  %23 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 0, !dbg !2263
  %24 = load double, double* %23, align 8, !dbg !2263, !tbaa !720
  %25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %24), !dbg !2269
  call void @llvm.dbg.value(metadata i64 1, metadata !2235, metadata !DIExpression()), !dbg !2238
  %26 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 1, !dbg !2263
  %27 = load double, double* %26, align 8, !dbg !2263, !tbaa !720
  %28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %27), !dbg !2269
  call void @llvm.dbg.value(metadata i64 2, metadata !2235, metadata !DIExpression()), !dbg !2238
  %29 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 2, !dbg !2263
  %30 = load double, double* %29, align 8, !dbg !2263, !tbaa !720
  %31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %30), !dbg !2269
  call void @llvm.dbg.value(metadata i64 3, metadata !2235, metadata !DIExpression()), !dbg !2238
  %32 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 3, !dbg !2263
  %33 = load double, double* %32, align 8, !dbg !2263, !tbaa !720
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %33), !dbg !2269
  call void @llvm.dbg.value(metadata i64 4, metadata !2235, metadata !DIExpression()), !dbg !2238
  %35 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2270
  call void @llvm.dbg.value(metadata i64 1, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 0, metadata !2235, metadata !DIExpression()), !dbg !2238
  %36 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 0, !dbg !2263
  %37 = load double, double* %36, align 8, !dbg !2263, !tbaa !720
  %38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %37), !dbg !2269
  call void @llvm.dbg.value(metadata i64 1, metadata !2235, metadata !DIExpression()), !dbg !2238
  %39 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 1, !dbg !2263
  %40 = load double, double* %39, align 8, !dbg !2263, !tbaa !720
  %41 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %40), !dbg !2269
  call void @llvm.dbg.value(metadata i64 2, metadata !2235, metadata !DIExpression()), !dbg !2238
  %42 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 2, !dbg !2263
  %43 = load double, double* %42, align 8, !dbg !2263, !tbaa !720
  %44 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %43), !dbg !2269
  call void @llvm.dbg.value(metadata i64 3, metadata !2235, metadata !DIExpression()), !dbg !2238
  %45 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 3, !dbg !2263
  %46 = load double, double* %45, align 8, !dbg !2263, !tbaa !720
  %47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %46), !dbg !2269
  call void @llvm.dbg.value(metadata i64 4, metadata !2235, metadata !DIExpression()), !dbg !2238
  %48 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2270
  call void @llvm.dbg.value(metadata i64 2, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 0, metadata !2235, metadata !DIExpression()), !dbg !2238
  %49 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 0, !dbg !2263
  %50 = load double, double* %49, align 8, !dbg !2263, !tbaa !720
  %51 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %50), !dbg !2269
  call void @llvm.dbg.value(metadata i64 1, metadata !2235, metadata !DIExpression()), !dbg !2238
  %52 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 1, !dbg !2263
  %53 = load double, double* %52, align 8, !dbg !2263, !tbaa !720
  %54 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %53), !dbg !2269
  call void @llvm.dbg.value(metadata i64 2, metadata !2235, metadata !DIExpression()), !dbg !2238
  %55 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 2, !dbg !2263
  %56 = load double, double* %55, align 8, !dbg !2263, !tbaa !720
  %57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %56), !dbg !2269
  call void @llvm.dbg.value(metadata i64 3, metadata !2235, metadata !DIExpression()), !dbg !2238
  %58 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 3, !dbg !2263
  %59 = load double, double* %58, align 8, !dbg !2263, !tbaa !720
  %60 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %59), !dbg !2269
  call void @llvm.dbg.value(metadata i64 4, metadata !2235, metadata !DIExpression()), !dbg !2238
  %61 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2270
  call void @llvm.dbg.value(metadata i64 3, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i64 0, metadata !2235, metadata !DIExpression()), !dbg !2238
  %62 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 0, !dbg !2263
  %63 = load double, double* %62, align 8, !dbg !2263, !tbaa !720
  %64 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %63), !dbg !2269
  call void @llvm.dbg.value(metadata i64 1, metadata !2235, metadata !DIExpression()), !dbg !2238
  %65 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 1, !dbg !2263
  %66 = load double, double* %65, align 8, !dbg !2263, !tbaa !720
  %67 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %66), !dbg !2269
  call void @llvm.dbg.value(metadata i64 2, metadata !2235, metadata !DIExpression()), !dbg !2238
  %68 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 2, !dbg !2263
  %69 = load double, double* %68, align 8, !dbg !2263, !tbaa !720
  %70 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %69), !dbg !2269
  call void @llvm.dbg.value(metadata i64 3, metadata !2235, metadata !DIExpression()), !dbg !2238
  %71 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 3, !dbg !2263
  %72 = load double, double* %71, align 8, !dbg !2263, !tbaa !720
  %73 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %72), !dbg !2269
  call void @llvm.dbg.value(metadata i64 4, metadata !2235, metadata !DIExpression()), !dbg !2238
  %74 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2270
  call void @llvm.dbg.value(metadata i64 4, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i32 0, metadata !2236, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.label(metadata !2237), !dbg !2271
  %75 = icmp eq %struct._IO_FILE* %22, null, !dbg !2272
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2274
  %77 = icmp eq %struct._IO_FILE* %22, %76, !dbg !2275
  %78 = or i1 %75, %77, !dbg !2276
  br i1 %78, label %81, label %79, !dbg !2276

79:                                               ; preds = %21
  %80 = tail call i32 @fclose(%struct._IO_FILE* nonnull %22), !dbg !2277
  br label %81, !dbg !2277

81:                                               ; preds = %18, %7, %21, %79
  %82 = phi i32 [ 0, %21 ], [ 0, %79 ], [ 1, %7 ], [ 1, %18 ]
  ret i32 %82, !dbg !2278
}

; Function Attrs: nofree nounwind
declare dso_local i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @initres() unnamed_addr #0 !dbg !2279 {
  tail call void @NAB_initres(%struct.residue_t* nonnull @res, i32 0) #14, !dbg !2280
  %1 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2281, !tbaa !758
  %2 = icmp eq i8* %1, null, !dbg !2283
  br i1 %2, label %3, label %9, !dbg !2284

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !2285
  store i8* %4, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2287, !tbaa !758
  %5 = icmp eq i8* %4, null, !dbg !2288
  br i1 %5, label %6, label %9, !dbg !2290

6:                                                ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2291, !tbaa !470
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %7) #15, !dbg !2293
  tail call void @exit(i32 1) #17, !dbg !2294
  unreachable, !dbg !2294

9:                                                ; preds = %3, %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2295, !tbaa !761
  %11 = icmp eq i8* %10, null, !dbg !2297
  br i1 %11, label %12, label %18, !dbg !2298

12:                                               ; preds = %9
  %13 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !2299
  store i8* %13, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2301, !tbaa !761
  %14 = icmp eq i8* %13, null, !dbg !2302
  br i1 %14, label %15, label %18, !dbg !2304

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2305, !tbaa !470
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %16) #15, !dbg !2307
  tail call void @exit(i32 1) #17, !dbg !2308
  unreachable, !dbg !2308

18:                                               ; preds = %12, %9
  %19 = load i32, i32* @n_atab, align 4, !dbg !2309, !tbaa !560
  store i32 %19, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2310, !tbaa !767
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2311, !tbaa !1518
  ret void, !dbg !2312
}

declare !dbg !325 dso_local %struct.molecule_t* @newmolecule() local_unnamed_addr #4

declare !dbg !328 dso_local i8* @ggets(i8*, i32, %struct._IO_FILE*) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local i8* @strncpy(i8* noalias returned, i8* noalias nocapture readonly, i64) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @makebonds() unnamed_addr #8 !dbg !2313 {
  call void @llvm.dbg.value(metadata %struct.residue_t* @res, metadata !2317, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 0, metadata !2318, metadata !DIExpression()), !dbg !2325
  %1 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2326, !tbaa !767
  %2 = icmp sgt i32 %1, 0, !dbg !2329
  br i1 %2, label %3, label %206, !dbg !2330

3:                                                ; preds = %0
  %4 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2331, !tbaa !1518
  %5 = zext i32 %1 to i64, !dbg !2330
  %6 = add nsw i64 %5, -1, !dbg !2330
  %7 = and i64 %5, 3, !dbg !2330
  %8 = icmp ult i64 %6, 3, !dbg !2330
  br i1 %8, label %11, label %9, !dbg !2330

9:                                                ; preds = %3
  %10 = sub nsw i64 %5, %7, !dbg !2330
  br label %25, !dbg !2330

11:                                               ; preds = %25, %3
  %12 = phi i64 [ 0, %3 ], [ %35, %25 ]
  %13 = icmp eq i64 %7, 0, !dbg !2330
  br i1 %13, label %21, label %14, !dbg !2330

14:                                               ; preds = %11, %14
  %15 = phi i64 [ %18, %14 ], [ %12, %11 ]
  %16 = phi i64 [ %19, %14 ], [ %7, %11 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !2318, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2320, metadata !DIExpression()), !dbg !2325
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %15, i32 3, !dbg !2333
  store i32 0, i32* %17, align 4, !dbg !2334, !tbaa !2335
  %18 = add nuw nsw i64 %15, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %18, metadata !2318, metadata !DIExpression()), !dbg !2325
  %19 = add i64 %16, -1, !dbg !2330
  %20 = icmp eq i64 %19, 0, !dbg !2330
  br i1 %20, label %21, label %14, !dbg !2330, !llvm.loop !2337

21:                                               ; preds = %14, %11
  call void @llvm.dbg.value(metadata i32 0, metadata !2318, metadata !DIExpression()), !dbg !2325
  %22 = icmp sgt i32 %1, 1, !dbg !2338
  br i1 %22, label %23, label %206, !dbg !2341

23:                                               ; preds = %21
  %24 = tail call i16** @__ctype_b_loc() #18, !dbg !2342
  br label %44, !dbg !2341

25:                                               ; preds = %25, %9
  %26 = phi i64 [ 0, %9 ], [ %35, %25 ]
  %27 = phi i64 [ %10, %9 ], [ %36, %25 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !2318, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2320, metadata !DIExpression()), !dbg !2325
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %26, i32 3, !dbg !2333
  store i32 0, i32* %28, align 4, !dbg !2334, !tbaa !2335
  %29 = or i64 %26, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %29, metadata !2318, metadata !DIExpression()), !dbg !2325
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %29, i32 3, !dbg !2333
  store i32 0, i32* %30, align 4, !dbg !2334, !tbaa !2335
  %31 = or i64 %26, 2, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %31, metadata !2318, metadata !DIExpression()), !dbg !2325
  %32 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %31, i32 3, !dbg !2333
  store i32 0, i32* %32, align 4, !dbg !2334, !tbaa !2335
  %33 = or i64 %26, 3, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %33, metadata !2318, metadata !DIExpression()), !dbg !2325
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %33, i32 3, !dbg !2333
  store i32 0, i32* %34, align 4, !dbg !2334, !tbaa !2335
  %35 = add nuw nsw i64 %26, 4, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %35, metadata !2318, metadata !DIExpression()), !dbg !2325
  %36 = add i64 %27, -4, !dbg !2330
  %37 = icmp eq i64 %36, 0, !dbg !2330
  br i1 %37, label %11, label %25, !dbg !2330, !llvm.loop !2345

38:                                               ; preds = %198, %118, %61
  %39 = phi i32 [ %45, %61 ], [ %120, %118 ], [ %200, %198 ], !dbg !2347
  call void @llvm.dbg.value(metadata i64 %63, metadata !2318, metadata !DIExpression()), !dbg !2325
  %40 = add nsw i32 %39, -1, !dbg !2348
  %41 = sext i32 %40 to i64, !dbg !2338
  %42 = icmp slt i64 %63, %41, !dbg !2338
  %43 = add nuw nsw i64 %47, 1, !dbg !2341
  br i1 %42, label %44, label %206, !dbg !2341

44:                                               ; preds = %23, %38
  %45 = phi i32 [ %1, %23 ], [ %39, %38 ]
  %46 = phi i64 [ 0, %23 ], [ %63, %38 ]
  %47 = phi i64 [ 1, %23 ], [ %43, %38 ]
  call void @llvm.dbg.value(metadata i64 %46, metadata !2318, metadata !DIExpression()), !dbg !2325
  %48 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2349, !tbaa !1518
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2320, metadata !DIExpression()), !dbg !2325
  %49 = load i16*, i16** %24, align 8, !dbg !2350, !tbaa !470
  %50 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 0, !dbg !2350
  %51 = load i8*, i8** %50, align 8, !dbg !2350, !tbaa !528
  %52 = load i8, i8* %51, align 1, !dbg !2350, !tbaa !464
  %53 = sext i8 %52 to i64, !dbg !2350
  %54 = getelementptr inbounds i16, i16* %49, i64 %53, !dbg !2350
  %55 = load i16, i16* %54, align 2, !dbg !2350, !tbaa !2351
  %56 = and i16 %55, 2048, !dbg !2350
  %57 = icmp eq i16 %56, 0, !dbg !2350
  br i1 %57, label %61, label %58, !dbg !2353

58:                                               ; preds = %44
  %59 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !2354
  %60 = load i8, i8* %59, align 1, !dbg !2354, !tbaa !464
  call void @llvm.dbg.value(metadata i1 undef, metadata !2322, metadata !DIExpression()), !dbg !2325
  br label %61, !dbg !2355

61:                                               ; preds = %44, %58
  %62 = phi i8 [ %60, %58 ], [ %52, %44 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !2322, metadata !DIExpression()), !dbg !2325
  %63 = add nuw nsw i64 %46, 1, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %63, metadata !2319, metadata !DIExpression()), !dbg !2325
  %64 = sext i32 %45 to i64, !dbg !2358
  %65 = icmp slt i64 %63, %64, !dbg !2358
  br i1 %65, label %66, label %38, !dbg !2360, !llvm.loop !2361

66:                                               ; preds = %61
  %67 = or i8 %62, 32, !dbg !2342
  %68 = icmp eq i8 %67, 104, !dbg !2342
  call void @llvm.dbg.value(metadata i1 %68, metadata !2322, metadata !DIExpression()), !dbg !2325
  %69 = getelementptr %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 17, i64 0, !dbg !2363
  %70 = getelementptr %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 17, i64 1, !dbg !2363
  %71 = getelementptr %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 17, i64 2, !dbg !2363
  %72 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 3, !dbg !2365
  %73 = trunc i64 %46 to i32, !dbg !2370
  br i1 %68, label %76, label %74, !dbg !2360

74:                                               ; preds = %66
  %75 = trunc i64 %46 to i32, !dbg !2371
  br label %125, !dbg !2360

76:                                               ; preds = %66, %123
  %77 = phi %struct.atom_t* [ %124, %123 ], [ %48, %66 ], !dbg !2377
  %78 = phi i64 [ %119, %123 ], [ %47, %66 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !2319, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2321, metadata !DIExpression()), !dbg !2325
  %79 = load double, double* %69, align 8, !dbg !2378, !tbaa !720
  %80 = load double, double* %70, align 8, !dbg !2378, !tbaa !720
  %81 = load double, double* %71, align 8, !dbg !2378, !tbaa !720
  %82 = getelementptr %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 17, i64 0, !dbg !2378
  %83 = load double, double* %82, align 8, !dbg !2378, !tbaa !720
  %84 = getelementptr %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 17, i64 1, !dbg !2378
  %85 = load double, double* %84, align 8, !dbg !2378, !tbaa !720
  %86 = getelementptr %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 17, i64 2, !dbg !2378
  %87 = load double, double* %86, align 8, !dbg !2378, !tbaa !720
  %88 = fsub double %80, %85, !dbg !2379
  call void @llvm.dbg.value(metadata double %88, metadata !2199, metadata !DIExpression()) #14, !dbg !2381
  %89 = insertelement <2 x double> undef, double %79, i32 0, !dbg !2382
  %90 = insertelement <2 x double> %89, double %81, i32 1, !dbg !2382
  %91 = insertelement <2 x double> undef, double %83, i32 0, !dbg !2382
  %92 = insertelement <2 x double> %91, double %87, i32 1, !dbg !2382
  %93 = fsub <2 x double> %90, %92, !dbg !2382
  %94 = fmul double %88, %88, !dbg !2383
  %95 = fmul <2 x double> %93, %93, !dbg !2384
  %96 = extractelement <2 x double> %95, i32 0, !dbg !2385
  %97 = fadd double %96, %94, !dbg !2385
  %98 = extractelement <2 x double> %95, i32 1, !dbg !2386
  %99 = fadd double %97, %98, !dbg !2386
  %100 = tail call double @sqrt(double %99) #14, !dbg !2387
  call void @llvm.dbg.value(metadata double %100, metadata !2324, metadata !DIExpression()), !dbg !2325
  %101 = fcmp ugt double %100, 1.200000e+00, !dbg !2388
  br i1 %101, label %118, label %102, !dbg !2389

102:                                              ; preds = %76
  %103 = load i32, i32* %72, align 4, !dbg !2390, !tbaa !2335
  %104 = icmp slt i32 %103, 8, !dbg !2391
  br i1 %104, label %105, label %118, !dbg !2392

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 3, !dbg !2393
  %107 = load i32, i32* %106, align 4, !dbg !2393, !tbaa !2335
  %108 = icmp slt i32 %107, 8, !dbg !2394
  br i1 %108, label %109, label %118, !dbg !2395

109:                                              ; preds = %105
  %110 = add nsw i32 %103, 1, !dbg !2396
  store i32 %110, i32* %72, align 4, !dbg !2396, !tbaa !2335
  %111 = sext i32 %103 to i64, !dbg !2397
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 4, i64 %111, !dbg !2397
  %113 = trunc i64 %78 to i32, !dbg !2398
  store i32 %113, i32* %112, align 4, !dbg !2398, !tbaa !560
  %114 = load i32, i32* %106, align 4, !dbg !2399, !tbaa !2335
  %115 = add nsw i32 %114, 1, !dbg !2399
  store i32 %115, i32* %106, align 4, !dbg !2399, !tbaa !2335
  %116 = sext i32 %114 to i64, !dbg !2400
  %117 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %77, i64 %78, i32 4, i64 %116, !dbg !2400
  store i32 %73, i32* %117, align 4, !dbg !2401, !tbaa !560
  br label %118, !dbg !2402

118:                                              ; preds = %109, %105, %102, %76
  %119 = add nuw nsw i64 %78, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %119, metadata !2319, metadata !DIExpression()), !dbg !2325
  %120 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2404, !tbaa !767
  %121 = trunc i64 %119 to i32, !dbg !2358
  %122 = icmp sgt i32 %120, %121, !dbg !2358
  br i1 %122, label %123, label %38, !dbg !2360, !llvm.loop !2405

123:                                              ; preds = %118
  %124 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2377, !tbaa !1518
  br label %76, !dbg !2360

125:                                              ; preds = %203, %74
  %126 = phi i16* [ %49, %74 ], [ %205, %203 ], !dbg !2407
  %127 = phi %struct.atom_t* [ %48, %74 ], [ %204, %203 ], !dbg !2377
  %128 = phi i64 [ %47, %74 ], [ %199, %203 ]
  call void @llvm.dbg.value(metadata i64 %128, metadata !2319, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2321, metadata !DIExpression()), !dbg !2325
  %129 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 0, !dbg !2407
  %130 = load i8*, i8** %129, align 8, !dbg !2407, !tbaa !528
  %131 = load i8, i8* %130, align 1, !dbg !2407, !tbaa !464
  %132 = sext i8 %131 to i64, !dbg !2407
  %133 = getelementptr inbounds i16, i16* %126, i64 %132, !dbg !2407
  %134 = load i16, i16* %133, align 2, !dbg !2407, !tbaa !2351
  %135 = and i16 %134, 2048, !dbg !2407
  %136 = icmp eq i16 %135, 0, !dbg !2407
  br i1 %136, label %140, label %137, !dbg !2409

137:                                              ; preds = %125
  %138 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !2410
  %139 = load i8, i8* %138, align 1, !dbg !2410, !tbaa !464
  call void @llvm.dbg.value(metadata i1 undef, metadata !2323, metadata !DIExpression()), !dbg !2325
  br label %140, !dbg !2411

140:                                              ; preds = %125, %137
  %141 = phi i8 [ %139, %137 ], [ %131, %125 ]
  %142 = or i8 %141, 32, !dbg !2412
  %143 = icmp eq i8 %142, 104, !dbg !2412
  call void @llvm.dbg.value(metadata i1 %143, metadata !2323, metadata !DIExpression()), !dbg !2325
  %144 = load double, double* %69, align 8, !dbg !2378, !tbaa !720
  %145 = load double, double* %70, align 8, !dbg !2378, !tbaa !720
  %146 = load double, double* %71, align 8, !dbg !2378, !tbaa !720
  %147 = getelementptr %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 17, i64 0, !dbg !2378
  %148 = load double, double* %147, align 8, !dbg !2378, !tbaa !720
  %149 = getelementptr %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 17, i64 1, !dbg !2378
  %150 = load double, double* %149, align 8, !dbg !2378, !tbaa !720
  %151 = getelementptr %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 17, i64 2, !dbg !2378
  %152 = load double, double* %151, align 8, !dbg !2378, !tbaa !720
  %153 = fsub double %144, %148, !dbg !2382
  call void @llvm.dbg.value(metadata double %153, metadata !2198, metadata !DIExpression()) #14, !dbg !2381
  %154 = fsub double %145, %150, !dbg !2379
  call void @llvm.dbg.value(metadata double %154, metadata !2199, metadata !DIExpression()) #14, !dbg !2381
  %155 = fsub double %146, %152, !dbg !2413
  call void @llvm.dbg.value(metadata double %155, metadata !2200, metadata !DIExpression()) #14, !dbg !2381
  %156 = fmul double %153, %153, !dbg !2384
  %157 = fmul double %154, %154, !dbg !2383
  %158 = fadd double %156, %157, !dbg !2385
  %159 = fmul double %155, %155, !dbg !2414
  %160 = fadd double %158, %159, !dbg !2386
  %161 = tail call double @sqrt(double %160) #14, !dbg !2387
  call void @llvm.dbg.value(metadata double %161, metadata !2324, metadata !DIExpression()), !dbg !2325
  br i1 %143, label %162, label %180, !dbg !2415

162:                                              ; preds = %140
  %163 = fcmp ugt double %161, 1.200000e+00, !dbg !2388
  br i1 %163, label %198, label %164, !dbg !2389

164:                                              ; preds = %162
  %165 = load i32, i32* %72, align 4, !dbg !2390, !tbaa !2335
  %166 = icmp slt i32 %165, 8, !dbg !2391
  br i1 %166, label %167, label %198, !dbg !2392

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 3, !dbg !2393
  %169 = load i32, i32* %168, align 4, !dbg !2393, !tbaa !2335
  %170 = icmp slt i32 %169, 8, !dbg !2394
  br i1 %170, label %171, label %198, !dbg !2395

171:                                              ; preds = %167
  %172 = add nsw i32 %165, 1, !dbg !2396
  store i32 %172, i32* %72, align 4, !dbg !2396, !tbaa !2335
  %173 = sext i32 %165 to i64, !dbg !2397
  %174 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 4, i64 %173, !dbg !2397
  %175 = trunc i64 %128 to i32, !dbg !2398
  store i32 %175, i32* %174, align 4, !dbg !2398, !tbaa !560
  %176 = load i32, i32* %168, align 4, !dbg !2399, !tbaa !2335
  %177 = add nsw i32 %176, 1, !dbg !2399
  store i32 %177, i32* %168, align 4, !dbg !2399, !tbaa !2335
  %178 = sext i32 %176 to i64, !dbg !2400
  %179 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 4, i64 %178, !dbg !2400
  store i32 %75, i32* %179, align 4, !dbg !2401, !tbaa !560
  br label %198, !dbg !2402

180:                                              ; preds = %140
  %181 = fcmp ugt double %161, 1.850000e+00, !dbg !2416
  br i1 %181, label %198, label %182, !dbg !2417

182:                                              ; preds = %180
  %183 = load i32, i32* %72, align 4, !dbg !2418, !tbaa !2335
  %184 = icmp slt i32 %183, 8, !dbg !2419
  br i1 %184, label %185, label %198, !dbg !2420

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 3, !dbg !2421
  %187 = load i32, i32* %186, align 4, !dbg !2421, !tbaa !2335
  %188 = icmp slt i32 %187, 8, !dbg !2422
  br i1 %188, label %189, label %198, !dbg !2423

189:                                              ; preds = %185
  %190 = add nsw i32 %183, 1, !dbg !2424
  store i32 %190, i32* %72, align 4, !dbg !2424, !tbaa !2335
  %191 = sext i32 %183 to i64, !dbg !2426
  %192 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i64 %46, i32 4, i64 %191, !dbg !2426
  %193 = trunc i64 %128 to i32, !dbg !2427
  store i32 %193, i32* %192, align 4, !dbg !2427, !tbaa !560
  %194 = load i32, i32* %186, align 4, !dbg !2428, !tbaa !2335
  %195 = add nsw i32 %194, 1, !dbg !2428
  store i32 %195, i32* %186, align 4, !dbg !2428, !tbaa !2335
  %196 = sext i32 %194 to i64, !dbg !2429
  %197 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %127, i64 %128, i32 4, i64 %196, !dbg !2429
  store i32 %73, i32* %197, align 4, !dbg !2430, !tbaa !560
  br label %198, !dbg !2431

198:                                              ; preds = %162, %180, %164, %167, %171, %182, %185, %189
  %199 = add nuw nsw i64 %128, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %199, metadata !2319, metadata !DIExpression()), !dbg !2325
  %200 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2404, !tbaa !767
  %201 = trunc i64 %199 to i32, !dbg !2358
  %202 = icmp sgt i32 %200, %201, !dbg !2358
  br i1 %202, label %203, label %38, !dbg !2360, !llvm.loop !2405

203:                                              ; preds = %198
  %204 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2377, !tbaa !1518
  %205 = load i16*, i16** %24, align 8, !dbg !2407, !tbaa !470
  br label %125, !dbg !2360

206:                                              ; preds = %38, %0, %21
  ret void, !dbg !2432
}

declare !dbg !329 dso_local i32 @addresidue(%struct.molecule_t*, i8*, %struct.residue_t*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #5

declare !dbg !332 dso_local i32 @addstrand(%struct.molecule_t*, i8*) local_unnamed_addr #4

declare !dbg !335 dso_local void @NAB_initatom(%struct.atom_t*, i32) local_unnamed_addr #4

declare !dbg !339 dso_local void @NAB_initres(%struct.residue_t*, i32) local_unnamed_addr #4

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
!llvm.module.flags = !{!385, !386, !387}
!llvm.ident = !{!388}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mat", scope: !2, file: !3, line: 164, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "getmatrix", scope: !3, file: !3, line: 159, type: !4, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !368)
!3 = !DIFile(filename: "molio.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "MATRIX_T", file: !8, line: 14, baseType: !9)
!8 = !DIFile(filename: "./nabtypes.h", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, elements: !11)
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !12}
!12 = !DISubrange(count: 4)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !33, globals: !350, splitDebugInlining: false, nameTableKind: None)
!16 = !{!17}
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 46, baseType: !19, size: 32, elements: !20)
!18 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!21 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!33 = !{!34, !39, !40, !43, !103, !106, !109, !110, !114, !143, !325, !328, !37, !329, !332, !335, !339, !13, !342, !74, !343}
!34 = !DISubprogram(name: "get_mytaskid", scope: !3, file: !3, line: 99, type: !35, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!35 = !DISubroutineType(types: !36)
!36 = !{!37}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !{}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DISubprogram(name: "reducerror", scope: !3, file: !3, line: 100, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !37}
!43 = !DISubprogram(name: "fclose", scope: !44, file: !44, line: 213, type: !45, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!44 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!45 = !DISubroutineType(types: !46)
!46 = !{!37, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 49, size: 1728, elements: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !67, !68, !69, !73, !75, !77, !81, !84, !86, !89, !92, !93, !94, !98, !99}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 51, baseType: !37, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 54, baseType: !13, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 55, baseType: !13, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 56, baseType: !13, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 57, baseType: !13, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 58, baseType: !13, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 59, baseType: !13, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 60, baseType: !13, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 61, baseType: !13, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 64, baseType: !13, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 65, baseType: !13, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 66, baseType: !13, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 68, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 36, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 70, baseType: !47, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 72, baseType: !37, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 73, baseType: !37, size: 32, offset: 928)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 74, baseType: !70, size: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !71, line: 152, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!72 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 77, baseType: !74, size: 16, offset: 1024)
!74 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 78, baseType: !76, size: 8, offset: 1040)
!76 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 79, baseType: !78, size: 8, offset: 1048)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 81, baseType: !82, size: 64, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 43, baseType: null)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 89, baseType: !85, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !71, line: 153, baseType: !72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !48, file: !49, line: 91, baseType: !87, size: 64, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !49, line: 37, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !48, file: !49, line: 92, baseType: !90, size: 64, offset: 1280)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !49, line: 38, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !48, file: !49, line: 93, baseType: !47, size: 64, offset: 1344)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !48, file: !49, line: 94, baseType: !39, size: 64, offset: 1408)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 95, baseType: !95, size: 64, offset: 1472)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 46, baseType: !97)
!96 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!97 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 96, baseType: !37, size: 32, offset: 1536)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 98, baseType: !100, size: 160, offset: 1568)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 20)
!103 = !DISubprogram(name: "fgets", scope: !44, file: !44, line: 564, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!104 = !DISubroutineType(types: !105)
!105 = !{!13, !13, !37, !47}
!106 = !DISubprogram(name: "rt_errormsg_s", scope: !3, file: !3, line: 107, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!107 = !DISubroutineType(types: !108)
!108 = !{!37, !37, !13, !13}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!110 = !DISubprogram(name: "free", scope: !111, file: !111, line: 565, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!111 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!112 = !DISubroutineType(types: !113)
!113 = !{null, !39}
!114 = !DISubprogram(name: "select_atoms", scope: !3, file: !3, line: 106, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117, !13}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !8, line: 118, size: 1088, elements: !119)
!119 = !{!120, !125, !127, !219, !220, !221, !222}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !118, file: !8, line: 119, baseType: !121, size: 768)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !8, line: 13, baseType: !122)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 768, elements: !123)
!123 = !{!12, !124}
!124 = !DISubrange(count: 3)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !118, file: !8, line: 120, baseType: !126, size: 32, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !8, line: 6, baseType: !37)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !118, file: !8, line: 121, baseType: !128, size: 64, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !8, line: 93, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !8, line: 84, size: 384, elements: !131)
!131 = !{!132, !135, !136, !137, !138, !140, !141, !142}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !130, file: !8, line: 85, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !8, line: 17, baseType: !14)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !130, file: !8, line: 86, baseType: !126, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !130, file: !8, line: 87, baseType: !126, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !130, file: !8, line: 88, baseType: !117, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !130, file: !8, line: 89, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !130, file: !8, line: 90, baseType: !126, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !130, file: !8, line: 91, baseType: !126, size: 32, offset: 288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !130, file: !8, line: 92, baseType: !143, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !8, line: 82, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !8, line: 63, size: 1024, elements: !147)
!147 = !{!148, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !169, !170, !176, !177, !186, !187, !189}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !146, file: !8, line: 64, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !146, file: !8, line: 65, baseType: !126, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !146, file: !8, line: 66, baseType: !126, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !146, file: !8, line: 67, baseType: !126, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !146, file: !8, line: 68, baseType: !133, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !146, file: !8, line: 69, baseType: !133, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !146, file: !8, line: 70, baseType: !126, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !146, file: !8, line: 71, baseType: !126, size: 32, offset: 352)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !146, file: !8, line: 72, baseType: !126, size: 32, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !146, file: !8, line: 73, baseType: !139, size: 64, offset: 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !146, file: !8, line: 74, baseType: !160, size: 64, offset: 512)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !8, line: 52, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !8, line: 47, size: 192, elements: !163)
!163 = !{!164, !166, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !162, file: !8, line: 48, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !162, file: !8, line: 49, baseType: !126, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !162, file: !8, line: 50, baseType: !126, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !162, file: !8, line: 51, baseType: !126, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !146, file: !8, line: 75, baseType: !126, size: 32, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !146, file: !8, line: 76, baseType: !171, size: 64, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !8, line: 54, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 2)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !146, file: !8, line: 77, baseType: !126, size: 32, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !146, file: !8, line: 78, baseType: !178, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !8, line: 61, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !8, line: 58, size: 192, elements: !181)
!181 = !{!182, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !180, file: !8, line: 59, baseType: !183, size: 128)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !184)
!184 = !{!12}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !180, file: !8, line: 60, baseType: !10, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !146, file: !8, line: 79, baseType: !126, size: 32, offset: 832)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !146, file: !8, line: 80, baseType: !188, size: 64, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !146, file: !8, line: 81, baseType: !190, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !8, line: 45, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !8, line: 25, size: 1408, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !218}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !192, file: !8, line: 26, baseType: !133, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !192, file: !8, line: 27, baseType: !133, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !192, file: !8, line: 28, baseType: !126, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !192, file: !8, line: 29, baseType: !126, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !192, file: !8, line: 30, baseType: !199, size: 256, offset: 192)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !192, file: !8, line: 31, baseType: !149, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !192, file: !8, line: 32, baseType: !10, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !192, file: !8, line: 33, baseType: !10, size: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !192, file: !8, line: 34, baseType: !10, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !192, file: !8, line: 35, baseType: !10, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !192, file: !8, line: 36, baseType: !133, size: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !192, file: !8, line: 37, baseType: !126, size: 32, offset: 832)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !192, file: !8, line: 38, baseType: !10, size: 64, offset: 896)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !192, file: !8, line: 39, baseType: !10, size: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !192, file: !8, line: 40, baseType: !126, size: 32, offset: 1024)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !192, file: !8, line: 41, baseType: !126, size: 32, offset: 1056)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !192, file: !8, line: 42, baseType: !133, size: 64, offset: 1088)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !192, file: !8, line: 43, baseType: !215, size: 192, offset: 1152)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !8, line: 12, baseType: !216)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !217)
!217 = !{!124}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !192, file: !8, line: 44, baseType: !10, size: 64, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !118, file: !8, line: 122, baseType: !126, size: 32, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !118, file: !8, line: 123, baseType: !126, size: 32, offset: 928)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !118, file: !8, line: 124, baseType: !126, size: 32, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !118, file: !8, line: 125, baseType: !223, size: 64, offset: 1024)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !8, line: 115, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !8, line: 95, size: 5760, elements: !226)
!226 = !{!227, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !225, file: !8, line: 96, baseType: !228, size: 648)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 81)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !225, file: !8, line: 97, baseType: !126, size: 32, offset: 672)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !225, file: !8, line: 97, baseType: !126, size: 32, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !225, file: !8, line: 97, baseType: !126, size: 32, offset: 736)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !225, file: !8, line: 98, baseType: !126, size: 32, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !225, file: !8, line: 98, baseType: !126, size: 32, offset: 800)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !225, file: !8, line: 98, baseType: !126, size: 32, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !225, file: !8, line: 98, baseType: !126, size: 32, offset: 864)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !225, file: !8, line: 98, baseType: !126, size: 32, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !225, file: !8, line: 98, baseType: !126, size: 32, offset: 928)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !225, file: !8, line: 99, baseType: !126, size: 32, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !225, file: !8, line: 99, baseType: !126, size: 32, offset: 992)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !225, file: !8, line: 99, baseType: !126, size: 32, offset: 1024)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !225, file: !8, line: 99, baseType: !126, size: 32, offset: 1056)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !225, file: !8, line: 99, baseType: !126, size: 32, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !225, file: !8, line: 99, baseType: !126, size: 32, offset: 1120)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !225, file: !8, line: 100, baseType: !126, size: 32, offset: 1152)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !225, file: !8, line: 100, baseType: !126, size: 32, offset: 1184)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !225, file: !8, line: 100, baseType: !126, size: 32, offset: 1216)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !225, file: !8, line: 100, baseType: !126, size: 32, offset: 1248)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !225, file: !8, line: 100, baseType: !126, size: 32, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !225, file: !8, line: 100, baseType: !126, size: 32, offset: 1312)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !225, file: !8, line: 101, baseType: !126, size: 32, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !225, file: !8, line: 101, baseType: !126, size: 32, offset: 1376)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !225, file: !8, line: 101, baseType: !126, size: 32, offset: 1408)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !225, file: !8, line: 101, baseType: !126, size: 32, offset: 1440)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !225, file: !8, line: 101, baseType: !126, size: 32, offset: 1472)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !225, file: !8, line: 101, baseType: !126, size: 32, offset: 1504)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !225, file: !8, line: 101, baseType: !126, size: 32, offset: 1536)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !225, file: !8, line: 101, baseType: !126, size: 32, offset: 1568)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !225, file: !8, line: 102, baseType: !126, size: 32, offset: 1600)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !225, file: !8, line: 102, baseType: !126, size: 32, offset: 1632)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !225, file: !8, line: 102, baseType: !126, size: 32, offset: 1664)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !225, file: !8, line: 103, baseType: !133, size: 64, offset: 1728)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !225, file: !8, line: 103, baseType: !133, size: 64, offset: 1792)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !225, file: !8, line: 103, baseType: !133, size: 64, offset: 1856)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !225, file: !8, line: 103, baseType: !133, size: 64, offset: 1920)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 1984)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 2048)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 2112)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 2176)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 2240)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 2304)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 2368)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 2432)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !225, file: !8, line: 104, baseType: !268, size: 64, offset: 2496)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !225, file: !8, line: 105, baseType: !268, size: 64, offset: 2560)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !225, file: !8, line: 105, baseType: !268, size: 64, offset: 2624)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !225, file: !8, line: 105, baseType: !268, size: 64, offset: 2688)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !225, file: !8, line: 105, baseType: !268, size: 64, offset: 2752)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !225, file: !8, line: 105, baseType: !268, size: 64, offset: 2816)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !225, file: !8, line: 105, baseType: !268, size: 64, offset: 2880)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !225, file: !8, line: 105, baseType: !268, size: 64, offset: 2944)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !225, file: !8, line: 106, baseType: !216, size: 192, offset: 3008)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !225, file: !8, line: 106, baseType: !10, size: 64, offset: 3200)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !225, file: !8, line: 106, baseType: !10, size: 64, offset: 3264)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !225, file: !8, line: 106, baseType: !10, size: 64, offset: 3328)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !225, file: !8, line: 106, baseType: !10, size: 64, offset: 3392)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !225, file: !8, line: 106, baseType: !10, size: 64, offset: 3456)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !225, file: !8, line: 107, baseType: !188, size: 64, offset: 3520)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !225, file: !8, line: 107, baseType: !188, size: 64, offset: 3584)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !225, file: !8, line: 107, baseType: !188, size: 64, offset: 3648)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !225, file: !8, line: 107, baseType: !188, size: 64, offset: 3712)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !225, file: !8, line: 107, baseType: !188, size: 64, offset: 3776)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !225, file: !8, line: 107, baseType: !188, size: 64, offset: 3840)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !225, file: !8, line: 108, baseType: !188, size: 64, offset: 3904)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !225, file: !8, line: 108, baseType: !188, size: 64, offset: 3968)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !225, file: !8, line: 108, baseType: !188, size: 64, offset: 4032)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !225, file: !8, line: 108, baseType: !188, size: 64, offset: 4096)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !225, file: !8, line: 108, baseType: !188, size: 64, offset: 4160)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !225, file: !8, line: 108, baseType: !188, size: 64, offset: 4224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !225, file: !8, line: 109, baseType: !188, size: 64, offset: 4288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !225, file: !8, line: 109, baseType: !188, size: 64, offset: 4352)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !225, file: !8, line: 109, baseType: !188, size: 64, offset: 4416)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !225, file: !8, line: 109, baseType: !188, size: 64, offset: 4480)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !225, file: !8, line: 109, baseType: !188, size: 64, offset: 4544)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !225, file: !8, line: 110, baseType: !188, size: 64, offset: 4608)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !225, file: !8, line: 110, baseType: !188, size: 64, offset: 4672)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !225, file: !8, line: 110, baseType: !188, size: 64, offset: 4736)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !225, file: !8, line: 110, baseType: !188, size: 64, offset: 4800)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !225, file: !8, line: 110, baseType: !188, size: 64, offset: 4864)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !225, file: !8, line: 111, baseType: !188, size: 64, offset: 4928)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !225, file: !8, line: 111, baseType: !188, size: 64, offset: 4992)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !225, file: !8, line: 111, baseType: !188, size: 64, offset: 5056)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !225, file: !8, line: 111, baseType: !188, size: 64, offset: 5120)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !225, file: !8, line: 111, baseType: !188, size: 64, offset: 5184)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !225, file: !8, line: 111, baseType: !188, size: 64, offset: 5248)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !225, file: !8, line: 112, baseType: !188, size: 64, offset: 5312)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !225, file: !8, line: 112, baseType: !188, size: 64, offset: 5376)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !225, file: !8, line: 112, baseType: !188, size: 64, offset: 5440)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !225, file: !8, line: 112, baseType: !188, size: 64, offset: 5504)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !225, file: !8, line: 113, baseType: !188, size: 64, offset: 5568)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !225, file: !8, line: 113, baseType: !188, size: 64, offset: 5632)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !225, file: !8, line: 114, baseType: !268, size: 64, offset: 5696)
!325 = !DISubprogram(name: "newmolecule", scope: !3, file: !3, line: 103, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!326 = !DISubroutineType(types: !327)
!327 = !{!117}
!328 = !DISubprogram(name: "ggets", scope: !3, file: !3, line: 101, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!329 = !DISubprogram(name: "addresidue", scope: !3, file: !3, line: 105, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!330 = !DISubroutineType(types: !331)
!331 = !{!37, !117, !13, !149}
!332 = !DISubprogram(name: "addstrand", scope: !3, file: !3, line: 104, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!333 = !DISubroutineType(types: !334)
!334 = !{!37, !117, !13}
!335 = !DISubprogram(name: "NAB_initatom", scope: !3, file: !3, line: 89, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338, !37}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!339 = !DISubprogram(name: "NAB_initres", scope: !3, file: !3, line: 88, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !38)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !149, !37}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "CID_T", file: !3, line: 62, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cid_t", file: !3, line: 58, size: 128, elements: !346)
!346 = !{!347, !348, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !345, file: !3, line: 59, baseType: !37, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "c_last", scope: !345, file: !3, line: 60, baseType: !37, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "c_cids", scope: !345, file: !3, line: 61, baseType: !13, size: 64, offset: 64)
!350 = !{!0, !351, !359, !361, !363}
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "init", scope: !353, file: !3, line: 774, type: !37, isLocal: true, isDefinition: true)
!353 = distinct !DISubprogram(name: "init_atab", scope: !3, file: !3, line: 772, type: !354, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{null}
!356 = !{!357, !358}
!357 = !DILocalVariable(name: "a", scope: !353, file: !3, line: 775, type: !37)
!358 = !DILocalVariable(name: "ap", scope: !353, file: !3, line: 776, type: !190)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "n_atab", scope: !15, file: !3, line: 70, type: !37, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "res", scope: !15, file: !3, line: 75, type: !145, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "atab", scope: !15, file: !3, line: 69, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 1408000, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 1000)
!368 = !{!369, !370, !374, !378, !379, !380, !381, !382, !383}
!369 = !DILocalVariable(name: "fname", arg: 1, scope: !2, file: !3, line: 159, type: !13)
!370 = !DILocalVariable(name: "fp", scope: !2, file: !3, line: 161, type: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !373, line: 7, baseType: !48)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!374 = !DILocalVariable(name: "line", scope: !2, file: !3, line: 162, type: !375)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 256)
!378 = !DILocalVariable(name: "r", scope: !2, file: !3, line: 163, type: !37)
!379 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 163, type: !37)
!380 = !DILocalVariable(name: "cnt", scope: !2, file: !3, line: 163, type: !37)
!381 = !DILocalVariable(name: "ptr", scope: !2, file: !3, line: 165, type: !39)
!382 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 166, type: !37)
!383 = !DILabel(scope: !2, name: "CLEAN_UP", file: !3, line: 210)
!384 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!385 = !{i32 7, !"Dwarf Version", i32 4}
!386 = !{i32 2, !"Debug Info Version", i32 3}
!387 = !{i32 1, !"wchar_size", i32 4}
!388 = !{!"clang version 10.0.0-4ubuntu1 "}
!389 = distinct !DISubprogram(name: "getpdb", scope: !3, file: !3, line: 121, type: !390, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !394)
!390 = !DISubroutineType(types: !391)
!391 = !{!392, !13, !13}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !8, line: 126, baseType: !118)
!394 = !{!395, !396, !397, !398, !399}
!395 = !DILocalVariable(name: "fname", arg: 1, scope: !389, file: !3, line: 121, type: !13)
!396 = !DILocalVariable(name: "options", arg: 2, scope: !389, file: !3, line: 121, type: !13)
!397 = !DILocalVariable(name: "fp", scope: !389, file: !3, line: 123, type: !371)
!398 = !DILocalVariable(name: "mol", scope: !389, file: !3, line: 124, type: !392)
!399 = !DILocalVariable(name: "ier", scope: !389, file: !3, line: 125, type: !37)
!400 = !DILocalVariable(name: "line", scope: !401, file: !3, line: 470, type: !446)
!401 = distinct !DISubprogram(name: "fgetpdb", scope: !3, file: !3, line: 464, type: !402, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!392, !371, !13}
!404 = !{!405, !406, !407, !408, !409, !410, !411, !400, !412, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !445}
!405 = !DILocalVariable(name: "fp", arg: 1, scope: !401, file: !3, line: 464, type: !371)
!406 = !DILocalVariable(name: "options", arg: 2, scope: !401, file: !3, line: 464, type: !13)
!407 = !DILocalVariable(name: "mol", scope: !401, file: !3, line: 466, type: !392)
!408 = !DILocalVariable(name: "ap", scope: !401, file: !3, line: 467, type: !190)
!409 = !DILocalVariable(name: "l_cid", scope: !401, file: !3, line: 468, type: !37)
!410 = !DILocalVariable(name: "cid", scope: !401, file: !3, line: 468, type: !37)
!411 = !DILocalVariable(name: "nchains", scope: !401, file: !3, line: 469, type: !37)
!412 = !DILocalVariable(name: "sname", scope: !401, file: !3, line: 471, type: !413)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 10)
!416 = !DILocalVariable(name: "aname", scope: !401, file: !3, line: 472, type: !413)
!417 = !DILocalVariable(name: "rname", scope: !401, file: !3, line: 473, type: !413)
!418 = !DILocalVariable(name: "l_rname", scope: !401, file: !3, line: 473, type: !413)
!419 = !DILocalVariable(name: "rid", scope: !401, file: !3, line: 474, type: !413)
!420 = !DILocalVariable(name: "l_rid", scope: !401, file: !3, line: 474, type: !413)
!421 = !DILocalVariable(name: "field", scope: !401, file: !3, line: 475, type: !413)
!422 = !DILocalVariable(name: "np", scope: !401, file: !3, line: 476, type: !13)
!423 = !DILocalVariable(name: "np1", scope: !401, file: !3, line: 476, type: !13)
!424 = !DILocalVariable(name: "rnum", scope: !401, file: !3, line: 477, type: !37)
!425 = !DILocalVariable(name: "l_rnum", scope: !401, file: !3, line: 477, type: !37)
!426 = !DILocalVariable(name: "x", scope: !401, file: !3, line: 478, type: !10)
!427 = !DILocalVariable(name: "y", scope: !401, file: !3, line: 478, type: !10)
!428 = !DILocalVariable(name: "z", scope: !401, file: !3, line: 478, type: !10)
!429 = !DILocalVariable(name: "q", scope: !401, file: !3, line: 478, type: !10)
!430 = !DILocalVariable(name: "r", scope: !401, file: !3, line: 478, type: !10)
!431 = !DILocalVariable(name: "occ", scope: !401, file: !3, line: 478, type: !10)
!432 = !DILocalVariable(name: "bfact", scope: !401, file: !3, line: 478, type: !10)
!433 = !DILocalVariable(name: "i", scope: !401, file: !3, line: 479, type: !37)
!434 = !DILocalVariable(name: "temp", scope: !401, file: !3, line: 480, type: !14)
!435 = !DILocalVariable(name: "loptions", scope: !401, file: !3, line: 481, type: !375)
!436 = !DILocalVariable(name: "sp", scope: !437, file: !3, line: 661, type: !128)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 660, column: 17)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 639, column: 31)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 639, column: 17)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 512, column: 46)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 511, column: 13)
!442 = distinct !DILexicalBlock(scope: !443, file: !3, line: 496, column: 37)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 496, column: 5)
!444 = distinct !DILexicalBlock(scope: !401, file: !3, line: 496, column: 5)
!445 = !DILocalVariable(name: "spl", scope: !437, file: !3, line: 661, type: !128)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 656, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 82)
!449 = !DILocation(line: 470, column: 10, scope: !401, inlinedAt: !450)
!450 = distinct !DILocation(line: 148, column: 11, scope: !389)
!451 = !DILocation(line: 471, column: 10, scope: !401, inlinedAt: !450)
!452 = !DILocation(line: 472, column: 10, scope: !401, inlinedAt: !450)
!453 = !DILocation(line: 473, column: 10, scope: !401, inlinedAt: !450)
!454 = !DILocation(line: 473, column: 21, scope: !401, inlinedAt: !450)
!455 = !DILocation(line: 474, column: 10, scope: !401, inlinedAt: !450)
!456 = !DILocation(line: 474, column: 19, scope: !401, inlinedAt: !450)
!457 = !DILocation(line: 475, column: 10, scope: !401, inlinedAt: !450)
!458 = !DILocation(line: 481, column: 10, scope: !401, inlinedAt: !450)
!459 = !DILocation(line: 0, scope: !389)
!460 = !DILocation(line: 127, column: 10, scope: !461)
!461 = distinct !DILexicalBlock(scope: !389, file: !3, line: 127, column: 9)
!462 = !DILocation(line: 127, column: 16, scope: !461)
!463 = !DILocation(line: 127, column: 20, scope: !461)
!464 = !{!465, !465, i64 0}
!465 = !{!"omnipotent char", !466, i64 0}
!466 = !{!"Simple C/C++ TBAA"}
!467 = !DILocation(line: 127, column: 9, scope: !389)
!468 = !DILocation(line: 128, column: 14, scope: !469)
!469 = distinct !DILexicalBlock(scope: !461, file: !3, line: 127, column: 28)
!470 = !{!471, !471, i64 0}
!471 = !{!"any pointer", !465, i64 0}
!472 = !DILocation(line: 129, column: 5, scope: !469)
!473 = !DILocation(line: 129, column: 17, scope: !474)
!474 = distinct !DILexicalBlock(scope: !461, file: !3, line: 129, column: 16)
!475 = !DILocation(line: 129, column: 16, scope: !461)
!476 = !DILocation(line: 130, column: 14, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 129, column: 37)
!478 = !DILocation(line: 131, column: 5, scope: !477)
!479 = !DILocation(line: 133, column: 13, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 133, column: 13)
!481 = distinct !DILexicalBlock(scope: !474, file: !3, line: 131, column: 12)
!482 = !DILocation(line: 133, column: 28, scope: !480)
!483 = !DILocation(line: 133, column: 13, scope: !481)
!484 = !DILocation(line: 134, column: 23, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 134, column: 17)
!486 = distinct !DILexicalBlock(scope: !480, file: !3, line: 133, column: 34)
!487 = !DILocation(line: 134, column: 42, scope: !485)
!488 = !DILocation(line: 134, column: 17, scope: !486)
!489 = !DILocation(line: 135, column: 25, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !3, line: 134, column: 51)
!491 = !DILocation(line: 135, column: 17, scope: !490)
!492 = !DILocation(line: 137, column: 13, scope: !490)
!493 = !DILocation(line: 0, scope: !481)
!494 = !DILocation(line: 139, column: 9, scope: !481)
!495 = !DILocation(line: 143, column: 13, scope: !496)
!496 = distinct !DILexicalBlock(scope: !481, file: !3, line: 143, column: 13)
!497 = !DILocation(line: 143, column: 28, scope: !496)
!498 = !DILocation(line: 143, column: 13, scope: !481)
!499 = !DILocation(line: 0, scope: !461)
!500 = !DILocation(line: 0, scope: !401, inlinedAt: !450)
!501 = !DILocation(line: 470, column: 5, scope: !401, inlinedAt: !450)
!502 = !DILocation(line: 471, column: 5, scope: !401, inlinedAt: !450)
!503 = !DILocation(line: 472, column: 5, scope: !401, inlinedAt: !450)
!504 = !DILocation(line: 473, column: 5, scope: !401, inlinedAt: !450)
!505 = !DILocation(line: 474, column: 5, scope: !401, inlinedAt: !450)
!506 = !DILocation(line: 475, column: 5, scope: !401, inlinedAt: !450)
!507 = !DILocation(line: 477, column: 5, scope: !401, inlinedAt: !450)
!508 = !DILocation(line: 478, column: 5, scope: !401, inlinedAt: !450)
!509 = !DILocation(line: 481, column: 5, scope: !401, inlinedAt: !450)
!510 = !DILocation(line: 483, column: 17, scope: !511, inlinedAt: !450)
!511 = distinct !DILexicalBlock(scope: !401, file: !3, line: 483, column: 9)
!512 = !DILocation(line: 483, column: 9, scope: !401, inlinedAt: !450)
!513 = !DILocation(line: 484, column: 19, scope: !511, inlinedAt: !450)
!514 = !DILocation(line: 484, column: 9, scope: !511, inlinedAt: !450)
!515 = !DILocation(line: 486, column: 9, scope: !511, inlinedAt: !450)
!516 = !DILocation(line: 488, column: 5, scope: !401, inlinedAt: !450)
!517 = !DILocation(line: 778, column: 10, scope: !518, inlinedAt: !519)
!518 = distinct !DILexicalBlock(scope: !353, file: !3, line: 778, column: 9)
!519 = distinct !DILocation(line: 489, column: 5, scope: !401, inlinedAt: !450)
!520 = !DILocation(line: 778, column: 9, scope: !353, inlinedAt: !519)
!521 = !DILocation(line: 0, scope: !353, inlinedAt: !519)
!522 = !DILocation(line: 781, column: 35, scope: !523, inlinedAt: !519)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 780, column: 54)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 780, column: 5)
!525 = distinct !DILexicalBlock(scope: !353, file: !3, line: 780, column: 5)
!526 = !DILocation(line: 781, column: 13, scope: !523, inlinedAt: !519)
!527 = !DILocation(line: 781, column: 24, scope: !523, inlinedAt: !519)
!528 = !{!529, !471, i64 0}
!529 = !{!"atom_t", !471, i64 0, !471, i64 8, !530, i64 16, !530, i64 20, !465, i64 24, !471, i64 56, !531, i64 64, !531, i64 72, !531, i64 80, !531, i64 88, !471, i64 96, !530, i64 104, !531, i64 112, !531, i64 120, !530, i64 128, !530, i64 132, !471, i64 136, !465, i64 144, !531, i64 168}
!530 = !{!"int", !465, i64 0}
!531 = !{!"double", !465, i64 0}
!532 = !DILocation(line: 782, column: 28, scope: !533, inlinedAt: !519)
!533 = distinct !DILexicalBlock(scope: !523, file: !3, line: 782, column: 13)
!534 = !DILocation(line: 782, column: 13, scope: !523, inlinedAt: !519)
!535 = !DILocation(line: 783, column: 21, scope: !536, inlinedAt: !519)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 782, column: 37)
!537 = !DILocation(line: 783, column: 13, scope: !536, inlinedAt: !519)
!538 = !DILocation(line: 784, column: 13, scope: !536, inlinedAt: !519)
!539 = !DILocation(line: 786, column: 25, scope: !523, inlinedAt: !519)
!540 = !DILocation(line: 787, column: 13, scope: !523, inlinedAt: !519)
!541 = !DILocation(line: 787, column: 24, scope: !523, inlinedAt: !519)
!542 = !{!529, !471, i64 8}
!543 = !DILocation(line: 788, column: 13, scope: !523, inlinedAt: !519)
!544 = !DILocation(line: 788, column: 23, scope: !523, inlinedAt: !519)
!545 = !{!529, !471, i64 96}
!546 = !DILocation(line: 789, column: 13, scope: !523, inlinedAt: !519)
!547 = !DILocation(line: 789, column: 24, scope: !523, inlinedAt: !519)
!548 = !{!529, !471, i64 136}
!549 = !DILocation(line: 780, column: 44, scope: !524, inlinedAt: !519)
!550 = !DILocation(line: 780, column: 50, scope: !524, inlinedAt: !519)
!551 = !DILocation(line: 780, column: 30, scope: !524, inlinedAt: !519)
!552 = !DILocation(line: 780, column: 5, scope: !525, inlinedAt: !519)
!553 = distinct !{!553, !552, !554}
!554 = !DILocation(line: 790, column: 5, scope: !525, inlinedAt: !519)
!555 = !DILocation(line: 791, column: 10, scope: !353, inlinedAt: !519)
!556 = !DILocation(line: 792, column: 1, scope: !353, inlinedAt: !519)
!557 = !DILocation(line: 491, column: 11, scope: !401, inlinedAt: !450)
!558 = !DILocation(line: 494, column: 14, scope: !401, inlinedAt: !450)
!559 = !DILocation(line: 496, column: 30, scope: !444, inlinedAt: !450)
!560 = !{!530, !530, i64 0}
!561 = !DILocation(line: 503, column: 13, scope: !562, inlinedAt: !450)
!562 = distinct !DILexicalBlock(scope: !442, file: !3, line: 503, column: 13)
!563 = !DILocation(line: 503, column: 43, scope: !562, inlinedAt: !450)
!564 = !DILocation(line: 503, column: 13, scope: !442, inlinedAt: !450)
!565 = !DILocation(line: 0, scope: !442, inlinedAt: !450)
!566 = !DILocation(line: 0, scope: !441, inlinedAt: !450)
!567 = !DILocation(line: 0, scope: !440, inlinedAt: !450)
!568 = !DILocation(line: 0, scope: !569, inlinedAt: !450)
!569 = distinct !DILexicalBlock(scope: !440, file: !3, line: 531, column: 17)
!570 = !DILocation(line: 0, scope: !571, inlinedAt: !450)
!571 = distinct !DILexicalBlock(scope: !440, file: !3, line: 533, column: 17)
!572 = !DILocation(line: 0, scope: !573, inlinedAt: !450)
!573 = distinct !DILexicalBlock(scope: !440, file: !3, line: 557, column: 17)
!574 = !DILocation(line: 0, scope: !575, inlinedAt: !450)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 587, column: 43)
!576 = distinct !DILexicalBlock(scope: !440, file: !3, line: 587, column: 17)
!577 = !DILocation(line: 0, scope: !578, inlinedAt: !450)
!578 = distinct !DILexicalBlock(scope: !576, file: !3, line: 611, column: 20)
!579 = !DILocation(line: 0, scope: !580, inlinedAt: !450)
!580 = distinct !DILexicalBlock(scope: !581, file: !3, line: 654, column: 22)
!581 = distinct !DILexicalBlock(scope: !438, file: !3, line: 652, column: 21)
!582 = !DILocation(line: 0, scope: !583, inlinedAt: !450)
!583 = distinct !DILexicalBlock(scope: !437, file: !3, line: 663, column: 21)
!584 = !DILocation(line: 507, column: 18, scope: !585, inlinedAt: !450)
!585 = distinct !DILexicalBlock(scope: !442, file: !3, line: 507, column: 9)
!586 = !DILocation(line: 507, column: 34, scope: !587, inlinedAt: !450)
!587 = distinct !DILexicalBlock(scope: !585, file: !3, line: 507, column: 9)
!588 = !DILocation(line: 507, column: 9, scope: !585, inlinedAt: !450)
!589 = !DILocation(line: 508, column: 21, scope: !587, inlinedAt: !450)
!590 = !DILocation(line: 509, column: 18, scope: !442, inlinedAt: !450)
!591 = !DILocation(line: 511, column: 13, scope: !441, inlinedAt: !450)
!592 = !DILocation(line: 511, column: 43, scope: !441, inlinedAt: !450)
!593 = !DILocation(line: 512, column: 13, scope: !441, inlinedAt: !450)
!594 = !DILocation(line: 512, column: 40, scope: !441, inlinedAt: !450)
!595 = !DILocation(line: 511, column: 13, scope: !442, inlinedAt: !450)
!596 = !DILocation(line: 513, column: 13, scope: !440, inlinedAt: !450)
!597 = !DILocation(line: 514, column: 33, scope: !440, inlinedAt: !450)
!598 = !DILocation(line: 516, column: 18, scope: !599, inlinedAt: !450)
!599 = distinct !DILexicalBlock(scope: !440, file: !3, line: 516, column: 13)
!600 = !DILocation(line: 0, scope: !599, inlinedAt: !450)
!601 = !DILocation(line: 516, column: 36, scope: !602, inlinedAt: !450)
!602 = distinct !DILexicalBlock(scope: !599, file: !3, line: 516, column: 13)
!603 = !DILocation(line: 516, column: 13, scope: !599, inlinedAt: !450)
!604 = !DILocation(line: 518, column: 25, scope: !605, inlinedAt: !450)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 517, column: 21)
!606 = distinct !DILexicalBlock(scope: !602, file: !3, line: 516, column: 47)
!607 = !DILocation(line: 518, column: 28, scope: !605, inlinedAt: !450)
!608 = !DILocation(line: 518, column: 21, scope: !605, inlinedAt: !450)
!609 = !DILocation(line: 516, column: 43, scope: !602, inlinedAt: !450)
!610 = !DILocation(line: 516, column: 13, scope: !602, inlinedAt: !450)
!611 = distinct !{!611, !603, !612}
!612 = !DILocation(line: 519, column: 13, scope: !599, inlinedAt: !450)
!613 = !DILocation(line: 520, column: 18, scope: !440, inlinedAt: !450)
!614 = !DILocation(line: 523, column: 17, scope: !615, inlinedAt: !450)
!615 = distinct !DILexicalBlock(scope: !440, file: !3, line: 523, column: 17)
!616 = !DILocation(line: 523, column: 33, scope: !615, inlinedAt: !450)
!617 = !DILocation(line: 525, column: 38, scope: !618, inlinedAt: !450)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 525, column: 17)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 525, column: 17)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 523, column: 72)
!621 = !DILocation(line: 525, column: 33, scope: !618, inlinedAt: !450)
!622 = !DILocation(line: 525, column: 31, scope: !618, inlinedAt: !450)
!623 = !DILocation(line: 525, column: 17, scope: !619, inlinedAt: !450)
!624 = !DILocation(line: 526, column: 40, scope: !618, inlinedAt: !450)
!625 = !DILocation(line: 526, column: 32, scope: !618, inlinedAt: !450)
!626 = !DILocation(line: 526, column: 21, scope: !618, inlinedAt: !450)
!627 = !DILocation(line: 526, column: 30, scope: !618, inlinedAt: !450)
!628 = distinct !{!628, !623, !629}
!629 = !DILocation(line: 526, column: 43, scope: !619, inlinedAt: !450)
!630 = !DILocation(line: 0, scope: !619, inlinedAt: !450)
!631 = !DILocation(line: 527, column: 17, scope: !620, inlinedAt: !450)
!632 = !DILocation(line: 527, column: 26, scope: !620, inlinedAt: !450)
!633 = !DILocation(line: 528, column: 13, scope: !620, inlinedAt: !450)
!634 = !DILocation(line: 531, column: 17, scope: !569, inlinedAt: !450)
!635 = !DILocation(line: 531, column: 26, scope: !569, inlinedAt: !450)
!636 = !DILocation(line: 531, column: 17, scope: !440, inlinedAt: !450)
!637 = !DILocation(line: 532, column: 26, scope: !569, inlinedAt: !450)
!638 = !DILocation(line: 532, column: 17, scope: !569, inlinedAt: !450)
!639 = !DILocation(line: 533, column: 18, scope: !571, inlinedAt: !450)
!640 = !DILocation(line: 533, column: 17, scope: !440, inlinedAt: !450)
!641 = !DILocation(line: 534, column: 17, scope: !571, inlinedAt: !450)
!642 = !DILocation(line: 536, column: 13, scope: !440, inlinedAt: !450)
!643 = !DILocation(line: 537, column: 33, scope: !440, inlinedAt: !450)
!644 = !DILocation(line: 538, column: 18, scope: !645, inlinedAt: !450)
!645 = distinct !DILexicalBlock(scope: !440, file: !3, line: 538, column: 13)
!646 = !DILocation(line: 0, scope: !645, inlinedAt: !450)
!647 = !DILocation(line: 538, column: 36, scope: !648, inlinedAt: !450)
!648 = distinct !DILexicalBlock(scope: !645, file: !3, line: 538, column: 13)
!649 = !DILocation(line: 538, column: 13, scope: !645, inlinedAt: !450)
!650 = !DILocation(line: 540, column: 25, scope: !651, inlinedAt: !450)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 539, column: 21)
!652 = distinct !DILexicalBlock(scope: !648, file: !3, line: 538, column: 47)
!653 = !DILocation(line: 540, column: 28, scope: !651, inlinedAt: !450)
!654 = !DILocation(line: 540, column: 21, scope: !651, inlinedAt: !450)
!655 = !DILocation(line: 538, column: 43, scope: !648, inlinedAt: !450)
!656 = !DILocation(line: 538, column: 13, scope: !648, inlinedAt: !450)
!657 = distinct !{!657, !649, !658}
!658 = !DILocation(line: 541, column: 13, scope: !645, inlinedAt: !450)
!659 = !DILocation(line: 542, column: 18, scope: !440, inlinedAt: !450)
!660 = !DILocation(line: 551, column: 18, scope: !661, inlinedAt: !450)
!661 = distinct !DILexicalBlock(scope: !440, file: !3, line: 551, column: 17)
!662 = !DILocation(line: 551, column: 17, scope: !440, inlinedAt: !450)
!663 = !DILocation(line: 553, column: 48, scope: !664, inlinedAt: !450)
!664 = distinct !DILexicalBlock(scope: !440, file: !3, line: 553, column: 17)
!665 = !DILocation(line: 552, column: 28, scope: !661, inlinedAt: !450)
!666 = !{!667, !530, i64 44}
!667 = !{!"residue_t", !471, i64 0, !530, i64 8, !530, i64 12, !530, i64 16, !471, i64 24, !471, i64 32, !530, i64 40, !530, i64 44, !530, i64 48, !471, i64 56, !471, i64 64, !530, i64 72, !471, i64 80, !530, i64 88, !471, i64 96, !530, i64 104, !471, i64 112, !471, i64 120}
!668 = !DILocation(line: 552, column: 17, scope: !661, inlinedAt: !450)
!669 = !DILocation(line: 553, column: 18, scope: !664, inlinedAt: !450)
!670 = !DILocation(line: 553, column: 55, scope: !664, inlinedAt: !450)
!671 = !DILocation(line: 553, column: 41, scope: !664, inlinedAt: !450)
!672 = !DILocation(line: 554, column: 17, scope: !664, inlinedAt: !450)
!673 = !DILocation(line: 557, column: 18, scope: !573, inlinedAt: !450)
!674 = !DILocation(line: 557, column: 17, scope: !440, inlinedAt: !450)
!675 = !DILocation(line: 558, column: 17, scope: !573, inlinedAt: !450)
!676 = !DILocation(line: 559, column: 17, scope: !440, inlinedAt: !450)
!677 = !DILocation(line: 560, column: 17, scope: !678, inlinedAt: !450)
!678 = distinct !DILexicalBlock(scope: !440, file: !3, line: 559, column: 17)
!679 = !DILocation(line: 562, column: 17, scope: !680, inlinedAt: !450)
!680 = distinct !DILexicalBlock(scope: !440, file: !3, line: 561, column: 17)
!681 = !DILocation(line: 564, column: 17, scope: !682, inlinedAt: !450)
!682 = distinct !DILexicalBlock(scope: !440, file: !3, line: 563, column: 17)
!683 = !DILocation(line: 566, column: 17, scope: !684, inlinedAt: !450)
!684 = distinct !DILexicalBlock(scope: !440, file: !3, line: 565, column: 17)
!685 = !DILocation(line: 569, column: 13, scope: !440, inlinedAt: !450)
!686 = !DILocation(line: 570, column: 30, scope: !440, inlinedAt: !450)
!687 = !DILocation(line: 572, column: 19, scope: !440, inlinedAt: !450)
!688 = !DILocation(line: 573, column: 13, scope: !440, inlinedAt: !450)
!689 = !DILocation(line: 575, column: 13, scope: !440, inlinedAt: !450)
!690 = !DILocation(line: 576, column: 33, scope: !440, inlinedAt: !450)
!691 = !DILocalVariable(name: "__nptr", arg: 1, scope: !692, file: !693, line: 25, type: !696)
!692 = distinct !DISubprogram(name: "atof", scope: !693, file: !693, line: 25, type: !694, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !698)
!693 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!694 = !DISubroutineType(types: !695)
!695 = !{!10, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!698 = !{!691}
!699 = !DILocation(line: 0, scope: !692, inlinedAt: !700)
!700 = distinct !DILocation(line: 577, column: 17, scope: !440, inlinedAt: !450)
!701 = !DILocation(line: 27, column: 10, scope: !692, inlinedAt: !700)
!702 = !DILocation(line: 579, column: 13, scope: !440, inlinedAt: !450)
!703 = !DILocation(line: 580, column: 33, scope: !440, inlinedAt: !450)
!704 = !DILocation(line: 0, scope: !692, inlinedAt: !705)
!705 = distinct !DILocation(line: 581, column: 17, scope: !440, inlinedAt: !450)
!706 = !DILocation(line: 27, column: 10, scope: !692, inlinedAt: !705)
!707 = !DILocation(line: 583, column: 13, scope: !440, inlinedAt: !450)
!708 = !DILocation(line: 584, column: 33, scope: !440, inlinedAt: !450)
!709 = !DILocation(line: 0, scope: !692, inlinedAt: !710)
!710 = distinct !DILocation(line: 585, column: 17, scope: !440, inlinedAt: !450)
!711 = !DILocation(line: 27, column: 10, scope: !692, inlinedAt: !710)
!712 = !DILocation(line: 587, column: 17, scope: !576, inlinedAt: !450)
!713 = !DILocation(line: 587, column: 17, scope: !440, inlinedAt: !450)
!714 = !DILocation(line: 603, column: 17, scope: !575, inlinedAt: !450)
!715 = !DILocation(line: 611, column: 13, scope: !575, inlinedAt: !450)
!716 = !DILocation(line: 613, column: 22, scope: !717, inlinedAt: !450)
!717 = distinct !DILexicalBlock(scope: !578, file: !3, line: 613, column: 21)
!718 = !DILocation(line: 613, column: 21, scope: !578, inlinedAt: !450)
!719 = !DILocation(line: 614, column: 23, scope: !717, inlinedAt: !450)
!720 = !{!531, !531, i64 0}
!721 = !DILocation(line: 614, column: 21, scope: !717, inlinedAt: !450)
!722 = !DILocation(line: 616, column: 23, scope: !723, inlinedAt: !450)
!723 = distinct !DILexicalBlock(scope: !717, file: !3, line: 615, column: 26)
!724 = !DILocation(line: 616, column: 21, scope: !723, inlinedAt: !450)
!725 = !DILocation(line: 618, column: 23, scope: !726, inlinedAt: !450)
!726 = distinct !DILexicalBlock(scope: !723, file: !3, line: 617, column: 26)
!727 = !DILocation(line: 618, column: 21, scope: !726, inlinedAt: !450)
!728 = !DILocation(line: 620, column: 23, scope: !729, inlinedAt: !450)
!729 = distinct !DILexicalBlock(scope: !726, file: !3, line: 619, column: 26)
!730 = !DILocation(line: 620, column: 21, scope: !729, inlinedAt: !450)
!731 = !DILocation(line: 622, column: 23, scope: !732, inlinedAt: !450)
!732 = distinct !DILexicalBlock(scope: !729, file: !3, line: 621, column: 26)
!733 = !DILocation(line: 622, column: 21, scope: !732, inlinedAt: !450)
!734 = !DILocation(line: 624, column: 23, scope: !735, inlinedAt: !450)
!735 = distinct !DILexicalBlock(scope: !732, file: !3, line: 623, column: 26)
!736 = !DILocation(line: 624, column: 21, scope: !735, inlinedAt: !450)
!737 = !DILocation(line: 626, column: 23, scope: !735, inlinedAt: !450)
!738 = !DILocation(line: 627, column: 19, scope: !578, inlinedAt: !450)
!739 = !DILocation(line: 630, column: 17, scope: !578, inlinedAt: !450)
!740 = !DILocation(line: 631, column: 37, scope: !578, inlinedAt: !450)
!741 = !DILocation(line: 0, scope: !692, inlinedAt: !742)
!742 = distinct !DILocation(line: 632, column: 23, scope: !578, inlinedAt: !450)
!743 = !DILocation(line: 27, column: 10, scope: !692, inlinedAt: !742)
!744 = !DILocation(line: 634, column: 17, scope: !578, inlinedAt: !450)
!745 = !DILocation(line: 635, column: 37, scope: !578, inlinedAt: !450)
!746 = !DILocation(line: 0, scope: !692, inlinedAt: !747)
!747 = distinct !DILocation(line: 636, column: 25, scope: !578, inlinedAt: !450)
!748 = !DILocation(line: 27, column: 10, scope: !692, inlinedAt: !747)
!749 = !DILocation(line: 0, scope: !576, inlinedAt: !450)
!750 = !DILocation(line: 639, column: 21, scope: !439, inlinedAt: !450)
!751 = !DILocation(line: 639, column: 17, scope: !440, inlinedAt: !450)
!752 = !DILocation(line: 640, column: 21, scope: !753, inlinedAt: !450)
!753 = distinct !DILexicalBlock(scope: !438, file: !3, line: 640, column: 21)
!754 = !DILocation(line: 640, column: 28, scope: !753, inlinedAt: !450)
!755 = !DILocation(line: 640, column: 21, scope: !438, inlinedAt: !450)
!756 = !DILocation(line: 641, column: 32, scope: !757, inlinedAt: !450)
!757 = distinct !DILexicalBlock(scope: !753, file: !3, line: 640, column: 33)
!758 = !{!667, !471, i64 24}
!759 = !DILocation(line: 641, column: 21, scope: !757, inlinedAt: !450)
!760 = !DILocation(line: 642, column: 32, scope: !757, inlinedAt: !450)
!761 = !{!667, !471, i64 32}
!762 = !DILocation(line: 642, column: 21, scope: !757, inlinedAt: !450)
!763 = !DILocation(line: 643, column: 31, scope: !757, inlinedAt: !450)
!764 = !{!667, !530, i64 8}
!765 = !DILocation(line: 644, column: 36, scope: !757, inlinedAt: !450)
!766 = !DILocation(line: 644, column: 34, scope: !757, inlinedAt: !450)
!767 = !{!667, !530, i64 104}
!768 = !DILocation(line: 645, column: 21, scope: !757, inlinedAt: !450)
!769 = !DILocation(line: 646, column: 21, scope: !757, inlinedAt: !450)
!770 = !DILocation(line: 647, column: 21, scope: !757, inlinedAt: !450)
!771 = !DILocation(line: 648, column: 28, scope: !757, inlinedAt: !450)
!772 = !DILocation(line: 649, column: 17, scope: !757, inlinedAt: !450)
!773 = !DILocation(line: 651, column: 24, scope: !438, inlinedAt: !450)
!774 = !DILocation(line: 652, column: 25, scope: !581, inlinedAt: !450)
!775 = !DILocation(line: 652, column: 21, scope: !438, inlinedAt: !450)
!776 = !DILocation(line: 653, column: 21, scope: !581, inlinedAt: !450)
!777 = !DILocation(line: 655, column: 30, scope: !580, inlinedAt: !450)
!778 = !DILocation(line: 656, column: 30, scope: !580, inlinedAt: !450)
!779 = !DILocation(line: 658, column: 17, scope: !438, inlinedAt: !450)
!780 = !DILocation(line: 0, scope: !437, inlinedAt: !450)
!781 = !DILocation(line: 663, column: 21, scope: !583, inlinedAt: !450)
!782 = !DILocation(line: 665, column: 42, scope: !783, inlinedAt: !450)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 665, column: 29)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 664, column: 45)
!785 = distinct !DILexicalBlock(scope: !583, file: !3, line: 663, column: 21)
!786 = !{!787, !471, i64 0}
!787 = !{!"strand_t", !471, i64 0, !530, i64 8, !530, i64 12, !471, i64 16, !471, i64 24, !530, i64 32, !530, i64 36, !471, i64 40}
!788 = !DILocation(line: 665, column: 30, scope: !783, inlinedAt: !450)
!789 = !DILocation(line: 665, column: 29, scope: !784, inlinedAt: !450)
!790 = !DILocation(line: 664, column: 37, scope: !785, inlinedAt: !450)
!791 = distinct !{!791, !781, !792}
!792 = !DILocation(line: 669, column: 21, scope: !583, inlinedAt: !450)
!793 = !DILocation(line: 670, column: 25, scope: !437, inlinedAt: !450)
!794 = !DILocation(line: 670, column: 36, scope: !437, inlinedAt: !450)
!795 = !{!787, !530, i64 36}
!796 = !DILocation(line: 672, column: 40, scope: !437, inlinedAt: !450)
!797 = !DILocation(line: 671, column: 25, scope: !437, inlinedAt: !450)
!798 = !DILocation(line: 671, column: 36, scope: !437, inlinedAt: !450)
!799 = !{!787, !471, i64 40}
!800 = !DILocation(line: 680, column: 17, scope: !438, inlinedAt: !450)
!801 = !DILocation(line: 681, column: 17, scope: !438, inlinedAt: !450)
!802 = !DILocation(line: 682, column: 26, scope: !438, inlinedAt: !450)
!803 = !DILocation(line: 684, column: 13, scope: !438, inlinedAt: !450)
!804 = !DILocation(line: 684, column: 57, scope: !805, inlinedAt: !450)
!805 = distinct !DILexicalBlock(scope: !439, file: !3, line: 684, column: 24)
!806 = !DILocalVariable(name: "l_rname", arg: 1, scope: !807, file: !3, line: 744, type: !13)
!807 = distinct !DISubprogram(name: "isnewres", scope: !3, file: !3, line: 744, type: !808, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{!37, !13, !13, !37, !37}
!810 = !{!806, !811, !812, !813}
!811 = !DILocalVariable(name: "rname", arg: 2, scope: !807, file: !3, line: 744, type: !13)
!812 = !DILocalVariable(name: "l_rnum", arg: 3, scope: !807, file: !3, line: 744, type: !37)
!813 = !DILocalVariable(name: "rnum", arg: 4, scope: !807, file: !3, line: 744, type: !37)
!814 = !DILocation(line: 0, scope: !807, inlinedAt: !815)
!815 = distinct !DILocation(line: 684, column: 24, scope: !805, inlinedAt: !450)
!816 = !DILocation(line: 747, column: 13, scope: !807, inlinedAt: !815)
!817 = !DILocation(line: 747, column: 36, scope: !807, inlinedAt: !815)
!818 = !DILocation(line: 684, column: 24, scope: !805, inlinedAt: !450)
!819 = !DILocation(line: 684, column: 24, scope: !439, inlinedAt: !450)
!820 = !DILocation(line: 685, column: 28, scope: !821, inlinedAt: !450)
!821 = distinct !DILexicalBlock(scope: !805, file: !3, line: 684, column: 64)
!822 = !DILocation(line: 685, column: 17, scope: !821, inlinedAt: !450)
!823 = !DILocation(line: 686, column: 28, scope: !821, inlinedAt: !450)
!824 = !DILocation(line: 686, column: 17, scope: !821, inlinedAt: !450)
!825 = !DILocation(line: 687, column: 27, scope: !821, inlinedAt: !450)
!826 = !DILocation(line: 688, column: 32, scope: !821, inlinedAt: !450)
!827 = !DILocation(line: 688, column: 30, scope: !821, inlinedAt: !450)
!828 = !DILocation(line: 689, column: 17, scope: !821, inlinedAt: !450)
!829 = !DILocation(line: 690, column: 17, scope: !821, inlinedAt: !450)
!830 = !DILocation(line: 691, column: 17, scope: !821, inlinedAt: !450)
!831 = !DILocation(line: 692, column: 17, scope: !821, inlinedAt: !450)
!832 = !DILocation(line: 693, column: 17, scope: !821, inlinedAt: !450)
!833 = !DILocation(line: 694, column: 26, scope: !821, inlinedAt: !450)
!834 = !DILocation(line: 695, column: 24, scope: !821, inlinedAt: !450)
!835 = !DILocation(line: 696, column: 13, scope: !821, inlinedAt: !450)
!836 = !DILocation(line: 0, scope: !444, inlinedAt: !450)
!837 = !DILocation(line: 697, column: 24, scope: !440, inlinedAt: !450)
!838 = !DILocation(line: 697, column: 19, scope: !440, inlinedAt: !450)
!839 = !DILocation(line: 698, column: 13, scope: !440, inlinedAt: !450)
!840 = !DILocation(line: 699, column: 24, scope: !440, inlinedAt: !450)
!841 = !DILocation(line: 699, column: 13, scope: !440, inlinedAt: !450)
!842 = !DILocation(line: 700, column: 17, scope: !440, inlinedAt: !450)
!843 = !DILocation(line: 700, column: 24, scope: !440, inlinedAt: !450)
!844 = !{!529, !530, i64 16}
!845 = !DILocation(line: 701, column: 17, scope: !440, inlinedAt: !450)
!846 = !DILocation(line: 701, column: 27, scope: !440, inlinedAt: !450)
!847 = !{!529, !471, i64 56}
!848 = !DILocation(line: 702, column: 13, scope: !440, inlinedAt: !450)
!849 = !DILocation(line: 702, column: 26, scope: !440, inlinedAt: !450)
!850 = !DILocation(line: 703, column: 13, scope: !440, inlinedAt: !450)
!851 = !DILocation(line: 703, column: 26, scope: !440, inlinedAt: !450)
!852 = !DILocation(line: 704, column: 13, scope: !440, inlinedAt: !450)
!853 = !DILocation(line: 704, column: 26, scope: !440, inlinedAt: !450)
!854 = !DILocation(line: 705, column: 28, scope: !440, inlinedAt: !450)
!855 = !DILocation(line: 705, column: 17, scope: !440, inlinedAt: !450)
!856 = !DILocation(line: 705, column: 26, scope: !440, inlinedAt: !450)
!857 = !{!529, !531, i64 64}
!858 = !DILocation(line: 706, column: 28, scope: !440, inlinedAt: !450)
!859 = !DILocation(line: 706, column: 17, scope: !440, inlinedAt: !450)
!860 = !DILocation(line: 706, column: 26, scope: !440, inlinedAt: !450)
!861 = !{!529, !531, i64 72}
!862 = !DILocation(line: 707, column: 17, scope: !440, inlinedAt: !450)
!863 = !DILocation(line: 707, column: 23, scope: !440, inlinedAt: !450)
!864 = !{!529, !531, i64 88}
!865 = !DILocation(line: 708, column: 17, scope: !440, inlinedAt: !450)
!866 = !DILocation(line: 708, column: 25, scope: !440, inlinedAt: !450)
!867 = !{!529, !531, i64 80}
!868 = !DILocation(line: 709, column: 19, scope: !440, inlinedAt: !450)
!869 = !DILocation(line: 711, column: 9, scope: !440, inlinedAt: !450)
!870 = !DILocation(line: 711, column: 20, scope: !871, inlinedAt: !450)
!871 = distinct !DILexicalBlock(scope: !441, file: !3, line: 711, column: 20)
!872 = !DILocation(line: 711, column: 44, scope: !871, inlinedAt: !450)
!873 = !DILocation(line: 711, column: 20, scope: !441, inlinedAt: !450)
!874 = !DILocation(line: 712, column: 17, scope: !875, inlinedAt: !450)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 712, column: 17)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 711, column: 50)
!877 = !DILocation(line: 712, column: 24, scope: !875, inlinedAt: !450)
!878 = !DILocation(line: 712, column: 17, scope: !876, inlinedAt: !450)
!879 = !DILocation(line: 713, column: 28, scope: !880, inlinedAt: !450)
!880 = distinct !DILexicalBlock(scope: !875, file: !3, line: 712, column: 29)
!881 = !DILocation(line: 713, column: 17, scope: !880, inlinedAt: !450)
!882 = !DILocation(line: 714, column: 28, scope: !880, inlinedAt: !450)
!883 = !DILocation(line: 714, column: 17, scope: !880, inlinedAt: !450)
!884 = !DILocation(line: 715, column: 27, scope: !880, inlinedAt: !450)
!885 = !DILocation(line: 716, column: 32, scope: !880, inlinedAt: !450)
!886 = !DILocation(line: 716, column: 30, scope: !880, inlinedAt: !450)
!887 = !DILocation(line: 717, column: 17, scope: !880, inlinedAt: !450)
!888 = !DILocation(line: 718, column: 17, scope: !880, inlinedAt: !450)
!889 = !DILocation(line: 719, column: 17, scope: !880, inlinedAt: !450)
!890 = !DILocation(line: 720, column: 24, scope: !880, inlinedAt: !450)
!891 = !DILocation(line: 721, column: 13, scope: !880, inlinedAt: !450)
!892 = !DILocation(line: 723, column: 22, scope: !876, inlinedAt: !450)
!893 = !DILocation(line: 724, column: 20, scope: !876, inlinedAt: !450)
!894 = !DILocation(line: 726, column: 9, scope: !876, inlinedAt: !450)
!895 = !DILocation(line: 726, column: 20, scope: !896, inlinedAt: !450)
!896 = distinct !DILexicalBlock(scope: !871, file: !3, line: 726, column: 20)
!897 = !DILocation(line: 726, column: 44, scope: !896, inlinedAt: !450)
!898 = !DILocation(line: 726, column: 20, scope: !871, inlinedAt: !450)
!899 = distinct !{!899, !900, !901}
!900 = !DILocation(line: 496, column: 5, scope: !444, inlinedAt: !450)
!901 = !DILocation(line: 728, column: 5, scope: !444, inlinedAt: !450)
!902 = !DILocation(line: 729, column: 9, scope: !903, inlinedAt: !450)
!903 = distinct !DILexicalBlock(scope: !401, file: !3, line: 729, column: 9)
!904 = !DILocation(line: 729, column: 16, scope: !903, inlinedAt: !450)
!905 = !DILocation(line: 729, column: 9, scope: !401, inlinedAt: !450)
!906 = !DILocation(line: 730, column: 20, scope: !907, inlinedAt: !450)
!907 = distinct !DILexicalBlock(scope: !903, file: !3, line: 729, column: 21)
!908 = !DILocation(line: 730, column: 9, scope: !907, inlinedAt: !450)
!909 = !DILocation(line: 731, column: 20, scope: !907, inlinedAt: !450)
!910 = !DILocation(line: 731, column: 9, scope: !907, inlinedAt: !450)
!911 = !DILocation(line: 732, column: 19, scope: !907, inlinedAt: !450)
!912 = !DILocation(line: 733, column: 24, scope: !907, inlinedAt: !450)
!913 = !DILocation(line: 733, column: 22, scope: !907, inlinedAt: !450)
!914 = !DILocation(line: 734, column: 9, scope: !907, inlinedAt: !450)
!915 = !DILocation(line: 735, column: 9, scope: !907, inlinedAt: !450)
!916 = !DILocation(line: 736, column: 9, scope: !907, inlinedAt: !450)
!917 = !DILocation(line: 737, column: 5, scope: !907, inlinedAt: !450)
!918 = !DILocation(line: 739, column: 10, scope: !401, inlinedAt: !450)
!919 = !DILocation(line: 739, column: 19, scope: !401, inlinedAt: !450)
!920 = !{!921, !530, i64 120}
!921 = !{!"molecule_t", !465, i64 0, !530, i64 96, !471, i64 104, !530, i64 112, !530, i64 116, !530, i64 120, !471, i64 128}
!922 = !DILocation(line: 742, column: 1, scope: !401, inlinedAt: !450)
!923 = !DILocation(line: 150, column: 15, scope: !924)
!924 = distinct !DILexicalBlock(scope: !389, file: !3, line: 150, column: 9)
!925 = !DILocation(line: 150, column: 12, scope: !924)
!926 = !DILocation(line: 150, column: 9, scope: !389)
!927 = !DILocation(line: 151, column: 13, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 151, column: 13)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 150, column: 22)
!930 = !DILocation(line: 151, column: 28, scope: !928)
!931 = !DILocation(line: 151, column: 13, scope: !929)
!932 = !DILocation(line: 152, column: 13, scope: !933)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 151, column: 34)
!934 = !DILocation(line: 153, column: 9, scope: !933)
!935 = !DILocation(line: 156, column: 5, scope: !389)
!936 = !DILocation(line: 0, scope: !2)
!937 = !DILocation(line: 162, column: 5, scope: !2)
!938 = !DILocation(line: 162, column: 10, scope: !2)
!939 = !DILocation(line: 168, column: 5, scope: !2)
!940 = !DILocation(line: 169, column: 15, scope: !941)
!941 = distinct !DILexicalBlock(scope: !2, file: !3, line: 169, column: 9)
!942 = !DILocation(line: 169, column: 23, scope: !941)
!943 = !DILocation(line: 169, column: 26, scope: !941)
!944 = !DILocation(line: 169, column: 33, scope: !941)
!945 = !DILocation(line: 169, column: 9, scope: !2)
!946 = !DILocation(line: 170, column: 17, scope: !947)
!947 = distinct !DILexicalBlock(scope: !941, file: !3, line: 169, column: 42)
!948 = !DILocation(line: 170, column: 9, scope: !947)
!949 = !DILocation(line: 172, column: 9, scope: !947)
!950 = !DILocation(line: 173, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !941, file: !3, line: 173, column: 16)
!952 = !DILocation(line: 173, column: 16, scope: !941)
!953 = !DILocation(line: 174, column: 14, scope: !951)
!954 = !DILocation(line: 174, column: 9, scope: !951)
!955 = !DILocation(line: 175, column: 20, scope: !956)
!956 = distinct !DILexicalBlock(scope: !951, file: !3, line: 175, column: 14)
!957 = !DILocation(line: 175, column: 39, scope: !956)
!958 = !DILocation(line: 175, column: 14, scope: !951)
!959 = !DILocation(line: 176, column: 17, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !3, line: 175, column: 48)
!961 = !DILocation(line: 176, column: 9, scope: !960)
!962 = !DILocation(line: 178, column: 9, scope: !960)
!963 = !DILocation(line: 0, scope: !951)
!964 = !DILocation(line: 180, column: 5, scope: !965)
!965 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!966 = !DILocation(line: 180, column: 17, scope: !967)
!967 = distinct !DILexicalBlock(scope: !965, file: !3, line: 180, column: 5)
!968 = !DILocation(line: 181, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 181, column: 13)
!970 = distinct !DILexicalBlock(scope: !967, file: !3, line: 180, column: 49)
!971 = !DILocation(line: 181, column: 19, scope: !969)
!972 = !DILocation(line: 181, column: 13, scope: !970)
!973 = distinct !{!973, !964, !974}
!974 = !DILocation(line: 201, column: 5, scope: !965)
!975 = !DILocation(line: 184, column: 15, scope: !970)
!976 = !DILocation(line: 190, column: 17, scope: !977)
!977 = distinct !DILexicalBlock(scope: !970, file: !3, line: 190, column: 13)
!978 = !DILocation(line: 190, column: 13, scope: !970)
!979 = !DILocation(line: 191, column: 21, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 190, column: 23)
!981 = !DILocation(line: 191, column: 13, scope: !980)
!982 = !DILocation(line: 196, column: 13, scope: !980)
!983 = !DILocation(line: 203, column: 17, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 202, column: 17)
!985 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!986 = !DILocation(line: 203, column: 9, scope: !984)
!987 = !DILocation(line: 207, column: 9, scope: !984)
!988 = !DILocation(line: 212, column: 12, scope: !989)
!989 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!990 = !DILocation(line: 210, column: 3, scope: !2)
!991 = !DILocation(line: 212, column: 29, scope: !989)
!992 = !DILocation(line: 212, column: 26, scope: !989)
!993 = !DILocation(line: 212, column: 20, scope: !989)
!994 = !DILocation(line: 213, column: 9, scope: !989)
!995 = !DILocation(line: 217, column: 1, scope: !2)
!996 = !DILocation(line: 216, column: 5, scope: !2)
!997 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !998, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{!37, !13, !392, !13}
!1000 = !{!1001, !1002, !1003, !1004, !1005}
!1001 = !DILocalVariable(name: "fname", arg: 1, scope: !997, file: !3, line: 225, type: !13)
!1002 = !DILocalVariable(name: "mol", arg: 2, scope: !997, file: !3, line: 225, type: !392)
!1003 = !DILocalVariable(name: "options", arg: 3, scope: !997, file: !3, line: 225, type: !13)
!1004 = !DILocalVariable(name: "fp", scope: !997, file: !3, line: 227, type: !371)
!1005 = !DILocalVariable(name: "ier", scope: !997, file: !3, line: 228, type: !37)
!1006 = !DILocalVariable(name: "rname", scope: !1007, file: !3, line: 868, type: !1024)
!1007 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1008, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1010)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !371, !392, !13}
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1006, !1023, !1025, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037}
!1011 = !DILocalVariable(name: "fp", arg: 1, scope: !1007, file: !3, line: 849, type: !371)
!1012 = !DILocalVariable(name: "mol", arg: 2, scope: !1007, file: !3, line: 849, type: !392)
!1013 = !DILocalVariable(name: "options", arg: 3, scope: !1007, file: !3, line: 849, type: !13)
!1014 = !DILocalVariable(name: "r", scope: !1007, file: !3, line: 863, type: !37)
!1015 = !DILocalVariable(name: "tr", scope: !1007, file: !3, line: 863, type: !37)
!1016 = !DILocalVariable(name: "rn", scope: !1007, file: !3, line: 863, type: !37)
!1017 = !DILocalVariable(name: "a", scope: !1007, file: !3, line: 863, type: !37)
!1018 = !DILocalVariable(name: "ta", scope: !1007, file: !3, line: 863, type: !37)
!1019 = !DILocalVariable(name: "cid", scope: !1007, file: !3, line: 864, type: !14)
!1020 = !DILocalVariable(name: "sp", scope: !1007, file: !3, line: 865, type: !128)
!1021 = !DILocalVariable(name: "res", scope: !1007, file: !3, line: 866, type: !144)
!1022 = !DILocalVariable(name: "ap", scope: !1007, file: !3, line: 867, type: !190)
!1023 = !DILocalVariable(name: "aname", scope: !1007, file: !3, line: 869, type: !1024)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !200)
!1025 = !DILocalVariable(name: "rid", scope: !1007, file: !3, line: 870, type: !1026)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 7)
!1029 = !DILocalVariable(name: "loptions", scope: !1007, file: !3, line: 871, type: !375)
!1030 = !DILocalVariable(name: "opt_pqr", scope: !1007, file: !3, line: 872, type: !37)
!1031 = !DILocalVariable(name: "opt_nobocc", scope: !1007, file: !3, line: 873, type: !37)
!1032 = !DILocalVariable(name: "opt_brook", scope: !1007, file: !3, line: 874, type: !37)
!1033 = !DILocalVariable(name: "opt_wwpdb", scope: !1007, file: !3, line: 875, type: !37)
!1034 = !DILocalVariable(name: "opt_tr", scope: !1007, file: !3, line: 876, type: !37)
!1035 = !DILocalVariable(name: "opt_nocid", scope: !1007, file: !3, line: 877, type: !37)
!1036 = !DILocalVariable(name: "opt_allcid", scope: !1007, file: !3, line: 878, type: !37)
!1037 = !DILocalVariable(name: "cidstate", scope: !1007, file: !3, line: 879, type: !343)
!1038 = !DILocation(line: 868, column: 10, scope: !1007, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 246, column: 13, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 245, column: 23)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 245, column: 13)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 238, column: 30)
!1043 = distinct !DILexicalBlock(scope: !997, file: !3, line: 238, column: 9)
!1044 = !DILocation(line: 869, column: 10, scope: !1007, inlinedAt: !1039)
!1045 = !DILocation(line: 870, column: 10, scope: !1007, inlinedAt: !1039)
!1046 = !DILocation(line: 871, column: 10, scope: !1007, inlinedAt: !1039)
!1047 = !DILocation(line: 0, scope: !997)
!1048 = !DILocation(line: 230, column: 10, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !997, file: !3, line: 230, column: 9)
!1050 = !DILocation(line: 230, column: 9, scope: !997)
!1051 = !DILocation(line: 231, column: 13, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 230, column: 15)
!1053 = !DILocation(line: 232, column: 21, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 231, column: 34)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 231, column: 13)
!1056 = !DILocation(line: 232, column: 13, scope: !1054)
!1057 = !DILocation(line: 233, column: 9, scope: !1054)
!1058 = !DILocation(line: 238, column: 9, scope: !997)
!1059 = !DILocation(line: 239, column: 14, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 239, column: 13)
!1061 = !DILocation(line: 239, column: 13, scope: !1042)
!1062 = !DILocation(line: 240, column: 18, scope: !1060)
!1063 = !DILocation(line: 240, column: 13, scope: !1060)
!1064 = !DILocation(line: 241, column: 24, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 241, column: 18)
!1066 = !DILocation(line: 241, column: 43, scope: !1065)
!1067 = !DILocation(line: 241, column: 18, scope: !1060)
!1068 = !DILocation(line: 242, column: 13, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 241, column: 52)
!1070 = !DILocation(line: 245, column: 13, scope: !1042)
!1071 = !DILocation(line: 0, scope: !1007, inlinedAt: !1039)
!1072 = !DILocation(line: 868, column: 5, scope: !1007, inlinedAt: !1039)
!1073 = !DILocation(line: 869, column: 5, scope: !1007, inlinedAt: !1039)
!1074 = !DILocation(line: 870, column: 5, scope: !1007, inlinedAt: !1039)
!1075 = !DILocation(line: 871, column: 5, scope: !1007, inlinedAt: !1039)
!1076 = !DILocation(line: 885, column: 10, scope: !1077, inlinedAt: !1039)
!1077 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 885, column: 9)
!1078 = !DILocation(line: 885, column: 9, scope: !1007, inlinedAt: !1039)
!1079 = !DILocation(line: 886, column: 17, scope: !1080, inlinedAt: !1039)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 885, column: 14)
!1081 = !DILocation(line: 886, column: 9, scope: !1080, inlinedAt: !1039)
!1082 = !DILocation(line: 887, column: 9, scope: !1080, inlinedAt: !1039)
!1083 = !DILocation(line: 890, column: 17, scope: !1084, inlinedAt: !1039)
!1084 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 890, column: 9)
!1085 = !DILocation(line: 890, column: 9, scope: !1007, inlinedAt: !1039)
!1086 = !DILocation(line: 891, column: 19, scope: !1084, inlinedAt: !1039)
!1087 = !DILocation(line: 891, column: 9, scope: !1084, inlinedAt: !1039)
!1088 = !DILocation(line: 893, column: 9, scope: !1089, inlinedAt: !1039)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 892, column: 10)
!1090 = !DILocation(line: 894, column: 9, scope: !1089, inlinedAt: !1039)
!1091 = !DILocation(line: 894, column: 23, scope: !1089, inlinedAt: !1039)
!1092 = !DILocation(line: 896, column: 15, scope: !1007, inlinedAt: !1039)
!1093 = !DILocation(line: 896, column: 40, scope: !1007, inlinedAt: !1039)
!1094 = !DILocation(line: 897, column: 18, scope: !1007, inlinedAt: !1039)
!1095 = !DILocation(line: 897, column: 46, scope: !1007, inlinedAt: !1039)
!1096 = !DILocation(line: 898, column: 17, scope: !1007, inlinedAt: !1039)
!1097 = !DILocation(line: 898, column: 44, scope: !1007, inlinedAt: !1039)
!1098 = !DILocation(line: 899, column: 17, scope: !1007, inlinedAt: !1039)
!1099 = !DILocation(line: 899, column: 44, scope: !1007, inlinedAt: !1039)
!1100 = !DILocation(line: 900, column: 14, scope: !1007, inlinedAt: !1039)
!1101 = !DILocation(line: 900, column: 38, scope: !1007, inlinedAt: !1039)
!1102 = !DILocation(line: 901, column: 17, scope: !1007, inlinedAt: !1039)
!1103 = !DILocation(line: 901, column: 44, scope: !1007, inlinedAt: !1039)
!1104 = !DILocation(line: 902, column: 18, scope: !1007, inlinedAt: !1039)
!1105 = !DILocation(line: 902, column: 46, scope: !1007, inlinedAt: !1039)
!1106 = !DILocalVariable(name: "nocid", arg: 1, scope: !1107, file: !3, line: 1021, type: !37)
!1107 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !1108, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!343, !37, !37, !392}
!1110 = !{!1106, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1111 = !DILocalVariable(name: "allcid", arg: 2, scope: !1107, file: !3, line: 1021, type: !37)
!1112 = !DILocalVariable(name: "mol", arg: 3, scope: !1107, file: !3, line: 1021, type: !392)
!1113 = !DILocalVariable(name: "cid", scope: !1107, file: !3, line: 1023, type: !343)
!1114 = !DILocalVariable(name: "c", scope: !1107, file: !3, line: 1024, type: !37)
!1115 = !DILocalVariable(name: "sp", scope: !1107, file: !3, line: 1025, type: !128)
!1116 = !DILocalVariable(name: "err", scope: !1107, file: !3, line: 1026, type: !37)
!1117 = !DILabel(scope: !1107, name: "CLEAN_UP", file: !3, line: 1067)
!1118 = !DILocation(line: 0, scope: !1107, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 905, column: 16, scope: !1007, inlinedAt: !1039)
!1120 = !DILocation(line: 1028, column: 9, scope: !1121, inlinedAt: !1119)
!1121 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1028, column: 9)
!1122 = !DILocation(line: 1028, column: 9, scope: !1107, inlinedAt: !1119)
!1123 = !DILocation(line: 1031, column: 21, scope: !1107, inlinedAt: !1119)
!1124 = !DILocation(line: 1031, column: 11, scope: !1107, inlinedAt: !1119)
!1125 = !DILocation(line: 1032, column: 13, scope: !1126, inlinedAt: !1119)
!1126 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1032, column: 9)
!1127 = !DILocation(line: 1032, column: 9, scope: !1107, inlinedAt: !1119)
!1128 = !DILocation(line: 1033, column: 17, scope: !1129, inlinedAt: !1119)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1032, column: 22)
!1130 = !DILocation(line: 1033, column: 9, scope: !1129, inlinedAt: !1119)
!1131 = !DILocation(line: 1067, column: 3, scope: !1107, inlinedAt: !1119)
!1132 = !DILocalVariable(name: "cid", arg: 1, scope: !1133, file: !3, line: 1011, type: !343)
!1133 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !1134, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !343}
!1136 = !{!1132}
!1137 = !DILocation(line: 0, scope: !1133, inlinedAt: !1138)
!1138 = distinct !DILocation(line: 1070, column: 9, scope: !1139, inlinedAt: !1119)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1069, column: 14)
!1140 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1069, column: 9)
!1141 = !DILocation(line: 1014, column: 9, scope: !1133, inlinedAt: !1138)
!1142 = !DILocation(line: 1037, column: 28, scope: !1107, inlinedAt: !1119)
!1143 = !DILocation(line: 1037, column: 10, scope: !1107, inlinedAt: !1119)
!1144 = !DILocation(line: 1037, column: 17, scope: !1107, inlinedAt: !1119)
!1145 = !{!1146, !471, i64 8}
!1146 = !{!"cid_t", !530, i64 0, !530, i64 4, !471, i64 8}
!1147 = !DILocation(line: 1038, column: 21, scope: !1148, inlinedAt: !1119)
!1148 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1038, column: 9)
!1149 = !DILocation(line: 1038, column: 9, scope: !1107, inlinedAt: !1119)
!1150 = !DILocation(line: 1043, column: 10, scope: !1107, inlinedAt: !1119)
!1151 = !DILocation(line: 1043, column: 17, scope: !1107, inlinedAt: !1119)
!1152 = !{!1146, !530, i64 0}
!1153 = !DILocation(line: 1044, column: 10, scope: !1107, inlinedAt: !1119)
!1154 = !DILocation(line: 1044, column: 17, scope: !1107, inlinedAt: !1119)
!1155 = !{!1146, !530, i64 4}
!1156 = !DILocation(line: 1045, column: 5, scope: !1157, inlinedAt: !1119)
!1157 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1045, column: 5)
!1158 = !DILocation(line: 1046, column: 24, scope: !1159, inlinedAt: !1119)
!1159 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 1045, column: 5)
!1160 = !DILocation(line: 1048, column: 9, scope: !1107, inlinedAt: !1119)
!1161 = !DILocation(line: 1054, column: 24, scope: !1162, inlinedAt: !1119)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 1054, column: 9)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 1048, column: 17)
!1164 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1048, column: 9)
!1165 = !DILocation(line: 0, scope: !1162, inlinedAt: !1119)
!1166 = !DILocation(line: 1054, column: 9, scope: !1162, inlinedAt: !1119)
!1167 = !DILocation(line: 1055, column: 28, scope: !1168, inlinedAt: !1119)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 1055, column: 17)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1054, column: 56)
!1170 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 1054, column: 9)
!1171 = !DILocation(line: 1055, column: 17, scope: !1168, inlinedAt: !1119)
!1172 = !DILocation(line: 1055, column: 42, scope: !1168, inlinedAt: !1119)
!1173 = !DILocation(line: 1055, column: 17, scope: !1169, inlinedAt: !1119)
!1174 = !DILocation(line: 1056, column: 21, scope: !1175, inlinedAt: !1119)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 1055, column: 48)
!1176 = !DILocation(line: 1057, column: 30, scope: !1177, inlinedAt: !1119)
!1177 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 1057, column: 21)
!1178 = !DILocation(line: 1058, column: 21, scope: !1177, inlinedAt: !1119)
!1179 = !DILocation(line: 1058, column: 36, scope: !1177, inlinedAt: !1119)
!1180 = !DILocation(line: 1054, column: 48, scope: !1170, inlinedAt: !1119)
!1181 = distinct !{!1181, !1166, !1182}
!1182 = !DILocation(line: 1060, column: 9, scope: !1162, inlinedAt: !1119)
!1183 = !DILocation(line: 1062, column: 18, scope: !1184, inlinedAt: !1119)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 1062, column: 17)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 1061, column: 59)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 1061, column: 9)
!1187 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 1061, column: 9)
!1188 = !DILocation(line: 1062, column: 17, scope: !1185, inlinedAt: !1119)
!1189 = !DILocation(line: 1061, column: 55, scope: !1186, inlinedAt: !1119)
!1190 = !DILocation(line: 1039, column: 17, scope: !1191, inlinedAt: !1119)
!1191 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 1038, column: 30)
!1192 = !DILocation(line: 1039, column: 9, scope: !1191, inlinedAt: !1119)
!1193 = !DILocation(line: 1017, column: 9, scope: !1194, inlinedAt: !1138)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1014, column: 22)
!1195 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 1014, column: 9)
!1196 = !DILocation(line: 1018, column: 5, scope: !1194, inlinedAt: !1138)
!1197 = !DILocation(line: 911, column: 36, scope: !1198, inlinedAt: !1039)
!1198 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 911, column: 5)
!1199 = !DILocation(line: 0, scope: !1198, inlinedAt: !1039)
!1200 = !DILocation(line: 911, column: 5, scope: !1198, inlinedAt: !1039)
!1201 = !DILocation(line: 0, scope: !1202, inlinedAt: !1212)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 1084, column: 9)
!1203 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !1204, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!37, !343, !37, !37, !128}
!1206 = !{!1207, !1208, !1209, !1210, !1211}
!1207 = !DILocalVariable(name: "cid", arg: 1, scope: !1203, file: !3, line: 1077, type: !343)
!1208 = !DILocalVariable(name: "nocid", arg: 2, scope: !1203, file: !3, line: 1077, type: !37)
!1209 = !DILocalVariable(name: "allcid", arg: 3, scope: !1203, file: !3, line: 1077, type: !37)
!1210 = !DILocalVariable(name: "sp", arg: 4, scope: !1203, file: !3, line: 1077, type: !128)
!1211 = !DILocalVariable(name: "c", scope: !1203, file: !3, line: 1079, type: !37)
!1212 = distinct !DILocation(line: 920, column: 15, scope: !1213, inlinedAt: !1039)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 911, column: 68)
!1214 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 911, column: 5)
!1215 = !DILocation(line: 0, scope: !1216, inlinedAt: !1212)
!1216 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1087, column: 16)
!1217 = !DILocation(line: 0, scope: !1218, inlinedAt: !1212)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 1089, column: 22)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 1089, column: 14)
!1220 = !DILocation(line: 0, scope: !1221, inlinedAt: !1228)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1199, column: 9)
!1222 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !1223, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !13, !144}
!1225 = !{!1226, !1227}
!1226 = !DILocalVariable(name: "rname", arg: 1, scope: !1222, file: !3, line: 1194, type: !13)
!1227 = !DILocalVariable(name: "res", arg: 2, scope: !1222, file: !3, line: 1194, type: !144)
!1228 = distinct !DILocation(line: 927, column: 17, scope: !1229, inlinedAt: !1039)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 926, column: 22)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 924, column: 17)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 921, column: 53)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 921, column: 9)
!1233 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 921, column: 9)
!1234 = !DILocation(line: 0, scope: !1235, inlinedAt: !1244)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 1331, column: 12)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1329, column: 9)
!1237 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !1238, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1240)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !13, !13, !13}
!1240 = !{!1241, !1242, !1243}
!1241 = !DILocalVariable(name: "aname", arg: 1, scope: !1237, file: !3, line: 1315, type: !13)
!1242 = !DILocalVariable(name: "name", arg: 2, scope: !1237, file: !3, line: 1315, type: !13)
!1243 = !DILocalVariable(name: "rname", arg: 3, scope: !1237, file: !3, line: 1315, type: !13)
!1244 = distinct !DILocation(line: 937, column: 21, scope: !1245, inlinedAt: !1039)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 936, column: 26)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 934, column: 21)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 930, column: 49)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 930, column: 13)
!1249 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 930, column: 13)
!1250 = !DILocation(line: 0, scope: !1251, inlinedAt: !1244)
!1251 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1338, column: 9)
!1252 = !DILocation(line: 0, scope: !1253, inlinedAt: !1244)
!1253 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1339, column: 9)
!1254 = !DILocation(line: 0, scope: !1255, inlinedAt: !1261)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1297, column: 9)
!1256 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !1238, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DILocalVariable(name: "aname", arg: 1, scope: !1256, file: !3, line: 1279, type: !13)
!1259 = !DILocalVariable(name: "name", arg: 2, scope: !1256, file: !3, line: 1279, type: !13)
!1260 = !DILocalVariable(name: "rname", arg: 3, scope: !1256, file: !3, line: 1279, type: !13)
!1261 = distinct !DILocation(line: 935, column: 21, scope: !1246, inlinedAt: !1039)
!1262 = !DILocation(line: 0, scope: !1263, inlinedAt: !1039)
!1263 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 991, column: 21)
!1264 = !DILocation(line: 0, scope: !1203, inlinedAt: !1212)
!1265 = !DILocation(line: 1081, column: 9, scope: !1203, inlinedAt: !1212)
!1266 = !DILocation(line: 1084, column: 9, scope: !1203, inlinedAt: !1212)
!1267 = !DILocation(line: 1085, column: 17, scope: !1268, inlinedAt: !1212)
!1268 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1084, column: 22)
!1269 = !DILocation(line: 1085, column: 9, scope: !1268, inlinedAt: !1212)
!1270 = !DILocation(line: 1086, column: 9, scope: !1268, inlinedAt: !1212)
!1271 = !DILocation(line: 1087, column: 21, scope: !1216, inlinedAt: !1212)
!1272 = !DILocation(line: 1087, column: 35, scope: !1216, inlinedAt: !1212)
!1273 = !DILocation(line: 1087, column: 28, scope: !1216, inlinedAt: !1212)
!1274 = !DILocation(line: 1087, column: 16, scope: !1202, inlinedAt: !1212)
!1275 = !DILocation(line: 1089, column: 14, scope: !1216, inlinedAt: !1212)
!1276 = !DILocation(line: 1090, column: 24, scope: !1277, inlinedAt: !1212)
!1277 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 1090, column: 13)
!1278 = !DILocation(line: 1090, column: 13, scope: !1277, inlinedAt: !1212)
!1279 = !DILocation(line: 1090, column: 38, scope: !1277, inlinedAt: !1212)
!1280 = !DILocation(line: 1090, column: 13, scope: !1218, inlinedAt: !1212)
!1281 = !DILocation(line: 1091, column: 17, scope: !1282, inlinedAt: !1212)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 1090, column: 44)
!1283 = !DILocation(line: 1092, column: 26, scope: !1284, inlinedAt: !1212)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 1092, column: 17)
!1285 = !DILocation(line: 1093, column: 17, scope: !1284, inlinedAt: !1212)
!1286 = !DILocation(line: 1096, column: 14, scope: !1218, inlinedAt: !1212)
!1287 = !DILocation(line: 1096, column: 9, scope: !1218, inlinedAt: !1212)
!1288 = !DILocation(line: 1096, column: 34, scope: !1218, inlinedAt: !1212)
!1289 = !DILocation(line: 1097, column: 14, scope: !1290, inlinedAt: !1212)
!1290 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 1097, column: 9)
!1291 = !DILocation(line: 0, scope: !1292, inlinedAt: !1212)
!1292 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1097, column: 9)
!1293 = !DILocation(line: 0, scope: !1290, inlinedAt: !1212)
!1294 = !DILocation(line: 1097, column: 41, scope: !1292, inlinedAt: !1212)
!1295 = !DILocation(line: 1097, column: 9, scope: !1290, inlinedAt: !1212)
!1296 = !DILocation(line: 1098, column: 23, scope: !1297, inlinedAt: !1212)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1098, column: 17)
!1298 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1097, column: 72)
!1299 = !DILocation(line: 1098, column: 18, scope: !1297, inlinedAt: !1212)
!1300 = !DILocation(line: 1098, column: 17, scope: !1298, inlinedAt: !1212)
!1301 = distinct !{!1301, !1295, !1302}
!1302 = !DILocation(line: 1100, column: 9, scope: !1290, inlinedAt: !1212)
!1303 = !DILocation(line: 1104, column: 20, scope: !1304, inlinedAt: !1212)
!1304 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 1102, column: 12)
!1305 = !DILocation(line: 1105, column: 9, scope: !1304, inlinedAt: !1212)
!1306 = !DILocation(line: 921, column: 29, scope: !1232, inlinedAt: !1039)
!1307 = !{!787, !530, i64 32}
!1308 = !DILocation(line: 921, column: 23, scope: !1232, inlinedAt: !1039)
!1309 = !DILocation(line: 921, column: 9, scope: !1233, inlinedAt: !1039)
!1310 = !DILocation(line: 0, scope: !1231, inlinedAt: !1039)
!1311 = !DILocation(line: 0, scope: !1312, inlinedAt: !1039)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 958, column: 28)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 949, column: 25)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 941, column: 49)
!1315 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 941, column: 21)
!1316 = !DILocation(line: 922, column: 23, scope: !1231, inlinedAt: !1039)
!1317 = !DILocation(line: 922, column: 19, scope: !1231, inlinedAt: !1039)
!1318 = !DILocation(line: 923, column: 30, scope: !1231, inlinedAt: !1039)
!1319 = !DILocation(line: 923, column: 25, scope: !1231, inlinedAt: !1039)
!1320 = !DILocation(line: 923, column: 13, scope: !1231, inlinedAt: !1039)
!1321 = !DILocation(line: 0, scope: !1230, inlinedAt: !1039)
!1322 = !DILocation(line: 924, column: 17, scope: !1231, inlinedAt: !1039)
!1323 = !DILocalVariable(name: "rname", arg: 1, scope: !1324, file: !3, line: 1109, type: !13)
!1324 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !1223, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1325)
!1325 = !{!1323, !1326}
!1326 = !DILocalVariable(name: "res", arg: 2, scope: !1324, file: !3, line: 1109, type: !144)
!1327 = !DILocation(line: 0, scope: !1324, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 925, column: 17, scope: !1230, inlinedAt: !1039)
!1329 = !DILocation(line: 1112, column: 5, scope: !1324, inlinedAt: !1328)
!1330 = !DILocation(line: 1114, column: 10, scope: !1331, inlinedAt: !1328)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1114, column: 9)
!1332 = !DILocation(line: 1114, column: 9, scope: !1324, inlinedAt: !1328)
!1333 = !DILocation(line: 1115, column: 9, scope: !1331, inlinedAt: !1328)
!1334 = !DILocation(line: 1116, column: 9, scope: !1324, inlinedAt: !1328)
!1335 = !DILocation(line: 1117, column: 9, scope: !1336, inlinedAt: !1328)
!1336 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1116, column: 9)
!1337 = !DILocation(line: 1119, column: 9, scope: !1338, inlinedAt: !1328)
!1338 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1118, column: 9)
!1339 = !DILocation(line: 1121, column: 9, scope: !1340, inlinedAt: !1328)
!1340 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1120, column: 9)
!1341 = !DILocation(line: 1123, column: 9, scope: !1342, inlinedAt: !1328)
!1342 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1122, column: 9)
!1343 = !DILocation(line: 1125, column: 10, scope: !1344, inlinedAt: !1328)
!1344 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1125, column: 9)
!1345 = !DILocation(line: 1125, column: 9, scope: !1324, inlinedAt: !1328)
!1346 = !DILocation(line: 1126, column: 9, scope: !1344, inlinedAt: !1328)
!1347 = !DILocation(line: 1127, column: 10, scope: !1348, inlinedAt: !1328)
!1348 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1127, column: 9)
!1349 = !DILocation(line: 1127, column: 9, scope: !1324, inlinedAt: !1328)
!1350 = !DILocation(line: 1128, column: 9, scope: !1348, inlinedAt: !1328)
!1351 = !DILocation(line: 1129, column: 10, scope: !1352, inlinedAt: !1328)
!1352 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1129, column: 9)
!1353 = !DILocation(line: 1129, column: 9, scope: !1324, inlinedAt: !1328)
!1354 = !DILocation(line: 1130, column: 9, scope: !1352, inlinedAt: !1328)
!1355 = !DILocation(line: 1131, column: 10, scope: !1356, inlinedAt: !1328)
!1356 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1131, column: 9)
!1357 = !DILocation(line: 1131, column: 9, scope: !1324, inlinedAt: !1328)
!1358 = !DILocation(line: 1132, column: 9, scope: !1356, inlinedAt: !1328)
!1359 = !DILocation(line: 1134, column: 10, scope: !1360, inlinedAt: !1328)
!1360 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1134, column: 9)
!1361 = !DILocation(line: 1134, column: 9, scope: !1324, inlinedAt: !1328)
!1362 = !DILocation(line: 1135, column: 9, scope: !1360, inlinedAt: !1328)
!1363 = !DILocation(line: 1136, column: 10, scope: !1364, inlinedAt: !1328)
!1364 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1136, column: 9)
!1365 = !DILocation(line: 1136, column: 9, scope: !1324, inlinedAt: !1328)
!1366 = !DILocation(line: 1137, column: 9, scope: !1364, inlinedAt: !1328)
!1367 = !DILocation(line: 1138, column: 10, scope: !1368, inlinedAt: !1328)
!1368 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1138, column: 9)
!1369 = !DILocation(line: 1138, column: 9, scope: !1324, inlinedAt: !1328)
!1370 = !DILocation(line: 1139, column: 9, scope: !1368, inlinedAt: !1328)
!1371 = !DILocation(line: 1140, column: 10, scope: !1372, inlinedAt: !1328)
!1372 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1140, column: 9)
!1373 = !DILocation(line: 1140, column: 9, scope: !1324, inlinedAt: !1328)
!1374 = !DILocation(line: 1141, column: 9, scope: !1372, inlinedAt: !1328)
!1375 = !DILocation(line: 1143, column: 9, scope: !1324, inlinedAt: !1328)
!1376 = !DILocation(line: 1144, column: 9, scope: !1377, inlinedAt: !1328)
!1377 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1143, column: 9)
!1378 = !DILocation(line: 1146, column: 9, scope: !1379, inlinedAt: !1328)
!1379 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1145, column: 9)
!1380 = !DILocation(line: 1148, column: 9, scope: !1381, inlinedAt: !1328)
!1381 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1147, column: 9)
!1382 = !DILocation(line: 1150, column: 9, scope: !1383, inlinedAt: !1328)
!1383 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1149, column: 9)
!1384 = !DILocation(line: 1153, column: 9, scope: !1385, inlinedAt: !1328)
!1385 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1152, column: 9)
!1386 = !DILocation(line: 1155, column: 9, scope: !1387, inlinedAt: !1328)
!1387 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1154, column: 9)
!1388 = !DILocation(line: 1157, column: 9, scope: !1389, inlinedAt: !1328)
!1389 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1156, column: 9)
!1390 = !DILocation(line: 1159, column: 9, scope: !1391, inlinedAt: !1328)
!1391 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1158, column: 9)
!1392 = !DILocation(line: 1162, column: 9, scope: !1393, inlinedAt: !1328)
!1393 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1161, column: 9)
!1394 = !DILocation(line: 1164, column: 9, scope: !1395, inlinedAt: !1328)
!1395 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1163, column: 9)
!1396 = !DILocation(line: 1166, column: 9, scope: !1397, inlinedAt: !1328)
!1397 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1165, column: 9)
!1398 = !DILocation(line: 1168, column: 9, scope: !1399, inlinedAt: !1328)
!1399 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1167, column: 9)
!1400 = !DILocation(line: 1171, column: 9, scope: !1401, inlinedAt: !1328)
!1401 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1170, column: 9)
!1402 = !DILocation(line: 1173, column: 9, scope: !1403, inlinedAt: !1328)
!1403 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1172, column: 9)
!1404 = !DILocation(line: 1175, column: 9, scope: !1405, inlinedAt: !1328)
!1405 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1174, column: 9)
!1406 = !DILocation(line: 1177, column: 9, scope: !1407, inlinedAt: !1328)
!1407 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1176, column: 9)
!1408 = !DILocation(line: 1179, column: 9, scope: !1324, inlinedAt: !1328)
!1409 = !DILocation(line: 1180, column: 9, scope: !1410, inlinedAt: !1328)
!1410 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1179, column: 9)
!1411 = !DILocation(line: 1184, column: 9, scope: !1412, inlinedAt: !1328)
!1412 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1183, column: 9)
!1413 = !DILocation(line: 1186, column: 9, scope: !1414, inlinedAt: !1328)
!1414 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1185, column: 9)
!1415 = !DILocation(line: 1188, column: 9, scope: !1416, inlinedAt: !1328)
!1416 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1187, column: 9)
!1417 = !DILocation(line: 1190, column: 9, scope: !1418, inlinedAt: !1328)
!1418 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1189, column: 9)
!1419 = !DILocation(line: 926, column: 22, scope: !1230, inlinedAt: !1039)
!1420 = !DILocation(line: 0, scope: !1222, inlinedAt: !1228)
!1421 = !DILocation(line: 1197, column: 5, scope: !1222, inlinedAt: !1228)
!1422 = !DILocation(line: 1199, column: 10, scope: !1221, inlinedAt: !1228)
!1423 = !DILocation(line: 1199, column: 9, scope: !1222, inlinedAt: !1228)
!1424 = !DILocation(line: 1200, column: 9, scope: !1221, inlinedAt: !1228)
!1425 = !DILocation(line: 1201, column: 9, scope: !1222, inlinedAt: !1228)
!1426 = !DILocation(line: 1202, column: 9, scope: !1427, inlinedAt: !1228)
!1427 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1201, column: 9)
!1428 = !DILocation(line: 1204, column: 9, scope: !1429, inlinedAt: !1228)
!1429 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1203, column: 9)
!1430 = !DILocation(line: 1206, column: 9, scope: !1431, inlinedAt: !1228)
!1431 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1205, column: 9)
!1432 = !DILocation(line: 1208, column: 9, scope: !1433, inlinedAt: !1228)
!1433 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1207, column: 9)
!1434 = !DILocation(line: 1210, column: 10, scope: !1435, inlinedAt: !1228)
!1435 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1210, column: 9)
!1436 = !DILocation(line: 1210, column: 9, scope: !1222, inlinedAt: !1228)
!1437 = !DILocation(line: 1211, column: 9, scope: !1435, inlinedAt: !1228)
!1438 = !DILocation(line: 1212, column: 10, scope: !1439, inlinedAt: !1228)
!1439 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1212, column: 9)
!1440 = !DILocation(line: 1212, column: 9, scope: !1222, inlinedAt: !1228)
!1441 = !DILocation(line: 1213, column: 9, scope: !1439, inlinedAt: !1228)
!1442 = !DILocation(line: 1214, column: 10, scope: !1443, inlinedAt: !1228)
!1443 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1214, column: 9)
!1444 = !DILocation(line: 1214, column: 9, scope: !1222, inlinedAt: !1228)
!1445 = !DILocation(line: 1215, column: 9, scope: !1443, inlinedAt: !1228)
!1446 = !DILocation(line: 1216, column: 10, scope: !1447, inlinedAt: !1228)
!1447 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1216, column: 9)
!1448 = !DILocation(line: 1216, column: 9, scope: !1222, inlinedAt: !1228)
!1449 = !DILocation(line: 1217, column: 9, scope: !1447, inlinedAt: !1228)
!1450 = !DILocation(line: 1219, column: 10, scope: !1451, inlinedAt: !1228)
!1451 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1219, column: 9)
!1452 = !DILocation(line: 1219, column: 9, scope: !1222, inlinedAt: !1228)
!1453 = !DILocation(line: 1220, column: 9, scope: !1451, inlinedAt: !1228)
!1454 = !DILocation(line: 1221, column: 10, scope: !1455, inlinedAt: !1228)
!1455 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1221, column: 9)
!1456 = !DILocation(line: 1221, column: 9, scope: !1222, inlinedAt: !1228)
!1457 = !DILocation(line: 1222, column: 9, scope: !1455, inlinedAt: !1228)
!1458 = !DILocation(line: 1223, column: 10, scope: !1459, inlinedAt: !1228)
!1459 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1223, column: 9)
!1460 = !DILocation(line: 1223, column: 9, scope: !1222, inlinedAt: !1228)
!1461 = !DILocation(line: 1224, column: 9, scope: !1459, inlinedAt: !1228)
!1462 = !DILocation(line: 1225, column: 10, scope: !1463, inlinedAt: !1228)
!1463 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1225, column: 9)
!1464 = !DILocation(line: 1225, column: 9, scope: !1222, inlinedAt: !1228)
!1465 = !DILocation(line: 1226, column: 9, scope: !1463, inlinedAt: !1228)
!1466 = !DILocation(line: 1228, column: 9, scope: !1222, inlinedAt: !1228)
!1467 = !DILocation(line: 1229, column: 9, scope: !1468, inlinedAt: !1228)
!1468 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1228, column: 9)
!1469 = !DILocation(line: 1231, column: 9, scope: !1470, inlinedAt: !1228)
!1470 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1230, column: 9)
!1471 = !DILocation(line: 1233, column: 9, scope: !1472, inlinedAt: !1228)
!1472 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1232, column: 9)
!1473 = !DILocation(line: 1235, column: 9, scope: !1474, inlinedAt: !1228)
!1474 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1234, column: 9)
!1475 = !DILocation(line: 1238, column: 9, scope: !1476, inlinedAt: !1228)
!1476 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1237, column: 9)
!1477 = !DILocation(line: 1240, column: 9, scope: !1478, inlinedAt: !1228)
!1478 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1239, column: 9)
!1479 = !DILocation(line: 1242, column: 9, scope: !1480, inlinedAt: !1228)
!1480 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1241, column: 9)
!1481 = !DILocation(line: 1244, column: 9, scope: !1482, inlinedAt: !1228)
!1482 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1243, column: 9)
!1483 = !DILocation(line: 1247, column: 9, scope: !1484, inlinedAt: !1228)
!1484 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1246, column: 9)
!1485 = !DILocation(line: 1249, column: 9, scope: !1486, inlinedAt: !1228)
!1486 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1248, column: 9)
!1487 = !DILocation(line: 1251, column: 9, scope: !1488, inlinedAt: !1228)
!1488 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1250, column: 9)
!1489 = !DILocation(line: 1253, column: 9, scope: !1490, inlinedAt: !1228)
!1490 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1252, column: 9)
!1491 = !DILocation(line: 1256, column: 9, scope: !1492, inlinedAt: !1228)
!1492 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1255, column: 9)
!1493 = !DILocation(line: 1258, column: 9, scope: !1494, inlinedAt: !1228)
!1494 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1257, column: 9)
!1495 = !DILocation(line: 1260, column: 9, scope: !1496, inlinedAt: !1228)
!1496 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1259, column: 9)
!1497 = !DILocation(line: 1262, column: 9, scope: !1498, inlinedAt: !1228)
!1498 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1261, column: 9)
!1499 = !DILocation(line: 1264, column: 9, scope: !1222, inlinedAt: !1228)
!1500 = !DILocation(line: 1265, column: 9, scope: !1501, inlinedAt: !1228)
!1501 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1264, column: 9)
!1502 = !DILocation(line: 1269, column: 9, scope: !1503, inlinedAt: !1228)
!1503 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1268, column: 9)
!1504 = !DILocation(line: 1271, column: 9, scope: !1505, inlinedAt: !1228)
!1505 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1270, column: 9)
!1506 = !DILocation(line: 1273, column: 9, scope: !1507, inlinedAt: !1228)
!1507 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1272, column: 9)
!1508 = !DILocation(line: 1275, column: 9, scope: !1509, inlinedAt: !1228)
!1509 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1274, column: 9)
!1510 = !DILocation(line: 929, column: 17, scope: !1229, inlinedAt: !1039)
!1511 = !DILocation(line: 930, column: 34, scope: !1248, inlinedAt: !1039)
!1512 = !DILocation(line: 930, column: 27, scope: !1248, inlinedAt: !1039)
!1513 = !DILocation(line: 930, column: 13, scope: !1249, inlinedAt: !1039)
!1514 = !DILocation(line: 0, scope: !1247, inlinedAt: !1039)
!1515 = !DILocation(line: 0, scope: !1314, inlinedAt: !1039)
!1516 = !DILocation(line: 931, column: 19, scope: !1247, inlinedAt: !1039)
!1517 = !DILocation(line: 932, column: 28, scope: !1247, inlinedAt: !1039)
!1518 = !{!667, !471, i64 120}
!1519 = !DILocation(line: 0, scope: !1246, inlinedAt: !1039)
!1520 = !DILocation(line: 934, column: 21, scope: !1247, inlinedAt: !1039)
!1521 = !DILocation(line: 0, scope: !1256, inlinedAt: !1261)
!1522 = !DILocation(line: 1285, column: 14, scope: !1256, inlinedAt: !1261)
!1523 = !DILocation(line: 1287, column: 9, scope: !1524, inlinedAt: !1261)
!1524 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1287, column: 9)
!1525 = !DILocation(line: 1287, column: 22, scope: !1524, inlinedAt: !1261)
!1526 = !DILocation(line: 1287, column: 27, scope: !1524, inlinedAt: !1261)
!1527 = !DILocation(line: 1287, column: 30, scope: !1524, inlinedAt: !1261)
!1528 = !DILocation(line: 1287, column: 38, scope: !1524, inlinedAt: !1261)
!1529 = !DILocation(line: 1287, column: 9, scope: !1256, inlinedAt: !1261)
!1530 = !DILocation(line: 1288, column: 18, scope: !1524, inlinedAt: !1261)
!1531 = !DILocation(line: 1288, column: 9, scope: !1524, inlinedAt: !1261)
!1532 = !DILocation(line: 1289, column: 16, scope: !1256, inlinedAt: !1261)
!1533 = !DILocation(line: 1289, column: 14, scope: !1256, inlinedAt: !1261)
!1534 = !DILocation(line: 1290, column: 16, scope: !1256, inlinedAt: !1261)
!1535 = !DILocation(line: 1290, column: 14, scope: !1256, inlinedAt: !1261)
!1536 = !DILocation(line: 1291, column: 16, scope: !1256, inlinedAt: !1261)
!1537 = !DILocation(line: 1292, column: 18, scope: !1538, inlinedAt: !1261)
!1538 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1292, column: 9)
!1539 = !DILocation(line: 1292, column: 9, scope: !1256, inlinedAt: !1261)
!1540 = !DILocation(line: 1294, column: 14, scope: !1256, inlinedAt: !1261)
!1541 = !DILocation(line: 1297, column: 10, scope: !1255, inlinedAt: !1261)
!1542 = !DILocation(line: 1298, column: 26, scope: !1255, inlinedAt: !1261)
!1543 = !DILocation(line: 1297, column: 34, scope: !1255, inlinedAt: !1261)
!1544 = !DILocation(line: 1299, column: 11, scope: !1255, inlinedAt: !1261)
!1545 = !DILocation(line: 1305, column: 14, scope: !1255, inlinedAt: !1261)
!1546 = !DILocation(line: 1299, column: 36, scope: !1255, inlinedAt: !1261)
!1547 = !DILocation(line: 1306, column: 18, scope: !1548, inlinedAt: !1261)
!1548 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1305, column: 41)
!1549 = !DILocation(line: 1307, column: 18, scope: !1548, inlinedAt: !1261)
!1550 = !DILocation(line: 1308, column: 5, scope: !1548, inlinedAt: !1261)
!1551 = !DILocation(line: 936, column: 26, scope: !1246, inlinedAt: !1039)
!1552 = !DILocation(line: 0, scope: !1237, inlinedAt: !1244)
!1553 = !DILocation(line: 1329, column: 9, scope: !1236, inlinedAt: !1244)
!1554 = !DILocation(line: 1329, column: 22, scope: !1236, inlinedAt: !1244)
!1555 = !DILocation(line: 1329, column: 27, scope: !1236, inlinedAt: !1244)
!1556 = !DILocation(line: 1329, column: 30, scope: !1236, inlinedAt: !1244)
!1557 = !DILocation(line: 1329, column: 38, scope: !1236, inlinedAt: !1244)
!1558 = !DILocation(line: 1329, column: 9, scope: !1237, inlinedAt: !1244)
!1559 = !DILocation(line: 1330, column: 9, scope: !1560, inlinedAt: !1244)
!1560 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 1329, column: 45)
!1561 = !DILocation(line: 1331, column: 5, scope: !1560, inlinedAt: !1244)
!1562 = !DILocation(line: 1332, column: 18, scope: !1235, inlinedAt: !1244)
!1563 = !DILocation(line: 1333, column: 9, scope: !1235, inlinedAt: !1244)
!1564 = !DILocation(line: 1334, column: 18, scope: !1235, inlinedAt: !1244)
!1565 = !DILocation(line: 1337, column: 9, scope: !1566, inlinedAt: !1244)
!1566 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1337, column: 9)
!1567 = !DILocation(line: 1337, column: 18, scope: !1566, inlinedAt: !1244)
!1568 = !DILocation(line: 1337, column: 9, scope: !1237, inlinedAt: !1244)
!1569 = !DILocation(line: 1337, column: 37, scope: !1566, inlinedAt: !1244)
!1570 = !DILocation(line: 1337, column: 28, scope: !1566, inlinedAt: !1244)
!1571 = !DILocation(line: 1338, column: 9, scope: !1251, inlinedAt: !1244)
!1572 = !DILocation(line: 1338, column: 18, scope: !1251, inlinedAt: !1244)
!1573 = !DILocation(line: 1338, column: 9, scope: !1237, inlinedAt: !1244)
!1574 = !DILocation(line: 1338, column: 37, scope: !1251, inlinedAt: !1244)
!1575 = !DILocation(line: 1338, column: 28, scope: !1251, inlinedAt: !1244)
!1576 = !DILocation(line: 1339, column: 9, scope: !1253, inlinedAt: !1244)
!1577 = !DILocation(line: 1339, column: 18, scope: !1253, inlinedAt: !1244)
!1578 = !DILocation(line: 1339, column: 9, scope: !1237, inlinedAt: !1244)
!1579 = !DILocation(line: 1339, column: 37, scope: !1253, inlinedAt: !1244)
!1580 = !DILocation(line: 1339, column: 28, scope: !1253, inlinedAt: !1244)
!1581 = !DILocation(line: 1346, column: 10, scope: !1582, inlinedAt: !1244)
!1582 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1346, column: 9)
!1583 = !DILocation(line: 1346, column: 9, scope: !1237, inlinedAt: !1244)
!1584 = !DILocation(line: 1346, column: 37, scope: !1582, inlinedAt: !1244)
!1585 = !DILocation(line: 1347, column: 10, scope: !1586, inlinedAt: !1244)
!1586 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1347, column: 9)
!1587 = !DILocation(line: 1347, column: 9, scope: !1237, inlinedAt: !1244)
!1588 = !DILocation(line: 1347, column: 37, scope: !1586, inlinedAt: !1244)
!1589 = !DILocation(line: 1348, column: 10, scope: !1590, inlinedAt: !1244)
!1590 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1348, column: 9)
!1591 = !DILocation(line: 1348, column: 9, scope: !1237, inlinedAt: !1244)
!1592 = !DILocation(line: 1348, column: 37, scope: !1590, inlinedAt: !1244)
!1593 = !DILocation(line: 1349, column: 10, scope: !1594, inlinedAt: !1244)
!1594 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1349, column: 9)
!1595 = !DILocation(line: 1349, column: 9, scope: !1237, inlinedAt: !1244)
!1596 = !DILocation(line: 1349, column: 37, scope: !1594, inlinedAt: !1244)
!1597 = !DILocation(line: 1350, column: 10, scope: !1598, inlinedAt: !1244)
!1598 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1350, column: 9)
!1599 = !DILocation(line: 1350, column: 9, scope: !1237, inlinedAt: !1244)
!1600 = !DILocation(line: 1350, column: 37, scope: !1598, inlinedAt: !1244)
!1601 = !DILocation(line: 1351, column: 10, scope: !1602, inlinedAt: !1244)
!1602 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1351, column: 9)
!1603 = !DILocation(line: 1351, column: 9, scope: !1237, inlinedAt: !1244)
!1604 = !DILocation(line: 1351, column: 37, scope: !1602, inlinedAt: !1244)
!1605 = !DILocation(line: 1352, column: 10, scope: !1606, inlinedAt: !1244)
!1606 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1352, column: 9)
!1607 = !DILocation(line: 1352, column: 9, scope: !1237, inlinedAt: !1244)
!1608 = !DILocation(line: 1352, column: 37, scope: !1606, inlinedAt: !1244)
!1609 = !DILocation(line: 1353, column: 10, scope: !1610, inlinedAt: !1244)
!1610 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1353, column: 9)
!1611 = !DILocation(line: 1353, column: 9, scope: !1237, inlinedAt: !1244)
!1612 = !DILocation(line: 1353, column: 37, scope: !1610, inlinedAt: !1244)
!1613 = !DILocation(line: 1359, column: 10, scope: !1614, inlinedAt: !1244)
!1614 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1359, column: 9)
!1615 = !DILocation(line: 1359, column: 36, scope: !1614, inlinedAt: !1244)
!1616 = !DILocation(line: 1359, column: 40, scope: !1614, inlinedAt: !1244)
!1617 = !DILocation(line: 1359, column: 66, scope: !1614, inlinedAt: !1244)
!1618 = !DILocation(line: 1360, column: 10, scope: !1614, inlinedAt: !1244)
!1619 = !DILocation(line: 1360, column: 36, scope: !1614, inlinedAt: !1244)
!1620 = !DILocation(line: 1360, column: 40, scope: !1614, inlinedAt: !1244)
!1621 = !DILocation(line: 1360, column: 66, scope: !1614, inlinedAt: !1244)
!1622 = !DILocation(line: 1361, column: 10, scope: !1614, inlinedAt: !1244)
!1623 = !DILocation(line: 1361, column: 36, scope: !1614, inlinedAt: !1244)
!1624 = !DILocation(line: 1361, column: 40, scope: !1614, inlinedAt: !1244)
!1625 = !DILocation(line: 1361, column: 66, scope: !1614, inlinedAt: !1244)
!1626 = !DILocation(line: 1362, column: 10, scope: !1614, inlinedAt: !1244)
!1627 = !DILocation(line: 1362, column: 36, scope: !1614, inlinedAt: !1244)
!1628 = !DILocation(line: 1362, column: 40, scope: !1614, inlinedAt: !1244)
!1629 = !DILocation(line: 1362, column: 66, scope: !1614, inlinedAt: !1244)
!1630 = !DILocation(line: 1363, column: 10, scope: !1614, inlinedAt: !1244)
!1631 = !DILocation(line: 1363, column: 36, scope: !1614, inlinedAt: !1244)
!1632 = !DILocation(line: 1363, column: 40, scope: !1614, inlinedAt: !1244)
!1633 = !DILocation(line: 1363, column: 66, scope: !1614, inlinedAt: !1244)
!1634 = !DILocation(line: 1364, column: 10, scope: !1614, inlinedAt: !1244)
!1635 = !DILocation(line: 1364, column: 36, scope: !1614, inlinedAt: !1244)
!1636 = !DILocation(line: 1364, column: 40, scope: !1614, inlinedAt: !1244)
!1637 = !DILocation(line: 1364, column: 66, scope: !1614, inlinedAt: !1244)
!1638 = !DILocation(line: 1365, column: 10, scope: !1614, inlinedAt: !1244)
!1639 = !DILocation(line: 1365, column: 36, scope: !1614, inlinedAt: !1244)
!1640 = !DILocation(line: 1365, column: 40, scope: !1614, inlinedAt: !1244)
!1641 = !DILocation(line: 1365, column: 66, scope: !1614, inlinedAt: !1244)
!1642 = !DILocation(line: 1366, column: 10, scope: !1614, inlinedAt: !1244)
!1643 = !DILocation(line: 1366, column: 36, scope: !1614, inlinedAt: !1244)
!1644 = !DILocation(line: 1366, column: 40, scope: !1614, inlinedAt: !1244)
!1645 = !DILocation(line: 1359, column: 9, scope: !1237, inlinedAt: !1244)
!1646 = !DILocation(line: 1367, column: 18, scope: !1647, inlinedAt: !1244)
!1647 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1366, column: 67)
!1648 = !DILocation(line: 1368, column: 18, scope: !1647, inlinedAt: !1244)
!1649 = !DILocation(line: 1369, column: 18, scope: !1647, inlinedAt: !1244)
!1650 = !DILocation(line: 1370, column: 18, scope: !1647, inlinedAt: !1244)
!1651 = !DILocation(line: 1371, column: 5, scope: !1647, inlinedAt: !1244)
!1652 = !DILocation(line: 939, column: 21, scope: !1245, inlinedAt: !1039)
!1653 = !DILocation(line: 941, column: 22, scope: !1315, inlinedAt: !1039)
!1654 = !DILocation(line: 941, column: 38, scope: !1315, inlinedAt: !1039)
!1655 = !DILocation(line: 0, scope: !1315, inlinedAt: !1039)
!1656 = !DILocation(line: 949, column: 25, scope: !1314, inlinedAt: !1039)
!1657 = !DILocation(line: 957, column: 33, scope: !1658, inlinedAt: !1039)
!1658 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 949, column: 38)
!1659 = !DILocation(line: 957, column: 47, scope: !1658, inlinedAt: !1039)
!1660 = !DILocation(line: 957, column: 61, scope: !1658, inlinedAt: !1039)
!1661 = !DILocation(line: 950, column: 25, scope: !1658, inlinedAt: !1039)
!1662 = !DILocation(line: 958, column: 21, scope: !1658, inlinedAt: !1039)
!1663 = !DILocation(line: 961, column: 36, scope: !1312, inlinedAt: !1039)
!1664 = !DILocation(line: 966, column: 33, scope: !1312, inlinedAt: !1039)
!1665 = !DILocation(line: 966, column: 47, scope: !1312, inlinedAt: !1039)
!1666 = !DILocation(line: 966, column: 61, scope: !1312, inlinedAt: !1039)
!1667 = !DILocation(line: 959, column: 25, scope: !1312, inlinedAt: !1039)
!1668 = !DILocation(line: 970, column: 25, scope: !1669, inlinedAt: !1039)
!1669 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 968, column: 24)
!1670 = !DILocation(line: 974, column: 33, scope: !1671, inlinedAt: !1039)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 970, column: 38)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 970, column: 25)
!1673 = !DILocation(line: 974, column: 47, scope: !1671, inlinedAt: !1039)
!1674 = !DILocation(line: 974, column: 61, scope: !1671, inlinedAt: !1039)
!1675 = !DILocation(line: 971, column: 25, scope: !1671, inlinedAt: !1039)
!1676 = !DILocation(line: 975, column: 21, scope: !1671, inlinedAt: !1039)
!1677 = !DILocation(line: 978, column: 36, scope: !1678, inlinedAt: !1039)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 975, column: 28)
!1679 = !DILocation(line: 979, column: 33, scope: !1678, inlinedAt: !1039)
!1680 = !DILocation(line: 979, column: 47, scope: !1678, inlinedAt: !1039)
!1681 = !DILocation(line: 979, column: 61, scope: !1678, inlinedAt: !1039)
!1682 = !DILocation(line: 976, column: 25, scope: !1678, inlinedAt: !1039)
!1683 = !DILocation(line: 982, column: 21, scope: !1247, inlinedAt: !1039)
!1684 = !DILocation(line: 985, column: 33, scope: !1685, inlinedAt: !1039)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 982, column: 30)
!1686 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 982, column: 21)
!1687 = !DILocation(line: 985, column: 47, scope: !1685, inlinedAt: !1039)
!1688 = !DILocation(line: 984, column: 21, scope: !1685, inlinedAt: !1039)
!1689 = !DILocation(line: 986, column: 17, scope: !1685, inlinedAt: !1039)
!1690 = !DILocation(line: 986, column: 28, scope: !1686, inlinedAt: !1039)
!1691 = !DILocation(line: 988, column: 33, scope: !1692, inlinedAt: !1039)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 986, column: 41)
!1693 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 986, column: 28)
!1694 = !DILocation(line: 988, column: 44, scope: !1692, inlinedAt: !1039)
!1695 = !DILocation(line: 987, column: 21, scope: !1692, inlinedAt: !1039)
!1696 = !DILocation(line: 991, column: 32, scope: !1263, inlinedAt: !1039)
!1697 = !DILocation(line: 992, column: 47, scope: !1698, inlinedAt: !1039)
!1698 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 991, column: 74)
!1699 = !DILocation(line: 992, column: 21, scope: !1698, inlinedAt: !1039)
!1700 = !DILocation(line: 993, column: 17, scope: !1698, inlinedAt: !1039)
!1701 = !DILocation(line: 995, column: 17, scope: !1247, inlinedAt: !1039)
!1702 = !DILocation(line: 930, column: 45, scope: !1248, inlinedAt: !1039)
!1703 = distinct !{!1703, !1513, !1704}
!1704 = !DILocation(line: 997, column: 13, scope: !1249, inlinedAt: !1039)
!1705 = !DILocation(line: 921, column: 43, scope: !1232, inlinedAt: !1039)
!1706 = !DILocation(line: 921, column: 49, scope: !1232, inlinedAt: !1039)
!1707 = distinct !{!1707, !1309, !1708}
!1708 = !DILocation(line: 999, column: 9, scope: !1233, inlinedAt: !1039)
!1709 = !DILocation(line: 911, column: 13, scope: !1198, inlinedAt: !1039)
!1710 = !DILocation(line: 1001, column: 9, scope: !1213, inlinedAt: !1039)
!1711 = !DILocation(line: 911, column: 60, scope: !1214, inlinedAt: !1039)
!1712 = distinct !{!1712, !1200, !1713}
!1713 = !DILocation(line: 1007, column: 5, scope: !1198, inlinedAt: !1039)
!1714 = !DILocation(line: 0, scope: !1133, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1008, column: 5, scope: !1007, inlinedAt: !1039)
!1716 = !DILocation(line: 1014, column: 13, scope: !1195, inlinedAt: !1715)
!1717 = !DILocation(line: 1014, column: 9, scope: !1133, inlinedAt: !1715)
!1718 = !DILocation(line: 1015, column: 18, scope: !1719, inlinedAt: !1715)
!1719 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 1015, column: 13)
!1720 = !DILocation(line: 1015, column: 25, scope: !1719, inlinedAt: !1715)
!1721 = !DILocation(line: 1015, column: 13, scope: !1194, inlinedAt: !1715)
!1722 = !DILocation(line: 1016, column: 13, scope: !1719, inlinedAt: !1715)
!1723 = !DILocation(line: 1017, column: 14, scope: !1194, inlinedAt: !1715)
!1724 = !DILocation(line: 1017, column: 9, scope: !1194, inlinedAt: !1715)
!1725 = !DILocation(line: 1018, column: 5, scope: !1194, inlinedAt: !1715)
!1726 = !DILocation(line: 0, scope: !1186, inlinedAt: !1119)
!1727 = !DILocation(line: 1009, column: 1, scope: !1007, inlinedAt: !1039)
!1728 = !DILocation(line: 247, column: 23, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 247, column: 17)
!1730 = !DILocation(line: 247, column: 20, scope: !1729)
!1731 = !DILocation(line: 247, column: 17, scope: !1040)
!1732 = !DILocation(line: 248, column: 17, scope: !1729)
!1733 = !DILocation(line: 251, column: 5, scope: !997)
!1734 = !DILocation(line: 253, column: 5, scope: !997)
!1735 = !DILocation(line: 254, column: 1, scope: !997)
!1736 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1737, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!37, !13, !13, !392}
!1739 = !{!1740, !1741, !1742, !1743}
!1740 = !DILocalVariable(name: "fname", arg: 1, scope: !1736, file: !3, line: 256, type: !13)
!1741 = !DILocalVariable(name: "blockId", arg: 2, scope: !1736, file: !3, line: 256, type: !13)
!1742 = !DILocalVariable(name: "mol", arg: 3, scope: !1736, file: !3, line: 256, type: !392)
!1743 = !DILocalVariable(name: "fp", scope: !1736, file: !3, line: 258, type: !371)
!1744 = !DILocation(line: 0, scope: !1736)
!1745 = !DILocation(line: 260, column: 10, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 260, column: 9)
!1747 = !DILocation(line: 260, column: 9, scope: !1736)
!1748 = !DILocation(line: 261, column: 17, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 260, column: 15)
!1750 = !DILocation(line: 261, column: 9, scope: !1749)
!1751 = !DILocation(line: 262, column: 9, scope: !1749)
!1752 = !DILocation(line: 264, column: 10, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 264, column: 9)
!1754 = !DILocation(line: 264, column: 9, scope: !1736)
!1755 = !DILocation(line: 266, column: 20, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 266, column: 14)
!1757 = !DILocation(line: 266, column: 39, scope: !1756)
!1758 = !DILocation(line: 266, column: 14, scope: !1753)
!1759 = !DILocation(line: 267, column: 9, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 266, column: 48)
!1761 = !DILocation(line: 268, column: 9, scope: !1760)
!1762 = !DILocation(line: 265, column: 14, scope: !1753)
!1763 = !DILocalVariable(name: "fp", arg: 1, scope: !1764, file: !3, line: 1381, type: !371)
!1764 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1765, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !371, !13, !392}
!1767 = !{!1763, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1768 = !DILocalVariable(name: "blockId", arg: 2, scope: !1764, file: !3, line: 1381, type: !13)
!1769 = !DILocalVariable(name: "mol", arg: 3, scope: !1764, file: !3, line: 1381, type: !392)
!1770 = !DILocalVariable(name: "r", scope: !1764, file: !3, line: 1383, type: !37)
!1771 = !DILocalVariable(name: "tr", scope: !1764, file: !3, line: 1383, type: !37)
!1772 = !DILocalVariable(name: "a", scope: !1764, file: !3, line: 1383, type: !37)
!1773 = !DILocalVariable(name: "ta", scope: !1764, file: !3, line: 1383, type: !37)
!1774 = !DILocalVariable(name: "strandnum", scope: !1764, file: !3, line: 1383, type: !37)
!1775 = !DILocalVariable(name: "cid", scope: !1764, file: !3, line: 1384, type: !14)
!1776 = !DILocalVariable(name: "sp", scope: !1764, file: !3, line: 1385, type: !128)
!1777 = !DILocalVariable(name: "res", scope: !1764, file: !3, line: 1386, type: !144)
!1778 = !DILocalVariable(name: "ap", scope: !1764, file: !3, line: 1387, type: !190)
!1779 = !DILocation(line: 0, scope: !1764, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 270, column: 5, scope: !1736)
!1781 = !DILocation(line: 1390, column: 5, scope: !1782, inlinedAt: !1780)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 1390, column: 5)
!1783 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 1390, column: 5)
!1784 = !DILocation(line: 1390, column: 5, scope: !1783, inlinedAt: !1780)
!1785 = !DILocation(line: 1392, column: 17, scope: !1764, inlinedAt: !1780)
!1786 = !{!921, !530, i64 96}
!1787 = !DILocation(line: 1396, column: 5, scope: !1764, inlinedAt: !1780)
!1788 = !DILocation(line: 1397, column: 5, scope: !1764, inlinedAt: !1780)
!1789 = !DILocation(line: 1398, column: 5, scope: !1764, inlinedAt: !1780)
!1790 = !DILocation(line: 1399, column: 5, scope: !1764, inlinedAt: !1780)
!1791 = !DILocation(line: 1400, column: 5, scope: !1764, inlinedAt: !1780)
!1792 = !DILocation(line: 1401, column: 5, scope: !1764, inlinedAt: !1780)
!1793 = !DILocation(line: 1402, column: 5, scope: !1764, inlinedAt: !1780)
!1794 = !DILocation(line: 1403, column: 5, scope: !1764, inlinedAt: !1780)
!1795 = !DILocation(line: 1404, column: 5, scope: !1764, inlinedAt: !1780)
!1796 = !DILocation(line: 1407, column: 36, scope: !1797, inlinedAt: !1780)
!1797 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 1407, column: 5)
!1798 = !DILocation(line: 0, scope: !1797, inlinedAt: !1780)
!1799 = !DILocation(line: 1407, column: 5, scope: !1797, inlinedAt: !1780)
!1800 = !DILocation(line: 1392, column: 28, scope: !1764, inlinedAt: !1780)
!1801 = !DILocation(line: 1392, column: 11, scope: !1764, inlinedAt: !1780)
!1802 = !DILocation(line: 1408, column: 18, scope: !1803, inlinedAt: !1780)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1407, column: 68)
!1804 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 1407, column: 5)
!1805 = !DILocation(line: 1409, column: 29, scope: !1806, inlinedAt: !1780)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 1409, column: 9)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1409, column: 9)
!1808 = !DILocation(line: 1409, column: 23, scope: !1806, inlinedAt: !1780)
!1809 = !DILocation(line: 1409, column: 9, scope: !1807, inlinedAt: !1780)
!1810 = !DILocation(line: 0, scope: !1811, inlinedAt: !1780)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 1409, column: 53)
!1812 = !DILocation(line: 0, scope: !1813, inlinedAt: !1780)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1411, column: 49)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 1411, column: 13)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 1411, column: 13)
!1816 = !DILocation(line: 1410, column: 23, scope: !1811, inlinedAt: !1780)
!1817 = !DILocation(line: 1410, column: 19, scope: !1811, inlinedAt: !1780)
!1818 = !DILocation(line: 1411, column: 34, scope: !1814, inlinedAt: !1780)
!1819 = !DILocation(line: 1411, column: 27, scope: !1814, inlinedAt: !1780)
!1820 = !DILocation(line: 1411, column: 13, scope: !1815, inlinedAt: !1780)
!1821 = !DILocation(line: 1409, column: 43, scope: !1806, inlinedAt: !1780)
!1822 = !DILocation(line: 1409, column: 49, scope: !1806, inlinedAt: !1780)
!1823 = !DILocation(line: 1412, column: 19, scope: !1813, inlinedAt: !1780)
!1824 = !DILocation(line: 1413, column: 28, scope: !1813, inlinedAt: !1780)
!1825 = !DILocation(line: 1423, column: 33, scope: !1813, inlinedAt: !1780)
!1826 = !DILocation(line: 1423, column: 50, scope: !1813, inlinedAt: !1780)
!1827 = !DILocation(line: 1424, column: 25, scope: !1813, inlinedAt: !1780)
!1828 = !DILocation(line: 1424, column: 39, scope: !1813, inlinedAt: !1780)
!1829 = !DILocation(line: 1424, column: 53, scope: !1813, inlinedAt: !1780)
!1830 = !DILocation(line: 1421, column: 17, scope: !1813, inlinedAt: !1780)
!1831 = !DILocation(line: 1411, column: 45, scope: !1814, inlinedAt: !1780)
!1832 = distinct !{!1832, !1820, !1833}
!1833 = !DILocation(line: 1426, column: 13, scope: !1815, inlinedAt: !1780)
!1834 = distinct !{!1834, !1809, !1835}
!1835 = !DILocation(line: 1427, column: 9, scope: !1807, inlinedAt: !1780)
!1836 = !DILocation(line: 1407, column: 13, scope: !1797, inlinedAt: !1780)
!1837 = !DILocation(line: 1428, column: 18, scope: !1838, inlinedAt: !1780)
!1838 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1428, column: 13)
!1839 = !DILocation(line: 1428, column: 29, scope: !1838, inlinedAt: !1780)
!1840 = !DILocation(line: 1428, column: 13, scope: !1803, inlinedAt: !1780)
!1841 = !DILocation(line: 1407, column: 60, scope: !1804, inlinedAt: !1780)
!1842 = distinct !{!1842, !1799, !1843}
!1843 = !DILocation(line: 1430, column: 5, scope: !1797, inlinedAt: !1780)
!1844 = !DILocation(line: 271, column: 15, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 271, column: 9)
!1846 = !DILocation(line: 271, column: 12, scope: !1845)
!1847 = !DILocation(line: 271, column: 9, scope: !1736)
!1848 = !DILocation(line: 272, column: 9, scope: !1845)
!1849 = !DILocation(line: 274, column: 1, scope: !1736)
!1850 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1851, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!37, !13, !392}
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870}
!1854 = !DILocalVariable(name: "fname", arg: 1, scope: !1850, file: !3, line: 276, type: !13)
!1855 = !DILocalVariable(name: "mol", arg: 2, scope: !1850, file: !3, line: 276, type: !392)
!1856 = !DILocalVariable(name: "fp", scope: !1850, file: !3, line: 278, type: !371)
!1857 = !DILocalVariable(name: "sp", scope: !1850, file: !3, line: 279, type: !128)
!1858 = !DILocalVariable(name: "res", scope: !1850, file: !3, line: 280, type: !144)
!1859 = !DILocalVariable(name: "a", scope: !1850, file: !3, line: 281, type: !37)
!1860 = !DILocalVariable(name: "ta", scope: !1850, file: !3, line: 281, type: !37)
!1861 = !DILocalVariable(name: "ai", scope: !1850, file: !3, line: 281, type: !37)
!1862 = !DILocalVariable(name: "aj", scope: !1850, file: !3, line: 281, type: !37)
!1863 = !DILocalVariable(name: "r", scope: !1850, file: !3, line: 281, type: !37)
!1864 = !DILocalVariable(name: "rj", scope: !1850, file: !3, line: 281, type: !37)
!1865 = !DILocalVariable(name: "tr", scope: !1850, file: !3, line: 281, type: !37)
!1866 = !DILocalVariable(name: "rval", scope: !1850, file: !3, line: 282, type: !37)
!1867 = !DILocalVariable(name: "aoff", scope: !1850, file: !3, line: 283, type: !109)
!1868 = !DILocalVariable(name: "b", scope: !1850, file: !3, line: 284, type: !37)
!1869 = !DILocalVariable(name: "ebp", scope: !1850, file: !3, line: 285, type: !160)
!1870 = !DILabel(scope: !1850, name: "clean_up", file: !3, line: 338)
!1871 = !DILocation(line: 0, scope: !1850)
!1872 = !DILocation(line: 287, column: 10, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 287, column: 9)
!1874 = !DILocation(line: 287, column: 9, scope: !1850)
!1875 = !DILocation(line: 288, column: 17, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 287, column: 15)
!1877 = !DILocation(line: 288, column: 9, scope: !1876)
!1878 = !DILocation(line: 289, column: 9, scope: !1876)
!1879 = !DILocation(line: 291, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 291, column: 9)
!1881 = !DILocation(line: 291, column: 34, scope: !1880)
!1882 = !DILocation(line: 291, column: 9, scope: !1850)
!1883 = !DILocation(line: 292, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 291, column: 43)
!1885 = !DILocation(line: 293, column: 9, scope: !1884)
!1886 = !DILocation(line: 296, column: 28, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 296, column: 5)
!1888 = !DILocation(line: 0, scope: !1887)
!1889 = !DILocation(line: 296, column: 5, scope: !1887)
!1890 = !DILocation(line: 297, column: 19, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 296, column: 5)
!1892 = !DILocation(line: 297, column: 12, scope: !1891)
!1893 = !DILocation(line: 296, column: 52, scope: !1891)
!1894 = distinct !{!1894, !1889, !1895}
!1895 = !DILocation(line: 297, column: 19, scope: !1887)
!1896 = !DILocation(line: 299, column: 32, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 299, column: 9)
!1898 = !DILocation(line: 299, column: 25, scope: !1897)
!1899 = !DILocation(line: 299, column: 17, scope: !1897)
!1900 = !DILocation(line: 299, column: 51, scope: !1897)
!1901 = !DILocation(line: 299, column: 9, scope: !1850)
!1902 = !DILocation(line: 305, column: 5, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 305, column: 5)
!1904 = !DILocation(line: 300, column: 9, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 299, column: 60)
!1906 = !DILocation(line: 338, column: 3, scope: !1850)
!1907 = !DILocation(line: 339, column: 9, scope: !1850)
!1908 = !DILocation(line: 317, column: 5, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 317, column: 5)
!1910 = !DILocation(line: 306, column: 9, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 305, column: 68)
!1912 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 305, column: 5)
!1913 = !DILocation(line: 306, column: 18, scope: !1911)
!1914 = !DILocation(line: 307, column: 17, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 307, column: 13)
!1916 = !DILocation(line: 307, column: 29, scope: !1915)
!1917 = !DILocation(line: 307, column: 13, scope: !1911)
!1918 = !DILocation(line: 308, column: 23, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 307, column: 34)
!1920 = !DILocation(line: 308, column: 19, scope: !1919)
!1921 = !DILocation(line: 308, column: 38, scope: !1919)
!1922 = !DILocation(line: 308, column: 16, scope: !1919)
!1923 = !DILocation(line: 309, column: 27, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 309, column: 13)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 309, column: 13)
!1926 = !DILocation(line: 309, column: 13, scope: !1925)
!1927 = !DILocation(line: 310, column: 25, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 309, column: 51)
!1929 = !DILocation(line: 310, column: 17, scope: !1928)
!1930 = !DILocation(line: 310, column: 30, scope: !1928)
!1931 = !DILocation(line: 311, column: 23, scope: !1928)
!1932 = !DILocation(line: 311, column: 42, scope: !1928)
!1933 = !DILocation(line: 311, column: 20, scope: !1928)
!1934 = !DILocation(line: 309, column: 47, scope: !1924)
!1935 = distinct !{!1935, !1926, !1936}
!1936 = !DILocation(line: 312, column: 13, scope: !1925)
!1937 = !DILocation(line: 313, column: 16, scope: !1919)
!1938 = !DILocation(line: 0, scope: !1919)
!1939 = !DILocation(line: 314, column: 9, scope: !1919)
!1940 = !DILocation(line: 0, scope: !1903)
!1941 = !DILocation(line: 305, column: 60, scope: !1912)
!1942 = distinct !{!1942, !1902, !1943}
!1943 = !DILocation(line: 315, column: 5, scope: !1903)
!1944 = !DILocation(line: 318, column: 29, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 318, column: 9)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 318, column: 9)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 317, column: 60)
!1948 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 317, column: 5)
!1949 = !DILocation(line: 318, column: 23, scope: !1945)
!1950 = !DILocation(line: 318, column: 9, scope: !1946)
!1951 = !DILocation(line: 0, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 318, column: 47)
!1953 = !DILocation(line: 0, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 326, column: 66)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 326, column: 13)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 326, column: 13)
!1957 = !DILocation(line: 319, column: 23, scope: !1952)
!1958 = !DILocation(line: 319, column: 19, scope: !1952)
!1959 = !DILocation(line: 320, column: 24, scope: !1952)
!1960 = !DILocation(line: 320, column: 17, scope: !1952)
!1961 = !DILocation(line: 321, column: 34, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 321, column: 13)
!1963 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 321, column: 13)
!1964 = !{!667, !530, i64 72}
!1965 = !DILocation(line: 321, column: 27, scope: !1962)
!1966 = !DILocation(line: 321, column: 13, scope: !1963)
!1967 = !DILocation(line: 0, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 321, column: 52)
!1969 = !DILocation(line: 323, column: 30, scope: !1968)
!1970 = !{!667, !471, i64 80}
!1971 = !DILocation(line: 323, column: 25, scope: !1968)
!1972 = !DILocation(line: 323, column: 47, scope: !1968)
!1973 = !DILocation(line: 324, column: 25, scope: !1968)
!1974 = !DILocation(line: 324, column: 47, scope: !1968)
!1975 = !DILocation(line: 322, column: 17, scope: !1968)
!1976 = !DILocation(line: 321, column: 48, scope: !1962)
!1977 = distinct !{!1977, !1966, !1978}
!1978 = !DILocation(line: 325, column: 13, scope: !1963)
!1979 = !DILocation(line: 326, column: 29, scope: !1956)
!1980 = !DILocation(line: 0, scope: !1956)
!1981 = !DILocation(line: 326, column: 13, scope: !1956)
!1982 = !DILocation(line: 327, column: 32, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 327, column: 21)
!1984 = !{!1985, !530, i64 12}
!1985 = !{!"extbond_t", !471, i64 0, !530, i64 8, !530, i64 12, !530, i64 16}
!1986 = !DILocation(line: 327, column: 41, scope: !1983)
!1987 = !DILocation(line: 327, column: 21, scope: !1954)
!1988 = !DILocation(line: 330, column: 35, scope: !1954)
!1989 = !DILocation(line: 330, column: 22, scope: !1954)
!1990 = !DILocation(line: 332, column: 30, scope: !1954)
!1991 = !{!1985, !530, i64 8}
!1992 = !DILocation(line: 332, column: 38, scope: !1954)
!1993 = !DILocation(line: 332, column: 49, scope: !1954)
!1994 = !{!1985, !530, i64 16}
!1995 = !DILocation(line: 332, column: 58, scope: !1954)
!1996 = !DILocation(line: 331, column: 17, scope: !1954)
!1997 = !DILocation(line: 333, column: 13, scope: !1954)
!1998 = !DILocation(line: 326, column: 57, scope: !1955)
!1999 = distinct !{!1999, !1981, !2000}
!2000 = !DILocation(line: 333, column: 13, scope: !1956)
!2001 = !DILocation(line: 318, column: 43, scope: !1945)
!2002 = distinct !{!2002, !1950, !2003}
!2003 = !DILocation(line: 334, column: 9, scope: !1946)
!2004 = !DILocation(line: 335, column: 12, scope: !1947)
!2005 = !DILocation(line: 317, column: 52, scope: !1948)
!2006 = !DILocation(line: 0, scope: !1909)
!2007 = distinct !{!2007, !1908, !2008}
!2008 = !DILocation(line: 336, column: 5, scope: !1909)
!2009 = !DILocation(line: 340, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 339, column: 9)
!2011 = !DILocation(line: 342, column: 5, scope: !1850)
!2012 = !DILocation(line: 344, column: 5, scope: !1850)
!2013 = !DILocation(line: 345, column: 1, scope: !1850)
!2014 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !2015, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!37, !13, !392, !13, !13}
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2018 = !DILocalVariable(name: "fname", arg: 1, scope: !2014, file: !3, line: 347, type: !13)
!2019 = !DILocalVariable(name: "mol", arg: 2, scope: !2014, file: !3, line: 347, type: !392)
!2020 = !DILocalVariable(name: "aexp1", arg: 3, scope: !2014, file: !3, line: 347, type: !13)
!2021 = !DILocalVariable(name: "aexp2", arg: 4, scope: !2014, file: !3, line: 347, type: !13)
!2022 = !DILocalVariable(name: "fp", scope: !2014, file: !3, line: 349, type: !371)
!2023 = !DILocalVariable(name: "sp1", scope: !2014, file: !3, line: 350, type: !128)
!2024 = !DILocalVariable(name: "res1", scope: !2014, file: !3, line: 351, type: !144)
!2025 = !DILocalVariable(name: "res2", scope: !2014, file: !3, line: 351, type: !144)
!2026 = !DILocalVariable(name: "ap1", scope: !2014, file: !3, line: 352, type: !190)
!2027 = !DILocalVariable(name: "ap2", scope: !2014, file: !3, line: 352, type: !190)
!2028 = !DILocalVariable(name: "tr", scope: !2014, file: !3, line: 353, type: !37)
!2029 = !DILocalVariable(name: "r1", scope: !2014, file: !3, line: 353, type: !37)
!2030 = !DILocalVariable(name: "r2", scope: !2014, file: !3, line: 353, type: !37)
!2031 = !DILocalVariable(name: "a1", scope: !2014, file: !3, line: 353, type: !37)
!2032 = !DILocalVariable(name: "a2", scope: !2014, file: !3, line: 353, type: !37)
!2033 = !DILocalVariable(name: "res", scope: !2014, file: !3, line: 354, type: !143)
!2034 = !DILocalVariable(name: "cnt", scope: !2014, file: !3, line: 355, type: !37)
!2035 = !DILabel(scope: !2014, name: "clean_up", file: !3, line: 420)
!2036 = !DILocation(line: 0, scope: !2014)
!2037 = !DILocation(line: 357, column: 10, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 357, column: 9)
!2039 = !DILocation(line: 357, column: 9, scope: !2014)
!2040 = !DILocation(line: 358, column: 17, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 357, column: 15)
!2042 = !DILocation(line: 358, column: 9, scope: !2041)
!2043 = !DILocation(line: 359, column: 9, scope: !2041)
!2044 = !DILocation(line: 362, column: 5, scope: !2014)
!2045 = !DILocation(line: 363, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 363, column: 5)
!2047 = !DILocation(line: 0, scope: !2046)
!2048 = !DILocation(line: 363, column: 5, scope: !2046)
!2049 = !DILocation(line: 364, column: 14, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 363, column: 56)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 363, column: 5)
!2052 = !DILocation(line: 364, column: 21, scope: !2050)
!2053 = !{!787, !530, i64 12}
!2054 = !DILocation(line: 365, column: 24, scope: !2050)
!2055 = !DILocation(line: 365, column: 21, scope: !2050)
!2056 = !DILocation(line: 366, column: 32, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 366, column: 9)
!2058 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 366, column: 9)
!2059 = !DILocation(line: 366, column: 25, scope: !2057)
!2060 = !DILocation(line: 366, column: 9, scope: !2058)
!2061 = !DILocation(line: 0, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 366, column: 51)
!2063 = !DILocation(line: 367, column: 20, scope: !2062)
!2064 = !DILocation(line: 368, column: 19, scope: !2062)
!2065 = !DILocation(line: 368, column: 26, scope: !2062)
!2066 = !{!667, !530, i64 40}
!2067 = !DILocation(line: 369, column: 29, scope: !2062)
!2068 = !DILocation(line: 369, column: 26, scope: !2062)
!2069 = !DILocation(line: 370, column: 58, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 370, column: 13)
!2071 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 370, column: 13)
!2072 = !DILocation(line: 370, column: 50, scope: !2070)
!2073 = !DILocation(line: 370, column: 13, scope: !2071)
!2074 = !DILocation(line: 370, column: 38, scope: !2071)
!2075 = !DILocation(line: 372, column: 22, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 371, column: 31)
!2077 = !DILocation(line: 372, column: 29, scope: !2076)
!2078 = !DILocation(line: 373, column: 32, scope: !2076)
!2079 = !DILocation(line: 373, column: 29, scope: !2076)
!2080 = !DILocation(line: 371, column: 27, scope: !2070)
!2081 = distinct !{!2081, !2073, !2082}
!2082 = !DILocation(line: 374, column: 13, scope: !2071)
!2083 = !DILocation(line: 366, column: 47, scope: !2057)
!2084 = distinct !{!2084, !2060, !2085}
!2085 = !DILocation(line: 375, column: 9, scope: !2058)
!2086 = !DILocation(line: 363, column: 48, scope: !2051)
!2087 = distinct !{!2087, !2048, !2088}
!2088 = !DILocation(line: 376, column: 5, scope: !2046)
!2089 = !DILocation(line: 377, column: 5, scope: !2014)
!2090 = !DILocation(line: 0, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 379, column: 5)
!2092 = !DILocation(line: 379, column: 5, scope: !2091)
!2093 = !DILocation(line: 380, column: 20, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 379, column: 5)
!2095 = !DILocation(line: 380, column: 12, scope: !2094)
!2096 = !DILocation(line: 379, column: 56, scope: !2094)
!2097 = distinct !{!2097, !2092, !2098}
!2098 = !DILocation(line: 380, column: 20, scope: !2091)
!2099 = !DILocation(line: 381, column: 38, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 381, column: 9)
!2101 = !DILocation(line: 381, column: 41, scope: !2100)
!2102 = !DILocation(line: 381, column: 31, scope: !2100)
!2103 = !DILocation(line: 381, column: 16, scope: !2100)
!2104 = !DILocation(line: 382, column: 9, scope: !2100)
!2105 = !DILocation(line: 381, column: 9, scope: !2014)
!2106 = !DILocation(line: 386, column: 5, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 386, column: 5)
!2108 = !DILocation(line: 383, column: 17, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 382, column: 18)
!2110 = !DILocation(line: 383, column: 9, scope: !2109)
!2111 = !DILocation(line: 420, column: 3, scope: !2014)
!2112 = !DILocation(line: 421, column: 9, scope: !2014)
!2113 = !DILocation(line: 387, column: 32, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 387, column: 9)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 387, column: 9)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 386, column: 64)
!2117 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 386, column: 5)
!2118 = !DILocation(line: 387, column: 25, scope: !2114)
!2119 = !DILocation(line: 387, column: 9, scope: !2115)
!2120 = !DILocation(line: 0, scope: !2114)
!2121 = !DILocation(line: 388, column: 23, scope: !2114)
!2122 = !DILocation(line: 388, column: 19, scope: !2114)
!2123 = !DILocation(line: 387, column: 47, scope: !2114)
!2124 = distinct !{!2124, !2119, !2125, !2126}
!2125 = !DILocation(line: 388, column: 43, scope: !2115)
!2126 = !{!"llvm.loop.isvectorized", i32 1}
!2127 = distinct !{!2127, !2128}
!2128 = !{!"llvm.loop.unroll.disable"}
!2129 = distinct !{!2129, !2119, !2125, !2130, !2126}
!2130 = !{!"llvm.loop.unroll.runtime.disable"}
!2131 = !DILocation(line: 386, column: 56, scope: !2117)
!2132 = !DILocation(line: 0, scope: !2107)
!2133 = distinct !{!2133, !2106, !2134}
!2134 = !DILocation(line: 389, column: 5, scope: !2107)
!2135 = !DILocation(line: 391, column: 15, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 391, column: 9)
!2137 = !DILocation(line: 391, column: 34, scope: !2136)
!2138 = !DILocation(line: 391, column: 9, scope: !2014)
!2139 = !DILocation(line: 396, column: 30, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 396, column: 5)
!2141 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 396, column: 5)
!2142 = !DILocation(line: 396, column: 5, scope: !2141)
!2143 = !DILocation(line: 392, column: 17, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 391, column: 43)
!2145 = !DILocation(line: 392, column: 9, scope: !2144)
!2146 = !DILocation(line: 393, column: 9, scope: !2144)
!2147 = !DILocation(line: 397, column: 16, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 396, column: 42)
!2149 = !DILocation(line: 398, column: 33, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 398, column: 9)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 398, column: 9)
!2152 = !DILocation(line: 398, column: 25, scope: !2150)
!2153 = !DILocation(line: 398, column: 9, scope: !2151)
!2154 = !DILocation(line: 396, column: 38, scope: !2140)
!2155 = !DILocation(line: 0, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 398, column: 49)
!2157 = !DILocation(line: 0, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 405, column: 54)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 405, column: 29)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 403, column: 61)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 403, column: 21)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 403, column: 21)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 401, column: 45)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 401, column: 17)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 401, column: 17)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 400, column: 44)
!2167 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 400, column: 17)
!2168 = !DILocation(line: 399, column: 26, scope: !2156)
!2169 = !DILocation(line: 400, column: 36, scope: !2167)
!2170 = !DILocation(line: 400, column: 29, scope: !2167)
!2171 = !DILocation(line: 400, column: 17, scope: !2156)
!2172 = !DILocation(line: 402, column: 28, scope: !2163)
!2173 = !DILocation(line: 403, column: 45, scope: !2161)
!2174 = !DILocation(line: 403, column: 37, scope: !2161)
!2175 = !DILocation(line: 403, column: 21, scope: !2162)
!2176 = !DILocation(line: 401, column: 41, scope: !2164)
!2177 = !DILocation(line: 0, scope: !2141)
!2178 = !DILocation(line: 401, column: 33, scope: !2164)
!2179 = !DILocation(line: 401, column: 17, scope: !2165)
!2180 = distinct !{!2180, !2179, !2181}
!2181 = !DILocation(line: 415, column: 17, scope: !2165)
!2182 = !DILocation(line: 404, column: 38, scope: !2160)
!2183 = !DILocation(line: 405, column: 46, scope: !2159)
!2184 = !DILocation(line: 405, column: 39, scope: !2159)
!2185 = !DILocation(line: 405, column: 29, scope: !2160)
!2186 = !DILocation(line: 408, column: 51, scope: !2158)
!2187 = !DILocation(line: 409, column: 42, scope: !2158)
!2188 = !DILocation(line: 410, column: 43, scope: !2158)
!2189 = !DILocation(line: 410, column: 59, scope: !2158)
!2190 = !DILocation(line: 411, column: 37, scope: !2158)
!2191 = !DILocation(line: 844, column: 24, scope: !2192, inlinedAt: !2201)
!2192 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !2193, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!10, !190, !190}
!2195 = !{!2196, !2197, !2198, !2199, !2200}
!2196 = !DILocalVariable(name: "ap1", arg: 1, scope: !2192, file: !3, line: 839, type: !190)
!2197 = !DILocalVariable(name: "ap2", arg: 2, scope: !2192, file: !3, line: 839, type: !190)
!2198 = !DILocalVariable(name: "dx", scope: !2192, file: !3, line: 841, type: !10)
!2199 = !DILocalVariable(name: "dy", scope: !2192, file: !3, line: 841, type: !10)
!2200 = !DILocalVariable(name: "dz", scope: !2192, file: !3, line: 841, type: !10)
!2201 = distinct !DILocation(line: 411, column: 37, scope: !2158)
!2202 = !DILocation(line: 0, scope: !2192, inlinedAt: !2201)
!2203 = !DILocation(line: 843, column: 24, scope: !2192, inlinedAt: !2201)
!2204 = !DILocation(line: 846, column: 31, scope: !2192, inlinedAt: !2201)
!2205 = !DILocation(line: 846, column: 21, scope: !2192, inlinedAt: !2201)
!2206 = !DILocation(line: 846, column: 26, scope: !2192, inlinedAt: !2201)
!2207 = !DILocation(line: 846, column: 36, scope: !2192, inlinedAt: !2201)
!2208 = !DILocation(line: 846, column: 13, scope: !2192, inlinedAt: !2201)
!2209 = !DILocation(line: 406, column: 29, scope: !2158)
!2210 = !DILocation(line: 412, column: 32, scope: !2158)
!2211 = !DILocation(line: 413, column: 25, scope: !2158)
!2212 = !DILocation(line: 403, column: 57, scope: !2161)
!2213 = distinct !{!2213, !2175, !2214}
!2214 = !DILocation(line: 414, column: 21, scope: !2162)
!2215 = !DILocation(line: 398, column: 45, scope: !2150)
!2216 = !DILocation(line: 396, column: 14, scope: !2141)
!2217 = distinct !{!2217, !2153, !2218}
!2218 = !DILocation(line: 417, column: 9, scope: !2151)
!2219 = !DILocation(line: 0, scope: !2160)
!2220 = distinct !{!2220, !2142, !2221}
!2221 = !DILocation(line: 418, column: 5, scope: !2141)
!2222 = !DILocation(line: 422, column: 9, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 421, column: 9)
!2224 = !DILocation(line: 425, column: 1, scope: !2014)
!2225 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !2226, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2230)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!37, !13, !2228}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !184)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237}
!2231 = !DILocalVariable(name: "fname", arg: 1, scope: !2225, file: !3, line: 427, type: !13)
!2232 = !DILocalVariable(name: "mat", arg: 2, scope: !2225, file: !3, line: 427, type: !2228)
!2233 = !DILocalVariable(name: "fp", scope: !2225, file: !3, line: 429, type: !371)
!2234 = !DILocalVariable(name: "i", scope: !2225, file: !3, line: 430, type: !37)
!2235 = !DILocalVariable(name: "j", scope: !2225, file: !3, line: 430, type: !37)
!2236 = !DILocalVariable(name: "err", scope: !2225, file: !3, line: 431, type: !37)
!2237 = !DILabel(scope: !2225, name: "CLEAN_UP", file: !3, line: 451)
!2238 = !DILocation(line: 0, scope: !2225)
!2239 = !DILocation(line: 433, column: 15, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 433, column: 9)
!2241 = !DILocation(line: 433, column: 23, scope: !2240)
!2242 = !DILocation(line: 433, column: 26, scope: !2240)
!2243 = !DILocation(line: 433, column: 33, scope: !2240)
!2244 = !DILocation(line: 433, column: 9, scope: !2225)
!2245 = !DILocation(line: 434, column: 17, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 433, column: 42)
!2247 = !DILocation(line: 434, column: 9, scope: !2246)
!2248 = !DILocation(line: 436, column: 9, scope: !2246)
!2249 = !DILocation(line: 437, column: 17, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 437, column: 16)
!2251 = !DILocation(line: 437, column: 16, scope: !2240)
!2252 = !DILocation(line: 438, column: 14, scope: !2250)
!2253 = !DILocation(line: 438, column: 9, scope: !2250)
!2254 = !DILocation(line: 439, column: 20, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 439, column: 14)
!2256 = !DILocation(line: 439, column: 39, scope: !2255)
!2257 = !DILocation(line: 439, column: 14, scope: !2250)
!2258 = !DILocation(line: 440, column: 17, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 439, column: 48)
!2260 = !DILocation(line: 440, column: 9, scope: !2259)
!2261 = !DILocation(line: 442, column: 9, scope: !2259)
!2262 = !DILocation(line: 0, scope: !2250)
!2263 = !DILocation(line: 447, column: 32, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 446, column: 9)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 446, column: 9)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 445, column: 29)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 445, column: 5)
!2268 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 445, column: 5)
!2269 = !DILocation(line: 447, column: 13, scope: !2264)
!2270 = !DILocation(line: 448, column: 9, scope: !2266)
!2271 = !DILocation(line: 451, column: 3, scope: !2225)
!2272 = !DILocation(line: 453, column: 12, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 453, column: 9)
!2274 = !DILocation(line: 453, column: 29, scope: !2273)
!2275 = !DILocation(line: 453, column: 26, scope: !2273)
!2276 = !DILocation(line: 453, column: 20, scope: !2273)
!2277 = !DILocation(line: 454, column: 9, scope: !2273)
!2278 = !DILocation(line: 455, column: 5, scope: !2225)
!2279 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !354, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !38)
!2280 = !DILocation(line: 753, column: 5, scope: !2279)
!2281 = !DILocation(line: 754, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 754, column: 9)
!2283 = !DILocation(line: 754, column: 23, scope: !2282)
!2284 = !DILocation(line: 754, column: 9, scope: !2279)
!2285 = !DILocation(line: 755, column: 34, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 754, column: 32)
!2287 = !DILocation(line: 755, column: 23, scope: !2286)
!2288 = !DILocation(line: 756, column: 27, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 756, column: 13)
!2290 = !DILocation(line: 756, column: 13, scope: !2286)
!2291 = !DILocation(line: 757, column: 21, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !3, line: 756, column: 36)
!2293 = !DILocation(line: 757, column: 13, scope: !2292)
!2294 = !DILocation(line: 758, column: 13, scope: !2292)
!2295 = !DILocation(line: 761, column: 13, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 761, column: 9)
!2297 = !DILocation(line: 761, column: 21, scope: !2296)
!2298 = !DILocation(line: 761, column: 9, scope: !2279)
!2299 = !DILocation(line: 762, column: 32, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 761, column: 30)
!2301 = !DILocation(line: 762, column: 21, scope: !2300)
!2302 = !DILocation(line: 763, column: 25, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 763, column: 13)
!2304 = !DILocation(line: 763, column: 13, scope: !2300)
!2305 = !DILocation(line: 764, column: 21, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 763, column: 34)
!2307 = !DILocation(line: 764, column: 13, scope: !2306)
!2308 = !DILocation(line: 765, column: 13, scope: !2306)
!2309 = !DILocation(line: 768, column: 20, scope: !2279)
!2310 = !DILocation(line: 768, column: 18, scope: !2279)
!2311 = !DILocation(line: 769, column: 17, scope: !2279)
!2312 = !DILocation(line: 770, column: 1, scope: !2279)
!2313 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2314, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !144}
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324}
!2317 = !DILocalVariable(name: "res", arg: 1, scope: !2313, file: !3, line: 794, type: !144)
!2318 = !DILocalVariable(name: "a1", scope: !2313, file: !3, line: 796, type: !37)
!2319 = !DILocalVariable(name: "a2", scope: !2313, file: !3, line: 796, type: !37)
!2320 = !DILocalVariable(name: "ap1", scope: !2313, file: !3, line: 797, type: !190)
!2321 = !DILocalVariable(name: "ap2", scope: !2313, file: !3, line: 797, type: !190)
!2322 = !DILocalVariable(name: "ih1", scope: !2313, file: !3, line: 798, type: !37)
!2323 = !DILocalVariable(name: "ih2", scope: !2313, file: !3, line: 798, type: !37)
!2324 = !DILocalVariable(name: "d", scope: !2313, file: !3, line: 799, type: !10)
!2325 = !DILocation(line: 0, scope: !2313)
!2326 = !DILocation(line: 801, column: 28, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 801, column: 5)
!2328 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 801, column: 5)
!2329 = !DILocation(line: 801, column: 21, scope: !2327)
!2330 = !DILocation(line: 801, column: 5, scope: !2328)
!2331 = !DILocation(line: 0, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 801, column: 44)
!2333 = !DILocation(line: 803, column: 14, scope: !2332)
!2334 = !DILocation(line: 803, column: 25, scope: !2332)
!2335 = !{!529, !530, i64 20}
!2336 = !DILocation(line: 801, column: 40, scope: !2327)
!2337 = distinct !{!2337, !2128}
!2338 = !DILocation(line: 806, column: 21, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 806, column: 5)
!2340 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 806, column: 5)
!2341 = !DILocation(line: 806, column: 5, scope: !2340)
!2342 = !DILocation(line: 0, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 808, column: 13)
!2344 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 806, column: 48)
!2345 = distinct !{!2345, !2330, !2346}
!2346 = !DILocation(line: 804, column: 5, scope: !2328)
!2347 = !DILocation(line: 806, column: 28, scope: !2339)
!2348 = !DILocation(line: 806, column: 37, scope: !2339)
!2349 = !DILocation(line: 807, column: 21, scope: !2344)
!2350 = !DILocation(line: 808, column: 13, scope: !2343)
!2351 = !{!2352, !2352, i64 0}
!2352 = !{!"short", !465, i64 0}
!2353 = !DILocation(line: 808, column: 13, scope: !2344)
!2354 = !DILocation(line: 809, column: 19, scope: !2343)
!2355 = !DILocation(line: 809, column: 13, scope: !2343)
!2356 = !DILocation(line: 812, column: 22, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 812, column: 9)
!2358 = !DILocation(line: 812, column: 30, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 812, column: 9)
!2360 = !DILocation(line: 812, column: 9, scope: !2357)
!2361 = distinct !{!2361, !2341, !2362}
!2362 = !DILocation(line: 836, column: 5, scope: !2340)
!2363 = !DILocation(line: 0, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 812, column: 53)
!2365 = !DILocation(line: 0, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 829, column: 21)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 828, column: 39)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 828, column: 24)
!2369 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 820, column: 17)
!2370 = !DILocation(line: 0, scope: !2369)
!2371 = !DILocation(line: 0, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 823, column: 59)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 822, column: 25)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 821, column: 37)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 821, column: 21)
!2376 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 820, column: 29)
!2377 = !DILocation(line: 813, column: 25, scope: !2364)
!2378 = !DILocation(line: 819, column: 17, scope: !2364)
!2379 = !DILocation(line: 844, column: 24, scope: !2192, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 819, column: 17, scope: !2364)
!2381 = !DILocation(line: 0, scope: !2192, inlinedAt: !2380)
!2382 = !DILocation(line: 843, column: 24, scope: !2192, inlinedAt: !2380)
!2383 = !DILocation(line: 846, column: 31, scope: !2192, inlinedAt: !2380)
!2384 = !DILocation(line: 846, column: 21, scope: !2192, inlinedAt: !2380)
!2385 = !DILocation(line: 846, column: 26, scope: !2192, inlinedAt: !2380)
!2386 = !DILocation(line: 846, column: 36, scope: !2192, inlinedAt: !2380)
!2387 = !DILocation(line: 846, column: 13, scope: !2192, inlinedAt: !2380)
!2388 = !DILocation(line: 821, column: 23, scope: !2375)
!2389 = !DILocation(line: 821, column: 21, scope: !2376)
!2390 = !DILocation(line: 822, column: 30, scope: !2373)
!2391 = !DILocation(line: 822, column: 41, scope: !2373)
!2392 = !DILocation(line: 822, column: 58, scope: !2373)
!2393 = !DILocation(line: 823, column: 30, scope: !2373)
!2394 = !DILocation(line: 823, column: 41, scope: !2373)
!2395 = !DILocation(line: 822, column: 25, scope: !2374)
!2396 = !DILocation(line: 824, column: 55, scope: !2372)
!2397 = !DILocation(line: 824, column: 25, scope: !2372)
!2398 = !DILocation(line: 824, column: 59, scope: !2372)
!2399 = !DILocation(line: 825, column: 55, scope: !2372)
!2400 = !DILocation(line: 825, column: 25, scope: !2372)
!2401 = !DILocation(line: 825, column: 59, scope: !2372)
!2402 = !DILocation(line: 826, column: 21, scope: !2372)
!2403 = !DILocation(line: 812, column: 49, scope: !2359)
!2404 = !DILocation(line: 812, column: 37, scope: !2359)
!2405 = distinct !{!2405, !2360, !2406}
!2406 = !DILocation(line: 835, column: 9, scope: !2357)
!2407 = !DILocation(line: 814, column: 17, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 814, column: 17)
!2409 = !DILocation(line: 814, column: 17, scope: !2364)
!2410 = !DILocation(line: 815, column: 23, scope: !2408)
!2411 = !DILocation(line: 815, column: 17, scope: !2408)
!2412 = !DILocation(line: 0, scope: !2408)
!2413 = !DILocation(line: 845, column: 24, scope: !2192, inlinedAt: !2380)
!2414 = !DILocation(line: 846, column: 41, scope: !2192, inlinedAt: !2380)
!2415 = !DILocation(line: 820, column: 21, scope: !2369)
!2416 = !DILocation(line: 828, column: 26, scope: !2368)
!2417 = !DILocation(line: 828, column: 24, scope: !2369)
!2418 = !DILocation(line: 829, column: 26, scope: !2366)
!2419 = !DILocation(line: 829, column: 37, scope: !2366)
!2420 = !DILocation(line: 829, column: 54, scope: !2366)
!2421 = !DILocation(line: 830, column: 26, scope: !2366)
!2422 = !DILocation(line: 830, column: 37, scope: !2366)
!2423 = !DILocation(line: 829, column: 21, scope: !2367)
!2424 = !DILocation(line: 831, column: 51, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 830, column: 55)
!2426 = !DILocation(line: 831, column: 21, scope: !2425)
!2427 = !DILocation(line: 831, column: 55, scope: !2425)
!2428 = !DILocation(line: 832, column: 51, scope: !2425)
!2429 = !DILocation(line: 832, column: 21, scope: !2425)
!2430 = !DILocation(line: 832, column: 55, scope: !2425)
!2431 = !DILocation(line: 833, column: 17, scope: !2425)
!2432 = !DILocation(line: 837, column: 1, scope: !2313)
