; ModuleID = 'molio.ll'
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
  %22 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #15, !dbg !473
  %23 = icmp eq i32 %22, 0, !dbg !473
  br i1 %23, label %24, label %26, !dbg !475

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !476, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !397, metadata !DIExpression()), !dbg !459
  br label %41, !dbg !478

26:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 0, metadata !399, metadata !DIExpression()), !dbg !459
  %27 = tail call i32 @get_mytaskid() #16, !dbg !479
  %28 = icmp eq i32 %27, 0, !dbg !482
  br i1 %28, label %29, label %35, !dbg !483

29:                                               ; preds = %26
  %30 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !484
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %30, metadata !397, metadata !DIExpression()), !dbg !459
  %31 = icmp eq %struct._IO_FILE* %30, null, !dbg !487
  br i1 %31, label %32, label %35, !dbg !488

32:                                               ; preds = %29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !489, !tbaa !470
  %34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %0) #17, !dbg !491
  call void @llvm.dbg.value(metadata i32 -1, metadata !399, metadata !DIExpression()), !dbg !459
  br label %35, !dbg !492

35:                                               ; preds = %32, %29, %26
  %36 = phi %struct._IO_FILE* [ null, %32 ], [ %30, %29 ], [ null, %26 ], !dbg !459
  %37 = phi i32 [ -1, %32 ], [ 0, %29 ], [ 0, %26 ], !dbg !493
  call void @llvm.dbg.value(metadata i32 %37, metadata !399, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, metadata !397, metadata !DIExpression()), !dbg !459
  tail call void @reducerror(i32 %37) #16, !dbg !494
  %38 = tail call i32 @get_mytaskid() #16, !dbg !495
  %39 = icmp eq i32 %38, 0, !dbg !497
  %40 = select i1 %39, %struct._IO_FILE* %36, %struct._IO_FILE* null, !dbg !498
  br label %41, !dbg !498

41:                                               ; preds = %35, %24, %19
  %42 = phi %struct._IO_FILE* [ %25, %24 ], [ %20, %19 ], [ %40, %35 ], !dbg !499
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !397, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %42, metadata !405, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %1, metadata !406, metadata !DIExpression()) #16, !dbg !500
  %43 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !501
  call void @llvm.lifetime.start.p0i8(i64 82, i8* nonnull %43) #16, !dbg !501
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !502
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %44) #16, !dbg !502
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !503
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %45) #16, !dbg !503
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %46) #16, !dbg !504
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %47) #16, !dbg !504
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %48) #16, !dbg !505
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !505
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %49) #16, !dbg !505
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %50) #16, !dbg !506
  %51 = bitcast i32* %11 to i8*, !dbg !507
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51) #16, !dbg !507
  %52 = bitcast double* %12 to i8*, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #16, !dbg !508
  %53 = bitcast double* %13 to i8*, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #16, !dbg !508
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !509
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %54) #16, !dbg !509
  %55 = icmp eq i8* %1, null, !dbg !510
  br i1 %55, label %56, label %57, !dbg !512

56:                                               ; preds = %41
  store i8 0, i8* %54, align 16, !dbg !513, !tbaa !464
  br label %59, !dbg !514

57:                                               ; preds = %41
  %58 = call i8* @strcpy(i8* nonnull %54, i8* nonnull %1) #16, !dbg !515
  br label %59

59:                                               ; preds = %57, %56
  call fastcc void @initres() #16, !dbg !516
  %60 = load i1, i1* @init_atab.init, align 4, !dbg !517
  br i1 %60, label %78, label %61, !dbg !520

61:                                               ; preds = %70, %59
  %62 = phi %struct.atom_t* [ %75, %70 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %59 ]
  %63 = phi i32 [ %74, %70 ], [ 0, %59 ]
  call void @llvm.dbg.value(metadata %struct.atom_t* %62, metadata !358, metadata !DIExpression()) #16, !dbg !521
  call void @llvm.dbg.value(metadata i32 %63, metadata !357, metadata !DIExpression()) #16, !dbg !521
  %64 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #16, !dbg !522
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 0, i32 0, !dbg !526
  store i8* %64, i8** %65, align 8, !dbg !527, !tbaa !528
  %66 = icmp eq i8* %64, null, !dbg !532
  br i1 %66, label %67, label %70, !dbg !534

67:                                               ; preds = %61
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !535, !tbaa !470
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %68) #18, !dbg !537
  call void @exit(i32 1) #19, !dbg !538
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
  call void @llvm.dbg.value(metadata i32 %74, metadata !357, metadata !DIExpression()) #16, !dbg !521
  %75 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %62, i64 1, !dbg !550
  call void @llvm.dbg.value(metadata %struct.atom_t* %75, metadata !358, metadata !DIExpression()) #16, !dbg !521
  %76 = icmp eq i32 %74, 1000, !dbg !551
  br i1 %76, label %77, label %61, !dbg !552, !llvm.loop !553

77:                                               ; preds = %70
  store i1 true, i1* @init_atab.init, align 4, !dbg !555
  br label %78, !dbg !556

78:                                               ; preds = %77, %59
  %79 = call %struct.molecule_t* @newmolecule() #16, !dbg !557
  call void @llvm.dbg.value(metadata %struct.molecule_t* %79, metadata !407, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 0, metadata !409, metadata !DIExpression()) #16, !dbg !500
  store i8 0, i8* %47, align 1, !dbg !558, !tbaa !464
  call void @llvm.dbg.value(metadata i32 0, metadata !425, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()) #16, !dbg !500
  store i32 0, i32* @n_atab, align 4, !dbg !559, !tbaa !560
  call void @llvm.dbg.value(metadata i32 0, metadata !409, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 0, metadata !411, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 0, metadata !425, metadata !DIExpression()) #16, !dbg !500
  %80 = call i8* @ggets(i8* nonnull %43, i32 82, %struct._IO_FILE* %42) #16, !dbg !561
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
  call void @llvm.dbg.value(metadata i32 %108, metadata !409, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %109, metadata !411, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %110, metadata !425, metadata !DIExpression()) #16, !dbg !500
  %111 = call i64 @strlen(i8* nonnull %43) #15, !dbg !584
  %112 = trunc i64 %111 to i32, !dbg !584
  call void @llvm.dbg.value(metadata i32 %112, metadata !433, metadata !DIExpression()) #16, !dbg !500
  %113 = icmp slt i32 %112, 80, !dbg !586
  br i1 %113, label %114, label %121, !dbg !588

114:                                              ; preds = %107
  %115 = shl i64 %111, 32, !dbg !588
  %116 = ashr exact i64 %115, 32, !dbg !588
  %117 = getelementptr [82 x i8], [82 x i8]* %3, i64 0, i64 %116, !dbg !588
  %118 = sub i64 79, %111, !dbg !588
  %119 = and i64 %118, 4294967295, !dbg !588
  %120 = add nuw nsw i64 %119, 1, !dbg !588
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(1) %117, i8 32, i64 %120, i1 false) #16, !dbg !589
  call void @llvm.dbg.value(metadata i32 undef, metadata !433, metadata !DIExpression()) #16, !dbg !500
  br label %121, !dbg !590

121:                                              ; preds = %114, %107
  store i8 0, i8* %83, align 16, !dbg !590, !tbaa !464
  %122 = load i32, i32* %84, align 16, !dbg !591
  %123 = icmp eq i32 %122, 1297044545, !dbg !591
  br i1 %123, label %127, label %124, !dbg !592

124:                                              ; preds = %121
  %125 = call i32 @bcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* nonnull dereferenceable(6) %43, i64 6) #16, !dbg !593
  %126 = icmp eq i32 %125, 0, !dbg !594
  br i1 %126, label %127, label %313, !dbg !595

127:                                              ; preds = %124, %121
  %128 = call i8* @strncpy(i8* nonnull %45, i8* nonnull %85, i64 4) #16, !dbg !596
  store i8 0, i8* %86, align 4, !dbg !597, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %45, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %45, metadata !422, metadata !DIExpression()) #16, !dbg !500
  br label %129, !dbg !598

129:                                              ; preds = %135, %127
  %130 = phi i8* [ %45, %127 ], [ %136, %135 ], !dbg !600
  %131 = phi i8* [ %45, %127 ], [ %137, %135 ], !dbg !600
  call void @llvm.dbg.value(metadata i8* %131, metadata !422, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  %132 = load i8, i8* %131, align 1, !dbg !601, !tbaa !464
  switch i8 %132, label %133 [
    i8 0, label %138
    i8 32, label %135
  ], !dbg !603

133:                                              ; preds = %129
  %134 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !604
  call void @llvm.dbg.value(metadata i8* %134, metadata !423, metadata !DIExpression()) #16, !dbg !500
  store i8 %132, i8* %130, align 1, !dbg !607, !tbaa !464
  br label %135, !dbg !608

135:                                              ; preds = %133, %129
  %136 = phi i8* [ %134, %133 ], [ %130, %129 ], !dbg !600
  call void @llvm.dbg.value(metadata i8* %136, metadata !423, metadata !DIExpression()) #16, !dbg !500
  %137 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !609
  call void @llvm.dbg.value(metadata i8* %137, metadata !422, metadata !DIExpression()) #16, !dbg !500
  br label %129, !dbg !610, !llvm.loop !611

138:                                              ; preds = %129
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %130, metadata !423, metadata !DIExpression()) #16, !dbg !500
  store i8 0, i8* %130, align 1, !dbg !613, !tbaa !464
  %139 = load i8, i8* %45, align 4, !dbg !614, !tbaa !464
  %140 = add i8 %139, -49, !dbg !616
  %141 = icmp ult i8 %140, 3, !dbg !616
  br i1 %141, label %142, label %161, !dbg !616

142:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 0, metadata !433, metadata !DIExpression()) #16, !dbg !500
  %143 = call i64 @strlen(i8* nonnull %45) #15, !dbg !617
  %144 = trunc i64 %143 to i32, !dbg !621
  %145 = icmp sgt i32 %144, 1, !dbg !622
  br i1 %145, label %146, label %157, !dbg !623

146:                                              ; preds = %146, %142
  %147 = phi i64 [ %148, %146 ], [ 0, %142 ]
  call void @llvm.dbg.value(metadata i64 %147, metadata !433, metadata !DIExpression()) #16, !dbg !500
  %148 = add nuw nsw i64 %147, 1, !dbg !624
  %149 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %148, !dbg !625
  %150 = load i8, i8* %149, align 1, !dbg !625, !tbaa !464
  %151 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %147, !dbg !626
  store i8 %150, i8* %151, align 1, !dbg !627, !tbaa !464
  call void @llvm.dbg.value(metadata i64 %148, metadata !433, metadata !DIExpression()) #16, !dbg !500
  %152 = call i64 @strlen(i8* nonnull %45) #15, !dbg !617
  %153 = shl i64 %152, 32, !dbg !622
  %154 = add i64 %153, -4294967296, !dbg !622
  %155 = ashr exact i64 %154, 32, !dbg !622
  %156 = icmp slt i64 %148, %155, !dbg !622
  br i1 %156, label %146, label %157, !dbg !623, !llvm.loop !628

157:                                              ; preds = %146, %142
  %158 = phi i64 [ 0, %142 ], [ %148, %146 ], !dbg !630
  %159 = and i64 %158, 4294967295, !dbg !631
  call void @llvm.dbg.value(metadata i64 %158, metadata !433, metadata !DIExpression()) #16, !dbg !500
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(3) %45, i8* nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 3, i1 false) #16, !dbg !641
  br label %169, !dbg !641

169:                                              ; preds = %168, %165
  %170 = call i8* @strncpy(i8* nonnull %46, i8* nonnull %89, i64 3) #16, !dbg !642
  store i8 0, i8* %90, align 1, !dbg !643, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %46, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %46, metadata !422, metadata !DIExpression()) #16, !dbg !500
  br label %171, !dbg !644

171:                                              ; preds = %177, %169
  %172 = phi i8* [ %46, %169 ], [ %178, %177 ], !dbg !646
  %173 = phi i8* [ %46, %169 ], [ %179, %177 ], !dbg !646
  call void @llvm.dbg.value(metadata i8* %173, metadata !422, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
  %174 = load i8, i8* %173, align 1, !dbg !647, !tbaa !464
  switch i8 %174, label %175 [
    i8 0, label %180
    i8 32, label %177
  ], !dbg !649

175:                                              ; preds = %171
  %176 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !650
  call void @llvm.dbg.value(metadata i8* %176, metadata !423, metadata !DIExpression()) #16, !dbg !500
  store i8 %174, i8* %172, align 1, !dbg !653, !tbaa !464
  br label %177, !dbg !654

177:                                              ; preds = %175, %171
  %178 = phi i8* [ %176, %175 ], [ %172, %171 ], !dbg !646
  call void @llvm.dbg.value(metadata i8* %178, metadata !423, metadata !DIExpression()) #16, !dbg !500
  %179 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !655
  call void @llvm.dbg.value(metadata i8* %179, metadata !422, metadata !DIExpression()) #16, !dbg !500
  br label %171, !dbg !656, !llvm.loop !657

180:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %172, metadata !423, metadata !DIExpression()) #16, !dbg !500
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
  %188 = call i32 @bcmp(i8* nonnull dereferenceable(5) %45, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 5) #16, !dbg !669
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
  %201 = call i8* @strncpy(i8* nonnull %48, i8* nonnull %93, i64 6) #16, !dbg !685
  store i8 0, i8* %94, align 1, !dbg !686, !tbaa !464
  %202 = load i8, i8* %93, align 1, !dbg !687, !tbaa !464
  %203 = sext i8 %202 to i32, !dbg !687
  call void @llvm.dbg.value(metadata i32 %203, metadata !410, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32* %11, metadata !424, metadata !DIExpression(DW_OP_deref)) #16, !dbg !500
  %204 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* nonnull %11) #16, !dbg !688
  %205 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %96, i64 8) #16, !dbg !689
  store i8 0, i8* %97, align 1, !dbg !690, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #16, !dbg !699
  %206 = call double @strtod(i8* nocapture nonnull %50, i8** null) #16, !dbg !701
  call void @llvm.dbg.value(metadata double %206, metadata !426, metadata !DIExpression()) #16, !dbg !500
  %207 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %98, i64 8) #16, !dbg !702
  store i8 0, i8* %97, align 1, !dbg !703, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #16, !dbg !704
  %208 = call double @strtod(i8* nocapture nonnull %50, i8** null) #16, !dbg !706
  call void @llvm.dbg.value(metadata double %208, metadata !427, metadata !DIExpression()) #16, !dbg !500
  %209 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %99, i64 8) #16, !dbg !707
  store i8 0, i8* %97, align 1, !dbg !708, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #16, !dbg !709
  %210 = call double @strtod(i8* nocapture nonnull %50, i8** null) #16, !dbg !711
  call void @llvm.dbg.value(metadata double %210, metadata !428, metadata !DIExpression()) #16, !dbg !500
  %211 = call i8* @strstr(i8* nonnull %54, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #15, !dbg !712
  %212 = icmp eq i8* %211, null, !dbg !712
  br i1 %212, label %215, label %213, !dbg !713

213:                                              ; preds = %200
  call void @llvm.dbg.value(metadata double* %12, metadata !429, metadata !DIExpression(DW_OP_deref)) #16, !dbg !500
  call void @llvm.dbg.value(metadata double* %13, metadata !430, metadata !DIExpression(DW_OP_deref)) #16, !dbg !500
  %214 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* nonnull %12, double* nonnull %13) #16, !dbg !714
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !431, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !432, metadata !DIExpression()) #16, !dbg !500
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
  call void @llvm.dbg.value(metadata double 1.200000e+00, metadata !430, metadata !DIExpression()) #16, !dbg !500
  store double 1.200000e+00, double* %13, align 8, !dbg !719, !tbaa !720
  br label %224, !dbg !721

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !430, metadata !DIExpression()) #16, !dbg !500
  store double 1.700000e+00, double* %13, align 8, !dbg !722, !tbaa !720
  br label %224, !dbg !724

219:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.550000e+00, metadata !430, metadata !DIExpression()) #16, !dbg !500
  store double 1.550000e+00, double* %13, align 8, !dbg !725, !tbaa !720
  br label %224, !dbg !727

220:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.500000e+00, metadata !430, metadata !DIExpression()) #16, !dbg !500
  store double 1.500000e+00, double* %13, align 8, !dbg !728, !tbaa !720
  br label %224, !dbg !730

221:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.800000e+00, metadata !430, metadata !DIExpression()) #16, !dbg !500
  store double 1.800000e+00, double* %13, align 8, !dbg !731, !tbaa !720
  br label %224, !dbg !733

222:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.850000e+00, metadata !430, metadata !DIExpression()) #16, !dbg !500
  store double 1.850000e+00, double* %13, align 8, !dbg !734, !tbaa !720
  br label %224, !dbg !736

223:                                              ; preds = %215
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !430, metadata !DIExpression()) #16, !dbg !500
  store double 1.700000e+00, double* %13, align 8, !dbg !737, !tbaa !720
  br label %224

224:                                              ; preds = %223, %222, %221, %220, %219, %218, %217
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !429, metadata !DIExpression()) #16, !dbg !500
  store double 0.000000e+00, double* %12, align 8, !dbg !738, !tbaa !720
  %225 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %100, i64 6) #16, !dbg !739
  store i8 0, i8* %101, align 1, !dbg !740, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #16, !dbg !741
  %226 = call double @strtod(i8* nocapture nonnull %50, i8** null) #16, !dbg !743
  call void @llvm.dbg.value(metadata double %226, metadata !431, metadata !DIExpression()) #16, !dbg !500
  %227 = call i8* @strncpy(i8* nonnull %50, i8* nonnull %102, i64 6) #16, !dbg !744
  store i8 0, i8* %101, align 1, !dbg !745, !tbaa !464
  call void @llvm.dbg.value(metadata i8* %50, metadata !691, metadata !DIExpression()) #16, !dbg !746
  %228 = call double @strtod(i8* nocapture nonnull %50, i8** null) #16, !dbg !748
  call void @llvm.dbg.value(metadata double %228, metadata !432, metadata !DIExpression()) #16, !dbg !500
  br label %229

229:                                              ; preds = %224, %213
  %230 = phi double [ 1.000000e+00, %213 ], [ %226, %224 ], !dbg !749
  %231 = phi double [ 0.000000e+00, %213 ], [ %228, %224 ], !dbg !749
  call void @llvm.dbg.value(metadata double %231, metadata !432, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata double %230, metadata !431, metadata !DIExpression()) #16, !dbg !500
  %232 = icmp eq i32 %108, %203, !dbg !750
  br i1 %232, label %272, label %233, !dbg !751

233:                                              ; preds = %229
  %234 = load i32, i32* @n_atab, align 4, !dbg !752, !tbaa !560
  %235 = icmp sgt i32 %234, 0, !dbg !754
  br i1 %235, label %236, label %243, !dbg !755

236:                                              ; preds = %233
  %237 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !756, !tbaa !758
  %238 = call i8* @strcpy(i8* nonnull dereferenceable(1) %237, i8* nonnull %47) #16, !dbg !759
  %239 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !760, !tbaa !761
  %240 = call i8* @strcpy(i8* nonnull dereferenceable(1) %239, i8* nonnull %49) #16, !dbg !762
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !763, !tbaa !764
  %241 = load i32, i32* @n_atab, align 4, !dbg !765, !tbaa !560
  store i32 %241, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !766, !tbaa !767
  call fastcc void @makebonds() #16, !dbg !768
  %242 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #16, !dbg !769
  call fastcc void @initres() #16, !dbg !770
  store i32 0, i32* @n_atab, align 4, !dbg !771, !tbaa !560
  br label %243, !dbg !772

243:                                              ; preds = %236, %233
  %244 = add nsw i32 %109, 1, !dbg !773
  call void @llvm.dbg.value(metadata i32 %244, metadata !411, metadata !DIExpression()) #16, !dbg !500
  %245 = icmp eq i8 %202, 32, !dbg !774
  br i1 %245, label %246, label %248, !dbg !775

246:                                              ; preds = %243
  %247 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %44, i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %244) #16, !dbg !776
  br label %249, !dbg !776

248:                                              ; preds = %243
  store i8 %202, i8* %44, align 1, !dbg !777, !tbaa !464
  store i8 0, i8* %103, align 1, !dbg !778, !tbaa !464
  br label %249

249:                                              ; preds = %248, %246
  %250 = call i32 @addstrand(%struct.molecule_t* %79, i8* nonnull %44) #16, !dbg !779
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !436, metadata !DIExpression()) #16, !dbg !780
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !445, metadata !DIExpression()) #16, !dbg !780
  %251 = load %struct.strand_t*, %struct.strand_t** %104, align 8, !dbg !582, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %251, metadata !445, metadata !DIExpression()) #16, !dbg !780
  %252 = icmp eq %struct.strand_t* %251, null, !dbg !781
  br i1 %252, label %263, label %253, !dbg !781

253:                                              ; preds = %259, %249
  %254 = phi %struct.strand_t* [ %261, %259 ], [ %251, %249 ]
  %255 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %254, i64 0, i32 0, !dbg !782
  %256 = load i8*, i8** %255, align 8, !dbg !782, !tbaa !786
  %257 = call i32 @strcmp(i8* nonnull dereferenceable(1) %256, i8* nonnull %44) #15, !dbg !788
  %258 = icmp eq i32 %257, 0, !dbg !788
  br i1 %258, label %263, label %259, !dbg !789

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %254, i64 0, i32 4, !dbg !790
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !445, metadata !DIExpression()) #16, !dbg !780
  %261 = load %struct.strand_t*, %struct.strand_t** %260, align 8, !dbg !582, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %261, metadata !445, metadata !DIExpression()) #16, !dbg !780
  %262 = icmp eq %struct.strand_t* %261, null, !dbg !781
  br i1 %262, label %263, label %253, !dbg !781, !llvm.loop !791

263:                                              ; preds = %259, %253, %249
  %264 = phi %struct.strand_t* [ null, %249 ], [ null, %259 ], [ %254, %253 ], !dbg !582
  call void @llvm.dbg.value(metadata %struct.strand_t* %264, metadata !436, metadata !DIExpression()) #16, !dbg !780
  %265 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %264, i64 0, i32 6, !dbg !793
  store i32 10000, i32* %265, align 4, !dbg !794, !tbaa !795
  %266 = call noalias dereferenceable_or_null(1280000) i8* @malloc(i64 1280000) #16, !dbg !796
  %267 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %264, i64 0, i32 7, !dbg !797
  %268 = bitcast %struct.residue_t*** %267 to i8**, !dbg !798
  store i8* %266, i8** %268, align 8, !dbg !798, !tbaa !799
  call void @llvm.dbg.value(metadata i32 %203, metadata !409, metadata !DIExpression()) #16, !dbg !500
  %269 = call i8* @strcpy(i8* nonnull %47, i8* nonnull %46) #16, !dbg !800
  %270 = call i8* @strcpy(i8* nonnull %49, i8* nonnull %48) #16, !dbg !801
  %271 = load i32, i32* %11, align 4, !dbg !802, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %271, metadata !424, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %271, metadata !425, metadata !DIExpression()) #16, !dbg !500
  br label %288, !dbg !803

272:                                              ; preds = %229
  %273 = load i32, i32* %11, align 4, !dbg !804, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %273, metadata !424, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i8* %47, metadata !806, metadata !DIExpression()) #16, !dbg !814
  call void @llvm.dbg.value(metadata i8* %46, metadata !811, metadata !DIExpression()) #16, !dbg !814
  call void @llvm.dbg.value(metadata i32 %110, metadata !812, metadata !DIExpression()) #16, !dbg !814
  call void @llvm.dbg.value(metadata i32 %273, metadata !813, metadata !DIExpression()) #16, !dbg !814
  %274 = call i32 @strcmp(i8* nonnull dereferenceable(1) %47, i8* nonnull dereferenceable(1) %46) #15, !dbg !816
  %275 = icmp eq i32 %274, 0, !dbg !816
  %276 = icmp eq i32 %110, %273, !dbg !817
  %277 = and i1 %276, %275, !dbg !818
  br i1 %277, label %288, label %278, !dbg !819

278:                                              ; preds = %272
  %279 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !820, !tbaa !758
  %280 = call i8* @strcpy(i8* nonnull dereferenceable(1) %279, i8* nonnull %47) #16, !dbg !822
  %281 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !823, !tbaa !761
  %282 = call i8* @strcpy(i8* nonnull dereferenceable(1) %281, i8* nonnull %49) #16, !dbg !824
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !825, !tbaa !764
  %283 = load i32, i32* @n_atab, align 4, !dbg !826, !tbaa !560
  store i32 %283, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !827, !tbaa !767
  call fastcc void @makebonds() #16, !dbg !828
  %284 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #16, !dbg !829
  call fastcc void @initres() #16, !dbg !830
  %285 = call i8* @strcpy(i8* nonnull %47, i8* nonnull %46) #16, !dbg !831
  %286 = call i8* @strcpy(i8* nonnull %49, i8* nonnull %48) #16, !dbg !832
  %287 = load i32, i32* %11, align 4, !dbg !833, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %287, metadata !424, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %287, metadata !425, metadata !DIExpression()) #16, !dbg !500
  store i32 0, i32* @n_atab, align 4, !dbg !834, !tbaa !560
  br label %288, !dbg !835

288:                                              ; preds = %278, %272, %263
  %289 = phi i32 [ %271, %263 ], [ %287, %278 ], [ %110, %272 ], !dbg !500
  %290 = phi i32 [ %244, %263 ], [ %109, %278 ], [ %109, %272 ], !dbg !836
  %291 = phi i32 [ %203, %263 ], [ %108, %278 ], [ %108, %272 ], !dbg !500
  call void @llvm.dbg.value(metadata i32 %291, metadata !409, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %290, metadata !411, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %289, metadata !425, metadata !DIExpression()) #16, !dbg !500
  %292 = load i32, i32* @n_atab, align 4, !dbg !837, !tbaa !560
  %293 = sext i32 %292 to i64, !dbg !838
  %294 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, !dbg !838
  call void @llvm.dbg.value(metadata %struct.atom_t* %294, metadata !408, metadata !DIExpression()) #16, !dbg !500
  call void @NAB_initatom(%struct.atom_t* nonnull %294, i32 0) #16, !dbg !839
  %295 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %294, i64 0, i32 0, !dbg !840
  %296 = load i8*, i8** %295, align 16, !dbg !840, !tbaa !528
  %297 = call i8* @strcpy(i8* nonnull dereferenceable(1) %296, i8* nonnull %45) #16, !dbg !841
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
  call void @llvm.dbg.value(metadata double undef, metadata !429, metadata !DIExpression()) #16, !dbg !500
  %304 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %293, i32 6, !dbg !855
  %305 = bitcast double* %304 to i64*, !dbg !856
  store i64 %303, i64* %305, align 16, !dbg !856, !tbaa !857
  %306 = load i64, i64* %106, align 8, !dbg !858, !tbaa !720
  call void @llvm.dbg.value(metadata double undef, metadata !430, metadata !DIExpression()) #16, !dbg !500
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
  %314 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* nonnull dereferenceable(3) %43, i64 3) #16, !dbg !870
  %315 = icmp eq i32 %314, 0, !dbg !872
  br i1 %315, label %316, label %327, !dbg !873

316:                                              ; preds = %313
  %317 = load i32, i32* @n_atab, align 4, !dbg !874, !tbaa !560
  %318 = icmp sgt i32 %317, 0, !dbg !877
  br i1 %318, label %319, label %326, !dbg !878

319:                                              ; preds = %316
  %320 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !879, !tbaa !758
  %321 = call i8* @strcpy(i8* nonnull dereferenceable(1) %320, i8* nonnull %47) #16, !dbg !881
  %322 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !882, !tbaa !761
  %323 = call i8* @strcpy(i8* nonnull dereferenceable(1) %322, i8* nonnull %49) #16, !dbg !883
  store i32 %110, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !884, !tbaa !764
  %324 = load i32, i32* @n_atab, align 4, !dbg !885, !tbaa !560
  store i32 %324, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !886, !tbaa !767
  call fastcc void @makebonds() #16, !dbg !887
  %325 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #16, !dbg !888
  call fastcc void @initres() #16, !dbg !889
  store i32 0, i32* @n_atab, align 4, !dbg !890, !tbaa !560
  br label %326, !dbg !891

326:                                              ; preds = %319, %316
  call void @llvm.dbg.value(metadata i32 0, metadata !409, metadata !DIExpression()) #16, !dbg !500
  store i8 0, i8* %47, align 1, !dbg !892, !tbaa !464
  store i8 0, i8* %49, align 1, !dbg !893, !tbaa !464
  call void @llvm.dbg.value(metadata i32 0, metadata !425, metadata !DIExpression()) #16, !dbg !500
  br label %330, !dbg !894

327:                                              ; preds = %313
  %328 = call i32 @bcmp(i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* nonnull dereferenceable(3) %43, i64 3) #16, !dbg !895
  %329 = icmp eq i32 %328, 0, !dbg !897
  br i1 %329, label %336, label %330, !dbg !898

330:                                              ; preds = %327, %326, %288
  %331 = phi i32 [ %289, %288 ], [ 0, %326 ], [ %110, %327 ], !dbg !500
  %332 = phi i32 [ %290, %288 ], [ %109, %326 ], [ %109, %327 ], !dbg !836
  %333 = phi i32 [ %291, %288 ], [ 0, %326 ], [ %108, %327 ], !dbg !500
  call void @llvm.dbg.value(metadata i32 %333, metadata !409, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %332, metadata !411, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %331, metadata !425, metadata !DIExpression()) #16, !dbg !500
  %334 = call i8* @ggets(i8* nonnull %43, i32 82, %struct._IO_FILE* %42) #16, !dbg !561
  %335 = icmp eq i8* %334, null, !dbg !563
  br i1 %335, label %336, label %107, !dbg !564, !llvm.loop !899

336:                                              ; preds = %330, %327, %78
  %337 = phi i32 [ 0, %78 ], [ %331, %330 ], [ %110, %327 ], !dbg !500
  call void @llvm.dbg.value(metadata i32 %337, metadata !425, metadata !DIExpression()) #16, !dbg !500
  call void @llvm.dbg.value(metadata i32 %337, metadata !425, metadata !DIExpression()) #16, !dbg !500
  %338 = load i32, i32* @n_atab, align 4, !dbg !902, !tbaa !560
  %339 = icmp sgt i32 %338, 0, !dbg !904
  br i1 %339, label %340, label %347, !dbg !905

340:                                              ; preds = %336
  %341 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !906, !tbaa !758
  %342 = call i8* @strcpy(i8* nonnull dereferenceable(1) %341, i8* nonnull %47) #16, !dbg !908
  %343 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !909, !tbaa !761
  %344 = call i8* @strcpy(i8* nonnull dereferenceable(1) %343, i8* nonnull %49) #16, !dbg !910
  store i32 %337, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !911, !tbaa !764
  %345 = load i32, i32* @n_atab, align 4, !dbg !912, !tbaa !560
  store i32 %345, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !913, !tbaa !767
  call fastcc void @makebonds() #16, !dbg !914
  %346 = call i32 @addresidue(%struct.molecule_t* %79, i8* nonnull %44, %struct.residue_t* nonnull @res) #16, !dbg !915
  call fastcc void @initres() #16, !dbg !916
  br label %347, !dbg !917

347:                                              ; preds = %340, %336
  %348 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %79, i64 0, i32 5, !dbg !918
  store i32 0, i32* %348, align 8, !dbg !919, !tbaa !920
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %54) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %51) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %50) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %49) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %48) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %47) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %46) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %45) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %44) #16, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 82, i8* nonnull %43) #16, !dbg !922
  call void @llvm.dbg.value(metadata %struct.molecule_t* %79, metadata !398, metadata !DIExpression()), !dbg !459
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !923, !tbaa !470
  %350 = icmp eq %struct._IO_FILE* %42, %349, !dbg !925
  br i1 %350, label %356, label %351, !dbg !926

351:                                              ; preds = %347
  %352 = call i32 @get_mytaskid() #16, !dbg !927
  %353 = icmp eq i32 %352, 0, !dbg !930
  br i1 %353, label %354, label %356, !dbg !931

354:                                              ; preds = %351
  %355 = call i32 @fclose(%struct._IO_FILE* %42), !dbg !932
  br label %356, !dbg !934

356:                                              ; preds = %354, %351, %347
  ret %struct.molecule_t* %79, !dbg !935
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local nonnull [4 x [4 x double]]* @getmatrix(i8* %0) local_unnamed_addr #0 !dbg !2 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !370, metadata !DIExpression()), !dbg !936
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #16, !dbg !937
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
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %9) #17, !dbg !948
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !936
  br label %60, !dbg !949

11:                                               ; preds = %5
  %12 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #15, !dbg !950
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
  %21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %0) #17, !dbg !961
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !936
  br label %60, !dbg !962

22:                                               ; preds = %16, %14
  %23 = phi %struct._IO_FILE* [ %17, %16 ], [ %15, %14 ], !dbg !963
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !370, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i32 0, metadata !378, metadata !DIExpression()), !dbg !936
  br label %24, !dbg !964

24:                                               ; preds = %44, %22
  %25 = phi i64 [ %45, %44 ], [ 0, %22 ]
  br label %26, !dbg !966

26:                                               ; preds = %29, %24
  call void @llvm.dbg.value(metadata i64 %25, metadata !378, metadata !DIExpression()), !dbg !936
  %27 = call i8* @fgets(i8* nonnull %3, i32 256, %struct._IO_FILE* %23), !dbg !967
  %28 = icmp eq i8* %27, null, !dbg !966
  br i1 %28, label %47, label %29, !dbg !966

