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
@n_atab = internal global i32 0, align 4, !dbg !359
@.str.24 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"C5M\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"O2'\00", align 1
@res = internal global %struct.residue_t zeroinitializer, align 8, !dbg !361
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
@atab = internal global [1000 x %struct.atom_t] zeroinitializer, align 16, !dbg !363
@.str.49 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"initres: can't allocate res->r_resname.\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"initres: can't allocate res->r_resid.\0A\00", align 1
@init_atab.init = internal global i32 1, align 4, !dbg !351
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

; Function Attrs: nounwind uwtable
define dso_local %struct.molecule_t* @getpdb(i8* %0, i8* %1) #0 !dbg !388 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !394, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata i8* %1, metadata !395, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !396, metadata !DIExpression()), !dbg !399
  %3 = icmp ne i8* %0, null, !dbg !400
  br i1 %3, label %4, label %7, !dbg !402

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1, !dbg !403, !tbaa !404
  %6 = icmp ne i8 %5, 0, !dbg !403
  br i1 %6, label %9, label %7, !dbg !407

7:                                                ; preds = %4, %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !408, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !396, metadata !DIExpression()), !dbg !399
  br label %30, !dbg !412

9:                                                ; preds = %4
  %10 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !413
  %11 = icmp ne i32 %10, 0, !dbg !413
  br i1 %11, label %14, label %12, !dbg !415

12:                                               ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !416, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %13, metadata !396, metadata !DIExpression()), !dbg !399
  br label %29, !dbg !418

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()), !dbg !399
  %15 = call i32 @get_mytaskid(), !dbg !419
  %16 = icmp eq i32 %15, 0, !dbg !422
  br i1 %16, label %17, label %24, !dbg !423

17:                                               ; preds = %14
  %18 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !424
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, metadata !396, metadata !DIExpression()), !dbg !399
  %19 = icmp eq %struct._IO_FILE* %18, null, !dbg !427
  br i1 %19, label %20, label %23, !dbg !428

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !429, !tbaa !410
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %0), !dbg !431
  call void @llvm.dbg.value(metadata i32 -1, metadata !398, metadata !DIExpression()), !dbg !399
  br label %23, !dbg !432

23:                                               ; preds = %20, %17
  %.0 = phi i32 [ -1, %20 ], [ 0, %17 ], !dbg !433
  call void @llvm.dbg.value(metadata i32 %.0, metadata !398, metadata !DIExpression()), !dbg !399
  br label %24, !dbg !434

24:                                               ; preds = %23, %14
  %.01 = phi %struct._IO_FILE* [ %18, %23 ], [ null, %14 ], !dbg !399
  %.1 = phi i32 [ %.0, %23 ], [ 0, %14 ], !dbg !433
  call void @llvm.dbg.value(metadata i32 %.1, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.01, metadata !396, metadata !DIExpression()), !dbg !399
  call void @reducerror(i32 %.1), !dbg !435
  %25 = call i32 @get_mytaskid(), !dbg !436
  %26 = icmp ne i32 %25, 0, !dbg !438
  br i1 %26, label %27, label %28, !dbg !439

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !396, metadata !DIExpression()), !dbg !399
  br label %28, !dbg !440

28:                                               ; preds = %27, %24
  %.12 = phi %struct._IO_FILE* [ null, %27 ], [ %.01, %24 ], !dbg !433
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.12, metadata !396, metadata !DIExpression()), !dbg !399
  br label %29

29:                                               ; preds = %28, %12
  %.2 = phi %struct._IO_FILE* [ %.12, %28 ], [ %13, %12 ], !dbg !442
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.2, metadata !396, metadata !DIExpression()), !dbg !399
  br label %30

30:                                               ; preds = %29, %7
  %.3 = phi %struct._IO_FILE* [ %.2, %29 ], [ %8, %7 ], !dbg !443
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.3, metadata !396, metadata !DIExpression()), !dbg !399
  %31 = call %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %.3, i8* %1), !dbg !444
  call void @llvm.dbg.value(metadata %struct.molecule_t* %31, metadata !397, metadata !DIExpression()), !dbg !399
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !445, !tbaa !410
  %33 = icmp ne %struct._IO_FILE* %.3, %32, !dbg !447
  br i1 %33, label %34, label %40, !dbg !448

34:                                               ; preds = %30
  %35 = call i32 @get_mytaskid(), !dbg !449
  %36 = icmp eq i32 %35, 0, !dbg !452
  br i1 %36, label %37, label %39, !dbg !453

37:                                               ; preds = %34
  %38 = call i32 @fclose(%struct._IO_FILE* %.3), !dbg !454
  br label %39, !dbg !456

39:                                               ; preds = %37, %34
  br label %40, !dbg !457

40:                                               ; preds = %39, %30
  ret %struct.molecule_t* %31, !dbg !458
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

declare !dbg !34 dso_local i32 @get_mytaskid() #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare !dbg !40 dso_local void @reducerror(i32) #4

; Function Attrs: nounwind uwtable
define internal %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %0, i8* %1) #0 !dbg !459 {
  %3 = alloca [82 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !463, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %1, metadata !464, metadata !DIExpression()), !dbg !508
  %15 = bitcast [82 x i8]* %3 to i8*, !dbg !509
  call void @llvm.lifetime.start.p0i8(i64 82, i8* %15) #10, !dbg !509
  call void @llvm.dbg.declare(metadata [82 x i8]* %3, metadata !470, metadata !DIExpression()), !dbg !510
  %16 = bitcast [10 x i8]* %4 to i8*, !dbg !511
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %16) #10, !dbg !511
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !474, metadata !DIExpression()), !dbg !512
  %17 = bitcast [10 x i8]* %5 to i8*, !dbg !513
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %17) #10, !dbg !513
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !478, metadata !DIExpression()), !dbg !514
  %18 = bitcast [10 x i8]* %6 to i8*, !dbg !515
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %18) #10, !dbg !515
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !479, metadata !DIExpression()), !dbg !516
  %19 = bitcast [10 x i8]* %7 to i8*, !dbg !515
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %19) #10, !dbg !515
  call void @llvm.dbg.declare(metadata [10 x i8]* %7, metadata !480, metadata !DIExpression()), !dbg !517
  %20 = bitcast [10 x i8]* %8 to i8*, !dbg !518
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %20) #10, !dbg !518
  call void @llvm.dbg.declare(metadata [10 x i8]* %8, metadata !481, metadata !DIExpression()), !dbg !519
  %21 = bitcast [10 x i8]* %9 to i8*, !dbg !518
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %21) #10, !dbg !518
  call void @llvm.dbg.declare(metadata [10 x i8]* %9, metadata !482, metadata !DIExpression()), !dbg !520
  %22 = bitcast [10 x i8]* %10 to i8*, !dbg !521
  call void @llvm.lifetime.start.p0i8(i64 10, i8* %22) #10, !dbg !521
  call void @llvm.dbg.declare(metadata [10 x i8]* %10, metadata !483, metadata !DIExpression()), !dbg !522
  %23 = bitcast i32* %11 to i8*, !dbg !523
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #10, !dbg !523
  call void @llvm.dbg.declare(metadata i32* %11, metadata !486, metadata !DIExpression()), !dbg !524
  %24 = bitcast double* %12 to i8*, !dbg !525
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #10, !dbg !525
  call void @llvm.dbg.declare(metadata double* %12, metadata !491, metadata !DIExpression()), !dbg !526
  %25 = bitcast double* %13 to i8*, !dbg !525
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %25) #10, !dbg !525
  call void @llvm.dbg.declare(metadata double* %13, metadata !492, metadata !DIExpression()), !dbg !527
  %26 = bitcast [256 x i8]* %14 to i8*, !dbg !528
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %26) #10, !dbg !528
  call void @llvm.dbg.declare(metadata [256 x i8]* %14, metadata !497, metadata !DIExpression()), !dbg !529
  %27 = icmp eq i8* %1, null, !dbg !530
  br i1 %27, label %28, label %30, !dbg !532

28:                                               ; preds = %2
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !533
  store i8 0, i8* %29, align 16, !dbg !534, !tbaa !404
  br label %33, !dbg !533

30:                                               ; preds = %2
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !535
  %32 = call i8* @strcpy(i8* %31, i8* %1) #10, !dbg !536
  br label %33

33:                                               ; preds = %30, %28
  call void @initres(), !dbg !537
  call void @init_atab(), !dbg !538
  %34 = call %struct.molecule_t* @newmolecule(), !dbg !539
  call void @llvm.dbg.value(metadata %struct.molecule_t* %34, metadata !465, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 0, metadata !467, metadata !DIExpression()), !dbg !508
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !540
  store i8 0, i8* %35, align 1, !dbg !541, !tbaa !404
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 0, metadata !469, metadata !DIExpression()), !dbg !508
  store i32 0, i32* @n_atab, align 4, !dbg !542, !tbaa !543
  call void @llvm.dbg.value(metadata i32 0, metadata !467, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 0, metadata !469, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !508
  %36 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !545
  %37 = call i8* @ggets(i8* %36, i32 82, %struct._IO_FILE* %0), !dbg !547
  %38 = icmp eq i8* %37, null, !dbg !548
  br i1 %38, label %39, label %.lr.ph52, !dbg !549

.lr.ph52:                                         ; preds = %33
  br label %40, !dbg !549

._crit_edge53:                                    ; preds = %423
  %split54 = phi i32 [ %.4, %423 ]
  br label %39, !dbg !549

39:                                               ; preds = %._crit_edge53, %33
  %.016.lcssa = phi i32 [ %split54, %._crit_edge53 ], [ 0, %33 ], !dbg !508
  call void @llvm.dbg.value(metadata i32 %.016.lcssa, metadata !487, metadata !DIExpression()), !dbg !508
  br label %426, !dbg !550

40:                                               ; preds = %.lr.ph52, %423
  %.0449 = phi i32 [ 0, %.lr.ph52 ], [ %.3, %423 ]
  %.0747 = phi i32 [ 0, %.lr.ph52 ], [ %.29, %423 ]
  %.01645 = phi i32 [ 0, %.lr.ph52 ], [ %.4, %423 ]
  call void @llvm.dbg.value(metadata i32 %.0449, metadata !467, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 %.0747, metadata !469, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 %.01645, metadata !487, metadata !DIExpression()), !dbg !508
  %41 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !551
  %42 = call i64 @strlen(i8* %41) #9, !dbg !553
  %43 = trunc i64 %42 to i32, !dbg !553
  call void @llvm.dbg.value(metadata i32 %43, metadata !495, metadata !DIExpression()), !dbg !508
  %44 = sext i32 %43 to i64, !dbg !554
  call void @llvm.dbg.value(metadata i64 %44, metadata !495, metadata !DIExpression()), !dbg !508
  %45 = icmp slt i64 %44, 80, !dbg !555
  br i1 %45, label %.lr.ph, label %50, !dbg !557

.lr.ph:                                           ; preds = %40
  br label %46, !dbg !557

46:                                               ; preds = %.lr.ph, %48
  %indvars.iv25 = phi i64 [ %44, %.lr.ph ], [ %indvars.iv.next, %48 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !495, metadata !DIExpression()), !dbg !508
  %47 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 %indvars.iv25, !dbg !558
  store i8 32, i8* %47, align 1, !dbg !559, !tbaa !404
  br label %48, !dbg !558

48:                                               ; preds = %46
  %indvars.iv.next = add nsw i64 %indvars.iv25, 1, !dbg !560
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !495, metadata !DIExpression()), !dbg !508
  %49 = icmp slt i64 %indvars.iv.next, 80, !dbg !555
  br i1 %49, label %46, label %._crit_edge, !dbg !557, !llvm.loop !561

._crit_edge:                                      ; preds = %48
  br label %50, !dbg !557

50:                                               ; preds = %._crit_edge, %40
  %51 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 80, !dbg !563
  store i8 0, i8* %51, align 16, !dbg !564, !tbaa !404
  %52 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !565
  %53 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %52, i64 4) #9, !dbg !566
  %54 = icmp eq i32 %53, 0, !dbg !567
  br i1 %54, label %59, label %55, !dbg !568

55:                                               ; preds = %50
  %56 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !569
  %57 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %56, i64 6) #9, !dbg !570
  %58 = icmp eq i32 %57, 0, !dbg !571
  br i1 %58, label %59, label %396, !dbg !572

59:                                               ; preds = %55, %50
  %.0450 = phi i32 [ %.0449, %55 ], [ %.0449, %50 ]
  %.0748 = phi i32 [ %.0747, %55 ], [ %.0747, %50 ]
  %.01646 = phi i32 [ %.01645, %55 ], [ %.01645, %50 ]
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !573
  %61 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 12, !dbg !574
  %62 = call i8* @strncpy(i8* %60, i8* %61, i64 4) #10, !dbg !575
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 4, !dbg !576
  store i8 0, i8* %63, align 1, !dbg !577, !tbaa !404
  %64 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !578
  call void @llvm.dbg.value(metadata i8* %64, metadata !485, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %64, metadata !484, metadata !DIExpression()), !dbg !508
  %65 = load i8, i8* %64, align 1, !dbg !580, !tbaa !404
  %66 = icmp ne i8 %65, 0, !dbg !582
  br i1 %66, label %.lr.ph29, label %79, !dbg !582

.lr.ph29:                                         ; preds = %59
  br label %67, !dbg !582

67:                                               ; preds = %.lr.ph29, %75
  %.01027 = phi i8* [ %64, %.lr.ph29 ], [ %76, %75 ]
  %.01226 = phi i8* [ %64, %.lr.ph29 ], [ %.113, %75 ]
  call void @llvm.dbg.value(metadata i8* %.01027, metadata !484, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %.01226, metadata !485, metadata !DIExpression()), !dbg !508
  %68 = load i8, i8* %.01027, align 1, !dbg !583, !tbaa !404
  %69 = sext i8 %68 to i32, !dbg !583
  %70 = icmp ne i32 %69, 32, !dbg !586
  br i1 %70, label %71, label %74, !dbg !587

71:                                               ; preds = %67
  %72 = load i8, i8* %.01027, align 1, !dbg !588, !tbaa !404
  %73 = getelementptr inbounds i8, i8* %.01226, i32 1, !dbg !589
  call void @llvm.dbg.value(metadata i8* %73, metadata !485, metadata !DIExpression()), !dbg !508
  store i8 %72, i8* %.01226, align 1, !dbg !590, !tbaa !404
  br label %74, !dbg !591

74:                                               ; preds = %71, %67
  %.113 = phi i8* [ %73, %71 ], [ %.01226, %67 ], !dbg !592
  call void @llvm.dbg.value(metadata i8* %.113, metadata !485, metadata !DIExpression()), !dbg !508
  br label %75, !dbg !593

75:                                               ; preds = %74
  %76 = getelementptr inbounds i8, i8* %.01027, i32 1, !dbg !594
  call void @llvm.dbg.value(metadata i8* %76, metadata !484, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %.113, metadata !485, metadata !DIExpression()), !dbg !508
  %77 = load i8, i8* %76, align 1, !dbg !580, !tbaa !404
  %78 = icmp ne i8 %77, 0, !dbg !582
  br i1 %78, label %67, label %._crit_edge30, !dbg !582, !llvm.loop !595

._crit_edge30:                                    ; preds = %75
  %split = phi i8* [ %.113, %75 ]
  br label %79, !dbg !582

79:                                               ; preds = %._crit_edge30, %59
  %.012.lcssa = phi i8* [ %split, %._crit_edge30 ], [ %64, %59 ], !dbg !592
  call void @llvm.dbg.value(metadata i8* %.012.lcssa, metadata !485, metadata !DIExpression()), !dbg !508
  store i8 0, i8* %.012.lcssa, align 1, !dbg !597, !tbaa !404
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !598
  %81 = load i8, i8* %80, align 1, !dbg !598, !tbaa !404
  %82 = sext i8 %81 to i32, !dbg !598
  %83 = icmp eq i32 %82, 49, !dbg !600
  br i1 %83, label %94, label %84, !dbg !601

84:                                               ; preds = %79
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !602
  %86 = load i8, i8* %85, align 1, !dbg !602, !tbaa !404
  %87 = sext i8 %86 to i32, !dbg !602
  %88 = icmp eq i32 %87, 50, !dbg !603
  br i1 %88, label %94, label %89, !dbg !604

89:                                               ; preds = %84
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !605
  %91 = load i8, i8* %90, align 1, !dbg !605, !tbaa !404
  %92 = sext i8 %91 to i32, !dbg !605
  %93 = icmp eq i32 %92, 51, !dbg !606
  br i1 %93, label %94, label %117, !dbg !607

94:                                               ; preds = %89, %84, %79
  %95 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !608
  %96 = load i8, i8* %95, align 1, !dbg !608, !tbaa !404
  call void @llvm.dbg.value(metadata i8 %96, metadata !496, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 0, metadata !495, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i64 0, metadata !495, metadata !DIExpression()), !dbg !508
  %97 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !610
  %98 = call i64 @strlen(i8* %97) #9, !dbg !613
  %99 = trunc i64 %98 to i32, !dbg !614
  %100 = sub nsw i32 %99, 1, !dbg !615
  %101 = sext i32 %100 to i64, !dbg !616
  %102 = icmp slt i64 0, %101, !dbg !616
  br i1 %102, label %.lr.ph33, label %113, !dbg !617

.lr.ph33:                                         ; preds = %94
  br label %103, !dbg !617

103:                                              ; preds = %.lr.ph33, %107
  %indvars.iv2331 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next24, %107 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2331, metadata !495, metadata !DIExpression()), !dbg !508
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv2331, 1, !dbg !618
  %104 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %indvars.iv.next24, !dbg !619
  %105 = load i8, i8* %104, align 1, !dbg !619, !tbaa !404
  %106 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %indvars.iv2331, !dbg !620
  store i8 %105, i8* %106, align 1, !dbg !621, !tbaa !404
  br label %107, !dbg !620

107:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next24, metadata !495, metadata !DIExpression()), !dbg !508
  %108 = call i64 @strlen(i8* %97) #9, !dbg !613
  %109 = trunc i64 %108 to i32, !dbg !614
  %110 = sub nsw i32 %109, 1, !dbg !615
  %111 = sext i32 %110 to i64, !dbg !616
  %112 = icmp slt i64 %indvars.iv.next24, %111, !dbg !616
  br i1 %112, label %103, label %._crit_edge34, !dbg !617, !llvm.loop !622

._crit_edge34:                                    ; preds = %107
  %split35 = phi i64 [ %indvars.iv.next24, %107 ]
  br label %113, !dbg !617

113:                                              ; preds = %._crit_edge34, %94
  %.1.lcssa.wide = phi i64 [ %split35, %._crit_edge34 ], [ 0, %94 ]
  %114 = trunc i64 %.1.lcssa.wide to i32, !dbg !508
  call void @llvm.dbg.value(metadata i32 %114, metadata !495, metadata !DIExpression()), !dbg !508
  %115 = sext i32 %114 to i64, !dbg !624
  %116 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %115, !dbg !624
  store i8 %96, i8* %116, align 1, !dbg !625, !tbaa !404
  br label %117, !dbg !626

117:                                              ; preds = %113, %89
  %118 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2, !dbg !627
  %119 = load i8, i8* %118, align 1, !dbg !627, !tbaa !404
  %120 = sext i8 %119 to i32, !dbg !627
  %121 = icmp eq i32 %120, 42, !dbg !629
  br i1 %121, label %122, label %124, !dbg !630

122:                                              ; preds = %117
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2, !dbg !631
  store i8 39, i8* %123, align 1, !dbg !632, !tbaa !404
  br label %124, !dbg !631

124:                                              ; preds = %122, %117
  %125 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !633
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !635
  %127 = icmp ne i32 %126, 0, !dbg !635
  br i1 %127, label %131, label %128, !dbg !636

128:                                              ; preds = %124
  %129 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !637
  %130 = call i8* @strcpy(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #10, !dbg !638
  br label %131, !dbg !638

131:                                              ; preds = %128, %124
  %132 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !639
  %133 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 17, !dbg !640
  %134 = call i8* @strncpy(i8* %132, i8* %133, i64 3) #10, !dbg !641
  %135 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 3, !dbg !642
  store i8 0, i8* %135, align 1, !dbg !643, !tbaa !404
  %136 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !644
  call void @llvm.dbg.value(metadata i8* %136, metadata !485, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %136, metadata !484, metadata !DIExpression()), !dbg !508
  %137 = load i8, i8* %136, align 1, !dbg !646, !tbaa !404
  %138 = icmp ne i8 %137, 0, !dbg !648
  br i1 %138, label %.lr.ph39, label %151, !dbg !648

.lr.ph39:                                         ; preds = %131
  br label %139, !dbg !648

139:                                              ; preds = %.lr.ph39, %147
  %.11137 = phi i8* [ %136, %.lr.ph39 ], [ %148, %147 ]
  %.21436 = phi i8* [ %136, %.lr.ph39 ], [ %.315, %147 ]
  call void @llvm.dbg.value(metadata i8* %.11137, metadata !484, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %.21436, metadata !485, metadata !DIExpression()), !dbg !508
  %140 = load i8, i8* %.11137, align 1, !dbg !649, !tbaa !404
  %141 = sext i8 %140 to i32, !dbg !649
  %142 = icmp ne i32 %141, 32, !dbg !652
  br i1 %142, label %143, label %146, !dbg !653

143:                                              ; preds = %139
  %144 = load i8, i8* %.11137, align 1, !dbg !654, !tbaa !404
  %145 = getelementptr inbounds i8, i8* %.21436, i32 1, !dbg !655
  call void @llvm.dbg.value(metadata i8* %145, metadata !485, metadata !DIExpression()), !dbg !508
  store i8 %144, i8* %.21436, align 1, !dbg !656, !tbaa !404
  br label %146, !dbg !657

146:                                              ; preds = %143, %139
  %.315 = phi i8* [ %145, %143 ], [ %.21436, %139 ], !dbg !658
  call void @llvm.dbg.value(metadata i8* %.315, metadata !485, metadata !DIExpression()), !dbg !508
  br label %147, !dbg !659

147:                                              ; preds = %146
  %148 = getelementptr inbounds i8, i8* %.11137, i32 1, !dbg !660
  call void @llvm.dbg.value(metadata i8* %148, metadata !484, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i8* %.315, metadata !485, metadata !DIExpression()), !dbg !508
  %149 = load i8, i8* %148, align 1, !dbg !646, !tbaa !404
  %150 = icmp ne i8 %149, 0, !dbg !648
  br i1 %150, label %139, label %._crit_edge40, !dbg !648, !llvm.loop !661

._crit_edge40:                                    ; preds = %147
  %split41 = phi i8* [ %.315, %147 ]
  br label %151, !dbg !648

151:                                              ; preds = %._crit_edge40, %131
  %.214.lcssa = phi i8* [ %split41, %._crit_edge40 ], [ %136, %131 ], !dbg !658
  call void @llvm.dbg.value(metadata i8* %.214.lcssa, metadata !485, metadata !DIExpression()), !dbg !508
  store i8 0, i8* %.214.lcssa, align 1, !dbg !663, !tbaa !404
  %152 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !664
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !666
  %154 = icmp ne i32 %153, 0, !dbg !666
  br i1 %154, label %156, label %155, !dbg !667

155:                                              ; preds = %151
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 7), align 4, !dbg !668, !tbaa !669
  br label %156, !dbg !671

156:                                              ; preds = %155, %151
  %157 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !672
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !674
  %159 = icmp ne i32 %158, 0, !dbg !674
  br i1 %159, label %166, label %160, !dbg !675

160:                                              ; preds = %156
  %161 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 7), align 4, !dbg !676, !tbaa !669
  %162 = icmp eq i32 %161, 2, !dbg !677
  br i1 %162, label %163, label %166, !dbg !678

163:                                              ; preds = %160
  %164 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !679
  %165 = call i8* @strcpy(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !680
  br label %166, !dbg !680

166:                                              ; preds = %163, %160, %156
  %167 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !681
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !683
  %169 = icmp ne i32 %168, 0, !dbg !683
  br i1 %169, label %173, label %170, !dbg !684

170:                                              ; preds = %166
  %171 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !685
  %172 = call i8* @strcpy(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !686
  br label %173, !dbg !686

173:                                              ; preds = %170, %166
  %174 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !687
  %175 = call i32 @strcmp(i8* %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !689
  %176 = icmp ne i32 %175, 0, !dbg !689
  br i1 %176, label %180, label %177, !dbg !690

177:                                              ; preds = %173
  %178 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !691
  %179 = call i8* @strcpy(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !692
  br label %180, !dbg !692

180:                                              ; preds = %177, %173
  %181 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !693
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !695
  %183 = icmp ne i32 %182, 0, !dbg !695
  br i1 %183, label %187, label %184, !dbg !696

184:                                              ; preds = %180
  %185 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !697
  %186 = call i8* @strcpy(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #10, !dbg !698
  br label %187, !dbg !698

187:                                              ; preds = %184, %180
  %188 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !699
  %189 = call i32 @strcmp(i8* %188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0)) #9, !dbg !701
  %190 = icmp ne i32 %189, 0, !dbg !701
  br i1 %190, label %194, label %191, !dbg !702

191:                                              ; preds = %187
  %192 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !703
  %193 = call i8* @strcpy(i8* %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #10, !dbg !704
  br label %194, !dbg !704

194:                                              ; preds = %191, %187
  %195 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !705
  %196 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !707
  %197 = icmp ne i32 %196, 0, !dbg !707
  br i1 %197, label %201, label %198, !dbg !708

198:                                              ; preds = %194
  %199 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !709
  %200 = call i8* @strcpy(i8* %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !710
  br label %201, !dbg !710

201:                                              ; preds = %198, %194
  %202 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !711
  %203 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 21, !dbg !712
  %204 = call i8* @strncpy(i8* %202, i8* %203, i64 6) #10, !dbg !713
  %205 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6, !dbg !714
  store i8 0, i8* %205, align 1, !dbg !715, !tbaa !404
  %206 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 21, !dbg !716
  %207 = load i8, i8* %206, align 1, !dbg !716, !tbaa !404
  %208 = sext i8 %207 to i32, !dbg !716
  call void @llvm.dbg.value(metadata i32 %208, metadata !468, metadata !DIExpression()), !dbg !508
  %209 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 22, !dbg !717
  %210 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* %11) #10, !dbg !718
  %211 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !719
  %212 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 30, !dbg !720
  %213 = call i8* @strncpy(i8* %211, i8* %212, i64 8) #10, !dbg !721
  %214 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8, !dbg !722
  store i8 0, i8* %214, align 1, !dbg !723, !tbaa !404
  %215 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !724
  %216 = call double @atof(i8* %215) #9, !dbg !725
  call void @llvm.dbg.value(metadata double %216, metadata !488, metadata !DIExpression()), !dbg !508
  %217 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !726
  %218 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 38, !dbg !727
  %219 = call i8* @strncpy(i8* %217, i8* %218, i64 8) #10, !dbg !728
  %220 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8, !dbg !729
  store i8 0, i8* %220, align 1, !dbg !730, !tbaa !404
  %221 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !731
  %222 = call double @atof(i8* %221) #9, !dbg !732
  call void @llvm.dbg.value(metadata double %222, metadata !489, metadata !DIExpression()), !dbg !508
  %223 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !733
  %224 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 46, !dbg !734
  %225 = call i8* @strncpy(i8* %223, i8* %224, i64 8) #10, !dbg !735
  %226 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8, !dbg !736
  store i8 0, i8* %226, align 1, !dbg !737, !tbaa !404
  %227 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !738
  %228 = call double @atof(i8* %227) #9, !dbg !739
  call void @llvm.dbg.value(metadata double %228, metadata !490, metadata !DIExpression()), !dbg !508
  %229 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !740
  %230 = call i8* @strstr(i8* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !742
  %231 = icmp ne i8* %230, null, !dbg !742
  br i1 %231, label %232, label %235, !dbg !743

232:                                              ; preds = %201
  %233 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 54, !dbg !744
  %234 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %233, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* %12, double* %13) #10, !dbg !746
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !493, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !494, metadata !DIExpression()), !dbg !508
  br label %284, !dbg !747

235:                                              ; preds = %201
  %236 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !748
  %237 = call i32 @strncmp(i8* %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1) #9, !dbg !751
  %238 = icmp ne i32 %237, 0, !dbg !751
  br i1 %238, label %240, label %239, !dbg !752

239:                                              ; preds = %235
  store double 1.200000e+00, double* %13, align 8, !dbg !753, !tbaa !754
  br label %271, !dbg !756

240:                                              ; preds = %235
  %241 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !757
  %242 = call i32 @strncmp(i8* %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1) #9, !dbg !759
  %243 = icmp ne i32 %242, 0, !dbg !759
  br i1 %243, label %245, label %244, !dbg !760

244:                                              ; preds = %240
  store double 1.700000e+00, double* %13, align 8, !dbg !761, !tbaa !754
  br label %270, !dbg !762

245:                                              ; preds = %240
  %246 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !763
  %247 = call i32 @strncmp(i8* %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i64 1) #9, !dbg !765
  %248 = icmp ne i32 %247, 0, !dbg !765
  br i1 %248, label %250, label %249, !dbg !766

249:                                              ; preds = %245
  store double 1.550000e+00, double* %13, align 8, !dbg !767, !tbaa !754
  br label %269, !dbg !768

250:                                              ; preds = %245
  %251 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !769
  %252 = call i32 @strncmp(i8* %251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i64 1) #9, !dbg !771
  %253 = icmp ne i32 %252, 0, !dbg !771
  br i1 %253, label %255, label %254, !dbg !772

254:                                              ; preds = %250
  store double 1.500000e+00, double* %13, align 8, !dbg !773, !tbaa !754
  br label %268, !dbg !774

255:                                              ; preds = %250
  %256 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !775
  %257 = call i32 @strncmp(i8* %256, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 1) #9, !dbg !777
  %258 = icmp ne i32 %257, 0, !dbg !777
  br i1 %258, label %260, label %259, !dbg !778

259:                                              ; preds = %255
  store double 1.800000e+00, double* %13, align 8, !dbg !779, !tbaa !754
  br label %267, !dbg !780

260:                                              ; preds = %255
  %261 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !781
  %262 = call i32 @strncmp(i8* %261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1) #9, !dbg !783
  %263 = icmp ne i32 %262, 0, !dbg !783
  br i1 %263, label %265, label %264, !dbg !784

264:                                              ; preds = %260
  store double 1.850000e+00, double* %13, align 8, !dbg !785, !tbaa !754
  br label %266, !dbg !786

265:                                              ; preds = %260
  store double 1.700000e+00, double* %13, align 8, !dbg !787, !tbaa !754
  br label %266

266:                                              ; preds = %265, %264
  br label %267

267:                                              ; preds = %266, %259
  br label %268

268:                                              ; preds = %267, %254
  br label %269

269:                                              ; preds = %268, %249
  br label %270

270:                                              ; preds = %269, %244
  br label %271

271:                                              ; preds = %270, %239
  store double 0.000000e+00, double* %12, align 8, !dbg !788, !tbaa !754
  %272 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !789
  %273 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 54, !dbg !790
  %274 = call i8* @strncpy(i8* %272, i8* %273, i64 6) #10, !dbg !791
  %275 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6, !dbg !792
  store i8 0, i8* %275, align 1, !dbg !793, !tbaa !404
  %276 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !794
  %277 = call double @atof(i8* %276) #9, !dbg !795
  call void @llvm.dbg.value(metadata double %277, metadata !493, metadata !DIExpression()), !dbg !508
  %278 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !796
  %279 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 60, !dbg !797
  %280 = call i8* @strncpy(i8* %278, i8* %279, i64 6) #10, !dbg !798
  %281 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6, !dbg !799
  store i8 0, i8* %281, align 1, !dbg !800, !tbaa !404
  %282 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !801
  %283 = call double @atof(i8* %282) #9, !dbg !802
  call void @llvm.dbg.value(metadata double %283, metadata !494, metadata !DIExpression()), !dbg !508
  br label %284

284:                                              ; preds = %271, %232
  %.06 = phi double [ 1.000000e+00, %232 ], [ %277, %271 ], !dbg !803
  %.03 = phi double [ 0.000000e+00, %232 ], [ %283, %271 ], !dbg !803
  call void @llvm.dbg.value(metadata double %.03, metadata !494, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata double %.06, metadata !493, metadata !DIExpression()), !dbg !508
  %285 = icmp ne i32 %208, %.0450, !dbg !804
  br i1 %285, label %286, label %348, !dbg !805

286:                                              ; preds = %284
  %287 = load i32, i32* @n_atab, align 4, !dbg !806, !tbaa !543
  %288 = icmp sgt i32 %287, 0, !dbg !808
  br i1 %288, label %289, label %299, !dbg !809

289:                                              ; preds = %286
  %290 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !810, !tbaa !812
  %291 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !813
  %292 = call i8* @strcpy(i8* %290, i8* %291) #10, !dbg !814
  %293 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !815, !tbaa !816
  %294 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !817
  %295 = call i8* @strcpy(i8* %293, i8* %294) #10, !dbg !818
  store i32 %.01646, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8, !dbg !819, !tbaa !820
  %296 = load i32, i32* @n_atab, align 4, !dbg !821, !tbaa !543
  store i32 %296, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !822, !tbaa !823
  call void @makebonds(%struct.residue_t* @res), !dbg !824
  %297 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !825
  %298 = call i32 @addresidue(%struct.molecule_t* %34, i8* %297, %struct.residue_t* @res), !dbg !826
  call void @initres(), !dbg !827
  store i32 0, i32* @n_atab, align 4, !dbg !828, !tbaa !543
  br label %299, !dbg !829

299:                                              ; preds = %289, %286
  %300 = add nsw i32 %.0748, 1, !dbg !830
  call void @llvm.dbg.value(metadata i32 %300, metadata !469, metadata !DIExpression()), !dbg !508
  %301 = icmp eq i32 %208, 32, !dbg !831
  br i1 %301, label %302, label %305, !dbg !833

302:                                              ; preds = %299
  %303 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !834
  %304 = call i32 (i8*, i8*, ...) @sprintf(i8* %303, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %300) #10, !dbg !835
  br label %309, !dbg !835

305:                                              ; preds = %299
  %306 = trunc i32 %208 to i8, !dbg !836
  %307 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !838
  store i8 %306, i8* %307, align 1, !dbg !839, !tbaa !404
  %308 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 1, !dbg !840
  store i8 0, i8* %308, align 1, !dbg !841, !tbaa !404
  br label %309

309:                                              ; preds = %305, %302
  %310 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !842
  %311 = call i32 @addstrand(%struct.molecule_t* %34, i8* %310), !dbg !843
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !498, metadata !DIExpression()), !dbg !844
  %312 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %34, i32 0, i32 2, !dbg !845
  %313 = load %struct.strand_t*, %struct.strand_t** %312, align 8, !dbg !845, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %313, metadata !507, metadata !DIExpression()), !dbg !844
  %314 = icmp ne %struct.strand_t* %313, null, !dbg !849
  br i1 %314, label %.lr.ph44, label %.loopexit, !dbg !849

.lr.ph44:                                         ; preds = %309
  br label %315, !dbg !849

315:                                              ; preds = %.lr.ph44, %323
  %.042 = phi %struct.strand_t* [ %313, %.lr.ph44 ], [ %325, %323 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.042, metadata !507, metadata !DIExpression()), !dbg !844
  %316 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.042, i32 0, i32 0, !dbg !850
  %317 = load i8*, i8** %316, align 8, !dbg !850, !tbaa !854
  %318 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !856
  %319 = call i32 @strcmp(i8* %317, i8* %318) #9, !dbg !857
  %320 = icmp ne i32 %319, 0, !dbg !857
  br i1 %320, label %322, label %321, !dbg !858

321:                                              ; preds = %315
  %.0.lcssa20 = phi %struct.strand_t* [ %.042, %315 ], !dbg !859
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0.lcssa20, metadata !507, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0.lcssa20, metadata !498, metadata !DIExpression()), !dbg !844
  br label %327, !dbg !860

322:                                              ; preds = %315
  br label %323, !dbg !862

323:                                              ; preds = %322
  %324 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.042, i32 0, i32 4, !dbg !863
  %325 = load %struct.strand_t*, %struct.strand_t** %324, align 8, !dbg !863, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.strand_t* %325, metadata !507, metadata !DIExpression()), !dbg !844
  %326 = icmp ne %struct.strand_t* %325, null, !dbg !849
  br i1 %326, label %315, label %..loopexit_crit_edge, !dbg !849, !llvm.loop !865

..loopexit_crit_edge:                             ; preds = %323
  br label %.loopexit, !dbg !849

.loopexit:                                        ; preds = %..loopexit_crit_edge, %309
  br label %327, !dbg !867

327:                                              ; preds = %.loopexit, %321
  %.01 = phi %struct.strand_t* [ %.0.lcssa20, %321 ], [ null, %.loopexit ], !dbg !859
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !498, metadata !DIExpression()), !dbg !844
  %328 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 6, !dbg !867
  store i32 10000, i32* %328, align 4, !dbg !868, !tbaa !869
  %329 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 6, !dbg !870
  %330 = load i32, i32* %329, align 4, !dbg !870, !tbaa !869
  %331 = sext i32 %330 to i64, !dbg !871
  %332 = mul i64 %331, 128, !dbg !872
  %333 = call noalias i8* @malloc(i64 %332) #10, !dbg !873
  %334 = bitcast i8* %333 to %struct.residue_t**, !dbg !874
  %335 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7, !dbg !875
  store %struct.residue_t** %334, %struct.residue_t*** %335, align 8, !dbg !876, !tbaa !877
  %336 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7, !dbg !878
  %337 = load %struct.residue_t**, %struct.residue_t*** %336, align 8, !dbg !878, !tbaa !877
  %338 = icmp eq %struct.residue_t** %337, null, !dbg !880
  br i1 %338, label %339, label %340, !dbg !881

339:                                              ; preds = %327
  br label %340, !dbg !882

340:                                              ; preds = %339, %327
  call void @llvm.dbg.value(metadata i32 %208, metadata !467, metadata !DIExpression()), !dbg !508
  %341 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !884
  %342 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !885
  %343 = call i8* @strcpy(i8* %341, i8* %342) #10, !dbg !886
  %344 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !887
  %345 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !888
  %346 = call i8* @strcpy(i8* %344, i8* %345) #10, !dbg !889
  %347 = load i32, i32* %11, align 4, !dbg !890, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %347, metadata !487, metadata !DIExpression()), !dbg !508
  br label %372, !dbg !891

348:                                              ; preds = %284
  %349 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !892
  %350 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !894
  %351 = load i32, i32* %11, align 4, !dbg !895, !tbaa !543
  %352 = call i32 @isnewres(i8* %349, i8* %350, i32 %.01646, i32 %351), !dbg !896
  %353 = icmp ne i32 %352, 0, !dbg !896
  br i1 %353, label %354, label %371, !dbg !897

354:                                              ; preds = %348
  %355 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !898, !tbaa !812
  %356 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !900
  %357 = call i8* @strcpy(i8* %355, i8* %356) #10, !dbg !901
  %358 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !902, !tbaa !816
  %359 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !903
  %360 = call i8* @strcpy(i8* %358, i8* %359) #10, !dbg !904
  store i32 %.01646, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8, !dbg !905, !tbaa !820
  %361 = load i32, i32* @n_atab, align 4, !dbg !906, !tbaa !543
  store i32 %361, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !907, !tbaa !823
  call void @makebonds(%struct.residue_t* @res), !dbg !908
  %362 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !909
  %363 = call i32 @addresidue(%struct.molecule_t* %34, i8* %362, %struct.residue_t* @res), !dbg !910
  call void @initres(), !dbg !911
  %364 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !912
  %365 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !913
  %366 = call i8* @strcpy(i8* %364, i8* %365) #10, !dbg !914
  %367 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !915
  %368 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !916
  %369 = call i8* @strcpy(i8* %367, i8* %368) #10, !dbg !917
  %370 = load i32, i32* %11, align 4, !dbg !918, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %370, metadata !487, metadata !DIExpression()), !dbg !508
  store i32 0, i32* @n_atab, align 4, !dbg !919, !tbaa !543
  br label %371, !dbg !920

371:                                              ; preds = %354, %348
  %.117 = phi i32 [ %370, %354 ], [ %.01646, %348 ], !dbg !508
  call void @llvm.dbg.value(metadata i32 %.117, metadata !487, metadata !DIExpression()), !dbg !508
  br label %372

372:                                              ; preds = %371, %340
  %.218 = phi i32 [ %347, %340 ], [ %.117, %371 ], !dbg !921
  %.18 = phi i32 [ %300, %340 ], [ %.0748, %371 ], !dbg !922
  %.15 = phi i32 [ %208, %340 ], [ %.0450, %371 ], !dbg !508
  call void @llvm.dbg.value(metadata i32 %.15, metadata !467, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 %.18, metadata !469, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 %.218, metadata !487, metadata !DIExpression()), !dbg !508
  %373 = load i32, i32* @n_atab, align 4, !dbg !923, !tbaa !543
  %374 = sext i32 %373 to i64, !dbg !924
  %375 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %374, !dbg !924
  call void @llvm.dbg.value(metadata %struct.atom_t* %375, metadata !466, metadata !DIExpression()), !dbg !508
  call void @NAB_initatom(%struct.atom_t* %375, i32 0), !dbg !925
  %376 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 0, !dbg !926
  %377 = load i8*, i8** %376, align 8, !dbg !926, !tbaa !927
  %378 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !929
  %379 = call i8* @strcpy(i8* %377, i8* %378) #10, !dbg !930
  %380 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 2, !dbg !931
  store i32 0, i32* %380, align 8, !dbg !932, !tbaa !933
  %381 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 5, !dbg !934
  store %struct.residue_t* null, %struct.residue_t** %381, align 8, !dbg !935, !tbaa !936
  %382 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 17, !dbg !937
  %383 = getelementptr inbounds [3 x double], [3 x double]* %382, i64 0, i64 0, !dbg !938
  store double %216, double* %383, align 8, !dbg !939, !tbaa !754
  %384 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 17, !dbg !940
  %385 = getelementptr inbounds [3 x double], [3 x double]* %384, i64 0, i64 1, !dbg !941
  store double %222, double* %385, align 8, !dbg !942, !tbaa !754
  %386 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 17, !dbg !943
  %387 = getelementptr inbounds [3 x double], [3 x double]* %386, i64 0, i64 2, !dbg !944
  store double %228, double* %387, align 8, !dbg !945, !tbaa !754
  %388 = load double, double* %12, align 8, !dbg !946, !tbaa !754
  %389 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 6, !dbg !947
  store double %388, double* %389, align 8, !dbg !948, !tbaa !949
  %390 = load double, double* %13, align 8, !dbg !950, !tbaa !754
  %391 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 7, !dbg !951
  store double %390, double* %391, align 8, !dbg !952, !tbaa !953
  %392 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 9, !dbg !954
  store double %.06, double* %392, align 8, !dbg !955, !tbaa !956
  %393 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %375, i32 0, i32 8, !dbg !957
  store double %.03, double* %393, align 8, !dbg !958, !tbaa !959
  %394 = load i32, i32* @n_atab, align 4, !dbg !960, !tbaa !543
  %395 = add nsw i32 %394, 1, !dbg !960
  store i32 %395, i32* @n_atab, align 4, !dbg !960, !tbaa !543
  br label %423, !dbg !961

396:                                              ; preds = %55
  %397 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !962
  %398 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* %397, i64 3) #9, !dbg !964
  %399 = icmp eq i32 %398, 0, !dbg !965
  br i1 %399, label %400, label %416, !dbg !966

400:                                              ; preds = %396
  %401 = load i32, i32* @n_atab, align 4, !dbg !967, !tbaa !543
  %402 = icmp sgt i32 %401, 0, !dbg !970
  br i1 %402, label %403, label %413, !dbg !971

403:                                              ; preds = %400
  %404 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !972, !tbaa !812
  %405 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !974
  %406 = call i8* @strcpy(i8* %404, i8* %405) #10, !dbg !975
  %407 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !976, !tbaa !816
  %408 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !977
  %409 = call i8* @strcpy(i8* %407, i8* %408) #10, !dbg !978
  store i32 %.01645, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8, !dbg !979, !tbaa !820
  %410 = load i32, i32* @n_atab, align 4, !dbg !980, !tbaa !543
  store i32 %410, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !981, !tbaa !823
  call void @makebonds(%struct.residue_t* @res), !dbg !982
  %411 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !983
  %412 = call i32 @addresidue(%struct.molecule_t* %34, i8* %411, %struct.residue_t* @res), !dbg !984
  call void @initres(), !dbg !985
  store i32 0, i32* @n_atab, align 4, !dbg !986, !tbaa !543
  br label %413, !dbg !987

413:                                              ; preds = %403, %400
  call void @llvm.dbg.value(metadata i32 0, metadata !467, metadata !DIExpression()), !dbg !508
  %414 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !988
  store i8 0, i8* %414, align 1, !dbg !989, !tbaa !404
  %415 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !990
  store i8 0, i8* %415, align 1, !dbg !991, !tbaa !404
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !508
  br label %422, !dbg !992

416:                                              ; preds = %396
  %417 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !993
  %418 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* %417, i64 3) #9, !dbg !995
  %419 = icmp eq i32 %418, 0, !dbg !996
  br i1 %419, label %420, label %421, !dbg !997

420:                                              ; preds = %416
  %.016.lcssa21 = phi i32 [ %.01645, %416 ], !dbg !508
  call void @llvm.dbg.value(metadata i32 %.016.lcssa21, metadata !487, metadata !DIExpression()), !dbg !508
  br label %426, !dbg !998

421:                                              ; preds = %416
  br label %422

422:                                              ; preds = %421, %413
  %.319 = phi i32 [ 0, %413 ], [ %.01645, %421 ], !dbg !508
  %.2 = phi i32 [ 0, %413 ], [ %.0449, %421 ], !dbg !508
  call void @llvm.dbg.value(metadata i32 %.2, metadata !467, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 %.319, metadata !487, metadata !DIExpression()), !dbg !508
  br label %423

423:                                              ; preds = %422, %372
  %.4 = phi i32 [ %.218, %372 ], [ %.319, %422 ], !dbg !999
  %.29 = phi i32 [ %.18, %372 ], [ %.0747, %422 ], !dbg !922
  %.3 = phi i32 [ %.15, %372 ], [ %.2, %422 ], !dbg !999
  call void @llvm.dbg.value(metadata i32 %.3, metadata !467, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 %.29, metadata !469, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.value(metadata i32 %.4, metadata !487, metadata !DIExpression()), !dbg !508
  %424 = call i8* @ggets(i8* %36, i32 82, %struct._IO_FILE* %0), !dbg !547
  %425 = icmp eq i8* %424, null, !dbg !548
  br i1 %425, label %._crit_edge53, label %40, !dbg !549, !llvm.loop !1000

426:                                              ; preds = %420, %39
  %.01622 = phi i32 [ %.016.lcssa21, %420 ], [ %.016.lcssa, %39 ]
  %427 = load i32, i32* @n_atab, align 4, !dbg !1003, !tbaa !543
  %428 = icmp sgt i32 %427, 0, !dbg !1005
  br i1 %428, label %429, label %439, !dbg !1006

429:                                              ; preds = %426
  %430 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !1007, !tbaa !812
  %431 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !1009
  %432 = call i8* @strcpy(i8* %430, i8* %431) #10, !dbg !1010
  %433 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !1011, !tbaa !816
  %434 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !1012
  %435 = call i8* @strcpy(i8* %433, i8* %434) #10, !dbg !1013
  store i32 %.01622, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8, !dbg !1014, !tbaa !820
  %436 = load i32, i32* @n_atab, align 4, !dbg !1015, !tbaa !543
  store i32 %436, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !1016, !tbaa !823
  call void @makebonds(%struct.residue_t* @res), !dbg !1017
  %437 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !1018
  %438 = call i32 @addresidue(%struct.molecule_t* %34, i8* %437, %struct.residue_t* @res), !dbg !1019
  call void @initres(), !dbg !1020
  br label %439, !dbg !1021

439:                                              ; preds = %429, %426
  %440 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %34, i32 0, i32 5, !dbg !1022
  store i32 0, i32* %440, align 8, !dbg !1023, !tbaa !1024
  %441 = bitcast [256 x i8]* %14 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %441) #10, !dbg !1025
  %442 = bitcast double* %13 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %442) #10, !dbg !1025
  %443 = bitcast double* %12 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %443) #10, !dbg !1025
  %444 = bitcast i32* %11 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %444) #10, !dbg !1025
  %445 = bitcast [10 x i8]* %10 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %445) #10, !dbg !1025
  %446 = bitcast [10 x i8]* %9 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %446) #10, !dbg !1025
  %447 = bitcast [10 x i8]* %8 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %447) #10, !dbg !1025
  %448 = bitcast [10 x i8]* %7 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %448) #10, !dbg !1025
  %449 = bitcast [10 x i8]* %6 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %449) #10, !dbg !1025
  %450 = bitcast [10 x i8]* %5 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %450) #10, !dbg !1025
  %451 = bitcast [10 x i8]* %4 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 10, i8* %451) #10, !dbg !1025
  %452 = bitcast [82 x i8]* %3 to i8*, !dbg !1025
  call void @llvm.lifetime.end.p0i8(i64 82, i8* %452) #10, !dbg !1025
  ret %struct.molecule_t* %34, !dbg !1026
}

declare !dbg !43 dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @getmatrix(i8* %0) #0 !dbg !2 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !370, metadata !DIExpression()), !dbg !1027
  %3 = bitcast [256 x i8]* %2 to i8*, !dbg !1028
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %3) #10, !dbg !1028
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !374, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.declare(metadata !38, metadata !379, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i32 0, metadata !382, metadata !DIExpression()), !dbg !1027
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1031
  %4 = icmp eq i8* %0, null, !dbg !1032
  br i1 %4, label %9, label %5, !dbg !1034

5:                                                ; preds = %1
  %6 = load i8, i8* %0, align 1, !dbg !1035, !tbaa !404
  %7 = sext i8 %6 to i32, !dbg !1035
  %8 = icmp eq i32 %7, 0, !dbg !1036
  br i1 %8, label %9, label %12, !dbg !1037

9:                                                ; preds = %5, %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1038, !tbaa !410
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)), !dbg !1040
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !1027
  br label %66, !dbg !1041

12:                                               ; preds = %5
  %13 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !1042
  %14 = icmp ne i32 %13, 0, !dbg !1042
  br i1 %14, label %17, label %15, !dbg !1044

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1045, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !370, metadata !DIExpression()), !dbg !1027
  br label %24, !dbg !1046

17:                                               ; preds = %12
  %18 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !1047
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, metadata !370, metadata !DIExpression()), !dbg !1027
  %19 = icmp eq %struct._IO_FILE* %18, null, !dbg !1049
  br i1 %19, label %20, label %23, !dbg !1050

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1051, !tbaa !410
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %0), !dbg !1053
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !1027
  br label %66, !dbg !1054

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %15
  %.0 = phi %struct._IO_FILE* [ %18, %23 ], [ %16, %15 ], !dbg !1055
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.0, metadata !370, metadata !DIExpression()), !dbg !1027
  br label %25

25:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 0, metadata !378, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i64 0, metadata !378, metadata !DIExpression()), !dbg !1027
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !1056
  %27 = call i8* @fgets(i8* %26, i32 256, %struct._IO_FILE* %.0), !dbg !1059
  %28 = icmp ne i8* %27, null, !dbg !1060
  br i1 %28, label %.lr.ph.lr.ph, label %.outer..loopexit_crit_edge, !dbg !1060

.lr.ph.lr.ph:                                     ; preds = %25
  br label %.lr.ph, !dbg !1060

.outer:                                           ; preds = %56
  %indvars.iv = phi i64 [ %indvars.iv.next, %56 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !378, metadata !DIExpression()), !dbg !1027
  %29 = call i8* @fgets(i8* %26, i32 256, %struct._IO_FILE* %.0), !dbg !1059
  %30 = icmp ne i8* %29, null, !dbg !1060
  br i1 %30, label %.lr.ph, label %.outer..outer..loopexit_crit_edge_crit_edge, !dbg !1060, !llvm.loop !1061

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %indvars.iv8 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv, %.outer ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !378, metadata !DIExpression()), !dbg !1027
  br label %34, !dbg !1060

31:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !378, metadata !DIExpression()), !dbg !1027
  %32 = call i8* @fgets(i8* %26, i32 256, %struct._IO_FILE* %.0), !dbg !1059
  %33 = icmp ne i8* %32, null, !dbg !1060
  br i1 %33, label %34, label %..loopexit_crit_edge, !dbg !1060, !llvm.loop !1061

34:                                               ; preds = %.lr.ph, %31
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !1063
  %36 = load i8, i8* %35, align 16, !dbg !1063, !tbaa !404
  %37 = sext i8 %36 to i32, !dbg !1063
  %38 = icmp eq i32 %37, 35, !dbg !1066
  br i1 %38, label %31, label %39, !dbg !1067

39:                                               ; preds = %34
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !1068
  %41 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv8, !dbg !1069
  %42 = getelementptr inbounds [4 x double], [4 x double]* %41, i64 0, i64 0, !dbg !1069
  %43 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv8, !dbg !1070
  %44 = getelementptr inbounds [4 x double], [4 x double]* %43, i64 0, i64 1, !dbg !1070
  %45 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv8, !dbg !1071
  %46 = getelementptr inbounds [4 x double], [4 x double]* %45, i64 0, i64 2, !dbg !1071
  %47 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv8, !dbg !1072
  %48 = getelementptr inbounds [4 x double], [4 x double]* %47, i64 0, i64 3, !dbg !1072
  %49 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* %42, double* %44, double* %46, double* %48) #10, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %49, metadata !380, metadata !DIExpression()), !dbg !1027
  %50 = icmp ne i32 %49, 4, !dbg !1074
  br i1 %50, label %51, label %56, !dbg !1076

51:                                               ; preds = %39
  %.01.ph.lcssa.wide = phi i64 [ %indvars.iv8, %39 ]
  %.lcssa = phi i32 [ %49, %39 ], !dbg !1073
  %52 = trunc i64 %.01.ph.lcssa.wide to i32, !dbg !1077
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1077, !tbaa !410
  %54 = add nsw i32 %52, 1, !dbg !1079
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %54, i32 %.lcssa), !dbg !1080
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1081
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !1027
  br label %66, !dbg !1082

56:                                               ; preds = %39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !378, metadata !DIExpression()), !dbg !1027
  %exitcond = icmp eq i64 %indvars.iv8, 3, !dbg !1084
  br i1 %exitcond, label %57, label %.outer, !dbg !1086

57:                                               ; preds = %56
  %58 = trunc i64 4 to i32, !dbg !1087
  br label %60, !dbg !1087

.outer..outer..loopexit_crit_edge_crit_edge:      ; preds = %.outer
  %split9 = phi i64 [ %indvars.iv, %.outer ]
  br label %.outer..loopexit_crit_edge, !dbg !1060

.outer..loopexit_crit_edge:                       ; preds = %.outer..outer..loopexit_crit_edge_crit_edge, %25
  %split = phi i64 [ %split9, %.outer..outer..loopexit_crit_edge_crit_edge ], [ 0, %25 ]
  br label %.loopexit, !dbg !1060

..loopexit_crit_edge:                             ; preds = %31
  %split7 = phi i64 [ %indvars.iv8, %31 ]
  br label %.loopexit, !dbg !1060

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.outer..loopexit_crit_edge
  %.01.ph.lcssa6.wide = phi i64 [ %split7, %..loopexit_crit_edge ], [ %split, %.outer..loopexit_crit_edge ]
  %59 = trunc i64 %.01.ph.lcssa6.wide to i32, !dbg !1088
  br label %60, !dbg !1088

60:                                               ; preds = %.loopexit, %57
  %.12 = phi i32 [ %58, %57 ], [ %59, %.loopexit ], !dbg !1090
  call void @llvm.dbg.value(metadata i32 %.12, metadata !378, metadata !DIExpression()), !dbg !1027
  %61 = icmp ne i32 %.12, 4, !dbg !1088
  br i1 %61, label %62, label %65, !dbg !1091

62:                                               ; preds = %60
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1092, !tbaa !410
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %.12), !dbg !1094
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1095
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !1027
  br label %66, !dbg !1096

65:                                               ; preds = %60
  br label %66, !dbg !1097

66:                                               ; preds = %65, %62, %51, %20, %9
  %.1 = phi %struct._IO_FILE* [ null, %9 ], [ %18, %20 ], [ %.0, %51 ], [ %.0, %62 ], [ %.0, %65 ], !dbg !1027
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.1, metadata !370, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.label(metadata !383), !dbg !1098
  %67 = icmp ne %struct._IO_FILE* %.1, null, !dbg !1099
  br i1 %67, label %68, label %73, !dbg !1101

68:                                               ; preds = %66
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1102, !tbaa !410
  %70 = icmp ne %struct._IO_FILE* %.1, %69, !dbg !1103
  br i1 %70, label %71, label %73, !dbg !1104

71:                                               ; preds = %68
  %72 = call i32 @fclose(%struct._IO_FILE* %.1), !dbg !1105
  br label %73, !dbg !1105

73:                                               ; preds = %71, %68, %66
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), metadata !381, metadata !DIExpression()), !dbg !1027
  %74 = bitcast i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*) to [4 x [4 x double]]*, !dbg !1106
  %75 = bitcast [256 x i8]* %2 to i8*, !dbg !1107
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %75) #10, !dbg !1107
  ret [4 x [4 x double]]* %74, !dbg !1108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !103 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* %1, i8* %2) #0 !dbg !1109 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1113, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1114, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %2, metadata !1115, metadata !DIExpression()), !dbg !1118
  %4 = icmp ne %struct.molecule_t* %1, null, !dbg !1119
  br i1 %4, label %12, label %5, !dbg !1121

5:                                                ; preds = %3
  %6 = call i32 @get_mytaskid(), !dbg !1122
  %7 = icmp eq i32 %6, 0, !dbg !1125
  br i1 %7, label %8, label %11, !dbg !1126

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1127, !tbaa !410
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)), !dbg !1129
  br label %11, !dbg !1130

11:                                               ; preds = %8, %5
  br label %36, !dbg !1131

12:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1117, metadata !DIExpression()), !dbg !1118
  %13 = call i32 @get_mytaskid(), !dbg !1132
  %14 = icmp eq i32 %13, 0, !dbg !1134
  br i1 %14, label %15, label %35, !dbg !1135

15:                                               ; preds = %12
  %16 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !1136
  %17 = icmp ne i32 %16, 0, !dbg !1136
  br i1 %17, label %20, label %18, !dbg !1139

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1116, metadata !DIExpression()), !dbg !1118
  br label %26, !dbg !1141

20:                                               ; preds = %15
  %21 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1142
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %21, metadata !1116, metadata !DIExpression()), !dbg !1118
  %22 = icmp eq %struct._IO_FILE* %21, null, !dbg !1144
  br i1 %22, label %23, label %25, !dbg !1145

23:                                               ; preds = %20
  %24 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0), !dbg !1146
  call void @llvm.dbg.value(metadata i32 -1, metadata !1117, metadata !DIExpression()), !dbg !1118
  br label %25, !dbg !1148

25:                                               ; preds = %23, %20
  %.01 = phi i32 [ -1, %23 ], [ 0, %20 ], !dbg !1118
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1117, metadata !DIExpression()), !dbg !1118
  br label %26

26:                                               ; preds = %25, %18
  %.02 = phi %struct._IO_FILE* [ %21, %25 ], [ %19, %18 ], !dbg !1149
  %.1 = phi i32 [ %.01, %25 ], [ 0, %18 ], !dbg !1118
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.02, metadata !1116, metadata !DIExpression()), !dbg !1118
  %27 = icmp sge i32 %.1, 0, !dbg !1150
  br i1 %27, label %28, label %34, !dbg !1152

28:                                               ; preds = %26
  call void @fputpdb(%struct._IO_FILE* %.02, %struct.molecule_t* %1, i8* %2), !dbg !1153
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1155, !tbaa !410
  %30 = icmp ne %struct._IO_FILE* %.02, %29, !dbg !1157
  br i1 %30, label %31, label %33, !dbg !1158

31:                                               ; preds = %28
  %32 = call i32 @fclose(%struct._IO_FILE* %.02), !dbg !1159
  br label %33, !dbg !1159

33:                                               ; preds = %31, %28
  br label %34, !dbg !1160

34:                                               ; preds = %33, %26
  br label %35, !dbg !1161

35:                                               ; preds = %34, %12
  %.2 = phi i32 [ %.1, %34 ], [ 0, %12 ], !dbg !1118
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @reducerror(i32 %.2), !dbg !1162
  br label %36, !dbg !1163

36:                                               ; preds = %35, %11
  ret i32 0, !dbg !1164
}

declare !dbg !106 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @fputpdb(%struct._IO_FILE* %0, %struct.molecule_t* %1, i8* %2) #0 !dbg !1165 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [7 x i8], align 1
  %7 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1169, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1170, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i8* %2, metadata !1171, metadata !DIExpression()), !dbg !1197
  %8 = bitcast [8 x i8]* %4 to i8*, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #10, !dbg !1198
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !1181, metadata !DIExpression()), !dbg !1199
  %9 = bitcast [8 x i8]* %5 to i8*, !dbg !1200
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #10, !dbg !1200
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !1183, metadata !DIExpression()), !dbg !1201
  %10 = bitcast [7 x i8]* %6 to i8*, !dbg !1202
  call void @llvm.lifetime.start.p0i8(i64 7, i8* %10) #10, !dbg !1202
  call void @llvm.dbg.declare(metadata [7 x i8]* %6, metadata !1184, metadata !DIExpression()), !dbg !1203
  %11 = bitcast [256 x i8]* %7 to i8*, !dbg !1204
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %11) #10, !dbg !1204
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !1188, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i32 0, metadata !1189, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1190, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1191, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1192, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1193, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1194, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1195, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1196, metadata !DIExpression()), !dbg !1197
  %12 = icmp ne %struct.molecule_t* %1, null, !dbg !1206
  br i1 %12, label %16, label %13, !dbg !1208

13:                                               ; preds = %3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1209, !tbaa !410
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0)), !dbg !1211
  br label %256, !dbg !1212

16:                                               ; preds = %3
  %17 = icmp ne %struct._IO_FILE* %0, null, !dbg !1213
  br i1 %17, label %21, label %18, !dbg !1215

18:                                               ; preds = %16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1216, !tbaa !410
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0)), !dbg !1218
  br label %256, !dbg !1219

21:                                               ; preds = %16
  %22 = icmp eq i8* %2, null, !dbg !1220
  br i1 %22, label %23, label %25, !dbg !1222

23:                                               ; preds = %21
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1223
  store i8 0, i8* %24, align 16, !dbg !1224, !tbaa !404
  br label %29, !dbg !1223

25:                                               ; preds = %21
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1225
  %27 = call i8* @strncpy(i8* %26, i8* %2, i64 255) #10, !dbg !1227
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255, !dbg !1228
  store i8 0, i8* %28, align 1, !dbg !1229, !tbaa !404
  br label %29

29:                                               ; preds = %25, %23
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1230
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !1231
  %32 = icmp ne i8* %31, null, !dbg !1232
  %33 = zext i1 %32 to i32, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %33, metadata !1189, metadata !DIExpression()), !dbg !1197
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1233
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #9, !dbg !1234
  %36 = icmp ne i8* %35, null, !dbg !1235
  %37 = zext i1 %36 to i32, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %37, metadata !1190, metadata !DIExpression()), !dbg !1197
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1236
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #9, !dbg !1237
  %40 = icmp ne i8* %39, null, !dbg !1238
  %41 = zext i1 %40 to i32, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %41, metadata !1191, metadata !DIExpression()), !dbg !1197
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1239
  %43 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #9, !dbg !1240
  %44 = icmp ne i8* %43, null, !dbg !1241
  %45 = zext i1 %44 to i32, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %45, metadata !1192, metadata !DIExpression()), !dbg !1197
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1242
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #9, !dbg !1243
  %48 = icmp ne i8* %47, null, !dbg !1244
  %49 = zext i1 %48 to i32, !dbg !1244
  call void @llvm.dbg.value(metadata i32 %49, metadata !1193, metadata !DIExpression()), !dbg !1197
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1245
  %51 = call i8* @strstr(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #9, !dbg !1246
  %52 = icmp ne i8* %51, null, !dbg !1247
  %53 = zext i1 %52 to i32, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %53, metadata !1194, metadata !DIExpression()), !dbg !1197
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1248
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #9, !dbg !1249
  %56 = icmp ne i8* %55, null, !dbg !1250
  %57 = zext i1 %56 to i32, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %57, metadata !1195, metadata !DIExpression()), !dbg !1197
  %58 = icmp ne i32 %57, 0, !dbg !1251
  br i1 %58, label %59, label %60, !dbg !1253

59:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 0, metadata !1194, metadata !DIExpression()), !dbg !1197
  br label %60, !dbg !1254

60:                                               ; preds = %59, %29
  %.03 = phi i32 [ 0, %59 ], [ %53, %29 ], !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.03, metadata !1194, metadata !DIExpression()), !dbg !1197
  %61 = call %struct.cid_t* @initcid(i32 %.03, i32 %57, %struct.molecule_t* %1), !dbg !1255
  call void @llvm.dbg.value(metadata %struct.cid_t* %61, metadata !1196, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1176, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()), !dbg !1197
  %62 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2, !dbg !1256
  %63 = load %struct.strand_t*, %struct.strand_t** %62, align 8, !dbg !1256, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %63, metadata !1178, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1173, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1176, metadata !DIExpression()), !dbg !1197
  %64 = icmp ne %struct.strand_t* %63, null, !dbg !1258
  br i1 %64, label %.lr.ph25, label %255, !dbg !1258

.lr.ph25:                                         ; preds = %60
  br label %65, !dbg !1258

65:                                               ; preds = %.lr.ph25, %251
  %.0223 = phi i32 [ 0, %.lr.ph25 ], [ %.1.lcssa, %251 ]
  %.0522 = phi i32 [ 0, %.lr.ph25 ], [ %.16.lcssa, %251 ]
  %.0721 = phi %struct.strand_t* [ %63, %.lr.ph25 ], [ %253, %251 ]
  call void @llvm.dbg.value(metadata i32 %.0223, metadata !1173, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.0522, metadata !1176, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0721, metadata !1178, metadata !DIExpression()), !dbg !1197
  %66 = call i32 @nextcid(%struct.cid_t* %61, i32 %.03, i32 %57, %struct.strand_t* %.0721), !dbg !1259
  %67 = trunc i32 %66 to i8, !dbg !1259
  call void @llvm.dbg.value(metadata i8 %67, metadata !1177, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 0, metadata !1172, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64 0, metadata !1172, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.0223, metadata !1173, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.0522, metadata !1176, metadata !DIExpression()), !dbg !1197
  %68 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0721, i32 0, i32 5, !dbg !1262
  %69 = load i32, i32* %68, align 8, !dbg !1262, !tbaa !1265
  %70 = sext i32 %69 to i64, !dbg !1266
  %71 = icmp slt i64 0, %70, !dbg !1266
  br i1 %71, label %.lr.ph17, label %249, !dbg !1267

.lr.ph17:                                         ; preds = %65
  br label %72, !dbg !1267

72:                                               ; preds = %.lr.ph17, %244
  %.115 = phi i32 [ %.0223, %.lr.ph17 ], [ %245, %244 ]
  %.1614 = phi i32 [ %.0522, %.lr.ph17 ], [ %.2.lcssa, %244 ]
  %indvars.iv812 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next9, %244 ]
  call void @llvm.dbg.value(metadata i32 %.115, metadata !1173, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.1614, metadata !1176, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64 %indvars.iv812, metadata !1172, metadata !DIExpression()), !dbg !1197
  %73 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0721, i32 0, i32 7, !dbg !1268
  %74 = load %struct.residue_t**, %struct.residue_t*** %73, align 8, !dbg !1268, !tbaa !877
  %75 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %74, i64 %indvars.iv812, !dbg !1270
  %76 = load %struct.residue_t*, %struct.residue_t** %75, align 8, !dbg !1270, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %76, metadata !1179, metadata !DIExpression()), !dbg !1197
  %77 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1271
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i32 0, i32 5, !dbg !1272
  %79 = load i8*, i8** %78, align 8, !dbg !1272, !tbaa !816
  %80 = icmp ne i8* %79, null, !dbg !1273
  br i1 %80, label %81, label %84, !dbg !1273

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i32 0, i32 5, !dbg !1274
  %83 = load i8*, i8** %82, align 8, !dbg !1274, !tbaa !816
  br label %85, !dbg !1273

84:                                               ; preds = %72
  br label %85, !dbg !1273

85:                                               ; preds = %84, %81
  %86 = phi i8* [ %83, %81 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), %84 ], !dbg !1273
  %87 = call i8* @strcpy(i8* %77, i8* %86) #10, !dbg !1275
  %88 = icmp ne i32 %41, 0, !dbg !1276
  br i1 %88, label %89, label %91, !dbg !1278

89:                                               ; preds = %85
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1279
  call void @mk_brook_rname(i8* %90, %struct.residue_t* %76), !dbg !1280
  br label %101, !dbg !1280

91:                                               ; preds = %85
  %92 = icmp ne i32 %45, 0, !dbg !1281
  br i1 %92, label %93, label %95, !dbg !1283

93:                                               ; preds = %91
  %94 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1284
  call void @mk_wwpdb_rname(i8* %94, %struct.residue_t* %76), !dbg !1285
  br label %100, !dbg !1285

95:                                               ; preds = %91
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1286
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i32 0, i32 4, !dbg !1287
  %98 = load i8*, i8** %97, align 8, !dbg !1287, !tbaa !812
  %99 = call i8* @strcpy(i8* %96, i8* %98) #10, !dbg !1288
  br label %100

100:                                              ; preds = %95, %93
  br label %101

101:                                              ; preds = %100, %89
  call void @llvm.dbg.value(metadata i32 0, metadata !1175, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64 0, metadata !1175, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.1614, metadata !1176, metadata !DIExpression()), !dbg !1197
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i32 0, i32 15, !dbg !1289
  %103 = load i32, i32* %102, align 8, !dbg !1289, !tbaa !823
  %104 = sext i32 %103 to i64, !dbg !1292
  %105 = icmp slt i64 0, %104, !dbg !1292
  br i1 %105, label %.lr.ph, label %243, !dbg !1293

.lr.ph:                                           ; preds = %101
  br label %106, !dbg !1293

106:                                              ; preds = %.lr.ph, %239
  %.211 = phi i32 [ %.1614, %.lr.ph ], [ %107, %239 ]
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %239 ]
  call void @llvm.dbg.value(metadata i32 %.211, metadata !1176, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !1175, metadata !DIExpression()), !dbg !1197
  %107 = add nsw i32 %.211, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %107, metadata !1176, metadata !DIExpression()), !dbg !1197
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %76, i32 0, i32 17, !dbg !1296
  %109 = load %struct.atom_t*, %struct.atom_t** %108, align 8, !dbg !1296, !tbaa !1297
  %110 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %109, i64 %indvars.iv10, !dbg !1298
  call void @llvm.dbg.value(metadata %struct.atom_t* %110, metadata !1180, metadata !DIExpression()), !dbg !1197
  %111 = icmp ne i32 %41, 0, !dbg !1299
  br i1 %111, label %112, label %117, !dbg !1301

112:                                              ; preds = %106
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1302
  %114 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 0, !dbg !1303
  %115 = load i8*, i8** %114, align 8, !dbg !1303, !tbaa !927
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1304
  call void @mk_brook_aname(i8* %113, i8* %115, i8* %116), !dbg !1305
  br label %130, !dbg !1305

117:                                              ; preds = %106
  %118 = icmp ne i32 %45, 0, !dbg !1306
  br i1 %118, label %119, label %124, !dbg !1308

119:                                              ; preds = %117
  %120 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1309
  %121 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 0, !dbg !1310
  %122 = load i8*, i8** %121, align 8, !dbg !1310, !tbaa !927
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1311
  call void @mk_wwpdb_aname(i8* %120, i8* %122, i8* %123), !dbg !1312
  br label %129, !dbg !1312

124:                                              ; preds = %117
  %125 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1313
  %126 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 0, !dbg !1314
  %127 = load i8*, i8** %126, align 8, !dbg !1314, !tbaa !927
  %128 = call i8* @strcpy(i8* %125, i8* %127) #10, !dbg !1315
  br label %129

129:                                              ; preds = %124, %119
  br label %130

130:                                              ; preds = %129, %112
  %131 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1316
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0)) #9, !dbg !1318
  %133 = icmp ne i32 %132, 0, !dbg !1318
  br i1 %133, label %134, label %136, !dbg !1319

134:                                              ; preds = %130
  %135 = icmp ne i32 %49, 0, !dbg !1320
  br i1 %135, label %136, label %176, !dbg !1321

136:                                              ; preds = %134, %130
  %137 = icmp ne i32 %49, 0, !dbg !1322
  br i1 %137, label %138, label %140, !dbg !1322

138:                                              ; preds = %136
  %139 = add nsw i32 %.115, 1, !dbg !1324
  br label %143, !dbg !1322

140:                                              ; preds = %136
  %141 = add nuw nsw i64 %indvars.iv812, 1, !dbg !1325
  %142 = trunc i64 %141 to i32, !dbg !1322
  br label %143, !dbg !1322

143:                                              ; preds = %140, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %140 ], !dbg !1322
  call void @llvm.dbg.value(metadata i32 %144, metadata !1174, metadata !DIExpression()), !dbg !1197
  %145 = icmp slt i32 %107, 100000, !dbg !1326
  br i1 %145, label %146, label %160, !dbg !1328

146:                                              ; preds = %143
  %147 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1329
  %148 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1331
  %149 = sext i8 %67 to i32, !dbg !1332
  %150 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1333
  %151 = getelementptr inbounds [3 x double], [3 x double]* %150, i64 0, i64 0, !dbg !1334
  %152 = load double, double* %151, align 8, !dbg !1334, !tbaa !754
  %153 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1335
  %154 = getelementptr inbounds [3 x double], [3 x double]* %153, i64 0, i64 1, !dbg !1336
  %155 = load double, double* %154, align 8, !dbg !1336, !tbaa !754
  %156 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1337
  %157 = getelementptr inbounds [3 x double], [3 x double]* %156, i64 0, i64 2, !dbg !1338
  %158 = load double, double* %157, align 8, !dbg !1338, !tbaa !754
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %107, i8* %147, i8* %148, i32 %149, i32 %144, double %152, double %155, double %158), !dbg !1339
  br label %175, !dbg !1340

160:                                              ; preds = %143
  %161 = srem i32 %107, 100000, !dbg !1341
  %162 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1343
  %163 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1344
  %164 = sext i8 %67 to i32, !dbg !1345
  %165 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1346
  %166 = getelementptr inbounds [3 x double], [3 x double]* %165, i64 0, i64 0, !dbg !1347
  %167 = load double, double* %166, align 8, !dbg !1347, !tbaa !754
  %168 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1348
  %169 = getelementptr inbounds [3 x double], [3 x double]* %168, i64 0, i64 1, !dbg !1349
  %170 = load double, double* %169, align 8, !dbg !1349, !tbaa !754
  %171 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1350
  %172 = getelementptr inbounds [3 x double], [3 x double]* %171, i64 0, i64 2, !dbg !1351
  %173 = load double, double* %172, align 8, !dbg !1351, !tbaa !754
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %161, i8* %162, i8* %163, i32 %164, i32 %144, double %167, double %170, double %173), !dbg !1352
  br label %175

175:                                              ; preds = %160, %146
  br label %208, !dbg !1353

176:                                              ; preds = %134
  %177 = icmp slt i32 %107, 100000, !dbg !1354
  br i1 %177, label %178, label %192, !dbg !1357

178:                                              ; preds = %176
  %179 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1358
  %180 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1360
  %181 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1361
  %182 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1362
  %183 = getelementptr inbounds [3 x double], [3 x double]* %182, i64 0, i64 0, !dbg !1363
  %184 = load double, double* %183, align 8, !dbg !1363, !tbaa !754
  %185 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1364
  %186 = getelementptr inbounds [3 x double], [3 x double]* %185, i64 0, i64 1, !dbg !1365
  %187 = load double, double* %186, align 8, !dbg !1365, !tbaa !754
  %188 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1366
  %189 = getelementptr inbounds [3 x double], [3 x double]* %188, i64 0, i64 2, !dbg !1367
  %190 = load double, double* %189, align 8, !dbg !1367, !tbaa !754
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %107, i8* %179, i8* %180, i8* %181, double %184, double %187, double %190), !dbg !1368
  br label %207, !dbg !1369

192:                                              ; preds = %176
  %193 = srem i32 %107, 100000, !dbg !1370
  %194 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1372
  %195 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1373
  %196 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1374
  %197 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1375
  %198 = getelementptr inbounds [3 x double], [3 x double]* %197, i64 0, i64 0, !dbg !1376
  %199 = load double, double* %198, align 8, !dbg !1376, !tbaa !754
  %200 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1377
  %201 = getelementptr inbounds [3 x double], [3 x double]* %200, i64 0, i64 1, !dbg !1378
  %202 = load double, double* %201, align 8, !dbg !1378, !tbaa !754
  %203 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 17, !dbg !1379
  %204 = getelementptr inbounds [3 x double], [3 x double]* %203, i64 0, i64 2, !dbg !1380
  %205 = load double, double* %204, align 8, !dbg !1380, !tbaa !754
  %206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %193, i8* %194, i8* %195, i8* %196, double %199, double %202, double %205), !dbg !1381
  br label %207

207:                                              ; preds = %192, %178
  br label %208

208:                                              ; preds = %207, %175
  %209 = icmp ne i32 %33, 0, !dbg !1382
  br i1 %209, label %210, label %216, !dbg !1384

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 6, !dbg !1385
  %212 = load double, double* %211, align 8, !dbg !1385, !tbaa !949
  %213 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 7, !dbg !1387
  %214 = load double, double* %213, align 8, !dbg !1387, !tbaa !953
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %212, double %214), !dbg !1388
  br label %225, !dbg !1389

216:                                              ; preds = %208
  %217 = icmp ne i32 %37, 0, !dbg !1390
  br i1 %217, label %224, label %218, !dbg !1392

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 9, !dbg !1393
  %220 = load double, double* %219, align 8, !dbg !1393, !tbaa !956
  %221 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 8, !dbg !1395
  %222 = load double, double* %221, align 8, !dbg !1395, !tbaa !959
  %223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %220, double %222), !dbg !1396
  br label %224, !dbg !1397

224:                                              ; preds = %218, %216
  br label %225

225:                                              ; preds = %224, %210
  %226 = icmp ne i32 %41, 0, !dbg !1398
  br i1 %226, label %229, label %227, !dbg !1400

227:                                              ; preds = %225
  %228 = icmp ne i32 %45, 0, !dbg !1401
  br i1 %228, label %229, label %237, !dbg !1402

229:                                              ; preds = %227, %225
  %230 = icmp ne i32 %33, 0, !dbg !1403
  br i1 %230, label %237, label %231, !dbg !1404

231:                                              ; preds = %229
  %232 = icmp ne i32 %37, 0, !dbg !1405
  br i1 %232, label %237, label %233, !dbg !1406

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i32 0, i32 0, !dbg !1407
  %235 = load i8*, i8** %234, align 8, !dbg !1407, !tbaa !927
  %236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %235), !dbg !1409
  br label %237, !dbg !1410

237:                                              ; preds = %233, %231, %229, %227
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !1411
  br label %239, !dbg !1412

239:                                              ; preds = %237
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1175, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %107, metadata !1176, metadata !DIExpression()), !dbg !1197
  %240 = load i32, i32* %102, align 8, !dbg !1289, !tbaa !823
  %241 = sext i32 %240 to i64, !dbg !1292
  %242 = icmp slt i64 %indvars.iv.next, %241, !dbg !1292
  br i1 %242, label %106, label %._crit_edge, !dbg !1293, !llvm.loop !1414

._crit_edge:                                      ; preds = %239
  %split = phi i32 [ %107, %239 ]
  br label %243, !dbg !1293

243:                                              ; preds = %._crit_edge, %101
  %indvars.iv813 = phi i64 [ %indvars.iv812, %._crit_edge ], [ %indvars.iv812, %101 ]
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.1614, %101 ], !dbg !1416
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1176, metadata !DIExpression()), !dbg !1197
  br label %244, !dbg !1417

244:                                              ; preds = %243
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv813, 1, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !1172, metadata !DIExpression()), !dbg !1197
  %245 = add nsw i32 %.115, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %245, metadata !1173, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1176, metadata !DIExpression()), !dbg !1197
  %246 = load i32, i32* %68, align 8, !dbg !1262, !tbaa !1265
  %247 = sext i32 %246 to i64, !dbg !1266
  %248 = icmp slt i64 %indvars.iv.next9, %247, !dbg !1266
  br i1 %248, label %72, label %._crit_edge18, !dbg !1267, !llvm.loop !1420

._crit_edge18:                                    ; preds = %244
  %split19 = phi i32 [ %.2.lcssa, %244 ]
  %split20 = phi i32 [ %245, %244 ]
  br label %249, !dbg !1267

249:                                              ; preds = %._crit_edge18, %65
  %.16.lcssa = phi i32 [ %split19, %._crit_edge18 ], [ %.0522, %65 ], !dbg !1422
  %.1.lcssa = phi i32 [ %split20, %._crit_edge18 ], [ %.0223, %65 ], !dbg !1416
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !1176, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1173, metadata !DIExpression()), !dbg !1197
  %250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)), !dbg !1423
  br label %251, !dbg !1424

251:                                              ; preds = %249
  %252 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0721, i32 0, i32 4, !dbg !1425
  %253 = load %struct.strand_t*, %struct.strand_t** %252, align 8, !dbg !1425, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1173, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !1176, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata %struct.strand_t* %253, metadata !1178, metadata !DIExpression()), !dbg !1197
  %254 = icmp ne %struct.strand_t* %253, null, !dbg !1258
  br i1 %254, label %65, label %._crit_edge26, !dbg !1258, !llvm.loop !1426

._crit_edge26:                                    ; preds = %251
  br label %255, !dbg !1258

255:                                              ; preds = %._crit_edge26, %60
  call void @freecid(%struct.cid_t* %61), !dbg !1428
  br label %256, !dbg !1429

256:                                              ; preds = %255, %18, %13
  %.0 = phi i32 [ 0, %255 ], [ 1, %18 ], [ 1, %13 ]
  %257 = bitcast [256 x i8]* %7 to i8*, !dbg !1429
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %257) #10, !dbg !1429
  %258 = bitcast [7 x i8]* %6 to i8*, !dbg !1429
  call void @llvm.lifetime.end.p0i8(i64 7, i8* %258) #10, !dbg !1429
  %259 = bitcast [8 x i8]* %5 to i8*, !dbg !1429
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %259) #10, !dbg !1429
  %260 = bitcast [8 x i8]* %4 to i8*, !dbg !1429
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %260) #10, !dbg !1429
  switch i32 %.0, label %262 [
    i32 0, label %261
    i32 1, label %261
  ]

261:                                              ; preds = %256, %256
  ret void, !dbg !1429

262:                                              ; preds = %256
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* %2) #0 !dbg !1430 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1434, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %1, metadata !1435, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1436, metadata !DIExpression()), !dbg !1438
  %4 = icmp ne %struct.molecule_t* %2, null, !dbg !1439
  br i1 %4, label %8, label %5, !dbg !1441

5:                                                ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1442, !tbaa !410
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0)), !dbg !1444
  br label %25, !dbg !1445

8:                                                ; preds = %3
  %9 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !1446
  %10 = icmp ne i32 %9, 0, !dbg !1446
  br i1 %10, label %13, label %11, !dbg !1448

11:                                               ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1449, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !1437, metadata !DIExpression()), !dbg !1438
  br label %19, !dbg !1450

13:                                               ; preds = %8
  %14 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1451
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1437, metadata !DIExpression()), !dbg !1438
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !1453
  br i1 %15, label %16, label %18, !dbg !1454

16:                                               ; preds = %13
  %17 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0), !dbg !1455
  call void @exit(i32 1) #11, !dbg !1457
  unreachable, !dbg !1457

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %11
  %.01 = phi %struct._IO_FILE* [ %14, %18 ], [ %12, %11 ], !dbg !1458
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.01, metadata !1437, metadata !DIExpression()), !dbg !1438
  call void @fputcif(%struct._IO_FILE* %.01, i8* %1, %struct.molecule_t* %2), !dbg !1459
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1460, !tbaa !410
  %21 = icmp ne %struct._IO_FILE* %.01, %20, !dbg !1462
  br i1 %21, label %22, label %24, !dbg !1463

22:                                               ; preds = %19
  %23 = call i32 @fclose(%struct._IO_FILE* %.01), !dbg !1464
  br label %24, !dbg !1464

24:                                               ; preds = %22, %19
  br label %25, !dbg !1465

25:                                               ; preds = %24, %5
  ret i32 0, !dbg !1466
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

; Function Attrs: nounwind uwtable
define internal void @fputcif(%struct._IO_FILE* %0, i8* %1, %struct.molecule_t* %2) #0 !dbg !1467 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1471, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8* %1, metadata !1472, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1473, metadata !DIExpression()), !dbg !1483
  %4 = icmp ne %struct.molecule_t* %2, null, !dbg !1484
  br i1 %4, label %5, label %6, !dbg !1487

5:                                                ; preds = %3
  br label %7, !dbg !1487

6:                                                ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1389, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #11, !dbg !1484
  unreachable, !dbg !1484

7:                                                ; preds = %5
  %8 = icmp ne %struct._IO_FILE* %0, null, !dbg !1488
  br i1 %8, label %9, label %10, !dbg !1491

9:                                                ; preds = %7
  br label %11, !dbg !1491

10:                                               ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #11, !dbg !1488
  unreachable, !dbg !1488

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 1, !dbg !1492
  %13 = load i32, i32* %12, align 8, !dbg !1492, !tbaa !1493
  %14 = icmp sgt i32 %13, 1, !dbg !1494
  %15 = select i1 %14, i32 65, i32 46, !dbg !1495
  %16 = trunc i32 %15 to i8, !dbg !1495
  call void @llvm.dbg.value(metadata i8 %16, metadata !1479, metadata !DIExpression()), !dbg !1483
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %1), !dbg !1496
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0)), !dbg !1497
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %1), !dbg !1498
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0)), !dbg !1499
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0)), !dbg !1500
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0)), !dbg !1501
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0)), !dbg !1502
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0)), !dbg !1503
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0)), !dbg !1504
  call void @llvm.dbg.value(metadata i32 0, metadata !1478, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 0, metadata !1477, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 0, metadata !1475, metadata !DIExpression()), !dbg !1483
  %26 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 2, !dbg !1505
  %27 = load %struct.strand_t*, %struct.strand_t** %26, align 8, !dbg !1505, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %27, metadata !1480, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %16, metadata !1479, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 0, metadata !1478, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 0, metadata !1475, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 0, metadata !1477, metadata !DIExpression()), !dbg !1483
  %28 = icmp ne %struct.strand_t* %27, null, !dbg !1507
  br i1 %28, label %.lr.ph28, label %88, !dbg !1507

.lr.ph28:                                         ; preds = %11
  br label %29, !dbg !1507

29:                                               ; preds = %.lr.ph28, %84
  %.026 = phi %struct.strand_t* [ %27, %.lr.ph28 ], [ %86, %84 ]
  %.0125 = phi i8 [ %16, %.lr.ph28 ], [ %.1, %84 ]
  %.0224 = phi i32 [ 0, %.lr.ph28 ], [ %30, %84 ]
  %.0423 = phi i32 [ 0, %.lr.ph28 ], [ %.15.lcssa, %84 ]
  %.0722 = phi i32 [ 0, %.lr.ph28 ], [ %.18.lcssa, %84 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.026, metadata !1480, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.0125, metadata !1479, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.0224, metadata !1478, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.0423, metadata !1475, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.0722, metadata !1477, metadata !DIExpression()), !dbg !1483
  %30 = add nuw nsw i32 %.0224, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %30, metadata !1478, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 0, metadata !1474, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 0, metadata !1474, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.0423, metadata !1475, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.0722, metadata !1477, metadata !DIExpression()), !dbg !1483
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 5, !dbg !1511
  %32 = load i32, i32* %31, align 8, !dbg !1511, !tbaa !1265
  %33 = sext i32 %32 to i64, !dbg !1514
  %34 = icmp slt i64 0, %33, !dbg !1514
  br i1 %34, label %.lr.ph18, label %77, !dbg !1515

.lr.ph18:                                         ; preds = %29
  br label %35, !dbg !1515

35:                                               ; preds = %.lr.ph18, %72
  %.1516 = phi i32 [ %.0423, %.lr.ph18 ], [ %73, %72 ]
  %.1815 = phi i32 [ %.0722, %.lr.ph18 ], [ %.2.lcssa, %72 ]
  %indvars.iv913 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next10, %72 ]
  call void @llvm.dbg.value(metadata i32 %.1516, metadata !1475, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.1815, metadata !1477, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %indvars.iv913, metadata !1474, metadata !DIExpression()), !dbg !1483
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 7, !dbg !1516
  %37 = load %struct.residue_t**, %struct.residue_t*** %36, align 8, !dbg !1516, !tbaa !877
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %37, i64 %indvars.iv913, !dbg !1518
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8, !dbg !1518, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %39, metadata !1481, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 0, metadata !1476, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 0, metadata !1476, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.1815, metadata !1477, metadata !DIExpression()), !dbg !1483
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 15, !dbg !1519
  %41 = load i32, i32* %40, align 8, !dbg !1519, !tbaa !823
  %42 = sext i32 %41 to i64, !dbg !1522
  %43 = icmp slt i64 0, %42, !dbg !1522
  br i1 %43, label %.lr.ph, label %71, !dbg !1523

.lr.ph:                                           ; preds = %35
  br label %44, !dbg !1523

44:                                               ; preds = %.lr.ph, %67
  %.212 = phi i32 [ %.1815, %.lr.ph ], [ %45, %67 ]
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %67 ]
  call void @llvm.dbg.value(metadata i32 %.212, metadata !1477, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !1476, metadata !DIExpression()), !dbg !1483
  %45 = add nsw i32 %.212, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %45, metadata !1477, metadata !DIExpression()), !dbg !1483
  %46 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 17, !dbg !1526
  %47 = load %struct.atom_t*, %struct.atom_t** %46, align 8, !dbg !1526, !tbaa !1297
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %47, i64 %indvars.iv11, !dbg !1527
  call void @llvm.dbg.value(metadata %struct.atom_t* %48, metadata !1482, metadata !DIExpression()), !dbg !1483
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 0, !dbg !1528
  %50 = load i8*, i8** %49, align 8, !dbg !1528, !tbaa !927
  %51 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 4, !dbg !1529
  %52 = load i8*, i8** %51, align 8, !dbg !1529, !tbaa !812
  %53 = sext i8 %.0125 to i32, !dbg !1530
  %54 = add nsw i32 %.1516, 1, !dbg !1531
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 17, !dbg !1532
  %56 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 0, i64 0, !dbg !1533
  %57 = load double, double* %56, align 8, !dbg !1533, !tbaa !754
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 17, !dbg !1534
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 1, !dbg !1535
  %60 = load double, double* %59, align 8, !dbg !1535, !tbaa !754
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 17, !dbg !1536
  %62 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 0, i64 2, !dbg !1537
  %63 = load double, double* %62, align 8, !dbg !1537, !tbaa !754
  %64 = add nuw nsw i64 %indvars.iv913, 1, !dbg !1538
  %65 = trunc i64 %64 to i32, !dbg !1539
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %45, i8* %50, i8* %52, i32 %53, i32 %54, double %57, double %60, double %63, i32 %30, i32 %65), !dbg !1539
  br label %67, !dbg !1540

67:                                               ; preds = %44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1476, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %45, metadata !1477, metadata !DIExpression()), !dbg !1483
  %68 = load i32, i32* %40, align 8, !dbg !1519, !tbaa !823
  %69 = sext i32 %68 to i64, !dbg !1522
  %70 = icmp slt i64 %indvars.iv.next, %69, !dbg !1522
  br i1 %70, label %44, label %._crit_edge, !dbg !1523, !llvm.loop !1542

._crit_edge:                                      ; preds = %67
  %split = phi i32 [ %45, %67 ]
  br label %71, !dbg !1523

71:                                               ; preds = %._crit_edge, %35
  %indvars.iv914 = phi i64 [ %indvars.iv913, %._crit_edge ], [ %indvars.iv913, %35 ]
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.1815, %35 ], !dbg !1544
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1477, metadata !DIExpression()), !dbg !1483
  br label %72, !dbg !1545

72:                                               ; preds = %71
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv914, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !1474, metadata !DIExpression()), !dbg !1483
  %73 = add nsw i32 %.1516, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %73, metadata !1475, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1477, metadata !DIExpression()), !dbg !1483
  %74 = load i32, i32* %31, align 8, !dbg !1511, !tbaa !1265
  %75 = sext i32 %74 to i64, !dbg !1514
  %76 = icmp slt i64 %indvars.iv.next10, %75, !dbg !1514
  br i1 %76, label %35, label %._crit_edge19, !dbg !1515, !llvm.loop !1548

._crit_edge19:                                    ; preds = %72
  %split20 = phi i32 [ %.2.lcssa, %72 ]
  %split21 = phi i32 [ %73, %72 ]
  br label %77, !dbg !1515

77:                                               ; preds = %._crit_edge19, %29
  %.18.lcssa = phi i32 [ %split20, %._crit_edge19 ], [ %.0722, %29 ], !dbg !1550
  %.15.lcssa = phi i32 [ %split21, %._crit_edge19 ], [ %.0423, %29 ], !dbg !1544
  call void @llvm.dbg.value(metadata i32 %.18.lcssa, metadata !1477, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.15.lcssa, metadata !1475, metadata !DIExpression()), !dbg !1483
  %78 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 1, !dbg !1551
  %79 = load i32, i32* %78, align 8, !dbg !1551, !tbaa !1493
  %80 = icmp sgt i32 %79, 1, !dbg !1553
  br i1 %80, label %81, label %83, !dbg !1554

81:                                               ; preds = %77
  %82 = add i8 %.0125, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i8 %82, metadata !1479, metadata !DIExpression()), !dbg !1483
  br label %83, !dbg !1556

83:                                               ; preds = %81, %77
  %.1 = phi i8 [ %82, %81 ], [ %.0125, %77 ], !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1479, metadata !DIExpression()), !dbg !1483
  br label %84, !dbg !1557

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 4, !dbg !1558
  %86 = load %struct.strand_t*, %struct.strand_t** %85, align 8, !dbg !1558, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.strand_t* %86, metadata !1480, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i8 %.1, metadata !1479, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %30, metadata !1478, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.15.lcssa, metadata !1475, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %.18.lcssa, metadata !1477, metadata !DIExpression()), !dbg !1483
  %87 = icmp ne %struct.strand_t* %86, null, !dbg !1507
  br i1 %87, label %29, label %._crit_edge29, !dbg !1507, !llvm.loop !1559

._crit_edge29:                                    ; preds = %84
  br label %88, !dbg !1507

88:                                               ; preds = %._crit_edge29, %11
  %89 = zext i1 %14 to i64, !dbg !1495
  ret void, !dbg !1561
}

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* %1) #0 !dbg !1562 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1566, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1567, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1578, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32* null, metadata !1579, metadata !DIExpression()), !dbg !1583
  %3 = icmp ne %struct.molecule_t* %1, null, !dbg !1584
  br i1 %3, label %7, label %4, !dbg !1586

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1587, !tbaa !410
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)), !dbg !1589
  br label %170, !dbg !1590

7:                                                ; preds = %2
  %8 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1591
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !1568, metadata !DIExpression()), !dbg !1583
  %9 = icmp eq %struct._IO_FILE* %8, null, !dbg !1593
  br i1 %9, label %10, label %12, !dbg !1594

10:                                               ; preds = %7
  %11 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0), !dbg !1595
  call void @exit(i32 1) #11, !dbg !1597
  unreachable, !dbg !1597

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1583
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2, !dbg !1598
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8, !dbg !1598, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %14, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1583
  %15 = icmp ne %struct.strand_t* %14, null, !dbg !1600
  br i1 %15, label %.lr.ph, label %24, !dbg !1600

.lr.ph:                                           ; preds = %12
  br label %16, !dbg !1600

16:                                               ; preds = %.lr.ph, %20
  %.0318 = phi %struct.strand_t* [ %14, %.lr.ph ], [ %22, %20 ]
  %.0817 = phi i32 [ 0, %.lr.ph ], [ %19, %20 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0318, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %.0817, metadata !1577, metadata !DIExpression()), !dbg !1583
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0318, i32 0, i32 5, !dbg !1601
  %18 = load i32, i32* %17, align 8, !dbg !1601, !tbaa !1265
  %19 = add nsw i32 %.0817, %18, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %19, metadata !1577, metadata !DIExpression()), !dbg !1583
  br label %20, !dbg !1604

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0318, i32 0, i32 4, !dbg !1605
  %22 = load %struct.strand_t*, %struct.strand_t** %21, align 8, !dbg !1605, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.strand_t* %22, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %19, metadata !1577, metadata !DIExpression()), !dbg !1583
  %23 = icmp ne %struct.strand_t* %22, null, !dbg !1600
  br i1 %23, label %16, label %._crit_edge, !dbg !1600, !llvm.loop !1606

._crit_edge:                                      ; preds = %20
  %split = phi i32 [ %19, %20 ]
  br label %24, !dbg !1600

24:                                               ; preds = %._crit_edge, %12
  %.08.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %12 ], !dbg !1608
  call void @llvm.dbg.value(metadata i32 %.08.lcssa, metadata !1577, metadata !DIExpression()), !dbg !1583
  %25 = sext i32 %.08.lcssa to i64, !dbg !1609
  %26 = mul i64 %25, 4, !dbg !1611
  %27 = call noalias i8* @malloc(i64 %26) #10, !dbg !1612
  %28 = bitcast i8* %27 to i32*, !dbg !1613
  call void @llvm.dbg.value(metadata i32* %28, metadata !1579, metadata !DIExpression()), !dbg !1583
  %29 = icmp eq i32* %28, null, !dbg !1614
  br i1 %29, label %30, label %32, !dbg !1615

30:                                               ; preds = %24
  %31 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)), !dbg !1616
  call void @llvm.dbg.value(metadata i32 1, metadata !1578, metadata !DIExpression()), !dbg !1583
  br label %164, !dbg !1618

32:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i32 0, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1583
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2, !dbg !1619
  %34 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !1619, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1583
  %35 = icmp ne %struct.strand_t* %34, null, !dbg !1621
  br i1 %35, label %.lr.ph29, label %78, !dbg !1621

.lr.ph29:                                         ; preds = %32
  br label %36, !dbg !1621

36:                                               ; preds = %.lr.ph29, %74
  %.127 = phi %struct.strand_t* [ %34, %.lr.ph29 ], [ %76, %74 ]
  %.0526 = phi i32 [ 0, %.lr.ph29 ], [ %.27, %74 ]
  %.1925 = phi i32 [ 0, %.lr.ph29 ], [ %.210, %74 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.127, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %.0526, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %.1925, metadata !1577, metadata !DIExpression()), !dbg !1583
  %37 = sext i32 %.1925 to i64, !dbg !1622
  %38 = getelementptr inbounds i32, i32* %28, i64 %37, !dbg !1622
  store i32 %.0526, i32* %38, align 4, !dbg !1625, !tbaa !543
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 5, !dbg !1626
  %40 = load i32, i32* %39, align 8, !dbg !1626, !tbaa !1265
  %41 = icmp sgt i32 %40, 0, !dbg !1628
  br i1 %41, label %42, label %73, !dbg !1629

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 7, !dbg !1630
  %44 = load %struct.residue_t**, %struct.residue_t*** %43, align 8, !dbg !1630, !tbaa !877
  %45 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %44, i64 0, !dbg !1632
  %46 = load %struct.residue_t*, %struct.residue_t** %45, align 8, !dbg !1632, !tbaa !410
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %46, i32 0, i32 15, !dbg !1633
  %48 = load i32, i32* %47, align 8, !dbg !1633, !tbaa !823
  %49 = add nsw i32 %.0526, %48, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %49, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 1, metadata !1575, metadata !DIExpression()), !dbg !1583
  %50 = sext i32 %.1925 to i64, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %49, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 1, metadata !1575, metadata !DIExpression()), !dbg !1583
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 5, !dbg !1637
  %52 = load i32, i32* %51, align 8, !dbg !1637, !tbaa !1265
  %53 = sext i32 %52 to i64, !dbg !1639
  %54 = icmp slt i64 1, %53, !dbg !1639
  br i1 %54, label %.lr.ph22, label %69, !dbg !1640

.lr.ph22:                                         ; preds = %42
  br label %55, !dbg !1640

55:                                               ; preds = %.lr.ph22, %65
  %.1620 = phi i32 [ %49, %.lr.ph22 ], [ %64, %65 ]
  %indvars.iv19 = phi i64 [ 1, %.lr.ph22 ], [ %indvars.iv.next, %65 ]
  call void @llvm.dbg.value(metadata i32 %.1620, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %indvars.iv19, metadata !1575, metadata !DIExpression()), !dbg !1583
  %56 = add nsw i64 %50, %indvars.iv19, !dbg !1641
  %57 = getelementptr inbounds i32, i32* %28, i64 %56, !dbg !1643
  store i32 %.1620, i32* %57, align 4, !dbg !1644, !tbaa !543
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 7, !dbg !1645
  %59 = load %struct.residue_t**, %struct.residue_t*** %58, align 8, !dbg !1645, !tbaa !877
  %60 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %59, i64 %indvars.iv19, !dbg !1646
  %61 = load %struct.residue_t*, %struct.residue_t** %60, align 8, !dbg !1646, !tbaa !410
  %62 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %61, i32 0, i32 15, !dbg !1647
  %63 = load i32, i32* %62, align 8, !dbg !1647, !tbaa !823
  %64 = add nsw i32 %.1620, %63, !dbg !1648
  call void @llvm.dbg.value(metadata i32 %64, metadata !1572, metadata !DIExpression()), !dbg !1583
  br label %65, !dbg !1649

65:                                               ; preds = %55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv19, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i32 %64, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1575, metadata !DIExpression()), !dbg !1583
  %66 = load i32, i32* %51, align 8, !dbg !1637, !tbaa !1265
  %67 = sext i32 %66 to i64, !dbg !1639
  %68 = icmp slt i64 %indvars.iv.next, %67, !dbg !1639
  br i1 %68, label %55, label %._crit_edge23, !dbg !1640, !llvm.loop !1651

._crit_edge23:                                    ; preds = %65
  %split24 = phi i32 [ %64, %65 ]
  br label %69, !dbg !1640

69:                                               ; preds = %._crit_edge23, %42
  %.16.lcssa = phi i32 [ %split24, %._crit_edge23 ], [ %49, %42 ], !dbg !1653
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !1572, metadata !DIExpression()), !dbg !1583
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 5, !dbg !1654
  %71 = load i32, i32* %70, align 8, !dbg !1654, !tbaa !1265
  %72 = add nsw i32 %.1925, %71, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %72, metadata !1577, metadata !DIExpression()), !dbg !1583
  br label %73, !dbg !1656

73:                                               ; preds = %69, %36
  %.210 = phi i32 [ %72, %69 ], [ %.1925, %36 ], !dbg !1657
  %.27 = phi i32 [ %.16.lcssa, %69 ], [ %.0526, %36 ], !dbg !1657
  call void @llvm.dbg.value(metadata i32 %.27, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %.210, metadata !1577, metadata !DIExpression()), !dbg !1583
  br label %74, !dbg !1658

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 4, !dbg !1659
  %76 = load %struct.strand_t*, %struct.strand_t** %75, align 8, !dbg !1659, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.strand_t* %76, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %.27, metadata !1572, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %.210, metadata !1577, metadata !DIExpression()), !dbg !1583
  %77 = icmp ne %struct.strand_t* %76, null, !dbg !1621
  br i1 %77, label %36, label %._crit_edge30, !dbg !1621, !llvm.loop !1660

._crit_edge30:                                    ; preds = %74
  br label %78, !dbg !1621

78:                                               ; preds = %._crit_edge30, %32
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1583
  %79 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2, !dbg !1662
  %80 = load %struct.strand_t*, %struct.strand_t** %79, align 8, !dbg !1662, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %80, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1577, metadata !DIExpression()), !dbg !1583
  %81 = icmp ne %struct.strand_t* %80, null, !dbg !1664
  br i1 %81, label %.lr.ph48, label %163, !dbg !1664

.lr.ph48:                                         ; preds = %78
  br label %82, !dbg !1664

82:                                               ; preds = %.lr.ph48, %159
  %.246 = phi %struct.strand_t* [ %80, %.lr.ph48 ], [ %161, %159 ]
  %.345 = phi i32 [ 0, %.lr.ph48 ], [ %158, %159 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.246, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %.345, metadata !1577, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1575, metadata !DIExpression()), !dbg !1583
  %83 = sext i32 %.345 to i64, !dbg !1665
  %84 = sext i32 %.345 to i64, !dbg !1665
  call void @llvm.dbg.value(metadata i64 0, metadata !1575, metadata !DIExpression()), !dbg !1583
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.246, i32 0, i32 5, !dbg !1669
  %86 = load i32, i32* %85, align 8, !dbg !1669, !tbaa !1265
  %87 = sext i32 %86 to i64, !dbg !1671
  %88 = icmp slt i64 0, %87, !dbg !1671
  br i1 %88, label %.lr.ph43, label %155, !dbg !1672

.lr.ph43:                                         ; preds = %82
  br label %89, !dbg !1672

89:                                               ; preds = %.lr.ph43, %151
  %indvars.iv1540 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next16, %151 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1540, metadata !1575, metadata !DIExpression()), !dbg !1583
  %90 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.246, i32 0, i32 7, !dbg !1673
  %91 = load %struct.residue_t**, %struct.residue_t*** %90, align 8, !dbg !1673, !tbaa !877
  %92 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %91, i64 %indvars.iv1540, !dbg !1675
  %93 = load %struct.residue_t*, %struct.residue_t** %92, align 8, !dbg !1675, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %93, metadata !1570, metadata !DIExpression()), !dbg !1583
  %94 = add nsw i64 %indvars.iv1540, %83, !dbg !1676
  %95 = getelementptr inbounds i32, i32* %28, i64 %94, !dbg !1677
  %96 = load i32, i32* %95, align 4, !dbg !1677, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %96, metadata !1571, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 0, metadata !1580, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i64 0, metadata !1580, metadata !DIExpression()), !dbg !1583
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %93, i32 0, i32 11, !dbg !1678
  %98 = load i32, i32* %97, align 8, !dbg !1678, !tbaa !1681
  %99 = sext i32 %98 to i64, !dbg !1682
  %100 = icmp slt i64 0, %99, !dbg !1682
  br i1 %100, label %.lr.ph33, label %119, !dbg !1683

.lr.ph33:                                         ; preds = %89
  br label %101, !dbg !1683

101:                                              ; preds = %.lr.ph33, %115
  %indvars.iv1331 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next14, %115 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1331, metadata !1580, metadata !DIExpression()), !dbg !1583
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %93, i32 0, i32 12, !dbg !1684
  %103 = load [2 x i32]*, [2 x i32]** %102, align 8, !dbg !1684, !tbaa !1686
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i64 %indvars.iv1331, !dbg !1687
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %104, i64 0, i64 0, !dbg !1687
  %106 = load i32, i32* %105, align 4, !dbg !1687, !tbaa !543
  %107 = add nsw i32 %106, %96, !dbg !1688
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %93, i32 0, i32 12, !dbg !1689
  %109 = load [2 x i32]*, [2 x i32]** %108, align 8, !dbg !1689, !tbaa !1686
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i64 %indvars.iv1331, !dbg !1690
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %110, i64 0, i64 1, !dbg !1690
  %112 = load i32, i32* %111, align 4, !dbg !1690, !tbaa !543
  %113 = add nsw i32 %112, %96, !dbg !1691
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %107, i32 %113), !dbg !1692
  br label %115, !dbg !1693

115:                                              ; preds = %101
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv1331, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next14, metadata !1580, metadata !DIExpression()), !dbg !1583
  %116 = load i32, i32* %97, align 8, !dbg !1678, !tbaa !1681
  %117 = sext i32 %116 to i64, !dbg !1682
  %118 = icmp slt i64 %indvars.iv.next14, %117, !dbg !1682
  br i1 %118, label %101, label %._crit_edge34, !dbg !1683, !llvm.loop !1695

._crit_edge34:                                    ; preds = %115
  br label %119, !dbg !1683

119:                                              ; preds = %._crit_edge34, %89
  %120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %93, i32 0, i32 10, !dbg !1697
  %121 = load %struct.extbond_t*, %struct.extbond_t** %120, align 8, !dbg !1697, !tbaa !1699
  call void @llvm.dbg.value(metadata %struct.extbond_t* %121, metadata !1581, metadata !DIExpression()), !dbg !1583
  %122 = icmp ne %struct.extbond_t* %121, null, !dbg !1700
  br i1 %122, label %.lr.ph38, label %150, !dbg !1700

.lr.ph38:                                         ; preds = %119
  br label %123, !dbg !1700

123:                                              ; preds = %.lr.ph38, %146
  %.0135 = phi %struct.extbond_t* [ %121, %.lr.ph38 ], [ %148, %146 ]
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.0135, metadata !1581, metadata !DIExpression()), !dbg !1583
  %124 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0135, i32 0, i32 2, !dbg !1701
  %125 = load i32, i32* %124, align 4, !dbg !1701, !tbaa !1705
  call void @llvm.dbg.value(metadata i32 %125, metadata !1576, metadata !DIExpression()), !dbg !1583
  %126 = add nuw nsw i64 %indvars.iv1540, 1, !dbg !1707
  %127 = sext i32 %125 to i64, !dbg !1708
  %128 = icmp slt i64 %127, %126, !dbg !1708
  br i1 %128, label %129, label %130, !dbg !1709

129:                                              ; preds = %123
  br label %146, !dbg !1710

130:                                              ; preds = %123
  %131 = add nsw i64 %84, %indvars.iv1540, !dbg !1711
  %132 = getelementptr inbounds i32, i32* %28, i64 %131, !dbg !1712
  %133 = load i32, i32* %132, align 4, !dbg !1712, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %133, metadata !1573, metadata !DIExpression()), !dbg !1583
  %134 = add nsw i32 %.345, %125, !dbg !1713
  %135 = sub nsw i32 %134, 1, !dbg !1714
  %136 = sext i32 %135 to i64, !dbg !1715
  %137 = getelementptr inbounds i32, i32* %28, i64 %136, !dbg !1715
  %138 = load i32, i32* %137, align 4, !dbg !1715, !tbaa !543
  call void @llvm.dbg.value(metadata i32 %138, metadata !1574, metadata !DIExpression()), !dbg !1583
  %139 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0135, i32 0, i32 1, !dbg !1716
  %140 = load i32, i32* %139, align 8, !dbg !1716, !tbaa !1717
  %141 = add nsw i32 %140, %133, !dbg !1718
  %142 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0135, i32 0, i32 3, !dbg !1719
  %143 = load i32, i32* %142, align 8, !dbg !1719, !tbaa !1720
  %144 = add nsw i32 %143, %138, !dbg !1721
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %141, i32 %144), !dbg !1722
  br label %146, !dbg !1723

146:                                              ; preds = %130, %129
  %.0136 = phi %struct.extbond_t* [ %.0135, %130 ], [ %.0135, %129 ]
  %147 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0136, i32 0, i32 0, !dbg !1724
  %148 = load %struct.extbond_t*, %struct.extbond_t** %147, align 8, !dbg !1724, !tbaa !1725
  call void @llvm.dbg.value(metadata %struct.extbond_t* %148, metadata !1581, metadata !DIExpression()), !dbg !1583
  %149 = icmp ne %struct.extbond_t* %148, null, !dbg !1700
  br i1 %149, label %123, label %._crit_edge39, !dbg !1700, !llvm.loop !1726

._crit_edge39:                                    ; preds = %146
  br label %150, !dbg !1700

150:                                              ; preds = %._crit_edge39, %119
  %indvars.iv1541 = phi i64 [ %indvars.iv1540, %._crit_edge39 ], [ %indvars.iv1540, %119 ]
  br label %151, !dbg !1728

151:                                              ; preds = %150
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv1541, 1, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next16, metadata !1575, metadata !DIExpression()), !dbg !1583
  %152 = load i32, i32* %85, align 8, !dbg !1669, !tbaa !1265
  %153 = sext i32 %152 to i64, !dbg !1671
  %154 = icmp slt i64 %indvars.iv.next16, %153, !dbg !1671
  br i1 %154, label %89, label %._crit_edge44, !dbg !1672, !llvm.loop !1730

._crit_edge44:                                    ; preds = %151
  br label %155, !dbg !1672

155:                                              ; preds = %._crit_edge44, %82
  %156 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.246, i32 0, i32 5, !dbg !1732
  %157 = load i32, i32* %156, align 8, !dbg !1732, !tbaa !1265
  %158 = add nsw i32 %.345, %157, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %158, metadata !1577, metadata !DIExpression()), !dbg !1583
  br label %159, !dbg !1734

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.246, i32 0, i32 4, !dbg !1735
  %161 = load %struct.strand_t*, %struct.strand_t** %160, align 8, !dbg !1735, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.strand_t* %161, metadata !1569, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %158, metadata !1577, metadata !DIExpression()), !dbg !1583
  %162 = icmp ne %struct.strand_t* %161, null, !dbg !1664
  br i1 %162, label %82, label %._crit_edge49, !dbg !1664, !llvm.loop !1736

._crit_edge49:                                    ; preds = %159
  br label %163, !dbg !1664

163:                                              ; preds = %._crit_edge49, %78
  br label %164, !dbg !1737

164:                                              ; preds = %163, %30
  %.04 = phi i32 [ 1, %30 ], [ 0, %163 ], !dbg !1583
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1578, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.label(metadata !1582), !dbg !1738
  %165 = icmp ne i32* %28, null, !dbg !1739
  br i1 %165, label %166, label %168, !dbg !1741

166:                                              ; preds = %164
  %167 = bitcast i32* %28 to i8*, !dbg !1742
  call void @free(i8* %167) #10, !dbg !1743
  br label %168, !dbg !1743

168:                                              ; preds = %166, %164
  %169 = call i32 @fclose(%struct._IO_FILE* %8), !dbg !1744
  br label %170, !dbg !1745

170:                                              ; preds = %168, %4
  %.0 = phi i32 [ %.04, %168 ], [ 0, %4 ], !dbg !1583
  ret i32 %.0, !dbg !1746
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare !dbg !110 dso_local void @free(i8*) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) #0 !dbg !1747 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1751, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1752, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8* %2, metadata !1753, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8* %3, metadata !1754, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1767, metadata !DIExpression()), !dbg !1769
  %5 = icmp ne %struct.molecule_t* %1, null, !dbg !1770
  br i1 %5, label %9, label %6, !dbg !1772

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1773, !tbaa !410
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)), !dbg !1775
  br label %205, !dbg !1776

9:                                                ; preds = %4
  call void @select_atoms(%struct.molecule_t* %1, i8* %2), !dbg !1777
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2, !dbg !1778
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8, !dbg !1778, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %11, metadata !1756, metadata !DIExpression()), !dbg !1769
  %12 = icmp ne %struct.strand_t* %11, null, !dbg !1780
  br i1 %12, label %.lr.ph36, label %80, !dbg !1780

.lr.ph36:                                         ; preds = %9
  br label %13, !dbg !1780

13:                                               ; preds = %.lr.ph36, %76
  %.0834 = phi %struct.strand_t* [ %11, %.lr.ph36 ], [ %78, %76 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0834, metadata !1756, metadata !DIExpression()), !dbg !1769
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0834, i32 0, i32 2, !dbg !1781
  %15 = load i32, i32* %14, align 4, !dbg !1784, !tbaa !1785
  %16 = and i32 %15, -3, !dbg !1784
  store i32 %16, i32* %14, align 4, !dbg !1784, !tbaa !1785
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0834, i32 0, i32 2, !dbg !1786
  %18 = load i32, i32* %17, align 4, !dbg !1786, !tbaa !1785
  %19 = and i32 %18, 1, !dbg !1787
  %20 = icmp ne i32 %19, 0, !dbg !1788
  %21 = select i1 %20, i32 2, i32 0, !dbg !1788
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0834, i32 0, i32 2, !dbg !1789
  %23 = load i32, i32* %22, align 4, !dbg !1790, !tbaa !1785
  %24 = or i32 %23, %21, !dbg !1790
  store i32 %24, i32* %22, align 4, !dbg !1790, !tbaa !1785
  call void @llvm.dbg.value(metadata i32 0, metadata !1762, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 0, metadata !1762, metadata !DIExpression()), !dbg !1769
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0834, i32 0, i32 5, !dbg !1791
  %26 = load i32, i32* %25, align 8, !dbg !1791, !tbaa !1265
  %27 = sext i32 %26 to i64, !dbg !1794
  %28 = icmp slt i64 0, %27, !dbg !1794
  br i1 %28, label %.lr.ph32, label %74, !dbg !1795

.lr.ph32:                                         ; preds = %13
  br label %29, !dbg !1795

29:                                               ; preds = %.lr.ph32, %70
  %indvars.iv30 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next, %70 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv30, metadata !1762, metadata !DIExpression()), !dbg !1769
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0834, i32 0, i32 7, !dbg !1796
  %31 = load %struct.residue_t**, %struct.residue_t*** %30, align 8, !dbg !1796, !tbaa !877
  %32 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %31, i64 %indvars.iv30, !dbg !1798
  %33 = load %struct.residue_t*, %struct.residue_t** %32, align 8, !dbg !1798, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %33, metadata !1757, metadata !DIExpression()), !dbg !1769
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 6, !dbg !1799
  %35 = load i32, i32* %34, align 8, !dbg !1800, !tbaa !1801
  %36 = and i32 %35, -3, !dbg !1800
  store i32 %36, i32* %34, align 8, !dbg !1800, !tbaa !1801
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 6, !dbg !1802
  %38 = load i32, i32* %37, align 8, !dbg !1802, !tbaa !1801
  %39 = and i32 %38, 1, !dbg !1803
  %40 = icmp ne i32 %39, 0, !dbg !1804
  %41 = select i1 %40, i32 2, i32 0, !dbg !1804
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 6, !dbg !1805
  %43 = load i32, i32* %42, align 8, !dbg !1806, !tbaa !1801
  %44 = or i32 %43, %41, !dbg !1806
  store i32 %44, i32* %42, align 8, !dbg !1806, !tbaa !1801
  call void @llvm.dbg.value(metadata i32 0, metadata !1764, metadata !DIExpression()), !dbg !1769
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 17, !dbg !1807
  %46 = load %struct.atom_t*, %struct.atom_t** %45, align 8, !dbg !1807, !tbaa !1297
  call void @llvm.dbg.value(metadata %struct.atom_t* %46, metadata !1759, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1764, metadata !DIExpression()), !dbg !1769
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 15, !dbg !1809
  %48 = load i32, i32* %47, align 8, !dbg !1809, !tbaa !823
  %49 = icmp slt i32 0, %48, !dbg !1811
  br i1 %49, label %.lr.ph, label %68, !dbg !1812

.lr.ph:                                           ; preds = %29
  br label %50, !dbg !1812

50:                                               ; preds = %.lr.ph, %63
  %.0329 = phi i32 [ 0, %.lr.ph ], [ %64, %63 ]
  %.01428 = phi %struct.atom_t* [ %46, %.lr.ph ], [ %65, %63 ]
  call void @llvm.dbg.value(metadata i32 %.0329, metadata !1764, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata %struct.atom_t* %.01428, metadata !1759, metadata !DIExpression()), !dbg !1769
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01428, i32 0, i32 2, !dbg !1813
  %52 = load i32, i32* %51, align 8, !dbg !1815, !tbaa !933
  %53 = and i32 %52, -3, !dbg !1815
  store i32 %53, i32* %51, align 8, !dbg !1815, !tbaa !933
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01428, i32 0, i32 2, !dbg !1816
  %55 = load i32, i32* %54, align 8, !dbg !1816, !tbaa !933
  %56 = and i32 %55, 1, !dbg !1817
  %57 = icmp ne i32 %56, 0, !dbg !1818
  %58 = zext i1 %57 to i64, !dbg !1818
  %59 = select i1 %57, i32 2, i32 0, !dbg !1818
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01428, i32 0, i32 2, !dbg !1819
  %61 = load i32, i32* %60, align 8, !dbg !1820, !tbaa !933
  %62 = or i32 %61, %59, !dbg !1820
  store i32 %62, i32* %60, align 8, !dbg !1820, !tbaa !933
  br label %63, !dbg !1821

63:                                               ; preds = %50
  %64 = add nuw nsw i32 %.0329, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %64, metadata !1764, metadata !DIExpression()), !dbg !1769
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01428, i32 1, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.atom_t* %65, metadata !1759, metadata !DIExpression()), !dbg !1769
  %66 = load i32, i32* %47, align 8, !dbg !1809, !tbaa !823
  %67 = icmp slt i32 %64, %66, !dbg !1811
  br i1 %67, label %50, label %._crit_edge, !dbg !1812, !llvm.loop !1824

._crit_edge:                                      ; preds = %63
  br label %68, !dbg !1812

68:                                               ; preds = %._crit_edge, %29
  %69 = zext i1 %40 to i64, !dbg !1804
  br label %70, !dbg !1826

70:                                               ; preds = %68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv30, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1762, metadata !DIExpression()), !dbg !1769
  %71 = load i32, i32* %25, align 8, !dbg !1791, !tbaa !1265
  %72 = sext i32 %71 to i64, !dbg !1794
  %73 = icmp slt i64 %indvars.iv.next, %72, !dbg !1794
  br i1 %73, label %29, label %._crit_edge33, !dbg !1795, !llvm.loop !1828

._crit_edge33:                                    ; preds = %70
  br label %74, !dbg !1795

74:                                               ; preds = %._crit_edge33, %13
  %75 = zext i1 %20 to i64, !dbg !1788
  br label %76, !dbg !1830

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0834, i32 0, i32 4, !dbg !1831
  %78 = load %struct.strand_t*, %struct.strand_t** %77, align 8, !dbg !1831, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.strand_t* %78, metadata !1756, metadata !DIExpression()), !dbg !1769
  %79 = icmp ne %struct.strand_t* %78, null, !dbg !1780
  br i1 %79, label %13, label %._crit_edge37, !dbg !1780, !llvm.loop !1832

._crit_edge37:                                    ; preds = %76
  br label %80, !dbg !1780

80:                                               ; preds = %._crit_edge37, %9
  call void @select_atoms(%struct.molecule_t* %1, i8* %3), !dbg !1834
  call void @llvm.dbg.value(metadata i32 0, metadata !1761, metadata !DIExpression()), !dbg !1769
  %81 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2, !dbg !1835
  %82 = load %struct.strand_t*, %struct.strand_t** %81, align 8, !dbg !1835, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %82, metadata !1756, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1761, metadata !DIExpression()), !dbg !1769
  %83 = icmp ne %struct.strand_t* %82, null, !dbg !1837
  br i1 %83, label %.lr.ph41, label %92, !dbg !1837

.lr.ph41:                                         ; preds = %80
  br label %84, !dbg !1837

84:                                               ; preds = %.lr.ph41, %88
  %.1939 = phi %struct.strand_t* [ %82, %.lr.ph41 ], [ %90, %88 ]
  %.01538 = phi i32 [ 0, %.lr.ph41 ], [ %87, %88 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1939, metadata !1756, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %.01538, metadata !1761, metadata !DIExpression()), !dbg !1769
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1939, i32 0, i32 5, !dbg !1838
  %86 = load i32, i32* %85, align 8, !dbg !1838, !tbaa !1265
  %87 = add nsw i32 %.01538, %86, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %87, metadata !1761, metadata !DIExpression()), !dbg !1769
  br label %88, !dbg !1841

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1939, i32 0, i32 4, !dbg !1842
  %90 = load %struct.strand_t*, %struct.strand_t** %89, align 8, !dbg !1842, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.strand_t* %90, metadata !1756, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %87, metadata !1761, metadata !DIExpression()), !dbg !1769
  %91 = icmp ne %struct.strand_t* %90, null, !dbg !1837
  br i1 %91, label %84, label %._crit_edge42, !dbg !1837, !llvm.loop !1843

._crit_edge42:                                    ; preds = %88
  %split = phi i32 [ %87, %88 ]
  br label %92, !dbg !1837

92:                                               ; preds = %._crit_edge42, %80
  %.015.lcssa = phi i32 [ %split, %._crit_edge42 ], [ 0, %80 ], !dbg !1845
  call void @llvm.dbg.value(metadata i32 %.015.lcssa, metadata !1761, metadata !DIExpression()), !dbg !1769
  %93 = sext i32 %.015.lcssa to i64, !dbg !1846
  %94 = mul i64 %93, 8, !dbg !1848
  %95 = call noalias i8* @malloc(i64 %94) #10, !dbg !1849
  %96 = bitcast i8* %95 to %struct.residue_t**, !dbg !1850
  call void @llvm.dbg.value(metadata %struct.residue_t** %96, metadata !1766, metadata !DIExpression()), !dbg !1769
  %97 = icmp eq %struct.residue_t** %96, null, !dbg !1851
  br i1 %97, label %98, label %101, !dbg !1852

98:                                               ; preds = %92
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1853, !tbaa !410
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)), !dbg !1855
  br label %200, !dbg !1856

101:                                              ; preds = %92
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1769
  %102 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2, !dbg !1857
  %103 = load %struct.strand_t*, %struct.strand_t** %102, align 8, !dbg !1857, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %103, metadata !1756, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1769
  %104 = icmp ne %struct.strand_t* %103, null, !dbg !1859
  br i1 %104, label %.lr.ph52, label %127, !dbg !1859

.lr.ph52:                                         ; preds = %101
  br label %105, !dbg !1859

105:                                              ; preds = %.lr.ph52, %123
  %.0550 = phi i32 [ 0, %.lr.ph52 ], [ %122, %123 ]
  %.21049 = phi %struct.strand_t* [ %103, %.lr.ph52 ], [ %125, %123 ]
  call void @llvm.dbg.value(metadata i32 %.0550, metadata !1763, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata %struct.strand_t* %.21049, metadata !1756, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1762, metadata !DIExpression()), !dbg !1769
  %106 = sext i32 %.0550 to i64, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %106, metadata !1763, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 0, metadata !1762, metadata !DIExpression()), !dbg !1769
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21049, i32 0, i32 5, !dbg !1864
  %108 = load i32, i32* %107, align 8, !dbg !1864, !tbaa !1265
  %109 = sext i32 %108 to i64, !dbg !1866
  %110 = icmp slt i64 0, %109, !dbg !1866
  br i1 %110, label %.lr.ph46, label %121, !dbg !1867

.lr.ph46:                                         ; preds = %105
  br label %111, !dbg !1867

111:                                              ; preds = %.lr.ph46, %117
  %indvars.iv1644 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next17, %117 ]
  %indvars.iv1843 = phi i64 [ %106, %.lr.ph46 ], [ %indvars.iv.next19, %117 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1644, metadata !1762, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv1843, metadata !1763, metadata !DIExpression()), !dbg !1769
  %112 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21049, i32 0, i32 7, !dbg !1868
  %113 = load %struct.residue_t**, %struct.residue_t*** %112, align 8, !dbg !1868, !tbaa !877
  %114 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %113, i64 %indvars.iv1644, !dbg !1869
  %115 = load %struct.residue_t*, %struct.residue_t** %114, align 8, !dbg !1869, !tbaa !410
  %indvars.iv.next19 = add nsw i64 %indvars.iv1843, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next19, metadata !1763, metadata !DIExpression()), !dbg !1769
  %116 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %96, i64 %indvars.iv1843, !dbg !1871
  store %struct.residue_t* %115, %struct.residue_t** %116, align 8, !dbg !1872, !tbaa !410
  br label %117, !dbg !1871

117:                                              ; preds = %111
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv1644, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next19, metadata !1763, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next17, metadata !1762, metadata !DIExpression()), !dbg !1769
  %118 = load i32, i32* %107, align 8, !dbg !1864, !tbaa !1265
  %119 = sext i32 %118 to i64, !dbg !1866
  %120 = icmp slt i64 %indvars.iv.next17, %119, !dbg !1866
  br i1 %120, label %111, label %._crit_edge47, !dbg !1867, !llvm.loop !1874

._crit_edge47:                                    ; preds = %117
  %split48 = phi i64 [ %indvars.iv.next19, %117 ]
  br label %121, !dbg !1867

121:                                              ; preds = %._crit_edge47, %105
  %.16.lcssa.wide = phi i64 [ %split48, %._crit_edge47 ], [ %106, %105 ]
  %122 = trunc i64 %.16.lcssa.wide to i32, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %122, metadata !1763, metadata !DIExpression()), !dbg !1769
  br label %123, !dbg !1876

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21049, i32 0, i32 4, !dbg !1877
  %125 = load %struct.strand_t*, %struct.strand_t** %124, align 8, !dbg !1877, !tbaa !864
  call void @llvm.dbg.value(metadata i32 %122, metadata !1763, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata %struct.strand_t* %125, metadata !1756, metadata !DIExpression()), !dbg !1769
  %126 = icmp ne %struct.strand_t* %125, null, !dbg !1859
  br i1 %126, label %105, label %._crit_edge53, !dbg !1859, !llvm.loop !1878

._crit_edge53:                                    ; preds = %123
  br label %127, !dbg !1859

127:                                              ; preds = %._crit_edge53, %101
  %128 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !1880
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %128, metadata !1755, metadata !DIExpression()), !dbg !1769
  %129 = icmp eq %struct._IO_FILE* %128, null, !dbg !1882
  br i1 %129, label %130, label %133, !dbg !1883

130:                                              ; preds = %127
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1884, !tbaa !410
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %0), !dbg !1886
  br label %200, !dbg !1887

133:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 0, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1762, metadata !DIExpression()), !dbg !1769
  %134 = sext i32 %.015.lcssa to i64, !dbg !1888
  call void @llvm.dbg.value(metadata i32 0, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 0, metadata !1762, metadata !DIExpression()), !dbg !1769
  %135 = icmp slt i64 0, %134, !dbg !1890
  br i1 %135, label %.lr.ph78, label %199, !dbg !1892

.lr.ph78:                                         ; preds = %133
  br label %136, !dbg !1892

136:                                              ; preds = %.lr.ph78, %197
  %.0176 = phi i32 [ 0, %.lr.ph78 ], [ %.1.lcssa, %197 ]
  %indvars.iv2674 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next27, %197 ]
  call void @llvm.dbg.value(metadata i32 %.0176, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv2674, metadata !1762, metadata !DIExpression()), !dbg !1769
  %137 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %96, i64 %indvars.iv2674, !dbg !1893
  %138 = load %struct.residue_t*, %struct.residue_t** %137, align 8, !dbg !1893, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %138, metadata !1757, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1764, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %.0176, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 0, metadata !1764, metadata !DIExpression()), !dbg !1769
  %139 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %138, i32 0, i32 15, !dbg !1895
  %140 = load i32, i32* %139, align 8, !dbg !1895, !tbaa !823
  %141 = sext i32 %140 to i64, !dbg !1898
  %142 = icmp slt i64 0, %141, !dbg !1898
  br i1 %142, label %.lr.ph71, label %196, !dbg !1899

.lr.ph71:                                         ; preds = %136
  br label %143, !dbg !1899

143:                                              ; preds = %.lr.ph71, %192
  %.169 = phi i32 [ %.0176, %.lr.ph71 ], [ %.5, %192 ]
  %indvars.iv2468 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next25, %192 ]
  call void @llvm.dbg.value(metadata i32 %.169, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv2468, metadata !1764, metadata !DIExpression()), !dbg !1769
  %144 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %138, i32 0, i32 17, !dbg !1900
  %145 = load %struct.atom_t*, %struct.atom_t** %144, align 8, !dbg !1900, !tbaa !1297
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %145, i64 %indvars.iv2468, !dbg !1902
  call void @llvm.dbg.value(metadata %struct.atom_t* %146, metadata !1759, metadata !DIExpression()), !dbg !1769
  %147 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %146, i32 0, i32 2, !dbg !1903
  %148 = load i32, i32* %147, align 8, !dbg !1903, !tbaa !933
  %149 = and i32 2, %148, !dbg !1905
  %150 = icmp ne i32 %149, 0, !dbg !1905
  br i1 %150, label %151, label %191, !dbg !1906

151:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i32 0, metadata !1763, metadata !DIExpression()), !dbg !1769
  %wide.trip.count = zext i32 %.015.lcssa to i64, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %.169, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !1769
  %exitcond60 = icmp ne i64 0, %wide.trip.count, !dbg !1907
  br i1 %exitcond60, label %.lr.ph65, label %190, !dbg !1911

.lr.ph65:                                         ; preds = %151
  br label %152, !dbg !1911

152:                                              ; preds = %.lr.ph65, %189
  %.263 = phi i32 [ %.169, %.lr.ph65 ], [ %.3.lcssa, %189 ]
  %indvars.iv2261 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next23, %189 ]
  call void @llvm.dbg.value(metadata i32 %.263, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv2261, metadata !1763, metadata !DIExpression()), !dbg !1769
  %153 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %96, i64 %indvars.iv2261, !dbg !1912
  %154 = load %struct.residue_t*, %struct.residue_t** %153, align 8, !dbg !1912, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %154, metadata !1758, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 0, metadata !1765, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i32 %.263, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 0, metadata !1765, metadata !DIExpression()), !dbg !1769
  %155 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %154, i32 0, i32 15, !dbg !1914
  %156 = load i32, i32* %155, align 8, !dbg !1914, !tbaa !823
  %157 = sext i32 %156 to i64, !dbg !1917
  %158 = icmp slt i64 0, %157, !dbg !1917
  br i1 %158, label %.lr.ph57, label %188, !dbg !1918

.lr.ph57:                                         ; preds = %152
  br label %159, !dbg !1918

159:                                              ; preds = %.lr.ph57, %184
  %.355 = phi i32 [ %.263, %.lr.ph57 ], [ %.4, %184 ]
  %indvars.iv2054 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next21, %184 ]
  call void @llvm.dbg.value(metadata i32 %.355, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv2054, metadata !1765, metadata !DIExpression()), !dbg !1769
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %154, i32 0, i32 17, !dbg !1919
  %161 = load %struct.atom_t*, %struct.atom_t** %160, align 8, !dbg !1919, !tbaa !1297
  %162 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %161, i64 %indvars.iv2054, !dbg !1921
  call void @llvm.dbg.value(metadata %struct.atom_t* %162, metadata !1760, metadata !DIExpression()), !dbg !1769
  %163 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %162, i32 0, i32 2, !dbg !1922
  %164 = load i32, i32* %163, align 8, !dbg !1922, !tbaa !933
  %165 = and i32 1, %164, !dbg !1924
  %166 = icmp ne i32 %165, 0, !dbg !1924
  br i1 %166, label %167, label %183, !dbg !1925

167:                                              ; preds = %159
  %168 = add nuw nsw i64 %indvars.iv2674, 1, !dbg !1926
  %169 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %138, i32 0, i32 4, !dbg !1928
  %170 = load i8*, i8** %169, align 8, !dbg !1928, !tbaa !812
  %171 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %146, i32 0, i32 0, !dbg !1929
  %172 = load i8*, i8** %171, align 8, !dbg !1929, !tbaa !927
  %173 = add nuw nsw i64 %indvars.iv2261, 1, !dbg !1930
  %174 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %154, i32 0, i32 4, !dbg !1931
  %175 = load i8*, i8** %174, align 8, !dbg !1931, !tbaa !812
  %176 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %162, i32 0, i32 0, !dbg !1932
  %177 = load i8*, i8** %176, align 8, !dbg !1932, !tbaa !927
  %178 = call double @dist(%struct.atom_t* %146, %struct.atom_t* %162), !dbg !1933
  %179 = trunc i64 %173 to i32, !dbg !1934
  %180 = trunc i64 %168 to i32, !dbg !1934
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %180, i8* %170, i8* %172, i32 %179, i8* %175, i8* %177, double %178), !dbg !1934
  %182 = add nsw i32 %.355, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %182, metadata !1767, metadata !DIExpression()), !dbg !1769
  br label %183, !dbg !1936

183:                                              ; preds = %167, %159
  %.4 = phi i32 [ %182, %167 ], [ %.355, %159 ], !dbg !1937
  call void @llvm.dbg.value(metadata i32 %.4, metadata !1767, metadata !DIExpression()), !dbg !1769
  br label %184, !dbg !1938

184:                                              ; preds = %183
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv2054, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %.4, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next21, metadata !1765, metadata !DIExpression()), !dbg !1769
  %185 = load i32, i32* %155, align 8, !dbg !1914, !tbaa !823
  %186 = sext i32 %185 to i64, !dbg !1917
  %187 = icmp slt i64 %indvars.iv.next21, %186, !dbg !1917
  br i1 %187, label %159, label %._crit_edge58, !dbg !1918, !llvm.loop !1940

._crit_edge58:                                    ; preds = %184
  %split59 = phi i32 [ %.4, %184 ]
  br label %188, !dbg !1918

188:                                              ; preds = %._crit_edge58, %152
  %indvars.iv2262 = phi i64 [ %indvars.iv2261, %._crit_edge58 ], [ %indvars.iv2261, %152 ]
  %.3.lcssa = phi i32 [ %split59, %._crit_edge58 ], [ %.263, %152 ], !dbg !1937
  call void @llvm.dbg.value(metadata i32 %.3.lcssa, metadata !1767, metadata !DIExpression()), !dbg !1769
  br label %189, !dbg !1942

189:                                              ; preds = %188
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv2262, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %.3.lcssa, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next23, metadata !1763, metadata !DIExpression()), !dbg !1769
  %exitcond = icmp ne i64 %indvars.iv.next23, %wide.trip.count, !dbg !1907
  br i1 %exitcond, label %152, label %._crit_edge66, !dbg !1911, !llvm.loop !1944

._crit_edge66:                                    ; preds = %189
  %split67 = phi i32 [ %.3.lcssa, %189 ]
  br label %190, !dbg !1911

190:                                              ; preds = %._crit_edge66, %151
  %.2.lcssa = phi i32 [ %split67, %._crit_edge66 ], [ %.169, %151 ], !dbg !1946
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1767, metadata !DIExpression()), !dbg !1769
  br label %191, !dbg !1947

191:                                              ; preds = %190, %143
  %.5 = phi i32 [ %.2.lcssa, %190 ], [ %.169, %143 ], !dbg !1946
  call void @llvm.dbg.value(metadata i32 %.5, metadata !1767, metadata !DIExpression()), !dbg !1769
  br label %192, !dbg !1948

192:                                              ; preds = %191
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2468, 1, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %.5, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next25, metadata !1764, metadata !DIExpression()), !dbg !1769
  %193 = load i32, i32* %139, align 8, !dbg !1895, !tbaa !823
  %194 = sext i32 %193 to i64, !dbg !1898
  %195 = icmp slt i64 %indvars.iv.next25, %194, !dbg !1898
  br i1 %195, label %143, label %._crit_edge72, !dbg !1899, !llvm.loop !1950

._crit_edge72:                                    ; preds = %192
  %split73 = phi i32 [ %.5, %192 ]
  br label %196, !dbg !1899

196:                                              ; preds = %._crit_edge72, %136
  %indvars.iv2675 = phi i64 [ %indvars.iv2674, %._crit_edge72 ], [ %indvars.iv2674, %136 ]
  %.1.lcssa = phi i32 [ %split73, %._crit_edge72 ], [ %.0176, %136 ], !dbg !1946
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1767, metadata !DIExpression()), !dbg !1769
  br label %197, !dbg !1952

197:                                              ; preds = %196
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv2675, 1, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next27, metadata !1762, metadata !DIExpression()), !dbg !1769
  %198 = icmp slt i64 %indvars.iv.next27, %134, !dbg !1890
  br i1 %198, label %136, label %._crit_edge79, !dbg !1892, !llvm.loop !1954

._crit_edge79:                                    ; preds = %197
  %split80 = phi i32 [ %.1.lcssa, %197 ]
  br label %199, !dbg !1892

199:                                              ; preds = %._crit_edge79, %133
  %.01.lcssa = phi i32 [ %split80, %._crit_edge79 ], [ 0, %133 ], !dbg !1946
  call void @llvm.dbg.value(metadata i32 %.01.lcssa, metadata !1767, metadata !DIExpression()), !dbg !1769
  br label %200, !dbg !1955

200:                                              ; preds = %199, %130, %98
  %.6 = phi i32 [ 0, %98 ], [ 0, %130 ], [ %.01.lcssa, %199 ], !dbg !1769
  call void @llvm.dbg.value(metadata i32 %.6, metadata !1767, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.label(metadata !1768), !dbg !1956
  %201 = icmp ne %struct.residue_t** %96, null, !dbg !1957
  br i1 %201, label %202, label %204, !dbg !1959

202:                                              ; preds = %200
  %203 = bitcast %struct.residue_t** %96 to i8*, !dbg !1960
  call void @free(i8* %203) #10, !dbg !1961
  br label %204, !dbg !1961

204:                                              ; preds = %202, %200
  br label %205, !dbg !1962

205:                                              ; preds = %204, %6
  %.0 = phi i32 [ %.6, %204 ], [ 0, %6 ], !dbg !1769
  ret i32 %.0, !dbg !1963
}

declare !dbg !114 dso_local void @select_atoms(%struct.molecule_t*, i8*) #4

; Function Attrs: nounwind uwtable
define internal double @dist(%struct.atom_t* %0, %struct.atom_t* %1) #0 !dbg !1964 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1968, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata %struct.atom_t* %1, metadata !1969, metadata !DIExpression()), !dbg !1973
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !1974
  %4 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 0, !dbg !1975
  %5 = load double, double* %4, align 8, !dbg !1975, !tbaa !754
  %6 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i32 0, i32 17, !dbg !1976
  %7 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0, !dbg !1977
  %8 = load double, double* %7, align 8, !dbg !1977, !tbaa !754
  %9 = fsub double %5, %8, !dbg !1978
  call void @llvm.dbg.value(metadata double %9, metadata !1970, metadata !DIExpression()), !dbg !1973
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !1979
  %11 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 1, !dbg !1980
  %12 = load double, double* %11, align 8, !dbg !1980, !tbaa !754
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i32 0, i32 17, !dbg !1981
  %14 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 1, !dbg !1982
  %15 = load double, double* %14, align 8, !dbg !1982, !tbaa !754
  %16 = fsub double %12, %15, !dbg !1983
  call void @llvm.dbg.value(metadata double %16, metadata !1971, metadata !DIExpression()), !dbg !1973
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17, !dbg !1984
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 2, !dbg !1985
  %19 = load double, double* %18, align 8, !dbg !1985, !tbaa !754
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i32 0, i32 17, !dbg !1986
  %21 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 2, !dbg !1987
  %22 = load double, double* %21, align 8, !dbg !1987, !tbaa !754
  %23 = fsub double %19, %22, !dbg !1988
  call void @llvm.dbg.value(metadata double %23, metadata !1972, metadata !DIExpression()), !dbg !1973
  %24 = fmul double %9, %9, !dbg !1989
  %25 = fmul double %16, %16, !dbg !1990
  %26 = fadd double %24, %25, !dbg !1991
  %27 = fmul double %23, %23, !dbg !1992
  %28 = fadd double %26, %27, !dbg !1993
  %29 = call double @sqrt(double %28) #10, !dbg !1994
  ret double %29, !dbg !1995
}

; Function Attrs: nounwind uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* %1) #0 !dbg !1996 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2002, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !2003, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !2004, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !2007, metadata !DIExpression()), !dbg !2009
  %3 = icmp eq i8* %0, null, !dbg !2010
  br i1 %3, label %8, label %4, !dbg !2012

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1, !dbg !2013, !tbaa !404
  %6 = sext i8 %5 to i32, !dbg !2013
  %7 = icmp eq i32 %6, 0, !dbg !2014
  br i1 %7, label %8, label %11, !dbg !2015

8:                                                ; preds = %4, %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2016, !tbaa !410
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0)), !dbg !2018
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2009
  br label %36, !dbg !2019

11:                                               ; preds = %4
  %12 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !2020
  %13 = icmp ne i32 %12, 0, !dbg !2020
  br i1 %13, label %16, label %14, !dbg !2022

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2023, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %15, metadata !2004, metadata !DIExpression()), !dbg !2009
  br label %23, !dbg !2024

16:                                               ; preds = %11
  %17 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)), !dbg !2025
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %17, metadata !2004, metadata !DIExpression()), !dbg !2009
  %18 = icmp eq %struct._IO_FILE* %17, null, !dbg !2027
  br i1 %18, label %19, label %22, !dbg !2028

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2029, !tbaa !410
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %0), !dbg !2031
  call void @llvm.dbg.value(metadata i32 1, metadata !2007, metadata !DIExpression()), !dbg !2009
  br label %36, !dbg !2032

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %14
  %.02 = phi %struct._IO_FILE* [ %17, %22 ], [ %15, %14 ], !dbg !2033
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.02, metadata !2004, metadata !DIExpression()), !dbg !2009
  br label %24

24:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 0, metadata !2005, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 0, metadata !2005, metadata !DIExpression()), !dbg !2009
  br label %25, !dbg !2034

25:                                               ; preds = %24, %34
  %indvars.iv48 = phi i64 [ 0, %24 ], [ %indvars.iv.next5, %34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !2005, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i64 0, metadata !2006, metadata !DIExpression()), !dbg !2009
  br label %26, !dbg !2036

26:                                               ; preds = %25, %31
  %indvars.iv7 = phi i64 [ 0, %25 ], [ %indvars.iv.next, %31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !2006, metadata !DIExpression()), !dbg !2009
  %27 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv48, !dbg !2040
  %28 = getelementptr inbounds [4 x double], [4 x double]* %27, i64 0, i64 %indvars.iv7, !dbg !2040
  %29 = load double, double* %28, align 8, !dbg !2040, !tbaa !754
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.02, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %29), !dbg !2042
  br label %31, !dbg !2042

31:                                               ; preds = %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2006, metadata !DIExpression()), !dbg !2009
  %exitcond = icmp ne i64 %indvars.iv.next, 4, !dbg !2044
  br i1 %exitcond, label %26, label %32, !dbg !2036, !llvm.loop !2045

32:                                               ; preds = %31
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.02, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)), !dbg !2047
  br label %34, !dbg !2048

34:                                               ; preds = %32
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !2005, metadata !DIExpression()), !dbg !2009
  %exitcond6 = icmp ne i64 %indvars.iv.next5, 4, !dbg !2050
  br i1 %exitcond6, label %25, label %35, !dbg !2034, !llvm.loop !2051

35:                                               ; preds = %34
  br label %36, !dbg !2052

36:                                               ; preds = %35, %19, %8
  %.1 = phi %struct._IO_FILE* [ null, %8 ], [ %17, %19 ], [ %.02, %35 ], !dbg !2009
  %.0 = phi i32 [ 1, %8 ], [ 1, %19 ], [ 0, %35 ], !dbg !2009
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.1, metadata !2004, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.label(metadata !2008), !dbg !2053
  %37 = icmp ne %struct._IO_FILE* %.1, null, !dbg !2054
  br i1 %37, label %38, label %43, !dbg !2056

38:                                               ; preds = %36
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2057, !tbaa !410
  %40 = icmp ne %struct._IO_FILE* %.1, %39, !dbg !2058
  br i1 %40, label %41, label %43, !dbg !2059

41:                                               ; preds = %38
  %42 = call i32 @fclose(%struct._IO_FILE* %.1), !dbg !2060
  br label %43, !dbg !2060

43:                                               ; preds = %41, %38, %36
  ret i32 %.0, !dbg !2061
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @initres() #0 !dbg !2062 {
  call void @NAB_initres(%struct.residue_t* @res, i32 0), !dbg !2063
  %1 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !2064, !tbaa !812
  %2 = icmp eq i8* %1, null, !dbg !2066
  br i1 %2, label %3, label %11, !dbg !2067

3:                                                ; preds = %0
  %4 = call noalias i8* @malloc(i64 8) #10, !dbg !2068
  store i8* %4, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !2070, !tbaa !812
  %5 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8, !dbg !2071, !tbaa !812
  %6 = icmp eq i8* %5, null, !dbg !2073
  br i1 %6, label %7, label %10, !dbg !2074

7:                                                ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2075, !tbaa !410
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0)), !dbg !2077
  call void @exit(i32 1) #11, !dbg !2078
  unreachable, !dbg !2078

10:                                               ; preds = %3
  br label %11, !dbg !2079

11:                                               ; preds = %10, %0
  %12 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !2080, !tbaa !816
  %13 = icmp eq i8* %12, null, !dbg !2082
  br i1 %13, label %14, label %22, !dbg !2083

14:                                               ; preds = %11
  %15 = call noalias i8* @malloc(i64 8) #10, !dbg !2084
  store i8* %15, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !2086, !tbaa !816
  %16 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8, !dbg !2087, !tbaa !816
  %17 = icmp eq i8* %16, null, !dbg !2089
  br i1 %17, label %18, label %21, !dbg !2090

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2091, !tbaa !410
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0)), !dbg !2093
  call void @exit(i32 1) #11, !dbg !2094
  unreachable, !dbg !2094

21:                                               ; preds = %14
  br label %22, !dbg !2095

22:                                               ; preds = %21, %11
  %23 = load i32, i32* @n_atab, align 4, !dbg !2096, !tbaa !543
  store i32 %23, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8, !dbg !2097, !tbaa !823
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 17), align 8, !dbg !2098, !tbaa !1297
  ret void, !dbg !2099
}

; Function Attrs: nounwind uwtable
define internal void @init_atab() #0 !dbg !353 {
  %1 = load i32, i32* @init_atab.init, align 4, !dbg !2100, !tbaa !543
  %2 = icmp ne i32 %1, 0, !dbg !2100
  br i1 %2, label %4, label %3, !dbg !2102

3:                                                ; preds = %0
  br label %24, !dbg !2103

4:                                                ; preds = %0
  call void @llvm.dbg.value(metadata %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), metadata !358, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 0, metadata !357, metadata !DIExpression()), !dbg !2104
  br label %5, !dbg !2105

5:                                                ; preds = %4, %20
  %.04 = phi i32 [ 0, %4 ], [ %21, %20 ]
  %.013 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %4 ], [ %22, %20 ]
  call void @llvm.dbg.value(metadata i32 %.04, metadata !357, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata %struct.atom_t* %.013, metadata !358, metadata !DIExpression()), !dbg !2104
  %6 = call noalias i8* @malloc(i64 8) #10, !dbg !2107
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 0, !dbg !2110
  store i8* %6, i8** %7, align 8, !dbg !2111, !tbaa !927
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 0, !dbg !2112
  %9 = load i8*, i8** %8, align 8, !dbg !2112, !tbaa !927
  %10 = icmp eq i8* %9, null, !dbg !2114
  br i1 %10, label %11, label %14, !dbg !2115

11:                                               ; preds = %5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2116, !tbaa !410
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0)), !dbg !2118
  call void @exit(i32 1) #11, !dbg !2119
  unreachable, !dbg !2119

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 0, !dbg !2120
  %16 = load i8*, i8** %15, align 8, !dbg !2120, !tbaa !927
  store i8 0, i8* %16, align 1, !dbg !2121, !tbaa !404
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 1, !dbg !2122
  store i8* null, i8** %17, align 8, !dbg !2123, !tbaa !2124
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 10, !dbg !2125
  store i8* null, i8** %18, align 8, !dbg !2126, !tbaa !2127
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 0, i32 16, !dbg !2128
  store i8* null, i8** %19, align 8, !dbg !2129, !tbaa !2130
  br label %20, !dbg !2131

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %.04, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %21, metadata !357, metadata !DIExpression()), !dbg !2104
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i32 1, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.atom_t* %22, metadata !358, metadata !DIExpression()), !dbg !2104
  %exitcond = icmp ne i32 %21, 1000, !dbg !2134
  br i1 %exitcond, label %5, label %23, !dbg !2105, !llvm.loop !2135

23:                                               ; preds = %20
  store i32 0, i32* @init_atab.init, align 4, !dbg !2137, !tbaa !543
  br label %24, !dbg !2138

24:                                               ; preds = %23, %3
  %.02 = phi i32 [ 0, %23 ], [ 1, %3 ]
  switch i32 %.02, label %26 [
    i32 0, label %25
    i32 1, label %25
  ]

25:                                               ; preds = %24, %24
  ret void, !dbg !2138

26:                                               ; preds = %24
  unreachable
}

declare !dbg !325 dso_local %struct.molecule_t* @newmolecule() #4

declare !dbg !328 dso_local i8* @ggets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #5

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local double @atof(i8* nonnull %0) #7 !dbg !2139 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2146, metadata !DIExpression()), !dbg !2147
  %2 = call double @strtod(i8* %0, i8** null) #10, !dbg !2148
  ret double %2, !dbg !2149
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @makebonds(%struct.residue_t* %0) #0 !dbg !2150 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !2154, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 0, metadata !2155, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 0, metadata !2155, metadata !DIExpression()), !dbg !2162
  %2 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !2163
  %3 = load i32, i32* %2, align 8, !dbg !2163, !tbaa !823
  %4 = sext i32 %3 to i64, !dbg !2166
  %5 = icmp slt i64 0, %4, !dbg !2166
  br i1 %5, label %.lr.ph, label %15, !dbg !2167

.lr.ph:                                           ; preds = %1
  br label %6, !dbg !2167

6:                                                ; preds = %.lr.ph, %11
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !2155, metadata !DIExpression()), !dbg !2162
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2168
  %8 = load %struct.atom_t*, %struct.atom_t** %7, align 8, !dbg !2168, !tbaa !1297
  %9 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv10, !dbg !2170
  call void @llvm.dbg.value(metadata %struct.atom_t* %9, metadata !2157, metadata !DIExpression()), !dbg !2162
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i32 0, i32 3, !dbg !2171
  store i32 0, i32* %10, align 4, !dbg !2172, !tbaa !2173
  br label %11, !dbg !2174

11:                                               ; preds = %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2155, metadata !DIExpression()), !dbg !2162
  %12 = load i32, i32* %2, align 8, !dbg !2163, !tbaa !823
  %13 = sext i32 %12 to i64, !dbg !2166
  %14 = icmp slt i64 %indvars.iv.next, %13, !dbg !2166
  br i1 %14, label %6, label %._crit_edge, !dbg !2167, !llvm.loop !2176

._crit_edge:                                      ; preds = %11
  br label %15, !dbg !2167

15:                                               ; preds = %._crit_edge, %1
  call void @llvm.dbg.value(metadata i32 0, metadata !2155, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 0, metadata !2155, metadata !DIExpression()), !dbg !2162
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !2178
  %17 = load i32, i32* %16, align 8, !dbg !2178, !tbaa !823
  %18 = sub nsw i32 %17, 1, !dbg !2181
  %19 = sext i32 %18 to i64, !dbg !2182
  %20 = icmp slt i64 0, %19, !dbg !2182
  br i1 %20, label %.lr.ph25, label %194, !dbg !2183

.lr.ph25:                                         ; preds = %15
  br label %21, !dbg !2183

21:                                               ; preds = %.lr.ph25, %188
  %22 = phi i64 [ 1, %.lr.ph25 ], [ %189, %188 ]
  %indvars.iv423 = phi i32 [ 1, %.lr.ph25 ], [ %indvars.iv.next5, %188 ]
  %indvars.iv821 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next9, %188 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv821, metadata !2155, metadata !DIExpression()), !dbg !2162
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2184
  %24 = load %struct.atom_t*, %struct.atom_t** %23, align 8, !dbg !2184, !tbaa !1297
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv821, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.atom_t* %25, metadata !2157, metadata !DIExpression()), !dbg !2162
  %26 = call i16** @__ctype_b_loc() #12, !dbg !2187
  %27 = load i16*, i16** %26, align 8, !dbg !2187, !tbaa !410
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0, !dbg !2187
  %29 = load i8*, i8** %28, align 8, !dbg !2187, !tbaa !927
  %30 = load i8, i8* %29, align 1, !dbg !2187, !tbaa !404
  %31 = sext i8 %30 to i32, !dbg !2187
  %32 = sext i32 %31 to i64, !dbg !2187
  %33 = getelementptr inbounds i16, i16* %27, i64 %32, !dbg !2187
  %34 = load i16, i16* %33, align 2, !dbg !2187, !tbaa !2189
  %35 = zext i16 %34 to i32, !dbg !2187
  %36 = and i32 %35, 2048, !dbg !2187
  %37 = icmp ne i32 %36, 0, !dbg !2187
  br i1 %37, label %38, label %55, !dbg !2191

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0, !dbg !2192
  %40 = load i8*, i8** %39, align 8, !dbg !2192, !tbaa !927
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !2193
  %42 = load i8, i8* %41, align 1, !dbg !2193, !tbaa !404
  %43 = sext i8 %42 to i32, !dbg !2193
  %44 = icmp eq i32 %43, 72, !dbg !2194
  br i1 %44, label %52, label %45, !dbg !2195

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0, !dbg !2196
  %47 = load i8*, i8** %46, align 8, !dbg !2196, !tbaa !927
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !2197
  %49 = load i8, i8* %48, align 1, !dbg !2197, !tbaa !404
  %50 = sext i8 %49 to i32, !dbg !2197
  %51 = icmp eq i32 %50, 104, !dbg !2198
  br label %52, !dbg !2195

52:                                               ; preds = %45, %38
  %53 = phi i1 [ true, %38 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %54, metadata !2159, metadata !DIExpression()), !dbg !2162
  br label %70, !dbg !2199

55:                                               ; preds = %21
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0, !dbg !2200
  %57 = load i8*, i8** %56, align 8, !dbg !2200, !tbaa !927
  %58 = load i8, i8* %57, align 1, !dbg !2201, !tbaa !404
  %59 = sext i8 %58 to i32, !dbg !2201
  %60 = icmp eq i32 %59, 72, !dbg !2202
  br i1 %60, label %67, label %61, !dbg !2203

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0, !dbg !2204
  %63 = load i8*, i8** %62, align 8, !dbg !2204, !tbaa !927
  %64 = load i8, i8* %63, align 1, !dbg !2205, !tbaa !404
  %65 = sext i8 %64 to i32, !dbg !2205
  %66 = icmp eq i32 %65, 104, !dbg !2206
  br label %67, !dbg !2203

67:                                               ; preds = %61, %55
  %68 = phi i1 [ true, %55 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %69, metadata !2159, metadata !DIExpression()), !dbg !2162
  br label %70

70:                                               ; preds = %67, %52
  %.03 = phi i32 [ %54, %52 ], [ %69, %67 ], !dbg !2207
  call void @llvm.dbg.value(metadata i32 %.03, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %indvars.iv821, metadata !2156, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %22, metadata !2156, metadata !DIExpression()), !dbg !2162
  %71 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15, !dbg !2208
  %72 = load i32, i32* %71, align 8, !dbg !2208, !tbaa !823
  %73 = sext i32 %72 to i64, !dbg !2211
  %74 = icmp slt i64 %22, %73, !dbg !2211
  br i1 %74, label %.lr.ph19, label %187, !dbg !2212

.lr.ph19:                                         ; preds = %70
  br label %75, !dbg !2212

75:                                               ; preds = %.lr.ph19, %183
  %indvars.iv611 = phi i64 [ %22, %.lr.ph19 ], [ %indvars.iv.next7, %183 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv611, metadata !2156, metadata !DIExpression()), !dbg !2162
  %76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17, !dbg !2213
  %77 = load %struct.atom_t*, %struct.atom_t** %76, align 8, !dbg !2213, !tbaa !1297
  %78 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %77, i64 %indvars.iv611, !dbg !2215
  call void @llvm.dbg.value(metadata %struct.atom_t* %78, metadata !2158, metadata !DIExpression()), !dbg !2162
  %79 = call i16** @__ctype_b_loc() #12, !dbg !2216
  %80 = load i16*, i16** %79, align 8, !dbg !2216, !tbaa !410
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0, !dbg !2216
  %82 = load i8*, i8** %81, align 8, !dbg !2216, !tbaa !927
  %83 = load i8, i8* %82, align 1, !dbg !2216, !tbaa !404
  %84 = sext i8 %83 to i32, !dbg !2216
  %85 = sext i32 %84 to i64, !dbg !2216
  %86 = getelementptr inbounds i16, i16* %80, i64 %85, !dbg !2216
  %87 = load i16, i16* %86, align 2, !dbg !2216, !tbaa !2189
  %88 = zext i16 %87 to i32, !dbg !2216
  %89 = and i32 %88, 2048, !dbg !2216
  %90 = icmp ne i32 %89, 0, !dbg !2216
  br i1 %90, label %91, label %108, !dbg !2218

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0, !dbg !2219
  %93 = load i8*, i8** %92, align 8, !dbg !2219, !tbaa !927
  %94 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !2220
  %95 = load i8, i8* %94, align 1, !dbg !2220, !tbaa !404
  %96 = sext i8 %95 to i32, !dbg !2220
  %97 = icmp eq i32 %96, 72, !dbg !2221
  br i1 %97, label %105, label %98, !dbg !2222

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0, !dbg !2223
  %100 = load i8*, i8** %99, align 8, !dbg !2223, !tbaa !927
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !2224
  %102 = load i8, i8* %101, align 1, !dbg !2224, !tbaa !404
  %103 = sext i8 %102 to i32, !dbg !2224
  %104 = icmp eq i32 %103, 104, !dbg !2225
  br label %105, !dbg !2222

105:                                              ; preds = %98, %91
  %106 = phi i1 [ true, %91 ], [ %104, %98 ]
  %107 = zext i1 %106 to i32, !dbg !2222
  call void @llvm.dbg.value(metadata i32 %107, metadata !2160, metadata !DIExpression()), !dbg !2162
  br label %123, !dbg !2226

108:                                              ; preds = %75
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0, !dbg !2227
  %110 = load i8*, i8** %109, align 8, !dbg !2227, !tbaa !927
  %111 = load i8, i8* %110, align 1, !dbg !2228, !tbaa !404
  %112 = sext i8 %111 to i32, !dbg !2228
  %113 = icmp eq i32 %112, 72, !dbg !2229
  br i1 %113, label %120, label %114, !dbg !2230

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0, !dbg !2231
  %116 = load i8*, i8** %115, align 8, !dbg !2231, !tbaa !927
  %117 = load i8, i8* %116, align 1, !dbg !2232, !tbaa !404
  %118 = sext i8 %117 to i32, !dbg !2232
  %119 = icmp eq i32 %118, 104, !dbg !2233
  br label %120, !dbg !2230

120:                                              ; preds = %114, %108
  %121 = phi i1 [ true, %108 ], [ %119, %114 ]
  %122 = zext i1 %121 to i32, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %122, metadata !2160, metadata !DIExpression()), !dbg !2162
  br label %123

123:                                              ; preds = %120, %105
  %.0 = phi i32 [ %107, %105 ], [ %122, %120 ], !dbg !2234
  call void @llvm.dbg.value(metadata i32 %.0, metadata !2160, metadata !DIExpression()), !dbg !2162
  %124 = call double @dist(%struct.atom_t* %25, %struct.atom_t* %78), !dbg !2235
  call void @llvm.dbg.value(metadata double %124, metadata !2161, metadata !DIExpression()), !dbg !2162
  %125 = icmp ne i32 %.03, 0, !dbg !2236
  br i1 %125, label %128, label %126, !dbg !2238

126:                                              ; preds = %123
  %127 = icmp ne i32 %.0, 0, !dbg !2239
  br i1 %127, label %128, label %155, !dbg !2240

128:                                              ; preds = %126, %123
  %indvars.iv612 = phi i64 [ %indvars.iv611, %126 ], [ %indvars.iv611, %123 ]
  %129 = fcmp ole double %124, 1.200000e+00, !dbg !2241
  br i1 %129, label %130, label %154, !dbg !2244

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3, !dbg !2245
  %132 = load i32, i32* %131, align 4, !dbg !2245, !tbaa !2173
  %133 = icmp slt i32 %132, 8, !dbg !2248
  br i1 %133, label %134, label %153, !dbg !2249

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 3, !dbg !2250
  %136 = load i32, i32* %135, align 4, !dbg !2250, !tbaa !2173
  %137 = icmp slt i32 %136, 8, !dbg !2251
  br i1 %137, label %138, label %153, !dbg !2252

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 4, !dbg !2253
  %140 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3, !dbg !2255
  %141 = load i32, i32* %140, align 4, !dbg !2256, !tbaa !2173
  %142 = add nsw i32 %141, 1, !dbg !2256
  store i32 %142, i32* %140, align 4, !dbg !2256, !tbaa !2173
  %143 = sext i32 %141 to i64, !dbg !2257
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %139, i64 0, i64 %143, !dbg !2257
  %145 = trunc i64 %indvars.iv612 to i32, !dbg !2258
  store i32 %145, i32* %144, align 4, !dbg !2258, !tbaa !543
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 4, !dbg !2259
  %147 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 3, !dbg !2260
  %148 = load i32, i32* %147, align 4, !dbg !2261, !tbaa !2173
  %149 = add nsw i32 %148, 1, !dbg !2261
  store i32 %149, i32* %147, align 4, !dbg !2261, !tbaa !2173
  %150 = sext i32 %148 to i64, !dbg !2262
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %146, i64 0, i64 %150, !dbg !2262
  %152 = trunc i64 %indvars.iv821 to i32, !dbg !2263
  store i32 %152, i32* %151, align 4, !dbg !2263, !tbaa !543
  br label %153, !dbg !2264

153:                                              ; preds = %138, %134, %130
  %indvars.iv615 = phi i64 [ %indvars.iv612, %138 ], [ %indvars.iv612, %134 ], [ %indvars.iv612, %130 ]
  br label %154, !dbg !2265

154:                                              ; preds = %153, %128
  %indvars.iv614 = phi i64 [ %indvars.iv615, %153 ], [ %indvars.iv612, %128 ]
  br label %182, !dbg !2266

155:                                              ; preds = %126
  %156 = fcmp ole double %124, 1.850000e+00, !dbg !2267
  br i1 %156, label %157, label %181, !dbg !2269

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3, !dbg !2270
  %159 = load i32, i32* %158, align 4, !dbg !2270, !tbaa !2173
  %160 = icmp slt i32 %159, 8, !dbg !2273
  br i1 %160, label %161, label %180, !dbg !2274

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 3, !dbg !2275
  %163 = load i32, i32* %162, align 4, !dbg !2275, !tbaa !2173
  %164 = icmp slt i32 %163, 8, !dbg !2276
  br i1 %164, label %165, label %180, !dbg !2277

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 4, !dbg !2278
  %167 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3, !dbg !2280
  %168 = load i32, i32* %167, align 4, !dbg !2281, !tbaa !2173
  %169 = add nsw i32 %168, 1, !dbg !2281
  store i32 %169, i32* %167, align 4, !dbg !2281, !tbaa !2173
  %170 = sext i32 %168 to i64, !dbg !2282
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %166, i64 0, i64 %170, !dbg !2282
  %172 = trunc i64 %indvars.iv611 to i32, !dbg !2283
  store i32 %172, i32* %171, align 4, !dbg !2283, !tbaa !543
  %173 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 4, !dbg !2284
  %174 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 3, !dbg !2285
  %175 = load i32, i32* %174, align 4, !dbg !2286, !tbaa !2173
  %176 = add nsw i32 %175, 1, !dbg !2286
  store i32 %176, i32* %174, align 4, !dbg !2286, !tbaa !2173
  %177 = sext i32 %175 to i64, !dbg !2287
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %173, i64 0, i64 %177, !dbg !2287
  %179 = trunc i64 %indvars.iv821 to i32, !dbg !2288
  store i32 %179, i32* %178, align 4, !dbg !2288, !tbaa !543
  br label %180, !dbg !2289

180:                                              ; preds = %165, %161, %157
  %indvars.iv617 = phi i64 [ %indvars.iv611, %165 ], [ %indvars.iv611, %161 ], [ %indvars.iv611, %157 ]
  br label %181, !dbg !2290

181:                                              ; preds = %180, %155
  %indvars.iv616 = phi i64 [ %indvars.iv617, %180 ], [ %indvars.iv611, %155 ]
  br label %182

182:                                              ; preds = %181, %154
  %indvars.iv613 = phi i64 [ %indvars.iv616, %181 ], [ %indvars.iv614, %154 ]
  br label %183, !dbg !2291

183:                                              ; preds = %182
  %indvars.iv.next7 = add nsw i64 %indvars.iv613, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next7, metadata !2156, metadata !DIExpression()), !dbg !2162
  %184 = load i32, i32* %71, align 8, !dbg !2208, !tbaa !823
  %185 = sext i32 %184 to i64, !dbg !2211
  %186 = icmp slt i64 %indvars.iv.next7, %185, !dbg !2211
  br i1 %186, label %75, label %._crit_edge20, !dbg !2212, !llvm.loop !2293

._crit_edge20:                                    ; preds = %183
  br label %187, !dbg !2212

187:                                              ; preds = %._crit_edge20, %70
  %indvars.iv822 = phi i64 [ %indvars.iv821, %._crit_edge20 ], [ %indvars.iv821, %70 ]
  br label %188, !dbg !2295

188:                                              ; preds = %187
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv822, 1, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next9, metadata !2155, metadata !DIExpression()), !dbg !2162
  %indvars.iv.next5 = add nuw i32 %indvars.iv423, 1, !dbg !2297
  %189 = sext i32 %indvars.iv.next5 to i64, !dbg !2178
  %190 = load i32, i32* %16, align 8, !dbg !2178, !tbaa !823
  %191 = sub nsw i32 %190, 1, !dbg !2181
  %192 = sext i32 %191 to i64, !dbg !2182
  %193 = icmp slt i64 %indvars.iv.next9, %192, !dbg !2182
  br i1 %193, label %21, label %._crit_edge26, !dbg !2183, !llvm.loop !2298

._crit_edge26:                                    ; preds = %188
  br label %194, !dbg !2183

194:                                              ; preds = %._crit_edge26, %15
  ret void, !dbg !2300
}

declare !dbg !329 dso_local i32 @addresidue(%struct.molecule_t*, i8*, %struct.residue_t*) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #5

declare !dbg !332 dso_local i32 @addstrand(%struct.molecule_t*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @isnewres(i8* %0, i8* %1, i32 %2, i32 %3) #0 !dbg !2301 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2305, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %1, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %2, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %3, metadata !2308, metadata !DIExpression()), !dbg !2309
  %5 = call i32 @strcmp(i8* %0, i8* %1) #9, !dbg !2310
  %6 = icmp ne i32 %5, 0, !dbg !2310
  br i1 %6, label %9, label %7, !dbg !2311

7:                                                ; preds = %4
  %8 = icmp ne i32 %2, %3, !dbg !2312
  br label %9, !dbg !2311

9:                                                ; preds = %7, %4
  %10 = phi i1 [ true, %4 ], [ %8, %7 ]
  %11 = zext i1 %10 to i32, !dbg !2311
  ret i32 %11, !dbg !2313
}

declare !dbg !335 dso_local void @NAB_initatom(%struct.atom_t*, i32) #4

declare !dbg !339 dso_local void @NAB_initres(%struct.residue_t*, i32) #4

; Function Attrs: nounwind
declare dso_local double @strtod(i8*, i8**) #5

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #8

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define internal %struct.cid_t* @initcid(i32 %0, i32 %1, %struct.molecule_t* %2) #0 !dbg !2314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2318, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 %1, metadata !2319, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !2320, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !2321, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 0, metadata !2324, metadata !DIExpression()), !dbg !2326
  %4 = icmp ne i32 %0, 0, !dbg !2327
  br i1 %4, label %5, label %6, !dbg !2329

5:                                                ; preds = %3
  br label %105, !dbg !2330

6:                                                ; preds = %3
  %7 = call noalias i8* @malloc(i64 16) #10, !dbg !2331
  %8 = bitcast i8* %7 to %struct.cid_t*, !dbg !2332
  call void @llvm.dbg.value(metadata %struct.cid_t* %8, metadata !2321, metadata !DIExpression()), !dbg !2326
  %9 = icmp eq %struct.cid_t* %8, null, !dbg !2333
  br i1 %9, label %10, label %13, !dbg !2335

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2336, !tbaa !410
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0)), !dbg !2338
  call void @llvm.dbg.value(metadata i32 1, metadata !2324, metadata !DIExpression()), !dbg !2326
  br label %101, !dbg !2339

13:                                               ; preds = %6
  %14 = call noalias i8* @malloc(i64 128) #10, !dbg !2340
  %15 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2, !dbg !2341
  store i8* %14, i8** %15, align 8, !dbg !2342, !tbaa !2343
  %16 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2, !dbg !2345
  %17 = load i8*, i8** %16, align 8, !dbg !2345, !tbaa !2343
  %18 = icmp eq i8* %17, null, !dbg !2347
  br i1 %18, label %19, label %22, !dbg !2348

19:                                               ; preds = %13
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2349, !tbaa !410
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0)), !dbg !2351
  call void @llvm.dbg.value(metadata i32 1, metadata !2324, metadata !DIExpression()), !dbg !2326
  br label %101, !dbg !2352

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0, !dbg !2353
  store i32 65, i32* %23, align 8, !dbg !2354, !tbaa !2355
  %24 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 1, !dbg !2356
  store i32 90, i32* %24, align 4, !dbg !2357, !tbaa !2358
  %25 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0, !dbg !2359
  %26 = load i32, i32* %25, align 8, !dbg !2359, !tbaa !2355
  call void @llvm.dbg.value(metadata i32 %26, metadata !2322, metadata !DIExpression()), !dbg !2326
  %27 = sext i32 %26 to i64, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %27, metadata !2322, metadata !DIExpression()), !dbg !2326
  %28 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 1, !dbg !2362
  %29 = load i32, i32* %28, align 4, !dbg !2362, !tbaa !2358
  %30 = sext i32 %29 to i64, !dbg !2364
  %31 = icmp sle i64 %27, %30, !dbg !2364
  br i1 %31, label %.lr.ph, label %40, !dbg !2365

.lr.ph:                                           ; preds = %22
  br label %32, !dbg !2365

32:                                               ; preds = %.lr.ph, %36
  %indvars.iv5 = phi i64 [ %27, %.lr.ph ], [ %indvars.iv.next, %36 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2322, metadata !DIExpression()), !dbg !2326
  %33 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2, !dbg !2366
  %34 = load i8*, i8** %33, align 8, !dbg !2366, !tbaa !2343
  %35 = getelementptr inbounds i8, i8* %34, i64 %indvars.iv5, !dbg !2367
  store i8 0, i8* %35, align 1, !dbg !2368, !tbaa !404
  br label %36, !dbg !2367

36:                                               ; preds = %32
  %indvars.iv.next = add i64 %indvars.iv5, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2322, metadata !DIExpression()), !dbg !2326
  %37 = load i32, i32* %28, align 4, !dbg !2362, !tbaa !2358
  %38 = sext i32 %37 to i64, !dbg !2364
  %39 = icmp sle i64 %indvars.iv.next, %38, !dbg !2364
  br i1 %39, label %32, label %._crit_edge, !dbg !2365, !llvm.loop !2370

._crit_edge:                                      ; preds = %36
  br label %40, !dbg !2365

40:                                               ; preds = %._crit_edge, %22
  %41 = icmp ne i32 %1, 0, !dbg !2372
  br i1 %41, label %42, label %100, !dbg !2374

42:                                               ; preds = %40
  %43 = icmp eq %struct.molecule_t* %2, null, !dbg !2375
  br i1 %43, label %44, label %47, !dbg !2378

44:                                               ; preds = %42
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2379, !tbaa !410
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0)), !dbg !2381
  call void @llvm.dbg.value(metadata i32 1, metadata !2324, metadata !DIExpression()), !dbg !2326
  br label %101, !dbg !2382

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 2, !dbg !2383
  %49 = load %struct.strand_t*, %struct.strand_t** %48, align 8, !dbg !2383, !tbaa !847
  call void @llvm.dbg.value(metadata %struct.strand_t* %49, metadata !2323, metadata !DIExpression()), !dbg !2326
  %50 = icmp ne %struct.strand_t* %49, null, !dbg !2385
  br i1 %50, label %.lr.ph8, label %75, !dbg !2385

.lr.ph8:                                          ; preds = %47
  br label %51, !dbg !2385

51:                                               ; preds = %.lr.ph8, %71
  %.026 = phi %struct.strand_t* [ %49, %.lr.ph8 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.026, metadata !2323, metadata !DIExpression()), !dbg !2326
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 0, !dbg !2386
  %53 = load i8*, i8** %52, align 8, !dbg !2386, !tbaa !854
  %54 = call i64 @strlen(i8* %53) #9, !dbg !2390
  %55 = icmp eq i64 %54, 1, !dbg !2391
  br i1 %55, label %56, label %70, !dbg !2392

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 0, !dbg !2393
  %58 = load i8*, i8** %57, align 8, !dbg !2393, !tbaa !854
  %59 = load i8, i8* %58, align 1, !dbg !2395, !tbaa !404
  %60 = sext i8 %59 to i32, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %60, metadata !2322, metadata !DIExpression()), !dbg !2326
  %61 = icmp sge i32 %60, 65, !dbg !2396
  br i1 %61, label %62, label %69, !dbg !2398

62:                                               ; preds = %56
  %63 = icmp sle i32 %60, 90, !dbg !2399
  br i1 %63, label %64, label %69, !dbg !2400

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2, !dbg !2401
  %66 = load i8*, i8** %65, align 8, !dbg !2401, !tbaa !2343
  %67 = sext i32 %60 to i64, !dbg !2402
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !2402
  store i8 1, i8* %68, align 1, !dbg !2403, !tbaa !404
  br label %69, !dbg !2402

69:                                               ; preds = %64, %62, %56
  br label %70, !dbg !2404

70:                                               ; preds = %69, %51
  br label %71, !dbg !2405

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 4, !dbg !2406
  %73 = load %struct.strand_t*, %struct.strand_t** %72, align 8, !dbg !2406, !tbaa !864
  call void @llvm.dbg.value(metadata %struct.strand_t* %73, metadata !2323, metadata !DIExpression()), !dbg !2326
  %74 = icmp ne %struct.strand_t* %73, null, !dbg !2385
  br i1 %74, label %51, label %._crit_edge9, !dbg !2385, !llvm.loop !2407

._crit_edge9:                                     ; preds = %71
  br label %75, !dbg !2385

75:                                               ; preds = %._crit_edge9, %47
  %76 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0, !dbg !2409
  %77 = load i32, i32* %76, align 8, !dbg !2409, !tbaa !2355
  %78 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 1, !dbg !2412
  %79 = load i32, i32* %78, align 4, !dbg !2412, !tbaa !2358
  %80 = icmp sle i32 %77, %79, !dbg !2413
  br i1 %80, label %.lr.ph11, label %.loopexit, !dbg !2414

.lr.ph11:                                         ; preds = %75
  br label %81, !dbg !2414

81:                                               ; preds = %.lr.ph11, %92
  %82 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2, !dbg !2415
  %83 = load i8*, i8** %82, align 8, !dbg !2415, !tbaa !2343
  %84 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0, !dbg !2418
  %85 = load i32, i32* %84, align 8, !dbg !2418, !tbaa !2355
  %86 = sext i32 %85 to i64, !dbg !2419
  %87 = getelementptr inbounds i8, i8* %83, i64 %86, !dbg !2419
  %88 = load i8, i8* %87, align 1, !dbg !2419, !tbaa !404
  %89 = icmp ne i8 %88, 0, !dbg !2419
  br i1 %89, label %91, label %90, !dbg !2420

90:                                               ; preds = %81
  br label %99, !dbg !2421

91:                                               ; preds = %81
  br label %92, !dbg !2422

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0, !dbg !2423
  %94 = load i32, i32* %93, align 8, !dbg !2424, !tbaa !2355
  %95 = add nsw i32 %94, 1, !dbg !2424
  store i32 %95, i32* %93, align 8, !dbg !2424, !tbaa !2355
  %96 = load i32, i32* %76, align 8, !dbg !2409, !tbaa !2355
  %97 = load i32, i32* %78, align 4, !dbg !2412, !tbaa !2358
  %98 = icmp sle i32 %96, %97, !dbg !2413
  br i1 %98, label %81, label %..loopexit_crit_edge, !dbg !2414, !llvm.loop !2425

..loopexit_crit_edge:                             ; preds = %92
  br label %.loopexit, !dbg !2414

.loopexit:                                        ; preds = %..loopexit_crit_edge, %75
  br label %99, !dbg !2427

99:                                               ; preds = %.loopexit, %90
  br label %100, !dbg !2427

100:                                              ; preds = %99, %40
  br label %101, !dbg !2372

101:                                              ; preds = %100, %44, %19, %10
  %.01 = phi i32 [ 1, %10 ], [ 1, %19 ], [ 1, %44 ], [ 0, %100 ], !dbg !2326
  call void @llvm.dbg.value(metadata i32 %.01, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.label(metadata !2325), !dbg !2428
  %102 = icmp ne i32 %.01, 0, !dbg !2429
  br i1 %102, label %103, label %104, !dbg !2431

103:                                              ; preds = %101
  call void @freecid(%struct.cid_t* %8), !dbg !2432
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !2321, metadata !DIExpression()), !dbg !2326
  br label %104, !dbg !2434

104:                                              ; preds = %103, %101
  %.03 = phi %struct.cid_t* [ null, %103 ], [ %8, %101 ], !dbg !2326
  call void @llvm.dbg.value(metadata %struct.cid_t* %.03, metadata !2321, metadata !DIExpression()), !dbg !2326
  br label %105, !dbg !2435

105:                                              ; preds = %104, %5
  %.0 = phi %struct.cid_t* [ null, %5 ], [ %.03, %104 ], !dbg !2326
  ret %struct.cid_t* %.0, !dbg !2436
}

; Function Attrs: nounwind uwtable
define internal i32 @nextcid(%struct.cid_t* %0, i32 %1, i32 %2, %struct.strand_t* %3) #0 !dbg !2437 {
  call void @llvm.dbg.value(metadata %struct.cid_t* %0, metadata !2441, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 %1, metadata !2442, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 %2, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !2444, metadata !DIExpression()), !dbg !2446
  %5 = icmp ne i32 %1, 0, !dbg !2447
  br i1 %5, label %6, label %7, !dbg !2449

6:                                                ; preds = %4
  br label %78, !dbg !2450

7:                                                ; preds = %4
  %8 = icmp eq %struct.cid_t* %0, null, !dbg !2451
  br i1 %8, label %9, label %12, !dbg !2453

9:                                                ; preds = %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2454, !tbaa !410
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0)), !dbg !2456
  br label %78, !dbg !2457

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2458
  %14 = load i32, i32* %13, align 8, !dbg !2458, !tbaa !2355
  %15 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 1, !dbg !2460
  %16 = load i32, i32* %15, align 4, !dbg !2460, !tbaa !2358
  %17 = icmp sgt i32 %14, %16, !dbg !2461
  br i1 %17, label %18, label %19, !dbg !2462

18:                                               ; preds = %12
  br label %78, !dbg !2463

19:                                               ; preds = %12
  %20 = icmp ne i32 %2, 0, !dbg !2464
  br i1 %20, label %21, label %72, !dbg !2466

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 0, !dbg !2467
  %23 = load i8*, i8** %22, align 8, !dbg !2467, !tbaa !854
  %24 = call i64 @strlen(i8* %23) #9, !dbg !2470
  %25 = icmp eq i64 %24, 1, !dbg !2471
  br i1 %25, label %26, label %36, !dbg !2472

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 0, !dbg !2473
  %28 = load i8*, i8** %27, align 8, !dbg !2473, !tbaa !854
  %29 = load i8, i8* %28, align 1, !dbg !2475, !tbaa !404
  %30 = sext i8 %29 to i32, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %30, metadata !2445, metadata !DIExpression()), !dbg !2446
  %31 = icmp sge i32 %30, 65, !dbg !2476
  br i1 %31, label %32, label %35, !dbg !2478

32:                                               ; preds = %26
  %33 = icmp sle i32 %30, 90, !dbg !2479
  br i1 %33, label %34, label %35, !dbg !2480

34:                                               ; preds = %32
  br label %78, !dbg !2481

35:                                               ; preds = %32, %26
  br label %36, !dbg !2482

36:                                               ; preds = %35, %21
  %37 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2483
  %38 = load i32, i32* %37, align 8, !dbg !2483, !tbaa !2355
  call void @llvm.dbg.value(metadata i32 %38, metadata !2445, metadata !DIExpression()), !dbg !2446
  %39 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 2, !dbg !2484
  %40 = load i8*, i8** %39, align 8, !dbg !2484, !tbaa !2343
  %41 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2485
  %42 = load i32, i32* %41, align 8, !dbg !2485, !tbaa !2355
  %43 = sext i32 %42 to i64, !dbg !2486
  %44 = getelementptr inbounds i8, i8* %40, i64 %43, !dbg !2486
  store i8 1, i8* %44, align 1, !dbg !2487, !tbaa !404
  %45 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2488
  %46 = load i32, i32* %45, align 8, !dbg !2490, !tbaa !2355
  %47 = add nsw i32 %46, 1, !dbg !2490
  store i32 %47, i32* %45, align 8, !dbg !2490, !tbaa !2355
  %48 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2491
  %49 = load i32, i32* %48, align 8, !dbg !2491, !tbaa !2355
  %50 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 1, !dbg !2493
  %51 = load i32, i32* %50, align 4, !dbg !2493, !tbaa !2358
  %52 = icmp sle i32 %49, %51, !dbg !2494
  br i1 %52, label %.lr.ph, label %.loopexit, !dbg !2495

.lr.ph:                                           ; preds = %36
  br label %53, !dbg !2495

53:                                               ; preds = %.lr.ph, %64
  %54 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 2, !dbg !2496
  %55 = load i8*, i8** %54, align 8, !dbg !2496, !tbaa !2343
  %56 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2499
  %57 = load i32, i32* %56, align 8, !dbg !2499, !tbaa !2355
  %58 = sext i32 %57 to i64, !dbg !2500
  %59 = getelementptr inbounds i8, i8* %55, i64 %58, !dbg !2500
  %60 = load i8, i8* %59, align 1, !dbg !2500, !tbaa !404
  %61 = icmp ne i8 %60, 0, !dbg !2500
  br i1 %61, label %63, label %62, !dbg !2501

62:                                               ; preds = %53
  br label %71, !dbg !2502

63:                                               ; preds = %53
  br label %64, !dbg !2503

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2504
  %66 = load i32, i32* %65, align 8, !dbg !2505, !tbaa !2355
  %67 = add nsw i32 %66, 1, !dbg !2505
  store i32 %67, i32* %65, align 8, !dbg !2505, !tbaa !2355
  %68 = load i32, i32* %48, align 8, !dbg !2491, !tbaa !2355
  %69 = load i32, i32* %50, align 4, !dbg !2493, !tbaa !2358
  %70 = icmp sle i32 %68, %69, !dbg !2494
  br i1 %70, label %53, label %..loopexit_crit_edge, !dbg !2495, !llvm.loop !2506

..loopexit_crit_edge:                             ; preds = %64
  br label %.loopexit, !dbg !2495

.loopexit:                                        ; preds = %..loopexit_crit_edge, %36
  br label %71, !dbg !2508

71:                                               ; preds = %.loopexit, %62
  br label %78, !dbg !2508

72:                                               ; preds = %19
  %73 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2509
  %74 = load i32, i32* %73, align 8, !dbg !2509, !tbaa !2355
  call void @llvm.dbg.value(metadata i32 %74, metadata !2445, metadata !DIExpression()), !dbg !2446
  %75 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0, !dbg !2511
  %76 = load i32, i32* %75, align 8, !dbg !2512, !tbaa !2355
  %77 = add nsw i32 %76, 1, !dbg !2512
  store i32 %77, i32* %75, align 8, !dbg !2512, !tbaa !2355
  br label %78, !dbg !2513

78:                                               ; preds = %72, %71, %34, %18, %9, %6
  %.0 = phi i32 [ 32, %6 ], [ 32, %9 ], [ 32, %18 ], [ %30, %34 ], [ %38, %71 ], [ %74, %72 ], !dbg !2446
  ret i32 %.0, !dbg !2514
}

; Function Attrs: nounwind uwtable
define internal void @mk_brook_rname(i8* %0, %struct.residue_t* %1) #0 !dbg !2515 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata %struct.residue_t* %1, metadata !2520, metadata !DIExpression()), !dbg !2521
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1, i32 0, i32 4, !dbg !2522
  %4 = load i8*, i8** %3, align 8, !dbg !2522, !tbaa !812
  %5 = call i8* @strcpy(i8* %0, i8* %4) #10, !dbg !2523
  %6 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !2524
  %7 = icmp ne i32 %6, 0, !dbg !2524
  br i1 %7, label %10, label %8, !dbg !2526

8:                                                ; preds = %2
  %9 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2527
  br label %10, !dbg !2527

10:                                               ; preds = %8, %2
  %11 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !2528
  %12 = icmp ne i32 %11, 0, !dbg !2528
  br i1 %12, label %15, label %13, !dbg !2530

13:                                               ; preds = %10
  %14 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2531
  br label %15, !dbg !2531

15:                                               ; preds = %13, %10
  %16 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !2532
  %17 = icmp ne i32 %16, 0, !dbg !2532
  br i1 %17, label %20, label %18, !dbg !2534

18:                                               ; preds = %15
  %19 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #10, !dbg !2535
  br label %20, !dbg !2535

20:                                               ; preds = %18, %15
  %21 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !2536
  %22 = icmp ne i32 %21, 0, !dbg !2536
  br i1 %22, label %25, label %23, !dbg !2538

23:                                               ; preds = %20
  %24 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !2539
  br label %25, !dbg !2539

25:                                               ; preds = %23, %20
  %26 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !2540
  %27 = icmp ne i32 %26, 0, !dbg !2540
  br i1 %27, label %30, label %28, !dbg !2542

28:                                               ; preds = %25
  %29 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #10, !dbg !2543
  br label %30, !dbg !2543

30:                                               ; preds = %28, %25
  %31 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #9, !dbg !2544
  %32 = icmp ne i32 %31, 0, !dbg !2544
  br i1 %32, label %35, label %33, !dbg !2546

33:                                               ; preds = %30
  %34 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2547
  br label %35, !dbg !2547

35:                                               ; preds = %33, %30
  %36 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #9, !dbg !2548
  %37 = icmp ne i32 %36, 0, !dbg !2548
  br i1 %37, label %40, label %38, !dbg !2550

38:                                               ; preds = %35
  %39 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2551
  br label %40, !dbg !2551

40:                                               ; preds = %38, %35
  %41 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #9, !dbg !2552
  %42 = icmp ne i32 %41, 0, !dbg !2552
  br i1 %42, label %45, label %43, !dbg !2554

43:                                               ; preds = %40
  %44 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #10, !dbg !2555
  br label %45, !dbg !2555

45:                                               ; preds = %43, %40
  %46 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #9, !dbg !2556
  %47 = icmp ne i32 %46, 0, !dbg !2556
  br i1 %47, label %50, label %48, !dbg !2558

48:                                               ; preds = %45
  %49 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !2559
  br label %50, !dbg !2559

50:                                               ; preds = %48, %45
  %51 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #9, !dbg !2560
  %52 = icmp ne i32 %51, 0, !dbg !2560
  br i1 %52, label %55, label %53, !dbg !2562

53:                                               ; preds = %50
  %54 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2563
  br label %55, !dbg !2563

55:                                               ; preds = %53, %50
  %56 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #9, !dbg !2564
  %57 = icmp ne i32 %56, 0, !dbg !2564
  br i1 %57, label %60, label %58, !dbg !2566

58:                                               ; preds = %55
  %59 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2567
  br label %60, !dbg !2567

60:                                               ; preds = %58, %55
  %61 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #9, !dbg !2568
  %62 = icmp ne i32 %61, 0, !dbg !2568
  br i1 %62, label %65, label %63, !dbg !2570

63:                                               ; preds = %60
  %64 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #10, !dbg !2571
  br label %65, !dbg !2571

65:                                               ; preds = %63, %60
  %66 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #9, !dbg !2572
  %67 = icmp ne i32 %66, 0, !dbg !2572
  br i1 %67, label %70, label %68, !dbg !2574

68:                                               ; preds = %65
  %69 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !2575
  br label %70, !dbg !2575

70:                                               ; preds = %68, %65
  %71 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #9, !dbg !2576
  %72 = icmp ne i32 %71, 0, !dbg !2576
  br i1 %72, label %75, label %73, !dbg !2578

73:                                               ; preds = %70
  %74 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2579
  br label %75, !dbg !2579

75:                                               ; preds = %73, %70
  %76 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #9, !dbg !2580
  %77 = icmp ne i32 %76, 0, !dbg !2580
  br i1 %77, label %80, label %78, !dbg !2582

78:                                               ; preds = %75
  %79 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2583
  br label %80, !dbg !2583

80:                                               ; preds = %78, %75
  %81 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #9, !dbg !2584
  %82 = icmp ne i32 %81, 0, !dbg !2584
  br i1 %82, label %85, label %83, !dbg !2586

83:                                               ; preds = %80
  %84 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #10, !dbg !2587
  br label %85, !dbg !2587

85:                                               ; preds = %83, %80
  %86 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #9, !dbg !2588
  %87 = icmp ne i32 %86, 0, !dbg !2588
  br i1 %87, label %90, label %88, !dbg !2590

88:                                               ; preds = %85
  %89 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !2591
  br label %90, !dbg !2591

90:                                               ; preds = %88, %85
  %91 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #9, !dbg !2592
  %92 = icmp ne i32 %91, 0, !dbg !2592
  br i1 %92, label %95, label %93, !dbg !2594

93:                                               ; preds = %90
  %94 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2595
  br label %95, !dbg !2595

95:                                               ; preds = %93, %90
  %96 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #9, !dbg !2596
  %97 = icmp ne i32 %96, 0, !dbg !2596
  br i1 %97, label %100, label %98, !dbg !2598

98:                                               ; preds = %95
  %99 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2599
  br label %100, !dbg !2599

100:                                              ; preds = %98, %95
  %101 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #9, !dbg !2600
  %102 = icmp ne i32 %101, 0, !dbg !2600
  br i1 %102, label %105, label %103, !dbg !2602

103:                                              ; preds = %100
  %104 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #10, !dbg !2603
  br label %105, !dbg !2603

105:                                              ; preds = %103, %100
  %106 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #9, !dbg !2604
  %107 = icmp ne i32 %106, 0, !dbg !2604
  br i1 %107, label %110, label %108, !dbg !2606

108:                                              ; preds = %105
  %109 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !2607
  br label %110, !dbg !2607

110:                                              ; preds = %108, %105
  %111 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #9, !dbg !2608
  %112 = icmp ne i32 %111, 0, !dbg !2608
  br i1 %112, label %115, label %113, !dbg !2610

113:                                              ; preds = %110
  %114 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2611
  br label %115, !dbg !2611

115:                                              ; preds = %113, %110
  %116 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #9, !dbg !2612
  %117 = icmp ne i32 %116, 0, !dbg !2612
  br i1 %117, label %120, label %118, !dbg !2614

118:                                              ; preds = %115
  %119 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2615
  br label %120, !dbg !2615

120:                                              ; preds = %118, %115
  %121 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #9, !dbg !2616
  %122 = icmp ne i32 %121, 0, !dbg !2616
  br i1 %122, label %125, label %123, !dbg !2618

123:                                              ; preds = %120
  %124 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #10, !dbg !2619
  br label %125, !dbg !2619

125:                                              ; preds = %123, %120
  %126 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #9, !dbg !2620
  %127 = icmp ne i32 %126, 0, !dbg !2620
  br i1 %127, label %130, label %128, !dbg !2622

128:                                              ; preds = %125
  %129 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !2623
  br label %130, !dbg !2623

130:                                              ; preds = %128, %125
  %131 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #9, !dbg !2624
  %132 = icmp ne i32 %131, 0, !dbg !2624
  br i1 %132, label %135, label %133, !dbg !2626

133:                                              ; preds = %130
  %134 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2627
  br label %135, !dbg !2627

135:                                              ; preds = %133, %130
  %136 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #9, !dbg !2628
  %137 = icmp ne i32 %136, 0, !dbg !2628
  br i1 %137, label %140, label %138, !dbg !2630

138:                                              ; preds = %135
  %139 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2631
  br label %140, !dbg !2631

140:                                              ; preds = %138, %135
  %141 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #9, !dbg !2632
  %142 = icmp ne i32 %141, 0, !dbg !2632
  br i1 %142, label %145, label %143, !dbg !2634

143:                                              ; preds = %140
  %144 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #10, !dbg !2635
  br label %145, !dbg !2635

145:                                              ; preds = %143, %140
  %146 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #9, !dbg !2636
  %147 = icmp ne i32 %146, 0, !dbg !2636
  br i1 %147, label %150, label %148, !dbg !2638

148:                                              ; preds = %145
  %149 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !2639
  br label %150, !dbg !2639

150:                                              ; preds = %148, %145
  %151 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #9, !dbg !2640
  %152 = icmp ne i32 %151, 0, !dbg !2640
  br i1 %152, label %155, label %153, !dbg !2642

153:                                              ; preds = %150
  %154 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #10, !dbg !2643
  br label %155, !dbg !2643

155:                                              ; preds = %153, %150
  %156 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #9, !dbg !2644
  %157 = icmp ne i32 %156, 0, !dbg !2644
  br i1 %157, label %160, label %158, !dbg !2646

158:                                              ; preds = %155
  %159 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #10, !dbg !2647
  br label %160, !dbg !2647

160:                                              ; preds = %158, %155
  %161 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #9, !dbg !2648
  %162 = icmp ne i32 %161, 0, !dbg !2648
  br i1 %162, label %165, label %163, !dbg !2650

163:                                              ; preds = %160
  %164 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #10, !dbg !2651
  br label %165, !dbg !2651

165:                                              ; preds = %163, %160
  %166 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #9, !dbg !2652
  %167 = icmp ne i32 %166, 0, !dbg !2652
  br i1 %167, label %170, label %168, !dbg !2654

168:                                              ; preds = %165
  %169 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #10, !dbg !2655
  br label %170, !dbg !2655

170:                                              ; preds = %168, %165
  %171 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #9, !dbg !2656
  %172 = icmp ne i32 %171, 0, !dbg !2656
  br i1 %172, label %175, label %173, !dbg !2658

173:                                              ; preds = %170
  %174 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #10, !dbg !2659
  br label %175, !dbg !2659

175:                                              ; preds = %173, %170
  %176 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #9, !dbg !2660
  %177 = icmp ne i32 %176, 0, !dbg !2660
  br i1 %177, label %180, label %178, !dbg !2662

178:                                              ; preds = %175
  %179 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #10, !dbg !2663
  br label %180, !dbg !2663

180:                                              ; preds = %178, %175
  ret void, !dbg !2664
}

; Function Attrs: nounwind uwtable
define internal void @mk_wwpdb_rname(i8* %0, %struct.residue_t* %1) #0 !dbg !2665 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2667, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata %struct.residue_t* %1, metadata !2668, metadata !DIExpression()), !dbg !2669
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1, i32 0, i32 4, !dbg !2670
  %4 = load i8*, i8** %3, align 8, !dbg !2670, !tbaa !812
  %5 = call i8* @strcpy(i8* %0, i8* %4) #10, !dbg !2671
  %6 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !2672
  %7 = icmp ne i32 %6, 0, !dbg !2672
  br i1 %7, label %10, label %8, !dbg !2674

8:                                                ; preds = %2
  %9 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #10, !dbg !2675
  br label %10, !dbg !2675

10:                                               ; preds = %8, %2
  %11 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !2676
  %12 = icmp ne i32 %11, 0, !dbg !2676
  br i1 %12, label %15, label %13, !dbg !2678

13:                                               ; preds = %10
  %14 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #10, !dbg !2679
  br label %15, !dbg !2679

15:                                               ; preds = %13, %10
  %16 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !2680
  %17 = icmp ne i32 %16, 0, !dbg !2680
  br i1 %17, label %20, label %18, !dbg !2682

18:                                               ; preds = %15
  %19 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #10, !dbg !2683
  br label %20, !dbg !2683

20:                                               ; preds = %18, %15
  %21 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !2684
  %22 = icmp ne i32 %21, 0, !dbg !2684
  br i1 %22, label %25, label %23, !dbg !2686

23:                                               ; preds = %20
  %24 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #10, !dbg !2687
  br label %25, !dbg !2687

25:                                               ; preds = %23, %20
  %26 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !2688
  %27 = icmp ne i32 %26, 0, !dbg !2688
  br i1 %27, label %30, label %28, !dbg !2690

28:                                               ; preds = %25
  %29 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #10, !dbg !2691
  br label %30, !dbg !2691

30:                                               ; preds = %28, %25
  %31 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #9, !dbg !2692
  %32 = icmp ne i32 %31, 0, !dbg !2692
  br i1 %32, label %35, label %33, !dbg !2694

33:                                               ; preds = %30
  %34 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #10, !dbg !2695
  br label %35, !dbg !2695

35:                                               ; preds = %33, %30
  %36 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #9, !dbg !2696
  %37 = icmp ne i32 %36, 0, !dbg !2696
  br i1 %37, label %40, label %38, !dbg !2698

38:                                               ; preds = %35
  %39 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #10, !dbg !2699
  br label %40, !dbg !2699

40:                                               ; preds = %38, %35
  %41 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #9, !dbg !2700
  %42 = icmp ne i32 %41, 0, !dbg !2700
  br i1 %42, label %45, label %43, !dbg !2702

43:                                               ; preds = %40
  %44 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #10, !dbg !2703
  br label %45, !dbg !2703

45:                                               ; preds = %43, %40
  %46 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #9, !dbg !2704
  %47 = icmp ne i32 %46, 0, !dbg !2704
  br i1 %47, label %50, label %48, !dbg !2706

48:                                               ; preds = %45
  %49 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #10, !dbg !2707
  br label %50, !dbg !2707

50:                                               ; preds = %48, %45
  %51 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #9, !dbg !2708
  %52 = icmp ne i32 %51, 0, !dbg !2708
  br i1 %52, label %55, label %53, !dbg !2710

53:                                               ; preds = %50
  %54 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #10, !dbg !2711
  br label %55, !dbg !2711

55:                                               ; preds = %53, %50
  %56 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #9, !dbg !2712
  %57 = icmp ne i32 %56, 0, !dbg !2712
  br i1 %57, label %60, label %58, !dbg !2714

58:                                               ; preds = %55
  %59 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #10, !dbg !2715
  br label %60, !dbg !2715

60:                                               ; preds = %58, %55
  %61 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #9, !dbg !2716
  %62 = icmp ne i32 %61, 0, !dbg !2716
  br i1 %62, label %65, label %63, !dbg !2718

63:                                               ; preds = %60
  %64 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #10, !dbg !2719
  br label %65, !dbg !2719

65:                                               ; preds = %63, %60
  %66 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #9, !dbg !2720
  %67 = icmp ne i32 %66, 0, !dbg !2720
  br i1 %67, label %70, label %68, !dbg !2722

68:                                               ; preds = %65
  %69 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #10, !dbg !2723
  br label %70, !dbg !2723

70:                                               ; preds = %68, %65
  %71 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #9, !dbg !2724
  %72 = icmp ne i32 %71, 0, !dbg !2724
  br i1 %72, label %75, label %73, !dbg !2726

73:                                               ; preds = %70
  %74 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #10, !dbg !2727
  br label %75, !dbg !2727

75:                                               ; preds = %73, %70
  %76 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #9, !dbg !2728
  %77 = icmp ne i32 %76, 0, !dbg !2728
  br i1 %77, label %80, label %78, !dbg !2730

78:                                               ; preds = %75
  %79 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #10, !dbg !2731
  br label %80, !dbg !2731

80:                                               ; preds = %78, %75
  %81 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #9, !dbg !2732
  %82 = icmp ne i32 %81, 0, !dbg !2732
  br i1 %82, label %85, label %83, !dbg !2734

83:                                               ; preds = %80
  %84 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #10, !dbg !2735
  br label %85, !dbg !2735

85:                                               ; preds = %83, %80
  %86 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #9, !dbg !2736
  %87 = icmp ne i32 %86, 0, !dbg !2736
  br i1 %87, label %90, label %88, !dbg !2738

88:                                               ; preds = %85
  %89 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #10, !dbg !2739
  br label %90, !dbg !2739

90:                                               ; preds = %88, %85
  %91 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #9, !dbg !2740
  %92 = icmp ne i32 %91, 0, !dbg !2740
  br i1 %92, label %95, label %93, !dbg !2742

93:                                               ; preds = %90
  %94 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #10, !dbg !2743
  br label %95, !dbg !2743

95:                                               ; preds = %93, %90
  %96 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #9, !dbg !2744
  %97 = icmp ne i32 %96, 0, !dbg !2744
  br i1 %97, label %100, label %98, !dbg !2746

98:                                               ; preds = %95
  %99 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #10, !dbg !2747
  br label %100, !dbg !2747

100:                                              ; preds = %98, %95
  %101 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #9, !dbg !2748
  %102 = icmp ne i32 %101, 0, !dbg !2748
  br i1 %102, label %105, label %103, !dbg !2750

103:                                              ; preds = %100
  %104 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #10, !dbg !2751
  br label %105, !dbg !2751

105:                                              ; preds = %103, %100
  %106 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #9, !dbg !2752
  %107 = icmp ne i32 %106, 0, !dbg !2752
  br i1 %107, label %110, label %108, !dbg !2754

108:                                              ; preds = %105
  %109 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #10, !dbg !2755
  br label %110, !dbg !2755

110:                                              ; preds = %108, %105
  %111 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #9, !dbg !2756
  %112 = icmp ne i32 %111, 0, !dbg !2756
  br i1 %112, label %115, label %113, !dbg !2758

113:                                              ; preds = %110
  %114 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #10, !dbg !2759
  br label %115, !dbg !2759

115:                                              ; preds = %113, %110
  %116 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #9, !dbg !2760
  %117 = icmp ne i32 %116, 0, !dbg !2760
  br i1 %117, label %120, label %118, !dbg !2762

118:                                              ; preds = %115
  %119 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #10, !dbg !2763
  br label %120, !dbg !2763

120:                                              ; preds = %118, %115
  %121 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #9, !dbg !2764
  %122 = icmp ne i32 %121, 0, !dbg !2764
  br i1 %122, label %125, label %123, !dbg !2766

123:                                              ; preds = %120
  %124 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #10, !dbg !2767
  br label %125, !dbg !2767

125:                                              ; preds = %123, %120
  %126 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #9, !dbg !2768
  %127 = icmp ne i32 %126, 0, !dbg !2768
  br i1 %127, label %130, label %128, !dbg !2770

128:                                              ; preds = %125
  %129 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #10, !dbg !2771
  br label %130, !dbg !2771

130:                                              ; preds = %128, %125
  %131 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #9, !dbg !2772
  %132 = icmp ne i32 %131, 0, !dbg !2772
  br i1 %132, label %135, label %133, !dbg !2774

133:                                              ; preds = %130
  %134 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #10, !dbg !2775
  br label %135, !dbg !2775

135:                                              ; preds = %133, %130
  %136 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #9, !dbg !2776
  %137 = icmp ne i32 %136, 0, !dbg !2776
  br i1 %137, label %140, label %138, !dbg !2778

138:                                              ; preds = %135
  %139 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #10, !dbg !2779
  br label %140, !dbg !2779

140:                                              ; preds = %138, %135
  %141 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #9, !dbg !2780
  %142 = icmp ne i32 %141, 0, !dbg !2780
  br i1 %142, label %145, label %143, !dbg !2782

143:                                              ; preds = %140
  %144 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #10, !dbg !2783
  br label %145, !dbg !2783

145:                                              ; preds = %143, %140
  %146 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #9, !dbg !2784
  %147 = icmp ne i32 %146, 0, !dbg !2784
  br i1 %147, label %150, label %148, !dbg !2786

148:                                              ; preds = %145
  %149 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #10, !dbg !2787
  br label %150, !dbg !2787

150:                                              ; preds = %148, %145
  %151 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #9, !dbg !2788
  %152 = icmp ne i32 %151, 0, !dbg !2788
  br i1 %152, label %155, label %153, !dbg !2790

153:                                              ; preds = %150
  %154 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #10, !dbg !2791
  br label %155, !dbg !2791

155:                                              ; preds = %153, %150
  %156 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #9, !dbg !2792
  %157 = icmp ne i32 %156, 0, !dbg !2792
  br i1 %157, label %160, label %158, !dbg !2794

158:                                              ; preds = %155
  %159 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #10, !dbg !2795
  br label %160, !dbg !2795

160:                                              ; preds = %158, %155
  %161 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #9, !dbg !2796
  %162 = icmp ne i32 %161, 0, !dbg !2796
  br i1 %162, label %165, label %163, !dbg !2798

163:                                              ; preds = %160
  %164 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #10, !dbg !2799
  br label %165, !dbg !2799

165:                                              ; preds = %163, %160
  %166 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #9, !dbg !2800
  %167 = icmp ne i32 %166, 0, !dbg !2800
  br i1 %167, label %170, label %168, !dbg !2802

168:                                              ; preds = %165
  %169 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #10, !dbg !2803
  br label %170, !dbg !2803

170:                                              ; preds = %168, %165
  %171 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #9, !dbg !2804
  %172 = icmp ne i32 %171, 0, !dbg !2804
  br i1 %172, label %175, label %173, !dbg !2806

173:                                              ; preds = %170
  %174 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #10, !dbg !2807
  br label %175, !dbg !2807

175:                                              ; preds = %173, %170
  %176 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #9, !dbg !2808
  %177 = icmp ne i32 %176, 0, !dbg !2808
  br i1 %177, label %180, label %178, !dbg !2810

178:                                              ; preds = %175
  %179 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #10, !dbg !2811
  br label %180, !dbg !2811

180:                                              ; preds = %178, %175
  ret void, !dbg !2812
}

; Function Attrs: nounwind uwtable
define internal void @mk_brook_aname(i8* %0, i8* %1, i8* %2) #0 !dbg !2813 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2817, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %1, metadata !2818, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %2, metadata !2819, metadata !DIExpression()), !dbg !2820
  %4 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2821
  store i8 32, i8* %4, align 1, !dbg !2822, !tbaa !404
  %5 = call i64 @strlen(i8* %1) #9, !dbg !2823
  %6 = icmp uge i64 %5, 4, !dbg !2825
  br i1 %6, label %7, label %16, !dbg !2826

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !2827
  %9 = load i8, i8* %8, align 1, !dbg !2827, !tbaa !404
  %10 = sext i8 %9 to i32, !dbg !2827
  %11 = icmp ne i32 %10, 32, !dbg !2828
  br i1 %11, label %12, label %16, !dbg !2829

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !2830
  %14 = load i8, i8* %13, align 1, !dbg !2830, !tbaa !404
  %15 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2831
  store i8 %14, i8* %15, align 1, !dbg !2832, !tbaa !404
  br label %16, !dbg !2831

16:                                               ; preds = %12, %7, %3
  %17 = getelementptr inbounds i8, i8* %1, i64 0, !dbg !2833
  %18 = load i8, i8* %17, align 1, !dbg !2833, !tbaa !404
  %19 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2834
  store i8 %18, i8* %19, align 1, !dbg !2835, !tbaa !404
  %20 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2836
  %21 = load i8, i8* %20, align 1, !dbg !2836, !tbaa !404
  %22 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2837
  store i8 %21, i8* %22, align 1, !dbg !2838, !tbaa !404
  %23 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2839
  %24 = load i8, i8* %23, align 1, !dbg !2839, !tbaa !404
  %25 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2840
  store i8 %24, i8* %25, align 1, !dbg !2841, !tbaa !404
  %26 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2842
  %27 = load i8, i8* %26, align 1, !dbg !2842, !tbaa !404
  %28 = sext i8 %27 to i32, !dbg !2842
  %29 = icmp eq i32 %28, 39, !dbg !2844
  br i1 %29, label %30, label %32, !dbg !2845

30:                                               ; preds = %16
  %31 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2846
  store i8 42, i8* %31, align 1, !dbg !2847, !tbaa !404
  br label %32, !dbg !2846

32:                                               ; preds = %30, %16
  %33 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2848
  store i8 0, i8* %33, align 1, !dbg !2849, !tbaa !404
  %34 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #9, !dbg !2850
  %35 = icmp ne i32 %34, 0, !dbg !2850
  br i1 %35, label %68, label %36, !dbg !2852

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2853
  %38 = load i8, i8* %37, align 1, !dbg !2853, !tbaa !404
  %39 = sext i8 %38 to i32, !dbg !2853
  %40 = icmp eq i32 %39, 49, !dbg !2854
  br i1 %40, label %51, label %41, !dbg !2855

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2856
  %43 = load i8, i8* %42, align 1, !dbg !2856, !tbaa !404
  %44 = sext i8 %43 to i32, !dbg !2856
  %45 = icmp eq i32 %44, 50, !dbg !2857
  br i1 %45, label %51, label %46, !dbg !2858

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2859
  %48 = load i8, i8* %47, align 1, !dbg !2859, !tbaa !404
  %49 = sext i8 %48 to i32, !dbg !2859
  %50 = icmp eq i32 %49, 51, !dbg !2860
  br i1 %50, label %51, label %68, !dbg !2861

51:                                               ; preds = %46, %41, %36
  %52 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #9, !dbg !2862
  %53 = icmp ne i32 %52, 0, !dbg !2862
  br i1 %53, label %54, label %63, !dbg !2863

54:                                               ; preds = %51
  %55 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0), !dbg !2864
  br i1 %55, label %56, label %68, !dbg !2865

56:                                               ; preds = %54
  %57 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i64 0, i64 0), !dbg !2866
  br i1 %57, label %58, label %68, !dbg !2867

58:                                               ; preds = %56
  %59 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0), !dbg !2868
  br i1 %59, label %60, label %68, !dbg !2869

60:                                               ; preds = %58
  %61 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i64 2) #9, !dbg !2870
  %62 = icmp ne i32 %61, 0, !dbg !2870
  br i1 %62, label %63, label %68, !dbg !2871

63:                                               ; preds = %60, %51
  %64 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2872
  %65 = load i8, i8* %64, align 1, !dbg !2872, !tbaa !404
  %66 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2874
  store i8 %65, i8* %66, align 1, !dbg !2875, !tbaa !404
  %67 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2876
  store i8 32, i8* %67, align 1, !dbg !2877, !tbaa !404
  br label %68, !dbg !2878

68:                                               ; preds = %63, %60, %58, %56, %54, %46, %32
  ret void, !dbg !2879
}

; Function Attrs: nounwind uwtable
define internal void @mk_wwpdb_aname(i8* %0, i8* %1, i8* %2) #0 !dbg !2880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* %1, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* %2, metadata !2884, metadata !DIExpression()), !dbg !2885
  %4 = call i64 @strlen(i8* %1) #9, !dbg !2886
  %5 = icmp uge i64 %4, 4, !dbg !2888
  br i1 %5, label %6, label %13, !dbg !2889

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !2890
  %8 = load i8, i8* %7, align 1, !dbg !2890, !tbaa !404
  %9 = sext i8 %8 to i32, !dbg !2890
  %10 = icmp ne i32 %9, 32, !dbg !2891
  br i1 %10, label %11, label %13, !dbg !2892

11:                                               ; preds = %6
  %12 = call i8* @strncpy(i8* %0, i8* %1, i64 5) #10, !dbg !2893
  br label %18, !dbg !2895

13:                                               ; preds = %6, %3
  %14 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2896
  store i8 32, i8* %14, align 1, !dbg !2898, !tbaa !404
  %15 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2899
  %16 = call i8* @strncpy(i8* %15, i8* %1, i64 3) #10, !dbg !2900
  %17 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2901
  store i8 0, i8* %17, align 1, !dbg !2902, !tbaa !404
  br label %18

18:                                               ; preds = %13, %11
  %19 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2903
  %20 = load i8, i8* %19, align 1, !dbg !2903, !tbaa !404
  %21 = sext i8 %20 to i32, !dbg !2903
  %22 = icmp eq i32 %21, 0, !dbg !2905
  br i1 %22, label %23, label %25, !dbg !2906

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2907
  store i8 32, i8* %24, align 1, !dbg !2908, !tbaa !404
  br label %25, !dbg !2907

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2909
  %27 = load i8, i8* %26, align 1, !dbg !2909, !tbaa !404
  %28 = sext i8 %27 to i32, !dbg !2909
  %29 = icmp eq i32 %28, 0, !dbg !2911
  br i1 %29, label %30, label %32, !dbg !2912

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2913
  store i8 32, i8* %31, align 1, !dbg !2914, !tbaa !404
  br label %32, !dbg !2913

32:                                               ; preds = %30, %25
  %33 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2915
  %34 = load i8, i8* %33, align 1, !dbg !2915, !tbaa !404
  %35 = sext i8 %34 to i32, !dbg !2915
  %36 = icmp eq i32 %35, 0, !dbg !2917
  br i1 %36, label %37, label %39, !dbg !2918

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2919
  store i8 32, i8* %38, align 1, !dbg !2920, !tbaa !404
  br label %39, !dbg !2919

39:                                               ; preds = %37, %32
  %40 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #9, !dbg !2921
  %41 = icmp ne i32 %40, 0, !dbg !2921
  br i1 %41, label %44, label %42, !dbg !2923

42:                                               ; preds = %39
  %43 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5) #10, !dbg !2924
  br label %44, !dbg !2924

44:                                               ; preds = %42, %39
  %45 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #9, !dbg !2925
  %46 = icmp ne i32 %45, 0, !dbg !2925
  br i1 %46, label %49, label %47, !dbg !2927

47:                                               ; preds = %44
  %48 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5) #10, !dbg !2928
  br label %49, !dbg !2928

49:                                               ; preds = %47, %44
  %50 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #9, !dbg !2929
  %51 = icmp ne i32 %50, 0, !dbg !2929
  br i1 %51, label %54, label %52, !dbg !2931

52:                                               ; preds = %49
  %53 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5) #10, !dbg !2932
  br label %54, !dbg !2932

54:                                               ; preds = %52, %49
  %55 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #9, !dbg !2933
  %56 = icmp ne i32 %55, 0, !dbg !2933
  br i1 %56, label %59, label %57, !dbg !2935

57:                                               ; preds = %54
  %58 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5) #10, !dbg !2936
  br label %59, !dbg !2936

59:                                               ; preds = %57, %54
  %60 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #9, !dbg !2937
  %61 = icmp ne i32 %60, 0, !dbg !2937
  br i1 %61, label %64, label %62, !dbg !2939

62:                                               ; preds = %59
  %63 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5) #10, !dbg !2940
  br label %64, !dbg !2940

64:                                               ; preds = %62, %59
  %65 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #9, !dbg !2941
  %66 = icmp ne i32 %65, 0, !dbg !2941
  br i1 %66, label %69, label %67, !dbg !2943

67:                                               ; preds = %64
  %68 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5) #10, !dbg !2944
  br label %69, !dbg !2944

69:                                               ; preds = %67, %64
  %70 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #9, !dbg !2945
  %71 = icmp ne i32 %70, 0, !dbg !2945
  br i1 %71, label %74, label %72, !dbg !2947

72:                                               ; preds = %69
  %73 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5) #10, !dbg !2948
  br label %74, !dbg !2948

74:                                               ; preds = %72, %69
  %75 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #9, !dbg !2949
  %76 = icmp ne i32 %75, 0, !dbg !2949
  br i1 %76, label %79, label %77, !dbg !2951

77:                                               ; preds = %74
  %78 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5) #10, !dbg !2952
  br label %79, !dbg !2952

79:                                               ; preds = %77, %74
  %80 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #9, !dbg !2953
  %81 = icmp ne i32 %80, 0, !dbg !2953
  br i1 %81, label %82, label %127, !dbg !2955

82:                                               ; preds = %79
  %83 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #9, !dbg !2956
  %84 = icmp ne i32 %83, 0, !dbg !2956
  br i1 %84, label %85, label %127, !dbg !2957

85:                                               ; preds = %82
  %86 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #9, !dbg !2958
  %87 = icmp ne i32 %86, 0, !dbg !2958
  br i1 %87, label %88, label %127, !dbg !2959

88:                                               ; preds = %85
  %89 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #9, !dbg !2960
  %90 = icmp ne i32 %89, 0, !dbg !2960
  br i1 %90, label %91, label %127, !dbg !2961

91:                                               ; preds = %88
  %92 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #9, !dbg !2962
  %93 = icmp ne i32 %92, 0, !dbg !2962
  br i1 %93, label %94, label %127, !dbg !2963

94:                                               ; preds = %91
  %95 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #9, !dbg !2964
  %96 = icmp ne i32 %95, 0, !dbg !2964
  br i1 %96, label %97, label %127, !dbg !2965

97:                                               ; preds = %94
  %98 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #9, !dbg !2966
  %99 = icmp ne i32 %98, 0, !dbg !2966
  br i1 %99, label %100, label %127, !dbg !2967

100:                                              ; preds = %97
  %101 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #9, !dbg !2968
  %102 = icmp ne i32 %101, 0, !dbg !2968
  br i1 %102, label %103, label %127, !dbg !2969

103:                                              ; preds = %100
  %104 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #9, !dbg !2970
  %105 = icmp ne i32 %104, 0, !dbg !2970
  br i1 %105, label %106, label %127, !dbg !2971

106:                                              ; preds = %103
  %107 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #9, !dbg !2972
  %108 = icmp ne i32 %107, 0, !dbg !2972
  br i1 %108, label %109, label %127, !dbg !2973

109:                                              ; preds = %106
  %110 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #9, !dbg !2974
  %111 = icmp ne i32 %110, 0, !dbg !2974
  br i1 %111, label %112, label %127, !dbg !2975

112:                                              ; preds = %109
  %113 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #9, !dbg !2976
  %114 = icmp ne i32 %113, 0, !dbg !2976
  br i1 %114, label %115, label %127, !dbg !2977

115:                                              ; preds = %112
  %116 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #9, !dbg !2978
  %117 = icmp ne i32 %116, 0, !dbg !2978
  br i1 %117, label %118, label %127, !dbg !2979

118:                                              ; preds = %115
  %119 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #9, !dbg !2980
  %120 = icmp ne i32 %119, 0, !dbg !2980
  br i1 %120, label %121, label %127, !dbg !2981

121:                                              ; preds = %118
  %122 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #9, !dbg !2982
  %123 = icmp ne i32 %122, 0, !dbg !2982
  br i1 %123, label %124, label %127, !dbg !2983

124:                                              ; preds = %121
  %125 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #9, !dbg !2984
  %126 = icmp ne i32 %125, 0, !dbg !2984
  br i1 %126, label %138, label %127, !dbg !2985

127:                                              ; preds = %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79
  %128 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2986
  %129 = load i8, i8* %128, align 1, !dbg !2986, !tbaa !404
  %130 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2988
  store i8 %129, i8* %130, align 1, !dbg !2989, !tbaa !404
  %131 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2990
  %132 = load i8, i8* %131, align 1, !dbg !2990, !tbaa !404
  %133 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2991
  store i8 %132, i8* %133, align 1, !dbg !2992, !tbaa !404
  %134 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2993
  %135 = load i8, i8* %134, align 1, !dbg !2993, !tbaa !404
  %136 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2994
  store i8 %135, i8* %136, align 1, !dbg !2995, !tbaa !404
  %137 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2996
  store i8 32, i8* %137, align 1, !dbg !2997, !tbaa !404
  br label %138, !dbg !2998

138:                                              ; preds = %127, %124
  ret void, !dbg !2999
}

; Function Attrs: nounwind uwtable
define internal void @freecid(%struct.cid_t* %0) #0 !dbg !3000 {
  call void @llvm.dbg.value(metadata %struct.cid_t* %0, metadata !3004, metadata !DIExpression()), !dbg !3005
  %2 = icmp ne %struct.cid_t* %0, null, !dbg !3006
  br i1 %2, label %3, label %12, !dbg !3008

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 2, !dbg !3009
  %5 = load i8*, i8** %4, align 8, !dbg !3009, !tbaa !2343
  %6 = icmp ne i8* %5, null, !dbg !3012
  br i1 %6, label %7, label %10, !dbg !3013

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 2, !dbg !3014
  %9 = load i8*, i8** %8, align 8, !dbg !3014, !tbaa !2343
  call void @free(i8* %9) #10, !dbg !3015
  br label %10, !dbg !3015

10:                                               ; preds = %7, %3
  %11 = bitcast %struct.cid_t* %0 to i8*, !dbg !3016
  call void @free(i8* %11) #10, !dbg !3017
  br label %12, !dbg !3018

12:                                               ; preds = %10, %1
  ret void, !dbg !3019
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!384, !385, !386}
!llvm.ident = !{!387}

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
!384 = !{i32 7, !"Dwarf Version", i32 4}
!385 = !{i32 2, !"Debug Info Version", i32 3}
!386 = !{i32 1, !"wchar_size", i32 4}
!387 = !{!"clang version 10.0.0-4ubuntu1 "}
!388 = distinct !DISubprogram(name: "getpdb", scope: !3, file: !3, line: 121, type: !389, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !393)
!389 = !DISubroutineType(types: !390)
!390 = !{!391, !13, !13}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "MOLECULE_T", file: !8, line: 126, baseType: !118)
!393 = !{!394, !395, !396, !397, !398}
!394 = !DILocalVariable(name: "fname", arg: 1, scope: !388, file: !3, line: 121, type: !13)
!395 = !DILocalVariable(name: "options", arg: 2, scope: !388, file: !3, line: 121, type: !13)
!396 = !DILocalVariable(name: "fp", scope: !388, file: !3, line: 123, type: !371)
!397 = !DILocalVariable(name: "mol", scope: !388, file: !3, line: 124, type: !391)
!398 = !DILocalVariable(name: "ier", scope: !388, file: !3, line: 125, type: !37)
!399 = !DILocation(line: 0, scope: !388)
!400 = !DILocation(line: 127, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !388, file: !3, line: 127, column: 9)
!402 = !DILocation(line: 127, column: 16, scope: !401)
!403 = !DILocation(line: 127, column: 20, scope: !401)
!404 = !{!405, !405, i64 0}
!405 = !{!"omnipotent char", !406, i64 0}
!406 = !{!"Simple C/C++ TBAA"}
!407 = !DILocation(line: 127, column: 9, scope: !388)
!408 = !DILocation(line: 128, column: 14, scope: !409)
!409 = distinct !DILexicalBlock(scope: !401, file: !3, line: 127, column: 28)
!410 = !{!411, !411, i64 0}
!411 = !{!"any pointer", !405, i64 0}
!412 = !DILocation(line: 129, column: 5, scope: !409)
!413 = !DILocation(line: 129, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !401, file: !3, line: 129, column: 16)
!415 = !DILocation(line: 129, column: 16, scope: !401)
!416 = !DILocation(line: 130, column: 14, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !3, line: 129, column: 37)
!418 = !DILocation(line: 131, column: 5, scope: !417)
!419 = !DILocation(line: 133, column: 13, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 133, column: 13)
!421 = distinct !DILexicalBlock(scope: !414, file: !3, line: 131, column: 12)
!422 = !DILocation(line: 133, column: 28, scope: !420)
!423 = !DILocation(line: 133, column: 13, scope: !421)
!424 = !DILocation(line: 134, column: 23, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 134, column: 17)
!426 = distinct !DILexicalBlock(scope: !420, file: !3, line: 133, column: 34)
!427 = !DILocation(line: 134, column: 42, scope: !425)
!428 = !DILocation(line: 134, column: 17, scope: !426)
!429 = !DILocation(line: 135, column: 25, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !3, line: 134, column: 51)
!431 = !DILocation(line: 135, column: 17, scope: !430)
!432 = !DILocation(line: 137, column: 13, scope: !430)
!433 = !DILocation(line: 0, scope: !421)
!434 = !DILocation(line: 138, column: 9, scope: !426)
!435 = !DILocation(line: 139, column: 9, scope: !421)
!436 = !DILocation(line: 143, column: 13, scope: !437)
!437 = distinct !DILexicalBlock(scope: !421, file: !3, line: 143, column: 13)
!438 = !DILocation(line: 143, column: 28, scope: !437)
!439 = !DILocation(line: 143, column: 13, scope: !421)
!440 = !DILocation(line: 145, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 143, column: 34)
!442 = !DILocation(line: 0, scope: !414)
!443 = !DILocation(line: 0, scope: !401)
!444 = !DILocation(line: 148, column: 11, scope: !388)
!445 = !DILocation(line: 150, column: 15, scope: !446)
!446 = distinct !DILexicalBlock(scope: !388, file: !3, line: 150, column: 9)
!447 = !DILocation(line: 150, column: 12, scope: !446)
!448 = !DILocation(line: 150, column: 9, scope: !388)
!449 = !DILocation(line: 151, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 151, column: 13)
!451 = distinct !DILexicalBlock(scope: !446, file: !3, line: 150, column: 22)
!452 = !DILocation(line: 151, column: 28, scope: !450)
!453 = !DILocation(line: 151, column: 13, scope: !451)
!454 = !DILocation(line: 152, column: 13, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !3, line: 151, column: 34)
!456 = !DILocation(line: 153, column: 9, scope: !455)
!457 = !DILocation(line: 154, column: 5, scope: !451)
!458 = !DILocation(line: 156, column: 5, scope: !388)
!459 = distinct !DISubprogram(name: "fgetpdb", scope: !3, file: !3, line: 464, type: !460, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!391, !371, !13}
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !474, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !507}
!463 = !DILocalVariable(name: "fp", arg: 1, scope: !459, file: !3, line: 464, type: !371)
!464 = !DILocalVariable(name: "options", arg: 2, scope: !459, file: !3, line: 464, type: !13)
!465 = !DILocalVariable(name: "mol", scope: !459, file: !3, line: 466, type: !391)
!466 = !DILocalVariable(name: "ap", scope: !459, file: !3, line: 467, type: !190)
!467 = !DILocalVariable(name: "l_cid", scope: !459, file: !3, line: 468, type: !37)
!468 = !DILocalVariable(name: "cid", scope: !459, file: !3, line: 468, type: !37)
!469 = !DILocalVariable(name: "nchains", scope: !459, file: !3, line: 469, type: !37)
!470 = !DILocalVariable(name: "line", scope: !459, file: !3, line: 470, type: !471)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 656, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 82)
!474 = !DILocalVariable(name: "sname", scope: !459, file: !3, line: 471, type: !475)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 10)
!478 = !DILocalVariable(name: "aname", scope: !459, file: !3, line: 472, type: !475)
!479 = !DILocalVariable(name: "rname", scope: !459, file: !3, line: 473, type: !475)
!480 = !DILocalVariable(name: "l_rname", scope: !459, file: !3, line: 473, type: !475)
!481 = !DILocalVariable(name: "rid", scope: !459, file: !3, line: 474, type: !475)
!482 = !DILocalVariable(name: "l_rid", scope: !459, file: !3, line: 474, type: !475)
!483 = !DILocalVariable(name: "field", scope: !459, file: !3, line: 475, type: !475)
!484 = !DILocalVariable(name: "np", scope: !459, file: !3, line: 476, type: !13)
!485 = !DILocalVariable(name: "np1", scope: !459, file: !3, line: 476, type: !13)
!486 = !DILocalVariable(name: "rnum", scope: !459, file: !3, line: 477, type: !37)
!487 = !DILocalVariable(name: "l_rnum", scope: !459, file: !3, line: 477, type: !37)
!488 = !DILocalVariable(name: "x", scope: !459, file: !3, line: 478, type: !10)
!489 = !DILocalVariable(name: "y", scope: !459, file: !3, line: 478, type: !10)
!490 = !DILocalVariable(name: "z", scope: !459, file: !3, line: 478, type: !10)
!491 = !DILocalVariable(name: "q", scope: !459, file: !3, line: 478, type: !10)
!492 = !DILocalVariable(name: "r", scope: !459, file: !3, line: 478, type: !10)
!493 = !DILocalVariable(name: "occ", scope: !459, file: !3, line: 478, type: !10)
!494 = !DILocalVariable(name: "bfact", scope: !459, file: !3, line: 478, type: !10)
!495 = !DILocalVariable(name: "i", scope: !459, file: !3, line: 479, type: !37)
!496 = !DILocalVariable(name: "temp", scope: !459, file: !3, line: 480, type: !14)
!497 = !DILocalVariable(name: "loptions", scope: !459, file: !3, line: 481, type: !375)
!498 = !DILocalVariable(name: "sp", scope: !499, file: !3, line: 661, type: !128)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 660, column: 17)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 639, column: 31)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 639, column: 17)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 512, column: 46)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 511, column: 13)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 496, column: 37)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 496, column: 5)
!506 = distinct !DILexicalBlock(scope: !459, file: !3, line: 496, column: 5)
!507 = !DILocalVariable(name: "spl", scope: !499, file: !3, line: 661, type: !128)
!508 = !DILocation(line: 0, scope: !459)
!509 = !DILocation(line: 470, column: 5, scope: !459)
!510 = !DILocation(line: 470, column: 10, scope: !459)
!511 = !DILocation(line: 471, column: 5, scope: !459)
!512 = !DILocation(line: 471, column: 10, scope: !459)
!513 = !DILocation(line: 472, column: 5, scope: !459)
!514 = !DILocation(line: 472, column: 10, scope: !459)
!515 = !DILocation(line: 473, column: 5, scope: !459)
!516 = !DILocation(line: 473, column: 10, scope: !459)
!517 = !DILocation(line: 473, column: 21, scope: !459)
!518 = !DILocation(line: 474, column: 5, scope: !459)
!519 = !DILocation(line: 474, column: 10, scope: !459)
!520 = !DILocation(line: 474, column: 19, scope: !459)
!521 = !DILocation(line: 475, column: 5, scope: !459)
!522 = !DILocation(line: 475, column: 10, scope: !459)
!523 = !DILocation(line: 477, column: 5, scope: !459)
!524 = !DILocation(line: 477, column: 9, scope: !459)
!525 = !DILocation(line: 478, column: 5, scope: !459)
!526 = !DILocation(line: 478, column: 21, scope: !459)
!527 = !DILocation(line: 478, column: 24, scope: !459)
!528 = !DILocation(line: 481, column: 5, scope: !459)
!529 = !DILocation(line: 481, column: 10, scope: !459)
!530 = !DILocation(line: 483, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !459, file: !3, line: 483, column: 9)
!532 = !DILocation(line: 483, column: 9, scope: !459)
!533 = !DILocation(line: 484, column: 9, scope: !531)
!534 = !DILocation(line: 484, column: 19, scope: !531)
!535 = !DILocation(line: 486, column: 16, scope: !531)
!536 = !DILocation(line: 486, column: 9, scope: !531)
!537 = !DILocation(line: 488, column: 5, scope: !459)
!538 = !DILocation(line: 489, column: 5, scope: !459)
!539 = !DILocation(line: 491, column: 11, scope: !459)
!540 = !DILocation(line: 494, column: 5, scope: !459)
!541 = !DILocation(line: 494, column: 14, scope: !459)
!542 = !DILocation(line: 496, column: 30, scope: !506)
!543 = !{!544, !544, i64 0}
!544 = !{!"int", !405, i64 0}
!545 = !DILocation(line: 503, column: 19, scope: !546)
!546 = distinct !DILexicalBlock(scope: !504, file: !3, line: 503, column: 13)
!547 = !DILocation(line: 503, column: 13, scope: !546)
!548 = !DILocation(line: 503, column: 43, scope: !546)
!549 = !DILocation(line: 503, column: 13, scope: !504)
!550 = !DILocation(line: 504, column: 13, scope: !546)
!551 = !DILocation(line: 507, column: 25, scope: !552)
!552 = distinct !DILexicalBlock(scope: !504, file: !3, line: 507, column: 9)
!553 = !DILocation(line: 507, column: 18, scope: !552)
!554 = !DILocation(line: 507, column: 14, scope: !552)
!555 = !DILocation(line: 507, column: 34, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !3, line: 507, column: 9)
!557 = !DILocation(line: 507, column: 9, scope: !552)
!558 = !DILocation(line: 508, column: 13, scope: !556)
!559 = !DILocation(line: 508, column: 21, scope: !556)
!560 = !DILocation(line: 507, column: 41, scope: !556)
!561 = distinct !{!561, !557, !562}
!562 = !DILocation(line: 508, column: 23, scope: !552)
!563 = !DILocation(line: 509, column: 9, scope: !504)
!564 = !DILocation(line: 509, column: 18, scope: !504)
!565 = !DILocation(line: 511, column: 29, scope: !503)
!566 = !DILocation(line: 511, column: 13, scope: !503)
!567 = !DILocation(line: 511, column: 38, scope: !503)
!568 = !DILocation(line: 511, column: 43, scope: !503)
!569 = !DILocation(line: 512, column: 31, scope: !503)
!570 = !DILocation(line: 512, column: 13, scope: !503)
!571 = !DILocation(line: 512, column: 40, scope: !503)
!572 = !DILocation(line: 511, column: 13, scope: !504)
!573 = !DILocation(line: 513, column: 21, scope: !502)
!574 = !DILocation(line: 513, column: 29, scope: !502)
!575 = !DILocation(line: 513, column: 13, scope: !502)
!576 = !DILocation(line: 514, column: 13, scope: !502)
!577 = !DILocation(line: 514, column: 33, scope: !502)
!578 = !DILocation(line: 516, column: 29, scope: !579)
!579 = distinct !DILexicalBlock(scope: !502, file: !3, line: 516, column: 13)
!580 = !DILocation(line: 516, column: 36, scope: !581)
!581 = distinct !DILexicalBlock(scope: !579, file: !3, line: 516, column: 13)
!582 = !DILocation(line: 516, column: 13, scope: !579)
!583 = !DILocation(line: 517, column: 21, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 517, column: 21)
!585 = distinct !DILexicalBlock(scope: !581, file: !3, line: 516, column: 47)
!586 = !DILocation(line: 517, column: 25, scope: !584)
!587 = !DILocation(line: 517, column: 21, scope: !585)
!588 = !DILocation(line: 518, column: 30, scope: !584)
!589 = !DILocation(line: 518, column: 25, scope: !584)
!590 = !DILocation(line: 518, column: 28, scope: !584)
!591 = !DILocation(line: 518, column: 21, scope: !584)
!592 = !DILocation(line: 0, scope: !579)
!593 = !DILocation(line: 519, column: 13, scope: !585)
!594 = !DILocation(line: 516, column: 43, scope: !581)
!595 = distinct !{!595, !582, !596}
!596 = !DILocation(line: 519, column: 13, scope: !579)
!597 = !DILocation(line: 520, column: 18, scope: !502)
!598 = !DILocation(line: 523, column: 17, scope: !599)
!599 = distinct !DILexicalBlock(scope: !502, file: !3, line: 523, column: 17)
!600 = !DILocation(line: 523, column: 26, scope: !599)
!601 = !DILocation(line: 523, column: 33, scope: !599)
!602 = !DILocation(line: 523, column: 36, scope: !599)
!603 = !DILocation(line: 523, column: 45, scope: !599)
!604 = !DILocation(line: 523, column: 52, scope: !599)
!605 = !DILocation(line: 523, column: 55, scope: !599)
!606 = !DILocation(line: 523, column: 64, scope: !599)
!607 = !DILocation(line: 523, column: 17, scope: !502)
!608 = !DILocation(line: 524, column: 24, scope: !609)
!609 = distinct !DILexicalBlock(scope: !599, file: !3, line: 523, column: 72)
!610 = !DILocation(line: 525, column: 45, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 525, column: 17)
!612 = distinct !DILexicalBlock(scope: !609, file: !3, line: 525, column: 17)
!613 = !DILocation(line: 525, column: 38, scope: !611)
!614 = !DILocation(line: 525, column: 33, scope: !611)
!615 = !DILocation(line: 525, column: 52, scope: !611)
!616 = !DILocation(line: 525, column: 31, scope: !611)
!617 = !DILocation(line: 525, column: 17, scope: !612)
!618 = !DILocation(line: 525, column: 58, scope: !611)
!619 = !DILocation(line: 526, column: 32, scope: !611)
!620 = !DILocation(line: 526, column: 21, scope: !611)
!621 = !DILocation(line: 526, column: 30, scope: !611)
!622 = distinct !{!622, !617, !623}
!623 = !DILocation(line: 526, column: 43, scope: !612)
!624 = !DILocation(line: 527, column: 17, scope: !609)
!625 = !DILocation(line: 527, column: 26, scope: !609)
!626 = !DILocation(line: 528, column: 13, scope: !609)
!627 = !DILocation(line: 531, column: 17, scope: !628)
!628 = distinct !DILexicalBlock(scope: !502, file: !3, line: 531, column: 17)
!629 = !DILocation(line: 531, column: 26, scope: !628)
!630 = !DILocation(line: 531, column: 17, scope: !502)
!631 = !DILocation(line: 532, column: 17, scope: !628)
!632 = !DILocation(line: 532, column: 26, scope: !628)
!633 = !DILocation(line: 533, column: 25, scope: !634)
!634 = distinct !DILexicalBlock(scope: !502, file: !3, line: 533, column: 17)
!635 = !DILocation(line: 533, column: 18, scope: !634)
!636 = !DILocation(line: 533, column: 17, scope: !502)
!637 = !DILocation(line: 534, column: 24, scope: !634)
!638 = !DILocation(line: 534, column: 17, scope: !634)
!639 = !DILocation(line: 536, column: 21, scope: !502)
!640 = !DILocation(line: 536, column: 29, scope: !502)
!641 = !DILocation(line: 536, column: 13, scope: !502)
!642 = !DILocation(line: 537, column: 13, scope: !502)
!643 = !DILocation(line: 537, column: 33, scope: !502)
!644 = !DILocation(line: 538, column: 29, scope: !645)
!645 = distinct !DILexicalBlock(scope: !502, file: !3, line: 538, column: 13)
!646 = !DILocation(line: 538, column: 36, scope: !647)
!647 = distinct !DILexicalBlock(scope: !645, file: !3, line: 538, column: 13)
!648 = !DILocation(line: 538, column: 13, scope: !645)
!649 = !DILocation(line: 539, column: 21, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 539, column: 21)
!651 = distinct !DILexicalBlock(scope: !647, file: !3, line: 538, column: 47)
!652 = !DILocation(line: 539, column: 25, scope: !650)
!653 = !DILocation(line: 539, column: 21, scope: !651)
!654 = !DILocation(line: 540, column: 30, scope: !650)
!655 = !DILocation(line: 540, column: 25, scope: !650)
!656 = !DILocation(line: 540, column: 28, scope: !650)
!657 = !DILocation(line: 540, column: 21, scope: !650)
!658 = !DILocation(line: 0, scope: !645)
!659 = !DILocation(line: 541, column: 13, scope: !651)
!660 = !DILocation(line: 538, column: 43, scope: !647)
!661 = distinct !{!661, !648, !662}
!662 = !DILocation(line: 541, column: 13, scope: !645)
!663 = !DILocation(line: 542, column: 18, scope: !502)
!664 = !DILocation(line: 551, column: 25, scope: !665)
!665 = distinct !DILexicalBlock(scope: !502, file: !3, line: 551, column: 17)
!666 = !DILocation(line: 551, column: 18, scope: !665)
!667 = !DILocation(line: 551, column: 17, scope: !502)
!668 = !DILocation(line: 552, column: 28, scope: !665)
!669 = !{!670, !544, i64 44}
!670 = !{!"residue_t", !411, i64 0, !544, i64 8, !544, i64 12, !544, i64 16, !411, i64 24, !411, i64 32, !544, i64 40, !544, i64 44, !544, i64 48, !411, i64 56, !411, i64 64, !544, i64 72, !411, i64 80, !544, i64 88, !411, i64 96, !544, i64 104, !411, i64 112, !411, i64 120}
!671 = !DILocation(line: 552, column: 17, scope: !665)
!672 = !DILocation(line: 553, column: 25, scope: !673)
!673 = distinct !DILexicalBlock(scope: !502, file: !3, line: 553, column: 17)
!674 = !DILocation(line: 553, column: 18, scope: !673)
!675 = !DILocation(line: 553, column: 41, scope: !673)
!676 = !DILocation(line: 553, column: 48, scope: !673)
!677 = !DILocation(line: 553, column: 55, scope: !673)
!678 = !DILocation(line: 553, column: 17, scope: !502)
!679 = !DILocation(line: 554, column: 24, scope: !673)
!680 = !DILocation(line: 554, column: 17, scope: !673)
!681 = !DILocation(line: 557, column: 25, scope: !682)
!682 = distinct !DILexicalBlock(scope: !502, file: !3, line: 557, column: 17)
!683 = !DILocation(line: 557, column: 18, scope: !682)
!684 = !DILocation(line: 557, column: 17, scope: !502)
!685 = !DILocation(line: 558, column: 24, scope: !682)
!686 = !DILocation(line: 558, column: 17, scope: !682)
!687 = !DILocation(line: 559, column: 25, scope: !688)
!688 = distinct !DILexicalBlock(scope: !502, file: !3, line: 559, column: 17)
!689 = !DILocation(line: 559, column: 18, scope: !688)
!690 = !DILocation(line: 559, column: 17, scope: !502)
!691 = !DILocation(line: 560, column: 24, scope: !688)
!692 = !DILocation(line: 560, column: 17, scope: !688)
!693 = !DILocation(line: 561, column: 25, scope: !694)
!694 = distinct !DILexicalBlock(scope: !502, file: !3, line: 561, column: 17)
!695 = !DILocation(line: 561, column: 18, scope: !694)
!696 = !DILocation(line: 561, column: 17, scope: !502)
!697 = !DILocation(line: 562, column: 24, scope: !694)
!698 = !DILocation(line: 562, column: 17, scope: !694)
!699 = !DILocation(line: 563, column: 25, scope: !700)
!700 = distinct !DILexicalBlock(scope: !502, file: !3, line: 563, column: 17)
!701 = !DILocation(line: 563, column: 18, scope: !700)
!702 = !DILocation(line: 563, column: 17, scope: !502)
!703 = !DILocation(line: 564, column: 24, scope: !700)
!704 = !DILocation(line: 564, column: 17, scope: !700)
!705 = !DILocation(line: 565, column: 25, scope: !706)
!706 = distinct !DILexicalBlock(scope: !502, file: !3, line: 565, column: 17)
!707 = !DILocation(line: 565, column: 18, scope: !706)
!708 = !DILocation(line: 565, column: 17, scope: !502)
!709 = !DILocation(line: 566, column: 24, scope: !706)
!710 = !DILocation(line: 566, column: 17, scope: !706)
!711 = !DILocation(line: 569, column: 21, scope: !502)
!712 = !DILocation(line: 569, column: 27, scope: !502)
!713 = !DILocation(line: 569, column: 13, scope: !502)
!714 = !DILocation(line: 570, column: 13, scope: !502)
!715 = !DILocation(line: 570, column: 30, scope: !502)
!716 = !DILocation(line: 572, column: 19, scope: !502)
!717 = !DILocation(line: 573, column: 21, scope: !502)
!718 = !DILocation(line: 573, column: 13, scope: !502)
!719 = !DILocation(line: 575, column: 21, scope: !502)
!720 = !DILocation(line: 575, column: 29, scope: !502)
!721 = !DILocation(line: 575, column: 13, scope: !502)
!722 = !DILocation(line: 576, column: 13, scope: !502)
!723 = !DILocation(line: 576, column: 33, scope: !502)
!724 = !DILocation(line: 577, column: 22, scope: !502)
!725 = !DILocation(line: 577, column: 17, scope: !502)
!726 = !DILocation(line: 579, column: 21, scope: !502)
!727 = !DILocation(line: 579, column: 29, scope: !502)
!728 = !DILocation(line: 579, column: 13, scope: !502)
!729 = !DILocation(line: 580, column: 13, scope: !502)
!730 = !DILocation(line: 580, column: 33, scope: !502)
!731 = !DILocation(line: 581, column: 22, scope: !502)
!732 = !DILocation(line: 581, column: 17, scope: !502)
!733 = !DILocation(line: 583, column: 21, scope: !502)
!734 = !DILocation(line: 583, column: 29, scope: !502)
!735 = !DILocation(line: 583, column: 13, scope: !502)
!736 = !DILocation(line: 584, column: 13, scope: !502)
!737 = !DILocation(line: 584, column: 33, scope: !502)
!738 = !DILocation(line: 585, column: 22, scope: !502)
!739 = !DILocation(line: 585, column: 17, scope: !502)
!740 = !DILocation(line: 587, column: 24, scope: !741)
!741 = distinct !DILexicalBlock(scope: !502, file: !3, line: 587, column: 17)
!742 = !DILocation(line: 587, column: 17, scope: !741)
!743 = !DILocation(line: 587, column: 17, scope: !502)
!744 = !DILocation(line: 603, column: 25, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !3, line: 587, column: 43)
!746 = !DILocation(line: 603, column: 17, scope: !745)
!747 = !DILocation(line: 611, column: 13, scope: !745)
!748 = !DILocation(line: 613, column: 30, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 613, column: 21)
!750 = distinct !DILexicalBlock(scope: !741, file: !3, line: 611, column: 20)
!751 = !DILocation(line: 613, column: 22, scope: !749)
!752 = !DILocation(line: 613, column: 21, scope: !750)
!753 = !DILocation(line: 614, column: 23, scope: !749)
!754 = !{!755, !755, i64 0}
!755 = !{!"double", !405, i64 0}
!756 = !DILocation(line: 614, column: 21, scope: !749)
!757 = !DILocation(line: 615, column: 35, scope: !758)
!758 = distinct !DILexicalBlock(scope: !749, file: !3, line: 615, column: 26)
!759 = !DILocation(line: 615, column: 27, scope: !758)
!760 = !DILocation(line: 615, column: 26, scope: !749)
!761 = !DILocation(line: 616, column: 23, scope: !758)
!762 = !DILocation(line: 616, column: 21, scope: !758)
!763 = !DILocation(line: 617, column: 35, scope: !764)
!764 = distinct !DILexicalBlock(scope: !758, file: !3, line: 617, column: 26)
!765 = !DILocation(line: 617, column: 27, scope: !764)
!766 = !DILocation(line: 617, column: 26, scope: !758)
!767 = !DILocation(line: 618, column: 23, scope: !764)
!768 = !DILocation(line: 618, column: 21, scope: !764)
!769 = !DILocation(line: 619, column: 35, scope: !770)
!770 = distinct !DILexicalBlock(scope: !764, file: !3, line: 619, column: 26)
!771 = !DILocation(line: 619, column: 27, scope: !770)
!772 = !DILocation(line: 619, column: 26, scope: !764)
!773 = !DILocation(line: 620, column: 23, scope: !770)
!774 = !DILocation(line: 620, column: 21, scope: !770)
!775 = !DILocation(line: 621, column: 35, scope: !776)
!776 = distinct !DILexicalBlock(scope: !770, file: !3, line: 621, column: 26)
!777 = !DILocation(line: 621, column: 27, scope: !776)
!778 = !DILocation(line: 621, column: 26, scope: !770)
!779 = !DILocation(line: 622, column: 23, scope: !776)
!780 = !DILocation(line: 622, column: 21, scope: !776)
!781 = !DILocation(line: 623, column: 35, scope: !782)
!782 = distinct !DILexicalBlock(scope: !776, file: !3, line: 623, column: 26)
!783 = !DILocation(line: 623, column: 27, scope: !782)
!784 = !DILocation(line: 623, column: 26, scope: !776)
!785 = !DILocation(line: 624, column: 23, scope: !782)
!786 = !DILocation(line: 624, column: 21, scope: !782)
!787 = !DILocation(line: 626, column: 23, scope: !782)
!788 = !DILocation(line: 627, column: 19, scope: !750)
!789 = !DILocation(line: 630, column: 25, scope: !750)
!790 = !DILocation(line: 630, column: 33, scope: !750)
!791 = !DILocation(line: 630, column: 17, scope: !750)
!792 = !DILocation(line: 631, column: 17, scope: !750)
!793 = !DILocation(line: 631, column: 37, scope: !750)
!794 = !DILocation(line: 632, column: 28, scope: !750)
!795 = !DILocation(line: 632, column: 23, scope: !750)
!796 = !DILocation(line: 634, column: 25, scope: !750)
!797 = !DILocation(line: 634, column: 33, scope: !750)
!798 = !DILocation(line: 634, column: 17, scope: !750)
!799 = !DILocation(line: 635, column: 17, scope: !750)
!800 = !DILocation(line: 635, column: 37, scope: !750)
!801 = !DILocation(line: 636, column: 30, scope: !750)
!802 = !DILocation(line: 636, column: 25, scope: !750)
!803 = !DILocation(line: 0, scope: !741)
!804 = !DILocation(line: 639, column: 21, scope: !501)
!805 = !DILocation(line: 639, column: 17, scope: !502)
!806 = !DILocation(line: 640, column: 21, scope: !807)
!807 = distinct !DILexicalBlock(scope: !500, file: !3, line: 640, column: 21)
!808 = !DILocation(line: 640, column: 28, scope: !807)
!809 = !DILocation(line: 640, column: 21, scope: !500)
!810 = !DILocation(line: 641, column: 32, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 640, column: 33)
!812 = !{!670, !411, i64 24}
!813 = !DILocation(line: 641, column: 43, scope: !811)
!814 = !DILocation(line: 641, column: 21, scope: !811)
!815 = !DILocation(line: 642, column: 32, scope: !811)
!816 = !{!670, !411, i64 32}
!817 = !DILocation(line: 642, column: 41, scope: !811)
!818 = !DILocation(line: 642, column: 21, scope: !811)
!819 = !DILocation(line: 643, column: 31, scope: !811)
!820 = !{!670, !544, i64 8}
!821 = !DILocation(line: 644, column: 36, scope: !811)
!822 = !DILocation(line: 644, column: 34, scope: !811)
!823 = !{!670, !544, i64 104}
!824 = !DILocation(line: 645, column: 21, scope: !811)
!825 = !DILocation(line: 646, column: 37, scope: !811)
!826 = !DILocation(line: 646, column: 21, scope: !811)
!827 = !DILocation(line: 647, column: 21, scope: !811)
!828 = !DILocation(line: 648, column: 28, scope: !811)
!829 = !DILocation(line: 649, column: 17, scope: !811)
!830 = !DILocation(line: 651, column: 24, scope: !500)
!831 = !DILocation(line: 652, column: 25, scope: !832)
!832 = distinct !DILexicalBlock(scope: !500, file: !3, line: 652, column: 21)
!833 = !DILocation(line: 652, column: 21, scope: !500)
!834 = !DILocation(line: 653, column: 29, scope: !832)
!835 = !DILocation(line: 653, column: 21, scope: !832)
!836 = !DILocation(line: 655, column: 32, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 654, column: 22)
!838 = !DILocation(line: 655, column: 21, scope: !837)
!839 = !DILocation(line: 655, column: 30, scope: !837)
!840 = !DILocation(line: 656, column: 21, scope: !837)
!841 = !DILocation(line: 656, column: 30, scope: !837)
!842 = !DILocation(line: 658, column: 32, scope: !500)
!843 = !DILocation(line: 658, column: 17, scope: !500)
!844 = !DILocation(line: 0, scope: !499)
!845 = !DILocation(line: 663, column: 48, scope: !846)
!846 = distinct !DILexicalBlock(scope: !499, file: !3, line: 663, column: 21)
!847 = !{!848, !411, i64 104}
!848 = !{!"molecule_t", !405, i64 0, !544, i64 96, !411, i64 104, !544, i64 112, !544, i64 116, !544, i64 120, !411, i64 128}
!849 = !DILocation(line: 663, column: 21, scope: !846)
!850 = !DILocation(line: 665, column: 42, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 665, column: 29)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 664, column: 45)
!853 = distinct !DILexicalBlock(scope: !846, file: !3, line: 663, column: 21)
!854 = !{!855, !411, i64 0}
!855 = !{!"strand_t", !411, i64 0, !544, i64 8, !544, i64 12, !411, i64 16, !411, i64 24, !544, i64 32, !544, i64 36, !411, i64 40}
!856 = !DILocation(line: 665, column: 56, scope: !851)
!857 = !DILocation(line: 665, column: 30, scope: !851)
!858 = !DILocation(line: 665, column: 29, scope: !852)
!859 = !DILocation(line: 0, scope: !846)
!860 = !DILocation(line: 667, column: 29, scope: !861)
!861 = distinct !DILexicalBlock(scope: !851, file: !3, line: 665, column: 64)
!862 = !DILocation(line: 669, column: 21, scope: !852)
!863 = !DILocation(line: 664, column: 37, scope: !853)
!864 = !{!855, !411, i64 24}
!865 = distinct !{!865, !849, !866}
!866 = !DILocation(line: 669, column: 21, scope: !846)
!867 = !DILocation(line: 670, column: 25, scope: !499)
!868 = !DILocation(line: 670, column: 36, scope: !499)
!869 = !{!855, !544, i64 36}
!870 = !DILocation(line: 672, column: 51, scope: !499)
!871 = !DILocation(line: 672, column: 47, scope: !499)
!872 = !DILocation(line: 672, column: 62, scope: !499)
!873 = !DILocation(line: 672, column: 40, scope: !499)
!874 = !DILocation(line: 672, column: 25, scope: !499)
!875 = !DILocation(line: 671, column: 25, scope: !499)
!876 = !DILocation(line: 671, column: 36, scope: !499)
!877 = !{!855, !411, i64 40}
!878 = !DILocation(line: 674, column: 29, scope: !879)
!879 = distinct !DILexicalBlock(scope: !499, file: !3, line: 674, column: 25)
!880 = !DILocation(line: 674, column: 40, scope: !879)
!881 = !DILocation(line: 674, column: 25, scope: !499)
!882 = !DILocation(line: 676, column: 21, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !3, line: 674, column: 49)
!884 = !DILocation(line: 680, column: 24, scope: !500)
!885 = !DILocation(line: 680, column: 33, scope: !500)
!886 = !DILocation(line: 680, column: 17, scope: !500)
!887 = !DILocation(line: 681, column: 24, scope: !500)
!888 = !DILocation(line: 681, column: 31, scope: !500)
!889 = !DILocation(line: 681, column: 17, scope: !500)
!890 = !DILocation(line: 682, column: 26, scope: !500)
!891 = !DILocation(line: 684, column: 13, scope: !500)
!892 = !DILocation(line: 684, column: 33, scope: !893)
!893 = distinct !DILexicalBlock(scope: !501, file: !3, line: 684, column: 24)
!894 = !DILocation(line: 684, column: 42, scope: !893)
!895 = !DILocation(line: 684, column: 57, scope: !893)
!896 = !DILocation(line: 684, column: 24, scope: !893)
!897 = !DILocation(line: 684, column: 24, scope: !501)
!898 = !DILocation(line: 685, column: 28, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !3, line: 684, column: 64)
!900 = !DILocation(line: 685, column: 39, scope: !899)
!901 = !DILocation(line: 685, column: 17, scope: !899)
!902 = !DILocation(line: 686, column: 28, scope: !899)
!903 = !DILocation(line: 686, column: 37, scope: !899)
!904 = !DILocation(line: 686, column: 17, scope: !899)
!905 = !DILocation(line: 687, column: 27, scope: !899)
!906 = !DILocation(line: 688, column: 32, scope: !899)
!907 = !DILocation(line: 688, column: 30, scope: !899)
!908 = !DILocation(line: 689, column: 17, scope: !899)
!909 = !DILocation(line: 690, column: 33, scope: !899)
!910 = !DILocation(line: 690, column: 17, scope: !899)
!911 = !DILocation(line: 691, column: 17, scope: !899)
!912 = !DILocation(line: 692, column: 24, scope: !899)
!913 = !DILocation(line: 692, column: 33, scope: !899)
!914 = !DILocation(line: 692, column: 17, scope: !899)
!915 = !DILocation(line: 693, column: 24, scope: !899)
!916 = !DILocation(line: 693, column: 31, scope: !899)
!917 = !DILocation(line: 693, column: 17, scope: !899)
!918 = !DILocation(line: 694, column: 26, scope: !899)
!919 = !DILocation(line: 695, column: 24, scope: !899)
!920 = !DILocation(line: 696, column: 13, scope: !899)
!921 = !DILocation(line: 0, scope: !501)
!922 = !DILocation(line: 0, scope: !506)
!923 = !DILocation(line: 697, column: 24, scope: !502)
!924 = !DILocation(line: 697, column: 19, scope: !502)
!925 = !DILocation(line: 698, column: 13, scope: !502)
!926 = !DILocation(line: 699, column: 24, scope: !502)
!927 = !{!928, !411, i64 0}
!928 = !{!"atom_t", !411, i64 0, !411, i64 8, !544, i64 16, !544, i64 20, !405, i64 24, !411, i64 56, !755, i64 64, !755, i64 72, !755, i64 80, !755, i64 88, !411, i64 96, !544, i64 104, !755, i64 112, !755, i64 120, !544, i64 128, !544, i64 132, !411, i64 136, !405, i64 144, !755, i64 168}
!929 = !DILocation(line: 699, column: 36, scope: !502)
!930 = !DILocation(line: 699, column: 13, scope: !502)
!931 = !DILocation(line: 700, column: 17, scope: !502)
!932 = !DILocation(line: 700, column: 24, scope: !502)
!933 = !{!928, !544, i64 16}
!934 = !DILocation(line: 701, column: 17, scope: !502)
!935 = !DILocation(line: 701, column: 27, scope: !502)
!936 = !{!928, !411, i64 56}
!937 = !DILocation(line: 702, column: 17, scope: !502)
!938 = !DILocation(line: 702, column: 13, scope: !502)
!939 = !DILocation(line: 702, column: 26, scope: !502)
!940 = !DILocation(line: 703, column: 17, scope: !502)
!941 = !DILocation(line: 703, column: 13, scope: !502)
!942 = !DILocation(line: 703, column: 26, scope: !502)
!943 = !DILocation(line: 704, column: 17, scope: !502)
!944 = !DILocation(line: 704, column: 13, scope: !502)
!945 = !DILocation(line: 704, column: 26, scope: !502)
!946 = !DILocation(line: 705, column: 28, scope: !502)
!947 = !DILocation(line: 705, column: 17, scope: !502)
!948 = !DILocation(line: 705, column: 26, scope: !502)
!949 = !{!928, !755, i64 64}
!950 = !DILocation(line: 706, column: 28, scope: !502)
!951 = !DILocation(line: 706, column: 17, scope: !502)
!952 = !DILocation(line: 706, column: 26, scope: !502)
!953 = !{!928, !755, i64 72}
!954 = !DILocation(line: 707, column: 17, scope: !502)
!955 = !DILocation(line: 707, column: 23, scope: !502)
!956 = !{!928, !755, i64 88}
!957 = !DILocation(line: 708, column: 17, scope: !502)
!958 = !DILocation(line: 708, column: 25, scope: !502)
!959 = !{!928, !755, i64 80}
!960 = !DILocation(line: 709, column: 19, scope: !502)
!961 = !DILocation(line: 711, column: 9, scope: !502)
!962 = !DILocation(line: 711, column: 35, scope: !963)
!963 = distinct !DILexicalBlock(scope: !503, file: !3, line: 711, column: 20)
!964 = !DILocation(line: 711, column: 20, scope: !963)
!965 = !DILocation(line: 711, column: 44, scope: !963)
!966 = !DILocation(line: 711, column: 20, scope: !503)
!967 = !DILocation(line: 712, column: 17, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 712, column: 17)
!969 = distinct !DILexicalBlock(scope: !963, file: !3, line: 711, column: 50)
!970 = !DILocation(line: 712, column: 24, scope: !968)
!971 = !DILocation(line: 712, column: 17, scope: !969)
!972 = !DILocation(line: 713, column: 28, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 712, column: 29)
!974 = !DILocation(line: 713, column: 39, scope: !973)
!975 = !DILocation(line: 713, column: 17, scope: !973)
!976 = !DILocation(line: 714, column: 28, scope: !973)
!977 = !DILocation(line: 714, column: 37, scope: !973)
!978 = !DILocation(line: 714, column: 17, scope: !973)
!979 = !DILocation(line: 715, column: 27, scope: !973)
!980 = !DILocation(line: 716, column: 32, scope: !973)
!981 = !DILocation(line: 716, column: 30, scope: !973)
!982 = !DILocation(line: 717, column: 17, scope: !973)
!983 = !DILocation(line: 718, column: 33, scope: !973)
!984 = !DILocation(line: 718, column: 17, scope: !973)
!985 = !DILocation(line: 719, column: 17, scope: !973)
!986 = !DILocation(line: 720, column: 24, scope: !973)
!987 = !DILocation(line: 721, column: 13, scope: !973)
!988 = !DILocation(line: 723, column: 13, scope: !969)
!989 = !DILocation(line: 723, column: 22, scope: !969)
!990 = !DILocation(line: 724, column: 13, scope: !969)
!991 = !DILocation(line: 724, column: 20, scope: !969)
!992 = !DILocation(line: 726, column: 9, scope: !969)
!993 = !DILocation(line: 726, column: 35, scope: !994)
!994 = distinct !DILexicalBlock(scope: !963, file: !3, line: 726, column: 20)
!995 = !DILocation(line: 726, column: 20, scope: !994)
!996 = !DILocation(line: 726, column: 44, scope: !994)
!997 = !DILocation(line: 726, column: 20, scope: !963)
!998 = !DILocation(line: 727, column: 13, scope: !994)
!999 = !DILocation(line: 0, scope: !503)
!1000 = distinct !{!1000, !1001, !1002}
!1001 = !DILocation(line: 496, column: 5, scope: !506)
!1002 = !DILocation(line: 728, column: 5, scope: !506)
!1003 = !DILocation(line: 729, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !459, file: !3, line: 729, column: 9)
!1005 = !DILocation(line: 729, column: 16, scope: !1004)
!1006 = !DILocation(line: 729, column: 9, scope: !459)
!1007 = !DILocation(line: 730, column: 20, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 729, column: 21)
!1009 = !DILocation(line: 730, column: 31, scope: !1008)
!1010 = !DILocation(line: 730, column: 9, scope: !1008)
!1011 = !DILocation(line: 731, column: 20, scope: !1008)
!1012 = !DILocation(line: 731, column: 29, scope: !1008)
!1013 = !DILocation(line: 731, column: 9, scope: !1008)
!1014 = !DILocation(line: 732, column: 19, scope: !1008)
!1015 = !DILocation(line: 733, column: 24, scope: !1008)
!1016 = !DILocation(line: 733, column: 22, scope: !1008)
!1017 = !DILocation(line: 734, column: 9, scope: !1008)
!1018 = !DILocation(line: 735, column: 25, scope: !1008)
!1019 = !DILocation(line: 735, column: 9, scope: !1008)
!1020 = !DILocation(line: 736, column: 9, scope: !1008)
!1021 = !DILocation(line: 737, column: 5, scope: !1008)
!1022 = !DILocation(line: 739, column: 10, scope: !459)
!1023 = !DILocation(line: 739, column: 19, scope: !459)
!1024 = !{!848, !544, i64 120}
!1025 = !DILocation(line: 742, column: 1, scope: !459)
!1026 = !DILocation(line: 741, column: 5, scope: !459)
!1027 = !DILocation(line: 0, scope: !2)
!1028 = !DILocation(line: 162, column: 5, scope: !2)
!1029 = !DILocation(line: 162, column: 10, scope: !2)
!1030 = !DILocation(line: 163, column: 12, scope: !2)
!1031 = !DILocation(line: 168, column: 5, scope: !2)
!1032 = !DILocation(line: 169, column: 15, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !2, file: !3, line: 169, column: 9)
!1034 = !DILocation(line: 169, column: 23, scope: !1033)
!1035 = !DILocation(line: 169, column: 26, scope: !1033)
!1036 = !DILocation(line: 169, column: 33, scope: !1033)
!1037 = !DILocation(line: 169, column: 9, scope: !2)
!1038 = !DILocation(line: 170, column: 17, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 169, column: 42)
!1040 = !DILocation(line: 170, column: 9, scope: !1039)
!1041 = !DILocation(line: 172, column: 9, scope: !1039)
!1042 = !DILocation(line: 173, column: 17, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 173, column: 16)
!1044 = !DILocation(line: 173, column: 16, scope: !1033)
!1045 = !DILocation(line: 174, column: 14, scope: !1043)
!1046 = !DILocation(line: 174, column: 9, scope: !1043)
!1047 = !DILocation(line: 175, column: 20, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 175, column: 14)
!1049 = !DILocation(line: 175, column: 39, scope: !1048)
!1050 = !DILocation(line: 175, column: 14, scope: !1043)
!1051 = !DILocation(line: 176, column: 17, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 175, column: 48)
!1053 = !DILocation(line: 176, column: 9, scope: !1052)
!1054 = !DILocation(line: 178, column: 9, scope: !1052)
!1055 = !DILocation(line: 0, scope: !1043)
!1056 = !DILocation(line: 180, column: 23, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 180, column: 5)
!1058 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!1059 = !DILocation(line: 180, column: 17, scope: !1057)
!1060 = !DILocation(line: 180, column: 5, scope: !1058)
!1061 = distinct !{!1061, !1060, !1062}
!1062 = !DILocation(line: 201, column: 5, scope: !1058)
!1063 = !DILocation(line: 181, column: 13, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 181, column: 13)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 180, column: 49)
!1066 = !DILocation(line: 181, column: 19, scope: !1064)
!1067 = !DILocation(line: 181, column: 13, scope: !1065)
!1068 = !DILocation(line: 184, column: 22, scope: !1065)
!1069 = !DILocation(line: 185, column: 23, scope: !1065)
!1070 = !DILocation(line: 185, column: 35, scope: !1065)
!1071 = !DILocation(line: 185, column: 47, scope: !1065)
!1072 = !DILocation(line: 185, column: 59, scope: !1065)
!1073 = !DILocation(line: 184, column: 15, scope: !1065)
!1074 = !DILocation(line: 190, column: 17, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 190, column: 13)
!1076 = !DILocation(line: 190, column: 13, scope: !1065)
!1077 = !DILocation(line: 191, column: 21, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 190, column: 23)
!1079 = !DILocation(line: 193, column: 23, scope: !1078)
!1080 = !DILocation(line: 191, column: 13, scope: !1078)
!1081 = !DILocation(line: 194, column: 13, scope: !1078)
!1082 = !DILocation(line: 196, column: 13, scope: !1078)
!1083 = !DILocation(line: 198, column: 10, scope: !1065)
!1084 = !DILocation(line: 199, column: 15, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 199, column: 13)
!1086 = !DILocation(line: 199, column: 13, scope: !1065)
!1087 = !DILocation(line: 200, column: 13, scope: !1085)
!1088 = !DILocation(line: 202, column: 11, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!1090 = !DILocation(line: 0, scope: !1058)
!1091 = !DILocation(line: 202, column: 9, scope: !2)
!1092 = !DILocation(line: 203, column: 17, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 202, column: 17)
!1094 = !DILocation(line: 203, column: 9, scope: !1093)
!1095 = !DILocation(line: 205, column: 9, scope: !1093)
!1096 = !DILocation(line: 207, column: 9, scope: !1093)
!1097 = !DILocation(line: 202, column: 14, scope: !1089)
!1098 = !DILocation(line: 210, column: 3, scope: !2)
!1099 = !DILocation(line: 212, column: 12, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!1101 = !DILocation(line: 212, column: 20, scope: !1100)
!1102 = !DILocation(line: 212, column: 29, scope: !1100)
!1103 = !DILocation(line: 212, column: 26, scope: !1100)
!1104 = !DILocation(line: 212, column: 9, scope: !2)
!1105 = !DILocation(line: 213, column: 9, scope: !1100)
!1106 = !DILocation(line: 216, column: 12, scope: !2)
!1107 = !DILocation(line: 217, column: 1, scope: !2)
!1108 = !DILocation(line: 216, column: 5, scope: !2)
!1109 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !1110, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1112)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!37, !13, !391, !13}
!1112 = !{!1113, !1114, !1115, !1116, !1117}
!1113 = !DILocalVariable(name: "fname", arg: 1, scope: !1109, file: !3, line: 225, type: !13)
!1114 = !DILocalVariable(name: "mol", arg: 2, scope: !1109, file: !3, line: 225, type: !391)
!1115 = !DILocalVariable(name: "options", arg: 3, scope: !1109, file: !3, line: 225, type: !13)
!1116 = !DILocalVariable(name: "fp", scope: !1109, file: !3, line: 227, type: !371)
!1117 = !DILocalVariable(name: "ier", scope: !1109, file: !3, line: 228, type: !37)
!1118 = !DILocation(line: 0, scope: !1109)
!1119 = !DILocation(line: 230, column: 10, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 230, column: 9)
!1121 = !DILocation(line: 230, column: 9, scope: !1109)
!1122 = !DILocation(line: 231, column: 13, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 231, column: 13)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 230, column: 15)
!1125 = !DILocation(line: 231, column: 28, scope: !1123)
!1126 = !DILocation(line: 231, column: 13, scope: !1124)
!1127 = !DILocation(line: 232, column: 21, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 231, column: 34)
!1129 = !DILocation(line: 232, column: 13, scope: !1128)
!1130 = !DILocation(line: 233, column: 9, scope: !1128)
!1131 = !DILocation(line: 234, column: 9, scope: !1124)
!1132 = !DILocation(line: 238, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 238, column: 9)
!1134 = !DILocation(line: 238, column: 24, scope: !1133)
!1135 = !DILocation(line: 238, column: 9, scope: !1109)
!1136 = !DILocation(line: 239, column: 14, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 239, column: 13)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 238, column: 30)
!1139 = !DILocation(line: 239, column: 13, scope: !1138)
!1140 = !DILocation(line: 240, column: 18, scope: !1137)
!1141 = !DILocation(line: 240, column: 13, scope: !1137)
!1142 = !DILocation(line: 241, column: 24, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 241, column: 18)
!1144 = !DILocation(line: 241, column: 43, scope: !1143)
!1145 = !DILocation(line: 241, column: 18, scope: !1137)
!1146 = !DILocation(line: 242, column: 13, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 241, column: 52)
!1148 = !DILocation(line: 244, column: 9, scope: !1147)
!1149 = !DILocation(line: 0, scope: !1137)
!1150 = !DILocation(line: 245, column: 17, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 245, column: 13)
!1152 = !DILocation(line: 245, column: 13, scope: !1138)
!1153 = !DILocation(line: 246, column: 13, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 245, column: 23)
!1155 = !DILocation(line: 247, column: 23, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 247, column: 17)
!1157 = !DILocation(line: 247, column: 20, scope: !1156)
!1158 = !DILocation(line: 247, column: 17, scope: !1154)
!1159 = !DILocation(line: 248, column: 17, scope: !1156)
!1160 = !DILocation(line: 249, column: 9, scope: !1154)
!1161 = !DILocation(line: 250, column: 5, scope: !1138)
!1162 = !DILocation(line: 251, column: 5, scope: !1109)
!1163 = !DILocation(line: 253, column: 5, scope: !1109)
!1164 = !DILocation(line: 254, column: 1, scope: !1109)
!1165 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1166, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !371, !391, !13}
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1183, !1184, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1169 = !DILocalVariable(name: "fp", arg: 1, scope: !1165, file: !3, line: 849, type: !371)
!1170 = !DILocalVariable(name: "mol", arg: 2, scope: !1165, file: !3, line: 849, type: !391)
!1171 = !DILocalVariable(name: "options", arg: 3, scope: !1165, file: !3, line: 849, type: !13)
!1172 = !DILocalVariable(name: "r", scope: !1165, file: !3, line: 863, type: !37)
!1173 = !DILocalVariable(name: "tr", scope: !1165, file: !3, line: 863, type: !37)
!1174 = !DILocalVariable(name: "rn", scope: !1165, file: !3, line: 863, type: !37)
!1175 = !DILocalVariable(name: "a", scope: !1165, file: !3, line: 863, type: !37)
!1176 = !DILocalVariable(name: "ta", scope: !1165, file: !3, line: 863, type: !37)
!1177 = !DILocalVariable(name: "cid", scope: !1165, file: !3, line: 864, type: !14)
!1178 = !DILocalVariable(name: "sp", scope: !1165, file: !3, line: 865, type: !128)
!1179 = !DILocalVariable(name: "res", scope: !1165, file: !3, line: 866, type: !144)
!1180 = !DILocalVariable(name: "ap", scope: !1165, file: !3, line: 867, type: !190)
!1181 = !DILocalVariable(name: "rname", scope: !1165, file: !3, line: 868, type: !1182)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !200)
!1183 = !DILocalVariable(name: "aname", scope: !1165, file: !3, line: 869, type: !1182)
!1184 = !DILocalVariable(name: "rid", scope: !1165, file: !3, line: 870, type: !1185)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 7)
!1188 = !DILocalVariable(name: "loptions", scope: !1165, file: !3, line: 871, type: !375)
!1189 = !DILocalVariable(name: "opt_pqr", scope: !1165, file: !3, line: 872, type: !37)
!1190 = !DILocalVariable(name: "opt_nobocc", scope: !1165, file: !3, line: 873, type: !37)
!1191 = !DILocalVariable(name: "opt_brook", scope: !1165, file: !3, line: 874, type: !37)
!1192 = !DILocalVariable(name: "opt_wwpdb", scope: !1165, file: !3, line: 875, type: !37)
!1193 = !DILocalVariable(name: "opt_tr", scope: !1165, file: !3, line: 876, type: !37)
!1194 = !DILocalVariable(name: "opt_nocid", scope: !1165, file: !3, line: 877, type: !37)
!1195 = !DILocalVariable(name: "opt_allcid", scope: !1165, file: !3, line: 878, type: !37)
!1196 = !DILocalVariable(name: "cidstate", scope: !1165, file: !3, line: 879, type: !343)
!1197 = !DILocation(line: 0, scope: !1165)
!1198 = !DILocation(line: 868, column: 5, scope: !1165)
!1199 = !DILocation(line: 868, column: 10, scope: !1165)
!1200 = !DILocation(line: 869, column: 5, scope: !1165)
!1201 = !DILocation(line: 869, column: 10, scope: !1165)
!1202 = !DILocation(line: 870, column: 5, scope: !1165)
!1203 = !DILocation(line: 870, column: 10, scope: !1165)
!1204 = !DILocation(line: 871, column: 5, scope: !1165)
!1205 = !DILocation(line: 871, column: 10, scope: !1165)
!1206 = !DILocation(line: 881, column: 10, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 881, column: 9)
!1208 = !DILocation(line: 881, column: 9, scope: !1165)
!1209 = !DILocation(line: 882, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 881, column: 15)
!1211 = !DILocation(line: 882, column: 9, scope: !1210)
!1212 = !DILocation(line: 883, column: 9, scope: !1210)
!1213 = !DILocation(line: 885, column: 10, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 885, column: 9)
!1215 = !DILocation(line: 885, column: 9, scope: !1165)
!1216 = !DILocation(line: 886, column: 17, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 885, column: 14)
!1218 = !DILocation(line: 886, column: 9, scope: !1217)
!1219 = !DILocation(line: 887, column: 9, scope: !1217)
!1220 = !DILocation(line: 890, column: 17, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 890, column: 9)
!1222 = !DILocation(line: 890, column: 9, scope: !1165)
!1223 = !DILocation(line: 891, column: 9, scope: !1221)
!1224 = !DILocation(line: 891, column: 19, scope: !1221)
!1225 = !DILocation(line: 893, column: 17, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 892, column: 10)
!1227 = !DILocation(line: 893, column: 9, scope: !1226)
!1228 = !DILocation(line: 894, column: 9, scope: !1226)
!1229 = !DILocation(line: 894, column: 23, scope: !1226)
!1230 = !DILocation(line: 896, column: 22, scope: !1165)
!1231 = !DILocation(line: 896, column: 15, scope: !1165)
!1232 = !DILocation(line: 896, column: 40, scope: !1165)
!1233 = !DILocation(line: 897, column: 25, scope: !1165)
!1234 = !DILocation(line: 897, column: 18, scope: !1165)
!1235 = !DILocation(line: 897, column: 46, scope: !1165)
!1236 = !DILocation(line: 898, column: 24, scope: !1165)
!1237 = !DILocation(line: 898, column: 17, scope: !1165)
!1238 = !DILocation(line: 898, column: 44, scope: !1165)
!1239 = !DILocation(line: 899, column: 24, scope: !1165)
!1240 = !DILocation(line: 899, column: 17, scope: !1165)
!1241 = !DILocation(line: 899, column: 44, scope: !1165)
!1242 = !DILocation(line: 900, column: 21, scope: !1165)
!1243 = !DILocation(line: 900, column: 14, scope: !1165)
!1244 = !DILocation(line: 900, column: 38, scope: !1165)
!1245 = !DILocation(line: 901, column: 24, scope: !1165)
!1246 = !DILocation(line: 901, column: 17, scope: !1165)
!1247 = !DILocation(line: 901, column: 44, scope: !1165)
!1248 = !DILocation(line: 902, column: 25, scope: !1165)
!1249 = !DILocation(line: 902, column: 18, scope: !1165)
!1250 = !DILocation(line: 902, column: 46, scope: !1165)
!1251 = !DILocation(line: 903, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 903, column: 9)
!1253 = !DILocation(line: 903, column: 9, scope: !1165)
!1254 = !DILocation(line: 904, column: 9, scope: !1252)
!1255 = !DILocation(line: 905, column: 16, scope: !1165)
!1256 = !DILocation(line: 911, column: 36, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 911, column: 5)
!1258 = !DILocation(line: 911, column: 5, scope: !1257)
!1259 = !DILocation(line: 920, column: 15, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 911, column: 68)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 911, column: 5)
!1262 = !DILocation(line: 921, column: 29, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 921, column: 9)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 921, column: 9)
!1265 = !{!855, !544, i64 32}
!1266 = !DILocation(line: 921, column: 23, scope: !1263)
!1267 = !DILocation(line: 921, column: 9, scope: !1264)
!1268 = !DILocation(line: 922, column: 23, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 921, column: 53)
!1270 = !DILocation(line: 922, column: 19, scope: !1269)
!1271 = !DILocation(line: 923, column: 20, scope: !1269)
!1272 = !DILocation(line: 923, column: 30, scope: !1269)
!1273 = !DILocation(line: 923, column: 25, scope: !1269)
!1274 = !DILocation(line: 923, column: 45, scope: !1269)
!1275 = !DILocation(line: 923, column: 13, scope: !1269)
!1276 = !DILocation(line: 924, column: 17, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 924, column: 17)
!1278 = !DILocation(line: 924, column: 17, scope: !1269)
!1279 = !DILocation(line: 925, column: 32, scope: !1277)
!1280 = !DILocation(line: 925, column: 17, scope: !1277)
!1281 = !DILocation(line: 926, column: 22, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 926, column: 22)
!1283 = !DILocation(line: 926, column: 22, scope: !1277)
!1284 = !DILocation(line: 927, column: 32, scope: !1282)
!1285 = !DILocation(line: 927, column: 17, scope: !1282)
!1286 = !DILocation(line: 929, column: 24, scope: !1282)
!1287 = !DILocation(line: 929, column: 36, scope: !1282)
!1288 = !DILocation(line: 929, column: 17, scope: !1282)
!1289 = !DILocation(line: 930, column: 34, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 930, column: 13)
!1291 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 930, column: 13)
!1292 = !DILocation(line: 930, column: 27, scope: !1290)
!1293 = !DILocation(line: 930, column: 13, scope: !1291)
!1294 = !DILocation(line: 931, column: 19, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 930, column: 49)
!1296 = !DILocation(line: 932, column: 28, scope: !1295)
!1297 = !{!670, !411, i64 120}
!1298 = !DILocation(line: 932, column: 23, scope: !1295)
!1299 = !DILocation(line: 934, column: 21, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 934, column: 21)
!1301 = !DILocation(line: 934, column: 21, scope: !1295)
!1302 = !DILocation(line: 935, column: 36, scope: !1300)
!1303 = !DILocation(line: 935, column: 47, scope: !1300)
!1304 = !DILocation(line: 935, column: 59, scope: !1300)
!1305 = !DILocation(line: 935, column: 21, scope: !1300)
!1306 = !DILocation(line: 936, column: 26, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 936, column: 26)
!1308 = !DILocation(line: 936, column: 26, scope: !1300)
!1309 = !DILocation(line: 937, column: 36, scope: !1307)
!1310 = !DILocation(line: 937, column: 47, scope: !1307)
!1311 = !DILocation(line: 937, column: 59, scope: !1307)
!1312 = !DILocation(line: 937, column: 21, scope: !1307)
!1313 = !DILocation(line: 939, column: 28, scope: !1307)
!1314 = !DILocation(line: 939, column: 39, scope: !1307)
!1315 = !DILocation(line: 939, column: 21, scope: !1307)
!1316 = !DILocation(line: 941, column: 29, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 941, column: 21)
!1318 = !DILocation(line: 941, column: 22, scope: !1317)
!1319 = !DILocation(line: 941, column: 38, scope: !1317)
!1320 = !DILocation(line: 941, column: 41, scope: !1317)
!1321 = !DILocation(line: 941, column: 21, scope: !1295)
!1322 = !DILocation(line: 948, column: 26, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 941, column: 49)
!1324 = !DILocation(line: 948, column: 38, scope: !1323)
!1325 = !DILocation(line: 948, column: 46, scope: !1323)
!1326 = !DILocation(line: 949, column: 28, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 949, column: 25)
!1328 = !DILocation(line: 949, column: 25, scope: !1323)
!1329 = !DILocation(line: 952, column: 37, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 949, column: 38)
!1331 = !DILocation(line: 952, column: 44, scope: !1330)
!1332 = !DILocation(line: 956, column: 33, scope: !1330)
!1333 = !DILocation(line: 957, column: 37, scope: !1330)
!1334 = !DILocation(line: 957, column: 33, scope: !1330)
!1335 = !DILocation(line: 957, column: 51, scope: !1330)
!1336 = !DILocation(line: 957, column: 47, scope: !1330)
!1337 = !DILocation(line: 957, column: 65, scope: !1330)
!1338 = !DILocation(line: 957, column: 61, scope: !1330)
!1339 = !DILocation(line: 950, column: 25, scope: !1330)
!1340 = !DILocation(line: 958, column: 21, scope: !1330)
!1341 = !DILocation(line: 961, column: 36, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 958, column: 28)
!1343 = !DILocation(line: 961, column: 46, scope: !1342)
!1344 = !DILocation(line: 961, column: 53, scope: !1342)
!1345 = !DILocation(line: 965, column: 33, scope: !1342)
!1346 = !DILocation(line: 966, column: 37, scope: !1342)
!1347 = !DILocation(line: 966, column: 33, scope: !1342)
!1348 = !DILocation(line: 966, column: 51, scope: !1342)
!1349 = !DILocation(line: 966, column: 47, scope: !1342)
!1350 = !DILocation(line: 966, column: 65, scope: !1342)
!1351 = !DILocation(line: 966, column: 61, scope: !1342)
!1352 = !DILocation(line: 959, column: 25, scope: !1342)
!1353 = !DILocation(line: 968, column: 17, scope: !1323)
!1354 = !DILocation(line: 970, column: 28, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 970, column: 25)
!1356 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 968, column: 24)
!1357 = !DILocation(line: 970, column: 25, scope: !1356)
!1358 = !DILocation(line: 973, column: 37, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 970, column: 38)
!1360 = !DILocation(line: 973, column: 44, scope: !1359)
!1361 = !DILocation(line: 973, column: 51, scope: !1359)
!1362 = !DILocation(line: 974, column: 37, scope: !1359)
!1363 = !DILocation(line: 974, column: 33, scope: !1359)
!1364 = !DILocation(line: 974, column: 51, scope: !1359)
!1365 = !DILocation(line: 974, column: 47, scope: !1359)
!1366 = !DILocation(line: 974, column: 65, scope: !1359)
!1367 = !DILocation(line: 974, column: 61, scope: !1359)
!1368 = !DILocation(line: 971, column: 25, scope: !1359)
!1369 = !DILocation(line: 975, column: 21, scope: !1359)
!1370 = !DILocation(line: 978, column: 36, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 975, column: 28)
!1372 = !DILocation(line: 978, column: 46, scope: !1371)
!1373 = !DILocation(line: 978, column: 53, scope: !1371)
!1374 = !DILocation(line: 978, column: 60, scope: !1371)
!1375 = !DILocation(line: 979, column: 37, scope: !1371)
!1376 = !DILocation(line: 979, column: 33, scope: !1371)
!1377 = !DILocation(line: 979, column: 51, scope: !1371)
!1378 = !DILocation(line: 979, column: 47, scope: !1371)
!1379 = !DILocation(line: 979, column: 65, scope: !1371)
!1380 = !DILocation(line: 979, column: 61, scope: !1371)
!1381 = !DILocation(line: 976, column: 25, scope: !1371)
!1382 = !DILocation(line: 982, column: 21, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 982, column: 21)
!1384 = !DILocation(line: 982, column: 21, scope: !1295)
!1385 = !DILocation(line: 985, column: 33, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 982, column: 30)
!1387 = !DILocation(line: 985, column: 47, scope: !1386)
!1388 = !DILocation(line: 984, column: 21, scope: !1386)
!1389 = !DILocation(line: 986, column: 17, scope: !1386)
!1390 = !DILocation(line: 986, column: 29, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 986, column: 28)
!1392 = !DILocation(line: 986, column: 28, scope: !1383)
!1393 = !DILocation(line: 988, column: 33, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 986, column: 41)
!1395 = !DILocation(line: 988, column: 44, scope: !1394)
!1396 = !DILocation(line: 987, column: 21, scope: !1394)
!1397 = !DILocation(line: 989, column: 17, scope: !1394)
!1398 = !DILocation(line: 991, column: 22, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 991, column: 21)
!1400 = !DILocation(line: 991, column: 32, scope: !1399)
!1401 = !DILocation(line: 991, column: 35, scope: !1399)
!1402 = !DILocation(line: 991, column: 46, scope: !1399)
!1403 = !DILocation(line: 991, column: 50, scope: !1399)
!1404 = !DILocation(line: 991, column: 58, scope: !1399)
!1405 = !DILocation(line: 991, column: 62, scope: !1399)
!1406 = !DILocation(line: 991, column: 21, scope: !1295)
!1407 = !DILocation(line: 992, column: 47, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 991, column: 74)
!1409 = !DILocation(line: 992, column: 21, scope: !1408)
!1410 = !DILocation(line: 993, column: 17, scope: !1408)
!1411 = !DILocation(line: 995, column: 17, scope: !1295)
!1412 = !DILocation(line: 997, column: 13, scope: !1295)
!1413 = !DILocation(line: 930, column: 45, scope: !1290)
!1414 = distinct !{!1414, !1293, !1415}
!1415 = !DILocation(line: 997, column: 13, scope: !1291)
!1416 = !DILocation(line: 0, scope: !1257)
!1417 = !DILocation(line: 999, column: 9, scope: !1269)
!1418 = !DILocation(line: 921, column: 43, scope: !1263)
!1419 = !DILocation(line: 921, column: 49, scope: !1263)
!1420 = distinct !{!1420, !1267, !1421}
!1421 = !DILocation(line: 999, column: 9, scope: !1264)
!1422 = !DILocation(line: 911, column: 13, scope: !1257)
!1423 = !DILocation(line: 1001, column: 9, scope: !1260)
!1424 = !DILocation(line: 1007, column: 5, scope: !1260)
!1425 = !DILocation(line: 911, column: 60, scope: !1261)
!1426 = distinct !{!1426, !1258, !1427}
!1427 = !DILocation(line: 1007, column: 5, scope: !1257)
!1428 = !DILocation(line: 1008, column: 5, scope: !1165)
!1429 = !DILocation(line: 1009, column: 1, scope: !1165)
!1430 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1431, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!37, !13, !13, !391}
!1433 = !{!1434, !1435, !1436, !1437}
!1434 = !DILocalVariable(name: "fname", arg: 1, scope: !1430, file: !3, line: 256, type: !13)
!1435 = !DILocalVariable(name: "blockId", arg: 2, scope: !1430, file: !3, line: 256, type: !13)
!1436 = !DILocalVariable(name: "mol", arg: 3, scope: !1430, file: !3, line: 256, type: !391)
!1437 = !DILocalVariable(name: "fp", scope: !1430, file: !3, line: 258, type: !371)
!1438 = !DILocation(line: 0, scope: !1430)
!1439 = !DILocation(line: 260, column: 10, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 260, column: 9)
!1441 = !DILocation(line: 260, column: 9, scope: !1430)
!1442 = !DILocation(line: 261, column: 17, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 260, column: 15)
!1444 = !DILocation(line: 261, column: 9, scope: !1443)
!1445 = !DILocation(line: 262, column: 9, scope: !1443)
!1446 = !DILocation(line: 264, column: 10, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 264, column: 9)
!1448 = !DILocation(line: 264, column: 9, scope: !1430)
!1449 = !DILocation(line: 265, column: 14, scope: !1447)
!1450 = !DILocation(line: 265, column: 9, scope: !1447)
!1451 = !DILocation(line: 266, column: 20, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 266, column: 14)
!1453 = !DILocation(line: 266, column: 39, scope: !1452)
!1454 = !DILocation(line: 266, column: 14, scope: !1447)
!1455 = !DILocation(line: 267, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 266, column: 48)
!1457 = !DILocation(line: 268, column: 9, scope: !1456)
!1458 = !DILocation(line: 0, scope: !1447)
!1459 = !DILocation(line: 270, column: 5, scope: !1430)
!1460 = !DILocation(line: 271, column: 15, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 271, column: 9)
!1462 = !DILocation(line: 271, column: 12, scope: !1461)
!1463 = !DILocation(line: 271, column: 9, scope: !1430)
!1464 = !DILocation(line: 272, column: 9, scope: !1461)
!1465 = !DILocation(line: 273, column: 5, scope: !1430)
!1466 = !DILocation(line: 274, column: 1, scope: !1430)
!1467 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1468, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !371, !13, !391}
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1471 = !DILocalVariable(name: "fp", arg: 1, scope: !1467, file: !3, line: 1381, type: !371)
!1472 = !DILocalVariable(name: "blockId", arg: 2, scope: !1467, file: !3, line: 1381, type: !13)
!1473 = !DILocalVariable(name: "mol", arg: 3, scope: !1467, file: !3, line: 1381, type: !391)
!1474 = !DILocalVariable(name: "r", scope: !1467, file: !3, line: 1383, type: !37)
!1475 = !DILocalVariable(name: "tr", scope: !1467, file: !3, line: 1383, type: !37)
!1476 = !DILocalVariable(name: "a", scope: !1467, file: !3, line: 1383, type: !37)
!1477 = !DILocalVariable(name: "ta", scope: !1467, file: !3, line: 1383, type: !37)
!1478 = !DILocalVariable(name: "strandnum", scope: !1467, file: !3, line: 1383, type: !37)
!1479 = !DILocalVariable(name: "cid", scope: !1467, file: !3, line: 1384, type: !14)
!1480 = !DILocalVariable(name: "sp", scope: !1467, file: !3, line: 1385, type: !128)
!1481 = !DILocalVariable(name: "res", scope: !1467, file: !3, line: 1386, type: !144)
!1482 = !DILocalVariable(name: "ap", scope: !1467, file: !3, line: 1387, type: !190)
!1483 = !DILocation(line: 0, scope: !1467)
!1484 = !DILocation(line: 1389, column: 5, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1389, column: 5)
!1486 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1389, column: 5)
!1487 = !DILocation(line: 1389, column: 5, scope: !1486)
!1488 = !DILocation(line: 1390, column: 5, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 1390, column: 5)
!1490 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1390, column: 5)
!1491 = !DILocation(line: 1390, column: 5, scope: !1490)
!1492 = !DILocation(line: 1392, column: 17, scope: !1467)
!1493 = !{!848, !544, i64 96}
!1494 = !DILocation(line: 1392, column: 28, scope: !1467)
!1495 = !DILocation(line: 1392, column: 11, scope: !1467)
!1496 = !DILocation(line: 1396, column: 5, scope: !1467)
!1497 = !DILocation(line: 1397, column: 5, scope: !1467)
!1498 = !DILocation(line: 1398, column: 5, scope: !1467)
!1499 = !DILocation(line: 1399, column: 5, scope: !1467)
!1500 = !DILocation(line: 1400, column: 5, scope: !1467)
!1501 = !DILocation(line: 1401, column: 5, scope: !1467)
!1502 = !DILocation(line: 1402, column: 5, scope: !1467)
!1503 = !DILocation(line: 1403, column: 5, scope: !1467)
!1504 = !DILocation(line: 1404, column: 5, scope: !1467)
!1505 = !DILocation(line: 1407, column: 36, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1407, column: 5)
!1507 = !DILocation(line: 1407, column: 5, scope: !1506)
!1508 = !DILocation(line: 1408, column: 18, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1407, column: 68)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 1407, column: 5)
!1511 = !DILocation(line: 1409, column: 29, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 1409, column: 9)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1409, column: 9)
!1514 = !DILocation(line: 1409, column: 23, scope: !1512)
!1515 = !DILocation(line: 1409, column: 9, scope: !1513)
!1516 = !DILocation(line: 1410, column: 23, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 1409, column: 53)
!1518 = !DILocation(line: 1410, column: 19, scope: !1517)
!1519 = !DILocation(line: 1411, column: 34, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 1411, column: 13)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 1411, column: 13)
!1522 = !DILocation(line: 1411, column: 27, scope: !1520)
!1523 = !DILocation(line: 1411, column: 13, scope: !1521)
!1524 = !DILocation(line: 1412, column: 19, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 1411, column: 49)
!1526 = !DILocation(line: 1413, column: 28, scope: !1525)
!1527 = !DILocation(line: 1413, column: 23, scope: !1525)
!1528 = !DILocation(line: 1423, column: 33, scope: !1525)
!1529 = !DILocation(line: 1423, column: 50, scope: !1525)
!1530 = !DILocation(line: 1423, column: 61, scope: !1525)
!1531 = !DILocation(line: 1423, column: 69, scope: !1525)
!1532 = !DILocation(line: 1424, column: 29, scope: !1525)
!1533 = !DILocation(line: 1424, column: 25, scope: !1525)
!1534 = !DILocation(line: 1424, column: 43, scope: !1525)
!1535 = !DILocation(line: 1424, column: 39, scope: !1525)
!1536 = !DILocation(line: 1424, column: 57, scope: !1525)
!1537 = !DILocation(line: 1424, column: 53, scope: !1525)
!1538 = !DILocation(line: 1425, column: 38, scope: !1525)
!1539 = !DILocation(line: 1421, column: 17, scope: !1525)
!1540 = !DILocation(line: 1426, column: 13, scope: !1525)
!1541 = !DILocation(line: 1411, column: 45, scope: !1520)
!1542 = distinct !{!1542, !1523, !1543}
!1543 = !DILocation(line: 1426, column: 13, scope: !1521)
!1544 = !DILocation(line: 0, scope: !1506)
!1545 = !DILocation(line: 1427, column: 9, scope: !1517)
!1546 = !DILocation(line: 1409, column: 43, scope: !1512)
!1547 = !DILocation(line: 1409, column: 49, scope: !1512)
!1548 = distinct !{!1548, !1515, !1549}
!1549 = !DILocation(line: 1427, column: 9, scope: !1513)
!1550 = !DILocation(line: 1407, column: 13, scope: !1506)
!1551 = !DILocation(line: 1428, column: 18, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1428, column: 13)
!1553 = !DILocation(line: 1428, column: 29, scope: !1552)
!1554 = !DILocation(line: 1428, column: 13, scope: !1509)
!1555 = !DILocation(line: 1429, column: 16, scope: !1552)
!1556 = !DILocation(line: 1429, column: 13, scope: !1552)
!1557 = !DILocation(line: 1430, column: 5, scope: !1509)
!1558 = !DILocation(line: 1407, column: 60, scope: !1510)
!1559 = distinct !{!1559, !1507, !1560}
!1560 = !DILocation(line: 1430, column: 5, scope: !1506)
!1561 = !DILocation(line: 1431, column: 1, scope: !1467)
!1562 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1563, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!37, !13, !391}
!1565 = !{!1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582}
!1566 = !DILocalVariable(name: "fname", arg: 1, scope: !1562, file: !3, line: 276, type: !13)
!1567 = !DILocalVariable(name: "mol", arg: 2, scope: !1562, file: !3, line: 276, type: !391)
!1568 = !DILocalVariable(name: "fp", scope: !1562, file: !3, line: 278, type: !371)
!1569 = !DILocalVariable(name: "sp", scope: !1562, file: !3, line: 279, type: !128)
!1570 = !DILocalVariable(name: "res", scope: !1562, file: !3, line: 280, type: !144)
!1571 = !DILocalVariable(name: "a", scope: !1562, file: !3, line: 281, type: !37)
!1572 = !DILocalVariable(name: "ta", scope: !1562, file: !3, line: 281, type: !37)
!1573 = !DILocalVariable(name: "ai", scope: !1562, file: !3, line: 281, type: !37)
!1574 = !DILocalVariable(name: "aj", scope: !1562, file: !3, line: 281, type: !37)
!1575 = !DILocalVariable(name: "r", scope: !1562, file: !3, line: 281, type: !37)
!1576 = !DILocalVariable(name: "rj", scope: !1562, file: !3, line: 281, type: !37)
!1577 = !DILocalVariable(name: "tr", scope: !1562, file: !3, line: 281, type: !37)
!1578 = !DILocalVariable(name: "rval", scope: !1562, file: !3, line: 282, type: !37)
!1579 = !DILocalVariable(name: "aoff", scope: !1562, file: !3, line: 283, type: !109)
!1580 = !DILocalVariable(name: "b", scope: !1562, file: !3, line: 284, type: !37)
!1581 = !DILocalVariable(name: "ebp", scope: !1562, file: !3, line: 285, type: !160)
!1582 = !DILabel(scope: !1562, name: "clean_up", file: !3, line: 338)
!1583 = !DILocation(line: 0, scope: !1562)
!1584 = !DILocation(line: 287, column: 10, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 287, column: 9)
!1586 = !DILocation(line: 287, column: 9, scope: !1562)
!1587 = !DILocation(line: 288, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 287, column: 15)
!1589 = !DILocation(line: 288, column: 9, scope: !1588)
!1590 = !DILocation(line: 289, column: 9, scope: !1588)
!1591 = !DILocation(line: 291, column: 15, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 291, column: 9)
!1593 = !DILocation(line: 291, column: 34, scope: !1592)
!1594 = !DILocation(line: 291, column: 9, scope: !1562)
!1595 = !DILocation(line: 292, column: 9, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 291, column: 43)
!1597 = !DILocation(line: 293, column: 9, scope: !1596)
!1598 = !DILocation(line: 296, column: 28, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 296, column: 5)
!1600 = !DILocation(line: 296, column: 5, scope: !1599)
!1601 = !DILocation(line: 297, column: 19, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 296, column: 5)
!1603 = !DILocation(line: 297, column: 12, scope: !1602)
!1604 = !DILocation(line: 297, column: 9, scope: !1602)
!1605 = !DILocation(line: 296, column: 52, scope: !1602)
!1606 = distinct !{!1606, !1600, !1607}
!1607 = !DILocation(line: 297, column: 19, scope: !1599)
!1608 = !DILocation(line: 0, scope: !1599)
!1609 = !DILocation(line: 299, column: 32, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 299, column: 9)
!1611 = !DILocation(line: 299, column: 35, scope: !1610)
!1612 = !DILocation(line: 299, column: 25, scope: !1610)
!1613 = !DILocation(line: 299, column: 17, scope: !1610)
!1614 = !DILocation(line: 299, column: 51, scope: !1610)
!1615 = !DILocation(line: 299, column: 9, scope: !1562)
!1616 = !DILocation(line: 300, column: 9, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 299, column: 60)
!1618 = !DILocation(line: 302, column: 9, scope: !1617)
!1619 = !DILocation(line: 305, column: 36, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 305, column: 5)
!1621 = !DILocation(line: 305, column: 5, scope: !1620)
!1622 = !DILocation(line: 306, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 305, column: 68)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 305, column: 5)
!1625 = !DILocation(line: 306, column: 18, scope: !1623)
!1626 = !DILocation(line: 307, column: 17, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 307, column: 13)
!1628 = !DILocation(line: 307, column: 29, scope: !1627)
!1629 = !DILocation(line: 307, column: 13, scope: !1623)
!1630 = !DILocation(line: 308, column: 23, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 307, column: 34)
!1632 = !DILocation(line: 308, column: 19, scope: !1631)
!1633 = !DILocation(line: 308, column: 38, scope: !1631)
!1634 = !DILocation(line: 308, column: 16, scope: !1631)
!1635 = !DILocation(line: 309, column: 18, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 309, column: 13)
!1637 = !DILocation(line: 309, column: 33, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 309, column: 13)
!1639 = !DILocation(line: 309, column: 27, scope: !1638)
!1640 = !DILocation(line: 309, column: 13, scope: !1636)
!1641 = !DILocation(line: 310, column: 25, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 309, column: 51)
!1643 = !DILocation(line: 310, column: 17, scope: !1642)
!1644 = !DILocation(line: 310, column: 30, scope: !1642)
!1645 = !DILocation(line: 311, column: 27, scope: !1642)
!1646 = !DILocation(line: 311, column: 23, scope: !1642)
!1647 = !DILocation(line: 311, column: 42, scope: !1642)
!1648 = !DILocation(line: 311, column: 20, scope: !1642)
!1649 = !DILocation(line: 312, column: 13, scope: !1642)
!1650 = !DILocation(line: 309, column: 47, scope: !1638)
!1651 = distinct !{!1651, !1640, !1652}
!1652 = !DILocation(line: 312, column: 13, scope: !1636)
!1653 = !DILocation(line: 0, scope: !1631)
!1654 = !DILocation(line: 313, column: 23, scope: !1631)
!1655 = !DILocation(line: 313, column: 16, scope: !1631)
!1656 = !DILocation(line: 314, column: 9, scope: !1631)
!1657 = !DILocation(line: 0, scope: !1620)
!1658 = !DILocation(line: 315, column: 5, scope: !1623)
!1659 = !DILocation(line: 305, column: 60, scope: !1624)
!1660 = distinct !{!1660, !1621, !1661}
!1661 = !DILocation(line: 315, column: 5, scope: !1620)
!1662 = !DILocation(line: 317, column: 28, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 317, column: 5)
!1664 = !DILocation(line: 317, column: 5, scope: !1663)
!1665 = !DILocation(line: 318, column: 14, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 318, column: 9)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 317, column: 60)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 317, column: 5)
!1669 = !DILocation(line: 318, column: 29, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 318, column: 9)
!1671 = !DILocation(line: 318, column: 23, scope: !1670)
!1672 = !DILocation(line: 318, column: 9, scope: !1666)
!1673 = !DILocation(line: 319, column: 23, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 318, column: 47)
!1675 = !DILocation(line: 319, column: 19, scope: !1674)
!1676 = !DILocation(line: 320, column: 24, scope: !1674)
!1677 = !DILocation(line: 320, column: 17, scope: !1674)
!1678 = !DILocation(line: 321, column: 34, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 321, column: 13)
!1680 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 321, column: 13)
!1681 = !{!670, !544, i64 72}
!1682 = !DILocation(line: 321, column: 27, scope: !1679)
!1683 = !DILocation(line: 321, column: 13, scope: !1680)
!1684 = !DILocation(line: 323, column: 30, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 321, column: 52)
!1686 = !{!670, !411, i64 80}
!1687 = !DILocation(line: 323, column: 25, scope: !1685)
!1688 = !DILocation(line: 323, column: 47, scope: !1685)
!1689 = !DILocation(line: 324, column: 30, scope: !1685)
!1690 = !DILocation(line: 324, column: 25, scope: !1685)
!1691 = !DILocation(line: 324, column: 47, scope: !1685)
!1692 = !DILocation(line: 322, column: 17, scope: !1685)
!1693 = !DILocation(line: 325, column: 13, scope: !1685)
!1694 = !DILocation(line: 321, column: 48, scope: !1679)
!1695 = distinct !{!1695, !1683, !1696}
!1696 = !DILocation(line: 325, column: 13, scope: !1680)
!1697 = !DILocation(line: 326, column: 29, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 326, column: 13)
!1699 = !{!670, !411, i64 64}
!1700 = !DILocation(line: 326, column: 13, scope: !1698)
!1701 = !DILocation(line: 327, column: 32, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 327, column: 21)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 326, column: 66)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 326, column: 13)
!1705 = !{!1706, !544, i64 12}
!1706 = !{!"extbond_t", !411, i64 0, !544, i64 8, !544, i64 12, !544, i64 16}
!1707 = !DILocation(line: 327, column: 45, scope: !1702)
!1708 = !DILocation(line: 327, column: 41, scope: !1702)
!1709 = !DILocation(line: 327, column: 21, scope: !1703)
!1710 = !DILocation(line: 328, column: 21, scope: !1702)
!1711 = !DILocation(line: 329, column: 30, scope: !1703)
!1712 = !DILocation(line: 329, column: 22, scope: !1703)
!1713 = !DILocation(line: 330, column: 30, scope: !1703)
!1714 = !DILocation(line: 330, column: 35, scope: !1703)
!1715 = !DILocation(line: 330, column: 22, scope: !1703)
!1716 = !DILocation(line: 332, column: 30, scope: !1703)
!1717 = !{!1706, !544, i64 8}
!1718 = !DILocation(line: 332, column: 38, scope: !1703)
!1719 = !DILocation(line: 332, column: 49, scope: !1703)
!1720 = !{!1706, !544, i64 16}
!1721 = !DILocation(line: 332, column: 58, scope: !1703)
!1722 = !DILocation(line: 331, column: 17, scope: !1703)
!1723 = !DILocation(line: 333, column: 13, scope: !1703)
!1724 = !DILocation(line: 326, column: 57, scope: !1704)
!1725 = !{!1706, !411, i64 0}
!1726 = distinct !{!1726, !1700, !1727}
!1727 = !DILocation(line: 333, column: 13, scope: !1698)
!1728 = !DILocation(line: 334, column: 9, scope: !1674)
!1729 = !DILocation(line: 318, column: 43, scope: !1670)
!1730 = distinct !{!1730, !1672, !1731}
!1731 = !DILocation(line: 334, column: 9, scope: !1666)
!1732 = !DILocation(line: 335, column: 19, scope: !1667)
!1733 = !DILocation(line: 335, column: 12, scope: !1667)
!1734 = !DILocation(line: 336, column: 5, scope: !1667)
!1735 = !DILocation(line: 317, column: 52, scope: !1668)
!1736 = distinct !{!1736, !1664, !1737}
!1737 = !DILocation(line: 336, column: 5, scope: !1663)
!1738 = !DILocation(line: 338, column: 3, scope: !1562)
!1739 = !DILocation(line: 339, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 339, column: 9)
!1741 = !DILocation(line: 339, column: 9, scope: !1562)
!1742 = !DILocation(line: 340, column: 14, scope: !1740)
!1743 = !DILocation(line: 340, column: 9, scope: !1740)
!1744 = !DILocation(line: 342, column: 5, scope: !1562)
!1745 = !DILocation(line: 344, column: 5, scope: !1562)
!1746 = !DILocation(line: 345, column: 1, scope: !1562)
!1747 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !1748, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1750)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!37, !13, !391, !13, !13}
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768}
!1751 = !DILocalVariable(name: "fname", arg: 1, scope: !1747, file: !3, line: 347, type: !13)
!1752 = !DILocalVariable(name: "mol", arg: 2, scope: !1747, file: !3, line: 347, type: !391)
!1753 = !DILocalVariable(name: "aexp1", arg: 3, scope: !1747, file: !3, line: 347, type: !13)
!1754 = !DILocalVariable(name: "aexp2", arg: 4, scope: !1747, file: !3, line: 347, type: !13)
!1755 = !DILocalVariable(name: "fp", scope: !1747, file: !3, line: 349, type: !371)
!1756 = !DILocalVariable(name: "sp1", scope: !1747, file: !3, line: 350, type: !128)
!1757 = !DILocalVariable(name: "res1", scope: !1747, file: !3, line: 351, type: !144)
!1758 = !DILocalVariable(name: "res2", scope: !1747, file: !3, line: 351, type: !144)
!1759 = !DILocalVariable(name: "ap1", scope: !1747, file: !3, line: 352, type: !190)
!1760 = !DILocalVariable(name: "ap2", scope: !1747, file: !3, line: 352, type: !190)
!1761 = !DILocalVariable(name: "tr", scope: !1747, file: !3, line: 353, type: !37)
!1762 = !DILocalVariable(name: "r1", scope: !1747, file: !3, line: 353, type: !37)
!1763 = !DILocalVariable(name: "r2", scope: !1747, file: !3, line: 353, type: !37)
!1764 = !DILocalVariable(name: "a1", scope: !1747, file: !3, line: 353, type: !37)
!1765 = !DILocalVariable(name: "a2", scope: !1747, file: !3, line: 353, type: !37)
!1766 = !DILocalVariable(name: "res", scope: !1747, file: !3, line: 354, type: !143)
!1767 = !DILocalVariable(name: "cnt", scope: !1747, file: !3, line: 355, type: !37)
!1768 = !DILabel(scope: !1747, name: "clean_up", file: !3, line: 420)
!1769 = !DILocation(line: 0, scope: !1747)
!1770 = !DILocation(line: 357, column: 10, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 357, column: 9)
!1772 = !DILocation(line: 357, column: 9, scope: !1747)
!1773 = !DILocation(line: 358, column: 17, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 357, column: 15)
!1775 = !DILocation(line: 358, column: 9, scope: !1774)
!1776 = !DILocation(line: 359, column: 9, scope: !1774)
!1777 = !DILocation(line: 362, column: 5, scope: !1747)
!1778 = !DILocation(line: 363, column: 21, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 363, column: 5)
!1780 = !DILocation(line: 363, column: 5, scope: !1779)
!1781 = !DILocation(line: 364, column: 14, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 363, column: 56)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 363, column: 5)
!1784 = !DILocation(line: 364, column: 21, scope: !1782)
!1785 = !{!855, !544, i64 12}
!1786 = !DILocation(line: 365, column: 30, scope: !1782)
!1787 = !DILocation(line: 365, column: 37, scope: !1782)
!1788 = !DILocation(line: 365, column: 24, scope: !1782)
!1789 = !DILocation(line: 365, column: 14, scope: !1782)
!1790 = !DILocation(line: 365, column: 21, scope: !1782)
!1791 = !DILocation(line: 366, column: 32, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 366, column: 9)
!1793 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 366, column: 9)
!1794 = !DILocation(line: 366, column: 25, scope: !1792)
!1795 = !DILocation(line: 366, column: 9, scope: !1793)
!1796 = !DILocation(line: 367, column: 25, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 366, column: 51)
!1798 = !DILocation(line: 367, column: 20, scope: !1797)
!1799 = !DILocation(line: 368, column: 19, scope: !1797)
!1800 = !DILocation(line: 368, column: 26, scope: !1797)
!1801 = !{!670, !544, i64 40}
!1802 = !DILocation(line: 369, column: 36, scope: !1797)
!1803 = !DILocation(line: 369, column: 43, scope: !1797)
!1804 = !DILocation(line: 369, column: 29, scope: !1797)
!1805 = !DILocation(line: 369, column: 19, scope: !1797)
!1806 = !DILocation(line: 369, column: 26, scope: !1797)
!1807 = !DILocation(line: 370, column: 38, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 370, column: 13)
!1809 = !DILocation(line: 370, column: 58, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 370, column: 13)
!1811 = !DILocation(line: 370, column: 50, scope: !1810)
!1812 = !DILocation(line: 370, column: 13, scope: !1808)
!1813 = !DILocation(line: 372, column: 22, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 371, column: 31)
!1815 = !DILocation(line: 372, column: 29, scope: !1814)
!1816 = !DILocation(line: 373, column: 38, scope: !1814)
!1817 = !DILocation(line: 373, column: 45, scope: !1814)
!1818 = !DILocation(line: 373, column: 32, scope: !1814)
!1819 = !DILocation(line: 373, column: 22, scope: !1814)
!1820 = !DILocation(line: 373, column: 29, scope: !1814)
!1821 = !DILocation(line: 374, column: 13, scope: !1814)
!1822 = !DILocation(line: 371, column: 20, scope: !1810)
!1823 = !DILocation(line: 371, column: 27, scope: !1810)
!1824 = distinct !{!1824, !1812, !1825}
!1825 = !DILocation(line: 374, column: 13, scope: !1808)
!1826 = !DILocation(line: 375, column: 9, scope: !1797)
!1827 = !DILocation(line: 366, column: 47, scope: !1792)
!1828 = distinct !{!1828, !1795, !1829}
!1829 = !DILocation(line: 375, column: 9, scope: !1793)
!1830 = !DILocation(line: 376, column: 5, scope: !1782)
!1831 = !DILocation(line: 363, column: 48, scope: !1783)
!1832 = distinct !{!1832, !1780, !1833}
!1833 = !DILocation(line: 376, column: 5, scope: !1779)
!1834 = !DILocation(line: 377, column: 5, scope: !1747)
!1835 = !DILocation(line: 379, column: 29, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 379, column: 5)
!1837 = !DILocation(line: 379, column: 5, scope: !1836)
!1838 = !DILocation(line: 380, column: 20, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 379, column: 5)
!1840 = !DILocation(line: 380, column: 12, scope: !1839)
!1841 = !DILocation(line: 380, column: 9, scope: !1839)
!1842 = !DILocation(line: 379, column: 56, scope: !1839)
!1843 = distinct !{!1843, !1837, !1844}
!1844 = !DILocation(line: 380, column: 20, scope: !1836)
!1845 = !DILocation(line: 0, scope: !1836)
!1846 = !DILocation(line: 381, column: 38, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 381, column: 9)
!1848 = !DILocation(line: 381, column: 41, scope: !1847)
!1849 = !DILocation(line: 381, column: 31, scope: !1847)
!1850 = !DILocation(line: 381, column: 16, scope: !1847)
!1851 = !DILocation(line: 382, column: 9, scope: !1847)
!1852 = !DILocation(line: 381, column: 9, scope: !1747)
!1853 = !DILocation(line: 383, column: 17, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 382, column: 18)
!1855 = !DILocation(line: 383, column: 9, scope: !1854)
!1856 = !DILocation(line: 384, column: 9, scope: !1854)
!1857 = !DILocation(line: 386, column: 29, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 386, column: 5)
!1859 = !DILocation(line: 386, column: 5, scope: !1858)
!1860 = !DILocation(line: 387, column: 14, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 387, column: 9)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 386, column: 64)
!1863 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 386, column: 5)
!1864 = !DILocation(line: 387, column: 32, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 387, column: 9)
!1866 = !DILocation(line: 387, column: 25, scope: !1865)
!1867 = !DILocation(line: 387, column: 9, scope: !1861)
!1868 = !DILocation(line: 388, column: 30, scope: !1865)
!1869 = !DILocation(line: 388, column: 25, scope: !1865)
!1870 = !DILocation(line: 388, column: 19, scope: !1865)
!1871 = !DILocation(line: 388, column: 13, scope: !1865)
!1872 = !DILocation(line: 388, column: 23, scope: !1865)
!1873 = !DILocation(line: 387, column: 47, scope: !1865)
!1874 = distinct !{!1874, !1867, !1875}
!1875 = !DILocation(line: 388, column: 43, scope: !1861)
!1876 = !DILocation(line: 389, column: 5, scope: !1862)
!1877 = !DILocation(line: 386, column: 56, scope: !1863)
!1878 = distinct !{!1878, !1859, !1879}
!1879 = !DILocation(line: 389, column: 5, scope: !1858)
!1880 = !DILocation(line: 391, column: 15, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 391, column: 9)
!1882 = !DILocation(line: 391, column: 34, scope: !1881)
!1883 = !DILocation(line: 391, column: 9, scope: !1747)
!1884 = !DILocation(line: 392, column: 17, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 391, column: 43)
!1886 = !DILocation(line: 392, column: 9, scope: !1885)
!1887 = !DILocation(line: 393, column: 9, scope: !1885)
!1888 = !DILocation(line: 396, column: 10, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 396, column: 5)
!1890 = !DILocation(line: 396, column: 30, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 396, column: 5)
!1892 = !DILocation(line: 396, column: 5, scope: !1889)
!1893 = !DILocation(line: 397, column: 16, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 396, column: 42)
!1895 = !DILocation(line: 398, column: 33, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 398, column: 9)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 398, column: 9)
!1898 = !DILocation(line: 398, column: 25, scope: !1896)
!1899 = !DILocation(line: 398, column: 9, scope: !1897)
!1900 = !DILocation(line: 399, column: 26, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 398, column: 49)
!1902 = !DILocation(line: 399, column: 20, scope: !1901)
!1903 = !DILocation(line: 400, column: 36, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 400, column: 17)
!1905 = !DILocation(line: 400, column: 29, scope: !1904)
!1906 = !DILocation(line: 400, column: 17, scope: !1901)
!1907 = !DILocation(line: 401, column: 33, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 401, column: 17)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 401, column: 17)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 400, column: 44)
!1911 = !DILocation(line: 401, column: 17, scope: !1909)
!1912 = !DILocation(line: 402, column: 28, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 401, column: 45)
!1914 = !DILocation(line: 403, column: 45, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 403, column: 21)
!1916 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 403, column: 21)
!1917 = !DILocation(line: 403, column: 37, scope: !1915)
!1918 = !DILocation(line: 403, column: 21, scope: !1916)
!1919 = !DILocation(line: 404, column: 38, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 403, column: 61)
!1921 = !DILocation(line: 404, column: 32, scope: !1920)
!1922 = !DILocation(line: 405, column: 46, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 405, column: 29)
!1924 = !DILocation(line: 405, column: 39, scope: !1923)
!1925 = !DILocation(line: 405, column: 29, scope: !1920)
!1926 = !DILocation(line: 408, column: 40, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 405, column: 54)
!1928 = !DILocation(line: 408, column: 51, scope: !1927)
!1929 = !DILocation(line: 409, column: 42, scope: !1927)
!1930 = !DILocation(line: 409, column: 57, scope: !1927)
!1931 = !DILocation(line: 410, column: 43, scope: !1927)
!1932 = !DILocation(line: 410, column: 59, scope: !1927)
!1933 = !DILocation(line: 411, column: 37, scope: !1927)
!1934 = !DILocation(line: 406, column: 29, scope: !1927)
!1935 = !DILocation(line: 412, column: 32, scope: !1927)
!1936 = !DILocation(line: 413, column: 25, scope: !1927)
!1937 = !DILocation(line: 0, scope: !1889)
!1938 = !DILocation(line: 414, column: 21, scope: !1920)
!1939 = !DILocation(line: 403, column: 57, scope: !1915)
!1940 = distinct !{!1940, !1918, !1941}
!1941 = !DILocation(line: 414, column: 21, scope: !1916)
!1942 = !DILocation(line: 415, column: 17, scope: !1913)
!1943 = !DILocation(line: 401, column: 41, scope: !1908)
!1944 = distinct !{!1944, !1911, !1945}
!1945 = !DILocation(line: 415, column: 17, scope: !1909)
!1946 = !DILocation(line: 396, column: 14, scope: !1889)
!1947 = !DILocation(line: 416, column: 13, scope: !1910)
!1948 = !DILocation(line: 417, column: 9, scope: !1901)
!1949 = !DILocation(line: 398, column: 45, scope: !1896)
!1950 = distinct !{!1950, !1899, !1951}
!1951 = !DILocation(line: 417, column: 9, scope: !1897)
!1952 = !DILocation(line: 418, column: 5, scope: !1894)
!1953 = !DILocation(line: 396, column: 38, scope: !1891)
!1954 = distinct !{!1954, !1892, !1955}
!1955 = !DILocation(line: 418, column: 5, scope: !1889)
!1956 = !DILocation(line: 420, column: 3, scope: !1747)
!1957 = !DILocation(line: 421, column: 9, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 421, column: 9)
!1959 = !DILocation(line: 421, column: 9, scope: !1747)
!1960 = !DILocation(line: 422, column: 14, scope: !1958)
!1961 = !DILocation(line: 422, column: 9, scope: !1958)
!1962 = !DILocation(line: 424, column: 5, scope: !1747)
!1963 = !DILocation(line: 425, column: 1, scope: !1747)
!1964 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !1965, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!10, !190, !190}
!1967 = !{!1968, !1969, !1970, !1971, !1972}
!1968 = !DILocalVariable(name: "ap1", arg: 1, scope: !1964, file: !3, line: 839, type: !190)
!1969 = !DILocalVariable(name: "ap2", arg: 2, scope: !1964, file: !3, line: 839, type: !190)
!1970 = !DILocalVariable(name: "dx", scope: !1964, file: !3, line: 841, type: !10)
!1971 = !DILocalVariable(name: "dy", scope: !1964, file: !3, line: 841, type: !10)
!1972 = !DILocalVariable(name: "dz", scope: !1964, file: !3, line: 841, type: !10)
!1973 = !DILocation(line: 0, scope: !1964)
!1974 = !DILocation(line: 843, column: 15, scope: !1964)
!1975 = !DILocation(line: 843, column: 10, scope: !1964)
!1976 = !DILocation(line: 843, column: 31, scope: !1964)
!1977 = !DILocation(line: 843, column: 26, scope: !1964)
!1978 = !DILocation(line: 843, column: 24, scope: !1964)
!1979 = !DILocation(line: 844, column: 15, scope: !1964)
!1980 = !DILocation(line: 844, column: 10, scope: !1964)
!1981 = !DILocation(line: 844, column: 31, scope: !1964)
!1982 = !DILocation(line: 844, column: 26, scope: !1964)
!1983 = !DILocation(line: 844, column: 24, scope: !1964)
!1984 = !DILocation(line: 845, column: 15, scope: !1964)
!1985 = !DILocation(line: 845, column: 10, scope: !1964)
!1986 = !DILocation(line: 845, column: 31, scope: !1964)
!1987 = !DILocation(line: 845, column: 26, scope: !1964)
!1988 = !DILocation(line: 845, column: 24, scope: !1964)
!1989 = !DILocation(line: 846, column: 21, scope: !1964)
!1990 = !DILocation(line: 846, column: 31, scope: !1964)
!1991 = !DILocation(line: 846, column: 26, scope: !1964)
!1992 = !DILocation(line: 846, column: 41, scope: !1964)
!1993 = !DILocation(line: 846, column: 36, scope: !1964)
!1994 = !DILocation(line: 846, column: 13, scope: !1964)
!1995 = !DILocation(line: 846, column: 5, scope: !1964)
!1996 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !1997, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2001)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!37, !13, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !184)
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008}
!2002 = !DILocalVariable(name: "fname", arg: 1, scope: !1996, file: !3, line: 427, type: !13)
!2003 = !DILocalVariable(name: "mat", arg: 2, scope: !1996, file: !3, line: 427, type: !1999)
!2004 = !DILocalVariable(name: "fp", scope: !1996, file: !3, line: 429, type: !371)
!2005 = !DILocalVariable(name: "i", scope: !1996, file: !3, line: 430, type: !37)
!2006 = !DILocalVariable(name: "j", scope: !1996, file: !3, line: 430, type: !37)
!2007 = !DILocalVariable(name: "err", scope: !1996, file: !3, line: 431, type: !37)
!2008 = !DILabel(scope: !1996, name: "CLEAN_UP", file: !3, line: 451)
!2009 = !DILocation(line: 0, scope: !1996)
!2010 = !DILocation(line: 433, column: 15, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 433, column: 9)
!2012 = !DILocation(line: 433, column: 23, scope: !2011)
!2013 = !DILocation(line: 433, column: 26, scope: !2011)
!2014 = !DILocation(line: 433, column: 33, scope: !2011)
!2015 = !DILocation(line: 433, column: 9, scope: !1996)
!2016 = !DILocation(line: 434, column: 17, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 433, column: 42)
!2018 = !DILocation(line: 434, column: 9, scope: !2017)
!2019 = !DILocation(line: 436, column: 9, scope: !2017)
!2020 = !DILocation(line: 437, column: 17, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 437, column: 16)
!2022 = !DILocation(line: 437, column: 16, scope: !2011)
!2023 = !DILocation(line: 438, column: 14, scope: !2021)
!2024 = !DILocation(line: 438, column: 9, scope: !2021)
!2025 = !DILocation(line: 439, column: 20, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 439, column: 14)
!2027 = !DILocation(line: 439, column: 39, scope: !2026)
!2028 = !DILocation(line: 439, column: 14, scope: !2021)
!2029 = !DILocation(line: 440, column: 17, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 439, column: 48)
!2031 = !DILocation(line: 440, column: 9, scope: !2030)
!2032 = !DILocation(line: 442, column: 9, scope: !2030)
!2033 = !DILocation(line: 0, scope: !2021)
!2034 = !DILocation(line: 445, column: 5, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 445, column: 5)
!2036 = !DILocation(line: 446, column: 9, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 446, column: 9)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 445, column: 29)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 445, column: 5)
!2040 = !DILocation(line: 447, column: 32, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 446, column: 9)
!2042 = !DILocation(line: 447, column: 13, scope: !2041)
!2043 = !DILocation(line: 446, column: 29, scope: !2041)
!2044 = !DILocation(line: 446, column: 23, scope: !2041)
!2045 = distinct !{!2045, !2036, !2046}
!2046 = !DILocation(line: 447, column: 41, scope: !2037)
!2047 = !DILocation(line: 448, column: 9, scope: !2038)
!2048 = !DILocation(line: 449, column: 5, scope: !2038)
!2049 = !DILocation(line: 445, column: 25, scope: !2039)
!2050 = !DILocation(line: 445, column: 19, scope: !2039)
!2051 = distinct !{!2051, !2034, !2052}
!2052 = !DILocation(line: 449, column: 5, scope: !2035)
!2053 = !DILocation(line: 451, column: 3, scope: !1996)
!2054 = !DILocation(line: 453, column: 12, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 453, column: 9)
!2056 = !DILocation(line: 453, column: 20, scope: !2055)
!2057 = !DILocation(line: 453, column: 29, scope: !2055)
!2058 = !DILocation(line: 453, column: 26, scope: !2055)
!2059 = !DILocation(line: 453, column: 9, scope: !1996)
!2060 = !DILocation(line: 454, column: 9, scope: !2055)
!2061 = !DILocation(line: 455, column: 5, scope: !1996)
!2062 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !354, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !38)
!2063 = !DILocation(line: 753, column: 5, scope: !2062)
!2064 = !DILocation(line: 754, column: 13, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 754, column: 9)
!2066 = !DILocation(line: 754, column: 23, scope: !2065)
!2067 = !DILocation(line: 754, column: 9, scope: !2062)
!2068 = !DILocation(line: 755, column: 34, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 754, column: 32)
!2070 = !DILocation(line: 755, column: 23, scope: !2069)
!2071 = !DILocation(line: 756, column: 17, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 756, column: 13)
!2073 = !DILocation(line: 756, column: 27, scope: !2072)
!2074 = !DILocation(line: 756, column: 13, scope: !2069)
!2075 = !DILocation(line: 757, column: 21, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 756, column: 36)
!2077 = !DILocation(line: 757, column: 13, scope: !2076)
!2078 = !DILocation(line: 758, column: 13, scope: !2076)
!2079 = !DILocation(line: 760, column: 5, scope: !2069)
!2080 = !DILocation(line: 761, column: 13, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 761, column: 9)
!2082 = !DILocation(line: 761, column: 21, scope: !2081)
!2083 = !DILocation(line: 761, column: 9, scope: !2062)
!2084 = !DILocation(line: 762, column: 32, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 761, column: 30)
!2086 = !DILocation(line: 762, column: 21, scope: !2085)
!2087 = !DILocation(line: 763, column: 17, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 763, column: 13)
!2089 = !DILocation(line: 763, column: 25, scope: !2088)
!2090 = !DILocation(line: 763, column: 13, scope: !2085)
!2091 = !DILocation(line: 764, column: 21, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 763, column: 34)
!2093 = !DILocation(line: 764, column: 13, scope: !2092)
!2094 = !DILocation(line: 765, column: 13, scope: !2092)
!2095 = !DILocation(line: 767, column: 5, scope: !2085)
!2096 = !DILocation(line: 768, column: 20, scope: !2062)
!2097 = !DILocation(line: 768, column: 18, scope: !2062)
!2098 = !DILocation(line: 769, column: 17, scope: !2062)
!2099 = !DILocation(line: 770, column: 1, scope: !2062)
!2100 = !DILocation(line: 778, column: 10, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !353, file: !3, line: 778, column: 9)
!2102 = !DILocation(line: 778, column: 9, scope: !353)
!2103 = !DILocation(line: 779, column: 9, scope: !2101)
!2104 = !DILocation(line: 0, scope: !353)
!2105 = !DILocation(line: 780, column: 5, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !353, file: !3, line: 780, column: 5)
!2107 = !DILocation(line: 781, column: 35, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 780, column: 54)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 780, column: 5)
!2110 = !DILocation(line: 781, column: 13, scope: !2108)
!2111 = !DILocation(line: 781, column: 24, scope: !2108)
!2112 = !DILocation(line: 782, column: 17, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 782, column: 13)
!2114 = !DILocation(line: 782, column: 28, scope: !2113)
!2115 = !DILocation(line: 782, column: 13, scope: !2108)
!2116 = !DILocation(line: 783, column: 21, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 782, column: 37)
!2118 = !DILocation(line: 783, column: 13, scope: !2117)
!2119 = !DILocation(line: 784, column: 13, scope: !2117)
!2120 = !DILocation(line: 786, column: 14, scope: !2108)
!2121 = !DILocation(line: 786, column: 25, scope: !2108)
!2122 = !DILocation(line: 787, column: 13, scope: !2108)
!2123 = !DILocation(line: 787, column: 24, scope: !2108)
!2124 = !{!928, !411, i64 8}
!2125 = !DILocation(line: 788, column: 13, scope: !2108)
!2126 = !DILocation(line: 788, column: 23, scope: !2108)
!2127 = !{!928, !411, i64 96}
!2128 = !DILocation(line: 789, column: 13, scope: !2108)
!2129 = !DILocation(line: 789, column: 24, scope: !2108)
!2130 = !{!928, !411, i64 136}
!2131 = !DILocation(line: 790, column: 5, scope: !2108)
!2132 = !DILocation(line: 780, column: 44, scope: !2109)
!2133 = !DILocation(line: 780, column: 50, scope: !2109)
!2134 = !DILocation(line: 780, column: 30, scope: !2109)
!2135 = distinct !{!2135, !2105, !2136}
!2136 = !DILocation(line: 790, column: 5, scope: !2106)
!2137 = !DILocation(line: 791, column: 10, scope: !353)
!2138 = !DILocation(line: 792, column: 1, scope: !353)
!2139 = distinct !DISubprogram(name: "atof", scope: !2140, file: !2140, line: 25, type: !2141, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2145)
!2140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!10, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!2145 = !{!2146}
!2146 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2139, file: !2140, line: 25, type: !2143)
!2147 = !DILocation(line: 0, scope: !2139)
!2148 = !DILocation(line: 27, column: 10, scope: !2139)
!2149 = !DILocation(line: 27, column: 3, scope: !2139)
!2150 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !2151, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !144}
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2154 = !DILocalVariable(name: "res", arg: 1, scope: !2150, file: !3, line: 794, type: !144)
!2155 = !DILocalVariable(name: "a1", scope: !2150, file: !3, line: 796, type: !37)
!2156 = !DILocalVariable(name: "a2", scope: !2150, file: !3, line: 796, type: !37)
!2157 = !DILocalVariable(name: "ap1", scope: !2150, file: !3, line: 797, type: !190)
!2158 = !DILocalVariable(name: "ap2", scope: !2150, file: !3, line: 797, type: !190)
!2159 = !DILocalVariable(name: "ih1", scope: !2150, file: !3, line: 798, type: !37)
!2160 = !DILocalVariable(name: "ih2", scope: !2150, file: !3, line: 798, type: !37)
!2161 = !DILocalVariable(name: "d", scope: !2150, file: !3, line: 799, type: !10)
!2162 = !DILocation(line: 0, scope: !2150)
!2163 = !DILocation(line: 801, column: 28, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 801, column: 5)
!2165 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 801, column: 5)
!2166 = !DILocation(line: 801, column: 21, scope: !2164)
!2167 = !DILocation(line: 801, column: 5, scope: !2165)
!2168 = !DILocation(line: 802, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 801, column: 44)
!2170 = !DILocation(line: 802, column: 16, scope: !2169)
!2171 = !DILocation(line: 803, column: 14, scope: !2169)
!2172 = !DILocation(line: 803, column: 25, scope: !2169)
!2173 = !{!928, !544, i64 20}
!2174 = !DILocation(line: 804, column: 5, scope: !2169)
!2175 = !DILocation(line: 801, column: 40, scope: !2164)
!2176 = distinct !{!2176, !2167, !2177}
!2177 = !DILocation(line: 804, column: 5, scope: !2165)
!2178 = !DILocation(line: 806, column: 28, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 806, column: 5)
!2180 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 806, column: 5)
!2181 = !DILocation(line: 806, column: 37, scope: !2179)
!2182 = !DILocation(line: 806, column: 21, scope: !2179)
!2183 = !DILocation(line: 806, column: 5, scope: !2180)
!2184 = !DILocation(line: 807, column: 21, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 806, column: 48)
!2186 = !DILocation(line: 807, column: 16, scope: !2185)
!2187 = !DILocation(line: 808, column: 13, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 808, column: 13)
!2189 = !{!2190, !2190, i64 0}
!2190 = !{!"short", !405, i64 0}
!2191 = !DILocation(line: 808, column: 13, scope: !2185)
!2192 = !DILocation(line: 809, column: 24, scope: !2188)
!2193 = !DILocation(line: 809, column: 19, scope: !2188)
!2194 = !DILocation(line: 809, column: 38, scope: !2188)
!2195 = !DILocation(line: 809, column: 45, scope: !2188)
!2196 = !DILocation(line: 809, column: 53, scope: !2188)
!2197 = !DILocation(line: 809, column: 48, scope: !2188)
!2198 = !DILocation(line: 809, column: 67, scope: !2188)
!2199 = !DILocation(line: 809, column: 13, scope: !2188)
!2200 = !DILocation(line: 811, column: 25, scope: !2188)
!2201 = !DILocation(line: 811, column: 19, scope: !2188)
!2202 = !DILocation(line: 811, column: 36, scope: !2188)
!2203 = !DILocation(line: 811, column: 43, scope: !2188)
!2204 = !DILocation(line: 811, column: 52, scope: !2188)
!2205 = !DILocation(line: 811, column: 46, scope: !2188)
!2206 = !DILocation(line: 811, column: 63, scope: !2188)
!2207 = !DILocation(line: 0, scope: !2188)
!2208 = !DILocation(line: 812, column: 37, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 812, column: 9)
!2210 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 812, column: 9)
!2211 = !DILocation(line: 812, column: 30, scope: !2209)
!2212 = !DILocation(line: 812, column: 9, scope: !2210)
!2213 = !DILocation(line: 813, column: 25, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 812, column: 53)
!2215 = !DILocation(line: 813, column: 20, scope: !2214)
!2216 = !DILocation(line: 814, column: 17, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 814, column: 17)
!2218 = !DILocation(line: 814, column: 17, scope: !2214)
!2219 = !DILocation(line: 815, column: 28, scope: !2217)
!2220 = !DILocation(line: 815, column: 23, scope: !2217)
!2221 = !DILocation(line: 815, column: 42, scope: !2217)
!2222 = !DILocation(line: 815, column: 49, scope: !2217)
!2223 = !DILocation(line: 816, column: 26, scope: !2217)
!2224 = !DILocation(line: 816, column: 21, scope: !2217)
!2225 = !DILocation(line: 816, column: 40, scope: !2217)
!2226 = !DILocation(line: 815, column: 17, scope: !2217)
!2227 = !DILocation(line: 818, column: 29, scope: !2217)
!2228 = !DILocation(line: 818, column: 23, scope: !2217)
!2229 = !DILocation(line: 818, column: 40, scope: !2217)
!2230 = !DILocation(line: 818, column: 47, scope: !2217)
!2231 = !DILocation(line: 818, column: 56, scope: !2217)
!2232 = !DILocation(line: 818, column: 50, scope: !2217)
!2233 = !DILocation(line: 818, column: 67, scope: !2217)
!2234 = !DILocation(line: 0, scope: !2217)
!2235 = !DILocation(line: 819, column: 17, scope: !2214)
!2236 = !DILocation(line: 820, column: 17, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 820, column: 17)
!2238 = !DILocation(line: 820, column: 21, scope: !2237)
!2239 = !DILocation(line: 820, column: 24, scope: !2237)
!2240 = !DILocation(line: 820, column: 17, scope: !2214)
!2241 = !DILocation(line: 821, column: 23, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 821, column: 21)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 820, column: 29)
!2244 = !DILocation(line: 821, column: 21, scope: !2243)
!2245 = !DILocation(line: 822, column: 30, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 822, column: 25)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 821, column: 37)
!2248 = !DILocation(line: 822, column: 41, scope: !2246)
!2249 = !DILocation(line: 822, column: 58, scope: !2246)
!2250 = !DILocation(line: 823, column: 30, scope: !2246)
!2251 = !DILocation(line: 823, column: 41, scope: !2246)
!2252 = !DILocation(line: 822, column: 25, scope: !2247)
!2253 = !DILocation(line: 824, column: 30, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 823, column: 59)
!2255 = !DILocation(line: 824, column: 45, scope: !2254)
!2256 = !DILocation(line: 824, column: 55, scope: !2254)
!2257 = !DILocation(line: 824, column: 25, scope: !2254)
!2258 = !DILocation(line: 824, column: 59, scope: !2254)
!2259 = !DILocation(line: 825, column: 30, scope: !2254)
!2260 = !DILocation(line: 825, column: 45, scope: !2254)
!2261 = !DILocation(line: 825, column: 55, scope: !2254)
!2262 = !DILocation(line: 825, column: 25, scope: !2254)
!2263 = !DILocation(line: 825, column: 59, scope: !2254)
!2264 = !DILocation(line: 826, column: 21, scope: !2254)
!2265 = !DILocation(line: 827, column: 17, scope: !2247)
!2266 = !DILocation(line: 828, column: 13, scope: !2243)
!2267 = !DILocation(line: 828, column: 26, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 828, column: 24)
!2269 = !DILocation(line: 828, column: 24, scope: !2237)
!2270 = !DILocation(line: 829, column: 26, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 829, column: 21)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 828, column: 39)
!2273 = !DILocation(line: 829, column: 37, scope: !2271)
!2274 = !DILocation(line: 829, column: 54, scope: !2271)
!2275 = !DILocation(line: 830, column: 26, scope: !2271)
!2276 = !DILocation(line: 830, column: 37, scope: !2271)
!2277 = !DILocation(line: 829, column: 21, scope: !2272)
!2278 = !DILocation(line: 831, column: 26, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 830, column: 55)
!2280 = !DILocation(line: 831, column: 41, scope: !2279)
!2281 = !DILocation(line: 831, column: 51, scope: !2279)
!2282 = !DILocation(line: 831, column: 21, scope: !2279)
!2283 = !DILocation(line: 831, column: 55, scope: !2279)
!2284 = !DILocation(line: 832, column: 26, scope: !2279)
!2285 = !DILocation(line: 832, column: 41, scope: !2279)
!2286 = !DILocation(line: 832, column: 51, scope: !2279)
!2287 = !DILocation(line: 832, column: 21, scope: !2279)
!2288 = !DILocation(line: 832, column: 55, scope: !2279)
!2289 = !DILocation(line: 833, column: 17, scope: !2279)
!2290 = !DILocation(line: 834, column: 13, scope: !2272)
!2291 = !DILocation(line: 835, column: 9, scope: !2214)
!2292 = !DILocation(line: 812, column: 49, scope: !2209)
!2293 = distinct !{!2293, !2212, !2294}
!2294 = !DILocation(line: 835, column: 9, scope: !2210)
!2295 = !DILocation(line: 836, column: 5, scope: !2185)
!2296 = !DILocation(line: 806, column: 44, scope: !2179)
!2297 = !DILocation(line: 806, column: 5, scope: !2179)
!2298 = distinct !{!2298, !2183, !2299}
!2299 = !DILocation(line: 836, column: 5, scope: !2180)
!2300 = !DILocation(line: 837, column: 1, scope: !2150)
!2301 = distinct !DISubprogram(name: "isnewres", scope: !3, file: !3, line: 744, type: !2302, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!37, !13, !13, !37, !37}
!2304 = !{!2305, !2306, !2307, !2308}
!2305 = !DILocalVariable(name: "l_rname", arg: 1, scope: !2301, file: !3, line: 744, type: !13)
!2306 = !DILocalVariable(name: "rname", arg: 2, scope: !2301, file: !3, line: 744, type: !13)
!2307 = !DILocalVariable(name: "l_rnum", arg: 3, scope: !2301, file: !3, line: 744, type: !37)
!2308 = !DILocalVariable(name: "rnum", arg: 4, scope: !2301, file: !3, line: 744, type: !37)
!2309 = !DILocation(line: 0, scope: !2301)
!2310 = !DILocation(line: 747, column: 13, scope: !2301)
!2311 = !DILocation(line: 747, column: 36, scope: !2301)
!2312 = !DILocation(line: 747, column: 46, scope: !2301)
!2313 = !DILocation(line: 747, column: 5, scope: !2301)
!2314 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !2315, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!343, !37, !37, !391}
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2318 = !DILocalVariable(name: "nocid", arg: 1, scope: !2314, file: !3, line: 1021, type: !37)
!2319 = !DILocalVariable(name: "allcid", arg: 2, scope: !2314, file: !3, line: 1021, type: !37)
!2320 = !DILocalVariable(name: "mol", arg: 3, scope: !2314, file: !3, line: 1021, type: !391)
!2321 = !DILocalVariable(name: "cid", scope: !2314, file: !3, line: 1023, type: !343)
!2322 = !DILocalVariable(name: "c", scope: !2314, file: !3, line: 1024, type: !37)
!2323 = !DILocalVariable(name: "sp", scope: !2314, file: !3, line: 1025, type: !128)
!2324 = !DILocalVariable(name: "err", scope: !2314, file: !3, line: 1026, type: !37)
!2325 = !DILabel(scope: !2314, name: "CLEAN_UP", file: !3, line: 1067)
!2326 = !DILocation(line: 0, scope: !2314)
!2327 = !DILocation(line: 1028, column: 9, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1028, column: 9)
!2329 = !DILocation(line: 1028, column: 9, scope: !2314)
!2330 = !DILocation(line: 1029, column: 9, scope: !2328)
!2331 = !DILocation(line: 1031, column: 21, scope: !2314)
!2332 = !DILocation(line: 1031, column: 11, scope: !2314)
!2333 = !DILocation(line: 1032, column: 13, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1032, column: 9)
!2335 = !DILocation(line: 1032, column: 9, scope: !2314)
!2336 = !DILocation(line: 1033, column: 17, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1032, column: 22)
!2338 = !DILocation(line: 1033, column: 9, scope: !2337)
!2339 = !DILocation(line: 1035, column: 9, scope: !2337)
!2340 = !DILocation(line: 1037, column: 28, scope: !2314)
!2341 = !DILocation(line: 1037, column: 10, scope: !2314)
!2342 = !DILocation(line: 1037, column: 17, scope: !2314)
!2343 = !{!2344, !411, i64 8}
!2344 = !{!"cid_t", !544, i64 0, !544, i64 4, !411, i64 8}
!2345 = !DILocation(line: 1038, column: 14, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1038, column: 9)
!2347 = !DILocation(line: 1038, column: 21, scope: !2346)
!2348 = !DILocation(line: 1038, column: 9, scope: !2314)
!2349 = !DILocation(line: 1039, column: 17, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1038, column: 30)
!2351 = !DILocation(line: 1039, column: 9, scope: !2350)
!2352 = !DILocation(line: 1041, column: 9, scope: !2350)
!2353 = !DILocation(line: 1043, column: 10, scope: !2314)
!2354 = !DILocation(line: 1043, column: 17, scope: !2314)
!2355 = !{!2344, !544, i64 0}
!2356 = !DILocation(line: 1044, column: 10, scope: !2314)
!2357 = !DILocation(line: 1044, column: 17, scope: !2314)
!2358 = !{!2344, !544, i64 4}
!2359 = !DILocation(line: 1045, column: 19, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1045, column: 5)
!2361 = !DILocation(line: 1045, column: 10, scope: !2360)
!2362 = !DILocation(line: 1045, column: 37, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1045, column: 5)
!2364 = !DILocation(line: 1045, column: 29, scope: !2363)
!2365 = !DILocation(line: 1045, column: 5, scope: !2360)
!2366 = !DILocation(line: 1046, column: 14, scope: !2363)
!2367 = !DILocation(line: 1046, column: 9, scope: !2363)
!2368 = !DILocation(line: 1046, column: 24, scope: !2363)
!2369 = !DILocation(line: 1045, column: 46, scope: !2363)
!2370 = distinct !{!2370, !2365, !2371}
!2371 = !DILocation(line: 1046, column: 26, scope: !2360)
!2372 = !DILocation(line: 1048, column: 9, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1048, column: 9)
!2374 = !DILocation(line: 1048, column: 9, scope: !2314)
!2375 = !DILocation(line: 1049, column: 17, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1049, column: 13)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1048, column: 17)
!2378 = !DILocation(line: 1049, column: 13, scope: !2377)
!2379 = !DILocation(line: 1050, column: 21, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1049, column: 26)
!2381 = !DILocation(line: 1050, column: 13, scope: !2380)
!2382 = !DILocation(line: 1052, column: 13, scope: !2380)
!2383 = !DILocation(line: 1054, column: 24, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1054, column: 9)
!2385 = !DILocation(line: 1054, column: 9, scope: !2384)
!2386 = !DILocation(line: 1055, column: 28, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1055, column: 17)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !3, line: 1054, column: 56)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1054, column: 9)
!2390 = !DILocation(line: 1055, column: 17, scope: !2387)
!2391 = !DILocation(line: 1055, column: 42, scope: !2387)
!2392 = !DILocation(line: 1055, column: 17, scope: !2388)
!2393 = !DILocation(line: 1056, column: 26, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1055, column: 48)
!2395 = !DILocation(line: 1056, column: 21, scope: !2394)
!2396 = !DILocation(line: 1057, column: 23, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1057, column: 21)
!2398 = !DILocation(line: 1057, column: 30, scope: !2397)
!2399 = !DILocation(line: 1057, column: 35, scope: !2397)
!2400 = !DILocation(line: 1057, column: 21, scope: !2394)
!2401 = !DILocation(line: 1058, column: 26, scope: !2397)
!2402 = !DILocation(line: 1058, column: 21, scope: !2397)
!2403 = !DILocation(line: 1058, column: 36, scope: !2397)
!2404 = !DILocation(line: 1059, column: 13, scope: !2394)
!2405 = !DILocation(line: 1060, column: 9, scope: !2388)
!2406 = !DILocation(line: 1054, column: 48, scope: !2389)
!2407 = distinct !{!2407, !2385, !2408}
!2408 = !DILocation(line: 1060, column: 9, scope: !2384)
!2409 = !DILocation(line: 1061, column: 21, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 1061, column: 9)
!2411 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 1061, column: 9)
!2412 = !DILocation(line: 1061, column: 36, scope: !2410)
!2413 = !DILocation(line: 1061, column: 28, scope: !2410)
!2414 = !DILocation(line: 1061, column: 9, scope: !2411)
!2415 = !DILocation(line: 1062, column: 23, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1062, column: 17)
!2417 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 1061, column: 59)
!2418 = !DILocation(line: 1062, column: 35, scope: !2416)
!2419 = !DILocation(line: 1062, column: 18, scope: !2416)
!2420 = !DILocation(line: 1062, column: 17, scope: !2417)
!2421 = !DILocation(line: 1063, column: 17, scope: !2416)
!2422 = !DILocation(line: 1064, column: 9, scope: !2417)
!2423 = !DILocation(line: 1061, column: 49, scope: !2410)
!2424 = !DILocation(line: 1061, column: 55, scope: !2410)
!2425 = distinct !{!2425, !2414, !2426}
!2426 = !DILocation(line: 1064, column: 9, scope: !2411)
!2427 = !DILocation(line: 1065, column: 5, scope: !2377)
!2428 = !DILocation(line: 1067, column: 3, scope: !2314)
!2429 = !DILocation(line: 1069, column: 9, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1069, column: 9)
!2431 = !DILocation(line: 1069, column: 9, scope: !2314)
!2432 = !DILocation(line: 1070, column: 9, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 1069, column: 14)
!2434 = !DILocation(line: 1072, column: 5, scope: !2433)
!2435 = !DILocation(line: 1074, column: 5, scope: !2314)
!2436 = !DILocation(line: 1075, column: 1, scope: !2314)
!2437 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !2438, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!37, !343, !37, !37, !128}
!2440 = !{!2441, !2442, !2443, !2444, !2445}
!2441 = !DILocalVariable(name: "cid", arg: 1, scope: !2437, file: !3, line: 1077, type: !343)
!2442 = !DILocalVariable(name: "nocid", arg: 2, scope: !2437, file: !3, line: 1077, type: !37)
!2443 = !DILocalVariable(name: "allcid", arg: 3, scope: !2437, file: !3, line: 1077, type: !37)
!2444 = !DILocalVariable(name: "sp", arg: 4, scope: !2437, file: !3, line: 1077, type: !128)
!2445 = !DILocalVariable(name: "c", scope: !2437, file: !3, line: 1079, type: !37)
!2446 = !DILocation(line: 0, scope: !2437)
!2447 = !DILocation(line: 1081, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1081, column: 9)
!2449 = !DILocation(line: 1081, column: 9, scope: !2437)
!2450 = !DILocation(line: 1082, column: 9, scope: !2448)
!2451 = !DILocation(line: 1084, column: 13, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1084, column: 9)
!2453 = !DILocation(line: 1084, column: 9, scope: !2437)
!2454 = !DILocation(line: 1085, column: 17, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1084, column: 22)
!2456 = !DILocation(line: 1085, column: 9, scope: !2455)
!2457 = !DILocation(line: 1086, column: 9, scope: !2455)
!2458 = !DILocation(line: 1087, column: 21, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1087, column: 16)
!2460 = !DILocation(line: 1087, column: 35, scope: !2459)
!2461 = !DILocation(line: 1087, column: 28, scope: !2459)
!2462 = !DILocation(line: 1087, column: 16, scope: !2452)
!2463 = !DILocation(line: 1088, column: 9, scope: !2459)
!2464 = !DILocation(line: 1089, column: 14, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1089, column: 14)
!2466 = !DILocation(line: 1089, column: 14, scope: !2459)
!2467 = !DILocation(line: 1090, column: 24, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1090, column: 13)
!2469 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1089, column: 22)
!2470 = !DILocation(line: 1090, column: 13, scope: !2468)
!2471 = !DILocation(line: 1090, column: 38, scope: !2468)
!2472 = !DILocation(line: 1090, column: 13, scope: !2469)
!2473 = !DILocation(line: 1091, column: 22, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1090, column: 44)
!2475 = !DILocation(line: 1091, column: 17, scope: !2474)
!2476 = !DILocation(line: 1092, column: 19, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 1092, column: 17)
!2478 = !DILocation(line: 1092, column: 26, scope: !2477)
!2479 = !DILocation(line: 1092, column: 31, scope: !2477)
!2480 = !DILocation(line: 1092, column: 17, scope: !2474)
!2481 = !DILocation(line: 1093, column: 17, scope: !2477)
!2482 = !DILocation(line: 1094, column: 9, scope: !2474)
!2483 = !DILocation(line: 1095, column: 18, scope: !2469)
!2484 = !DILocation(line: 1096, column: 14, scope: !2469)
!2485 = !DILocation(line: 1096, column: 26, scope: !2469)
!2486 = !DILocation(line: 1096, column: 9, scope: !2469)
!2487 = !DILocation(line: 1096, column: 34, scope: !2469)
!2488 = !DILocation(line: 1097, column: 21, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1097, column: 9)
!2490 = !DILocation(line: 1097, column: 14, scope: !2489)
!2491 = !DILocation(line: 1097, column: 34, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 1097, column: 9)
!2493 = !DILocation(line: 1097, column: 49, scope: !2492)
!2494 = !DILocation(line: 1097, column: 41, scope: !2492)
!2495 = !DILocation(line: 1097, column: 9, scope: !2489)
!2496 = !DILocation(line: 1098, column: 23, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1098, column: 17)
!2498 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 1097, column: 72)
!2499 = !DILocation(line: 1098, column: 35, scope: !2497)
!2500 = !DILocation(line: 1098, column: 18, scope: !2497)
!2501 = !DILocation(line: 1098, column: 17, scope: !2498)
!2502 = !DILocation(line: 1099, column: 17, scope: !2497)
!2503 = !DILocation(line: 1100, column: 9, scope: !2498)
!2504 = !DILocation(line: 1097, column: 62, scope: !2492)
!2505 = !DILocation(line: 1097, column: 68, scope: !2492)
!2506 = distinct !{!2506, !2495, !2507}
!2507 = !DILocation(line: 1100, column: 9, scope: !2489)
!2508 = !DILocation(line: 1101, column: 9, scope: !2469)
!2509 = !DILocation(line: 1103, column: 18, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1102, column: 12)
!2511 = !DILocation(line: 1104, column: 14, scope: !2510)
!2512 = !DILocation(line: 1104, column: 20, scope: !2510)
!2513 = !DILocation(line: 1105, column: 9, scope: !2510)
!2514 = !DILocation(line: 1107, column: 1, scope: !2437)
!2515 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !2516, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !13, !144}
!2518 = !{!2519, !2520}
!2519 = !DILocalVariable(name: "rname", arg: 1, scope: !2515, file: !3, line: 1109, type: !13)
!2520 = !DILocalVariable(name: "res", arg: 2, scope: !2515, file: !3, line: 1109, type: !144)
!2521 = !DILocation(line: 0, scope: !2515)
!2522 = !DILocation(line: 1112, column: 24, scope: !2515)
!2523 = !DILocation(line: 1112, column: 5, scope: !2515)
!2524 = !DILocation(line: 1114, column: 10, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1114, column: 9)
!2526 = !DILocation(line: 1114, column: 9, scope: !2515)
!2527 = !DILocation(line: 1115, column: 9, scope: !2525)
!2528 = !DILocation(line: 1116, column: 10, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1116, column: 9)
!2530 = !DILocation(line: 1116, column: 9, scope: !2515)
!2531 = !DILocation(line: 1117, column: 9, scope: !2529)
!2532 = !DILocation(line: 1118, column: 10, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1118, column: 9)
!2534 = !DILocation(line: 1118, column: 9, scope: !2515)
!2535 = !DILocation(line: 1119, column: 9, scope: !2533)
!2536 = !DILocation(line: 1120, column: 10, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1120, column: 9)
!2538 = !DILocation(line: 1120, column: 9, scope: !2515)
!2539 = !DILocation(line: 1121, column: 9, scope: !2537)
!2540 = !DILocation(line: 1122, column: 10, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1122, column: 9)
!2542 = !DILocation(line: 1122, column: 9, scope: !2515)
!2543 = !DILocation(line: 1123, column: 9, scope: !2541)
!2544 = !DILocation(line: 1125, column: 10, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1125, column: 9)
!2546 = !DILocation(line: 1125, column: 9, scope: !2515)
!2547 = !DILocation(line: 1126, column: 9, scope: !2545)
!2548 = !DILocation(line: 1127, column: 10, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1127, column: 9)
!2550 = !DILocation(line: 1127, column: 9, scope: !2515)
!2551 = !DILocation(line: 1128, column: 9, scope: !2549)
!2552 = !DILocation(line: 1129, column: 10, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1129, column: 9)
!2554 = !DILocation(line: 1129, column: 9, scope: !2515)
!2555 = !DILocation(line: 1130, column: 9, scope: !2553)
!2556 = !DILocation(line: 1131, column: 10, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1131, column: 9)
!2558 = !DILocation(line: 1131, column: 9, scope: !2515)
!2559 = !DILocation(line: 1132, column: 9, scope: !2557)
!2560 = !DILocation(line: 1134, column: 10, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1134, column: 9)
!2562 = !DILocation(line: 1134, column: 9, scope: !2515)
!2563 = !DILocation(line: 1135, column: 9, scope: !2561)
!2564 = !DILocation(line: 1136, column: 10, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1136, column: 9)
!2566 = !DILocation(line: 1136, column: 9, scope: !2515)
!2567 = !DILocation(line: 1137, column: 9, scope: !2565)
!2568 = !DILocation(line: 1138, column: 10, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1138, column: 9)
!2570 = !DILocation(line: 1138, column: 9, scope: !2515)
!2571 = !DILocation(line: 1139, column: 9, scope: !2569)
!2572 = !DILocation(line: 1140, column: 10, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1140, column: 9)
!2574 = !DILocation(line: 1140, column: 9, scope: !2515)
!2575 = !DILocation(line: 1141, column: 9, scope: !2573)
!2576 = !DILocation(line: 1143, column: 10, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1143, column: 9)
!2578 = !DILocation(line: 1143, column: 9, scope: !2515)
!2579 = !DILocation(line: 1144, column: 9, scope: !2577)
!2580 = !DILocation(line: 1145, column: 10, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1145, column: 9)
!2582 = !DILocation(line: 1145, column: 9, scope: !2515)
!2583 = !DILocation(line: 1146, column: 9, scope: !2581)
!2584 = !DILocation(line: 1147, column: 10, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1147, column: 9)
!2586 = !DILocation(line: 1147, column: 9, scope: !2515)
!2587 = !DILocation(line: 1148, column: 9, scope: !2585)
!2588 = !DILocation(line: 1149, column: 10, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1149, column: 9)
!2590 = !DILocation(line: 1149, column: 9, scope: !2515)
!2591 = !DILocation(line: 1150, column: 9, scope: !2589)
!2592 = !DILocation(line: 1152, column: 10, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1152, column: 9)
!2594 = !DILocation(line: 1152, column: 9, scope: !2515)
!2595 = !DILocation(line: 1153, column: 9, scope: !2593)
!2596 = !DILocation(line: 1154, column: 10, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1154, column: 9)
!2598 = !DILocation(line: 1154, column: 9, scope: !2515)
!2599 = !DILocation(line: 1155, column: 9, scope: !2597)
!2600 = !DILocation(line: 1156, column: 10, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1156, column: 9)
!2602 = !DILocation(line: 1156, column: 9, scope: !2515)
!2603 = !DILocation(line: 1157, column: 9, scope: !2601)
!2604 = !DILocation(line: 1158, column: 10, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1158, column: 9)
!2606 = !DILocation(line: 1158, column: 9, scope: !2515)
!2607 = !DILocation(line: 1159, column: 9, scope: !2605)
!2608 = !DILocation(line: 1161, column: 10, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1161, column: 9)
!2610 = !DILocation(line: 1161, column: 9, scope: !2515)
!2611 = !DILocation(line: 1162, column: 9, scope: !2609)
!2612 = !DILocation(line: 1163, column: 10, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1163, column: 9)
!2614 = !DILocation(line: 1163, column: 9, scope: !2515)
!2615 = !DILocation(line: 1164, column: 9, scope: !2613)
!2616 = !DILocation(line: 1165, column: 10, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1165, column: 9)
!2618 = !DILocation(line: 1165, column: 9, scope: !2515)
!2619 = !DILocation(line: 1166, column: 9, scope: !2617)
!2620 = !DILocation(line: 1167, column: 10, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1167, column: 9)
!2622 = !DILocation(line: 1167, column: 9, scope: !2515)
!2623 = !DILocation(line: 1168, column: 9, scope: !2621)
!2624 = !DILocation(line: 1170, column: 10, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1170, column: 9)
!2626 = !DILocation(line: 1170, column: 9, scope: !2515)
!2627 = !DILocation(line: 1171, column: 9, scope: !2625)
!2628 = !DILocation(line: 1172, column: 10, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1172, column: 9)
!2630 = !DILocation(line: 1172, column: 9, scope: !2515)
!2631 = !DILocation(line: 1173, column: 9, scope: !2629)
!2632 = !DILocation(line: 1174, column: 10, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1174, column: 9)
!2634 = !DILocation(line: 1174, column: 9, scope: !2515)
!2635 = !DILocation(line: 1175, column: 9, scope: !2633)
!2636 = !DILocation(line: 1176, column: 10, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1176, column: 9)
!2638 = !DILocation(line: 1176, column: 9, scope: !2515)
!2639 = !DILocation(line: 1177, column: 9, scope: !2637)
!2640 = !DILocation(line: 1179, column: 10, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1179, column: 9)
!2642 = !DILocation(line: 1179, column: 9, scope: !2515)
!2643 = !DILocation(line: 1180, column: 9, scope: !2641)
!2644 = !DILocation(line: 1181, column: 10, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1181, column: 9)
!2646 = !DILocation(line: 1181, column: 9, scope: !2515)
!2647 = !DILocation(line: 1182, column: 9, scope: !2645)
!2648 = !DILocation(line: 1183, column: 10, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1183, column: 9)
!2650 = !DILocation(line: 1183, column: 9, scope: !2515)
!2651 = !DILocation(line: 1184, column: 9, scope: !2649)
!2652 = !DILocation(line: 1185, column: 10, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1185, column: 9)
!2654 = !DILocation(line: 1185, column: 9, scope: !2515)
!2655 = !DILocation(line: 1186, column: 9, scope: !2653)
!2656 = !DILocation(line: 1187, column: 10, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1187, column: 9)
!2658 = !DILocation(line: 1187, column: 9, scope: !2515)
!2659 = !DILocation(line: 1188, column: 9, scope: !2657)
!2660 = !DILocation(line: 1189, column: 10, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1189, column: 9)
!2662 = !DILocation(line: 1189, column: 9, scope: !2515)
!2663 = !DILocation(line: 1190, column: 9, scope: !2661)
!2664 = !DILocation(line: 1192, column: 1, scope: !2515)
!2665 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !2516, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2666)
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "rname", arg: 1, scope: !2665, file: !3, line: 1194, type: !13)
!2668 = !DILocalVariable(name: "res", arg: 2, scope: !2665, file: !3, line: 1194, type: !144)
!2669 = !DILocation(line: 0, scope: !2665)
!2670 = !DILocation(line: 1197, column: 24, scope: !2665)
!2671 = !DILocation(line: 1197, column: 5, scope: !2665)
!2672 = !DILocation(line: 1199, column: 10, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1199, column: 9)
!2674 = !DILocation(line: 1199, column: 9, scope: !2665)
!2675 = !DILocation(line: 1200, column: 9, scope: !2673)
!2676 = !DILocation(line: 1201, column: 10, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1201, column: 9)
!2678 = !DILocation(line: 1201, column: 9, scope: !2665)
!2679 = !DILocation(line: 1202, column: 9, scope: !2677)
!2680 = !DILocation(line: 1203, column: 10, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1203, column: 9)
!2682 = !DILocation(line: 1203, column: 9, scope: !2665)
!2683 = !DILocation(line: 1204, column: 9, scope: !2681)
!2684 = !DILocation(line: 1205, column: 10, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1205, column: 9)
!2686 = !DILocation(line: 1205, column: 9, scope: !2665)
!2687 = !DILocation(line: 1206, column: 9, scope: !2685)
!2688 = !DILocation(line: 1207, column: 10, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1207, column: 9)
!2690 = !DILocation(line: 1207, column: 9, scope: !2665)
!2691 = !DILocation(line: 1208, column: 9, scope: !2689)
!2692 = !DILocation(line: 1210, column: 10, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1210, column: 9)
!2694 = !DILocation(line: 1210, column: 9, scope: !2665)
!2695 = !DILocation(line: 1211, column: 9, scope: !2693)
!2696 = !DILocation(line: 1212, column: 10, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1212, column: 9)
!2698 = !DILocation(line: 1212, column: 9, scope: !2665)
!2699 = !DILocation(line: 1213, column: 9, scope: !2697)
!2700 = !DILocation(line: 1214, column: 10, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1214, column: 9)
!2702 = !DILocation(line: 1214, column: 9, scope: !2665)
!2703 = !DILocation(line: 1215, column: 9, scope: !2701)
!2704 = !DILocation(line: 1216, column: 10, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1216, column: 9)
!2706 = !DILocation(line: 1216, column: 9, scope: !2665)
!2707 = !DILocation(line: 1217, column: 9, scope: !2705)
!2708 = !DILocation(line: 1219, column: 10, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1219, column: 9)
!2710 = !DILocation(line: 1219, column: 9, scope: !2665)
!2711 = !DILocation(line: 1220, column: 9, scope: !2709)
!2712 = !DILocation(line: 1221, column: 10, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1221, column: 9)
!2714 = !DILocation(line: 1221, column: 9, scope: !2665)
!2715 = !DILocation(line: 1222, column: 9, scope: !2713)
!2716 = !DILocation(line: 1223, column: 10, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1223, column: 9)
!2718 = !DILocation(line: 1223, column: 9, scope: !2665)
!2719 = !DILocation(line: 1224, column: 9, scope: !2717)
!2720 = !DILocation(line: 1225, column: 10, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1225, column: 9)
!2722 = !DILocation(line: 1225, column: 9, scope: !2665)
!2723 = !DILocation(line: 1226, column: 9, scope: !2721)
!2724 = !DILocation(line: 1228, column: 10, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1228, column: 9)
!2726 = !DILocation(line: 1228, column: 9, scope: !2665)
!2727 = !DILocation(line: 1229, column: 9, scope: !2725)
!2728 = !DILocation(line: 1230, column: 10, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1230, column: 9)
!2730 = !DILocation(line: 1230, column: 9, scope: !2665)
!2731 = !DILocation(line: 1231, column: 9, scope: !2729)
!2732 = !DILocation(line: 1232, column: 10, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1232, column: 9)
!2734 = !DILocation(line: 1232, column: 9, scope: !2665)
!2735 = !DILocation(line: 1233, column: 9, scope: !2733)
!2736 = !DILocation(line: 1234, column: 10, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1234, column: 9)
!2738 = !DILocation(line: 1234, column: 9, scope: !2665)
!2739 = !DILocation(line: 1235, column: 9, scope: !2737)
!2740 = !DILocation(line: 1237, column: 10, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1237, column: 9)
!2742 = !DILocation(line: 1237, column: 9, scope: !2665)
!2743 = !DILocation(line: 1238, column: 9, scope: !2741)
!2744 = !DILocation(line: 1239, column: 10, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1239, column: 9)
!2746 = !DILocation(line: 1239, column: 9, scope: !2665)
!2747 = !DILocation(line: 1240, column: 9, scope: !2745)
!2748 = !DILocation(line: 1241, column: 10, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1241, column: 9)
!2750 = !DILocation(line: 1241, column: 9, scope: !2665)
!2751 = !DILocation(line: 1242, column: 9, scope: !2749)
!2752 = !DILocation(line: 1243, column: 10, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1243, column: 9)
!2754 = !DILocation(line: 1243, column: 9, scope: !2665)
!2755 = !DILocation(line: 1244, column: 9, scope: !2753)
!2756 = !DILocation(line: 1246, column: 10, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1246, column: 9)
!2758 = !DILocation(line: 1246, column: 9, scope: !2665)
!2759 = !DILocation(line: 1247, column: 9, scope: !2757)
!2760 = !DILocation(line: 1248, column: 10, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1248, column: 9)
!2762 = !DILocation(line: 1248, column: 9, scope: !2665)
!2763 = !DILocation(line: 1249, column: 9, scope: !2761)
!2764 = !DILocation(line: 1250, column: 10, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1250, column: 9)
!2766 = !DILocation(line: 1250, column: 9, scope: !2665)
!2767 = !DILocation(line: 1251, column: 9, scope: !2765)
!2768 = !DILocation(line: 1252, column: 10, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1252, column: 9)
!2770 = !DILocation(line: 1252, column: 9, scope: !2665)
!2771 = !DILocation(line: 1253, column: 9, scope: !2769)
!2772 = !DILocation(line: 1255, column: 10, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1255, column: 9)
!2774 = !DILocation(line: 1255, column: 9, scope: !2665)
!2775 = !DILocation(line: 1256, column: 9, scope: !2773)
!2776 = !DILocation(line: 1257, column: 10, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1257, column: 9)
!2778 = !DILocation(line: 1257, column: 9, scope: !2665)
!2779 = !DILocation(line: 1258, column: 9, scope: !2777)
!2780 = !DILocation(line: 1259, column: 10, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1259, column: 9)
!2782 = !DILocation(line: 1259, column: 9, scope: !2665)
!2783 = !DILocation(line: 1260, column: 9, scope: !2781)
!2784 = !DILocation(line: 1261, column: 10, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1261, column: 9)
!2786 = !DILocation(line: 1261, column: 9, scope: !2665)
!2787 = !DILocation(line: 1262, column: 9, scope: !2785)
!2788 = !DILocation(line: 1264, column: 10, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1264, column: 9)
!2790 = !DILocation(line: 1264, column: 9, scope: !2665)
!2791 = !DILocation(line: 1265, column: 9, scope: !2789)
!2792 = !DILocation(line: 1266, column: 10, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1266, column: 9)
!2794 = !DILocation(line: 1266, column: 9, scope: !2665)
!2795 = !DILocation(line: 1267, column: 9, scope: !2793)
!2796 = !DILocation(line: 1268, column: 10, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1268, column: 9)
!2798 = !DILocation(line: 1268, column: 9, scope: !2665)
!2799 = !DILocation(line: 1269, column: 9, scope: !2797)
!2800 = !DILocation(line: 1270, column: 10, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1270, column: 9)
!2802 = !DILocation(line: 1270, column: 9, scope: !2665)
!2803 = !DILocation(line: 1271, column: 9, scope: !2801)
!2804 = !DILocation(line: 1272, column: 10, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1272, column: 9)
!2806 = !DILocation(line: 1272, column: 9, scope: !2665)
!2807 = !DILocation(line: 1273, column: 9, scope: !2805)
!2808 = !DILocation(line: 1274, column: 10, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1274, column: 9)
!2810 = !DILocation(line: 1274, column: 9, scope: !2665)
!2811 = !DILocation(line: 1275, column: 9, scope: !2809)
!2812 = !DILocation(line: 1277, column: 1, scope: !2665)
!2813 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !2814, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !13, !13, !13}
!2816 = !{!2817, !2818, !2819}
!2817 = !DILocalVariable(name: "aname", arg: 1, scope: !2813, file: !3, line: 1279, type: !13)
!2818 = !DILocalVariable(name: "name", arg: 2, scope: !2813, file: !3, line: 1279, type: !13)
!2819 = !DILocalVariable(name: "rname", arg: 3, scope: !2813, file: !3, line: 1279, type: !13)
!2820 = !DILocation(line: 0, scope: !2813)
!2821 = !DILocation(line: 1285, column: 5, scope: !2813)
!2822 = !DILocation(line: 1285, column: 14, scope: !2813)
!2823 = !DILocation(line: 1287, column: 9, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1287, column: 9)
!2825 = !DILocation(line: 1287, column: 22, scope: !2824)
!2826 = !DILocation(line: 1287, column: 27, scope: !2824)
!2827 = !DILocation(line: 1287, column: 30, scope: !2824)
!2828 = !DILocation(line: 1287, column: 38, scope: !2824)
!2829 = !DILocation(line: 1287, column: 9, scope: !2813)
!2830 = !DILocation(line: 1288, column: 20, scope: !2824)
!2831 = !DILocation(line: 1288, column: 9, scope: !2824)
!2832 = !DILocation(line: 1288, column: 18, scope: !2824)
!2833 = !DILocation(line: 1289, column: 16, scope: !2813)
!2834 = !DILocation(line: 1289, column: 5, scope: !2813)
!2835 = !DILocation(line: 1289, column: 14, scope: !2813)
!2836 = !DILocation(line: 1290, column: 16, scope: !2813)
!2837 = !DILocation(line: 1290, column: 5, scope: !2813)
!2838 = !DILocation(line: 1290, column: 14, scope: !2813)
!2839 = !DILocation(line: 1291, column: 16, scope: !2813)
!2840 = !DILocation(line: 1291, column: 5, scope: !2813)
!2841 = !DILocation(line: 1291, column: 14, scope: !2813)
!2842 = !DILocation(line: 1292, column: 9, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1292, column: 9)
!2844 = !DILocation(line: 1292, column: 18, scope: !2843)
!2845 = !DILocation(line: 1292, column: 9, scope: !2813)
!2846 = !DILocation(line: 1293, column: 9, scope: !2843)
!2847 = !DILocation(line: 1293, column: 18, scope: !2843)
!2848 = !DILocation(line: 1294, column: 5, scope: !2813)
!2849 = !DILocation(line: 1294, column: 14, scope: !2813)
!2850 = !DILocation(line: 1297, column: 10, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1297, column: 9)
!2852 = !DILocation(line: 1297, column: 34, scope: !2851)
!2853 = !DILocation(line: 1298, column: 10, scope: !2851)
!2854 = !DILocation(line: 1298, column: 19, scope: !2851)
!2855 = !DILocation(line: 1298, column: 26, scope: !2851)
!2856 = !DILocation(line: 1298, column: 29, scope: !2851)
!2857 = !DILocation(line: 1298, column: 38, scope: !2851)
!2858 = !DILocation(line: 1298, column: 45, scope: !2851)
!2859 = !DILocation(line: 1298, column: 48, scope: !2851)
!2860 = !DILocation(line: 1298, column: 57, scope: !2851)
!2861 = !DILocation(line: 1298, column: 65, scope: !2851)
!2862 = !DILocation(line: 1299, column: 11, scope: !2851)
!2863 = !DILocation(line: 1299, column: 36, scope: !2851)
!2864 = !DILocation(line: 1303, column: 17, scope: !2851)
!2865 = !DILocation(line: 1303, column: 26, scope: !2851)
!2866 = !DILocation(line: 1303, column: 35, scope: !2851)
!2867 = !DILocation(line: 1303, column: 44, scope: !2851)
!2868 = !DILocation(line: 1303, column: 53, scope: !2851)
!2869 = !DILocation(line: 1305, column: 11, scope: !2851)
!2870 = !DILocation(line: 1305, column: 14, scope: !2851)
!2871 = !DILocation(line: 1297, column: 9, scope: !2813)
!2872 = !DILocation(line: 1306, column: 20, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1305, column: 41)
!2874 = !DILocation(line: 1306, column: 9, scope: !2873)
!2875 = !DILocation(line: 1306, column: 18, scope: !2873)
!2876 = !DILocation(line: 1307, column: 9, scope: !2873)
!2877 = !DILocation(line: 1307, column: 18, scope: !2873)
!2878 = !DILocation(line: 1308, column: 5, scope: !2873)
!2879 = !DILocation(line: 1313, column: 1, scope: !2813)
!2880 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !2814, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2881)
!2881 = !{!2882, !2883, !2884}
!2882 = !DILocalVariable(name: "aname", arg: 1, scope: !2880, file: !3, line: 1315, type: !13)
!2883 = !DILocalVariable(name: "name", arg: 2, scope: !2880, file: !3, line: 1315, type: !13)
!2884 = !DILocalVariable(name: "rname", arg: 3, scope: !2880, file: !3, line: 1315, type: !13)
!2885 = !DILocation(line: 0, scope: !2880)
!2886 = !DILocation(line: 1329, column: 9, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1329, column: 9)
!2888 = !DILocation(line: 1329, column: 22, scope: !2887)
!2889 = !DILocation(line: 1329, column: 27, scope: !2887)
!2890 = !DILocation(line: 1329, column: 30, scope: !2887)
!2891 = !DILocation(line: 1329, column: 38, scope: !2887)
!2892 = !DILocation(line: 1329, column: 9, scope: !2880)
!2893 = !DILocation(line: 1330, column: 9, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1329, column: 45)
!2895 = !DILocation(line: 1331, column: 5, scope: !2894)
!2896 = !DILocation(line: 1332, column: 9, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1331, column: 12)
!2898 = !DILocation(line: 1332, column: 18, scope: !2897)
!2899 = !DILocation(line: 1333, column: 23, scope: !2897)
!2900 = !DILocation(line: 1333, column: 9, scope: !2897)
!2901 = !DILocation(line: 1334, column: 9, scope: !2897)
!2902 = !DILocation(line: 1334, column: 18, scope: !2897)
!2903 = !DILocation(line: 1337, column: 9, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1337, column: 9)
!2905 = !DILocation(line: 1337, column: 18, scope: !2904)
!2906 = !DILocation(line: 1337, column: 9, scope: !2880)
!2907 = !DILocation(line: 1337, column: 28, scope: !2904)
!2908 = !DILocation(line: 1337, column: 37, scope: !2904)
!2909 = !DILocation(line: 1338, column: 9, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1338, column: 9)
!2911 = !DILocation(line: 1338, column: 18, scope: !2910)
!2912 = !DILocation(line: 1338, column: 9, scope: !2880)
!2913 = !DILocation(line: 1338, column: 28, scope: !2910)
!2914 = !DILocation(line: 1338, column: 37, scope: !2910)
!2915 = !DILocation(line: 1339, column: 9, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1339, column: 9)
!2917 = !DILocation(line: 1339, column: 18, scope: !2916)
!2918 = !DILocation(line: 1339, column: 9, scope: !2880)
!2919 = !DILocation(line: 1339, column: 28, scope: !2916)
!2920 = !DILocation(line: 1339, column: 37, scope: !2916)
!2921 = !DILocation(line: 1346, column: 10, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1346, column: 9)
!2923 = !DILocation(line: 1346, column: 9, scope: !2880)
!2924 = !DILocation(line: 1346, column: 37, scope: !2922)
!2925 = !DILocation(line: 1347, column: 10, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1347, column: 9)
!2927 = !DILocation(line: 1347, column: 9, scope: !2880)
!2928 = !DILocation(line: 1347, column: 37, scope: !2926)
!2929 = !DILocation(line: 1348, column: 10, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1348, column: 9)
!2931 = !DILocation(line: 1348, column: 9, scope: !2880)
!2932 = !DILocation(line: 1348, column: 37, scope: !2930)
!2933 = !DILocation(line: 1349, column: 10, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1349, column: 9)
!2935 = !DILocation(line: 1349, column: 9, scope: !2880)
!2936 = !DILocation(line: 1349, column: 37, scope: !2934)
!2937 = !DILocation(line: 1350, column: 10, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1350, column: 9)
!2939 = !DILocation(line: 1350, column: 9, scope: !2880)
!2940 = !DILocation(line: 1350, column: 37, scope: !2938)
!2941 = !DILocation(line: 1351, column: 10, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1351, column: 9)
!2943 = !DILocation(line: 1351, column: 9, scope: !2880)
!2944 = !DILocation(line: 1351, column: 37, scope: !2942)
!2945 = !DILocation(line: 1352, column: 10, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1352, column: 9)
!2947 = !DILocation(line: 1352, column: 9, scope: !2880)
!2948 = !DILocation(line: 1352, column: 37, scope: !2946)
!2949 = !DILocation(line: 1353, column: 10, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1353, column: 9)
!2951 = !DILocation(line: 1353, column: 9, scope: !2880)
!2952 = !DILocation(line: 1353, column: 37, scope: !2950)
!2953 = !DILocation(line: 1359, column: 10, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1359, column: 9)
!2955 = !DILocation(line: 1359, column: 36, scope: !2954)
!2956 = !DILocation(line: 1359, column: 40, scope: !2954)
!2957 = !DILocation(line: 1359, column: 66, scope: !2954)
!2958 = !DILocation(line: 1360, column: 10, scope: !2954)
!2959 = !DILocation(line: 1360, column: 36, scope: !2954)
!2960 = !DILocation(line: 1360, column: 40, scope: !2954)
!2961 = !DILocation(line: 1360, column: 66, scope: !2954)
!2962 = !DILocation(line: 1361, column: 10, scope: !2954)
!2963 = !DILocation(line: 1361, column: 36, scope: !2954)
!2964 = !DILocation(line: 1361, column: 40, scope: !2954)
!2965 = !DILocation(line: 1361, column: 66, scope: !2954)
!2966 = !DILocation(line: 1362, column: 10, scope: !2954)
!2967 = !DILocation(line: 1362, column: 36, scope: !2954)
!2968 = !DILocation(line: 1362, column: 40, scope: !2954)
!2969 = !DILocation(line: 1362, column: 66, scope: !2954)
!2970 = !DILocation(line: 1363, column: 10, scope: !2954)
!2971 = !DILocation(line: 1363, column: 36, scope: !2954)
!2972 = !DILocation(line: 1363, column: 40, scope: !2954)
!2973 = !DILocation(line: 1363, column: 66, scope: !2954)
!2974 = !DILocation(line: 1364, column: 10, scope: !2954)
!2975 = !DILocation(line: 1364, column: 36, scope: !2954)
!2976 = !DILocation(line: 1364, column: 40, scope: !2954)
!2977 = !DILocation(line: 1364, column: 66, scope: !2954)
!2978 = !DILocation(line: 1365, column: 10, scope: !2954)
!2979 = !DILocation(line: 1365, column: 36, scope: !2954)
!2980 = !DILocation(line: 1365, column: 40, scope: !2954)
!2981 = !DILocation(line: 1365, column: 66, scope: !2954)
!2982 = !DILocation(line: 1366, column: 10, scope: !2954)
!2983 = !DILocation(line: 1366, column: 36, scope: !2954)
!2984 = !DILocation(line: 1366, column: 40, scope: !2954)
!2985 = !DILocation(line: 1359, column: 9, scope: !2880)
!2986 = !DILocation(line: 1367, column: 20, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1366, column: 67)
!2988 = !DILocation(line: 1367, column: 9, scope: !2987)
!2989 = !DILocation(line: 1367, column: 18, scope: !2987)
!2990 = !DILocation(line: 1368, column: 20, scope: !2987)
!2991 = !DILocation(line: 1368, column: 9, scope: !2987)
!2992 = !DILocation(line: 1368, column: 18, scope: !2987)
!2993 = !DILocation(line: 1369, column: 20, scope: !2987)
!2994 = !DILocation(line: 1369, column: 9, scope: !2987)
!2995 = !DILocation(line: 1369, column: 18, scope: !2987)
!2996 = !DILocation(line: 1370, column: 9, scope: !2987)
!2997 = !DILocation(line: 1370, column: 18, scope: !2987)
!2998 = !DILocation(line: 1371, column: 5, scope: !2987)
!2999 = !DILocation(line: 1373, column: 1, scope: !2880)
!3000 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !3001, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !343}
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "cid", arg: 1, scope: !3000, file: !3, line: 1011, type: !343)
!3005 = !DILocation(line: 0, scope: !3000)
!3006 = !DILocation(line: 1014, column: 13, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 1014, column: 9)
!3008 = !DILocation(line: 1014, column: 9, scope: !3000)
!3009 = !DILocation(line: 1015, column: 18, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 1015, column: 13)
!3011 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1014, column: 22)
!3012 = !DILocation(line: 1015, column: 25, scope: !3010)
!3013 = !DILocation(line: 1015, column: 13, scope: !3011)
!3014 = !DILocation(line: 1016, column: 23, scope: !3010)
!3015 = !DILocation(line: 1016, column: 13, scope: !3010)
!3016 = !DILocation(line: 1017, column: 14, scope: !3011)
!3017 = !DILocation(line: 1017, column: 9, scope: !3011)
!3018 = !DILocation(line: 1018, column: 5, scope: !3011)
!3019 = !DILocation(line: 1019, column: 1, scope: !3000)
