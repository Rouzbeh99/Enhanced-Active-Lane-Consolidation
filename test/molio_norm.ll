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

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"getpdb: can't open file %s\0A\00", align 1
@getmatrix.mat = internal global [4 x [4 x double]] zeroinitializer, align 16, !dbg !0
@.str.3 = private unnamed_addr constant [36 x i8] c"getmatrix: NULL or empty file name\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"getmatrix: can't read matrix file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%lf %lf %lf %lf\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"getmatrix: bad row %d: got %d elements, needed 4\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"getmatrix: missing rows: got %d rows, needed 4\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"putpdb: NULL molecule\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
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
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@n_atab = internal global i32 0, align 4, !dbg !260
@.str.24 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"C5M\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"O2'\00", align 1
@res = internal global %struct.residue_t zeroinitializer, align 8, !dbg !262
@.str.29 = private unnamed_addr constant [5 x i8] c"H2'1\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"H2'\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"ADE\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"CYT\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"GUA\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"THY\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"URA\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"-pqr\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%lf%lf\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@atab = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !264
@.str.49 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"initres: can't allocate res->r_resname.\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"initres: can't allocate res->r_resid.\0A\00", align 1
@init_atab.init = internal global i32 1, align 4, !dbg !254
@.str.53 = private unnamed_addr constant [36 x i8] c"init_atab: can't alloc a_atomname.\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"fputpdb: NULL molecule\0A\00", align 1
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
@.str.73 = private unnamed_addr constant [24 x i8] c"initcid: NULL molecule\0A\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"nextcid: NULL cid\0A\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"  G\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"  A\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"  T\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"  C\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"  U\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"DG\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"DG3\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"DA3\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"DT3\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"DC3\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"RG3\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"RA3\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"RU3\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"RC3\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"DG5\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"DA5\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"DT5\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"DC5\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"RG5\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"RA5\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"RU5\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"RC5\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"HID\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"HIS\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"HIP\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"CYX\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"CYS\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"ASH\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"ASP\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"GLH\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"GLU\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c" DG\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c" DA\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c" DT\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c" DC\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c" RG\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c" RA\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c" RU\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c" RC\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c" H\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c" HB\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"PHE\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"TYR\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"TRP\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
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
@.str.158 = private unnamed_addr constant [4 x i8] c"mol\00", align 1
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.molecule_t* @getpdb(i8* %0, i8* %1) #0 !dbg !273 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.molecule_t*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !278, metadata !DIExpression()), !dbg !279
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !282, metadata !DIExpression()), !dbg !341
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8, !dbg !341
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %6, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %7, metadata !344, metadata !DIExpression()), !dbg !345
  %8 = load i8*, i8** %3, align 8, !dbg !346
  %9 = icmp ne i8* %8, null, !dbg !346
  br i1 %9, label %10, label %14, !dbg !348

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !349
  %12 = load i8, i8* %11, align 1, !dbg !350
  %13 = icmp ne i8 %12, 0, !dbg !350
  br i1 %13, label %16, label %14, !dbg !351

14:                                               ; preds = %10, %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !352
  store %struct._IO_FILE* %15, %struct._IO_FILE** %5, align 8, !dbg !354
  br label %41, !dbg !355

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8, !dbg !356
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #8, !dbg !358
  %19 = icmp ne i32 %18, 0, !dbg !358
  br i1 %19, label %22, label %20, !dbg !359

20:                                               ; preds = %16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !360
  store %struct._IO_FILE* %21, %struct._IO_FILE** %5, align 8, !dbg !362
  br label %40, !dbg !363

22:                                               ; preds = %16
  store i32 0, i32* %7, align 4, !dbg !364
  %23 = call i32 @get_mytaskid(), !dbg !366
  %24 = icmp eq i32 %23, 0, !dbg !368
  br i1 %24, label %25, label %34, !dbg !369

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8, !dbg !370
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !373
  store %struct._IO_FILE* %27, %struct._IO_FILE** %5, align 8, !dbg !374
  %28 = icmp eq %struct._IO_FILE* %27, null, !dbg !375
  br i1 %28, label %29, label %33, !dbg !376

29:                                               ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !377
  %31 = load i8*, i8** %3, align 8, !dbg !379
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %31), !dbg !380
  store i32 -1, i32* %7, align 4, !dbg !381
  br label %33, !dbg !382

33:                                               ; preds = %29, %25
  br label %34, !dbg !383

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %7, align 4, !dbg !384
  call void @reducerror(i32 %35), !dbg !385
  %36 = call i32 @get_mytaskid(), !dbg !386
  %37 = icmp ne i32 %36, 0, !dbg !388
  br i1 %37, label %38, label %39, !dbg !389

38:                                               ; preds = %34
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8, !dbg !390
  br label %39, !dbg !392

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !393
  %43 = load i8*, i8** %4, align 8, !dbg !394
  %44 = call %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %42, i8* %43), !dbg !395
  store %struct.molecule_t* %44, %struct.molecule_t** %6, align 8, !dbg !396
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !397
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !399
  %47 = icmp ne %struct._IO_FILE* %45, %46, !dbg !400
  br i1 %47, label %48, label %55, !dbg !401

48:                                               ; preds = %41
  %49 = call i32 @get_mytaskid(), !dbg !402
  %50 = icmp eq i32 %49, 0, !dbg !405
  br i1 %50, label %51, label %54, !dbg !406

51:                                               ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !407
  %53 = call i32 @fclose(%struct._IO_FILE* %52), !dbg !409
  br label %54, !dbg !410

54:                                               ; preds = %51, %48
  br label %55, !dbg !411

55:                                               ; preds = %54, %41
  %56 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8, !dbg !412
  ret %struct.molecule_t* %56, !dbg !413
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @get_mytaskid() #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local void @reducerror(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %0, i8* %1) #0 !dbg !414 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.molecule_t*, align 8
  %6 = alloca %struct.atom_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [82 x i8], align 16
  %11 = alloca [10 x i8], align 1
  %12 = alloca [10 x i8], align 1
  %13 = alloca [10 x i8], align 1
  %14 = alloca [10 x i8], align 1
  %15 = alloca [10 x i8], align 1
  %16 = alloca [10 x i8], align 1
  %17 = alloca [10 x i8], align 1
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8, align 1
  %31 = alloca [256 x i8], align 16
  %32 = alloca %struct.strand_t*, align 8
  %33 = alloca %struct.strand_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !417, metadata !DIExpression()), !dbg !418
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %5, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.declare(metadata %struct.atom_t** %6, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata i32* %7, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata i32* %8, metadata !427, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.declare(metadata i32* %9, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata [82 x i8]* %10, metadata !431, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata [10 x i8]* %11, metadata !436, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata [10 x i8]* %12, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata [10 x i8]* %13, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata [10 x i8]* %14, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata [10 x i8]* %15, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata [10 x i8]* %16, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata [10 x i8]* %17, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i8** %18, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.declare(metadata i8** %19, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata i32* %20, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata i32* %21, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata double* %22, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata double* %23, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata double* %24, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata double* %25, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata double* %26, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata double* %27, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata double* %28, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata i32* %29, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata i8* %30, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata [256 x i8]* %31, metadata !479, metadata !DIExpression()), !dbg !483
  %34 = load i8*, i8** %4, align 8, !dbg !484
  %35 = icmp eq i8* %34, null, !dbg !486
  br i1 %35, label %36, label %38, !dbg !487

36:                                               ; preds = %2
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i64 0, i64 0, !dbg !488
  store i8 0, i8* %37, align 16, !dbg !489
  br label %42, !dbg !488

38:                                               ; preds = %2
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i64 0, i64 0, !dbg !490
  %40 = load i8*, i8** %4, align 8, !dbg !491
  %41 = call i8* @strcpy(i8* %39, i8* %40) #9, !dbg !492
  br label %42

42:                                               ; preds = %38, %36
  call void @initres(), !dbg !493
  call void @init_atab(), !dbg !494
  %43 = call %struct.molecule_t* @newmolecule(), !dbg !495
  store %struct.molecule_t* %43, %struct.molecule_t** %5, align 8, !dbg !496
  store i32 0, i32* %7, align 4, !dbg !497
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !498
  store i8 0, i8* %44, align 1, !dbg !499
  store i32 0, i32* %21, align 4, !dbg !500
  store i32 0, i32* %9, align 4, !dbg !501
  store i32 0, i32* @n_atab, align 4, !dbg !503
  br label %45, !dbg !504

45:                                               ; preds = %492, %42
  %46 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0, !dbg !505
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !509
  %48 = call i8* @ggets(i8* %46, i32 82, %struct._IO_FILE* %47), !dbg !510
  %49 = icmp eq i8* %48, null, !dbg !511
  br i1 %49, label %50, label %51, !dbg !512

50:                                               ; preds = %45
  br label %493, !dbg !513

51:                                               ; preds = %45
  %52 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0, !dbg !514
  %53 = call i64 @strlen(i8* %52) #8, !dbg !516
  %54 = trunc i64 %53 to i32, !dbg !516
  store i32 %54, i32* %29, align 4, !dbg !517
  br label %55, !dbg !518

55:                                               ; preds = %62, %51
  %56 = load i32, i32* %29, align 4, !dbg !519
  %57 = icmp slt i32 %56, 80, !dbg !521
  br i1 %57, label %58, label %65, !dbg !522

58:                                               ; preds = %55
  %59 = load i32, i32* %29, align 4, !dbg !523
  %60 = sext i32 %59 to i64, !dbg !524
  %61 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 %60, !dbg !524
  store i8 32, i8* %61, align 1, !dbg !525
  br label %62, !dbg !524

62:                                               ; preds = %58
  %63 = load i32, i32* %29, align 4, !dbg !526
  %64 = add nsw i32 %63, 1, !dbg !526
  store i32 %64, i32* %29, align 4, !dbg !526
  br label %55, !dbg !527, !llvm.loop !528

65:                                               ; preds = %55
  %66 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 80, !dbg !530
  store i8 0, i8* %66, align 16, !dbg !531
  %67 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0, !dbg !532
  %68 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %67, i64 4) #8, !dbg !534
  %69 = icmp eq i32 %68, 0, !dbg !535
  br i1 %69, label %74, label %70, !dbg !536

70:                                               ; preds = %65
  %71 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0, !dbg !537
  %72 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %71, i64 6) #8, !dbg !538
  %73 = icmp eq i32 %72, 0, !dbg !539
  br i1 %73, label %74, label %463, !dbg !540

74:                                               ; preds = %70, %65
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !541
  %76 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 12, !dbg !543
  %77 = call i8* @strncpy(i8* %75, i8* %76, i64 4) #9, !dbg !544
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 4, !dbg !545
  store i8 0, i8* %78, align 1, !dbg !546
  %79 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !547
  store i8* %79, i8** %19, align 8, !dbg !549
  store i8* %79, i8** %18, align 8, !dbg !550
  br label %80, !dbg !551

80:                                               ; preds = %95, %74
  %81 = load i8*, i8** %18, align 8, !dbg !552
  %82 = load i8, i8* %81, align 1, !dbg !554
  %83 = icmp ne i8 %82, 0, !dbg !555
  br i1 %83, label %84, label %98, !dbg !555

84:                                               ; preds = %80
  %85 = load i8*, i8** %18, align 8, !dbg !556
  %86 = load i8, i8* %85, align 1, !dbg !559
  %87 = sext i8 %86 to i32, !dbg !559
  %88 = icmp ne i32 %87, 32, !dbg !560
  br i1 %88, label %89, label %94, !dbg !561

89:                                               ; preds = %84
  %90 = load i8*, i8** %18, align 8, !dbg !562
  %91 = load i8, i8* %90, align 1, !dbg !563
  %92 = load i8*, i8** %19, align 8, !dbg !564
  %93 = getelementptr inbounds i8, i8* %92, i32 1, !dbg !564
  store i8* %93, i8** %19, align 8, !dbg !564
  store i8 %91, i8* %92, align 1, !dbg !565
  br label %94, !dbg !566

94:                                               ; preds = %89, %84
  br label %95, !dbg !567

95:                                               ; preds = %94
  %96 = load i8*, i8** %18, align 8, !dbg !568
  %97 = getelementptr inbounds i8, i8* %96, i32 1, !dbg !568
  store i8* %97, i8** %18, align 8, !dbg !568
  br label %80, !dbg !569, !llvm.loop !570

98:                                               ; preds = %80
  %99 = load i8*, i8** %19, align 8, !dbg !572
  store i8 0, i8* %99, align 1, !dbg !573
  %100 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !574
  %101 = load i8, i8* %100, align 1, !dbg !574
  %102 = sext i8 %101 to i32, !dbg !574
  %103 = icmp eq i32 %102, 49, !dbg !576
  br i1 %103, label %114, label %104, !dbg !577

104:                                              ; preds = %98
  %105 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !578
  %106 = load i8, i8* %105, align 1, !dbg !578
  %107 = sext i8 %106 to i32, !dbg !578
  %108 = icmp eq i32 %107, 50, !dbg !579
  br i1 %108, label %114, label %109, !dbg !580

109:                                              ; preds = %104
  %110 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !581
  %111 = load i8, i8* %110, align 1, !dbg !581
  %112 = sext i8 %111 to i32, !dbg !581
  %113 = icmp eq i32 %112, 51, !dbg !582
  br i1 %113, label %114, label %141, !dbg !583

114:                                              ; preds = %109, %104, %98
  %115 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !584
  %116 = load i8, i8* %115, align 1, !dbg !584
  store i8 %116, i8* %30, align 1, !dbg !586
  store i32 0, i32* %29, align 4, !dbg !587
  br label %117, !dbg !589

117:                                              ; preds = %133, %114
  %118 = load i32, i32* %29, align 4, !dbg !590
  %119 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !592
  %120 = call i64 @strlen(i8* %119) #8, !dbg !593
  %121 = trunc i64 %120 to i32, !dbg !594
  %122 = sub nsw i32 %121, 1, !dbg !595
  %123 = icmp slt i32 %118, %122, !dbg !596
  br i1 %123, label %124, label %136, !dbg !597

124:                                              ; preds = %117
  %125 = load i32, i32* %29, align 4, !dbg !598
  %126 = add nsw i32 %125, 1, !dbg !599
  %127 = sext i32 %126 to i64, !dbg !600
  %128 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %127, !dbg !600
  %129 = load i8, i8* %128, align 1, !dbg !600
  %130 = load i32, i32* %29, align 4, !dbg !601
  %131 = sext i32 %130 to i64, !dbg !602
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %131, !dbg !602
  store i8 %129, i8* %132, align 1, !dbg !603
  br label %133, !dbg !602

133:                                              ; preds = %124
  %134 = load i32, i32* %29, align 4, !dbg !604
  %135 = add nsw i32 %134, 1, !dbg !604
  store i32 %135, i32* %29, align 4, !dbg !604
  br label %117, !dbg !605, !llvm.loop !606

136:                                              ; preds = %117
  %137 = load i8, i8* %30, align 1, !dbg !608
  %138 = load i32, i32* %29, align 4, !dbg !609
  %139 = sext i32 %138 to i64, !dbg !610
  %140 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %139, !dbg !610
  store i8 %137, i8* %140, align 1, !dbg !611
  br label %141, !dbg !612

141:                                              ; preds = %136, %109
  %142 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 2, !dbg !613
  %143 = load i8, i8* %142, align 1, !dbg !613
  %144 = sext i8 %143 to i32, !dbg !613
  %145 = icmp eq i32 %144, 42, !dbg !615
  br i1 %145, label %146, label %148, !dbg !616

146:                                              ; preds = %141
  %147 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 2, !dbg !617
  store i8 39, i8* %147, align 1, !dbg !618
  br label %148, !dbg !617

148:                                              ; preds = %146, %141
  %149 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !619
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !621
  %151 = icmp ne i32 %150, 0, !dbg !621
  br i1 %151, label %155, label %152, !dbg !622

152:                                              ; preds = %148
  %153 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !623
  %154 = call i8* @strcpy(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !624
  br label %155, !dbg !624

155:                                              ; preds = %152, %148
  %156 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !625
  %157 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 17, !dbg !626
  %158 = call i8* @strncpy(i8* %156, i8* %157, i64 3) #9, !dbg !627
  %159 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 3, !dbg !628
  store i8 0, i8* %159, align 1, !dbg !629
  %160 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !630
  store i8* %160, i8** %19, align 8, !dbg !632
  store i8* %160, i8** %18, align 8, !dbg !633
  br label %161, !dbg !634

161:                                              ; preds = %176, %155
  %162 = load i8*, i8** %18, align 8, !dbg !635
  %163 = load i8, i8* %162, align 1, !dbg !637
  %164 = icmp ne i8 %163, 0, !dbg !638
  br i1 %164, label %165, label %179, !dbg !638

165:                                              ; preds = %161
  %166 = load i8*, i8** %18, align 8, !dbg !639
  %167 = load i8, i8* %166, align 1, !dbg !642
  %168 = sext i8 %167 to i32, !dbg !642
  %169 = icmp ne i32 %168, 32, !dbg !643
  br i1 %169, label %170, label %175, !dbg !644

170:                                              ; preds = %165
  %171 = load i8*, i8** %18, align 8, !dbg !645
  %172 = load i8, i8* %171, align 1, !dbg !646
  %173 = load i8*, i8** %19, align 8, !dbg !647
  %174 = getelementptr inbounds i8, i8* %173, i32 1, !dbg !647
  store i8* %174, i8** %19, align 8, !dbg !647
  store i8 %172, i8* %173, align 1, !dbg !648
  br label %175, !dbg !649

175:                                              ; preds = %170, %165
  br label %176, !dbg !650

176:                                              ; preds = %175
  %177 = load i8*, i8** %18, align 8, !dbg !651
  %178 = getelementptr inbounds i8, i8* %177, i32 1, !dbg !651
  store i8* %178, i8** %18, align 8, !dbg !651
  br label %161, !dbg !652, !llvm.loop !653

179:                                              ; preds = %161
  %180 = load i8*, i8** %19, align 8, !dbg !655
  store i8 0, i8* %180, align 1, !dbg !656
  %181 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !657
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !659
  %183 = icmp ne i32 %182, 0, !dbg !659
  br i1 %183, label %185, label %184, !dbg !660

184:                                              ; preds = %179
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 7), align 4, !dbg !661
  br label %185, !dbg !662

185:                                              ; preds = %184, %179
  %186 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !663
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !665
  %188 = icmp ne i32 %187, 0, !dbg !665
  br i1 %188, label %195, label %189, !dbg !666

189:                                              ; preds = %185
  %190 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 7), align 4, !dbg !667
  %191 = icmp eq i32 %190, 2, !dbg !668
  br i1 %191, label %192, label %195, !dbg !669

192:                                              ; preds = %189
  %193 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !670
  %194 = call i8* @strcpy(i8* %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !671
  br label %195, !dbg !671

195:                                              ; preds = %192, %189, %185
  %196 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !672
  %197 = call i32 @strcmp(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !674
  %198 = icmp ne i32 %197, 0, !dbg !674
  br i1 %198, label %202, label %199, !dbg !675

199:                                              ; preds = %195
  %200 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !676
  %201 = call i8* @strcpy(i8* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !677
  br label %202, !dbg !677

202:                                              ; preds = %199, %195
  %203 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !678
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !680
  %205 = icmp ne i32 %204, 0, !dbg !680
  br i1 %205, label %209, label %206, !dbg !681

206:                                              ; preds = %202
  %207 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !682
  %208 = call i8* @strcpy(i8* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !683
  br label %209, !dbg !683

209:                                              ; preds = %206, %202
  %210 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !684
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !686
  %212 = icmp ne i32 %211, 0, !dbg !686
  br i1 %212, label %216, label %213, !dbg !687

213:                                              ; preds = %209
  %214 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !688
  %215 = call i8* @strcpy(i8* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !689
  br label %216, !dbg !689

216:                                              ; preds = %213, %209
  %217 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !690
  %218 = call i32 @strcmp(i8* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !692
  %219 = icmp ne i32 %218, 0, !dbg !692
  br i1 %219, label %223, label %220, !dbg !693

220:                                              ; preds = %216
  %221 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !694
  %222 = call i8* @strcpy(i8* %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !695
  br label %223, !dbg !695

223:                                              ; preds = %220, %216
  %224 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !696
  %225 = call i32 @strcmp(i8* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !698
  %226 = icmp ne i32 %225, 0, !dbg !698
  br i1 %226, label %230, label %227, !dbg !699

227:                                              ; preds = %223
  %228 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !700
  %229 = call i8* @strcpy(i8* %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !701
  br label %230, !dbg !701

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0, !dbg !702
  %232 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 21, !dbg !703
  %233 = call i8* @strncpy(i8* %231, i8* %232, i64 6) #9, !dbg !704
  %234 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 6, !dbg !705
  store i8 0, i8* %234, align 1, !dbg !706
  %235 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 21, !dbg !707
  %236 = load i8, i8* %235, align 1, !dbg !707
  %237 = sext i8 %236 to i32, !dbg !707
  store i32 %237, i32* %8, align 4, !dbg !708
  %238 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 22, !dbg !709
  %239 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* %20) #9, !dbg !710
  %240 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !711
  %241 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 30, !dbg !712
  %242 = call i8* @strncpy(i8* %240, i8* %241, i64 8) #9, !dbg !713
  %243 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 8, !dbg !714
  store i8 0, i8* %243, align 1, !dbg !715
  %244 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !716
  %245 = call double @atof(i8* %244) #8, !dbg !717
  store double %245, double* %22, align 8, !dbg !718
  %246 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !719
  %247 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 38, !dbg !720
  %248 = call i8* @strncpy(i8* %246, i8* %247, i64 8) #9, !dbg !721
  %249 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 8, !dbg !722
  store i8 0, i8* %249, align 1, !dbg !723
  %250 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !724
  %251 = call double @atof(i8* %250) #8, !dbg !725
  store double %251, double* %23, align 8, !dbg !726
  %252 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !727
  %253 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 46, !dbg !728
  %254 = call i8* @strncpy(i8* %252, i8* %253, i64 8) #9, !dbg !729
  %255 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 8, !dbg !730
  store i8 0, i8* %255, align 1, !dbg !731
  %256 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !732
  %257 = call double @atof(i8* %256) #8, !dbg !733
  store double %257, double* %24, align 8, !dbg !734
  %258 = getelementptr inbounds [256 x i8], [256 x i8]* %31, i64 0, i64 0, !dbg !735
  %259 = call i8* @strstr(i8* %258, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !737
  %260 = icmp ne i8* %259, null, !dbg !737
  br i1 %260, label %261, label %264, !dbg !738

261:                                              ; preds = %230
  %262 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 54, !dbg !739
  %263 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* %25, double* %26) #9, !dbg !741
  store double 1.000000e+00, double* %27, align 8, !dbg !742
  store double 0.000000e+00, double* %28, align 8, !dbg !743
  br label %313, !dbg !744

264:                                              ; preds = %230
  %265 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !745
  %266 = call i32 @strncmp(i8* %265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1) #8, !dbg !748
  %267 = icmp ne i32 %266, 0, !dbg !748
  br i1 %267, label %269, label %268, !dbg !749

268:                                              ; preds = %264
  store double 1.200000e+00, double* %26, align 8, !dbg !750
  br label %300, !dbg !751

269:                                              ; preds = %264
  %270 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !752
  %271 = call i32 @strncmp(i8* %270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1) #8, !dbg !754
  %272 = icmp ne i32 %271, 0, !dbg !754
  br i1 %272, label %274, label %273, !dbg !755

273:                                              ; preds = %269
  store double 1.700000e+00, double* %26, align 8, !dbg !756
  br label %299, !dbg !757

274:                                              ; preds = %269
  %275 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !758
  %276 = call i32 @strncmp(i8* %275, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i64 1) #8, !dbg !760
  %277 = icmp ne i32 %276, 0, !dbg !760
  br i1 %277, label %279, label %278, !dbg !761

278:                                              ; preds = %274
  store double 1.550000e+00, double* %26, align 8, !dbg !762
  br label %298, !dbg !763

279:                                              ; preds = %274
  %280 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !764
  %281 = call i32 @strncmp(i8* %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i64 1) #8, !dbg !766
  %282 = icmp ne i32 %281, 0, !dbg !766
  br i1 %282, label %284, label %283, !dbg !767

283:                                              ; preds = %279
  store double 1.500000e+00, double* %26, align 8, !dbg !768
  br label %297, !dbg !769

284:                                              ; preds = %279
  %285 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !770
  %286 = call i32 @strncmp(i8* %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 1) #8, !dbg !772
  %287 = icmp ne i32 %286, 0, !dbg !772
  br i1 %287, label %289, label %288, !dbg !773

288:                                              ; preds = %284
  store double 1.800000e+00, double* %26, align 8, !dbg !774
  br label %296, !dbg !775

289:                                              ; preds = %284
  %290 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !776
  %291 = call i32 @strncmp(i8* %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1) #8, !dbg !778
  %292 = icmp ne i32 %291, 0, !dbg !778
  br i1 %292, label %294, label %293, !dbg !779

293:                                              ; preds = %289
  store double 1.850000e+00, double* %26, align 8, !dbg !780
  br label %295, !dbg !781

294:                                              ; preds = %289
  store double 1.700000e+00, double* %26, align 8, !dbg !782
  br label %295

295:                                              ; preds = %294, %293
  br label %296

296:                                              ; preds = %295, %288
  br label %297

297:                                              ; preds = %296, %283
  br label %298

298:                                              ; preds = %297, %278
  br label %299

299:                                              ; preds = %298, %273
  br label %300

300:                                              ; preds = %299, %268
  store double 0.000000e+00, double* %25, align 8, !dbg !783
  %301 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !784
  %302 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 54, !dbg !785
  %303 = call i8* @strncpy(i8* %301, i8* %302, i64 6) #9, !dbg !786
  %304 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 6, !dbg !787
  store i8 0, i8* %304, align 1, !dbg !788
  %305 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !789
  %306 = call double @atof(i8* %305) #8, !dbg !790
  store double %306, double* %27, align 8, !dbg !791
  %307 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !792
  %308 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 60, !dbg !793
  %309 = call i8* @strncpy(i8* %307, i8* %308, i64 6) #9, !dbg !794
  %310 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 6, !dbg !795
  store i8 0, i8* %310, align 1, !dbg !796
  %311 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0, !dbg !797
  %312 = call double @atof(i8* %311) #8, !dbg !798
  store double %312, double* %28, align 8, !dbg !799
  br label %313

313:                                              ; preds = %300, %261
  %314 = load i32, i32* %8, align 4, !dbg !800
  %315 = load i32, i32* %7, align 4, !dbg !802
  %316 = icmp ne i32 %314, %315, !dbg !803
  br i1 %316, label %317, label %396, !dbg !804

317:                                              ; preds = %313
  %318 = load i32, i32* @n_atab, align 4, !dbg !805
  %319 = icmp sgt i32 %318, 0, !dbg !808
  br i1 %319, label %320, label %332, !dbg !809

320:                                              ; preds = %317
  %321 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !810
  %322 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !812
  %323 = call i8* @strcpy(i8* %321, i8* %322) #9, !dbg !813
  %324 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !814
  %325 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0, !dbg !815
  %326 = call i8* @strcpy(i8* %324, i8* %325) #9, !dbg !816
  %327 = load i32, i32* %21, align 4, !dbg !817
  store i32 %327, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8, !dbg !818
  %328 = load i32, i32* @n_atab, align 4, !dbg !819
  store i32 %328, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !820
  call void @makebonds(%struct.residue_t* @res), !dbg !821
  %329 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !822
  %330 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0, !dbg !823
  %331 = call i32 @addresidue(%struct.molecule_t* %329, i8* %330, %struct.residue_t* @res), !dbg !824
  call void @initres(), !dbg !825
  store i32 0, i32* @n_atab, align 4, !dbg !826
  br label %332, !dbg !827

332:                                              ; preds = %320, %317
  %333 = load i32, i32* %9, align 4, !dbg !828
  %334 = add nsw i32 %333, 1, !dbg !828
  store i32 %334, i32* %9, align 4, !dbg !828
  %335 = load i32, i32* %8, align 4, !dbg !829
  %336 = icmp eq i32 %335, 32, !dbg !831
  br i1 %336, label %337, label %341, !dbg !832

337:                                              ; preds = %332
  %338 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0, !dbg !833
  %339 = load i32, i32* %9, align 4, !dbg !834
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %339) #9, !dbg !835
  br label %346, !dbg !835

341:                                              ; preds = %332
  %342 = load i32, i32* %8, align 4, !dbg !836
  %343 = trunc i32 %342 to i8, !dbg !836
  %344 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0, !dbg !838
  store i8 %343, i8* %344, align 1, !dbg !839
  %345 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 1, !dbg !840
  store i8 0, i8* %345, align 1, !dbg !841
  br label %346

346:                                              ; preds = %341, %337
  %347 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !842
  %348 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0, !dbg !843
  %349 = call i32 @addstrand(%struct.molecule_t* %347, i8* %348), !dbg !844
  call void @llvm.dbg.declare(metadata %struct.strand_t** %32, metadata !845, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.declare(metadata %struct.strand_t** %33, metadata !848, metadata !DIExpression()), !dbg !849
  store %struct.strand_t* null, %struct.strand_t** %32, align 8, !dbg !850
  %350 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !852
  %351 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %350, i32 0, i32 2, !dbg !853
  %352 = load %struct.strand_t*, %struct.strand_t** %351, align 8, !dbg !853
  store %struct.strand_t* %352, %struct.strand_t** %33, align 8, !dbg !854
  br label %353, !dbg !855

353:                                              ; preds = %366, %346
  %354 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !856
  %355 = icmp ne %struct.strand_t* %354, null, !dbg !858
  br i1 %355, label %356, label %370, !dbg !858

356:                                              ; preds = %353
  %357 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !859
  %358 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %357, i32 0, i32 0, !dbg !862
  %359 = load i8*, i8** %358, align 8, !dbg !862
  %360 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0, !dbg !863
  %361 = call i32 @strcmp(i8* %359, i8* %360) #8, !dbg !864
  %362 = icmp ne i32 %361, 0, !dbg !864
  br i1 %362, label %365, label %363, !dbg !865

363:                                              ; preds = %356
  %364 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !866
  store %struct.strand_t* %364, %struct.strand_t** %32, align 8, !dbg !868
  br label %370, !dbg !869

365:                                              ; preds = %356
  br label %366, !dbg !870

366:                                              ; preds = %365
  %367 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !871
  %368 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %367, i32 0, i32 4, !dbg !872
  %369 = load %struct.strand_t*, %struct.strand_t** %368, align 8, !dbg !872
  store %struct.strand_t* %369, %struct.strand_t** %33, align 8, !dbg !873
  br label %353, !dbg !874, !llvm.loop !875

370:                                              ; preds = %363, %353
  %371 = load %struct.strand_t*, %struct.strand_t** %32, align 8, !dbg !877
  %372 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %371, i32 0, i32 6, !dbg !878
  store i32 10000, i32* %372, align 4, !dbg !879
  %373 = load %struct.strand_t*, %struct.strand_t** %32, align 8, !dbg !880
  %374 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %373, i32 0, i32 6, !dbg !881
  %375 = load i32, i32* %374, align 4, !dbg !881
  %376 = sext i32 %375 to i64, !dbg !880
  %377 = mul i64 %376, 128, !dbg !882
  %378 = call noalias i8* @malloc(i64 %377) #9, !dbg !883
  %379 = bitcast i8* %378 to %struct.residue_t**, !dbg !884
  %380 = load %struct.strand_t*, %struct.strand_t** %32, align 8, !dbg !885
  %381 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %380, i32 0, i32 7, !dbg !886
  store %struct.residue_t** %379, %struct.residue_t*** %381, align 8, !dbg !887
  %382 = load %struct.strand_t*, %struct.strand_t** %32, align 8, !dbg !888
  %383 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %382, i32 0, i32 7, !dbg !890
  %384 = load %struct.residue_t**, %struct.residue_t*** %383, align 8, !dbg !890
  %385 = icmp eq %struct.residue_t** %384, null, !dbg !891
  br i1 %385, label %386, label %387, !dbg !892

386:                                              ; preds = %370
  br label %387, !dbg !893

387:                                              ; preds = %386, %370
  %388 = load i32, i32* %8, align 4, !dbg !895
  store i32 %388, i32* %7, align 4, !dbg !896
  %389 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !897
  %390 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !898
  %391 = call i8* @strcpy(i8* %389, i8* %390) #9, !dbg !899
  %392 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0, !dbg !900
  %393 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0, !dbg !901
  %394 = call i8* @strcpy(i8* %392, i8* %393) #9, !dbg !902
  %395 = load i32, i32* %20, align 4, !dbg !903
  store i32 %395, i32* %21, align 4, !dbg !904
  br label %423, !dbg !905

396:                                              ; preds = %313
  %397 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !906
  %398 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !908
  %399 = load i32, i32* %21, align 4, !dbg !909
  %400 = load i32, i32* %20, align 4, !dbg !910
  %401 = call i32 @isnewres(i8* %397, i8* %398, i32 %399, i32 %400), !dbg !911
  %402 = icmp ne i32 %401, 0, !dbg !911
  br i1 %402, label %403, label %422, !dbg !912

403:                                              ; preds = %396
  %404 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !913
  %405 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !915
  %406 = call i8* @strcpy(i8* %404, i8* %405) #9, !dbg !916
  %407 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !917
  %408 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0, !dbg !918
  %409 = call i8* @strcpy(i8* %407, i8* %408) #9, !dbg !919
  %410 = load i32, i32* %21, align 4, !dbg !920
  store i32 %410, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8, !dbg !921
  %411 = load i32, i32* @n_atab, align 4, !dbg !922
  store i32 %411, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !923
  call void @makebonds(%struct.residue_t* @res), !dbg !924
  %412 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !925
  %413 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0, !dbg !926
  %414 = call i32 @addresidue(%struct.molecule_t* %412, i8* %413, %struct.residue_t* @res), !dbg !927
  call void @initres(), !dbg !928
  %415 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !929
  %416 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0, !dbg !930
  %417 = call i8* @strcpy(i8* %415, i8* %416) #9, !dbg !931
  %418 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0, !dbg !932
  %419 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0, !dbg !933
  %420 = call i8* @strcpy(i8* %418, i8* %419) #9, !dbg !934
  %421 = load i32, i32* %20, align 4, !dbg !935
  store i32 %421, i32* %21, align 4, !dbg !936
  store i32 0, i32* @n_atab, align 4, !dbg !937
  br label %422, !dbg !938

422:                                              ; preds = %403, %396
  br label %423

423:                                              ; preds = %422, %387
  %424 = load i32, i32* @n_atab, align 4, !dbg !939
  %425 = sext i32 %424 to i64, !dbg !940
  %426 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %425, !dbg !940
  store %struct.atom_t* %426, %struct.atom_t** %6, align 8, !dbg !941
  %427 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !942
  call void @NAB_initatom(%struct.atom_t* %427, i32 0), !dbg !943
  %428 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !944
  %429 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %428, i32 0, i32 0, !dbg !945
  %430 = load i8*, i8** %429, align 8, !dbg !945
  %431 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0, !dbg !946
  %432 = call i8* @strcpy(i8* %430, i8* %431) #9, !dbg !947
  %433 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !948
  %434 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %433, i32 0, i32 2, !dbg !949
  store i32 0, i32* %434, align 8, !dbg !950
  %435 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !951
  %436 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %435, i32 0, i32 5, !dbg !952
  store %struct.residue_t* null, %struct.residue_t** %436, align 8, !dbg !953
  %437 = load double, double* %22, align 8, !dbg !954
  %438 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !955
  %439 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %438, i32 0, i32 17, !dbg !956
  %440 = getelementptr inbounds [3 x double], [3 x double]* %439, i64 0, i64 0, !dbg !955
  store double %437, double* %440, align 8, !dbg !957
  %441 = load double, double* %23, align 8, !dbg !958
  %442 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !959
  %443 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %442, i32 0, i32 17, !dbg !960
  %444 = getelementptr inbounds [3 x double], [3 x double]* %443, i64 0, i64 1, !dbg !959
  store double %441, double* %444, align 8, !dbg !961
  %445 = load double, double* %24, align 8, !dbg !962
  %446 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !963
  %447 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %446, i32 0, i32 17, !dbg !964
  %448 = getelementptr inbounds [3 x double], [3 x double]* %447, i64 0, i64 2, !dbg !963
  store double %445, double* %448, align 8, !dbg !965
  %449 = load double, double* %25, align 8, !dbg !966
  %450 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !967
  %451 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %450, i32 0, i32 6, !dbg !968
  store double %449, double* %451, align 8, !dbg !969
  %452 = load double, double* %26, align 8, !dbg !970
  %453 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !971
  %454 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %453, i32 0, i32 7, !dbg !972
  store double %452, double* %454, align 8, !dbg !973
  %455 = load double, double* %27, align 8, !dbg !974
  %456 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !975
  %457 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %456, i32 0, i32 9, !dbg !976
  store double %455, double* %457, align 8, !dbg !977
  %458 = load double, double* %28, align 8, !dbg !978
  %459 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !979
  %460 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %459, i32 0, i32 8, !dbg !980
  store double %458, double* %460, align 8, !dbg !981
  %461 = load i32, i32* @n_atab, align 4, !dbg !982
  %462 = add nsw i32 %461, 1, !dbg !982
  store i32 %462, i32* @n_atab, align 4, !dbg !982
  br label %492, !dbg !983

463:                                              ; preds = %70
  %464 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0, !dbg !984
  %465 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* %464, i64 3) #8, !dbg !986
  %466 = icmp eq i32 %465, 0, !dbg !987
  br i1 %466, label %467, label %485, !dbg !988

467:                                              ; preds = %463
  %468 = load i32, i32* @n_atab, align 4, !dbg !989
  %469 = icmp sgt i32 %468, 0, !dbg !992
  br i1 %469, label %470, label %482, !dbg !993

470:                                              ; preds = %467
  %471 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !994
  %472 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !996
  %473 = call i8* @strcpy(i8* %471, i8* %472) #9, !dbg !997
  %474 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !998
  %475 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0, !dbg !999
  %476 = call i8* @strcpy(i8* %474, i8* %475) #9, !dbg !1000
  %477 = load i32, i32* %21, align 4, !dbg !1001
  store i32 %477, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8, !dbg !1002
  %478 = load i32, i32* @n_atab, align 4, !dbg !1003
  store i32 %478, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !1004
  call void @makebonds(%struct.residue_t* @res), !dbg !1005
  %479 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1006
  %480 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0, !dbg !1007
  %481 = call i32 @addresidue(%struct.molecule_t* %479, i8* %480, %struct.residue_t* @res), !dbg !1008
  call void @initres(), !dbg !1009
  store i32 0, i32* @n_atab, align 4, !dbg !1010
  br label %482, !dbg !1011

482:                                              ; preds = %470, %467
  store i32 0, i32* %7, align 4, !dbg !1012
  %483 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1013
  store i8 0, i8* %483, align 1, !dbg !1014
  %484 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0, !dbg !1015
  store i8 0, i8* %484, align 1, !dbg !1016
  store i32 0, i32* %21, align 4, !dbg !1017
  br label %491, !dbg !1018

485:                                              ; preds = %463
  %486 = getelementptr inbounds [82 x i8], [82 x i8]* %10, i64 0, i64 0, !dbg !1019
  %487 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* %486, i64 3) #8, !dbg !1021
  %488 = icmp eq i32 %487, 0, !dbg !1022
  br i1 %488, label %489, label %490, !dbg !1023

489:                                              ; preds = %485
  br label %493, !dbg !1024

490:                                              ; preds = %485
  br label %491

491:                                              ; preds = %490, %482
  br label %492

492:                                              ; preds = %491, %423
  br label %45, !dbg !1025, !llvm.loop !1026

493:                                              ; preds = %489, %50
  %494 = load i32, i32* @n_atab, align 4, !dbg !1029
  %495 = icmp sgt i32 %494, 0, !dbg !1031
  br i1 %495, label %496, label %508, !dbg !1032

496:                                              ; preds = %493
  %497 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !1033
  %498 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i64 0, i64 0, !dbg !1035
  %499 = call i8* @strcpy(i8* %497, i8* %498) #9, !dbg !1036
  %500 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !1037
  %501 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0, !dbg !1038
  %502 = call i8* @strcpy(i8* %500, i8* %501) #9, !dbg !1039
  %503 = load i32, i32* %21, align 4, !dbg !1040
  store i32 %503, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8, !dbg !1041
  %504 = load i32, i32* @n_atab, align 4, !dbg !1042
  store i32 %504, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !1043
  call void @makebonds(%struct.residue_t* @res), !dbg !1044
  %505 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1045
  %506 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0, !dbg !1046
  %507 = call i32 @addresidue(%struct.molecule_t* %505, i8* %506, %struct.residue_t* @res), !dbg !1047
  call void @initres(), !dbg !1048
  br label %508, !dbg !1049

508:                                              ; preds = %496, %493
  %509 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1050
  %510 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %509, i32 0, i32 5, !dbg !1051
  store i32 0, i32* %510, align 8, !dbg !1052
  %511 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1053
  ret %struct.molecule_t* %511, !dbg !1054
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local [4 x [4 x double]]* @getmatrix(i8* %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1055, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !1057, metadata !DIExpression()), !dbg !1058
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8, !dbg !1058
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !1059, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1061, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1065, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1067, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1069, metadata !DIExpression()), !dbg !1070
  store i32 0, i32* %9, align 4, !dbg !1070
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1071
  %10 = load i8*, i8** %2, align 8, !dbg !1072
  %11 = icmp eq i8* %10, null, !dbg !1074
  br i1 %11, label %17, label %12, !dbg !1075

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8, !dbg !1076
  %14 = load i8, i8* %13, align 1, !dbg !1077
  %15 = sext i8 %14 to i32, !dbg !1077
  %16 = icmp eq i32 %15, 0, !dbg !1078
  br i1 %16, label %17, label %20, !dbg !1079

17:                                               ; preds = %12, %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1080
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !1082
  store i32 1, i32* %9, align 4, !dbg !1083
  br label %90, !dbg !1084

20:                                               ; preds = %12
  %21 = load i8*, i8** %2, align 8, !dbg !1085
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1087
  %23 = icmp ne i32 %22, 0, !dbg !1087
  br i1 %23, label %26, label %24, !dbg !1088

24:                                               ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1089
  store %struct._IO_FILE* %25, %struct._IO_FILE** %3, align 8, !dbg !1090
  br label %35, !dbg !1091

26:                                               ; preds = %20
  %27 = load i8*, i8** %2, align 8, !dbg !1092
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !1094
  store %struct._IO_FILE* %28, %struct._IO_FILE** %3, align 8, !dbg !1095
  %29 = icmp eq %struct._IO_FILE* %28, null, !dbg !1096
  br i1 %29, label %30, label %34, !dbg !1097

30:                                               ; preds = %26
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1098
  %32 = load i8*, i8** %2, align 8, !dbg !1100
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %32), !dbg !1101
  store i32 1, i32* %9, align 4, !dbg !1102
  br label %90, !dbg !1103

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35
  store i32 0, i32* %5, align 4, !dbg !1104
  br label %37, !dbg !1106

37:                                               ; preds = %81, %47, %36
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !1107
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1109
  %40 = call i8* @fgets(i8* %38, i32 256, %struct._IO_FILE* %39), !dbg !1110
  %41 = icmp ne i8* %40, null, !dbg !1111
  br i1 %41, label %42, label %82, !dbg !1111

42:                                               ; preds = %37
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !1112
  %44 = load i8, i8* %43, align 16, !dbg !1112
  %45 = sext i8 %44 to i32, !dbg !1112
  %46 = icmp eq i32 %45, 35, !dbg !1115
  br i1 %46, label %47, label %48, !dbg !1116

47:                                               ; preds = %42
  br label %37, !dbg !1117, !llvm.loop !1118

48:                                               ; preds = %42
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !1120
  %50 = load i32, i32* %5, align 4, !dbg !1121
  %51 = sext i32 %50 to i64, !dbg !1122
  %52 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %51, !dbg !1122
  %53 = getelementptr inbounds [4 x double], [4 x double]* %52, i64 0, i64 0, !dbg !1122
  %54 = load i32, i32* %5, align 4, !dbg !1123
  %55 = sext i32 %54 to i64, !dbg !1124
  %56 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %55, !dbg !1124
  %57 = getelementptr inbounds [4 x double], [4 x double]* %56, i64 0, i64 1, !dbg !1124
  %58 = load i32, i32* %5, align 4, !dbg !1125
  %59 = sext i32 %58 to i64, !dbg !1126
  %60 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %59, !dbg !1126
  %61 = getelementptr inbounds [4 x double], [4 x double]* %60, i64 0, i64 2, !dbg !1126
  %62 = load i32, i32* %5, align 4, !dbg !1127
  %63 = sext i32 %62 to i64, !dbg !1128
  %64 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %63, !dbg !1128
  %65 = getelementptr inbounds [4 x double], [4 x double]* %64, i64 0, i64 3, !dbg !1128
  %66 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* %53, double* %57, double* %61, double* %65) #9, !dbg !1129
  store i32 %66, i32* %7, align 4, !dbg !1130
  %67 = load i32, i32* %7, align 4, !dbg !1131
  %68 = icmp ne i32 %67, 4, !dbg !1133
  br i1 %68, label %69, label %75, !dbg !1134

69:                                               ; preds = %48
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1135
  %71 = load i32, i32* %5, align 4, !dbg !1137
  %72 = add nsw i32 %71, 1, !dbg !1138
  %73 = load i32, i32* %7, align 4, !dbg !1139
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %73), !dbg !1140
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1141
  store i32 1, i32* %9, align 4, !dbg !1142
  br label %90, !dbg !1143

75:                                               ; preds = %48
  %76 = load i32, i32* %5, align 4, !dbg !1144
  %77 = add nsw i32 %76, 1, !dbg !1144
  store i32 %77, i32* %5, align 4, !dbg !1144
  %78 = load i32, i32* %5, align 4, !dbg !1145
  %79 = icmp sge i32 %78, 4, !dbg !1147
  br i1 %79, label %80, label %81, !dbg !1148

80:                                               ; preds = %75
  br label %82, !dbg !1149

81:                                               ; preds = %75
  br label %37, !dbg !1150, !llvm.loop !1118

82:                                               ; preds = %80, %37
  %83 = load i32, i32* %5, align 4, !dbg !1151
  %84 = icmp ne i32 %83, 4, !dbg !1153
  br i1 %84, label %85, label %89, !dbg !1154

85:                                               ; preds = %82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1155
  %87 = load i32, i32* %5, align 4, !dbg !1157
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %87), !dbg !1158
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1159
  store i32 1, i32* %9, align 4, !dbg !1160
  br label %90, !dbg !1161

89:                                               ; preds = %82
  br label %90, !dbg !1162

90:                                               ; preds = %89, %85, %69, %30, %17
  call void @llvm.dbg.label(metadata !1163), !dbg !1164
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1165
  %92 = icmp ne %struct._IO_FILE* %91, null, !dbg !1167
  br i1 %92, label %93, label %100, !dbg !1168

93:                                               ; preds = %90
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1169
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1170
  %96 = icmp ne %struct._IO_FILE* %94, %95, !dbg !1171
  br i1 %96, label %97, label %100, !dbg !1172

97:                                               ; preds = %93
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !1173
  %99 = call i32 @fclose(%struct._IO_FILE* %98), !dbg !1174
  br label %100, !dbg !1174

100:                                              ; preds = %97, %93, %90
  store i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8** %8, align 8, !dbg !1175
  %101 = load i8*, i8** %8, align 8, !dbg !1176
  %102 = bitcast i8* %101 to [4 x [4 x double]]*, !dbg !1176
  ret [4 x [4 x double]]* %102, !dbg !1177
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* %1, i8* %2) #0 !dbg !1178 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.molecule_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1181, metadata !DIExpression()), !dbg !1182
  store %struct.molecule_t* %1, %struct.molecule_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %6, metadata !1183, metadata !DIExpression()), !dbg !1184
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1185, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !1187, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1189, metadata !DIExpression()), !dbg !1190
  %10 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8, !dbg !1191
  %11 = icmp ne %struct.molecule_t* %10, null, !dbg !1191
  br i1 %11, label %19, label %12, !dbg !1193

12:                                               ; preds = %3
  %13 = call i32 @get_mytaskid(), !dbg !1194
  %14 = icmp eq i32 %13, 0, !dbg !1197
  br i1 %14, label %15, label %18, !dbg !1198

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1199
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)), !dbg !1201
  br label %18, !dbg !1202

18:                                               ; preds = %15, %12
  store i32 0, i32* %4, align 4, !dbg !1203
  br label %53, !dbg !1203

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4, !dbg !1204
  %20 = call i32 @get_mytaskid(), !dbg !1205
  %21 = icmp eq i32 %20, 0, !dbg !1207
  br i1 %21, label %22, label %51, !dbg !1208

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8, !dbg !1209
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1212
  %25 = icmp ne i32 %24, 0, !dbg !1212
  br i1 %25, label %28, label %26, !dbg !1213

26:                                               ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1214
  store %struct._IO_FILE* %27, %struct._IO_FILE** %8, align 8, !dbg !1215
  br label %36, !dbg !1216

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8, !dbg !1217
  %30 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1219
  store %struct._IO_FILE* %30, %struct._IO_FILE** %8, align 8, !dbg !1220
  %31 = icmp eq %struct._IO_FILE* %30, null, !dbg !1221
  br i1 %31, label %32, label %35, !dbg !1222

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8, !dbg !1223
  %34 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %33), !dbg !1225
  store i32 -1, i32* %9, align 4, !dbg !1226
  br label %35, !dbg !1227

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %9, align 4, !dbg !1228
  %38 = icmp sge i32 %37, 0, !dbg !1230
  br i1 %38, label %39, label %50, !dbg !1231

39:                                               ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1232
  %41 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8, !dbg !1234
  %42 = load i8*, i8** %7, align 8, !dbg !1235
  call void @fputpdb(%struct._IO_FILE* %40, %struct.molecule_t* %41, i8* %42), !dbg !1236
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1237
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1239
  %45 = icmp ne %struct._IO_FILE* %43, %44, !dbg !1240
  br i1 %45, label %46, label %49, !dbg !1241

46:                                               ; preds = %39
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1242
  %48 = call i32 @fclose(%struct._IO_FILE* %47), !dbg !1243
  br label %49, !dbg !1243

49:                                               ; preds = %46, %39
  br label %50, !dbg !1244

50:                                               ; preds = %49, %36
  br label %51, !dbg !1245

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %9, align 4, !dbg !1246
  call void @reducerror(i32 %52), !dbg !1247
  store i32 0, i32* %4, align 4, !dbg !1248
  br label %53, !dbg !1248

53:                                               ; preds = %51, %18
  %54 = load i32, i32* %4, align 4, !dbg !1249
  ret i32 %54, !dbg !1249
}

declare dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fputpdb(%struct._IO_FILE* %0, %struct.molecule_t* %1, i8* %2) #0 !dbg !1250 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.molecule_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.strand_t*, align 8
  %14 = alloca %struct.residue_t*, align 8
  %15 = alloca %struct.atom_t*, align 8
  %16 = alloca [8 x i8], align 1
  %17 = alloca [8 x i8], align 1
  %18 = alloca [7 x i8], align 1
  %19 = alloca [256 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.cid_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1253, metadata !DIExpression()), !dbg !1254
  store %struct.molecule_t* %1, %struct.molecule_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %5, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1257, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1259, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1261, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1263, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1265, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1267, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1269, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.declare(metadata %struct.strand_t** %13, metadata !1271, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.declare(metadata %struct.residue_t** %14, metadata !1273, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.declare(metadata %struct.atom_t** %15, metadata !1275, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.declare(metadata [8 x i8]* %16, metadata !1277, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.declare(metadata [8 x i8]* %17, metadata !1280, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.declare(metadata [7 x i8]* %18, metadata !1282, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata [256 x i8]* %19, metadata !1287, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i32 0, i32* %20, align 4, !dbg !1290
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i32 0, i32* %21, align 4, !dbg !1292
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1293, metadata !DIExpression()), !dbg !1294
  store i32 0, i32* %22, align 4, !dbg !1294
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1295, metadata !DIExpression()), !dbg !1296
  store i32 0, i32* %23, align 4, !dbg !1296
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i32 0, i32* %24, align 4, !dbg !1298
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1299, metadata !DIExpression()), !dbg !1300
  store i32 0, i32* %25, align 4, !dbg !1300
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1301, metadata !DIExpression()), !dbg !1302
  store i32 0, i32* %26, align 4, !dbg !1302
  call void @llvm.dbg.declare(metadata %struct.cid_t** %27, metadata !1303, metadata !DIExpression()), !dbg !1304
  store %struct.cid_t* null, %struct.cid_t** %27, align 8, !dbg !1304
  %28 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1305
  %29 = icmp ne %struct.molecule_t* %28, null, !dbg !1305
  br i1 %29, label %33, label %30, !dbg !1307

30:                                               ; preds = %3
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1308
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0)), !dbg !1310
  br label %355, !dbg !1311

33:                                               ; preds = %3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1312
  %35 = icmp ne %struct._IO_FILE* %34, null, !dbg !1312
  br i1 %35, label %39, label %36, !dbg !1314

36:                                               ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1315
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0)), !dbg !1317
  br label %355, !dbg !1318

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8, !dbg !1319
  %41 = icmp eq i8* %40, null, !dbg !1321
  br i1 %41, label %42, label %44, !dbg !1322

42:                                               ; preds = %39
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1323
  store i8 0, i8* %43, align 16, !dbg !1324
  br label %49, !dbg !1323

44:                                               ; preds = %39
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1325
  %46 = load i8*, i8** %6, align 8, !dbg !1327
  %47 = call i8* @strncpy(i8* %45, i8* %46, i64 255) #9, !dbg !1328
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 255, !dbg !1329
  store i8 0, i8* %48, align 1, !dbg !1330
  br label %49

49:                                               ; preds = %44, %42
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1331
  %51 = call i8* @strstr(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1332
  %52 = icmp ne i8* %51, null, !dbg !1333
  %53 = zext i1 %52 to i32, !dbg !1333
  store i32 %53, i32* %20, align 4, !dbg !1334
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1335
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #8, !dbg !1336
  %56 = icmp ne i8* %55, null, !dbg !1337
  %57 = zext i1 %56 to i32, !dbg !1337
  store i32 %57, i32* %21, align 4, !dbg !1338
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1339
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #8, !dbg !1340
  %60 = icmp ne i8* %59, null, !dbg !1341
  %61 = zext i1 %60 to i32, !dbg !1341
  store i32 %61, i32* %22, align 4, !dbg !1342
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1343
  %63 = call i8* @strstr(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #8, !dbg !1344
  %64 = icmp ne i8* %63, null, !dbg !1345
  %65 = zext i1 %64 to i32, !dbg !1345
  store i32 %65, i32* %23, align 4, !dbg !1346
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1347
  %67 = call i8* @strstr(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #8, !dbg !1348
  %68 = icmp ne i8* %67, null, !dbg !1349
  %69 = zext i1 %68 to i32, !dbg !1349
  store i32 %69, i32* %24, align 4, !dbg !1350
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1351
  %71 = call i8* @strstr(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #8, !dbg !1352
  %72 = icmp ne i8* %71, null, !dbg !1353
  %73 = zext i1 %72 to i32, !dbg !1353
  store i32 %73, i32* %25, align 4, !dbg !1354
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0, !dbg !1355
  %75 = call i8* @strstr(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #8, !dbg !1356
  %76 = icmp ne i8* %75, null, !dbg !1357
  %77 = zext i1 %76 to i32, !dbg !1357
  store i32 %77, i32* %26, align 4, !dbg !1358
  %78 = load i32, i32* %26, align 4, !dbg !1359
  %79 = icmp ne i32 %78, 0, !dbg !1359
  br i1 %79, label %80, label %81, !dbg !1361

80:                                               ; preds = %49
  store i32 0, i32* %25, align 4, !dbg !1362
  br label %81, !dbg !1363

81:                                               ; preds = %80, %49
  %82 = load i32, i32* %25, align 4, !dbg !1364
  %83 = load i32, i32* %26, align 4, !dbg !1365
  %84 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1366
  %85 = call %struct.cid_t* @initcid(i32 %82, i32 %83, %struct.molecule_t* %84), !dbg !1367
  store %struct.cid_t* %85, %struct.cid_t** %27, align 8, !dbg !1368
  store i32 0, i32* %11, align 4, !dbg !1369
  store i32 0, i32* %8, align 4, !dbg !1371
  %86 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1372
  %87 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %86, i32 0, i32 2, !dbg !1373
  %88 = load %struct.strand_t*, %struct.strand_t** %87, align 8, !dbg !1373
  store %struct.strand_t* %88, %struct.strand_t** %13, align 8, !dbg !1374
  br label %89, !dbg !1375

89:                                               ; preds = %349, %81
  %90 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1376
  %91 = icmp ne %struct.strand_t* %90, null, !dbg !1378
  br i1 %91, label %92, label %353, !dbg !1378

92:                                               ; preds = %89
  %93 = load %struct.cid_t*, %struct.cid_t** %27, align 8, !dbg !1379
  %94 = load i32, i32* %25, align 4, !dbg !1381
  %95 = load i32, i32* %26, align 4, !dbg !1382
  %96 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1383
  %97 = call i32 @nextcid(%struct.cid_t* %93, i32 %94, i32 %95, %struct.strand_t* %96), !dbg !1384
  %98 = trunc i32 %97 to i8, !dbg !1384
  store i8 %98, i8* %12, align 1, !dbg !1385
  store i32 0, i32* %7, align 4, !dbg !1386
  br label %99, !dbg !1388

99:                                               ; preds = %341, %92
  %100 = load i32, i32* %7, align 4, !dbg !1389
  %101 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1391
  %102 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %101, i32 0, i32 5, !dbg !1392
  %103 = load i32, i32* %102, align 8, !dbg !1392
  %104 = icmp slt i32 %100, %103, !dbg !1393
  br i1 %104, label %105, label %346, !dbg !1394

105:                                              ; preds = %99
  %106 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1395
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %106, i32 0, i32 7, !dbg !1397
  %108 = load %struct.residue_t**, %struct.residue_t*** %107, align 8, !dbg !1397
  %109 = load i32, i32* %7, align 4, !dbg !1398
  %110 = sext i32 %109 to i64, !dbg !1395
  %111 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %108, i64 %110, !dbg !1395
  %112 = load %struct.residue_t*, %struct.residue_t** %111, align 8, !dbg !1395
  store %struct.residue_t* %112, %struct.residue_t** %14, align 8, !dbg !1399
  %113 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0, !dbg !1400
  %114 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1401
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %114, i32 0, i32 5, !dbg !1402
  %116 = load i8*, i8** %115, align 8, !dbg !1402
  %117 = icmp ne i8* %116, null, !dbg !1401
  br i1 %117, label %118, label %122, !dbg !1401

118:                                              ; preds = %105
  %119 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1403
  %120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %119, i32 0, i32 5, !dbg !1404
  %121 = load i8*, i8** %120, align 8, !dbg !1404
  br label %123, !dbg !1401

122:                                              ; preds = %105
  br label %123, !dbg !1401

123:                                              ; preds = %122, %118
  %124 = phi i8* [ %121, %118 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), %122 ], !dbg !1401
  %125 = call i8* @strcpy(i8* %113, i8* %124) #9, !dbg !1405
  %126 = load i32, i32* %22, align 4, !dbg !1406
  %127 = icmp ne i32 %126, 0, !dbg !1406
  br i1 %127, label %128, label %131, !dbg !1408

128:                                              ; preds = %123
  %129 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1409
  %130 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1410
  call void @mk_brook_rname(i8* %129, %struct.residue_t* %130), !dbg !1411
  br label %144, !dbg !1411

131:                                              ; preds = %123
  %132 = load i32, i32* %23, align 4, !dbg !1412
  %133 = icmp ne i32 %132, 0, !dbg !1412
  br i1 %133, label %134, label %137, !dbg !1414

134:                                              ; preds = %131
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1415
  %136 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1416
  call void @mk_wwpdb_rname(i8* %135, %struct.residue_t* %136), !dbg !1417
  br label %143, !dbg !1417

137:                                              ; preds = %131
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1418
  %139 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1419
  %140 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %139, i32 0, i32 4, !dbg !1420
  %141 = load i8*, i8** %140, align 8, !dbg !1420
  %142 = call i8* @strcpy(i8* %138, i8* %141) #9, !dbg !1421
  br label %143

143:                                              ; preds = %137, %134
  br label %144

144:                                              ; preds = %143, %128
  store i32 0, i32* %10, align 4, !dbg !1422
  br label %145, !dbg !1424

145:                                              ; preds = %337, %144
  %146 = load i32, i32* %10, align 4, !dbg !1425
  %147 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1427
  %148 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %147, i32 0, i32 15, !dbg !1428
  %149 = load i32, i32* %148, align 8, !dbg !1428
  %150 = icmp slt i32 %146, %149, !dbg !1429
  br i1 %150, label %151, label %340, !dbg !1430

151:                                              ; preds = %145
  %152 = load i32, i32* %11, align 4, !dbg !1431
  %153 = add nsw i32 %152, 1, !dbg !1431
  store i32 %153, i32* %11, align 4, !dbg !1431
  %154 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1433
  %155 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %154, i32 0, i32 17, !dbg !1434
  %156 = load %struct.atom_t*, %struct.atom_t** %155, align 8, !dbg !1434
  %157 = load i32, i32* %10, align 4, !dbg !1435
  %158 = sext i32 %157 to i64, !dbg !1433
  %159 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %156, i64 %158, !dbg !1433
  store %struct.atom_t* %159, %struct.atom_t** %15, align 8, !dbg !1436
  %160 = load i32, i32* %22, align 4, !dbg !1437
  %161 = icmp ne i32 %160, 0, !dbg !1437
  br i1 %161, label %162, label %168, !dbg !1439

162:                                              ; preds = %151
  %163 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !1440
  %164 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1441
  %165 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %164, i32 0, i32 0, !dbg !1442
  %166 = load i8*, i8** %165, align 8, !dbg !1442
  %167 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1443
  call void @mk_brook_aname(i8* %163, i8* %166, i8* %167), !dbg !1444
  br label %184, !dbg !1444

168:                                              ; preds = %151
  %169 = load i32, i32* %23, align 4, !dbg !1445
  %170 = icmp ne i32 %169, 0, !dbg !1445
  br i1 %170, label %171, label %177, !dbg !1447

171:                                              ; preds = %168
  %172 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !1448
  %173 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1449
  %174 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %173, i32 0, i32 0, !dbg !1450
  %175 = load i8*, i8** %174, align 8, !dbg !1450
  %176 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1451
  call void @mk_wwpdb_aname(i8* %172, i8* %175, i8* %176), !dbg !1452
  br label %183, !dbg !1452

177:                                              ; preds = %168
  %178 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !1453
  %179 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1454
  %180 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %179, i32 0, i32 0, !dbg !1455
  %181 = load i8*, i8** %180, align 8, !dbg !1455
  %182 = call i8* @strcpy(i8* %178, i8* %181) #9, !dbg !1456
  br label %183

183:                                              ; preds = %177, %171
  br label %184

184:                                              ; preds = %183, %162
  %185 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0, !dbg !1457
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0)) #8, !dbg !1459
  %187 = icmp ne i32 %186, 0, !dbg !1459
  br i1 %187, label %188, label %191, !dbg !1460

188:                                              ; preds = %184
  %189 = load i32, i32* %24, align 4, !dbg !1461
  %190 = icmp ne i32 %189, 0, !dbg !1461
  br i1 %190, label %191, label %248, !dbg !1462

191:                                              ; preds = %188, %184
  %192 = load i32, i32* %24, align 4, !dbg !1463
  %193 = icmp ne i32 %192, 0, !dbg !1463
  br i1 %193, label %194, label %197, !dbg !1463

194:                                              ; preds = %191
  %195 = load i32, i32* %8, align 4, !dbg !1465
  %196 = add nsw i32 %195, 1, !dbg !1466
  br label %200, !dbg !1463

197:                                              ; preds = %191
  %198 = load i32, i32* %7, align 4, !dbg !1467
  %199 = add nsw i32 %198, 1, !dbg !1468
  br label %200, !dbg !1463

200:                                              ; preds = %197, %194
  %201 = phi i32 [ %196, %194 ], [ %199, %197 ], !dbg !1463
  store i32 %201, i32* %9, align 4, !dbg !1469
  %202 = load i32, i32* %11, align 4, !dbg !1470
  %203 = icmp slt i32 %202, 100000, !dbg !1472
  br i1 %203, label %204, label %225, !dbg !1473

204:                                              ; preds = %200
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1474
  %206 = load i32, i32* %11, align 4, !dbg !1476
  %207 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !1477
  %208 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1478
  %209 = load i8, i8* %12, align 1, !dbg !1479
  %210 = sext i8 %209 to i32, !dbg !1479
  %211 = load i32, i32* %9, align 4, !dbg !1480
  %212 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1481
  %213 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %212, i32 0, i32 17, !dbg !1482
  %214 = getelementptr inbounds [3 x double], [3 x double]* %213, i64 0, i64 0, !dbg !1481
  %215 = load double, double* %214, align 8, !dbg !1481
  %216 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1483
  %217 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %216, i32 0, i32 17, !dbg !1484
  %218 = getelementptr inbounds [3 x double], [3 x double]* %217, i64 0, i64 1, !dbg !1483
  %219 = load double, double* %218, align 8, !dbg !1483
  %220 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1485
  %221 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %220, i32 0, i32 17, !dbg !1486
  %222 = getelementptr inbounds [3 x double], [3 x double]* %221, i64 0, i64 2, !dbg !1485
  %223 = load double, double* %222, align 8, !dbg !1485
  %224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %206, i8* %207, i8* %208, i32 %210, i32 %211, double %215, double %219, double %223), !dbg !1487
  br label %247, !dbg !1488

225:                                              ; preds = %200
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1489
  %227 = load i32, i32* %11, align 4, !dbg !1491
  %228 = srem i32 %227, 100000, !dbg !1492
  %229 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !1493
  %230 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1494
  %231 = load i8, i8* %12, align 1, !dbg !1495
  %232 = sext i8 %231 to i32, !dbg !1495
  %233 = load i32, i32* %9, align 4, !dbg !1496
  %234 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1497
  %235 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %234, i32 0, i32 17, !dbg !1498
  %236 = getelementptr inbounds [3 x double], [3 x double]* %235, i64 0, i64 0, !dbg !1497
  %237 = load double, double* %236, align 8, !dbg !1497
  %238 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1499
  %239 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %238, i32 0, i32 17, !dbg !1500
  %240 = getelementptr inbounds [3 x double], [3 x double]* %239, i64 0, i64 1, !dbg !1499
  %241 = load double, double* %240, align 8, !dbg !1499
  %242 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1501
  %243 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %242, i32 0, i32 17, !dbg !1502
  %244 = getelementptr inbounds [3 x double], [3 x double]* %243, i64 0, i64 2, !dbg !1501
  %245 = load double, double* %244, align 8, !dbg !1501
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %228, i8* %229, i8* %230, i32 %232, i32 %233, double %237, double %241, double %245), !dbg !1503
  br label %247

247:                                              ; preds = %225, %204
  br label %291, !dbg !1504

248:                                              ; preds = %188
  %249 = load i32, i32* %11, align 4, !dbg !1505
  %250 = icmp slt i32 %249, 100000, !dbg !1508
  br i1 %250, label %251, label %270, !dbg !1509

251:                                              ; preds = %248
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1510
  %253 = load i32, i32* %11, align 4, !dbg !1512
  %254 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !1513
  %255 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1514
  %256 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0, !dbg !1515
  %257 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1516
  %258 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %257, i32 0, i32 17, !dbg !1517
  %259 = getelementptr inbounds [3 x double], [3 x double]* %258, i64 0, i64 0, !dbg !1516
  %260 = load double, double* %259, align 8, !dbg !1516
  %261 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1518
  %262 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %261, i32 0, i32 17, !dbg !1519
  %263 = getelementptr inbounds [3 x double], [3 x double]* %262, i64 0, i64 1, !dbg !1518
  %264 = load double, double* %263, align 8, !dbg !1518
  %265 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1520
  %266 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %265, i32 0, i32 17, !dbg !1521
  %267 = getelementptr inbounds [3 x double], [3 x double]* %266, i64 0, i64 2, !dbg !1520
  %268 = load double, double* %267, align 8, !dbg !1520
  %269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %253, i8* %254, i8* %255, i8* %256, double %260, double %264, double %268), !dbg !1522
  br label %290, !dbg !1523

270:                                              ; preds = %248
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1524
  %272 = load i32, i32* %11, align 4, !dbg !1526
  %273 = srem i32 %272, 100000, !dbg !1527
  %274 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 0, !dbg !1528
  %275 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0, !dbg !1529
  %276 = getelementptr inbounds [7 x i8], [7 x i8]* %18, i64 0, i64 0, !dbg !1530
  %277 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1531
  %278 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %277, i32 0, i32 17, !dbg !1532
  %279 = getelementptr inbounds [3 x double], [3 x double]* %278, i64 0, i64 0, !dbg !1531
  %280 = load double, double* %279, align 8, !dbg !1531
  %281 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1533
  %282 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %281, i32 0, i32 17, !dbg !1534
  %283 = getelementptr inbounds [3 x double], [3 x double]* %282, i64 0, i64 1, !dbg !1533
  %284 = load double, double* %283, align 8, !dbg !1533
  %285 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1535
  %286 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %285, i32 0, i32 17, !dbg !1536
  %287 = getelementptr inbounds [3 x double], [3 x double]* %286, i64 0, i64 2, !dbg !1535
  %288 = load double, double* %287, align 8, !dbg !1535
  %289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %271, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %273, i8* %274, i8* %275, i8* %276, double %280, double %284, double %288), !dbg !1537
  br label %290

290:                                              ; preds = %270, %251
  br label %291

291:                                              ; preds = %290, %247
  %292 = load i32, i32* %20, align 4, !dbg !1538
  %293 = icmp ne i32 %292, 0, !dbg !1538
  br i1 %293, label %294, label %303, !dbg !1540

294:                                              ; preds = %291
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1541
  %296 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1543
  %297 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %296, i32 0, i32 6, !dbg !1544
  %298 = load double, double* %297, align 8, !dbg !1544
  %299 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1545
  %300 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %299, i32 0, i32 7, !dbg !1546
  %301 = load double, double* %300, align 8, !dbg !1546
  %302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %298, double %301), !dbg !1547
  br label %316, !dbg !1548

303:                                              ; preds = %291
  %304 = load i32, i32* %21, align 4, !dbg !1549
  %305 = icmp ne i32 %304, 0, !dbg !1549
  br i1 %305, label %315, label %306, !dbg !1551

306:                                              ; preds = %303
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1552
  %308 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1554
  %309 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %308, i32 0, i32 9, !dbg !1555
  %310 = load double, double* %309, align 8, !dbg !1555
  %311 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1556
  %312 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %311, i32 0, i32 8, !dbg !1557
  %313 = load double, double* %312, align 8, !dbg !1557
  %314 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %307, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %310, double %313), !dbg !1558
  br label %315, !dbg !1559

315:                                              ; preds = %306, %303
  br label %316

316:                                              ; preds = %315, %294
  %317 = load i32, i32* %22, align 4, !dbg !1560
  %318 = icmp ne i32 %317, 0, !dbg !1560
  br i1 %318, label %322, label %319, !dbg !1562

319:                                              ; preds = %316
  %320 = load i32, i32* %23, align 4, !dbg !1563
  %321 = icmp ne i32 %320, 0, !dbg !1563
  br i1 %321, label %322, label %334, !dbg !1564

322:                                              ; preds = %319, %316
  %323 = load i32, i32* %20, align 4, !dbg !1565
  %324 = icmp ne i32 %323, 0, !dbg !1565
  br i1 %324, label %334, label %325, !dbg !1566

325:                                              ; preds = %322
  %326 = load i32, i32* %21, align 4, !dbg !1567
  %327 = icmp ne i32 %326, 0, !dbg !1567
  br i1 %327, label %334, label %328, !dbg !1568

328:                                              ; preds = %325
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1569
  %330 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1571
  %331 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %330, i32 0, i32 0, !dbg !1572
  %332 = load i8*, i8** %331, align 8, !dbg !1572
  %333 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %332), !dbg !1573
  br label %334, !dbg !1574

334:                                              ; preds = %328, %325, %322, %319
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1575
  %336 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %335, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !1576
  br label %337, !dbg !1577

337:                                              ; preds = %334
  %338 = load i32, i32* %10, align 4, !dbg !1578
  %339 = add nsw i32 %338, 1, !dbg !1578
  store i32 %339, i32* %10, align 4, !dbg !1578
  br label %145, !dbg !1579, !llvm.loop !1580

340:                                              ; preds = %145
  br label %341, !dbg !1582

341:                                              ; preds = %340
  %342 = load i32, i32* %7, align 4, !dbg !1583
  %343 = add nsw i32 %342, 1, !dbg !1583
  store i32 %343, i32* %7, align 4, !dbg !1583
  %344 = load i32, i32* %8, align 4, !dbg !1584
  %345 = add nsw i32 %344, 1, !dbg !1584
  store i32 %345, i32* %8, align 4, !dbg !1584
  br label %99, !dbg !1585, !llvm.loop !1586

346:                                              ; preds = %99
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1588
  %348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %347, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)), !dbg !1589
  br label %349, !dbg !1590

349:                                              ; preds = %346
  %350 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1591
  %351 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %350, i32 0, i32 4, !dbg !1592
  %352 = load %struct.strand_t*, %struct.strand_t** %351, align 8, !dbg !1592
  store %struct.strand_t* %352, %struct.strand_t** %13, align 8, !dbg !1593
  br label %89, !dbg !1594, !llvm.loop !1595

353:                                              ; preds = %89
  %354 = load %struct.cid_t*, %struct.cid_t** %27, align 8, !dbg !1597
  call void @freecid(%struct.cid_t* %354), !dbg !1598
  br label %355, !dbg !1599

355:                                              ; preds = %353, %36, %30
  ret void, !dbg !1599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* %2) #0 !dbg !1600 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.molecule_t*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1603, metadata !DIExpression()), !dbg !1604
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1605, metadata !DIExpression()), !dbg !1606
  store %struct.molecule_t* %2, %struct.molecule_t** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %7, metadata !1607, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %8, metadata !1609, metadata !DIExpression()), !dbg !1610
  %9 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !1611
  %10 = icmp ne %struct.molecule_t* %9, null, !dbg !1611
  br i1 %10, label %14, label %11, !dbg !1613

11:                                               ; preds = %3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1614
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0)), !dbg !1616
  store i32 0, i32* %4, align 4, !dbg !1617
  br label %39, !dbg !1617

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8, !dbg !1618
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1620
  %17 = icmp ne i32 %16, 0, !dbg !1620
  br i1 %17, label %20, label %18, !dbg !1621

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1622
  store %struct._IO_FILE* %19, %struct._IO_FILE** %8, align 8, !dbg !1623
  br label %28, !dbg !1624

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8, !dbg !1625
  %22 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1627
  store %struct._IO_FILE* %22, %struct._IO_FILE** %8, align 8, !dbg !1628
  %23 = icmp eq %struct._IO_FILE* %22, null, !dbg !1629
  br i1 %23, label %24, label %27, !dbg !1630

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8, !dbg !1631
  %26 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %25), !dbg !1633
  call void @exit(i32 1) #10, !dbg !1634
  unreachable, !dbg !1634

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1635
  %30 = load i8*, i8** %6, align 8, !dbg !1636
  %31 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !1637
  call void @fputcif(%struct._IO_FILE* %29, i8* %30, %struct.molecule_t* %31), !dbg !1638
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1639
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1641
  %34 = icmp ne %struct._IO_FILE* %32, %33, !dbg !1642
  br i1 %34, label %35, label %38, !dbg !1643

35:                                               ; preds = %28
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8, !dbg !1644
  %37 = call i32 @fclose(%struct._IO_FILE* %36), !dbg !1645
  br label %38, !dbg !1645

38:                                               ; preds = %35, %28
  store i32 0, i32* %4, align 4, !dbg !1646
  br label %39, !dbg !1646

39:                                               ; preds = %38, %11
  %40 = load i32, i32* %4, align 4, !dbg !1647
  ret i32 %40, !dbg !1647
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fputcif(%struct._IO_FILE* %0, i8* %1, %struct.molecule_t* %2) #0 !dbg !1648 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.molecule_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.strand_t*, align 8
  %14 = alloca %struct.residue_t*, align 8
  %15 = alloca %struct.atom_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !1651, metadata !DIExpression()), !dbg !1652
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1653, metadata !DIExpression()), !dbg !1654
  store %struct.molecule_t* %2, %struct.molecule_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %6, metadata !1655, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1657, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1659, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1661, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1663, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1665, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1667, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.declare(metadata %struct.strand_t** %13, metadata !1669, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.declare(metadata %struct.residue_t** %14, metadata !1671, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.declare(metadata %struct.atom_t** %15, metadata !1673, metadata !DIExpression()), !dbg !1674
  %16 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8, !dbg !1675
  %17 = icmp ne %struct.molecule_t* %16, null, !dbg !1675
  br i1 %17, label %18, label %19, !dbg !1678

18:                                               ; preds = %3
  br label %20, !dbg !1678

19:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1389, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #10, !dbg !1675
  unreachable, !dbg !1675

20:                                               ; preds = %18
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1679
  %22 = icmp ne %struct._IO_FILE* %21, null, !dbg !1679
  br i1 %22, label %23, label %24, !dbg !1682

23:                                               ; preds = %20
  br label %25, !dbg !1682

24:                                               ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #10, !dbg !1679
  unreachable, !dbg !1679

25:                                               ; preds = %23
  %26 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8, !dbg !1683
  %27 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %26, i32 0, i32 1, !dbg !1684
  %28 = load i32, i32* %27, align 8, !dbg !1684
  %29 = icmp sgt i32 %28, 1, !dbg !1685
  %30 = zext i1 %29 to i64, !dbg !1686
  %31 = select i1 %29, i32 65, i32 46, !dbg !1686
  %32 = trunc i32 %31 to i8, !dbg !1686
  store i8 %32, i8* %12, align 1, !dbg !1687
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1688
  %34 = load i8*, i8** %5, align 8, !dbg !1689
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %34), !dbg !1690
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1691
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0)), !dbg !1692
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1693
  %39 = load i8*, i8** %5, align 8, !dbg !1694
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %39), !dbg !1695
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1696
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0)), !dbg !1697
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1698
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0)), !dbg !1699
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1700
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0)), !dbg !1701
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1702
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0)), !dbg !1703
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1704
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0)), !dbg !1705
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1706
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0)), !dbg !1707
  store i32 0, i32* %11, align 4, !dbg !1708
  store i32 0, i32* %10, align 4, !dbg !1709
  store i32 0, i32* %8, align 4, !dbg !1711
  %53 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8, !dbg !1712
  %54 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %53, i32 0, i32 2, !dbg !1713
  %55 = load %struct.strand_t*, %struct.strand_t** %54, align 8, !dbg !1713
  store %struct.strand_t* %55, %struct.strand_t** %13, align 8, !dbg !1714
  br label %56, !dbg !1715

56:                                               ; preds = %137, %25
  %57 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1716
  %58 = icmp ne %struct.strand_t* %57, null, !dbg !1718
  br i1 %58, label %59, label %141, !dbg !1718

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4, !dbg !1719
  %61 = add nsw i32 %60, 1, !dbg !1719
  store i32 %61, i32* %11, align 4, !dbg !1719
  store i32 0, i32* %7, align 4, !dbg !1721
  br label %62, !dbg !1723

62:                                               ; preds = %123, %59
  %63 = load i32, i32* %7, align 4, !dbg !1724
  %64 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1726
  %65 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %64, i32 0, i32 5, !dbg !1727
  %66 = load i32, i32* %65, align 8, !dbg !1727
  %67 = icmp slt i32 %63, %66, !dbg !1728
  br i1 %67, label %68, label %128, !dbg !1729

68:                                               ; preds = %62
  %69 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1730
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %69, i32 0, i32 7, !dbg !1732
  %71 = load %struct.residue_t**, %struct.residue_t*** %70, align 8, !dbg !1732
  %72 = load i32, i32* %7, align 4, !dbg !1733
  %73 = sext i32 %72 to i64, !dbg !1730
  %74 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %71, i64 %73, !dbg !1730
  %75 = load %struct.residue_t*, %struct.residue_t** %74, align 8, !dbg !1730
  store %struct.residue_t* %75, %struct.residue_t** %14, align 8, !dbg !1734
  store i32 0, i32* %9, align 4, !dbg !1735
  br label %76, !dbg !1737

76:                                               ; preds = %119, %68
  %77 = load i32, i32* %9, align 4, !dbg !1738
  %78 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1740
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %78, i32 0, i32 15, !dbg !1741
  %80 = load i32, i32* %79, align 8, !dbg !1741
  %81 = icmp slt i32 %77, %80, !dbg !1742
  br i1 %81, label %82, label %122, !dbg !1743

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4, !dbg !1744
  %84 = add nsw i32 %83, 1, !dbg !1744
  store i32 %84, i32* %10, align 4, !dbg !1744
  %85 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1746
  %86 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %85, i32 0, i32 17, !dbg !1747
  %87 = load %struct.atom_t*, %struct.atom_t** %86, align 8, !dbg !1747
  %88 = load i32, i32* %9, align 4, !dbg !1748
  %89 = sext i32 %88 to i64, !dbg !1746
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i64 %89, !dbg !1746
  store %struct.atom_t* %90, %struct.atom_t** %15, align 8, !dbg !1749
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !1750
  %92 = load i32, i32* %10, align 4, !dbg !1751
  %93 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1752
  %94 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %93, i32 0, i32 0, !dbg !1753
  %95 = load i8*, i8** %94, align 8, !dbg !1753
  %96 = load %struct.residue_t*, %struct.residue_t** %14, align 8, !dbg !1754
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %96, i32 0, i32 4, !dbg !1755
  %98 = load i8*, i8** %97, align 8, !dbg !1755
  %99 = load i8, i8* %12, align 1, !dbg !1756
  %100 = sext i8 %99 to i32, !dbg !1756
  %101 = load i32, i32* %8, align 4, !dbg !1757
  %102 = add nsw i32 %101, 1, !dbg !1758
  %103 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1759
  %104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %103, i32 0, i32 17, !dbg !1760
  %105 = getelementptr inbounds [3 x double], [3 x double]* %104, i64 0, i64 0, !dbg !1759
  %106 = load double, double* %105, align 8, !dbg !1759
  %107 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1761
  %108 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %107, i32 0, i32 17, !dbg !1762
  %109 = getelementptr inbounds [3 x double], [3 x double]* %108, i64 0, i64 1, !dbg !1761
  %110 = load double, double* %109, align 8, !dbg !1761
  %111 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !1763
  %112 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %111, i32 0, i32 17, !dbg !1764
  %113 = getelementptr inbounds [3 x double], [3 x double]* %112, i64 0, i64 2, !dbg !1763
  %114 = load double, double* %113, align 8, !dbg !1763
  %115 = load i32, i32* %11, align 4, !dbg !1765
  %116 = load i32, i32* %7, align 4, !dbg !1766
  %117 = add nsw i32 %116, 1, !dbg !1767
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %92, i8* %95, i8* %98, i32 %100, i32 %102, double %106, double %110, double %114, i32 %115, i32 %117), !dbg !1768
  br label %119, !dbg !1769

119:                                              ; preds = %82
  %120 = load i32, i32* %9, align 4, !dbg !1770
  %121 = add nsw i32 %120, 1, !dbg !1770
  store i32 %121, i32* %9, align 4, !dbg !1770
  br label %76, !dbg !1771, !llvm.loop !1772

122:                                              ; preds = %76
  br label %123, !dbg !1774

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4, !dbg !1775
  %125 = add nsw i32 %124, 1, !dbg !1775
  store i32 %125, i32* %7, align 4, !dbg !1775
  %126 = load i32, i32* %8, align 4, !dbg !1776
  %127 = add nsw i32 %126, 1, !dbg !1776
  store i32 %127, i32* %8, align 4, !dbg !1776
  br label %62, !dbg !1777, !llvm.loop !1778

128:                                              ; preds = %62
  %129 = load %struct.molecule_t*, %struct.molecule_t** %6, align 8, !dbg !1780
  %130 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %129, i32 0, i32 1, !dbg !1782
  %131 = load i32, i32* %130, align 8, !dbg !1782
  %132 = icmp sgt i32 %131, 1, !dbg !1783
  br i1 %132, label %133, label %136, !dbg !1784

133:                                              ; preds = %128
  %134 = load i8, i8* %12, align 1, !dbg !1785
  %135 = add i8 %134, 1, !dbg !1785
  store i8 %135, i8* %12, align 1, !dbg !1785
  br label %136, !dbg !1786

136:                                              ; preds = %133, %128
  br label %137, !dbg !1787

137:                                              ; preds = %136
  %138 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1788
  %139 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %138, i32 0, i32 4, !dbg !1789
  %140 = load %struct.strand_t*, %struct.strand_t** %139, align 8, !dbg !1789
  store %struct.strand_t* %140, %struct.strand_t** %13, align 8, !dbg !1790
  br label %56, !dbg !1791, !llvm.loop !1792

141:                                              ; preds = %56
  ret void, !dbg !1794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* %1) #0 !dbg !1795 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.molecule_t*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.strand_t*, align 8
  %8 = alloca %struct.residue_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.extbond_t*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1798, metadata !DIExpression()), !dbg !1799
  store %struct.molecule_t* %1, %struct.molecule_t** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %5, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !1802, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.declare(metadata %struct.strand_t** %7, metadata !1804, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.declare(metadata %struct.residue_t** %8, metadata !1806, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1808, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1810, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1812, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1814, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1816, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1818, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1820, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1822, metadata !DIExpression()), !dbg !1823
  store i32 0, i32* %16, align 4, !dbg !1823
  call void @llvm.dbg.declare(metadata i32** %17, metadata !1824, metadata !DIExpression()), !dbg !1825
  store i32* null, i32** %17, align 8, !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1826, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.declare(metadata %struct.extbond_t** %19, metadata !1828, metadata !DIExpression()), !dbg !1829
  %20 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1830
  %21 = icmp ne %struct.molecule_t* %20, null, !dbg !1830
  br i1 %21, label %25, label %22, !dbg !1832

22:                                               ; preds = %2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1833
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)), !dbg !1835
  store i32 0, i32* %3, align 4, !dbg !1836
  br label %257, !dbg !1836

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8, !dbg !1837
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1839
  store %struct._IO_FILE* %27, %struct._IO_FILE** %6, align 8, !dbg !1840
  %28 = icmp eq %struct._IO_FILE* %27, null, !dbg !1841
  br i1 %28, label %29, label %32, !dbg !1842

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8, !dbg !1843
  %31 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %30), !dbg !1845
  call void @exit(i32 1) #10, !dbg !1846
  unreachable, !dbg !1846

32:                                               ; preds = %25
  store i32 0, i32* %15, align 4, !dbg !1847
  %33 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1849
  %34 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %33, i32 0, i32 2, !dbg !1850
  %35 = load %struct.strand_t*, %struct.strand_t** %34, align 8, !dbg !1850
  store %struct.strand_t* %35, %struct.strand_t** %7, align 8, !dbg !1851
  br label %36, !dbg !1852

36:                                               ; preds = %45, %32
  %37 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1853
  %38 = icmp ne %struct.strand_t* %37, null, !dbg !1855
  br i1 %38, label %39, label %49, !dbg !1855

39:                                               ; preds = %36
  %40 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1856
  %41 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %40, i32 0, i32 5, !dbg !1857
  %42 = load i32, i32* %41, align 8, !dbg !1857
  %43 = load i32, i32* %15, align 4, !dbg !1858
  %44 = add nsw i32 %43, %42, !dbg !1858
  store i32 %44, i32* %15, align 4, !dbg !1858
  br label %45, !dbg !1859

45:                                               ; preds = %39
  %46 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1860
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %46, i32 0, i32 4, !dbg !1861
  %48 = load %struct.strand_t*, %struct.strand_t** %47, align 8, !dbg !1861
  store %struct.strand_t* %48, %struct.strand_t** %7, align 8, !dbg !1862
  br label %36, !dbg !1863, !llvm.loop !1864

49:                                               ; preds = %36
  %50 = load i32, i32* %15, align 4, !dbg !1866
  %51 = sext i32 %50 to i64, !dbg !1866
  %52 = mul i64 %51, 4, !dbg !1868
  %53 = call noalias i8* @malloc(i64 %52) #9, !dbg !1869
  %54 = bitcast i8* %53 to i32*, !dbg !1870
  store i32* %54, i32** %17, align 8, !dbg !1871
  %55 = icmp eq i32* %54, null, !dbg !1872
  br i1 %55, label %56, label %58, !dbg !1873

56:                                               ; preds = %49
  %57 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)), !dbg !1874
  store i32 1, i32* %16, align 4, !dbg !1876
  br label %247, !dbg !1877

58:                                               ; preds = %49
  store i32 0, i32* %10, align 4, !dbg !1878
  store i32 0, i32* %15, align 4, !dbg !1880
  %59 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1881
  %60 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %59, i32 0, i32 2, !dbg !1882
  %61 = load %struct.strand_t*, %struct.strand_t** %60, align 8, !dbg !1882
  store %struct.strand_t* %61, %struct.strand_t** %7, align 8, !dbg !1883
  br label %62, !dbg !1884

62:                                               ; preds = %120, %58
  %63 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1885
  %64 = icmp ne %struct.strand_t* %63, null, !dbg !1887
  br i1 %64, label %65, label %124, !dbg !1887

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4, !dbg !1888
  %67 = load i32*, i32** %17, align 8, !dbg !1890
  %68 = load i32, i32* %15, align 4, !dbg !1891
  %69 = sext i32 %68 to i64, !dbg !1890
  %70 = getelementptr inbounds i32, i32* %67, i64 %69, !dbg !1890
  store i32 %66, i32* %70, align 4, !dbg !1892
  %71 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1893
  %72 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %71, i32 0, i32 5, !dbg !1895
  %73 = load i32, i32* %72, align 8, !dbg !1895
  %74 = icmp sgt i32 %73, 0, !dbg !1896
  br i1 %74, label %75, label %119, !dbg !1897

75:                                               ; preds = %65
  %76 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1898
  %77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %76, i32 0, i32 7, !dbg !1900
  %78 = load %struct.residue_t**, %struct.residue_t*** %77, align 8, !dbg !1900
  %79 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %78, i64 0, !dbg !1898
  %80 = load %struct.residue_t*, %struct.residue_t** %79, align 8, !dbg !1898
  %81 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %80, i32 0, i32 15, !dbg !1901
  %82 = load i32, i32* %81, align 8, !dbg !1901
  %83 = load i32, i32* %10, align 4, !dbg !1902
  %84 = add nsw i32 %83, %82, !dbg !1902
  store i32 %84, i32* %10, align 4, !dbg !1902
  store i32 1, i32* %13, align 4, !dbg !1903
  br label %85, !dbg !1905

85:                                               ; preds = %110, %75
  %86 = load i32, i32* %13, align 4, !dbg !1906
  %87 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1908
  %88 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %87, i32 0, i32 5, !dbg !1909
  %89 = load i32, i32* %88, align 8, !dbg !1909
  %90 = icmp slt i32 %86, %89, !dbg !1910
  br i1 %90, label %91, label %113, !dbg !1911

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4, !dbg !1912
  %93 = load i32*, i32** %17, align 8, !dbg !1914
  %94 = load i32, i32* %15, align 4, !dbg !1915
  %95 = load i32, i32* %13, align 4, !dbg !1916
  %96 = add nsw i32 %94, %95, !dbg !1917
  %97 = sext i32 %96 to i64, !dbg !1914
  %98 = getelementptr inbounds i32, i32* %93, i64 %97, !dbg !1914
  store i32 %92, i32* %98, align 4, !dbg !1918
  %99 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1919
  %100 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %99, i32 0, i32 7, !dbg !1920
  %101 = load %struct.residue_t**, %struct.residue_t*** %100, align 8, !dbg !1920
  %102 = load i32, i32* %13, align 4, !dbg !1921
  %103 = sext i32 %102 to i64, !dbg !1919
  %104 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %101, i64 %103, !dbg !1919
  %105 = load %struct.residue_t*, %struct.residue_t** %104, align 8, !dbg !1919
  %106 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %105, i32 0, i32 15, !dbg !1922
  %107 = load i32, i32* %106, align 8, !dbg !1922
  %108 = load i32, i32* %10, align 4, !dbg !1923
  %109 = add nsw i32 %108, %107, !dbg !1923
  store i32 %109, i32* %10, align 4, !dbg !1923
  br label %110, !dbg !1924

110:                                              ; preds = %91
  %111 = load i32, i32* %13, align 4, !dbg !1925
  %112 = add nsw i32 %111, 1, !dbg !1925
  store i32 %112, i32* %13, align 4, !dbg !1925
  br label %85, !dbg !1926, !llvm.loop !1927

113:                                              ; preds = %85
  %114 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1929
  %115 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %114, i32 0, i32 5, !dbg !1930
  %116 = load i32, i32* %115, align 8, !dbg !1930
  %117 = load i32, i32* %15, align 4, !dbg !1931
  %118 = add nsw i32 %117, %116, !dbg !1931
  store i32 %118, i32* %15, align 4, !dbg !1931
  br label %119, !dbg !1932

119:                                              ; preds = %113, %65
  br label %120, !dbg !1933

120:                                              ; preds = %119
  %121 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1934
  %122 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %121, i32 0, i32 4, !dbg !1935
  %123 = load %struct.strand_t*, %struct.strand_t** %122, align 8, !dbg !1935
  store %struct.strand_t* %123, %struct.strand_t** %7, align 8, !dbg !1936
  br label %62, !dbg !1937, !llvm.loop !1938

124:                                              ; preds = %62
  store i32 0, i32* %15, align 4, !dbg !1940
  %125 = load %struct.molecule_t*, %struct.molecule_t** %5, align 8, !dbg !1942
  %126 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %125, i32 0, i32 2, !dbg !1943
  %127 = load %struct.strand_t*, %struct.strand_t** %126, align 8, !dbg !1943
  store %struct.strand_t* %127, %struct.strand_t** %7, align 8, !dbg !1944
  br label %128, !dbg !1945

128:                                              ; preds = %242, %124
  %129 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1946
  %130 = icmp ne %struct.strand_t* %129, null, !dbg !1948
  br i1 %130, label %131, label %246, !dbg !1948

131:                                              ; preds = %128
  store i32 0, i32* %13, align 4, !dbg !1949
  br label %132, !dbg !1952

132:                                              ; preds = %233, %131
  %133 = load i32, i32* %13, align 4, !dbg !1953
  %134 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1955
  %135 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %134, i32 0, i32 5, !dbg !1956
  %136 = load i32, i32* %135, align 8, !dbg !1956
  %137 = icmp slt i32 %133, %136, !dbg !1957
  br i1 %137, label %138, label %236, !dbg !1958

138:                                              ; preds = %132
  %139 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !1959
  %140 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %139, i32 0, i32 7, !dbg !1961
  %141 = load %struct.residue_t**, %struct.residue_t*** %140, align 8, !dbg !1961
  %142 = load i32, i32* %13, align 4, !dbg !1962
  %143 = sext i32 %142 to i64, !dbg !1959
  %144 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %141, i64 %143, !dbg !1959
  %145 = load %struct.residue_t*, %struct.residue_t** %144, align 8, !dbg !1959
  store %struct.residue_t* %145, %struct.residue_t** %8, align 8, !dbg !1963
  %146 = load i32*, i32** %17, align 8, !dbg !1964
  %147 = load i32, i32* %13, align 4, !dbg !1965
  %148 = load i32, i32* %15, align 4, !dbg !1966
  %149 = add nsw i32 %147, %148, !dbg !1967
  %150 = sext i32 %149 to i64, !dbg !1964
  %151 = getelementptr inbounds i32, i32* %146, i64 %150, !dbg !1964
  %152 = load i32, i32* %151, align 4, !dbg !1964
  store i32 %152, i32* %9, align 4, !dbg !1968
  store i32 0, i32* %18, align 4, !dbg !1969
  br label %153, !dbg !1971

153:                                              ; preds = %182, %138
  %154 = load i32, i32* %18, align 4, !dbg !1972
  %155 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1974
  %156 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %155, i32 0, i32 11, !dbg !1975
  %157 = load i32, i32* %156, align 8, !dbg !1975
  %158 = icmp slt i32 %154, %157, !dbg !1976
  br i1 %158, label %159, label %185, !dbg !1977

159:                                              ; preds = %153
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !1978
  %161 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1980
  %162 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %161, i32 0, i32 12, !dbg !1981
  %163 = load [2 x i32]*, [2 x i32]** %162, align 8, !dbg !1981
  %164 = load i32, i32* %18, align 4, !dbg !1982
  %165 = sext i32 %164 to i64, !dbg !1980
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %163, i64 %165, !dbg !1980
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %166, i64 0, i64 0, !dbg !1980
  %168 = load i32, i32* %167, align 4, !dbg !1980
  %169 = load i32, i32* %9, align 4, !dbg !1983
  %170 = add nsw i32 %168, %169, !dbg !1984
  %171 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1985
  %172 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %171, i32 0, i32 12, !dbg !1986
  %173 = load [2 x i32]*, [2 x i32]** %172, align 8, !dbg !1986
  %174 = load i32, i32* %18, align 4, !dbg !1987
  %175 = sext i32 %174 to i64, !dbg !1985
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i64 %175, !dbg !1985
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %176, i64 0, i64 1, !dbg !1985
  %178 = load i32, i32* %177, align 4, !dbg !1985
  %179 = load i32, i32* %9, align 4, !dbg !1988
  %180 = add nsw i32 %178, %179, !dbg !1989
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %170, i32 %180), !dbg !1990
  br label %182, !dbg !1991

182:                                              ; preds = %159
  %183 = load i32, i32* %18, align 4, !dbg !1992
  %184 = add nsw i32 %183, 1, !dbg !1992
  store i32 %184, i32* %18, align 4, !dbg !1992
  br label %153, !dbg !1993, !llvm.loop !1994

185:                                              ; preds = %153
  %186 = load %struct.residue_t*, %struct.residue_t** %8, align 8, !dbg !1996
  %187 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %186, i32 0, i32 10, !dbg !1998
  %188 = load %struct.extbond_t*, %struct.extbond_t** %187, align 8, !dbg !1998
  store %struct.extbond_t* %188, %struct.extbond_t** %19, align 8, !dbg !1999
  br label %189, !dbg !2000

189:                                              ; preds = %228, %185
  %190 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8, !dbg !2001
  %191 = icmp ne %struct.extbond_t* %190, null, !dbg !2003
  br i1 %191, label %192, label %232, !dbg !2003

192:                                              ; preds = %189
  %193 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8, !dbg !2004
  %194 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %193, i32 0, i32 2, !dbg !2007
  %195 = load i32, i32* %194, align 4, !dbg !2007
  store i32 %195, i32* %14, align 4, !dbg !2008
  %196 = load i32, i32* %13, align 4, !dbg !2009
  %197 = add nsw i32 %196, 1, !dbg !2010
  %198 = icmp slt i32 %195, %197, !dbg !2011
  br i1 %198, label %199, label %200, !dbg !2012

199:                                              ; preds = %192
  br label %228, !dbg !2013

200:                                              ; preds = %192
  %201 = load i32*, i32** %17, align 8, !dbg !2014
  %202 = load i32, i32* %15, align 4, !dbg !2015
  %203 = load i32, i32* %13, align 4, !dbg !2016
  %204 = add nsw i32 %202, %203, !dbg !2017
  %205 = sext i32 %204 to i64, !dbg !2014
  %206 = getelementptr inbounds i32, i32* %201, i64 %205, !dbg !2014
  %207 = load i32, i32* %206, align 4, !dbg !2014
  store i32 %207, i32* %11, align 4, !dbg !2018
  %208 = load i32*, i32** %17, align 8, !dbg !2019
  %209 = load i32, i32* %15, align 4, !dbg !2020
  %210 = load i32, i32* %14, align 4, !dbg !2021
  %211 = add nsw i32 %209, %210, !dbg !2022
  %212 = sub nsw i32 %211, 1, !dbg !2023
  %213 = sext i32 %212 to i64, !dbg !2019
  %214 = getelementptr inbounds i32, i32* %208, i64 %213, !dbg !2019
  %215 = load i32, i32* %214, align 4, !dbg !2019
  store i32 %215, i32* %12, align 4, !dbg !2024
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2025
  %217 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8, !dbg !2026
  %218 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %217, i32 0, i32 1, !dbg !2027
  %219 = load i32, i32* %218, align 8, !dbg !2027
  %220 = load i32, i32* %11, align 4, !dbg !2028
  %221 = add nsw i32 %219, %220, !dbg !2029
  %222 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8, !dbg !2030
  %223 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %222, i32 0, i32 3, !dbg !2031
  %224 = load i32, i32* %223, align 8, !dbg !2031
  %225 = load i32, i32* %12, align 4, !dbg !2032
  %226 = add nsw i32 %224, %225, !dbg !2033
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %221, i32 %226), !dbg !2034
  br label %228, !dbg !2035

228:                                              ; preds = %200, %199
  %229 = load %struct.extbond_t*, %struct.extbond_t** %19, align 8, !dbg !2036
  %230 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %229, i32 0, i32 0, !dbg !2037
  %231 = load %struct.extbond_t*, %struct.extbond_t** %230, align 8, !dbg !2037
  store %struct.extbond_t* %231, %struct.extbond_t** %19, align 8, !dbg !2038
  br label %189, !dbg !2039, !llvm.loop !2040

232:                                              ; preds = %189
  br label %233, !dbg !2042

233:                                              ; preds = %232
  %234 = load i32, i32* %13, align 4, !dbg !2043
  %235 = add nsw i32 %234, 1, !dbg !2043
  store i32 %235, i32* %13, align 4, !dbg !2043
  br label %132, !dbg !2044, !llvm.loop !2045

236:                                              ; preds = %132
  %237 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !2047
  %238 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %237, i32 0, i32 5, !dbg !2048
  %239 = load i32, i32* %238, align 8, !dbg !2048
  %240 = load i32, i32* %15, align 4, !dbg !2049
  %241 = add nsw i32 %240, %239, !dbg !2049
  store i32 %241, i32* %15, align 4, !dbg !2049
  br label %242, !dbg !2050

242:                                              ; preds = %236
  %243 = load %struct.strand_t*, %struct.strand_t** %7, align 8, !dbg !2051
  %244 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %243, i32 0, i32 4, !dbg !2052
  %245 = load %struct.strand_t*, %struct.strand_t** %244, align 8, !dbg !2052
  store %struct.strand_t* %245, %struct.strand_t** %7, align 8, !dbg !2053
  br label %128, !dbg !2054, !llvm.loop !2055

246:                                              ; preds = %128
  br label %247, !dbg !2056

247:                                              ; preds = %246, %56
  call void @llvm.dbg.label(metadata !2057), !dbg !2058
  %248 = load i32*, i32** %17, align 8, !dbg !2059
  %249 = icmp ne i32* %248, null, !dbg !2059
  br i1 %249, label %250, label %253, !dbg !2061

250:                                              ; preds = %247
  %251 = load i32*, i32** %17, align 8, !dbg !2062
  %252 = bitcast i32* %251 to i8*, !dbg !2062
  call void @free(i8* %252) #9, !dbg !2063
  br label %253, !dbg !2063

253:                                              ; preds = %250, %247
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !2064
  %255 = call i32 @fclose(%struct._IO_FILE* %254), !dbg !2065
  %256 = load i32, i32* %16, align 4, !dbg !2066
  store i32 %256, i32* %3, align 4, !dbg !2067
  br label %257, !dbg !2067

257:                                              ; preds = %253, %22
  %258 = load i32, i32* %3, align 4, !dbg !2068
  ret i32 %258, !dbg !2068
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) #0 !dbg !2069 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.molecule_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct.strand_t*, align 8
  %12 = alloca %struct.residue_t*, align 8
  %13 = alloca %struct.residue_t*, align 8
  %14 = alloca %struct.atom_t*, align 8
  %15 = alloca %struct.atom_t*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.residue_t**, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2072, metadata !DIExpression()), !dbg !2073
  store %struct.molecule_t* %1, %struct.molecule_t** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %7, metadata !2074, metadata !DIExpression()), !dbg !2075
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2076, metadata !DIExpression()), !dbg !2077
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2078, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %10, metadata !2080, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.declare(metadata %struct.strand_t** %11, metadata !2082, metadata !DIExpression()), !dbg !2083
  call void @llvm.dbg.declare(metadata %struct.residue_t** %12, metadata !2084, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.declare(metadata %struct.residue_t** %13, metadata !2086, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.declare(metadata %struct.atom_t** %14, metadata !2088, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.declare(metadata %struct.atom_t** %15, metadata !2090, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2092, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2094, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2096, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2098, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2100, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.declare(metadata %struct.residue_t*** %21, metadata !2102, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2104, metadata !DIExpression()), !dbg !2105
  store i32 0, i32* %22, align 4, !dbg !2105
  %23 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !2106
  %24 = icmp ne %struct.molecule_t* %23, null, !dbg !2106
  br i1 %24, label %28, label %25, !dbg !2108

25:                                               ; preds = %4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2109
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)), !dbg !2111
  store i32 0, i32* %5, align 4, !dbg !2112
  br label %301, !dbg !2112

28:                                               ; preds = %4
  %29 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !2113
  %30 = load i8*, i8** %8, align 8, !dbg !2114
  call void @select_atoms(%struct.molecule_t* %29, i8* %30), !dbg !2115
  %31 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !2116
  %32 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %31, i32 0, i32 2, !dbg !2118
  %33 = load %struct.strand_t*, %struct.strand_t** %32, align 8, !dbg !2118
  store %struct.strand_t* %33, %struct.strand_t** %11, align 8, !dbg !2119
  br label %34, !dbg !2120

34:                                               ; preds = %117, %28
  %35 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2121
  %36 = icmp ne %struct.strand_t* %35, null, !dbg !2123
  br i1 %36, label %37, label %121, !dbg !2123

37:                                               ; preds = %34
  %38 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2124
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %38, i32 0, i32 2, !dbg !2126
  %40 = load i32, i32* %39, align 4, !dbg !2127
  %41 = and i32 %40, -3, !dbg !2127
  store i32 %41, i32* %39, align 4, !dbg !2127
  %42 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2128
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %42, i32 0, i32 2, !dbg !2129
  %44 = load i32, i32* %43, align 4, !dbg !2129
  %45 = and i32 %44, 1, !dbg !2130
  %46 = icmp ne i32 %45, 0, !dbg !2131
  %47 = zext i1 %46 to i64, !dbg !2131
  %48 = select i1 %46, i32 2, i32 0, !dbg !2131
  %49 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2132
  %50 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %49, i32 0, i32 2, !dbg !2133
  %51 = load i32, i32* %50, align 4, !dbg !2134
  %52 = or i32 %51, %48, !dbg !2134
  store i32 %52, i32* %50, align 4, !dbg !2134
  store i32 0, i32* %17, align 4, !dbg !2135
  br label %53, !dbg !2137

53:                                               ; preds = %113, %37
  %54 = load i32, i32* %17, align 4, !dbg !2138
  %55 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2140
  %56 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %55, i32 0, i32 5, !dbg !2141
  %57 = load i32, i32* %56, align 8, !dbg !2141
  %58 = icmp slt i32 %54, %57, !dbg !2142
  br i1 %58, label %59, label %116, !dbg !2143

59:                                               ; preds = %53
  %60 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2144
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %60, i32 0, i32 7, !dbg !2146
  %62 = load %struct.residue_t**, %struct.residue_t*** %61, align 8, !dbg !2146
  %63 = load i32, i32* %17, align 4, !dbg !2147
  %64 = sext i32 %63 to i64, !dbg !2144
  %65 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %62, i64 %64, !dbg !2144
  %66 = load %struct.residue_t*, %struct.residue_t** %65, align 8, !dbg !2144
  store %struct.residue_t* %66, %struct.residue_t** %12, align 8, !dbg !2148
  %67 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2149
  %68 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %67, i32 0, i32 6, !dbg !2150
  %69 = load i32, i32* %68, align 8, !dbg !2151
  %70 = and i32 %69, -3, !dbg !2151
  store i32 %70, i32* %68, align 8, !dbg !2151
  %71 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2152
  %72 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %71, i32 0, i32 6, !dbg !2153
  %73 = load i32, i32* %72, align 8, !dbg !2153
  %74 = and i32 %73, 1, !dbg !2154
  %75 = icmp ne i32 %74, 0, !dbg !2155
  %76 = zext i1 %75 to i64, !dbg !2155
  %77 = select i1 %75, i32 2, i32 0, !dbg !2155
  %78 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2156
  %79 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %78, i32 0, i32 6, !dbg !2157
  %80 = load i32, i32* %79, align 8, !dbg !2158
  %81 = or i32 %80, %77, !dbg !2158
  store i32 %81, i32* %79, align 8, !dbg !2158
  store i32 0, i32* %19, align 4, !dbg !2159
  %82 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2161
  %83 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %82, i32 0, i32 17, !dbg !2162
  %84 = load %struct.atom_t*, %struct.atom_t** %83, align 8, !dbg !2162
  store %struct.atom_t* %84, %struct.atom_t** %14, align 8, !dbg !2163
  br label %85, !dbg !2164

85:                                               ; preds = %107, %59
  %86 = load i32, i32* %19, align 4, !dbg !2165
  %87 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2167
  %88 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %87, i32 0, i32 15, !dbg !2168
  %89 = load i32, i32* %88, align 8, !dbg !2168
  %90 = icmp slt i32 %86, %89, !dbg !2169
  br i1 %90, label %91, label %112, !dbg !2170

91:                                               ; preds = %85
  %92 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2171
  %93 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %92, i32 0, i32 2, !dbg !2173
  %94 = load i32, i32* %93, align 8, !dbg !2174
  %95 = and i32 %94, -3, !dbg !2174
  store i32 %95, i32* %93, align 8, !dbg !2174
  %96 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2175
  %97 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %96, i32 0, i32 2, !dbg !2176
  %98 = load i32, i32* %97, align 8, !dbg !2176
  %99 = and i32 %98, 1, !dbg !2177
  %100 = icmp ne i32 %99, 0, !dbg !2178
  %101 = zext i1 %100 to i64, !dbg !2178
  %102 = select i1 %100, i32 2, i32 0, !dbg !2178
  %103 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2179
  %104 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %103, i32 0, i32 2, !dbg !2180
  %105 = load i32, i32* %104, align 8, !dbg !2181
  %106 = or i32 %105, %102, !dbg !2181
  store i32 %106, i32* %104, align 8, !dbg !2181
  br label %107, !dbg !2182

107:                                              ; preds = %91
  %108 = load i32, i32* %19, align 4, !dbg !2183
  %109 = add nsw i32 %108, 1, !dbg !2183
  store i32 %109, i32* %19, align 4, !dbg !2183
  %110 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2184
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 1, !dbg !2184
  store %struct.atom_t* %111, %struct.atom_t** %14, align 8, !dbg !2184
  br label %85, !dbg !2185, !llvm.loop !2186

112:                                              ; preds = %85
  br label %113, !dbg !2188

113:                                              ; preds = %112
  %114 = load i32, i32* %17, align 4, !dbg !2189
  %115 = add nsw i32 %114, 1, !dbg !2189
  store i32 %115, i32* %17, align 4, !dbg !2189
  br label %53, !dbg !2190, !llvm.loop !2191

116:                                              ; preds = %53
  br label %117, !dbg !2193

117:                                              ; preds = %116
  %118 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2194
  %119 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %118, i32 0, i32 4, !dbg !2195
  %120 = load %struct.strand_t*, %struct.strand_t** %119, align 8, !dbg !2195
  store %struct.strand_t* %120, %struct.strand_t** %11, align 8, !dbg !2196
  br label %34, !dbg !2197, !llvm.loop !2198

121:                                              ; preds = %34
  %122 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !2200
  %123 = load i8*, i8** %9, align 8, !dbg !2201
  call void @select_atoms(%struct.molecule_t* %122, i8* %123), !dbg !2202
  store i32 0, i32* %16, align 4, !dbg !2203
  %124 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !2205
  %125 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %124, i32 0, i32 2, !dbg !2206
  %126 = load %struct.strand_t*, %struct.strand_t** %125, align 8, !dbg !2206
  store %struct.strand_t* %126, %struct.strand_t** %11, align 8, !dbg !2207
  br label %127, !dbg !2208

127:                                              ; preds = %136, %121
  %128 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2209
  %129 = icmp ne %struct.strand_t* %128, null, !dbg !2211
  br i1 %129, label %130, label %140, !dbg !2211

130:                                              ; preds = %127
  %131 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2212
  %132 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %131, i32 0, i32 5, !dbg !2213
  %133 = load i32, i32* %132, align 8, !dbg !2213
  %134 = load i32, i32* %16, align 4, !dbg !2214
  %135 = add nsw i32 %134, %133, !dbg !2214
  store i32 %135, i32* %16, align 4, !dbg !2214
  br label %136, !dbg !2215

136:                                              ; preds = %130
  %137 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2216
  %138 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %137, i32 0, i32 4, !dbg !2217
  %139 = load %struct.strand_t*, %struct.strand_t** %138, align 8, !dbg !2217
  store %struct.strand_t* %139, %struct.strand_t** %11, align 8, !dbg !2218
  br label %127, !dbg !2219, !llvm.loop !2220

140:                                              ; preds = %127
  %141 = load i32, i32* %16, align 4, !dbg !2222
  %142 = sext i32 %141 to i64, !dbg !2222
  %143 = mul i64 %142, 8, !dbg !2224
  %144 = call noalias i8* @malloc(i64 %143) #9, !dbg !2225
  %145 = bitcast i8* %144 to %struct.residue_t**, !dbg !2226
  store %struct.residue_t** %145, %struct.residue_t*** %21, align 8, !dbg !2227
  %146 = icmp eq %struct.residue_t** %145, null, !dbg !2228
  br i1 %146, label %147, label %150, !dbg !2229

147:                                              ; preds = %140
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2230
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)), !dbg !2232
  br label %293, !dbg !2233

150:                                              ; preds = %140
  store i32 0, i32* %18, align 4, !dbg !2234
  %151 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !2236
  %152 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %151, i32 0, i32 2, !dbg !2237
  %153 = load %struct.strand_t*, %struct.strand_t** %152, align 8, !dbg !2237
  store %struct.strand_t* %153, %struct.strand_t** %11, align 8, !dbg !2238
  br label %154, !dbg !2239

154:                                              ; preds = %181, %150
  %155 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2240
  %156 = icmp ne %struct.strand_t* %155, null, !dbg !2242
  br i1 %156, label %157, label %185, !dbg !2242

157:                                              ; preds = %154
  store i32 0, i32* %17, align 4, !dbg !2243
  br label %158, !dbg !2246

158:                                              ; preds = %177, %157
  %159 = load i32, i32* %17, align 4, !dbg !2247
  %160 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2249
  %161 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %160, i32 0, i32 5, !dbg !2250
  %162 = load i32, i32* %161, align 8, !dbg !2250
  %163 = icmp slt i32 %159, %162, !dbg !2251
  br i1 %163, label %164, label %180, !dbg !2252

164:                                              ; preds = %158
  %165 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2253
  %166 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %165, i32 0, i32 7, !dbg !2254
  %167 = load %struct.residue_t**, %struct.residue_t*** %166, align 8, !dbg !2254
  %168 = load i32, i32* %17, align 4, !dbg !2255
  %169 = sext i32 %168 to i64, !dbg !2253
  %170 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %167, i64 %169, !dbg !2253
  %171 = load %struct.residue_t*, %struct.residue_t** %170, align 8, !dbg !2253
  %172 = load %struct.residue_t**, %struct.residue_t*** %21, align 8, !dbg !2256
  %173 = load i32, i32* %18, align 4, !dbg !2257
  %174 = add nsw i32 %173, 1, !dbg !2257
  store i32 %174, i32* %18, align 4, !dbg !2257
  %175 = sext i32 %173 to i64, !dbg !2256
  %176 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %172, i64 %175, !dbg !2256
  store %struct.residue_t* %171, %struct.residue_t** %176, align 8, !dbg !2258
  br label %177, !dbg !2256

177:                                              ; preds = %164
  %178 = load i32, i32* %17, align 4, !dbg !2259
  %179 = add nsw i32 %178, 1, !dbg !2259
  store i32 %179, i32* %17, align 4, !dbg !2259
  br label %158, !dbg !2260, !llvm.loop !2261

180:                                              ; preds = %158
  br label %181, !dbg !2263

181:                                              ; preds = %180
  %182 = load %struct.strand_t*, %struct.strand_t** %11, align 8, !dbg !2264
  %183 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %182, i32 0, i32 4, !dbg !2265
  %184 = load %struct.strand_t*, %struct.strand_t** %183, align 8, !dbg !2265
  store %struct.strand_t* %184, %struct.strand_t** %11, align 8, !dbg !2266
  br label %154, !dbg !2267, !llvm.loop !2268

185:                                              ; preds = %154
  %186 = load i8*, i8** %6, align 8, !dbg !2270
  %187 = call %struct._IO_FILE* @fopen(i8* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2272
  store %struct._IO_FILE* %187, %struct._IO_FILE** %10, align 8, !dbg !2273
  %188 = icmp eq %struct._IO_FILE* %187, null, !dbg !2274
  br i1 %188, label %189, label %193, !dbg !2275

189:                                              ; preds = %185
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2276
  %191 = load i8*, i8** %6, align 8, !dbg !2278
  %192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %191), !dbg !2279
  br label %293, !dbg !2280

193:                                              ; preds = %185
  store i32 0, i32* %22, align 4, !dbg !2281
  store i32 0, i32* %17, align 4, !dbg !2283
  br label %194, !dbg !2284

194:                                              ; preds = %289, %193
  %195 = load i32, i32* %17, align 4, !dbg !2285
  %196 = load i32, i32* %16, align 4, !dbg !2287
  %197 = icmp slt i32 %195, %196, !dbg !2288
  br i1 %197, label %198, label %292, !dbg !2289

198:                                              ; preds = %194
  %199 = load %struct.residue_t**, %struct.residue_t*** %21, align 8, !dbg !2290
  %200 = load i32, i32* %17, align 4, !dbg !2292
  %201 = sext i32 %200 to i64, !dbg !2290
  %202 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %199, i64 %201, !dbg !2290
  %203 = load %struct.residue_t*, %struct.residue_t** %202, align 8, !dbg !2290
  store %struct.residue_t* %203, %struct.residue_t** %12, align 8, !dbg !2293
  store i32 0, i32* %19, align 4, !dbg !2294
  br label %204, !dbg !2296

204:                                              ; preds = %285, %198
  %205 = load i32, i32* %19, align 4, !dbg !2297
  %206 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2299
  %207 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %206, i32 0, i32 15, !dbg !2300
  %208 = load i32, i32* %207, align 8, !dbg !2300
  %209 = icmp slt i32 %205, %208, !dbg !2301
  br i1 %209, label %210, label %288, !dbg !2302

210:                                              ; preds = %204
  %211 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2303
  %212 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %211, i32 0, i32 17, !dbg !2305
  %213 = load %struct.atom_t*, %struct.atom_t** %212, align 8, !dbg !2305
  %214 = load i32, i32* %19, align 4, !dbg !2306
  %215 = sext i32 %214 to i64, !dbg !2303
  %216 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %213, i64 %215, !dbg !2303
  store %struct.atom_t* %216, %struct.atom_t** %14, align 8, !dbg !2307
  %217 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2308
  %218 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %217, i32 0, i32 2, !dbg !2310
  %219 = load i32, i32* %218, align 8, !dbg !2310
  %220 = and i32 2, %219, !dbg !2311
  %221 = icmp ne i32 %220, 0, !dbg !2311
  br i1 %221, label %222, label %284, !dbg !2312

222:                                              ; preds = %210
  store i32 0, i32* %18, align 4, !dbg !2313
  br label %223, !dbg !2316

223:                                              ; preds = %280, %222
  %224 = load i32, i32* %18, align 4, !dbg !2317
  %225 = load i32, i32* %16, align 4, !dbg !2319
  %226 = icmp slt i32 %224, %225, !dbg !2320
  br i1 %226, label %227, label %283, !dbg !2321

227:                                              ; preds = %223
  %228 = load %struct.residue_t**, %struct.residue_t*** %21, align 8, !dbg !2322
  %229 = load i32, i32* %18, align 4, !dbg !2324
  %230 = sext i32 %229 to i64, !dbg !2322
  %231 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %228, i64 %230, !dbg !2322
  %232 = load %struct.residue_t*, %struct.residue_t** %231, align 8, !dbg !2322
  store %struct.residue_t* %232, %struct.residue_t** %13, align 8, !dbg !2325
  store i32 0, i32* %20, align 4, !dbg !2326
  br label %233, !dbg !2328

233:                                              ; preds = %276, %227
  %234 = load i32, i32* %20, align 4, !dbg !2329
  %235 = load %struct.residue_t*, %struct.residue_t** %13, align 8, !dbg !2331
  %236 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %235, i32 0, i32 15, !dbg !2332
  %237 = load i32, i32* %236, align 8, !dbg !2332
  %238 = icmp slt i32 %234, %237, !dbg !2333
  br i1 %238, label %239, label %279, !dbg !2334

239:                                              ; preds = %233
  %240 = load %struct.residue_t*, %struct.residue_t** %13, align 8, !dbg !2335
  %241 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %240, i32 0, i32 17, !dbg !2337
  %242 = load %struct.atom_t*, %struct.atom_t** %241, align 8, !dbg !2337
  %243 = load i32, i32* %20, align 4, !dbg !2338
  %244 = sext i32 %243 to i64, !dbg !2335
  %245 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %242, i64 %244, !dbg !2335
  store %struct.atom_t* %245, %struct.atom_t** %15, align 8, !dbg !2339
  %246 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !2340
  %247 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %246, i32 0, i32 2, !dbg !2342
  %248 = load i32, i32* %247, align 8, !dbg !2342
  %249 = and i32 1, %248, !dbg !2343
  %250 = icmp ne i32 %249, 0, !dbg !2343
  br i1 %250, label %251, label %275, !dbg !2344

251:                                              ; preds = %239
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8, !dbg !2345
  %253 = load i32, i32* %17, align 4, !dbg !2347
  %254 = add nsw i32 %253, 1, !dbg !2348
  %255 = load %struct.residue_t*, %struct.residue_t** %12, align 8, !dbg !2349
  %256 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %255, i32 0, i32 4, !dbg !2350
  %257 = load i8*, i8** %256, align 8, !dbg !2350
  %258 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2351
  %259 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %258, i32 0, i32 0, !dbg !2352
  %260 = load i8*, i8** %259, align 8, !dbg !2352
  %261 = load i32, i32* %18, align 4, !dbg !2353
  %262 = add nsw i32 %261, 1, !dbg !2354
  %263 = load %struct.residue_t*, %struct.residue_t** %13, align 8, !dbg !2355
  %264 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %263, i32 0, i32 4, !dbg !2356
  %265 = load i8*, i8** %264, align 8, !dbg !2356
  %266 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !2357
  %267 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %266, i32 0, i32 0, !dbg !2358
  %268 = load i8*, i8** %267, align 8, !dbg !2358
  %269 = load %struct.atom_t*, %struct.atom_t** %14, align 8, !dbg !2359
  %270 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !2360
  %271 = call double @dist(%struct.atom_t* %269, %struct.atom_t* %270), !dbg !2361
  %272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %254, i8* %257, i8* %260, i32 %262, i8* %265, i8* %268, double %271), !dbg !2362
  %273 = load i32, i32* %22, align 4, !dbg !2363
  %274 = add nsw i32 %273, 1, !dbg !2363
  store i32 %274, i32* %22, align 4, !dbg !2363
  br label %275, !dbg !2364

275:                                              ; preds = %251, %239
  br label %276, !dbg !2365

276:                                              ; preds = %275
  %277 = load i32, i32* %20, align 4, !dbg !2366
  %278 = add nsw i32 %277, 1, !dbg !2366
  store i32 %278, i32* %20, align 4, !dbg !2366
  br label %233, !dbg !2367, !llvm.loop !2368

279:                                              ; preds = %233
  br label %280, !dbg !2370

280:                                              ; preds = %279
  %281 = load i32, i32* %18, align 4, !dbg !2371
  %282 = add nsw i32 %281, 1, !dbg !2371
  store i32 %282, i32* %18, align 4, !dbg !2371
  br label %223, !dbg !2372, !llvm.loop !2373

283:                                              ; preds = %223
  br label %284, !dbg !2375

284:                                              ; preds = %283, %210
  br label %285, !dbg !2376

285:                                              ; preds = %284
  %286 = load i32, i32* %19, align 4, !dbg !2377
  %287 = add nsw i32 %286, 1, !dbg !2377
  store i32 %287, i32* %19, align 4, !dbg !2377
  br label %204, !dbg !2378, !llvm.loop !2379

288:                                              ; preds = %204
  br label %289, !dbg !2381

289:                                              ; preds = %288
  %290 = load i32, i32* %17, align 4, !dbg !2382
  %291 = add nsw i32 %290, 1, !dbg !2382
  store i32 %291, i32* %17, align 4, !dbg !2382
  br label %194, !dbg !2383, !llvm.loop !2384

292:                                              ; preds = %194
  br label %293, !dbg !2385

293:                                              ; preds = %292, %189, %147
  call void @llvm.dbg.label(metadata !2386), !dbg !2387
  %294 = load %struct.residue_t**, %struct.residue_t*** %21, align 8, !dbg !2388
  %295 = icmp ne %struct.residue_t** %294, null, !dbg !2388
  br i1 %295, label %296, label %299, !dbg !2390

296:                                              ; preds = %293
  %297 = load %struct.residue_t**, %struct.residue_t*** %21, align 8, !dbg !2391
  %298 = bitcast %struct.residue_t** %297 to i8*, !dbg !2391
  call void @free(i8* %298) #9, !dbg !2392
  br label %299, !dbg !2392

299:                                              ; preds = %296, %293
  %300 = load i32, i32* %22, align 4, !dbg !2393
  store i32 %300, i32* %5, align 4, !dbg !2394
  br label %301, !dbg !2394

301:                                              ; preds = %299, %25
  %302 = load i32, i32* %5, align 4, !dbg !2395
  ret i32 %302, !dbg !2395
}

declare dso_local void @select_atoms(%struct.molecule_t*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal double @dist(%struct.atom_t* %0, %struct.atom_t* %1) #0 !dbg !2396 {
  %3 = alloca %struct.atom_t*, align 8
  %4 = alloca %struct.atom_t*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.atom_t* %0, %struct.atom_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %3, metadata !2399, metadata !DIExpression()), !dbg !2400
  store %struct.atom_t* %1, %struct.atom_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.atom_t** %4, metadata !2401, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.declare(metadata double* %5, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.declare(metadata double* %6, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata double* %7, metadata !2407, metadata !DIExpression()), !dbg !2408
  %8 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !2409
  %9 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i32 0, i32 17, !dbg !2410
  %10 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0, !dbg !2409
  %11 = load double, double* %10, align 8, !dbg !2409
  %12 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !2411
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i32 0, i32 17, !dbg !2412
  %14 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 0, !dbg !2411
  %15 = load double, double* %14, align 8, !dbg !2411
  %16 = fsub double %11, %15, !dbg !2413
  store double %16, double* %5, align 8, !dbg !2414
  %17 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !2415
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i32 0, i32 17, !dbg !2416
  %19 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 1, !dbg !2415
  %20 = load double, double* %19, align 8, !dbg !2415
  %21 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !2417
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %21, i32 0, i32 17, !dbg !2418
  %23 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1, !dbg !2417
  %24 = load double, double* %23, align 8, !dbg !2417
  %25 = fsub double %20, %24, !dbg !2419
  store double %25, double* %6, align 8, !dbg !2420
  %26 = load %struct.atom_t*, %struct.atom_t** %3, align 8, !dbg !2421
  %27 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %26, i32 0, i32 17, !dbg !2422
  %28 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 2, !dbg !2421
  %29 = load double, double* %28, align 8, !dbg !2421
  %30 = load %struct.atom_t*, %struct.atom_t** %4, align 8, !dbg !2423
  %31 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %30, i32 0, i32 17, !dbg !2424
  %32 = getelementptr inbounds [3 x double], [3 x double]* %31, i64 0, i64 2, !dbg !2423
  %33 = load double, double* %32, align 8, !dbg !2423
  %34 = fsub double %29, %33, !dbg !2425
  store double %34, double* %7, align 8, !dbg !2426
  %35 = load double, double* %5, align 8, !dbg !2427
  %36 = load double, double* %5, align 8, !dbg !2428
  %37 = fmul double %35, %36, !dbg !2429
  %38 = load double, double* %6, align 8, !dbg !2430
  %39 = load double, double* %6, align 8, !dbg !2431
  %40 = fmul double %38, %39, !dbg !2432
  %41 = fadd double %37, %40, !dbg !2433
  %42 = load double, double* %7, align 8, !dbg !2434
  %43 = load double, double* %7, align 8, !dbg !2435
  %44 = fmul double %42, %43, !dbg !2436
  %45 = fadd double %41, %44, !dbg !2437
  %46 = call double @sqrt(double %45) #9, !dbg !2438
  ret double %46, !dbg !2439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* %1) #0 !dbg !2440 {
  %3 = alloca i8*, align 8
  %4 = alloca [4 x double]*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2445, metadata !DIExpression()), !dbg !2446
  store [4 x double]* %1, [4 x double]** %4, align 8
  call void @llvm.dbg.declare(metadata [4 x double]** %4, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %5, metadata !2449, metadata !DIExpression()), !dbg !2450
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8, !dbg !2450
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2451, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2453, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i32 0, i32* %8, align 4, !dbg !2456
  %9 = load i8*, i8** %3, align 8, !dbg !2457
  %10 = icmp eq i8* %9, null, !dbg !2459
  br i1 %10, label %16, label %11, !dbg !2460

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !2461
  %13 = load i8, i8* %12, align 1, !dbg !2462
  %14 = sext i8 %13 to i32, !dbg !2462
  %15 = icmp eq i32 %14, 0, !dbg !2463
  br i1 %15, label %16, label %19, !dbg !2464

16:                                               ; preds = %11, %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2465
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0)), !dbg !2467
  store i32 1, i32* %8, align 4, !dbg !2468
  br label %64, !dbg !2469

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8, !dbg !2470
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #8, !dbg !2472
  %22 = icmp ne i32 %21, 0, !dbg !2472
  br i1 %22, label %25, label %23, !dbg !2473

23:                                               ; preds = %19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2474
  store %struct._IO_FILE* %24, %struct._IO_FILE** %5, align 8, !dbg !2475
  br label %34, !dbg !2476

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8, !dbg !2477
  %27 = call %struct._IO_FILE* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2479
  store %struct._IO_FILE* %27, %struct._IO_FILE** %5, align 8, !dbg !2480
  %28 = icmp eq %struct._IO_FILE* %27, null, !dbg !2481
  br i1 %28, label %29, label %33, !dbg !2482

29:                                               ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2483
  %31 = load i8*, i8** %3, align 8, !dbg !2485
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %31), !dbg !2486
  store i32 1, i32* %8, align 4, !dbg !2487
  br label %64, !dbg !2488

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34
  store i32 0, i32* %6, align 4, !dbg !2489
  br label %36, !dbg !2491

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %6, align 4, !dbg !2492
  %38 = icmp slt i32 %37, 4, !dbg !2494
  br i1 %38, label %39, label %63, !dbg !2495

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4, !dbg !2496
  br label %40, !dbg !2499

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %7, align 4, !dbg !2500
  %42 = icmp slt i32 %41, 4, !dbg !2502
  br i1 %42, label %43, label %57, !dbg !2503

43:                                               ; preds = %40
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2504
  %45 = load [4 x double]*, [4 x double]** %4, align 8, !dbg !2505
  %46 = load i32, i32* %6, align 4, !dbg !2506
  %47 = sext i32 %46 to i64, !dbg !2505
  %48 = getelementptr inbounds [4 x double], [4 x double]* %45, i64 %47, !dbg !2505
  %49 = load i32, i32* %7, align 4, !dbg !2507
  %50 = sext i32 %49 to i64, !dbg !2505
  %51 = getelementptr inbounds [4 x double], [4 x double]* %48, i64 0, i64 %50, !dbg !2505
  %52 = load double, double* %51, align 8, !dbg !2505
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %52), !dbg !2508
  br label %54, !dbg !2508

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4, !dbg !2509
  %56 = add nsw i32 %55, 1, !dbg !2509
  store i32 %56, i32* %7, align 4, !dbg !2509
  br label %40, !dbg !2510, !llvm.loop !2511

57:                                               ; preds = %40
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2513
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !2514
  br label %60, !dbg !2515

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4, !dbg !2516
  %62 = add nsw i32 %61, 1, !dbg !2516
  store i32 %62, i32* %6, align 4, !dbg !2516
  br label %36, !dbg !2517, !llvm.loop !2518

63:                                               ; preds = %36
  br label %64, !dbg !2519

64:                                               ; preds = %63, %29, %16
  call void @llvm.dbg.label(metadata !2520), !dbg !2521
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2522
  %66 = icmp ne %struct._IO_FILE* %65, null, !dbg !2524
  br i1 %66, label %67, label %74, !dbg !2525

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2526
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2527
  %70 = icmp ne %struct._IO_FILE* %68, %69, !dbg !2528
  br i1 %70, label %71, label %74, !dbg !2529

71:                                               ; preds = %67
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8, !dbg !2530
  %73 = call i32 @fclose(%struct._IO_FILE* %72), !dbg !2531
  br label %74, !dbg !2531

74:                                               ; preds = %71, %67, %64
  %75 = load i32, i32* %8, align 4, !dbg !2532
  ret i32 %75, !dbg !2533
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initres() #0 !dbg !2534 {
  call void @NAB_initres(%struct.residue_t* @res, i32 0), !dbg !2535
  %1 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !2536
  %2 = icmp eq i8* %1, null, !dbg !2538
  br i1 %2, label %3, label %11, !dbg !2539

3:                                                ; preds = %0
  %4 = call noalias i8* @malloc(i64 8) #9, !dbg !2540
  store i8* %4, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !2542
  %5 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !2543
  %6 = icmp eq i8* %5, null, !dbg !2545
  br i1 %6, label %7, label %10, !dbg !2546

7:                                                ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2547
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0)), !dbg !2549
  call void @exit(i32 1) #10, !dbg !2550
  unreachable, !dbg !2550

10:                                               ; preds = %3
  br label %11, !dbg !2551

11:                                               ; preds = %10, %0
  %12 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !2552
  %13 = icmp eq i8* %12, null, !dbg !2554
  br i1 %13, label %14, label %22, !dbg !2555

14:                                               ; preds = %11
  %15 = call noalias i8* @malloc(i64 8) #9, !dbg !2556
  store i8* %15, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !2558
  %16 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !2559
  %17 = icmp eq i8* %16, null, !dbg !2561
  br i1 %17, label %18, label %21, !dbg !2562

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2563
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0)), !dbg !2565
  call void @exit(i32 1) #10, !dbg !2566
  unreachable, !dbg !2566

21:                                               ; preds = %14
  br label %22, !dbg !2567

22:                                               ; preds = %21, %11
  %23 = load i32, i32* @n_atab, align 4, !dbg !2568
  store i32 %23, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !2569
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 17), align 8, !dbg !2570
  ret void, !dbg !2571
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_atab() #0 !dbg !256 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.atom_t*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2572, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.declare(metadata %struct.atom_t** %2, metadata !2574, metadata !DIExpression()), !dbg !2575
  %3 = load i32, i32* @init_atab.init, align 4, !dbg !2576
  %4 = icmp ne i32 %3, 0, !dbg !2576
  br i1 %4, label %6, label %5, !dbg !2578

5:                                                ; preds = %0
  br label %37, !dbg !2579

6:                                                ; preds = %0
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** %2, align 8, !dbg !2580
  store i32 0, i32* %1, align 4, !dbg !2582
  br label %7, !dbg !2583

7:                                                ; preds = %31, %6
  %8 = load i32, i32* %1, align 4, !dbg !2584
  %9 = icmp slt i32 %8, 1000, !dbg !2586
  br i1 %9, label %10, label %36, !dbg !2587

10:                                               ; preds = %7
  %11 = call noalias i8* @malloc(i64 8) #9, !dbg !2588
  %12 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !2590
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %12, i32 0, i32 0, !dbg !2591
  store i8* %11, i8** %13, align 8, !dbg !2592
  %14 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !2593
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %14, i32 0, i32 0, !dbg !2595
  %16 = load i8*, i8** %15, align 8, !dbg !2595
  %17 = icmp eq i8* %16, null, !dbg !2596
  br i1 %17, label %18, label %21, !dbg !2597

18:                                               ; preds = %10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2598
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0)), !dbg !2600
  call void @exit(i32 1) #10, !dbg !2601
  unreachable, !dbg !2601

21:                                               ; preds = %10
  %22 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !2602
  %23 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %22, i32 0, i32 0, !dbg !2603
  %24 = load i8*, i8** %23, align 8, !dbg !2603
  store i8 0, i8* %24, align 1, !dbg !2604
  %25 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !2605
  %26 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 1, !dbg !2606
  store i8* null, i8** %26, align 8, !dbg !2607
  %27 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !2608
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %27, i32 0, i32 10, !dbg !2609
  store i8* null, i8** %28, align 8, !dbg !2610
  %29 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !2611
  %30 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %29, i32 0, i32 16, !dbg !2612
  store i8* null, i8** %30, align 8, !dbg !2613
  br label %31, !dbg !2614

31:                                               ; preds = %21
  %32 = load i32, i32* %1, align 4, !dbg !2615
  %33 = add nsw i32 %32, 1, !dbg !2615
  store i32 %33, i32* %1, align 4, !dbg !2615
  %34 = load %struct.atom_t*, %struct.atom_t** %2, align 8, !dbg !2616
  %35 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %34, i32 1, !dbg !2616
  store %struct.atom_t* %35, %struct.atom_t** %2, align 8, !dbg !2616
  br label %7, !dbg !2617, !llvm.loop !2618

36:                                               ; preds = %7
  store i32 0, i32* @init_atab.init, align 4, !dbg !2620
  br label %37, !dbg !2621

37:                                               ; preds = %36, %5
  ret void, !dbg !2621
}

declare dso_local %struct.molecule_t* @newmolecule() #3

declare dso_local i8* @ggets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makebonds(%struct.residue_t* %0) #0 !dbg !2622 {
  %2 = alloca %struct.residue_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.atom_t*, align 8
  %6 = alloca %struct.atom_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.residue_t* %0, %struct.residue_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.residue_t** %2, metadata !2625, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2629, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.atom_t** %5, metadata !2631, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.declare(metadata %struct.atom_t** %6, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2635, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2637, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.declare(metadata double* %9, metadata !2639, metadata !DIExpression()), !dbg !2640
  store i32 0, i32* %3, align 4, !dbg !2641
  br label %10, !dbg !2643

10:                                               ; preds = %25, %1
  %11 = load i32, i32* %3, align 4, !dbg !2644
  %12 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2646
  %13 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %12, i32 0, i32 15, !dbg !2647
  %14 = load i32, i32* %13, align 8, !dbg !2647
  %15 = icmp slt i32 %11, %14, !dbg !2648
  br i1 %15, label %16, label %28, !dbg !2649

16:                                               ; preds = %10
  %17 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2650
  %18 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %17, i32 0, i32 17, !dbg !2652
  %19 = load %struct.atom_t*, %struct.atom_t** %18, align 8, !dbg !2652
  %20 = load i32, i32* %3, align 4, !dbg !2653
  %21 = sext i32 %20 to i64, !dbg !2650
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %19, i64 %21, !dbg !2650
  store %struct.atom_t* %22, %struct.atom_t** %5, align 8, !dbg !2654
  %23 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2655
  %24 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %23, i32 0, i32 3, !dbg !2656
  store i32 0, i32* %24, align 4, !dbg !2657
  br label %25, !dbg !2658

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4, !dbg !2659
  %27 = add nsw i32 %26, 1, !dbg !2659
  store i32 %27, i32* %3, align 4, !dbg !2659
  br label %10, !dbg !2660, !llvm.loop !2661

28:                                               ; preds = %10
  store i32 0, i32* %3, align 4, !dbg !2663
  br label %29, !dbg !2665

29:                                               ; preds = %239, %28
  %30 = load i32, i32* %3, align 4, !dbg !2666
  %31 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2668
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %31, i32 0, i32 15, !dbg !2669
  %33 = load i32, i32* %32, align 8, !dbg !2669
  %34 = sub nsw i32 %33, 1, !dbg !2670
  %35 = icmp slt i32 %30, %34, !dbg !2671
  br i1 %35, label %36, label %242, !dbg !2672

36:                                               ; preds = %29
  %37 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2673
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %37, i32 0, i32 17, !dbg !2675
  %39 = load %struct.atom_t*, %struct.atom_t** %38, align 8, !dbg !2675
  %40 = load i32, i32* %3, align 4, !dbg !2676
  %41 = sext i32 %40 to i64, !dbg !2673
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %39, i64 %41, !dbg !2673
  store %struct.atom_t* %42, %struct.atom_t** %5, align 8, !dbg !2677
  %43 = call i16** @__ctype_b_loc() #11, !dbg !2678
  %44 = load i16*, i16** %43, align 8, !dbg !2678
  %45 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2678
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %45, i32 0, i32 0, !dbg !2678
  %47 = load i8*, i8** %46, align 8, !dbg !2678
  %48 = load i8, i8* %47, align 1, !dbg !2678
  %49 = sext i8 %48 to i32, !dbg !2678
  %50 = sext i32 %49 to i64, !dbg !2678
  %51 = getelementptr inbounds i16, i16* %44, i64 %50, !dbg !2678
  %52 = load i16, i16* %51, align 2, !dbg !2678
  %53 = zext i16 %52 to i32, !dbg !2678
  %54 = and i32 %53, 2048, !dbg !2678
  %55 = icmp ne i32 %54, 0, !dbg !2678
  br i1 %55, label %56, label %75, !dbg !2680

56:                                               ; preds = %36
  %57 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2681
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %57, i32 0, i32 0, !dbg !2682
  %59 = load i8*, i8** %58, align 8, !dbg !2682
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !2681
  %61 = load i8, i8* %60, align 1, !dbg !2681
  %62 = sext i8 %61 to i32, !dbg !2681
  %63 = icmp eq i32 %62, 72, !dbg !2683
  br i1 %63, label %72, label %64, !dbg !2684

64:                                               ; preds = %56
  %65 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2685
  %66 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %65, i32 0, i32 0, !dbg !2686
  %67 = load i8*, i8** %66, align 8, !dbg !2686
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !2685
  %69 = load i8, i8* %68, align 1, !dbg !2685
  %70 = sext i8 %69 to i32, !dbg !2685
  %71 = icmp eq i32 %70, 104, !dbg !2687
  br label %72, !dbg !2684

72:                                               ; preds = %64, %56
  %73 = phi i1 [ true, %56 ], [ %71, %64 ]
  %74 = zext i1 %73 to i32, !dbg !2684
  store i32 %74, i32* %7, align 4, !dbg !2688
  br label %92, !dbg !2689

75:                                               ; preds = %36
  %76 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2690
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %76, i32 0, i32 0, !dbg !2691
  %78 = load i8*, i8** %77, align 8, !dbg !2691
  %79 = load i8, i8* %78, align 1, !dbg !2692
  %80 = sext i8 %79 to i32, !dbg !2692
  %81 = icmp eq i32 %80, 72, !dbg !2693
  br i1 %81, label %89, label %82, !dbg !2694

82:                                               ; preds = %75
  %83 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2695
  %84 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %83, i32 0, i32 0, !dbg !2696
  %85 = load i8*, i8** %84, align 8, !dbg !2696
  %86 = load i8, i8* %85, align 1, !dbg !2697
  %87 = sext i8 %86 to i32, !dbg !2697
  %88 = icmp eq i32 %87, 104, !dbg !2698
  br label %89, !dbg !2694

89:                                               ; preds = %82, %75
  %90 = phi i1 [ true, %75 ], [ %88, %82 ]
  %91 = zext i1 %90 to i32, !dbg !2694
  store i32 %91, i32* %7, align 4, !dbg !2699
  br label %92

92:                                               ; preds = %89, %72
  %93 = load i32, i32* %3, align 4, !dbg !2700
  %94 = add nsw i32 %93, 1, !dbg !2702
  store i32 %94, i32* %4, align 4, !dbg !2703
  br label %95, !dbg !2704

95:                                               ; preds = %235, %92
  %96 = load i32, i32* %4, align 4, !dbg !2705
  %97 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2707
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %97, i32 0, i32 15, !dbg !2708
  %99 = load i32, i32* %98, align 8, !dbg !2708
  %100 = icmp slt i32 %96, %99, !dbg !2709
  br i1 %100, label %101, label %238, !dbg !2710

101:                                              ; preds = %95
  %102 = load %struct.residue_t*, %struct.residue_t** %2, align 8, !dbg !2711
  %103 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %102, i32 0, i32 17, !dbg !2713
  %104 = load %struct.atom_t*, %struct.atom_t** %103, align 8, !dbg !2713
  %105 = load i32, i32* %4, align 4, !dbg !2714
  %106 = sext i32 %105 to i64, !dbg !2711
  %107 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %104, i64 %106, !dbg !2711
  store %struct.atom_t* %107, %struct.atom_t** %6, align 8, !dbg !2715
  %108 = call i16** @__ctype_b_loc() #11, !dbg !2716
  %109 = load i16*, i16** %108, align 8, !dbg !2716
  %110 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2716
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 0, !dbg !2716
  %112 = load i8*, i8** %111, align 8, !dbg !2716
  %113 = load i8, i8* %112, align 1, !dbg !2716
  %114 = sext i8 %113 to i32, !dbg !2716
  %115 = sext i32 %114 to i64, !dbg !2716
  %116 = getelementptr inbounds i16, i16* %109, i64 %115, !dbg !2716
  %117 = load i16, i16* %116, align 2, !dbg !2716
  %118 = zext i16 %117 to i32, !dbg !2716
  %119 = and i32 %118, 2048, !dbg !2716
  %120 = icmp ne i32 %119, 0, !dbg !2716
  br i1 %120, label %121, label %140, !dbg !2718

121:                                              ; preds = %101
  %122 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2719
  %123 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %122, i32 0, i32 0, !dbg !2720
  %124 = load i8*, i8** %123, align 8, !dbg !2720
  %125 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !2719
  %126 = load i8, i8* %125, align 1, !dbg !2719
  %127 = sext i8 %126 to i32, !dbg !2719
  %128 = icmp eq i32 %127, 72, !dbg !2721
  br i1 %128, label %137, label %129, !dbg !2722

129:                                              ; preds = %121
  %130 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2723
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %130, i32 0, i32 0, !dbg !2724
  %132 = load i8*, i8** %131, align 8, !dbg !2724
  %133 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !2723
  %134 = load i8, i8* %133, align 1, !dbg !2723
  %135 = sext i8 %134 to i32, !dbg !2723
  %136 = icmp eq i32 %135, 104, !dbg !2725
  br label %137, !dbg !2722

137:                                              ; preds = %129, %121
  %138 = phi i1 [ true, %121 ], [ %136, %129 ]
  %139 = zext i1 %138 to i32, !dbg !2722
  store i32 %139, i32* %8, align 4, !dbg !2726
  br label %157, !dbg !2727

140:                                              ; preds = %101
  %141 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2728
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %141, i32 0, i32 0, !dbg !2729
  %143 = load i8*, i8** %142, align 8, !dbg !2729
  %144 = load i8, i8* %143, align 1, !dbg !2730
  %145 = sext i8 %144 to i32, !dbg !2730
  %146 = icmp eq i32 %145, 72, !dbg !2731
  br i1 %146, label %154, label %147, !dbg !2732

147:                                              ; preds = %140
  %148 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2733
  %149 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %148, i32 0, i32 0, !dbg !2734
  %150 = load i8*, i8** %149, align 8, !dbg !2734
  %151 = load i8, i8* %150, align 1, !dbg !2735
  %152 = sext i8 %151 to i32, !dbg !2735
  %153 = icmp eq i32 %152, 104, !dbg !2736
  br label %154, !dbg !2732

154:                                              ; preds = %147, %140
  %155 = phi i1 [ true, %140 ], [ %153, %147 ]
  %156 = zext i1 %155 to i32, !dbg !2732
  store i32 %156, i32* %8, align 4, !dbg !2737
  br label %157

157:                                              ; preds = %154, %137
  %158 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2738
  %159 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2739
  %160 = call double @dist(%struct.atom_t* %158, %struct.atom_t* %159), !dbg !2740
  store double %160, double* %9, align 8, !dbg !2741
  %161 = load i32, i32* %7, align 4, !dbg !2742
  %162 = icmp ne i32 %161, 0, !dbg !2742
  br i1 %162, label %166, label %163, !dbg !2744

163:                                              ; preds = %157
  %164 = load i32, i32* %8, align 4, !dbg !2745
  %165 = icmp ne i32 %164, 0, !dbg !2745
  br i1 %165, label %166, label %200, !dbg !2746

166:                                              ; preds = %163, %157
  %167 = load double, double* %9, align 8, !dbg !2747
  %168 = fcmp ole double %167, 1.200000e+00, !dbg !2750
  br i1 %168, label %169, label %199, !dbg !2751

169:                                              ; preds = %166
  %170 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2752
  %171 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %170, i32 0, i32 3, !dbg !2755
  %172 = load i32, i32* %171, align 4, !dbg !2755
  %173 = icmp slt i32 %172, 8, !dbg !2756
  br i1 %173, label %174, label %198, !dbg !2757

174:                                              ; preds = %169
  %175 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2758
  %176 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %175, i32 0, i32 3, !dbg !2759
  %177 = load i32, i32* %176, align 4, !dbg !2759
  %178 = icmp slt i32 %177, 8, !dbg !2760
  br i1 %178, label %179, label %198, !dbg !2761

179:                                              ; preds = %174
  %180 = load i32, i32* %4, align 4, !dbg !2762
  %181 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2764
  %182 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %181, i32 0, i32 4, !dbg !2765
  %183 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2766
  %184 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %183, i32 0, i32 3, !dbg !2767
  %185 = load i32, i32* %184, align 4, !dbg !2768
  %186 = add nsw i32 %185, 1, !dbg !2768
  store i32 %186, i32* %184, align 4, !dbg !2768
  %187 = sext i32 %185 to i64, !dbg !2764
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %182, i64 0, i64 %187, !dbg !2764
  store i32 %180, i32* %188, align 4, !dbg !2769
  %189 = load i32, i32* %3, align 4, !dbg !2770
  %190 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2771
  %191 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %190, i32 0, i32 4, !dbg !2772
  %192 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2773
  %193 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %192, i32 0, i32 3, !dbg !2774
  %194 = load i32, i32* %193, align 4, !dbg !2775
  %195 = add nsw i32 %194, 1, !dbg !2775
  store i32 %195, i32* %193, align 4, !dbg !2775
  %196 = sext i32 %194 to i64, !dbg !2771
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %191, i64 0, i64 %196, !dbg !2771
  store i32 %189, i32* %197, align 4, !dbg !2776
  br label %198, !dbg !2777

198:                                              ; preds = %179, %174, %169
  br label %199, !dbg !2778

199:                                              ; preds = %198, %166
  br label %234, !dbg !2779

200:                                              ; preds = %163
  %201 = load double, double* %9, align 8, !dbg !2780
  %202 = fcmp ole double %201, 1.850000e+00, !dbg !2782
  br i1 %202, label %203, label %233, !dbg !2783

203:                                              ; preds = %200
  %204 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2784
  %205 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %204, i32 0, i32 3, !dbg !2787
  %206 = load i32, i32* %205, align 4, !dbg !2787
  %207 = icmp slt i32 %206, 8, !dbg !2788
  br i1 %207, label %208, label %232, !dbg !2789

208:                                              ; preds = %203
  %209 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2790
  %210 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %209, i32 0, i32 3, !dbg !2791
  %211 = load i32, i32* %210, align 4, !dbg !2791
  %212 = icmp slt i32 %211, 8, !dbg !2792
  br i1 %212, label %213, label %232, !dbg !2793

213:                                              ; preds = %208
  %214 = load i32, i32* %4, align 4, !dbg !2794
  %215 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2796
  %216 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %215, i32 0, i32 4, !dbg !2797
  %217 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2798
  %218 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %217, i32 0, i32 3, !dbg !2799
  %219 = load i32, i32* %218, align 4, !dbg !2800
  %220 = add nsw i32 %219, 1, !dbg !2800
  store i32 %220, i32* %218, align 4, !dbg !2800
  %221 = sext i32 %219 to i64, !dbg !2796
  %222 = getelementptr inbounds [8 x i32], [8 x i32]* %216, i64 0, i64 %221, !dbg !2796
  store i32 %214, i32* %222, align 4, !dbg !2801
  %223 = load i32, i32* %3, align 4, !dbg !2802
  %224 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2803
  %225 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %224, i32 0, i32 4, !dbg !2804
  %226 = load %struct.atom_t*, %struct.atom_t** %6, align 8, !dbg !2805
  %227 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %226, i32 0, i32 3, !dbg !2806
  %228 = load i32, i32* %227, align 4, !dbg !2807
  %229 = add nsw i32 %228, 1, !dbg !2807
  store i32 %229, i32* %227, align 4, !dbg !2807
  %230 = sext i32 %228 to i64, !dbg !2803
  %231 = getelementptr inbounds [8 x i32], [8 x i32]* %225, i64 0, i64 %230, !dbg !2803
  store i32 %223, i32* %231, align 4, !dbg !2808
  br label %232, !dbg !2809

232:                                              ; preds = %213, %208, %203
  br label %233, !dbg !2810

233:                                              ; preds = %232, %200
  br label %234

234:                                              ; preds = %233, %199
  br label %235, !dbg !2811

235:                                              ; preds = %234
  %236 = load i32, i32* %4, align 4, !dbg !2812
  %237 = add nsw i32 %236, 1, !dbg !2812
  store i32 %237, i32* %4, align 4, !dbg !2812
  br label %95, !dbg !2813, !llvm.loop !2814

238:                                              ; preds = %95
  br label %239, !dbg !2816

239:                                              ; preds = %238
  %240 = load i32, i32* %3, align 4, !dbg !2817
  %241 = add nsw i32 %240, 1, !dbg !2817
  store i32 %241, i32* %3, align 4, !dbg !2817
  br label %29, !dbg !2818, !llvm.loop !2819

242:                                              ; preds = %29
  ret void, !dbg !2821
}

declare dso_local i32 @addresidue(%struct.molecule_t*, i8*, %struct.residue_t*) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #5

declare dso_local i32 @addstrand(%struct.molecule_t*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isnewres(i8* %0, i8* %1, i32 %2, i32 %3) #0 !dbg !2822 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2825, metadata !DIExpression()), !dbg !2826
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2827, metadata !DIExpression()), !dbg !2828
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2829, metadata !DIExpression()), !dbg !2830
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2831, metadata !DIExpression()), !dbg !2832
  %9 = load i8*, i8** %5, align 8, !dbg !2833
  %10 = load i8*, i8** %6, align 8, !dbg !2834
  %11 = call i32 @strcmp(i8* %9, i8* %10) #8, !dbg !2835
  %12 = icmp ne i32 %11, 0, !dbg !2835
  br i1 %12, label %17, label %13, !dbg !2836

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4, !dbg !2837
  %15 = load i32, i32* %8, align 4, !dbg !2838
  %16 = icmp ne i32 %14, %15, !dbg !2839
  br label %17, !dbg !2836

17:                                               ; preds = %13, %4
  %18 = phi i1 [ true, %4 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32, !dbg !2836
  ret i32 %19, !dbg !2840
}

declare dso_local void @NAB_initatom(%struct.atom_t*, i32) #3

declare dso_local void @NAB_initres(%struct.residue_t*, i32) #3

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cid_t* @initcid(i32 %0, i32 %1, %struct.molecule_t* %2) #0 !dbg !2841 {
  %4 = alloca %struct.cid_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.molecule_t*, align 8
  %8 = alloca %struct.cid_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strand_t*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2844, metadata !DIExpression()), !dbg !2845
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2846, metadata !DIExpression()), !dbg !2847
  store %struct.molecule_t* %2, %struct.molecule_t** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.molecule_t** %7, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.declare(metadata %struct.cid_t** %8, metadata !2850, metadata !DIExpression()), !dbg !2851
  store %struct.cid_t* null, %struct.cid_t** %8, align 8, !dbg !2851
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.declare(metadata %struct.strand_t** %10, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2856, metadata !DIExpression()), !dbg !2857
  store i32 0, i32* %11, align 4, !dbg !2857
  %12 = load i32, i32* %5, align 4, !dbg !2858
  %13 = icmp ne i32 %12, 0, !dbg !2858
  br i1 %13, label %14, label %15, !dbg !2860

14:                                               ; preds = %3
  store %struct.cid_t* null, %struct.cid_t** %4, align 8, !dbg !2861
  br label %140, !dbg !2861

15:                                               ; preds = %3
  %16 = call noalias i8* @malloc(i64 16) #9, !dbg !2862
  %17 = bitcast i8* %16 to %struct.cid_t*, !dbg !2863
  store %struct.cid_t* %17, %struct.cid_t** %8, align 8, !dbg !2864
  %18 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2865
  %19 = icmp eq %struct.cid_t* %18, null, !dbg !2867
  br i1 %19, label %20, label %23, !dbg !2868

20:                                               ; preds = %15
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2869
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0)), !dbg !2871
  store i32 1, i32* %11, align 4, !dbg !2872
  br label %133, !dbg !2873

23:                                               ; preds = %15
  %24 = call noalias i8* @malloc(i64 128) #9, !dbg !2874
  %25 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2875
  %26 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %25, i32 0, i32 2, !dbg !2876
  store i8* %24, i8** %26, align 8, !dbg !2877
  %27 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2878
  %28 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %27, i32 0, i32 2, !dbg !2880
  %29 = load i8*, i8** %28, align 8, !dbg !2880
  %30 = icmp eq i8* %29, null, !dbg !2881
  br i1 %30, label %31, label %34, !dbg !2882

31:                                               ; preds = %23
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2883
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)), !dbg !2885
  store i32 1, i32* %11, align 4, !dbg !2886
  br label %133, !dbg !2887

34:                                               ; preds = %23
  %35 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2888
  %36 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %35, i32 0, i32 0, !dbg !2889
  store i32 65, i32* %36, align 8, !dbg !2890
  %37 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2891
  %38 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %37, i32 0, i32 1, !dbg !2892
  store i32 90, i32* %38, align 4, !dbg !2893
  %39 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2894
  %40 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %39, i32 0, i32 0, !dbg !2896
  %41 = load i32, i32* %40, align 8, !dbg !2896
  store i32 %41, i32* %9, align 4, !dbg !2897
  br label %42, !dbg !2898

42:                                               ; preds = %55, %34
  %43 = load i32, i32* %9, align 4, !dbg !2899
  %44 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2901
  %45 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %44, i32 0, i32 1, !dbg !2902
  %46 = load i32, i32* %45, align 4, !dbg !2902
  %47 = icmp sle i32 %43, %46, !dbg !2903
  br i1 %47, label %48, label %58, !dbg !2904

48:                                               ; preds = %42
  %49 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2905
  %50 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %49, i32 0, i32 2, !dbg !2906
  %51 = load i8*, i8** %50, align 8, !dbg !2906
  %52 = load i32, i32* %9, align 4, !dbg !2907
  %53 = sext i32 %52 to i64, !dbg !2905
  %54 = getelementptr inbounds i8, i8* %51, i64 %53, !dbg !2905
  store i8 0, i8* %54, align 1, !dbg !2908
  br label %55, !dbg !2905

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4, !dbg !2909
  %57 = add nsw i32 %56, 1, !dbg !2909
  store i32 %57, i32* %9, align 4, !dbg !2909
  br label %42, !dbg !2910, !llvm.loop !2911

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4, !dbg !2913
  %60 = icmp ne i32 %59, 0, !dbg !2913
  br i1 %60, label %61, label %132, !dbg !2915

61:                                               ; preds = %58
  %62 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !2916
  %63 = icmp eq %struct.molecule_t* %62, null, !dbg !2919
  br i1 %63, label %64, label %67, !dbg !2920

64:                                               ; preds = %61
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2921
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0)), !dbg !2923
  store i32 1, i32* %11, align 4, !dbg !2924
  br label %133, !dbg !2925

67:                                               ; preds = %61
  %68 = load %struct.molecule_t*, %struct.molecule_t** %7, align 8, !dbg !2926
  %69 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %68, i32 0, i32 2, !dbg !2928
  %70 = load %struct.strand_t*, %struct.strand_t** %69, align 8, !dbg !2928
  store %struct.strand_t* %70, %struct.strand_t** %10, align 8, !dbg !2929
  br label %71, !dbg !2930

71:                                               ; preds = %100, %67
  %72 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2931
  %73 = icmp ne %struct.strand_t* %72, null, !dbg !2933
  br i1 %73, label %74, label %104, !dbg !2933

74:                                               ; preds = %71
  %75 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2934
  %76 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %75, i32 0, i32 0, !dbg !2937
  %77 = load i8*, i8** %76, align 8, !dbg !2937
  %78 = call i64 @strlen(i8* %77) #8, !dbg !2938
  %79 = icmp eq i64 %78, 1, !dbg !2939
  br i1 %79, label %80, label %99, !dbg !2940

80:                                               ; preds = %74
  %81 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2941
  %82 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %81, i32 0, i32 0, !dbg !2943
  %83 = load i8*, i8** %82, align 8, !dbg !2943
  %84 = load i8, i8* %83, align 1, !dbg !2944
  %85 = sext i8 %84 to i32, !dbg !2944
  store i32 %85, i32* %9, align 4, !dbg !2945
  %86 = load i32, i32* %9, align 4, !dbg !2946
  %87 = icmp sge i32 %86, 65, !dbg !2948
  br i1 %87, label %88, label %98, !dbg !2949

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4, !dbg !2950
  %90 = icmp sle i32 %89, 90, !dbg !2951
  br i1 %90, label %91, label %98, !dbg !2952

91:                                               ; preds = %88
  %92 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2953
  %93 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %92, i32 0, i32 2, !dbg !2954
  %94 = load i8*, i8** %93, align 8, !dbg !2954
  %95 = load i32, i32* %9, align 4, !dbg !2955
  %96 = sext i32 %95 to i64, !dbg !2953
  %97 = getelementptr inbounds i8, i8* %94, i64 %96, !dbg !2953
  store i8 1, i8* %97, align 1, !dbg !2956
  br label %98, !dbg !2953

98:                                               ; preds = %91, %88, %80
  br label %99, !dbg !2957

99:                                               ; preds = %98, %74
  br label %100, !dbg !2958

100:                                              ; preds = %99
  %101 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !2959
  %102 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %101, i32 0, i32 4, !dbg !2960
  %103 = load %struct.strand_t*, %struct.strand_t** %102, align 8, !dbg !2960
  store %struct.strand_t* %103, %struct.strand_t** %10, align 8, !dbg !2961
  br label %71, !dbg !2962, !llvm.loop !2963

104:                                              ; preds = %71
  br label %105, !dbg !2965

105:                                              ; preds = %126, %104
  %106 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2966
  %107 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %106, i32 0, i32 0, !dbg !2969
  %108 = load i32, i32* %107, align 8, !dbg !2969
  %109 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2970
  %110 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %109, i32 0, i32 1, !dbg !2971
  %111 = load i32, i32* %110, align 4, !dbg !2971
  %112 = icmp sle i32 %108, %111, !dbg !2972
  br i1 %112, label %113, label %131, !dbg !2973

113:                                              ; preds = %105
  %114 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2974
  %115 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %114, i32 0, i32 2, !dbg !2977
  %116 = load i8*, i8** %115, align 8, !dbg !2977
  %117 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2978
  %118 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %117, i32 0, i32 0, !dbg !2979
  %119 = load i32, i32* %118, align 8, !dbg !2979
  %120 = sext i32 %119 to i64, !dbg !2974
  %121 = getelementptr inbounds i8, i8* %116, i64 %120, !dbg !2974
  %122 = load i8, i8* %121, align 1, !dbg !2974
  %123 = icmp ne i8 %122, 0, !dbg !2974
  br i1 %123, label %125, label %124, !dbg !2980

124:                                              ; preds = %113
  br label %131, !dbg !2981

125:                                              ; preds = %113
  br label %126, !dbg !2982

126:                                              ; preds = %125
  %127 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2983
  %128 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %127, i32 0, i32 0, !dbg !2984
  %129 = load i32, i32* %128, align 8, !dbg !2985
  %130 = add nsw i32 %129, 1, !dbg !2985
  store i32 %130, i32* %128, align 8, !dbg !2985
  br label %105, !dbg !2986, !llvm.loop !2987

131:                                              ; preds = %124, %105
  br label %132, !dbg !2989

132:                                              ; preds = %131, %58
  br label %133, !dbg !2913

133:                                              ; preds = %132, %64, %31, %20
  call void @llvm.dbg.label(metadata !2990), !dbg !2991
  %134 = load i32, i32* %11, align 4, !dbg !2992
  %135 = icmp ne i32 %134, 0, !dbg !2992
  br i1 %135, label %136, label %138, !dbg !2994

136:                                              ; preds = %133
  %137 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !2995
  call void @freecid(%struct.cid_t* %137), !dbg !2997
  store %struct.cid_t* null, %struct.cid_t** %8, align 8, !dbg !2998
  br label %138, !dbg !2999

138:                                              ; preds = %136, %133
  %139 = load %struct.cid_t*, %struct.cid_t** %8, align 8, !dbg !3000
  store %struct.cid_t* %139, %struct.cid_t** %4, align 8, !dbg !3001
  br label %140, !dbg !3001

140:                                              ; preds = %138, %14
  %141 = load %struct.cid_t*, %struct.cid_t** %4, align 8, !dbg !3002
  ret %struct.cid_t* %141, !dbg !3002
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextcid(%struct.cid_t* %0, i32 %1, i32 %2, %struct.strand_t* %3) #0 !dbg !3003 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cid_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strand_t*, align 8
  %10 = alloca i32, align 4
  store %struct.cid_t* %0, %struct.cid_t** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.cid_t** %6, metadata !3006, metadata !DIExpression()), !dbg !3007
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3008, metadata !DIExpression()), !dbg !3009
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3010, metadata !DIExpression()), !dbg !3011
  store %struct.strand_t* %3, %struct.strand_t** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.strand_t** %9, metadata !3012, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3014, metadata !DIExpression()), !dbg !3015
  %11 = load i32, i32* %7, align 4, !dbg !3016
  %12 = icmp ne i32 %11, 0, !dbg !3016
  br i1 %12, label %13, label %14, !dbg !3018

13:                                               ; preds = %4
  store i32 32, i32* %5, align 4, !dbg !3019
  br label %105, !dbg !3019

14:                                               ; preds = %4
  %15 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3020
  %16 = icmp eq %struct.cid_t* %15, null, !dbg !3022
  br i1 %16, label %17, label %20, !dbg !3023

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3024
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0)), !dbg !3026
  store i32 32, i32* %5, align 4, !dbg !3027
  br label %105, !dbg !3027

20:                                               ; preds = %14
  %21 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3028
  %22 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %21, i32 0, i32 0, !dbg !3030
  %23 = load i32, i32* %22, align 8, !dbg !3030
  %24 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3031
  %25 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %24, i32 0, i32 1, !dbg !3032
  %26 = load i32, i32* %25, align 4, !dbg !3032
  %27 = icmp sgt i32 %23, %26, !dbg !3033
  br i1 %27, label %28, label %29, !dbg !3034

28:                                               ; preds = %20
  store i32 32, i32* %5, align 4, !dbg !3035
  br label %105, !dbg !3035

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4, !dbg !3036
  %31 = icmp ne i32 %30, 0, !dbg !3036
  br i1 %31, label %32, label %96, !dbg !3038

32:                                               ; preds = %29
  %33 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !3039
  %34 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %33, i32 0, i32 0, !dbg !3042
  %35 = load i8*, i8** %34, align 8, !dbg !3042
  %36 = call i64 @strlen(i8* %35) #8, !dbg !3043
  %37 = icmp eq i64 %36, 1, !dbg !3044
  br i1 %37, label %38, label %52, !dbg !3045

38:                                               ; preds = %32
  %39 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !3046
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %39, i32 0, i32 0, !dbg !3048
  %41 = load i8*, i8** %40, align 8, !dbg !3048
  %42 = load i8, i8* %41, align 1, !dbg !3049
  %43 = sext i8 %42 to i32, !dbg !3049
  store i32 %43, i32* %10, align 4, !dbg !3050
  %44 = load i32, i32* %10, align 4, !dbg !3051
  %45 = icmp sge i32 %44, 65, !dbg !3053
  br i1 %45, label %46, label %51, !dbg !3054

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4, !dbg !3055
  %48 = icmp sle i32 %47, 90, !dbg !3056
  br i1 %48, label %49, label %51, !dbg !3057

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4, !dbg !3058
  store i32 %50, i32* %5, align 4, !dbg !3059
  br label %105, !dbg !3059

51:                                               ; preds = %46, %38
  br label %52, !dbg !3060

52:                                               ; preds = %51, %32
  %53 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3061
  %54 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %53, i32 0, i32 0, !dbg !3062
  %55 = load i32, i32* %54, align 8, !dbg !3062
  store i32 %55, i32* %10, align 4, !dbg !3063
  %56 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3064
  %57 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %56, i32 0, i32 2, !dbg !3065
  %58 = load i8*, i8** %57, align 8, !dbg !3065
  %59 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3066
  %60 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %59, i32 0, i32 0, !dbg !3067
  %61 = load i32, i32* %60, align 8, !dbg !3067
  %62 = sext i32 %61 to i64, !dbg !3064
  %63 = getelementptr inbounds i8, i8* %58, i64 %62, !dbg !3064
  store i8 1, i8* %63, align 1, !dbg !3068
  %64 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3069
  %65 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %64, i32 0, i32 0, !dbg !3071
  %66 = load i32, i32* %65, align 8, !dbg !3072
  %67 = add nsw i32 %66, 1, !dbg !3072
  store i32 %67, i32* %65, align 8, !dbg !3072
  br label %68, !dbg !3072

68:                                               ; preds = %89, %52
  %69 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3073
  %70 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %69, i32 0, i32 0, !dbg !3075
  %71 = load i32, i32* %70, align 8, !dbg !3075
  %72 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3076
  %73 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %72, i32 0, i32 1, !dbg !3077
  %74 = load i32, i32* %73, align 4, !dbg !3077
  %75 = icmp sle i32 %71, %74, !dbg !3078
  br i1 %75, label %76, label %94, !dbg !3079

76:                                               ; preds = %68
  %77 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3080
  %78 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %77, i32 0, i32 2, !dbg !3083
  %79 = load i8*, i8** %78, align 8, !dbg !3083
  %80 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3084
  %81 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %80, i32 0, i32 0, !dbg !3085
  %82 = load i32, i32* %81, align 8, !dbg !3085
  %83 = sext i32 %82 to i64, !dbg !3080
  %84 = getelementptr inbounds i8, i8* %79, i64 %83, !dbg !3080
  %85 = load i8, i8* %84, align 1, !dbg !3080
  %86 = icmp ne i8 %85, 0, !dbg !3080
  br i1 %86, label %88, label %87, !dbg !3086

87:                                               ; preds = %76
  br label %94, !dbg !3087

88:                                               ; preds = %76
  br label %89, !dbg !3088

89:                                               ; preds = %88
  %90 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3089
  %91 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %90, i32 0, i32 0, !dbg !3090
  %92 = load i32, i32* %91, align 8, !dbg !3091
  %93 = add nsw i32 %92, 1, !dbg !3091
  store i32 %93, i32* %91, align 8, !dbg !3091
  br label %68, !dbg !3092, !llvm.loop !3093

94:                                               ; preds = %87, %68
  %95 = load i32, i32* %10, align 4, !dbg !3095
  store i32 %95, i32* %5, align 4, !dbg !3096
  br label %105, !dbg !3096

96:                                               ; preds = %29
  %97 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3097
  %98 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %97, i32 0, i32 0, !dbg !3099
  %99 = load i32, i32* %98, align 8, !dbg !3099
  store i32 %99, i32* %10, align 4, !dbg !3100
  %100 = load %struct.cid_t*, %struct.cid_t** %6, align 8, !dbg !3101
  %101 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %100, i32 0, i32 0, !dbg !3102
  %102 = load i32, i32* %101, align 8, !dbg !3103
  %103 = add nsw i32 %102, 1, !dbg !3103
  store i32 %103, i32* %101, align 8, !dbg !3103
  %104 = load i32, i32* %10, align 4, !dbg !3104
  store i32 %104, i32* %5, align 4, !dbg !3105
  br label %105, !dbg !3105

105:                                              ; preds = %96, %94, %49, %28, %17, %13
  %106 = load i32, i32* %5, align 4, !dbg !3106
  ret i32 %106, !dbg !3106
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_brook_rname(i8* %0, %struct.residue_t* %1) #0 !dbg !3107 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.residue_t*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3110, metadata !DIExpression()), !dbg !3111
  store %struct.residue_t* %1, %struct.residue_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.residue_t** %4, metadata !3112, metadata !DIExpression()), !dbg !3113
  %5 = load i8*, i8** %3, align 8, !dbg !3114
  %6 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !3115
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i32 0, i32 4, !dbg !3116
  %8 = load i8*, i8** %7, align 8, !dbg !3116
  %9 = call i8* @strcpy(i8* %5, i8* %8) #9, !dbg !3117
  %10 = load i8*, i8** %3, align 8, !dbg !3118
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !3120
  %12 = icmp ne i32 %11, 0, !dbg !3120
  br i1 %12, label %16, label %13, !dbg !3121

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8, !dbg !3122
  %15 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3123
  br label %16, !dbg !3123

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %3, align 8, !dbg !3124
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !3126
  %19 = icmp ne i32 %18, 0, !dbg !3126
  br i1 %19, label %23, label %20, !dbg !3127

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8, !dbg !3128
  %22 = call i8* @strcpy(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !3129
  br label %23, !dbg !3129

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %3, align 8, !dbg !3130
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !3132
  %26 = icmp ne i32 %25, 0, !dbg !3132
  br i1 %26, label %30, label %27, !dbg !3133

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8, !dbg !3134
  %29 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !3135
  br label %30, !dbg !3135

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %3, align 8, !dbg !3136
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3138
  %33 = icmp ne i32 %32, 0, !dbg !3138
  br i1 %33, label %37, label %34, !dbg !3139

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8, !dbg !3140
  %36 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !3141
  br label %37, !dbg !3141

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %3, align 8, !dbg !3142
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !3144
  %40 = icmp ne i32 %39, 0, !dbg !3144
  br i1 %40, label %44, label %41, !dbg !3145

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8, !dbg !3146
  %43 = call i8* @strcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #9, !dbg !3147
  br label %44, !dbg !3147

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** %3, align 8, !dbg !3148
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !3150
  %47 = icmp ne i32 %46, 0, !dbg !3150
  br i1 %47, label %51, label %48, !dbg !3151

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8, !dbg !3152
  %50 = call i8* @strcpy(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3153
  br label %51, !dbg !3153

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %3, align 8, !dbg !3154
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !3156
  %54 = icmp ne i32 %53, 0, !dbg !3156
  br i1 %54, label %58, label %55, !dbg !3157

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8, !dbg !3158
  %57 = call i8* @strcpy(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !3159
  br label %58, !dbg !3159

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %3, align 8, !dbg !3160
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !3162
  %61 = icmp ne i32 %60, 0, !dbg !3162
  br i1 %61, label %65, label %62, !dbg !3163

62:                                               ; preds = %58
  %63 = load i8*, i8** %3, align 8, !dbg !3164
  %64 = call i8* @strcpy(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !3165
  br label %65, !dbg !3165

65:                                               ; preds = %62, %58
  %66 = load i8*, i8** %3, align 8, !dbg !3166
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !3168
  %68 = icmp ne i32 %67, 0, !dbg !3168
  br i1 %68, label %72, label %69, !dbg !3169

69:                                               ; preds = %65
  %70 = load i8*, i8** %3, align 8, !dbg !3170
  %71 = call i8* @strcpy(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !3171
  br label %72, !dbg !3171

72:                                               ; preds = %69, %65
  %73 = load i8*, i8** %3, align 8, !dbg !3172
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !3174
  %75 = icmp ne i32 %74, 0, !dbg !3174
  br i1 %75, label %79, label %76, !dbg !3175

76:                                               ; preds = %72
  %77 = load i8*, i8** %3, align 8, !dbg !3176
  %78 = call i8* @strcpy(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3177
  br label %79, !dbg !3177

79:                                               ; preds = %76, %72
  %80 = load i8*, i8** %3, align 8, !dbg !3178
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !3180
  %82 = icmp ne i32 %81, 0, !dbg !3180
  br i1 %82, label %86, label %83, !dbg !3181

83:                                               ; preds = %79
  %84 = load i8*, i8** %3, align 8, !dbg !3182
  %85 = call i8* @strcpy(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !3183
  br label %86, !dbg !3183

86:                                               ; preds = %83, %79
  %87 = load i8*, i8** %3, align 8, !dbg !3184
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !3186
  %89 = icmp ne i32 %88, 0, !dbg !3186
  br i1 %89, label %93, label %90, !dbg !3187

90:                                               ; preds = %86
  %91 = load i8*, i8** %3, align 8, !dbg !3188
  %92 = call i8* @strcpy(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #9, !dbg !3189
  br label %93, !dbg !3189

93:                                               ; preds = %90, %86
  %94 = load i8*, i8** %3, align 8, !dbg !3190
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !3192
  %96 = icmp ne i32 %95, 0, !dbg !3192
  br i1 %96, label %100, label %97, !dbg !3193

97:                                               ; preds = %93
  %98 = load i8*, i8** %3, align 8, !dbg !3194
  %99 = call i8* @strcpy(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !3195
  br label %100, !dbg !3195

100:                                              ; preds = %97, %93
  %101 = load i8*, i8** %3, align 8, !dbg !3196
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !3198
  %103 = icmp ne i32 %102, 0, !dbg !3198
  br i1 %103, label %107, label %104, !dbg !3199

104:                                              ; preds = %100
  %105 = load i8*, i8** %3, align 8, !dbg !3200
  %106 = call i8* @strcpy(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3201
  br label %107, !dbg !3201

107:                                              ; preds = %104, %100
  %108 = load i8*, i8** %3, align 8, !dbg !3202
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #8, !dbg !3204
  %110 = icmp ne i32 %109, 0, !dbg !3204
  br i1 %110, label %114, label %111, !dbg !3205

111:                                              ; preds = %107
  %112 = load i8*, i8** %3, align 8, !dbg !3206
  %113 = call i8* @strcpy(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !3207
  br label %114, !dbg !3207

114:                                              ; preds = %111, %107
  %115 = load i8*, i8** %3, align 8, !dbg !3208
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !3210
  %117 = icmp ne i32 %116, 0, !dbg !3210
  br i1 %117, label %121, label %118, !dbg !3211

118:                                              ; preds = %114
  %119 = load i8*, i8** %3, align 8, !dbg !3212
  %120 = call i8* @strcpy(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !3213
  br label %121, !dbg !3213

121:                                              ; preds = %118, %114
  %122 = load i8*, i8** %3, align 8, !dbg !3214
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #8, !dbg !3216
  %124 = icmp ne i32 %123, 0, !dbg !3216
  br i1 %124, label %128, label %125, !dbg !3217

125:                                              ; preds = %121
  %126 = load i8*, i8** %3, align 8, !dbg !3218
  %127 = call i8* @strcpy(i8* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !3219
  br label %128, !dbg !3219

128:                                              ; preds = %125, %121
  %129 = load i8*, i8** %3, align 8, !dbg !3220
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3222
  %131 = icmp ne i32 %130, 0, !dbg !3222
  br i1 %131, label %135, label %132, !dbg !3223

132:                                              ; preds = %128
  %133 = load i8*, i8** %3, align 8, !dbg !3224
  %134 = call i8* @strcpy(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3225
  br label %135, !dbg !3225

135:                                              ; preds = %132, %128
  %136 = load i8*, i8** %3, align 8, !dbg !3226
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #8, !dbg !3228
  %138 = icmp ne i32 %137, 0, !dbg !3228
  br i1 %138, label %142, label %139, !dbg !3229

139:                                              ; preds = %135
  %140 = load i8*, i8** %3, align 8, !dbg !3230
  %141 = call i8* @strcpy(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !3231
  br label %142, !dbg !3231

142:                                              ; preds = %139, %135
  %143 = load i8*, i8** %3, align 8, !dbg !3232
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #8, !dbg !3234
  %145 = icmp ne i32 %144, 0, !dbg !3234
  br i1 %145, label %149, label %146, !dbg !3235

146:                                              ; preds = %142
  %147 = load i8*, i8** %3, align 8, !dbg !3236
  %148 = call i8* @strcpy(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #9, !dbg !3237
  br label %149, !dbg !3237

149:                                              ; preds = %146, %142
  %150 = load i8*, i8** %3, align 8, !dbg !3238
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #8, !dbg !3240
  %152 = icmp ne i32 %151, 0, !dbg !3240
  br i1 %152, label %156, label %153, !dbg !3241

153:                                              ; preds = %149
  %154 = load i8*, i8** %3, align 8, !dbg !3242
  %155 = call i8* @strcpy(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !3243
  br label %156, !dbg !3243

156:                                              ; preds = %153, %149
  %157 = load i8*, i8** %3, align 8, !dbg !3244
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #8, !dbg !3246
  %159 = icmp ne i32 %158, 0, !dbg !3246
  br i1 %159, label %163, label %160, !dbg !3247

160:                                              ; preds = %156
  %161 = load i8*, i8** %3, align 8, !dbg !3248
  %162 = call i8* @strcpy(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3249
  br label %163, !dbg !3249

163:                                              ; preds = %160, %156
  %164 = load i8*, i8** %3, align 8, !dbg !3250
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #8, !dbg !3252
  %166 = icmp ne i32 %165, 0, !dbg !3252
  br i1 %166, label %170, label %167, !dbg !3253

167:                                              ; preds = %163
  %168 = load i8*, i8** %3, align 8, !dbg !3254
  %169 = call i8* @strcpy(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !3255
  br label %170, !dbg !3255

170:                                              ; preds = %167, %163
  %171 = load i8*, i8** %3, align 8, !dbg !3256
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3258
  %173 = icmp ne i32 %172, 0, !dbg !3258
  br i1 %173, label %177, label %174, !dbg !3259

174:                                              ; preds = %170
  %175 = load i8*, i8** %3, align 8, !dbg !3260
  %176 = call i8* @strcpy(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !3261
  br label %177, !dbg !3261

177:                                              ; preds = %174, %170
  %178 = load i8*, i8** %3, align 8, !dbg !3262
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #8, !dbg !3264
  %180 = icmp ne i32 %179, 0, !dbg !3264
  br i1 %180, label %184, label %181, !dbg !3265

181:                                              ; preds = %177
  %182 = load i8*, i8** %3, align 8, !dbg !3266
  %183 = call i8* @strcpy(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !3267
  br label %184, !dbg !3267

184:                                              ; preds = %181, %177
  %185 = load i8*, i8** %3, align 8, !dbg !3268
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #8, !dbg !3270
  %187 = icmp ne i32 %186, 0, !dbg !3270
  br i1 %187, label %191, label %188, !dbg !3271

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !3272
  %190 = call i8* @strcpy(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3273
  br label %191, !dbg !3273

191:                                              ; preds = %188, %184
  %192 = load i8*, i8** %3, align 8, !dbg !3274
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !3276
  %194 = icmp ne i32 %193, 0, !dbg !3276
  br i1 %194, label %198, label %195, !dbg !3277

195:                                              ; preds = %191
  %196 = load i8*, i8** %3, align 8, !dbg !3278
  %197 = call i8* @strcpy(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !3279
  br label %198, !dbg !3279

198:                                              ; preds = %195, %191
  %199 = load i8*, i8** %3, align 8, !dbg !3280
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !3282
  %201 = icmp ne i32 %200, 0, !dbg !3282
  br i1 %201, label %205, label %202, !dbg !3283

202:                                              ; preds = %198
  %203 = load i8*, i8** %3, align 8, !dbg !3284
  %204 = call i8* @strcpy(i8* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #9, !dbg !3285
  br label %205, !dbg !3285

205:                                              ; preds = %202, %198
  %206 = load i8*, i8** %3, align 8, !dbg !3286
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #8, !dbg !3288
  %208 = icmp ne i32 %207, 0, !dbg !3288
  br i1 %208, label %212, label %209, !dbg !3289

209:                                              ; preds = %205
  %210 = load i8*, i8** %3, align 8, !dbg !3290
  %211 = call i8* @strcpy(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !3291
  br label %212, !dbg !3291

212:                                              ; preds = %209, %205
  %213 = load i8*, i8** %3, align 8, !dbg !3292
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !3294
  %215 = icmp ne i32 %214, 0, !dbg !3294
  br i1 %215, label %219, label %216, !dbg !3295

216:                                              ; preds = %212
  %217 = load i8*, i8** %3, align 8, !dbg !3296
  %218 = call i8* @strcpy(i8* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #9, !dbg !3297
  br label %219, !dbg !3297

219:                                              ; preds = %216, %212
  %220 = load i8*, i8** %3, align 8, !dbg !3298
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !3300
  %222 = icmp ne i32 %221, 0, !dbg !3300
  br i1 %222, label %226, label %223, !dbg !3301

223:                                              ; preds = %219
  %224 = load i8*, i8** %3, align 8, !dbg !3302
  %225 = call i8* @strcpy(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #9, !dbg !3303
  br label %226, !dbg !3303

226:                                              ; preds = %223, %219
  %227 = load i8*, i8** %3, align 8, !dbg !3304
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #8, !dbg !3306
  %229 = icmp ne i32 %228, 0, !dbg !3306
  br i1 %229, label %233, label %230, !dbg !3307

230:                                              ; preds = %226
  %231 = load i8*, i8** %3, align 8, !dbg !3308
  %232 = call i8* @strcpy(i8* %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #9, !dbg !3309
  br label %233, !dbg !3309

233:                                              ; preds = %230, %226
  %234 = load i8*, i8** %3, align 8, !dbg !3310
  %235 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #8, !dbg !3312
  %236 = icmp ne i32 %235, 0, !dbg !3312
  br i1 %236, label %240, label %237, !dbg !3313

237:                                              ; preds = %233
  %238 = load i8*, i8** %3, align 8, !dbg !3314
  %239 = call i8* @strcpy(i8* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #9, !dbg !3315
  br label %240, !dbg !3315

240:                                              ; preds = %237, %233
  %241 = load i8*, i8** %3, align 8, !dbg !3316
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #8, !dbg !3318
  %243 = icmp ne i32 %242, 0, !dbg !3318
  br i1 %243, label %247, label %244, !dbg !3319

244:                                              ; preds = %240
  %245 = load i8*, i8** %3, align 8, !dbg !3320
  %246 = call i8* @strcpy(i8* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #9, !dbg !3321
  br label %247, !dbg !3321

247:                                              ; preds = %244, %240
  %248 = load i8*, i8** %3, align 8, !dbg !3322
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #8, !dbg !3324
  %250 = icmp ne i32 %249, 0, !dbg !3324
  br i1 %250, label %254, label %251, !dbg !3325

251:                                              ; preds = %247
  %252 = load i8*, i8** %3, align 8, !dbg !3326
  %253 = call i8* @strcpy(i8* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #9, !dbg !3327
  br label %254, !dbg !3327

254:                                              ; preds = %251, %247
  ret void, !dbg !3328
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_wwpdb_rname(i8* %0, %struct.residue_t* %1) #0 !dbg !3329 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.residue_t*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3330, metadata !DIExpression()), !dbg !3331
  store %struct.residue_t* %1, %struct.residue_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.residue_t** %4, metadata !3332, metadata !DIExpression()), !dbg !3333
  %5 = load i8*, i8** %3, align 8, !dbg !3334
  %6 = load %struct.residue_t*, %struct.residue_t** %4, align 8, !dbg !3335
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %6, i32 0, i32 4, !dbg !3336
  %8 = load i8*, i8** %7, align 8, !dbg !3336
  %9 = call i8* @strcpy(i8* %5, i8* %8) #9, !dbg !3337
  %10 = load i8*, i8** %3, align 8, !dbg !3338
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !3340
  %12 = icmp ne i32 %11, 0, !dbg !3340
  br i1 %12, label %16, label %13, !dbg !3341

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8, !dbg !3342
  %15 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !3343
  br label %16, !dbg !3343

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %3, align 8, !dbg !3344
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !3346
  %19 = icmp ne i32 %18, 0, !dbg !3346
  br i1 %19, label %23, label %20, !dbg !3347

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8, !dbg !3348
  %22 = call i8* @strcpy(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !3349
  br label %23, !dbg !3349

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %3, align 8, !dbg !3350
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !3352
  %26 = icmp ne i32 %25, 0, !dbg !3352
  br i1 %26, label %30, label %27, !dbg !3353

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8, !dbg !3354
  %29 = call i8* @strcpy(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !3355
  br label %30, !dbg !3355

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %3, align 8, !dbg !3356
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3358
  %33 = icmp ne i32 %32, 0, !dbg !3358
  br i1 %33, label %37, label %34, !dbg !3359

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8, !dbg !3360
  %36 = call i8* @strcpy(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !3361
  br label %37, !dbg !3361

37:                                               ; preds = %34, %30
  %38 = load i8*, i8** %3, align 8, !dbg !3362
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !3364
  %40 = icmp ne i32 %39, 0, !dbg !3364
  br i1 %40, label %44, label %41, !dbg !3365

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8, !dbg !3366
  %43 = call i8* @strcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #9, !dbg !3367
  br label %44, !dbg !3367

44:                                               ; preds = %41, %37
  %45 = load i8*, i8** %3, align 8, !dbg !3368
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !3370
  %47 = icmp ne i32 %46, 0, !dbg !3370
  br i1 %47, label %51, label %48, !dbg !3371

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8, !dbg !3372
  %50 = call i8* @strcpy(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #9, !dbg !3373
  br label %51, !dbg !3373

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %3, align 8, !dbg !3374
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !3376
  %54 = icmp ne i32 %53, 0, !dbg !3376
  br i1 %54, label %58, label %55, !dbg !3377

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8, !dbg !3378
  %57 = call i8* @strcpy(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #9, !dbg !3379
  br label %58, !dbg !3379

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %3, align 8, !dbg !3380
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !3382
  %61 = icmp ne i32 %60, 0, !dbg !3382
  br i1 %61, label %65, label %62, !dbg !3383

62:                                               ; preds = %58
  %63 = load i8*, i8** %3, align 8, !dbg !3384
  %64 = call i8* @strcpy(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #9, !dbg !3385
  br label %65, !dbg !3385

65:                                               ; preds = %62, %58
  %66 = load i8*, i8** %3, align 8, !dbg !3386
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !3388
  %68 = icmp ne i32 %67, 0, !dbg !3388
  br i1 %68, label %72, label %69, !dbg !3389

69:                                               ; preds = %65
  %70 = load i8*, i8** %3, align 8, !dbg !3390
  %71 = call i8* @strcpy(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #9, !dbg !3391
  br label %72, !dbg !3391

72:                                               ; preds = %69, %65
  %73 = load i8*, i8** %3, align 8, !dbg !3392
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !3394
  %75 = icmp ne i32 %74, 0, !dbg !3394
  br i1 %75, label %79, label %76, !dbg !3395

76:                                               ; preds = %72
  %77 = load i8*, i8** %3, align 8, !dbg !3396
  %78 = call i8* @strcpy(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #9, !dbg !3397
  br label %79, !dbg !3397

79:                                               ; preds = %76, %72
  %80 = load i8*, i8** %3, align 8, !dbg !3398
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !3400
  %82 = icmp ne i32 %81, 0, !dbg !3400
  br i1 %82, label %86, label %83, !dbg !3401

83:                                               ; preds = %79
  %84 = load i8*, i8** %3, align 8, !dbg !3402
  %85 = call i8* @strcpy(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #9, !dbg !3403
  br label %86, !dbg !3403

86:                                               ; preds = %83, %79
  %87 = load i8*, i8** %3, align 8, !dbg !3404
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !3406
  %89 = icmp ne i32 %88, 0, !dbg !3406
  br i1 %89, label %93, label %90, !dbg !3407

90:                                               ; preds = %86
  %91 = load i8*, i8** %3, align 8, !dbg !3408
  %92 = call i8* @strcpy(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #9, !dbg !3409
  br label %93, !dbg !3409

93:                                               ; preds = %90, %86
  %94 = load i8*, i8** %3, align 8, !dbg !3410
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !3412
  %96 = icmp ne i32 %95, 0, !dbg !3412
  br i1 %96, label %100, label %97, !dbg !3413

97:                                               ; preds = %93
  %98 = load i8*, i8** %3, align 8, !dbg !3414
  %99 = call i8* @strcpy(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #9, !dbg !3415
  br label %100, !dbg !3415

100:                                              ; preds = %97, %93
  %101 = load i8*, i8** %3, align 8, !dbg !3416
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !3418
  %103 = icmp ne i32 %102, 0, !dbg !3418
  br i1 %103, label %107, label %104, !dbg !3419

104:                                              ; preds = %100
  %105 = load i8*, i8** %3, align 8, !dbg !3420
  %106 = call i8* @strcpy(i8* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #9, !dbg !3421
  br label %107, !dbg !3421

107:                                              ; preds = %104, %100
  %108 = load i8*, i8** %3, align 8, !dbg !3422
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #8, !dbg !3424
  %110 = icmp ne i32 %109, 0, !dbg !3424
  br i1 %110, label %114, label %111, !dbg !3425

111:                                              ; preds = %107
  %112 = load i8*, i8** %3, align 8, !dbg !3426
  %113 = call i8* @strcpy(i8* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #9, !dbg !3427
  br label %114, !dbg !3427

114:                                              ; preds = %111, %107
  %115 = load i8*, i8** %3, align 8, !dbg !3428
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !3430
  %117 = icmp ne i32 %116, 0, !dbg !3430
  br i1 %117, label %121, label %118, !dbg !3431

118:                                              ; preds = %114
  %119 = load i8*, i8** %3, align 8, !dbg !3432
  %120 = call i8* @strcpy(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #9, !dbg !3433
  br label %121, !dbg !3433

121:                                              ; preds = %118, %114
  %122 = load i8*, i8** %3, align 8, !dbg !3434
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #8, !dbg !3436
  %124 = icmp ne i32 %123, 0, !dbg !3436
  br i1 %124, label %128, label %125, !dbg !3437

125:                                              ; preds = %121
  %126 = load i8*, i8** %3, align 8, !dbg !3438
  %127 = call i8* @strcpy(i8* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #9, !dbg !3439
  br label %128, !dbg !3439

128:                                              ; preds = %125, %121
  %129 = load i8*, i8** %3, align 8, !dbg !3440
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #8, !dbg !3442
  %131 = icmp ne i32 %130, 0, !dbg !3442
  br i1 %131, label %135, label %132, !dbg !3443

132:                                              ; preds = %128
  %133 = load i8*, i8** %3, align 8, !dbg !3444
  %134 = call i8* @strcpy(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #9, !dbg !3445
  br label %135, !dbg !3445

135:                                              ; preds = %132, %128
  %136 = load i8*, i8** %3, align 8, !dbg !3446
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #8, !dbg !3448
  %138 = icmp ne i32 %137, 0, !dbg !3448
  br i1 %138, label %142, label %139, !dbg !3449

139:                                              ; preds = %135
  %140 = load i8*, i8** %3, align 8, !dbg !3450
  %141 = call i8* @strcpy(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #9, !dbg !3451
  br label %142, !dbg !3451

142:                                              ; preds = %139, %135
  %143 = load i8*, i8** %3, align 8, !dbg !3452
  %144 = call i32 @strcmp(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #8, !dbg !3454
  %145 = icmp ne i32 %144, 0, !dbg !3454
  br i1 %145, label %149, label %146, !dbg !3455

146:                                              ; preds = %142
  %147 = load i8*, i8** %3, align 8, !dbg !3456
  %148 = call i8* @strcpy(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #9, !dbg !3457
  br label %149, !dbg !3457

149:                                              ; preds = %146, %142
  %150 = load i8*, i8** %3, align 8, !dbg !3458
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #8, !dbg !3460
  %152 = icmp ne i32 %151, 0, !dbg !3460
  br i1 %152, label %156, label %153, !dbg !3461

153:                                              ; preds = %149
  %154 = load i8*, i8** %3, align 8, !dbg !3462
  %155 = call i8* @strcpy(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #9, !dbg !3463
  br label %156, !dbg !3463

156:                                              ; preds = %153, %149
  %157 = load i8*, i8** %3, align 8, !dbg !3464
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #8, !dbg !3466
  %159 = icmp ne i32 %158, 0, !dbg !3466
  br i1 %159, label %163, label %160, !dbg !3467

160:                                              ; preds = %156
  %161 = load i8*, i8** %3, align 8, !dbg !3468
  %162 = call i8* @strcpy(i8* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #9, !dbg !3469
  br label %163, !dbg !3469

163:                                              ; preds = %160, %156
  %164 = load i8*, i8** %3, align 8, !dbg !3470
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #8, !dbg !3472
  %166 = icmp ne i32 %165, 0, !dbg !3472
  br i1 %166, label %170, label %167, !dbg !3473

167:                                              ; preds = %163
  %168 = load i8*, i8** %3, align 8, !dbg !3474
  %169 = call i8* @strcpy(i8* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #9, !dbg !3475
  br label %170, !dbg !3475

170:                                              ; preds = %167, %163
  %171 = load i8*, i8** %3, align 8, !dbg !3476
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3478
  %173 = icmp ne i32 %172, 0, !dbg !3478
  br i1 %173, label %177, label %174, !dbg !3479

174:                                              ; preds = %170
  %175 = load i8*, i8** %3, align 8, !dbg !3480
  %176 = call i8* @strcpy(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #9, !dbg !3481
  br label %177, !dbg !3481

177:                                              ; preds = %174, %170
  %178 = load i8*, i8** %3, align 8, !dbg !3482
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #8, !dbg !3484
  %180 = icmp ne i32 %179, 0, !dbg !3484
  br i1 %180, label %184, label %181, !dbg !3485

181:                                              ; preds = %177
  %182 = load i8*, i8** %3, align 8, !dbg !3486
  %183 = call i8* @strcpy(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #9, !dbg !3487
  br label %184, !dbg !3487

184:                                              ; preds = %181, %177
  %185 = load i8*, i8** %3, align 8, !dbg !3488
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #8, !dbg !3490
  %187 = icmp ne i32 %186, 0, !dbg !3490
  br i1 %187, label %191, label %188, !dbg !3491

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8, !dbg !3492
  %190 = call i8* @strcpy(i8* %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #9, !dbg !3493
  br label %191, !dbg !3493

191:                                              ; preds = %188, %184
  %192 = load i8*, i8** %3, align 8, !dbg !3494
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !3496
  %194 = icmp ne i32 %193, 0, !dbg !3496
  br i1 %194, label %198, label %195, !dbg !3497

195:                                              ; preds = %191
  %196 = load i8*, i8** %3, align 8, !dbg !3498
  %197 = call i8* @strcpy(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #9, !dbg !3499
  br label %198, !dbg !3499

198:                                              ; preds = %195, %191
  %199 = load i8*, i8** %3, align 8, !dbg !3500
  %200 = call i32 @strcmp(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !3502
  %201 = icmp ne i32 %200, 0, !dbg !3502
  br i1 %201, label %205, label %202, !dbg !3503

202:                                              ; preds = %198
  %203 = load i8*, i8** %3, align 8, !dbg !3504
  %204 = call i8* @strcpy(i8* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #9, !dbg !3505
  br label %205, !dbg !3505

205:                                              ; preds = %202, %198
  %206 = load i8*, i8** %3, align 8, !dbg !3506
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #8, !dbg !3508
  %208 = icmp ne i32 %207, 0, !dbg !3508
  br i1 %208, label %212, label %209, !dbg !3509

209:                                              ; preds = %205
  %210 = load i8*, i8** %3, align 8, !dbg !3510
  %211 = call i8* @strcpy(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #9, !dbg !3511
  br label %212, !dbg !3511

212:                                              ; preds = %209, %205
  %213 = load i8*, i8** %3, align 8, !dbg !3512
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !3514
  %215 = icmp ne i32 %214, 0, !dbg !3514
  br i1 %215, label %219, label %216, !dbg !3515

216:                                              ; preds = %212
  %217 = load i8*, i8** %3, align 8, !dbg !3516
  %218 = call i8* @strcpy(i8* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #9, !dbg !3517
  br label %219, !dbg !3517

219:                                              ; preds = %216, %212
  %220 = load i8*, i8** %3, align 8, !dbg !3518
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !3520
  %222 = icmp ne i32 %221, 0, !dbg !3520
  br i1 %222, label %226, label %223, !dbg !3521

223:                                              ; preds = %219
  %224 = load i8*, i8** %3, align 8, !dbg !3522
  %225 = call i8* @strcpy(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #9, !dbg !3523
  br label %226, !dbg !3523

226:                                              ; preds = %223, %219
  %227 = load i8*, i8** %3, align 8, !dbg !3524
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #8, !dbg !3526
  %229 = icmp ne i32 %228, 0, !dbg !3526
  br i1 %229, label %233, label %230, !dbg !3527

230:                                              ; preds = %226
  %231 = load i8*, i8** %3, align 8, !dbg !3528
  %232 = call i8* @strcpy(i8* %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #9, !dbg !3529
  br label %233, !dbg !3529

233:                                              ; preds = %230, %226
  %234 = load i8*, i8** %3, align 8, !dbg !3530
  %235 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #8, !dbg !3532
  %236 = icmp ne i32 %235, 0, !dbg !3532
  br i1 %236, label %240, label %237, !dbg !3533

237:                                              ; preds = %233
  %238 = load i8*, i8** %3, align 8, !dbg !3534
  %239 = call i8* @strcpy(i8* %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #9, !dbg !3535
  br label %240, !dbg !3535

240:                                              ; preds = %237, %233
  %241 = load i8*, i8** %3, align 8, !dbg !3536
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #8, !dbg !3538
  %243 = icmp ne i32 %242, 0, !dbg !3538
  br i1 %243, label %247, label %244, !dbg !3539

244:                                              ; preds = %240
  %245 = load i8*, i8** %3, align 8, !dbg !3540
  %246 = call i8* @strcpy(i8* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #9, !dbg !3541
  br label %247, !dbg !3541

247:                                              ; preds = %244, %240
  %248 = load i8*, i8** %3, align 8, !dbg !3542
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #8, !dbg !3544
  %250 = icmp ne i32 %249, 0, !dbg !3544
  br i1 %250, label %254, label %251, !dbg !3545

251:                                              ; preds = %247
  %252 = load i8*, i8** %3, align 8, !dbg !3546
  %253 = call i8* @strcpy(i8* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #9, !dbg !3547
  br label %254, !dbg !3547

254:                                              ; preds = %251, %247
  ret void, !dbg !3548
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_brook_aname(i8* %0, i8* %1, i8* %2) #0 !dbg !3549 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3552, metadata !DIExpression()), !dbg !3553
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3554, metadata !DIExpression()), !dbg !3555
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3556, metadata !DIExpression()), !dbg !3557
  %7 = load i8*, i8** %4, align 8, !dbg !3558
  %8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !3558
  store i8 32, i8* %8, align 1, !dbg !3559
  %9 = load i8*, i8** %5, align 8, !dbg !3560
  %10 = call i64 @strlen(i8* %9) #8, !dbg !3562
  %11 = icmp uge i64 %10, 4, !dbg !3563
  br i1 %11, label %12, label %24, !dbg !3564

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !3565
  %14 = getelementptr inbounds i8, i8* %13, i64 3, !dbg !3565
  %15 = load i8, i8* %14, align 1, !dbg !3565
  %16 = sext i8 %15 to i32, !dbg !3565
  %17 = icmp ne i32 %16, 32, !dbg !3566
  br i1 %17, label %18, label %24, !dbg !3567

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8, !dbg !3568
  %20 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !3568
  %21 = load i8, i8* %20, align 1, !dbg !3568
  %22 = load i8*, i8** %4, align 8, !dbg !3569
  %23 = getelementptr inbounds i8, i8* %22, i64 0, !dbg !3569
  store i8 %21, i8* %23, align 1, !dbg !3570
  br label %24, !dbg !3569

24:                                               ; preds = %18, %12, %3
  %25 = load i8*, i8** %5, align 8, !dbg !3571
  %26 = getelementptr inbounds i8, i8* %25, i64 0, !dbg !3571
  %27 = load i8, i8* %26, align 1, !dbg !3571
  %28 = load i8*, i8** %4, align 8, !dbg !3572
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !3572
  store i8 %27, i8* %29, align 1, !dbg !3573
  %30 = load i8*, i8** %5, align 8, !dbg !3574
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !3574
  %32 = load i8, i8* %31, align 1, !dbg !3574
  %33 = load i8*, i8** %4, align 8, !dbg !3575
  %34 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !3575
  store i8 %32, i8* %34, align 1, !dbg !3576
  %35 = load i8*, i8** %5, align 8, !dbg !3577
  %36 = getelementptr inbounds i8, i8* %35, i64 2, !dbg !3577
  %37 = load i8, i8* %36, align 1, !dbg !3577
  %38 = load i8*, i8** %4, align 8, !dbg !3578
  %39 = getelementptr inbounds i8, i8* %38, i64 3, !dbg !3578
  store i8 %37, i8* %39, align 1, !dbg !3579
  %40 = load i8*, i8** %4, align 8, !dbg !3580
  %41 = getelementptr inbounds i8, i8* %40, i64 3, !dbg !3580
  %42 = load i8, i8* %41, align 1, !dbg !3580
  %43 = sext i8 %42 to i32, !dbg !3580
  %44 = icmp eq i32 %43, 39, !dbg !3582
  br i1 %44, label %45, label %48, !dbg !3583

45:                                               ; preds = %24
  %46 = load i8*, i8** %4, align 8, !dbg !3584
  %47 = getelementptr inbounds i8, i8* %46, i64 3, !dbg !3584
  store i8 42, i8* %47, align 1, !dbg !3585
  br label %48, !dbg !3584

48:                                               ; preds = %45, %24
  %49 = load i8*, i8** %4, align 8, !dbg !3586
  %50 = getelementptr inbounds i8, i8* %49, i64 4, !dbg !3586
  store i8 0, i8* %50, align 1, !dbg !3587
  %51 = load i8*, i8** %4, align 8, !dbg !3588
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #8, !dbg !3590
  %53 = icmp ne i32 %52, 0, !dbg !3590
  br i1 %53, label %97, label %54, !dbg !3591

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8, !dbg !3592
  %56 = getelementptr inbounds i8, i8* %55, i64 3, !dbg !3592
  %57 = load i8, i8* %56, align 1, !dbg !3592
  %58 = sext i8 %57 to i32, !dbg !3592
  %59 = icmp eq i32 %58, 49, !dbg !3593
  br i1 %59, label %72, label %60, !dbg !3594

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8, !dbg !3595
  %62 = getelementptr inbounds i8, i8* %61, i64 3, !dbg !3595
  %63 = load i8, i8* %62, align 1, !dbg !3595
  %64 = sext i8 %63 to i32, !dbg !3595
  %65 = icmp eq i32 %64, 50, !dbg !3596
  br i1 %65, label %72, label %66, !dbg !3597

66:                                               ; preds = %60
  %67 = load i8*, i8** %4, align 8, !dbg !3598
  %68 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !3598
  %69 = load i8, i8* %68, align 1, !dbg !3598
  %70 = sext i8 %69 to i32, !dbg !3598
  %71 = icmp eq i32 %70, 51, !dbg !3599
  br i1 %71, label %72, label %97, !dbg !3600

72:                                               ; preds = %66, %60, %54
  %73 = load i8*, i8** %4, align 8, !dbg !3601
  %74 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #8, !dbg !3602
  %75 = icmp ne i32 %74, 0, !dbg !3602
  br i1 %75, label %76, label %89, !dbg !3603

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8, !dbg !3604
  %78 = icmp ne i8* %77, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0), !dbg !3605
  br i1 %78, label %79, label %97, !dbg !3606

79:                                               ; preds = %76
  %80 = load i8*, i8** %6, align 8, !dbg !3607
  %81 = icmp ne i8* %80, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i64 0, i64 0), !dbg !3608
  br i1 %81, label %82, label %97, !dbg !3609

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8, !dbg !3610
  %84 = icmp ne i8* %83, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0), !dbg !3611
  br i1 %84, label %85, label %97, !dbg !3612

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8, !dbg !3613
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i64 2) #8, !dbg !3614
  %88 = icmp ne i32 %87, 0, !dbg !3614
  br i1 %88, label %89, label %97, !dbg !3615

89:                                               ; preds = %85, %72
  %90 = load i8*, i8** %4, align 8, !dbg !3616
  %91 = getelementptr inbounds i8, i8* %90, i64 3, !dbg !3616
  %92 = load i8, i8* %91, align 1, !dbg !3616
  %93 = load i8*, i8** %4, align 8, !dbg !3618
  %94 = getelementptr inbounds i8, i8* %93, i64 0, !dbg !3618
  store i8 %92, i8* %94, align 1, !dbg !3619
  %95 = load i8*, i8** %4, align 8, !dbg !3620
  %96 = getelementptr inbounds i8, i8* %95, i64 3, !dbg !3620
  store i8 32, i8* %96, align 1, !dbg !3621
  br label %97, !dbg !3622

97:                                               ; preds = %89, %85, %82, %79, %76, %66, %48
  ret void, !dbg !3623
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_wwpdb_aname(i8* %0, i8* %1, i8* %2) #0 !dbg !3624 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3625, metadata !DIExpression()), !dbg !3626
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3627, metadata !DIExpression()), !dbg !3628
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3629, metadata !DIExpression()), !dbg !3630
  %7 = load i8*, i8** %5, align 8, !dbg !3631
  %8 = call i64 @strlen(i8* %7) #8, !dbg !3633
  %9 = icmp uge i64 %8, 4, !dbg !3634
  br i1 %9, label %10, label %20, !dbg !3635

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !3636
  %12 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !3636
  %13 = load i8, i8* %12, align 1, !dbg !3636
  %14 = sext i8 %13 to i32, !dbg !3636
  %15 = icmp ne i32 %14, 32, !dbg !3637
  br i1 %15, label %16, label %20, !dbg !3638

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8, !dbg !3639
  %18 = load i8*, i8** %5, align 8, !dbg !3641
  %19 = call i8* @strncpy(i8* %17, i8* %18, i64 5) #9, !dbg !3642
  br label %29, !dbg !3643

20:                                               ; preds = %10, %3
  %21 = load i8*, i8** %4, align 8, !dbg !3644
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !3644
  store i8 32, i8* %22, align 1, !dbg !3646
  %23 = load i8*, i8** %4, align 8, !dbg !3647
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !3648
  %25 = load i8*, i8** %5, align 8, !dbg !3649
  %26 = call i8* @strncpy(i8* %24, i8* %25, i64 3) #9, !dbg !3650
  %27 = load i8*, i8** %4, align 8, !dbg !3651
  %28 = getelementptr inbounds i8, i8* %27, i64 4, !dbg !3651
  store i8 0, i8* %28, align 1, !dbg !3652
  br label %29

29:                                               ; preds = %20, %16
  %30 = load i8*, i8** %4, align 8, !dbg !3653
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !3653
  %32 = load i8, i8* %31, align 1, !dbg !3653
  %33 = sext i8 %32 to i32, !dbg !3653
  %34 = icmp eq i32 %33, 0, !dbg !3655
  br i1 %34, label %35, label %38, !dbg !3656

35:                                               ; preds = %29
  %36 = load i8*, i8** %4, align 8, !dbg !3657
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !3657
  store i8 32, i8* %37, align 1, !dbg !3658
  br label %38, !dbg !3657

38:                                               ; preds = %35, %29
  %39 = load i8*, i8** %4, align 8, !dbg !3659
  %40 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !3659
  %41 = load i8, i8* %40, align 1, !dbg !3659
  %42 = sext i8 %41 to i32, !dbg !3659
  %43 = icmp eq i32 %42, 0, !dbg !3661
  br i1 %43, label %44, label %47, !dbg !3662

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8, !dbg !3663
  %46 = getelementptr inbounds i8, i8* %45, i64 2, !dbg !3663
  store i8 32, i8* %46, align 1, !dbg !3664
  br label %47, !dbg !3663

47:                                               ; preds = %44, %38
  %48 = load i8*, i8** %4, align 8, !dbg !3665
  %49 = getelementptr inbounds i8, i8* %48, i64 3, !dbg !3665
  %50 = load i8, i8* %49, align 1, !dbg !3665
  %51 = sext i8 %50 to i32, !dbg !3665
  %52 = icmp eq i32 %51, 0, !dbg !3667
  br i1 %52, label %53, label %56, !dbg !3668

53:                                               ; preds = %47
  %54 = load i8*, i8** %4, align 8, !dbg !3669
  %55 = getelementptr inbounds i8, i8* %54, i64 3, !dbg !3669
  store i8 32, i8* %55, align 1, !dbg !3670
  br label %56, !dbg !3669

56:                                               ; preds = %53, %47
  %57 = load i8*, i8** %4, align 8, !dbg !3671
  %58 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #8, !dbg !3673
  %59 = icmp ne i32 %58, 0, !dbg !3673
  br i1 %59, label %63, label %60, !dbg !3674

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8, !dbg !3675
  %62 = call i8* @strncpy(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5) #9, !dbg !3676
  br label %63, !dbg !3676

63:                                               ; preds = %60, %56
  %64 = load i8*, i8** %4, align 8, !dbg !3677
  %65 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #8, !dbg !3679
  %66 = icmp ne i32 %65, 0, !dbg !3679
  br i1 %66, label %70, label %67, !dbg !3680

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8, !dbg !3681
  %69 = call i8* @strncpy(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5) #9, !dbg !3682
  br label %70, !dbg !3682

70:                                               ; preds = %67, %63
  %71 = load i8*, i8** %4, align 8, !dbg !3683
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #8, !dbg !3685
  %73 = icmp ne i32 %72, 0, !dbg !3685
  br i1 %73, label %77, label %74, !dbg !3686

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8, !dbg !3687
  %76 = call i8* @strncpy(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5) #9, !dbg !3688
  br label %77, !dbg !3688

77:                                               ; preds = %74, %70
  %78 = load i8*, i8** %4, align 8, !dbg !3689
  %79 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #8, !dbg !3691
  %80 = icmp ne i32 %79, 0, !dbg !3691
  br i1 %80, label %84, label %81, !dbg !3692

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8, !dbg !3693
  %83 = call i8* @strncpy(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5) #9, !dbg !3694
  br label %84, !dbg !3694

84:                                               ; preds = %81, %77
  %85 = load i8*, i8** %4, align 8, !dbg !3695
  %86 = call i32 @strncmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #8, !dbg !3697
  %87 = icmp ne i32 %86, 0, !dbg !3697
  br i1 %87, label %91, label %88, !dbg !3698

88:                                               ; preds = %84
  %89 = load i8*, i8** %4, align 8, !dbg !3699
  %90 = call i8* @strncpy(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5) #9, !dbg !3700
  br label %91, !dbg !3700

91:                                               ; preds = %88, %84
  %92 = load i8*, i8** %4, align 8, !dbg !3701
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #8, !dbg !3703
  %94 = icmp ne i32 %93, 0, !dbg !3703
  br i1 %94, label %98, label %95, !dbg !3704

95:                                               ; preds = %91
  %96 = load i8*, i8** %4, align 8, !dbg !3705
  %97 = call i8* @strncpy(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5) #9, !dbg !3706
  br label %98, !dbg !3706

98:                                               ; preds = %95, %91
  %99 = load i8*, i8** %4, align 8, !dbg !3707
  %100 = call i32 @strncmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #8, !dbg !3709
  %101 = icmp ne i32 %100, 0, !dbg !3709
  br i1 %101, label %105, label %102, !dbg !3710

102:                                              ; preds = %98
  %103 = load i8*, i8** %4, align 8, !dbg !3711
  %104 = call i8* @strncpy(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5) #9, !dbg !3712
  br label %105, !dbg !3712

105:                                              ; preds = %102, %98
  %106 = load i8*, i8** %4, align 8, !dbg !3713
  %107 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #8, !dbg !3715
  %108 = icmp ne i32 %107, 0, !dbg !3715
  br i1 %108, label %112, label %109, !dbg !3716

109:                                              ; preds = %105
  %110 = load i8*, i8** %4, align 8, !dbg !3717
  %111 = call i8* @strncpy(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5) #9, !dbg !3718
  br label %112, !dbg !3718

112:                                              ; preds = %109, %105
  %113 = load i8*, i8** %4, align 8, !dbg !3719
  %114 = call i32 @strncmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #8, !dbg !3721
  %115 = icmp ne i32 %114, 0, !dbg !3721
  br i1 %115, label %116, label %176, !dbg !3722

116:                                              ; preds = %112
  %117 = load i8*, i8** %4, align 8, !dbg !3723
  %118 = call i32 @strncmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #8, !dbg !3724
  %119 = icmp ne i32 %118, 0, !dbg !3724
  br i1 %119, label %120, label %176, !dbg !3725

120:                                              ; preds = %116
  %121 = load i8*, i8** %4, align 8, !dbg !3726
  %122 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #8, !dbg !3727
  %123 = icmp ne i32 %122, 0, !dbg !3727
  br i1 %123, label %124, label %176, !dbg !3728

124:                                              ; preds = %120
  %125 = load i8*, i8** %4, align 8, !dbg !3729
  %126 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #8, !dbg !3730
  %127 = icmp ne i32 %126, 0, !dbg !3730
  br i1 %127, label %128, label %176, !dbg !3731

128:                                              ; preds = %124
  %129 = load i8*, i8** %4, align 8, !dbg !3732
  %130 = call i32 @strncmp(i8* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #8, !dbg !3733
  %131 = icmp ne i32 %130, 0, !dbg !3733
  br i1 %131, label %132, label %176, !dbg !3734

132:                                              ; preds = %128
  %133 = load i8*, i8** %4, align 8, !dbg !3735
  %134 = call i32 @strncmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #8, !dbg !3736
  %135 = icmp ne i32 %134, 0, !dbg !3736
  br i1 %135, label %136, label %176, !dbg !3737

136:                                              ; preds = %132
  %137 = load i8*, i8** %4, align 8, !dbg !3738
  %138 = call i32 @strncmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #8, !dbg !3739
  %139 = icmp ne i32 %138, 0, !dbg !3739
  br i1 %139, label %140, label %176, !dbg !3740

140:                                              ; preds = %136
  %141 = load i8*, i8** %4, align 8, !dbg !3741
  %142 = call i32 @strncmp(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #8, !dbg !3742
  %143 = icmp ne i32 %142, 0, !dbg !3742
  br i1 %143, label %144, label %176, !dbg !3743

144:                                              ; preds = %140
  %145 = load i8*, i8** %4, align 8, !dbg !3744
  %146 = call i32 @strncmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #8, !dbg !3745
  %147 = icmp ne i32 %146, 0, !dbg !3745
  br i1 %147, label %148, label %176, !dbg !3746

148:                                              ; preds = %144
  %149 = load i8*, i8** %4, align 8, !dbg !3747
  %150 = call i32 @strncmp(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #8, !dbg !3748
  %151 = icmp ne i32 %150, 0, !dbg !3748
  br i1 %151, label %152, label %176, !dbg !3749

152:                                              ; preds = %148
  %153 = load i8*, i8** %4, align 8, !dbg !3750
  %154 = call i32 @strncmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #8, !dbg !3751
  %155 = icmp ne i32 %154, 0, !dbg !3751
  br i1 %155, label %156, label %176, !dbg !3752

156:                                              ; preds = %152
  %157 = load i8*, i8** %4, align 8, !dbg !3753
  %158 = call i32 @strncmp(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #8, !dbg !3754
  %159 = icmp ne i32 %158, 0, !dbg !3754
  br i1 %159, label %160, label %176, !dbg !3755

160:                                              ; preds = %156
  %161 = load i8*, i8** %4, align 8, !dbg !3756
  %162 = call i32 @strncmp(i8* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #8, !dbg !3757
  %163 = icmp ne i32 %162, 0, !dbg !3757
  br i1 %163, label %164, label %176, !dbg !3758

164:                                              ; preds = %160
  %165 = load i8*, i8** %4, align 8, !dbg !3759
  %166 = call i32 @strncmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #8, !dbg !3760
  %167 = icmp ne i32 %166, 0, !dbg !3760
  br i1 %167, label %168, label %176, !dbg !3761

168:                                              ; preds = %164
  %169 = load i8*, i8** %4, align 8, !dbg !3762
  %170 = call i32 @strncmp(i8* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #8, !dbg !3763
  %171 = icmp ne i32 %170, 0, !dbg !3763
  br i1 %171, label %172, label %176, !dbg !3764

172:                                              ; preds = %168
  %173 = load i8*, i8** %4, align 8, !dbg !3765
  %174 = call i32 @strncmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #8, !dbg !3766
  %175 = icmp ne i32 %174, 0, !dbg !3766
  br i1 %175, label %194, label %176, !dbg !3767

176:                                              ; preds = %172, %168, %164, %160, %156, %152, %148, %144, %140, %136, %132, %128, %124, %120, %116, %112
  %177 = load i8*, i8** %4, align 8, !dbg !3768
  %178 = getelementptr inbounds i8, i8* %177, i64 1, !dbg !3768
  %179 = load i8, i8* %178, align 1, !dbg !3768
  %180 = load i8*, i8** %4, align 8, !dbg !3770
  %181 = getelementptr inbounds i8, i8* %180, i64 0, !dbg !3770
  store i8 %179, i8* %181, align 1, !dbg !3771
  %182 = load i8*, i8** %4, align 8, !dbg !3772
  %183 = getelementptr inbounds i8, i8* %182, i64 2, !dbg !3772
  %184 = load i8, i8* %183, align 1, !dbg !3772
  %185 = load i8*, i8** %4, align 8, !dbg !3773
  %186 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !3773
  store i8 %184, i8* %186, align 1, !dbg !3774
  %187 = load i8*, i8** %4, align 8, !dbg !3775
  %188 = getelementptr inbounds i8, i8* %187, i64 3, !dbg !3775
  %189 = load i8, i8* %188, align 1, !dbg !3775
  %190 = load i8*, i8** %4, align 8, !dbg !3776
  %191 = getelementptr inbounds i8, i8* %190, i64 2, !dbg !3776
  store i8 %189, i8* %191, align 1, !dbg !3777
  %192 = load i8*, i8** %4, align 8, !dbg !3778
  %193 = getelementptr inbounds i8, i8* %192, i64 3, !dbg !3778
  store i8 32, i8* %193, align 1, !dbg !3779
  br label %194, !dbg !3780

194:                                              ; preds = %176, %172
  ret void, !dbg !3781
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freecid(%struct.cid_t* %0) #0 !dbg !3782 {
  %2 = alloca %struct.cid_t*, align 8
  store %struct.cid_t* %0, %struct.cid_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.cid_t** %2, metadata !3785, metadata !DIExpression()), !dbg !3786
  %3 = load %struct.cid_t*, %struct.cid_t** %2, align 8, !dbg !3787
  %4 = icmp ne %struct.cid_t* %3, null, !dbg !3789
  br i1 %4, label %5, label %17, !dbg !3790

5:                                                ; preds = %1
  %6 = load %struct.cid_t*, %struct.cid_t** %2, align 8, !dbg !3791
  %7 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i32 0, i32 2, !dbg !3794
  %8 = load i8*, i8** %7, align 8, !dbg !3794
  %9 = icmp ne i8* %8, null, !dbg !3795
  br i1 %9, label %10, label %14, !dbg !3796

10:                                               ; preds = %5
  %11 = load %struct.cid_t*, %struct.cid_t** %2, align 8, !dbg !3797
  %12 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %11, i32 0, i32 2, !dbg !3798
  %13 = load i8*, i8** %12, align 8, !dbg !3798
  call void @free(i8* %13) #9, !dbg !3799
  br label %14, !dbg !3799

14:                                               ; preds = %10, %5
  %15 = load %struct.cid_t*, %struct.cid_t** %2, align 8, !dbg !3800
  %16 = bitcast %struct.cid_t* %15 to i8*, !dbg !3800
  call void @free(i8* %16) #9, !dbg !3801
  br label %17, !dbg !3802

17:                                               ; preds = %14, %1
  ret void, !dbg !3803
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!269, !270, !271}
!llvm.ident = !{!272}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mat", scope: !2, file: !3, line: 164, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "getmatrix", scope: !3, file: !3, line: 159, type: !4, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !259)
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
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !33, globals: !253, splitDebugInlining: false, nameTableKind: None)
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
!33 = !{!34, !35, !37, !36, !13, !245, !246}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESIDUE_T", file: !8, line: 82, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "residue_t", file: !8, line: 63, size: 1024, elements: !41)
!41 = !{!42, !44, !46, !47, !48, !51, !52, !53, !54, !55, !188, !198, !199, !205, !206, !215, !216, !217}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "r_next", scope: !40, file: !8, line: 64, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "r_num", scope: !40, file: !8, line: 65, baseType: !45, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT_T", file: !8, line: 6, baseType: !36)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "r_tresnum", scope: !40, file: !8, line: 66, baseType: !45, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "r_resnum", scope: !40, file: !8, line: 67, baseType: !45, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "r_resname", scope: !40, file: !8, line: 68, baseType: !49, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRING_T", file: !8, line: 17, baseType: !14)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "r_resid", scope: !40, file: !8, line: 69, baseType: !49, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "r_attr", scope: !40, file: !8, line: 70, baseType: !45, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "r_kind", scope: !40, file: !8, line: 71, baseType: !45, size: 32, offset: 352)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "r_atomkind", scope: !40, file: !8, line: 72, baseType: !45, size: 32, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "r_strand", scope: !40, file: !8, line: 73, baseType: !56, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strand_t", file: !8, line: 84, size: 384, elements: !58)
!58 = !{!59, !60, !61, !62, !184, !185, !186, !187}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandname", scope: !57, file: !8, line: 85, baseType: !49, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "s_strandnum", scope: !57, file: !8, line: 86, baseType: !45, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "s_attr", scope: !57, file: !8, line: 87, baseType: !45, size: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "s_molecule", scope: !57, file: !8, line: 88, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "molecule_t", file: !8, line: 118, size: 1088, elements: !65)
!65 = !{!66, !71, !72, !75, !76, !77, !78}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "m_frame", scope: !64, file: !8, line: 119, baseType: !67, size: 768)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FRAME_T", file: !8, line: 13, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 768, elements: !69)
!69 = !{!12, !70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "m_nstrands", scope: !64, file: !8, line: 120, baseType: !45, size: 32, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "m_strands", scope: !64, file: !8, line: 121, baseType: !73, size: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRAND_T", file: !8, line: 93, baseType: !57)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "m_nresidues", scope: !64, file: !8, line: 122, baseType: !45, size: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "m_natoms", scope: !64, file: !8, line: 123, baseType: !45, size: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "m_nvalid", scope: !64, file: !8, line: 124, baseType: !45, size: 32, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "m_prm", scope: !64, file: !8, line: 125, baseType: !79, size: 64, offset: 1024)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARMSTRUCT_T", file: !8, line: 115, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parm", file: !8, line: 95, size: 5760, elements: !82)
!82 = !{!83, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !143, !144, !145, !146, !147, !148, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ititl", scope: !81, file: !8, line: 96, baseType: !84, size: 648)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 648, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 81)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "IfBox", scope: !81, file: !8, line: 97, baseType: !45, size: 32, offset: 672)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "Nmxrs", scope: !81, file: !8, line: 97, baseType: !45, size: 32, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "IfCap", scope: !81, file: !8, line: 97, baseType: !45, size: 32, offset: 736)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "Natom", scope: !81, file: !8, line: 98, baseType: !45, size: 32, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "Ntypes", scope: !81, file: !8, line: 98, baseType: !45, size: 32, offset: 800)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Nbonh", scope: !81, file: !8, line: 98, baseType: !45, size: 32, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "Mbona", scope: !81, file: !8, line: 98, baseType: !45, size: 32, offset: 864)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheth", scope: !81, file: !8, line: 98, baseType: !45, size: 32, offset: 896)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "Mtheta", scope: !81, file: !8, line: 98, baseType: !45, size: 32, offset: 928)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "Nphih", scope: !81, file: !8, line: 99, baseType: !45, size: 32, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "Mphia", scope: !81, file: !8, line: 99, baseType: !45, size: 32, offset: 992)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "Nhparm", scope: !81, file: !8, line: 99, baseType: !45, size: 32, offset: 1024)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "Nparm", scope: !81, file: !8, line: 99, baseType: !45, size: 32, offset: 1056)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "Nnb", scope: !81, file: !8, line: 99, baseType: !45, size: 32, offset: 1088)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "Nres", scope: !81, file: !8, line: 99, baseType: !45, size: 32, offset: 1120)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "Nbona", scope: !81, file: !8, line: 100, baseType: !45, size: 32, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "Ntheta", scope: !81, file: !8, line: 100, baseType: !45, size: 32, offset: 1184)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "Nphia", scope: !81, file: !8, line: 100, baseType: !45, size: 32, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "Numbnd", scope: !81, file: !8, line: 100, baseType: !45, size: 32, offset: 1248)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "Numang", scope: !81, file: !8, line: 100, baseType: !45, size: 32, offset: 1280)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "Nptra", scope: !81, file: !8, line: 100, baseType: !45, size: 32, offset: 1312)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "Natyp", scope: !81, file: !8, line: 101, baseType: !45, size: 32, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "Nphb", scope: !81, file: !8, line: 101, baseType: !45, size: 32, offset: 1376)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Nat3", scope: !81, file: !8, line: 101, baseType: !45, size: 32, offset: 1408)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "Ntype2d", scope: !81, file: !8, line: 101, baseType: !45, size: 32, offset: 1440)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "Nttyp", scope: !81, file: !8, line: 101, baseType: !45, size: 32, offset: 1472)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Nspm", scope: !81, file: !8, line: 101, baseType: !45, size: 32, offset: 1504)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Iptres", scope: !81, file: !8, line: 101, baseType: !45, size: 32, offset: 1536)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "Nspsol", scope: !81, file: !8, line: 101, baseType: !45, size: 32, offset: 1568)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "Ipatm", scope: !81, file: !8, line: 102, baseType: !45, size: 32, offset: 1600)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "Natcap", scope: !81, file: !8, line: 102, baseType: !45, size: 32, offset: 1632)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "Numextra", scope: !81, file: !8, line: 102, baseType: !45, size: 32, offset: 1664)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "AtomNames", scope: !81, file: !8, line: 103, baseType: !49, size: 64, offset: 1728)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ResNames", scope: !81, file: !8, line: 103, baseType: !49, size: 64, offset: 1792)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "AtomSym", scope: !81, file: !8, line: 103, baseType: !49, size: 64, offset: 1856)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "AtomTree", scope: !81, file: !8, line: 103, baseType: !49, size: 64, offset: 1920)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "Charges", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 1984)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "Masses", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 2048)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "Rk", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 2112)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "Req", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 2176)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "Tk", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 2240)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "Teq", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 2304)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "Pk", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 2368)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "Pn", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 2432)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "Phase", scope: !81, file: !8, line: 104, baseType: !124, size: 64, offset: 2496)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "Solty", scope: !81, file: !8, line: 105, baseType: !124, size: 64, offset: 2560)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "Cn1", scope: !81, file: !8, line: 105, baseType: !124, size: 64, offset: 2624)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "Cn2", scope: !81, file: !8, line: 105, baseType: !124, size: 64, offset: 2688)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "HB12", scope: !81, file: !8, line: 105, baseType: !124, size: 64, offset: 2752)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "HB10", scope: !81, file: !8, line: 105, baseType: !124, size: 64, offset: 2816)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "Rborn", scope: !81, file: !8, line: 105, baseType: !124, size: 64, offset: 2880)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "Fs", scope: !81, file: !8, line: 105, baseType: !124, size: 64, offset: 2944)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "Box", scope: !81, file: !8, line: 106, baseType: !141, size: 192, offset: 3008)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !142)
!142 = !{!70}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "Cutcap", scope: !81, file: !8, line: 106, baseType: !10, size: 64, offset: 3200)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "Xcap", scope: !81, file: !8, line: 106, baseType: !10, size: 64, offset: 3264)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "Ycap", scope: !81, file: !8, line: 106, baseType: !10, size: 64, offset: 3328)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "Zcap", scope: !81, file: !8, line: 106, baseType: !10, size: 64, offset: 3392)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "Fsmax", scope: !81, file: !8, line: 106, baseType: !10, size: 64, offset: 3456)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "Iac", scope: !81, file: !8, line: 107, baseType: !149, size: 64, offset: 3520)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "Iblo", scope: !81, file: !8, line: 107, baseType: !149, size: 64, offset: 3584)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "Cno", scope: !81, file: !8, line: 107, baseType: !149, size: 64, offset: 3648)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "Ipres", scope: !81, file: !8, line: 107, baseType: !149, size: 64, offset: 3712)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ExclAt", scope: !81, file: !8, line: 107, baseType: !149, size: 64, offset: 3776)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "TreeJoin", scope: !81, file: !8, line: 107, baseType: !149, size: 64, offset: 3840)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "AtomRes", scope: !81, file: !8, line: 108, baseType: !149, size: 64, offset: 3904)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt1", scope: !81, file: !8, line: 108, baseType: !149, size: 64, offset: 3968)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "BondHAt2", scope: !81, file: !8, line: 108, baseType: !149, size: 64, offset: 4032)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "BondHNum", scope: !81, file: !8, line: 108, baseType: !149, size: 64, offset: 4096)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt1", scope: !81, file: !8, line: 108, baseType: !149, size: 64, offset: 4160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "BondAt2", scope: !81, file: !8, line: 108, baseType: !149, size: 64, offset: 4224)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "BondNum", scope: !81, file: !8, line: 109, baseType: !149, size: 64, offset: 4288)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt1", scope: !81, file: !8, line: 109, baseType: !149, size: 64, offset: 4352)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt2", scope: !81, file: !8, line: 109, baseType: !149, size: 64, offset: 4416)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHAt3", scope: !81, file: !8, line: 109, baseType: !149, size: 64, offset: 4480)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "AngleHNum", scope: !81, file: !8, line: 109, baseType: !149, size: 64, offset: 4544)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt1", scope: !81, file: !8, line: 110, baseType: !149, size: 64, offset: 4608)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt2", scope: !81, file: !8, line: 110, baseType: !149, size: 64, offset: 4672)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "AngleAt3", scope: !81, file: !8, line: 110, baseType: !149, size: 64, offset: 4736)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "AngleNum", scope: !81, file: !8, line: 110, baseType: !149, size: 64, offset: 4800)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt1", scope: !81, file: !8, line: 110, baseType: !149, size: 64, offset: 4864)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt2", scope: !81, file: !8, line: 111, baseType: !149, size: 64, offset: 4928)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt3", scope: !81, file: !8, line: 111, baseType: !149, size: 64, offset: 4992)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "DihHAt4", scope: !81, file: !8, line: 111, baseType: !149, size: 64, offset: 5056)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "DihHNum", scope: !81, file: !8, line: 111, baseType: !149, size: 64, offset: 5120)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt1", scope: !81, file: !8, line: 111, baseType: !149, size: 64, offset: 5184)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt2", scope: !81, file: !8, line: 111, baseType: !149, size: 64, offset: 5248)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt3", scope: !81, file: !8, line: 112, baseType: !149, size: 64, offset: 5312)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "DihAt4", scope: !81, file: !8, line: 112, baseType: !149, size: 64, offset: 5376)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "DihNum", scope: !81, file: !8, line: 112, baseType: !149, size: 64, offset: 5440)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "Boundary", scope: !81, file: !8, line: 112, baseType: !149, size: 64, offset: 5504)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairs", scope: !81, file: !8, line: 113, baseType: !149, size: 64, offset: 5568)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "N14pairlist", scope: !81, file: !8, line: 113, baseType: !149, size: 64, offset: 5632)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "Gvdw", scope: !81, file: !8, line: 114, baseType: !124, size: 64, offset: 5696)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "s_next", scope: !57, file: !8, line: 89, baseType: !56, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "s_nresidues", scope: !57, file: !8, line: 90, baseType: !45, size: 32, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "s_res_size", scope: !57, file: !8, line: 91, baseType: !45, size: 32, offset: 288)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "s_residues", scope: !57, file: !8, line: 92, baseType: !37, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "r_extbonds", scope: !40, file: !8, line: 74, baseType: !189, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTBOND_T", file: !8, line: 52, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extbond_t", file: !8, line: 47, size: 192, elements: !192)
!192 = !{!193, !195, !196, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "eb_next", scope: !191, file: !8, line: 48, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "eb_anum", scope: !191, file: !8, line: 49, baseType: !45, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "eb_rnum", scope: !191, file: !8, line: 50, baseType: !45, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "eb_ranum", scope: !191, file: !8, line: 51, baseType: !45, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "r_nintbonds", scope: !40, file: !8, line: 75, baseType: !45, size: 32, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "r_intbonds", scope: !40, file: !8, line: 76, baseType: !200, size: 64, offset: 640)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "INTBOND_T", file: !8, line: 54, baseType: !202)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 2)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "r_nchiral", scope: !40, file: !8, line: 77, baseType: !45, size: 32, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "r_chiral", scope: !40, file: !8, line: 78, baseType: !207, size: 64, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHIRAL_T", file: !8, line: 61, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chiral_t", file: !8, line: 58, size: 192, elements: !210)
!210 = !{!211, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "c_anum", scope: !209, file: !8, line: 59, baseType: !212, size: 128)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !213)
!213 = !{!12}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "c_dist", scope: !209, file: !8, line: 60, baseType: !10, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "r_natoms", scope: !40, file: !8, line: 79, baseType: !45, size: 32, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "r_aindex", scope: !40, file: !8, line: 80, baseType: !149, size: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "r_atoms", scope: !40, file: !8, line: 81, baseType: !218, size: 64, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ATOM_T", file: !8, line: 45, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atom_t", file: !8, line: 25, size: 1408, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !244}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomname", scope: !220, file: !8, line: 26, baseType: !49, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomtype", scope: !220, file: !8, line: 27, baseType: !49, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "a_attr", scope: !220, file: !8, line: 28, baseType: !45, size: 32, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "a_nconnect", scope: !220, file: !8, line: 29, baseType: !45, size: 32, offset: 160)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "a_connect", scope: !220, file: !8, line: 30, baseType: !227, size: 256, offset: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 8)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "a_residue", scope: !220, file: !8, line: 31, baseType: !43, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "a_charge", scope: !220, file: !8, line: 32, baseType: !10, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "a_radius", scope: !220, file: !8, line: 33, baseType: !10, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "a_bfact", scope: !220, file: !8, line: 34, baseType: !10, size: 64, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "a_occ", scope: !220, file: !8, line: 35, baseType: !10, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "a_element", scope: !220, file: !8, line: 36, baseType: !49, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "a_int1", scope: !220, file: !8, line: 37, baseType: !45, size: 32, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "a_float1", scope: !220, file: !8, line: 38, baseType: !10, size: 64, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "a_float2", scope: !220, file: !8, line: 39, baseType: !10, size: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "a_tatomnum", scope: !220, file: !8, line: 40, baseType: !45, size: 32, offset: 1024)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "a_atomnum", scope: !220, file: !8, line: 41, baseType: !45, size: 32, offset: 1056)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "a_fullname", scope: !220, file: !8, line: 42, baseType: !49, size: 64, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "a_pos", scope: !220, file: !8, line: 43, baseType: !243, size: 192, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT_T", file: !8, line: 12, baseType: !141)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "a_w", scope: !220, file: !8, line: 44, baseType: !10, size: 64, offset: 1344)
!245 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "CID_T", file: !3, line: 62, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cid_t", file: !3, line: 58, size: 128, elements: !249)
!249 = !{!250, !251, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !248, file: !3, line: 59, baseType: !36, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "c_last", scope: !248, file: !3, line: 60, baseType: !36, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "c_cids", scope: !248, file: !3, line: 61, baseType: !13, size: 64, offset: 64)
!253 = !{!0, !254, !260, !262, !264}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "init", scope: !256, file: !3, line: 774, type: !36, isLocal: true, isDefinition: true)
!256 = distinct !DISubprogram(name: "init_atab", scope: !3, file: !3, line: 772, type: !257, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{null}
!259 = !{}
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "n_atab", scope: !15, file: !3, line: 70, type: !36, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "res", scope: !15, file: !3, line: 75, type: !39, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "atab", scope: !15, file: !3, line: 69, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1408000, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 1000)
!269 = !{i32 7, !"Dwarf Version", i32 4}
!270 = !{i32 2, !"Debug Info Version", i32 3}
!271 = !{i32 1, !"wchar_size", i32 4}
!272 = !{!"clang version 10.0.0-4ubuntu1 "}
!273 = distinct !DISubprogram(name: "getpdb", scope: !3, file: !3, line: 121, type: !274, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !259)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !13, !13}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !8, line: 126, baseType: !64)
!278 = !DILocalVariable(name: "fname", arg: 1, scope: !273, file: !3, line: 121, type: !13)
!279 = !DILocation(line: 121, column: 26, scope: !273)
!280 = !DILocalVariable(name: "options", arg: 2, scope: !273, file: !3, line: 121, type: !13)
!281 = !DILocation(line: 121, column: 39, scope: !273)
!282 = !DILocalVariable(name: "fp", scope: !273, file: !3, line: 123, type: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !285, line: 7, baseType: !286)
!285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !287, line: 49, size: 1728, elements: !288)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !304, !306, !307, !308, !312, !313, !315, !319, !322, !324, !327, !330, !331, !332, !336, !337}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !286, file: !287, line: 51, baseType: !36, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !286, file: !287, line: 54, baseType: !13, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !286, file: !287, line: 55, baseType: !13, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !286, file: !287, line: 56, baseType: !13, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !286, file: !287, line: 57, baseType: !13, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !286, file: !287, line: 58, baseType: !13, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !286, file: !287, line: 59, baseType: !13, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !286, file: !287, line: 60, baseType: !13, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !286, file: !287, line: 61, baseType: !13, size: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !286, file: !287, line: 64, baseType: !13, size: 64, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !286, file: !287, line: 65, baseType: !13, size: 64, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !286, file: !287, line: 66, baseType: !13, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !286, file: !287, line: 68, baseType: !302, size: 64, offset: 768)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !287, line: 36, flags: DIFlagFwdDecl)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !286, file: !287, line: 70, baseType: !305, size: 64, offset: 832)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !286, file: !287, line: 72, baseType: !36, size: 32, offset: 896)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !286, file: !287, line: 73, baseType: !36, size: 32, offset: 928)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !286, file: !287, line: 74, baseType: !309, size: 64, offset: 960)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !310, line: 152, baseType: !311)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!311 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !286, file: !287, line: 77, baseType: !245, size: 16, offset: 1024)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !286, file: !287, line: 78, baseType: !314, size: 8, offset: 1040)
!314 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !286, file: !287, line: 79, baseType: !316, size: 8, offset: 1048)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 1)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !286, file: !287, line: 81, baseType: !320, size: 64, offset: 1088)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !287, line: 43, baseType: null)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !286, file: !287, line: 89, baseType: !323, size: 64, offset: 1152)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !310, line: 153, baseType: !311)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !286, file: !287, line: 91, baseType: !325, size: 64, offset: 1216)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !287, line: 37, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !286, file: !287, line: 92, baseType: !328, size: 64, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !287, line: 38, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !286, file: !287, line: 93, baseType: !305, size: 64, offset: 1344)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !286, file: !287, line: 94, baseType: !34, size: 64, offset: 1408)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !286, file: !287, line: 95, baseType: !333, size: 64, offset: 1472)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !334, line: 46, baseType: !335)
!334 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/stddef.h", directory: "")
!335 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !286, file: !287, line: 96, baseType: !36, size: 32, offset: 1536)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !286, file: !287, line: 98, baseType: !338, size: 160, offset: 1568)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 20)
!341 = !DILocation(line: 123, column: 11, scope: !273)
!342 = !DILocalVariable(name: "mol", scope: !273, file: !3, line: 124, type: !276)
!343 = !DILocation(line: 124, column: 17, scope: !273)
!344 = !DILocalVariable(name: "ier", scope: !273, file: !3, line: 125, type: !36)
!345 = !DILocation(line: 125, column: 9, scope: !273)
!346 = !DILocation(line: 127, column: 10, scope: !347)
!347 = distinct !DILexicalBlock(scope: !273, file: !3, line: 127, column: 9)
!348 = !DILocation(line: 127, column: 16, scope: !347)
!349 = !DILocation(line: 127, column: 21, scope: !347)
!350 = !DILocation(line: 127, column: 20, scope: !347)
!351 = !DILocation(line: 127, column: 9, scope: !273)
!352 = !DILocation(line: 128, column: 14, scope: !353)
!353 = distinct !DILexicalBlock(scope: !347, file: !3, line: 127, column: 28)
!354 = !DILocation(line: 128, column: 12, scope: !353)
!355 = !DILocation(line: 129, column: 5, scope: !353)
!356 = !DILocation(line: 129, column: 24, scope: !357)
!357 = distinct !DILexicalBlock(scope: !347, file: !3, line: 129, column: 16)
!358 = !DILocation(line: 129, column: 17, scope: !357)
!359 = !DILocation(line: 129, column: 16, scope: !347)
!360 = !DILocation(line: 130, column: 14, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !3, line: 129, column: 37)
!362 = !DILocation(line: 130, column: 12, scope: !361)
!363 = !DILocation(line: 131, column: 5, scope: !361)
!364 = !DILocation(line: 132, column: 13, scope: !365)
!365 = distinct !DILexicalBlock(scope: !357, file: !3, line: 131, column: 12)
!366 = !DILocation(line: 133, column: 13, scope: !367)
!367 = distinct !DILexicalBlock(scope: !365, file: !3, line: 133, column: 13)
!368 = !DILocation(line: 133, column: 28, scope: !367)
!369 = !DILocation(line: 133, column: 13, scope: !365)
!370 = !DILocation(line: 134, column: 29, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 134, column: 17)
!372 = distinct !DILexicalBlock(scope: !367, file: !3, line: 133, column: 34)
!373 = !DILocation(line: 134, column: 23, scope: !371)
!374 = !DILocation(line: 134, column: 21, scope: !371)
!375 = !DILocation(line: 134, column: 42, scope: !371)
!376 = !DILocation(line: 134, column: 17, scope: !372)
!377 = !DILocation(line: 135, column: 25, scope: !378)
!378 = distinct !DILexicalBlock(scope: !371, file: !3, line: 134, column: 51)
!379 = !DILocation(line: 135, column: 65, scope: !378)
!380 = !DILocation(line: 135, column: 17, scope: !378)
!381 = !DILocation(line: 136, column: 21, scope: !378)
!382 = !DILocation(line: 137, column: 13, scope: !378)
!383 = !DILocation(line: 138, column: 9, scope: !372)
!384 = !DILocation(line: 139, column: 20, scope: !365)
!385 = !DILocation(line: 139, column: 9, scope: !365)
!386 = !DILocation(line: 143, column: 13, scope: !387)
!387 = distinct !DILexicalBlock(scope: !365, file: !3, line: 143, column: 13)
!388 = !DILocation(line: 143, column: 28, scope: !387)
!389 = !DILocation(line: 143, column: 13, scope: !365)
!390 = !DILocation(line: 144, column: 16, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 143, column: 34)
!392 = !DILocation(line: 145, column: 9, scope: !391)
!393 = !DILocation(line: 148, column: 19, scope: !273)
!394 = !DILocation(line: 148, column: 23, scope: !273)
!395 = !DILocation(line: 148, column: 11, scope: !273)
!396 = !DILocation(line: 148, column: 9, scope: !273)
!397 = !DILocation(line: 150, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !273, file: !3, line: 150, column: 9)
!399 = !DILocation(line: 150, column: 15, scope: !398)
!400 = !DILocation(line: 150, column: 12, scope: !398)
!401 = !DILocation(line: 150, column: 9, scope: !273)
!402 = !DILocation(line: 151, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !3, line: 151, column: 13)
!404 = distinct !DILexicalBlock(scope: !398, file: !3, line: 150, column: 22)
!405 = !DILocation(line: 151, column: 28, scope: !403)
!406 = !DILocation(line: 151, column: 13, scope: !404)
!407 = !DILocation(line: 152, column: 20, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !3, line: 151, column: 34)
!409 = !DILocation(line: 152, column: 13, scope: !408)
!410 = !DILocation(line: 153, column: 9, scope: !408)
!411 = !DILocation(line: 154, column: 5, scope: !404)
!412 = !DILocation(line: 156, column: 13, scope: !273)
!413 = !DILocation(line: 156, column: 5, scope: !273)
!414 = distinct !DISubprogram(name: "fgetpdb", scope: !3, file: !3, line: 464, type: !415, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!415 = !DISubroutineType(types: !416)
!416 = !{!276, !283, !13}
!417 = !DILocalVariable(name: "fp", arg: 1, scope: !414, file: !3, line: 464, type: !283)
!418 = !DILocation(line: 464, column: 35, scope: !414)
!419 = !DILocalVariable(name: "options", arg: 2, scope: !414, file: !3, line: 464, type: !13)
!420 = !DILocation(line: 464, column: 45, scope: !414)
!421 = !DILocalVariable(name: "mol", scope: !414, file: !3, line: 466, type: !276)
!422 = !DILocation(line: 466, column: 17, scope: !414)
!423 = !DILocalVariable(name: "ap", scope: !414, file: !3, line: 467, type: !218)
!424 = !DILocation(line: 467, column: 13, scope: !414)
!425 = !DILocalVariable(name: "l_cid", scope: !414, file: !3, line: 468, type: !36)
!426 = !DILocation(line: 468, column: 9, scope: !414)
!427 = !DILocalVariable(name: "cid", scope: !414, file: !3, line: 468, type: !36)
!428 = !DILocation(line: 468, column: 16, scope: !414)
!429 = !DILocalVariable(name: "nchains", scope: !414, file: !3, line: 469, type: !36)
!430 = !DILocation(line: 469, column: 9, scope: !414)
!431 = !DILocalVariable(name: "line", scope: !414, file: !3, line: 470, type: !432)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 656, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 82)
!435 = !DILocation(line: 470, column: 10, scope: !414)
!436 = !DILocalVariable(name: "sname", scope: !414, file: !3, line: 471, type: !437)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 10)
!440 = !DILocation(line: 471, column: 10, scope: !414)
!441 = !DILocalVariable(name: "aname", scope: !414, file: !3, line: 472, type: !437)
!442 = !DILocation(line: 472, column: 10, scope: !414)
!443 = !DILocalVariable(name: "rname", scope: !414, file: !3, line: 473, type: !437)
!444 = !DILocation(line: 473, column: 10, scope: !414)
!445 = !DILocalVariable(name: "l_rname", scope: !414, file: !3, line: 473, type: !437)
!446 = !DILocation(line: 473, column: 21, scope: !414)
!447 = !DILocalVariable(name: "rid", scope: !414, file: !3, line: 474, type: !437)
!448 = !DILocation(line: 474, column: 10, scope: !414)
!449 = !DILocalVariable(name: "l_rid", scope: !414, file: !3, line: 474, type: !437)
!450 = !DILocation(line: 474, column: 19, scope: !414)
!451 = !DILocalVariable(name: "field", scope: !414, file: !3, line: 475, type: !437)
!452 = !DILocation(line: 475, column: 10, scope: !414)
!453 = !DILocalVariable(name: "np", scope: !414, file: !3, line: 476, type: !13)
!454 = !DILocation(line: 476, column: 11, scope: !414)
!455 = !DILocalVariable(name: "np1", scope: !414, file: !3, line: 476, type: !13)
!456 = !DILocation(line: 476, column: 16, scope: !414)
!457 = !DILocalVariable(name: "rnum", scope: !414, file: !3, line: 477, type: !36)
!458 = !DILocation(line: 477, column: 9, scope: !414)
!459 = !DILocalVariable(name: "l_rnum", scope: !414, file: !3, line: 477, type: !36)
!460 = !DILocation(line: 477, column: 15, scope: !414)
!461 = !DILocalVariable(name: "x", scope: !414, file: !3, line: 478, type: !10)
!462 = !DILocation(line: 478, column: 12, scope: !414)
!463 = !DILocalVariable(name: "y", scope: !414, file: !3, line: 478, type: !10)
!464 = !DILocation(line: 478, column: 15, scope: !414)
!465 = !DILocalVariable(name: "z", scope: !414, file: !3, line: 478, type: !10)
!466 = !DILocation(line: 478, column: 18, scope: !414)
!467 = !DILocalVariable(name: "q", scope: !414, file: !3, line: 478, type: !10)
!468 = !DILocation(line: 478, column: 21, scope: !414)
!469 = !DILocalVariable(name: "r", scope: !414, file: !3, line: 478, type: !10)
!470 = !DILocation(line: 478, column: 24, scope: !414)
!471 = !DILocalVariable(name: "occ", scope: !414, file: !3, line: 478, type: !10)
!472 = !DILocation(line: 478, column: 27, scope: !414)
!473 = !DILocalVariable(name: "bfact", scope: !414, file: !3, line: 478, type: !10)
!474 = !DILocation(line: 478, column: 32, scope: !414)
!475 = !DILocalVariable(name: "i", scope: !414, file: !3, line: 479, type: !36)
!476 = !DILocation(line: 479, column: 9, scope: !414)
!477 = !DILocalVariable(name: "temp", scope: !414, file: !3, line: 480, type: !14)
!478 = !DILocation(line: 480, column: 10, scope: !414)
!479 = !DILocalVariable(name: "loptions", scope: !414, file: !3, line: 481, type: !480)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 256)
!483 = !DILocation(line: 481, column: 10, scope: !414)
!484 = !DILocation(line: 483, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !414, file: !3, line: 483, column: 9)
!486 = !DILocation(line: 483, column: 17, scope: !485)
!487 = !DILocation(line: 483, column: 9, scope: !414)
!488 = !DILocation(line: 484, column: 9, scope: !485)
!489 = !DILocation(line: 484, column: 19, scope: !485)
!490 = !DILocation(line: 486, column: 16, scope: !485)
!491 = !DILocation(line: 486, column: 26, scope: !485)
!492 = !DILocation(line: 486, column: 9, scope: !485)
!493 = !DILocation(line: 488, column: 5, scope: !414)
!494 = !DILocation(line: 489, column: 5, scope: !414)
!495 = !DILocation(line: 491, column: 11, scope: !414)
!496 = !DILocation(line: 491, column: 9, scope: !414)
!497 = !DILocation(line: 493, column: 11, scope: !414)
!498 = !DILocation(line: 494, column: 5, scope: !414)
!499 = !DILocation(line: 494, column: 14, scope: !414)
!500 = !DILocation(line: 495, column: 12, scope: !414)
!501 = !DILocation(line: 496, column: 18, scope: !502)
!502 = distinct !DILexicalBlock(scope: !414, file: !3, line: 496, column: 5)
!503 = !DILocation(line: 496, column: 30, scope: !502)
!504 = !DILocation(line: 496, column: 10, scope: !502)
!505 = !DILocation(line: 503, column: 19, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 503, column: 13)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 496, column: 37)
!508 = distinct !DILexicalBlock(scope: !502, file: !3, line: 496, column: 5)
!509 = !DILocation(line: 503, column: 39, scope: !506)
!510 = !DILocation(line: 503, column: 13, scope: !506)
!511 = !DILocation(line: 503, column: 43, scope: !506)
!512 = !DILocation(line: 503, column: 13, scope: !507)
!513 = !DILocation(line: 504, column: 13, scope: !506)
!514 = !DILocation(line: 507, column: 25, scope: !515)
!515 = distinct !DILexicalBlock(scope: !507, file: !3, line: 507, column: 9)
!516 = !DILocation(line: 507, column: 18, scope: !515)
!517 = !DILocation(line: 507, column: 16, scope: !515)
!518 = !DILocation(line: 507, column: 14, scope: !515)
!519 = !DILocation(line: 507, column: 32, scope: !520)
!520 = distinct !DILexicalBlock(scope: !515, file: !3, line: 507, column: 9)
!521 = !DILocation(line: 507, column: 34, scope: !520)
!522 = !DILocation(line: 507, column: 9, scope: !515)
!523 = !DILocation(line: 508, column: 18, scope: !520)
!524 = !DILocation(line: 508, column: 13, scope: !520)
!525 = !DILocation(line: 508, column: 21, scope: !520)
!526 = !DILocation(line: 507, column: 41, scope: !520)
!527 = !DILocation(line: 507, column: 9, scope: !520)
!528 = distinct !{!528, !522, !529}
!529 = !DILocation(line: 508, column: 23, scope: !515)
!530 = !DILocation(line: 509, column: 9, scope: !507)
!531 = !DILocation(line: 509, column: 18, scope: !507)
!532 = !DILocation(line: 511, column: 29, scope: !533)
!533 = distinct !DILexicalBlock(scope: !507, file: !3, line: 511, column: 13)
!534 = !DILocation(line: 511, column: 13, scope: !533)
!535 = !DILocation(line: 511, column: 38, scope: !533)
!536 = !DILocation(line: 511, column: 43, scope: !533)
!537 = !DILocation(line: 512, column: 31, scope: !533)
!538 = !DILocation(line: 512, column: 13, scope: !533)
!539 = !DILocation(line: 512, column: 40, scope: !533)
!540 = !DILocation(line: 511, column: 13, scope: !507)
!541 = !DILocation(line: 513, column: 21, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !3, line: 512, column: 46)
!543 = !DILocation(line: 513, column: 29, scope: !542)
!544 = !DILocation(line: 513, column: 13, scope: !542)
!545 = !DILocation(line: 514, column: 13, scope: !542)
!546 = !DILocation(line: 514, column: 33, scope: !542)
!547 = !DILocation(line: 516, column: 29, scope: !548)
!548 = distinct !DILexicalBlock(scope: !542, file: !3, line: 516, column: 13)
!549 = !DILocation(line: 516, column: 27, scope: !548)
!550 = !DILocation(line: 516, column: 21, scope: !548)
!551 = !DILocation(line: 516, column: 18, scope: !548)
!552 = !DILocation(line: 516, column: 37, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !3, line: 516, column: 13)
!554 = !DILocation(line: 516, column: 36, scope: !553)
!555 = !DILocation(line: 516, column: 13, scope: !548)
!556 = !DILocation(line: 517, column: 22, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !3, line: 517, column: 21)
!558 = distinct !DILexicalBlock(scope: !553, file: !3, line: 516, column: 47)
!559 = !DILocation(line: 517, column: 21, scope: !557)
!560 = !DILocation(line: 517, column: 25, scope: !557)
!561 = !DILocation(line: 517, column: 21, scope: !558)
!562 = !DILocation(line: 518, column: 31, scope: !557)
!563 = !DILocation(line: 518, column: 30, scope: !557)
!564 = !DILocation(line: 518, column: 25, scope: !557)
!565 = !DILocation(line: 518, column: 28, scope: !557)
!566 = !DILocation(line: 518, column: 21, scope: !557)
!567 = !DILocation(line: 519, column: 13, scope: !558)
!568 = !DILocation(line: 516, column: 43, scope: !553)
!569 = !DILocation(line: 516, column: 13, scope: !553)
!570 = distinct !{!570, !555, !571}
!571 = !DILocation(line: 519, column: 13, scope: !548)
!572 = !DILocation(line: 520, column: 14, scope: !542)
!573 = !DILocation(line: 520, column: 18, scope: !542)
!574 = !DILocation(line: 523, column: 17, scope: !575)
!575 = distinct !DILexicalBlock(scope: !542, file: !3, line: 523, column: 17)
!576 = !DILocation(line: 523, column: 26, scope: !575)
!577 = !DILocation(line: 523, column: 33, scope: !575)
!578 = !DILocation(line: 523, column: 36, scope: !575)
!579 = !DILocation(line: 523, column: 45, scope: !575)
!580 = !DILocation(line: 523, column: 52, scope: !575)
!581 = !DILocation(line: 523, column: 55, scope: !575)
!582 = !DILocation(line: 523, column: 64, scope: !575)
!583 = !DILocation(line: 523, column: 17, scope: !542)
!584 = !DILocation(line: 524, column: 24, scope: !585)
!585 = distinct !DILexicalBlock(scope: !575, file: !3, line: 523, column: 72)
!586 = !DILocation(line: 524, column: 22, scope: !585)
!587 = !DILocation(line: 525, column: 24, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !3, line: 525, column: 17)
!589 = !DILocation(line: 525, column: 22, scope: !588)
!590 = !DILocation(line: 525, column: 29, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !3, line: 525, column: 17)
!592 = !DILocation(line: 525, column: 45, scope: !591)
!593 = !DILocation(line: 525, column: 38, scope: !591)
!594 = !DILocation(line: 525, column: 33, scope: !591)
!595 = !DILocation(line: 525, column: 52, scope: !591)
!596 = !DILocation(line: 525, column: 31, scope: !591)
!597 = !DILocation(line: 525, column: 17, scope: !588)
!598 = !DILocation(line: 526, column: 38, scope: !591)
!599 = !DILocation(line: 526, column: 40, scope: !591)
!600 = !DILocation(line: 526, column: 32, scope: !591)
!601 = !DILocation(line: 526, column: 27, scope: !591)
!602 = !DILocation(line: 526, column: 21, scope: !591)
!603 = !DILocation(line: 526, column: 30, scope: !591)
!604 = !DILocation(line: 525, column: 58, scope: !591)
!605 = !DILocation(line: 525, column: 17, scope: !591)
!606 = distinct !{!606, !597, !607}
!607 = !DILocation(line: 526, column: 43, scope: !588)
!608 = !DILocation(line: 527, column: 28, scope: !585)
!609 = !DILocation(line: 527, column: 23, scope: !585)
!610 = !DILocation(line: 527, column: 17, scope: !585)
!611 = !DILocation(line: 527, column: 26, scope: !585)
!612 = !DILocation(line: 528, column: 13, scope: !585)
!613 = !DILocation(line: 531, column: 17, scope: !614)
!614 = distinct !DILexicalBlock(scope: !542, file: !3, line: 531, column: 17)
!615 = !DILocation(line: 531, column: 26, scope: !614)
!616 = !DILocation(line: 531, column: 17, scope: !542)
!617 = !DILocation(line: 532, column: 17, scope: !614)
!618 = !DILocation(line: 532, column: 26, scope: !614)
!619 = !DILocation(line: 533, column: 25, scope: !620)
!620 = distinct !DILexicalBlock(scope: !542, file: !3, line: 533, column: 17)
!621 = !DILocation(line: 533, column: 18, scope: !620)
!622 = !DILocation(line: 533, column: 17, scope: !542)
!623 = !DILocation(line: 534, column: 24, scope: !620)
!624 = !DILocation(line: 534, column: 17, scope: !620)
!625 = !DILocation(line: 536, column: 21, scope: !542)
!626 = !DILocation(line: 536, column: 29, scope: !542)
!627 = !DILocation(line: 536, column: 13, scope: !542)
!628 = !DILocation(line: 537, column: 13, scope: !542)
!629 = !DILocation(line: 537, column: 33, scope: !542)
!630 = !DILocation(line: 538, column: 29, scope: !631)
!631 = distinct !DILexicalBlock(scope: !542, file: !3, line: 538, column: 13)
!632 = !DILocation(line: 538, column: 27, scope: !631)
!633 = !DILocation(line: 538, column: 21, scope: !631)
!634 = !DILocation(line: 538, column: 18, scope: !631)
!635 = !DILocation(line: 538, column: 37, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !3, line: 538, column: 13)
!637 = !DILocation(line: 538, column: 36, scope: !636)
!638 = !DILocation(line: 538, column: 13, scope: !631)
!639 = !DILocation(line: 539, column: 22, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 539, column: 21)
!641 = distinct !DILexicalBlock(scope: !636, file: !3, line: 538, column: 47)
!642 = !DILocation(line: 539, column: 21, scope: !640)
!643 = !DILocation(line: 539, column: 25, scope: !640)
!644 = !DILocation(line: 539, column: 21, scope: !641)
!645 = !DILocation(line: 540, column: 31, scope: !640)
!646 = !DILocation(line: 540, column: 30, scope: !640)
!647 = !DILocation(line: 540, column: 25, scope: !640)
!648 = !DILocation(line: 540, column: 28, scope: !640)
!649 = !DILocation(line: 540, column: 21, scope: !640)
!650 = !DILocation(line: 541, column: 13, scope: !641)
!651 = !DILocation(line: 538, column: 43, scope: !636)
!652 = !DILocation(line: 538, column: 13, scope: !636)
!653 = distinct !{!653, !638, !654}
!654 = !DILocation(line: 541, column: 13, scope: !631)
!655 = !DILocation(line: 542, column: 14, scope: !542)
!656 = !DILocation(line: 542, column: 18, scope: !542)
!657 = !DILocation(line: 551, column: 25, scope: !658)
!658 = distinct !DILexicalBlock(scope: !542, file: !3, line: 551, column: 17)
!659 = !DILocation(line: 551, column: 18, scope: !658)
!660 = !DILocation(line: 551, column: 17, scope: !542)
!661 = !DILocation(line: 552, column: 28, scope: !658)
!662 = !DILocation(line: 552, column: 17, scope: !658)
!663 = !DILocation(line: 553, column: 25, scope: !664)
!664 = distinct !DILexicalBlock(scope: !542, file: !3, line: 553, column: 17)
!665 = !DILocation(line: 553, column: 18, scope: !664)
!666 = !DILocation(line: 553, column: 41, scope: !664)
!667 = !DILocation(line: 553, column: 48, scope: !664)
!668 = !DILocation(line: 553, column: 55, scope: !664)
!669 = !DILocation(line: 553, column: 17, scope: !542)
!670 = !DILocation(line: 554, column: 24, scope: !664)
!671 = !DILocation(line: 554, column: 17, scope: !664)
!672 = !DILocation(line: 557, column: 25, scope: !673)
!673 = distinct !DILexicalBlock(scope: !542, file: !3, line: 557, column: 17)
!674 = !DILocation(line: 557, column: 18, scope: !673)
!675 = !DILocation(line: 557, column: 17, scope: !542)
!676 = !DILocation(line: 558, column: 24, scope: !673)
!677 = !DILocation(line: 558, column: 17, scope: !673)
!678 = !DILocation(line: 559, column: 25, scope: !679)
!679 = distinct !DILexicalBlock(scope: !542, file: !3, line: 559, column: 17)
!680 = !DILocation(line: 559, column: 18, scope: !679)
!681 = !DILocation(line: 559, column: 17, scope: !542)
!682 = !DILocation(line: 560, column: 24, scope: !679)
!683 = !DILocation(line: 560, column: 17, scope: !679)
!684 = !DILocation(line: 561, column: 25, scope: !685)
!685 = distinct !DILexicalBlock(scope: !542, file: !3, line: 561, column: 17)
!686 = !DILocation(line: 561, column: 18, scope: !685)
!687 = !DILocation(line: 561, column: 17, scope: !542)
!688 = !DILocation(line: 562, column: 24, scope: !685)
!689 = !DILocation(line: 562, column: 17, scope: !685)
!690 = !DILocation(line: 563, column: 25, scope: !691)
!691 = distinct !DILexicalBlock(scope: !542, file: !3, line: 563, column: 17)
!692 = !DILocation(line: 563, column: 18, scope: !691)
!693 = !DILocation(line: 563, column: 17, scope: !542)
!694 = !DILocation(line: 564, column: 24, scope: !691)
!695 = !DILocation(line: 564, column: 17, scope: !691)
!696 = !DILocation(line: 565, column: 25, scope: !697)
!697 = distinct !DILexicalBlock(scope: !542, file: !3, line: 565, column: 17)
!698 = !DILocation(line: 565, column: 18, scope: !697)
!699 = !DILocation(line: 565, column: 17, scope: !542)
!700 = !DILocation(line: 566, column: 24, scope: !697)
!701 = !DILocation(line: 566, column: 17, scope: !697)
!702 = !DILocation(line: 569, column: 21, scope: !542)
!703 = !DILocation(line: 569, column: 27, scope: !542)
!704 = !DILocation(line: 569, column: 13, scope: !542)
!705 = !DILocation(line: 570, column: 13, scope: !542)
!706 = !DILocation(line: 570, column: 30, scope: !542)
!707 = !DILocation(line: 572, column: 19, scope: !542)
!708 = !DILocation(line: 572, column: 17, scope: !542)
!709 = !DILocation(line: 573, column: 21, scope: !542)
!710 = !DILocation(line: 573, column: 13, scope: !542)
!711 = !DILocation(line: 575, column: 21, scope: !542)
!712 = !DILocation(line: 575, column: 29, scope: !542)
!713 = !DILocation(line: 575, column: 13, scope: !542)
!714 = !DILocation(line: 576, column: 13, scope: !542)
!715 = !DILocation(line: 576, column: 33, scope: !542)
!716 = !DILocation(line: 577, column: 22, scope: !542)
!717 = !DILocation(line: 577, column: 17, scope: !542)
!718 = !DILocation(line: 577, column: 15, scope: !542)
!719 = !DILocation(line: 579, column: 21, scope: !542)
!720 = !DILocation(line: 579, column: 29, scope: !542)
!721 = !DILocation(line: 579, column: 13, scope: !542)
!722 = !DILocation(line: 580, column: 13, scope: !542)
!723 = !DILocation(line: 580, column: 33, scope: !542)
!724 = !DILocation(line: 581, column: 22, scope: !542)
!725 = !DILocation(line: 581, column: 17, scope: !542)
!726 = !DILocation(line: 581, column: 15, scope: !542)
!727 = !DILocation(line: 583, column: 21, scope: !542)
!728 = !DILocation(line: 583, column: 29, scope: !542)
!729 = !DILocation(line: 583, column: 13, scope: !542)
!730 = !DILocation(line: 584, column: 13, scope: !542)
!731 = !DILocation(line: 584, column: 33, scope: !542)
!732 = !DILocation(line: 585, column: 22, scope: !542)
!733 = !DILocation(line: 585, column: 17, scope: !542)
!734 = !DILocation(line: 585, column: 15, scope: !542)
!735 = !DILocation(line: 587, column: 24, scope: !736)
!736 = distinct !DILexicalBlock(scope: !542, file: !3, line: 587, column: 17)
!737 = !DILocation(line: 587, column: 17, scope: !736)
!738 = !DILocation(line: 587, column: 17, scope: !542)
!739 = !DILocation(line: 603, column: 25, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !3, line: 587, column: 43)
!741 = !DILocation(line: 603, column: 17, scope: !740)
!742 = !DILocation(line: 608, column: 21, scope: !740)
!743 = !DILocation(line: 609, column: 23, scope: !740)
!744 = !DILocation(line: 611, column: 13, scope: !740)
!745 = !DILocation(line: 613, column: 30, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 613, column: 21)
!747 = distinct !DILexicalBlock(scope: !736, file: !3, line: 611, column: 20)
!748 = !DILocation(line: 613, column: 22, scope: !746)
!749 = !DILocation(line: 613, column: 21, scope: !747)
!750 = !DILocation(line: 614, column: 23, scope: !746)
!751 = !DILocation(line: 614, column: 21, scope: !746)
!752 = !DILocation(line: 615, column: 35, scope: !753)
!753 = distinct !DILexicalBlock(scope: !746, file: !3, line: 615, column: 26)
!754 = !DILocation(line: 615, column: 27, scope: !753)
!755 = !DILocation(line: 615, column: 26, scope: !746)
!756 = !DILocation(line: 616, column: 23, scope: !753)
!757 = !DILocation(line: 616, column: 21, scope: !753)
!758 = !DILocation(line: 617, column: 35, scope: !759)
!759 = distinct !DILexicalBlock(scope: !753, file: !3, line: 617, column: 26)
!760 = !DILocation(line: 617, column: 27, scope: !759)
!761 = !DILocation(line: 617, column: 26, scope: !753)
!762 = !DILocation(line: 618, column: 23, scope: !759)
!763 = !DILocation(line: 618, column: 21, scope: !759)
!764 = !DILocation(line: 619, column: 35, scope: !765)
!765 = distinct !DILexicalBlock(scope: !759, file: !3, line: 619, column: 26)
!766 = !DILocation(line: 619, column: 27, scope: !765)
!767 = !DILocation(line: 619, column: 26, scope: !759)
!768 = !DILocation(line: 620, column: 23, scope: !765)
!769 = !DILocation(line: 620, column: 21, scope: !765)
!770 = !DILocation(line: 621, column: 35, scope: !771)
!771 = distinct !DILexicalBlock(scope: !765, file: !3, line: 621, column: 26)
!772 = !DILocation(line: 621, column: 27, scope: !771)
!773 = !DILocation(line: 621, column: 26, scope: !765)
!774 = !DILocation(line: 622, column: 23, scope: !771)
!775 = !DILocation(line: 622, column: 21, scope: !771)
!776 = !DILocation(line: 623, column: 35, scope: !777)
!777 = distinct !DILexicalBlock(scope: !771, file: !3, line: 623, column: 26)
!778 = !DILocation(line: 623, column: 27, scope: !777)
!779 = !DILocation(line: 623, column: 26, scope: !771)
!780 = !DILocation(line: 624, column: 23, scope: !777)
!781 = !DILocation(line: 624, column: 21, scope: !777)
!782 = !DILocation(line: 626, column: 23, scope: !777)
!783 = !DILocation(line: 627, column: 19, scope: !747)
!784 = !DILocation(line: 630, column: 25, scope: !747)
!785 = !DILocation(line: 630, column: 33, scope: !747)
!786 = !DILocation(line: 630, column: 17, scope: !747)
!787 = !DILocation(line: 631, column: 17, scope: !747)
!788 = !DILocation(line: 631, column: 37, scope: !747)
!789 = !DILocation(line: 632, column: 28, scope: !747)
!790 = !DILocation(line: 632, column: 23, scope: !747)
!791 = !DILocation(line: 632, column: 21, scope: !747)
!792 = !DILocation(line: 634, column: 25, scope: !747)
!793 = !DILocation(line: 634, column: 33, scope: !747)
!794 = !DILocation(line: 634, column: 17, scope: !747)
!795 = !DILocation(line: 635, column: 17, scope: !747)
!796 = !DILocation(line: 635, column: 37, scope: !747)
!797 = !DILocation(line: 636, column: 30, scope: !747)
!798 = !DILocation(line: 636, column: 25, scope: !747)
!799 = !DILocation(line: 636, column: 23, scope: !747)
!800 = !DILocation(line: 639, column: 17, scope: !801)
!801 = distinct !DILexicalBlock(scope: !542, file: !3, line: 639, column: 17)
!802 = !DILocation(line: 639, column: 24, scope: !801)
!803 = !DILocation(line: 639, column: 21, scope: !801)
!804 = !DILocation(line: 639, column: 17, scope: !542)
!805 = !DILocation(line: 640, column: 21, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 640, column: 21)
!807 = distinct !DILexicalBlock(scope: !801, file: !3, line: 639, column: 31)
!808 = !DILocation(line: 640, column: 28, scope: !806)
!809 = !DILocation(line: 640, column: 21, scope: !807)
!810 = !DILocation(line: 641, column: 32, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !3, line: 640, column: 33)
!812 = !DILocation(line: 641, column: 43, scope: !811)
!813 = !DILocation(line: 641, column: 21, scope: !811)
!814 = !DILocation(line: 642, column: 32, scope: !811)
!815 = !DILocation(line: 642, column: 41, scope: !811)
!816 = !DILocation(line: 642, column: 21, scope: !811)
!817 = !DILocation(line: 643, column: 33, scope: !811)
!818 = !DILocation(line: 643, column: 31, scope: !811)
!819 = !DILocation(line: 644, column: 36, scope: !811)
!820 = !DILocation(line: 644, column: 34, scope: !811)
!821 = !DILocation(line: 645, column: 21, scope: !811)
!822 = !DILocation(line: 646, column: 32, scope: !811)
!823 = !DILocation(line: 646, column: 37, scope: !811)
!824 = !DILocation(line: 646, column: 21, scope: !811)
!825 = !DILocation(line: 647, column: 21, scope: !811)
!826 = !DILocation(line: 648, column: 28, scope: !811)
!827 = !DILocation(line: 649, column: 17, scope: !811)
!828 = !DILocation(line: 651, column: 24, scope: !807)
!829 = !DILocation(line: 652, column: 21, scope: !830)
!830 = distinct !DILexicalBlock(scope: !807, file: !3, line: 652, column: 21)
!831 = !DILocation(line: 652, column: 25, scope: !830)
!832 = !DILocation(line: 652, column: 21, scope: !807)
!833 = !DILocation(line: 653, column: 29, scope: !830)
!834 = !DILocation(line: 653, column: 42, scope: !830)
!835 = !DILocation(line: 653, column: 21, scope: !830)
!836 = !DILocation(line: 655, column: 32, scope: !837)
!837 = distinct !DILexicalBlock(scope: !830, file: !3, line: 654, column: 22)
!838 = !DILocation(line: 655, column: 21, scope: !837)
!839 = !DILocation(line: 655, column: 30, scope: !837)
!840 = !DILocation(line: 656, column: 21, scope: !837)
!841 = !DILocation(line: 656, column: 30, scope: !837)
!842 = !DILocation(line: 658, column: 27, scope: !807)
!843 = !DILocation(line: 658, column: 32, scope: !807)
!844 = !DILocation(line: 658, column: 17, scope: !807)
!845 = !DILocalVariable(name: "sp", scope: !846, file: !3, line: 661, type: !73)
!846 = distinct !DILexicalBlock(scope: !807, file: !3, line: 660, column: 17)
!847 = !DILocation(line: 661, column: 31, scope: !846)
!848 = !DILocalVariable(name: "spl", scope: !846, file: !3, line: 661, type: !73)
!849 = !DILocation(line: 661, column: 36, scope: !846)
!850 = !DILocation(line: 663, column: 29, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !3, line: 663, column: 21)
!852 = !DILocation(line: 663, column: 43, scope: !851)
!853 = !DILocation(line: 663, column: 48, scope: !851)
!854 = !DILocation(line: 663, column: 41, scope: !851)
!855 = !DILocation(line: 663, column: 26, scope: !851)
!856 = !DILocation(line: 663, column: 59, scope: !857)
!857 = distinct !DILexicalBlock(scope: !851, file: !3, line: 663, column: 21)
!858 = !DILocation(line: 663, column: 21, scope: !851)
!859 = !DILocation(line: 665, column: 37, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 665, column: 29)
!861 = distinct !DILexicalBlock(scope: !857, file: !3, line: 664, column: 45)
!862 = !DILocation(line: 665, column: 42, scope: !860)
!863 = !DILocation(line: 665, column: 56, scope: !860)
!864 = !DILocation(line: 665, column: 30, scope: !860)
!865 = !DILocation(line: 665, column: 29, scope: !861)
!866 = !DILocation(line: 666, column: 34, scope: !867)
!867 = distinct !DILexicalBlock(scope: !860, file: !3, line: 665, column: 64)
!868 = !DILocation(line: 666, column: 32, scope: !867)
!869 = !DILocation(line: 667, column: 29, scope: !867)
!870 = !DILocation(line: 669, column: 21, scope: !861)
!871 = !DILocation(line: 664, column: 32, scope: !857)
!872 = !DILocation(line: 664, column: 37, scope: !857)
!873 = !DILocation(line: 664, column: 30, scope: !857)
!874 = !DILocation(line: 663, column: 21, scope: !857)
!875 = distinct !{!875, !858, !876}
!876 = !DILocation(line: 669, column: 21, scope: !851)
!877 = !DILocation(line: 670, column: 21, scope: !846)
!878 = !DILocation(line: 670, column: 25, scope: !846)
!879 = !DILocation(line: 670, column: 36, scope: !846)
!880 = !DILocation(line: 672, column: 47, scope: !846)
!881 = !DILocation(line: 672, column: 51, scope: !846)
!882 = !DILocation(line: 672, column: 62, scope: !846)
!883 = !DILocation(line: 672, column: 40, scope: !846)
!884 = !DILocation(line: 672, column: 25, scope: !846)
!885 = !DILocation(line: 671, column: 21, scope: !846)
!886 = !DILocation(line: 671, column: 25, scope: !846)
!887 = !DILocation(line: 671, column: 36, scope: !846)
!888 = !DILocation(line: 674, column: 25, scope: !889)
!889 = distinct !DILexicalBlock(scope: !846, file: !3, line: 674, column: 25)
!890 = !DILocation(line: 674, column: 29, scope: !889)
!891 = !DILocation(line: 674, column: 40, scope: !889)
!892 = !DILocation(line: 674, column: 25, scope: !846)
!893 = !DILocation(line: 676, column: 21, scope: !894)
!894 = distinct !DILexicalBlock(scope: !889, file: !3, line: 674, column: 49)
!895 = !DILocation(line: 679, column: 25, scope: !807)
!896 = !DILocation(line: 679, column: 23, scope: !807)
!897 = !DILocation(line: 680, column: 24, scope: !807)
!898 = !DILocation(line: 680, column: 33, scope: !807)
!899 = !DILocation(line: 680, column: 17, scope: !807)
!900 = !DILocation(line: 681, column: 24, scope: !807)
!901 = !DILocation(line: 681, column: 31, scope: !807)
!902 = !DILocation(line: 681, column: 17, scope: !807)
!903 = !DILocation(line: 682, column: 26, scope: !807)
!904 = !DILocation(line: 682, column: 24, scope: !807)
!905 = !DILocation(line: 684, column: 13, scope: !807)
!906 = !DILocation(line: 684, column: 33, scope: !907)
!907 = distinct !DILexicalBlock(scope: !801, file: !3, line: 684, column: 24)
!908 = !DILocation(line: 684, column: 42, scope: !907)
!909 = !DILocation(line: 684, column: 49, scope: !907)
!910 = !DILocation(line: 684, column: 57, scope: !907)
!911 = !DILocation(line: 684, column: 24, scope: !907)
!912 = !DILocation(line: 684, column: 24, scope: !801)
!913 = !DILocation(line: 685, column: 28, scope: !914)
!914 = distinct !DILexicalBlock(scope: !907, file: !3, line: 684, column: 64)
!915 = !DILocation(line: 685, column: 39, scope: !914)
!916 = !DILocation(line: 685, column: 17, scope: !914)
!917 = !DILocation(line: 686, column: 28, scope: !914)
!918 = !DILocation(line: 686, column: 37, scope: !914)
!919 = !DILocation(line: 686, column: 17, scope: !914)
!920 = !DILocation(line: 687, column: 29, scope: !914)
!921 = !DILocation(line: 687, column: 27, scope: !914)
!922 = !DILocation(line: 688, column: 32, scope: !914)
!923 = !DILocation(line: 688, column: 30, scope: !914)
!924 = !DILocation(line: 689, column: 17, scope: !914)
!925 = !DILocation(line: 690, column: 28, scope: !914)
!926 = !DILocation(line: 690, column: 33, scope: !914)
!927 = !DILocation(line: 690, column: 17, scope: !914)
!928 = !DILocation(line: 691, column: 17, scope: !914)
!929 = !DILocation(line: 692, column: 24, scope: !914)
!930 = !DILocation(line: 692, column: 33, scope: !914)
!931 = !DILocation(line: 692, column: 17, scope: !914)
!932 = !DILocation(line: 693, column: 24, scope: !914)
!933 = !DILocation(line: 693, column: 31, scope: !914)
!934 = !DILocation(line: 693, column: 17, scope: !914)
!935 = !DILocation(line: 694, column: 26, scope: !914)
!936 = !DILocation(line: 694, column: 24, scope: !914)
!937 = !DILocation(line: 695, column: 24, scope: !914)
!938 = !DILocation(line: 696, column: 13, scope: !914)
!939 = !DILocation(line: 697, column: 24, scope: !542)
!940 = !DILocation(line: 697, column: 19, scope: !542)
!941 = !DILocation(line: 697, column: 16, scope: !542)
!942 = !DILocation(line: 698, column: 26, scope: !542)
!943 = !DILocation(line: 698, column: 13, scope: !542)
!944 = !DILocation(line: 699, column: 20, scope: !542)
!945 = !DILocation(line: 699, column: 24, scope: !542)
!946 = !DILocation(line: 699, column: 36, scope: !542)
!947 = !DILocation(line: 699, column: 13, scope: !542)
!948 = !DILocation(line: 700, column: 13, scope: !542)
!949 = !DILocation(line: 700, column: 17, scope: !542)
!950 = !DILocation(line: 700, column: 24, scope: !542)
!951 = !DILocation(line: 701, column: 13, scope: !542)
!952 = !DILocation(line: 701, column: 17, scope: !542)
!953 = !DILocation(line: 701, column: 27, scope: !542)
!954 = !DILocation(line: 702, column: 28, scope: !542)
!955 = !DILocation(line: 702, column: 13, scope: !542)
!956 = !DILocation(line: 702, column: 17, scope: !542)
!957 = !DILocation(line: 702, column: 26, scope: !542)
!958 = !DILocation(line: 703, column: 28, scope: !542)
!959 = !DILocation(line: 703, column: 13, scope: !542)
!960 = !DILocation(line: 703, column: 17, scope: !542)
!961 = !DILocation(line: 703, column: 26, scope: !542)
!962 = !DILocation(line: 704, column: 28, scope: !542)
!963 = !DILocation(line: 704, column: 13, scope: !542)
!964 = !DILocation(line: 704, column: 17, scope: !542)
!965 = !DILocation(line: 704, column: 26, scope: !542)
!966 = !DILocation(line: 705, column: 28, scope: !542)
!967 = !DILocation(line: 705, column: 13, scope: !542)
!968 = !DILocation(line: 705, column: 17, scope: !542)
!969 = !DILocation(line: 705, column: 26, scope: !542)
!970 = !DILocation(line: 706, column: 28, scope: !542)
!971 = !DILocation(line: 706, column: 13, scope: !542)
!972 = !DILocation(line: 706, column: 17, scope: !542)
!973 = !DILocation(line: 706, column: 26, scope: !542)
!974 = !DILocation(line: 707, column: 25, scope: !542)
!975 = !DILocation(line: 707, column: 13, scope: !542)
!976 = !DILocation(line: 707, column: 17, scope: !542)
!977 = !DILocation(line: 707, column: 23, scope: !542)
!978 = !DILocation(line: 708, column: 27, scope: !542)
!979 = !DILocation(line: 708, column: 13, scope: !542)
!980 = !DILocation(line: 708, column: 17, scope: !542)
!981 = !DILocation(line: 708, column: 25, scope: !542)
!982 = !DILocation(line: 709, column: 19, scope: !542)
!983 = !DILocation(line: 711, column: 9, scope: !542)
!984 = !DILocation(line: 711, column: 35, scope: !985)
!985 = distinct !DILexicalBlock(scope: !533, file: !3, line: 711, column: 20)
!986 = !DILocation(line: 711, column: 20, scope: !985)
!987 = !DILocation(line: 711, column: 44, scope: !985)
!988 = !DILocation(line: 711, column: 20, scope: !533)
!989 = !DILocation(line: 712, column: 17, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 712, column: 17)
!991 = distinct !DILexicalBlock(scope: !985, file: !3, line: 711, column: 50)
!992 = !DILocation(line: 712, column: 24, scope: !990)
!993 = !DILocation(line: 712, column: 17, scope: !991)
!994 = !DILocation(line: 713, column: 28, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !3, line: 712, column: 29)
!996 = !DILocation(line: 713, column: 39, scope: !995)
!997 = !DILocation(line: 713, column: 17, scope: !995)
!998 = !DILocation(line: 714, column: 28, scope: !995)
!999 = !DILocation(line: 714, column: 37, scope: !995)
!1000 = !DILocation(line: 714, column: 17, scope: !995)
!1001 = !DILocation(line: 715, column: 29, scope: !995)
!1002 = !DILocation(line: 715, column: 27, scope: !995)
!1003 = !DILocation(line: 716, column: 32, scope: !995)
!1004 = !DILocation(line: 716, column: 30, scope: !995)
!1005 = !DILocation(line: 717, column: 17, scope: !995)
!1006 = !DILocation(line: 718, column: 28, scope: !995)
!1007 = !DILocation(line: 718, column: 33, scope: !995)
!1008 = !DILocation(line: 718, column: 17, scope: !995)
!1009 = !DILocation(line: 719, column: 17, scope: !995)
!1010 = !DILocation(line: 720, column: 24, scope: !995)
!1011 = !DILocation(line: 721, column: 13, scope: !995)
!1012 = !DILocation(line: 722, column: 19, scope: !991)
!1013 = !DILocation(line: 723, column: 13, scope: !991)
!1014 = !DILocation(line: 723, column: 22, scope: !991)
!1015 = !DILocation(line: 724, column: 13, scope: !991)
!1016 = !DILocation(line: 724, column: 20, scope: !991)
!1017 = !DILocation(line: 725, column: 20, scope: !991)
!1018 = !DILocation(line: 726, column: 9, scope: !991)
!1019 = !DILocation(line: 726, column: 35, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !985, file: !3, line: 726, column: 20)
!1021 = !DILocation(line: 726, column: 20, scope: !1020)
!1022 = !DILocation(line: 726, column: 44, scope: !1020)
!1023 = !DILocation(line: 726, column: 20, scope: !985)
!1024 = !DILocation(line: 727, column: 13, scope: !1020)
!1025 = !DILocation(line: 496, column: 5, scope: !508)
!1026 = distinct !{!1026, !1027, !1028}
!1027 = !DILocation(line: 496, column: 5, scope: !502)
!1028 = !DILocation(line: 728, column: 5, scope: !502)
!1029 = !DILocation(line: 729, column: 9, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !414, file: !3, line: 729, column: 9)
!1031 = !DILocation(line: 729, column: 16, scope: !1030)
!1032 = !DILocation(line: 729, column: 9, scope: !414)
!1033 = !DILocation(line: 730, column: 20, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 729, column: 21)
!1035 = !DILocation(line: 730, column: 31, scope: !1034)
!1036 = !DILocation(line: 730, column: 9, scope: !1034)
!1037 = !DILocation(line: 731, column: 20, scope: !1034)
!1038 = !DILocation(line: 731, column: 29, scope: !1034)
!1039 = !DILocation(line: 731, column: 9, scope: !1034)
!1040 = !DILocation(line: 732, column: 21, scope: !1034)
!1041 = !DILocation(line: 732, column: 19, scope: !1034)
!1042 = !DILocation(line: 733, column: 24, scope: !1034)
!1043 = !DILocation(line: 733, column: 22, scope: !1034)
!1044 = !DILocation(line: 734, column: 9, scope: !1034)
!1045 = !DILocation(line: 735, column: 20, scope: !1034)
!1046 = !DILocation(line: 735, column: 25, scope: !1034)
!1047 = !DILocation(line: 735, column: 9, scope: !1034)
!1048 = !DILocation(line: 736, column: 9, scope: !1034)
!1049 = !DILocation(line: 737, column: 5, scope: !1034)
!1050 = !DILocation(line: 739, column: 5, scope: !414)
!1051 = !DILocation(line: 739, column: 10, scope: !414)
!1052 = !DILocation(line: 739, column: 19, scope: !414)
!1053 = !DILocation(line: 741, column: 13, scope: !414)
!1054 = !DILocation(line: 741, column: 5, scope: !414)
!1055 = !DILocalVariable(name: "fname", arg: 1, scope: !2, file: !3, line: 159, type: !13)
!1056 = !DILocation(line: 159, column: 27, scope: !2)
!1057 = !DILocalVariable(name: "fp", scope: !2, file: !3, line: 161, type: !283)
!1058 = !DILocation(line: 161, column: 11, scope: !2)
!1059 = !DILocalVariable(name: "line", scope: !2, file: !3, line: 162, type: !480)
!1060 = !DILocation(line: 162, column: 10, scope: !2)
!1061 = !DILocalVariable(name: "r", scope: !2, file: !3, line: 163, type: !36)
!1062 = !DILocation(line: 163, column: 9, scope: !2)
!1063 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 163, type: !36)
!1064 = !DILocation(line: 163, column: 12, scope: !2)
!1065 = !DILocalVariable(name: "cnt", scope: !2, file: !3, line: 163, type: !36)
!1066 = !DILocation(line: 163, column: 15, scope: !2)
!1067 = !DILocalVariable(name: "ptr", scope: !2, file: !3, line: 165, type: !34)
!1068 = !DILocation(line: 165, column: 11, scope: !2)
!1069 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 166, type: !36)
!1070 = !DILocation(line: 166, column: 9, scope: !2)
!1071 = !DILocation(line: 168, column: 5, scope: !2)
!1072 = !DILocation(line: 169, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !2, file: !3, line: 169, column: 9)
!1074 = !DILocation(line: 169, column: 15, scope: !1073)
!1075 = !DILocation(line: 169, column: 23, scope: !1073)
!1076 = !DILocation(line: 169, column: 27, scope: !1073)
!1077 = !DILocation(line: 169, column: 26, scope: !1073)
!1078 = !DILocation(line: 169, column: 33, scope: !1073)
!1079 = !DILocation(line: 169, column: 9, scope: !2)
!1080 = !DILocation(line: 170, column: 17, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 169, column: 42)
!1082 = !DILocation(line: 170, column: 9, scope: !1081)
!1083 = !DILocation(line: 171, column: 13, scope: !1081)
!1084 = !DILocation(line: 172, column: 9, scope: !1081)
!1085 = !DILocation(line: 173, column: 24, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 173, column: 16)
!1087 = !DILocation(line: 173, column: 17, scope: !1086)
!1088 = !DILocation(line: 173, column: 16, scope: !1073)
!1089 = !DILocation(line: 174, column: 14, scope: !1086)
!1090 = !DILocation(line: 174, column: 12, scope: !1086)
!1091 = !DILocation(line: 174, column: 9, scope: !1086)
!1092 = !DILocation(line: 175, column: 26, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 175, column: 14)
!1094 = !DILocation(line: 175, column: 20, scope: !1093)
!1095 = !DILocation(line: 175, column: 18, scope: !1093)
!1096 = !DILocation(line: 175, column: 39, scope: !1093)
!1097 = !DILocation(line: 175, column: 14, scope: !1086)
!1098 = !DILocation(line: 176, column: 17, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 175, column: 48)
!1100 = !DILocation(line: 176, column: 67, scope: !1099)
!1101 = !DILocation(line: 176, column: 9, scope: !1099)
!1102 = !DILocation(line: 177, column: 13, scope: !1099)
!1103 = !DILocation(line: 178, column: 9, scope: !1099)
!1104 = !DILocation(line: 180, column: 12, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!1106 = !DILocation(line: 180, column: 10, scope: !1105)
!1107 = !DILocation(line: 180, column: 23, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 180, column: 5)
!1109 = !DILocation(line: 180, column: 43, scope: !1108)
!1110 = !DILocation(line: 180, column: 17, scope: !1108)
!1111 = !DILocation(line: 180, column: 5, scope: !1105)
!1112 = !DILocation(line: 181, column: 13, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 181, column: 13)
!1114 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 180, column: 49)
!1115 = !DILocation(line: 181, column: 19, scope: !1113)
!1116 = !DILocation(line: 181, column: 13, scope: !1114)
!1117 = !DILocation(line: 182, column: 13, scope: !1113)
!1118 = distinct !{!1118, !1111, !1119}
!1119 = !DILocation(line: 201, column: 5, scope: !1105)
!1120 = !DILocation(line: 184, column: 22, scope: !1114)
!1121 = !DILocation(line: 185, column: 27, scope: !1114)
!1122 = !DILocation(line: 185, column: 23, scope: !1114)
!1123 = !DILocation(line: 185, column: 39, scope: !1114)
!1124 = !DILocation(line: 185, column: 35, scope: !1114)
!1125 = !DILocation(line: 185, column: 51, scope: !1114)
!1126 = !DILocation(line: 185, column: 47, scope: !1114)
!1127 = !DILocation(line: 185, column: 63, scope: !1114)
!1128 = !DILocation(line: 185, column: 59, scope: !1114)
!1129 = !DILocation(line: 184, column: 15, scope: !1114)
!1130 = !DILocation(line: 184, column: 13, scope: !1114)
!1131 = !DILocation(line: 190, column: 13, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 190, column: 13)
!1133 = !DILocation(line: 190, column: 17, scope: !1132)
!1134 = !DILocation(line: 190, column: 13, scope: !1114)
!1135 = !DILocation(line: 191, column: 21, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 190, column: 23)
!1137 = !DILocation(line: 193, column: 21, scope: !1136)
!1138 = !DILocation(line: 193, column: 23, scope: !1136)
!1139 = !DILocation(line: 193, column: 28, scope: !1136)
!1140 = !DILocation(line: 191, column: 13, scope: !1136)
!1141 = !DILocation(line: 194, column: 13, scope: !1136)
!1142 = !DILocation(line: 195, column: 17, scope: !1136)
!1143 = !DILocation(line: 196, column: 13, scope: !1136)
!1144 = !DILocation(line: 198, column: 10, scope: !1114)
!1145 = !DILocation(line: 199, column: 13, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 199, column: 13)
!1147 = !DILocation(line: 199, column: 15, scope: !1146)
!1148 = !DILocation(line: 199, column: 13, scope: !1114)
!1149 = !DILocation(line: 200, column: 13, scope: !1146)
!1150 = !DILocation(line: 180, column: 5, scope: !1108)
!1151 = !DILocation(line: 202, column: 9, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!1153 = !DILocation(line: 202, column: 11, scope: !1152)
!1154 = !DILocation(line: 202, column: 9, scope: !2)
!1155 = !DILocation(line: 203, column: 17, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 202, column: 17)
!1157 = !DILocation(line: 204, column: 17, scope: !1156)
!1158 = !DILocation(line: 203, column: 9, scope: !1156)
!1159 = !DILocation(line: 205, column: 9, scope: !1156)
!1160 = !DILocation(line: 206, column: 13, scope: !1156)
!1161 = !DILocation(line: 207, column: 9, scope: !1156)
!1162 = !DILocation(line: 202, column: 14, scope: !1152)
!1163 = !DILabel(scope: !2, name: "CLEAN_UP", file: !3, line: 210)
!1164 = !DILocation(line: 210, column: 3, scope: !2)
!1165 = !DILocation(line: 212, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!1167 = !DILocation(line: 212, column: 12, scope: !1166)
!1168 = !DILocation(line: 212, column: 20, scope: !1166)
!1169 = !DILocation(line: 212, column: 23, scope: !1166)
!1170 = !DILocation(line: 212, column: 29, scope: !1166)
!1171 = !DILocation(line: 212, column: 26, scope: !1166)
!1172 = !DILocation(line: 212, column: 9, scope: !2)
!1173 = !DILocation(line: 213, column: 16, scope: !1166)
!1174 = !DILocation(line: 213, column: 9, scope: !1166)
!1175 = !DILocation(line: 215, column: 9, scope: !2)
!1176 = !DILocation(line: 216, column: 12, scope: !2)
!1177 = !DILocation(line: 216, column: 5, scope: !2)
!1178 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !1179, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !259)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!36, !13, !276, !13}
!1181 = !DILocalVariable(name: "fname", arg: 1, scope: !1178, file: !3, line: 225, type: !13)
!1182 = !DILocation(line: 225, column: 18, scope: !1178)
!1183 = !DILocalVariable(name: "mol", arg: 2, scope: !1178, file: !3, line: 225, type: !276)
!1184 = !DILocation(line: 225, column: 38, scope: !1178)
!1185 = !DILocalVariable(name: "options", arg: 3, scope: !1178, file: !3, line: 225, type: !13)
!1186 = !DILocation(line: 225, column: 49, scope: !1178)
!1187 = !DILocalVariable(name: "fp", scope: !1178, file: !3, line: 227, type: !283)
!1188 = !DILocation(line: 227, column: 11, scope: !1178)
!1189 = !DILocalVariable(name: "ier", scope: !1178, file: !3, line: 228, type: !36)
!1190 = !DILocation(line: 228, column: 9, scope: !1178)
!1191 = !DILocation(line: 230, column: 10, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 230, column: 9)
!1193 = !DILocation(line: 230, column: 9, scope: !1178)
!1194 = !DILocation(line: 231, column: 13, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 231, column: 13)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 230, column: 15)
!1197 = !DILocation(line: 231, column: 28, scope: !1195)
!1198 = !DILocation(line: 231, column: 13, scope: !1196)
!1199 = !DILocation(line: 232, column: 21, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 231, column: 34)
!1201 = !DILocation(line: 232, column: 13, scope: !1200)
!1202 = !DILocation(line: 233, column: 9, scope: !1200)
!1203 = !DILocation(line: 234, column: 9, scope: !1196)
!1204 = !DILocation(line: 237, column: 9, scope: !1178)
!1205 = !DILocation(line: 238, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 238, column: 9)
!1207 = !DILocation(line: 238, column: 24, scope: !1206)
!1208 = !DILocation(line: 238, column: 9, scope: !1178)
!1209 = !DILocation(line: 239, column: 21, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 239, column: 13)
!1211 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 238, column: 30)
!1212 = !DILocation(line: 239, column: 14, scope: !1210)
!1213 = !DILocation(line: 239, column: 13, scope: !1211)
!1214 = !DILocation(line: 240, column: 18, scope: !1210)
!1215 = !DILocation(line: 240, column: 16, scope: !1210)
!1216 = !DILocation(line: 240, column: 13, scope: !1210)
!1217 = !DILocation(line: 241, column: 30, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 241, column: 18)
!1219 = !DILocation(line: 241, column: 24, scope: !1218)
!1220 = !DILocation(line: 241, column: 22, scope: !1218)
!1221 = !DILocation(line: 241, column: 43, scope: !1218)
!1222 = !DILocation(line: 241, column: 18, scope: !1210)
!1223 = !DILocation(line: 242, column: 48, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 241, column: 52)
!1225 = !DILocation(line: 242, column: 13, scope: !1224)
!1226 = !DILocation(line: 243, column: 17, scope: !1224)
!1227 = !DILocation(line: 244, column: 9, scope: !1224)
!1228 = !DILocation(line: 245, column: 13, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 245, column: 13)
!1230 = !DILocation(line: 245, column: 17, scope: !1229)
!1231 = !DILocation(line: 245, column: 13, scope: !1211)
!1232 = !DILocation(line: 246, column: 21, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 245, column: 23)
!1234 = !DILocation(line: 246, column: 25, scope: !1233)
!1235 = !DILocation(line: 246, column: 30, scope: !1233)
!1236 = !DILocation(line: 246, column: 13, scope: !1233)
!1237 = !DILocation(line: 247, column: 17, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 247, column: 17)
!1239 = !DILocation(line: 247, column: 23, scope: !1238)
!1240 = !DILocation(line: 247, column: 20, scope: !1238)
!1241 = !DILocation(line: 247, column: 17, scope: !1233)
!1242 = !DILocation(line: 248, column: 24, scope: !1238)
!1243 = !DILocation(line: 248, column: 17, scope: !1238)
!1244 = !DILocation(line: 249, column: 9, scope: !1233)
!1245 = !DILocation(line: 250, column: 5, scope: !1211)
!1246 = !DILocation(line: 251, column: 16, scope: !1178)
!1247 = !DILocation(line: 251, column: 5, scope: !1178)
!1248 = !DILocation(line: 253, column: 5, scope: !1178)
!1249 = !DILocation(line: 254, column: 1, scope: !1178)
!1250 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1251, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !283, !276, !13}
!1253 = !DILocalVariable(name: "fp", arg: 1, scope: !1250, file: !3, line: 849, type: !283)
!1254 = !DILocation(line: 849, column: 28, scope: !1250)
!1255 = !DILocalVariable(name: "mol", arg: 2, scope: !1250, file: !3, line: 849, type: !276)
!1256 = !DILocation(line: 849, column: 45, scope: !1250)
!1257 = !DILocalVariable(name: "options", arg: 3, scope: !1250, file: !3, line: 849, type: !13)
!1258 = !DILocation(line: 849, column: 56, scope: !1250)
!1259 = !DILocalVariable(name: "r", scope: !1250, file: !3, line: 863, type: !36)
!1260 = !DILocation(line: 863, column: 9, scope: !1250)
!1261 = !DILocalVariable(name: "tr", scope: !1250, file: !3, line: 863, type: !36)
!1262 = !DILocation(line: 863, column: 12, scope: !1250)
!1263 = !DILocalVariable(name: "rn", scope: !1250, file: !3, line: 863, type: !36)
!1264 = !DILocation(line: 863, column: 16, scope: !1250)
!1265 = !DILocalVariable(name: "a", scope: !1250, file: !3, line: 863, type: !36)
!1266 = !DILocation(line: 863, column: 20, scope: !1250)
!1267 = !DILocalVariable(name: "ta", scope: !1250, file: !3, line: 863, type: !36)
!1268 = !DILocation(line: 863, column: 23, scope: !1250)
!1269 = !DILocalVariable(name: "cid", scope: !1250, file: !3, line: 864, type: !14)
!1270 = !DILocation(line: 864, column: 10, scope: !1250)
!1271 = !DILocalVariable(name: "sp", scope: !1250, file: !3, line: 865, type: !73)
!1272 = !DILocation(line: 865, column: 15, scope: !1250)
!1273 = !DILocalVariable(name: "res", scope: !1250, file: !3, line: 866, type: !38)
!1274 = !DILocation(line: 866, column: 16, scope: !1250)
!1275 = !DILocalVariable(name: "ap", scope: !1250, file: !3, line: 867, type: !218)
!1276 = !DILocation(line: 867, column: 13, scope: !1250)
!1277 = !DILocalVariable(name: "rname", scope: !1250, file: !3, line: 868, type: !1278)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !228)
!1279 = !DILocation(line: 868, column: 10, scope: !1250)
!1280 = !DILocalVariable(name: "aname", scope: !1250, file: !3, line: 869, type: !1278)
!1281 = !DILocation(line: 869, column: 10, scope: !1250)
!1282 = !DILocalVariable(name: "rid", scope: !1250, file: !3, line: 870, type: !1283)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 7)
!1286 = !DILocation(line: 870, column: 10, scope: !1250)
!1287 = !DILocalVariable(name: "loptions", scope: !1250, file: !3, line: 871, type: !480)
!1288 = !DILocation(line: 871, column: 10, scope: !1250)
!1289 = !DILocalVariable(name: "opt_pqr", scope: !1250, file: !3, line: 872, type: !36)
!1290 = !DILocation(line: 872, column: 9, scope: !1250)
!1291 = !DILocalVariable(name: "opt_nobocc", scope: !1250, file: !3, line: 873, type: !36)
!1292 = !DILocation(line: 873, column: 9, scope: !1250)
!1293 = !DILocalVariable(name: "opt_brook", scope: !1250, file: !3, line: 874, type: !36)
!1294 = !DILocation(line: 874, column: 9, scope: !1250)
!1295 = !DILocalVariable(name: "opt_wwpdb", scope: !1250, file: !3, line: 875, type: !36)
!1296 = !DILocation(line: 875, column: 9, scope: !1250)
!1297 = !DILocalVariable(name: "opt_tr", scope: !1250, file: !3, line: 876, type: !36)
!1298 = !DILocation(line: 876, column: 9, scope: !1250)
!1299 = !DILocalVariable(name: "opt_nocid", scope: !1250, file: !3, line: 877, type: !36)
!1300 = !DILocation(line: 877, column: 9, scope: !1250)
!1301 = !DILocalVariable(name: "opt_allcid", scope: !1250, file: !3, line: 878, type: !36)
!1302 = !DILocation(line: 878, column: 9, scope: !1250)
!1303 = !DILocalVariable(name: "cidstate", scope: !1250, file: !3, line: 879, type: !246)
!1304 = !DILocation(line: 879, column: 12, scope: !1250)
!1305 = !DILocation(line: 881, column: 10, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 881, column: 9)
!1307 = !DILocation(line: 881, column: 9, scope: !1250)
!1308 = !DILocation(line: 882, column: 17, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 881, column: 15)
!1310 = !DILocation(line: 882, column: 9, scope: !1309)
!1311 = !DILocation(line: 883, column: 9, scope: !1309)
!1312 = !DILocation(line: 885, column: 10, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 885, column: 9)
!1314 = !DILocation(line: 885, column: 9, scope: !1250)
!1315 = !DILocation(line: 886, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 885, column: 14)
!1317 = !DILocation(line: 886, column: 9, scope: !1316)
!1318 = !DILocation(line: 887, column: 9, scope: !1316)
!1319 = !DILocation(line: 890, column: 9, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 890, column: 9)
!1321 = !DILocation(line: 890, column: 17, scope: !1320)
!1322 = !DILocation(line: 890, column: 9, scope: !1250)
!1323 = !DILocation(line: 891, column: 9, scope: !1320)
!1324 = !DILocation(line: 891, column: 19, scope: !1320)
!1325 = !DILocation(line: 893, column: 17, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 892, column: 10)
!1327 = !DILocation(line: 893, column: 27, scope: !1326)
!1328 = !DILocation(line: 893, column: 9, scope: !1326)
!1329 = !DILocation(line: 894, column: 9, scope: !1326)
!1330 = !DILocation(line: 894, column: 23, scope: !1326)
!1331 = !DILocation(line: 896, column: 22, scope: !1250)
!1332 = !DILocation(line: 896, column: 15, scope: !1250)
!1333 = !DILocation(line: 896, column: 40, scope: !1250)
!1334 = !DILocation(line: 896, column: 13, scope: !1250)
!1335 = !DILocation(line: 897, column: 25, scope: !1250)
!1336 = !DILocation(line: 897, column: 18, scope: !1250)
!1337 = !DILocation(line: 897, column: 46, scope: !1250)
!1338 = !DILocation(line: 897, column: 16, scope: !1250)
!1339 = !DILocation(line: 898, column: 24, scope: !1250)
!1340 = !DILocation(line: 898, column: 17, scope: !1250)
!1341 = !DILocation(line: 898, column: 44, scope: !1250)
!1342 = !DILocation(line: 898, column: 15, scope: !1250)
!1343 = !DILocation(line: 899, column: 24, scope: !1250)
!1344 = !DILocation(line: 899, column: 17, scope: !1250)
!1345 = !DILocation(line: 899, column: 44, scope: !1250)
!1346 = !DILocation(line: 899, column: 15, scope: !1250)
!1347 = !DILocation(line: 900, column: 21, scope: !1250)
!1348 = !DILocation(line: 900, column: 14, scope: !1250)
!1349 = !DILocation(line: 900, column: 38, scope: !1250)
!1350 = !DILocation(line: 900, column: 12, scope: !1250)
!1351 = !DILocation(line: 901, column: 24, scope: !1250)
!1352 = !DILocation(line: 901, column: 17, scope: !1250)
!1353 = !DILocation(line: 901, column: 44, scope: !1250)
!1354 = !DILocation(line: 901, column: 15, scope: !1250)
!1355 = !DILocation(line: 902, column: 25, scope: !1250)
!1356 = !DILocation(line: 902, column: 18, scope: !1250)
!1357 = !DILocation(line: 902, column: 46, scope: !1250)
!1358 = !DILocation(line: 902, column: 16, scope: !1250)
!1359 = !DILocation(line: 903, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 903, column: 9)
!1361 = !DILocation(line: 903, column: 9, scope: !1250)
!1362 = !DILocation(line: 904, column: 19, scope: !1360)
!1363 = !DILocation(line: 904, column: 9, scope: !1360)
!1364 = !DILocation(line: 905, column: 24, scope: !1250)
!1365 = !DILocation(line: 905, column: 35, scope: !1250)
!1366 = !DILocation(line: 905, column: 47, scope: !1250)
!1367 = !DILocation(line: 905, column: 16, scope: !1250)
!1368 = !DILocation(line: 905, column: 14, scope: !1250)
!1369 = !DILocation(line: 911, column: 13, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 911, column: 5)
!1371 = !DILocation(line: 911, column: 21, scope: !1370)
!1372 = !DILocation(line: 911, column: 31, scope: !1370)
!1373 = !DILocation(line: 911, column: 36, scope: !1370)
!1374 = !DILocation(line: 911, column: 29, scope: !1370)
!1375 = !DILocation(line: 911, column: 10, scope: !1370)
!1376 = !DILocation(line: 911, column: 47, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 911, column: 5)
!1378 = !DILocation(line: 911, column: 5, scope: !1370)
!1379 = !DILocation(line: 920, column: 23, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 911, column: 68)
!1381 = !DILocation(line: 920, column: 33, scope: !1380)
!1382 = !DILocation(line: 920, column: 44, scope: !1380)
!1383 = !DILocation(line: 920, column: 56, scope: !1380)
!1384 = !DILocation(line: 920, column: 15, scope: !1380)
!1385 = !DILocation(line: 920, column: 13, scope: !1380)
!1386 = !DILocation(line: 921, column: 16, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 921, column: 9)
!1388 = !DILocation(line: 921, column: 14, scope: !1387)
!1389 = !DILocation(line: 921, column: 21, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 921, column: 9)
!1391 = !DILocation(line: 921, column: 25, scope: !1390)
!1392 = !DILocation(line: 921, column: 29, scope: !1390)
!1393 = !DILocation(line: 921, column: 23, scope: !1390)
!1394 = !DILocation(line: 921, column: 9, scope: !1387)
!1395 = !DILocation(line: 922, column: 19, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 921, column: 53)
!1397 = !DILocation(line: 922, column: 23, scope: !1396)
!1398 = !DILocation(line: 922, column: 34, scope: !1396)
!1399 = !DILocation(line: 922, column: 17, scope: !1396)
!1400 = !DILocation(line: 923, column: 20, scope: !1396)
!1401 = !DILocation(line: 923, column: 25, scope: !1396)
!1402 = !DILocation(line: 923, column: 30, scope: !1396)
!1403 = !DILocation(line: 923, column: 40, scope: !1396)
!1404 = !DILocation(line: 923, column: 45, scope: !1396)
!1405 = !DILocation(line: 923, column: 13, scope: !1396)
!1406 = !DILocation(line: 924, column: 17, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 924, column: 17)
!1408 = !DILocation(line: 924, column: 17, scope: !1396)
!1409 = !DILocation(line: 925, column: 32, scope: !1407)
!1410 = !DILocation(line: 925, column: 39, scope: !1407)
!1411 = !DILocation(line: 925, column: 17, scope: !1407)
!1412 = !DILocation(line: 926, column: 22, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 926, column: 22)
!1414 = !DILocation(line: 926, column: 22, scope: !1407)
!1415 = !DILocation(line: 927, column: 32, scope: !1413)
!1416 = !DILocation(line: 927, column: 39, scope: !1413)
!1417 = !DILocation(line: 927, column: 17, scope: !1413)
!1418 = !DILocation(line: 929, column: 24, scope: !1413)
!1419 = !DILocation(line: 929, column: 31, scope: !1413)
!1420 = !DILocation(line: 929, column: 36, scope: !1413)
!1421 = !DILocation(line: 929, column: 17, scope: !1413)
!1422 = !DILocation(line: 930, column: 20, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 930, column: 13)
!1424 = !DILocation(line: 930, column: 18, scope: !1423)
!1425 = !DILocation(line: 930, column: 25, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 930, column: 13)
!1427 = !DILocation(line: 930, column: 29, scope: !1426)
!1428 = !DILocation(line: 930, column: 34, scope: !1426)
!1429 = !DILocation(line: 930, column: 27, scope: !1426)
!1430 = !DILocation(line: 930, column: 13, scope: !1423)
!1431 = !DILocation(line: 931, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 930, column: 49)
!1433 = !DILocation(line: 932, column: 23, scope: !1432)
!1434 = !DILocation(line: 932, column: 28, scope: !1432)
!1435 = !DILocation(line: 932, column: 36, scope: !1432)
!1436 = !DILocation(line: 932, column: 20, scope: !1432)
!1437 = !DILocation(line: 934, column: 21, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 934, column: 21)
!1439 = !DILocation(line: 934, column: 21, scope: !1432)
!1440 = !DILocation(line: 935, column: 36, scope: !1438)
!1441 = !DILocation(line: 935, column: 43, scope: !1438)
!1442 = !DILocation(line: 935, column: 47, scope: !1438)
!1443 = !DILocation(line: 935, column: 59, scope: !1438)
!1444 = !DILocation(line: 935, column: 21, scope: !1438)
!1445 = !DILocation(line: 936, column: 26, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 936, column: 26)
!1447 = !DILocation(line: 936, column: 26, scope: !1438)
!1448 = !DILocation(line: 937, column: 36, scope: !1446)
!1449 = !DILocation(line: 937, column: 43, scope: !1446)
!1450 = !DILocation(line: 937, column: 47, scope: !1446)
!1451 = !DILocation(line: 937, column: 59, scope: !1446)
!1452 = !DILocation(line: 937, column: 21, scope: !1446)
!1453 = !DILocation(line: 939, column: 28, scope: !1446)
!1454 = !DILocation(line: 939, column: 35, scope: !1446)
!1455 = !DILocation(line: 939, column: 39, scope: !1446)
!1456 = !DILocation(line: 939, column: 21, scope: !1446)
!1457 = !DILocation(line: 941, column: 29, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 941, column: 21)
!1459 = !DILocation(line: 941, column: 22, scope: !1458)
!1460 = !DILocation(line: 941, column: 38, scope: !1458)
!1461 = !DILocation(line: 941, column: 41, scope: !1458)
!1462 = !DILocation(line: 941, column: 21, scope: !1432)
!1463 = !DILocation(line: 948, column: 26, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 941, column: 49)
!1465 = !DILocation(line: 948, column: 35, scope: !1464)
!1466 = !DILocation(line: 948, column: 38, scope: !1464)
!1467 = !DILocation(line: 948, column: 44, scope: !1464)
!1468 = !DILocation(line: 948, column: 46, scope: !1464)
!1469 = !DILocation(line: 948, column: 24, scope: !1464)
!1470 = !DILocation(line: 949, column: 25, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 949, column: 25)
!1472 = !DILocation(line: 949, column: 28, scope: !1471)
!1473 = !DILocation(line: 949, column: 25, scope: !1464)
!1474 = !DILocation(line: 950, column: 33, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 949, column: 38)
!1476 = !DILocation(line: 952, column: 33, scope: !1475)
!1477 = !DILocation(line: 952, column: 37, scope: !1475)
!1478 = !DILocation(line: 952, column: 44, scope: !1475)
!1479 = !DILocation(line: 956, column: 33, scope: !1475)
!1480 = !DILocation(line: 956, column: 38, scope: !1475)
!1481 = !DILocation(line: 957, column: 33, scope: !1475)
!1482 = !DILocation(line: 957, column: 37, scope: !1475)
!1483 = !DILocation(line: 957, column: 47, scope: !1475)
!1484 = !DILocation(line: 957, column: 51, scope: !1475)
!1485 = !DILocation(line: 957, column: 61, scope: !1475)
!1486 = !DILocation(line: 957, column: 65, scope: !1475)
!1487 = !DILocation(line: 950, column: 25, scope: !1475)
!1488 = !DILocation(line: 958, column: 21, scope: !1475)
!1489 = !DILocation(line: 959, column: 33, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 958, column: 28)
!1491 = !DILocation(line: 961, column: 33, scope: !1490)
!1492 = !DILocation(line: 961, column: 36, scope: !1490)
!1493 = !DILocation(line: 961, column: 46, scope: !1490)
!1494 = !DILocation(line: 961, column: 53, scope: !1490)
!1495 = !DILocation(line: 965, column: 33, scope: !1490)
!1496 = !DILocation(line: 965, column: 38, scope: !1490)
!1497 = !DILocation(line: 966, column: 33, scope: !1490)
!1498 = !DILocation(line: 966, column: 37, scope: !1490)
!1499 = !DILocation(line: 966, column: 47, scope: !1490)
!1500 = !DILocation(line: 966, column: 51, scope: !1490)
!1501 = !DILocation(line: 966, column: 61, scope: !1490)
!1502 = !DILocation(line: 966, column: 65, scope: !1490)
!1503 = !DILocation(line: 959, column: 25, scope: !1490)
!1504 = !DILocation(line: 968, column: 17, scope: !1464)
!1505 = !DILocation(line: 970, column: 25, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 970, column: 25)
!1507 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 968, column: 24)
!1508 = !DILocation(line: 970, column: 28, scope: !1506)
!1509 = !DILocation(line: 970, column: 25, scope: !1507)
!1510 = !DILocation(line: 971, column: 33, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 970, column: 38)
!1512 = !DILocation(line: 973, column: 33, scope: !1511)
!1513 = !DILocation(line: 973, column: 37, scope: !1511)
!1514 = !DILocation(line: 973, column: 44, scope: !1511)
!1515 = !DILocation(line: 973, column: 51, scope: !1511)
!1516 = !DILocation(line: 974, column: 33, scope: !1511)
!1517 = !DILocation(line: 974, column: 37, scope: !1511)
!1518 = !DILocation(line: 974, column: 47, scope: !1511)
!1519 = !DILocation(line: 974, column: 51, scope: !1511)
!1520 = !DILocation(line: 974, column: 61, scope: !1511)
!1521 = !DILocation(line: 974, column: 65, scope: !1511)
!1522 = !DILocation(line: 971, column: 25, scope: !1511)
!1523 = !DILocation(line: 975, column: 21, scope: !1511)
!1524 = !DILocation(line: 976, column: 33, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 975, column: 28)
!1526 = !DILocation(line: 978, column: 33, scope: !1525)
!1527 = !DILocation(line: 978, column: 36, scope: !1525)
!1528 = !DILocation(line: 978, column: 46, scope: !1525)
!1529 = !DILocation(line: 978, column: 53, scope: !1525)
!1530 = !DILocation(line: 978, column: 60, scope: !1525)
!1531 = !DILocation(line: 979, column: 33, scope: !1525)
!1532 = !DILocation(line: 979, column: 37, scope: !1525)
!1533 = !DILocation(line: 979, column: 47, scope: !1525)
!1534 = !DILocation(line: 979, column: 51, scope: !1525)
!1535 = !DILocation(line: 979, column: 61, scope: !1525)
!1536 = !DILocation(line: 979, column: 65, scope: !1525)
!1537 = !DILocation(line: 976, column: 25, scope: !1525)
!1538 = !DILocation(line: 982, column: 21, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 982, column: 21)
!1540 = !DILocation(line: 982, column: 21, scope: !1432)
!1541 = !DILocation(line: 984, column: 29, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 982, column: 30)
!1543 = !DILocation(line: 985, column: 29, scope: !1542)
!1544 = !DILocation(line: 985, column: 33, scope: !1542)
!1545 = !DILocation(line: 985, column: 43, scope: !1542)
!1546 = !DILocation(line: 985, column: 47, scope: !1542)
!1547 = !DILocation(line: 984, column: 21, scope: !1542)
!1548 = !DILocation(line: 986, column: 17, scope: !1542)
!1549 = !DILocation(line: 986, column: 29, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 986, column: 28)
!1551 = !DILocation(line: 986, column: 28, scope: !1539)
!1552 = !DILocation(line: 987, column: 29, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 986, column: 41)
!1554 = !DILocation(line: 988, column: 29, scope: !1553)
!1555 = !DILocation(line: 988, column: 33, scope: !1553)
!1556 = !DILocation(line: 988, column: 40, scope: !1553)
!1557 = !DILocation(line: 988, column: 44, scope: !1553)
!1558 = !DILocation(line: 987, column: 21, scope: !1553)
!1559 = !DILocation(line: 989, column: 17, scope: !1553)
!1560 = !DILocation(line: 991, column: 22, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 991, column: 21)
!1562 = !DILocation(line: 991, column: 32, scope: !1561)
!1563 = !DILocation(line: 991, column: 35, scope: !1561)
!1564 = !DILocation(line: 991, column: 46, scope: !1561)
!1565 = !DILocation(line: 991, column: 50, scope: !1561)
!1566 = !DILocation(line: 991, column: 58, scope: !1561)
!1567 = !DILocation(line: 991, column: 62, scope: !1561)
!1568 = !DILocation(line: 991, column: 21, scope: !1432)
!1569 = !DILocation(line: 992, column: 29, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 991, column: 74)
!1571 = !DILocation(line: 992, column: 43, scope: !1570)
!1572 = !DILocation(line: 992, column: 47, scope: !1570)
!1573 = !DILocation(line: 992, column: 21, scope: !1570)
!1574 = !DILocation(line: 993, column: 17, scope: !1570)
!1575 = !DILocation(line: 995, column: 25, scope: !1432)
!1576 = !DILocation(line: 995, column: 17, scope: !1432)
!1577 = !DILocation(line: 997, column: 13, scope: !1432)
!1578 = !DILocation(line: 930, column: 45, scope: !1426)
!1579 = !DILocation(line: 930, column: 13, scope: !1426)
!1580 = distinct !{!1580, !1430, !1581}
!1581 = !DILocation(line: 997, column: 13, scope: !1423)
!1582 = !DILocation(line: 999, column: 9, scope: !1396)
!1583 = !DILocation(line: 921, column: 43, scope: !1390)
!1584 = !DILocation(line: 921, column: 49, scope: !1390)
!1585 = !DILocation(line: 921, column: 9, scope: !1390)
!1586 = distinct !{!1586, !1394, !1587}
!1587 = !DILocation(line: 999, column: 9, scope: !1387)
!1588 = !DILocation(line: 1001, column: 17, scope: !1380)
!1589 = !DILocation(line: 1001, column: 9, scope: !1380)
!1590 = !DILocation(line: 1007, column: 5, scope: !1380)
!1591 = !DILocation(line: 911, column: 56, scope: !1377)
!1592 = !DILocation(line: 911, column: 60, scope: !1377)
!1593 = !DILocation(line: 911, column: 54, scope: !1377)
!1594 = !DILocation(line: 911, column: 5, scope: !1377)
!1595 = distinct !{!1595, !1378, !1596}
!1596 = !DILocation(line: 1007, column: 5, scope: !1370)
!1597 = !DILocation(line: 1008, column: 13, scope: !1250)
!1598 = !DILocation(line: 1008, column: 5, scope: !1250)
!1599 = !DILocation(line: 1009, column: 1, scope: !1250)
!1600 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1601, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !259)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!36, !13, !13, !276}
!1603 = !DILocalVariable(name: "fname", arg: 1, scope: !1600, file: !3, line: 256, type: !13)
!1604 = !DILocation(line: 256, column: 17, scope: !1600)
!1605 = !DILocalVariable(name: "blockId", arg: 2, scope: !1600, file: !3, line: 256, type: !13)
!1606 = !DILocation(line: 256, column: 31, scope: !1600)
!1607 = !DILocalVariable(name: "mol", arg: 3, scope: !1600, file: !3, line: 256, type: !276)
!1608 = !DILocation(line: 256, column: 55, scope: !1600)
!1609 = !DILocalVariable(name: "fp", scope: !1600, file: !3, line: 258, type: !283)
!1610 = !DILocation(line: 258, column: 11, scope: !1600)
!1611 = !DILocation(line: 260, column: 10, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 260, column: 9)
!1613 = !DILocation(line: 260, column: 9, scope: !1600)
!1614 = !DILocation(line: 261, column: 17, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 260, column: 15)
!1616 = !DILocation(line: 261, column: 9, scope: !1615)
!1617 = !DILocation(line: 262, column: 9, scope: !1615)
!1618 = !DILocation(line: 264, column: 17, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 264, column: 9)
!1620 = !DILocation(line: 264, column: 10, scope: !1619)
!1621 = !DILocation(line: 264, column: 9, scope: !1600)
!1622 = !DILocation(line: 265, column: 14, scope: !1619)
!1623 = !DILocation(line: 265, column: 12, scope: !1619)
!1624 = !DILocation(line: 265, column: 9, scope: !1619)
!1625 = !DILocation(line: 266, column: 26, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 266, column: 14)
!1627 = !DILocation(line: 266, column: 20, scope: !1626)
!1628 = !DILocation(line: 266, column: 18, scope: !1626)
!1629 = !DILocation(line: 266, column: 39, scope: !1626)
!1630 = !DILocation(line: 266, column: 14, scope: !1619)
!1631 = !DILocation(line: 267, column: 44, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 266, column: 48)
!1633 = !DILocation(line: 267, column: 9, scope: !1632)
!1634 = !DILocation(line: 268, column: 9, scope: !1632)
!1635 = !DILocation(line: 270, column: 13, scope: !1600)
!1636 = !DILocation(line: 270, column: 17, scope: !1600)
!1637 = !DILocation(line: 270, column: 26, scope: !1600)
!1638 = !DILocation(line: 270, column: 5, scope: !1600)
!1639 = !DILocation(line: 271, column: 9, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 271, column: 9)
!1641 = !DILocation(line: 271, column: 15, scope: !1640)
!1642 = !DILocation(line: 271, column: 12, scope: !1640)
!1643 = !DILocation(line: 271, column: 9, scope: !1600)
!1644 = !DILocation(line: 272, column: 16, scope: !1640)
!1645 = !DILocation(line: 272, column: 9, scope: !1640)
!1646 = !DILocation(line: 273, column: 5, scope: !1600)
!1647 = !DILocation(line: 274, column: 1, scope: !1600)
!1648 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1649, scopeLine: 1382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{null, !283, !13, !276}
!1651 = !DILocalVariable(name: "fp", arg: 1, scope: !1648, file: !3, line: 1381, type: !283)
!1652 = !DILocation(line: 1381, column: 28, scope: !1648)
!1653 = !DILocalVariable(name: "blockId", arg: 2, scope: !1648, file: !3, line: 1381, type: !13)
!1654 = !DILocation(line: 1381, column: 38, scope: !1648)
!1655 = !DILocalVariable(name: "mol", arg: 3, scope: !1648, file: !3, line: 1381, type: !276)
!1656 = !DILocation(line: 1381, column: 60, scope: !1648)
!1657 = !DILocalVariable(name: "r", scope: !1648, file: !3, line: 1383, type: !36)
!1658 = !DILocation(line: 1383, column: 9, scope: !1648)
!1659 = !DILocalVariable(name: "tr", scope: !1648, file: !3, line: 1383, type: !36)
!1660 = !DILocation(line: 1383, column: 12, scope: !1648)
!1661 = !DILocalVariable(name: "a", scope: !1648, file: !3, line: 1383, type: !36)
!1662 = !DILocation(line: 1383, column: 16, scope: !1648)
!1663 = !DILocalVariable(name: "ta", scope: !1648, file: !3, line: 1383, type: !36)
!1664 = !DILocation(line: 1383, column: 19, scope: !1648)
!1665 = !DILocalVariable(name: "strandnum", scope: !1648, file: !3, line: 1383, type: !36)
!1666 = !DILocation(line: 1383, column: 23, scope: !1648)
!1667 = !DILocalVariable(name: "cid", scope: !1648, file: !3, line: 1384, type: !14)
!1668 = !DILocation(line: 1384, column: 10, scope: !1648)
!1669 = !DILocalVariable(name: "sp", scope: !1648, file: !3, line: 1385, type: !73)
!1670 = !DILocation(line: 1385, column: 15, scope: !1648)
!1671 = !DILocalVariable(name: "res", scope: !1648, file: !3, line: 1386, type: !38)
!1672 = !DILocation(line: 1386, column: 16, scope: !1648)
!1673 = !DILocalVariable(name: "ap", scope: !1648, file: !3, line: 1387, type: !218)
!1674 = !DILocation(line: 1387, column: 13, scope: !1648)
!1675 = !DILocation(line: 1389, column: 5, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 1389, column: 5)
!1677 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 1389, column: 5)
!1678 = !DILocation(line: 1389, column: 5, scope: !1677)
!1679 = !DILocation(line: 1390, column: 5, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 1390, column: 5)
!1681 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 1390, column: 5)
!1682 = !DILocation(line: 1390, column: 5, scope: !1681)
!1683 = !DILocation(line: 1392, column: 12, scope: !1648)
!1684 = !DILocation(line: 1392, column: 17, scope: !1648)
!1685 = !DILocation(line: 1392, column: 28, scope: !1648)
!1686 = !DILocation(line: 1392, column: 11, scope: !1648)
!1687 = !DILocation(line: 1392, column: 9, scope: !1648)
!1688 = !DILocation(line: 1396, column: 13, scope: !1648)
!1689 = !DILocation(line: 1396, column: 32, scope: !1648)
!1690 = !DILocation(line: 1396, column: 5, scope: !1648)
!1691 = !DILocation(line: 1397, column: 13, scope: !1648)
!1692 = !DILocation(line: 1397, column: 5, scope: !1648)
!1693 = !DILocation(line: 1398, column: 13, scope: !1648)
!1694 = !DILocation(line: 1398, column: 43, scope: !1648)
!1695 = !DILocation(line: 1398, column: 5, scope: !1648)
!1696 = !DILocation(line: 1399, column: 13, scope: !1648)
!1697 = !DILocation(line: 1399, column: 5, scope: !1648)
!1698 = !DILocation(line: 1400, column: 13, scope: !1648)
!1699 = !DILocation(line: 1400, column: 5, scope: !1648)
!1700 = !DILocation(line: 1401, column: 13, scope: !1648)
!1701 = !DILocation(line: 1401, column: 5, scope: !1648)
!1702 = !DILocation(line: 1402, column: 13, scope: !1648)
!1703 = !DILocation(line: 1402, column: 5, scope: !1648)
!1704 = !DILocation(line: 1403, column: 13, scope: !1648)
!1705 = !DILocation(line: 1403, column: 5, scope: !1648)
!1706 = !DILocation(line: 1404, column: 13, scope: !1648)
!1707 = !DILocation(line: 1404, column: 5, scope: !1648)
!1708 = !DILocation(line: 1406, column: 15, scope: !1648)
!1709 = !DILocation(line: 1407, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 1407, column: 5)
!1711 = !DILocation(line: 1407, column: 21, scope: !1710)
!1712 = !DILocation(line: 1407, column: 31, scope: !1710)
!1713 = !DILocation(line: 1407, column: 36, scope: !1710)
!1714 = !DILocation(line: 1407, column: 29, scope: !1710)
!1715 = !DILocation(line: 1407, column: 10, scope: !1710)
!1716 = !DILocation(line: 1407, column: 47, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 1407, column: 5)
!1718 = !DILocation(line: 1407, column: 5, scope: !1710)
!1719 = !DILocation(line: 1408, column: 18, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 1407, column: 68)
!1721 = !DILocation(line: 1409, column: 16, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 1409, column: 9)
!1723 = !DILocation(line: 1409, column: 14, scope: !1722)
!1724 = !DILocation(line: 1409, column: 21, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 1409, column: 9)
!1726 = !DILocation(line: 1409, column: 25, scope: !1725)
!1727 = !DILocation(line: 1409, column: 29, scope: !1725)
!1728 = !DILocation(line: 1409, column: 23, scope: !1725)
!1729 = !DILocation(line: 1409, column: 9, scope: !1722)
!1730 = !DILocation(line: 1410, column: 19, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 1409, column: 53)
!1732 = !DILocation(line: 1410, column: 23, scope: !1731)
!1733 = !DILocation(line: 1410, column: 34, scope: !1731)
!1734 = !DILocation(line: 1410, column: 17, scope: !1731)
!1735 = !DILocation(line: 1411, column: 20, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 1411, column: 13)
!1737 = !DILocation(line: 1411, column: 18, scope: !1736)
!1738 = !DILocation(line: 1411, column: 25, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 1411, column: 13)
!1740 = !DILocation(line: 1411, column: 29, scope: !1739)
!1741 = !DILocation(line: 1411, column: 34, scope: !1739)
!1742 = !DILocation(line: 1411, column: 27, scope: !1739)
!1743 = !DILocation(line: 1411, column: 13, scope: !1736)
!1744 = !DILocation(line: 1412, column: 19, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1411, column: 49)
!1746 = !DILocation(line: 1413, column: 23, scope: !1745)
!1747 = !DILocation(line: 1413, column: 28, scope: !1745)
!1748 = !DILocation(line: 1413, column: 36, scope: !1745)
!1749 = !DILocation(line: 1413, column: 20, scope: !1745)
!1750 = !DILocation(line: 1421, column: 25, scope: !1745)
!1751 = !DILocation(line: 1423, column: 25, scope: !1745)
!1752 = !DILocation(line: 1423, column: 29, scope: !1745)
!1753 = !DILocation(line: 1423, column: 33, scope: !1745)
!1754 = !DILocation(line: 1423, column: 45, scope: !1745)
!1755 = !DILocation(line: 1423, column: 50, scope: !1745)
!1756 = !DILocation(line: 1423, column: 61, scope: !1745)
!1757 = !DILocation(line: 1423, column: 66, scope: !1745)
!1758 = !DILocation(line: 1423, column: 69, scope: !1745)
!1759 = !DILocation(line: 1424, column: 25, scope: !1745)
!1760 = !DILocation(line: 1424, column: 29, scope: !1745)
!1761 = !DILocation(line: 1424, column: 39, scope: !1745)
!1762 = !DILocation(line: 1424, column: 43, scope: !1745)
!1763 = !DILocation(line: 1424, column: 53, scope: !1745)
!1764 = !DILocation(line: 1424, column: 57, scope: !1745)
!1765 = !DILocation(line: 1425, column: 25, scope: !1745)
!1766 = !DILocation(line: 1425, column: 36, scope: !1745)
!1767 = !DILocation(line: 1425, column: 38, scope: !1745)
!1768 = !DILocation(line: 1421, column: 17, scope: !1745)
!1769 = !DILocation(line: 1426, column: 13, scope: !1745)
!1770 = !DILocation(line: 1411, column: 45, scope: !1739)
!1771 = !DILocation(line: 1411, column: 13, scope: !1739)
!1772 = distinct !{!1772, !1743, !1773}
!1773 = !DILocation(line: 1426, column: 13, scope: !1736)
!1774 = !DILocation(line: 1427, column: 9, scope: !1731)
!1775 = !DILocation(line: 1409, column: 43, scope: !1725)
!1776 = !DILocation(line: 1409, column: 49, scope: !1725)
!1777 = !DILocation(line: 1409, column: 9, scope: !1725)
!1778 = distinct !{!1778, !1729, !1779}
!1779 = !DILocation(line: 1427, column: 9, scope: !1722)
!1780 = !DILocation(line: 1428, column: 13, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 1428, column: 13)
!1782 = !DILocation(line: 1428, column: 18, scope: !1781)
!1783 = !DILocation(line: 1428, column: 29, scope: !1781)
!1784 = !DILocation(line: 1428, column: 13, scope: !1720)
!1785 = !DILocation(line: 1429, column: 16, scope: !1781)
!1786 = !DILocation(line: 1429, column: 13, scope: !1781)
!1787 = !DILocation(line: 1430, column: 5, scope: !1720)
!1788 = !DILocation(line: 1407, column: 56, scope: !1717)
!1789 = !DILocation(line: 1407, column: 60, scope: !1717)
!1790 = !DILocation(line: 1407, column: 54, scope: !1717)
!1791 = !DILocation(line: 1407, column: 5, scope: !1717)
!1792 = distinct !{!1792, !1718, !1793}
!1793 = !DILocation(line: 1430, column: 5, scope: !1710)
!1794 = !DILocation(line: 1431, column: 1, scope: !1648)
!1795 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1796, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !259)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!36, !13, !276}
!1798 = !DILocalVariable(name: "fname", arg: 1, scope: !1795, file: !3, line: 276, type: !13)
!1799 = !DILocation(line: 276, column: 17, scope: !1795)
!1800 = !DILocalVariable(name: "mol", arg: 2, scope: !1795, file: !3, line: 276, type: !276)
!1801 = !DILocation(line: 276, column: 39, scope: !1795)
!1802 = !DILocalVariable(name: "fp", scope: !1795, file: !3, line: 278, type: !283)
!1803 = !DILocation(line: 278, column: 11, scope: !1795)
!1804 = !DILocalVariable(name: "sp", scope: !1795, file: !3, line: 279, type: !73)
!1805 = !DILocation(line: 279, column: 15, scope: !1795)
!1806 = !DILocalVariable(name: "res", scope: !1795, file: !3, line: 280, type: !38)
!1807 = !DILocation(line: 280, column: 16, scope: !1795)
!1808 = !DILocalVariable(name: "a", scope: !1795, file: !3, line: 281, type: !36)
!1809 = !DILocation(line: 281, column: 9, scope: !1795)
!1810 = !DILocalVariable(name: "ta", scope: !1795, file: !3, line: 281, type: !36)
!1811 = !DILocation(line: 281, column: 12, scope: !1795)
!1812 = !DILocalVariable(name: "ai", scope: !1795, file: !3, line: 281, type: !36)
!1813 = !DILocation(line: 281, column: 16, scope: !1795)
!1814 = !DILocalVariable(name: "aj", scope: !1795, file: !3, line: 281, type: !36)
!1815 = !DILocation(line: 281, column: 20, scope: !1795)
!1816 = !DILocalVariable(name: "r", scope: !1795, file: !3, line: 281, type: !36)
!1817 = !DILocation(line: 281, column: 24, scope: !1795)
!1818 = !DILocalVariable(name: "rj", scope: !1795, file: !3, line: 281, type: !36)
!1819 = !DILocation(line: 281, column: 27, scope: !1795)
!1820 = !DILocalVariable(name: "tr", scope: !1795, file: !3, line: 281, type: !36)
!1821 = !DILocation(line: 281, column: 31, scope: !1795)
!1822 = !DILocalVariable(name: "rval", scope: !1795, file: !3, line: 282, type: !36)
!1823 = !DILocation(line: 282, column: 9, scope: !1795)
!1824 = !DILocalVariable(name: "aoff", scope: !1795, file: !3, line: 283, type: !35)
!1825 = !DILocation(line: 283, column: 10, scope: !1795)
!1826 = !DILocalVariable(name: "b", scope: !1795, file: !3, line: 284, type: !36)
!1827 = !DILocation(line: 284, column: 9, scope: !1795)
!1828 = !DILocalVariable(name: "ebp", scope: !1795, file: !3, line: 285, type: !189)
!1829 = !DILocation(line: 285, column: 16, scope: !1795)
!1830 = !DILocation(line: 287, column: 10, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 287, column: 9)
!1832 = !DILocation(line: 287, column: 9, scope: !1795)
!1833 = !DILocation(line: 288, column: 17, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 287, column: 15)
!1835 = !DILocation(line: 288, column: 9, scope: !1834)
!1836 = !DILocation(line: 289, column: 9, scope: !1834)
!1837 = !DILocation(line: 291, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 291, column: 9)
!1839 = !DILocation(line: 291, column: 15, scope: !1838)
!1840 = !DILocation(line: 291, column: 13, scope: !1838)
!1841 = !DILocation(line: 291, column: 34, scope: !1838)
!1842 = !DILocation(line: 291, column: 9, scope: !1795)
!1843 = !DILocation(line: 292, column: 44, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 291, column: 43)
!1845 = !DILocation(line: 292, column: 9, scope: !1844)
!1846 = !DILocation(line: 293, column: 9, scope: !1844)
!1847 = !DILocation(line: 296, column: 13, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 296, column: 5)
!1849 = !DILocation(line: 296, column: 23, scope: !1848)
!1850 = !DILocation(line: 296, column: 28, scope: !1848)
!1851 = !DILocation(line: 296, column: 21, scope: !1848)
!1852 = !DILocation(line: 296, column: 10, scope: !1848)
!1853 = !DILocation(line: 296, column: 39, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 296, column: 5)
!1855 = !DILocation(line: 296, column: 5, scope: !1848)
!1856 = !DILocation(line: 297, column: 15, scope: !1854)
!1857 = !DILocation(line: 297, column: 19, scope: !1854)
!1858 = !DILocation(line: 297, column: 12, scope: !1854)
!1859 = !DILocation(line: 297, column: 9, scope: !1854)
!1860 = !DILocation(line: 296, column: 48, scope: !1854)
!1861 = !DILocation(line: 296, column: 52, scope: !1854)
!1862 = !DILocation(line: 296, column: 46, scope: !1854)
!1863 = !DILocation(line: 296, column: 5, scope: !1854)
!1864 = distinct !{!1864, !1855, !1865}
!1865 = !DILocation(line: 297, column: 19, scope: !1848)
!1866 = !DILocation(line: 299, column: 32, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 299, column: 9)
!1868 = !DILocation(line: 299, column: 35, scope: !1867)
!1869 = !DILocation(line: 299, column: 25, scope: !1867)
!1870 = !DILocation(line: 299, column: 17, scope: !1867)
!1871 = !DILocation(line: 299, column: 15, scope: !1867)
!1872 = !DILocation(line: 299, column: 51, scope: !1867)
!1873 = !DILocation(line: 299, column: 9, scope: !1795)
!1874 = !DILocation(line: 300, column: 9, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 299, column: 60)
!1876 = !DILocation(line: 301, column: 14, scope: !1875)
!1877 = !DILocation(line: 302, column: 9, scope: !1875)
!1878 = !DILocation(line: 305, column: 13, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 305, column: 5)
!1880 = !DILocation(line: 305, column: 21, scope: !1879)
!1881 = !DILocation(line: 305, column: 31, scope: !1879)
!1882 = !DILocation(line: 305, column: 36, scope: !1879)
!1883 = !DILocation(line: 305, column: 29, scope: !1879)
!1884 = !DILocation(line: 305, column: 10, scope: !1879)
!1885 = !DILocation(line: 305, column: 47, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 305, column: 5)
!1887 = !DILocation(line: 305, column: 5, scope: !1879)
!1888 = !DILocation(line: 306, column: 20, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 305, column: 68)
!1890 = !DILocation(line: 306, column: 9, scope: !1889)
!1891 = !DILocation(line: 306, column: 14, scope: !1889)
!1892 = !DILocation(line: 306, column: 18, scope: !1889)
!1893 = !DILocation(line: 307, column: 13, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 307, column: 13)
!1895 = !DILocation(line: 307, column: 17, scope: !1894)
!1896 = !DILocation(line: 307, column: 29, scope: !1894)
!1897 = !DILocation(line: 307, column: 13, scope: !1889)
!1898 = !DILocation(line: 308, column: 19, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 307, column: 34)
!1900 = !DILocation(line: 308, column: 23, scope: !1899)
!1901 = !DILocation(line: 308, column: 38, scope: !1899)
!1902 = !DILocation(line: 308, column: 16, scope: !1899)
!1903 = !DILocation(line: 309, column: 20, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 309, column: 13)
!1905 = !DILocation(line: 309, column: 18, scope: !1904)
!1906 = !DILocation(line: 309, column: 25, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 309, column: 13)
!1908 = !DILocation(line: 309, column: 29, scope: !1907)
!1909 = !DILocation(line: 309, column: 33, scope: !1907)
!1910 = !DILocation(line: 309, column: 27, scope: !1907)
!1911 = !DILocation(line: 309, column: 13, scope: !1904)
!1912 = !DILocation(line: 310, column: 32, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 309, column: 51)
!1914 = !DILocation(line: 310, column: 17, scope: !1913)
!1915 = !DILocation(line: 310, column: 22, scope: !1913)
!1916 = !DILocation(line: 310, column: 27, scope: !1913)
!1917 = !DILocation(line: 310, column: 25, scope: !1913)
!1918 = !DILocation(line: 310, column: 30, scope: !1913)
!1919 = !DILocation(line: 311, column: 23, scope: !1913)
!1920 = !DILocation(line: 311, column: 27, scope: !1913)
!1921 = !DILocation(line: 311, column: 38, scope: !1913)
!1922 = !DILocation(line: 311, column: 42, scope: !1913)
!1923 = !DILocation(line: 311, column: 20, scope: !1913)
!1924 = !DILocation(line: 312, column: 13, scope: !1913)
!1925 = !DILocation(line: 309, column: 47, scope: !1907)
!1926 = !DILocation(line: 309, column: 13, scope: !1907)
!1927 = distinct !{!1927, !1911, !1928}
!1928 = !DILocation(line: 312, column: 13, scope: !1904)
!1929 = !DILocation(line: 313, column: 19, scope: !1899)
!1930 = !DILocation(line: 313, column: 23, scope: !1899)
!1931 = !DILocation(line: 313, column: 16, scope: !1899)
!1932 = !DILocation(line: 314, column: 9, scope: !1899)
!1933 = !DILocation(line: 315, column: 5, scope: !1889)
!1934 = !DILocation(line: 305, column: 56, scope: !1886)
!1935 = !DILocation(line: 305, column: 60, scope: !1886)
!1936 = !DILocation(line: 305, column: 54, scope: !1886)
!1937 = !DILocation(line: 305, column: 5, scope: !1886)
!1938 = distinct !{!1938, !1887, !1939}
!1939 = !DILocation(line: 315, column: 5, scope: !1879)
!1940 = !DILocation(line: 317, column: 13, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 317, column: 5)
!1942 = !DILocation(line: 317, column: 23, scope: !1941)
!1943 = !DILocation(line: 317, column: 28, scope: !1941)
!1944 = !DILocation(line: 317, column: 21, scope: !1941)
!1945 = !DILocation(line: 317, column: 10, scope: !1941)
!1946 = !DILocation(line: 317, column: 39, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 317, column: 5)
!1948 = !DILocation(line: 317, column: 5, scope: !1941)
!1949 = !DILocation(line: 318, column: 16, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 318, column: 9)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 317, column: 60)
!1952 = !DILocation(line: 318, column: 14, scope: !1950)
!1953 = !DILocation(line: 318, column: 21, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 318, column: 9)
!1955 = !DILocation(line: 318, column: 25, scope: !1954)
!1956 = !DILocation(line: 318, column: 29, scope: !1954)
!1957 = !DILocation(line: 318, column: 23, scope: !1954)
!1958 = !DILocation(line: 318, column: 9, scope: !1950)
!1959 = !DILocation(line: 319, column: 19, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 318, column: 47)
!1961 = !DILocation(line: 319, column: 23, scope: !1960)
!1962 = !DILocation(line: 319, column: 34, scope: !1960)
!1963 = !DILocation(line: 319, column: 17, scope: !1960)
!1964 = !DILocation(line: 320, column: 17, scope: !1960)
!1965 = !DILocation(line: 320, column: 22, scope: !1960)
!1966 = !DILocation(line: 320, column: 26, scope: !1960)
!1967 = !DILocation(line: 320, column: 24, scope: !1960)
!1968 = !DILocation(line: 320, column: 15, scope: !1960)
!1969 = !DILocation(line: 321, column: 20, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 321, column: 13)
!1971 = !DILocation(line: 321, column: 18, scope: !1970)
!1972 = !DILocation(line: 321, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 321, column: 13)
!1974 = !DILocation(line: 321, column: 29, scope: !1973)
!1975 = !DILocation(line: 321, column: 34, scope: !1973)
!1976 = !DILocation(line: 321, column: 27, scope: !1973)
!1977 = !DILocation(line: 321, column: 13, scope: !1970)
!1978 = !DILocation(line: 322, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 321, column: 52)
!1980 = !DILocation(line: 323, column: 25, scope: !1979)
!1981 = !DILocation(line: 323, column: 30, scope: !1979)
!1982 = !DILocation(line: 323, column: 41, scope: !1979)
!1983 = !DILocation(line: 323, column: 49, scope: !1979)
!1984 = !DILocation(line: 323, column: 47, scope: !1979)
!1985 = !DILocation(line: 324, column: 25, scope: !1979)
!1986 = !DILocation(line: 324, column: 30, scope: !1979)
!1987 = !DILocation(line: 324, column: 41, scope: !1979)
!1988 = !DILocation(line: 324, column: 49, scope: !1979)
!1989 = !DILocation(line: 324, column: 47, scope: !1979)
!1990 = !DILocation(line: 322, column: 17, scope: !1979)
!1991 = !DILocation(line: 325, column: 13, scope: !1979)
!1992 = !DILocation(line: 321, column: 48, scope: !1973)
!1993 = !DILocation(line: 321, column: 13, scope: !1973)
!1994 = distinct !{!1994, !1977, !1995}
!1995 = !DILocation(line: 325, column: 13, scope: !1970)
!1996 = !DILocation(line: 326, column: 24, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 326, column: 13)
!1998 = !DILocation(line: 326, column: 29, scope: !1997)
!1999 = !DILocation(line: 326, column: 22, scope: !1997)
!2000 = !DILocation(line: 326, column: 18, scope: !1997)
!2001 = !DILocation(line: 326, column: 41, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 326, column: 13)
!2003 = !DILocation(line: 326, column: 13, scope: !1997)
!2004 = !DILocation(line: 327, column: 27, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 327, column: 21)
!2006 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 326, column: 66)
!2007 = !DILocation(line: 327, column: 32, scope: !2005)
!2008 = !DILocation(line: 327, column: 25, scope: !2005)
!2009 = !DILocation(line: 327, column: 43, scope: !2005)
!2010 = !DILocation(line: 327, column: 45, scope: !2005)
!2011 = !DILocation(line: 327, column: 41, scope: !2005)
!2012 = !DILocation(line: 327, column: 21, scope: !2006)
!2013 = !DILocation(line: 328, column: 21, scope: !2005)
!2014 = !DILocation(line: 329, column: 22, scope: !2006)
!2015 = !DILocation(line: 329, column: 27, scope: !2006)
!2016 = !DILocation(line: 329, column: 32, scope: !2006)
!2017 = !DILocation(line: 329, column: 30, scope: !2006)
!2018 = !DILocation(line: 329, column: 20, scope: !2006)
!2019 = !DILocation(line: 330, column: 22, scope: !2006)
!2020 = !DILocation(line: 330, column: 27, scope: !2006)
!2021 = !DILocation(line: 330, column: 32, scope: !2006)
!2022 = !DILocation(line: 330, column: 30, scope: !2006)
!2023 = !DILocation(line: 330, column: 35, scope: !2006)
!2024 = !DILocation(line: 330, column: 20, scope: !2006)
!2025 = !DILocation(line: 331, column: 25, scope: !2006)
!2026 = !DILocation(line: 332, column: 25, scope: !2006)
!2027 = !DILocation(line: 332, column: 30, scope: !2006)
!2028 = !DILocation(line: 332, column: 40, scope: !2006)
!2029 = !DILocation(line: 332, column: 38, scope: !2006)
!2030 = !DILocation(line: 332, column: 44, scope: !2006)
!2031 = !DILocation(line: 332, column: 49, scope: !2006)
!2032 = !DILocation(line: 332, column: 60, scope: !2006)
!2033 = !DILocation(line: 332, column: 58, scope: !2006)
!2034 = !DILocation(line: 331, column: 17, scope: !2006)
!2035 = !DILocation(line: 333, column: 13, scope: !2006)
!2036 = !DILocation(line: 326, column: 52, scope: !2002)
!2037 = !DILocation(line: 326, column: 57, scope: !2002)
!2038 = !DILocation(line: 326, column: 50, scope: !2002)
!2039 = !DILocation(line: 326, column: 13, scope: !2002)
!2040 = distinct !{!2040, !2003, !2041}
!2041 = !DILocation(line: 333, column: 13, scope: !1997)
!2042 = !DILocation(line: 334, column: 9, scope: !1960)
!2043 = !DILocation(line: 318, column: 43, scope: !1954)
!2044 = !DILocation(line: 318, column: 9, scope: !1954)
!2045 = distinct !{!2045, !1958, !2046}
!2046 = !DILocation(line: 334, column: 9, scope: !1950)
!2047 = !DILocation(line: 335, column: 15, scope: !1951)
!2048 = !DILocation(line: 335, column: 19, scope: !1951)
!2049 = !DILocation(line: 335, column: 12, scope: !1951)
!2050 = !DILocation(line: 336, column: 5, scope: !1951)
!2051 = !DILocation(line: 317, column: 48, scope: !1947)
!2052 = !DILocation(line: 317, column: 52, scope: !1947)
!2053 = !DILocation(line: 317, column: 46, scope: !1947)
!2054 = !DILocation(line: 317, column: 5, scope: !1947)
!2055 = distinct !{!2055, !1948, !2056}
!2056 = !DILocation(line: 336, column: 5, scope: !1941)
!2057 = !DILabel(scope: !1795, name: "clean_up", file: !3, line: 338)
!2058 = !DILocation(line: 338, column: 3, scope: !1795)
!2059 = !DILocation(line: 339, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 339, column: 9)
!2061 = !DILocation(line: 339, column: 9, scope: !1795)
!2062 = !DILocation(line: 340, column: 14, scope: !2060)
!2063 = !DILocation(line: 340, column: 9, scope: !2060)
!2064 = !DILocation(line: 342, column: 12, scope: !1795)
!2065 = !DILocation(line: 342, column: 5, scope: !1795)
!2066 = !DILocation(line: 344, column: 13, scope: !1795)
!2067 = !DILocation(line: 344, column: 5, scope: !1795)
!2068 = !DILocation(line: 345, column: 1, scope: !1795)
!2069 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !2070, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !259)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!36, !13, !276, !13, !13}
!2072 = !DILocalVariable(name: "fname", arg: 1, scope: !2069, file: !3, line: 347, type: !13)
!2073 = !DILocation(line: 347, column: 18, scope: !2069)
!2074 = !DILocalVariable(name: "mol", arg: 2, scope: !2069, file: !3, line: 347, type: !276)
!2075 = !DILocation(line: 347, column: 40, scope: !2069)
!2076 = !DILocalVariable(name: "aexp1", arg: 3, scope: !2069, file: !3, line: 347, type: !13)
!2077 = !DILocation(line: 347, column: 50, scope: !2069)
!2078 = !DILocalVariable(name: "aexp2", arg: 4, scope: !2069, file: !3, line: 347, type: !13)
!2079 = !DILocation(line: 347, column: 64, scope: !2069)
!2080 = !DILocalVariable(name: "fp", scope: !2069, file: !3, line: 349, type: !283)
!2081 = !DILocation(line: 349, column: 11, scope: !2069)
!2082 = !DILocalVariable(name: "sp1", scope: !2069, file: !3, line: 350, type: !73)
!2083 = !DILocation(line: 350, column: 15, scope: !2069)
!2084 = !DILocalVariable(name: "res1", scope: !2069, file: !3, line: 351, type: !38)
!2085 = !DILocation(line: 351, column: 16, scope: !2069)
!2086 = !DILocalVariable(name: "res2", scope: !2069, file: !3, line: 351, type: !38)
!2087 = !DILocation(line: 351, column: 23, scope: !2069)
!2088 = !DILocalVariable(name: "ap1", scope: !2069, file: !3, line: 352, type: !218)
!2089 = !DILocation(line: 352, column: 13, scope: !2069)
!2090 = !DILocalVariable(name: "ap2", scope: !2069, file: !3, line: 352, type: !218)
!2091 = !DILocation(line: 352, column: 19, scope: !2069)
!2092 = !DILocalVariable(name: "tr", scope: !2069, file: !3, line: 353, type: !36)
!2093 = !DILocation(line: 353, column: 9, scope: !2069)
!2094 = !DILocalVariable(name: "r1", scope: !2069, file: !3, line: 353, type: !36)
!2095 = !DILocation(line: 353, column: 13, scope: !2069)
!2096 = !DILocalVariable(name: "r2", scope: !2069, file: !3, line: 353, type: !36)
!2097 = !DILocation(line: 353, column: 17, scope: !2069)
!2098 = !DILocalVariable(name: "a1", scope: !2069, file: !3, line: 353, type: !36)
!2099 = !DILocation(line: 353, column: 21, scope: !2069)
!2100 = !DILocalVariable(name: "a2", scope: !2069, file: !3, line: 353, type: !36)
!2101 = !DILocation(line: 353, column: 25, scope: !2069)
!2102 = !DILocalVariable(name: "res", scope: !2069, file: !3, line: 354, type: !37)
!2103 = !DILocation(line: 354, column: 17, scope: !2069)
!2104 = !DILocalVariable(name: "cnt", scope: !2069, file: !3, line: 355, type: !36)
!2105 = !DILocation(line: 355, column: 9, scope: !2069)
!2106 = !DILocation(line: 357, column: 10, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 357, column: 9)
!2108 = !DILocation(line: 357, column: 9, scope: !2069)
!2109 = !DILocation(line: 358, column: 17, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 357, column: 15)
!2111 = !DILocation(line: 358, column: 9, scope: !2110)
!2112 = !DILocation(line: 359, column: 9, scope: !2110)
!2113 = !DILocation(line: 362, column: 18, scope: !2069)
!2114 = !DILocation(line: 362, column: 23, scope: !2069)
!2115 = !DILocation(line: 362, column: 5, scope: !2069)
!2116 = !DILocation(line: 363, column: 16, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 363, column: 5)
!2118 = !DILocation(line: 363, column: 21, scope: !2117)
!2119 = !DILocation(line: 363, column: 14, scope: !2117)
!2120 = !DILocation(line: 363, column: 10, scope: !2117)
!2121 = !DILocation(line: 363, column: 32, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 363, column: 5)
!2123 = !DILocation(line: 363, column: 5, scope: !2117)
!2124 = !DILocation(line: 364, column: 9, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 363, column: 56)
!2126 = !DILocation(line: 364, column: 14, scope: !2125)
!2127 = !DILocation(line: 364, column: 21, scope: !2125)
!2128 = !DILocation(line: 365, column: 25, scope: !2125)
!2129 = !DILocation(line: 365, column: 30, scope: !2125)
!2130 = !DILocation(line: 365, column: 37, scope: !2125)
!2131 = !DILocation(line: 365, column: 24, scope: !2125)
!2132 = !DILocation(line: 365, column: 9, scope: !2125)
!2133 = !DILocation(line: 365, column: 14, scope: !2125)
!2134 = !DILocation(line: 365, column: 21, scope: !2125)
!2135 = !DILocation(line: 366, column: 17, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 366, column: 9)
!2137 = !DILocation(line: 366, column: 14, scope: !2136)
!2138 = !DILocation(line: 366, column: 22, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 366, column: 9)
!2140 = !DILocation(line: 366, column: 27, scope: !2139)
!2141 = !DILocation(line: 366, column: 32, scope: !2139)
!2142 = !DILocation(line: 366, column: 25, scope: !2139)
!2143 = !DILocation(line: 366, column: 9, scope: !2136)
!2144 = !DILocation(line: 367, column: 20, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 366, column: 51)
!2146 = !DILocation(line: 367, column: 25, scope: !2145)
!2147 = !DILocation(line: 367, column: 36, scope: !2145)
!2148 = !DILocation(line: 367, column: 18, scope: !2145)
!2149 = !DILocation(line: 368, column: 13, scope: !2145)
!2150 = !DILocation(line: 368, column: 19, scope: !2145)
!2151 = !DILocation(line: 368, column: 26, scope: !2145)
!2152 = !DILocation(line: 369, column: 30, scope: !2145)
!2153 = !DILocation(line: 369, column: 36, scope: !2145)
!2154 = !DILocation(line: 369, column: 43, scope: !2145)
!2155 = !DILocation(line: 369, column: 29, scope: !2145)
!2156 = !DILocation(line: 369, column: 13, scope: !2145)
!2157 = !DILocation(line: 369, column: 19, scope: !2145)
!2158 = !DILocation(line: 369, column: 26, scope: !2145)
!2159 = !DILocation(line: 370, column: 21, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 370, column: 13)
!2161 = !DILocation(line: 370, column: 32, scope: !2160)
!2162 = !DILocation(line: 370, column: 38, scope: !2160)
!2163 = !DILocation(line: 370, column: 30, scope: !2160)
!2164 = !DILocation(line: 370, column: 18, scope: !2160)
!2165 = !DILocation(line: 370, column: 47, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 370, column: 13)
!2167 = !DILocation(line: 370, column: 52, scope: !2166)
!2168 = !DILocation(line: 370, column: 58, scope: !2166)
!2169 = !DILocation(line: 370, column: 50, scope: !2166)
!2170 = !DILocation(line: 370, column: 13, scope: !2160)
!2171 = !DILocation(line: 372, column: 17, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 371, column: 31)
!2173 = !DILocation(line: 372, column: 22, scope: !2172)
!2174 = !DILocation(line: 372, column: 29, scope: !2172)
!2175 = !DILocation(line: 373, column: 33, scope: !2172)
!2176 = !DILocation(line: 373, column: 38, scope: !2172)
!2177 = !DILocation(line: 373, column: 45, scope: !2172)
!2178 = !DILocation(line: 373, column: 32, scope: !2172)
!2179 = !DILocation(line: 373, column: 17, scope: !2172)
!2180 = !DILocation(line: 373, column: 22, scope: !2172)
!2181 = !DILocation(line: 373, column: 29, scope: !2172)
!2182 = !DILocation(line: 374, column: 13, scope: !2172)
!2183 = !DILocation(line: 371, column: 20, scope: !2166)
!2184 = !DILocation(line: 371, column: 27, scope: !2166)
!2185 = !DILocation(line: 370, column: 13, scope: !2166)
!2186 = distinct !{!2186, !2170, !2187}
!2187 = !DILocation(line: 374, column: 13, scope: !2160)
!2188 = !DILocation(line: 375, column: 9, scope: !2145)
!2189 = !DILocation(line: 366, column: 47, scope: !2139)
!2190 = !DILocation(line: 366, column: 9, scope: !2139)
!2191 = distinct !{!2191, !2143, !2192}
!2192 = !DILocation(line: 375, column: 9, scope: !2136)
!2193 = !DILocation(line: 376, column: 5, scope: !2125)
!2194 = !DILocation(line: 363, column: 43, scope: !2122)
!2195 = !DILocation(line: 363, column: 48, scope: !2122)
!2196 = !DILocation(line: 363, column: 41, scope: !2122)
!2197 = !DILocation(line: 363, column: 5, scope: !2122)
!2198 = distinct !{!2198, !2123, !2199}
!2199 = !DILocation(line: 376, column: 5, scope: !2117)
!2200 = !DILocation(line: 377, column: 18, scope: !2069)
!2201 = !DILocation(line: 377, column: 23, scope: !2069)
!2202 = !DILocation(line: 377, column: 5, scope: !2069)
!2203 = !DILocation(line: 379, column: 13, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 379, column: 5)
!2205 = !DILocation(line: 379, column: 24, scope: !2204)
!2206 = !DILocation(line: 379, column: 29, scope: !2204)
!2207 = !DILocation(line: 379, column: 22, scope: !2204)
!2208 = !DILocation(line: 379, column: 10, scope: !2204)
!2209 = !DILocation(line: 379, column: 40, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 379, column: 5)
!2211 = !DILocation(line: 379, column: 5, scope: !2204)
!2212 = !DILocation(line: 380, column: 15, scope: !2210)
!2213 = !DILocation(line: 380, column: 20, scope: !2210)
!2214 = !DILocation(line: 380, column: 12, scope: !2210)
!2215 = !DILocation(line: 380, column: 9, scope: !2210)
!2216 = !DILocation(line: 379, column: 51, scope: !2210)
!2217 = !DILocation(line: 379, column: 56, scope: !2210)
!2218 = !DILocation(line: 379, column: 49, scope: !2210)
!2219 = !DILocation(line: 379, column: 5, scope: !2210)
!2220 = distinct !{!2220, !2211, !2221}
!2221 = !DILocation(line: 380, column: 20, scope: !2204)
!2222 = !DILocation(line: 381, column: 38, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 381, column: 9)
!2224 = !DILocation(line: 381, column: 41, scope: !2223)
!2225 = !DILocation(line: 381, column: 31, scope: !2223)
!2226 = !DILocation(line: 381, column: 16, scope: !2223)
!2227 = !DILocation(line: 381, column: 14, scope: !2223)
!2228 = !DILocation(line: 382, column: 9, scope: !2223)
!2229 = !DILocation(line: 381, column: 9, scope: !2069)
!2230 = !DILocation(line: 383, column: 17, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 382, column: 18)
!2232 = !DILocation(line: 383, column: 9, scope: !2231)
!2233 = !DILocation(line: 384, column: 9, scope: !2231)
!2234 = !DILocation(line: 386, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 386, column: 5)
!2236 = !DILocation(line: 386, column: 24, scope: !2235)
!2237 = !DILocation(line: 386, column: 29, scope: !2235)
!2238 = !DILocation(line: 386, column: 22, scope: !2235)
!2239 = !DILocation(line: 386, column: 10, scope: !2235)
!2240 = !DILocation(line: 386, column: 40, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 386, column: 5)
!2242 = !DILocation(line: 386, column: 5, scope: !2235)
!2243 = !DILocation(line: 387, column: 17, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 387, column: 9)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 386, column: 64)
!2246 = !DILocation(line: 387, column: 14, scope: !2244)
!2247 = !DILocation(line: 387, column: 22, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 387, column: 9)
!2249 = !DILocation(line: 387, column: 27, scope: !2248)
!2250 = !DILocation(line: 387, column: 32, scope: !2248)
!2251 = !DILocation(line: 387, column: 25, scope: !2248)
!2252 = !DILocation(line: 387, column: 9, scope: !2244)
!2253 = !DILocation(line: 388, column: 25, scope: !2248)
!2254 = !DILocation(line: 388, column: 30, scope: !2248)
!2255 = !DILocation(line: 388, column: 41, scope: !2248)
!2256 = !DILocation(line: 388, column: 13, scope: !2248)
!2257 = !DILocation(line: 388, column: 19, scope: !2248)
!2258 = !DILocation(line: 388, column: 23, scope: !2248)
!2259 = !DILocation(line: 387, column: 47, scope: !2248)
!2260 = !DILocation(line: 387, column: 9, scope: !2248)
!2261 = distinct !{!2261, !2252, !2262}
!2262 = !DILocation(line: 388, column: 43, scope: !2244)
!2263 = !DILocation(line: 389, column: 5, scope: !2245)
!2264 = !DILocation(line: 386, column: 51, scope: !2241)
!2265 = !DILocation(line: 386, column: 56, scope: !2241)
!2266 = !DILocation(line: 386, column: 49, scope: !2241)
!2267 = !DILocation(line: 386, column: 5, scope: !2241)
!2268 = distinct !{!2268, !2242, !2269}
!2269 = !DILocation(line: 389, column: 5, scope: !2235)
!2270 = !DILocation(line: 391, column: 21, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 391, column: 9)
!2272 = !DILocation(line: 391, column: 15, scope: !2271)
!2273 = !DILocation(line: 391, column: 13, scope: !2271)
!2274 = !DILocation(line: 391, column: 34, scope: !2271)
!2275 = !DILocation(line: 391, column: 9, scope: !2069)
!2276 = !DILocation(line: 392, column: 17, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 391, column: 43)
!2278 = !DILocation(line: 392, column: 54, scope: !2277)
!2279 = !DILocation(line: 392, column: 9, scope: !2277)
!2280 = !DILocation(line: 393, column: 9, scope: !2277)
!2281 = !DILocation(line: 396, column: 14, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 396, column: 5)
!2283 = !DILocation(line: 396, column: 22, scope: !2282)
!2284 = !DILocation(line: 396, column: 10, scope: !2282)
!2285 = !DILocation(line: 396, column: 27, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 396, column: 5)
!2287 = !DILocation(line: 396, column: 32, scope: !2286)
!2288 = !DILocation(line: 396, column: 30, scope: !2286)
!2289 = !DILocation(line: 396, column: 5, scope: !2282)
!2290 = !DILocation(line: 397, column: 16, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 396, column: 42)
!2292 = !DILocation(line: 397, column: 20, scope: !2291)
!2293 = !DILocation(line: 397, column: 14, scope: !2291)
!2294 = !DILocation(line: 398, column: 17, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 398, column: 9)
!2296 = !DILocation(line: 398, column: 14, scope: !2295)
!2297 = !DILocation(line: 398, column: 22, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 398, column: 9)
!2299 = !DILocation(line: 398, column: 27, scope: !2298)
!2300 = !DILocation(line: 398, column: 33, scope: !2298)
!2301 = !DILocation(line: 398, column: 25, scope: !2298)
!2302 = !DILocation(line: 398, column: 9, scope: !2295)
!2303 = !DILocation(line: 399, column: 20, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 398, column: 49)
!2305 = !DILocation(line: 399, column: 26, scope: !2304)
!2306 = !DILocation(line: 399, column: 34, scope: !2304)
!2307 = !DILocation(line: 399, column: 17, scope: !2304)
!2308 = !DILocation(line: 400, column: 31, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 400, column: 17)
!2310 = !DILocation(line: 400, column: 36, scope: !2309)
!2311 = !DILocation(line: 400, column: 29, scope: !2309)
!2312 = !DILocation(line: 400, column: 17, scope: !2304)
!2313 = !DILocation(line: 401, column: 25, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 401, column: 17)
!2315 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 400, column: 44)
!2316 = !DILocation(line: 401, column: 22, scope: !2314)
!2317 = !DILocation(line: 401, column: 30, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 401, column: 17)
!2319 = !DILocation(line: 401, column: 35, scope: !2318)
!2320 = !DILocation(line: 401, column: 33, scope: !2318)
!2321 = !DILocation(line: 401, column: 17, scope: !2314)
!2322 = !DILocation(line: 402, column: 28, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 401, column: 45)
!2324 = !DILocation(line: 402, column: 32, scope: !2323)
!2325 = !DILocation(line: 402, column: 26, scope: !2323)
!2326 = !DILocation(line: 403, column: 29, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 403, column: 21)
!2328 = !DILocation(line: 403, column: 26, scope: !2327)
!2329 = !DILocation(line: 403, column: 34, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 403, column: 21)
!2331 = !DILocation(line: 403, column: 39, scope: !2330)
!2332 = !DILocation(line: 403, column: 45, scope: !2330)
!2333 = !DILocation(line: 403, column: 37, scope: !2330)
!2334 = !DILocation(line: 403, column: 21, scope: !2327)
!2335 = !DILocation(line: 404, column: 32, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 403, column: 61)
!2337 = !DILocation(line: 404, column: 38, scope: !2336)
!2338 = !DILocation(line: 404, column: 46, scope: !2336)
!2339 = !DILocation(line: 404, column: 29, scope: !2336)
!2340 = !DILocation(line: 405, column: 41, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 405, column: 29)
!2342 = !DILocation(line: 405, column: 46, scope: !2341)
!2343 = !DILocation(line: 405, column: 39, scope: !2341)
!2344 = !DILocation(line: 405, column: 29, scope: !2336)
!2345 = !DILocation(line: 406, column: 37, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 405, column: 54)
!2347 = !DILocation(line: 408, column: 37, scope: !2346)
!2348 = !DILocation(line: 408, column: 40, scope: !2346)
!2349 = !DILocation(line: 408, column: 45, scope: !2346)
!2350 = !DILocation(line: 408, column: 51, scope: !2346)
!2351 = !DILocation(line: 409, column: 37, scope: !2346)
!2352 = !DILocation(line: 409, column: 42, scope: !2346)
!2353 = !DILocation(line: 409, column: 54, scope: !2346)
!2354 = !DILocation(line: 409, column: 57, scope: !2346)
!2355 = !DILocation(line: 410, column: 37, scope: !2346)
!2356 = !DILocation(line: 410, column: 43, scope: !2346)
!2357 = !DILocation(line: 410, column: 54, scope: !2346)
!2358 = !DILocation(line: 410, column: 59, scope: !2346)
!2359 = !DILocation(line: 411, column: 42, scope: !2346)
!2360 = !DILocation(line: 411, column: 47, scope: !2346)
!2361 = !DILocation(line: 411, column: 37, scope: !2346)
!2362 = !DILocation(line: 406, column: 29, scope: !2346)
!2363 = !DILocation(line: 412, column: 32, scope: !2346)
!2364 = !DILocation(line: 413, column: 25, scope: !2346)
!2365 = !DILocation(line: 414, column: 21, scope: !2336)
!2366 = !DILocation(line: 403, column: 57, scope: !2330)
!2367 = !DILocation(line: 403, column: 21, scope: !2330)
!2368 = distinct !{!2368, !2334, !2369}
!2369 = !DILocation(line: 414, column: 21, scope: !2327)
!2370 = !DILocation(line: 415, column: 17, scope: !2323)
!2371 = !DILocation(line: 401, column: 41, scope: !2318)
!2372 = !DILocation(line: 401, column: 17, scope: !2318)
!2373 = distinct !{!2373, !2321, !2374}
!2374 = !DILocation(line: 415, column: 17, scope: !2314)
!2375 = !DILocation(line: 416, column: 13, scope: !2315)
!2376 = !DILocation(line: 417, column: 9, scope: !2304)
!2377 = !DILocation(line: 398, column: 45, scope: !2298)
!2378 = !DILocation(line: 398, column: 9, scope: !2298)
!2379 = distinct !{!2379, !2302, !2380}
!2380 = !DILocation(line: 417, column: 9, scope: !2295)
!2381 = !DILocation(line: 418, column: 5, scope: !2291)
!2382 = !DILocation(line: 396, column: 38, scope: !2286)
!2383 = !DILocation(line: 396, column: 5, scope: !2286)
!2384 = distinct !{!2384, !2289, !2385}
!2385 = !DILocation(line: 418, column: 5, scope: !2282)
!2386 = !DILabel(scope: !2069, name: "clean_up", file: !3, line: 420)
!2387 = !DILocation(line: 420, column: 3, scope: !2069)
!2388 = !DILocation(line: 421, column: 9, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 421, column: 9)
!2390 = !DILocation(line: 421, column: 9, scope: !2069)
!2391 = !DILocation(line: 422, column: 14, scope: !2389)
!2392 = !DILocation(line: 422, column: 9, scope: !2389)
!2393 = !DILocation(line: 424, column: 13, scope: !2069)
!2394 = !DILocation(line: 424, column: 5, scope: !2069)
!2395 = !DILocation(line: 425, column: 1, scope: !2069)
!2396 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !2397, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!10, !218, !218}
!2399 = !DILocalVariable(name: "ap1", arg: 1, scope: !2396, file: !3, line: 839, type: !218)
!2400 = !DILocation(line: 839, column: 29, scope: !2396)
!2401 = !DILocalVariable(name: "ap2", arg: 2, scope: !2396, file: !3, line: 839, type: !218)
!2402 = !DILocation(line: 839, column: 43, scope: !2396)
!2403 = !DILocalVariable(name: "dx", scope: !2396, file: !3, line: 841, type: !10)
!2404 = !DILocation(line: 841, column: 12, scope: !2396)
!2405 = !DILocalVariable(name: "dy", scope: !2396, file: !3, line: 841, type: !10)
!2406 = !DILocation(line: 841, column: 16, scope: !2396)
!2407 = !DILocalVariable(name: "dz", scope: !2396, file: !3, line: 841, type: !10)
!2408 = !DILocation(line: 841, column: 20, scope: !2396)
!2409 = !DILocation(line: 843, column: 10, scope: !2396)
!2410 = !DILocation(line: 843, column: 15, scope: !2396)
!2411 = !DILocation(line: 843, column: 26, scope: !2396)
!2412 = !DILocation(line: 843, column: 31, scope: !2396)
!2413 = !DILocation(line: 843, column: 24, scope: !2396)
!2414 = !DILocation(line: 843, column: 8, scope: !2396)
!2415 = !DILocation(line: 844, column: 10, scope: !2396)
!2416 = !DILocation(line: 844, column: 15, scope: !2396)
!2417 = !DILocation(line: 844, column: 26, scope: !2396)
!2418 = !DILocation(line: 844, column: 31, scope: !2396)
!2419 = !DILocation(line: 844, column: 24, scope: !2396)
!2420 = !DILocation(line: 844, column: 8, scope: !2396)
!2421 = !DILocation(line: 845, column: 10, scope: !2396)
!2422 = !DILocation(line: 845, column: 15, scope: !2396)
!2423 = !DILocation(line: 845, column: 26, scope: !2396)
!2424 = !DILocation(line: 845, column: 31, scope: !2396)
!2425 = !DILocation(line: 845, column: 24, scope: !2396)
!2426 = !DILocation(line: 845, column: 8, scope: !2396)
!2427 = !DILocation(line: 846, column: 18, scope: !2396)
!2428 = !DILocation(line: 846, column: 23, scope: !2396)
!2429 = !DILocation(line: 846, column: 21, scope: !2396)
!2430 = !DILocation(line: 846, column: 28, scope: !2396)
!2431 = !DILocation(line: 846, column: 33, scope: !2396)
!2432 = !DILocation(line: 846, column: 31, scope: !2396)
!2433 = !DILocation(line: 846, column: 26, scope: !2396)
!2434 = !DILocation(line: 846, column: 38, scope: !2396)
!2435 = !DILocation(line: 846, column: 43, scope: !2396)
!2436 = !DILocation(line: 846, column: 41, scope: !2396)
!2437 = !DILocation(line: 846, column: 36, scope: !2396)
!2438 = !DILocation(line: 846, column: 13, scope: !2396)
!2439 = !DILocation(line: 846, column: 5, scope: !2396)
!2440 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !2441, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !259)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!36, !13, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !213)
!2445 = !DILocalVariable(name: "fname", arg: 1, scope: !2440, file: !3, line: 427, type: !13)
!2446 = !DILocation(line: 427, column: 20, scope: !2440)
!2447 = !DILocalVariable(name: "mat", arg: 2, scope: !2440, file: !3, line: 427, type: !2443)
!2448 = !DILocation(line: 427, column: 38, scope: !2440)
!2449 = !DILocalVariable(name: "fp", scope: !2440, file: !3, line: 429, type: !283)
!2450 = !DILocation(line: 429, column: 11, scope: !2440)
!2451 = !DILocalVariable(name: "i", scope: !2440, file: !3, line: 430, type: !36)
!2452 = !DILocation(line: 430, column: 9, scope: !2440)
!2453 = !DILocalVariable(name: "j", scope: !2440, file: !3, line: 430, type: !36)
!2454 = !DILocation(line: 430, column: 12, scope: !2440)
!2455 = !DILocalVariable(name: "err", scope: !2440, file: !3, line: 431, type: !36)
!2456 = !DILocation(line: 431, column: 9, scope: !2440)
!2457 = !DILocation(line: 433, column: 9, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 433, column: 9)
!2459 = !DILocation(line: 433, column: 15, scope: !2458)
!2460 = !DILocation(line: 433, column: 23, scope: !2458)
!2461 = !DILocation(line: 433, column: 27, scope: !2458)
!2462 = !DILocation(line: 433, column: 26, scope: !2458)
!2463 = !DILocation(line: 433, column: 33, scope: !2458)
!2464 = !DILocation(line: 433, column: 9, scope: !2440)
!2465 = !DILocation(line: 434, column: 17, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 433, column: 42)
!2467 = !DILocation(line: 434, column: 9, scope: !2466)
!2468 = !DILocation(line: 435, column: 13, scope: !2466)
!2469 = !DILocation(line: 436, column: 9, scope: !2466)
!2470 = !DILocation(line: 437, column: 24, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 437, column: 16)
!2472 = !DILocation(line: 437, column: 17, scope: !2471)
!2473 = !DILocation(line: 437, column: 16, scope: !2458)
!2474 = !DILocation(line: 438, column: 14, scope: !2471)
!2475 = !DILocation(line: 438, column: 12, scope: !2471)
!2476 = !DILocation(line: 438, column: 9, scope: !2471)
!2477 = !DILocation(line: 439, column: 26, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 439, column: 14)
!2479 = !DILocation(line: 439, column: 20, scope: !2478)
!2480 = !DILocation(line: 439, column: 18, scope: !2478)
!2481 = !DILocation(line: 439, column: 39, scope: !2478)
!2482 = !DILocation(line: 439, column: 14, scope: !2471)
!2483 = !DILocation(line: 440, column: 17, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 439, column: 48)
!2485 = !DILocation(line: 440, column: 61, scope: !2484)
!2486 = !DILocation(line: 440, column: 9, scope: !2484)
!2487 = !DILocation(line: 441, column: 13, scope: !2484)
!2488 = !DILocation(line: 442, column: 9, scope: !2484)
!2489 = !DILocation(line: 445, column: 12, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 445, column: 5)
!2491 = !DILocation(line: 445, column: 10, scope: !2490)
!2492 = !DILocation(line: 445, column: 17, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 445, column: 5)
!2494 = !DILocation(line: 445, column: 19, scope: !2493)
!2495 = !DILocation(line: 445, column: 5, scope: !2490)
!2496 = !DILocation(line: 446, column: 16, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 446, column: 9)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 445, column: 29)
!2499 = !DILocation(line: 446, column: 14, scope: !2497)
!2500 = !DILocation(line: 446, column: 21, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 446, column: 9)
!2502 = !DILocation(line: 446, column: 23, scope: !2501)
!2503 = !DILocation(line: 446, column: 9, scope: !2497)
!2504 = !DILocation(line: 447, column: 21, scope: !2501)
!2505 = !DILocation(line: 447, column: 32, scope: !2501)
!2506 = !DILocation(line: 447, column: 36, scope: !2501)
!2507 = !DILocation(line: 447, column: 39, scope: !2501)
!2508 = !DILocation(line: 447, column: 13, scope: !2501)
!2509 = !DILocation(line: 446, column: 29, scope: !2501)
!2510 = !DILocation(line: 446, column: 9, scope: !2501)
!2511 = distinct !{!2511, !2503, !2512}
!2512 = !DILocation(line: 447, column: 41, scope: !2497)
!2513 = !DILocation(line: 448, column: 17, scope: !2498)
!2514 = !DILocation(line: 448, column: 9, scope: !2498)
!2515 = !DILocation(line: 449, column: 5, scope: !2498)
!2516 = !DILocation(line: 445, column: 25, scope: !2493)
!2517 = !DILocation(line: 445, column: 5, scope: !2493)
!2518 = distinct !{!2518, !2495, !2519}
!2519 = !DILocation(line: 449, column: 5, scope: !2490)
!2520 = !DILabel(scope: !2440, name: "CLEAN_UP", file: !3, line: 451)
!2521 = !DILocation(line: 451, column: 3, scope: !2440)
!2522 = !DILocation(line: 453, column: 9, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 453, column: 9)
!2524 = !DILocation(line: 453, column: 12, scope: !2523)
!2525 = !DILocation(line: 453, column: 20, scope: !2523)
!2526 = !DILocation(line: 453, column: 23, scope: !2523)
!2527 = !DILocation(line: 453, column: 29, scope: !2523)
!2528 = !DILocation(line: 453, column: 26, scope: !2523)
!2529 = !DILocation(line: 453, column: 9, scope: !2440)
!2530 = !DILocation(line: 454, column: 16, scope: !2523)
!2531 = !DILocation(line: 454, column: 9, scope: !2523)
!2532 = !DILocation(line: 455, column: 12, scope: !2440)
!2533 = !DILocation(line: 455, column: 5, scope: !2440)
!2534 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !257, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!2535 = !DILocation(line: 753, column: 5, scope: !2534)
!2536 = !DILocation(line: 754, column: 13, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 754, column: 9)
!2538 = !DILocation(line: 754, column: 23, scope: !2537)
!2539 = !DILocation(line: 754, column: 9, scope: !2534)
!2540 = !DILocation(line: 755, column: 34, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 754, column: 32)
!2542 = !DILocation(line: 755, column: 23, scope: !2541)
!2543 = !DILocation(line: 756, column: 17, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 756, column: 13)
!2545 = !DILocation(line: 756, column: 27, scope: !2544)
!2546 = !DILocation(line: 756, column: 13, scope: !2541)
!2547 = !DILocation(line: 757, column: 21, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 756, column: 36)
!2549 = !DILocation(line: 757, column: 13, scope: !2548)
!2550 = !DILocation(line: 758, column: 13, scope: !2548)
!2551 = !DILocation(line: 760, column: 5, scope: !2541)
!2552 = !DILocation(line: 761, column: 13, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 761, column: 9)
!2554 = !DILocation(line: 761, column: 21, scope: !2553)
!2555 = !DILocation(line: 761, column: 9, scope: !2534)
!2556 = !DILocation(line: 762, column: 32, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 761, column: 30)
!2558 = !DILocation(line: 762, column: 21, scope: !2557)
!2559 = !DILocation(line: 763, column: 17, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 763, column: 13)
!2561 = !DILocation(line: 763, column: 25, scope: !2560)
!2562 = !DILocation(line: 763, column: 13, scope: !2557)
!2563 = !DILocation(line: 764, column: 21, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 763, column: 34)
!2565 = !DILocation(line: 764, column: 13, scope: !2564)
!2566 = !DILocation(line: 765, column: 13, scope: !2564)
!2567 = !DILocation(line: 767, column: 5, scope: !2557)
!2568 = !DILocation(line: 768, column: 20, scope: !2534)
!2569 = !DILocation(line: 768, column: 18, scope: !2534)
!2570 = !DILocation(line: 769, column: 17, scope: !2534)
!2571 = !DILocation(line: 770, column: 1, scope: !2534)
!2572 = !DILocalVariable(name: "a", scope: !256, file: !3, line: 775, type: !36)
!2573 = !DILocation(line: 775, column: 9, scope: !256)
!2574 = !DILocalVariable(name: "ap", scope: !256, file: !3, line: 776, type: !218)
!2575 = !DILocation(line: 776, column: 13, scope: !256)
!2576 = !DILocation(line: 778, column: 10, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !256, file: !3, line: 778, column: 9)
!2578 = !DILocation(line: 778, column: 9, scope: !256)
!2579 = !DILocation(line: 779, column: 9, scope: !2577)
!2580 = !DILocation(line: 780, column: 13, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !256, file: !3, line: 780, column: 5)
!2582 = !DILocation(line: 780, column: 23, scope: !2581)
!2583 = !DILocation(line: 780, column: 10, scope: !2581)
!2584 = !DILocation(line: 780, column: 28, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 780, column: 5)
!2586 = !DILocation(line: 780, column: 30, scope: !2585)
!2587 = !DILocation(line: 780, column: 5, scope: !2581)
!2588 = !DILocation(line: 781, column: 35, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 780, column: 54)
!2590 = !DILocation(line: 781, column: 9, scope: !2589)
!2591 = !DILocation(line: 781, column: 13, scope: !2589)
!2592 = !DILocation(line: 781, column: 24, scope: !2589)
!2593 = !DILocation(line: 782, column: 13, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 782, column: 13)
!2595 = !DILocation(line: 782, column: 17, scope: !2594)
!2596 = !DILocation(line: 782, column: 28, scope: !2594)
!2597 = !DILocation(line: 782, column: 13, scope: !2589)
!2598 = !DILocation(line: 783, column: 21, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 782, column: 37)
!2600 = !DILocation(line: 783, column: 13, scope: !2599)
!2601 = !DILocation(line: 784, column: 13, scope: !2599)
!2602 = !DILocation(line: 786, column: 10, scope: !2589)
!2603 = !DILocation(line: 786, column: 14, scope: !2589)
!2604 = !DILocation(line: 786, column: 25, scope: !2589)
!2605 = !DILocation(line: 787, column: 9, scope: !2589)
!2606 = !DILocation(line: 787, column: 13, scope: !2589)
!2607 = !DILocation(line: 787, column: 24, scope: !2589)
!2608 = !DILocation(line: 788, column: 9, scope: !2589)
!2609 = !DILocation(line: 788, column: 13, scope: !2589)
!2610 = !DILocation(line: 788, column: 23, scope: !2589)
!2611 = !DILocation(line: 789, column: 9, scope: !2589)
!2612 = !DILocation(line: 789, column: 13, scope: !2589)
!2613 = !DILocation(line: 789, column: 24, scope: !2589)
!2614 = !DILocation(line: 790, column: 5, scope: !2589)
!2615 = !DILocation(line: 780, column: 44, scope: !2585)
!2616 = !DILocation(line: 780, column: 50, scope: !2585)
!2617 = !DILocation(line: 780, column: 5, scope: !2585)
!2618 = distinct !{!2618, !2587, !2619}
!2619 = !DILocation(line: 790, column: 5, scope: !2581)
!2620 = !DILocation(line: 791, column: 10, scope: !256)
!2621 = !DILocation(line: 792, column: 1, scope: !256)
!2622 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2623, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !38}
!2625 = !DILocalVariable(name: "res", arg: 1, scope: !2622, file: !3, line: 794, type: !38)
!2626 = !DILocation(line: 794, column: 35, scope: !2622)
!2627 = !DILocalVariable(name: "a1", scope: !2622, file: !3, line: 796, type: !36)
!2628 = !DILocation(line: 796, column: 9, scope: !2622)
!2629 = !DILocalVariable(name: "a2", scope: !2622, file: !3, line: 796, type: !36)
!2630 = !DILocation(line: 796, column: 13, scope: !2622)
!2631 = !DILocalVariable(name: "ap1", scope: !2622, file: !3, line: 797, type: !218)
!2632 = !DILocation(line: 797, column: 13, scope: !2622)
!2633 = !DILocalVariable(name: "ap2", scope: !2622, file: !3, line: 797, type: !218)
!2634 = !DILocation(line: 797, column: 19, scope: !2622)
!2635 = !DILocalVariable(name: "ih1", scope: !2622, file: !3, line: 798, type: !36)
!2636 = !DILocation(line: 798, column: 9, scope: !2622)
!2637 = !DILocalVariable(name: "ih2", scope: !2622, file: !3, line: 798, type: !36)
!2638 = !DILocation(line: 798, column: 14, scope: !2622)
!2639 = !DILocalVariable(name: "d", scope: !2622, file: !3, line: 799, type: !10)
!2640 = !DILocation(line: 799, column: 12, scope: !2622)
!2641 = !DILocation(line: 801, column: 13, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 801, column: 5)
!2643 = !DILocation(line: 801, column: 10, scope: !2642)
!2644 = !DILocation(line: 801, column: 18, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 801, column: 5)
!2646 = !DILocation(line: 801, column: 23, scope: !2645)
!2647 = !DILocation(line: 801, column: 28, scope: !2645)
!2648 = !DILocation(line: 801, column: 21, scope: !2645)
!2649 = !DILocation(line: 801, column: 5, scope: !2642)
!2650 = !DILocation(line: 802, column: 16, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 801, column: 44)
!2652 = !DILocation(line: 802, column: 21, scope: !2651)
!2653 = !DILocation(line: 802, column: 29, scope: !2651)
!2654 = !DILocation(line: 802, column: 13, scope: !2651)
!2655 = !DILocation(line: 803, column: 9, scope: !2651)
!2656 = !DILocation(line: 803, column: 14, scope: !2651)
!2657 = !DILocation(line: 803, column: 25, scope: !2651)
!2658 = !DILocation(line: 804, column: 5, scope: !2651)
!2659 = !DILocation(line: 801, column: 40, scope: !2645)
!2660 = !DILocation(line: 801, column: 5, scope: !2645)
!2661 = distinct !{!2661, !2649, !2662}
!2662 = !DILocation(line: 804, column: 5, scope: !2642)
!2663 = !DILocation(line: 806, column: 13, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 806, column: 5)
!2665 = !DILocation(line: 806, column: 10, scope: !2664)
!2666 = !DILocation(line: 806, column: 18, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 806, column: 5)
!2668 = !DILocation(line: 806, column: 23, scope: !2667)
!2669 = !DILocation(line: 806, column: 28, scope: !2667)
!2670 = !DILocation(line: 806, column: 37, scope: !2667)
!2671 = !DILocation(line: 806, column: 21, scope: !2667)
!2672 = !DILocation(line: 806, column: 5, scope: !2664)
!2673 = !DILocation(line: 807, column: 16, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 806, column: 48)
!2675 = !DILocation(line: 807, column: 21, scope: !2674)
!2676 = !DILocation(line: 807, column: 29, scope: !2674)
!2677 = !DILocation(line: 807, column: 13, scope: !2674)
!2678 = !DILocation(line: 808, column: 13, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 808, column: 13)
!2680 = !DILocation(line: 808, column: 13, scope: !2674)
!2681 = !DILocation(line: 809, column: 19, scope: !2679)
!2682 = !DILocation(line: 809, column: 24, scope: !2679)
!2683 = !DILocation(line: 809, column: 38, scope: !2679)
!2684 = !DILocation(line: 809, column: 45, scope: !2679)
!2685 = !DILocation(line: 809, column: 48, scope: !2679)
!2686 = !DILocation(line: 809, column: 53, scope: !2679)
!2687 = !DILocation(line: 809, column: 67, scope: !2679)
!2688 = !DILocation(line: 809, column: 17, scope: !2679)
!2689 = !DILocation(line: 809, column: 13, scope: !2679)
!2690 = !DILocation(line: 811, column: 20, scope: !2679)
!2691 = !DILocation(line: 811, column: 25, scope: !2679)
!2692 = !DILocation(line: 811, column: 19, scope: !2679)
!2693 = !DILocation(line: 811, column: 36, scope: !2679)
!2694 = !DILocation(line: 811, column: 43, scope: !2679)
!2695 = !DILocation(line: 811, column: 47, scope: !2679)
!2696 = !DILocation(line: 811, column: 52, scope: !2679)
!2697 = !DILocation(line: 811, column: 46, scope: !2679)
!2698 = !DILocation(line: 811, column: 63, scope: !2679)
!2699 = !DILocation(line: 811, column: 17, scope: !2679)
!2700 = !DILocation(line: 812, column: 19, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 812, column: 9)
!2702 = !DILocation(line: 812, column: 22, scope: !2701)
!2703 = !DILocation(line: 812, column: 17, scope: !2701)
!2704 = !DILocation(line: 812, column: 14, scope: !2701)
!2705 = !DILocation(line: 812, column: 27, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 812, column: 9)
!2707 = !DILocation(line: 812, column: 32, scope: !2706)
!2708 = !DILocation(line: 812, column: 37, scope: !2706)
!2709 = !DILocation(line: 812, column: 30, scope: !2706)
!2710 = !DILocation(line: 812, column: 9, scope: !2701)
!2711 = !DILocation(line: 813, column: 20, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 812, column: 53)
!2713 = !DILocation(line: 813, column: 25, scope: !2712)
!2714 = !DILocation(line: 813, column: 33, scope: !2712)
!2715 = !DILocation(line: 813, column: 17, scope: !2712)
!2716 = !DILocation(line: 814, column: 17, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 814, column: 17)
!2718 = !DILocation(line: 814, column: 17, scope: !2712)
!2719 = !DILocation(line: 815, column: 23, scope: !2717)
!2720 = !DILocation(line: 815, column: 28, scope: !2717)
!2721 = !DILocation(line: 815, column: 42, scope: !2717)
!2722 = !DILocation(line: 815, column: 49, scope: !2717)
!2723 = !DILocation(line: 816, column: 21, scope: !2717)
!2724 = !DILocation(line: 816, column: 26, scope: !2717)
!2725 = !DILocation(line: 816, column: 40, scope: !2717)
!2726 = !DILocation(line: 815, column: 21, scope: !2717)
!2727 = !DILocation(line: 815, column: 17, scope: !2717)
!2728 = !DILocation(line: 818, column: 24, scope: !2717)
!2729 = !DILocation(line: 818, column: 29, scope: !2717)
!2730 = !DILocation(line: 818, column: 23, scope: !2717)
!2731 = !DILocation(line: 818, column: 40, scope: !2717)
!2732 = !DILocation(line: 818, column: 47, scope: !2717)
!2733 = !DILocation(line: 818, column: 51, scope: !2717)
!2734 = !DILocation(line: 818, column: 56, scope: !2717)
!2735 = !DILocation(line: 818, column: 50, scope: !2717)
!2736 = !DILocation(line: 818, column: 67, scope: !2717)
!2737 = !DILocation(line: 818, column: 21, scope: !2717)
!2738 = !DILocation(line: 819, column: 22, scope: !2712)
!2739 = !DILocation(line: 819, column: 27, scope: !2712)
!2740 = !DILocation(line: 819, column: 17, scope: !2712)
!2741 = !DILocation(line: 819, column: 15, scope: !2712)
!2742 = !DILocation(line: 820, column: 17, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 820, column: 17)
!2744 = !DILocation(line: 820, column: 21, scope: !2743)
!2745 = !DILocation(line: 820, column: 24, scope: !2743)
!2746 = !DILocation(line: 820, column: 17, scope: !2712)
!2747 = !DILocation(line: 821, column: 21, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 821, column: 21)
!2749 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 820, column: 29)
!2750 = !DILocation(line: 821, column: 23, scope: !2748)
!2751 = !DILocation(line: 821, column: 21, scope: !2749)
!2752 = !DILocation(line: 822, column: 25, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 822, column: 25)
!2754 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 821, column: 37)
!2755 = !DILocation(line: 822, column: 30, scope: !2753)
!2756 = !DILocation(line: 822, column: 41, scope: !2753)
!2757 = !DILocation(line: 822, column: 58, scope: !2753)
!2758 = !DILocation(line: 823, column: 25, scope: !2753)
!2759 = !DILocation(line: 823, column: 30, scope: !2753)
!2760 = !DILocation(line: 823, column: 41, scope: !2753)
!2761 = !DILocation(line: 822, column: 25, scope: !2754)
!2762 = !DILocation(line: 824, column: 61, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 823, column: 59)
!2764 = !DILocation(line: 824, column: 25, scope: !2763)
!2765 = !DILocation(line: 824, column: 30, scope: !2763)
!2766 = !DILocation(line: 824, column: 40, scope: !2763)
!2767 = !DILocation(line: 824, column: 45, scope: !2763)
!2768 = !DILocation(line: 824, column: 55, scope: !2763)
!2769 = !DILocation(line: 824, column: 59, scope: !2763)
!2770 = !DILocation(line: 825, column: 61, scope: !2763)
!2771 = !DILocation(line: 825, column: 25, scope: !2763)
!2772 = !DILocation(line: 825, column: 30, scope: !2763)
!2773 = !DILocation(line: 825, column: 40, scope: !2763)
!2774 = !DILocation(line: 825, column: 45, scope: !2763)
!2775 = !DILocation(line: 825, column: 55, scope: !2763)
!2776 = !DILocation(line: 825, column: 59, scope: !2763)
!2777 = !DILocation(line: 826, column: 21, scope: !2763)
!2778 = !DILocation(line: 827, column: 17, scope: !2754)
!2779 = !DILocation(line: 828, column: 13, scope: !2749)
!2780 = !DILocation(line: 828, column: 24, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 828, column: 24)
!2782 = !DILocation(line: 828, column: 26, scope: !2781)
!2783 = !DILocation(line: 828, column: 24, scope: !2743)
!2784 = !DILocation(line: 829, column: 21, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 829, column: 21)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 828, column: 39)
!2787 = !DILocation(line: 829, column: 26, scope: !2785)
!2788 = !DILocation(line: 829, column: 37, scope: !2785)
!2789 = !DILocation(line: 829, column: 54, scope: !2785)
!2790 = !DILocation(line: 830, column: 21, scope: !2785)
!2791 = !DILocation(line: 830, column: 26, scope: !2785)
!2792 = !DILocation(line: 830, column: 37, scope: !2785)
!2793 = !DILocation(line: 829, column: 21, scope: !2786)
!2794 = !DILocation(line: 831, column: 57, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 830, column: 55)
!2796 = !DILocation(line: 831, column: 21, scope: !2795)
!2797 = !DILocation(line: 831, column: 26, scope: !2795)
!2798 = !DILocation(line: 831, column: 36, scope: !2795)
!2799 = !DILocation(line: 831, column: 41, scope: !2795)
!2800 = !DILocation(line: 831, column: 51, scope: !2795)
!2801 = !DILocation(line: 831, column: 55, scope: !2795)
!2802 = !DILocation(line: 832, column: 57, scope: !2795)
!2803 = !DILocation(line: 832, column: 21, scope: !2795)
!2804 = !DILocation(line: 832, column: 26, scope: !2795)
!2805 = !DILocation(line: 832, column: 36, scope: !2795)
!2806 = !DILocation(line: 832, column: 41, scope: !2795)
!2807 = !DILocation(line: 832, column: 51, scope: !2795)
!2808 = !DILocation(line: 832, column: 55, scope: !2795)
!2809 = !DILocation(line: 833, column: 17, scope: !2795)
!2810 = !DILocation(line: 834, column: 13, scope: !2786)
!2811 = !DILocation(line: 835, column: 9, scope: !2712)
!2812 = !DILocation(line: 812, column: 49, scope: !2706)
!2813 = !DILocation(line: 812, column: 9, scope: !2706)
!2814 = distinct !{!2814, !2710, !2815}
!2815 = !DILocation(line: 835, column: 9, scope: !2701)
!2816 = !DILocation(line: 836, column: 5, scope: !2674)
!2817 = !DILocation(line: 806, column: 44, scope: !2667)
!2818 = !DILocation(line: 806, column: 5, scope: !2667)
!2819 = distinct !{!2819, !2672, !2820}
!2820 = !DILocation(line: 836, column: 5, scope: !2664)
!2821 = !DILocation(line: 837, column: 1, scope: !2622)
!2822 = distinct !DISubprogram(name: "isnewres", scope: !3, file: !3, line: 744, type: !2823, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!36, !13, !13, !36, !36}
!2825 = !DILocalVariable(name: "l_rname", arg: 1, scope: !2822, file: !3, line: 744, type: !13)
!2826 = !DILocation(line: 744, column: 26, scope: !2822)
!2827 = !DILocalVariable(name: "rname", arg: 2, scope: !2822, file: !3, line: 744, type: !13)
!2828 = !DILocation(line: 744, column: 42, scope: !2822)
!2829 = !DILocalVariable(name: "l_rnum", arg: 3, scope: !2822, file: !3, line: 744, type: !36)
!2830 = !DILocation(line: 744, column: 55, scope: !2822)
!2831 = !DILocalVariable(name: "rnum", arg: 4, scope: !2822, file: !3, line: 744, type: !36)
!2832 = !DILocation(line: 744, column: 67, scope: !2822)
!2833 = !DILocation(line: 747, column: 20, scope: !2822)
!2834 = !DILocation(line: 747, column: 29, scope: !2822)
!2835 = !DILocation(line: 747, column: 13, scope: !2822)
!2836 = !DILocation(line: 747, column: 36, scope: !2822)
!2837 = !DILocation(line: 747, column: 39, scope: !2822)
!2838 = !DILocation(line: 747, column: 49, scope: !2822)
!2839 = !DILocation(line: 747, column: 46, scope: !2822)
!2840 = !DILocation(line: 747, column: 5, scope: !2822)
!2841 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !2842, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!246, !36, !36, !276}
!2844 = !DILocalVariable(name: "nocid", arg: 1, scope: !2841, file: !3, line: 1021, type: !36)
!2845 = !DILocation(line: 1021, column: 27, scope: !2841)
!2846 = !DILocalVariable(name: "allcid", arg: 2, scope: !2841, file: !3, line: 1021, type: !36)
!2847 = !DILocation(line: 1021, column: 38, scope: !2841)
!2848 = !DILocalVariable(name: "mol", arg: 3, scope: !2841, file: !3, line: 1021, type: !276)
!2849 = !DILocation(line: 1021, column: 59, scope: !2841)
!2850 = !DILocalVariable(name: "cid", scope: !2841, file: !3, line: 1023, type: !246)
!2851 = !DILocation(line: 1023, column: 12, scope: !2841)
!2852 = !DILocalVariable(name: "c", scope: !2841, file: !3, line: 1024, type: !36)
!2853 = !DILocation(line: 1024, column: 9, scope: !2841)
!2854 = !DILocalVariable(name: "sp", scope: !2841, file: !3, line: 1025, type: !73)
!2855 = !DILocation(line: 1025, column: 15, scope: !2841)
!2856 = !DILocalVariable(name: "err", scope: !2841, file: !3, line: 1026, type: !36)
!2857 = !DILocation(line: 1026, column: 9, scope: !2841)
!2858 = !DILocation(line: 1028, column: 9, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 1028, column: 9)
!2860 = !DILocation(line: 1028, column: 9, scope: !2841)
!2861 = !DILocation(line: 1029, column: 9, scope: !2859)
!2862 = !DILocation(line: 1031, column: 21, scope: !2841)
!2863 = !DILocation(line: 1031, column: 11, scope: !2841)
!2864 = !DILocation(line: 1031, column: 9, scope: !2841)
!2865 = !DILocation(line: 1032, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 1032, column: 9)
!2867 = !DILocation(line: 1032, column: 13, scope: !2866)
!2868 = !DILocation(line: 1032, column: 9, scope: !2841)
!2869 = !DILocation(line: 1033, column: 17, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1032, column: 22)
!2871 = !DILocation(line: 1033, column: 9, scope: !2870)
!2872 = !DILocation(line: 1034, column: 13, scope: !2870)
!2873 = !DILocation(line: 1035, column: 9, scope: !2870)
!2874 = !DILocation(line: 1037, column: 28, scope: !2841)
!2875 = !DILocation(line: 1037, column: 5, scope: !2841)
!2876 = !DILocation(line: 1037, column: 10, scope: !2841)
!2877 = !DILocation(line: 1037, column: 17, scope: !2841)
!2878 = !DILocation(line: 1038, column: 9, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 1038, column: 9)
!2880 = !DILocation(line: 1038, column: 14, scope: !2879)
!2881 = !DILocation(line: 1038, column: 21, scope: !2879)
!2882 = !DILocation(line: 1038, column: 9, scope: !2841)
!2883 = !DILocation(line: 1039, column: 17, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 1038, column: 30)
!2885 = !DILocation(line: 1039, column: 9, scope: !2884)
!2886 = !DILocation(line: 1040, column: 13, scope: !2884)
!2887 = !DILocation(line: 1041, column: 9, scope: !2884)
!2888 = !DILocation(line: 1043, column: 5, scope: !2841)
!2889 = !DILocation(line: 1043, column: 10, scope: !2841)
!2890 = !DILocation(line: 1043, column: 17, scope: !2841)
!2891 = !DILocation(line: 1044, column: 5, scope: !2841)
!2892 = !DILocation(line: 1044, column: 10, scope: !2841)
!2893 = !DILocation(line: 1044, column: 17, scope: !2841)
!2894 = !DILocation(line: 1045, column: 14, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 1045, column: 5)
!2896 = !DILocation(line: 1045, column: 19, scope: !2895)
!2897 = !DILocation(line: 1045, column: 12, scope: !2895)
!2898 = !DILocation(line: 1045, column: 10, scope: !2895)
!2899 = !DILocation(line: 1045, column: 27, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 1045, column: 5)
!2901 = !DILocation(line: 1045, column: 32, scope: !2900)
!2902 = !DILocation(line: 1045, column: 37, scope: !2900)
!2903 = !DILocation(line: 1045, column: 29, scope: !2900)
!2904 = !DILocation(line: 1045, column: 5, scope: !2895)
!2905 = !DILocation(line: 1046, column: 9, scope: !2900)
!2906 = !DILocation(line: 1046, column: 14, scope: !2900)
!2907 = !DILocation(line: 1046, column: 21, scope: !2900)
!2908 = !DILocation(line: 1046, column: 24, scope: !2900)
!2909 = !DILocation(line: 1045, column: 46, scope: !2900)
!2910 = !DILocation(line: 1045, column: 5, scope: !2900)
!2911 = distinct !{!2911, !2904, !2912}
!2912 = !DILocation(line: 1046, column: 26, scope: !2895)
!2913 = !DILocation(line: 1048, column: 9, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 1048, column: 9)
!2915 = !DILocation(line: 1048, column: 9, scope: !2841)
!2916 = !DILocation(line: 1049, column: 13, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1049, column: 13)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1048, column: 17)
!2919 = !DILocation(line: 1049, column: 17, scope: !2917)
!2920 = !DILocation(line: 1049, column: 13, scope: !2918)
!2921 = !DILocation(line: 1050, column: 21, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1049, column: 26)
!2923 = !DILocation(line: 1050, column: 13, scope: !2922)
!2924 = !DILocation(line: 1051, column: 17, scope: !2922)
!2925 = !DILocation(line: 1052, column: 13, scope: !2922)
!2926 = !DILocation(line: 1054, column: 19, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1054, column: 9)
!2928 = !DILocation(line: 1054, column: 24, scope: !2927)
!2929 = !DILocation(line: 1054, column: 17, scope: !2927)
!2930 = !DILocation(line: 1054, column: 14, scope: !2927)
!2931 = !DILocation(line: 1054, column: 35, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1054, column: 9)
!2933 = !DILocation(line: 1054, column: 9, scope: !2927)
!2934 = !DILocation(line: 1055, column: 24, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 1055, column: 17)
!2936 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1054, column: 56)
!2937 = !DILocation(line: 1055, column: 28, scope: !2935)
!2938 = !DILocation(line: 1055, column: 17, scope: !2935)
!2939 = !DILocation(line: 1055, column: 42, scope: !2935)
!2940 = !DILocation(line: 1055, column: 17, scope: !2936)
!2941 = !DILocation(line: 1056, column: 22, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 1055, column: 48)
!2943 = !DILocation(line: 1056, column: 26, scope: !2942)
!2944 = !DILocation(line: 1056, column: 21, scope: !2942)
!2945 = !DILocation(line: 1056, column: 19, scope: !2942)
!2946 = !DILocation(line: 1057, column: 21, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1057, column: 21)
!2948 = !DILocation(line: 1057, column: 23, scope: !2947)
!2949 = !DILocation(line: 1057, column: 30, scope: !2947)
!2950 = !DILocation(line: 1057, column: 33, scope: !2947)
!2951 = !DILocation(line: 1057, column: 35, scope: !2947)
!2952 = !DILocation(line: 1057, column: 21, scope: !2942)
!2953 = !DILocation(line: 1058, column: 21, scope: !2947)
!2954 = !DILocation(line: 1058, column: 26, scope: !2947)
!2955 = !DILocation(line: 1058, column: 33, scope: !2947)
!2956 = !DILocation(line: 1058, column: 36, scope: !2947)
!2957 = !DILocation(line: 1059, column: 13, scope: !2942)
!2958 = !DILocation(line: 1060, column: 9, scope: !2936)
!2959 = !DILocation(line: 1054, column: 44, scope: !2932)
!2960 = !DILocation(line: 1054, column: 48, scope: !2932)
!2961 = !DILocation(line: 1054, column: 42, scope: !2932)
!2962 = !DILocation(line: 1054, column: 9, scope: !2932)
!2963 = distinct !{!2963, !2933, !2964}
!2964 = !DILocation(line: 1060, column: 9, scope: !2927)
!2965 = !DILocation(line: 1061, column: 9, scope: !2918)
!2966 = !DILocation(line: 1061, column: 16, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 1061, column: 9)
!2968 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1061, column: 9)
!2969 = !DILocation(line: 1061, column: 21, scope: !2967)
!2970 = !DILocation(line: 1061, column: 31, scope: !2967)
!2971 = !DILocation(line: 1061, column: 36, scope: !2967)
!2972 = !DILocation(line: 1061, column: 28, scope: !2967)
!2973 = !DILocation(line: 1061, column: 9, scope: !2968)
!2974 = !DILocation(line: 1062, column: 18, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 1062, column: 17)
!2976 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 1061, column: 59)
!2977 = !DILocation(line: 1062, column: 23, scope: !2975)
!2978 = !DILocation(line: 1062, column: 30, scope: !2975)
!2979 = !DILocation(line: 1062, column: 35, scope: !2975)
!2980 = !DILocation(line: 1062, column: 17, scope: !2976)
!2981 = !DILocation(line: 1063, column: 17, scope: !2975)
!2982 = !DILocation(line: 1064, column: 9, scope: !2976)
!2983 = !DILocation(line: 1061, column: 44, scope: !2967)
!2984 = !DILocation(line: 1061, column: 49, scope: !2967)
!2985 = !DILocation(line: 1061, column: 55, scope: !2967)
!2986 = !DILocation(line: 1061, column: 9, scope: !2967)
!2987 = distinct !{!2987, !2973, !2988}
!2988 = !DILocation(line: 1064, column: 9, scope: !2968)
!2989 = !DILocation(line: 1065, column: 5, scope: !2918)
!2990 = !DILabel(scope: !2841, name: "CLEAN_UP", file: !3, line: 1067)
!2991 = !DILocation(line: 1067, column: 3, scope: !2841)
!2992 = !DILocation(line: 1069, column: 9, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 1069, column: 9)
!2994 = !DILocation(line: 1069, column: 9, scope: !2841)
!2995 = !DILocation(line: 1070, column: 17, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 1069, column: 14)
!2997 = !DILocation(line: 1070, column: 9, scope: !2996)
!2998 = !DILocation(line: 1071, column: 13, scope: !2996)
!2999 = !DILocation(line: 1072, column: 5, scope: !2996)
!3000 = !DILocation(line: 1074, column: 12, scope: !2841)
!3001 = !DILocation(line: 1074, column: 5, scope: !2841)
!3002 = !DILocation(line: 1075, column: 1, scope: !2841)
!3003 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !3004, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!36, !246, !36, !36, !73}
!3006 = !DILocalVariable(name: "cid", arg: 1, scope: !3003, file: !3, line: 1077, type: !246)
!3007 = !DILocation(line: 1077, column: 28, scope: !3003)
!3008 = !DILocalVariable(name: "nocid", arg: 2, scope: !3003, file: !3, line: 1077, type: !36)
!3009 = !DILocation(line: 1077, column: 37, scope: !3003)
!3010 = !DILocalVariable(name: "allcid", arg: 3, scope: !3003, file: !3, line: 1077, type: !36)
!3011 = !DILocation(line: 1077, column: 48, scope: !3003)
!3012 = !DILocalVariable(name: "sp", arg: 4, scope: !3003, file: !3, line: 1077, type: !73)
!3013 = !DILocation(line: 1077, column: 67, scope: !3003)
!3014 = !DILocalVariable(name: "c", scope: !3003, file: !3, line: 1079, type: !36)
!3015 = !DILocation(line: 1079, column: 9, scope: !3003)
!3016 = !DILocation(line: 1081, column: 9, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1081, column: 9)
!3018 = !DILocation(line: 1081, column: 9, scope: !3003)
!3019 = !DILocation(line: 1082, column: 9, scope: !3017)
!3020 = !DILocation(line: 1084, column: 9, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1084, column: 9)
!3022 = !DILocation(line: 1084, column: 13, scope: !3021)
!3023 = !DILocation(line: 1084, column: 9, scope: !3003)
!3024 = !DILocation(line: 1085, column: 17, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 1084, column: 22)
!3026 = !DILocation(line: 1085, column: 9, scope: !3025)
!3027 = !DILocation(line: 1086, column: 9, scope: !3025)
!3028 = !DILocation(line: 1087, column: 16, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 1087, column: 16)
!3030 = !DILocation(line: 1087, column: 21, scope: !3029)
!3031 = !DILocation(line: 1087, column: 30, scope: !3029)
!3032 = !DILocation(line: 1087, column: 35, scope: !3029)
!3033 = !DILocation(line: 1087, column: 28, scope: !3029)
!3034 = !DILocation(line: 1087, column: 16, scope: !3021)
!3035 = !DILocation(line: 1088, column: 9, scope: !3029)
!3036 = !DILocation(line: 1089, column: 14, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 1089, column: 14)
!3038 = !DILocation(line: 1089, column: 14, scope: !3029)
!3039 = !DILocation(line: 1090, column: 20, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1090, column: 13)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1089, column: 22)
!3042 = !DILocation(line: 1090, column: 24, scope: !3040)
!3043 = !DILocation(line: 1090, column: 13, scope: !3040)
!3044 = !DILocation(line: 1090, column: 38, scope: !3040)
!3045 = !DILocation(line: 1090, column: 13, scope: !3041)
!3046 = !DILocation(line: 1091, column: 18, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1090, column: 44)
!3048 = !DILocation(line: 1091, column: 22, scope: !3047)
!3049 = !DILocation(line: 1091, column: 17, scope: !3047)
!3050 = !DILocation(line: 1091, column: 15, scope: !3047)
!3051 = !DILocation(line: 1092, column: 17, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1092, column: 17)
!3053 = !DILocation(line: 1092, column: 19, scope: !3052)
!3054 = !DILocation(line: 1092, column: 26, scope: !3052)
!3055 = !DILocation(line: 1092, column: 29, scope: !3052)
!3056 = !DILocation(line: 1092, column: 31, scope: !3052)
!3057 = !DILocation(line: 1092, column: 17, scope: !3047)
!3058 = !DILocation(line: 1093, column: 24, scope: !3052)
!3059 = !DILocation(line: 1093, column: 17, scope: !3052)
!3060 = !DILocation(line: 1094, column: 9, scope: !3047)
!3061 = !DILocation(line: 1095, column: 13, scope: !3041)
!3062 = !DILocation(line: 1095, column: 18, scope: !3041)
!3063 = !DILocation(line: 1095, column: 11, scope: !3041)
!3064 = !DILocation(line: 1096, column: 9, scope: !3041)
!3065 = !DILocation(line: 1096, column: 14, scope: !3041)
!3066 = !DILocation(line: 1096, column: 21, scope: !3041)
!3067 = !DILocation(line: 1096, column: 26, scope: !3041)
!3068 = !DILocation(line: 1096, column: 34, scope: !3041)
!3069 = !DILocation(line: 1097, column: 16, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1097, column: 9)
!3071 = !DILocation(line: 1097, column: 21, scope: !3070)
!3072 = !DILocation(line: 1097, column: 14, scope: !3070)
!3073 = !DILocation(line: 1097, column: 29, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1097, column: 9)
!3075 = !DILocation(line: 1097, column: 34, scope: !3074)
!3076 = !DILocation(line: 1097, column: 44, scope: !3074)
!3077 = !DILocation(line: 1097, column: 49, scope: !3074)
!3078 = !DILocation(line: 1097, column: 41, scope: !3074)
!3079 = !DILocation(line: 1097, column: 9, scope: !3070)
!3080 = !DILocation(line: 1098, column: 18, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1098, column: 17)
!3082 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 1097, column: 72)
!3083 = !DILocation(line: 1098, column: 23, scope: !3081)
!3084 = !DILocation(line: 1098, column: 30, scope: !3081)
!3085 = !DILocation(line: 1098, column: 35, scope: !3081)
!3086 = !DILocation(line: 1098, column: 17, scope: !3082)
!3087 = !DILocation(line: 1099, column: 17, scope: !3081)
!3088 = !DILocation(line: 1100, column: 9, scope: !3082)
!3089 = !DILocation(line: 1097, column: 57, scope: !3074)
!3090 = !DILocation(line: 1097, column: 62, scope: !3074)
!3091 = !DILocation(line: 1097, column: 68, scope: !3074)
!3092 = !DILocation(line: 1097, column: 9, scope: !3074)
!3093 = distinct !{!3093, !3079, !3094}
!3094 = !DILocation(line: 1100, column: 9, scope: !3070)
!3095 = !DILocation(line: 1101, column: 16, scope: !3041)
!3096 = !DILocation(line: 1101, column: 9, scope: !3041)
!3097 = !DILocation(line: 1103, column: 13, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1102, column: 12)
!3099 = !DILocation(line: 1103, column: 18, scope: !3098)
!3100 = !DILocation(line: 1103, column: 11, scope: !3098)
!3101 = !DILocation(line: 1104, column: 9, scope: !3098)
!3102 = !DILocation(line: 1104, column: 14, scope: !3098)
!3103 = !DILocation(line: 1104, column: 20, scope: !3098)
!3104 = !DILocation(line: 1105, column: 16, scope: !3098)
!3105 = !DILocation(line: 1105, column: 9, scope: !3098)
!3106 = !DILocation(line: 1107, column: 1, scope: !3003)
!3107 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !3108, scopeLine: 1110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !13, !38}
!3110 = !DILocalVariable(name: "rname", arg: 1, scope: !3107, file: !3, line: 1109, type: !13)
!3111 = !DILocation(line: 1109, column: 33, scope: !3107)
!3112 = !DILocalVariable(name: "res", arg: 2, scope: !3107, file: !3, line: 1109, type: !38)
!3113 = !DILocation(line: 1109, column: 54, scope: !3107)
!3114 = !DILocation(line: 1112, column: 12, scope: !3107)
!3115 = !DILocation(line: 1112, column: 19, scope: !3107)
!3116 = !DILocation(line: 1112, column: 24, scope: !3107)
!3117 = !DILocation(line: 1112, column: 5, scope: !3107)
!3118 = !DILocation(line: 1114, column: 17, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1114, column: 9)
!3120 = !DILocation(line: 1114, column: 10, scope: !3119)
!3121 = !DILocation(line: 1114, column: 9, scope: !3107)
!3122 = !DILocation(line: 1115, column: 16, scope: !3119)
!3123 = !DILocation(line: 1115, column: 9, scope: !3119)
!3124 = !DILocation(line: 1116, column: 17, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1116, column: 9)
!3126 = !DILocation(line: 1116, column: 10, scope: !3125)
!3127 = !DILocation(line: 1116, column: 9, scope: !3107)
!3128 = !DILocation(line: 1117, column: 16, scope: !3125)
!3129 = !DILocation(line: 1117, column: 9, scope: !3125)
!3130 = !DILocation(line: 1118, column: 17, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1118, column: 9)
!3132 = !DILocation(line: 1118, column: 10, scope: !3131)
!3133 = !DILocation(line: 1118, column: 9, scope: !3107)
!3134 = !DILocation(line: 1119, column: 16, scope: !3131)
!3135 = !DILocation(line: 1119, column: 9, scope: !3131)
!3136 = !DILocation(line: 1120, column: 17, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1120, column: 9)
!3138 = !DILocation(line: 1120, column: 10, scope: !3137)
!3139 = !DILocation(line: 1120, column: 9, scope: !3107)
!3140 = !DILocation(line: 1121, column: 16, scope: !3137)
!3141 = !DILocation(line: 1121, column: 9, scope: !3137)
!3142 = !DILocation(line: 1122, column: 17, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1122, column: 9)
!3144 = !DILocation(line: 1122, column: 10, scope: !3143)
!3145 = !DILocation(line: 1122, column: 9, scope: !3107)
!3146 = !DILocation(line: 1123, column: 16, scope: !3143)
!3147 = !DILocation(line: 1123, column: 9, scope: !3143)
!3148 = !DILocation(line: 1125, column: 17, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1125, column: 9)
!3150 = !DILocation(line: 1125, column: 10, scope: !3149)
!3151 = !DILocation(line: 1125, column: 9, scope: !3107)
!3152 = !DILocation(line: 1126, column: 16, scope: !3149)
!3153 = !DILocation(line: 1126, column: 9, scope: !3149)
!3154 = !DILocation(line: 1127, column: 17, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1127, column: 9)
!3156 = !DILocation(line: 1127, column: 10, scope: !3155)
!3157 = !DILocation(line: 1127, column: 9, scope: !3107)
!3158 = !DILocation(line: 1128, column: 16, scope: !3155)
!3159 = !DILocation(line: 1128, column: 9, scope: !3155)
!3160 = !DILocation(line: 1129, column: 17, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1129, column: 9)
!3162 = !DILocation(line: 1129, column: 10, scope: !3161)
!3163 = !DILocation(line: 1129, column: 9, scope: !3107)
!3164 = !DILocation(line: 1130, column: 16, scope: !3161)
!3165 = !DILocation(line: 1130, column: 9, scope: !3161)
!3166 = !DILocation(line: 1131, column: 17, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1131, column: 9)
!3168 = !DILocation(line: 1131, column: 10, scope: !3167)
!3169 = !DILocation(line: 1131, column: 9, scope: !3107)
!3170 = !DILocation(line: 1132, column: 16, scope: !3167)
!3171 = !DILocation(line: 1132, column: 9, scope: !3167)
!3172 = !DILocation(line: 1134, column: 17, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1134, column: 9)
!3174 = !DILocation(line: 1134, column: 10, scope: !3173)
!3175 = !DILocation(line: 1134, column: 9, scope: !3107)
!3176 = !DILocation(line: 1135, column: 16, scope: !3173)
!3177 = !DILocation(line: 1135, column: 9, scope: !3173)
!3178 = !DILocation(line: 1136, column: 17, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1136, column: 9)
!3180 = !DILocation(line: 1136, column: 10, scope: !3179)
!3181 = !DILocation(line: 1136, column: 9, scope: !3107)
!3182 = !DILocation(line: 1137, column: 16, scope: !3179)
!3183 = !DILocation(line: 1137, column: 9, scope: !3179)
!3184 = !DILocation(line: 1138, column: 17, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1138, column: 9)
!3186 = !DILocation(line: 1138, column: 10, scope: !3185)
!3187 = !DILocation(line: 1138, column: 9, scope: !3107)
!3188 = !DILocation(line: 1139, column: 16, scope: !3185)
!3189 = !DILocation(line: 1139, column: 9, scope: !3185)
!3190 = !DILocation(line: 1140, column: 17, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1140, column: 9)
!3192 = !DILocation(line: 1140, column: 10, scope: !3191)
!3193 = !DILocation(line: 1140, column: 9, scope: !3107)
!3194 = !DILocation(line: 1141, column: 16, scope: !3191)
!3195 = !DILocation(line: 1141, column: 9, scope: !3191)
!3196 = !DILocation(line: 1143, column: 17, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1143, column: 9)
!3198 = !DILocation(line: 1143, column: 10, scope: !3197)
!3199 = !DILocation(line: 1143, column: 9, scope: !3107)
!3200 = !DILocation(line: 1144, column: 16, scope: !3197)
!3201 = !DILocation(line: 1144, column: 9, scope: !3197)
!3202 = !DILocation(line: 1145, column: 17, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1145, column: 9)
!3204 = !DILocation(line: 1145, column: 10, scope: !3203)
!3205 = !DILocation(line: 1145, column: 9, scope: !3107)
!3206 = !DILocation(line: 1146, column: 16, scope: !3203)
!3207 = !DILocation(line: 1146, column: 9, scope: !3203)
!3208 = !DILocation(line: 1147, column: 17, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1147, column: 9)
!3210 = !DILocation(line: 1147, column: 10, scope: !3209)
!3211 = !DILocation(line: 1147, column: 9, scope: !3107)
!3212 = !DILocation(line: 1148, column: 16, scope: !3209)
!3213 = !DILocation(line: 1148, column: 9, scope: !3209)
!3214 = !DILocation(line: 1149, column: 17, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1149, column: 9)
!3216 = !DILocation(line: 1149, column: 10, scope: !3215)
!3217 = !DILocation(line: 1149, column: 9, scope: !3107)
!3218 = !DILocation(line: 1150, column: 16, scope: !3215)
!3219 = !DILocation(line: 1150, column: 9, scope: !3215)
!3220 = !DILocation(line: 1152, column: 17, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1152, column: 9)
!3222 = !DILocation(line: 1152, column: 10, scope: !3221)
!3223 = !DILocation(line: 1152, column: 9, scope: !3107)
!3224 = !DILocation(line: 1153, column: 16, scope: !3221)
!3225 = !DILocation(line: 1153, column: 9, scope: !3221)
!3226 = !DILocation(line: 1154, column: 17, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1154, column: 9)
!3228 = !DILocation(line: 1154, column: 10, scope: !3227)
!3229 = !DILocation(line: 1154, column: 9, scope: !3107)
!3230 = !DILocation(line: 1155, column: 16, scope: !3227)
!3231 = !DILocation(line: 1155, column: 9, scope: !3227)
!3232 = !DILocation(line: 1156, column: 17, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1156, column: 9)
!3234 = !DILocation(line: 1156, column: 10, scope: !3233)
!3235 = !DILocation(line: 1156, column: 9, scope: !3107)
!3236 = !DILocation(line: 1157, column: 16, scope: !3233)
!3237 = !DILocation(line: 1157, column: 9, scope: !3233)
!3238 = !DILocation(line: 1158, column: 17, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1158, column: 9)
!3240 = !DILocation(line: 1158, column: 10, scope: !3239)
!3241 = !DILocation(line: 1158, column: 9, scope: !3107)
!3242 = !DILocation(line: 1159, column: 16, scope: !3239)
!3243 = !DILocation(line: 1159, column: 9, scope: !3239)
!3244 = !DILocation(line: 1161, column: 17, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1161, column: 9)
!3246 = !DILocation(line: 1161, column: 10, scope: !3245)
!3247 = !DILocation(line: 1161, column: 9, scope: !3107)
!3248 = !DILocation(line: 1162, column: 16, scope: !3245)
!3249 = !DILocation(line: 1162, column: 9, scope: !3245)
!3250 = !DILocation(line: 1163, column: 17, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1163, column: 9)
!3252 = !DILocation(line: 1163, column: 10, scope: !3251)
!3253 = !DILocation(line: 1163, column: 9, scope: !3107)
!3254 = !DILocation(line: 1164, column: 16, scope: !3251)
!3255 = !DILocation(line: 1164, column: 9, scope: !3251)
!3256 = !DILocation(line: 1165, column: 17, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1165, column: 9)
!3258 = !DILocation(line: 1165, column: 10, scope: !3257)
!3259 = !DILocation(line: 1165, column: 9, scope: !3107)
!3260 = !DILocation(line: 1166, column: 16, scope: !3257)
!3261 = !DILocation(line: 1166, column: 9, scope: !3257)
!3262 = !DILocation(line: 1167, column: 17, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1167, column: 9)
!3264 = !DILocation(line: 1167, column: 10, scope: !3263)
!3265 = !DILocation(line: 1167, column: 9, scope: !3107)
!3266 = !DILocation(line: 1168, column: 16, scope: !3263)
!3267 = !DILocation(line: 1168, column: 9, scope: !3263)
!3268 = !DILocation(line: 1170, column: 17, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1170, column: 9)
!3270 = !DILocation(line: 1170, column: 10, scope: !3269)
!3271 = !DILocation(line: 1170, column: 9, scope: !3107)
!3272 = !DILocation(line: 1171, column: 16, scope: !3269)
!3273 = !DILocation(line: 1171, column: 9, scope: !3269)
!3274 = !DILocation(line: 1172, column: 17, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1172, column: 9)
!3276 = !DILocation(line: 1172, column: 10, scope: !3275)
!3277 = !DILocation(line: 1172, column: 9, scope: !3107)
!3278 = !DILocation(line: 1173, column: 16, scope: !3275)
!3279 = !DILocation(line: 1173, column: 9, scope: !3275)
!3280 = !DILocation(line: 1174, column: 17, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1174, column: 9)
!3282 = !DILocation(line: 1174, column: 10, scope: !3281)
!3283 = !DILocation(line: 1174, column: 9, scope: !3107)
!3284 = !DILocation(line: 1175, column: 16, scope: !3281)
!3285 = !DILocation(line: 1175, column: 9, scope: !3281)
!3286 = !DILocation(line: 1176, column: 17, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1176, column: 9)
!3288 = !DILocation(line: 1176, column: 10, scope: !3287)
!3289 = !DILocation(line: 1176, column: 9, scope: !3107)
!3290 = !DILocation(line: 1177, column: 16, scope: !3287)
!3291 = !DILocation(line: 1177, column: 9, scope: !3287)
!3292 = !DILocation(line: 1179, column: 17, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1179, column: 9)
!3294 = !DILocation(line: 1179, column: 10, scope: !3293)
!3295 = !DILocation(line: 1179, column: 9, scope: !3107)
!3296 = !DILocation(line: 1180, column: 16, scope: !3293)
!3297 = !DILocation(line: 1180, column: 9, scope: !3293)
!3298 = !DILocation(line: 1181, column: 17, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1181, column: 9)
!3300 = !DILocation(line: 1181, column: 10, scope: !3299)
!3301 = !DILocation(line: 1181, column: 9, scope: !3107)
!3302 = !DILocation(line: 1182, column: 16, scope: !3299)
!3303 = !DILocation(line: 1182, column: 9, scope: !3299)
!3304 = !DILocation(line: 1183, column: 17, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1183, column: 9)
!3306 = !DILocation(line: 1183, column: 10, scope: !3305)
!3307 = !DILocation(line: 1183, column: 9, scope: !3107)
!3308 = !DILocation(line: 1184, column: 16, scope: !3305)
!3309 = !DILocation(line: 1184, column: 9, scope: !3305)
!3310 = !DILocation(line: 1185, column: 17, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1185, column: 9)
!3312 = !DILocation(line: 1185, column: 10, scope: !3311)
!3313 = !DILocation(line: 1185, column: 9, scope: !3107)
!3314 = !DILocation(line: 1186, column: 16, scope: !3311)
!3315 = !DILocation(line: 1186, column: 9, scope: !3311)
!3316 = !DILocation(line: 1187, column: 17, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1187, column: 9)
!3318 = !DILocation(line: 1187, column: 10, scope: !3317)
!3319 = !DILocation(line: 1187, column: 9, scope: !3107)
!3320 = !DILocation(line: 1188, column: 16, scope: !3317)
!3321 = !DILocation(line: 1188, column: 9, scope: !3317)
!3322 = !DILocation(line: 1189, column: 17, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1189, column: 9)
!3324 = !DILocation(line: 1189, column: 10, scope: !3323)
!3325 = !DILocation(line: 1189, column: 9, scope: !3107)
!3326 = !DILocation(line: 1190, column: 16, scope: !3323)
!3327 = !DILocation(line: 1190, column: 9, scope: !3323)
!3328 = !DILocation(line: 1192, column: 1, scope: !3107)
!3329 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !3108, scopeLine: 1195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!3330 = !DILocalVariable(name: "rname", arg: 1, scope: !3329, file: !3, line: 1194, type: !13)
!3331 = !DILocation(line: 1194, column: 33, scope: !3329)
!3332 = !DILocalVariable(name: "res", arg: 2, scope: !3329, file: !3, line: 1194, type: !38)
!3333 = !DILocation(line: 1194, column: 54, scope: !3329)
!3334 = !DILocation(line: 1197, column: 12, scope: !3329)
!3335 = !DILocation(line: 1197, column: 19, scope: !3329)
!3336 = !DILocation(line: 1197, column: 24, scope: !3329)
!3337 = !DILocation(line: 1197, column: 5, scope: !3329)
!3338 = !DILocation(line: 1199, column: 17, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1199, column: 9)
!3340 = !DILocation(line: 1199, column: 10, scope: !3339)
!3341 = !DILocation(line: 1199, column: 9, scope: !3329)
!3342 = !DILocation(line: 1200, column: 16, scope: !3339)
!3343 = !DILocation(line: 1200, column: 9, scope: !3339)
!3344 = !DILocation(line: 1201, column: 17, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1201, column: 9)
!3346 = !DILocation(line: 1201, column: 10, scope: !3345)
!3347 = !DILocation(line: 1201, column: 9, scope: !3329)
!3348 = !DILocation(line: 1202, column: 16, scope: !3345)
!3349 = !DILocation(line: 1202, column: 9, scope: !3345)
!3350 = !DILocation(line: 1203, column: 17, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1203, column: 9)
!3352 = !DILocation(line: 1203, column: 10, scope: !3351)
!3353 = !DILocation(line: 1203, column: 9, scope: !3329)
!3354 = !DILocation(line: 1204, column: 16, scope: !3351)
!3355 = !DILocation(line: 1204, column: 9, scope: !3351)
!3356 = !DILocation(line: 1205, column: 17, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1205, column: 9)
!3358 = !DILocation(line: 1205, column: 10, scope: !3357)
!3359 = !DILocation(line: 1205, column: 9, scope: !3329)
!3360 = !DILocation(line: 1206, column: 16, scope: !3357)
!3361 = !DILocation(line: 1206, column: 9, scope: !3357)
!3362 = !DILocation(line: 1207, column: 17, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1207, column: 9)
!3364 = !DILocation(line: 1207, column: 10, scope: !3363)
!3365 = !DILocation(line: 1207, column: 9, scope: !3329)
!3366 = !DILocation(line: 1208, column: 16, scope: !3363)
!3367 = !DILocation(line: 1208, column: 9, scope: !3363)
!3368 = !DILocation(line: 1210, column: 17, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1210, column: 9)
!3370 = !DILocation(line: 1210, column: 10, scope: !3369)
!3371 = !DILocation(line: 1210, column: 9, scope: !3329)
!3372 = !DILocation(line: 1211, column: 16, scope: !3369)
!3373 = !DILocation(line: 1211, column: 9, scope: !3369)
!3374 = !DILocation(line: 1212, column: 17, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1212, column: 9)
!3376 = !DILocation(line: 1212, column: 10, scope: !3375)
!3377 = !DILocation(line: 1212, column: 9, scope: !3329)
!3378 = !DILocation(line: 1213, column: 16, scope: !3375)
!3379 = !DILocation(line: 1213, column: 9, scope: !3375)
!3380 = !DILocation(line: 1214, column: 17, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1214, column: 9)
!3382 = !DILocation(line: 1214, column: 10, scope: !3381)
!3383 = !DILocation(line: 1214, column: 9, scope: !3329)
!3384 = !DILocation(line: 1215, column: 16, scope: !3381)
!3385 = !DILocation(line: 1215, column: 9, scope: !3381)
!3386 = !DILocation(line: 1216, column: 17, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1216, column: 9)
!3388 = !DILocation(line: 1216, column: 10, scope: !3387)
!3389 = !DILocation(line: 1216, column: 9, scope: !3329)
!3390 = !DILocation(line: 1217, column: 16, scope: !3387)
!3391 = !DILocation(line: 1217, column: 9, scope: !3387)
!3392 = !DILocation(line: 1219, column: 17, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1219, column: 9)
!3394 = !DILocation(line: 1219, column: 10, scope: !3393)
!3395 = !DILocation(line: 1219, column: 9, scope: !3329)
!3396 = !DILocation(line: 1220, column: 16, scope: !3393)
!3397 = !DILocation(line: 1220, column: 9, scope: !3393)
!3398 = !DILocation(line: 1221, column: 17, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1221, column: 9)
!3400 = !DILocation(line: 1221, column: 10, scope: !3399)
!3401 = !DILocation(line: 1221, column: 9, scope: !3329)
!3402 = !DILocation(line: 1222, column: 16, scope: !3399)
!3403 = !DILocation(line: 1222, column: 9, scope: !3399)
!3404 = !DILocation(line: 1223, column: 17, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1223, column: 9)
!3406 = !DILocation(line: 1223, column: 10, scope: !3405)
!3407 = !DILocation(line: 1223, column: 9, scope: !3329)
!3408 = !DILocation(line: 1224, column: 16, scope: !3405)
!3409 = !DILocation(line: 1224, column: 9, scope: !3405)
!3410 = !DILocation(line: 1225, column: 17, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1225, column: 9)
!3412 = !DILocation(line: 1225, column: 10, scope: !3411)
!3413 = !DILocation(line: 1225, column: 9, scope: !3329)
!3414 = !DILocation(line: 1226, column: 16, scope: !3411)
!3415 = !DILocation(line: 1226, column: 9, scope: !3411)
!3416 = !DILocation(line: 1228, column: 17, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1228, column: 9)
!3418 = !DILocation(line: 1228, column: 10, scope: !3417)
!3419 = !DILocation(line: 1228, column: 9, scope: !3329)
!3420 = !DILocation(line: 1229, column: 16, scope: !3417)
!3421 = !DILocation(line: 1229, column: 9, scope: !3417)
!3422 = !DILocation(line: 1230, column: 17, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1230, column: 9)
!3424 = !DILocation(line: 1230, column: 10, scope: !3423)
!3425 = !DILocation(line: 1230, column: 9, scope: !3329)
!3426 = !DILocation(line: 1231, column: 16, scope: !3423)
!3427 = !DILocation(line: 1231, column: 9, scope: !3423)
!3428 = !DILocation(line: 1232, column: 17, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1232, column: 9)
!3430 = !DILocation(line: 1232, column: 10, scope: !3429)
!3431 = !DILocation(line: 1232, column: 9, scope: !3329)
!3432 = !DILocation(line: 1233, column: 16, scope: !3429)
!3433 = !DILocation(line: 1233, column: 9, scope: !3429)
!3434 = !DILocation(line: 1234, column: 17, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1234, column: 9)
!3436 = !DILocation(line: 1234, column: 10, scope: !3435)
!3437 = !DILocation(line: 1234, column: 9, scope: !3329)
!3438 = !DILocation(line: 1235, column: 16, scope: !3435)
!3439 = !DILocation(line: 1235, column: 9, scope: !3435)
!3440 = !DILocation(line: 1237, column: 17, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1237, column: 9)
!3442 = !DILocation(line: 1237, column: 10, scope: !3441)
!3443 = !DILocation(line: 1237, column: 9, scope: !3329)
!3444 = !DILocation(line: 1238, column: 16, scope: !3441)
!3445 = !DILocation(line: 1238, column: 9, scope: !3441)
!3446 = !DILocation(line: 1239, column: 17, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1239, column: 9)
!3448 = !DILocation(line: 1239, column: 10, scope: !3447)
!3449 = !DILocation(line: 1239, column: 9, scope: !3329)
!3450 = !DILocation(line: 1240, column: 16, scope: !3447)
!3451 = !DILocation(line: 1240, column: 9, scope: !3447)
!3452 = !DILocation(line: 1241, column: 17, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1241, column: 9)
!3454 = !DILocation(line: 1241, column: 10, scope: !3453)
!3455 = !DILocation(line: 1241, column: 9, scope: !3329)
!3456 = !DILocation(line: 1242, column: 16, scope: !3453)
!3457 = !DILocation(line: 1242, column: 9, scope: !3453)
!3458 = !DILocation(line: 1243, column: 17, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1243, column: 9)
!3460 = !DILocation(line: 1243, column: 10, scope: !3459)
!3461 = !DILocation(line: 1243, column: 9, scope: !3329)
!3462 = !DILocation(line: 1244, column: 16, scope: !3459)
!3463 = !DILocation(line: 1244, column: 9, scope: !3459)
!3464 = !DILocation(line: 1246, column: 17, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1246, column: 9)
!3466 = !DILocation(line: 1246, column: 10, scope: !3465)
!3467 = !DILocation(line: 1246, column: 9, scope: !3329)
!3468 = !DILocation(line: 1247, column: 16, scope: !3465)
!3469 = !DILocation(line: 1247, column: 9, scope: !3465)
!3470 = !DILocation(line: 1248, column: 17, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1248, column: 9)
!3472 = !DILocation(line: 1248, column: 10, scope: !3471)
!3473 = !DILocation(line: 1248, column: 9, scope: !3329)
!3474 = !DILocation(line: 1249, column: 16, scope: !3471)
!3475 = !DILocation(line: 1249, column: 9, scope: !3471)
!3476 = !DILocation(line: 1250, column: 17, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1250, column: 9)
!3478 = !DILocation(line: 1250, column: 10, scope: !3477)
!3479 = !DILocation(line: 1250, column: 9, scope: !3329)
!3480 = !DILocation(line: 1251, column: 16, scope: !3477)
!3481 = !DILocation(line: 1251, column: 9, scope: !3477)
!3482 = !DILocation(line: 1252, column: 17, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1252, column: 9)
!3484 = !DILocation(line: 1252, column: 10, scope: !3483)
!3485 = !DILocation(line: 1252, column: 9, scope: !3329)
!3486 = !DILocation(line: 1253, column: 16, scope: !3483)
!3487 = !DILocation(line: 1253, column: 9, scope: !3483)
!3488 = !DILocation(line: 1255, column: 17, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1255, column: 9)
!3490 = !DILocation(line: 1255, column: 10, scope: !3489)
!3491 = !DILocation(line: 1255, column: 9, scope: !3329)
!3492 = !DILocation(line: 1256, column: 16, scope: !3489)
!3493 = !DILocation(line: 1256, column: 9, scope: !3489)
!3494 = !DILocation(line: 1257, column: 17, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1257, column: 9)
!3496 = !DILocation(line: 1257, column: 10, scope: !3495)
!3497 = !DILocation(line: 1257, column: 9, scope: !3329)
!3498 = !DILocation(line: 1258, column: 16, scope: !3495)
!3499 = !DILocation(line: 1258, column: 9, scope: !3495)
!3500 = !DILocation(line: 1259, column: 17, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1259, column: 9)
!3502 = !DILocation(line: 1259, column: 10, scope: !3501)
!3503 = !DILocation(line: 1259, column: 9, scope: !3329)
!3504 = !DILocation(line: 1260, column: 16, scope: !3501)
!3505 = !DILocation(line: 1260, column: 9, scope: !3501)
!3506 = !DILocation(line: 1261, column: 17, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1261, column: 9)
!3508 = !DILocation(line: 1261, column: 10, scope: !3507)
!3509 = !DILocation(line: 1261, column: 9, scope: !3329)
!3510 = !DILocation(line: 1262, column: 16, scope: !3507)
!3511 = !DILocation(line: 1262, column: 9, scope: !3507)
!3512 = !DILocation(line: 1264, column: 17, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1264, column: 9)
!3514 = !DILocation(line: 1264, column: 10, scope: !3513)
!3515 = !DILocation(line: 1264, column: 9, scope: !3329)
!3516 = !DILocation(line: 1265, column: 16, scope: !3513)
!3517 = !DILocation(line: 1265, column: 9, scope: !3513)
!3518 = !DILocation(line: 1266, column: 17, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1266, column: 9)
!3520 = !DILocation(line: 1266, column: 10, scope: !3519)
!3521 = !DILocation(line: 1266, column: 9, scope: !3329)
!3522 = !DILocation(line: 1267, column: 16, scope: !3519)
!3523 = !DILocation(line: 1267, column: 9, scope: !3519)
!3524 = !DILocation(line: 1268, column: 17, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1268, column: 9)
!3526 = !DILocation(line: 1268, column: 10, scope: !3525)
!3527 = !DILocation(line: 1268, column: 9, scope: !3329)
!3528 = !DILocation(line: 1269, column: 16, scope: !3525)
!3529 = !DILocation(line: 1269, column: 9, scope: !3525)
!3530 = !DILocation(line: 1270, column: 17, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1270, column: 9)
!3532 = !DILocation(line: 1270, column: 10, scope: !3531)
!3533 = !DILocation(line: 1270, column: 9, scope: !3329)
!3534 = !DILocation(line: 1271, column: 16, scope: !3531)
!3535 = !DILocation(line: 1271, column: 9, scope: !3531)
!3536 = !DILocation(line: 1272, column: 17, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1272, column: 9)
!3538 = !DILocation(line: 1272, column: 10, scope: !3537)
!3539 = !DILocation(line: 1272, column: 9, scope: !3329)
!3540 = !DILocation(line: 1273, column: 16, scope: !3537)
!3541 = !DILocation(line: 1273, column: 9, scope: !3537)
!3542 = !DILocation(line: 1274, column: 17, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1274, column: 9)
!3544 = !DILocation(line: 1274, column: 10, scope: !3543)
!3545 = !DILocation(line: 1274, column: 9, scope: !3329)
!3546 = !DILocation(line: 1275, column: 16, scope: !3543)
!3547 = !DILocation(line: 1275, column: 9, scope: !3543)
!3548 = !DILocation(line: 1277, column: 1, scope: !3329)
!3549 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !3550, scopeLine: 1280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !13, !13, !13}
!3552 = !DILocalVariable(name: "aname", arg: 1, scope: !3549, file: !3, line: 1279, type: !13)
!3553 = !DILocation(line: 1279, column: 33, scope: !3549)
!3554 = !DILocalVariable(name: "name", arg: 2, scope: !3549, file: !3, line: 1279, type: !13)
!3555 = !DILocation(line: 1279, column: 47, scope: !3549)
!3556 = !DILocalVariable(name: "rname", arg: 3, scope: !3549, file: !3, line: 1279, type: !13)
!3557 = !DILocation(line: 1279, column: 60, scope: !3549)
!3558 = !DILocation(line: 1285, column: 5, scope: !3549)
!3559 = !DILocation(line: 1285, column: 14, scope: !3549)
!3560 = !DILocation(line: 1287, column: 16, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1287, column: 9)
!3562 = !DILocation(line: 1287, column: 9, scope: !3561)
!3563 = !DILocation(line: 1287, column: 22, scope: !3561)
!3564 = !DILocation(line: 1287, column: 27, scope: !3561)
!3565 = !DILocation(line: 1287, column: 30, scope: !3561)
!3566 = !DILocation(line: 1287, column: 38, scope: !3561)
!3567 = !DILocation(line: 1287, column: 9, scope: !3549)
!3568 = !DILocation(line: 1288, column: 20, scope: !3561)
!3569 = !DILocation(line: 1288, column: 9, scope: !3561)
!3570 = !DILocation(line: 1288, column: 18, scope: !3561)
!3571 = !DILocation(line: 1289, column: 16, scope: !3549)
!3572 = !DILocation(line: 1289, column: 5, scope: !3549)
!3573 = !DILocation(line: 1289, column: 14, scope: !3549)
!3574 = !DILocation(line: 1290, column: 16, scope: !3549)
!3575 = !DILocation(line: 1290, column: 5, scope: !3549)
!3576 = !DILocation(line: 1290, column: 14, scope: !3549)
!3577 = !DILocation(line: 1291, column: 16, scope: !3549)
!3578 = !DILocation(line: 1291, column: 5, scope: !3549)
!3579 = !DILocation(line: 1291, column: 14, scope: !3549)
!3580 = !DILocation(line: 1292, column: 9, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1292, column: 9)
!3582 = !DILocation(line: 1292, column: 18, scope: !3581)
!3583 = !DILocation(line: 1292, column: 9, scope: !3549)
!3584 = !DILocation(line: 1293, column: 9, scope: !3581)
!3585 = !DILocation(line: 1293, column: 18, scope: !3581)
!3586 = !DILocation(line: 1294, column: 5, scope: !3549)
!3587 = !DILocation(line: 1294, column: 14, scope: !3549)
!3588 = !DILocation(line: 1297, column: 18, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 1297, column: 9)
!3590 = !DILocation(line: 1297, column: 10, scope: !3589)
!3591 = !DILocation(line: 1297, column: 34, scope: !3589)
!3592 = !DILocation(line: 1298, column: 10, scope: !3589)
!3593 = !DILocation(line: 1298, column: 19, scope: !3589)
!3594 = !DILocation(line: 1298, column: 26, scope: !3589)
!3595 = !DILocation(line: 1298, column: 29, scope: !3589)
!3596 = !DILocation(line: 1298, column: 38, scope: !3589)
!3597 = !DILocation(line: 1298, column: 45, scope: !3589)
!3598 = !DILocation(line: 1298, column: 48, scope: !3589)
!3599 = !DILocation(line: 1298, column: 57, scope: !3589)
!3600 = !DILocation(line: 1298, column: 65, scope: !3589)
!3601 = !DILocation(line: 1299, column: 19, scope: !3589)
!3602 = !DILocation(line: 1299, column: 11, scope: !3589)
!3603 = !DILocation(line: 1299, column: 36, scope: !3589)
!3604 = !DILocation(line: 1303, column: 11, scope: !3589)
!3605 = !DILocation(line: 1303, column: 17, scope: !3589)
!3606 = !DILocation(line: 1303, column: 26, scope: !3589)
!3607 = !DILocation(line: 1303, column: 29, scope: !3589)
!3608 = !DILocation(line: 1303, column: 35, scope: !3589)
!3609 = !DILocation(line: 1303, column: 44, scope: !3589)
!3610 = !DILocation(line: 1303, column: 47, scope: !3589)
!3611 = !DILocation(line: 1303, column: 53, scope: !3589)
!3612 = !DILocation(line: 1305, column: 11, scope: !3589)
!3613 = !DILocation(line: 1305, column: 22, scope: !3589)
!3614 = !DILocation(line: 1305, column: 14, scope: !3589)
!3615 = !DILocation(line: 1297, column: 9, scope: !3549)
!3616 = !DILocation(line: 1306, column: 20, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 1305, column: 41)
!3618 = !DILocation(line: 1306, column: 9, scope: !3617)
!3619 = !DILocation(line: 1306, column: 18, scope: !3617)
!3620 = !DILocation(line: 1307, column: 9, scope: !3617)
!3621 = !DILocation(line: 1307, column: 18, scope: !3617)
!3622 = !DILocation(line: 1308, column: 5, scope: !3617)
!3623 = !DILocation(line: 1313, column: 1, scope: !3549)
!3624 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !3550, scopeLine: 1316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!3625 = !DILocalVariable(name: "aname", arg: 1, scope: !3624, file: !3, line: 1315, type: !13)
!3626 = !DILocation(line: 1315, column: 33, scope: !3624)
!3627 = !DILocalVariable(name: "name", arg: 2, scope: !3624, file: !3, line: 1315, type: !13)
!3628 = !DILocation(line: 1315, column: 47, scope: !3624)
!3629 = !DILocalVariable(name: "rname", arg: 3, scope: !3624, file: !3, line: 1315, type: !13)
!3630 = !DILocation(line: 1315, column: 60, scope: !3624)
!3631 = !DILocation(line: 1329, column: 16, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1329, column: 9)
!3633 = !DILocation(line: 1329, column: 9, scope: !3632)
!3634 = !DILocation(line: 1329, column: 22, scope: !3632)
!3635 = !DILocation(line: 1329, column: 27, scope: !3632)
!3636 = !DILocation(line: 1329, column: 30, scope: !3632)
!3637 = !DILocation(line: 1329, column: 38, scope: !3632)
!3638 = !DILocation(line: 1329, column: 9, scope: !3624)
!3639 = !DILocation(line: 1330, column: 17, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 1329, column: 45)
!3641 = !DILocation(line: 1330, column: 24, scope: !3640)
!3642 = !DILocation(line: 1330, column: 9, scope: !3640)
!3643 = !DILocation(line: 1331, column: 5, scope: !3640)
!3644 = !DILocation(line: 1332, column: 9, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 1331, column: 12)
!3646 = !DILocation(line: 1332, column: 18, scope: !3645)
!3647 = !DILocation(line: 1333, column: 18, scope: !3645)
!3648 = !DILocation(line: 1333, column: 23, scope: !3645)
!3649 = !DILocation(line: 1333, column: 27, scope: !3645)
!3650 = !DILocation(line: 1333, column: 9, scope: !3645)
!3651 = !DILocation(line: 1334, column: 9, scope: !3645)
!3652 = !DILocation(line: 1334, column: 18, scope: !3645)
!3653 = !DILocation(line: 1337, column: 9, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1337, column: 9)
!3655 = !DILocation(line: 1337, column: 18, scope: !3654)
!3656 = !DILocation(line: 1337, column: 9, scope: !3624)
!3657 = !DILocation(line: 1337, column: 28, scope: !3654)
!3658 = !DILocation(line: 1337, column: 37, scope: !3654)
!3659 = !DILocation(line: 1338, column: 9, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1338, column: 9)
!3661 = !DILocation(line: 1338, column: 18, scope: !3660)
!3662 = !DILocation(line: 1338, column: 9, scope: !3624)
!3663 = !DILocation(line: 1338, column: 28, scope: !3660)
!3664 = !DILocation(line: 1338, column: 37, scope: !3660)
!3665 = !DILocation(line: 1339, column: 9, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1339, column: 9)
!3667 = !DILocation(line: 1339, column: 18, scope: !3666)
!3668 = !DILocation(line: 1339, column: 9, scope: !3624)
!3669 = !DILocation(line: 1339, column: 28, scope: !3666)
!3670 = !DILocation(line: 1339, column: 37, scope: !3666)
!3671 = !DILocation(line: 1346, column: 18, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1346, column: 9)
!3673 = !DILocation(line: 1346, column: 10, scope: !3672)
!3674 = !DILocation(line: 1346, column: 9, scope: !3624)
!3675 = !DILocation(line: 1346, column: 45, scope: !3672)
!3676 = !DILocation(line: 1346, column: 37, scope: !3672)
!3677 = !DILocation(line: 1347, column: 18, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1347, column: 9)
!3679 = !DILocation(line: 1347, column: 10, scope: !3678)
!3680 = !DILocation(line: 1347, column: 9, scope: !3624)
!3681 = !DILocation(line: 1347, column: 45, scope: !3678)
!3682 = !DILocation(line: 1347, column: 37, scope: !3678)
!3683 = !DILocation(line: 1348, column: 18, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1348, column: 9)
!3685 = !DILocation(line: 1348, column: 10, scope: !3684)
!3686 = !DILocation(line: 1348, column: 9, scope: !3624)
!3687 = !DILocation(line: 1348, column: 45, scope: !3684)
!3688 = !DILocation(line: 1348, column: 37, scope: !3684)
!3689 = !DILocation(line: 1349, column: 18, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1349, column: 9)
!3691 = !DILocation(line: 1349, column: 10, scope: !3690)
!3692 = !DILocation(line: 1349, column: 9, scope: !3624)
!3693 = !DILocation(line: 1349, column: 45, scope: !3690)
!3694 = !DILocation(line: 1349, column: 37, scope: !3690)
!3695 = !DILocation(line: 1350, column: 18, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1350, column: 9)
!3697 = !DILocation(line: 1350, column: 10, scope: !3696)
!3698 = !DILocation(line: 1350, column: 9, scope: !3624)
!3699 = !DILocation(line: 1350, column: 45, scope: !3696)
!3700 = !DILocation(line: 1350, column: 37, scope: !3696)
!3701 = !DILocation(line: 1351, column: 18, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1351, column: 9)
!3703 = !DILocation(line: 1351, column: 10, scope: !3702)
!3704 = !DILocation(line: 1351, column: 9, scope: !3624)
!3705 = !DILocation(line: 1351, column: 45, scope: !3702)
!3706 = !DILocation(line: 1351, column: 37, scope: !3702)
!3707 = !DILocation(line: 1352, column: 18, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1352, column: 9)
!3709 = !DILocation(line: 1352, column: 10, scope: !3708)
!3710 = !DILocation(line: 1352, column: 9, scope: !3624)
!3711 = !DILocation(line: 1352, column: 45, scope: !3708)
!3712 = !DILocation(line: 1352, column: 37, scope: !3708)
!3713 = !DILocation(line: 1353, column: 18, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1353, column: 9)
!3715 = !DILocation(line: 1353, column: 10, scope: !3714)
!3716 = !DILocation(line: 1353, column: 9, scope: !3624)
!3717 = !DILocation(line: 1353, column: 45, scope: !3714)
!3718 = !DILocation(line: 1353, column: 37, scope: !3714)
!3719 = !DILocation(line: 1359, column: 18, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 1359, column: 9)
!3721 = !DILocation(line: 1359, column: 10, scope: !3720)
!3722 = !DILocation(line: 1359, column: 36, scope: !3720)
!3723 = !DILocation(line: 1359, column: 48, scope: !3720)
!3724 = !DILocation(line: 1359, column: 40, scope: !3720)
!3725 = !DILocation(line: 1359, column: 66, scope: !3720)
!3726 = !DILocation(line: 1360, column: 18, scope: !3720)
!3727 = !DILocation(line: 1360, column: 10, scope: !3720)
!3728 = !DILocation(line: 1360, column: 36, scope: !3720)
!3729 = !DILocation(line: 1360, column: 48, scope: !3720)
!3730 = !DILocation(line: 1360, column: 40, scope: !3720)
!3731 = !DILocation(line: 1360, column: 66, scope: !3720)
!3732 = !DILocation(line: 1361, column: 18, scope: !3720)
!3733 = !DILocation(line: 1361, column: 10, scope: !3720)
!3734 = !DILocation(line: 1361, column: 36, scope: !3720)
!3735 = !DILocation(line: 1361, column: 48, scope: !3720)
!3736 = !DILocation(line: 1361, column: 40, scope: !3720)
!3737 = !DILocation(line: 1361, column: 66, scope: !3720)
!3738 = !DILocation(line: 1362, column: 18, scope: !3720)
!3739 = !DILocation(line: 1362, column: 10, scope: !3720)
!3740 = !DILocation(line: 1362, column: 36, scope: !3720)
!3741 = !DILocation(line: 1362, column: 48, scope: !3720)
!3742 = !DILocation(line: 1362, column: 40, scope: !3720)
!3743 = !DILocation(line: 1362, column: 66, scope: !3720)
!3744 = !DILocation(line: 1363, column: 18, scope: !3720)
!3745 = !DILocation(line: 1363, column: 10, scope: !3720)
!3746 = !DILocation(line: 1363, column: 36, scope: !3720)
!3747 = !DILocation(line: 1363, column: 48, scope: !3720)
!3748 = !DILocation(line: 1363, column: 40, scope: !3720)
!3749 = !DILocation(line: 1363, column: 66, scope: !3720)
!3750 = !DILocation(line: 1364, column: 18, scope: !3720)
!3751 = !DILocation(line: 1364, column: 10, scope: !3720)
!3752 = !DILocation(line: 1364, column: 36, scope: !3720)
!3753 = !DILocation(line: 1364, column: 48, scope: !3720)
!3754 = !DILocation(line: 1364, column: 40, scope: !3720)
!3755 = !DILocation(line: 1364, column: 66, scope: !3720)
!3756 = !DILocation(line: 1365, column: 18, scope: !3720)
!3757 = !DILocation(line: 1365, column: 10, scope: !3720)
!3758 = !DILocation(line: 1365, column: 36, scope: !3720)
!3759 = !DILocation(line: 1365, column: 48, scope: !3720)
!3760 = !DILocation(line: 1365, column: 40, scope: !3720)
!3761 = !DILocation(line: 1365, column: 66, scope: !3720)
!3762 = !DILocation(line: 1366, column: 18, scope: !3720)
!3763 = !DILocation(line: 1366, column: 10, scope: !3720)
!3764 = !DILocation(line: 1366, column: 36, scope: !3720)
!3765 = !DILocation(line: 1366, column: 48, scope: !3720)
!3766 = !DILocation(line: 1366, column: 40, scope: !3720)
!3767 = !DILocation(line: 1359, column: 9, scope: !3624)
!3768 = !DILocation(line: 1367, column: 20, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 1366, column: 67)
!3770 = !DILocation(line: 1367, column: 9, scope: !3769)
!3771 = !DILocation(line: 1367, column: 18, scope: !3769)
!3772 = !DILocation(line: 1368, column: 20, scope: !3769)
!3773 = !DILocation(line: 1368, column: 9, scope: !3769)
!3774 = !DILocation(line: 1368, column: 18, scope: !3769)
!3775 = !DILocation(line: 1369, column: 20, scope: !3769)
!3776 = !DILocation(line: 1369, column: 9, scope: !3769)
!3777 = !DILocation(line: 1369, column: 18, scope: !3769)
!3778 = !DILocation(line: 1370, column: 9, scope: !3769)
!3779 = !DILocation(line: 1370, column: 18, scope: !3769)
!3780 = !DILocation(line: 1371, column: 5, scope: !3769)
!3781 = !DILocation(line: 1373, column: 1, scope: !3624)
!3782 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !3783, scopeLine: 1012, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !259)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{null, !246}
!3785 = !DILocalVariable(name: "cid", arg: 1, scope: !3782, file: !3, line: 1011, type: !246)
!3786 = !DILocation(line: 1011, column: 29, scope: !3782)
!3787 = !DILocation(line: 1014, column: 9, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 1014, column: 9)
!3789 = !DILocation(line: 1014, column: 13, scope: !3788)
!3790 = !DILocation(line: 1014, column: 9, scope: !3782)
!3791 = !DILocation(line: 1015, column: 13, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 1015, column: 13)
!3793 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 1014, column: 22)
!3794 = !DILocation(line: 1015, column: 18, scope: !3792)
!3795 = !DILocation(line: 1015, column: 25, scope: !3792)
!3796 = !DILocation(line: 1015, column: 13, scope: !3793)
!3797 = !DILocation(line: 1016, column: 18, scope: !3792)
!3798 = !DILocation(line: 1016, column: 23, scope: !3792)
!3799 = !DILocation(line: 1016, column: 13, scope: !3792)
!3800 = !DILocation(line: 1017, column: 14, scope: !3793)
!3801 = !DILocation(line: 1017, column: 9, scope: !3793)
!3802 = !DILocation(line: 1018, column: 5, scope: !3793)
!3803 = !DILocation(line: 1019, column: 1, scope: !3782)