29:                                               ; preds = %26
  %30 = load i8, i8* %3, align 16, !dbg !969, !tbaa !464
  %31 = icmp eq i8 %30, 35, !dbg !972
  br i1 %31, label %26, label %32, !dbg !973, !llvm.loop !974

32:                                               ; preds = %29
  %33 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %25, i64 0, !dbg !976
  %34 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %25, i64 1, !dbg !977
  %35 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %25, i64 2, !dbg !978
  %36 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %25, i64 3, !dbg !979
  %37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull %33, double* nonnull %34, double* nonnull %35, double* nonnull %36) #16, !dbg !980
  call void @llvm.dbg.value(metadata i32 %37, metadata !380, metadata !DIExpression()), !dbg !936
  %38 = icmp eq i32 %37, 4, !dbg !981
  br i1 %38, label %44, label %39, !dbg !983

39:                                               ; preds = %32
  %40 = trunc i64 %25 to i32, !dbg !984
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !984, !tbaa !470
  %42 = add nuw nsw i32 %40, 1, !dbg !986
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %37) #17, !dbg !987
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !988
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !936
  br label %53, !dbg !989

44:                                               ; preds = %32
  %45 = add nuw nsw i64 %25, 1, !dbg !990
  call void @llvm.dbg.value(metadata i64 %45, metadata !378, metadata !DIExpression()), !dbg !936
  %46 = icmp eq i64 %45, 4, !dbg !991
  br i1 %46, label %53, label %24, !dbg !993, !llvm.loop !974

47:                                               ; preds = %26
  %48 = trunc i64 %25 to i32, !dbg !994
  call void @llvm.dbg.value(metadata i32 %48, metadata !378, metadata !DIExpression()), !dbg !936
  %49 = icmp eq i32 %48, 4, !dbg !994
  br i1 %49, label %53, label %50, !dbg !996

50:                                               ; preds = %47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !997, !tbaa !470
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %48) #17, !dbg !999
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1000
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !936
  br label %53, !dbg !1001

53:                                               ; preds = %50, %47, %44, %39
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !370, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.label(metadata !383), !dbg !1002
  %54 = icmp eq %struct._IO_FILE* %23, null, !dbg !1003
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1005
  %56 = icmp eq %struct._IO_FILE* %23, %55, !dbg !1006
  %57 = or i1 %54, %56, !dbg !1007
  br i1 %57, label %60, label %58, !dbg !1007

58:                                               ; preds = %53
  %59 = call i32 @fclose(%struct._IO_FILE* nonnull %23), !dbg !1008
  br label %60, !dbg !1008

60:                                               ; preds = %58, %53, %19, %8
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), metadata !381, metadata !DIExpression()), !dbg !936
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #16, !dbg !1009
  ret [4 x [4 x double]]* @getmatrix.mat, !dbg !1010
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare !dbg !103 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* readonly %1, i8* readonly %2) local_unnamed_addr #0 !dbg !1011 {
  %4 = alloca [8 x i8], align 4
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !1020, metadata !DIExpression()), !dbg !1052
  %5 = alloca [8 x i8], align 1
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !1037, metadata !DIExpression()), !dbg !1058
  %6 = alloca [7 x i8], align 1
  call void @llvm.dbg.declare(metadata [7 x i8]* %6, metadata !1039, metadata !DIExpression()), !dbg !1059
  %7 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !1043, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8* %0, metadata !1015, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1016, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8* %2, metadata !1017, metadata !DIExpression()), !dbg !1061
  %8 = icmp eq %struct.molecule_t* %1, null, !dbg !1062
  %9 = tail call i32 @get_mytaskid() #16, !dbg !1061
  %10 = icmp eq i32 %9, 0, !dbg !1061
  br i1 %8, label %11, label %15, !dbg !1064

11:                                               ; preds = %3
  br i1 %10, label %12, label %611, !dbg !1065

12:                                               ; preds = %11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1067, !tbaa !470
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %13) #17, !dbg !1070
  br label %611, !dbg !1071

15:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1019, metadata !DIExpression()), !dbg !1061
  br i1 %10, label %16, label %609, !dbg !1072

16:                                               ; preds = %15
  %17 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #15, !dbg !1073
  %18 = icmp eq i32 %17, 0, !dbg !1073
  br i1 %18, label %19, label %21, !dbg !1075

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1076, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %20, metadata !1018, metadata !DIExpression()), !dbg !1061
  br label %26, !dbg !1077

21:                                               ; preds = %16
  %22 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1078
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !1018, metadata !DIExpression()), !dbg !1061
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !1080
  br i1 %23, label %24, label %26, !dbg !1081

24:                                               ; preds = %21
  %25 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #16, !dbg !1082
  call void @llvm.dbg.value(metadata i32 -1, metadata !1019, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i32 -1, metadata !1019, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1018, metadata !DIExpression()), !dbg !1061
  br label %609, !dbg !1084

26:                                               ; preds = %21, %19
  %27 = phi %struct._IO_FILE* [ %20, %19 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i32 -1, metadata !1019, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1018, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1025, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1026, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %2, metadata !1027, metadata !DIExpression()) #16, !dbg !1085
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1086
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28) #16, !dbg !1086
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1087
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #16, !dbg !1087
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1088
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %30) #16, !dbg !1088
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1089
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %31) #16, !dbg !1089
  call void @llvm.dbg.value(metadata i32 0, metadata !1044, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1045, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1046, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1047, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1048, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1049, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1050, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1051, metadata !DIExpression()) #16, !dbg !1085
  %32 = icmp eq %struct._IO_FILE* %27, null, !dbg !1090
  br i1 %32, label %33, label %36, !dbg !1092

33:                                               ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1093, !tbaa !470
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %34) #18, !dbg !1095
  br label %604, !dbg !1096

36:                                               ; preds = %26
  %37 = icmp eq i8* %2, null, !dbg !1097
  br i1 %37, label %38, label %39, !dbg !1099

38:                                               ; preds = %36
  store i8 0, i8* %31, align 16, !dbg !1100, !tbaa !464
  br label %42, !dbg !1101

39:                                               ; preds = %36
  %40 = call i8* @strncpy(i8* nonnull %31, i8* nonnull %2, i64 255) #16, !dbg !1102
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255, !dbg !1104
  store i8 0, i8* %41, align 1, !dbg !1105, !tbaa !464
  br label %42

42:                                               ; preds = %39, %38
  %43 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #15, !dbg !1106
  %44 = icmp ne i8* %43, null, !dbg !1107
  call void @llvm.dbg.value(metadata i1 %44, metadata !1044, metadata !DIExpression()) #16, !dbg !1085
  %45 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #15, !dbg !1108
  %46 = icmp ne i8* %45, null, !dbg !1109
  call void @llvm.dbg.value(metadata i1 %46, metadata !1045, metadata !DIExpression()) #16, !dbg !1085
  %47 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #15, !dbg !1110
  %48 = icmp ne i8* %47, null, !dbg !1111
  call void @llvm.dbg.value(metadata i1 %48, metadata !1046, metadata !DIExpression()) #16, !dbg !1085
  %49 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #15, !dbg !1112
  %50 = icmp ne i8* %49, null, !dbg !1113
  call void @llvm.dbg.value(metadata i1 %50, metadata !1047, metadata !DIExpression()) #16, !dbg !1085
  %51 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #15, !dbg !1114
  %52 = icmp ne i8* %51, null, !dbg !1115
  call void @llvm.dbg.value(metadata i1 %52, metadata !1048, metadata !DIExpression()) #16, !dbg !1085
  %53 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #15, !dbg !1116
  %54 = icmp eq i8* %53, null, !dbg !1117
  call void @llvm.dbg.value(metadata i1 %54, metadata !1049, metadata !DIExpression()) #16, !dbg !1085
  %55 = call i8* @strstr(i8* nonnull %31, i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #15, !dbg !1118
  %56 = icmp ne i8* %55, null, !dbg !1119
  call void @llvm.dbg.value(metadata i1 %56, metadata !1050, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i1 undef, metadata !1049, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i1 undef, metadata !1120, metadata !DIExpression()) #16, !dbg !1132
  call void @llvm.dbg.value(metadata i1 %56, metadata !1125, metadata !DIExpression()) #16, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1126, metadata !DIExpression()) #16, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1127, metadata !DIExpression()) #16, !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1130, metadata !DIExpression()) #16, !dbg !1132
  %57 = or i1 %54, %56, !dbg !1134
  br i1 %57, label %58, label %109, !dbg !1136

58:                                               ; preds = %42
  %59 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 16) #16, !dbg !1137
  %60 = bitcast i8* %59 to %struct.cid_t*, !dbg !1138
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1127, metadata !DIExpression()) #16, !dbg !1132
  %61 = icmp eq i8* %59, null, !dbg !1139
  br i1 %61, label %62, label %65, !dbg !1141

62:                                               ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1142, !tbaa !470
  %64 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %63) #18, !dbg !1144
  call void @llvm.dbg.value(metadata i32 undef, metadata !1130, metadata !DIExpression()) #16, !dbg !1132
  call void @llvm.dbg.label(metadata !1131) #16, !dbg !1145
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1146, metadata !DIExpression()) #16, !dbg !1151
  br label %109, !dbg !1155

65:                                               ; preds = %58
  %66 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #16, !dbg !1156
  %67 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !1157
  %68 = bitcast i8* %67 to i8**, !dbg !1157
  store i8* %66, i8** %68, align 8, !dbg !1158, !tbaa !1159
  %69 = icmp eq i8* %66, null, !dbg !1161
  br i1 %69, label %106, label %70, !dbg !1163

70:                                               ; preds = %65
  %71 = bitcast i8* %59 to i32*, !dbg !1164
  store i32 65, i32* %71, align 8, !dbg !1165, !tbaa !1166
  %72 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1167
  %73 = bitcast i8* %72 to i32*, !dbg !1167
  store i32 90, i32* %73, align 4, !dbg !1168, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 65, metadata !1128, metadata !DIExpression()) #16, !dbg !1132
  %74 = getelementptr i8, i8* %66, i64 65, !dbg !1170
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(26) %74, i8 0, i64 26, i1 false) #16, !dbg !1172
  call void @llvm.dbg.value(metadata i32 undef, metadata !1128, metadata !DIExpression()) #16, !dbg !1132
  br i1 %56, label %75, label %109, !dbg !1174

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1175
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1129, metadata !DIExpression()) #16, !dbg !1132
  %77 = load %struct.strand_t*, %struct.strand_t** %76, align 8, !dbg !1179, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %77, metadata !1129, metadata !DIExpression()) #16, !dbg !1132
  %78 = icmp eq %struct.strand_t* %77, null, !dbg !1180
  br i1 %78, label %96, label %79, !dbg !1180

79:                                               ; preds = %92, %75
  %80 = phi %struct.strand_t* [ %94, %92 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i64 0, i32 0, !dbg !1181
  %82 = load i8*, i8** %81, align 8, !dbg !1181, !tbaa !786
  %83 = call i64 @strlen(i8* nonnull dereferenceable(1) %82) #15, !dbg !1185
  %84 = icmp eq i64 %83, 1, !dbg !1186
  br i1 %84, label %85, label %92, !dbg !1187

85:                                               ; preds = %79
  %86 = load i8, i8* %82, align 1, !dbg !1188, !tbaa !464
  call void @llvm.dbg.value(metadata i8 %86, metadata !1128, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #16, !dbg !1132
  %87 = add i8 %86, -65, !dbg !1190
  %88 = icmp ult i8 %87, 26, !dbg !1190
  br i1 %88, label %89, label %92, !dbg !1190

89:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i8 %86, metadata !1128, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #16, !dbg !1132
  %90 = zext i8 %86 to i64, !dbg !1192
  %91 = getelementptr inbounds i8, i8* %66, i64 %90, !dbg !1192
  store i8 1, i8* %91, align 1, !dbg !1193, !tbaa !464
  br label %92, !dbg !1192

92:                                               ; preds = %89, %85, %79
  %93 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %80, i64 0, i32 4, !dbg !1194
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1129, metadata !DIExpression()) #16, !dbg !1132
  %94 = load %struct.strand_t*, %struct.strand_t** %93, align 8, !dbg !1179, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %94, metadata !1129, metadata !DIExpression()) #16, !dbg !1132
  %95 = icmp eq %struct.strand_t* %94, null, !dbg !1180
  br i1 %95, label %96, label %79, !dbg !1180, !llvm.loop !1195

96:                                               ; preds = %92, %75
  br label %97, !dbg !1197

97:                                               ; preds = %102, %96
  %98 = phi i64 [ %103, %102 ], [ 65, %96 ]
  %99 = getelementptr inbounds i8, i8* %66, i64 %98, !dbg !1199
  %100 = load i8, i8* %99, align 1, !dbg !1199, !tbaa !464
  %101 = icmp eq i8 %100, 0, !dbg !1199
  br i1 %101, label %109, label %102, !dbg !1203

102:                                              ; preds = %97
  %103 = add nuw nsw i64 %98, 1, !dbg !1204
  %104 = trunc i64 %103 to i32, !dbg !1204
  store i32 %104, i32* %71, align 8, !dbg !1204, !tbaa !1166
  %105 = icmp eq i64 %103, 91, !dbg !1205
  br i1 %105, label %109, label %97, !dbg !1197, !llvm.loop !1206

106:                                              ; preds = %65
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1208, !tbaa !470
  %108 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %107) #18, !dbg !1210
  call void @llvm.dbg.value(metadata i32 undef, metadata !1130, metadata !DIExpression()) #16, !dbg !1132
  call void @llvm.dbg.label(metadata !1131) #16, !dbg !1145
  call void @llvm.dbg.value(metadata %struct.cid_t* %60, metadata !1146, metadata !DIExpression()) #16, !dbg !1151
  call void @free(i8* nonnull %59) #16, !dbg !1211
  br label %109, !dbg !1214

109:                                              ; preds = %106, %102, %97, %70, %62, %42
  %110 = phi %struct.cid_t* [ null, %42 ], [ %60, %70 ], [ null, %106 ], [ null, %62 ], [ %60, %97 ], [ %60, %102 ], !dbg !1132
  call void @llvm.dbg.value(metadata %struct.cid_t* %110, metadata !1051, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1029, metadata !DIExpression()) #16, !dbg !1085
  %111 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1215
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1034, metadata !DIExpression()) #16, !dbg !1085
  %112 = load %struct.strand_t*, %struct.strand_t** %111, align 8, !dbg !1217, !tbaa !470
  call void @llvm.dbg.value(metadata i32 0, metadata !1029, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.strand_t* %112, metadata !1034, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  %113 = icmp eq %struct.strand_t* %112, null, !dbg !1218
  br i1 %113, label %595, label %114, !dbg !1218

114:                                              ; preds = %109
  %115 = icmp eq %struct.cid_t* %110, null, !dbg !1219
  %116 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %110, i64 0, i32 0, !dbg !1233
  %117 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %110, i64 0, i32 1, !dbg !1233
  %118 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %110, i64 0, i32 2, !dbg !1235
  %119 = bitcast [8 x i8]* %4 to i32*, !dbg !1238
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 1, !dbg !1252
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 4, !dbg !1252
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 2, !dbg !1268
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 3, !dbg !1270
  %124 = bitcast [8 x i8]* %4 to i16*, !dbg !1272
  %125 = or i1 %48, %50, !dbg !1280
  %126 = xor i1 %125, true, !dbg !1280
  %127 = or i1 %44, %126, !dbg !1280
  %128 = or i1 %46, %127, !dbg !1280
  br label %129, !dbg !1218

129:                                              ; preds = %588, %114
  %130 = phi %struct.strand_t* [ %112, %114 ], [ %593, %588 ]
  %131 = phi i32 [ 0, %114 ], [ %590, %588 ]
  %132 = phi i32 [ 0, %114 ], [ %589, %588 ]
  call void @llvm.dbg.value(metadata i32 %131, metadata !1029, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %132, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata %struct.cid_t* %110, metadata !1225, metadata !DIExpression()) #16, !dbg !1282
  call void @llvm.dbg.value(metadata i1 undef, metadata !1226, metadata !DIExpression()) #16, !dbg !1282
  call void @llvm.dbg.value(metadata i1 %56, metadata !1227, metadata !DIExpression()) #16, !dbg !1282
  call void @llvm.dbg.value(metadata %struct.strand_t* %130, metadata !1228, metadata !DIExpression()) #16, !dbg !1282
  br i1 %57, label %133, label %173, !dbg !1283

133:                                              ; preds = %129
  br i1 %115, label %134, label %137, !dbg !1284

134:                                              ; preds = %133
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1285, !tbaa !470
  %136 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %135) #18, !dbg !1287
  br label %173, !dbg !1288

137:                                              ; preds = %133
  %138 = load i32, i32* %116, align 8, !dbg !1289, !tbaa !1166
  %139 = load i32, i32* %117, align 4, !dbg !1290, !tbaa !1169
  %140 = icmp sgt i32 %138, %139, !dbg !1291
  br i1 %140, label %173, label %141, !dbg !1292

141:                                              ; preds = %137
  br i1 %56, label %142, label %171, !dbg !1293

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %130, i64 0, i32 0, !dbg !1294
  %144 = load i8*, i8** %143, align 8, !dbg !1294, !tbaa !786
  %145 = call i64 @strlen(i8* nonnull dereferenceable(1) %144) #15, !dbg !1296
  %146 = icmp eq i64 %145, 1, !dbg !1297
  br i1 %146, label %147, label %153, !dbg !1298

147:                                              ; preds = %142
  %148 = load i8, i8* %144, align 1, !dbg !1299, !tbaa !464
  call void @llvm.dbg.value(metadata i8 %148, metadata !1229, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #16, !dbg !1282
  %149 = add i8 %148, -65, !dbg !1301
  %150 = icmp ult i8 %149, 26, !dbg !1301
  br i1 %150, label %151, label %153, !dbg !1301

151:                                              ; preds = %147
  %152 = zext i8 %148 to i32, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %152, metadata !1229, metadata !DIExpression()) #16, !dbg !1282
  br label %173, !dbg !1303

153:                                              ; preds = %147, %142
  call void @llvm.dbg.value(metadata i32 %138, metadata !1229, metadata !DIExpression()) #16, !dbg !1282
  %154 = load i8*, i8** %118, align 8, !dbg !1304, !tbaa !1159
  %155 = sext i32 %138 to i64, !dbg !1305
  %156 = getelementptr inbounds i8, i8* %154, i64 %155, !dbg !1305
  store i8 1, i8* %156, align 1, !dbg !1306, !tbaa !464
  %157 = load i32, i32* %116, align 8, !dbg !1307, !tbaa !1166
  %158 = load i32, i32* %117, align 4, !dbg !1309, !tbaa !1169
  %159 = sext i32 %157 to i64, !dbg !1307
  %160 = sext i32 %158 to i64, !dbg !1307
  br label %161, !dbg !1307

161:                                              ; preds = %166, %153
  %162 = phi i64 [ %163, %166 ], [ %159, %153 ]
  %163 = add nsw i64 %162, 1, !dbg !1311
  %164 = trunc i64 %163 to i32, !dbg !1311
  store i32 %164, i32* %116, align 8, !dbg !1311, !tbaa !1166
  %165 = icmp slt i64 %162, %160, !dbg !1312
  br i1 %165, label %166, label %173, !dbg !1313

166:                                              ; preds = %161
  %167 = load i8*, i8** %118, align 8, !dbg !1314, !tbaa !1159
  %168 = getelementptr inbounds i8, i8* %167, i64 %163, !dbg !1317
  %169 = load i8, i8* %168, align 1, !dbg !1317, !tbaa !464
  %170 = icmp eq i8 %169, 0, !dbg !1317
  br i1 %170, label %173, label %161, !dbg !1318, !llvm.loop !1319

171:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i32 %138, metadata !1229, metadata !DIExpression()) #16, !dbg !1282
  %172 = add nsw i32 %138, 1, !dbg !1321
  store i32 %172, i32* %116, align 8, !dbg !1321, !tbaa !1166
  br label %173, !dbg !1323

173:                                              ; preds = %171, %166, %161, %151, %137, %134, %129
  %174 = phi i32 [ 32, %134 ], [ %152, %151 ], [ %138, %171 ], [ 32, %129 ], [ 32, %137 ], [ %138, %161 ], [ %138, %166 ], !dbg !1282
  call void @llvm.dbg.value(metadata i32 %174, metadata !1033, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 0, metadata !1028, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %131, metadata !1029, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %132, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  %175 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %130, i64 0, i32 5, !dbg !1324
  %176 = load i32, i32* %175, align 8, !dbg !1324, !tbaa !1325
  %177 = icmp sgt i32 %176, 0, !dbg !1326
  br i1 %177, label %178, label %588, !dbg !1327

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %130, i64 0, i32 7, !dbg !1328
  %180 = shl i32 %174, 24, !dbg !1329
  %181 = ashr exact i32 %180, 24, !dbg !1329
  br label %182, !dbg !1327

182:                                              ; preds = %581, %178
  %183 = phi i64 [ 0, %178 ], [ %583, %581 ]
  %184 = phi i32 [ %131, %178 ], [ %584, %581 ]
  %185 = phi i32 [ %132, %178 ], [ %582, %581 ]
  call void @llvm.dbg.value(metadata i64 %183, metadata !1028, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %184, metadata !1029, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %185, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  %186 = load %struct.residue_t**, %struct.residue_t*** %179, align 8, !dbg !1334, !tbaa !799
  %187 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %186, i64 %183, !dbg !1335
  %188 = load %struct.residue_t*, %struct.residue_t** %187, align 8, !dbg !1335, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %188, metadata !1035, metadata !DIExpression()) #16, !dbg !1085
  %189 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %188, i64 0, i32 5, !dbg !1336
  %190 = load i8*, i8** %189, align 8, !dbg !1336, !tbaa !761
  %191 = icmp eq i8* %190, null, !dbg !1337
  %192 = select i1 %191, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), i8* %190, !dbg !1337
  %193 = call i8* @strcpy(i8* nonnull %30, i8* nonnull dereferenceable(1) %192) #16, !dbg !1338
  %194 = getelementptr %struct.residue_t, %struct.residue_t* %188, i64 0, i32 4, !dbg !1339
  %195 = load i8*, i8** %194, align 8, !dbg !1339, !tbaa !758
  br i1 %48, label %196, label %266, !dbg !1340

196:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i8* %28, metadata !1341, metadata !DIExpression()) #16, !dbg !1345
  %197 = call i8* @strcpy(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(1) %195) #16, !dbg !1347
  %198 = load i32, i32* %119, align 4, !dbg !1348
  switch i32 %198, label %204 [
    i32 4281671, label %199
    i32 4539457, label %200
    i32 5851220, label %201
    i32 5527875, label %202
    i32 4280917, label %203
  ], !dbg !1350

199:                                              ; preds = %196
  store i32 4661280, i32* %119, align 4, !dbg !1351
  br label %204, !dbg !1352

200:                                              ; preds = %196
  store i32 4268064, i32* %119, align 4, !dbg !1353
  br label %204, !dbg !1353

201:                                              ; preds = %196
  store i32 5513248, i32* %119, align 4, !dbg !1355
  br label %204, !dbg !1355

202:                                              ; preds = %196
  store i32 4399136, i32* %119, align 4, !dbg !1357
  br label %204, !dbg !1357

203:                                              ; preds = %196
  store i32 5578784, i32* %119, align 4, !dbg !1359
  br label %204, !dbg !1359

204:                                              ; preds = %203, %202, %201, %200, %199, %196
  %205 = phi i32 [ 5578784, %203 ], [ 4399136, %202 ], [ 5513248, %201 ], [ 4661280, %199 ], [ 4268064, %200 ], [ %198, %196 ]
  %206 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #16, !dbg !1361
  %207 = icmp eq i32 %206, 0, !dbg !1361
  br i1 %207, label %208, label %209, !dbg !1363

208:                                              ; preds = %204
  store i32 4661280, i32* %119, align 4, !dbg !1364
  br label %209, !dbg !1364

209:                                              ; preds = %208, %204
  %210 = phi i32 [ 4661280, %208 ], [ %205, %204 ]
  %211 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #16, !dbg !1365
  %212 = icmp eq i32 %211, 0, !dbg !1365
  br i1 %212, label %213, label %214, !dbg !1367

213:                                              ; preds = %209
  store i32 4268064, i32* %119, align 4, !dbg !1368
  br label %214, !dbg !1368

214:                                              ; preds = %213, %209
  %215 = phi i32 [ 4268064, %213 ], [ %210, %209 ]
  %216 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #16, !dbg !1369
  %217 = icmp eq i32 %216, 0, !dbg !1369
  br i1 %217, label %218, label %219, !dbg !1371

218:                                              ; preds = %214
  store i32 5513248, i32* %119, align 4, !dbg !1372
  br label %219, !dbg !1372

219:                                              ; preds = %218, %214
  %220 = phi i32 [ 5513248, %218 ], [ %215, %214 ]
  %221 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #16, !dbg !1373
  %222 = icmp eq i32 %221, 0, !dbg !1373
  br i1 %222, label %223, label %224, !dbg !1375

223:                                              ; preds = %219
  store i32 4399136, i32* %119, align 4, !dbg !1376
  br label %224, !dbg !1376

224:                                              ; preds = %223, %219
  %225 = phi i32 [ 4399136, %223 ], [ %220, %219 ]
  %226 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #16, !dbg !1377
  %227 = icmp eq i32 %226, 0, !dbg !1377
  br i1 %227, label %228, label %229, !dbg !1379

228:                                              ; preds = %224
  store i32 4661280, i32* %119, align 4, !dbg !1380
  br label %229, !dbg !1380

229:                                              ; preds = %228, %224
  %230 = phi i32 [ 4661280, %228 ], [ %225, %224 ]
  %231 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #16, !dbg !1381
  %232 = icmp eq i32 %231, 0, !dbg !1381
  br i1 %232, label %233, label %234, !dbg !1383

233:                                              ; preds = %229
  store i32 4268064, i32* %119, align 4, !dbg !1384
  br label %234, !dbg !1384

234:                                              ; preds = %233, %229
  %235 = phi i32 [ 4268064, %233 ], [ %230, %229 ]
  %236 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #16, !dbg !1385
  %237 = icmp eq i32 %236, 0, !dbg !1385
  br i1 %237, label %238, label %239, !dbg !1387

238:                                              ; preds = %234
  store i32 5578784, i32* %119, align 4, !dbg !1388
  br label %239, !dbg !1388

239:                                              ; preds = %238, %234
  %240 = phi i32 [ 5578784, %238 ], [ %235, %234 ]
  %241 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #16, !dbg !1389
  %242 = icmp eq i32 %241, 0, !dbg !1389
  br i1 %242, label %243, label %244, !dbg !1391

243:                                              ; preds = %239
  store i32 4399136, i32* %119, align 4, !dbg !1392
  br label %339, !dbg !1393

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
  ], !dbg !1393

245:                                              ; preds = %244
  store i32 4661280, i32* %119, align 4, !dbg !1394
  br label %339, !dbg !1394

246:                                              ; preds = %244
  store i32 4268064, i32* %119, align 4, !dbg !1396
  br label %339, !dbg !1396

247:                                              ; preds = %244
  store i32 5513248, i32* %119, align 4, !dbg !1398
  br label %339, !dbg !1398

248:                                              ; preds = %244
  store i32 4399136, i32* %119, align 4, !dbg !1400
  br label %339, !dbg !1400

249:                                              ; preds = %244
  store i32 4661280, i32* %119, align 4, !dbg !1402
  br label %339, !dbg !1402

250:                                              ; preds = %244
  store i32 4268064, i32* %119, align 4, !dbg !1404
  br label %339, !dbg !1404

251:                                              ; preds = %244
  store i32 5578784, i32* %119, align 4, !dbg !1406
  br label %339, !dbg !1406

252:                                              ; preds = %244
  store i32 4399136, i32* %119, align 4, !dbg !1408
  br label %339, !dbg !1408

253:                                              ; preds = %244
  store i32 4661280, i32* %119, align 4, !dbg !1410
  br label %339, !dbg !1410

254:                                              ; preds = %244
  store i32 4268064, i32* %119, align 4, !dbg !1412
  br label %339, !dbg !1412

255:                                              ; preds = %244
  store i32 5513248, i32* %119, align 4, !dbg !1414
  br label %339, !dbg !1414

256:                                              ; preds = %244
  store i32 4399136, i32* %119, align 4, !dbg !1416
  br label %339, !dbg !1416

257:                                              ; preds = %244
  store i32 4661280, i32* %119, align 4, !dbg !1418
  br label %339, !dbg !1418

258:                                              ; preds = %244
  store i32 4268064, i32* %119, align 4, !dbg !1420
  br label %339, !dbg !1420

259:                                              ; preds = %244
  store i32 5578784, i32* %119, align 4, !dbg !1422
  br label %339, !dbg !1422

260:                                              ; preds = %244
  store i32 4399136, i32* %119, align 4, !dbg !1424
  br label %339, !dbg !1426

261:                                              ; preds = %244
  store i32 5458248, i32* %119, align 4, !dbg !1427
  br label %339, !dbg !1427

262:                                              ; preds = %244
  store i32 5458248, i32* %119, align 4, !dbg !1429
  br label %339, !dbg !1429

263:                                              ; preds = %244
  store i32 5462339, i32* %119, align 4, !dbg !1431
  br label %339, !dbg !1431

264:                                              ; preds = %244
  store i32 5264193, i32* %119, align 4, !dbg !1433
  br label %339, !dbg !1433

265:                                              ; preds = %244
  store i32 5590087, i32* %119, align 4, !dbg !1435
  br label %339, !dbg !1435

266:                                              ; preds = %182
  br i1 %50, label %267, label %337, !dbg !1437

267:                                              ; preds = %266
  call void @llvm.dbg.value(metadata i8* %28, metadata !1244, metadata !DIExpression()) #16, !dbg !1438
  %268 = call i8* @strcpy(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(1) %195) #16, !dbg !1439
  %269 = load i32, i32* %119, align 4, !dbg !1440
  switch i32 %269, label %275 [
    i32 4281671, label %270
    i32 4539457, label %271
    i32 5851220, label %272
    i32 5527875, label %273
    i32 4280917, label %274
  ], !dbg !1441

270:                                              ; preds = %267
  store i32 4661280, i32* %119, align 4, !dbg !1442
  br label %275, !dbg !1443

271:                                              ; preds = %267
  store i32 4268064, i32* %119, align 4, !dbg !1444
  br label %275, !dbg !1444

272:                                              ; preds = %267
  store i32 5513248, i32* %119, align 4, !dbg !1446
  br label %275, !dbg !1446

273:                                              ; preds = %267
  store i32 4399136, i32* %119, align 4, !dbg !1448
  br label %275, !dbg !1448

274:                                              ; preds = %267
  store i32 5578784, i32* %119, align 4, !dbg !1450
  br label %275, !dbg !1450

275:                                              ; preds = %274, %273, %272, %271, %270, %267
  %276 = phi i32 [ 5578784, %274 ], [ 4399136, %273 ], [ 5513248, %272 ], [ 4661280, %270 ], [ 4268064, %271 ], [ %269, %267 ]
  %277 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i64 3) #16, !dbg !1452
  %278 = icmp eq i32 %277, 0, !dbg !1452
  br i1 %278, label %279, label %280, !dbg !1454

279:                                              ; preds = %275
  store i32 4670496, i32* %119, align 4, !dbg !1455
  br label %280, !dbg !1455

280:                                              ; preds = %279, %275
  %281 = phi i32 [ 4670496, %279 ], [ %276, %275 ]
  %282 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i64 3) #16, !dbg !1456
  %283 = icmp eq i32 %282, 0, !dbg !1456
  br i1 %283, label %284, label %285, !dbg !1458

284:                                              ; preds = %280
  store i32 4277280, i32* %119, align 4, !dbg !1459
  br label %285, !dbg !1459

285:                                              ; preds = %284, %280
  %286 = phi i32 [ 4277280, %284 ], [ %281, %280 ]
  %287 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i64 3) #16, !dbg !1460
  %288 = icmp eq i32 %287, 0, !dbg !1460
  br i1 %288, label %289, label %290, !dbg !1462

289:                                              ; preds = %285
  store i32 5522464, i32* %119, align 4, !dbg !1463
  br label %290, !dbg !1463

290:                                              ; preds = %289, %285
  %291 = phi i32 [ 5522464, %289 ], [ %286, %285 ]
  %292 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0), i64 3) #16, !dbg !1464
  %293 = icmp eq i32 %292, 0, !dbg !1464
  br i1 %293, label %294, label %295, !dbg !1466

294:                                              ; preds = %290
  store i32 4408352, i32* %119, align 4, !dbg !1467
  br label %295, !dbg !1467

295:                                              ; preds = %294, %290
  %296 = phi i32 [ 4408352, %294 ], [ %291, %290 ]
  %297 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i64 3) #16, !dbg !1468
  %298 = icmp eq i32 %297, 0, !dbg !1468
  br i1 %298, label %299, label %300, !dbg !1470

299:                                              ; preds = %295
  store i32 4674080, i32* %119, align 4, !dbg !1471
  br label %300, !dbg !1471

300:                                              ; preds = %299, %295
  %301 = phi i32 [ 4674080, %299 ], [ %296, %295 ]
  %302 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i64 3) #16, !dbg !1472
  %303 = icmp eq i32 %302, 0, !dbg !1472
  br i1 %303, label %304, label %305, !dbg !1474

304:                                              ; preds = %300
  store i32 4280864, i32* %119, align 4, !dbg !1475
  br label %305, !dbg !1475

305:                                              ; preds = %304, %300
  %306 = phi i32 [ 4280864, %304 ], [ %301, %300 ]
  %307 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 3) #16, !dbg !1476
  %308 = icmp eq i32 %307, 0, !dbg !1476
  br i1 %308, label %309, label %310, !dbg !1478

309:                                              ; preds = %305
  store i32 5591584, i32* %119, align 4, !dbg !1479
  br label %310, !dbg !1479

310:                                              ; preds = %309, %305
  %311 = phi i32 [ 5591584, %309 ], [ %306, %305 ]
  %312 = call i32 @bcmp(i8* nonnull dereferenceable(3) %28, i8* nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i64 3) #16, !dbg !1480
  %313 = icmp eq i32 %312, 0, !dbg !1480
  br i1 %313, label %314, label %315, !dbg !1482

314:                                              ; preds = %310
  store i32 4411936, i32* %119, align 4, !dbg !1483
  br label %339, !dbg !1484

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
  ], !dbg !1484

316:                                              ; preds = %315
  store i32 4670496, i32* %119, align 4, !dbg !1485
  br label %339, !dbg !1485

317:                                              ; preds = %315
  store i32 4277280, i32* %119, align 4, !dbg !1487
  br label %339, !dbg !1487

318:                                              ; preds = %315
  store i32 5522464, i32* %119, align 4, !dbg !1489
  br label %339, !dbg !1489

319:                                              ; preds = %315
  store i32 4408352, i32* %119, align 4, !dbg !1491
  br label %339, !dbg !1491

320:                                              ; preds = %315
  store i32 4674080, i32* %119, align 4, !dbg !1493
  br label %339, !dbg !1493

321:                                              ; preds = %315
  store i32 4280864, i32* %119, align 4, !dbg !1495
  br label %339, !dbg !1495

322:                                              ; preds = %315
  store i32 5591584, i32* %119, align 4, !dbg !1497
  br label %339, !dbg !1497

323:                                              ; preds = %315
  store i32 4411936, i32* %119, align 4, !dbg !1499
  br label %339, !dbg !1499

324:                                              ; preds = %315
  store i32 4670496, i32* %119, align 4, !dbg !1501
  br label %339, !dbg !1501

325:                                              ; preds = %315
  store i32 4277280, i32* %119, align 4, !dbg !1503
  br label %339, !dbg !1503

326:                                              ; preds = %315
  store i32 5522464, i32* %119, align 4, !dbg !1505
  br label %339, !dbg !1505

327:                                              ; preds = %315
  store i32 4408352, i32* %119, align 4, !dbg !1507
  br label %339, !dbg !1507

328:                                              ; preds = %315
  store i32 4674080, i32* %119, align 4, !dbg !1509
  br label %339, !dbg !1509

329:                                              ; preds = %315
  store i32 4280864, i32* %119, align 4, !dbg !1511
  br label %339, !dbg !1511

330:                                              ; preds = %315
  store i32 5591584, i32* %119, align 4, !dbg !1513
  br label %339, !dbg !1513

331:                                              ; preds = %315
  store i32 4411936, i32* %119, align 4, !dbg !1515
  br label %339, !dbg !1517

332:                                              ; preds = %315
  store i32 5458248, i32* %119, align 4, !dbg !1518
  br label %339, !dbg !1518

333:                                              ; preds = %315
  store i32 5458248, i32* %119, align 4, !dbg !1520
  br label %339, !dbg !1520

334:                                              ; preds = %315
  store i32 5462339, i32* %119, align 4, !dbg !1522
  br label %339, !dbg !1522

335:                                              ; preds = %315
  store i32 5264193, i32* %119, align 4, !dbg !1524
  br label %339, !dbg !1524

336:                                              ; preds = %315
  store i32 5590087, i32* %119, align 4, !dbg !1526
  br label %339, !dbg !1526

337:                                              ; preds = %266
  %338 = call i8* @strcpy(i8* nonnull %28, i8* nonnull dereferenceable(1) %195) #16, !dbg !1528
  br label %339

339:                                              ; preds = %337, %336, %335, %334, %333, %332, %331, %330, %329, %328, %327, %326, %325, %324, %323, %322, %321, %320, %319, %318, %317, %316, %315, %314, %265, %264, %263, %262, %261, %260, %259, %258, %257, %256, %255, %254, %253, %252, %251, %250, %249, %248, %247, %246, %245, %244, %243
  call void @llvm.dbg.value(metadata i32 0, metadata !1031, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %185, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  %340 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %188, i64 0, i32 15, !dbg !1529
  %341 = load i32, i32* %340, align 8, !dbg !1529, !tbaa !767
  %342 = icmp sgt i32 %341, 0, !dbg !1530
  br i1 %342, label %343, label %581, !dbg !1531

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %188, i64 0, i32 17, !dbg !1532
  %345 = trunc i64 %183 to i32, !dbg !1533
  %346 = select i1 %52, i32 %184, i32 %345, !dbg !1533
  %347 = add nsw i32 %346, 1, !dbg !1533
  br label %348, !dbg !1531

348:                                              ; preds = %575, %343
  %349 = phi i64 [ 0, %343 ], [ %577, %575 ]
  %350 = phi i32 [ %185, %343 ], [ %351, %575 ]
  call void @llvm.dbg.value(metadata i64 %349, metadata !1031, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %350, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  %351 = add nsw i32 %350, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %351, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  %352 = load %struct.atom_t*, %struct.atom_t** %344, align 8, !dbg !1535, !tbaa !1536
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1036, metadata !DIExpression()) #16, !dbg !1085
  %353 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 0, !dbg !1537
  %354 = load i8*, i8** %353, align 8, !dbg !1537, !tbaa !528
  br i1 %48, label %355, label %383, !dbg !1538

355:                                              ; preds = %348
  call void @llvm.dbg.value(metadata i8* %29, metadata !1276, metadata !DIExpression()) #16, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %354, metadata !1277, metadata !DIExpression()) #16, !dbg !1539
  call void @llvm.dbg.value(metadata i8* %28, metadata !1278, metadata !DIExpression()) #16, !dbg !1539
  store i8 32, i8* %29, align 1, !dbg !1540, !tbaa !464
  %356 = call i64 @strlen(i8* nonnull dereferenceable(1) %354) #15, !dbg !1541
  %357 = icmp ugt i64 %356, 3, !dbg !1543
  br i1 %357, label %358, label %363, !dbg !1544

358:                                              ; preds = %355
  %359 = getelementptr inbounds i8, i8* %354, i64 3, !dbg !1545
  %360 = load i8, i8* %359, align 1, !dbg !1545, !tbaa !464
  %361 = icmp eq i8 %360, 32, !dbg !1546
  br i1 %361, label %363, label %362, !dbg !1547

362:                                              ; preds = %358
  store i8 %360, i8* %29, align 1, !dbg !1548, !tbaa !464
  br label %363, !dbg !1549

363:                                              ; preds = %362, %358, %355
  %364 = load i8, i8* %354, align 1, !dbg !1550, !tbaa !464
  store i8 %364, i8* %120, align 1, !dbg !1551, !tbaa !464
  %365 = getelementptr inbounds i8, i8* %354, i64 1, !dbg !1552
  %366 = load i8, i8* %365, align 1, !dbg !1552, !tbaa !464
  store i8 %366, i8* %122, align 1, !dbg !1553, !tbaa !464
  %367 = getelementptr inbounds i8, i8* %354, i64 2, !dbg !1554
  %368 = load i8, i8* %367, align 1, !dbg !1554, !tbaa !464
  %369 = icmp eq i8 %368, 39, !dbg !1555
  %370 = select i1 %369, i8 42, i8 %368, !dbg !1557
  store i8 %370, i8* %123, align 1, !dbg !1539, !tbaa !464
  store i8 0, i8* %121, align 1, !dbg !1558, !tbaa !464
  %371 = call i32 @bcmp(i8* nonnull dereferenceable(2) %29, i8* nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #16, !dbg !1559
  %372 = icmp eq i32 %371, 0, !dbg !1559
  %373 = add i8 %370, -49, !dbg !1560
  %374 = icmp ult i8 %373, 3, !dbg !1560
  %375 = and i1 %372, %374, !dbg !1561
  br i1 %375, label %376, label %517, !dbg !1561

376:                                              ; preds = %363
  %377 = call i32 @bcmp(i8* nonnull dereferenceable(3) %29, i8* nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #16, !dbg !1562
  %378 = icmp ne i32 %377, 0, !dbg !1562
  %379 = load i16, i16* %124, align 4, !dbg !1563
  %380 = icmp eq i16 %379, 18760, !dbg !1563
  %381 = and i1 %378, %380, !dbg !1564
  br i1 %381, label %517, label %382, !dbg !1564

382:                                              ; preds = %376
  store i8 %370, i8* %29, align 1, !dbg !1565, !tbaa !464
  store i8 32, i8* %123, align 1, !dbg !1567, !tbaa !464
  br label %517, !dbg !1568

383:                                              ; preds = %348
  br i1 %50, label %384, label %515, !dbg !1569

384:                                              ; preds = %383
  call void @llvm.dbg.value(metadata i8* %29, metadata !1259, metadata !DIExpression()) #16, !dbg !1570
  call void @llvm.dbg.value(metadata i8* %354, metadata !1260, metadata !DIExpression()) #16, !dbg !1570
  call void @llvm.dbg.value(metadata i8* undef, metadata !1261, metadata !DIExpression()) #16, !dbg !1570
  %385 = call i64 @strlen(i8* nonnull dereferenceable(1) %354) #15, !dbg !1571
  %386 = icmp ugt i64 %385, 3, !dbg !1572
  br i1 %386, label %387, label %393, !dbg !1573

387:                                              ; preds = %384
  %388 = getelementptr inbounds i8, i8* %354, i64 3, !dbg !1574
  %389 = load i8, i8* %388, align 1, !dbg !1574, !tbaa !464
  %390 = icmp eq i8 %389, 32, !dbg !1575
  br i1 %390, label %393, label %391, !dbg !1576

391:                                              ; preds = %387
  %392 = call i8* @strncpy(i8* nonnull dereferenceable(1) %29, i8* nonnull dereferenceable(1) %354, i64 5) #16, !dbg !1577
  br label %395, !dbg !1579

393:                                              ; preds = %387, %384
  store i8 32, i8* %29, align 1, !dbg !1580, !tbaa !464
  %394 = call i8* @strncpy(i8* nonnull %120, i8* nonnull dereferenceable(1) %354, i64 3) #16, !dbg !1581
  store i8 0, i8* %121, align 1, !dbg !1582, !tbaa !464
  br label %395

395:                                              ; preds = %393, %391
  %396 = load i8, i8* %120, align 1, !dbg !1583, !tbaa !464
  %397 = icmp eq i8 %396, 0, !dbg !1585
  br i1 %397, label %398, label %399, !dbg !1586

398:                                              ; preds = %395
  store i8 32, i8* %120, align 1, !dbg !1587, !tbaa !464
  br label %399, !dbg !1588

399:                                              ; preds = %398, %395
  %400 = phi i8 [ 32, %398 ], [ %396, %395 ]
  %401 = load i8, i8* %122, align 1, !dbg !1589, !tbaa !464
  %402 = icmp eq i8 %401, 0, !dbg !1590
  br i1 %402, label %403, label %404, !dbg !1591

403:                                              ; preds = %399
  store i8 32, i8* %122, align 1, !dbg !1592, !tbaa !464
  br label %404, !dbg !1593

404:                                              ; preds = %403, %399
  %405 = phi i8 [ 32, %403 ], [ %401, %399 ]
  %406 = load i8, i8* %123, align 1, !dbg !1594, !tbaa !464
  %407 = icmp eq i8 %406, 0, !dbg !1595
  br i1 %407, label %408, label %409, !dbg !1596

408:                                              ; preds = %404
  store i8 32, i8* %123, align 1, !dbg !1597, !tbaa !464
  br label %409, !dbg !1598

409:                                              ; preds = %408, %404
  %410 = phi i8 [ 32, %408 ], [ %406, %404 ]
  %411 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #16, !dbg !1599
  %412 = icmp eq i32 %411, 0, !dbg !1599
  br i1 %412, label %413, label %414, !dbg !1601

413:                                              ; preds = %409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5, i1 false) #16, !dbg !1602
  br label %414, !dbg !1602

414:                                              ; preds = %413, %409
  %415 = phi i8 [ %410, %409 ], [ 39, %413 ]
  %416 = phi i8 [ %405, %409 ], [ 53, %413 ]
  %417 = phi i8 [ %400, %409 ], [ 72, %413 ]
  %418 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #16, !dbg !1603
  %419 = icmp eq i32 %418, 0, !dbg !1603
  br i1 %419, label %420, label %421, !dbg !1605

420:                                              ; preds = %414
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5, i1 false) #16, !dbg !1606
  br label %421, !dbg !1606

421:                                              ; preds = %420, %414
  %422 = phi i8 [ %415, %414 ], [ 39, %420 ]
  %423 = phi i8 [ %416, %414 ], [ 39, %420 ]
  %424 = phi i8 [ %417, %414 ], [ 53, %420 ]
  %425 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #16, !dbg !1607
  %426 = icmp eq i32 %425, 0, !dbg !1607
  br i1 %426, label %427, label %428, !dbg !1609

427:                                              ; preds = %421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5, i1 false) #16, !dbg !1610
  br label %428, !dbg !1610

428:                                              ; preds = %427, %421
  %429 = phi i8 [ %422, %421 ], [ 39, %427 ]
  %430 = phi i8 [ %423, %421 ], [ 50, %427 ]
  %431 = phi i8 [ %424, %421 ], [ 72, %427 ]
  %432 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #16, !dbg !1611
  %433 = icmp eq i32 %432, 0, !dbg !1611
  br i1 %433, label %434, label %435, !dbg !1613

434:                                              ; preds = %428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5, i1 false) #16, !dbg !1614
  br label %435, !dbg !1614

435:                                              ; preds = %434, %428
  %436 = phi i8 [ %429, %428 ], [ 39, %434 ]
  %437 = phi i8 [ %430, %428 ], [ 39, %434 ]
  %438 = phi i8 [ %431, %428 ], [ 50, %434 ]
  %439 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #16, !dbg !1615
  %440 = icmp eq i32 %439, 0, !dbg !1615
  br i1 %440, label %441, label %442, !dbg !1617

441:                                              ; preds = %435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5, i1 false) #16, !dbg !1618
  br label %442, !dbg !1618

442:                                              ; preds = %441, %435
  %443 = phi i8 [ %436, %435 ], [ 49, %441 ]
  %444 = phi i8 [ %437, %435 ], [ 80, %441 ]
  %445 = phi i8 [ %438, %435 ], [ 79, %441 ]
  %446 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #16, !dbg !1619
  %447 = icmp eq i32 %446, 0, !dbg !1619
  br i1 %447, label %448, label %449, !dbg !1621

448:                                              ; preds = %442
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5, i1 false) #16, !dbg !1622
  br label %449, !dbg !1622

449:                                              ; preds = %448, %442
  %450 = phi i8 [ %443, %442 ], [ 50, %448 ]
  %451 = phi i8 [ %444, %442 ], [ 80, %448 ]
  %452 = phi i8 [ %445, %442 ], [ 79, %448 ]
  %453 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #16, !dbg !1623
  %454 = icmp eq i32 %453, 0, !dbg !1623
  br i1 %454, label %455, label %456, !dbg !1625

455:                                              ; preds = %449
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5, i1 false) #16, !dbg !1626
  br label %456, !dbg !1626

456:                                              ; preds = %455, %449
  %457 = phi i8 [ %450, %449 ], [ 39, %455 ]
  %458 = phi i8 [ %451, %449 ], [ 53, %455 ]
  %459 = phi i8 [ %452, %449 ], [ 79, %455 ]
  %460 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #16, !dbg !1627
  %461 = icmp eq i32 %460, 0, !dbg !1627
  br i1 %461, label %462, label %463, !dbg !1629

462:                                              ; preds = %456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(5) %29, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5, i1 false) #16, !dbg !1630
  br label %463, !dbg !1630

463:                                              ; preds = %462, %456
  %464 = phi i8 [ %457, %456 ], [ 39, %462 ]
  %465 = phi i8 [ %458, %456 ], [ 51, %462 ]
  %466 = phi i8 [ %459, %456 ], [ 79, %462 ]
  %467 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #16, !dbg !1631
  %468 = icmp eq i32 %467, 0, !dbg !1631
  br i1 %468, label %514, label %469, !dbg !1633

469:                                              ; preds = %463
  %470 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #16, !dbg !1634
  %471 = icmp eq i32 %470, 0, !dbg !1634
  br i1 %471, label %514, label %472, !dbg !1635

472:                                              ; preds = %469
  %473 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #16, !dbg !1636
  %474 = icmp eq i32 %473, 0, !dbg !1636
  br i1 %474, label %514, label %475, !dbg !1637

475:                                              ; preds = %472
  %476 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #16, !dbg !1638
  %477 = icmp eq i32 %476, 0, !dbg !1638
  br i1 %477, label %514, label %478, !dbg !1639

478:                                              ; preds = %475
  %479 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #16, !dbg !1640
  %480 = icmp eq i32 %479, 0, !dbg !1640
  br i1 %480, label %514, label %481, !dbg !1641

481:                                              ; preds = %478
  %482 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #16, !dbg !1642
  %483 = icmp eq i32 %482, 0, !dbg !1642
  br i1 %483, label %514, label %484, !dbg !1643

484:                                              ; preds = %481
  %485 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #16, !dbg !1644
  %486 = icmp eq i32 %485, 0, !dbg !1644
  br i1 %486, label %514, label %487, !dbg !1645

487:                                              ; preds = %484
  %488 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #16, !dbg !1646
  %489 = icmp eq i32 %488, 0, !dbg !1646
  br i1 %489, label %514, label %490, !dbg !1647

490:                                              ; preds = %487
  %491 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #16, !dbg !1648
  %492 = icmp eq i32 %491, 0, !dbg !1648
  br i1 %492, label %514, label %493, !dbg !1649

493:                                              ; preds = %490
  %494 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #16, !dbg !1650
  %495 = icmp eq i32 %494, 0, !dbg !1650
  br i1 %495, label %514, label %496, !dbg !1651

496:                                              ; preds = %493
  %497 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #16, !dbg !1652
  %498 = icmp eq i32 %497, 0, !dbg !1652
  br i1 %498, label %514, label %499, !dbg !1653

499:                                              ; preds = %496
  %500 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #16, !dbg !1654
  %501 = icmp eq i32 %500, 0, !dbg !1654
  br i1 %501, label %514, label %502, !dbg !1655

502:                                              ; preds = %499
  %503 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #16, !dbg !1656
  %504 = icmp eq i32 %503, 0, !dbg !1656
  br i1 %504, label %514, label %505, !dbg !1657

505:                                              ; preds = %502
  %506 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #16, !dbg !1658
  %507 = icmp eq i32 %506, 0, !dbg !1658
  br i1 %507, label %514, label %508, !dbg !1659

508:                                              ; preds = %505
  %509 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #16, !dbg !1660
  %510 = icmp eq i32 %509, 0, !dbg !1660
  br i1 %510, label %514, label %511, !dbg !1661

511:                                              ; preds = %508
  %512 = call i32 @bcmp(i8* nonnull dereferenceable(4) %29, i8* nonnull dereferenceable(4) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #16, !dbg !1662
  %513 = icmp eq i32 %512, 0, !dbg !1662
  br i1 %513, label %514, label %517, !dbg !1663

514:                                              ; preds = %511, %508, %505, %502, %499, %496, %493, %490, %487, %484, %481, %478, %475, %472, %469, %463
  store i8 %466, i8* %29, align 1, !dbg !1664, !tbaa !464
  store i8 %465, i8* %120, align 1, !dbg !1666, !tbaa !464
  store i8 %464, i8* %122, align 1, !dbg !1667, !tbaa !464
  store i8 32, i8* %123, align 1, !dbg !1668, !tbaa !464
  br label %517, !dbg !1669

515:                                              ; preds = %383
  %516 = call i8* @strcpy(i8* nonnull %29, i8* nonnull dereferenceable(1) %354) #16, !dbg !1670
  br label %517

517:                                              ; preds = %515, %514, %511, %382, %376, %363
  %518 = load i8, i8* %30, align 1, !dbg !1671
  %519 = icmp eq i8 %518, 0, !dbg !1671
  %520 = or i1 %52, %519, !dbg !1672
  %521 = icmp slt i32 %350, 99999, !dbg !1673
  br i1 %520, label %522, label %540, !dbg !1672

522:                                              ; preds = %517
  call void @llvm.dbg.value(metadata i32 %347, metadata !1030, metadata !DIExpression()) #16, !dbg !1085
  br i1 %521, label %523, label %531, !dbg !1674

523:                                              ; preds = %522
  %524 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 0, !dbg !1675
  %525 = load double, double* %524, align 8, !dbg !1675, !tbaa !720
  %526 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 1, !dbg !1677
  %527 = load double, double* %526, align 8, !dbg !1677, !tbaa !720
  %528 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 2, !dbg !1678
  %529 = load double, double* %528, align 8, !dbg !1678, !tbaa !720
  %530 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %351, i8* nonnull %29, i8* nonnull %28, i32 %181, i32 %347, double %525, double %527, double %529) #16, !dbg !1679
  br label %558, !dbg !1680

531:                                              ; preds = %522
  %532 = srem i32 %351, 100000, !dbg !1681
  %533 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 0, !dbg !1682
  %534 = load double, double* %533, align 8, !dbg !1682, !tbaa !720
  %535 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 1, !dbg !1683
  %536 = load double, double* %535, align 8, !dbg !1683, !tbaa !720
  %537 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 2, !dbg !1684
  %538 = load double, double* %537, align 8, !dbg !1684, !tbaa !720
  %539 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %532, i8* nonnull %29, i8* nonnull %28, i32 %181, i32 %347, double %534, double %536, double %538) #16, !dbg !1685
  br label %558

540:                                              ; preds = %517
  br i1 %521, label %541, label %549, !dbg !1686

541:                                              ; preds = %540
  %542 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 0, !dbg !1688
  %543 = load double, double* %542, align 8, !dbg !1688, !tbaa !720
  %544 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 1, !dbg !1691
  %545 = load double, double* %544, align 8, !dbg !1691, !tbaa !720
  %546 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 2, !dbg !1692
  %547 = load double, double* %546, align 8, !dbg !1692, !tbaa !720
  %548 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %351, i8* nonnull %29, i8* nonnull %28, i8* nonnull %30, double %543, double %545, double %547) #16, !dbg !1693
  br label %558, !dbg !1694

549:                                              ; preds = %540
  %550 = srem i32 %351, 100000, !dbg !1695
  %551 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 0, !dbg !1697
  %552 = load double, double* %551, align 8, !dbg !1697, !tbaa !720
  %553 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 1, !dbg !1698
  %554 = load double, double* %553, align 8, !dbg !1698, !tbaa !720
  %555 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 17, i64 2, !dbg !1699
  %556 = load double, double* %555, align 8, !dbg !1699, !tbaa !720
  %557 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %550, i8* nonnull %29, i8* nonnull %28, i8* nonnull %30, double %552, double %554, double %556) #16, !dbg !1700
  br label %558

558:                                              ; preds = %549, %541, %531, %523
  br i1 %44, label %559, label %565, !dbg !1701

559:                                              ; preds = %558
  %560 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 6, !dbg !1702
  %561 = load double, double* %560, align 8, !dbg !1702, !tbaa !857
  %562 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 7, !dbg !1705
  %563 = load double, double* %562, align 8, !dbg !1705, !tbaa !861
  %564 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %561, double %563) #16, !dbg !1706
  br label %575, !dbg !1707

565:                                              ; preds = %558
  br i1 %46, label %575, label %566, !dbg !1708

566:                                              ; preds = %565
  %567 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 9, !dbg !1709
  %568 = load double, double* %567, align 8, !dbg !1709, !tbaa !864
  %569 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %352, i64 %349, i32 8, !dbg !1712
  %570 = load double, double* %569, align 8, !dbg !1712, !tbaa !867
  %571 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %568, double %570) #16, !dbg !1713
  br i1 %128, label %575, label %572, !dbg !1714

572:                                              ; preds = %566
  %573 = load i8*, i8** %353, align 8, !dbg !1715, !tbaa !528
  %574 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %573) #16, !dbg !1717
  br label %575, !dbg !1718

575:                                              ; preds = %572, %566, %565, %559
  %576 = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %27) #16, !dbg !1719
  %577 = add nuw nsw i64 %349, 1, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %577, metadata !1031, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %351, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  %578 = load i32, i32* %340, align 8, !dbg !1529, !tbaa !767
  %579 = sext i32 %578 to i64, !dbg !1530
  %580 = icmp slt i64 %577, %579, !dbg !1530
  br i1 %580, label %348, label %581, !dbg !1531, !llvm.loop !1721

581:                                              ; preds = %575, %339
  %582 = phi i32 [ %185, %339 ], [ %351, %575 ], !dbg !1217
  call void @llvm.dbg.value(metadata i32 %582, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  %583 = add nuw nsw i64 %183, 1, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %583, metadata !1028, metadata !DIExpression()) #16, !dbg !1085
  %584 = add nsw i32 %184, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %584, metadata !1029, metadata !DIExpression()) #16, !dbg !1085
  %585 = load i32, i32* %175, align 8, !dbg !1324, !tbaa !1325
  %586 = sext i32 %585 to i64, !dbg !1326
  %587 = icmp slt i64 %583, %586, !dbg !1326
  br i1 %587, label %182, label %588, !dbg !1327, !llvm.loop !1725

588:                                              ; preds = %581, %173
  %589 = phi i32 [ %132, %173 ], [ %582, %581 ], !dbg !1727
  %590 = phi i32 [ %131, %173 ], [ %584, %581 ], !dbg !1217
  call void @llvm.dbg.value(metadata i32 %589, metadata !1032, metadata !DIExpression()) #16, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %590, metadata !1029, metadata !DIExpression()) #16, !dbg !1085
  %591 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %27) #16, !dbg !1728
  %592 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %130, i64 0, i32 4, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1034, metadata !DIExpression()) #16, !dbg !1085
  %593 = load %struct.strand_t*, %struct.strand_t** %592, align 8, !dbg !1217, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %593, metadata !1034, metadata !DIExpression()) #16, !dbg !1085
  %594 = icmp eq %struct.strand_t* %593, null, !dbg !1218
  br i1 %594, label %595, label %129, !dbg !1218, !llvm.loop !1730

595:                                              ; preds = %588, %109
  call void @llvm.dbg.value(metadata %struct.cid_t* %110, metadata !1146, metadata !DIExpression()) #16, !dbg !1732
  %596 = icmp eq %struct.cid_t* %110, null, !dbg !1734
  br i1 %596, label %604, label %597, !dbg !1735

597:                                              ; preds = %595
  %598 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %110, i64 0, i32 2, !dbg !1736
  %599 = load i8*, i8** %598, align 8, !dbg !1736, !tbaa !1159
  %600 = icmp eq i8* %599, null, !dbg !1738
  br i1 %600, label %602, label %601, !dbg !1739

601:                                              ; preds = %597
  call void @free(i8* nonnull %599) #16, !dbg !1740
  br label %602, !dbg !1740

602:                                              ; preds = %601, %597
  %603 = bitcast %struct.cid_t* %110 to i8*, !dbg !1741
  call void @free(i8* %603) #16, !dbg !1742
  br label %604, !dbg !1743

604:                                              ; preds = %602, %595, %33
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %31) #16, !dbg !1744
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %30) #16, !dbg !1744
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #16, !dbg !1744
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28) #16, !dbg !1744
  %605 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1745, !tbaa !470
  %606 = icmp eq %struct._IO_FILE* %27, %605, !dbg !1747
  br i1 %606, label %609, label %607, !dbg !1748

607:                                              ; preds = %604
  %608 = call i32 @fclose(%struct._IO_FILE* %27), !dbg !1749
  br label %609, !dbg !1749

609:                                              ; preds = %607, %604, %24, %15
  %610 = phi i32 [ 0, %607 ], [ 0, %604 ], [ -1, %24 ], [ 0, %15 ], !dbg !1061
  call void @llvm.dbg.value(metadata i32 %610, metadata !1019, metadata !DIExpression()), !dbg !1061
  call void @reducerror(i32 %610) #16, !dbg !1750
  br label %611, !dbg !1751

611:                                              ; preds = %609, %12, %11
  ret i32 0, !dbg !1752
}

declare !dbg !106 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* readonly %2) local_unnamed_addr #0 !dbg !1753 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1757, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8* %1, metadata !1758, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1759, metadata !DIExpression()), !dbg !1761
  %4 = icmp eq %struct.molecule_t* %2, null, !dbg !1762
  br i1 %4, label %5, label %8, !dbg !1764

5:                                                ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1765, !tbaa !470
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %6) #17, !dbg !1767
  br label %115, !dbg !1768

8:                                                ; preds = %3
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #15, !dbg !1769
  %10 = icmp eq i32 %9, 0, !dbg !1769
  br i1 %10, label %16, label %11, !dbg !1771

11:                                               ; preds = %8
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1772
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !1760, metadata !DIExpression()), !dbg !1761
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !1774
  br i1 %13, label %14, label %20, !dbg !1775

14:                                               ; preds = %11
  %15 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #16, !dbg !1776
  tail call void @exit(i32 1) #19, !dbg !1778
  unreachable, !dbg !1778

16:                                               ; preds = %8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1779, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1760, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1760, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !1780, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i8* %1, metadata !1785, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1786, metadata !DIExpression()) #16, !dbg !1796
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !1798
  br i1 %18, label %19, label %20, !dbg !1801

19:                                               ; preds = %16
  tail call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #19, !dbg !1798
  unreachable, !dbg !1798

20:                                               ; preds = %16, %11
  %21 = phi %struct._IO_FILE* [ %17, %16 ], [ %12, %11 ]
  %22 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 1, !dbg !1802
  %23 = load i32, i32* %22, align 8, !dbg !1802, !tbaa !1803
  call void @llvm.dbg.value(metadata i8 undef, metadata !1792, metadata !DIExpression()) #16, !dbg !1796
  %24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %1) #16, !dbg !1804
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* nonnull %21) #16, !dbg !1805
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %1) #16, !dbg !1806
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* nonnull %21) #16, !dbg !1807
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* nonnull %21) #16, !dbg !1808
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* nonnull %21) #16, !dbg !1809
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* nonnull %21) #16, !dbg !1810
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* nonnull %21) #16, !dbg !1811
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* nonnull %21) #16, !dbg !1812
  call void @llvm.dbg.value(metadata i32 0, metadata !1791, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 0, metadata !1788, metadata !DIExpression()) #16, !dbg !1796
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 2, !dbg !1813
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1793, metadata !DIExpression()) #16, !dbg !1796
  %34 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !1815, !tbaa !470
  call void @llvm.dbg.value(metadata i32 0, metadata !1788, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !1793, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i8 undef, metadata !1792, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 0, metadata !1791, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  %35 = icmp eq %struct.strand_t* %34, null, !dbg !1816
  br i1 %35, label %110, label %36, !dbg !1816

36:                                               ; preds = %20
  %37 = icmp sgt i32 %23, 1, !dbg !1817
  %38 = select i1 %37, i8 65, i8 46, !dbg !1818
  call void @llvm.dbg.value(metadata i8 %38, metadata !1792, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i8 %38, metadata !1792, metadata !DIExpression()) #16, !dbg !1796
  br label %39, !dbg !1816

39:                                               ; preds = %100, %36
  %40 = phi %struct.strand_t* [ %108, %100 ], [ %34, %36 ]
  %41 = phi i32 [ %102, %100 ], [ 0, %36 ]
  %42 = phi i8 [ %106, %100 ], [ %38, %36 ]
  %43 = phi i32 [ %45, %100 ], [ 0, %36 ]
  %44 = phi i32 [ %101, %100 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %41, metadata !1788, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i8 %42, metadata !1792, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %43, metadata !1791, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %44, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  %45 = add nuw nsw i32 %43, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %45, metadata !1791, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 0, metadata !1787, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %41, metadata !1788, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %44, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  %46 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 5, !dbg !1822
  %47 = load i32, i32* %46, align 8, !dbg !1822, !tbaa !1325
  %48 = icmp sgt i32 %47, 0, !dbg !1825
  br i1 %48, label %49, label %100, !dbg !1826

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 7, !dbg !1827
  %51 = sext i8 %42 to i32, !dbg !1829
  br label %52, !dbg !1826

52:                                               ; preds = %93, %49
  %53 = phi i32 [ %47, %49 ], [ %96, %93 ]
  %54 = phi i64 [ 0, %49 ], [ %95, %93 ]
  %55 = phi i32 [ %41, %49 ], [ %94, %93 ]
  %56 = phi i32 [ %44, %49 ], [ %97, %93 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !1787, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %55, metadata !1788, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %56, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  %57 = load %struct.residue_t**, %struct.residue_t*** %50, align 8, !dbg !1833, !tbaa !799
  %58 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %57, i64 %54, !dbg !1834
  %59 = load %struct.residue_t*, %struct.residue_t** %58, align 8, !dbg !1834, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %59, metadata !1794, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 0, metadata !1789, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %56, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  %60 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 15, !dbg !1835
  %61 = load i32, i32* %60, align 8, !dbg !1835, !tbaa !767
  %62 = icmp sgt i32 %61, 0, !dbg !1836
  br i1 %62, label %66, label %63, !dbg !1837

63:                                               ; preds = %52
  %64 = add nuw nsw i64 %54, 1, !dbg !1838
  %65 = add nsw i32 %55, 1, !dbg !1839
  br label %93, !dbg !1837

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 17, !dbg !1829
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %59, i64 0, i32 4, !dbg !1829
  %69 = add nsw i32 %55, 1, !dbg !1829
  %70 = add nuw nsw i64 %54, 1, !dbg !1829
  %71 = trunc i64 %70 to i32, !dbg !1829
  br label %72, !dbg !1837

72:                                               ; preds = %72, %66
  %73 = phi i64 [ 0, %66 ], [ %87, %72 ]
  %74 = phi i32 [ %56, %66 ], [ %75, %72 ]
  call void @llvm.dbg.value(metadata i32 %74, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %73, metadata !1789, metadata !DIExpression()) #16, !dbg !1796
  %75 = add nsw i32 %74, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %75, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  %76 = load %struct.atom_t*, %struct.atom_t** %67, align 8, !dbg !1841, !tbaa !1536
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !1795, metadata !DIExpression()) #16, !dbg !1796
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 0, !dbg !1842
  %78 = load i8*, i8** %77, align 8, !dbg !1842, !tbaa !528
  %79 = load i8*, i8** %68, align 8, !dbg !1843, !tbaa !758
  %80 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 0, !dbg !1844
  %81 = load double, double* %80, align 8, !dbg !1844, !tbaa !720
  %82 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 1, !dbg !1845
  %83 = load double, double* %82, align 8, !dbg !1845, !tbaa !720
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i64 %73, i32 17, i64 2, !dbg !1846
  %85 = load double, double* %84, align 8, !dbg !1846, !tbaa !720
  %86 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %75, i8* %78, i8* %79, i32 %51, i32 %69, double %81, double %83, double %85, i32 %45, i32 %71) #16, !dbg !1847
  %87 = add nuw nsw i64 %73, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %87, metadata !1789, metadata !DIExpression()) #16, !dbg !1796
  %88 = load i32, i32* %60, align 8, !dbg !1835, !tbaa !767
  %89 = sext i32 %88 to i64, !dbg !1836
  %90 = icmp slt i64 %87, %89, !dbg !1836
  br i1 %90, label %72, label %91, !dbg !1837, !llvm.loop !1849

91:                                               ; preds = %72
  %92 = load i32, i32* %46, align 8, !dbg !1822, !tbaa !1325
  br label %93, !dbg !1838

93:                                               ; preds = %91, %63
  %94 = phi i32 [ %65, %63 ], [ %69, %91 ], !dbg !1839
  %95 = phi i64 [ %64, %63 ], [ %70, %91 ], !dbg !1838
  %96 = phi i32 [ %53, %63 ], [ %92, %91 ], !dbg !1822
  %97 = phi i32 [ %56, %63 ], [ %75, %91 ], !dbg !1815
  call void @llvm.dbg.value(metadata i32 %97, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %95, metadata !1787, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %94, metadata !1788, metadata !DIExpression()) #16, !dbg !1796
  %98 = sext i32 %96 to i64, !dbg !1825
  %99 = icmp slt i64 %95, %98, !dbg !1825
  br i1 %99, label %52, label %100, !dbg !1826, !llvm.loop !1851

100:                                              ; preds = %93, %39
  %101 = phi i32 [ %44, %39 ], [ %97, %93 ], !dbg !1853
  %102 = phi i32 [ %41, %39 ], [ %94, %93 ], !dbg !1815
  call void @llvm.dbg.value(metadata i32 %101, metadata !1790, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %102, metadata !1788, metadata !DIExpression()) #16, !dbg !1796
  %103 = load i32, i32* %22, align 8, !dbg !1854, !tbaa !1803
  %104 = icmp sgt i32 %103, 1, !dbg !1856
  %105 = zext i1 %104 to i8, !dbg !1857
  %106 = add i8 %42, %105, !dbg !1857
  call void @llvm.dbg.value(metadata i8 %106, metadata !1792, metadata !DIExpression()) #16, !dbg !1796
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i64 0, i32 4, !dbg !1858
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1793, metadata !DIExpression()) #16, !dbg !1796
  %108 = load %struct.strand_t*, %struct.strand_t** %107, align 8, !dbg !1815, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %108, metadata !1793, metadata !DIExpression()) #16, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %45, metadata !1791, metadata !DIExpression()) #16, !dbg !1796
  %109 = icmp eq %struct.strand_t* %108, null, !dbg !1816
  br i1 %109, label %110, label %39, !dbg !1816, !llvm.loop !1859

110:                                              ; preds = %100, %20
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1861, !tbaa !470
  %112 = icmp eq %struct._IO_FILE* %21, %111, !dbg !1863
  br i1 %112, label %115, label %113, !dbg !1864

113:                                              ; preds = %110
  %114 = tail call i32 @fclose(%struct._IO_FILE* %21), !dbg !1865
  br label %115, !dbg !1865

115:                                              ; preds = %113, %110, %5
  ret i32 0, !dbg !1866
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* readonly %1) local_unnamed_addr #0 !dbg !1867 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1871, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1872, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 0, metadata !1883, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32* null, metadata !1884, metadata !DIExpression()), !dbg !1888
  %3 = icmp eq %struct.molecule_t* %1, null, !dbg !1889
  br i1 %3, label %4, label %7, !dbg !1891

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1892, !tbaa !470
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %5) #17, !dbg !1894
  br label %155, !dbg !1895

7:                                                ; preds = %2
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1896
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !1873, metadata !DIExpression()), !dbg !1888
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !1898
  br i1 %9, label %10, label %12, !dbg !1899

10:                                               ; preds = %7
  %11 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #16, !dbg !1900
  tail call void @exit(i32 1) #19, !dbg !1902
  unreachable, !dbg !1902

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()), !dbg !1888
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1903
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1874, metadata !DIExpression()), !dbg !1888
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1905, !tbaa !470
  call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1874, metadata !DIExpression()), !dbg !1888
  %15 = icmp eq %struct.strand_t* %14, null, !dbg !1906
  br i1 %15, label %28, label %16, !dbg !1906

16:                                               ; preds = %16, %12
  %17 = phi %struct.strand_t* [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %21, %16 ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !1882, metadata !DIExpression()), !dbg !1888
  %19 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i64 0, i32 5, !dbg !1907
  %20 = load i32, i32* %19, align 8, !dbg !1907, !tbaa !1325
  %21 = add nsw i32 %20, %18, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %21, metadata !1882, metadata !DIExpression()), !dbg !1888
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %17, i64 0, i32 4, !dbg !1910
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1874, metadata !DIExpression()), !dbg !1888
  %23 = load %struct.strand_t*, %struct.strand_t** %22, align 8, !dbg !1905, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %23, metadata !1874, metadata !DIExpression()), !dbg !1888
  %24 = icmp eq %struct.strand_t* %23, null, !dbg !1906
  br i1 %24, label %25, label %16, !dbg !1906, !llvm.loop !1911

25:                                               ; preds = %16
  %26 = sext i32 %21 to i64, !dbg !1913
  %27 = shl nsw i64 %26, 2, !dbg !1913
  br label %28, !dbg !1913

28:                                               ; preds = %25, %12
  %29 = phi i64 [ 0, %12 ], [ %27, %25 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1882, metadata !DIExpression()), !dbg !1888
  %30 = tail call noalias i8* @malloc(i64 %29) #16, !dbg !1915
  %31 = bitcast i8* %30 to i32*, !dbg !1916
  call void @llvm.dbg.value(metadata i32* %31, metadata !1884, metadata !DIExpression()), !dbg !1888
  %32 = icmp eq i8* %30, null, !dbg !1917
  br i1 %32, label %34, label %33, !dbg !1918

33:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1874, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()), !dbg !1888
  br i1 %15, label %151, label %37, !dbg !1919

34:                                               ; preds = %28
  %35 = tail call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #16, !dbg !1921
  call void @llvm.dbg.value(metadata i32 1, metadata !1883, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 0, metadata !1883, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.label(metadata !1887), !dbg !1923
  br label %152, !dbg !1924

36:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1874, metadata !DIExpression()), !dbg !1888
  br i1 %15, label %151, label %77, !dbg !1925

37:                                               ; preds = %71, %33
  %38 = phi %struct.strand_t* [ %75, %71 ], [ %14, %33 ]
  %39 = phi i32 [ %73, %71 ], [ 0, %33 ]
  %40 = phi i32 [ %72, %71 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i32 %39, metadata !1882, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 %40, metadata !1877, metadata !DIExpression()), !dbg !1888
  %41 = sext i32 %39 to i64, !dbg !1927
  %42 = getelementptr inbounds i32, i32* %31, i64 %41, !dbg !1927
  store i32 %40, i32* %42, align 4, !dbg !1930, !tbaa !560
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 5, !dbg !1931
  %44 = load i32, i32* %43, align 8, !dbg !1931, !tbaa !1325
  %45 = icmp sgt i32 %44, 0, !dbg !1933
  br i1 %45, label %46, label %71, !dbg !1934

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 7, !dbg !1935
  %48 = load %struct.residue_t**, %struct.residue_t*** %47, align 8, !dbg !1935, !tbaa !799
  %49 = load %struct.residue_t*, %struct.residue_t** %48, align 8, !dbg !1937, !tbaa !470
  %50 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %49, i64 0, i32 15, !dbg !1938
  %51 = load i32, i32* %50, align 8, !dbg !1938, !tbaa !767
  %52 = add nsw i32 %51, %40, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %52, metadata !1877, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 1, metadata !1880, metadata !DIExpression()), !dbg !1888
  %53 = icmp eq i32 %44, 1, !dbg !1940
  br i1 %53, label %68, label %54, !dbg !1943

54:                                               ; preds = %46
  %55 = zext i32 %44 to i64, !dbg !1940
  br label %56, !dbg !1943

56:                                               ; preds = %56, %54
  %57 = phi i64 [ 1, %54 ], [ %66, %56 ]
  %58 = phi i32 [ %52, %54 ], [ %65, %56 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !1880, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 %58, metadata !1877, metadata !DIExpression()), !dbg !1888
  %59 = add nsw i64 %57, %41, !dbg !1944
  %60 = getelementptr inbounds i32, i32* %31, i64 %59, !dbg !1946
  store i32 %58, i32* %60, align 4, !dbg !1947, !tbaa !560
  %61 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %57, !dbg !1948
  %62 = load %struct.residue_t*, %struct.residue_t** %61, align 8, !dbg !1948, !tbaa !470
  %63 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %62, i64 0, i32 15, !dbg !1949
  %64 = load i32, i32* %63, align 8, !dbg !1949, !tbaa !767
  %65 = add nsw i32 %64, %58, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %65, metadata !1877, metadata !DIExpression()), !dbg !1888
  %66 = add nuw nsw i64 %57, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %66, metadata !1880, metadata !DIExpression()), !dbg !1888
  %67 = icmp eq i64 %66, %55, !dbg !1940
  br i1 %67, label %68, label %56, !dbg !1943, !llvm.loop !1952

68:                                               ; preds = %56, %46
  %69 = phi i32 [ %52, %46 ], [ %65, %56 ], !dbg !1954
  call void @llvm.dbg.value(metadata i32 %69, metadata !1877, metadata !DIExpression()), !dbg !1888
  %70 = add nsw i32 %44, %39, !dbg !1955
  call void @llvm.dbg.value(metadata i32 %70, metadata !1882, metadata !DIExpression()), !dbg !1888
  br label %71, !dbg !1956

71:                                               ; preds = %68, %37
  %72 = phi i32 [ %69, %68 ], [ %40, %37 ], !dbg !1957
  %73 = phi i32 [ %70, %68 ], [ %39, %37 ], !dbg !1957
  call void @llvm.dbg.value(metadata i32 %73, metadata !1882, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 %72, metadata !1877, metadata !DIExpression()), !dbg !1888
  %74 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i64 0, i32 4, !dbg !1958
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1874, metadata !DIExpression()), !dbg !1888
  %75 = load %struct.strand_t*, %struct.strand_t** %74, align 8, !dbg !1957, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %75, metadata !1874, metadata !DIExpression()), !dbg !1888
  %76 = icmp eq %struct.strand_t* %75, null, !dbg !1919
  br i1 %76, label %36, label %37, !dbg !1919, !llvm.loop !1959

77:                                               ; preds = %145, %36
  %78 = phi %struct.strand_t* [ %149, %145 ], [ %14, %36 ]
  %79 = phi i32 [ %147, %145 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i32 %79, metadata !1882, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 0, metadata !1880, metadata !DIExpression()), !dbg !1888
  %80 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %78, i64 0, i32 5, !dbg !1961
  %81 = load i32, i32* %80, align 8, !dbg !1961, !tbaa !1325
  %82 = icmp sgt i32 %81, 0, !dbg !1966
  br i1 %82, label %83, label %145, !dbg !1967

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %78, i64 0, i32 7, !dbg !1968
  %85 = add i32 %79, -1, !dbg !1970
  %86 = sext i32 %79 to i64, !dbg !1967
  br label %87, !dbg !1967

87:                                               ; preds = %140, %83
  %88 = phi i64 [ 0, %83 ], [ %141, %140 ]
  call void @llvm.dbg.value(metadata i64 %88, metadata !1880, metadata !DIExpression()), !dbg !1888
  %89 = load %struct.residue_t**, %struct.residue_t*** %84, align 8, !dbg !1974, !tbaa !799
  %90 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %89, i64 %88, !dbg !1975
  %91 = load %struct.residue_t*, %struct.residue_t** %90, align 8, !dbg !1975, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %91, metadata !1875, metadata !DIExpression()), !dbg !1888
  %92 = add nsw i64 %88, %86, !dbg !1976
  %93 = getelementptr inbounds i32, i32* %31, i64 %92, !dbg !1977
  %94 = load i32, i32* %93, align 4, !dbg !1977, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %94, metadata !1876, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i32 0, metadata !1885, metadata !DIExpression()), !dbg !1888
  %95 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i64 0, i32 11, !dbg !1978
  %96 = load i32, i32* %95, align 8, !dbg !1978, !tbaa !1981
  %97 = icmp sgt i32 %96, 0, !dbg !1982
  br i1 %97, label %98, label %114, !dbg !1983

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i64 0, i32 12, !dbg !1984
  br label %100, !dbg !1983

100:                                              ; preds = %100, %98
  %101 = phi i64 [ 0, %98 ], [ %110, %100 ]
  call void @llvm.dbg.value(metadata i64 %101, metadata !1885, metadata !DIExpression()), !dbg !1888
  %102 = load [2 x i32]*, [2 x i32]** %99, align 8, !dbg !1986, !tbaa !1987
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %102, i64 %101, i64 0, !dbg !1988
  %104 = load i32, i32* %103, align 4, !dbg !1988, !tbaa !560
  %105 = add nsw i32 %104, %94, !dbg !1989
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %102, i64 %101, i64 1, !dbg !1990
  %107 = load i32, i32* %106, align 4, !dbg !1990, !tbaa !560
  %108 = add nsw i32 %107, %94, !dbg !1991
  %109 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %105, i32 %108), !dbg !1992
  %110 = add nuw nsw i64 %101, 1, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %110, metadata !1885, metadata !DIExpression()), !dbg !1888
  %111 = load i32, i32* %95, align 8, !dbg !1978, !tbaa !1981
  %112 = sext i32 %111 to i64, !dbg !1982
  %113 = icmp slt i64 %110, %112, !dbg !1982
  br i1 %113, label %100, label %114, !dbg !1983, !llvm.loop !1994

114:                                              ; preds = %100, %87
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %91, i64 0, i32 10, !dbg !1996
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1886, metadata !DIExpression()), !dbg !1888
  %116 = load %struct.extbond_t*, %struct.extbond_t** %115, align 8, !dbg !1997, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.extbond_t* %116, metadata !1886, metadata !DIExpression()), !dbg !1888
  %117 = icmp eq %struct.extbond_t* %116, null, !dbg !1998
  br i1 %117, label %140, label %118, !dbg !1998

118:                                              ; preds = %136, %114
  %119 = phi %struct.extbond_t* [ %138, %136 ], [ %116, %114 ]
  %120 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %119, i64 0, i32 2, !dbg !1999
  %121 = load i32, i32* %120, align 4, !dbg !1999, !tbaa !2001
  call void @llvm.dbg.value(metadata i32 %121, metadata !1881, metadata !DIExpression()), !dbg !1888
  %122 = sext i32 %121 to i64, !dbg !2003
  %123 = icmp slt i64 %88, %122, !dbg !2003
  br i1 %123, label %124, label %136, !dbg !2004

124:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 %94, metadata !1878, metadata !DIExpression()), !dbg !1888
  %125 = add i32 %85, %121, !dbg !2005
  %126 = sext i32 %125 to i64, !dbg !2006
  %127 = getelementptr inbounds i32, i32* %31, i64 %126, !dbg !2006
  %128 = load i32, i32* %127, align 4, !dbg !2006, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %128, metadata !1879, metadata !DIExpression()), !dbg !1888
  %129 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %119, i64 0, i32 1, !dbg !2007
  %130 = load i32, i32* %129, align 8, !dbg !2007, !tbaa !2008
  %131 = add nsw i32 %130, %94, !dbg !2009
  %132 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %119, i64 0, i32 3, !dbg !2010
  %133 = load i32, i32* %132, align 8, !dbg !2010, !tbaa !2011
  %134 = add nsw i32 %133, %128, !dbg !2012
  %135 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %131, i32 %134), !dbg !2013
  br label %136, !dbg !2014

136:                                              ; preds = %124, %118
  %137 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %119, i64 0, i32 0, !dbg !2015
  call void @llvm.dbg.value(metadata %struct.extbond_t* undef, metadata !1886, metadata !DIExpression()), !dbg !1888
  %138 = load %struct.extbond_t*, %struct.extbond_t** %137, align 8, !dbg !1997, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.extbond_t* %138, metadata !1886, metadata !DIExpression()), !dbg !1888
  %139 = icmp eq %struct.extbond_t* %138, null, !dbg !1998
  br i1 %139, label %140, label %118, !dbg !1998, !llvm.loop !2016

140:                                              ; preds = %136, %114
  %141 = add nuw nsw i64 %88, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %141, metadata !1880, metadata !DIExpression()), !dbg !1888
  %142 = load i32, i32* %80, align 8, !dbg !1961, !tbaa !1325
  %143 = sext i32 %142 to i64, !dbg !1966
  %144 = icmp slt i64 %141, %143, !dbg !1966
  br i1 %144, label %87, label %145, !dbg !1967, !llvm.loop !2019

145:                                              ; preds = %140, %77
  %146 = phi i32 [ %81, %77 ], [ %142, %140 ], !dbg !1961
  %147 = add nsw i32 %146, %79, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %147, metadata !1882, metadata !DIExpression()), !dbg !1888
  %148 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %78, i64 0, i32 4, !dbg !2022
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !1874, metadata !DIExpression()), !dbg !1888
  %149 = load %struct.strand_t*, %struct.strand_t** %148, align 8, !dbg !2023, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %149, metadata !1874, metadata !DIExpression()), !dbg !1888
  %150 = icmp eq %struct.strand_t* %149, null, !dbg !1925
  br i1 %150, label %151, label %77, !dbg !1925, !llvm.loop !2024

151:                                              ; preds = %145, %36, %33
  call void @llvm.dbg.value(metadata i32 0, metadata !1883, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.label(metadata !1887), !dbg !1923
  tail call void @free(i8* nonnull %30) #16, !dbg !2026
  br label %152, !dbg !2026

152:                                              ; preds = %151, %34
  %153 = phi i32 [ 1, %34 ], [ 0, %151 ]
  %154 = tail call i32 @fclose(%struct._IO_FILE* nonnull %8), !dbg !2028
  br label %155, !dbg !2029

155:                                              ; preds = %152, %4
  %156 = phi i32 [ %153, %152 ], [ 0, %4 ], !dbg !1888
  ret i32 %156, !dbg !2030
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !110 dso_local void @free(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) local_unnamed_addr #0 !dbg !2031 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2035, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !2036, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %2, metadata !2037, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8* %3, metadata !2038, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2053
  %5 = icmp eq %struct.molecule_t* %1, null, !dbg !2054
  br i1 %5, label %6, label %9, !dbg !2056

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2057, !tbaa !470
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %7) #17, !dbg !2059
  br label %229, !dbg !2060

9:                                                ; preds = %4
  tail call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %2) #16, !dbg !2061
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !2062
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2040, metadata !DIExpression()), !dbg !2053
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2064, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %11, metadata !2040, metadata !DIExpression()), !dbg !2053
  %12 = icmp eq %struct.strand_t* %11, null, !dbg !2065
  br i1 %12, label %63, label %13, !dbg !2065

13:                                               ; preds = %59, %9
  %14 = phi %struct.strand_t* [ %61, %59 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 2, !dbg !2066
  %16 = load i32, i32* %15, align 4, !dbg !2069, !tbaa !2070
  %17 = and i32 %16, -3, !dbg !2069
  %18 = shl i32 %16, 1, !dbg !2071
  %19 = and i32 %18, 2, !dbg !2071
  %20 = or i32 %19, %17, !dbg !2072
  store i32 %20, i32* %15, align 4, !dbg !2072, !tbaa !2070
  call void @llvm.dbg.value(metadata i32 0, metadata !2046, metadata !DIExpression()), !dbg !2053
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 5, !dbg !2073
  %22 = load i32, i32* %21, align 8, !dbg !2073, !tbaa !1325
  %23 = icmp sgt i32 %22, 0, !dbg !2076
  br i1 %23, label %24, label %59, !dbg !2077

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 7, !dbg !2078
  %26 = load %struct.residue_t**, %struct.residue_t*** %25, align 8, !dbg !2078, !tbaa !799
  %27 = zext i32 %22 to i64, !dbg !2077
  br label %28, !dbg !2077

28:                                               ; preds = %56, %24
  %29 = phi i64 [ 0, %24 ], [ %57, %56 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !2046, metadata !DIExpression()), !dbg !2053
  %30 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %26, i64 %29, !dbg !2080
  %31 = load %struct.residue_t*, %struct.residue_t** %30, align 8, !dbg !2080, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %31, metadata !2041, metadata !DIExpression()), !dbg !2053
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 6, !dbg !2081
  %33 = load i32, i32* %32, align 8, !dbg !2082, !tbaa !2083
  %34 = and i32 %33, -3, !dbg !2082
  %35 = shl i32 %33, 1, !dbg !2084
  %36 = and i32 %35, 2, !dbg !2084
  %37 = or i32 %36, %34, !dbg !2085
  store i32 %37, i32* %32, align 8, !dbg !2085, !tbaa !2083
  call void @llvm.dbg.value(metadata i32 0, metadata !2048, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2043, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2048, metadata !DIExpression()), !dbg !2053
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 15, !dbg !2086
  %39 = load i32, i32* %38, align 8, !dbg !2086, !tbaa !767
  %40 = icmp sgt i32 %39, 0, !dbg !2089
  br i1 %40, label %41, label %56, !dbg !2090

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i64 0, i32 17, !dbg !2091
  %43 = load %struct.atom_t*, %struct.atom_t** %42, align 8, !dbg !2091, !tbaa !1536
  call void @llvm.dbg.value(metadata %struct.atom_t* %43, metadata !2043, metadata !DIExpression()), !dbg !2053
  br label %44, !dbg !2090

44:                                               ; preds = %44, %41
  %45 = phi i32 [ 0, %41 ], [ %53, %44 ]
  %46 = phi %struct.atom_t* [ %43, %41 ], [ %54, %44 ]
  call void @llvm.dbg.value(metadata i32 %45, metadata !2048, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.atom_t* %46, metadata !2043, metadata !DIExpression()), !dbg !2053
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i64 0, i32 2, !dbg !2092
  %48 = load i32, i32* %47, align 8, !dbg !2094, !tbaa !844
  %49 = and i32 %48, -3, !dbg !2094
  %50 = shl i32 %48, 1, !dbg !2095
  %51 = and i32 %50, 2, !dbg !2095
  %52 = or i32 %51, %49, !dbg !2096
  store i32 %52, i32* %47, align 8, !dbg !2096, !tbaa !844
  %53 = add nuw nsw i32 %45, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %53, metadata !2048, metadata !DIExpression()), !dbg !2053
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %46, i64 1, !dbg !2098
  call void @llvm.dbg.value(metadata %struct.atom_t* %54, metadata !2043, metadata !DIExpression()), !dbg !2053
  %55 = icmp slt i32 %53, %39, !dbg !2089
  br i1 %55, label %44, label %56, !dbg !2090, !llvm.loop !2099

56:                                               ; preds = %44, %28
  %57 = add nuw nsw i64 %29, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %57, metadata !2046, metadata !DIExpression()), !dbg !2053
  %58 = icmp ult i64 %57, %27, !dbg !2076
  br i1 %58, label %28, label %59, !dbg !2077, !llvm.loop !2102

59:                                               ; preds = %56, %13
  %60 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %14, i64 0, i32 4, !dbg !2104
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2040, metadata !DIExpression()), !dbg !2053
  %61 = load %struct.strand_t*, %struct.strand_t** %60, align 8, !dbg !2064, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %61, metadata !2040, metadata !DIExpression()), !dbg !2053
  %62 = icmp eq %struct.strand_t* %61, null, !dbg !2065
  br i1 %62, label %63, label %13, !dbg !2065, !llvm.loop !2105

63:                                               ; preds = %59, %9
  tail call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %3) #16, !dbg !2107
  call void @llvm.dbg.value(metadata i32 0, metadata !2045, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2040, metadata !DIExpression()), !dbg !2053
  %64 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2108, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !2040, metadata !DIExpression()), !dbg !2053
  %65 = icmp eq %struct.strand_t* %64, null, !dbg !2110
  br i1 %65, label %75, label %66, !dbg !2110

66:                                               ; preds = %66, %63
  %67 = phi %struct.strand_t* [ %73, %66 ], [ %64, %63 ]
  %68 = phi i32 [ %71, %66 ], [ 0, %63 ]
  call void @llvm.dbg.value(metadata i32 %68, metadata !2045, metadata !DIExpression()), !dbg !2053
  %69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %67, i64 0, i32 5, !dbg !2111
  %70 = load i32, i32* %69, align 8, !dbg !2111, !tbaa !1325
  %71 = add nsw i32 %70, %68, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %71, metadata !2045, metadata !DIExpression()), !dbg !2053
  %72 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %67, i64 0, i32 4, !dbg !2114
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2040, metadata !DIExpression()), !dbg !2053
  %73 = load %struct.strand_t*, %struct.strand_t** %72, align 8, !dbg !2108, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %73, metadata !2040, metadata !DIExpression()), !dbg !2053
  %74 = icmp eq %struct.strand_t* %73, null, !dbg !2110
  br i1 %74, label %75, label %66, !dbg !2110, !llvm.loop !2115

75:                                               ; preds = %66, %63
  %76 = phi i32 [ 0, %63 ], [ %71, %66 ], !dbg !2108
  call void @llvm.dbg.value(metadata i32 %76, metadata !2045, metadata !DIExpression()), !dbg !2053
  %77 = sext i32 %76 to i64, !dbg !2117
  %78 = shl nsw i64 %77, 3, !dbg !2119
  %79 = tail call noalias i8* @malloc(i64 %78) #16, !dbg !2120
  %80 = bitcast i8* %79 to %struct.residue_t**, !dbg !2121
  call void @llvm.dbg.value(metadata %struct.residue_t** %80, metadata !2050, metadata !DIExpression()), !dbg !2053
  %81 = icmp eq i8* %79, null, !dbg !2122
  br i1 %81, label %83, label %82, !dbg !2123

82:                                               ; preds = %75
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !2040, metadata !DIExpression()), !dbg !2053
  br i1 %65, label %115, label %86, !dbg !2124

83:                                               ; preds = %75
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2126, !tbaa !470
  %85 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %84) #17, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %228, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.label(metadata !2052), !dbg !2129
  br label %229, !dbg !2130

86:                                               ; preds = %110, %82
  %87 = phi %struct.strand_t* [ %113, %110 ], [ %64, %82 ]
  %88 = phi i32 [ %111, %110 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i32 %88, metadata !2047, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %88, metadata !2047, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2046, metadata !DIExpression()), !dbg !2053
  %89 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 5, !dbg !2131
  %90 = load i32, i32* %89, align 8, !dbg !2131, !tbaa !1325
  %91 = icmp sgt i32 %90, 0, !dbg !2136
  br i1 %91, label %92, label %110, !dbg !2137

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 7, !dbg !2138
  %94 = bitcast %struct.residue_t*** %93 to i8**, !dbg !2138
  %95 = load i8*, i8** %94, align 8, !dbg !2138, !tbaa !799
  %96 = sext i32 %88 to i64, !dbg !2137
  %97 = zext i32 %90 to i64, !dbg !2137
  %98 = shl nsw i64 %96, 3, !dbg !2137
  %99 = getelementptr i8, i8* %79, i64 %98, !dbg !2137
  %100 = zext i32 %90 to i64, !dbg !2137
  %101 = shl nuw nsw i64 %100, 3, !dbg !2137
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %95, i64 %101, i1 false), !dbg !2139
  br label %102, !dbg !2137

102:                                              ; preds = %102, %92
  %103 = phi i64 [ 0, %92 ], [ %106, %102 ]
  %104 = phi i64 [ %96, %92 ], [ %105, %102 ]
  call void @llvm.dbg.value(metadata i64 %104, metadata !2047, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %103, metadata !2046, metadata !DIExpression()), !dbg !2053
  %105 = add nsw i64 %104, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %105, metadata !2047, metadata !DIExpression()), !dbg !2053
  %106 = add nuw nsw i64 %103, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %106, metadata !2046, metadata !DIExpression()), !dbg !2053
  %107 = icmp ult i64 %106, %97, !dbg !2136
  br i1 %107, label %102, label %108, !dbg !2137, !llvm.loop !2142

108:                                              ; preds = %102
  %109 = trunc i64 %105 to i32, !dbg !2144
  br label %110, !dbg !2144

110:                                              ; preds = %108, %86
  %111 = phi i32 [ %88, %86 ], [ %109, %108 ], !dbg !2145
  call void @llvm.dbg.value(metadata i32 %111, metadata !2047, metadata !DIExpression()), !dbg !2053
  %112 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i64 0, i32 4, !dbg !2144
  call void @llvm.dbg.value(metadata %struct.strand_t* undef, metadata !2040, metadata !DIExpression()), !dbg !2053
  %113 = load %struct.strand_t*, %struct.strand_t** %112, align 8, !dbg !2145, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.strand_t* %113, metadata !2040, metadata !DIExpression()), !dbg !2053
  %114 = icmp eq %struct.strand_t* %113, null, !dbg !2124
  br i1 %114, label %115, label %86, !dbg !2124, !llvm.loop !2146

115:                                              ; preds = %110, %82
  %116 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2148
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %116, metadata !2039, metadata !DIExpression()), !dbg !2053
  %117 = icmp eq %struct._IO_FILE* %116, null, !dbg !2150
  br i1 %117, label %122, label %118, !dbg !2151

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2046, metadata !DIExpression()), !dbg !2053
  %119 = icmp sgt i32 %76, 0, !dbg !2152
  br i1 %119, label %120, label %227, !dbg !2155

120:                                              ; preds = %118
  %121 = zext i32 %76 to i64, !dbg !2152
  br label %125, !dbg !2155

122:                                              ; preds = %115
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2156, !tbaa !470
  %124 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %0) #17, !dbg !2158
  br label %227, !dbg !2159

125:                                              ; preds = %223, %120
  %126 = phi i64 [ 0, %120 ], [ %224, %223 ]
  %127 = phi i32 [ 0, %120 ], [ %225, %223 ]
  call void @llvm.dbg.value(metadata i32 %127, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %126, metadata !2046, metadata !DIExpression()), !dbg !2053
  %128 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %80, i64 %126, !dbg !2160
  %129 = load %struct.residue_t*, %struct.residue_t** %128, align 8, !dbg !2160, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %129, metadata !2041, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2048, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %127, metadata !2051, metadata !DIExpression()), !dbg !2053
  %130 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %129, i64 0, i32 15, !dbg !2162
  %131 = load i32, i32* %130, align 8, !dbg !2162, !tbaa !767
  %132 = icmp sgt i32 %131, 0, !dbg !2165
  br i1 %132, label %135, label %133, !dbg !2166

133:                                              ; preds = %125
  %134 = add nuw nsw i64 %126, 1, !dbg !2167
  br label %223, !dbg !2166

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %129, i64 0, i32 17, !dbg !2168
  %137 = add nuw nsw i64 %126, 1, !dbg !2170
  %138 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %129, i64 0, i32 4, !dbg !2170
  %139 = trunc i64 %137 to i32, !dbg !2170
  br label %140, !dbg !2166

140:                                              ; preds = %207, %135
  %141 = phi i32 [ %131, %135 ], [ %208, %207 ]
  %142 = phi i64 [ 0, %135 ], [ %210, %207 ]
  %143 = phi i32 [ %127, %135 ], [ %209, %207 ]
  call void @llvm.dbg.value(metadata i32 %143, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %142, metadata !2048, metadata !DIExpression()), !dbg !2053
  %144 = load %struct.atom_t*, %struct.atom_t** %136, align 8, !dbg !2181, !tbaa !1536
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2043, metadata !DIExpression()), !dbg !2053
  %145 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 2, !dbg !2182
  %146 = load i32, i32* %145, align 8, !dbg !2182, !tbaa !844
  %147 = and i32 %146, 2, !dbg !2183
  %148 = icmp eq i32 %147, 0, !dbg !2183
  br i1 %148, label %207, label %218, !dbg !2184

149:                                              ; preds = %218, %159
  %150 = phi i64 [ 0, %218 ], [ %160, %159 ]
  %151 = phi i32 [ %143, %218 ], [ %161, %159 ]
  call void @llvm.dbg.value(metadata i32 %151, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %150, metadata !2047, metadata !DIExpression()), !dbg !2053
  %152 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %80, i64 %150, !dbg !2185
  %153 = load %struct.residue_t*, %struct.residue_t** %152, align 8, !dbg !2185, !tbaa !470
  call void @llvm.dbg.value(metadata %struct.residue_t* %153, metadata !2042, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %151, metadata !2051, metadata !DIExpression()), !dbg !2053
  %154 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i64 0, i32 15, !dbg !2186
  %155 = load i32, i32* %154, align 8, !dbg !2186, !tbaa !767
  %156 = icmp sgt i32 %155, 0, !dbg !2187
  br i1 %156, label %213, label %157, !dbg !2188

157:                                              ; preds = %149
  %158 = add nuw nsw i64 %150, 1, !dbg !2189
  br label %159, !dbg !2188

159:                                              ; preds = %199, %157
  %160 = phi i64 [ %158, %157 ], [ %215, %199 ], !dbg !2189
  %161 = phi i32 [ %151, %157 ], [ %201, %199 ], !dbg !2190
  call void @llvm.dbg.value(metadata i32 %161, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %160, metadata !2047, metadata !DIExpression()), !dbg !2053
  %162 = icmp eq i64 %160, %121, !dbg !2191
  br i1 %162, label %205, label %149, !dbg !2192, !llvm.loop !2193

163:                                              ; preds = %213, %199
  %164 = phi i32 [ %155, %213 ], [ %200, %199 ]
  %165 = phi i64 [ 0, %213 ], [ %202, %199 ]
  %166 = phi i32 [ %151, %213 ], [ %201, %199 ]
  call void @llvm.dbg.value(metadata i32 %166, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %165, metadata !2049, metadata !DIExpression()), !dbg !2053
  %167 = load %struct.atom_t*, %struct.atom_t** %214, align 8, !dbg !2195, !tbaa !1536
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2044, metadata !DIExpression()), !dbg !2053
  %168 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 2, !dbg !2196
  %169 = load i32, i32* %168, align 8, !dbg !2196, !tbaa !844
  %170 = and i32 %169, 1, !dbg !2197
  %171 = icmp eq i32 %170, 0, !dbg !2197
  br i1 %171, label %199, label %172, !dbg !2198

172:                                              ; preds = %163
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2044, metadata !DIExpression()), !dbg !2053
  %173 = load i8*, i8** %138, align 8, !dbg !2199, !tbaa !758
  %174 = load i8*, i8** %219, align 8, !dbg !2200, !tbaa !528
  %175 = load i8*, i8** %216, align 8, !dbg !2201, !tbaa !758
  %176 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 0, !dbg !2202
  %177 = load i8*, i8** %176, align 8, !dbg !2202, !tbaa !528
  %178 = load double, double* %220, align 8, !dbg !2203, !tbaa !720
  %179 = load double, double* %221, align 8, !dbg !2203, !tbaa !720
  %180 = load double, double* %222, align 8, !dbg !2203, !tbaa !720
  %181 = getelementptr %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 17, i64 0, !dbg !2203
  %182 = load double, double* %181, align 8, !dbg !2203, !tbaa !720
  %183 = getelementptr %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 17, i64 1, !dbg !2203
  %184 = load double, double* %183, align 8, !dbg !2203, !tbaa !720
  %185 = getelementptr %struct.atom_t, %struct.atom_t* %167, i64 %165, i32 17, i64 2, !dbg !2203
  %186 = load double, double* %185, align 8, !dbg !2203, !tbaa !720
  %187 = fsub double %178, %182, !dbg !2204
  call void @llvm.dbg.value(metadata double %187, metadata !2211, metadata !DIExpression()) #16, !dbg !2215
  %188 = fsub double %179, %184, !dbg !2216
  call void @llvm.dbg.value(metadata double %188, metadata !2212, metadata !DIExpression()) #16, !dbg !2215
  %189 = fsub double %180, %186, !dbg !2217
  call void @llvm.dbg.value(metadata double %189, metadata !2213, metadata !DIExpression()) #16, !dbg !2215
  %190 = fmul double %187, %187, !dbg !2218
  %191 = fmul double %188, %188, !dbg !2219
  %192 = fadd double %190, %191, !dbg !2220
  %193 = fmul double %189, %189, !dbg !2221
  %194 = fadd double %192, %193, !dbg !2222
  %195 = tail call double @sqrt(double %194) #16, !dbg !2223
  %196 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %139, i8* %173, i8* %174, i32 %217, i8* %175, i8* %177, double %195), !dbg !2224
  %197 = add nsw i32 %166, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i32 %197, metadata !2051, metadata !DIExpression()), !dbg !2053
  %198 = load i32, i32* %154, align 8, !dbg !2186, !tbaa !767
  br label %199, !dbg !2226

199:                                              ; preds = %172, %163
  %200 = phi i32 [ %198, %172 ], [ %164, %163 ], !dbg !2186
  %201 = phi i32 [ %197, %172 ], [ %166, %163 ], !dbg !2190
  call void @llvm.dbg.value(metadata i32 %201, metadata !2051, metadata !DIExpression()), !dbg !2053
  %202 = add nuw nsw i64 %165, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %202, metadata !2049, metadata !DIExpression()), !dbg !2053
  %203 = sext i32 %200 to i64, !dbg !2187
  %204 = icmp slt i64 %202, %203, !dbg !2187
  br i1 %204, label %163, label %159, !dbg !2188, !llvm.loop !2228

205:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i32 %161, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %161, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %161, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %161, metadata !2051, metadata !DIExpression()), !dbg !2053
  %206 = load i32, i32* %130, align 8, !dbg !2162, !tbaa !767
  br label %207, !dbg !2230

207:                                              ; preds = %205, %140
  %208 = phi i32 [ %141, %140 ], [ %206, %205 ], !dbg !2162
  %209 = phi i32 [ %143, %140 ], [ %161, %205 ], !dbg !2231
  call void @llvm.dbg.value(metadata i32 %209, metadata !2051, metadata !DIExpression()), !dbg !2053
  %210 = add nuw nsw i64 %142, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %210, metadata !2048, metadata !DIExpression()), !dbg !2053
  %211 = sext i32 %208 to i64, !dbg !2165
  %212 = icmp slt i64 %210, %211, !dbg !2165
  br i1 %212, label %140, label %223, !dbg !2166, !llvm.loop !2232

213:                                              ; preds = %149
  %214 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i64 0, i32 17, !dbg !2234
  %215 = add nuw nsw i64 %150, 1, !dbg !2170
  %216 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %153, i64 0, i32 4, !dbg !2170
  %217 = trunc i64 %215 to i32, !dbg !2170
  br label %163, !dbg !2188

218:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i32 %143, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 0, metadata !2047, metadata !DIExpression()), !dbg !2053
  %219 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 0, !dbg !2170
  %220 = getelementptr %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 17, i64 0, !dbg !2170
  %221 = getelementptr %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 17, i64 1, !dbg !2170
  %222 = getelementptr %struct.atom_t, %struct.atom_t* %144, i64 %142, i32 17, i64 2, !dbg !2170
  br label %149, !dbg !2192

223:                                              ; preds = %207, %133
  %224 = phi i64 [ %134, %133 ], [ %137, %207 ], !dbg !2167
  %225 = phi i32 [ %127, %133 ], [ %209, %207 ], !dbg !2231
  call void @llvm.dbg.value(metadata i32 %225, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %224, metadata !2046, metadata !DIExpression()), !dbg !2053
  %226 = icmp eq i64 %224, %121, !dbg !2152
  br i1 %226, label %227, label %125, !dbg !2155, !llvm.loop !2235

227:                                              ; preds = %223, %122, %118
  %228 = phi i32 [ 0, %122 ], [ 0, %118 ], [ %225, %223 ], !dbg !2053
  call void @llvm.dbg.value(metadata i32 %228, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.label(metadata !2052), !dbg !2129
  tail call void @free(i8* nonnull %79) #16, !dbg !2237
  br label %229, !dbg !2237

229:                                              ; preds = %227, %83, %6
  %230 = phi i32 [ 0, %6 ], [ %228, %227 ], [ 0, %83 ], !dbg !2053
  ret i32 %230, !dbg !2239
}

declare !dbg !114 dso_local void @select_atoms(%struct.molecule_t*, i8*) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* nocapture readonly %1) local_unnamed_addr #9 !dbg !2240 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !2247, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !2248, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 0, metadata !2251, metadata !DIExpression()), !dbg !2253
  %3 = icmp eq i8* %0, null, !dbg !2254
  br i1 %3, label %7, label %4, !dbg !2256

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1, !dbg !2257, !tbaa !464
  %6 = icmp eq i8 %5, 0, !dbg !2258
  br i1 %6, label %7, label %10, !dbg !2259

7:                                                ; preds = %4, %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2260, !tbaa !470
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %8) #17, !dbg !2262
  call void @llvm.dbg.value(metadata i32 1, metadata !2251, metadata !DIExpression()), !dbg !2253
  br label %43, !dbg !2263

10:                                               ; preds = %4
  %11 = tail call i32 @strcmp(i8* nonnull %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #15, !dbg !2264
  %12 = icmp eq i32 %11, 0, !dbg !2264
  br i1 %12, label %13, label %15, !dbg !2266

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2267, !tbaa !470
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !2248, metadata !DIExpression()), !dbg !2253
  br label %21, !dbg !2268

15:                                               ; preds = %10
  %16 = tail call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2269
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !2248, metadata !DIExpression()), !dbg !2253
  %17 = icmp eq %struct._IO_FILE* %16, null, !dbg !2271
  br i1 %17, label %18, label %21, !dbg !2272

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2273, !tbaa !470
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %0) #17, !dbg !2275
  call void @llvm.dbg.value(metadata i32 1, metadata !2251, metadata !DIExpression()), !dbg !2253
  br label %43, !dbg !2276

21:                                               ; preds = %15, %13
  %22 = phi %struct._IO_FILE* [ %16, %15 ], [ %14, %13 ], !dbg !2277
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !2248, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 0, metadata !2249, metadata !DIExpression()), !dbg !2253
  br label %23, !dbg !2278

23:                                               ; preds = %32, %21
  %24 = phi i64 [ 0, %21 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !2249, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i32 0, metadata !2250, metadata !DIExpression()), !dbg !2253
  br label %25, !dbg !2280

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %30, %25 ]
  call void @llvm.dbg.value(metadata i64 %26, metadata !2250, metadata !DIExpression()), !dbg !2253
  %27 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %24, i64 %26, !dbg !2284
  %28 = load double, double* %27, align 8, !dbg !2284, !tbaa !720
  %29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %28), !dbg !2286
  %30 = add nuw nsw i64 %26, 1, !dbg !2287
  call void @llvm.dbg.value(metadata i64 %30, metadata !2250, metadata !DIExpression()), !dbg !2253
  %31 = icmp eq i64 %30, 4, !dbg !2288
  br i1 %31, label %32, label %25, !dbg !2280, !llvm.loop !2289

32:                                               ; preds = %25
  %33 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22), !dbg !2291
  %34 = add nuw nsw i64 %24, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %34, metadata !2249, metadata !DIExpression()), !dbg !2253
  %35 = icmp eq i64 %34, 4, !dbg !2293
  br i1 %35, label %36, label %23, !dbg !2278, !llvm.loop !2294

36:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i32 0, metadata !2251, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %22, metadata !2248, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.label(metadata !2252), !dbg !2296
  %37 = icmp eq %struct._IO_FILE* %22, null, !dbg !2297
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2299
  %39 = icmp eq %struct._IO_FILE* %22, %38, !dbg !2300
  %40 = or i1 %37, %39, !dbg !2301
  br i1 %40, label %43, label %41, !dbg !2301

41:                                               ; preds = %36
  %42 = tail call i32 @fclose(%struct._IO_FILE* nonnull %22), !dbg !2302
  br label %43, !dbg !2302

43:                                               ; preds = %41, %36, %18, %7
  %44 = phi i32 [ 0, %36 ], [ 0, %41 ], [ 1, %7 ], [ 1, %18 ]
  ret i32 %44, !dbg !2303
}

; Function Attrs: nofree nounwind
declare dso_local i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @initres() unnamed_addr #0 !dbg !2304 {
  tail call void @NAB_initres(%struct.residue_t* nonnull @res, i32 0) #16, !dbg !2305
  %1 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2306, !tbaa !758
  %2 = icmp eq i8* %1, null, !dbg !2308
  br i1 %2, label %3, label %9, !dbg !2309

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #16, !dbg !2310
  store i8* %4, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !2312, !tbaa !758
  %5 = icmp eq i8* %4, null, !dbg !2313
  br i1 %5, label %6, label %9, !dbg !2315

6:                                                ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2316, !tbaa !470
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %7) #17, !dbg !2318
  tail call void @exit(i32 1) #19, !dbg !2319
  unreachable, !dbg !2319

9:                                                ; preds = %3, %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2320, !tbaa !761
  %11 = icmp eq i8* %10, null, !dbg !2322
  br i1 %11, label %12, label %18, !dbg !2323

12:                                               ; preds = %9
  %13 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #16, !dbg !2324
  store i8* %13, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !2326, !tbaa !761
  %14 = icmp eq i8* %13, null, !dbg !2327
  br i1 %14, label %15, label %18, !dbg !2329

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2330, !tbaa !470
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %16) #17, !dbg !2332
  tail call void @exit(i32 1) #19, !dbg !2333
  unreachable, !dbg !2333

18:                                               ; preds = %12, %9
  %19 = load i32, i32* @n_atab, align 4, !dbg !2334, !tbaa !560
  store i32 %19, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2335, !tbaa !767
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2336, !tbaa !1536
  ret void, !dbg !2337
}

declare !dbg !325 dso_local %struct.molecule_t* @newmolecule() local_unnamed_addr #4

declare !dbg !328 dso_local i8* @ggets(i8*, i32, %struct._IO_FILE*) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare dso_local i8* @strncpy(i8* noalias returned, i8* noalias nocapture readonly, i64) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare dso_local i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @makebonds() unnamed_addr #9 !dbg !2338 {
  call void @llvm.dbg.value(metadata %struct.residue_t* @res, metadata !2342, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2350
  %1 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2351, !tbaa !767
  %2 = icmp sgt i32 %1, 0, !dbg !2354
  br i1 %2, label %3, label %179, !dbg !2355

3:                                                ; preds = %0
  %4 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2356, !tbaa !1536
  %5 = zext i32 %1 to i64, !dbg !2355
  br label %10, !dbg !2355

6:                                                ; preds = %10
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2350
  %7 = icmp sgt i32 %1, 1, !dbg !2358
  br i1 %7, label %8, label %179, !dbg !2361

8:                                                ; preds = %6
  %9 = tail call i16** @__ctype_b_loc() #20, !dbg !2362
  br label %21, !dbg !2361

10:                                               ; preds = %10, %3
  %11 = phi i64 [ 0, %3 ], [ %13, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2343, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2345, metadata !DIExpression()), !dbg !2350
  %12 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %4, i64 %11, i32 3, !dbg !2365
  store i32 0, i32* %12, align 4, !dbg !2366, !tbaa !2367
  %13 = add nuw nsw i64 %11, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %13, metadata !2343, metadata !DIExpression()), !dbg !2350
  %14 = icmp ult i64 %13, %5, !dbg !2354
  br i1 %14, label %10, label %6, !dbg !2355, !llvm.loop !2369

15:                                               ; preds = %171, %91, %38
  %16 = phi i32 [ %22, %38 ], [ %93, %91 ], [ %173, %171 ], !dbg !2371
  call void @llvm.dbg.value(metadata i64 %40, metadata !2343, metadata !DIExpression()), !dbg !2350
  %17 = add nsw i32 %16, -1, !dbg !2372
  %18 = sext i32 %17 to i64, !dbg !2358
  %19 = icmp slt i64 %40, %18, !dbg !2358
  %20 = add nuw nsw i64 %24, 1, !dbg !2361
  br i1 %19, label %21, label %179, !dbg !2361

21:                                               ; preds = %15, %8
  %22 = phi i32 [ %1, %8 ], [ %16, %15 ]
  %23 = phi i64 [ 0, %8 ], [ %40, %15 ]
  %24 = phi i64 [ 1, %8 ], [ %20, %15 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !2343, metadata !DIExpression()), !dbg !2350
  %25 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2373, !tbaa !1536
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2345, metadata !DIExpression()), !dbg !2350
  %26 = load i16*, i16** %9, align 8, !dbg !2374, !tbaa !470
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 0, !dbg !2374
  %28 = load i8*, i8** %27, align 8, !dbg !2374, !tbaa !528
  %29 = load i8, i8* %28, align 1, !dbg !2374, !tbaa !464
  %30 = sext i8 %29 to i64, !dbg !2374
  %31 = getelementptr inbounds i16, i16* %26, i64 %30, !dbg !2374
  %32 = load i16, i16* %31, align 2, !dbg !2374, !tbaa !2375
  %33 = and i16 %32, 2048, !dbg !2374
  %34 = icmp eq i16 %33, 0, !dbg !2374
  br i1 %34, label %38, label %35, !dbg !2377

35:                                               ; preds = %21
  %36 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2378
  %37 = load i8, i8* %36, align 1, !dbg !2378, !tbaa !464
  call void @llvm.dbg.value(metadata i1 undef, metadata !2347, metadata !DIExpression()), !dbg !2350
  br label %38, !dbg !2379

38:                                               ; preds = %35, %21
  %39 = phi i8 [ %37, %35 ], [ %29, %21 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !2347, metadata !DIExpression()), !dbg !2350
  %40 = add nuw nsw i64 %23, 1, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %40, metadata !2344, metadata !DIExpression()), !dbg !2350
  %41 = sext i32 %22 to i64, !dbg !2382
  %42 = icmp slt i64 %40, %41, !dbg !2382
  br i1 %42, label %43, label %15, !dbg !2384, !llvm.loop !2385

43:                                               ; preds = %38
  %44 = or i8 %39, 32, !dbg !2362
  %45 = icmp eq i8 %44, 104, !dbg !2362
  call void @llvm.dbg.value(metadata i1 %45, metadata !2347, metadata !DIExpression()), !dbg !2350
  %46 = getelementptr %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 17, i64 0, !dbg !2387
  %47 = getelementptr %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 17, i64 1, !dbg !2387
  %48 = getelementptr %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 17, i64 2, !dbg !2387
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 3, !dbg !2389
  %50 = trunc i64 %23 to i32, !dbg !2394
  br i1 %45, label %53, label %51, !dbg !2384

51:                                               ; preds = %43
  %52 = trunc i64 %23 to i32, !dbg !2395
  br label %98, !dbg !2384

53:                                               ; preds = %96, %43
  %54 = phi %struct.atom_t* [ %97, %96 ], [ %25, %43 ], !dbg !2401
  %55 = phi i64 [ %92, %96 ], [ %24, %43 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !2344, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2346, metadata !DIExpression()), !dbg !2350
  %56 = load double, double* %46, align 8, !dbg !2402, !tbaa !720
  %57 = load double, double* %47, align 8, !dbg !2402, !tbaa !720
  %58 = load double, double* %48, align 8, !dbg !2402, !tbaa !720
  %59 = getelementptr %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 17, i64 0, !dbg !2402
  %60 = load double, double* %59, align 8, !dbg !2402, !tbaa !720
  %61 = getelementptr %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 17, i64 1, !dbg !2402
  %62 = load double, double* %61, align 8, !dbg !2402, !tbaa !720
  %63 = getelementptr %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 17, i64 2, !dbg !2402
  %64 = load double, double* %63, align 8, !dbg !2402, !tbaa !720
  %65 = fsub double %56, %60, !dbg !2403
  call void @llvm.dbg.value(metadata double %65, metadata !2211, metadata !DIExpression()) #16, !dbg !2405
  %66 = fsub double %57, %62, !dbg !2406
  call void @llvm.dbg.value(metadata double %66, metadata !2212, metadata !DIExpression()) #16, !dbg !2405
  %67 = fsub double %58, %64, !dbg !2407
  call void @llvm.dbg.value(metadata double %67, metadata !2213, metadata !DIExpression()) #16, !dbg !2405
  %68 = fmul double %65, %65, !dbg !2408
  %69 = fmul double %66, %66, !dbg !2409
  %70 = fadd double %68, %69, !dbg !2410
  %71 = fmul double %67, %67, !dbg !2411
  %72 = fadd double %70, %71, !dbg !2412
  %73 = tail call double @sqrt(double %72) #16, !dbg !2413
  call void @llvm.dbg.value(metadata double %73, metadata !2349, metadata !DIExpression()), !dbg !2350
  %74 = fcmp ugt double %73, 1.200000e+00, !dbg !2414
  br i1 %74, label %91, label %75, !dbg !2415

75:                                               ; preds = %53
  %76 = load i32, i32* %49, align 4, !dbg !2416, !tbaa !2367
  %77 = icmp slt i32 %76, 8, !dbg !2417
  br i1 %77, label %78, label %91, !dbg !2418

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 3, !dbg !2419
  %80 = load i32, i32* %79, align 4, !dbg !2419, !tbaa !2367
  %81 = icmp slt i32 %80, 8, !dbg !2420
  br i1 %81, label %82, label %91, !dbg !2421

82:                                               ; preds = %78
  %83 = add nsw i32 %76, 1, !dbg !2422
  store i32 %83, i32* %49, align 4, !dbg !2422, !tbaa !2367
  %84 = sext i32 %76 to i64, !dbg !2423
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 4, i64 %84, !dbg !2423
  %86 = trunc i64 %55 to i32, !dbg !2424
  store i32 %86, i32* %85, align 4, !dbg !2424, !tbaa !560
  %87 = load i32, i32* %79, align 4, !dbg !2425, !tbaa !2367
  %88 = add nsw i32 %87, 1, !dbg !2425
  store i32 %88, i32* %79, align 4, !dbg !2425, !tbaa !2367
  %89 = sext i32 %87 to i64, !dbg !2426
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %54, i64 %55, i32 4, i64 %89, !dbg !2426
  store i32 %50, i32* %90, align 4, !dbg !2427, !tbaa !560
  br label %91, !dbg !2428

91:                                               ; preds = %82, %78, %75, %53
  %92 = add nuw nsw i64 %55, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %92, metadata !2344, metadata !DIExpression()), !dbg !2350
  %93 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2430, !tbaa !767
  %94 = trunc i64 %92 to i32, !dbg !2382
  %95 = icmp sgt i32 %93, %94, !dbg !2382
  br i1 %95, label %96, label %15, !dbg !2384, !llvm.loop !2431

96:                                               ; preds = %91
  %97 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2401, !tbaa !1536
  br label %53, !dbg !2384

98:                                               ; preds = %176, %51
  %99 = phi i16* [ %26, %51 ], [ %178, %176 ], !dbg !2433
  %100 = phi %struct.atom_t* [ %25, %51 ], [ %177, %176 ], !dbg !2401
  %101 = phi i64 [ %24, %51 ], [ %172, %176 ]
  call void @llvm.dbg.value(metadata i64 %101, metadata !2344, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata %struct.atom_t* undef, metadata !2346, metadata !DIExpression()), !dbg !2350
  %102 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 0, !dbg !2433
  %103 = load i8*, i8** %102, align 8, !dbg !2433, !tbaa !528
  %104 = load i8, i8* %103, align 1, !dbg !2433, !tbaa !464
  %105 = sext i8 %104 to i64, !dbg !2433
  %106 = getelementptr inbounds i16, i16* %99, i64 %105, !dbg !2433
  %107 = load i16, i16* %106, align 2, !dbg !2433, !tbaa !2375
  %108 = and i16 %107, 2048, !dbg !2433
  %109 = icmp eq i16 %108, 0, !dbg !2433
  br i1 %109, label %113, label %110, !dbg !2435

110:                                              ; preds = %98
  %111 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !2436
  %112 = load i8, i8* %111, align 1, !dbg !2436, !tbaa !464
  call void @llvm.dbg.value(metadata i1 undef, metadata !2348, metadata !DIExpression()), !dbg !2350
  br label %113, !dbg !2437

113:                                              ; preds = %110, %98
  %114 = phi i8 [ %112, %110 ], [ %104, %98 ]
  %115 = or i8 %114, 32, !dbg !2438
  %116 = icmp eq i8 %115, 104, !dbg !2438
  call void @llvm.dbg.value(metadata i1 %116, metadata !2348, metadata !DIExpression()), !dbg !2350
  %117 = load double, double* %46, align 8, !dbg !2402, !tbaa !720
  %118 = load double, double* %47, align 8, !dbg !2402, !tbaa !720
  %119 = load double, double* %48, align 8, !dbg !2402, !tbaa !720
  %120 = getelementptr %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 17, i64 0, !dbg !2402
  %121 = load double, double* %120, align 8, !dbg !2402, !tbaa !720
  %122 = getelementptr %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 17, i64 1, !dbg !2402
  %123 = load double, double* %122, align 8, !dbg !2402, !tbaa !720
  %124 = getelementptr %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 17, i64 2, !dbg !2402
  %125 = load double, double* %124, align 8, !dbg !2402, !tbaa !720
  %126 = fsub double %117, %121, !dbg !2403
  call void @llvm.dbg.value(metadata double %126, metadata !2211, metadata !DIExpression()) #16, !dbg !2405
  %127 = fsub double %118, %123, !dbg !2406
  call void @llvm.dbg.value(metadata double %127, metadata !2212, metadata !DIExpression()) #16, !dbg !2405
  %128 = fsub double %119, %125, !dbg !2407
  call void @llvm.dbg.value(metadata double %128, metadata !2213, metadata !DIExpression()) #16, !dbg !2405
  %129 = fmul double %126, %126, !dbg !2408
  %130 = fmul double %127, %127, !dbg !2409
  %131 = fadd double %129, %130, !dbg !2410
  %132 = fmul double %128, %128, !dbg !2411
  %133 = fadd double %131, %132, !dbg !2412
  %134 = tail call double @sqrt(double %133) #16, !dbg !2413
  call void @llvm.dbg.value(metadata double %134, metadata !2349, metadata !DIExpression()), !dbg !2350
  br i1 %116, label %135, label %153, !dbg !2439

135:                                              ; preds = %113
  %136 = fcmp ugt double %134, 1.200000e+00, !dbg !2414
  br i1 %136, label %171, label %137, !dbg !2415

137:                                              ; preds = %135
  %138 = load i32, i32* %49, align 4, !dbg !2416, !tbaa !2367
  %139 = icmp slt i32 %138, 8, !dbg !2417
  br i1 %139, label %140, label %171, !dbg !2418

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 3, !dbg !2419
  %142 = load i32, i32* %141, align 4, !dbg !2419, !tbaa !2367
  %143 = icmp slt i32 %142, 8, !dbg !2420
  br i1 %143, label %144, label %171, !dbg !2421

144:                                              ; preds = %140
  %145 = add nsw i32 %138, 1, !dbg !2422
  store i32 %145, i32* %49, align 4, !dbg !2422, !tbaa !2367
  %146 = sext i32 %138 to i64, !dbg !2423
  %147 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 4, i64 %146, !dbg !2423
  %148 = trunc i64 %101 to i32, !dbg !2424
  store i32 %148, i32* %147, align 4, !dbg !2424, !tbaa !560
  %149 = load i32, i32* %141, align 4, !dbg !2425, !tbaa !2367
  %150 = add nsw i32 %149, 1, !dbg !2425
  store i32 %150, i32* %141, align 4, !dbg !2425, !tbaa !2367
  %151 = sext i32 %149 to i64, !dbg !2426
  %152 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 4, i64 %151, !dbg !2426
  store i32 %52, i32* %152, align 4, !dbg !2427, !tbaa !560
  br label %171, !dbg !2428

153:                                              ; preds = %113
  %154 = fcmp ugt double %134, 1.850000e+00, !dbg !2440
  br i1 %154, label %171, label %155, !dbg !2441

155:                                              ; preds = %153
  %156 = load i32, i32* %49, align 4, !dbg !2442, !tbaa !2367
  %157 = icmp slt i32 %156, 8, !dbg !2443
  br i1 %157, label %158, label %171, !dbg !2444

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 3, !dbg !2445
  %160 = load i32, i32* %159, align 4, !dbg !2445, !tbaa !2367
  %161 = icmp slt i32 %160, 8, !dbg !2446
  br i1 %161, label %162, label %171, !dbg !2447

162:                                              ; preds = %158
  %163 = add nsw i32 %156, 1, !dbg !2448
  store i32 %163, i32* %49, align 4, !dbg !2448, !tbaa !2367
  %164 = sext i32 %156 to i64, !dbg !2450
  %165 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i64 %23, i32 4, i64 %164, !dbg !2450
  %166 = trunc i64 %101 to i32, !dbg !2451
  store i32 %166, i32* %165, align 4, !dbg !2451, !tbaa !560
  %167 = load i32, i32* %159, align 4, !dbg !2452, !tbaa !2367
  %168 = add nsw i32 %167, 1, !dbg !2452
  store i32 %168, i32* %159, align 4, !dbg !2452, !tbaa !2367
  %169 = sext i32 %167 to i64, !dbg !2453
  %170 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %100, i64 %101, i32 4, i64 %169, !dbg !2453
  store i32 %50, i32* %170, align 4, !dbg !2454, !tbaa !560
  br label %171, !dbg !2455

171:                                              ; preds = %162, %158, %155, %153, %144, %140, %137, %135
  %172 = add nuw nsw i64 %101, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %172, metadata !2344, metadata !DIExpression()), !dbg !2350
  %173 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !2430, !tbaa !767
  %174 = trunc i64 %172 to i32, !dbg !2382
  %175 = icmp sgt i32 %173, %174, !dbg !2382
  br i1 %175, label %176, label %15, !dbg !2384, !llvm.loop !2431

176:                                              ; preds = %171
  %177 = load %struct.atom_t*, %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !2401, !tbaa !1536
  %178 = load i16*, i16** %9, align 8, !dbg !2433, !tbaa !470
  br label %98, !dbg !2384

179:                                              ; preds = %15, %6, %0
  ret void, !dbg !2456
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
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare dso_local double @sqrt(double) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nofree nounwind readonly }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { cold nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind readnone }

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
!964 = !DILocation(line: 180, column: 10, scope: !965)
!965 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!966 = !DILocation(line: 180, column: 5, scope: !965)
!967 = !DILocation(line: 180, column: 17, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 180, column: 5)
!969 = !DILocation(line: 181, column: 13, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 181, column: 13)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 180, column: 49)
!972 = !DILocation(line: 181, column: 19, scope: !970)
!973 = !DILocation(line: 181, column: 13, scope: !971)
!974 = distinct !{!974, !966, !975}
!975 = !DILocation(line: 201, column: 5, scope: !965)
!976 = !DILocation(line: 185, column: 23, scope: !971)
!977 = !DILocation(line: 185, column: 35, scope: !971)
!978 = !DILocation(line: 185, column: 47, scope: !971)
!979 = !DILocation(line: 185, column: 59, scope: !971)
!980 = !DILocation(line: 184, column: 15, scope: !971)
!981 = !DILocation(line: 190, column: 17, scope: !982)
!982 = distinct !DILexicalBlock(scope: !971, file: !3, line: 190, column: 13)
!983 = !DILocation(line: 190, column: 13, scope: !971)
!984 = !DILocation(line: 191, column: 21, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !3, line: 190, column: 23)
!986 = !DILocation(line: 193, column: 23, scope: !985)
!987 = !DILocation(line: 191, column: 13, scope: !985)
!988 = !DILocation(line: 194, column: 13, scope: !985)
!989 = !DILocation(line: 196, column: 13, scope: !985)
!990 = !DILocation(line: 198, column: 10, scope: !971)
!991 = !DILocation(line: 199, column: 15, scope: !992)
!992 = distinct !DILexicalBlock(scope: !971, file: !3, line: 199, column: 13)
!993 = !DILocation(line: 199, column: 13, scope: !971)
!994 = !DILocation(line: 202, column: 11, scope: !995)
!995 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!996 = !DILocation(line: 202, column: 9, scope: !2)
!997 = !DILocation(line: 203, column: 17, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 202, column: 17)
!999 = !DILocation(line: 203, column: 9, scope: !998)
!1000 = !DILocation(line: 205, column: 9, scope: !998)
!1001 = !DILocation(line: 207, column: 9, scope: !998)
!1002 = !DILocation(line: 210, column: 3, scope: !2)
!1003 = !DILocation(line: 212, column: 12, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!1005 = !DILocation(line: 212, column: 29, scope: !1004)
!1006 = !DILocation(line: 212, column: 26, scope: !1004)
!1007 = !DILocation(line: 212, column: 20, scope: !1004)
!1008 = !DILocation(line: 213, column: 9, scope: !1004)
!1009 = !DILocation(line: 217, column: 1, scope: !2)
!1010 = !DILocation(line: 216, column: 5, scope: !2)
!1011 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !1012, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!37, !13, !392, !13}
!1014 = !{!1015, !1016, !1017, !1018, !1019}
!1015 = !DILocalVariable(name: "fname", arg: 1, scope: !1011, file: !3, line: 225, type: !13)
!1016 = !DILocalVariable(name: "mol", arg: 2, scope: !1011, file: !3, line: 225, type: !392)
!1017 = !DILocalVariable(name: "options", arg: 3, scope: !1011, file: !3, line: 225, type: !13)
!1018 = !DILocalVariable(name: "fp", scope: !1011, file: !3, line: 227, type: !371)
!1019 = !DILocalVariable(name: "ier", scope: !1011, file: !3, line: 228, type: !37)
!1020 = !DILocalVariable(name: "rname", scope: !1021, file: !3, line: 868, type: !1038)
!1021 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1022, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1024)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !371, !392, !13}
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1020, !1037, !1039, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1025 = !DILocalVariable(name: "fp", arg: 1, scope: !1021, file: !3, line: 849, type: !371)
!1026 = !DILocalVariable(name: "mol", arg: 2, scope: !1021, file: !3, line: 849, type: !392)
!1027 = !DILocalVariable(name: "options", arg: 3, scope: !1021, file: !3, line: 849, type: !13)
!1028 = !DILocalVariable(name: "r", scope: !1021, file: !3, line: 863, type: !37)
!1029 = !DILocalVariable(name: "tr", scope: !1021, file: !3, line: 863, type: !37)
!1030 = !DILocalVariable(name: "rn", scope: !1021, file: !3, line: 863, type: !37)
!1031 = !DILocalVariable(name: "a", scope: !1021, file: !3, line: 863, type: !37)
!1032 = !DILocalVariable(name: "ta", scope: !1021, file: !3, line: 863, type: !37)
!1033 = !DILocalVariable(name: "cid", scope: !1021, file: !3, line: 864, type: !14)
!1034 = !DILocalVariable(name: "sp", scope: !1021, file: !3, line: 865, type: !128)
!1035 = !DILocalVariable(name: "res", scope: !1021, file: !3, line: 866, type: !144)
!1036 = !DILocalVariable(name: "ap", scope: !1021, file: !3, line: 867, type: !190)
!1037 = !DILocalVariable(name: "aname", scope: !1021, file: !3, line: 869, type: !1038)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !200)
!1039 = !DILocalVariable(name: "rid", scope: !1021, file: !3, line: 870, type: !1040)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1041)
!1041 = !{!1042}
!1042 = !DISubrange(count: 7)
!1043 = !DILocalVariable(name: "loptions", scope: !1021, file: !3, line: 871, type: !375)
!1044 = !DILocalVariable(name: "opt_pqr", scope: !1021, file: !3, line: 872, type: !37)
!1045 = !DILocalVariable(name: "opt_nobocc", scope: !1021, file: !3, line: 873, type: !37)
!1046 = !DILocalVariable(name: "opt_brook", scope: !1021, file: !3, line: 874, type: !37)
!1047 = !DILocalVariable(name: "opt_wwpdb", scope: !1021, file: !3, line: 875, type: !37)
!1048 = !DILocalVariable(name: "opt_tr", scope: !1021, file: !3, line: 876, type: !37)
!1049 = !DILocalVariable(name: "opt_nocid", scope: !1021, file: !3, line: 877, type: !37)
!1050 = !DILocalVariable(name: "opt_allcid", scope: !1021, file: !3, line: 878, type: !37)
!1051 = !DILocalVariable(name: "cidstate", scope: !1021, file: !3, line: 879, type: !343)
!1052 = !DILocation(line: 868, column: 10, scope: !1021, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 246, column: 13, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 245, column: 23)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 245, column: 13)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 238, column: 30)
!1057 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 238, column: 9)
!1058 = !DILocation(line: 869, column: 10, scope: !1021, inlinedAt: !1053)
!1059 = !DILocation(line: 870, column: 10, scope: !1021, inlinedAt: !1053)
!1060 = !DILocation(line: 871, column: 10, scope: !1021, inlinedAt: !1053)
!1061 = !DILocation(line: 0, scope: !1011)
!1062 = !DILocation(line: 230, column: 10, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 230, column: 9)
!1064 = !DILocation(line: 230, column: 9, scope: !1011)
!1065 = !DILocation(line: 231, column: 13, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 230, column: 15)
!1067 = !DILocation(line: 232, column: 21, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 231, column: 34)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 231, column: 13)
!1070 = !DILocation(line: 232, column: 13, scope: !1068)
!1071 = !DILocation(line: 233, column: 9, scope: !1068)
!1072 = !DILocation(line: 238, column: 9, scope: !1011)
!1073 = !DILocation(line: 239, column: 14, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 239, column: 13)
!1075 = !DILocation(line: 239, column: 13, scope: !1056)
!1076 = !DILocation(line: 240, column: 18, scope: !1074)
!1077 = !DILocation(line: 240, column: 13, scope: !1074)
!1078 = !DILocation(line: 241, column: 24, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 241, column: 18)
!1080 = !DILocation(line: 241, column: 43, scope: !1079)
!1081 = !DILocation(line: 241, column: 18, scope: !1074)
!1082 = !DILocation(line: 242, column: 13, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 241, column: 52)
!1084 = !DILocation(line: 245, column: 13, scope: !1056)
!1085 = !DILocation(line: 0, scope: !1021, inlinedAt: !1053)
!1086 = !DILocation(line: 868, column: 5, scope: !1021, inlinedAt: !1053)
!1087 = !DILocation(line: 869, column: 5, scope: !1021, inlinedAt: !1053)
!1088 = !DILocation(line: 870, column: 5, scope: !1021, inlinedAt: !1053)
!1089 = !DILocation(line: 871, column: 5, scope: !1021, inlinedAt: !1053)
!1090 = !DILocation(line: 885, column: 10, scope: !1091, inlinedAt: !1053)
!1091 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 885, column: 9)
!1092 = !DILocation(line: 885, column: 9, scope: !1021, inlinedAt: !1053)
!1093 = !DILocation(line: 886, column: 17, scope: !1094, inlinedAt: !1053)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 885, column: 14)
!1095 = !DILocation(line: 886, column: 9, scope: !1094, inlinedAt: !1053)
!1096 = !DILocation(line: 887, column: 9, scope: !1094, inlinedAt: !1053)
!1097 = !DILocation(line: 890, column: 17, scope: !1098, inlinedAt: !1053)
!1098 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 890, column: 9)
!1099 = !DILocation(line: 890, column: 9, scope: !1021, inlinedAt: !1053)
!1100 = !DILocation(line: 891, column: 19, scope: !1098, inlinedAt: !1053)
!1101 = !DILocation(line: 891, column: 9, scope: !1098, inlinedAt: !1053)
!1102 = !DILocation(line: 893, column: 9, scope: !1103, inlinedAt: !1053)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 892, column: 10)
!1104 = !DILocation(line: 894, column: 9, scope: !1103, inlinedAt: !1053)
!1105 = !DILocation(line: 894, column: 23, scope: !1103, inlinedAt: !1053)
!1106 = !DILocation(line: 896, column: 15, scope: !1021, inlinedAt: !1053)
!1107 = !DILocation(line: 896, column: 40, scope: !1021, inlinedAt: !1053)
!1108 = !DILocation(line: 897, column: 18, scope: !1021, inlinedAt: !1053)
!1109 = !DILocation(line: 897, column: 46, scope: !1021, inlinedAt: !1053)
!1110 = !DILocation(line: 898, column: 17, scope: !1021, inlinedAt: !1053)
!1111 = !DILocation(line: 898, column: 44, scope: !1021, inlinedAt: !1053)
!1112 = !DILocation(line: 899, column: 17, scope: !1021, inlinedAt: !1053)
!1113 = !DILocation(line: 899, column: 44, scope: !1021, inlinedAt: !1053)
!1114 = !DILocation(line: 900, column: 14, scope: !1021, inlinedAt: !1053)
!1115 = !DILocation(line: 900, column: 38, scope: !1021, inlinedAt: !1053)
!1116 = !DILocation(line: 901, column: 17, scope: !1021, inlinedAt: !1053)
!1117 = !DILocation(line: 901, column: 44, scope: !1021, inlinedAt: !1053)
!1118 = !DILocation(line: 902, column: 18, scope: !1021, inlinedAt: !1053)
!1119 = !DILocation(line: 902, column: 46, scope: !1021, inlinedAt: !1053)
!1120 = !DILocalVariable(name: "nocid", arg: 1, scope: !1121, file: !3, line: 1021, type: !37)
!1121 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !1122, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!343, !37, !37, !392}
!1124 = !{!1120, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1125 = !DILocalVariable(name: "allcid", arg: 2, scope: !1121, file: !3, line: 1021, type: !37)
!1126 = !DILocalVariable(name: "mol", arg: 3, scope: !1121, file: !3, line: 1021, type: !392)
!1127 = !DILocalVariable(name: "cid", scope: !1121, file: !3, line: 1023, type: !343)
!1128 = !DILocalVariable(name: "c", scope: !1121, file: !3, line: 1024, type: !37)
!1129 = !DILocalVariable(name: "sp", scope: !1121, file: !3, line: 1025, type: !128)
!1130 = !DILocalVariable(name: "err", scope: !1121, file: !3, line: 1026, type: !37)
!1131 = !DILabel(scope: !1121, name: "CLEAN_UP", file: !3, line: 1067)
!1132 = !DILocation(line: 0, scope: !1121, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 905, column: 16, scope: !1021, inlinedAt: !1053)
!1134 = !DILocation(line: 1028, column: 9, scope: !1135, inlinedAt: !1133)
!1135 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1028, column: 9)
!1136 = !DILocation(line: 1028, column: 9, scope: !1121, inlinedAt: !1133)
!1137 = !DILocation(line: 1031, column: 21, scope: !1121, inlinedAt: !1133)
!1138 = !DILocation(line: 1031, column: 11, scope: !1121, inlinedAt: !1133)
!1139 = !DILocation(line: 1032, column: 13, scope: !1140, inlinedAt: !1133)
!1140 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1032, column: 9)
!1141 = !DILocation(line: 1032, column: 9, scope: !1121, inlinedAt: !1133)
!1142 = !DILocation(line: 1033, column: 17, scope: !1143, inlinedAt: !1133)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 1032, column: 22)
!1144 = !DILocation(line: 1033, column: 9, scope: !1143, inlinedAt: !1133)
!1145 = !DILocation(line: 1067, column: 3, scope: !1121, inlinedAt: !1133)
!1146 = !DILocalVariable(name: "cid", arg: 1, scope: !1147, file: !3, line: 1011, type: !343)
!1147 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !1148, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !343}
!1150 = !{!1146}
!1151 = !DILocation(line: 0, scope: !1147, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 1070, column: 9, scope: !1153, inlinedAt: !1133)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 1069, column: 14)
!1154 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1069, column: 9)
!1155 = !DILocation(line: 1014, column: 9, scope: !1147, inlinedAt: !1152)
!1156 = !DILocation(line: 1037, column: 28, scope: !1121, inlinedAt: !1133)
!1157 = !DILocation(line: 1037, column: 10, scope: !1121, inlinedAt: !1133)
!1158 = !DILocation(line: 1037, column: 17, scope: !1121, inlinedAt: !1133)
!1159 = !{!1160, !471, i64 8}
!1160 = !{!"cid_t", !530, i64 0, !530, i64 4, !471, i64 8}
!1161 = !DILocation(line: 1038, column: 21, scope: !1162, inlinedAt: !1133)
!1162 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1038, column: 9)
!1163 = !DILocation(line: 1038, column: 9, scope: !1121, inlinedAt: !1133)
!1164 = !DILocation(line: 1043, column: 10, scope: !1121, inlinedAt: !1133)
!1165 = !DILocation(line: 1043, column: 17, scope: !1121, inlinedAt: !1133)
!1166 = !{!1160, !530, i64 0}
!1167 = !DILocation(line: 1044, column: 10, scope: !1121, inlinedAt: !1133)
!1168 = !DILocation(line: 1044, column: 17, scope: !1121, inlinedAt: !1133)
!1169 = !{!1160, !530, i64 4}
!1170 = !DILocation(line: 1045, column: 5, scope: !1171, inlinedAt: !1133)
!1171 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1045, column: 5)
!1172 = !DILocation(line: 1046, column: 24, scope: !1173, inlinedAt: !1133)
!1173 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 1045, column: 5)
!1174 = !DILocation(line: 1048, column: 9, scope: !1121, inlinedAt: !1133)
!1175 = !DILocation(line: 1054, column: 24, scope: !1176, inlinedAt: !1133)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 1054, column: 9)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1048, column: 17)
!1178 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 1048, column: 9)
!1179 = !DILocation(line: 0, scope: !1176, inlinedAt: !1133)
!1180 = !DILocation(line: 1054, column: 9, scope: !1176, inlinedAt: !1133)
!1181 = !DILocation(line: 1055, column: 28, scope: !1182, inlinedAt: !1133)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 1055, column: 17)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 1054, column: 56)
!1184 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 1054, column: 9)
!1185 = !DILocation(line: 1055, column: 17, scope: !1182, inlinedAt: !1133)
!1186 = !DILocation(line: 1055, column: 42, scope: !1182, inlinedAt: !1133)
!1187 = !DILocation(line: 1055, column: 17, scope: !1183, inlinedAt: !1133)
!1188 = !DILocation(line: 1056, column: 21, scope: !1189, inlinedAt: !1133)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 1055, column: 48)
!1190 = !DILocation(line: 1057, column: 30, scope: !1191, inlinedAt: !1133)
!1191 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 1057, column: 21)
!1192 = !DILocation(line: 1058, column: 21, scope: !1191, inlinedAt: !1133)
!1193 = !DILocation(line: 1058, column: 36, scope: !1191, inlinedAt: !1133)
!1194 = !DILocation(line: 1054, column: 48, scope: !1184, inlinedAt: !1133)
!1195 = distinct !{!1195, !1180, !1196}
!1196 = !DILocation(line: 1060, column: 9, scope: !1176, inlinedAt: !1133)
!1197 = !DILocation(line: 1061, column: 9, scope: !1198, inlinedAt: !1133)
!1198 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 1061, column: 9)
!1199 = !DILocation(line: 1062, column: 18, scope: !1200, inlinedAt: !1133)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 1062, column: 17)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1061, column: 59)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 1061, column: 9)
!1203 = !DILocation(line: 1062, column: 17, scope: !1201, inlinedAt: !1133)
!1204 = !DILocation(line: 1061, column: 55, scope: !1202, inlinedAt: !1133)
!1205 = !DILocation(line: 1061, column: 28, scope: !1202, inlinedAt: !1133)
!1206 = distinct !{!1206, !1197, !1207}
!1207 = !DILocation(line: 1064, column: 9, scope: !1198, inlinedAt: !1133)
!1208 = !DILocation(line: 1039, column: 17, scope: !1209, inlinedAt: !1133)
!1209 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 1038, column: 30)
!1210 = !DILocation(line: 1039, column: 9, scope: !1209, inlinedAt: !1133)
!1211 = !DILocation(line: 1017, column: 9, scope: !1212, inlinedAt: !1152)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1014, column: 22)
!1213 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 1014, column: 9)
!1214 = !DILocation(line: 1018, column: 5, scope: !1212, inlinedAt: !1152)
!1215 = !DILocation(line: 911, column: 36, scope: !1216, inlinedAt: !1053)
!1216 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 911, column: 5)
!1217 = !DILocation(line: 0, scope: !1216, inlinedAt: !1053)
!1218 = !DILocation(line: 911, column: 5, scope: !1216, inlinedAt: !1053)
!1219 = !DILocation(line: 0, scope: !1220, inlinedAt: !1230)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 1084, column: 9)
!1221 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !1222, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1224)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!37, !343, !37, !37, !128}
!1224 = !{!1225, !1226, !1227, !1228, !1229}
!1225 = !DILocalVariable(name: "cid", arg: 1, scope: !1221, file: !3, line: 1077, type: !343)
!1226 = !DILocalVariable(name: "nocid", arg: 2, scope: !1221, file: !3, line: 1077, type: !37)
!1227 = !DILocalVariable(name: "allcid", arg: 3, scope: !1221, file: !3, line: 1077, type: !37)
!1228 = !DILocalVariable(name: "sp", arg: 4, scope: !1221, file: !3, line: 1077, type: !128)
!1229 = !DILocalVariable(name: "c", scope: !1221, file: !3, line: 1079, type: !37)
!1230 = distinct !DILocation(line: 920, column: 15, scope: !1231, inlinedAt: !1053)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 911, column: 68)
!1232 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 911, column: 5)
!1233 = !DILocation(line: 0, scope: !1234, inlinedAt: !1230)
!1234 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 1087, column: 16)
!1235 = !DILocation(line: 0, scope: !1236, inlinedAt: !1230)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1089, column: 22)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 1089, column: 14)
!1238 = !DILocation(line: 0, scope: !1239, inlinedAt: !1246)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1199, column: 9)
!1240 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !1241, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !13, !144}
!1243 = !{!1244, !1245}
!1244 = !DILocalVariable(name: "rname", arg: 1, scope: !1240, file: !3, line: 1194, type: !13)
!1245 = !DILocalVariable(name: "res", arg: 2, scope: !1240, file: !3, line: 1194, type: !144)
!1246 = distinct !DILocation(line: 927, column: 17, scope: !1247, inlinedAt: !1053)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 926, column: 22)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 924, column: 17)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 921, column: 53)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 921, column: 9)
!1251 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 921, column: 9)
!1252 = !DILocation(line: 0, scope: !1253, inlinedAt: !1262)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 1331, column: 12)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1329, column: 9)
!1255 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !1256, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1258)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !13, !13, !13}
!1258 = !{!1259, !1260, !1261}
!1259 = !DILocalVariable(name: "aname", arg: 1, scope: !1255, file: !3, line: 1315, type: !13)
!1260 = !DILocalVariable(name: "name", arg: 2, scope: !1255, file: !3, line: 1315, type: !13)
!1261 = !DILocalVariable(name: "rname", arg: 3, scope: !1255, file: !3, line: 1315, type: !13)
!1262 = distinct !DILocation(line: 937, column: 21, scope: !1263, inlinedAt: !1053)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 936, column: 26)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 934, column: 21)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 930, column: 49)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 930, column: 13)
!1267 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 930, column: 13)
!1268 = !DILocation(line: 0, scope: !1269, inlinedAt: !1262)
!1269 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1338, column: 9)
!1270 = !DILocation(line: 0, scope: !1271, inlinedAt: !1262)
!1271 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1339, column: 9)
!1272 = !DILocation(line: 0, scope: !1273, inlinedAt: !1279)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1297, column: 9)
!1274 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !1256, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1275)
!1275 = !{!1276, !1277, !1278}
!1276 = !DILocalVariable(name: "aname", arg: 1, scope: !1274, file: !3, line: 1279, type: !13)
!1277 = !DILocalVariable(name: "name", arg: 2, scope: !1274, file: !3, line: 1279, type: !13)
!1278 = !DILocalVariable(name: "rname", arg: 3, scope: !1274, file: !3, line: 1279, type: !13)
!1279 = distinct !DILocation(line: 935, column: 21, scope: !1264, inlinedAt: !1053)
!1280 = !DILocation(line: 0, scope: !1281, inlinedAt: !1053)
!1281 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 991, column: 21)
!1282 = !DILocation(line: 0, scope: !1221, inlinedAt: !1230)
!1283 = !DILocation(line: 1081, column: 9, scope: !1221, inlinedAt: !1230)
!1284 = !DILocation(line: 1084, column: 9, scope: !1221, inlinedAt: !1230)
!1285 = !DILocation(line: 1085, column: 17, scope: !1286, inlinedAt: !1230)
!1286 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 1084, column: 22)
!1287 = !DILocation(line: 1085, column: 9, scope: !1286, inlinedAt: !1230)
!1288 = !DILocation(line: 1086, column: 9, scope: !1286, inlinedAt: !1230)
!1289 = !DILocation(line: 1087, column: 21, scope: !1234, inlinedAt: !1230)
!1290 = !DILocation(line: 1087, column: 35, scope: !1234, inlinedAt: !1230)
!1291 = !DILocation(line: 1087, column: 28, scope: !1234, inlinedAt: !1230)
!1292 = !DILocation(line: 1087, column: 16, scope: !1220, inlinedAt: !1230)
!1293 = !DILocation(line: 1089, column: 14, scope: !1234, inlinedAt: !1230)
!1294 = !DILocation(line: 1090, column: 24, scope: !1295, inlinedAt: !1230)
!1295 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 1090, column: 13)
!1296 = !DILocation(line: 1090, column: 13, scope: !1295, inlinedAt: !1230)
!1297 = !DILocation(line: 1090, column: 38, scope: !1295, inlinedAt: !1230)
!1298 = !DILocation(line: 1090, column: 13, scope: !1236, inlinedAt: !1230)
!1299 = !DILocation(line: 1091, column: 17, scope: !1300, inlinedAt: !1230)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1090, column: 44)
!1301 = !DILocation(line: 1092, column: 26, scope: !1302, inlinedAt: !1230)
!1302 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 1092, column: 17)
!1303 = !DILocation(line: 1093, column: 17, scope: !1302, inlinedAt: !1230)
!1304 = !DILocation(line: 1096, column: 14, scope: !1236, inlinedAt: !1230)
!1305 = !DILocation(line: 1096, column: 9, scope: !1236, inlinedAt: !1230)
!1306 = !DILocation(line: 1096, column: 34, scope: !1236, inlinedAt: !1230)
!1307 = !DILocation(line: 1097, column: 14, scope: !1308, inlinedAt: !1230)
!1308 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 1097, column: 9)
!1309 = !DILocation(line: 0, scope: !1310, inlinedAt: !1230)
!1310 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1097, column: 9)
!1311 = !DILocation(line: 0, scope: !1308, inlinedAt: !1230)
!1312 = !DILocation(line: 1097, column: 41, scope: !1310, inlinedAt: !1230)
!1313 = !DILocation(line: 1097, column: 9, scope: !1308, inlinedAt: !1230)
!1314 = !DILocation(line: 1098, column: 23, scope: !1315, inlinedAt: !1230)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1098, column: 17)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1097, column: 72)
!1317 = !DILocation(line: 1098, column: 18, scope: !1315, inlinedAt: !1230)
!1318 = !DILocation(line: 1098, column: 17, scope: !1316, inlinedAt: !1230)
!1319 = distinct !{!1319, !1313, !1320}
!1320 = !DILocation(line: 1100, column: 9, scope: !1308, inlinedAt: !1230)
!1321 = !DILocation(line: 1104, column: 20, scope: !1322, inlinedAt: !1230)
!1322 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1102, column: 12)
!1323 = !DILocation(line: 1105, column: 9, scope: !1322, inlinedAt: !1230)
!1324 = !DILocation(line: 921, column: 29, scope: !1250, inlinedAt: !1053)
!1325 = !{!787, !530, i64 32}
!1326 = !DILocation(line: 921, column: 23, scope: !1250, inlinedAt: !1053)
!1327 = !DILocation(line: 921, column: 9, scope: !1251, inlinedAt: !1053)
!1328 = !DILocation(line: 0, scope: !1249, inlinedAt: !1053)
!1329 = !DILocation(line: 0, scope: !1330, inlinedAt: !1053)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 958, column: 28)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 949, column: 25)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 941, column: 49)
!1333 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 941, column: 21)
!1334 = !DILocation(line: 922, column: 23, scope: !1249, inlinedAt: !1053)
!1335 = !DILocation(line: 922, column: 19, scope: !1249, inlinedAt: !1053)
!1336 = !DILocation(line: 923, column: 30, scope: !1249, inlinedAt: !1053)
!1337 = !DILocation(line: 923, column: 25, scope: !1249, inlinedAt: !1053)
!1338 = !DILocation(line: 923, column: 13, scope: !1249, inlinedAt: !1053)
!1339 = !DILocation(line: 0, scope: !1248, inlinedAt: !1053)
!1340 = !DILocation(line: 924, column: 17, scope: !1249, inlinedAt: !1053)
!1341 = !DILocalVariable(name: "rname", arg: 1, scope: !1342, file: !3, line: 1109, type: !13)
!1342 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !1241, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1343)
!1343 = !{!1341, !1344}
!1344 = !DILocalVariable(name: "res", arg: 2, scope: !1342, file: !3, line: 1109, type: !144)
!1345 = !DILocation(line: 0, scope: !1342, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 925, column: 17, scope: !1248, inlinedAt: !1053)
!1347 = !DILocation(line: 1112, column: 5, scope: !1342, inlinedAt: !1346)
!1348 = !DILocation(line: 1114, column: 10, scope: !1349, inlinedAt: !1346)
!1349 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1114, column: 9)
!1350 = !DILocation(line: 1114, column: 9, scope: !1342, inlinedAt: !1346)
!1351 = !DILocation(line: 1115, column: 9, scope: !1349, inlinedAt: !1346)
!1352 = !DILocation(line: 1116, column: 9, scope: !1342, inlinedAt: !1346)
!1353 = !DILocation(line: 1117, column: 9, scope: !1354, inlinedAt: !1346)
!1354 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1116, column: 9)
!1355 = !DILocation(line: 1119, column: 9, scope: !1356, inlinedAt: !1346)
!1356 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1118, column: 9)
!1357 = !DILocation(line: 1121, column: 9, scope: !1358, inlinedAt: !1346)
!1358 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1120, column: 9)
!1359 = !DILocation(line: 1123, column: 9, scope: !1360, inlinedAt: !1346)
!1360 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1122, column: 9)
!1361 = !DILocation(line: 1125, column: 10, scope: !1362, inlinedAt: !1346)
!1362 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1125, column: 9)
!1363 = !DILocation(line: 1125, column: 9, scope: !1342, inlinedAt: !1346)
!1364 = !DILocation(line: 1126, column: 9, scope: !1362, inlinedAt: !1346)
!1365 = !DILocation(line: 1127, column: 10, scope: !1366, inlinedAt: !1346)
!1366 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1127, column: 9)
!1367 = !DILocation(line: 1127, column: 9, scope: !1342, inlinedAt: !1346)
!1368 = !DILocation(line: 1128, column: 9, scope: !1366, inlinedAt: !1346)
!1369 = !DILocation(line: 1129, column: 10, scope: !1370, inlinedAt: !1346)
!1370 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1129, column: 9)
!1371 = !DILocation(line: 1129, column: 9, scope: !1342, inlinedAt: !1346)
!1372 = !DILocation(line: 1130, column: 9, scope: !1370, inlinedAt: !1346)
!1373 = !DILocation(line: 1131, column: 10, scope: !1374, inlinedAt: !1346)
!1374 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1131, column: 9)
!1375 = !DILocation(line: 1131, column: 9, scope: !1342, inlinedAt: !1346)
!1376 = !DILocation(line: 1132, column: 9, scope: !1374, inlinedAt: !1346)
!1377 = !DILocation(line: 1134, column: 10, scope: !1378, inlinedAt: !1346)
!1378 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1134, column: 9)
!1379 = !DILocation(line: 1134, column: 9, scope: !1342, inlinedAt: !1346)
!1380 = !DILocation(line: 1135, column: 9, scope: !1378, inlinedAt: !1346)
!1381 = !DILocation(line: 1136, column: 10, scope: !1382, inlinedAt: !1346)
!1382 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1136, column: 9)
!1383 = !DILocation(line: 1136, column: 9, scope: !1342, inlinedAt: !1346)
!1384 = !DILocation(line: 1137, column: 9, scope: !1382, inlinedAt: !1346)
!1385 = !DILocation(line: 1138, column: 10, scope: !1386, inlinedAt: !1346)
!1386 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1138, column: 9)
!1387 = !DILocation(line: 1138, column: 9, scope: !1342, inlinedAt: !1346)
!1388 = !DILocation(line: 1139, column: 9, scope: !1386, inlinedAt: !1346)
!1389 = !DILocation(line: 1140, column: 10, scope: !1390, inlinedAt: !1346)
!1390 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1140, column: 9)
!1391 = !DILocation(line: 1140, column: 9, scope: !1342, inlinedAt: !1346)
!1392 = !DILocation(line: 1141, column: 9, scope: !1390, inlinedAt: !1346)
!1393 = !DILocation(line: 1143, column: 9, scope: !1342, inlinedAt: !1346)
!1394 = !DILocation(line: 1144, column: 9, scope: !1395, inlinedAt: !1346)
!1395 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1143, column: 9)
!1396 = !DILocation(line: 1146, column: 9, scope: !1397, inlinedAt: !1346)
!1397 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1145, column: 9)
!1398 = !DILocation(line: 1148, column: 9, scope: !1399, inlinedAt: !1346)
!1399 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1147, column: 9)
!1400 = !DILocation(line: 1150, column: 9, scope: !1401, inlinedAt: !1346)
!1401 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1149, column: 9)
!1402 = !DILocation(line: 1153, column: 9, scope: !1403, inlinedAt: !1346)
!1403 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1152, column: 9)
!1404 = !DILocation(line: 1155, column: 9, scope: !1405, inlinedAt: !1346)
!1405 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1154, column: 9)
!1406 = !DILocation(line: 1157, column: 9, scope: !1407, inlinedAt: !1346)
!1407 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1156, column: 9)
!1408 = !DILocation(line: 1159, column: 9, scope: !1409, inlinedAt: !1346)
!1409 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1158, column: 9)
!1410 = !DILocation(line: 1162, column: 9, scope: !1411, inlinedAt: !1346)
!1411 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1161, column: 9)
!1412 = !DILocation(line: 1164, column: 9, scope: !1413, inlinedAt: !1346)
!1413 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1163, column: 9)
!1414 = !DILocation(line: 1166, column: 9, scope: !1415, inlinedAt: !1346)
!1415 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1165, column: 9)
!1416 = !DILocation(line: 1168, column: 9, scope: !1417, inlinedAt: !1346)
!1417 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1167, column: 9)
!1418 = !DILocation(line: 1171, column: 9, scope: !1419, inlinedAt: !1346)
!1419 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1170, column: 9)
!1420 = !DILocation(line: 1173, column: 9, scope: !1421, inlinedAt: !1346)
!1421 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1172, column: 9)
!1422 = !DILocation(line: 1175, column: 9, scope: !1423, inlinedAt: !1346)
!1423 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1174, column: 9)
!1424 = !DILocation(line: 1177, column: 9, scope: !1425, inlinedAt: !1346)
!1425 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1176, column: 9)
!1426 = !DILocation(line: 1179, column: 9, scope: !1342, inlinedAt: !1346)
!1427 = !DILocation(line: 1180, column: 9, scope: !1428, inlinedAt: !1346)
!1428 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1179, column: 9)
!1429 = !DILocation(line: 1184, column: 9, scope: !1430, inlinedAt: !1346)
!1430 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1183, column: 9)
!1431 = !DILocation(line: 1186, column: 9, scope: !1432, inlinedAt: !1346)
!1432 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1185, column: 9)
!1433 = !DILocation(line: 1188, column: 9, scope: !1434, inlinedAt: !1346)
!1434 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1187, column: 9)
!1435 = !DILocation(line: 1190, column: 9, scope: !1436, inlinedAt: !1346)
!1436 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1189, column: 9)
!1437 = !DILocation(line: 926, column: 22, scope: !1248, inlinedAt: !1053)
!1438 = !DILocation(line: 0, scope: !1240, inlinedAt: !1246)
!1439 = !DILocation(line: 1197, column: 5, scope: !1240, inlinedAt: !1246)
!1440 = !DILocation(line: 1199, column: 10, scope: !1239, inlinedAt: !1246)
!1441 = !DILocation(line: 1199, column: 9, scope: !1240, inlinedAt: !1246)
!1442 = !DILocation(line: 1200, column: 9, scope: !1239, inlinedAt: !1246)
!1443 = !DILocation(line: 1201, column: 9, scope: !1240, inlinedAt: !1246)
!1444 = !DILocation(line: 1202, column: 9, scope: !1445, inlinedAt: !1246)
!1445 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1201, column: 9)
!1446 = !DILocation(line: 1204, column: 9, scope: !1447, inlinedAt: !1246)
!1447 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1203, column: 9)
!1448 = !DILocation(line: 1206, column: 9, scope: !1449, inlinedAt: !1246)
!1449 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1205, column: 9)
!1450 = !DILocation(line: 1208, column: 9, scope: !1451, inlinedAt: !1246)
!1451 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1207, column: 9)
!1452 = !DILocation(line: 1210, column: 10, scope: !1453, inlinedAt: !1246)
!1453 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1210, column: 9)
!1454 = !DILocation(line: 1210, column: 9, scope: !1240, inlinedAt: !1246)
!1455 = !DILocation(line: 1211, column: 9, scope: !1453, inlinedAt: !1246)
!1456 = !DILocation(line: 1212, column: 10, scope: !1457, inlinedAt: !1246)
!1457 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1212, column: 9)
!1458 = !DILocation(line: 1212, column: 9, scope: !1240, inlinedAt: !1246)
!1459 = !DILocation(line: 1213, column: 9, scope: !1457, inlinedAt: !1246)
!1460 = !DILocation(line: 1214, column: 10, scope: !1461, inlinedAt: !1246)
!1461 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1214, column: 9)
!1462 = !DILocation(line: 1214, column: 9, scope: !1240, inlinedAt: !1246)
!1463 = !DILocation(line: 1215, column: 9, scope: !1461, inlinedAt: !1246)
!1464 = !DILocation(line: 1216, column: 10, scope: !1465, inlinedAt: !1246)
!1465 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1216, column: 9)
!1466 = !DILocation(line: 1216, column: 9, scope: !1240, inlinedAt: !1246)
!1467 = !DILocation(line: 1217, column: 9, scope: !1465, inlinedAt: !1246)
!1468 = !DILocation(line: 1219, column: 10, scope: !1469, inlinedAt: !1246)
!1469 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1219, column: 9)
!1470 = !DILocation(line: 1219, column: 9, scope: !1240, inlinedAt: !1246)
!1471 = !DILocation(line: 1220, column: 9, scope: !1469, inlinedAt: !1246)
!1472 = !DILocation(line: 1221, column: 10, scope: !1473, inlinedAt: !1246)
!1473 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1221, column: 9)
!1474 = !DILocation(line: 1221, column: 9, scope: !1240, inlinedAt: !1246)
!1475 = !DILocation(line: 1222, column: 9, scope: !1473, inlinedAt: !1246)
!1476 = !DILocation(line: 1223, column: 10, scope: !1477, inlinedAt: !1246)
!1477 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1223, column: 9)
!1478 = !DILocation(line: 1223, column: 9, scope: !1240, inlinedAt: !1246)
!1479 = !DILocation(line: 1224, column: 9, scope: !1477, inlinedAt: !1246)
!1480 = !DILocation(line: 1225, column: 10, scope: !1481, inlinedAt: !1246)
!1481 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1225, column: 9)
!1482 = !DILocation(line: 1225, column: 9, scope: !1240, inlinedAt: !1246)
!1483 = !DILocation(line: 1226, column: 9, scope: !1481, inlinedAt: !1246)
!1484 = !DILocation(line: 1228, column: 9, scope: !1240, inlinedAt: !1246)
!1485 = !DILocation(line: 1229, column: 9, scope: !1486, inlinedAt: !1246)
!1486 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1228, column: 9)
!1487 = !DILocation(line: 1231, column: 9, scope: !1488, inlinedAt: !1246)
!1488 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1230, column: 9)
!1489 = !DILocation(line: 1233, column: 9, scope: !1490, inlinedAt: !1246)
!1490 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1232, column: 9)
!1491 = !DILocation(line: 1235, column: 9, scope: !1492, inlinedAt: !1246)
!1492 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1234, column: 9)
!1493 = !DILocation(line: 1238, column: 9, scope: !1494, inlinedAt: !1246)
!1494 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1237, column: 9)
!1495 = !DILocation(line: 1240, column: 9, scope: !1496, inlinedAt: !1246)
!1496 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1239, column: 9)
!1497 = !DILocation(line: 1242, column: 9, scope: !1498, inlinedAt: !1246)
!1498 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1241, column: 9)
!1499 = !DILocation(line: 1244, column: 9, scope: !1500, inlinedAt: !1246)
!1500 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1243, column: 9)
!1501 = !DILocation(line: 1247, column: 9, scope: !1502, inlinedAt: !1246)
!1502 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1246, column: 9)
!1503 = !DILocation(line: 1249, column: 9, scope: !1504, inlinedAt: !1246)
!1504 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1248, column: 9)
!1505 = !DILocation(line: 1251, column: 9, scope: !1506, inlinedAt: !1246)
!1506 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1250, column: 9)
!1507 = !DILocation(line: 1253, column: 9, scope: !1508, inlinedAt: !1246)
!1508 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1252, column: 9)
!1509 = !DILocation(line: 1256, column: 9, scope: !1510, inlinedAt: !1246)
!1510 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1255, column: 9)
!1511 = !DILocation(line: 1258, column: 9, scope: !1512, inlinedAt: !1246)
!1512 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1257, column: 9)
!1513 = !DILocation(line: 1260, column: 9, scope: !1514, inlinedAt: !1246)
!1514 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1259, column: 9)
!1515 = !DILocation(line: 1262, column: 9, scope: !1516, inlinedAt: !1246)
!1516 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1261, column: 9)
!1517 = !DILocation(line: 1264, column: 9, scope: !1240, inlinedAt: !1246)
!1518 = !DILocation(line: 1265, column: 9, scope: !1519, inlinedAt: !1246)
!1519 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1264, column: 9)
!1520 = !DILocation(line: 1269, column: 9, scope: !1521, inlinedAt: !1246)
!1521 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1268, column: 9)
!1522 = !DILocation(line: 1271, column: 9, scope: !1523, inlinedAt: !1246)
!1523 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1270, column: 9)
!1524 = !DILocation(line: 1273, column: 9, scope: !1525, inlinedAt: !1246)
!1525 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1272, column: 9)
!1526 = !DILocation(line: 1275, column: 9, scope: !1527, inlinedAt: !1246)
!1527 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1274, column: 9)
!1528 = !DILocation(line: 929, column: 17, scope: !1247, inlinedAt: !1053)
!1529 = !DILocation(line: 930, column: 34, scope: !1266, inlinedAt: !1053)
!1530 = !DILocation(line: 930, column: 27, scope: !1266, inlinedAt: !1053)
!1531 = !DILocation(line: 930, column: 13, scope: !1267, inlinedAt: !1053)
!1532 = !DILocation(line: 0, scope: !1265, inlinedAt: !1053)
!1533 = !DILocation(line: 0, scope: !1332, inlinedAt: !1053)
!1534 = !DILocation(line: 931, column: 19, scope: !1265, inlinedAt: !1053)
!1535 = !DILocation(line: 932, column: 28, scope: !1265, inlinedAt: !1053)
!1536 = !{!667, !471, i64 120}
!1537 = !DILocation(line: 0, scope: !1264, inlinedAt: !1053)
!1538 = !DILocation(line: 934, column: 21, scope: !1265, inlinedAt: !1053)
!1539 = !DILocation(line: 0, scope: !1274, inlinedAt: !1279)
!1540 = !DILocation(line: 1285, column: 14, scope: !1274, inlinedAt: !1279)
!1541 = !DILocation(line: 1287, column: 9, scope: !1542, inlinedAt: !1279)
!1542 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1287, column: 9)
!1543 = !DILocation(line: 1287, column: 22, scope: !1542, inlinedAt: !1279)
!1544 = !DILocation(line: 1287, column: 27, scope: !1542, inlinedAt: !1279)
!1545 = !DILocation(line: 1287, column: 30, scope: !1542, inlinedAt: !1279)
!1546 = !DILocation(line: 1287, column: 38, scope: !1542, inlinedAt: !1279)
!1547 = !DILocation(line: 1287, column: 9, scope: !1274, inlinedAt: !1279)
!1548 = !DILocation(line: 1288, column: 18, scope: !1542, inlinedAt: !1279)
!1549 = !DILocation(line: 1288, column: 9, scope: !1542, inlinedAt: !1279)
!1550 = !DILocation(line: 1289, column: 16, scope: !1274, inlinedAt: !1279)
!1551 = !DILocation(line: 1289, column: 14, scope: !1274, inlinedAt: !1279)
!1552 = !DILocation(line: 1290, column: 16, scope: !1274, inlinedAt: !1279)
!1553 = !DILocation(line: 1290, column: 14, scope: !1274, inlinedAt: !1279)
!1554 = !DILocation(line: 1291, column: 16, scope: !1274, inlinedAt: !1279)
!1555 = !DILocation(line: 1292, column: 18, scope: !1556, inlinedAt: !1279)
!1556 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1292, column: 9)
!1557 = !DILocation(line: 1292, column: 9, scope: !1274, inlinedAt: !1279)
!1558 = !DILocation(line: 1294, column: 14, scope: !1274, inlinedAt: !1279)
!1559 = !DILocation(line: 1297, column: 10, scope: !1273, inlinedAt: !1279)
!1560 = !DILocation(line: 1298, column: 26, scope: !1273, inlinedAt: !1279)
!1561 = !DILocation(line: 1297, column: 34, scope: !1273, inlinedAt: !1279)
!1562 = !DILocation(line: 1299, column: 11, scope: !1273, inlinedAt: !1279)
!1563 = !DILocation(line: 1305, column: 14, scope: !1273, inlinedAt: !1279)
!1564 = !DILocation(line: 1299, column: 36, scope: !1273, inlinedAt: !1279)
!1565 = !DILocation(line: 1306, column: 18, scope: !1566, inlinedAt: !1279)
!1566 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1305, column: 41)
!1567 = !DILocation(line: 1307, column: 18, scope: !1566, inlinedAt: !1279)
!1568 = !DILocation(line: 1308, column: 5, scope: !1566, inlinedAt: !1279)
!1569 = !DILocation(line: 936, column: 26, scope: !1264, inlinedAt: !1053)
!1570 = !DILocation(line: 0, scope: !1255, inlinedAt: !1262)
!1571 = !DILocation(line: 1329, column: 9, scope: !1254, inlinedAt: !1262)
!1572 = !DILocation(line: 1329, column: 22, scope: !1254, inlinedAt: !1262)
!1573 = !DILocation(line: 1329, column: 27, scope: !1254, inlinedAt: !1262)
!1574 = !DILocation(line: 1329, column: 30, scope: !1254, inlinedAt: !1262)
!1575 = !DILocation(line: 1329, column: 38, scope: !1254, inlinedAt: !1262)
!1576 = !DILocation(line: 1329, column: 9, scope: !1255, inlinedAt: !1262)
!1577 = !DILocation(line: 1330, column: 9, scope: !1578, inlinedAt: !1262)
!1578 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 1329, column: 45)
!1579 = !DILocation(line: 1331, column: 5, scope: !1578, inlinedAt: !1262)
!1580 = !DILocation(line: 1332, column: 18, scope: !1253, inlinedAt: !1262)
!1581 = !DILocation(line: 1333, column: 9, scope: !1253, inlinedAt: !1262)
!1582 = !DILocation(line: 1334, column: 18, scope: !1253, inlinedAt: !1262)
!1583 = !DILocation(line: 1337, column: 9, scope: !1584, inlinedAt: !1262)
!1584 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1337, column: 9)
!1585 = !DILocation(line: 1337, column: 18, scope: !1584, inlinedAt: !1262)
!1586 = !DILocation(line: 1337, column: 9, scope: !1255, inlinedAt: !1262)
!1587 = !DILocation(line: 1337, column: 37, scope: !1584, inlinedAt: !1262)
!1588 = !DILocation(line: 1337, column: 28, scope: !1584, inlinedAt: !1262)
!1589 = !DILocation(line: 1338, column: 9, scope: !1269, inlinedAt: !1262)
!1590 = !DILocation(line: 1338, column: 18, scope: !1269, inlinedAt: !1262)
!1591 = !DILocation(line: 1338, column: 9, scope: !1255, inlinedAt: !1262)
!1592 = !DILocation(line: 1338, column: 37, scope: !1269, inlinedAt: !1262)
!1593 = !DILocation(line: 1338, column: 28, scope: !1269, inlinedAt: !1262)
!1594 = !DILocation(line: 1339, column: 9, scope: !1271, inlinedAt: !1262)
!1595 = !DILocation(line: 1339, column: 18, scope: !1271, inlinedAt: !1262)
!1596 = !DILocation(line: 1339, column: 9, scope: !1255, inlinedAt: !1262)
!1597 = !DILocation(line: 1339, column: 37, scope: !1271, inlinedAt: !1262)
!1598 = !DILocation(line: 1339, column: 28, scope: !1271, inlinedAt: !1262)
!1599 = !DILocation(line: 1346, column: 10, scope: !1600, inlinedAt: !1262)
!1600 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1346, column: 9)
!1601 = !DILocation(line: 1346, column: 9, scope: !1255, inlinedAt: !1262)
!1602 = !DILocation(line: 1346, column: 37, scope: !1600, inlinedAt: !1262)
!1603 = !DILocation(line: 1347, column: 10, scope: !1604, inlinedAt: !1262)
!1604 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1347, column: 9)
!1605 = !DILocation(line: 1347, column: 9, scope: !1255, inlinedAt: !1262)
!1606 = !DILocation(line: 1347, column: 37, scope: !1604, inlinedAt: !1262)
!1607 = !DILocation(line: 1348, column: 10, scope: !1608, inlinedAt: !1262)
!1608 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1348, column: 9)
!1609 = !DILocation(line: 1348, column: 9, scope: !1255, inlinedAt: !1262)
!1610 = !DILocation(line: 1348, column: 37, scope: !1608, inlinedAt: !1262)
!1611 = !DILocation(line: 1349, column: 10, scope: !1612, inlinedAt: !1262)
!1612 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1349, column: 9)
!1613 = !DILocation(line: 1349, column: 9, scope: !1255, inlinedAt: !1262)
!1614 = !DILocation(line: 1349, column: 37, scope: !1612, inlinedAt: !1262)
!1615 = !DILocation(line: 1350, column: 10, scope: !1616, inlinedAt: !1262)
!1616 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1350, column: 9)
!1617 = !DILocation(line: 1350, column: 9, scope: !1255, inlinedAt: !1262)
!1618 = !DILocation(line: 1350, column: 37, scope: !1616, inlinedAt: !1262)
!1619 = !DILocation(line: 1351, column: 10, scope: !1620, inlinedAt: !1262)
!1620 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1351, column: 9)
!1621 = !DILocation(line: 1351, column: 9, scope: !1255, inlinedAt: !1262)
!1622 = !DILocation(line: 1351, column: 37, scope: !1620, inlinedAt: !1262)
!1623 = !DILocation(line: 1352, column: 10, scope: !1624, inlinedAt: !1262)
!1624 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1352, column: 9)
!1625 = !DILocation(line: 1352, column: 9, scope: !1255, inlinedAt: !1262)
!1626 = !DILocation(line: 1352, column: 37, scope: !1624, inlinedAt: !1262)
!1627 = !DILocation(line: 1353, column: 10, scope: !1628, inlinedAt: !1262)
!1628 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1353, column: 9)
!1629 = !DILocation(line: 1353, column: 9, scope: !1255, inlinedAt: !1262)
!1630 = !DILocation(line: 1353, column: 37, scope: !1628, inlinedAt: !1262)
!1631 = !DILocation(line: 1359, column: 10, scope: !1632, inlinedAt: !1262)
!1632 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1359, column: 9)
!1633 = !DILocation(line: 1359, column: 36, scope: !1632, inlinedAt: !1262)
!1634 = !DILocation(line: 1359, column: 40, scope: !1632, inlinedAt: !1262)
!1635 = !DILocation(line: 1359, column: 66, scope: !1632, inlinedAt: !1262)
!1636 = !DILocation(line: 1360, column: 10, scope: !1632, inlinedAt: !1262)
!1637 = !DILocation(line: 1360, column: 36, scope: !1632, inlinedAt: !1262)
!1638 = !DILocation(line: 1360, column: 40, scope: !1632, inlinedAt: !1262)
!1639 = !DILocation(line: 1360, column: 66, scope: !1632, inlinedAt: !1262)
!1640 = !DILocation(line: 1361, column: 10, scope: !1632, inlinedAt: !1262)
!1641 = !DILocation(line: 1361, column: 36, scope: !1632, inlinedAt: !1262)
!1642 = !DILocation(line: 1361, column: 40, scope: !1632, inlinedAt: !1262)
!1643 = !DILocation(line: 1361, column: 66, scope: !1632, inlinedAt: !1262)
!1644 = !DILocation(line: 1362, column: 10, scope: !1632, inlinedAt: !1262)
!1645 = !DILocation(line: 1362, column: 36, scope: !1632, inlinedAt: !1262)
!1646 = !DILocation(line: 1362, column: 40, scope: !1632, inlinedAt: !1262)
!1647 = !DILocation(line: 1362, column: 66, scope: !1632, inlinedAt: !1262)
!1648 = !DILocation(line: 1363, column: 10, scope: !1632, inlinedAt: !1262)
!1649 = !DILocation(line: 1363, column: 36, scope: !1632, inlinedAt: !1262)
!1650 = !DILocation(line: 1363, column: 40, scope: !1632, inlinedAt: !1262)
!1651 = !DILocation(line: 1363, column: 66, scope: !1632, inlinedAt: !1262)
!1652 = !DILocation(line: 1364, column: 10, scope: !1632, inlinedAt: !1262)
!1653 = !DILocation(line: 1364, column: 36, scope: !1632, inlinedAt: !1262)
!1654 = !DILocation(line: 1364, column: 40, scope: !1632, inlinedAt: !1262)
!1655 = !DILocation(line: 1364, column: 66, scope: !1632, inlinedAt: !1262)
!1656 = !DILocation(line: 1365, column: 10, scope: !1632, inlinedAt: !1262)
!1657 = !DILocation(line: 1365, column: 36, scope: !1632, inlinedAt: !1262)
!1658 = !DILocation(line: 1365, column: 40, scope: !1632, inlinedAt: !1262)
!1659 = !DILocation(line: 1365, column: 66, scope: !1632, inlinedAt: !1262)
!1660 = !DILocation(line: 1366, column: 10, scope: !1632, inlinedAt: !1262)
!1661 = !DILocation(line: 1366, column: 36, scope: !1632, inlinedAt: !1262)
!1662 = !DILocation(line: 1366, column: 40, scope: !1632, inlinedAt: !1262)
!1663 = !DILocation(line: 1359, column: 9, scope: !1255, inlinedAt: !1262)
!1664 = !DILocation(line: 1367, column: 18, scope: !1665, inlinedAt: !1262)
!1665 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 1366, column: 67)
!1666 = !DILocation(line: 1368, column: 18, scope: !1665, inlinedAt: !1262)
!1667 = !DILocation(line: 1369, column: 18, scope: !1665, inlinedAt: !1262)
!1668 = !DILocation(line: 1370, column: 18, scope: !1665, inlinedAt: !1262)
!1669 = !DILocation(line: 1371, column: 5, scope: !1665, inlinedAt: !1262)
!1670 = !DILocation(line: 939, column: 21, scope: !1263, inlinedAt: !1053)
!1671 = !DILocation(line: 941, column: 22, scope: !1333, inlinedAt: !1053)
!1672 = !DILocation(line: 941, column: 38, scope: !1333, inlinedAt: !1053)
!1673 = !DILocation(line: 0, scope: !1333, inlinedAt: !1053)
!1674 = !DILocation(line: 949, column: 25, scope: !1332, inlinedAt: !1053)
!1675 = !DILocation(line: 957, column: 33, scope: !1676, inlinedAt: !1053)
!1676 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 949, column: 38)
!1677 = !DILocation(line: 957, column: 47, scope: !1676, inlinedAt: !1053)
!1678 = !DILocation(line: 957, column: 61, scope: !1676, inlinedAt: !1053)
!1679 = !DILocation(line: 950, column: 25, scope: !1676, inlinedAt: !1053)
!1680 = !DILocation(line: 958, column: 21, scope: !1676, inlinedAt: !1053)
!1681 = !DILocation(line: 961, column: 36, scope: !1330, inlinedAt: !1053)
!1682 = !DILocation(line: 966, column: 33, scope: !1330, inlinedAt: !1053)
!1683 = !DILocation(line: 966, column: 47, scope: !1330, inlinedAt: !1053)
!1684 = !DILocation(line: 966, column: 61, scope: !1330, inlinedAt: !1053)
!1685 = !DILocation(line: 959, column: 25, scope: !1330, inlinedAt: !1053)
!1686 = !DILocation(line: 970, column: 25, scope: !1687, inlinedAt: !1053)
!1687 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 968, column: 24)
!1688 = !DILocation(line: 974, column: 33, scope: !1689, inlinedAt: !1053)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 970, column: 38)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 970, column: 25)
!1691 = !DILocation(line: 974, column: 47, scope: !1689, inlinedAt: !1053)
!1692 = !DILocation(line: 974, column: 61, scope: !1689, inlinedAt: !1053)
!1693 = !DILocation(line: 971, column: 25, scope: !1689, inlinedAt: !1053)
!1694 = !DILocation(line: 975, column: 21, scope: !1689, inlinedAt: !1053)
!1695 = !DILocation(line: 978, column: 36, scope: !1696, inlinedAt: !1053)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 975, column: 28)
!1697 = !DILocation(line: 979, column: 33, scope: !1696, inlinedAt: !1053)
!1698 = !DILocation(line: 979, column: 47, scope: !1696, inlinedAt: !1053)
!1699 = !DILocation(line: 979, column: 61, scope: !1696, inlinedAt: !1053)
!1700 = !DILocation(line: 976, column: 25, scope: !1696, inlinedAt: !1053)
!1701 = !DILocation(line: 982, column: 21, scope: !1265, inlinedAt: !1053)
!1702 = !DILocation(line: 985, column: 33, scope: !1703, inlinedAt: !1053)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 982, column: 30)
!1704 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 982, column: 21)
!1705 = !DILocation(line: 985, column: 47, scope: !1703, inlinedAt: !1053)
!1706 = !DILocation(line: 984, column: 21, scope: !1703, inlinedAt: !1053)
!1707 = !DILocation(line: 986, column: 17, scope: !1703, inlinedAt: !1053)
!1708 = !DILocation(line: 986, column: 28, scope: !1704, inlinedAt: !1053)
!1709 = !DILocation(line: 988, column: 33, scope: !1710, inlinedAt: !1053)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 986, column: 41)
!1711 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 986, column: 28)
!1712 = !DILocation(line: 988, column: 44, scope: !1710, inlinedAt: !1053)
!1713 = !DILocation(line: 987, column: 21, scope: !1710, inlinedAt: !1053)
!1714 = !DILocation(line: 991, column: 32, scope: !1281, inlinedAt: !1053)
!1715 = !DILocation(line: 992, column: 47, scope: !1716, inlinedAt: !1053)
!1716 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 991, column: 74)
!1717 = !DILocation(line: 992, column: 21, scope: !1716, inlinedAt: !1053)
!1718 = !DILocation(line: 993, column: 17, scope: !1716, inlinedAt: !1053)
!1719 = !DILocation(line: 995, column: 17, scope: !1265, inlinedAt: !1053)
!1720 = !DILocation(line: 930, column: 45, scope: !1266, inlinedAt: !1053)
!1721 = distinct !{!1721, !1531, !1722}
!1722 = !DILocation(line: 997, column: 13, scope: !1267, inlinedAt: !1053)
!1723 = !DILocation(line: 921, column: 43, scope: !1250, inlinedAt: !1053)
!1724 = !DILocation(line: 921, column: 49, scope: !1250, inlinedAt: !1053)
!1725 = distinct !{!1725, !1327, !1726}
!1726 = !DILocation(line: 999, column: 9, scope: !1251, inlinedAt: !1053)
!1727 = !DILocation(line: 911, column: 13, scope: !1216, inlinedAt: !1053)
!1728 = !DILocation(line: 1001, column: 9, scope: !1231, inlinedAt: !1053)
!1729 = !DILocation(line: 911, column: 60, scope: !1232, inlinedAt: !1053)
!1730 = distinct !{!1730, !1218, !1731}
!1731 = !DILocation(line: 1007, column: 5, scope: !1216, inlinedAt: !1053)
!1732 = !DILocation(line: 0, scope: !1147, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 1008, column: 5, scope: !1021, inlinedAt: !1053)
!1734 = !DILocation(line: 1014, column: 13, scope: !1213, inlinedAt: !1733)
!1735 = !DILocation(line: 1014, column: 9, scope: !1147, inlinedAt: !1733)
!1736 = !DILocation(line: 1015, column: 18, scope: !1737, inlinedAt: !1733)
!1737 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 1015, column: 13)
!1738 = !DILocation(line: 1015, column: 25, scope: !1737, inlinedAt: !1733)
!1739 = !DILocation(line: 1015, column: 13, scope: !1212, inlinedAt: !1733)
!1740 = !DILocation(line: 1016, column: 13, scope: !1737, inlinedAt: !1733)
!1741 = !DILocation(line: 1017, column: 14, scope: !1212, inlinedAt: !1733)
!1742 = !DILocation(line: 1017, column: 9, scope: !1212, inlinedAt: !1733)
!1743 = !DILocation(line: 1018, column: 5, scope: !1212, inlinedAt: !1733)
!1744 = !DILocation(line: 1009, column: 1, scope: !1021, inlinedAt: !1053)
!1745 = !DILocation(line: 247, column: 23, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 247, column: 17)
!1747 = !DILocation(line: 247, column: 20, scope: !1746)
!1748 = !DILocation(line: 247, column: 17, scope: !1054)
!1749 = !DILocation(line: 248, column: 17, scope: !1746)
!1750 = !DILocation(line: 251, column: 5, scope: !1011)
!1751 = !DILocation(line: 253, column: 5, scope: !1011)
!1752 = !DILocation(line: 254, column: 1, scope: !1011)
!1753 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1754, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1756)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!37, !13, !13, !392}
!1756 = !{!1757, !1758, !1759, !1760}
!1757 = !DILocalVariable(name: "fname", arg: 1, scope: !1753, file: !3, line: 256, type: !13)
!1758 = !DILocalVariable(name: "blockId", arg: 2, scope: !1753, file: !3, line: 256, type: !13)
!1759 = !DILocalVariable(name: "mol", arg: 3, scope: !1753, file: !3, line: 256, type: !392)
!1760 = !DILocalVariable(name: "fp", scope: !1753, file: !3, line: 258, type: !371)
!1761 = !DILocation(line: 0, scope: !1753)
!1762 = !DILocation(line: 260, column: 10, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 260, column: 9)
!1764 = !DILocation(line: 260, column: 9, scope: !1753)
!1765 = !DILocation(line: 261, column: 17, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 260, column: 15)
!1767 = !DILocation(line: 261, column: 9, scope: !1766)
!1768 = !DILocation(line: 262, column: 9, scope: !1766)
!1769 = !DILocation(line: 264, column: 10, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 264, column: 9)
!1771 = !DILocation(line: 264, column: 9, scope: !1753)
!1772 = !DILocation(line: 266, column: 20, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 266, column: 14)
!1774 = !DILocation(line: 266, column: 39, scope: !1773)
!1775 = !DILocation(line: 266, column: 14, scope: !1770)
!1776 = !DILocation(line: 267, column: 9, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 266, column: 48)
!1778 = !DILocation(line: 268, column: 9, scope: !1777)
!1779 = !DILocation(line: 265, column: 14, scope: !1770)
!1780 = !DILocalVariable(name: "fp", arg: 1, scope: !1781, file: !3, line: 1381, type: !371)
!1781 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1782, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !371, !13, !392}
!1784 = !{!1780, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795}
!1785 = !DILocalVariable(name: "blockId", arg: 2, scope: !1781, file: !3, line: 1381, type: !13)
!1786 = !DILocalVariable(name: "mol", arg: 3, scope: !1781, file: !3, line: 1381, type: !392)
!1787 = !DILocalVariable(name: "r", scope: !1781, file: !3, line: 1383, type: !37)
!1788 = !DILocalVariable(name: "tr", scope: !1781, file: !3, line: 1383, type: !37)
!1789 = !DILocalVariable(name: "a", scope: !1781, file: !3, line: 1383, type: !37)
!1790 = !DILocalVariable(name: "ta", scope: !1781, file: !3, line: 1383, type: !37)
!1791 = !DILocalVariable(name: "strandnum", scope: !1781, file: !3, line: 1383, type: !37)
!1792 = !DILocalVariable(name: "cid", scope: !1781, file: !3, line: 1384, type: !14)
!1793 = !DILocalVariable(name: "sp", scope: !1781, file: !3, line: 1385, type: !128)
!1794 = !DILocalVariable(name: "res", scope: !1781, file: !3, line: 1386, type: !144)
!1795 = !DILocalVariable(name: "ap", scope: !1781, file: !3, line: 1387, type: !190)
!1796 = !DILocation(line: 0, scope: !1781, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 270, column: 5, scope: !1753)
!1798 = !DILocation(line: 1390, column: 5, scope: !1799, inlinedAt: !1797)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 1390, column: 5)
!1800 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 1390, column: 5)
!1801 = !DILocation(line: 1390, column: 5, scope: !1800, inlinedAt: !1797)
!1802 = !DILocation(line: 1392, column: 17, scope: !1781, inlinedAt: !1797)
!1803 = !{!921, !530, i64 96}
!1804 = !DILocation(line: 1396, column: 5, scope: !1781, inlinedAt: !1797)
!1805 = !DILocation(line: 1397, column: 5, scope: !1781, inlinedAt: !1797)
!1806 = !DILocation(line: 1398, column: 5, scope: !1781, inlinedAt: !1797)
!1807 = !DILocation(line: 1399, column: 5, scope: !1781, inlinedAt: !1797)
!1808 = !DILocation(line: 1400, column: 5, scope: !1781, inlinedAt: !1797)
!1809 = !DILocation(line: 1401, column: 5, scope: !1781, inlinedAt: !1797)
!1810 = !DILocation(line: 1402, column: 5, scope: !1781, inlinedAt: !1797)
!1811 = !DILocation(line: 1403, column: 5, scope: !1781, inlinedAt: !1797)
!1812 = !DILocation(line: 1404, column: 5, scope: !1781, inlinedAt: !1797)
!1813 = !DILocation(line: 1407, column: 36, scope: !1814, inlinedAt: !1797)
!1814 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 1407, column: 5)
!1815 = !DILocation(line: 0, scope: !1814, inlinedAt: !1797)
!1816 = !DILocation(line: 1407, column: 5, scope: !1814, inlinedAt: !1797)
!1817 = !DILocation(line: 1392, column: 28, scope: !1781, inlinedAt: !1797)
!1818 = !DILocation(line: 1392, column: 11, scope: !1781, inlinedAt: !1797)
!1819 = !DILocation(line: 1408, column: 18, scope: !1820, inlinedAt: !1797)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 1407, column: 68)
!1821 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1407, column: 5)
!1822 = !DILocation(line: 1409, column: 29, scope: !1823, inlinedAt: !1797)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 1409, column: 9)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 1409, column: 9)
!1825 = !DILocation(line: 1409, column: 23, scope: !1823, inlinedAt: !1797)
!1826 = !DILocation(line: 1409, column: 9, scope: !1824, inlinedAt: !1797)
!1827 = !DILocation(line: 0, scope: !1828, inlinedAt: !1797)
!1828 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 1409, column: 53)
!1829 = !DILocation(line: 0, scope: !1830, inlinedAt: !1797)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 1411, column: 49)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1411, column: 13)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1411, column: 13)
!1833 = !DILocation(line: 1410, column: 23, scope: !1828, inlinedAt: !1797)
!1834 = !DILocation(line: 1410, column: 19, scope: !1828, inlinedAt: !1797)
!1835 = !DILocation(line: 1411, column: 34, scope: !1831, inlinedAt: !1797)
!1836 = !DILocation(line: 1411, column: 27, scope: !1831, inlinedAt: !1797)
!1837 = !DILocation(line: 1411, column: 13, scope: !1832, inlinedAt: !1797)
!1838 = !DILocation(line: 1409, column: 43, scope: !1823, inlinedAt: !1797)
!1839 = !DILocation(line: 1409, column: 49, scope: !1823, inlinedAt: !1797)
!1840 = !DILocation(line: 1412, column: 19, scope: !1830, inlinedAt: !1797)
!1841 = !DILocation(line: 1413, column: 28, scope: !1830, inlinedAt: !1797)
!1842 = !DILocation(line: 1423, column: 33, scope: !1830, inlinedAt: !1797)
!1843 = !DILocation(line: 1423, column: 50, scope: !1830, inlinedAt: !1797)
!1844 = !DILocation(line: 1424, column: 25, scope: !1830, inlinedAt: !1797)
!1845 = !DILocation(line: 1424, column: 39, scope: !1830, inlinedAt: !1797)
!1846 = !DILocation(line: 1424, column: 53, scope: !1830, inlinedAt: !1797)
!1847 = !DILocation(line: 1421, column: 17, scope: !1830, inlinedAt: !1797)
!1848 = !DILocation(line: 1411, column: 45, scope: !1831, inlinedAt: !1797)
!1849 = distinct !{!1849, !1837, !1850}
!1850 = !DILocation(line: 1426, column: 13, scope: !1832, inlinedAt: !1797)
!1851 = distinct !{!1851, !1826, !1852}
!1852 = !DILocation(line: 1427, column: 9, scope: !1824, inlinedAt: !1797)
!1853 = !DILocation(line: 1407, column: 13, scope: !1814, inlinedAt: !1797)
!1854 = !DILocation(line: 1428, column: 18, scope: !1855, inlinedAt: !1797)
!1855 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 1428, column: 13)
!1856 = !DILocation(line: 1428, column: 29, scope: !1855, inlinedAt: !1797)
!1857 = !DILocation(line: 1428, column: 13, scope: !1820, inlinedAt: !1797)
!1858 = !DILocation(line: 1407, column: 60, scope: !1821, inlinedAt: !1797)
!1859 = distinct !{!1859, !1816, !1860}
!1860 = !DILocation(line: 1430, column: 5, scope: !1814, inlinedAt: !1797)
!1861 = !DILocation(line: 271, column: 15, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 271, column: 9)
!1863 = !DILocation(line: 271, column: 12, scope: !1862)
!1864 = !DILocation(line: 271, column: 9, scope: !1753)
!1865 = !DILocation(line: 272, column: 9, scope: !1862)
!1866 = !DILocation(line: 274, column: 1, scope: !1753)
!1867 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1868, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!37, !13, !392}
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887}
!1871 = !DILocalVariable(name: "fname", arg: 1, scope: !1867, file: !3, line: 276, type: !13)
!1872 = !DILocalVariable(name: "mol", arg: 2, scope: !1867, file: !3, line: 276, type: !392)
!1873 = !DILocalVariable(name: "fp", scope: !1867, file: !3, line: 278, type: !371)
!1874 = !DILocalVariable(name: "sp", scope: !1867, file: !3, line: 279, type: !128)
!1875 = !DILocalVariable(name: "res", scope: !1867, file: !3, line: 280, type: !144)
!1876 = !DILocalVariable(name: "a", scope: !1867, file: !3, line: 281, type: !37)
!1877 = !DILocalVariable(name: "ta", scope: !1867, file: !3, line: 281, type: !37)
!1878 = !DILocalVariable(name: "ai", scope: !1867, file: !3, line: 281, type: !37)
!1879 = !DILocalVariable(name: "aj", scope: !1867, file: !3, line: 281, type: !37)
!1880 = !DILocalVariable(name: "r", scope: !1867, file: !3, line: 281, type: !37)
!1881 = !DILocalVariable(name: "rj", scope: !1867, file: !3, line: 281, type: !37)
!1882 = !DILocalVariable(name: "tr", scope: !1867, file: !3, line: 281, type: !37)
!1883 = !DILocalVariable(name: "rval", scope: !1867, file: !3, line: 282, type: !37)
!1884 = !DILocalVariable(name: "aoff", scope: !1867, file: !3, line: 283, type: !109)
!1885 = !DILocalVariable(name: "b", scope: !1867, file: !3, line: 284, type: !37)
!1886 = !DILocalVariable(name: "ebp", scope: !1867, file: !3, line: 285, type: !160)
!1887 = !DILabel(scope: !1867, name: "clean_up", file: !3, line: 338)
!1888 = !DILocation(line: 0, scope: !1867)
!1889 = !DILocation(line: 287, column: 10, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 287, column: 9)
!1891 = !DILocation(line: 287, column: 9, scope: !1867)
!1892 = !DILocation(line: 288, column: 17, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 287, column: 15)
!1894 = !DILocation(line: 288, column: 9, scope: !1893)
!1895 = !DILocation(line: 289, column: 9, scope: !1893)
!1896 = !DILocation(line: 291, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 291, column: 9)
!1898 = !DILocation(line: 291, column: 34, scope: !1897)
!1899 = !DILocation(line: 291, column: 9, scope: !1867)
!1900 = !DILocation(line: 292, column: 9, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 291, column: 43)
!1902 = !DILocation(line: 293, column: 9, scope: !1901)
!1903 = !DILocation(line: 296, column: 28, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 296, column: 5)
!1905 = !DILocation(line: 0, scope: !1904)
!1906 = !DILocation(line: 296, column: 5, scope: !1904)
!1907 = !DILocation(line: 297, column: 19, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 296, column: 5)
!1909 = !DILocation(line: 297, column: 12, scope: !1908)
!1910 = !DILocation(line: 296, column: 52, scope: !1908)
!1911 = distinct !{!1911, !1906, !1912}
!1912 = !DILocation(line: 297, column: 19, scope: !1904)
!1913 = !DILocation(line: 299, column: 32, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 299, column: 9)
!1915 = !DILocation(line: 299, column: 25, scope: !1914)
!1916 = !DILocation(line: 299, column: 17, scope: !1914)
!1917 = !DILocation(line: 299, column: 51, scope: !1914)
!1918 = !DILocation(line: 299, column: 9, scope: !1867)
!1919 = !DILocation(line: 305, column: 5, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 305, column: 5)
!1921 = !DILocation(line: 300, column: 9, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 299, column: 60)
!1923 = !DILocation(line: 338, column: 3, scope: !1867)
!1924 = !DILocation(line: 339, column: 9, scope: !1867)
!1925 = !DILocation(line: 317, column: 5, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 317, column: 5)
!1927 = !DILocation(line: 306, column: 9, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 305, column: 68)
!1929 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 305, column: 5)
!1930 = !DILocation(line: 306, column: 18, scope: !1928)
!1931 = !DILocation(line: 307, column: 17, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 307, column: 13)
!1933 = !DILocation(line: 307, column: 29, scope: !1932)
!1934 = !DILocation(line: 307, column: 13, scope: !1928)
!1935 = !DILocation(line: 308, column: 23, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 307, column: 34)
!1937 = !DILocation(line: 308, column: 19, scope: !1936)
!1938 = !DILocation(line: 308, column: 38, scope: !1936)
!1939 = !DILocation(line: 308, column: 16, scope: !1936)
!1940 = !DILocation(line: 309, column: 27, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 309, column: 13)
!1942 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 309, column: 13)
!1943 = !DILocation(line: 309, column: 13, scope: !1942)
!1944 = !DILocation(line: 310, column: 25, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 309, column: 51)
!1946 = !DILocation(line: 310, column: 17, scope: !1945)
!1947 = !DILocation(line: 310, column: 30, scope: !1945)
!1948 = !DILocation(line: 311, column: 23, scope: !1945)
!1949 = !DILocation(line: 311, column: 42, scope: !1945)
!1950 = !DILocation(line: 311, column: 20, scope: !1945)
!1951 = !DILocation(line: 309, column: 47, scope: !1941)
!1952 = distinct !{!1952, !1943, !1953}
!1953 = !DILocation(line: 312, column: 13, scope: !1942)
!1954 = !DILocation(line: 0, scope: !1936)
!1955 = !DILocation(line: 313, column: 16, scope: !1936)
!1956 = !DILocation(line: 314, column: 9, scope: !1936)
!1957 = !DILocation(line: 0, scope: !1920)
!1958 = !DILocation(line: 305, column: 60, scope: !1929)
!1959 = distinct !{!1959, !1919, !1960}
!1960 = !DILocation(line: 315, column: 5, scope: !1920)
!1961 = !DILocation(line: 318, column: 29, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 318, column: 9)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 318, column: 9)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 317, column: 60)
!1965 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 317, column: 5)
!1966 = !DILocation(line: 318, column: 23, scope: !1962)
!1967 = !DILocation(line: 318, column: 9, scope: !1963)
!1968 = !DILocation(line: 0, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1962, file: !3, line: 318, column: 47)
!1970 = !DILocation(line: 0, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 326, column: 66)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 326, column: 13)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 326, column: 13)
!1974 = !DILocation(line: 319, column: 23, scope: !1969)
!1975 = !DILocation(line: 319, column: 19, scope: !1969)
!1976 = !DILocation(line: 320, column: 24, scope: !1969)
!1977 = !DILocation(line: 320, column: 17, scope: !1969)
!1978 = !DILocation(line: 321, column: 34, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 321, column: 13)
!1980 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 321, column: 13)
!1981 = !{!667, !530, i64 72}
!1982 = !DILocation(line: 321, column: 27, scope: !1979)
!1983 = !DILocation(line: 321, column: 13, scope: !1980)
!1984 = !DILocation(line: 0, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 321, column: 52)
!1986 = !DILocation(line: 323, column: 30, scope: !1985)
!1987 = !{!667, !471, i64 80}
!1988 = !DILocation(line: 323, column: 25, scope: !1985)
!1989 = !DILocation(line: 323, column: 47, scope: !1985)
!1990 = !DILocation(line: 324, column: 25, scope: !1985)
!1991 = !DILocation(line: 324, column: 47, scope: !1985)
!1992 = !DILocation(line: 322, column: 17, scope: !1985)
!1993 = !DILocation(line: 321, column: 48, scope: !1979)
!1994 = distinct !{!1994, !1983, !1995}
!1995 = !DILocation(line: 325, column: 13, scope: !1980)
!1996 = !DILocation(line: 326, column: 29, scope: !1973)
!1997 = !DILocation(line: 0, scope: !1973)
!1998 = !DILocation(line: 326, column: 13, scope: !1973)
!1999 = !DILocation(line: 327, column: 32, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 327, column: 21)
!2001 = !{!2002, !530, i64 12}
!2002 = !{!"extbond_t", !471, i64 0, !530, i64 8, !530, i64 12, !530, i64 16}
!2003 = !DILocation(line: 327, column: 41, scope: !2000)
!2004 = !DILocation(line: 327, column: 21, scope: !1971)
!2005 = !DILocation(line: 330, column: 35, scope: !1971)
!2006 = !DILocation(line: 330, column: 22, scope: !1971)
!2007 = !DILocation(line: 332, column: 30, scope: !1971)
!2008 = !{!2002, !530, i64 8}
!2009 = !DILocation(line: 332, column: 38, scope: !1971)
!2010 = !DILocation(line: 332, column: 49, scope: !1971)
!2011 = !{!2002, !530, i64 16}
!2012 = !DILocation(line: 332, column: 58, scope: !1971)
!2013 = !DILocation(line: 331, column: 17, scope: !1971)
!2014 = !DILocation(line: 333, column: 13, scope: !1971)
!2015 = !DILocation(line: 326, column: 57, scope: !1972)
!2016 = distinct !{!2016, !1998, !2017}
!2017 = !DILocation(line: 333, column: 13, scope: !1973)
!2018 = !DILocation(line: 318, column: 43, scope: !1962)
!2019 = distinct !{!2019, !1967, !2020}
!2020 = !DILocation(line: 334, column: 9, scope: !1963)
!2021 = !DILocation(line: 335, column: 12, scope: !1964)
!2022 = !DILocation(line: 317, column: 52, scope: !1965)
!2023 = !DILocation(line: 0, scope: !1926)
!2024 = distinct !{!2024, !1925, !2025}
!2025 = !DILocation(line: 336, column: 5, scope: !1926)
!2026 = !DILocation(line: 340, column: 9, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 339, column: 9)
!2028 = !DILocation(line: 342, column: 5, scope: !1867)
!2029 = !DILocation(line: 344, column: 5, scope: !1867)
!2030 = !DILocation(line: 345, column: 1, scope: !1867)
!2031 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !2032, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!37, !13, !392, !13, !13}
!2034 = !{!2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052}
!2035 = !DILocalVariable(name: "fname", arg: 1, scope: !2031, file: !3, line: 347, type: !13)
!2036 = !DILocalVariable(name: "mol", arg: 2, scope: !2031, file: !3, line: 347, type: !392)
!2037 = !DILocalVariable(name: "aexp1", arg: 3, scope: !2031, file: !3, line: 347, type: !13)
!2038 = !DILocalVariable(name: "aexp2", arg: 4, scope: !2031, file: !3, line: 347, type: !13)
!2039 = !DILocalVariable(name: "fp", scope: !2031, file: !3, line: 349, type: !371)
!2040 = !DILocalVariable(name: "sp1", scope: !2031, file: !3, line: 350, type: !128)
!2041 = !DILocalVariable(name: "res1", scope: !2031, file: !3, line: 351, type: !144)
!2042 = !DILocalVariable(name: "res2", scope: !2031, file: !3, line: 351, type: !144)
!2043 = !DILocalVariable(name: "ap1", scope: !2031, file: !3, line: 352, type: !190)
!2044 = !DILocalVariable(name: "ap2", scope: !2031, file: !3, line: 352, type: !190)
!2045 = !DILocalVariable(name: "tr", scope: !2031, file: !3, line: 353, type: !37)
!2046 = !DILocalVariable(name: "r1", scope: !2031, file: !3, line: 353, type: !37)
!2047 = !DILocalVariable(name: "r2", scope: !2031, file: !3, line: 353, type: !37)
!2048 = !DILocalVariable(name: "a1", scope: !2031, file: !3, line: 353, type: !37)
!2049 = !DILocalVariable(name: "a2", scope: !2031, file: !3, line: 353, type: !37)
!2050 = !DILocalVariable(name: "res", scope: !2031, file: !3, line: 354, type: !143)
!2051 = !DILocalVariable(name: "cnt", scope: !2031, file: !3, line: 355, type: !37)
!2052 = !DILabel(scope: !2031, name: "clean_up", file: !3, line: 420)
!2053 = !DILocation(line: 0, scope: !2031)
!2054 = !DILocation(line: 357, column: 10, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 357, column: 9)
!2056 = !DILocation(line: 357, column: 9, scope: !2031)
!2057 = !DILocation(line: 358, column: 17, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 357, column: 15)
!2059 = !DILocation(line: 358, column: 9, scope: !2058)
!2060 = !DILocation(line: 359, column: 9, scope: !2058)
!2061 = !DILocation(line: 362, column: 5, scope: !2031)
!2062 = !DILocation(line: 363, column: 21, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 363, column: 5)
!2064 = !DILocation(line: 0, scope: !2063)
!2065 = !DILocation(line: 363, column: 5, scope: !2063)
!2066 = !DILocation(line: 364, column: 14, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 363, column: 56)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 363, column: 5)
!2069 = !DILocation(line: 364, column: 21, scope: !2067)
!2070 = !{!787, !530, i64 12}
!2071 = !DILocation(line: 365, column: 24, scope: !2067)
!2072 = !DILocation(line: 365, column: 21, scope: !2067)
!2073 = !DILocation(line: 366, column: 32, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 366, column: 9)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 366, column: 9)
!2076 = !DILocation(line: 366, column: 25, scope: !2074)
!2077 = !DILocation(line: 366, column: 9, scope: !2075)
!2078 = !DILocation(line: 0, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 366, column: 51)
!2080 = !DILocation(line: 367, column: 20, scope: !2079)
!2081 = !DILocation(line: 368, column: 19, scope: !2079)
!2082 = !DILocation(line: 368, column: 26, scope: !2079)
!2083 = !{!667, !530, i64 40}
!2084 = !DILocation(line: 369, column: 29, scope: !2079)
!2085 = !DILocation(line: 369, column: 26, scope: !2079)
!2086 = !DILocation(line: 370, column: 58, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 370, column: 13)
!2088 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 370, column: 13)
!2089 = !DILocation(line: 370, column: 50, scope: !2087)
!2090 = !DILocation(line: 370, column: 13, scope: !2088)
!2091 = !DILocation(line: 370, column: 38, scope: !2088)
!2092 = !DILocation(line: 372, column: 22, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 371, column: 31)
!2094 = !DILocation(line: 372, column: 29, scope: !2093)
!2095 = !DILocation(line: 373, column: 32, scope: !2093)
!2096 = !DILocation(line: 373, column: 29, scope: !2093)
!2097 = !DILocation(line: 371, column: 20, scope: !2087)
!2098 = !DILocation(line: 371, column: 27, scope: !2087)
!2099 = distinct !{!2099, !2090, !2100}
!2100 = !DILocation(line: 374, column: 13, scope: !2088)
!2101 = !DILocation(line: 366, column: 47, scope: !2074)
!2102 = distinct !{!2102, !2077, !2103}
!2103 = !DILocation(line: 375, column: 9, scope: !2075)
!2104 = !DILocation(line: 363, column: 48, scope: !2068)
!2105 = distinct !{!2105, !2065, !2106}
!2106 = !DILocation(line: 376, column: 5, scope: !2063)
!2107 = !DILocation(line: 377, column: 5, scope: !2031)
!2108 = !DILocation(line: 0, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 379, column: 5)
!2110 = !DILocation(line: 379, column: 5, scope: !2109)
!2111 = !DILocation(line: 380, column: 20, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 379, column: 5)
!2113 = !DILocation(line: 380, column: 12, scope: !2112)
!2114 = !DILocation(line: 379, column: 56, scope: !2112)
!2115 = distinct !{!2115, !2110, !2116}
!2116 = !DILocation(line: 380, column: 20, scope: !2109)
!2117 = !DILocation(line: 381, column: 38, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 381, column: 9)
!2119 = !DILocation(line: 381, column: 41, scope: !2118)
!2120 = !DILocation(line: 381, column: 31, scope: !2118)
!2121 = !DILocation(line: 381, column: 16, scope: !2118)
!2122 = !DILocation(line: 382, column: 9, scope: !2118)
!2123 = !DILocation(line: 381, column: 9, scope: !2031)
!2124 = !DILocation(line: 386, column: 5, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 386, column: 5)
!2126 = !DILocation(line: 383, column: 17, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 382, column: 18)
!2128 = !DILocation(line: 383, column: 9, scope: !2127)
!2129 = !DILocation(line: 420, column: 3, scope: !2031)
!2130 = !DILocation(line: 421, column: 9, scope: !2031)
!2131 = !DILocation(line: 387, column: 32, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 387, column: 9)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 387, column: 9)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 386, column: 64)
!2135 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 386, column: 5)
!2136 = !DILocation(line: 387, column: 25, scope: !2132)
!2137 = !DILocation(line: 387, column: 9, scope: !2133)
!2138 = !DILocation(line: 0, scope: !2132)
!2139 = !DILocation(line: 388, column: 23, scope: !2132)
!2140 = !DILocation(line: 388, column: 19, scope: !2132)
!2141 = !DILocation(line: 387, column: 47, scope: !2132)
!2142 = distinct !{!2142, !2137, !2143}
!2143 = !DILocation(line: 388, column: 43, scope: !2133)
!2144 = !DILocation(line: 386, column: 56, scope: !2135)
!2145 = !DILocation(line: 0, scope: !2125)
!2146 = distinct !{!2146, !2124, !2147}
!2147 = !DILocation(line: 389, column: 5, scope: !2125)
!2148 = !DILocation(line: 391, column: 15, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 391, column: 9)
!2150 = !DILocation(line: 391, column: 34, scope: !2149)
!2151 = !DILocation(line: 391, column: 9, scope: !2031)
!2152 = !DILocation(line: 396, column: 30, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 396, column: 5)
!2154 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 396, column: 5)
!2155 = !DILocation(line: 396, column: 5, scope: !2154)
!2156 = !DILocation(line: 392, column: 17, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 391, column: 43)
!2158 = !DILocation(line: 392, column: 9, scope: !2157)
!2159 = !DILocation(line: 393, column: 9, scope: !2157)
!2160 = !DILocation(line: 397, column: 16, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 396, column: 42)
!2162 = !DILocation(line: 398, column: 33, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 398, column: 9)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !3, line: 398, column: 9)
!2165 = !DILocation(line: 398, column: 25, scope: !2163)
!2166 = !DILocation(line: 398, column: 9, scope: !2164)
!2167 = !DILocation(line: 396, column: 38, scope: !2153)
!2168 = !DILocation(line: 0, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 398, column: 49)
!2170 = !DILocation(line: 0, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 405, column: 54)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 405, column: 29)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 403, column: 61)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 403, column: 21)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 403, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 401, column: 45)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 401, column: 17)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 401, column: 17)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 400, column: 44)
!2180 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 400, column: 17)
!2181 = !DILocation(line: 399, column: 26, scope: !2169)
!2182 = !DILocation(line: 400, column: 36, scope: !2180)
!2183 = !DILocation(line: 400, column: 29, scope: !2180)
!2184 = !DILocation(line: 400, column: 17, scope: !2169)
!2185 = !DILocation(line: 402, column: 28, scope: !2176)
!2186 = !DILocation(line: 403, column: 45, scope: !2174)
!2187 = !DILocation(line: 403, column: 37, scope: !2174)
!2188 = !DILocation(line: 403, column: 21, scope: !2175)
!2189 = !DILocation(line: 401, column: 41, scope: !2177)
!2190 = !DILocation(line: 0, scope: !2154)
!2191 = !DILocation(line: 401, column: 33, scope: !2177)
!2192 = !DILocation(line: 401, column: 17, scope: !2178)
!2193 = distinct !{!2193, !2192, !2194}
!2194 = !DILocation(line: 415, column: 17, scope: !2178)
!2195 = !DILocation(line: 404, column: 38, scope: !2173)
!2196 = !DILocation(line: 405, column: 46, scope: !2172)
!2197 = !DILocation(line: 405, column: 39, scope: !2172)
!2198 = !DILocation(line: 405, column: 29, scope: !2173)
!2199 = !DILocation(line: 408, column: 51, scope: !2171)
!2200 = !DILocation(line: 409, column: 42, scope: !2171)
!2201 = !DILocation(line: 410, column: 43, scope: !2171)
!2202 = !DILocation(line: 410, column: 59, scope: !2171)
!2203 = !DILocation(line: 411, column: 37, scope: !2171)
!2204 = !DILocation(line: 843, column: 24, scope: !2205, inlinedAt: !2214)
!2205 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !2206, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!10, !190, !190}
!2208 = !{!2209, !2210, !2211, !2212, !2213}
!2209 = !DILocalVariable(name: "ap1", arg: 1, scope: !2205, file: !3, line: 839, type: !190)
!2210 = !DILocalVariable(name: "ap2", arg: 2, scope: !2205, file: !3, line: 839, type: !190)
!2211 = !DILocalVariable(name: "dx", scope: !2205, file: !3, line: 841, type: !10)
!2212 = !DILocalVariable(name: "dy", scope: !2205, file: !3, line: 841, type: !10)
!2213 = !DILocalVariable(name: "dz", scope: !2205, file: !3, line: 841, type: !10)
!2214 = distinct !DILocation(line: 411, column: 37, scope: !2171)
!2215 = !DILocation(line: 0, scope: !2205, inlinedAt: !2214)
!2216 = !DILocation(line: 844, column: 24, scope: !2205, inlinedAt: !2214)
!2217 = !DILocation(line: 845, column: 24, scope: !2205, inlinedAt: !2214)
!2218 = !DILocation(line: 846, column: 21, scope: !2205, inlinedAt: !2214)
!2219 = !DILocation(line: 846, column: 31, scope: !2205, inlinedAt: !2214)
!2220 = !DILocation(line: 846, column: 26, scope: !2205, inlinedAt: !2214)
!2221 = !DILocation(line: 846, column: 41, scope: !2205, inlinedAt: !2214)
!2222 = !DILocation(line: 846, column: 36, scope: !2205, inlinedAt: !2214)
!2223 = !DILocation(line: 846, column: 13, scope: !2205, inlinedAt: !2214)
!2224 = !DILocation(line: 406, column: 29, scope: !2171)
!2225 = !DILocation(line: 412, column: 32, scope: !2171)
!2226 = !DILocation(line: 413, column: 25, scope: !2171)
!2227 = !DILocation(line: 403, column: 57, scope: !2174)
!2228 = distinct !{!2228, !2188, !2229}
!2229 = !DILocation(line: 414, column: 21, scope: !2175)
!2230 = !DILocation(line: 398, column: 45, scope: !2163)
!2231 = !DILocation(line: 396, column: 14, scope: !2154)
!2232 = distinct !{!2232, !2166, !2233}
!2233 = !DILocation(line: 417, column: 9, scope: !2164)
!2234 = !DILocation(line: 0, scope: !2173)
!2235 = distinct !{!2235, !2155, !2236}
!2236 = !DILocation(line: 418, column: 5, scope: !2154)
!2237 = !DILocation(line: 422, column: 9, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 421, column: 9)
!2239 = !DILocation(line: 425, column: 1, scope: !2031)
!2240 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !2241, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2245)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!37, !13, !2243}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !184)
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2252}
!2246 = !DILocalVariable(name: "fname", arg: 1, scope: !2240, file: !3, line: 427, type: !13)
!2247 = !DILocalVariable(name: "mat", arg: 2, scope: !2240, file: !3, line: 427, type: !2243)
!2248 = !DILocalVariable(name: "fp", scope: !2240, file: !3, line: 429, type: !371)
!2249 = !DILocalVariable(name: "i", scope: !2240, file: !3, line: 430, type: !37)
!2250 = !DILocalVariable(name: "j", scope: !2240, file: !3, line: 430, type: !37)
!2251 = !DILocalVariable(name: "err", scope: !2240, file: !3, line: 431, type: !37)
!2252 = !DILabel(scope: !2240, name: "CLEAN_UP", file: !3, line: 451)
!2253 = !DILocation(line: 0, scope: !2240)
!2254 = !DILocation(line: 433, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 433, column: 9)
!2256 = !DILocation(line: 433, column: 23, scope: !2255)
!2257 = !DILocation(line: 433, column: 26, scope: !2255)
!2258 = !DILocation(line: 433, column: 33, scope: !2255)
!2259 = !DILocation(line: 433, column: 9, scope: !2240)
!2260 = !DILocation(line: 434, column: 17, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 433, column: 42)
!2262 = !DILocation(line: 434, column: 9, scope: !2261)
!2263 = !DILocation(line: 436, column: 9, scope: !2261)
!2264 = !DILocation(line: 437, column: 17, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 437, column: 16)
!2266 = !DILocation(line: 437, column: 16, scope: !2255)
!2267 = !DILocation(line: 438, column: 14, scope: !2265)
!2268 = !DILocation(line: 438, column: 9, scope: !2265)
!2269 = !DILocation(line: 439, column: 20, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 439, column: 14)
!2271 = !DILocation(line: 439, column: 39, scope: !2270)
!2272 = !DILocation(line: 439, column: 14, scope: !2265)
!2273 = !DILocation(line: 440, column: 17, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 439, column: 48)
!2275 = !DILocation(line: 440, column: 9, scope: !2274)
!2276 = !DILocation(line: 442, column: 9, scope: !2274)
!2277 = !DILocation(line: 0, scope: !2265)
!2278 = !DILocation(line: 445, column: 5, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 445, column: 5)
!2280 = !DILocation(line: 446, column: 9, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 446, column: 9)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 445, column: 29)
!2283 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 445, column: 5)
!2284 = !DILocation(line: 447, column: 32, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 446, column: 9)
!2286 = !DILocation(line: 447, column: 13, scope: !2285)
!2287 = !DILocation(line: 446, column: 29, scope: !2285)
!2288 = !DILocation(line: 446, column: 23, scope: !2285)
!2289 = distinct !{!2289, !2280, !2290}
!2290 = !DILocation(line: 447, column: 41, scope: !2281)
!2291 = !DILocation(line: 448, column: 9, scope: !2282)
!2292 = !DILocation(line: 445, column: 25, scope: !2283)
!2293 = !DILocation(line: 445, column: 19, scope: !2283)
!2294 = distinct !{!2294, !2278, !2295}
!2295 = !DILocation(line: 449, column: 5, scope: !2279)
!2296 = !DILocation(line: 451, column: 3, scope: !2240)
!2297 = !DILocation(line: 453, column: 12, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 453, column: 9)
!2299 = !DILocation(line: 453, column: 29, scope: !2298)
!2300 = !DILocation(line: 453, column: 26, scope: !2298)
!2301 = !DILocation(line: 453, column: 20, scope: !2298)
!2302 = !DILocation(line: 454, column: 9, scope: !2298)
!2303 = !DILocation(line: 455, column: 5, scope: !2240)
!2304 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !354, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !38)
!2305 = !DILocation(line: 753, column: 5, scope: !2304)
!2306 = !DILocation(line: 754, column: 13, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 754, column: 9)
!2308 = !DILocation(line: 754, column: 23, scope: !2307)
!2309 = !DILocation(line: 754, column: 9, scope: !2304)
!2310 = !DILocation(line: 755, column: 34, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 754, column: 32)
!2312 = !DILocation(line: 755, column: 23, scope: !2311)
!2313 = !DILocation(line: 756, column: 27, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 756, column: 13)
!2315 = !DILocation(line: 756, column: 13, scope: !2311)
!2316 = !DILocation(line: 757, column: 21, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 756, column: 36)
!2318 = !DILocation(line: 757, column: 13, scope: !2317)
!2319 = !DILocation(line: 758, column: 13, scope: !2317)
!2320 = !DILocation(line: 761, column: 13, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 761, column: 9)
!2322 = !DILocation(line: 761, column: 21, scope: !2321)
!2323 = !DILocation(line: 761, column: 9, scope: !2304)
!2324 = !DILocation(line: 762, column: 32, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 761, column: 30)
!2326 = !DILocation(line: 762, column: 21, scope: !2325)
!2327 = !DILocation(line: 763, column: 25, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 763, column: 13)
!2329 = !DILocation(line: 763, column: 13, scope: !2325)
!2330 = !DILocation(line: 764, column: 21, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 763, column: 34)
!2332 = !DILocation(line: 764, column: 13, scope: !2331)
!2333 = !DILocation(line: 765, column: 13, scope: !2331)
!2334 = !DILocation(line: 768, column: 20, scope: !2304)
!2335 = !DILocation(line: 768, column: 18, scope: !2304)
!2336 = !DILocation(line: 769, column: 17, scope: !2304)
!2337 = !DILocation(line: 770, column: 1, scope: !2304)
!2338 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2339, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{null, !144}
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2342 = !DILocalVariable(name: "res", arg: 1, scope: !2338, file: !3, line: 794, type: !144)
!2343 = !DILocalVariable(name: "a1", scope: !2338, file: !3, line: 796, type: !37)
!2344 = !DILocalVariable(name: "a2", scope: !2338, file: !3, line: 796, type: !37)
!2345 = !DILocalVariable(name: "ap1", scope: !2338, file: !3, line: 797, type: !190)
!2346 = !DILocalVariable(name: "ap2", scope: !2338, file: !3, line: 797, type: !190)
!2347 = !DILocalVariable(name: "ih1", scope: !2338, file: !3, line: 798, type: !37)
!2348 = !DILocalVariable(name: "ih2", scope: !2338, file: !3, line: 798, type: !37)
!2349 = !DILocalVariable(name: "d", scope: !2338, file: !3, line: 799, type: !10)
!2350 = !DILocation(line: 0, scope: !2338)
!2351 = !DILocation(line: 801, column: 28, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 801, column: 5)
!2353 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 801, column: 5)
!2354 = !DILocation(line: 801, column: 21, scope: !2352)
!2355 = !DILocation(line: 801, column: 5, scope: !2353)
!2356 = !DILocation(line: 0, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 801, column: 44)
!2358 = !DILocation(line: 806, column: 21, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 806, column: 5)
!2360 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 806, column: 5)
!2361 = !DILocation(line: 806, column: 5, scope: !2360)
!2362 = !DILocation(line: 0, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 808, column: 13)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 806, column: 48)
!2365 = !DILocation(line: 803, column: 14, scope: !2357)
!2366 = !DILocation(line: 803, column: 25, scope: !2357)
!2367 = !{!529, !530, i64 20}
!2368 = !DILocation(line: 801, column: 40, scope: !2352)
!2369 = distinct !{!2369, !2355, !2370}
!2370 = !DILocation(line: 804, column: 5, scope: !2353)
!2371 = !DILocation(line: 806, column: 28, scope: !2359)
!2372 = !DILocation(line: 806, column: 37, scope: !2359)
!2373 = !DILocation(line: 807, column: 21, scope: !2364)
!2374 = !DILocation(line: 808, column: 13, scope: !2363)
!2375 = !{!2376, !2376, i64 0}
!2376 = !{!"short", !465, i64 0}
!2377 = !DILocation(line: 808, column: 13, scope: !2364)
!2378 = !DILocation(line: 809, column: 19, scope: !2363)
!2379 = !DILocation(line: 809, column: 13, scope: !2363)
!2380 = !DILocation(line: 812, column: 22, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 812, column: 9)
!2382 = !DILocation(line: 812, column: 30, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 812, column: 9)
!2384 = !DILocation(line: 812, column: 9, scope: !2381)
!2385 = distinct !{!2385, !2361, !2386}
!2386 = !DILocation(line: 836, column: 5, scope: !2360)
!2387 = !DILocation(line: 0, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 812, column: 53)
!2389 = !DILocation(line: 0, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 829, column: 21)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 828, column: 39)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 828, column: 24)
!2393 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 820, column: 17)
!2394 = !DILocation(line: 0, scope: !2393)
!2395 = !DILocation(line: 0, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 823, column: 59)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 822, column: 25)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 821, column: 37)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 821, column: 21)
!2400 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 820, column: 29)
!2401 = !DILocation(line: 813, column: 25, scope: !2388)
!2402 = !DILocation(line: 819, column: 17, scope: !2388)
!2403 = !DILocation(line: 843, column: 24, scope: !2205, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 819, column: 17, scope: !2388)
!2405 = !DILocation(line: 0, scope: !2205, inlinedAt: !2404)
!2406 = !DILocation(line: 844, column: 24, scope: !2205, inlinedAt: !2404)
!2407 = !DILocation(line: 845, column: 24, scope: !2205, inlinedAt: !2404)
!2408 = !DILocation(line: 846, column: 21, scope: !2205, inlinedAt: !2404)
!2409 = !DILocation(line: 846, column: 31, scope: !2205, inlinedAt: !2404)
!2410 = !DILocation(line: 846, column: 26, scope: !2205, inlinedAt: !2404)
!2411 = !DILocation(line: 846, column: 41, scope: !2205, inlinedAt: !2404)
!2412 = !DILocation(line: 846, column: 36, scope: !2205, inlinedAt: !2404)
!2413 = !DILocation(line: 846, column: 13, scope: !2205, inlinedAt: !2404)
!2414 = !DILocation(line: 821, column: 23, scope: !2399)
!2415 = !DILocation(line: 821, column: 21, scope: !2400)
!2416 = !DILocation(line: 822, column: 30, scope: !2397)
!2417 = !DILocation(line: 822, column: 41, scope: !2397)
!2418 = !DILocation(line: 822, column: 58, scope: !2397)
!2419 = !DILocation(line: 823, column: 30, scope: !2397)
!2420 = !DILocation(line: 823, column: 41, scope: !2397)
!2421 = !DILocation(line: 822, column: 25, scope: !2398)
!2422 = !DILocation(line: 824, column: 55, scope: !2396)
!2423 = !DILocation(line: 824, column: 25, scope: !2396)
!2424 = !DILocation(line: 824, column: 59, scope: !2396)
!2425 = !DILocation(line: 825, column: 55, scope: !2396)
!2426 = !DILocation(line: 825, column: 25, scope: !2396)
!2427 = !DILocation(line: 825, column: 59, scope: !2396)
!2428 = !DILocation(line: 826, column: 21, scope: !2396)
!2429 = !DILocation(line: 812, column: 49, scope: !2383)
!2430 = !DILocation(line: 812, column: 37, scope: !2383)
!2431 = distinct !{!2431, !2384, !2432}
!2432 = !DILocation(line: 835, column: 9, scope: !2381)
!2433 = !DILocation(line: 814, column: 17, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 814, column: 17)
!2435 = !DILocation(line: 814, column: 17, scope: !2388)
!2436 = !DILocation(line: 815, column: 23, scope: !2434)
!2437 = !DILocation(line: 815, column: 17, scope: !2434)
!2438 = !DILocation(line: 0, scope: !2434)
!2439 = !DILocation(line: 820, column: 21, scope: !2393)
!2440 = !DILocation(line: 828, column: 26, scope: !2392)
!2441 = !DILocation(line: 828, column: 24, scope: !2393)
!2442 = !DILocation(line: 829, column: 26, scope: !2390)
!2443 = !DILocation(line: 829, column: 37, scope: !2390)
!2444 = !DILocation(line: 829, column: 54, scope: !2390)
!2445 = !DILocation(line: 830, column: 26, scope: !2390)
!2446 = !DILocation(line: 830, column: 37, scope: !2390)
!2447 = !DILocation(line: 829, column: 21, scope: !2391)
!2448 = !DILocation(line: 831, column: 51, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 830, column: 55)
!2450 = !DILocation(line: 831, column: 21, scope: !2449)
!2451 = !DILocation(line: 831, column: 55, scope: !2449)
!2452 = !DILocation(line: 832, column: 51, scope: !2449)
!2453 = !DILocation(line: 832, column: 21, scope: !2449)
!2454 = !DILocation(line: 832, column: 55, scope: !2449)
!2455 = !DILocation(line: 833, column: 17, scope: !2449)
!2456 = !DILocation(line: 837, column: 1, scope: !2338)
