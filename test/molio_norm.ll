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
  %.not = icmp eq i8* %0, null, !dbg !400
  br i1 %.not, label %5, label %3, !dbg !402

3:                                                ; preds = %2
  %4 = load i8, i8* %0, align 1, !dbg !403, !tbaa !404
  %.not4 = icmp eq i8 %4, 0, !dbg !403
  br i1 %.not4, label %5, label %7, !dbg !407

5:                                                ; preds = %3, %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !408, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !396, metadata !DIExpression()), !dbg !399
  br label %22, !dbg !412

7:                                                ; preds = %3
  %8 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !413
  %.not5 = icmp eq i32 %8, 0, !dbg !413
  br i1 %.not5, label %9, label %11, !dbg !415

9:                                                ; preds = %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !416, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !396, metadata !DIExpression()), !dbg !399
  br label %22, !dbg !418

11:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !398, metadata !DIExpression()), !dbg !399
  %12 = call i32 @get_mytaskid() #14, !dbg !419
  %13 = icmp eq i32 %12, 0, !dbg !422
  br i1 %13, label %14, label %20, !dbg !423

14:                                               ; preds = %11
  %15 = call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #14, !dbg !424
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %15, metadata !396, metadata !DIExpression()), !dbg !399
  %16 = icmp eq %struct._IO_FILE* %15, null, !dbg !427
  br i1 %16, label %17, label %20, !dbg !428

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !429, !tbaa !410
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* nonnull %0) #15, !dbg !431
  call void @llvm.dbg.value(metadata i32 -1, metadata !398, metadata !DIExpression()), !dbg !399
  br label %20, !dbg !432

20:                                               ; preds = %14, %17, %11
  %.01 = phi %struct._IO_FILE* [ null, %11 ], [ %15, %17 ], [ %15, %14 ], !dbg !399
  %.1 = phi i32 [ 0, %11 ], [ -1, %17 ], [ 0, %14 ], !dbg !433
  call void @llvm.dbg.value(metadata i32 %.1, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.01, metadata !396, metadata !DIExpression()), !dbg !399
  call void @reducerror(i32 %.1) #14, !dbg !434
  %21 = call i32 @get_mytaskid() #14, !dbg !435
  %.not6 = icmp eq i32 %21, 0, !dbg !437
  %spec.select = select i1 %.not6, %struct._IO_FILE* %.01, %struct._IO_FILE* null, !dbg !438
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %spec.select, metadata !396, metadata !DIExpression()), !dbg !399
  br label %22

22:                                               ; preds = %9, %20, %5
  %.3 = phi %struct._IO_FILE* [ %6, %5 ], [ %spec.select, %20 ], [ %10, %9 ], !dbg !439
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.3, metadata !396, metadata !DIExpression()), !dbg !399
  %23 = call %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %.3, i8* %1), !dbg !440
  call void @llvm.dbg.value(metadata %struct.molecule_t* %23, metadata !397, metadata !DIExpression()), !dbg !399
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !441, !tbaa !410
  %.not3 = icmp eq %struct._IO_FILE* %.3, %24, !dbg !443
  br i1 %.not3, label %30, label %25, !dbg !444

25:                                               ; preds = %22
  %26 = call i32 @get_mytaskid() #14, !dbg !445
  %27 = icmp eq i32 %26, 0, !dbg !448
  br i1 %27, label %28, label %30, !dbg !449

28:                                               ; preds = %25
  %29 = call i32 @fclose(%struct._IO_FILE* %.3) #14, !dbg !450
  br label %30, !dbg !452

30:                                               ; preds = %25, %28, %22
  ret %struct.molecule_t* %23, !dbg !453
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

declare !dbg !34 dso_local i32 @get_mytaskid() #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare !dbg !40 dso_local void @reducerror(i32) #4

; Function Attrs: nounwind uwtable
define internal %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %0, i8* %1) #0 !dbg !454 {
  %3 = alloca [82 x i8], align 16
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 4
  %6 = alloca [10 x i8], align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca [10 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !458, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* %1, metadata !459, metadata !DIExpression()), !dbg !503
  %15 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 82, i8* nonnull %15) #14, !dbg !504
  call void @llvm.dbg.declare(metadata [82 x i8]* %3, metadata !465, metadata !DIExpression()), !dbg !505
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !506
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %16) #14, !dbg !506
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !469, metadata !DIExpression()), !dbg !507
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !508
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %17) #14, !dbg !508
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !473, metadata !DIExpression()), !dbg !509
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !510
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %18) #14, !dbg !510
  call void @llvm.dbg.declare(metadata [10 x i8]* %6, metadata !474, metadata !DIExpression()), !dbg !511
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !510
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %19) #14, !dbg !510
  call void @llvm.dbg.declare(metadata [10 x i8]* %7, metadata !475, metadata !DIExpression()), !dbg !512
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !513
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %20) #14, !dbg !513
  call void @llvm.dbg.declare(metadata [10 x i8]* %8, metadata !476, metadata !DIExpression()), !dbg !514
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !513
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %21) #14, !dbg !513
  call void @llvm.dbg.declare(metadata [10 x i8]* %9, metadata !477, metadata !DIExpression()), !dbg !515
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !516
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %22) #14, !dbg !516
  call void @llvm.dbg.declare(metadata [10 x i8]* %10, metadata !478, metadata !DIExpression()), !dbg !517
  %23 = bitcast i32* %11 to i8*, !dbg !518
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #14, !dbg !518
  %24 = bitcast double* %12 to i8*, !dbg !519
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #14, !dbg !519
  %25 = bitcast double* %13 to i8*, !dbg !519
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #14, !dbg !519
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !520
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %26) #14, !dbg !520
  call void @llvm.dbg.declare(metadata [256 x i8]* %14, metadata !492, metadata !DIExpression()), !dbg !521
  %27 = icmp eq i8* %1, null, !dbg !522
  br i1 %27, label %28, label %30, !dbg !524

28:                                               ; preds = %2
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !525
  store i8 0, i8* %29, align 16, !dbg !526, !tbaa !404
  br label %33, !dbg !525

30:                                               ; preds = %2
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !527
  %32 = call i8* @strcpy(i8* noundef nonnull %31, i8* noundef nonnull %1) #14, !dbg !528
  br label %33

33:                                               ; preds = %30, %28
  call void @initres(), !dbg !529
  call void @init_atab(), !dbg !530
  %34 = call %struct.molecule_t* @newmolecule() #14, !dbg !531
  call void @llvm.dbg.value(metadata %struct.molecule_t* %34, metadata !460, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 0, metadata !462, metadata !DIExpression()), !dbg !503
  %35 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !532
  store i8 0, i8* %35, align 1, !dbg !533, !tbaa !404
  call void @llvm.dbg.value(metadata i32 0, metadata !482, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 0, metadata !464, metadata !DIExpression()), !dbg !503
  store i32 0, i32* @n_atab, align 4, !dbg !534, !tbaa !535
  %36 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !537
  %37 = call i8* @ggets(i8* nonnull %36, i32 82, %struct._IO_FILE* %0) #14, !dbg !539
  %38 = icmp eq i8* %37, null, !dbg !540
  br i1 %38, label %._crit_edge56, label %.lr.ph55, !dbg !541

.lr.ph55:                                         ; preds = %33, %312
  %.0452 = phi i32 [ %.3, %312 ], [ 0, %33 ]
  %.0750 = phi i32 [ %.29, %312 ], [ 0, %33 ]
  %.01648 = phi i32 [ %.4, %312 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i32 %.0452, metadata !462, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %.0750, metadata !464, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %.01648, metadata !482, metadata !DIExpression()), !dbg !503
  %39 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !542
  %40 = call i64 @strlen(i8* noundef nonnull %39) #13, !dbg !544
  %41 = trunc i64 %40 to i32, !dbg !544
  call void @llvm.dbg.value(metadata i32 %41, metadata !490, metadata !DIExpression()), !dbg !503
  %sext = shl i64 %40, 32, !dbg !545
  %42 = ashr exact i64 %sext, 32, !dbg !545
  %smax = call i32 @llvm.smax.i32(i32 %41, i32 80), !dbg !545
  %wide.trip.count = zext i32 %smax to i64, !dbg !546
  call void @llvm.dbg.value(metadata i64 %42, metadata !490, metadata !DIExpression()), !dbg !503
  %exitcond27.not = icmp eq i64 %42, %wide.trip.count, !dbg !546
  br i1 %exitcond27.not, label %._crit_edge, label %.lr.ph, !dbg !548

.lr.ph:                                           ; preds = %.lr.ph55, %.lr.ph
  %indvars.iv28 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %42, %.lr.ph55 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv28, metadata !490, metadata !DIExpression()), !dbg !503
  %43 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 %indvars.iv28, !dbg !549
  store i8 32, i8* %43, align 1, !dbg !550, !tbaa !404
  %indvars.iv.next = add nsw i64 %indvars.iv28, 1, !dbg !551
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !490, metadata !DIExpression()), !dbg !503
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !546
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !548, !llvm.loop !552

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph55
  %44 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 80, !dbg !554
  store i8 0, i8* %44, align 16, !dbg !555, !tbaa !404
  %45 = bitcast [82 x i8]* %3 to i32*, !dbg !556
  %rhsv = load i32, i32* %45, align 16, !dbg !556
  %.not = icmp eq i32 %rhsv, 1297044545, !dbg !556
  br i1 %.not, label %49, label %46, !dbg !557

46:                                               ; preds = %._crit_edge
  %47 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !558
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull dereferenceable(6) %47, i64 6), !dbg !559
  %48 = icmp eq i32 %bcmp, 0, !dbg !560
  br i1 %48, label %49, label %290, !dbg !561

49:                                               ; preds = %46, %._crit_edge
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !562
  %51 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 12, !dbg !563
  %52 = call i8* @strncpy(i8* noundef nonnull %50, i8* noundef nonnull %51, i64 4) #14, !dbg !564
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 4, !dbg !565
  store i8 0, i8* %53, align 4, !dbg !566, !tbaa !404
  %54 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !567
  call void @llvm.dbg.value(metadata i8* %54, metadata !480, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* %54, metadata !479, metadata !DIExpression()), !dbg !503
  %55 = load i8, i8* %54, align 4, !dbg !569, !tbaa !404
  %.not70 = icmp eq i8 %55, 0, !dbg !571
  br i1 %.not70, label %._crit_edge33, label %.lr.ph32, !dbg !571

.lr.ph32:                                         ; preds = %49, %60
  %.01030 = phi i8* [ %61, %60 ], [ %54, %49 ]
  %.01229 = phi i8* [ %.113, %60 ], [ %54, %49 ]
  call void @llvm.dbg.value(metadata i8* %.01030, metadata !479, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* %.01229, metadata !480, metadata !DIExpression()), !dbg !503
  %56 = load i8, i8* %.01030, align 1, !dbg !572, !tbaa !404
  %.not124 = icmp eq i8 %56, 32, !dbg !575
  br i1 %.not124, label %60, label %57, !dbg !576

57:                                               ; preds = %.lr.ph32
  %58 = load i8, i8* %.01030, align 1, !dbg !577, !tbaa !404
  %59 = getelementptr inbounds i8, i8* %.01229, i64 1, !dbg !578
  call void @llvm.dbg.value(metadata i8* %59, metadata !480, metadata !DIExpression()), !dbg !503
  store i8 %58, i8* %.01229, align 1, !dbg !579, !tbaa !404
  br label %60, !dbg !580

60:                                               ; preds = %.lr.ph32, %57
  %.113 = phi i8* [ %59, %57 ], [ %.01229, %.lr.ph32 ], !dbg !581
  call void @llvm.dbg.value(metadata i8* %.113, metadata !480, metadata !DIExpression()), !dbg !503
  %61 = getelementptr inbounds i8, i8* %.01030, i64 1, !dbg !582
  call void @llvm.dbg.value(metadata i8* %61, metadata !479, metadata !DIExpression()), !dbg !503
  %62 = load i8, i8* %61, align 1, !dbg !569, !tbaa !404
  %.not125 = icmp eq i8 %62, 0, !dbg !571
  br i1 %.not125, label %._crit_edge33, label %.lr.ph32, !dbg !571, !llvm.loop !583

._crit_edge33:                                    ; preds = %60, %49
  %.012.lcssa = phi i8* [ %54, %49 ], [ %.113, %60 ], !dbg !581
  store i8 0, i8* %.012.lcssa, align 1, !dbg !585, !tbaa !404
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !586
  %64 = load i8, i8* %63, align 4, !dbg !586
  %65 = add i8 %64, -49, !dbg !588
  %66 = icmp ult i8 %65, 3, !dbg !588
  br i1 %66, label %67, label %83, !dbg !588

67:                                               ; preds = %._crit_edge33
  %68 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !589
  %69 = load i8, i8* %68, align 4, !dbg !589, !tbaa !404
  call void @llvm.dbg.value(metadata i8 %69, metadata !491, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i64 0, metadata !490, metadata !DIExpression()), !dbg !503
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !591
  %71 = call i64 @strlen(i8* noundef nonnull %70) #13, !dbg !594
  %72 = shl i64 %71, 32, !dbg !595
  %sext121 = add i64 %72, -4294967296, !dbg !595
  %73 = icmp sgt i64 %sext121, 0, !dbg !595
  br i1 %73, label %.lr.ph36, label %._crit_edge37, !dbg !596

.lr.ph36:                                         ; preds = %67, %.lr.ph36
  %indvars.iv2434 = phi i64 [ %indvars.iv.next25, %.lr.ph36 ], [ 0, %67 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2434, metadata !490, metadata !DIExpression()), !dbg !503
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2434, 1, !dbg !597
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %indvars.iv.next25, !dbg !598
  %75 = load i8, i8* %74, align 1, !dbg !598, !tbaa !404
  %76 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %indvars.iv2434, !dbg !599
  store i8 %75, i8* %76, align 1, !dbg !600, !tbaa !404
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next25, metadata !490, metadata !DIExpression()), !dbg !503
  %77 = call i64 @strlen(i8* noundef nonnull %70) #13, !dbg !594
  %78 = shl i64 %77, 32, !dbg !595
  %sext123 = add i64 %78, -4294967296, !dbg !595
  %79 = ashr exact i64 %sext123, 32, !dbg !595
  %80 = icmp slt i64 %indvars.iv.next25, %79, !dbg !595
  br i1 %80, label %.lr.ph36, label %._crit_edge37, !dbg !596, !llvm.loop !601

._crit_edge37:                                    ; preds = %.lr.ph36, %67
  %.1.lcssa.wide = phi i64 [ 0, %67 ], [ %indvars.iv.next25, %.lr.ph36 ]
  %sext122 = shl i64 %.1.lcssa.wide, 32, !dbg !603
  %81 = ashr exact i64 %sext122, 32, !dbg !603
  %82 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %81, !dbg !603
  store i8 %69, i8* %82, align 1, !dbg !604, !tbaa !404
  br label %83, !dbg !605

83:                                               ; preds = %._crit_edge33, %._crit_edge37
  %84 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2, !dbg !606
  %85 = load i8, i8* %84, align 2, !dbg !606, !tbaa !404
  %86 = icmp eq i8 %85, 42, !dbg !608
  br i1 %86, label %87, label %89, !dbg !609

87:                                               ; preds = %83
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2, !dbg !610
  store i8 39, i8* %88, align 2, !dbg !611, !tbaa !404
  br label %89, !dbg !610

89:                                               ; preds = %87, %83
  %90 = bitcast [10 x i8]* %5 to i32*, !dbg !612
  %lhsv126 = load i32, i32* %90, align 4, !dbg !612
  %.not127 = icmp eq i32 %lhsv126, 5059907, !dbg !612
  br i1 %.not127, label %91, label %93, !dbg !614

91:                                               ; preds = %89
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %92, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 3, i1 false) #14, !dbg !616
  br label %93, !dbg !616

93:                                               ; preds = %91, %89
  %94 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !617
  %95 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 17, !dbg !618
  %96 = call i8* @strncpy(i8* noundef nonnull %94, i8* noundef nonnull %95, i64 3) #14, !dbg !619
  %97 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 3, !dbg !620
  store i8 0, i8* %97, align 1, !dbg !621, !tbaa !404
  %98 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !622
  call void @llvm.dbg.value(metadata i8* %98, metadata !480, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* %98, metadata !479, metadata !DIExpression()), !dbg !503
  %99 = load i8, i8* %98, align 4, !dbg !624, !tbaa !404
  %.not73 = icmp eq i8 %99, 0, !dbg !626
  br i1 %.not73, label %._crit_edge43, label %.lr.ph42, !dbg !626

.lr.ph42:                                         ; preds = %93, %104
  %.11140 = phi i8* [ %105, %104 ], [ %98, %93 ]
  %.21439 = phi i8* [ %.315, %104 ], [ %98, %93 ]
  call void @llvm.dbg.value(metadata i8* %.11140, metadata !479, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* %.21439, metadata !480, metadata !DIExpression()), !dbg !503
  %100 = load i8, i8* %.11140, align 1, !dbg !627, !tbaa !404
  %.not119 = icmp eq i8 %100, 32, !dbg !630
  br i1 %.not119, label %104, label %101, !dbg !631

101:                                              ; preds = %.lr.ph42
  %102 = load i8, i8* %.11140, align 1, !dbg !632, !tbaa !404
  %103 = getelementptr inbounds i8, i8* %.21439, i64 1, !dbg !633
  call void @llvm.dbg.value(metadata i8* %103, metadata !480, metadata !DIExpression()), !dbg !503
  store i8 %102, i8* %.21439, align 1, !dbg !634, !tbaa !404
  br label %104, !dbg !635

104:                                              ; preds = %.lr.ph42, %101
  %.315 = phi i8* [ %103, %101 ], [ %.21439, %.lr.ph42 ], !dbg !636
  call void @llvm.dbg.value(metadata i8* %.315, metadata !480, metadata !DIExpression()), !dbg !503
  %105 = getelementptr inbounds i8, i8* %.11140, i64 1, !dbg !637
  call void @llvm.dbg.value(metadata i8* %105, metadata !479, metadata !DIExpression()), !dbg !503
  %106 = load i8, i8* %105, align 1, !dbg !624, !tbaa !404
  %.not120 = icmp eq i8 %106, 0, !dbg !626
  br i1 %.not120, label %._crit_edge43, label %.lr.ph42, !dbg !626, !llvm.loop !638

._crit_edge43:                                    ; preds = %104, %93
  %.214.lcssa = phi i8* [ %98, %93 ], [ %.315, %104 ], !dbg !636
  store i8 0, i8* %.214.lcssa, align 1, !dbg !640, !tbaa !404
  %107 = bitcast [10 x i8]* %5 to i32*, !dbg !641
  %lhsv128 = load i32, i32* %107, align 4, !dbg !641
  %.not129 = icmp eq i32 %lhsv128, 2568783, !dbg !641
  br i1 %.not129, label %108, label %109, !dbg !643

108:                                              ; preds = %._crit_edge43
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4, !dbg !644, !tbaa !645
  br label %109, !dbg !647

109:                                              ; preds = %108, %._crit_edge43
  %110 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !648
  %bcmp76 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %110, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 5), !dbg !650
  %111 = icmp eq i32 %bcmp76, 0, !dbg !650
  %112 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 7), align 4
  %113 = icmp eq i32 %112, 2
  %or.cond66 = select i1 %111, i1 %113, i1 false, !dbg !651
  br i1 %or.cond66, label %114, label %116, !dbg !651

114:                                              ; preds = %109
  %115 = bitcast [10 x i8]* %5 to i32*, !dbg !652
  store i32 2568776, i32* %115, align 4, !dbg !652
  br label %116, !dbg !652

116:                                              ; preds = %114, %109
  %117 = bitcast [10 x i8]* %6 to i16*, !dbg !653
  %lhsv130 = load i16, i16* %117, align 4, !dbg !653
  %.not131 = icmp eq i16 %lhsv130, 65, !dbg !653
  br i1 %.not131, label %118, label %120, !dbg !655

118:                                              ; preds = %116
  %119 = bitcast [10 x i8]* %6 to i32*, !dbg !656
  store i32 4539457, i32* %119, align 4, !dbg !656
  br label %120, !dbg !656

120:                                              ; preds = %118, %116
  %121 = bitcast [10 x i8]* %6 to i16*, !dbg !657
  %lhsv = load i16, i16* %121, align 4, !dbg !657
  %.not80 = icmp eq i16 %lhsv, 67, !dbg !657
  br i1 %.not80, label %122, label %124, !dbg !659

122:                                              ; preds = %120
  %123 = bitcast [10 x i8]* %6 to i32*, !dbg !660
  store i32 5527875, i32* %123, align 4, !dbg !660
  br label %124, !dbg !660

124:                                              ; preds = %122, %120
  %125 = bitcast [10 x i8]* %6 to i16*, !dbg !661
  %lhsv81 = load i16, i16* %125, align 4, !dbg !661
  %.not83 = icmp eq i16 %lhsv81, 71, !dbg !661
  br i1 %.not83, label %126, label %128, !dbg !663

126:                                              ; preds = %124
  %127 = bitcast [10 x i8]* %6 to i32*, !dbg !664
  store i32 4281671, i32* %127, align 4, !dbg !664
  br label %128, !dbg !664

128:                                              ; preds = %126, %124
  %129 = bitcast [10 x i8]* %6 to i16*, !dbg !665
  %lhsv84 = load i16, i16* %129, align 4, !dbg !665
  %.not86 = icmp eq i16 %lhsv84, 84, !dbg !665
  br i1 %.not86, label %130, label %132, !dbg !667

130:                                              ; preds = %128
  %131 = bitcast [10 x i8]* %6 to i32*, !dbg !668
  store i32 5851220, i32* %131, align 4, !dbg !668
  br label %132, !dbg !668

132:                                              ; preds = %130, %128
  %133 = bitcast [10 x i8]* %6 to i16*, !dbg !669
  %lhsv87 = load i16, i16* %133, align 4, !dbg !669
  %.not89 = icmp eq i16 %lhsv87, 85, !dbg !669
  br i1 %.not89, label %134, label %136, !dbg !671

134:                                              ; preds = %132
  %135 = bitcast [10 x i8]* %6 to i32*, !dbg !672
  store i32 4280917, i32* %135, align 4, !dbg !672
  br label %136, !dbg !672

136:                                              ; preds = %134, %132
  %137 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !673
  %138 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 21, !dbg !674
  %139 = call i8* @strncpy(i8* noundef nonnull %137, i8* noundef nonnull %138, i64 6) #14, !dbg !675
  %140 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6, !dbg !676
  store i8 0, i8* %140, align 1, !dbg !677, !tbaa !404
  %141 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 21, !dbg !678
  %142 = load i8, i8* %141, align 1, !dbg !678, !tbaa !404
  %143 = sext i8 %142 to i32, !dbg !678
  call void @llvm.dbg.value(metadata i32 %143, metadata !463, metadata !DIExpression()), !dbg !503
  %144 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 22, !dbg !679
  call void @llvm.dbg.value(metadata i32* %11, metadata !481, metadata !DIExpression(DW_OP_deref)), !dbg !503
  %145 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* nonnull %11) #14, !dbg !680
  %146 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !681
  %147 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 30, !dbg !682
  %148 = call i8* @strncpy(i8* noundef nonnull %146, i8* noundef nonnull %147, i64 8) #14, !dbg !683
  %149 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8, !dbg !684
  store i8 0, i8* %149, align 1, !dbg !685, !tbaa !404
  %150 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !686
  %151 = call double @atof(i8* %150) #13, !dbg !687
  call void @llvm.dbg.value(metadata double %151, metadata !483, metadata !DIExpression()), !dbg !503
  %152 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !688
  %153 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 38, !dbg !689
  %154 = call i8* @strncpy(i8* noundef nonnull %152, i8* noundef nonnull %153, i64 8) #14, !dbg !690
  %155 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8, !dbg !691
  store i8 0, i8* %155, align 1, !dbg !692, !tbaa !404
  %156 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !693
  %157 = call double @atof(i8* %156) #13, !dbg !694
  call void @llvm.dbg.value(metadata double %157, metadata !484, metadata !DIExpression()), !dbg !503
  %158 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !695
  %159 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 46, !dbg !696
  %160 = call i8* @strncpy(i8* noundef nonnull %158, i8* noundef nonnull %159, i64 8) #14, !dbg !697
  %161 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8, !dbg !698
  store i8 0, i8* %161, align 1, !dbg !699, !tbaa !404
  %162 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !700
  %163 = call double @atof(i8* %162) #13, !dbg !701
  call void @llvm.dbg.value(metadata double %163, metadata !485, metadata !DIExpression()), !dbg !503
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !702
  %165 = call i8* @strstr(i8* noundef nonnull %164, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #13, !dbg !704
  %.not90 = icmp eq i8* %165, null, !dbg !704
  br i1 %.not90, label %169, label %166, !dbg !705

166:                                              ; preds = %136
  %167 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 54, !dbg !706
  call void @llvm.dbg.value(metadata double* %12, metadata !486, metadata !DIExpression(DW_OP_deref)), !dbg !503
  call void @llvm.dbg.value(metadata double* %13, metadata !487, metadata !DIExpression(DW_OP_deref)), !dbg !503
  %168 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* nonnull %12, double* nonnull %13) #14, !dbg !708
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !488, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !489, metadata !DIExpression()), !dbg !503
  br label %201, !dbg !709

169:                                              ; preds = %136
  %170 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !710
  %lhsc = load i8, i8* %170, align 4, !dbg !713
  %.not93 = icmp eq i8 %lhsc, 72, !dbg !713
  br i1 %.not93, label %171, label %172, !dbg !714

171:                                              ; preds = %169
  call void @llvm.dbg.value(metadata double 1.200000e+00, metadata !487, metadata !DIExpression()), !dbg !503
  store double 1.200000e+00, double* %13, align 8, !dbg !715, !tbaa !716
  br label %188, !dbg !718

172:                                              ; preds = %169
  %173 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !719
  %lhsc99 = load i8, i8* %173, align 4, !dbg !721
  %.not102 = icmp eq i8 %lhsc99, 67, !dbg !721
  br i1 %.not102, label %174, label %175, !dbg !722

174:                                              ; preds = %172
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !487, metadata !DIExpression()), !dbg !503
  store double 1.700000e+00, double* %13, align 8, !dbg !723, !tbaa !716
  br label %188, !dbg !724

175:                                              ; preds = %172
  %176 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !725
  %lhsc103 = load i8, i8* %176, align 4, !dbg !727
  %.not106 = icmp eq i8 %lhsc103, 78, !dbg !727
  br i1 %.not106, label %177, label %178, !dbg !728

177:                                              ; preds = %175
  call void @llvm.dbg.value(metadata double 1.550000e+00, metadata !487, metadata !DIExpression()), !dbg !503
  store double 1.550000e+00, double* %13, align 8, !dbg !729, !tbaa !716
  br label %188, !dbg !730

178:                                              ; preds = %175
  %179 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !731
  %lhsc107 = load i8, i8* %179, align 4, !dbg !733
  %.not110 = icmp eq i8 %lhsc107, 79, !dbg !733
  br i1 %.not110, label %180, label %181, !dbg !734

180:                                              ; preds = %178
  call void @llvm.dbg.value(metadata double 1.500000e+00, metadata !487, metadata !DIExpression()), !dbg !503
  store double 1.500000e+00, double* %13, align 8, !dbg !735, !tbaa !716
  br label %188, !dbg !736

181:                                              ; preds = %178
  %182 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !737
  %lhsc111 = load i8, i8* %182, align 4, !dbg !739
  %.not114 = icmp eq i8 %lhsc111, 83, !dbg !739
  br i1 %.not114, label %183, label %184, !dbg !740

183:                                              ; preds = %181
  call void @llvm.dbg.value(metadata double 1.800000e+00, metadata !487, metadata !DIExpression()), !dbg !503
  store double 1.800000e+00, double* %13, align 8, !dbg !741, !tbaa !716
  br label %188, !dbg !742

184:                                              ; preds = %181
  %185 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !743
  %lhsc115 = load i8, i8* %185, align 4, !dbg !745
  %.not118 = icmp eq i8 %lhsc115, 80, !dbg !745
  br i1 %.not118, label %186, label %187, !dbg !746

186:                                              ; preds = %184
  call void @llvm.dbg.value(metadata double 1.850000e+00, metadata !487, metadata !DIExpression()), !dbg !503
  store double 1.850000e+00, double* %13, align 8, !dbg !747, !tbaa !716
  br label %188, !dbg !748

187:                                              ; preds = %184
  call void @llvm.dbg.value(metadata double 1.700000e+00, metadata !487, metadata !DIExpression()), !dbg !503
  store double 1.700000e+00, double* %13, align 8, !dbg !749, !tbaa !716
  br label %188

188:                                              ; preds = %174, %180, %186, %187, %183, %177, %171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !486, metadata !DIExpression()), !dbg !503
  store double 0.000000e+00, double* %12, align 8, !dbg !750, !tbaa !716
  %189 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !751
  %190 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 54, !dbg !752
  %191 = call i8* @strncpy(i8* noundef nonnull %189, i8* noundef nonnull %190, i64 6) #14, !dbg !753
  %192 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6, !dbg !754
  store i8 0, i8* %192, align 1, !dbg !755, !tbaa !404
  %193 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !756
  %194 = call double @atof(i8* %193) #13, !dbg !757
  call void @llvm.dbg.value(metadata double %194, metadata !488, metadata !DIExpression()), !dbg !503
  %195 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !758
  %196 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 60, !dbg !759
  %197 = call i8* @strncpy(i8* noundef nonnull %195, i8* noundef nonnull %196, i64 6) #14, !dbg !760
  %198 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6, !dbg !761
  store i8 0, i8* %198, align 1, !dbg !762, !tbaa !404
  %199 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !763
  %200 = call double @atof(i8* %199) #13, !dbg !764
  call void @llvm.dbg.value(metadata double %200, metadata !489, metadata !DIExpression()), !dbg !503
  br label %201

201:                                              ; preds = %188, %166
  %.06 = phi double [ 1.000000e+00, %166 ], [ %194, %188 ], !dbg !765
  %.03 = phi double [ 0.000000e+00, %166 ], [ %200, %188 ], !dbg !765
  call void @llvm.dbg.value(metadata double %.03, metadata !489, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata double %.06, metadata !488, metadata !DIExpression()), !dbg !503
  %.not94 = icmp eq i32 %.0452, %143, !dbg !766
  br i1 %.not94, label %247, label %202, !dbg !767

202:                                              ; preds = %201
  %203 = load i32, i32* @n_atab, align 4, !dbg !768, !tbaa !535
  %204 = icmp sgt i32 %203, 0, !dbg !770
  br i1 %204, label %205, label %215, !dbg !771

205:                                              ; preds = %202
  %206 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !772, !tbaa !774
  %207 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !775
  %208 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %206, i8* noundef nonnull %207) #14, !dbg !776
  %209 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !777, !tbaa !778
  %210 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !779
  %211 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %209, i8* noundef nonnull %210) #14, !dbg !780
  store i32 %.01648, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !781, !tbaa !782
  %212 = load i32, i32* @n_atab, align 4, !dbg !783, !tbaa !535
  store i32 %212, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !784, !tbaa !785
  call void @makebonds(%struct.residue_t* nonnull @res), !dbg !786
  %213 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !787
  %214 = call i32 @addresidue(%struct.molecule_t* %34, i8* nonnull %213, %struct.residue_t* nonnull @res) #14, !dbg !788
  call void @initres(), !dbg !789
  store i32 0, i32* @n_atab, align 4, !dbg !790, !tbaa !535
  br label %215, !dbg !791

215:                                              ; preds = %205, %202
  %216 = add nsw i32 %.0750, 1, !dbg !792
  call void @llvm.dbg.value(metadata i32 %216, metadata !464, metadata !DIExpression()), !dbg !503
  %217 = icmp eq i8 %142, 32, !dbg !793
  br i1 %217, label %218, label %221, !dbg !795

218:                                              ; preds = %215
  %219 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !796
  %220 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %219, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %216) #14, !dbg !797
  br label %224, !dbg !797

221:                                              ; preds = %215
  %222 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !798
  store i8 %142, i8* %222, align 1, !dbg !800, !tbaa !404
  %223 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 1, !dbg !801
  store i8 0, i8* %223, align 1, !dbg !802, !tbaa !404
  br label %224

224:                                              ; preds = %221, %218
  %225 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !803
  %226 = call i32 @addstrand(%struct.molecule_t* %34, i8* nonnull %225) #14, !dbg !804
  call void @llvm.dbg.value(metadata %struct.strand_t* null, metadata !493, metadata !DIExpression()), !dbg !805
  %227 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %34, i64 0, i32 2, !dbg !806
  %228 = load %struct.strand_t*, %struct.strand_t** %227, align 8, !dbg !806, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %228, metadata !502, metadata !DIExpression()), !dbg !805
  %.not96 = icmp eq %struct.strand_t* %228, null, !dbg !810
  br i1 %.not96, label %.loopexit, label %.lr.ph47, !dbg !810

.lr.ph47:                                         ; preds = %224, %233
  %.045 = phi %struct.strand_t* [ %235, %233 ], [ %228, %224 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.045, metadata !502, metadata !DIExpression()), !dbg !805
  %229 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.045, i64 0, i32 0, !dbg !811
  %230 = load i8*, i8** %229, align 8, !dbg !811, !tbaa !815
  %231 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !817
  %232 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %230, i8* noundef nonnull %231) #13, !dbg !818
  %.not97 = icmp eq i32 %232, 0, !dbg !818
  br i1 %.not97, label %.loopexit, label %233, !dbg !819

233:                                              ; preds = %.lr.ph47
  %234 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.045, i64 0, i32 4, !dbg !820
  %235 = load %struct.strand_t*, %struct.strand_t** %234, align 8, !dbg !820, !tbaa !821
  call void @llvm.dbg.value(metadata %struct.strand_t* %235, metadata !502, metadata !DIExpression()), !dbg !805
  %.not98 = icmp eq %struct.strand_t* %235, null, !dbg !810
  br i1 %.not98, label %.loopexit, label %.lr.ph47, !dbg !810, !llvm.loop !822

.loopexit:                                        ; preds = %224, %233, %.lr.ph47
  %.01 = phi %struct.strand_t* [ %.045, %.lr.ph47 ], [ null, %233 ], [ null, %224 ], !dbg !824
  call void @llvm.dbg.value(metadata %struct.strand_t* %.01, metadata !493, metadata !DIExpression()), !dbg !805
  %236 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 6, !dbg !825
  store i32 10000, i32* %236, align 4, !dbg !826, !tbaa !827
  %237 = call noalias dereferenceable_or_null(1280000) i8* @malloc(i64 1280000) #14, !dbg !828
  %238 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i64 0, i32 7, !dbg !829
  %239 = bitcast %struct.residue_t*** %238 to i8**, !dbg !830
  store i8* %237, i8** %239, align 8, !dbg !830, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %143, metadata !462, metadata !DIExpression()), !dbg !503
  %240 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !832
  %241 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !833
  %242 = call i8* @strcpy(i8* noundef nonnull %240, i8* noundef nonnull %241) #14, !dbg !834
  %243 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !835
  %244 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !836
  %245 = call i8* @strcpy(i8* noundef nonnull %243, i8* noundef nonnull %244) #14, !dbg !837
  %246 = load i32, i32* %11, align 4, !dbg !838, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %246, metadata !481, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %246, metadata !482, metadata !DIExpression()), !dbg !503
  br label %269, !dbg !839

247:                                              ; preds = %201
  %248 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !840
  %249 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !842
  %250 = load i32, i32* %11, align 4, !dbg !843, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %250, metadata !481, metadata !DIExpression()), !dbg !503
  %251 = call i32 @isnewres(i8* nonnull %248, i8* nonnull %249, i32 %.01648, i32 %250), !dbg !844
  %.not95 = icmp eq i32 %251, 0, !dbg !844
  br i1 %.not95, label %269, label %252, !dbg !845

252:                                              ; preds = %247
  %253 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !846, !tbaa !774
  %254 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !848
  %255 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %253, i8* noundef nonnull %254) #14, !dbg !849
  %256 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !850, !tbaa !778
  %257 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !851
  %258 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %256, i8* noundef nonnull %257) #14, !dbg !852
  store i32 %.01648, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !853, !tbaa !782
  %259 = load i32, i32* @n_atab, align 4, !dbg !854, !tbaa !535
  store i32 %259, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !855, !tbaa !785
  call void @makebonds(%struct.residue_t* nonnull @res), !dbg !856
  %260 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !857
  %261 = call i32 @addresidue(%struct.molecule_t* %34, i8* nonnull %260, %struct.residue_t* nonnull @res) #14, !dbg !858
  call void @initres(), !dbg !859
  %262 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !860
  %263 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !861
  %264 = call i8* @strcpy(i8* noundef nonnull %262, i8* noundef nonnull %263) #14, !dbg !862
  %265 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !863
  %266 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !864
  %267 = call i8* @strcpy(i8* noundef nonnull %265, i8* noundef nonnull %266) #14, !dbg !865
  %268 = load i32, i32* %11, align 4, !dbg !866, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %268, metadata !481, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %268, metadata !482, metadata !DIExpression()), !dbg !503
  store i32 0, i32* @n_atab, align 4, !dbg !867, !tbaa !535
  br label %269, !dbg !868

269:                                              ; preds = %247, %252, %.loopexit
  %.218 = phi i32 [ %246, %.loopexit ], [ %268, %252 ], [ %.01648, %247 ], !dbg !869
  %.18 = phi i32 [ %216, %.loopexit ], [ %.0750, %252 ], [ %.0750, %247 ], !dbg !870
  %.15 = phi i32 [ %143, %.loopexit ], [ %.0452, %252 ], [ %.0452, %247 ], !dbg !503
  call void @llvm.dbg.value(metadata i32 %.15, metadata !462, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %.18, metadata !464, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %.218, metadata !482, metadata !DIExpression()), !dbg !503
  %270 = load i32, i32* @n_atab, align 4, !dbg !871, !tbaa !535
  %271 = sext i32 %270 to i64, !dbg !872
  %272 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, !dbg !872
  call void @llvm.dbg.value(metadata %struct.atom_t* %272, metadata !461, metadata !DIExpression()), !dbg !503
  call void @NAB_initatom(%struct.atom_t* nonnull %272, i32 0) #14, !dbg !873
  %273 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %272, i64 0, i32 0, !dbg !874
  %274 = load i8*, i8** %273, align 16, !dbg !874, !tbaa !875
  %275 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !877
  %276 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %274, i8* noundef nonnull %275) #14, !dbg !878
  %277 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 2, !dbg !879
  store i32 0, i32* %277, align 16, !dbg !880, !tbaa !881
  %278 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 5, !dbg !882
  store %struct.residue_t* null, %struct.residue_t** %278, align 8, !dbg !883, !tbaa !884
  %279 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 17, i64 0, !dbg !885
  store double %151, double* %279, align 16, !dbg !886, !tbaa !716
  %280 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 17, i64 1, !dbg !887
  store double %157, double* %280, align 8, !dbg !888, !tbaa !716
  %281 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 17, i64 2, !dbg !889
  store double %163, double* %281, align 16, !dbg !890, !tbaa !716
  %282 = load double, double* %12, align 8, !dbg !891, !tbaa !716
  call void @llvm.dbg.value(metadata double %282, metadata !486, metadata !DIExpression()), !dbg !503
  %283 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 6, !dbg !892
  store double %282, double* %283, align 16, !dbg !893, !tbaa !894
  %284 = load double, double* %13, align 8, !dbg !895, !tbaa !716
  call void @llvm.dbg.value(metadata double %284, metadata !487, metadata !DIExpression()), !dbg !503
  %285 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 7, !dbg !896
  store double %284, double* %285, align 8, !dbg !897, !tbaa !898
  %286 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 9, !dbg !899
  store double %.06, double* %286, align 8, !dbg !900, !tbaa !901
  %287 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %271, i32 8, !dbg !902
  store double %.03, double* %287, align 16, !dbg !903, !tbaa !904
  %288 = load i32, i32* @n_atab, align 4, !dbg !905, !tbaa !535
  %289 = add nsw i32 %288, 1, !dbg !905
  store i32 %289, i32* @n_atab, align 4, !dbg !905, !tbaa !535
  br label %312, !dbg !906

290:                                              ; preds = %46
  %291 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !907
  %bcmp68 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %291, i64 3), !dbg !909
  %292 = icmp eq i32 %bcmp68, 0, !dbg !910
  br i1 %292, label %293, label %309, !dbg !911

293:                                              ; preds = %290
  %294 = load i32, i32* @n_atab, align 4, !dbg !912, !tbaa !535
  %295 = icmp sgt i32 %294, 0, !dbg !915
  br i1 %295, label %296, label %306, !dbg !916

296:                                              ; preds = %293
  %297 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !917, !tbaa !774
  %298 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !919
  %299 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %297, i8* noundef nonnull %298) #14, !dbg !920
  %300 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !921, !tbaa !778
  %301 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !922
  %302 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %300, i8* noundef nonnull %301) #14, !dbg !923
  store i32 %.01648, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !924, !tbaa !782
  %303 = load i32, i32* @n_atab, align 4, !dbg !925, !tbaa !535
  store i32 %303, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !926, !tbaa !785
  call void @makebonds(%struct.residue_t* nonnull @res), !dbg !927
  %304 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !928
  %305 = call i32 @addresidue(%struct.molecule_t* %34, i8* nonnull %304, %struct.residue_t* nonnull @res) #14, !dbg !929
  call void @initres(), !dbg !930
  store i32 0, i32* @n_atab, align 4, !dbg !931, !tbaa !535
  br label %306, !dbg !932

306:                                              ; preds = %296, %293
  call void @llvm.dbg.value(metadata i32 0, metadata !462, metadata !DIExpression()), !dbg !503
  %307 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !933
  store i8 0, i8* %307, align 1, !dbg !934, !tbaa !404
  %308 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !935
  store i8 0, i8* %308, align 1, !dbg !936, !tbaa !404
  call void @llvm.dbg.value(metadata i32 0, metadata !482, metadata !DIExpression()), !dbg !503
  br label %312, !dbg !937

309:                                              ; preds = %290
  %310 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !938
  %bcmp69 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) %310, i64 3), !dbg !940
  %311 = icmp eq i32 %bcmp69, 0, !dbg !941
  br i1 %311, label %._crit_edge56, label %312, !dbg !942

312:                                              ; preds = %306, %309, %269
  %.4 = phi i32 [ %.218, %269 ], [ 0, %306 ], [ %.01648, %309 ], !dbg !943
  %.29 = phi i32 [ %.18, %269 ], [ %.0750, %306 ], [ %.0750, %309 ], !dbg !870
  %.3 = phi i32 [ %.15, %269 ], [ 0, %306 ], [ %.0452, %309 ], !dbg !943
  call void @llvm.dbg.value(metadata i32 %.3, metadata !462, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %.29, metadata !464, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %.4, metadata !482, metadata !DIExpression()), !dbg !503
  %313 = call i8* @ggets(i8* nonnull %36, i32 82, %struct._IO_FILE* %0) #14, !dbg !539
  %314 = icmp eq i8* %313, null, !dbg !540
  br i1 %314, label %._crit_edge56, label %.lr.ph55, !dbg !541, !llvm.loop !944

._crit_edge56:                                    ; preds = %309, %33, %312
  %.01622 = phi i32 [ 0, %33 ], [ %.4, %312 ], [ %.01648, %309 ]
  %315 = load i32, i32* @n_atab, align 4, !dbg !947, !tbaa !535
  %316 = icmp sgt i32 %315, 0, !dbg !949
  br i1 %316, label %317, label %327, !dbg !950

317:                                              ; preds = %._crit_edge56
  %318 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !951, !tbaa !774
  %319 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !953
  %320 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %318, i8* noundef nonnull %319) #14, !dbg !954
  %321 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !955, !tbaa !778
  %322 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !956
  %323 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %321, i8* noundef nonnull %322) #14, !dbg !957
  store i32 %.01622, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 1), align 8, !dbg !958, !tbaa !782
  %324 = load i32, i32* @n_atab, align 4, !dbg !959, !tbaa !535
  store i32 %324, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !960, !tbaa !785
  call void @makebonds(%struct.residue_t* nonnull @res), !dbg !961
  %325 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !962
  %326 = call i32 @addresidue(%struct.molecule_t* %34, i8* nonnull %325, %struct.residue_t* nonnull @res) #14, !dbg !963
  call void @initres(), !dbg !964
  br label %327, !dbg !965

327:                                              ; preds = %317, %._crit_edge56
  %328 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %34, i64 0, i32 5, !dbg !966
  store i32 0, i32* %328, align 8, !dbg !967, !tbaa !968
  %329 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %329) #14, !dbg !969
  %330 = bitcast double* %13 to i8*, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %330) #14, !dbg !969
  %331 = bitcast double* %12 to i8*, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %331) #14, !dbg !969
  %332 = bitcast i32* %11 to i8*, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %332) #14, !dbg !969
  %333 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %333) #14, !dbg !969
  %334 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %334) #14, !dbg !969
  %335 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %335) #14, !dbg !969
  %336 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %336) #14, !dbg !969
  %337 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %337) #14, !dbg !969
  %338 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %338) #14, !dbg !969
  %339 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %339) #14, !dbg !969
  %340 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 82, i8* nonnull %340) #14, !dbg !969
  ret %struct.molecule_t* %34, !dbg !970
}

declare !dbg !43 dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local [4 x [4 x double]]* @getmatrix(i8* %0) #0 !dbg !2 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !369, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !370, metadata !DIExpression()), !dbg !971
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !972
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #14, !dbg !972
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !374, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.declare(metadata i32* undef, metadata !379, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i32 0, metadata !382, metadata !DIExpression()), !dbg !971
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !975
  %4 = icmp eq i8* %0, null, !dbg !976
  br i1 %4, label %8, label %5, !dbg !978

5:                                                ; preds = %1
  %6 = load i8, i8* %0, align 1, !dbg !979, !tbaa !404
  %7 = icmp eq i8 %6, 0, !dbg !980
  br i1 %7, label %8, label %11, !dbg !981

8:                                                ; preds = %5, %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !982, !tbaa !410
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %9) #16, !dbg !984
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !971
  br label %50, !dbg !985

11:                                               ; preds = %5
  %12 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !986
  %.not = icmp eq i32 %12, 0, !dbg !986
  br i1 %.not, label %13, label %15, !dbg !988

13:                                               ; preds = %11
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !989, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !370, metadata !DIExpression()), !dbg !971
  br label %21, !dbg !990

15:                                               ; preds = %11
  %16 = call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #14, !dbg !991
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !370, metadata !DIExpression()), !dbg !971
  %17 = icmp eq %struct._IO_FILE* %16, null, !dbg !993
  br i1 %17, label %18, label %21, !dbg !994

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !995, !tbaa !410
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %0) #15, !dbg !997
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !971
  br label %50, !dbg !998

21:                                               ; preds = %13, %15
  %.0 = phi %struct._IO_FILE* [ %14, %13 ], [ %16, %15 ], !dbg !999
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.0, metadata !370, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i32 0, metadata !378, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata i64 0, metadata !378, metadata !DIExpression()), !dbg !971
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !1000
  %23 = call i8* @fgets(i8* nonnull %22, i32 256, %struct._IO_FILE* %.0) #14, !dbg !1003
  %.not12 = icmp eq i8* %23, null, !dbg !1004
  br i1 %.not12, label %.loopexit, label %.lr.ph, !dbg !1004

.outer:                                           ; preds = %43
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !378, metadata !DIExpression()), !dbg !971
  %24 = call i8* @fgets(i8* nonnull %22, i32 256, %struct._IO_FILE* %.0) #14, !dbg !1003
  %.not15 = icmp eq i8* %24, null, !dbg !1004
  br i1 %.not15, label %.loopexit, label %.lr.ph, !dbg !1004, !llvm.loop !1005

.lr.ph:                                           ; preds = %21, %.outer
  %indvars.iv9 = phi i64 [ %indvars.iv.next, %.outer ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !378, metadata !DIExpression()), !dbg !971
  br label %27, !dbg !1004

25:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !378, metadata !DIExpression()), !dbg !971
  %26 = call i8* @fgets(i8* nonnull %22, i32 256, %struct._IO_FILE* %.0) #14, !dbg !1003
  %.not16 = icmp eq i8* %26, null, !dbg !1004
  br i1 %.not16, label %.loopexit, label %27, !dbg !1004, !llvm.loop !1005

27:                                               ; preds = %.lr.ph, %25
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !1007
  %29 = load i8, i8* %28, align 16, !dbg !1007, !tbaa !404
  %30 = icmp eq i8 %29, 35, !dbg !1010
  br i1 %30, label %25, label %31, !dbg !1011

31:                                               ; preds = %27
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !1012
  %33 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv9, i64 0, !dbg !1013
  %34 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv9, i64 1, !dbg !1014
  %35 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv9, i64 2, !dbg !1015
  %36 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv9, i64 3, !dbg !1016
  %37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* nonnull %33, double* nonnull %34, double* nonnull %35, double* nonnull %36) #14, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %37, metadata !380, metadata !DIExpression()), !dbg !971
  %.not14 = icmp eq i32 %37, 4, !dbg !1018
  br i1 %.not14, label %43, label %38, !dbg !1020

38:                                               ; preds = %31
  %39 = trunc i64 %indvars.iv9 to i32, !dbg !1021
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1021, !tbaa !410
  %41 = add nsw i32 %39, 1, !dbg !1023
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %41, i32 %37) #15, !dbg !1024
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1025
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !971
  br label %50, !dbg !1026

43:                                               ; preds = %31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !378, metadata !DIExpression()), !dbg !971
  %exitcond = icmp eq i64 %indvars.iv9, 3, !dbg !1028
  br i1 %exitcond, label %44, label %.outer, !dbg !1030

44:                                               ; preds = %43
  br label %46, !dbg !1031

.loopexit:                                        ; preds = %25, %21, %.outer
  %.01.ph.lcssa6.wide = phi i64 [ 0, %21 ], [ %indvars.iv.next, %.outer ], [ %indvars.iv9, %25 ]
  %45 = trunc i64 %.01.ph.lcssa6.wide to i32, !dbg !1032
  br label %46, !dbg !1032

46:                                               ; preds = %.loopexit, %44
  %.12 = phi i32 [ 4, %44 ], [ %45, %.loopexit ], !dbg !1034
  call void @llvm.dbg.value(metadata i32 %.12, metadata !378, metadata !DIExpression()), !dbg !971
  %.not13 = icmp eq i32 %.12, 4, !dbg !1032
  br i1 %.not13, label %50, label %47, !dbg !1035

47:                                               ; preds = %46
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1036, !tbaa !410
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %.12) #15, !dbg !1038
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false), !dbg !1039
  call void @llvm.dbg.value(metadata i32 1, metadata !382, metadata !DIExpression()), !dbg !971
  br label %50, !dbg !1040

50:                                               ; preds = %46, %47, %38, %18, %8
  %.1 = phi %struct._IO_FILE* [ null, %8 ], [ %16, %18 ], [ %.0, %38 ], [ %.0, %47 ], [ %.0, %46 ], !dbg !971
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.1, metadata !370, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.label(metadata !383), !dbg !1041
  %51 = icmp ne %struct._IO_FILE* %.1, null, !dbg !1042
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %53 = icmp ne %struct._IO_FILE* %.1, %52
  %or.cond = select i1 %51, i1 %53, i1 false, !dbg !1044
  br i1 %or.cond, label %54, label %56, !dbg !1044

54:                                               ; preds = %50
  %55 = call i32 @fclose(%struct._IO_FILE* nonnull %.1) #14, !dbg !1045
  br label %56, !dbg !1045

56:                                               ; preds = %54, %50
  call void @llvm.dbg.value(metadata i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), metadata !381, metadata !DIExpression()), !dbg !971
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !1046
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %57) #14, !dbg !1046
  ret [4 x [4 x double]]* @getmatrix.mat, !dbg !1047
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !103 dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* %1, i8* %2) #0 !dbg !1048 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1052, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1053, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata i8* %2, metadata !1054, metadata !DIExpression()), !dbg !1057
  %.not = icmp eq %struct.molecule_t* %1, null, !dbg !1058
  br i1 %.not, label %4, label %10, !dbg !1060

4:                                                ; preds = %3
  %5 = call i32 @get_mytaskid() #14, !dbg !1061
  %6 = icmp eq i32 %5, 0, !dbg !1064
  br i1 %6, label %7, label %29, !dbg !1065

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1066, !tbaa !410
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %8) #16, !dbg !1068
  br label %29, !dbg !1069

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !1056, metadata !DIExpression()), !dbg !1057
  %11 = call i32 @get_mytaskid() #14, !dbg !1070
  %12 = icmp eq i32 %11, 0, !dbg !1072
  br i1 %12, label %13, label %28, !dbg !1073

13:                                               ; preds = %10
  %14 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1074
  %.not3 = icmp eq i32 %14, 0, !dbg !1074
  br i1 %.not3, label %15, label %17, !dbg !1077

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1078, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %16, metadata !1055, metadata !DIExpression()), !dbg !1057
  br label %22, !dbg !1079

17:                                               ; preds = %13
  %18 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #14, !dbg !1080
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %18, metadata !1055, metadata !DIExpression()), !dbg !1057
  %19 = icmp eq %struct._IO_FILE* %18, null, !dbg !1082
  br i1 %19, label %20, label %22, !dbg !1083

20:                                               ; preds = %17
  %21 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1084
  call void @llvm.dbg.value(metadata i32 -1, metadata !1056, metadata !DIExpression()), !dbg !1057
  br label %22, !dbg !1086

22:                                               ; preds = %17, %20, %15
  %.02 = phi %struct._IO_FILE* [ %16, %15 ], [ %18, %20 ], [ %18, %17 ], !dbg !1087
  %23 = phi i1 [ true, %15 ], [ false, %20 ], [ true, %17 ], !dbg !1057
  %.1 = phi i32 [ 0, %15 ], [ -1, %20 ], [ 0, %17 ], !dbg !1057
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1056, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.02, metadata !1055, metadata !DIExpression()), !dbg !1057
  br i1 %23, label %24, label %28, !dbg !1088

24:                                               ; preds = %22
  call void @fputpdb(%struct._IO_FILE* %.02, %struct.molecule_t* nonnull %1, i8* %2), !dbg !1089
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1092, !tbaa !410
  %.not4 = icmp eq %struct._IO_FILE* %.02, %25, !dbg !1094
  br i1 %.not4, label %28, label %26, !dbg !1095

26:                                               ; preds = %24
  %27 = call i32 @fclose(%struct._IO_FILE* %.02) #14, !dbg !1096
  br label %28, !dbg !1096

28:                                               ; preds = %22, %26, %24, %10
  %.2 = phi i32 [ 0, %10 ], [ %.1, %24 ], [ %.1, %26 ], [ %.1, %22 ], !dbg !1057
  call void @llvm.dbg.value(metadata i32 %.2, metadata !1056, metadata !DIExpression()), !dbg !1057
  call void @reducerror(i32 %.2) #14, !dbg !1097
  br label %29, !dbg !1098

29:                                               ; preds = %4, %7, %28
  ret i32 0, !dbg !1099
}

declare !dbg !106 dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @fputpdb(%struct._IO_FILE* %0, %struct.molecule_t* %1, i8* %2) #0 !dbg !1100 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [7 x i8], align 1
  %7 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1104, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1105, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8* %2, metadata !1106, metadata !DIExpression()), !dbg !1132
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1133
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #14, !dbg !1133
  call void @llvm.dbg.declare(metadata [8 x i8]* %4, metadata !1116, metadata !DIExpression()), !dbg !1134
  %9 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1135
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #14, !dbg !1135
  call void @llvm.dbg.declare(metadata [8 x i8]* %5, metadata !1118, metadata !DIExpression()), !dbg !1136
  %10 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1137
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %10) #14, !dbg !1137
  call void @llvm.dbg.declare(metadata [7 x i8]* %6, metadata !1119, metadata !DIExpression()), !dbg !1138
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1139
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %11) #14, !dbg !1139
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !1123, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i32 0, metadata !1124, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1125, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1126, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1127, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1128, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1129, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1130, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !1131, metadata !DIExpression()), !dbg !1132
  %.not = icmp eq %struct.molecule_t* %1, null, !dbg !1141
  br i1 %.not, label %12, label %15, !dbg !1143

12:                                               ; preds = %3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1144, !tbaa !410
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %13) #16, !dbg !1146
  br label %189, !dbg !1147

15:                                               ; preds = %3
  %.not32 = icmp eq %struct._IO_FILE* %0, null, !dbg !1148
  br i1 %.not32, label %16, label %19, !dbg !1150

16:                                               ; preds = %15
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1151, !tbaa !410
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %17) #16, !dbg !1153
  br label %189, !dbg !1154

19:                                               ; preds = %15
  %20 = icmp eq i8* %2, null, !dbg !1155
  br i1 %20, label %21, label %23, !dbg !1157

21:                                               ; preds = %19
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1158
  store i8 0, i8* %22, align 16, !dbg !1159, !tbaa !404
  br label %27, !dbg !1158

23:                                               ; preds = %19
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1160
  %25 = call i8* @strncpy(i8* noundef nonnull %24, i8* noundef nonnull %2, i64 255) #14, !dbg !1162
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255, !dbg !1163
  store i8 0, i8* %26, align 1, !dbg !1164, !tbaa !404
  br label %27

27:                                               ; preds = %23, %21
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1165
  %29 = call i8* @strstr(i8* noundef nonnull %28, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #13, !dbg !1166
  %30 = icmp ne i8* %29, null, !dbg !1167
  call void @llvm.dbg.value(metadata i1 %30, metadata !1124, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1132
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1168
  %32 = call i8* @strstr(i8* noundef nonnull %31, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #13, !dbg !1169
  %33 = icmp ne i8* %32, null, !dbg !1170
  call void @llvm.dbg.value(metadata i1 %33, metadata !1125, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1132
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1171
  %35 = call i8* @strstr(i8* noundef nonnull %34, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #13, !dbg !1172
  %36 = icmp ne i8* %35, null, !dbg !1173
  call void @llvm.dbg.value(metadata i1 %36, metadata !1126, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1132
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1174
  %38 = call i8* @strstr(i8* noundef nonnull %37, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #13, !dbg !1175
  %39 = icmp ne i8* %38, null, !dbg !1176
  call void @llvm.dbg.value(metadata i1 %39, metadata !1127, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1132
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1177
  %41 = call i8* @strstr(i8* noundef nonnull %40, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #13, !dbg !1178
  %42 = icmp ne i8* %41, null, !dbg !1179
  call void @llvm.dbg.value(metadata i1 %42, metadata !1128, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1132
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1180
  %44 = call i8* @strstr(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #13, !dbg !1181
  %45 = icmp ne i8* %44, null, !dbg !1182
  call void @llvm.dbg.value(metadata i1 %45, metadata !1129, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1132
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1183
  %47 = call i8* @strstr(i8* noundef nonnull %46, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #13, !dbg !1184
  %48 = icmp ne i8* %47, null, !dbg !1185
  %49 = zext i1 %48 to i32, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %49, metadata !1130, metadata !DIExpression()), !dbg !1132
  %not. = xor i1 %48, true, !dbg !1186
  %narrow = select i1 %not., i1 %45, i1 false, !dbg !1186
  %spec.select = zext i1 %narrow to i32, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1129, metadata !DIExpression()), !dbg !1132
  %50 = call %struct.cid_t* @initcid(i32 %spec.select, i32 %49, %struct.molecule_t* nonnull %1), !dbg !1187
  call void @llvm.dbg.value(metadata %struct.cid_t* %50, metadata !1131, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1111, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1108, metadata !DIExpression()), !dbg !1132
  %51 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1188
  %52 = load %struct.strand_t*, %struct.strand_t** %51, align 8, !dbg !1188, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %52, metadata !1113, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1111, metadata !DIExpression()), !dbg !1132
  %.not33 = icmp eq %struct.strand_t* %52, null, !dbg !1190
  br i1 %.not33, label %._crit_edge28, label %.lr.ph27, !dbg !1190

.lr.ph27:                                         ; preds = %27, %._crit_edge20
  %.0225 = phi i32 [ %.1.lcssa, %._crit_edge20 ], [ 0, %27 ]
  %.0524 = phi i32 [ %.16.lcssa, %._crit_edge20 ], [ 0, %27 ]
  %.0723 = phi %struct.strand_t* [ %188, %._crit_edge20 ], [ %52, %27 ]
  call void @llvm.dbg.value(metadata i32 %.0225, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %.0524, metadata !1111, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0723, metadata !1113, metadata !DIExpression()), !dbg !1132
  %53 = call i32 @nextcid(%struct.cid_t* %50, i32 %spec.select, i32 %49, %struct.strand_t* %.0723), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %53, metadata !1112, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1132
  call void @llvm.dbg.value(metadata i32 0, metadata !1107, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 0, metadata !1107, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %.0225, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %.0524, metadata !1111, metadata !DIExpression()), !dbg !1132
  %54 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0723, i64 0, i32 5, !dbg !1194
  %55 = load i32, i32* %54, align 8, !dbg !1194, !tbaa !1197
  %56 = icmp sgt i32 %55, 0, !dbg !1198
  br i1 %56, label %.lr.ph19, label %._crit_edge20, !dbg !1199

.lr.ph19:                                         ; preds = %.lr.ph27, %._crit_edge
  %.117 = phi i32 [ %182, %._crit_edge ], [ %.0225, %.lr.ph27 ]
  %.1616 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0524, %.lr.ph27 ]
  %indvars.iv914 = phi i64 [ %indvars.iv.next10, %._crit_edge ], [ 0, %.lr.ph27 ]
  call void @llvm.dbg.value(metadata i32 %.117, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %.1616, metadata !1111, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %indvars.iv914, metadata !1107, metadata !DIExpression()), !dbg !1132
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0723, i64 0, i32 7, !dbg !1200
  %58 = load %struct.residue_t**, %struct.residue_t*** %57, align 8, !dbg !1200, !tbaa !831
  %59 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %58, i64 %indvars.iv914, !dbg !1202
  %60 = load %struct.residue_t*, %struct.residue_t** %59, align 8, !dbg !1202, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %60, metadata !1114, metadata !DIExpression()), !dbg !1132
  %61 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1203
  %62 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i64 0, i32 5, !dbg !1204
  %63 = load i8*, i8** %62, align 8, !dbg !1204, !tbaa !778
  %.not35 = icmp eq i8* %63, null, !dbg !1205
  br i1 %.not35, label %67, label %64, !dbg !1205

64:                                               ; preds = %.lr.ph19
  %65 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i64 0, i32 5, !dbg !1206
  %66 = load i8*, i8** %65, align 8, !dbg !1206, !tbaa !778
  br label %67, !dbg !1205

67:                                               ; preds = %.lr.ph19, %64
  %68 = phi i8* [ %66, %64 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), %.lr.ph19 ], !dbg !1205
  %69 = call i8* @strcpy(i8* noundef nonnull %61, i8* noundef nonnull dereferenceable(1) %68) #14, !dbg !1207
  br i1 %36, label %70, label %72, !dbg !1208

70:                                               ; preds = %67
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1209
  call void @mk_brook_rname(i8* nonnull %71, %struct.residue_t* %60), !dbg !1211
  br label %80, !dbg !1211

72:                                               ; preds = %67
  br i1 %39, label %73, label %75, !dbg !1212

73:                                               ; preds = %72
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1213
  call void @mk_wwpdb_rname(i8* nonnull %74, %struct.residue_t* %60), !dbg !1215
  br label %80, !dbg !1215

75:                                               ; preds = %72
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1216
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i64 0, i32 4, !dbg !1217
  %78 = load i8*, i8** %77, align 8, !dbg !1217, !tbaa !774
  %79 = call i8* @strcpy(i8* noundef nonnull %76, i8* noundef nonnull dereferenceable(1) %78) #14, !dbg !1218
  br label %80

80:                                               ; preds = %73, %75, %70
  call void @llvm.dbg.value(metadata i32 0, metadata !1110, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 0, metadata !1110, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %.1616, metadata !1111, metadata !DIExpression()), !dbg !1132
  %81 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i64 0, i32 15, !dbg !1219
  %82 = load i32, i32* %81, align 8, !dbg !1219, !tbaa !785
  %83 = icmp sgt i32 %82, 0, !dbg !1222
  br i1 %83, label %.lr.ph, label %._crit_edge, !dbg !1223

.lr.ph:                                           ; preds = %80, %178
  %.213 = phi i32 [ %84, %178 ], [ %.1616, %80 ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next, %178 ], [ 0, %80 ]
  call void @llvm.dbg.value(metadata i32 %.213, metadata !1111, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %indvars.iv12, metadata !1110, metadata !DIExpression()), !dbg !1132
  %84 = add nsw i32 %.213, 1, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %84, metadata !1111, metadata !DIExpression()), !dbg !1132
  %85 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %60, i64 0, i32 17, !dbg !1226
  %86 = load %struct.atom_t*, %struct.atom_t** %85, align 8, !dbg !1226, !tbaa !1227
  %87 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.atom_t* %87, metadata !1115, metadata !DIExpression()), !dbg !1132
  br i1 %36, label %88, label %93, !dbg !1229

88:                                               ; preds = %.lr.ph
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1230
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i64 0, i32 0, !dbg !1232
  %91 = load i8*, i8** %90, align 8, !dbg !1232, !tbaa !875
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1233
  call void @mk_brook_aname(i8* nonnull %89, i8* %91, i8* nonnull %92), !dbg !1234
  br label %104, !dbg !1234

93:                                               ; preds = %.lr.ph
  br i1 %39, label %94, label %99, !dbg !1235

94:                                               ; preds = %93
  %95 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1236
  %96 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i64 0, i32 0, !dbg !1238
  %97 = load i8*, i8** %96, align 8, !dbg !1238, !tbaa !875
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1239
  call void @mk_wwpdb_aname(i8* nonnull %95, i8* %97, i8* nonnull %98), !dbg !1240
  br label %104, !dbg !1240

99:                                               ; preds = %93
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1241
  %101 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i64 0, i32 0, !dbg !1242
  %102 = load i8*, i8** %101, align 8, !dbg !1242, !tbaa !875
  %103 = call i8* @strcpy(i8* noundef nonnull %100, i8* noundef nonnull dereferenceable(1) %102) #14, !dbg !1243
  br label %104

104:                                              ; preds = %94, %99, %88
  %105 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1244
  %strcmpload = load i8, i8* %105, align 1, !dbg !1246
  %106 = icmp eq i8 %strcmpload, 0, !dbg !1246
  %or.cond = select i1 %106, i1 true, i1 %42, !dbg !1247
  br i1 %or.cond, label %107, label %134, !dbg !1247

107:                                              ; preds = %104
  %108 = trunc i64 %indvars.iv914 to i32, !dbg !1248
  %.v = select i1 %42, i32 %.117, i32 %108, !dbg !1248
  %109 = add i32 %.v, 1, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %109, metadata !1109, metadata !DIExpression()), !dbg !1132
  %110 = icmp slt i32 %.213, 99999, !dbg !1250
  br i1 %110, label %111, label %122, !dbg !1252

111:                                              ; preds = %107
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1253
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1255
  %sext36 = shl i32 %53, 24, !dbg !1256
  %114 = ashr exact i32 %sext36, 24, !dbg !1256
  %115 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 0, !dbg !1257
  %116 = load double, double* %115, align 8, !dbg !1257, !tbaa !716
  %117 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 1, !dbg !1258
  %118 = load double, double* %117, align 8, !dbg !1258, !tbaa !716
  %119 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 2, !dbg !1259
  %120 = load double, double* %119, align 8, !dbg !1259, !tbaa !716
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %84, i8* nonnull %112, i8* nonnull %113, i32 %114, i32 %109, double %116, double %118, double %120) #14, !dbg !1260
  br label %159, !dbg !1261

122:                                              ; preds = %107
  %123 = srem i32 %84, 100000, !dbg !1262
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1264
  %125 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1265
  %sext = shl i32 %53, 24, !dbg !1266
  %126 = ashr exact i32 %sext, 24, !dbg !1266
  %127 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 0, !dbg !1267
  %128 = load double, double* %127, align 8, !dbg !1267, !tbaa !716
  %129 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 1, !dbg !1268
  %130 = load double, double* %129, align 8, !dbg !1268, !tbaa !716
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 2, !dbg !1269
  %132 = load double, double* %131, align 8, !dbg !1269, !tbaa !716
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %123, i8* nonnull %124, i8* nonnull %125, i32 %126, i32 %109, double %128, double %130, double %132) #14, !dbg !1270
  br label %159

134:                                              ; preds = %104
  %135 = icmp slt i32 %.213, 99999, !dbg !1271
  br i1 %135, label %136, label %147, !dbg !1274

136:                                              ; preds = %134
  %137 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1275
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1277
  %139 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1278
  %140 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 0, !dbg !1279
  %141 = load double, double* %140, align 8, !dbg !1279, !tbaa !716
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 1, !dbg !1280
  %143 = load double, double* %142, align 8, !dbg !1280, !tbaa !716
  %144 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 2, !dbg !1281
  %145 = load double, double* %144, align 8, !dbg !1281, !tbaa !716
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %84, i8* nonnull %137, i8* nonnull %138, i8* nonnull %139, double %141, double %143, double %145) #14, !dbg !1282
  br label %159, !dbg !1283

147:                                              ; preds = %134
  %148 = srem i32 %84, 100000, !dbg !1284
  %149 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1286
  %150 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1287
  %151 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1288
  %152 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 0, !dbg !1289
  %153 = load double, double* %152, align 8, !dbg !1289, !tbaa !716
  %154 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 1, !dbg !1290
  %155 = load double, double* %154, align 8, !dbg !1290, !tbaa !716
  %156 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 17, i64 2, !dbg !1291
  %157 = load double, double* %156, align 8, !dbg !1291, !tbaa !716
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %148, i8* nonnull %149, i8* nonnull %150, i8* nonnull %151, double %153, double %155, double %157) #14, !dbg !1292
  br label %159

159:                                              ; preds = %136, %147, %111, %122
  br i1 %30, label %160, label %166, !dbg !1293

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 6, !dbg !1294
  %162 = load double, double* %161, align 8, !dbg !1294, !tbaa !894
  %163 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 7, !dbg !1297
  %164 = load double, double* %163, align 8, !dbg !1297, !tbaa !898
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %162, double %164) #14, !dbg !1298
  br label %173, !dbg !1299

166:                                              ; preds = %159
  br i1 %33, label %173, label %167, !dbg !1300

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 9, !dbg !1301
  %169 = load double, double* %168, align 8, !dbg !1301, !tbaa !901
  %170 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %86, i64 %indvars.iv12, i32 8, !dbg !1304
  %171 = load double, double* %170, align 8, !dbg !1304, !tbaa !904
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %169, double %171) #14, !dbg !1305
  br label %173, !dbg !1306

173:                                              ; preds = %166, %167, %160
  %or.cond29 = select i1 %36, i1 true, i1 %39, !dbg !1307
  %or.cond29.not = xor i1 %or.cond29, true, !dbg !1307
  %or.cond30 = select i1 %or.cond29.not, i1 true, i1 %30, !dbg !1307
  %or.cond31 = select i1 %or.cond30, i1 true, i1 %33, !dbg !1307
  br i1 %or.cond31, label %178, label %174, !dbg !1307

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %87, i64 0, i32 0, !dbg !1309
  %176 = load i8*, i8** %175, align 8, !dbg !1309, !tbaa !875
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %176) #14, !dbg !1311
  br label %178, !dbg !1312

178:                                              ; preds = %173, %174
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %0), !dbg !1313
  %indvars.iv.next = add nuw nsw i64 %indvars.iv12, 1, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1110, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %84, metadata !1111, metadata !DIExpression()), !dbg !1132
  %179 = load i32, i32* %81, align 8, !dbg !1219, !tbaa !785
  %180 = sext i32 %179 to i64, !dbg !1222
  %181 = icmp slt i64 %indvars.iv.next, %180, !dbg !1222
  br i1 %181, label %.lr.ph, label %._crit_edge, !dbg !1223, !llvm.loop !1315

._crit_edge:                                      ; preds = %80, %178
  %.2.lcssa = phi i32 [ %.1616, %80 ], [ %84, %178 ], !dbg !1317
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv914, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next10, metadata !1107, metadata !DIExpression()), !dbg !1132
  %182 = add nsw i32 %.117, 1, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %182, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1111, metadata !DIExpression()), !dbg !1132
  %183 = load i32, i32* %54, align 8, !dbg !1194, !tbaa !1197
  %184 = sext i32 %183 to i64, !dbg !1198
  %185 = icmp slt i64 %indvars.iv.next10, %184, !dbg !1198
  br i1 %185, label %.lr.ph19, label %._crit_edge20, !dbg !1199, !llvm.loop !1320

._crit_edge20:                                    ; preds = %._crit_edge, %.lr.ph27
  %.16.lcssa = phi i32 [ %.0524, %.lr.ph27 ], [ %.2.lcssa, %._crit_edge ], !dbg !1322
  %.1.lcssa = phi i32 [ %.0225, %.lr.ph27 ], [ %182, %._crit_edge ], !dbg !1317
  %186 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1323
  %187 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0723, i64 0, i32 4, !dbg !1324
  %188 = load %struct.strand_t*, %struct.strand_t** %187, align 8, !dbg !1324, !tbaa !821
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1108, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %.16.lcssa, metadata !1111, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata %struct.strand_t* %188, metadata !1113, metadata !DIExpression()), !dbg !1132
  %.not34 = icmp eq %struct.strand_t* %188, null, !dbg !1190
  br i1 %.not34, label %._crit_edge28, label %.lr.ph27, !dbg !1190, !llvm.loop !1325

._crit_edge28:                                    ; preds = %._crit_edge20, %27
  call void @freecid(%struct.cid_t* %50), !dbg !1327
  br label %189, !dbg !1328

189:                                              ; preds = %._crit_edge28, %16, %12
  %190 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %190) #14, !dbg !1328
  %191 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0, !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %191) #14, !dbg !1328
  %192 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0, !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %192) #14, !dbg !1328
  %193 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0, !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %193) #14, !dbg !1328
  ret void, !dbg !1328
}

; Function Attrs: nounwind uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* %2) #0 !dbg !1329 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1333, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %1, metadata !1334, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1335, metadata !DIExpression()), !dbg !1337
  %.not = icmp eq %struct.molecule_t* %2, null, !dbg !1338
  br i1 %.not, label %4, label %7, !dbg !1340

4:                                                ; preds = %3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1341, !tbaa !410
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %5) #16, !dbg !1343
  br label %20, !dbg !1344

7:                                                ; preds = %3
  %8 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1345
  %.not2 = icmp eq i32 %8, 0, !dbg !1345
  br i1 %.not2, label %9, label %11, !dbg !1347

9:                                                ; preds = %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1348, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1336, metadata !DIExpression()), !dbg !1337
  br label %16, !dbg !1349

11:                                               ; preds = %7
  %12 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #14, !dbg !1350
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !1336, metadata !DIExpression()), !dbg !1337
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !1352
  br i1 %13, label %14, label %16, !dbg !1353

14:                                               ; preds = %11
  %15 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1354
  call void @exit(i32 1) #17, !dbg !1356
  unreachable, !dbg !1356

16:                                               ; preds = %11, %9
  %.01 = phi %struct._IO_FILE* [ %10, %9 ], [ %12, %11 ], !dbg !1357
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.01, metadata !1336, metadata !DIExpression()), !dbg !1337
  call void @fputcif(%struct._IO_FILE* %.01, i8* %1, %struct.molecule_t* nonnull %2), !dbg !1358
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1359, !tbaa !410
  %.not3 = icmp eq %struct._IO_FILE* %.01, %17, !dbg !1361
  br i1 %.not3, label %20, label %18, !dbg !1362

18:                                               ; preds = %16
  %19 = call i32 @fclose(%struct._IO_FILE* %.01) #14, !dbg !1363
  br label %20, !dbg !1363

20:                                               ; preds = %16, %18, %4
  ret i32 0, !dbg !1364
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: nounwind uwtable
define internal void @fputcif(%struct._IO_FILE* %0, i8* %1, %struct.molecule_t* %2) #0 !dbg !1365 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1369, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i8* %1, metadata !1370, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !1371, metadata !DIExpression()), !dbg !1381
  %.not = icmp eq %struct.molecule_t* %2, null, !dbg !1382
  br i1 %.not, label %4, label %5, !dbg !1385

4:                                                ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1389, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #17, !dbg !1382
  unreachable, !dbg !1382

5:                                                ; preds = %3
  %.not32 = icmp eq %struct._IO_FILE* %0, null, !dbg !1386
  br i1 %.not32, label %6, label %7, !dbg !1389

6:                                                ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #17, !dbg !1386
  unreachable, !dbg !1386

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 1, !dbg !1390
  %9 = load i32, i32* %8, align 8, !dbg !1390, !tbaa !1391
  %10 = icmp sgt i32 %9, 1, !dbg !1392
  %11 = select i1 %10, i8 65, i8 46, !dbg !1393
  call void @llvm.dbg.value(metadata i8 %11, metadata !1377, metadata !DIExpression()), !dbg !1381
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %1) #14, !dbg !1394
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1395
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %1) #14, !dbg !1396
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1397
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1398
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1399
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1400
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1401
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* nonnull %0), !dbg !1402
  call void @llvm.dbg.value(metadata i32 0, metadata !1376, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 0, metadata !1375, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 0, metadata !1373, metadata !DIExpression()), !dbg !1381
  %21 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 2, !dbg !1403
  %22 = load %struct.strand_t*, %struct.strand_t** %21, align 8, !dbg !1403, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %22, metadata !1378, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i8 %11, metadata !1377, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 0, metadata !1376, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 0, metadata !1373, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 0, metadata !1375, metadata !DIExpression()), !dbg !1381
  %.not33 = icmp eq %struct.strand_t* %22, null, !dbg !1405
  br i1 %.not33, label %._crit_edge31, label %.lr.ph30, !dbg !1405

.lr.ph30:                                         ; preds = %7, %._crit_edge21
  %.028 = phi %struct.strand_t* [ %64, %._crit_edge21 ], [ %22, %7 ]
  %.0127 = phi i8 [ %spec.select, %._crit_edge21 ], [ %11, %7 ]
  %.0226 = phi i32 [ %23, %._crit_edge21 ], [ 0, %7 ]
  %.0425 = phi i32 [ %.15.lcssa, %._crit_edge21 ], [ 0, %7 ]
  %.0724 = phi i32 [ %.18.lcssa, %._crit_edge21 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.028, metadata !1378, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i8 %.0127, metadata !1377, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.0226, metadata !1376, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.0425, metadata !1373, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.0724, metadata !1375, metadata !DIExpression()), !dbg !1381
  %23 = add nuw nsw i32 %.0226, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %23, metadata !1376, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 0, metadata !1372, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i64 0, metadata !1372, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.0425, metadata !1373, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.0724, metadata !1375, metadata !DIExpression()), !dbg !1381
  %24 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.028, i64 0, i32 5, !dbg !1409
  %25 = load i32, i32* %24, align 8, !dbg !1409, !tbaa !1197
  %26 = icmp sgt i32 %25, 0, !dbg !1412
  br i1 %26, label %.lr.ph20, label %._crit_edge21, !dbg !1413

.lr.ph20:                                         ; preds = %.lr.ph30, %._crit_edge
  %.1518 = phi i32 [ %55, %._crit_edge ], [ %.0425, %.lr.ph30 ]
  %.1817 = phi i32 [ %.2.lcssa, %._crit_edge ], [ %.0724, %.lr.ph30 ]
  %indvars.iv1015 = phi i64 [ %indvars.iv.next11, %._crit_edge ], [ 0, %.lr.ph30 ]
  call void @llvm.dbg.value(metadata i32 %.1518, metadata !1373, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.1817, metadata !1375, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i64 %indvars.iv1015, metadata !1372, metadata !DIExpression()), !dbg !1381
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.028, i64 0, i32 7, !dbg !1414
  %28 = load %struct.residue_t**, %struct.residue_t*** %27, align 8, !dbg !1414, !tbaa !831
  %29 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %28, i64 %indvars.iv1015, !dbg !1416
  %30 = load %struct.residue_t*, %struct.residue_t** %29, align 8, !dbg !1416, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %30, metadata !1379, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 0, metadata !1374, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i64 0, metadata !1374, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.1817, metadata !1375, metadata !DIExpression()), !dbg !1381
  %31 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %30, i64 0, i32 15, !dbg !1417
  %32 = load i32, i32* %31, align 8, !dbg !1417, !tbaa !785
  %33 = icmp sgt i32 %32, 0, !dbg !1420
  br i1 %33, label %.lr.ph, label %._crit_edge, !dbg !1421

.lr.ph:                                           ; preds = %.lr.ph20, %.lr.ph
  %.214 = phi i32 [ %34, %.lr.ph ], [ %.1817, %.lr.ph20 ]
  %indvars.iv13 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph20 ]
  call void @llvm.dbg.value(metadata i32 %.214, metadata !1375, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !1374, metadata !DIExpression()), !dbg !1381
  %34 = add nsw i32 %.214, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %34, metadata !1375, metadata !DIExpression()), !dbg !1381
  %35 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %30, i64 0, i32 17, !dbg !1424
  %36 = load %struct.atom_t*, %struct.atom_t** %35, align 8, !dbg !1424, !tbaa !1227
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %36, i64 %indvars.iv13), metadata !1380, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1381
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %36, i64 %indvars.iv13, i32 0, !dbg !1425
  %38 = load i8*, i8** %37, align 8, !dbg !1425, !tbaa !875
  %39 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %30, i64 0, i32 4, !dbg !1426
  %40 = load i8*, i8** %39, align 8, !dbg !1426, !tbaa !774
  %41 = sext i8 %.0127 to i32, !dbg !1427
  %42 = add nsw i32 %.1518, 1, !dbg !1428
  %43 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %36, i64 %indvars.iv13, i32 17, i64 0, !dbg !1429
  %44 = load double, double* %43, align 8, !dbg !1429, !tbaa !716
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %36, i64 %indvars.iv13, i32 17, i64 1, !dbg !1430
  %46 = load double, double* %45, align 8, !dbg !1430, !tbaa !716
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %36, i64 %indvars.iv13, i32 17, i64 2, !dbg !1431
  %48 = load double, double* %47, align 8, !dbg !1431, !tbaa !716
  %49 = trunc i64 %indvars.iv1015 to i32, !dbg !1432
  %50 = add i32 %49, 1, !dbg !1432
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %34, i8* %38, i8* %40, i32 %41, i32 %42, double %44, double %46, double %48, i32 %23, i32 %50) #14, !dbg !1432
  %indvars.iv.next = add nuw nsw i64 %indvars.iv13, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1374, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %34, metadata !1375, metadata !DIExpression()), !dbg !1381
  %52 = load i32, i32* %31, align 8, !dbg !1417, !tbaa !785
  %53 = sext i32 %52 to i64, !dbg !1420
  %54 = icmp slt i64 %indvars.iv.next, %53, !dbg !1420
  br i1 %54, label %.lr.ph, label %._crit_edge, !dbg !1421, !llvm.loop !1434

._crit_edge:                                      ; preds = %.lr.ph20, %.lr.ph
  %.2.lcssa = phi i32 [ %.1817, %.lr.ph20 ], [ %34, %.lr.ph ], !dbg !1436
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv1015, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11, metadata !1372, metadata !DIExpression()), !dbg !1381
  %55 = add nsw i32 %.1518, 1, !dbg !1438
  call void @llvm.dbg.value(metadata i32 %55, metadata !1373, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.2.lcssa, metadata !1375, metadata !DIExpression()), !dbg !1381
  %56 = load i32, i32* %24, align 8, !dbg !1409, !tbaa !1197
  %57 = sext i32 %56 to i64, !dbg !1412
  %58 = icmp slt i64 %indvars.iv.next11, %57, !dbg !1412
  br i1 %58, label %.lr.ph20, label %._crit_edge21, !dbg !1413, !llvm.loop !1439

._crit_edge21:                                    ; preds = %._crit_edge, %.lr.ph30
  %.18.lcssa = phi i32 [ %.0724, %.lr.ph30 ], [ %.2.lcssa, %._crit_edge ], !dbg !1441
  %.15.lcssa = phi i32 [ %.0425, %.lr.ph30 ], [ %55, %._crit_edge ], !dbg !1436
  %59 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 1, !dbg !1442
  %60 = load i32, i32* %59, align 8, !dbg !1442, !tbaa !1391
  %61 = icmp sgt i32 %60, 1, !dbg !1444
  %62 = zext i1 %61 to i8, !dbg !1445
  %spec.select = add i8 %.0127, %62, !dbg !1445
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !1377, metadata !DIExpression()), !dbg !1381
  %63 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.028, i64 0, i32 4, !dbg !1446
  %64 = load %struct.strand_t*, %struct.strand_t** %63, align 8, !dbg !1446, !tbaa !821
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !1378, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !1377, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %23, metadata !1376, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.15.lcssa, metadata !1373, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %.18.lcssa, metadata !1375, metadata !DIExpression()), !dbg !1381
  %.not34 = icmp eq %struct.strand_t* %64, null, !dbg !1405
  br i1 %.not34, label %._crit_edge31, label %.lr.ph30, !dbg !1405, !llvm.loop !1447

._crit_edge31:                                    ; preds = %._crit_edge21, %7
  ret void, !dbg !1449
}

; Function Attrs: nounwind uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* %1) #0 !dbg !1450 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1454, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1455, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1466, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32* null, metadata !1467, metadata !DIExpression()), !dbg !1471
  %.not = icmp eq %struct.molecule_t* %1, null, !dbg !1472
  br i1 %.not, label %3, label %6, !dbg !1474

3:                                                ; preds = %2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1475, !tbaa !410
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %4) #16, !dbg !1477
  br label %127, !dbg !1478

6:                                                ; preds = %2
  %7 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #14, !dbg !1479
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1456, metadata !DIExpression()), !dbg !1471
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !1481
  br i1 %8, label %9, label %11, !dbg !1482

9:                                                ; preds = %6
  %10 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0) #14, !dbg !1483
  call void @exit(i32 1) #17, !dbg !1485
  unreachable, !dbg !1485

11:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1471
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1486
  %13 = load %struct.strand_t*, %struct.strand_t** %12, align 8, !dbg !1486, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %13, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1471
  %.not53 = icmp eq %struct.strand_t* %13, null, !dbg !1488
  br i1 %.not53, label %._crit_edge, label %.lr.ph, !dbg !1488

.lr.ph:                                           ; preds = %11, %.lr.ph
  %.0321 = phi %struct.strand_t* [ %18, %.lr.ph ], [ %13, %11 ]
  %.0820 = phi i32 [ %16, %.lr.ph ], [ 0, %11 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0321, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %.0820, metadata !1465, metadata !DIExpression()), !dbg !1471
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0321, i64 0, i32 5, !dbg !1489
  %15 = load i32, i32* %14, align 8, !dbg !1489, !tbaa !1197
  %16 = add nsw i32 %.0820, %15, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %16, metadata !1465, metadata !DIExpression()), !dbg !1471
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0321, i64 0, i32 4, !dbg !1492
  %18 = load %struct.strand_t*, %struct.strand_t** %17, align 8, !dbg !1492, !tbaa !821
  call void @llvm.dbg.value(metadata %struct.strand_t* %18, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %16, metadata !1465, metadata !DIExpression()), !dbg !1471
  %.not62 = icmp eq %struct.strand_t* %18, null, !dbg !1488
  br i1 %.not62, label %._crit_edge, label %.lr.ph, !dbg !1488, !llvm.loop !1493

._crit_edge:                                      ; preds = %.lr.ph, %11
  %.08.lcssa = phi i32 [ 0, %11 ], [ %16, %.lr.ph ], !dbg !1495
  %19 = sext i32 %.08.lcssa to i64, !dbg !1496
  %20 = shl nsw i64 %19, 2, !dbg !1498
  %21 = call noalias i8* @malloc(i64 %20) #14, !dbg !1499
  %22 = bitcast i8* %21 to i32*, !dbg !1500
  call void @llvm.dbg.value(metadata i32* %22, metadata !1467, metadata !DIExpression()), !dbg !1471
  %23 = icmp eq i8* %21, null, !dbg !1501
  br i1 %23, label %24, label %26, !dbg !1502

24:                                               ; preds = %._crit_edge
  %25 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0)) #14, !dbg !1503
  call void @llvm.dbg.value(metadata i32 1, metadata !1466, metadata !DIExpression()), !dbg !1471
  br label %._crit_edge52, !dbg !1505

26:                                               ; preds = %._crit_edge
  call void @llvm.dbg.value(metadata i32 0, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1471
  %27 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1506
  %28 = load %struct.strand_t*, %struct.strand_t** %27, align 8, !dbg !1506, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %28, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1471
  %.not54 = icmp eq %struct.strand_t* %28, null, !dbg !1508
  br i1 %.not54, label %._crit_edge33, label %.lr.ph32, !dbg !1508

.lr.ph32:                                         ; preds = %26, %60
  %.130 = phi %struct.strand_t* [ %62, %60 ], [ %28, %26 ]
  %.0529 = phi i32 [ %.27, %60 ], [ 0, %26 ]
  %.1928 = phi i32 [ %.210, %60 ], [ 0, %26 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.130, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %.0529, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %.1928, metadata !1465, metadata !DIExpression()), !dbg !1471
  %29 = sext i32 %.1928 to i64, !dbg !1509
  %30 = getelementptr inbounds i32, i32* %22, i64 %29, !dbg !1509
  store i32 %.0529, i32* %30, align 4, !dbg !1512, !tbaa !535
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.130, i64 0, i32 5, !dbg !1513
  %32 = load i32, i32* %31, align 8, !dbg !1513, !tbaa !1197
  %33 = icmp sgt i32 %32, 0, !dbg !1515
  br i1 %33, label %34, label %60, !dbg !1516

34:                                               ; preds = %.lr.ph32
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.130, i64 0, i32 7, !dbg !1517
  %36 = load %struct.residue_t**, %struct.residue_t*** %35, align 8, !dbg !1517, !tbaa !831
  %37 = load %struct.residue_t*, %struct.residue_t** %36, align 8, !dbg !1519, !tbaa !410
  %38 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %37, i64 0, i32 15, !dbg !1520
  %39 = load i32, i32* %38, align 8, !dbg !1520, !tbaa !785
  %40 = add nsw i32 %.0529, %39, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %40, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 1, metadata !1463, metadata !DIExpression()), !dbg !1471
  %41 = sext i32 %.1928 to i64, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %40, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 1, metadata !1463, metadata !DIExpression()), !dbg !1471
  %42 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.130, i64 0, i32 5, !dbg !1524
  %43 = load i32, i32* %42, align 8, !dbg !1524, !tbaa !1197
  %44 = icmp sgt i32 %43, 1, !dbg !1526
  br i1 %44, label %.lr.ph25, label %._crit_edge26, !dbg !1527

.lr.ph25:                                         ; preds = %34, %.lr.ph25
  %.1623 = phi i32 [ %53, %.lr.ph25 ], [ %40, %34 ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next, %.lr.ph25 ], [ 1, %34 ]
  call void @llvm.dbg.value(metadata i32 %.1623, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %indvars.iv22, metadata !1463, metadata !DIExpression()), !dbg !1471
  %45 = add nsw i64 %indvars.iv22, %41, !dbg !1528
  %46 = getelementptr inbounds i32, i32* %22, i64 %45, !dbg !1530
  store i32 %.1623, i32* %46, align 4, !dbg !1531, !tbaa !535
  %47 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.130, i64 0, i32 7, !dbg !1532
  %48 = load %struct.residue_t**, %struct.residue_t*** %47, align 8, !dbg !1532, !tbaa !831
  %49 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %48, i64 %indvars.iv22, !dbg !1533
  %50 = load %struct.residue_t*, %struct.residue_t** %49, align 8, !dbg !1533, !tbaa !410
  %51 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %50, i64 0, i32 15, !dbg !1534
  %52 = load i32, i32* %51, align 8, !dbg !1534, !tbaa !785
  %53 = add nsw i32 %.1623, %52, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %53, metadata !1460, metadata !DIExpression()), !dbg !1471
  %indvars.iv.next = add nuw nsw i64 %indvars.iv22, 1, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %53, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1463, metadata !DIExpression()), !dbg !1471
  %54 = load i32, i32* %42, align 8, !dbg !1524, !tbaa !1197
  %55 = sext i32 %54 to i64, !dbg !1526
  %56 = icmp slt i64 %indvars.iv.next, %55, !dbg !1526
  br i1 %56, label %.lr.ph25, label %._crit_edge26, !dbg !1527, !llvm.loop !1537

._crit_edge26:                                    ; preds = %.lr.ph25, %34
  %.16.lcssa = phi i32 [ %40, %34 ], [ %53, %.lr.ph25 ], !dbg !1539
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.130, i64 0, i32 5, !dbg !1540
  %58 = load i32, i32* %57, align 8, !dbg !1540, !tbaa !1197
  %59 = add nsw i32 %.1928, %58, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %59, metadata !1465, metadata !DIExpression()), !dbg !1471
  br label %60, !dbg !1542

60:                                               ; preds = %.lr.ph32, %._crit_edge26
  %.210 = phi i32 [ %59, %._crit_edge26 ], [ %.1928, %.lr.ph32 ], !dbg !1543
  %.27 = phi i32 [ %.16.lcssa, %._crit_edge26 ], [ %.0529, %.lr.ph32 ], !dbg !1543
  call void @llvm.dbg.value(metadata i32 %.27, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %.210, metadata !1465, metadata !DIExpression()), !dbg !1471
  %61 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.130, i64 0, i32 4, !dbg !1544
  %62 = load %struct.strand_t*, %struct.strand_t** %61, align 8, !dbg !1544, !tbaa !821
  call void @llvm.dbg.value(metadata %struct.strand_t* %62, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %.27, metadata !1460, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %.210, metadata !1465, metadata !DIExpression()), !dbg !1471
  %.not61 = icmp eq %struct.strand_t* %62, null, !dbg !1508
  br i1 %.not61, label %._crit_edge33, label %.lr.ph32, !dbg !1508, !llvm.loop !1545

._crit_edge33:                                    ; preds = %60, %26
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1471
  %63 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1547
  %64 = load %struct.strand_t*, %struct.strand_t** %63, align 8, !dbg !1547, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %64, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1471
  %.not55 = icmp eq %struct.strand_t* %64, null, !dbg !1549
  br i1 %.not55, label %._crit_edge52, label %.lr.ph51, !dbg !1549

.lr.ph51:                                         ; preds = %._crit_edge33, %._crit_edge47
  %.249 = phi %struct.strand_t* [ %123, %._crit_edge47 ], [ %64, %._crit_edge33 ]
  %.348 = phi i32 [ %121, %._crit_edge47 ], [ 0, %._crit_edge33 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.249, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %.348, metadata !1465, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1463, metadata !DIExpression()), !dbg !1471
  %65 = sext i32 %.348 to i64, !dbg !1550
  %66 = sext i32 %.348 to i64, !dbg !1550
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1471
  %67 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.249, i64 0, i32 5, !dbg !1554
  %68 = load i32, i32* %67, align 8, !dbg !1554, !tbaa !1197
  %69 = icmp sgt i32 %68, 0, !dbg !1556
  br i1 %69, label %.lr.ph46, label %._crit_edge47, !dbg !1557

.lr.ph46:                                         ; preds = %.lr.ph51, %._crit_edge42
  %indvars.iv1743 = phi i64 [ %indvars.iv.next18, %._crit_edge42 ], [ 0, %.lr.ph51 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1743, metadata !1463, metadata !DIExpression()), !dbg !1471
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.249, i64 0, i32 7, !dbg !1558
  %71 = load %struct.residue_t**, %struct.residue_t*** %70, align 8, !dbg !1558, !tbaa !831
  %72 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %71, i64 %indvars.iv1743, !dbg !1560
  %73 = load %struct.residue_t*, %struct.residue_t** %72, align 8, !dbg !1560, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %73, metadata !1458, metadata !DIExpression()), !dbg !1471
  %74 = add nsw i64 %indvars.iv1743, %65, !dbg !1561
  %75 = getelementptr inbounds i32, i32* %22, i64 %74, !dbg !1562
  %76 = load i32, i32* %75, align 4, !dbg !1562, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %76, metadata !1459, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1468, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 0, metadata !1468, metadata !DIExpression()), !dbg !1471
  %77 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %73, i64 0, i32 11, !dbg !1563
  %78 = load i32, i32* %77, align 8, !dbg !1563, !tbaa !1566
  %79 = icmp sgt i32 %78, 0, !dbg !1567
  br i1 %79, label %.lr.ph36, label %._crit_edge37, !dbg !1568

.lr.ph36:                                         ; preds = %.lr.ph46, %.lr.ph36
  %indvars.iv1434 = phi i64 [ %indvars.iv.next15, %.lr.ph36 ], [ 0, %.lr.ph46 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1434, metadata !1468, metadata !DIExpression()), !dbg !1471
  %80 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %73, i64 0, i32 12, !dbg !1569
  %81 = load [2 x i32]*, [2 x i32]** %80, align 8, !dbg !1569, !tbaa !1571
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %81, i64 %indvars.iv1434, i64 0, !dbg !1572
  %83 = load i32, i32* %82, align 4, !dbg !1572, !tbaa !535
  %84 = add nsw i32 %83, %76, !dbg !1573
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %81, i64 %indvars.iv1434, i64 1, !dbg !1574
  %86 = load i32, i32* %85, align 4, !dbg !1574, !tbaa !535
  %87 = add nsw i32 %86, %76, !dbg !1575
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %84, i32 %87) #14, !dbg !1576
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv1434, 1, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next15, metadata !1468, metadata !DIExpression()), !dbg !1471
  %89 = load i32, i32* %77, align 8, !dbg !1563, !tbaa !1566
  %90 = sext i32 %89 to i64, !dbg !1567
  %91 = icmp slt i64 %indvars.iv.next15, %90, !dbg !1567
  br i1 %91, label %.lr.ph36, label %._crit_edge37, !dbg !1568, !llvm.loop !1578

._crit_edge37:                                    ; preds = %.lr.ph36, %.lr.ph46
  %92 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %73, i64 0, i32 10, !dbg !1580
  %93 = load %struct.extbond_t*, %struct.extbond_t** %92, align 8, !dbg !1580, !tbaa !1582
  call void @llvm.dbg.value(metadata %struct.extbond_t* %93, metadata !1469, metadata !DIExpression()), !dbg !1471
  %.not58 = icmp eq %struct.extbond_t* %93, null, !dbg !1583
  br i1 %.not58, label %._crit_edge42, label %.lr.ph41, !dbg !1583

.lr.ph41:                                         ; preds = %._crit_edge37, %113
  %.0138 = phi %struct.extbond_t* [ %115, %113 ], [ %93, %._crit_edge37 ]
  call void @llvm.dbg.value(metadata %struct.extbond_t* %.0138, metadata !1469, metadata !DIExpression()), !dbg !1471
  %94 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0138, i64 0, i32 2, !dbg !1584
  %95 = load i32, i32* %94, align 4, !dbg !1584, !tbaa !1588
  call void @llvm.dbg.value(metadata i32 %95, metadata !1464, metadata !DIExpression()), !dbg !1471
  %96 = sext i32 %95 to i64, !dbg !1590
  %.not59 = icmp slt i64 %indvars.iv1743, %96, !dbg !1590
  br i1 %.not59, label %97, label %113, !dbg !1591

97:                                               ; preds = %.lr.ph41
  %98 = add nsw i64 %indvars.iv1743, %66, !dbg !1592
  %99 = getelementptr inbounds i32, i32* %22, i64 %98, !dbg !1593
  %100 = load i32, i32* %99, align 4, !dbg !1593, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %100, metadata !1461, metadata !DIExpression()), !dbg !1471
  %101 = add nsw i32 %.348, %95, !dbg !1594
  %102 = add nsw i32 %101, -1, !dbg !1595
  %103 = sext i32 %102 to i64, !dbg !1596
  %104 = getelementptr inbounds i32, i32* %22, i64 %103, !dbg !1596
  %105 = load i32, i32* %104, align 4, !dbg !1596, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %105, metadata !1462, metadata !DIExpression()), !dbg !1471
  %106 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0138, i64 0, i32 1, !dbg !1597
  %107 = load i32, i32* %106, align 8, !dbg !1597, !tbaa !1598
  %108 = add nsw i32 %107, %100, !dbg !1599
  %109 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0138, i64 0, i32 3, !dbg !1600
  %110 = load i32, i32* %109, align 8, !dbg !1600, !tbaa !1601
  %111 = add nsw i32 %110, %105, !dbg !1602
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %108, i32 %111) #14, !dbg !1603
  br label %113, !dbg !1604

113:                                              ; preds = %.lr.ph41, %97
  %114 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0138, i64 0, i32 0, !dbg !1605
  %115 = load %struct.extbond_t*, %struct.extbond_t** %114, align 8, !dbg !1605, !tbaa !1606
  call void @llvm.dbg.value(metadata %struct.extbond_t* %115, metadata !1469, metadata !DIExpression()), !dbg !1471
  %.not60 = icmp eq %struct.extbond_t* %115, null, !dbg !1583
  br i1 %.not60, label %._crit_edge42, label %.lr.ph41, !dbg !1583, !llvm.loop !1607

._crit_edge42:                                    ; preds = %._crit_edge37, %113
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv1743, 1, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next18, metadata !1463, metadata !DIExpression()), !dbg !1471
  %116 = load i32, i32* %67, align 8, !dbg !1554, !tbaa !1197
  %117 = sext i32 %116 to i64, !dbg !1556
  %118 = icmp slt i64 %indvars.iv.next18, %117, !dbg !1556
  br i1 %118, label %.lr.ph46, label %._crit_edge47, !dbg !1557, !llvm.loop !1610

._crit_edge47:                                    ; preds = %._crit_edge42, %.lr.ph51
  %119 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.249, i64 0, i32 5, !dbg !1612
  %120 = load i32, i32* %119, align 8, !dbg !1612, !tbaa !1197
  %121 = add nsw i32 %.348, %120, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %121, metadata !1465, metadata !DIExpression()), !dbg !1471
  %122 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.249, i64 0, i32 4, !dbg !1614
  %123 = load %struct.strand_t*, %struct.strand_t** %122, align 8, !dbg !1614, !tbaa !821
  call void @llvm.dbg.value(metadata %struct.strand_t* %123, metadata !1457, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %121, metadata !1465, metadata !DIExpression()), !dbg !1471
  %.not57 = icmp eq %struct.strand_t* %123, null, !dbg !1549
  br i1 %.not57, label %._crit_edge52, label %.lr.ph51, !dbg !1549, !llvm.loop !1615

._crit_edge52:                                    ; preds = %._crit_edge33, %._crit_edge47, %24
  %.04 = phi i32 [ 1, %24 ], [ 0, %._crit_edge47 ], [ 0, %._crit_edge33 ], !dbg !1471
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1466, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.label(metadata !1470), !dbg !1617
  %.not56 = icmp eq i8* %21, null, !dbg !1618
  br i1 %.not56, label %125, label %124, !dbg !1620

124:                                              ; preds = %._crit_edge52
  call void @free(i8* %21) #14, !dbg !1621
  br label %125, !dbg !1621

125:                                              ; preds = %124, %._crit_edge52
  %126 = call i32 @fclose(%struct._IO_FILE* nonnull %7) #14, !dbg !1622
  br label %127, !dbg !1623

127:                                              ; preds = %125, %3
  %.0 = phi i32 [ %.04, %125 ], [ 0, %3 ], !dbg !1471
  ret i32 %.0, !dbg !1624
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: nounwind
declare !dbg !110 dso_local void @free(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) #0 !dbg !1625 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1629, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata %struct.molecule_t* %1, metadata !1630, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %2, metadata !1631, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %3, metadata !1632, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 0, metadata !1645, metadata !DIExpression()), !dbg !1647
  %.not = icmp eq %struct.molecule_t* %1, null, !dbg !1648
  br i1 %.not, label %5, label %8, !dbg !1650

5:                                                ; preds = %4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1651, !tbaa !410
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %6) #16, !dbg !1653
  br label %138, !dbg !1654

8:                                                ; preds = %4
  call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %2) #14, !dbg !1655
  %9 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1656
  %10 = load %struct.strand_t*, %struct.strand_t** %9, align 8, !dbg !1656, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %10, metadata !1634, metadata !DIExpression()), !dbg !1647
  %.not92 = icmp eq %struct.strand_t* %10, null, !dbg !1658
  br i1 %.not92, label %._crit_edge47, label %.lr.ph46, !dbg !1658

.lr.ph46:                                         ; preds = %8, %._crit_edge43
  %.0844 = phi %struct.strand_t* [ %52, %._crit_edge43 ], [ %10, %8 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.0844, metadata !1634, metadata !DIExpression()), !dbg !1647
  %11 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0844, i64 0, i32 2, !dbg !1659
  %12 = load i32, i32* %11, align 4, !dbg !1662, !tbaa !1663
  %13 = and i32 %12, -3, !dbg !1662
  %14 = shl i32 %12, 1, !dbg !1664
  %15 = and i32 %14, 2, !dbg !1664
  %16 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0844, i64 0, i32 2, !dbg !1665
  %17 = or i32 %13, %15, !dbg !1666
  store i32 %17, i32* %16, align 4, !dbg !1666, !tbaa !1663
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1647
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0844, i64 0, i32 5, !dbg !1667
  %19 = load i32, i32* %18, align 8, !dbg !1667, !tbaa !1197
  %20 = icmp sgt i32 %19, 0, !dbg !1670
  br i1 %20, label %.lr.ph42, label %._crit_edge43, !dbg !1671

.lr.ph42:                                         ; preds = %.lr.ph46, %._crit_edge
  %indvars.iv40 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph46 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv40, metadata !1640, metadata !DIExpression()), !dbg !1647
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0844, i64 0, i32 7, !dbg !1672
  %22 = load %struct.residue_t**, %struct.residue_t*** %21, align 8, !dbg !1672, !tbaa !831
  %23 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %22, i64 %indvars.iv40, !dbg !1674
  %24 = load %struct.residue_t*, %struct.residue_t** %23, align 8, !dbg !1674, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %24, metadata !1635, metadata !DIExpression()), !dbg !1647
  %25 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 6, !dbg !1675
  %26 = load i32, i32* %25, align 8, !dbg !1676, !tbaa !1677
  %27 = and i32 %26, -3, !dbg !1676
  %28 = shl i32 %26, 1, !dbg !1678
  %29 = and i32 %28, 2, !dbg !1678
  %30 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 6, !dbg !1679
  %31 = or i32 %27, %29, !dbg !1680
  store i32 %31, i32* %30, align 8, !dbg !1680, !tbaa !1677
  call void @llvm.dbg.value(metadata i32 0, metadata !1642, metadata !DIExpression()), !dbg !1647
  %32 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 17, !dbg !1681
  %33 = load %struct.atom_t*, %struct.atom_t** %32, align 8, !dbg !1681, !tbaa !1227
  call void @llvm.dbg.value(metadata %struct.atom_t* %33, metadata !1637, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 0, metadata !1642, metadata !DIExpression()), !dbg !1647
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %24, i64 0, i32 15, !dbg !1683
  %35 = load i32, i32* %34, align 8, !dbg !1683, !tbaa !785
  %36 = icmp sgt i32 %35, 0, !dbg !1685
  br i1 %36, label %.lr.ph, label %._crit_edge, !dbg !1686

.lr.ph:                                           ; preds = %.lr.ph42, %.lr.ph
  %.0339 = phi i32 [ %44, %.lr.ph ], [ 0, %.lr.ph42 ]
  %.01438 = phi %struct.atom_t* [ %45, %.lr.ph ], [ %33, %.lr.ph42 ]
  call void @llvm.dbg.value(metadata i32 %.0339, metadata !1642, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata %struct.atom_t* %.01438, metadata !1637, metadata !DIExpression()), !dbg !1647
  %37 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01438, i64 0, i32 2, !dbg !1687
  %38 = load i32, i32* %37, align 8, !dbg !1689, !tbaa !881
  %39 = and i32 %38, -3, !dbg !1689
  %40 = shl i32 %38, 1, !dbg !1690
  %41 = and i32 %40, 2, !dbg !1690
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01438, i64 0, i32 2, !dbg !1691
  %43 = or i32 %39, %41, !dbg !1692
  store i32 %43, i32* %42, align 8, !dbg !1692, !tbaa !881
  %44 = add nuw nsw i32 %.0339, 1, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %44, metadata !1642, metadata !DIExpression()), !dbg !1647
  %45 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01438, i64 1, !dbg !1694
  call void @llvm.dbg.value(metadata %struct.atom_t* %45, metadata !1637, metadata !DIExpression()), !dbg !1647
  %46 = load i32, i32* %34, align 8, !dbg !1683, !tbaa !785
  %47 = icmp slt i32 %44, %46, !dbg !1685
  br i1 %47, label %.lr.ph, label %._crit_edge, !dbg !1686, !llvm.loop !1695

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv40, 1, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1640, metadata !DIExpression()), !dbg !1647
  %48 = load i32, i32* %18, align 8, !dbg !1667, !tbaa !1197
  %49 = sext i32 %48 to i64, !dbg !1670
  %50 = icmp slt i64 %indvars.iv.next, %49, !dbg !1670
  br i1 %50, label %.lr.ph42, label %._crit_edge43, !dbg !1671, !llvm.loop !1698

._crit_edge43:                                    ; preds = %._crit_edge, %.lr.ph46
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0844, i64 0, i32 4, !dbg !1700
  %52 = load %struct.strand_t*, %struct.strand_t** %51, align 8, !dbg !1700, !tbaa !821
  call void @llvm.dbg.value(metadata %struct.strand_t* %52, metadata !1634, metadata !DIExpression()), !dbg !1647
  %.not101 = icmp eq %struct.strand_t* %52, null, !dbg !1658
  br i1 %.not101, label %._crit_edge47, label %.lr.ph46, !dbg !1658, !llvm.loop !1701

._crit_edge47:                                    ; preds = %._crit_edge43, %8
  call void @select_atoms(%struct.molecule_t* nonnull %1, i8* %3) #14, !dbg !1703
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()), !dbg !1647
  %53 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1704
  %54 = load %struct.strand_t*, %struct.strand_t** %53, align 8, !dbg !1704, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %54, metadata !1634, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 0, metadata !1639, metadata !DIExpression()), !dbg !1647
  %.not93 = icmp eq %struct.strand_t* %54, null, !dbg !1706
  br i1 %.not93, label %._crit_edge52, label %.lr.ph51, !dbg !1706

.lr.ph51:                                         ; preds = %._crit_edge47, %.lr.ph51
  %.1949 = phi %struct.strand_t* [ %59, %.lr.ph51 ], [ %54, %._crit_edge47 ]
  %.01548 = phi i32 [ %57, %.lr.ph51 ], [ 0, %._crit_edge47 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.1949, metadata !1634, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %.01548, metadata !1639, metadata !DIExpression()), !dbg !1647
  %55 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1949, i64 0, i32 5, !dbg !1707
  %56 = load i32, i32* %55, align 8, !dbg !1707, !tbaa !1197
  %57 = add nsw i32 %.01548, %56, !dbg !1709
  call void @llvm.dbg.value(metadata i32 %57, metadata !1639, metadata !DIExpression()), !dbg !1647
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.1949, i64 0, i32 4, !dbg !1710
  %59 = load %struct.strand_t*, %struct.strand_t** %58, align 8, !dbg !1710, !tbaa !821
  call void @llvm.dbg.value(metadata %struct.strand_t* %59, metadata !1634, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %57, metadata !1639, metadata !DIExpression()), !dbg !1647
  %.not99 = icmp eq %struct.strand_t* %59, null, !dbg !1706
  br i1 %.not99, label %._crit_edge52, label %.lr.ph51, !dbg !1706, !llvm.loop !1711

._crit_edge52:                                    ; preds = %.lr.ph51, %._crit_edge47
  %.015.lcssa = phi i32 [ 0, %._crit_edge47 ], [ %57, %.lr.ph51 ], !dbg !1713
  %60 = sext i32 %.015.lcssa to i64, !dbg !1714
  %61 = shl nsw i64 %60, 3, !dbg !1716
  %62 = call noalias i8* @malloc(i64 %61) #14, !dbg !1717
  %63 = bitcast i8* %62 to %struct.residue_t**, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.residue_t** %63, metadata !1644, metadata !DIExpression()), !dbg !1647
  %64 = icmp eq i8* %62, null, !dbg !1719
  br i1 %64, label %65, label %68, !dbg !1720

65:                                               ; preds = %._crit_edge52
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1721, !tbaa !410
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %66) #16, !dbg !1723
  br label %._crit_edge90, !dbg !1724

68:                                               ; preds = %._crit_edge52
  call void @llvm.dbg.value(metadata i32 0, metadata !1641, metadata !DIExpression()), !dbg !1647
  %69 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i64 0, i32 2, !dbg !1725
  %70 = load %struct.strand_t*, %struct.strand_t** %69, align 8, !dbg !1725, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %70, metadata !1634, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 0, metadata !1641, metadata !DIExpression()), !dbg !1647
  %.not94 = icmp eq %struct.strand_t* %70, null, !dbg !1727
  br i1 %.not94, label %._crit_edge63, label %.lr.ph62, !dbg !1727

.lr.ph62:                                         ; preds = %68, %._crit_edge57
  %.0560 = phi i64 [ %.16.lcssa.wide, %._crit_edge57 ], [ 0, %68 ]
  %.21059 = phi %struct.strand_t* [ %84, %._crit_edge57 ], [ %70, %68 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1641, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata %struct.strand_t* %.21059, metadata !1634, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()), !dbg !1647
  %sext = shl i64 %.0560, 32, !dbg !1728
  %71 = ashr exact i64 %sext, 32, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %71, metadata !1641, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1647
  %72 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21059, i64 0, i32 5, !dbg !1732
  %73 = load i32, i32* %72, align 8, !dbg !1732, !tbaa !1197
  %74 = icmp sgt i32 %73, 0, !dbg !1734
  br i1 %74, label %.lr.ph56, label %._crit_edge57, !dbg !1735

.lr.ph56:                                         ; preds = %.lr.ph62, %.lr.ph56
  %indvars.iv1754 = phi i64 [ %indvars.iv.next18, %.lr.ph56 ], [ 0, %.lr.ph62 ]
  %indvars.iv1953 = phi i64 [ %indvars.iv.next20, %.lr.ph56 ], [ %71, %.lr.ph62 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1754, metadata !1640, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv1953, metadata !1641, metadata !DIExpression()), !dbg !1647
  %75 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21059, i64 0, i32 7, !dbg !1736
  %76 = load %struct.residue_t**, %struct.residue_t*** %75, align 8, !dbg !1736, !tbaa !831
  %77 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %76, i64 %indvars.iv1754, !dbg !1737
  %78 = load %struct.residue_t*, %struct.residue_t** %77, align 8, !dbg !1737, !tbaa !410
  %indvars.iv.next20 = add nsw i64 %indvars.iv1953, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next20, metadata !1641, metadata !DIExpression()), !dbg !1647
  %79 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %63, i64 %indvars.iv1953, !dbg !1739
  store %struct.residue_t* %78, %struct.residue_t** %79, align 8, !dbg !1740, !tbaa !410
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv1754, 1, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next20, metadata !1641, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next18, metadata !1640, metadata !DIExpression()), !dbg !1647
  %80 = load i32, i32* %72, align 8, !dbg !1732, !tbaa !1197
  %81 = sext i32 %80 to i64, !dbg !1734
  %82 = icmp slt i64 %indvars.iv.next18, %81, !dbg !1734
  br i1 %82, label %.lr.ph56, label %._crit_edge57, !dbg !1735, !llvm.loop !1742

._crit_edge57:                                    ; preds = %.lr.ph56, %.lr.ph62
  %.16.lcssa.wide = phi i64 [ %71, %.lr.ph62 ], [ %indvars.iv.next20, %.lr.ph56 ]
  %83 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21059, i64 0, i32 4, !dbg !1744
  %84 = load %struct.strand_t*, %struct.strand_t** %83, align 8, !dbg !1744, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %.16.lcssa.wide, metadata !1641, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1647
  call void @llvm.dbg.value(metadata %struct.strand_t* %84, metadata !1634, metadata !DIExpression()), !dbg !1647
  %.not98 = icmp eq %struct.strand_t* %84, null, !dbg !1727
  br i1 %.not98, label %._crit_edge63, label %.lr.ph62, !dbg !1727, !llvm.loop !1745

._crit_edge63:                                    ; preds = %._crit_edge57, %68
  %85 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #14, !dbg !1747
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %85, metadata !1633, metadata !DIExpression()), !dbg !1647
  %86 = icmp eq %struct._IO_FILE* %85, null, !dbg !1749
  br i1 %86, label %87, label %90, !dbg !1750

87:                                               ; preds = %._crit_edge63
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1751, !tbaa !410
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %0) #15, !dbg !1753
  br label %._crit_edge90, !dbg !1754

90:                                               ; preds = %._crit_edge63
  call void @llvm.dbg.value(metadata i32 0, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 0, metadata !1640, metadata !DIExpression()), !dbg !1647
  %smax = call i32 @llvm.smax.i32(i32 %.015.lcssa, i32 0), !dbg !1755
  %wide.trip.count36 = zext i32 %smax to i64, !dbg !1757
  call void @llvm.dbg.value(metadata i32 0, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1647
  %exitcond3784.not = icmp slt i32 %.015.lcssa, 1, !dbg !1757
  br i1 %exitcond3784.not, label %._crit_edge90, label %.lr.ph89, !dbg !1759

.lr.ph89:                                         ; preds = %90, %._crit_edge82
  %.0187 = phi i32 [ %.1.lcssa, %._crit_edge82 ], [ 0, %90 ]
  %indvars.iv3385 = phi i64 [ %indvars.iv.next34, %._crit_edge82 ], [ 0, %90 ]
  call void @llvm.dbg.value(metadata i32 %.0187, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv3385, metadata !1640, metadata !DIExpression()), !dbg !1647
  %91 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %63, i64 %indvars.iv3385, !dbg !1760
  %92 = load %struct.residue_t*, %struct.residue_t** %91, align 8, !dbg !1760, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %92, metadata !1635, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 0, metadata !1642, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %.0187, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1642, metadata !DIExpression()), !dbg !1647
  %93 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %92, i64 0, i32 15, !dbg !1762
  %94 = load i32, i32* %93, align 8, !dbg !1762, !tbaa !785
  %95 = icmp sgt i32 %94, 0, !dbg !1765
  br i1 %95, label %.lr.ph81, label %._crit_edge82, !dbg !1766

.lr.ph81:                                         ; preds = %.lr.ph89, %._crit_edge76
  %.179 = phi i32 [ %.5, %._crit_edge76 ], [ %.0187, %.lr.ph89 ]
  %indvars.iv3078 = phi i64 [ %indvars.iv.next31, %._crit_edge76 ], [ 0, %.lr.ph89 ]
  call void @llvm.dbg.value(metadata i32 %.179, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv3078, metadata !1642, metadata !DIExpression()), !dbg !1647
  %96 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %92, i64 0, i32 17, !dbg !1767
  %97 = load %struct.atom_t*, %struct.atom_t** %96, align 8, !dbg !1767, !tbaa !1227
  %98 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %97, i64 %indvars.iv3078, !dbg !1769
  call void @llvm.dbg.value(metadata %struct.atom_t* %98, metadata !1637, metadata !DIExpression()), !dbg !1647
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %97, i64 %indvars.iv3078, i32 2, !dbg !1770
  %100 = load i32, i32* %99, align 8, !dbg !1770, !tbaa !881
  %101 = and i32 %100, 2, !dbg !1772
  %.not96 = icmp eq i32 %101, 0, !dbg !1772
  br i1 %.not96, label %._crit_edge76, label %102, !dbg !1773

102:                                              ; preds = %.lr.ph81
  call void @llvm.dbg.value(metadata i32 0, metadata !1641, metadata !DIExpression()), !dbg !1647
  %wide.trip.count = zext i32 %.015.lcssa to i64, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %.179, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1647
  br i1 true, label %.lr.ph75, label %._crit_edge76, !dbg !1778

.lr.ph75:                                         ; preds = %102, %._crit_edge68
  %.273 = phi i32 [ %.3.lcssa, %._crit_edge68 ], [ %.179, %102 ]
  %indvars.iv2771 = phi i64 [ %indvars.iv.next28, %._crit_edge68 ], [ 0, %102 ]
  call void @llvm.dbg.value(metadata i32 %.273, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv2771, metadata !1641, metadata !DIExpression()), !dbg !1647
  %103 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %63, i64 %indvars.iv2771, !dbg !1779
  %104 = load %struct.residue_t*, %struct.residue_t** %103, align 8, !dbg !1779, !tbaa !410
  call void @llvm.dbg.value(metadata %struct.residue_t* %104, metadata !1636, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 0, metadata !1643, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %.273, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1643, metadata !DIExpression()), !dbg !1647
  %105 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %104, i64 0, i32 15, !dbg !1781
  %106 = load i32, i32* %105, align 8, !dbg !1781, !tbaa !785
  %107 = icmp sgt i32 %106, 0, !dbg !1784
  br i1 %107, label %.lr.ph67, label %._crit_edge68, !dbg !1785

.lr.ph67:                                         ; preds = %.lr.ph75, %130
  %.365 = phi i32 [ %.4, %130 ], [ %.273, %.lr.ph75 ]
  %indvars.iv2464 = phi i64 [ %indvars.iv.next25, %130 ], [ 0, %.lr.ph75 ]
  call void @llvm.dbg.value(metadata i32 %.365, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv2464, metadata !1643, metadata !DIExpression()), !dbg !1647
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %104, i64 0, i32 17, !dbg !1786
  %109 = load %struct.atom_t*, %struct.atom_t** %108, align 8, !dbg !1786, !tbaa !1227
  %110 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %109, i64 %indvars.iv2464, !dbg !1788
  call void @llvm.dbg.value(metadata %struct.atom_t* %110, metadata !1638, metadata !DIExpression()), !dbg !1647
  %111 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %109, i64 %indvars.iv2464, i32 2, !dbg !1789
  %112 = load i32, i32* %111, align 8, !dbg !1789, !tbaa !881
  %113 = and i32 %112, 1, !dbg !1791
  %.not97 = icmp eq i32 %113, 0, !dbg !1791
  br i1 %.not97, label %130, label %114, !dbg !1792

114:                                              ; preds = %.lr.ph67
  %115 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %92, i64 0, i32 4, !dbg !1793
  %116 = load i8*, i8** %115, align 8, !dbg !1793, !tbaa !774
  %117 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %98, i64 0, i32 0, !dbg !1795
  %118 = load i8*, i8** %117, align 8, !dbg !1795, !tbaa !875
  %119 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %104, i64 0, i32 4, !dbg !1796
  %120 = load i8*, i8** %119, align 8, !dbg !1796, !tbaa !774
  %121 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %110, i64 0, i32 0, !dbg !1797
  %122 = load i8*, i8** %121, align 8, !dbg !1797, !tbaa !875
  %123 = call double @dist(%struct.atom_t* %98, %struct.atom_t* %110), !dbg !1798
  %124 = trunc i64 %indvars.iv2771 to i32, !dbg !1799
  %125 = add i32 %124, 1, !dbg !1799
  %126 = trunc i64 %indvars.iv3385 to i32, !dbg !1799
  %127 = add i32 %126, 1, !dbg !1799
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %127, i8* %116, i8* %118, i32 %125, i8* %120, i8* %122, double %123) #14, !dbg !1799
  %129 = add nsw i32 %.365, 1, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %129, metadata !1645, metadata !DIExpression()), !dbg !1647
  br label %130, !dbg !1801

130:                                              ; preds = %.lr.ph67, %114
  %.4 = phi i32 [ %129, %114 ], [ %.365, %.lr.ph67 ], !dbg !1802
  call void @llvm.dbg.value(metadata i32 %.4, metadata !1645, metadata !DIExpression()), !dbg !1647
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2464, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %.4, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next25, metadata !1643, metadata !DIExpression()), !dbg !1647
  %131 = load i32, i32* %105, align 8, !dbg !1781, !tbaa !785
  %132 = sext i32 %131 to i64, !dbg !1784
  %133 = icmp slt i64 %indvars.iv.next25, %132, !dbg !1784
  br i1 %133, label %.lr.ph67, label %._crit_edge68, !dbg !1785, !llvm.loop !1804

._crit_edge68:                                    ; preds = %.lr.ph75, %130
  %.3.lcssa = phi i32 [ %.273, %.lr.ph75 ], [ %.4, %130 ], !dbg !1802
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv2771, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %.3.lcssa, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next28, metadata !1641, metadata !DIExpression()), !dbg !1647
  %exitcond.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count, !dbg !1774
  br i1 %exitcond.not, label %._crit_edge76, label %.lr.ph75, !dbg !1778, !llvm.loop !1807

._crit_edge76:                                    ; preds = %.lr.ph81, %._crit_edge68, %102
  %.5 = phi i32 [ %.179, %.lr.ph81 ], [ %.179, %102 ], [ %.3.lcssa, %._crit_edge68 ], !dbg !1809
  call void @llvm.dbg.value(metadata i32 %.5, metadata !1645, metadata !DIExpression()), !dbg !1647
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv3078, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %.5, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next31, metadata !1642, metadata !DIExpression()), !dbg !1647
  %134 = load i32, i32* %93, align 8, !dbg !1762, !tbaa !785
  %135 = sext i32 %134 to i64, !dbg !1765
  %136 = icmp slt i64 %indvars.iv.next31, %135, !dbg !1765
  br i1 %136, label %.lr.ph81, label %._crit_edge82, !dbg !1766, !llvm.loop !1811

._crit_edge82:                                    ; preds = %.lr.ph89, %._crit_edge76
  %.1.lcssa = phi i32 [ %.0187, %.lr.ph89 ], [ %.5, %._crit_edge76 ], !dbg !1809
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv3385, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %.1.lcssa, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next34, metadata !1640, metadata !DIExpression()), !dbg !1647
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36, !dbg !1757
  br i1 %exitcond37.not, label %._crit_edge90, label %.lr.ph89, !dbg !1759, !llvm.loop !1814

._crit_edge90:                                    ; preds = %90, %._crit_edge82, %87, %65
  %.6 = phi i32 [ 0, %65 ], [ 0, %87 ], [ 0, %90 ], [ %.1.lcssa, %._crit_edge82 ], !dbg !1647
  call void @llvm.dbg.value(metadata i32 %.6, metadata !1645, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.label(metadata !1646), !dbg !1816
  %.not95 = icmp eq i8* %62, null, !dbg !1817
  br i1 %.not95, label %138, label %137, !dbg !1819

137:                                              ; preds = %._crit_edge90
  call void @free(i8* %62) #14, !dbg !1820
  br label %138, !dbg !1820

138:                                              ; preds = %._crit_edge90, %137, %5
  %.0 = phi i32 [ 0, %5 ], [ %.6, %137 ], [ %.6, %._crit_edge90 ], !dbg !1647
  ret i32 %.0, !dbg !1821
}

declare !dbg !114 dso_local void @select_atoms(%struct.molecule_t*, i8*) #4

; Function Attrs: nounwind uwtable
define internal double @dist(%struct.atom_t* %0, %struct.atom_t* %1) #0 !dbg !1822 {
  call void @llvm.dbg.value(metadata %struct.atom_t* %0, metadata !1826, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata %struct.atom_t* %1, metadata !1827, metadata !DIExpression()), !dbg !1831
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 0, !dbg !1832
  %4 = load double, double* %3, align 8, !dbg !1832, !tbaa !716
  %5 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 0, i32 17, i64 0, !dbg !1833
  %6 = load double, double* %5, align 8, !dbg !1833, !tbaa !716
  %7 = fsub double %4, %6, !dbg !1834
  call void @llvm.dbg.value(metadata double %7, metadata !1828, metadata !DIExpression()), !dbg !1831
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 1, !dbg !1835
  %9 = load double, double* %8, align 8, !dbg !1835, !tbaa !716
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 0, i32 17, i64 1, !dbg !1836
  %11 = load double, double* %10, align 8, !dbg !1836, !tbaa !716
  %12 = fsub double %9, %11, !dbg !1837
  call void @llvm.dbg.value(metadata double %12, metadata !1829, metadata !DIExpression()), !dbg !1831
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i64 0, i32 17, i64 2, !dbg !1838
  %14 = load double, double* %13, align 8, !dbg !1838, !tbaa !716
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i64 0, i32 17, i64 2, !dbg !1839
  %16 = load double, double* %15, align 8, !dbg !1839, !tbaa !716
  %17 = fsub double %14, %16, !dbg !1840
  call void @llvm.dbg.value(metadata double %17, metadata !1830, metadata !DIExpression()), !dbg !1831
  %18 = fmul double %7, %7, !dbg !1841
  %19 = fmul double %12, %12, !dbg !1842
  %20 = fadd double %18, %19, !dbg !1843
  %21 = fmul double %17, %17, !dbg !1844
  %22 = fadd double %20, %21, !dbg !1845
  %23 = call double @sqrt(double %22) #14, !dbg !1846
  ret double %23, !dbg !1847
}

; Function Attrs: nounwind uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* %1) #0 !dbg !1848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1854, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata [4 x double]* %1, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1856, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 0, metadata !1859, metadata !DIExpression()), !dbg !1861
  %3 = icmp eq i8* %0, null, !dbg !1862
  br i1 %3, label %7, label %4, !dbg !1864

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1, !dbg !1865, !tbaa !404
  %6 = icmp eq i8 %5, 0, !dbg !1866
  br i1 %6, label %7, label %10, !dbg !1867

7:                                                ; preds = %4, %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1868, !tbaa !410
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %8) #16, !dbg !1870
  call void @llvm.dbg.value(metadata i32 1, metadata !1859, metadata !DIExpression()), !dbg !1861
  br label %27, !dbg !1871

10:                                               ; preds = %4
  %11 = call i32 @strcmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #13, !dbg !1872
  %.not = icmp eq i32 %11, 0, !dbg !1872
  br i1 %.not, label %12, label %14, !dbg !1874

12:                                               ; preds = %10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1875, !tbaa !410
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %13, metadata !1856, metadata !DIExpression()), !dbg !1861
  br label %20, !dbg !1876

14:                                               ; preds = %10
  %15 = call %struct._IO_FILE* @fopen(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #14, !dbg !1877
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %15, metadata !1856, metadata !DIExpression()), !dbg !1861
  %16 = icmp eq %struct._IO_FILE* %15, null, !dbg !1879
  br i1 %16, label %17, label %20, !dbg !1880

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1881, !tbaa !410
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %0) #15, !dbg !1883
  call void @llvm.dbg.value(metadata i32 1, metadata !1859, metadata !DIExpression()), !dbg !1861
  br label %27, !dbg !1884

20:                                               ; preds = %12, %14
  %.02 = phi %struct._IO_FILE* [ %13, %12 ], [ %15, %14 ], !dbg !1885
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.02, metadata !1856, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 0, metadata !1857, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 0, metadata !1857, metadata !DIExpression()), !dbg !1861
  br label %21, !dbg !1886

21:                                               ; preds = %20, %26
  %indvars.iv510 = phi i64 [ 0, %20 ], [ %indvars.iv.next6, %26 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv510, metadata !1857, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 0, metadata !1858, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 0, metadata !1858, metadata !DIExpression()), !dbg !1861
  br label %22, !dbg !1888

22:                                               ; preds = %21, %22
  %indvars.iv9 = phi i64 [ 0, %21 ], [ %indvars.iv.next, %22 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !1858, metadata !DIExpression()), !dbg !1861
  %23 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv510, i64 %indvars.iv9, !dbg !1892
  %24 = load double, double* %23, align 8, !dbg !1892, !tbaa !716
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.02, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %24) #14, !dbg !1894
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1858, metadata !DIExpression()), !dbg !1861
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !1896
  br i1 %exitcond.not, label %26, label %22, !dbg !1888, !llvm.loop !1897

26:                                               ; preds = %22
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %.02), !dbg !1899
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv510, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6, metadata !1857, metadata !DIExpression()), !dbg !1861
  %exitcond8.not = icmp eq i64 %indvars.iv.next6, 4, !dbg !1901
  br i1 %exitcond8.not, label %27, label %21, !dbg !1886, !llvm.loop !1902

27:                                               ; preds = %26, %17, %7
  %.1 = phi %struct._IO_FILE* [ null, %7 ], [ %15, %17 ], [ %.02, %26 ], !dbg !1861
  %.0 = phi i32 [ 1, %7 ], [ 1, %17 ], [ 0, %26 ], !dbg !1861
  call void @llvm.dbg.value(metadata i32 %.0, metadata !1859, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %.1, metadata !1856, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.label(metadata !1860), !dbg !1904
  %28 = icmp ne %struct._IO_FILE* %.1, null, !dbg !1905
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = icmp ne %struct._IO_FILE* %.1, %29
  %or.cond = select i1 %28, i1 %30, i1 false, !dbg !1907
  br i1 %or.cond, label %31, label %33, !dbg !1907

31:                                               ; preds = %27
  %32 = call i32 @fclose(%struct._IO_FILE* nonnull %.1) #14, !dbg !1908
  br label %33, !dbg !1908

33:                                               ; preds = %31, %27
  ret i32 %.0, !dbg !1909
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define internal void @initres() #0 !dbg !1910 {
  call void @NAB_initres(%struct.residue_t* nonnull @res, i32 0) #14, !dbg !1911
  %1 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !1912, !tbaa !774
  %2 = icmp eq i8* %1, null, !dbg !1914
  br i1 %2, label %3, label %9, !dbg !1915

3:                                                ; preds = %0
  %4 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !1916
  store i8* %4, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 4), align 8, !dbg !1918, !tbaa !774
  %5 = icmp eq i8* %4, null, !dbg !1919
  br i1 %5, label %6, label %9, !dbg !1921

6:                                                ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1922, !tbaa !410
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %7) #16, !dbg !1924
  call void @exit(i32 1) #17, !dbg !1925
  unreachable, !dbg !1925

9:                                                ; preds = %3, %0
  %10 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !1926, !tbaa !778
  %11 = icmp eq i8* %10, null, !dbg !1928
  br i1 %11, label %12, label %18, !dbg !1929

12:                                               ; preds = %9
  %13 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !1930
  store i8* %13, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 5), align 8, !dbg !1932, !tbaa !778
  %14 = icmp eq i8* %13, null, !dbg !1933
  br i1 %14, label %15, label %18, !dbg !1935

15:                                               ; preds = %12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1936, !tbaa !410
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %16) #16, !dbg !1938
  call void @exit(i32 1) #17, !dbg !1939
  unreachable, !dbg !1939

18:                                               ; preds = %12, %9
  %19 = load i32, i32* @n_atab, align 4, !dbg !1940, !tbaa !535
  store i32 %19, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 15), align 8, !dbg !1941, !tbaa !785
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i64 0, i32 17), align 8, !dbg !1942, !tbaa !1227
  ret void, !dbg !1943
}

; Function Attrs: nounwind uwtable
define internal void @init_atab() #0 !dbg !353 {
  %1 = load i32, i32* @init_atab.init, align 4, !dbg !1944, !tbaa !535
  %.not = icmp eq i32 %1, 0, !dbg !1944
  br i1 %.not, label %18, label %2, !dbg !1946

2:                                                ; preds = %0, %9
  %.04 = phi i32 [ %15, %9 ], [ 0, %0 ]
  %.013 = phi %struct.atom_t* [ %16, %9 ], [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %0 ]
  call void @llvm.dbg.value(metadata i32 %.04, metadata !357, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata %struct.atom_t* %.013, metadata !358, metadata !DIExpression()), !dbg !1947
  %3 = call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #14, !dbg !1948
  %4 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i64 0, i32 0, !dbg !1952
  store i8* %3, i8** %4, align 8, !dbg !1953, !tbaa !875
  %5 = icmp eq i8* %3, null, !dbg !1954
  br i1 %5, label %6, label %9, !dbg !1956

6:                                                ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1957, !tbaa !410
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %7) #16, !dbg !1959
  call void @exit(i32 1) #17, !dbg !1960
  unreachable, !dbg !1960

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i64 0, i32 0, !dbg !1961
  %11 = load i8*, i8** %10, align 8, !dbg !1961, !tbaa !875
  store i8 0, i8* %11, align 1, !dbg !1962, !tbaa !404
  %12 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i64 0, i32 1, !dbg !1963
  store i8* null, i8** %12, align 8, !dbg !1964, !tbaa !1965
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i64 0, i32 10, !dbg !1966
  store i8* null, i8** %13, align 8, !dbg !1967, !tbaa !1968
  %14 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i64 0, i32 16, !dbg !1969
  store i8* null, i8** %14, align 8, !dbg !1970, !tbaa !1971
  %15 = add nuw nsw i32 %.04, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i32 %15, metadata !357, metadata !DIExpression()), !dbg !1947
  %16 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.013, i64 1, !dbg !1973
  call void @llvm.dbg.value(metadata %struct.atom_t* %16, metadata !358, metadata !DIExpression()), !dbg !1947
  %exitcond.not = icmp eq i32 %15, 1000, !dbg !1974
  br i1 %exitcond.not, label %17, label %2, !dbg !1975, !llvm.loop !1976

17:                                               ; preds = %9
  store i32 0, i32* @init_atab.init, align 4, !dbg !1978, !tbaa !535
  br label %18, !dbg !1979

18:                                               ; preds = %17, %0
  ret void, !dbg !1979
}

declare !dbg !325 dso_local %struct.molecule_t* @newmolecule() #4

declare !dbg !328 dso_local i8* @ggets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #6

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local double @atof(i8* nonnull %0) #8 !dbg !1980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1987, metadata !DIExpression()), !dbg !1988
  %2 = call double @strtod(i8* nocapture nonnull %0, i8** null) #14, !dbg !1989
  ret double %2, !dbg !1990
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @makebonds(%struct.residue_t* %0) #0 !dbg !1991 {
  call void @llvm.dbg.value(metadata %struct.residue_t* %0, metadata !1995, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i64 0, metadata !1996, metadata !DIExpression()), !dbg !2003
  %2 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !2004
  %3 = load i32, i32* %2, align 8, !dbg !2004, !tbaa !785
  %4 = icmp sgt i32 %3, 0, !dbg !2007
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !2008

.lr.ph:                                           ; preds = %1, %.lr.ph
  %indvars.iv13 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !1996, metadata !DIExpression()), !dbg !2003
  %5 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2009
  %6 = load %struct.atom_t*, %struct.atom_t** %5, align 8, !dbg !2009, !tbaa !1227
  call void @llvm.dbg.value(metadata !DIArgList(%struct.atom_t* %6, i64 %indvars.iv13), metadata !1998, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 176, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2003
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %6, i64 %indvars.iv13, i32 3, !dbg !2011
  store i32 0, i32* %7, align 4, !dbg !2012, !tbaa !2013
  %indvars.iv.next = add nuw nsw i64 %indvars.iv13, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1996, metadata !DIExpression()), !dbg !2003
  %8 = load i32, i32* %2, align 8, !dbg !2004, !tbaa !785
  %9 = sext i32 %8 to i64, !dbg !2007
  %10 = icmp slt i64 %indvars.iv.next, %9, !dbg !2007
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !2008, !llvm.loop !2015

._crit_edge:                                      ; preds = %.lr.ph, %1
  call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i64 0, metadata !1996, metadata !DIExpression()), !dbg !2003
  %11 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !2017
  %12 = load i32, i32* %11, align 8, !dbg !2017, !tbaa !785
  %13 = icmp sgt i32 %12, 1, !dbg !2020
  br i1 %13, label %.lr.ph28, label %._crit_edge29, !dbg !2021

.lr.ph28:                                         ; preds = %._crit_edge, %._crit_edge23
  %14 = phi i64 [ %148, %._crit_edge23 ], [ 1, %._crit_edge ]
  %indvars.iv526 = phi i32 [ %indvars.iv.next6, %._crit_edge23 ], [ 1, %._crit_edge ]
  %indvars.iv1024 = phi i64 [ %indvars.iv.next11, %._crit_edge23 ], [ 0, %._crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1024, metadata !1996, metadata !DIExpression()), !dbg !2003
  %15 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2022
  %16 = load %struct.atom_t*, %struct.atom_t** %15, align 8, !dbg !2022, !tbaa !1227
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1024, !dbg !2024
  call void @llvm.dbg.value(metadata %struct.atom_t* %17, metadata !1998, metadata !DIExpression()), !dbg !2003
  %18 = call i16** @__ctype_b_loc() #18, !dbg !2025
  %19 = load i16*, i16** %18, align 8, !dbg !2025, !tbaa !410
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 0, i32 0, !dbg !2025
  %21 = load i8*, i8** %20, align 8, !dbg !2025, !tbaa !875
  %22 = load i8, i8* %21, align 1, !dbg !2025, !tbaa !404
  %23 = sext i8 %22 to i64, !dbg !2025
  %24 = getelementptr inbounds i16, i16* %19, i64 %23, !dbg !2025
  %25 = load i16, i16* %24, align 2, !dbg !2025, !tbaa !2027
  %26 = and i16 %25, 2048, !dbg !2025
  %.not = icmp eq i16 %26, 0, !dbg !2025
  br i1 %.not, label %41, label %27, !dbg !2029

27:                                               ; preds = %.lr.ph28
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 0, i32 0, !dbg !2030
  %29 = load i8*, i8** %28, align 8, !dbg !2030, !tbaa !875
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !2031
  %31 = load i8, i8* %30, align 1, !dbg !2031, !tbaa !404
  %32 = icmp eq i8 %31, 72, !dbg !2032
  br i1 %32, label %39, label %33, !dbg !2033

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 0, i32 0, !dbg !2034
  %35 = load i8*, i8** %34, align 8, !dbg !2034, !tbaa !875
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !2035
  %37 = load i8, i8* %36, align 1, !dbg !2035, !tbaa !404
  %38 = icmp eq i8 %37, 104, !dbg !2036
  br label %39, !dbg !2033

39:                                               ; preds = %33, %27
  %40 = phi i1 [ true, %27 ], [ %38, %33 ]
  call void @llvm.dbg.value(metadata i1 %40, metadata !2000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2003
  br label %53, !dbg !2037

41:                                               ; preds = %.lr.ph28
  %42 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 0, i32 0, !dbg !2038
  %43 = load i8*, i8** %42, align 8, !dbg !2038, !tbaa !875
  %44 = load i8, i8* %43, align 1, !dbg !2039, !tbaa !404
  %45 = icmp eq i8 %44, 72, !dbg !2040
  br i1 %45, label %51, label %46, !dbg !2041

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %17, i64 0, i32 0, !dbg !2042
  %48 = load i8*, i8** %47, align 8, !dbg !2042, !tbaa !875
  %49 = load i8, i8* %48, align 1, !dbg !2043, !tbaa !404
  %50 = icmp eq i8 %49, 104, !dbg !2044
  br label %51, !dbg !2041

51:                                               ; preds = %46, %41
  %52 = phi i1 [ true, %41 ], [ %50, %46 ]
  call void @llvm.dbg.value(metadata i1 %52, metadata !2000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2003
  br label %53

53:                                               ; preds = %51, %39
  %.03.in = phi i1 [ %40, %39 ], [ %52, %51 ]
  call void @llvm.dbg.value(metadata i1 %.03.in, metadata !2000, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2003
  call void @llvm.dbg.value(metadata i64 %indvars.iv1024, metadata !1997, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2003
  call void @llvm.dbg.value(metadata i64 %14, metadata !1997, metadata !DIExpression()), !dbg !2003
  %54 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 15, !dbg !2045
  %55 = load i32, i32* %54, align 8, !dbg !2045, !tbaa !785
  %56 = sext i32 %55 to i64, !dbg !2048
  %57 = icmp slt i64 %14, %56, !dbg !2048
  br i1 %57, label %.lr.ph22, label %._crit_edge23, !dbg !2049

.lr.ph22:                                         ; preds = %53, %144
  %indvars.iv714 = phi i64 [ %indvars.iv.next8, %144 ], [ %14, %53 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv714, metadata !1997, metadata !DIExpression()), !dbg !2003
  %58 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i64 0, i32 17, !dbg !2050
  %59 = load %struct.atom_t*, %struct.atom_t** %58, align 8, !dbg !2050, !tbaa !1227
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %59, i64 %indvars.iv714, !dbg !2052
  call void @llvm.dbg.value(metadata %struct.atom_t* %60, metadata !1999, metadata !DIExpression()), !dbg !2003
  %61 = call i16** @__ctype_b_loc() #18, !dbg !2053
  %62 = load i16*, i16** %61, align 8, !dbg !2053, !tbaa !410
  %63 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 0, i32 0, !dbg !2053
  %64 = load i8*, i8** %63, align 8, !dbg !2053, !tbaa !875
  %65 = load i8, i8* %64, align 1, !dbg !2053, !tbaa !404
  %66 = sext i8 %65 to i64, !dbg !2053
  %67 = getelementptr inbounds i16, i16* %62, i64 %66, !dbg !2053
  %68 = load i16, i16* %67, align 2, !dbg !2053, !tbaa !2027
  %69 = and i16 %68, 2048, !dbg !2053
  %.not30 = icmp eq i16 %69, 0, !dbg !2053
  br i1 %.not30, label %84, label %70, !dbg !2055

70:                                               ; preds = %.lr.ph22
  %71 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 0, i32 0, !dbg !2056
  %72 = load i8*, i8** %71, align 8, !dbg !2056, !tbaa !875
  %73 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !2057
  %74 = load i8, i8* %73, align 1, !dbg !2057, !tbaa !404
  %75 = icmp eq i8 %74, 72, !dbg !2058
  br i1 %75, label %82, label %76, !dbg !2059

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 0, i32 0, !dbg !2060
  %78 = load i8*, i8** %77, align 8, !dbg !2060, !tbaa !875
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !2061
  %80 = load i8, i8* %79, align 1, !dbg !2061, !tbaa !404
  %81 = icmp eq i8 %80, 104, !dbg !2062
  br label %82, !dbg !2059

82:                                               ; preds = %76, %70
  %83 = phi i1 [ true, %70 ], [ %81, %76 ]
  call void @llvm.dbg.value(metadata i1 %83, metadata !2001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2003
  br label %96, !dbg !2063

84:                                               ; preds = %.lr.ph22
  %85 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 0, i32 0, !dbg !2064
  %86 = load i8*, i8** %85, align 8, !dbg !2064, !tbaa !875
  %87 = load i8, i8* %86, align 1, !dbg !2065, !tbaa !404
  %88 = icmp eq i8 %87, 72, !dbg !2066
  br i1 %88, label %94, label %89, !dbg !2067

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %60, i64 0, i32 0, !dbg !2068
  %91 = load i8*, i8** %90, align 8, !dbg !2068, !tbaa !875
  %92 = load i8, i8* %91, align 1, !dbg !2069, !tbaa !404
  %93 = icmp eq i8 %92, 104, !dbg !2070
  br label %94, !dbg !2067

94:                                               ; preds = %89, %84
  %95 = phi i1 [ true, %84 ], [ %93, %89 ]
  call void @llvm.dbg.value(metadata i1 %95, metadata !2001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2003
  br label %96

96:                                               ; preds = %94, %82
  %.0.in = phi i1 [ %83, %82 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %.0.in, metadata !2001, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2003
  %97 = call double @dist(%struct.atom_t* %17, %struct.atom_t* %60), !dbg !2071
  call void @llvm.dbg.value(metadata double %97, metadata !2002, metadata !DIExpression()), !dbg !2003
  %or.cond = select i1 %.03.in, i1 true, i1 %.0.in, !dbg !2072
  br i1 %or.cond, label %98, label %121, !dbg !2072

98:                                               ; preds = %96
  %99 = fcmp ugt double %97, 1.200000e+00, !dbg !2074
  br i1 %99, label %144, label %100, !dbg !2077

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1024, i32 3, !dbg !2078
  %102 = load i32, i32* %101, align 4, !dbg !2078, !tbaa !2013
  %103 = icmp slt i32 %102, 8, !dbg !2081
  br i1 %103, label %104, label %144, !dbg !2082

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %59, i64 %indvars.iv714, i32 3, !dbg !2083
  %106 = load i32, i32* %105, align 4, !dbg !2083, !tbaa !2013
  %107 = icmp slt i32 %106, 8, !dbg !2084
  br i1 %107, label %108, label %144, !dbg !2085

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1024, i32 3, !dbg !2086
  %110 = load i32, i32* %109, align 4, !dbg !2088, !tbaa !2013
  %111 = add nsw i32 %110, 1, !dbg !2088
  store i32 %111, i32* %109, align 4, !dbg !2088, !tbaa !2013
  %112 = sext i32 %110 to i64, !dbg !2089
  %113 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1024, i32 4, i64 %112, !dbg !2089
  %114 = trunc i64 %indvars.iv714 to i32, !dbg !2090
  store i32 %114, i32* %113, align 4, !dbg !2090, !tbaa !535
  %115 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %59, i64 %indvars.iv714, i32 3, !dbg !2091
  %116 = load i32, i32* %115, align 4, !dbg !2092, !tbaa !2013
  %117 = add nsw i32 %116, 1, !dbg !2092
  store i32 %117, i32* %115, align 4, !dbg !2092, !tbaa !2013
  %118 = sext i32 %116 to i64, !dbg !2093
  %119 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %59, i64 %indvars.iv714, i32 4, i64 %118, !dbg !2093
  %120 = trunc i64 %indvars.iv1024 to i32, !dbg !2094
  store i32 %120, i32* %119, align 4, !dbg !2094, !tbaa !535
  br label %144, !dbg !2095

121:                                              ; preds = %96
  %122 = fcmp ugt double %97, 1.850000e+00, !dbg !2096
  br i1 %122, label %144, label %123, !dbg !2098

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1024, i32 3, !dbg !2099
  %125 = load i32, i32* %124, align 4, !dbg !2099, !tbaa !2013
  %126 = icmp slt i32 %125, 8, !dbg !2102
  br i1 %126, label %127, label %144, !dbg !2103

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %59, i64 %indvars.iv714, i32 3, !dbg !2104
  %129 = load i32, i32* %128, align 4, !dbg !2104, !tbaa !2013
  %130 = icmp slt i32 %129, 8, !dbg !2105
  br i1 %130, label %131, label %144, !dbg !2106

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1024, i32 3, !dbg !2107
  %133 = load i32, i32* %132, align 4, !dbg !2109, !tbaa !2013
  %134 = add nsw i32 %133, 1, !dbg !2109
  store i32 %134, i32* %132, align 4, !dbg !2109, !tbaa !2013
  %135 = sext i32 %133 to i64, !dbg !2110
  %136 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %16, i64 %indvars.iv1024, i32 4, i64 %135, !dbg !2110
  %137 = trunc i64 %indvars.iv714 to i32, !dbg !2111
  store i32 %137, i32* %136, align 4, !dbg !2111, !tbaa !535
  %138 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %59, i64 %indvars.iv714, i32 3, !dbg !2112
  %139 = load i32, i32* %138, align 4, !dbg !2113, !tbaa !2013
  %140 = add nsw i32 %139, 1, !dbg !2113
  store i32 %140, i32* %138, align 4, !dbg !2113, !tbaa !2013
  %141 = sext i32 %139 to i64, !dbg !2114
  %142 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %59, i64 %indvars.iv714, i32 4, i64 %141, !dbg !2114
  %143 = trunc i64 %indvars.iv1024 to i32, !dbg !2115
  store i32 %143, i32* %142, align 4, !dbg !2115, !tbaa !535
  br label %144, !dbg !2116

144:                                              ; preds = %100, %104, %108, %98, %123, %127, %131, %121
  %indvars.iv.next8 = add nsw i64 %indvars.iv714, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next8, metadata !1997, metadata !DIExpression()), !dbg !2003
  %145 = load i32, i32* %54, align 8, !dbg !2045, !tbaa !785
  %146 = sext i32 %145 to i64, !dbg !2048
  %147 = icmp slt i64 %indvars.iv.next8, %146, !dbg !2048
  br i1 %147, label %.lr.ph22, label %._crit_edge23, !dbg !2049, !llvm.loop !2118

._crit_edge23:                                    ; preds = %53, %144
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv1024, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11, metadata !1996, metadata !DIExpression()), !dbg !2003
  %indvars.iv.next6 = add nuw i32 %indvars.iv526, 1, !dbg !2121
  %148 = sext i32 %indvars.iv.next6 to i64, !dbg !2017
  %149 = load i32, i32* %11, align 8, !dbg !2017, !tbaa !785
  %150 = add nsw i32 %149, -1, !dbg !2122
  %151 = sext i32 %150 to i64, !dbg !2020
  %152 = icmp slt i64 %indvars.iv.next11, %151, !dbg !2020
  br i1 %152, label %.lr.ph28, label %._crit_edge29, !dbg !2021, !llvm.loop !2123

._crit_edge29:                                    ; preds = %._crit_edge23, %._crit_edge
  ret void, !dbg !2125
}

declare !dbg !329 dso_local i32 @addresidue(%struct.molecule_t*, i8*, %struct.residue_t*) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #6

declare !dbg !332 dso_local i32 @addstrand(%struct.molecule_t*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @isnewres(i8* %0, i8* %1, i32 %2, i32 %3) #0 !dbg !2126 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2130, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %1, metadata !2131, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %2, metadata !2132, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %3, metadata !2133, metadata !DIExpression()), !dbg !2134
  %5 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1) #13, !dbg !2135
  %6 = icmp ne i32 %5, 0, !dbg !2135
  %7 = icmp ne i32 %2, %3
  %spec.select = select i1 %6, i1 true, i1 %7, !dbg !2136
  %8 = zext i1 %spec.select to i32, !dbg !2136
  ret i32 %8, !dbg !2137
}

declare !dbg !335 dso_local void @NAB_initatom(%struct.atom_t*, i32) #4

declare !dbg !339 dso_local void @NAB_initres(%struct.residue_t*, i32) #4

; Function Attrs: nounwind
declare dso_local double @strtod(i8*, i8**) #6

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #9

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #6

; Function Attrs: nounwind uwtable
define internal %struct.cid_t* @initcid(i32 %0, i32 %1, %struct.molecule_t* %2) #0 !dbg !2138 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2142, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 %1, metadata !2143, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata %struct.molecule_t* %2, metadata !2144, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !2145, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 0, metadata !2148, metadata !DIExpression()), !dbg !2150
  %.not = icmp eq i32 %0, 0, !dbg !2151
  br i1 %.not, label %4, label %70, !dbg !2153

4:                                                ; preds = %3
  %5 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 16) #14, !dbg !2154
  %6 = bitcast i8* %5 to %struct.cid_t*, !dbg !2155
  call void @llvm.dbg.value(metadata %struct.cid_t* %6, metadata !2145, metadata !DIExpression()), !dbg !2150
  %7 = icmp eq i8* %5, null, !dbg !2156
  br i1 %7, label %8, label %11, !dbg !2158

8:                                                ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2159, !tbaa !410
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %9) #16, !dbg !2161
  call void @llvm.dbg.value(metadata i32 1, metadata !2148, metadata !DIExpression()), !dbg !2150
  br label %.loopexit, !dbg !2162

11:                                               ; preds = %4
  %12 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 128) #14, !dbg !2163
  %13 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 2, !dbg !2164
  store i8* %12, i8** %13, align 8, !dbg !2165, !tbaa !2166
  %14 = icmp eq i8* %12, null, !dbg !2168
  br i1 %14, label %15, label %18, !dbg !2170

15:                                               ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2171, !tbaa !410
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %16) #16, !dbg !2173
  call void @llvm.dbg.value(metadata i32 1, metadata !2148, metadata !DIExpression()), !dbg !2150
  br label %.loopexit, !dbg !2174

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 0, !dbg !2175
  store i32 65, i32* %19, align 8, !dbg !2176, !tbaa !2177
  %20 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 1, !dbg !2178
  store i32 90, i32* %20, align 4, !dbg !2179, !tbaa !2180
  call void @llvm.dbg.value(metadata i32 65, metadata !2146, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 65, metadata !2146, metadata !DIExpression()), !dbg !2150
  %21 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 1, !dbg !2181
  br i1 true, label %.lr.ph, label %._crit_edge, !dbg !2184

.lr.ph:                                           ; preds = %18, %.lr.ph
  %indvars.iv6 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 65, %18 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2146, metadata !DIExpression()), !dbg !2150
  %22 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 2, !dbg !2185
  %23 = load i8*, i8** %22, align 8, !dbg !2185, !tbaa !2166
  %24 = getelementptr inbounds i8, i8* %23, i64 %indvars.iv6, !dbg !2186
  store i8 0, i8* %24, align 1, !dbg !2187, !tbaa !404
  %indvars.iv.next = add i64 %indvars.iv6, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2146, metadata !DIExpression()), !dbg !2150
  %25 = load i32, i32* %21, align 4, !dbg !2181, !tbaa !2180
  %26 = sext i32 %25 to i64, !dbg !2189
  %.not20 = icmp sgt i64 %indvars.iv.next, %26, !dbg !2189
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !dbg !2184, !llvm.loop !2190

._crit_edge:                                      ; preds = %.lr.ph, %18
  %.not13 = icmp eq i32 %1, 0, !dbg !2192
  br i1 %.not13, label %.loopexit, label %27, !dbg !2194

27:                                               ; preds = %._crit_edge
  %28 = icmp eq %struct.molecule_t* %2, null, !dbg !2195
  br i1 %28, label %29, label %32, !dbg !2198

29:                                               ; preds = %27
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2199, !tbaa !410
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %30) #16, !dbg !2201
  call void @llvm.dbg.value(metadata i32 1, metadata !2148, metadata !DIExpression()), !dbg !2150
  br label %.loopexit, !dbg !2202

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i64 0, i32 2, !dbg !2203
  %34 = load %struct.strand_t*, %struct.strand_t** %33, align 8, !dbg !2203, !tbaa !808
  call void @llvm.dbg.value(metadata %struct.strand_t* %34, metadata !2147, metadata !DIExpression()), !dbg !2150
  %.not15 = icmp eq %struct.strand_t* %34, null, !dbg !2205
  br i1 %.not15, label %._crit_edge10, label %.lr.ph9, !dbg !2205

.lr.ph9:                                          ; preds = %32, %50
  %.027 = phi %struct.strand_t* [ %52, %50 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata %struct.strand_t* %.027, metadata !2147, metadata !DIExpression()), !dbg !2150
  %35 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.027, i64 0, i32 0, !dbg !2206
  %36 = load i8*, i8** %35, align 8, !dbg !2206, !tbaa !815
  %37 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %36) #13, !dbg !2210
  %38 = icmp eq i64 %37, 1, !dbg !2211
  br i1 %38, label %39, label %50, !dbg !2212

39:                                               ; preds = %.lr.ph9
  %40 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.027, i64 0, i32 0, !dbg !2213
  %41 = load i8*, i8** %40, align 8, !dbg !2213, !tbaa !815
  %42 = load i8, i8* %41, align 1, !dbg !2215, !tbaa !404
  call void @llvm.dbg.value(metadata i8 %42, metadata !2146, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2150
  %43 = add i8 %42, -65, !dbg !2216
  %44 = icmp ult i8 %43, 26, !dbg !2216
  br i1 %44, label %45, label %50, !dbg !2216

45:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i8 %42, metadata !2146, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2150
  %46 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 2, !dbg !2218
  %47 = load i8*, i8** %46, align 8, !dbg !2218, !tbaa !2166
  %48 = sext i8 %42 to i64, !dbg !2219
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !2219
  store i8 1, i8* %49, align 1, !dbg !2220, !tbaa !404
  br label %50, !dbg !2219

50:                                               ; preds = %.lr.ph9, %45, %39
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.027, i64 0, i32 4, !dbg !2221
  %52 = load %struct.strand_t*, %struct.strand_t** %51, align 8, !dbg !2221, !tbaa !821
  call void @llvm.dbg.value(metadata %struct.strand_t* %52, metadata !2147, metadata !DIExpression()), !dbg !2150
  %.not19 = icmp eq %struct.strand_t* %52, null, !dbg !2205
  br i1 %.not19, label %._crit_edge10, label %.lr.ph9, !dbg !2205, !llvm.loop !2222

._crit_edge10:                                    ; preds = %50, %32
  %53 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 0, !dbg !2224
  %54 = load i32, i32* %53, align 8, !dbg !2224, !tbaa !2177
  %55 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 1, !dbg !2227
  %56 = load i32, i32* %55, align 4, !dbg !2227, !tbaa !2180
  %.not16 = icmp sgt i32 %54, %56, !dbg !2228
  br i1 %.not16, label %.loopexit, label %.lr.ph12, !dbg !2229

.lr.ph12:                                         ; preds = %._crit_edge10, %64
  %57 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 2, !dbg !2230
  %58 = load i8*, i8** %57, align 8, !dbg !2230, !tbaa !2166
  %59 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 0, !dbg !2233
  %60 = load i32, i32* %59, align 8, !dbg !2233, !tbaa !2177
  %61 = sext i32 %60 to i64, !dbg !2234
  %62 = getelementptr inbounds i8, i8* %58, i64 %61, !dbg !2234
  %63 = load i8, i8* %62, align 1, !dbg !2234, !tbaa !404
  %.not17 = icmp eq i8 %63, 0, !dbg !2234
  br i1 %.not17, label %.loopexit, label %64, !dbg !2235

64:                                               ; preds = %.lr.ph12
  %65 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %6, i64 0, i32 0, !dbg !2236
  %66 = load i32, i32* %65, align 8, !dbg !2237, !tbaa !2177
  %67 = add nsw i32 %66, 1, !dbg !2237
  store i32 %67, i32* %65, align 8, !dbg !2237, !tbaa !2177
  %68 = load i32, i32* %55, align 4, !dbg !2227, !tbaa !2180
  %.not18.not = icmp slt i32 %66, %68, !dbg !2228
  br i1 %.not18.not, label %.lr.ph12, label %.loopexit, !dbg !2229, !llvm.loop !2238

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge10, %64, %.lr.ph12, %29, %15, %8
  %.not14 = phi i1 [ true, %._crit_edge ], [ true, %._crit_edge10 ], [ true, %64 ], [ true, %.lr.ph12 ], [ false, %29 ], [ false, %15 ], [ false, %8 ], !dbg !2150
  call void @llvm.dbg.value(metadata i32 undef, metadata !2148, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.label(metadata !2149), !dbg !2240
  br i1 %.not14, label %70, label %69, !dbg !2241

69:                                               ; preds = %.loopexit
  call void @freecid(%struct.cid_t* %6), !dbg !2242
  call void @llvm.dbg.value(metadata %struct.cid_t* null, metadata !2145, metadata !DIExpression()), !dbg !2150
  br label %70, !dbg !2245

70:                                               ; preds = %.loopexit, %69, %3
  %.0 = phi %struct.cid_t* [ null, %3 ], [ null, %69 ], [ %6, %.loopexit ], !dbg !2150
  ret %struct.cid_t* %.0, !dbg !2246
}

; Function Attrs: nounwind uwtable
define internal i32 @nextcid(%struct.cid_t* %0, i32 %1, i32 %2, %struct.strand_t* %3) #0 !dbg !2247 {
  call void @llvm.dbg.value(metadata %struct.cid_t* %0, metadata !2251, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %1, metadata !2252, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %2, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata %struct.strand_t* %3, metadata !2254, metadata !DIExpression()), !dbg !2256
  %.not = icmp eq i32 %1, 0, !dbg !2257
  br i1 %.not, label %5, label %.loopexit, !dbg !2259

5:                                                ; preds = %4
  %6 = icmp eq %struct.cid_t* %0, null, !dbg !2260
  br i1 %6, label %7, label %10, !dbg !2262

7:                                                ; preds = %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2263, !tbaa !410
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %8) #16, !dbg !2265
  br label %.loopexit, !dbg !2266

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 0, !dbg !2267
  %12 = load i32, i32* %11, align 8, !dbg !2267, !tbaa !2177
  %13 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 1, !dbg !2269
  %14 = load i32, i32* %13, align 4, !dbg !2269, !tbaa !2180
  %15 = icmp sgt i32 %12, %14, !dbg !2270
  br i1 %15, label %.loopexit, label %16, !dbg !2271

16:                                               ; preds = %10
  %.not1 = icmp eq i32 %2, 0, !dbg !2272
  br i1 %.not1, label %53, label %17, !dbg !2274

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 0, !dbg !2275
  %19 = load i8*, i8** %18, align 8, !dbg !2275, !tbaa !815
  %20 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %19) #13, !dbg !2278
  %21 = icmp eq i64 %20, 1, !dbg !2279
  br i1 %21, label %22, label %29, !dbg !2280

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i64 0, i32 0, !dbg !2281
  %24 = load i8*, i8** %23, align 8, !dbg !2281, !tbaa !815
  %25 = load i8, i8* %24, align 1, !dbg !2283, !tbaa !404
  %26 = sext i8 %25 to i32, !dbg !2283
  call void @llvm.dbg.value(metadata i32 %26, metadata !2255, metadata !DIExpression()), !dbg !2256
  %27 = add i8 %25, -65, !dbg !2284
  %28 = icmp ult i8 %27, 26, !dbg !2284
  br i1 %28, label %.loopexit, label %29, !dbg !2284

29:                                               ; preds = %22, %17
  %30 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 0, !dbg !2286
  %31 = load i32, i32* %30, align 8, !dbg !2286, !tbaa !2177
  call void @llvm.dbg.value(metadata i32 %31, metadata !2255, metadata !DIExpression()), !dbg !2256
  %32 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 2, !dbg !2287
  %33 = load i8*, i8** %32, align 8, !dbg !2287, !tbaa !2166
  %34 = sext i32 %31 to i64, !dbg !2288
  %35 = getelementptr inbounds i8, i8* %33, i64 %34, !dbg !2288
  store i8 1, i8* %35, align 1, !dbg !2289, !tbaa !404
  %36 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 0, !dbg !2290
  %37 = load i32, i32* %36, align 8, !dbg !2292, !tbaa !2177
  %38 = add nsw i32 %37, 1, !dbg !2292
  store i32 %38, i32* %36, align 8, !dbg !2292, !tbaa !2177
  %39 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 1, !dbg !2293
  %40 = load i32, i32* %39, align 4, !dbg !2293, !tbaa !2180
  %.not2.not = icmp slt i32 %37, %40, !dbg !2295
  br i1 %.not2.not, label %.lr.ph, label %.loopexit, !dbg !2296

.lr.ph:                                           ; preds = %29, %48
  %41 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 2, !dbg !2297
  %42 = load i8*, i8** %41, align 8, !dbg !2297, !tbaa !2166
  %43 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 0, !dbg !2300
  %44 = load i32, i32* %43, align 8, !dbg !2300, !tbaa !2177
  %45 = sext i32 %44 to i64, !dbg !2301
  %46 = getelementptr inbounds i8, i8* %42, i64 %45, !dbg !2301
  %47 = load i8, i8* %46, align 1, !dbg !2301, !tbaa !404
  %.not3 = icmp eq i8 %47, 0, !dbg !2301
  br i1 %.not3, label %.loopexit, label %48, !dbg !2302

48:                                               ; preds = %.lr.ph
  %49 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 0, !dbg !2303
  %50 = load i32, i32* %49, align 8, !dbg !2304, !tbaa !2177
  %51 = add nsw i32 %50, 1, !dbg !2304
  store i32 %51, i32* %49, align 8, !dbg !2304, !tbaa !2177
  %52 = load i32, i32* %39, align 4, !dbg !2293, !tbaa !2180
  %.not4.not = icmp slt i32 %50, %52, !dbg !2295
  br i1 %.not4.not, label %.lr.ph, label %.loopexit, !dbg !2296, !llvm.loop !2305

53:                                               ; preds = %16
  %54 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 0, !dbg !2307
  %55 = load i32, i32* %54, align 8, !dbg !2307, !tbaa !2177
  call void @llvm.dbg.value(metadata i32 %55, metadata !2255, metadata !DIExpression()), !dbg !2256
  %56 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 0, !dbg !2309
  %57 = add nsw i32 %55, 1, !dbg !2310
  store i32 %57, i32* %56, align 8, !dbg !2310, !tbaa !2177
  br label %.loopexit, !dbg !2311

.loopexit:                                        ; preds = %.lr.ph, %48, %29, %22, %10, %4, %53, %7
  %.0 = phi i32 [ 32, %7 ], [ %55, %53 ], [ 32, %4 ], [ 32, %10 ], [ %26, %22 ], [ %31, %29 ], [ %31, %48 ], [ %31, %.lr.ph ], !dbg !2256
  ret i32 %.0, !dbg !2312
}

; Function Attrs: nounwind uwtable
define internal void @mk_brook_rname(i8* %0, %struct.residue_t* %1) #0 !dbg !2313 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2317, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata %struct.residue_t* %1, metadata !2318, metadata !DIExpression()), !dbg !2319
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1, i64 0, i32 4, !dbg !2320
  %4 = load i8*, i8** %3, align 8, !dbg !2320, !tbaa !774
  %5 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %4) #14, !dbg !2321
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #13, !dbg !2322
  %.not = icmp eq i32 %6, 0, !dbg !2322
  br i1 %.not, label %7, label %9, !dbg !2324

7:                                                ; preds = %2
  %8 = bitcast i8* %0 to i32*, !dbg !2325
  store i32 4661280, i32* %8, align 1, !dbg !2325
  br label %9, !dbg !2325

9:                                                ; preds = %7, %2
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #13, !dbg !2326
  %.not1 = icmp eq i32 %10, 0, !dbg !2326
  br i1 %.not1, label %11, label %13, !dbg !2328

11:                                               ; preds = %9
  %12 = bitcast i8* %0 to i32*, !dbg !2329
  store i32 4268064, i32* %12, align 1, !dbg !2329
  br label %13, !dbg !2329

13:                                               ; preds = %11, %9
  %14 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #13, !dbg !2330
  %.not2 = icmp eq i32 %14, 0, !dbg !2330
  br i1 %.not2, label %15, label %17, !dbg !2332

15:                                               ; preds = %13
  %16 = bitcast i8* %0 to i32*, !dbg !2333
  store i32 5513248, i32* %16, align 1, !dbg !2333
  br label %17, !dbg !2333

17:                                               ; preds = %15, %13
  %18 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #13, !dbg !2334
  %.not3 = icmp eq i32 %18, 0, !dbg !2334
  br i1 %.not3, label %19, label %21, !dbg !2336

19:                                               ; preds = %17
  %20 = bitcast i8* %0 to i32*, !dbg !2337
  store i32 4399136, i32* %20, align 1, !dbg !2337
  br label %21, !dbg !2337

21:                                               ; preds = %19, %17
  %22 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #13, !dbg !2338
  %.not4 = icmp eq i32 %22, 0, !dbg !2338
  br i1 %.not4, label %23, label %25, !dbg !2340

23:                                               ; preds = %21
  %24 = bitcast i8* %0 to i32*, !dbg !2341
  store i32 5578784, i32* %24, align 1, !dbg !2341
  br label %25, !dbg !2341

25:                                               ; preds = %23, %21
  %26 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #13, !dbg !2342
  %.not5 = icmp eq i32 %26, 0, !dbg !2342
  br i1 %.not5, label %27, label %29, !dbg !2344

27:                                               ; preds = %25
  %28 = bitcast i8* %0 to i32*, !dbg !2345
  store i32 4661280, i32* %28, align 1, !dbg !2345
  br label %29, !dbg !2345

29:                                               ; preds = %27, %25
  %30 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #13, !dbg !2346
  %.not6 = icmp eq i32 %30, 0, !dbg !2346
  br i1 %.not6, label %31, label %33, !dbg !2348

31:                                               ; preds = %29
  %32 = bitcast i8* %0 to i32*, !dbg !2349
  store i32 4268064, i32* %32, align 1, !dbg !2349
  br label %33, !dbg !2349

33:                                               ; preds = %31, %29
  %34 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #13, !dbg !2350
  %.not7 = icmp eq i32 %34, 0, !dbg !2350
  br i1 %.not7, label %35, label %37, !dbg !2352

35:                                               ; preds = %33
  %36 = bitcast i8* %0 to i32*, !dbg !2353
  store i32 5513248, i32* %36, align 1, !dbg !2353
  br label %37, !dbg !2353

37:                                               ; preds = %35, %33
  %38 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #13, !dbg !2354
  %.not8 = icmp eq i32 %38, 0, !dbg !2354
  br i1 %.not8, label %39, label %41, !dbg !2356

39:                                               ; preds = %37
  %40 = bitcast i8* %0 to i32*, !dbg !2357
  store i32 4399136, i32* %40, align 1, !dbg !2357
  br label %41, !dbg !2357

41:                                               ; preds = %39, %37
  %42 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #13, !dbg !2358
  %.not9 = icmp eq i32 %42, 0, !dbg !2358
  br i1 %.not9, label %43, label %45, !dbg !2360

43:                                               ; preds = %41
  %44 = bitcast i8* %0 to i32*, !dbg !2361
  store i32 4661280, i32* %44, align 1, !dbg !2361
  br label %45, !dbg !2361

45:                                               ; preds = %43, %41
  %46 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #13, !dbg !2362
  %.not10 = icmp eq i32 %46, 0, !dbg !2362
  br i1 %.not10, label %47, label %49, !dbg !2364

47:                                               ; preds = %45
  %48 = bitcast i8* %0 to i32*, !dbg !2365
  store i32 4268064, i32* %48, align 1, !dbg !2365
  br label %49, !dbg !2365

49:                                               ; preds = %47, %45
  %50 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #13, !dbg !2366
  %.not11 = icmp eq i32 %50, 0, !dbg !2366
  br i1 %.not11, label %51, label %53, !dbg !2368

51:                                               ; preds = %49
  %52 = bitcast i8* %0 to i32*, !dbg !2369
  store i32 5578784, i32* %52, align 1, !dbg !2369
  br label %53, !dbg !2369

53:                                               ; preds = %51, %49
  %54 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #13, !dbg !2370
  %.not12 = icmp eq i32 %54, 0, !dbg !2370
  br i1 %.not12, label %55, label %57, !dbg !2372

55:                                               ; preds = %53
  %56 = bitcast i8* %0 to i32*, !dbg !2373
  store i32 4399136, i32* %56, align 1, !dbg !2373
  br label %57, !dbg !2373

57:                                               ; preds = %55, %53
  %58 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #13, !dbg !2374
  %.not13 = icmp eq i32 %58, 0, !dbg !2374
  br i1 %.not13, label %59, label %61, !dbg !2376

59:                                               ; preds = %57
  %60 = bitcast i8* %0 to i32*, !dbg !2377
  store i32 4661280, i32* %60, align 1, !dbg !2377
  br label %61, !dbg !2377

61:                                               ; preds = %59, %57
  %62 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #13, !dbg !2378
  %.not14 = icmp eq i32 %62, 0, !dbg !2378
  br i1 %.not14, label %63, label %65, !dbg !2380

63:                                               ; preds = %61
  %64 = bitcast i8* %0 to i32*, !dbg !2381
  store i32 4268064, i32* %64, align 1, !dbg !2381
  br label %65, !dbg !2381

65:                                               ; preds = %63, %61
  %66 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #13, !dbg !2382
  %.not15 = icmp eq i32 %66, 0, !dbg !2382
  br i1 %.not15, label %67, label %69, !dbg !2384

67:                                               ; preds = %65
  %68 = bitcast i8* %0 to i32*, !dbg !2385
  store i32 5513248, i32* %68, align 1, !dbg !2385
  br label %69, !dbg !2385

69:                                               ; preds = %67, %65
  %70 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #13, !dbg !2386
  %.not16 = icmp eq i32 %70, 0, !dbg !2386
  br i1 %.not16, label %71, label %73, !dbg !2388

71:                                               ; preds = %69
  %72 = bitcast i8* %0 to i32*, !dbg !2389
  store i32 4399136, i32* %72, align 1, !dbg !2389
  br label %73, !dbg !2389

73:                                               ; preds = %71, %69
  %74 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #13, !dbg !2390
  %.not17 = icmp eq i32 %74, 0, !dbg !2390
  br i1 %.not17, label %75, label %77, !dbg !2392

75:                                               ; preds = %73
  %76 = bitcast i8* %0 to i32*, !dbg !2393
  store i32 4661280, i32* %76, align 1, !dbg !2393
  br label %77, !dbg !2393

77:                                               ; preds = %75, %73
  %78 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #13, !dbg !2394
  %.not18 = icmp eq i32 %78, 0, !dbg !2394
  br i1 %.not18, label %79, label %81, !dbg !2396

79:                                               ; preds = %77
  %80 = bitcast i8* %0 to i32*, !dbg !2397
  store i32 4268064, i32* %80, align 1, !dbg !2397
  br label %81, !dbg !2397

81:                                               ; preds = %79, %77
  %82 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #13, !dbg !2398
  %.not19 = icmp eq i32 %82, 0, !dbg !2398
  br i1 %.not19, label %83, label %85, !dbg !2400

83:                                               ; preds = %81
  %84 = bitcast i8* %0 to i32*, !dbg !2401
  store i32 5578784, i32* %84, align 1, !dbg !2401
  br label %85, !dbg !2401

85:                                               ; preds = %83, %81
  %86 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #13, !dbg !2402
  %.not20 = icmp eq i32 %86, 0, !dbg !2402
  br i1 %.not20, label %87, label %89, !dbg !2404

87:                                               ; preds = %85
  %88 = bitcast i8* %0 to i32*, !dbg !2405
  store i32 4399136, i32* %88, align 1, !dbg !2405
  br label %89, !dbg !2405

89:                                               ; preds = %87, %85
  %90 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #13, !dbg !2406
  %.not21 = icmp eq i32 %90, 0, !dbg !2406
  br i1 %.not21, label %91, label %93, !dbg !2408

91:                                               ; preds = %89
  %92 = bitcast i8* %0 to i32*, !dbg !2409
  store i32 4661280, i32* %92, align 1, !dbg !2409
  br label %93, !dbg !2409

93:                                               ; preds = %91, %89
  %94 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #13, !dbg !2410
  %.not22 = icmp eq i32 %94, 0, !dbg !2410
  br i1 %.not22, label %95, label %97, !dbg !2412

95:                                               ; preds = %93
  %96 = bitcast i8* %0 to i32*, !dbg !2413
  store i32 4268064, i32* %96, align 1, !dbg !2413
  br label %97, !dbg !2413

97:                                               ; preds = %95, %93
  %98 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #13, !dbg !2414
  %.not23 = icmp eq i32 %98, 0, !dbg !2414
  br i1 %.not23, label %99, label %101, !dbg !2416

99:                                               ; preds = %97
  %100 = bitcast i8* %0 to i32*, !dbg !2417
  store i32 5513248, i32* %100, align 1, !dbg !2417
  br label %101, !dbg !2417

101:                                              ; preds = %99, %97
  %102 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #13, !dbg !2418
  %.not24 = icmp eq i32 %102, 0, !dbg !2418
  br i1 %.not24, label %103, label %105, !dbg !2420

103:                                              ; preds = %101
  %104 = bitcast i8* %0 to i32*, !dbg !2421
  store i32 4399136, i32* %104, align 1, !dbg !2421
  br label %105, !dbg !2421

105:                                              ; preds = %103, %101
  %106 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #13, !dbg !2422
  %.not25 = icmp eq i32 %106, 0, !dbg !2422
  br i1 %.not25, label %107, label %109, !dbg !2424

107:                                              ; preds = %105
  %108 = bitcast i8* %0 to i32*, !dbg !2425
  store i32 4661280, i32* %108, align 1, !dbg !2425
  br label %109, !dbg !2425

109:                                              ; preds = %107, %105
  %110 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #13, !dbg !2426
  %.not26 = icmp eq i32 %110, 0, !dbg !2426
  br i1 %.not26, label %111, label %113, !dbg !2428

111:                                              ; preds = %109
  %112 = bitcast i8* %0 to i32*, !dbg !2429
  store i32 4268064, i32* %112, align 1, !dbg !2429
  br label %113, !dbg !2429

113:                                              ; preds = %111, %109
  %114 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #13, !dbg !2430
  %.not27 = icmp eq i32 %114, 0, !dbg !2430
  br i1 %.not27, label %115, label %117, !dbg !2432

115:                                              ; preds = %113
  %116 = bitcast i8* %0 to i32*, !dbg !2433
  store i32 5578784, i32* %116, align 1, !dbg !2433
  br label %117, !dbg !2433

117:                                              ; preds = %115, %113
  %118 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #13, !dbg !2434
  %.not28 = icmp eq i32 %118, 0, !dbg !2434
  br i1 %.not28, label %119, label %121, !dbg !2436

119:                                              ; preds = %117
  %120 = bitcast i8* %0 to i32*, !dbg !2437
  store i32 4399136, i32* %120, align 1, !dbg !2437
  br label %121, !dbg !2437

121:                                              ; preds = %119, %117
  %122 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #13, !dbg !2438
  %.not29 = icmp eq i32 %122, 0, !dbg !2438
  br i1 %.not29, label %123, label %125, !dbg !2440

123:                                              ; preds = %121
  %124 = bitcast i8* %0 to i32*, !dbg !2441
  store i32 5458248, i32* %124, align 1, !dbg !2441
  br label %125, !dbg !2441

125:                                              ; preds = %123, %121
  %126 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #13, !dbg !2442
  %.not30 = icmp eq i32 %126, 0, !dbg !2442
  br i1 %.not30, label %127, label %129, !dbg !2444

127:                                              ; preds = %125
  %128 = bitcast i8* %0 to i32*, !dbg !2445
  store i32 5458248, i32* %128, align 1, !dbg !2445
  br label %129, !dbg !2445

129:                                              ; preds = %127, %125
  %130 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #13, !dbg !2446
  %.not31 = icmp eq i32 %130, 0, !dbg !2446
  br i1 %.not31, label %131, label %133, !dbg !2448

131:                                              ; preds = %129
  %132 = bitcast i8* %0 to i32*, !dbg !2449
  store i32 5458248, i32* %132, align 1, !dbg !2449
  br label %133, !dbg !2449

133:                                              ; preds = %131, %129
  %134 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #13, !dbg !2450
  %.not32 = icmp eq i32 %134, 0, !dbg !2450
  br i1 %.not32, label %135, label %137, !dbg !2452

135:                                              ; preds = %133
  %136 = bitcast i8* %0 to i32*, !dbg !2453
  store i32 5462339, i32* %136, align 1, !dbg !2453
  br label %137, !dbg !2453

137:                                              ; preds = %135, %133
  %138 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #13, !dbg !2454
  %.not33 = icmp eq i32 %138, 0, !dbg !2454
  br i1 %.not33, label %139, label %141, !dbg !2456

139:                                              ; preds = %137
  %140 = bitcast i8* %0 to i32*, !dbg !2457
  store i32 5264193, i32* %140, align 1, !dbg !2457
  br label %141, !dbg !2457

141:                                              ; preds = %139, %137
  %142 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #13, !dbg !2458
  %.not34 = icmp eq i32 %142, 0, !dbg !2458
  br i1 %.not34, label %143, label %145, !dbg !2460

143:                                              ; preds = %141
  %144 = bitcast i8* %0 to i32*, !dbg !2461
  store i32 5590087, i32* %144, align 1, !dbg !2461
  br label %145, !dbg !2461

145:                                              ; preds = %143, %141
  ret void, !dbg !2462
}

; Function Attrs: nounwind uwtable
define internal void @mk_wwpdb_rname(i8* %0, %struct.residue_t* %1) #0 !dbg !2463 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata %struct.residue_t* %1, metadata !2466, metadata !DIExpression()), !dbg !2467
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1, i64 0, i32 4, !dbg !2468
  %4 = load i8*, i8** %3, align 8, !dbg !2468, !tbaa !774
  %5 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %4) #14, !dbg !2469
  %6 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #13, !dbg !2470
  %.not = icmp eq i32 %6, 0, !dbg !2470
  br i1 %.not, label %7, label %9, !dbg !2472

7:                                                ; preds = %2
  %8 = bitcast i8* %0 to i32*, !dbg !2473
  store i32 4661280, i32* %8, align 1, !dbg !2473
  br label %9, !dbg !2473

9:                                                ; preds = %7, %2
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #13, !dbg !2474
  %.not1 = icmp eq i32 %10, 0, !dbg !2474
  br i1 %.not1, label %11, label %13, !dbg !2476

11:                                               ; preds = %9
  %12 = bitcast i8* %0 to i32*, !dbg !2477
  store i32 4268064, i32* %12, align 1, !dbg !2477
  br label %13, !dbg !2477

13:                                               ; preds = %11, %9
  %14 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #13, !dbg !2478
  %.not2 = icmp eq i32 %14, 0, !dbg !2478
  br i1 %.not2, label %15, label %17, !dbg !2480

15:                                               ; preds = %13
  %16 = bitcast i8* %0 to i32*, !dbg !2481
  store i32 5513248, i32* %16, align 1, !dbg !2481
  br label %17, !dbg !2481

17:                                               ; preds = %15, %13
  %18 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #13, !dbg !2482
  %.not3 = icmp eq i32 %18, 0, !dbg !2482
  br i1 %.not3, label %19, label %21, !dbg !2484

19:                                               ; preds = %17
  %20 = bitcast i8* %0 to i32*, !dbg !2485
  store i32 4399136, i32* %20, align 1, !dbg !2485
  br label %21, !dbg !2485

21:                                               ; preds = %19, %17
  %22 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #13, !dbg !2486
  %.not4 = icmp eq i32 %22, 0, !dbg !2486
  br i1 %.not4, label %23, label %25, !dbg !2488

23:                                               ; preds = %21
  %24 = bitcast i8* %0 to i32*, !dbg !2489
  store i32 5578784, i32* %24, align 1, !dbg !2489
  br label %25, !dbg !2489

25:                                               ; preds = %23, %21
  %26 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #13, !dbg !2490
  %.not5 = icmp eq i32 %26, 0, !dbg !2490
  br i1 %.not5, label %27, label %29, !dbg !2492

27:                                               ; preds = %25
  %28 = bitcast i8* %0 to i32*, !dbg !2493
  store i32 4670496, i32* %28, align 1, !dbg !2493
  br label %29, !dbg !2493

29:                                               ; preds = %27, %25
  %30 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #13, !dbg !2494
  %.not6 = icmp eq i32 %30, 0, !dbg !2494
  br i1 %.not6, label %31, label %33, !dbg !2496

31:                                               ; preds = %29
  %32 = bitcast i8* %0 to i32*, !dbg !2497
  store i32 4277280, i32* %32, align 1, !dbg !2497
  br label %33, !dbg !2497

33:                                               ; preds = %31, %29
  %34 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #13, !dbg !2498
  %.not7 = icmp eq i32 %34, 0, !dbg !2498
  br i1 %.not7, label %35, label %37, !dbg !2500

35:                                               ; preds = %33
  %36 = bitcast i8* %0 to i32*, !dbg !2501
  store i32 5522464, i32* %36, align 1, !dbg !2501
  br label %37, !dbg !2501

37:                                               ; preds = %35, %33
  %38 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #13, !dbg !2502
  %.not8 = icmp eq i32 %38, 0, !dbg !2502
  br i1 %.not8, label %39, label %41, !dbg !2504

39:                                               ; preds = %37
  %40 = bitcast i8* %0 to i32*, !dbg !2505
  store i32 4408352, i32* %40, align 1, !dbg !2505
  br label %41, !dbg !2505

41:                                               ; preds = %39, %37
  %42 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #13, !dbg !2506
  %.not9 = icmp eq i32 %42, 0, !dbg !2506
  br i1 %.not9, label %43, label %45, !dbg !2508

43:                                               ; preds = %41
  %44 = bitcast i8* %0 to i32*, !dbg !2509
  store i32 4674080, i32* %44, align 1, !dbg !2509
  br label %45, !dbg !2509

45:                                               ; preds = %43, %41
  %46 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #13, !dbg !2510
  %.not10 = icmp eq i32 %46, 0, !dbg !2510
  br i1 %.not10, label %47, label %49, !dbg !2512

47:                                               ; preds = %45
  %48 = bitcast i8* %0 to i32*, !dbg !2513
  store i32 4280864, i32* %48, align 1, !dbg !2513
  br label %49, !dbg !2513

49:                                               ; preds = %47, %45
  %50 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #13, !dbg !2514
  %.not11 = icmp eq i32 %50, 0, !dbg !2514
  br i1 %.not11, label %51, label %53, !dbg !2516

51:                                               ; preds = %49
  %52 = bitcast i8* %0 to i32*, !dbg !2517
  store i32 5591584, i32* %52, align 1, !dbg !2517
  br label %53, !dbg !2517

53:                                               ; preds = %51, %49
  %54 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #13, !dbg !2518
  %.not12 = icmp eq i32 %54, 0, !dbg !2518
  br i1 %.not12, label %55, label %57, !dbg !2520

55:                                               ; preds = %53
  %56 = bitcast i8* %0 to i32*, !dbg !2521
  store i32 4411936, i32* %56, align 1, !dbg !2521
  br label %57, !dbg !2521

57:                                               ; preds = %55, %53
  %58 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #13, !dbg !2522
  %.not13 = icmp eq i32 %58, 0, !dbg !2522
  br i1 %.not13, label %59, label %61, !dbg !2524

59:                                               ; preds = %57
  %60 = bitcast i8* %0 to i32*, !dbg !2525
  store i32 4670496, i32* %60, align 1, !dbg !2525
  br label %61, !dbg !2525

61:                                               ; preds = %59, %57
  %62 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #13, !dbg !2526
  %.not14 = icmp eq i32 %62, 0, !dbg !2526
  br i1 %.not14, label %63, label %65, !dbg !2528

63:                                               ; preds = %61
  %64 = bitcast i8* %0 to i32*, !dbg !2529
  store i32 4277280, i32* %64, align 1, !dbg !2529
  br label %65, !dbg !2529

65:                                               ; preds = %63, %61
  %66 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #13, !dbg !2530
  %.not15 = icmp eq i32 %66, 0, !dbg !2530
  br i1 %.not15, label %67, label %69, !dbg !2532

67:                                               ; preds = %65
  %68 = bitcast i8* %0 to i32*, !dbg !2533
  store i32 5522464, i32* %68, align 1, !dbg !2533
  br label %69, !dbg !2533

69:                                               ; preds = %67, %65
  %70 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #13, !dbg !2534
  %.not16 = icmp eq i32 %70, 0, !dbg !2534
  br i1 %.not16, label %71, label %73, !dbg !2536

71:                                               ; preds = %69
  %72 = bitcast i8* %0 to i32*, !dbg !2537
  store i32 4408352, i32* %72, align 1, !dbg !2537
  br label %73, !dbg !2537

73:                                               ; preds = %71, %69
  %74 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #13, !dbg !2538
  %.not17 = icmp eq i32 %74, 0, !dbg !2538
  br i1 %.not17, label %75, label %77, !dbg !2540

75:                                               ; preds = %73
  %76 = bitcast i8* %0 to i32*, !dbg !2541
  store i32 4674080, i32* %76, align 1, !dbg !2541
  br label %77, !dbg !2541

77:                                               ; preds = %75, %73
  %78 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #13, !dbg !2542
  %.not18 = icmp eq i32 %78, 0, !dbg !2542
  br i1 %.not18, label %79, label %81, !dbg !2544

79:                                               ; preds = %77
  %80 = bitcast i8* %0 to i32*, !dbg !2545
  store i32 4280864, i32* %80, align 1, !dbg !2545
  br label %81, !dbg !2545

81:                                               ; preds = %79, %77
  %82 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #13, !dbg !2546
  %.not19 = icmp eq i32 %82, 0, !dbg !2546
  br i1 %.not19, label %83, label %85, !dbg !2548

83:                                               ; preds = %81
  %84 = bitcast i8* %0 to i32*, !dbg !2549
  store i32 5591584, i32* %84, align 1, !dbg !2549
  br label %85, !dbg !2549

85:                                               ; preds = %83, %81
  %86 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #13, !dbg !2550
  %.not20 = icmp eq i32 %86, 0, !dbg !2550
  br i1 %.not20, label %87, label %89, !dbg !2552

87:                                               ; preds = %85
  %88 = bitcast i8* %0 to i32*, !dbg !2553
  store i32 4411936, i32* %88, align 1, !dbg !2553
  br label %89, !dbg !2553

89:                                               ; preds = %87, %85
  %90 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #13, !dbg !2554
  %.not21 = icmp eq i32 %90, 0, !dbg !2554
  br i1 %.not21, label %91, label %93, !dbg !2556

91:                                               ; preds = %89
  %92 = bitcast i8* %0 to i32*, !dbg !2557
  store i32 4670496, i32* %92, align 1, !dbg !2557
  br label %93, !dbg !2557

93:                                               ; preds = %91, %89
  %94 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #13, !dbg !2558
  %.not22 = icmp eq i32 %94, 0, !dbg !2558
  br i1 %.not22, label %95, label %97, !dbg !2560

95:                                               ; preds = %93
  %96 = bitcast i8* %0 to i32*, !dbg !2561
  store i32 4277280, i32* %96, align 1, !dbg !2561
  br label %97, !dbg !2561

97:                                               ; preds = %95, %93
  %98 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #13, !dbg !2562
  %.not23 = icmp eq i32 %98, 0, !dbg !2562
  br i1 %.not23, label %99, label %101, !dbg !2564

99:                                               ; preds = %97
  %100 = bitcast i8* %0 to i32*, !dbg !2565
  store i32 5522464, i32* %100, align 1, !dbg !2565
  br label %101, !dbg !2565

101:                                              ; preds = %99, %97
  %102 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #13, !dbg !2566
  %.not24 = icmp eq i32 %102, 0, !dbg !2566
  br i1 %.not24, label %103, label %105, !dbg !2568

103:                                              ; preds = %101
  %104 = bitcast i8* %0 to i32*, !dbg !2569
  store i32 4408352, i32* %104, align 1, !dbg !2569
  br label %105, !dbg !2569

105:                                              ; preds = %103, %101
  %106 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #13, !dbg !2570
  %.not25 = icmp eq i32 %106, 0, !dbg !2570
  br i1 %.not25, label %107, label %109, !dbg !2572

107:                                              ; preds = %105
  %108 = bitcast i8* %0 to i32*, !dbg !2573
  store i32 4674080, i32* %108, align 1, !dbg !2573
  br label %109, !dbg !2573

109:                                              ; preds = %107, %105
  %110 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #13, !dbg !2574
  %.not26 = icmp eq i32 %110, 0, !dbg !2574
  br i1 %.not26, label %111, label %113, !dbg !2576

111:                                              ; preds = %109
  %112 = bitcast i8* %0 to i32*, !dbg !2577
  store i32 4280864, i32* %112, align 1, !dbg !2577
  br label %113, !dbg !2577

113:                                              ; preds = %111, %109
  %114 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #13, !dbg !2578
  %.not27 = icmp eq i32 %114, 0, !dbg !2578
  br i1 %.not27, label %115, label %117, !dbg !2580

115:                                              ; preds = %113
  %116 = bitcast i8* %0 to i32*, !dbg !2581
  store i32 5591584, i32* %116, align 1, !dbg !2581
  br label %117, !dbg !2581

117:                                              ; preds = %115, %113
  %118 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #13, !dbg !2582
  %.not28 = icmp eq i32 %118, 0, !dbg !2582
  br i1 %.not28, label %119, label %121, !dbg !2584

119:                                              ; preds = %117
  %120 = bitcast i8* %0 to i32*, !dbg !2585
  store i32 4411936, i32* %120, align 1, !dbg !2585
  br label %121, !dbg !2585

121:                                              ; preds = %119, %117
  %122 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #13, !dbg !2586
  %.not29 = icmp eq i32 %122, 0, !dbg !2586
  br i1 %.not29, label %123, label %125, !dbg !2588

123:                                              ; preds = %121
  %124 = bitcast i8* %0 to i32*, !dbg !2589
  store i32 5458248, i32* %124, align 1, !dbg !2589
  br label %125, !dbg !2589

125:                                              ; preds = %123, %121
  %126 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #13, !dbg !2590
  %.not30 = icmp eq i32 %126, 0, !dbg !2590
  br i1 %.not30, label %127, label %129, !dbg !2592

127:                                              ; preds = %125
  %128 = bitcast i8* %0 to i32*, !dbg !2593
  store i32 5458248, i32* %128, align 1, !dbg !2593
  br label %129, !dbg !2593

129:                                              ; preds = %127, %125
  %130 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #13, !dbg !2594
  %.not31 = icmp eq i32 %130, 0, !dbg !2594
  br i1 %.not31, label %131, label %133, !dbg !2596

131:                                              ; preds = %129
  %132 = bitcast i8* %0 to i32*, !dbg !2597
  store i32 5458248, i32* %132, align 1, !dbg !2597
  br label %133, !dbg !2597

133:                                              ; preds = %131, %129
  %134 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #13, !dbg !2598
  %.not32 = icmp eq i32 %134, 0, !dbg !2598
  br i1 %.not32, label %135, label %137, !dbg !2600

135:                                              ; preds = %133
  %136 = bitcast i8* %0 to i32*, !dbg !2601
  store i32 5462339, i32* %136, align 1, !dbg !2601
  br label %137, !dbg !2601

137:                                              ; preds = %135, %133
  %138 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #13, !dbg !2602
  %.not33 = icmp eq i32 %138, 0, !dbg !2602
  br i1 %.not33, label %139, label %141, !dbg !2604

139:                                              ; preds = %137
  %140 = bitcast i8* %0 to i32*, !dbg !2605
  store i32 5264193, i32* %140, align 1, !dbg !2605
  br label %141, !dbg !2605

141:                                              ; preds = %139, %137
  %142 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #13, !dbg !2606
  %.not34 = icmp eq i32 %142, 0, !dbg !2606
  br i1 %.not34, label %143, label %145, !dbg !2608

143:                                              ; preds = %141
  %144 = bitcast i8* %0 to i32*, !dbg !2609
  store i32 5590087, i32* %144, align 1, !dbg !2609
  br label %145, !dbg !2609

145:                                              ; preds = %143, %141
  ret void, !dbg !2610
}

; Function Attrs: nounwind uwtable
define internal void @mk_brook_aname(i8* %0, i8* %1, i8* %2) #0 !dbg !2611 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2615, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %1, metadata !2616, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %2, metadata !2617, metadata !DIExpression()), !dbg !2618
  store i8 32, i8* %0, align 1, !dbg !2619, !tbaa !404
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #13, !dbg !2620
  %5 = icmp ugt i64 %4, 3, !dbg !2622
  br i1 %5, label %6, label %12, !dbg !2623

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !2624
  %8 = load i8, i8* %7, align 1, !dbg !2624, !tbaa !404
  %.not4 = icmp eq i8 %8, 32, !dbg !2625
  br i1 %.not4, label %12, label %9, !dbg !2626

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !2627
  %11 = load i8, i8* %10, align 1, !dbg !2627, !tbaa !404
  store i8 %11, i8* %0, align 1, !dbg !2628, !tbaa !404
  br label %12, !dbg !2629

12:                                               ; preds = %9, %6, %3
  %13 = load i8, i8* %1, align 1, !dbg !2630, !tbaa !404
  %14 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2631
  store i8 %13, i8* %14, align 1, !dbg !2632, !tbaa !404
  %15 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2633
  %16 = load i8, i8* %15, align 1, !dbg !2633, !tbaa !404
  %17 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2634
  store i8 %16, i8* %17, align 1, !dbg !2635, !tbaa !404
  %18 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2636
  %19 = load i8, i8* %18, align 1, !dbg !2636, !tbaa !404
  %20 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2637
  store i8 %19, i8* %20, align 1, !dbg !2638, !tbaa !404
  %21 = icmp eq i8 %19, 39, !dbg !2639
  br i1 %21, label %22, label %24, !dbg !2641

22:                                               ; preds = %12
  %23 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2642
  store i8 42, i8* %23, align 1, !dbg !2643, !tbaa !404
  br label %24, !dbg !2642

24:                                               ; preds = %22, %12
  %25 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2644
  store i8 0, i8* %25, align 1, !dbg !2645, !tbaa !404
  %26 = call i32 @strncmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #13, !dbg !2646
  %.not = icmp eq i32 %26, 0, !dbg !2646
  br i1 %.not, label %27, label %51, !dbg !2648

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2649
  %29 = load i8, i8* %28, align 1, !dbg !2649, !tbaa !404
  %30 = icmp eq i8 %29, 49, !dbg !2650
  br i1 %30, label %39, label %31, !dbg !2651

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2652
  %33 = load i8, i8* %32, align 1, !dbg !2652, !tbaa !404
  %34 = icmp eq i8 %33, 50, !dbg !2653
  br i1 %34, label %39, label %35, !dbg !2654

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2655
  %37 = load i8, i8* %36, align 1, !dbg !2655, !tbaa !404
  %38 = icmp eq i8 %37, 51, !dbg !2656
  br i1 %38, label %39, label %51, !dbg !2657

39:                                               ; preds = %35, %31, %27
  %40 = call i32 @strncmp(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #13, !dbg !2658
  %.not2 = icmp eq i32 %40, 0, !dbg !2658
  br i1 %.not2, label %47, label %41, !dbg !2659

41:                                               ; preds = %39
  %42 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0), !dbg !2660
  %43 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i64 0, i64 0)
  %or.cond = and i1 %42, %43, !dbg !2661
  %44 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0)
  %or.cond1 = and i1 %or.cond, %44, !dbg !2661
  br i1 %or.cond1, label %45, label %51, !dbg !2661

45:                                               ; preds = %41
  %46 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i64 2) #13, !dbg !2662
  %.not3 = icmp eq i32 %46, 0, !dbg !2662
  br i1 %.not3, label %51, label %47, !dbg !2663

47:                                               ; preds = %45, %39
  %48 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2664
  %49 = load i8, i8* %48, align 1, !dbg !2664, !tbaa !404
  store i8 %49, i8* %0, align 1, !dbg !2666, !tbaa !404
  %50 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2667
  store i8 32, i8* %50, align 1, !dbg !2668, !tbaa !404
  br label %51, !dbg !2669

51:                                               ; preds = %47, %45, %41, %35, %24
  ret void, !dbg !2670
}

; Function Attrs: nounwind uwtable
define internal void @mk_wwpdb_aname(i8* %0, i8* %1, i8* %2) #0 !dbg !2671 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* %1, metadata !2674, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* %2, metadata !2675, metadata !DIExpression()), !dbg !2676
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #13, !dbg !2677
  %5 = icmp ugt i64 %4, 3, !dbg !2679
  br i1 %5, label %6, label %11, !dbg !2680

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !2681
  %8 = load i8, i8* %7, align 1, !dbg !2681, !tbaa !404
  %.not24 = icmp eq i8 %8, 32, !dbg !2682
  br i1 %.not24, label %11, label %9, !dbg !2683

9:                                                ; preds = %6
  %10 = call i8* @strncpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1, i64 5) #14, !dbg !2684
  br label %15, !dbg !2686

11:                                               ; preds = %6, %3
  store i8 32, i8* %0, align 1, !dbg !2687, !tbaa !404
  %12 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2689
  %13 = call i8* @strncpy(i8* noundef nonnull %12, i8* noundef nonnull dereferenceable(1) %1, i64 3) #14, !dbg !2690
  %14 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2691
  store i8 0, i8* %14, align 1, !dbg !2692, !tbaa !404
  br label %15

15:                                               ; preds = %11, %9
  %16 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2693
  %17 = load i8, i8* %16, align 1, !dbg !2693, !tbaa !404
  %18 = icmp eq i8 %17, 0, !dbg !2695
  br i1 %18, label %19, label %21, !dbg !2696

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2697
  store i8 32, i8* %20, align 1, !dbg !2698, !tbaa !404
  br label %21, !dbg !2697

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2699
  %23 = load i8, i8* %22, align 1, !dbg !2699, !tbaa !404
  %24 = icmp eq i8 %23, 0, !dbg !2701
  br i1 %24, label %25, label %27, !dbg !2702

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2703
  store i8 32, i8* %26, align 1, !dbg !2704, !tbaa !404
  br label %27, !dbg !2703

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2705
  %29 = load i8, i8* %28, align 1, !dbg !2705, !tbaa !404
  %30 = icmp eq i8 %29, 0, !dbg !2707
  br i1 %30, label %31, label %33, !dbg !2708

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2709
  store i8 32, i8* %32, align 1, !dbg !2710, !tbaa !404
  br label %33, !dbg !2709

33:                                               ; preds = %31, %27
  %34 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #13, !dbg !2711
  %.not = icmp eq i32 %34, 0, !dbg !2711
  br i1 %.not, label %35, label %36, !dbg !2713

35:                                               ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5, i1 false) #14, !dbg !2714
  br label %36, !dbg !2714

36:                                               ; preds = %35, %33
  %37 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #13, !dbg !2715
  %.not1 = icmp eq i32 %37, 0, !dbg !2715
  br i1 %.not1, label %38, label %39, !dbg !2717

38:                                               ; preds = %36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5, i1 false) #14, !dbg !2718
  br label %39, !dbg !2718

39:                                               ; preds = %38, %36
  %40 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #13, !dbg !2719
  %.not2 = icmp eq i32 %40, 0, !dbg !2719
  br i1 %.not2, label %41, label %42, !dbg !2721

41:                                               ; preds = %39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5, i1 false) #14, !dbg !2722
  br label %42, !dbg !2722

42:                                               ; preds = %41, %39
  %43 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #13, !dbg !2723
  %.not3 = icmp eq i32 %43, 0, !dbg !2723
  br i1 %.not3, label %44, label %45, !dbg !2725

44:                                               ; preds = %42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5, i1 false) #14, !dbg !2726
  br label %45, !dbg !2726

45:                                               ; preds = %44, %42
  %46 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #13, !dbg !2727
  %.not4 = icmp eq i32 %46, 0, !dbg !2727
  br i1 %.not4, label %47, label %48, !dbg !2729

47:                                               ; preds = %45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5, i1 false) #14, !dbg !2730
  br label %48, !dbg !2730

48:                                               ; preds = %47, %45
  %49 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #13, !dbg !2731
  %.not5 = icmp eq i32 %49, 0, !dbg !2731
  br i1 %.not5, label %50, label %51, !dbg !2733

50:                                               ; preds = %48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5, i1 false) #14, !dbg !2734
  br label %51, !dbg !2734

51:                                               ; preds = %50, %48
  %52 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #13, !dbg !2735
  %.not6 = icmp eq i32 %52, 0, !dbg !2735
  br i1 %.not6, label %53, label %54, !dbg !2737

53:                                               ; preds = %51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5, i1 false) #14, !dbg !2738
  br label %54, !dbg !2738

54:                                               ; preds = %53, %51
  %55 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #13, !dbg !2739
  %.not7 = icmp eq i32 %55, 0, !dbg !2739
  br i1 %.not7, label %56, label %57, !dbg !2741

56:                                               ; preds = %54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %0, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5, i1 false) #14, !dbg !2742
  br label %57, !dbg !2742

57:                                               ; preds = %56, %54
  %58 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #13, !dbg !2743
  %.not8 = icmp eq i32 %58, 0, !dbg !2743
  br i1 %.not8, label %89, label %59, !dbg !2745

59:                                               ; preds = %57
  %60 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #13, !dbg !2746
  %.not9 = icmp eq i32 %60, 0, !dbg !2746
  br i1 %.not9, label %89, label %61, !dbg !2747

61:                                               ; preds = %59
  %62 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #13, !dbg !2748
  %.not10 = icmp eq i32 %62, 0, !dbg !2748
  br i1 %.not10, label %89, label %63, !dbg !2749

63:                                               ; preds = %61
  %64 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #13, !dbg !2750
  %.not11 = icmp eq i32 %64, 0, !dbg !2750
  br i1 %.not11, label %89, label %65, !dbg !2751

65:                                               ; preds = %63
  %66 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #13, !dbg !2752
  %.not12 = icmp eq i32 %66, 0, !dbg !2752
  br i1 %.not12, label %89, label %67, !dbg !2753

67:                                               ; preds = %65
  %68 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #13, !dbg !2754
  %.not13 = icmp eq i32 %68, 0, !dbg !2754
  br i1 %.not13, label %89, label %69, !dbg !2755

69:                                               ; preds = %67
  %70 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #13, !dbg !2756
  %.not14 = icmp eq i32 %70, 0, !dbg !2756
  br i1 %.not14, label %89, label %71, !dbg !2757

71:                                               ; preds = %69
  %72 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #13, !dbg !2758
  %.not15 = icmp eq i32 %72, 0, !dbg !2758
  br i1 %.not15, label %89, label %73, !dbg !2759

73:                                               ; preds = %71
  %74 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #13, !dbg !2760
  %.not16 = icmp eq i32 %74, 0, !dbg !2760
  br i1 %.not16, label %89, label %75, !dbg !2761

75:                                               ; preds = %73
  %76 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #13, !dbg !2762
  %.not17 = icmp eq i32 %76, 0, !dbg !2762
  br i1 %.not17, label %89, label %77, !dbg !2763

77:                                               ; preds = %75
  %78 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #13, !dbg !2764
  %.not18 = icmp eq i32 %78, 0, !dbg !2764
  br i1 %.not18, label %89, label %79, !dbg !2765

79:                                               ; preds = %77
  %80 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #13, !dbg !2766
  %.not19 = icmp eq i32 %80, 0, !dbg !2766
  br i1 %.not19, label %89, label %81, !dbg !2767

81:                                               ; preds = %79
  %82 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #13, !dbg !2768
  %.not20 = icmp eq i32 %82, 0, !dbg !2768
  br i1 %.not20, label %89, label %83, !dbg !2769

83:                                               ; preds = %81
  %84 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #13, !dbg !2770
  %.not21 = icmp eq i32 %84, 0, !dbg !2770
  br i1 %.not21, label %89, label %85, !dbg !2771

85:                                               ; preds = %83
  %86 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #13, !dbg !2772
  %.not22 = icmp eq i32 %86, 0, !dbg !2772
  br i1 %.not22, label %89, label %87, !dbg !2773

87:                                               ; preds = %85
  %88 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #13, !dbg !2774
  %.not23 = icmp eq i32 %88, 0, !dbg !2774
  br i1 %.not23, label %89, label %99, !dbg !2775

89:                                               ; preds = %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57
  %90 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2776
  %91 = load i8, i8* %90, align 1, !dbg !2776, !tbaa !404
  store i8 %91, i8* %0, align 1, !dbg !2778, !tbaa !404
  %92 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2779
  %93 = load i8, i8* %92, align 1, !dbg !2779, !tbaa !404
  %94 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2780
  store i8 %93, i8* %94, align 1, !dbg !2781, !tbaa !404
  %95 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2782
  %96 = load i8, i8* %95, align 1, !dbg !2782, !tbaa !404
  %97 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2783
  store i8 %96, i8* %97, align 1, !dbg !2784, !tbaa !404
  %98 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2785
  store i8 32, i8* %98, align 1, !dbg !2786, !tbaa !404
  br label %99, !dbg !2787

99:                                               ; preds = %89, %87
  ret void, !dbg !2788
}

; Function Attrs: nounwind uwtable
define internal void @freecid(%struct.cid_t* %0) #0 !dbg !2789 {
  call void @llvm.dbg.value(metadata %struct.cid_t* %0, metadata !2793, metadata !DIExpression()), !dbg !2794
  %.not = icmp eq %struct.cid_t* %0, null, !dbg !2795
  br i1 %.not, label %10, label %2, !dbg !2797

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 2, !dbg !2798
  %4 = load i8*, i8** %3, align 8, !dbg !2798, !tbaa !2166
  %.not1 = icmp eq i8* %4, null, !dbg !2801
  br i1 %.not1, label %8, label %5, !dbg !2802

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i64 0, i32 2, !dbg !2803
  %7 = load i8*, i8** %6, align 8, !dbg !2803, !tbaa !2166
  call void @free(i8* %7) #14, !dbg !2804
  br label %8, !dbg !2804

8:                                                ; preds = %5, %2
  %9 = bitcast %struct.cid_t* %0 to i8*, !dbg !2805
  call void @free(i8* %9) #14, !dbg !2806
  br label %10, !dbg !2807

10:                                               ; preds = %8, %1
  ret void, !dbg !2808
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #12

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readnone }

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
!434 = !DILocation(line: 139, column: 9, scope: !421)
!435 = !DILocation(line: 143, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !421, file: !3, line: 143, column: 13)
!437 = !DILocation(line: 143, column: 28, scope: !436)
!438 = !DILocation(line: 143, column: 13, scope: !421)
!439 = !DILocation(line: 0, scope: !401)
!440 = !DILocation(line: 148, column: 11, scope: !388)
!441 = !DILocation(line: 150, column: 15, scope: !442)
!442 = distinct !DILexicalBlock(scope: !388, file: !3, line: 150, column: 9)
!443 = !DILocation(line: 150, column: 12, scope: !442)
!444 = !DILocation(line: 150, column: 9, scope: !388)
!445 = !DILocation(line: 151, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 151, column: 13)
!447 = distinct !DILexicalBlock(scope: !442, file: !3, line: 150, column: 22)
!448 = !DILocation(line: 151, column: 28, scope: !446)
!449 = !DILocation(line: 151, column: 13, scope: !447)
!450 = !DILocation(line: 152, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !446, file: !3, line: 151, column: 34)
!452 = !DILocation(line: 153, column: 9, scope: !451)
!453 = !DILocation(line: 156, column: 5, scope: !388)
!454 = distinct !DISubprogram(name: "fgetpdb", scope: !3, file: !3, line: 464, type: !455, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!391, !371, !13}
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !469, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !502}
!458 = !DILocalVariable(name: "fp", arg: 1, scope: !454, file: !3, line: 464, type: !371)
!459 = !DILocalVariable(name: "options", arg: 2, scope: !454, file: !3, line: 464, type: !13)
!460 = !DILocalVariable(name: "mol", scope: !454, file: !3, line: 466, type: !391)
!461 = !DILocalVariable(name: "ap", scope: !454, file: !3, line: 467, type: !190)
!462 = !DILocalVariable(name: "l_cid", scope: !454, file: !3, line: 468, type: !37)
!463 = !DILocalVariable(name: "cid", scope: !454, file: !3, line: 468, type: !37)
!464 = !DILocalVariable(name: "nchains", scope: !454, file: !3, line: 469, type: !37)
!465 = !DILocalVariable(name: "line", scope: !454, file: !3, line: 470, type: !466)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 656, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 82)
!469 = !DILocalVariable(name: "sname", scope: !454, file: !3, line: 471, type: !470)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 10)
!473 = !DILocalVariable(name: "aname", scope: !454, file: !3, line: 472, type: !470)
!474 = !DILocalVariable(name: "rname", scope: !454, file: !3, line: 473, type: !470)
!475 = !DILocalVariable(name: "l_rname", scope: !454, file: !3, line: 473, type: !470)
!476 = !DILocalVariable(name: "rid", scope: !454, file: !3, line: 474, type: !470)
!477 = !DILocalVariable(name: "l_rid", scope: !454, file: !3, line: 474, type: !470)
!478 = !DILocalVariable(name: "field", scope: !454, file: !3, line: 475, type: !470)
!479 = !DILocalVariable(name: "np", scope: !454, file: !3, line: 476, type: !13)
!480 = !DILocalVariable(name: "np1", scope: !454, file: !3, line: 476, type: !13)
!481 = !DILocalVariable(name: "rnum", scope: !454, file: !3, line: 477, type: !37)
!482 = !DILocalVariable(name: "l_rnum", scope: !454, file: !3, line: 477, type: !37)
!483 = !DILocalVariable(name: "x", scope: !454, file: !3, line: 478, type: !10)
!484 = !DILocalVariable(name: "y", scope: !454, file: !3, line: 478, type: !10)
!485 = !DILocalVariable(name: "z", scope: !454, file: !3, line: 478, type: !10)
!486 = !DILocalVariable(name: "q", scope: !454, file: !3, line: 478, type: !10)
!487 = !DILocalVariable(name: "r", scope: !454, file: !3, line: 478, type: !10)
!488 = !DILocalVariable(name: "occ", scope: !454, file: !3, line: 478, type: !10)
!489 = !DILocalVariable(name: "bfact", scope: !454, file: !3, line: 478, type: !10)
!490 = !DILocalVariable(name: "i", scope: !454, file: !3, line: 479, type: !37)
!491 = !DILocalVariable(name: "temp", scope: !454, file: !3, line: 480, type: !14)
!492 = !DILocalVariable(name: "loptions", scope: !454, file: !3, line: 481, type: !375)
!493 = !DILocalVariable(name: "sp", scope: !494, file: !3, line: 661, type: !128)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 660, column: 17)
!495 = distinct !DILexicalBlock(scope: !496, file: !3, line: 639, column: 31)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 639, column: 17)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 512, column: 46)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 511, column: 13)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 496, column: 37)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 496, column: 5)
!501 = distinct !DILexicalBlock(scope: !454, file: !3, line: 496, column: 5)
!502 = !DILocalVariable(name: "spl", scope: !494, file: !3, line: 661, type: !128)
!503 = !DILocation(line: 0, scope: !454)
!504 = !DILocation(line: 470, column: 5, scope: !454)
!505 = !DILocation(line: 470, column: 10, scope: !454)
!506 = !DILocation(line: 471, column: 5, scope: !454)
!507 = !DILocation(line: 471, column: 10, scope: !454)
!508 = !DILocation(line: 472, column: 5, scope: !454)
!509 = !DILocation(line: 472, column: 10, scope: !454)
!510 = !DILocation(line: 473, column: 5, scope: !454)
!511 = !DILocation(line: 473, column: 10, scope: !454)
!512 = !DILocation(line: 473, column: 21, scope: !454)
!513 = !DILocation(line: 474, column: 5, scope: !454)
!514 = !DILocation(line: 474, column: 10, scope: !454)
!515 = !DILocation(line: 474, column: 19, scope: !454)
!516 = !DILocation(line: 475, column: 5, scope: !454)
!517 = !DILocation(line: 475, column: 10, scope: !454)
!518 = !DILocation(line: 477, column: 5, scope: !454)
!519 = !DILocation(line: 478, column: 5, scope: !454)
!520 = !DILocation(line: 481, column: 5, scope: !454)
!521 = !DILocation(line: 481, column: 10, scope: !454)
!522 = !DILocation(line: 483, column: 17, scope: !523)
!523 = distinct !DILexicalBlock(scope: !454, file: !3, line: 483, column: 9)
!524 = !DILocation(line: 483, column: 9, scope: !454)
!525 = !DILocation(line: 484, column: 9, scope: !523)
!526 = !DILocation(line: 484, column: 19, scope: !523)
!527 = !DILocation(line: 486, column: 16, scope: !523)
!528 = !DILocation(line: 486, column: 9, scope: !523)
!529 = !DILocation(line: 488, column: 5, scope: !454)
!530 = !DILocation(line: 489, column: 5, scope: !454)
!531 = !DILocation(line: 491, column: 11, scope: !454)
!532 = !DILocation(line: 494, column: 5, scope: !454)
!533 = !DILocation(line: 494, column: 14, scope: !454)
!534 = !DILocation(line: 496, column: 30, scope: !501)
!535 = !{!536, !536, i64 0}
!536 = !{!"int", !405, i64 0}
!537 = !DILocation(line: 503, column: 19, scope: !538)
!538 = distinct !DILexicalBlock(scope: !499, file: !3, line: 503, column: 13)
!539 = !DILocation(line: 503, column: 13, scope: !538)
!540 = !DILocation(line: 503, column: 43, scope: !538)
!541 = !DILocation(line: 503, column: 13, scope: !499)
!542 = !DILocation(line: 507, column: 25, scope: !543)
!543 = distinct !DILexicalBlock(scope: !499, file: !3, line: 507, column: 9)
!544 = !DILocation(line: 507, column: 18, scope: !543)
!545 = !DILocation(line: 507, column: 14, scope: !543)
!546 = !DILocation(line: 507, column: 34, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !3, line: 507, column: 9)
!548 = !DILocation(line: 507, column: 9, scope: !543)
!549 = !DILocation(line: 508, column: 13, scope: !547)
!550 = !DILocation(line: 508, column: 21, scope: !547)
!551 = !DILocation(line: 507, column: 41, scope: !547)
!552 = distinct !{!552, !548, !553}
!553 = !DILocation(line: 508, column: 23, scope: !543)
!554 = !DILocation(line: 509, column: 9, scope: !499)
!555 = !DILocation(line: 509, column: 18, scope: !499)
!556 = !DILocation(line: 511, column: 13, scope: !498)
!557 = !DILocation(line: 511, column: 43, scope: !498)
!558 = !DILocation(line: 512, column: 31, scope: !498)
!559 = !DILocation(line: 512, column: 13, scope: !498)
!560 = !DILocation(line: 512, column: 40, scope: !498)
!561 = !DILocation(line: 511, column: 13, scope: !499)
!562 = !DILocation(line: 513, column: 21, scope: !497)
!563 = !DILocation(line: 513, column: 29, scope: !497)
!564 = !DILocation(line: 513, column: 13, scope: !497)
!565 = !DILocation(line: 514, column: 13, scope: !497)
!566 = !DILocation(line: 514, column: 33, scope: !497)
!567 = !DILocation(line: 516, column: 29, scope: !568)
!568 = distinct !DILexicalBlock(scope: !497, file: !3, line: 516, column: 13)
!569 = !DILocation(line: 516, column: 36, scope: !570)
!570 = distinct !DILexicalBlock(scope: !568, file: !3, line: 516, column: 13)
!571 = !DILocation(line: 516, column: 13, scope: !568)
!572 = !DILocation(line: 517, column: 21, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 517, column: 21)
!574 = distinct !DILexicalBlock(scope: !570, file: !3, line: 516, column: 47)
!575 = !DILocation(line: 517, column: 25, scope: !573)
!576 = !DILocation(line: 517, column: 21, scope: !574)
!577 = !DILocation(line: 518, column: 30, scope: !573)
!578 = !DILocation(line: 518, column: 25, scope: !573)
!579 = !DILocation(line: 518, column: 28, scope: !573)
!580 = !DILocation(line: 518, column: 21, scope: !573)
!581 = !DILocation(line: 0, scope: !568)
!582 = !DILocation(line: 516, column: 43, scope: !570)
!583 = distinct !{!583, !571, !584}
!584 = !DILocation(line: 519, column: 13, scope: !568)
!585 = !DILocation(line: 520, column: 18, scope: !497)
!586 = !DILocation(line: 523, column: 17, scope: !587)
!587 = distinct !DILexicalBlock(scope: !497, file: !3, line: 523, column: 17)
!588 = !DILocation(line: 523, column: 33, scope: !587)
!589 = !DILocation(line: 524, column: 24, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 523, column: 72)
!591 = !DILocation(line: 525, column: 45, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 525, column: 17)
!593 = distinct !DILexicalBlock(scope: !590, file: !3, line: 525, column: 17)
!594 = !DILocation(line: 525, column: 38, scope: !592)
!595 = !DILocation(line: 525, column: 31, scope: !592)
!596 = !DILocation(line: 525, column: 17, scope: !593)
!597 = !DILocation(line: 525, column: 58, scope: !592)
!598 = !DILocation(line: 526, column: 32, scope: !592)
!599 = !DILocation(line: 526, column: 21, scope: !592)
!600 = !DILocation(line: 526, column: 30, scope: !592)
!601 = distinct !{!601, !596, !602}
!602 = !DILocation(line: 526, column: 43, scope: !593)
!603 = !DILocation(line: 527, column: 17, scope: !590)
!604 = !DILocation(line: 527, column: 26, scope: !590)
!605 = !DILocation(line: 528, column: 13, scope: !590)
!606 = !DILocation(line: 531, column: 17, scope: !607)
!607 = distinct !DILexicalBlock(scope: !497, file: !3, line: 531, column: 17)
!608 = !DILocation(line: 531, column: 26, scope: !607)
!609 = !DILocation(line: 531, column: 17, scope: !497)
!610 = !DILocation(line: 532, column: 17, scope: !607)
!611 = !DILocation(line: 532, column: 26, scope: !607)
!612 = !DILocation(line: 533, column: 18, scope: !613)
!613 = distinct !DILexicalBlock(scope: !497, file: !3, line: 533, column: 17)
!614 = !DILocation(line: 533, column: 17, scope: !497)
!615 = !DILocation(line: 534, column: 24, scope: !613)
!616 = !DILocation(line: 534, column: 17, scope: !613)
!617 = !DILocation(line: 536, column: 21, scope: !497)
!618 = !DILocation(line: 536, column: 29, scope: !497)
!619 = !DILocation(line: 536, column: 13, scope: !497)
!620 = !DILocation(line: 537, column: 13, scope: !497)
!621 = !DILocation(line: 537, column: 33, scope: !497)
!622 = !DILocation(line: 538, column: 29, scope: !623)
!623 = distinct !DILexicalBlock(scope: !497, file: !3, line: 538, column: 13)
!624 = !DILocation(line: 538, column: 36, scope: !625)
!625 = distinct !DILexicalBlock(scope: !623, file: !3, line: 538, column: 13)
!626 = !DILocation(line: 538, column: 13, scope: !623)
!627 = !DILocation(line: 539, column: 21, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 539, column: 21)
!629 = distinct !DILexicalBlock(scope: !625, file: !3, line: 538, column: 47)
!630 = !DILocation(line: 539, column: 25, scope: !628)
!631 = !DILocation(line: 539, column: 21, scope: !629)
!632 = !DILocation(line: 540, column: 30, scope: !628)
!633 = !DILocation(line: 540, column: 25, scope: !628)
!634 = !DILocation(line: 540, column: 28, scope: !628)
!635 = !DILocation(line: 540, column: 21, scope: !628)
!636 = !DILocation(line: 0, scope: !623)
!637 = !DILocation(line: 538, column: 43, scope: !625)
!638 = distinct !{!638, !626, !639}
!639 = !DILocation(line: 541, column: 13, scope: !623)
!640 = !DILocation(line: 542, column: 18, scope: !497)
!641 = !DILocation(line: 551, column: 18, scope: !642)
!642 = distinct !DILexicalBlock(scope: !497, file: !3, line: 551, column: 17)
!643 = !DILocation(line: 551, column: 17, scope: !497)
!644 = !DILocation(line: 552, column: 28, scope: !642)
!645 = !{!646, !536, i64 44}
!646 = !{!"residue_t", !411, i64 0, !536, i64 8, !536, i64 12, !536, i64 16, !411, i64 24, !411, i64 32, !536, i64 40, !536, i64 44, !536, i64 48, !411, i64 56, !411, i64 64, !536, i64 72, !411, i64 80, !536, i64 88, !411, i64 96, !536, i64 104, !411, i64 112, !411, i64 120}
!647 = !DILocation(line: 552, column: 17, scope: !642)
!648 = !DILocation(line: 553, column: 25, scope: !649)
!649 = distinct !DILexicalBlock(scope: !497, file: !3, line: 553, column: 17)
!650 = !DILocation(line: 553, column: 18, scope: !649)
!651 = !DILocation(line: 553, column: 41, scope: !649)
!652 = !DILocation(line: 554, column: 17, scope: !649)
!653 = !DILocation(line: 557, column: 18, scope: !654)
!654 = distinct !DILexicalBlock(scope: !497, file: !3, line: 557, column: 17)
!655 = !DILocation(line: 557, column: 17, scope: !497)
!656 = !DILocation(line: 558, column: 17, scope: !654)
!657 = !DILocation(line: 559, column: 18, scope: !658)
!658 = distinct !DILexicalBlock(scope: !497, file: !3, line: 559, column: 17)
!659 = !DILocation(line: 559, column: 17, scope: !497)
!660 = !DILocation(line: 560, column: 17, scope: !658)
!661 = !DILocation(line: 561, column: 18, scope: !662)
!662 = distinct !DILexicalBlock(scope: !497, file: !3, line: 561, column: 17)
!663 = !DILocation(line: 561, column: 17, scope: !497)
!664 = !DILocation(line: 562, column: 17, scope: !662)
!665 = !DILocation(line: 563, column: 18, scope: !666)
!666 = distinct !DILexicalBlock(scope: !497, file: !3, line: 563, column: 17)
!667 = !DILocation(line: 563, column: 17, scope: !497)
!668 = !DILocation(line: 564, column: 17, scope: !666)
!669 = !DILocation(line: 565, column: 18, scope: !670)
!670 = distinct !DILexicalBlock(scope: !497, file: !3, line: 565, column: 17)
!671 = !DILocation(line: 565, column: 17, scope: !497)
!672 = !DILocation(line: 566, column: 17, scope: !670)
!673 = !DILocation(line: 569, column: 21, scope: !497)
!674 = !DILocation(line: 569, column: 27, scope: !497)
!675 = !DILocation(line: 569, column: 13, scope: !497)
!676 = !DILocation(line: 570, column: 13, scope: !497)
!677 = !DILocation(line: 570, column: 30, scope: !497)
!678 = !DILocation(line: 572, column: 19, scope: !497)
!679 = !DILocation(line: 573, column: 21, scope: !497)
!680 = !DILocation(line: 573, column: 13, scope: !497)
!681 = !DILocation(line: 575, column: 21, scope: !497)
!682 = !DILocation(line: 575, column: 29, scope: !497)
!683 = !DILocation(line: 575, column: 13, scope: !497)
!684 = !DILocation(line: 576, column: 13, scope: !497)
!685 = !DILocation(line: 576, column: 33, scope: !497)
!686 = !DILocation(line: 577, column: 22, scope: !497)
!687 = !DILocation(line: 577, column: 17, scope: !497)
!688 = !DILocation(line: 579, column: 21, scope: !497)
!689 = !DILocation(line: 579, column: 29, scope: !497)
!690 = !DILocation(line: 579, column: 13, scope: !497)
!691 = !DILocation(line: 580, column: 13, scope: !497)
!692 = !DILocation(line: 580, column: 33, scope: !497)
!693 = !DILocation(line: 581, column: 22, scope: !497)
!694 = !DILocation(line: 581, column: 17, scope: !497)
!695 = !DILocation(line: 583, column: 21, scope: !497)
!696 = !DILocation(line: 583, column: 29, scope: !497)
!697 = !DILocation(line: 583, column: 13, scope: !497)
!698 = !DILocation(line: 584, column: 13, scope: !497)
!699 = !DILocation(line: 584, column: 33, scope: !497)
!700 = !DILocation(line: 585, column: 22, scope: !497)
!701 = !DILocation(line: 585, column: 17, scope: !497)
!702 = !DILocation(line: 587, column: 24, scope: !703)
!703 = distinct !DILexicalBlock(scope: !497, file: !3, line: 587, column: 17)
!704 = !DILocation(line: 587, column: 17, scope: !703)
!705 = !DILocation(line: 587, column: 17, scope: !497)
!706 = !DILocation(line: 603, column: 25, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !3, line: 587, column: 43)
!708 = !DILocation(line: 603, column: 17, scope: !707)
!709 = !DILocation(line: 611, column: 13, scope: !707)
!710 = !DILocation(line: 613, column: 30, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 613, column: 21)
!712 = distinct !DILexicalBlock(scope: !703, file: !3, line: 611, column: 20)
!713 = !DILocation(line: 613, column: 22, scope: !711)
!714 = !DILocation(line: 613, column: 21, scope: !712)
!715 = !DILocation(line: 614, column: 23, scope: !711)
!716 = !{!717, !717, i64 0}
!717 = !{!"double", !405, i64 0}
!718 = !DILocation(line: 614, column: 21, scope: !711)
!719 = !DILocation(line: 615, column: 35, scope: !720)
!720 = distinct !DILexicalBlock(scope: !711, file: !3, line: 615, column: 26)
!721 = !DILocation(line: 615, column: 27, scope: !720)
!722 = !DILocation(line: 615, column: 26, scope: !711)
!723 = !DILocation(line: 616, column: 23, scope: !720)
!724 = !DILocation(line: 616, column: 21, scope: !720)
!725 = !DILocation(line: 617, column: 35, scope: !726)
!726 = distinct !DILexicalBlock(scope: !720, file: !3, line: 617, column: 26)
!727 = !DILocation(line: 617, column: 27, scope: !726)
!728 = !DILocation(line: 617, column: 26, scope: !720)
!729 = !DILocation(line: 618, column: 23, scope: !726)
!730 = !DILocation(line: 618, column: 21, scope: !726)
!731 = !DILocation(line: 619, column: 35, scope: !732)
!732 = distinct !DILexicalBlock(scope: !726, file: !3, line: 619, column: 26)
!733 = !DILocation(line: 619, column: 27, scope: !732)
!734 = !DILocation(line: 619, column: 26, scope: !726)
!735 = !DILocation(line: 620, column: 23, scope: !732)
!736 = !DILocation(line: 620, column: 21, scope: !732)
!737 = !DILocation(line: 621, column: 35, scope: !738)
!738 = distinct !DILexicalBlock(scope: !732, file: !3, line: 621, column: 26)
!739 = !DILocation(line: 621, column: 27, scope: !738)
!740 = !DILocation(line: 621, column: 26, scope: !732)
!741 = !DILocation(line: 622, column: 23, scope: !738)
!742 = !DILocation(line: 622, column: 21, scope: !738)
!743 = !DILocation(line: 623, column: 35, scope: !744)
!744 = distinct !DILexicalBlock(scope: !738, file: !3, line: 623, column: 26)
!745 = !DILocation(line: 623, column: 27, scope: !744)
!746 = !DILocation(line: 623, column: 26, scope: !738)
!747 = !DILocation(line: 624, column: 23, scope: !744)
!748 = !DILocation(line: 624, column: 21, scope: !744)
!749 = !DILocation(line: 626, column: 23, scope: !744)
!750 = !DILocation(line: 627, column: 19, scope: !712)
!751 = !DILocation(line: 630, column: 25, scope: !712)
!752 = !DILocation(line: 630, column: 33, scope: !712)
!753 = !DILocation(line: 630, column: 17, scope: !712)
!754 = !DILocation(line: 631, column: 17, scope: !712)
!755 = !DILocation(line: 631, column: 37, scope: !712)
!756 = !DILocation(line: 632, column: 28, scope: !712)
!757 = !DILocation(line: 632, column: 23, scope: !712)
!758 = !DILocation(line: 634, column: 25, scope: !712)
!759 = !DILocation(line: 634, column: 33, scope: !712)
!760 = !DILocation(line: 634, column: 17, scope: !712)
!761 = !DILocation(line: 635, column: 17, scope: !712)
!762 = !DILocation(line: 635, column: 37, scope: !712)
!763 = !DILocation(line: 636, column: 30, scope: !712)
!764 = !DILocation(line: 636, column: 25, scope: !712)
!765 = !DILocation(line: 0, scope: !703)
!766 = !DILocation(line: 639, column: 21, scope: !496)
!767 = !DILocation(line: 639, column: 17, scope: !497)
!768 = !DILocation(line: 640, column: 21, scope: !769)
!769 = distinct !DILexicalBlock(scope: !495, file: !3, line: 640, column: 21)
!770 = !DILocation(line: 640, column: 28, scope: !769)
!771 = !DILocation(line: 640, column: 21, scope: !495)
!772 = !DILocation(line: 641, column: 32, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !3, line: 640, column: 33)
!774 = !{!646, !411, i64 24}
!775 = !DILocation(line: 641, column: 43, scope: !773)
!776 = !DILocation(line: 641, column: 21, scope: !773)
!777 = !DILocation(line: 642, column: 32, scope: !773)
!778 = !{!646, !411, i64 32}
!779 = !DILocation(line: 642, column: 41, scope: !773)
!780 = !DILocation(line: 642, column: 21, scope: !773)
!781 = !DILocation(line: 643, column: 31, scope: !773)
!782 = !{!646, !536, i64 8}
!783 = !DILocation(line: 644, column: 36, scope: !773)
!784 = !DILocation(line: 644, column: 34, scope: !773)
!785 = !{!646, !536, i64 104}
!786 = !DILocation(line: 645, column: 21, scope: !773)
!787 = !DILocation(line: 646, column: 37, scope: !773)
!788 = !DILocation(line: 646, column: 21, scope: !773)
!789 = !DILocation(line: 647, column: 21, scope: !773)
!790 = !DILocation(line: 648, column: 28, scope: !773)
!791 = !DILocation(line: 649, column: 17, scope: !773)
!792 = !DILocation(line: 651, column: 24, scope: !495)
!793 = !DILocation(line: 652, column: 25, scope: !794)
!794 = distinct !DILexicalBlock(scope: !495, file: !3, line: 652, column: 21)
!795 = !DILocation(line: 652, column: 21, scope: !495)
!796 = !DILocation(line: 653, column: 29, scope: !794)
!797 = !DILocation(line: 653, column: 21, scope: !794)
!798 = !DILocation(line: 655, column: 21, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !3, line: 654, column: 22)
!800 = !DILocation(line: 655, column: 30, scope: !799)
!801 = !DILocation(line: 656, column: 21, scope: !799)
!802 = !DILocation(line: 656, column: 30, scope: !799)
!803 = !DILocation(line: 658, column: 32, scope: !495)
!804 = !DILocation(line: 658, column: 17, scope: !495)
!805 = !DILocation(line: 0, scope: !494)
!806 = !DILocation(line: 663, column: 48, scope: !807)
!807 = distinct !DILexicalBlock(scope: !494, file: !3, line: 663, column: 21)
!808 = !{!809, !411, i64 104}
!809 = !{!"molecule_t", !405, i64 0, !536, i64 96, !411, i64 104, !536, i64 112, !536, i64 116, !536, i64 120, !411, i64 128}
!810 = !DILocation(line: 663, column: 21, scope: !807)
!811 = !DILocation(line: 665, column: 42, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 665, column: 29)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 664, column: 45)
!814 = distinct !DILexicalBlock(scope: !807, file: !3, line: 663, column: 21)
!815 = !{!816, !411, i64 0}
!816 = !{!"strand_t", !411, i64 0, !536, i64 8, !536, i64 12, !411, i64 16, !411, i64 24, !536, i64 32, !536, i64 36, !411, i64 40}
!817 = !DILocation(line: 665, column: 56, scope: !812)
!818 = !DILocation(line: 665, column: 30, scope: !812)
!819 = !DILocation(line: 665, column: 29, scope: !813)
!820 = !DILocation(line: 664, column: 37, scope: !814)
!821 = !{!816, !411, i64 24}
!822 = distinct !{!822, !810, !823}
!823 = !DILocation(line: 669, column: 21, scope: !807)
!824 = !DILocation(line: 0, scope: !807)
!825 = !DILocation(line: 670, column: 25, scope: !494)
!826 = !DILocation(line: 670, column: 36, scope: !494)
!827 = !{!816, !536, i64 36}
!828 = !DILocation(line: 672, column: 40, scope: !494)
!829 = !DILocation(line: 671, column: 25, scope: !494)
!830 = !DILocation(line: 671, column: 36, scope: !494)
!831 = !{!816, !411, i64 40}
!832 = !DILocation(line: 680, column: 24, scope: !495)
!833 = !DILocation(line: 680, column: 33, scope: !495)
!834 = !DILocation(line: 680, column: 17, scope: !495)
!835 = !DILocation(line: 681, column: 24, scope: !495)
!836 = !DILocation(line: 681, column: 31, scope: !495)
!837 = !DILocation(line: 681, column: 17, scope: !495)
!838 = !DILocation(line: 682, column: 26, scope: !495)
!839 = !DILocation(line: 684, column: 13, scope: !495)
!840 = !DILocation(line: 684, column: 33, scope: !841)
!841 = distinct !DILexicalBlock(scope: !496, file: !3, line: 684, column: 24)
!842 = !DILocation(line: 684, column: 42, scope: !841)
!843 = !DILocation(line: 684, column: 57, scope: !841)
!844 = !DILocation(line: 684, column: 24, scope: !841)
!845 = !DILocation(line: 684, column: 24, scope: !496)
!846 = !DILocation(line: 685, column: 28, scope: !847)
!847 = distinct !DILexicalBlock(scope: !841, file: !3, line: 684, column: 64)
!848 = !DILocation(line: 685, column: 39, scope: !847)
!849 = !DILocation(line: 685, column: 17, scope: !847)
!850 = !DILocation(line: 686, column: 28, scope: !847)
!851 = !DILocation(line: 686, column: 37, scope: !847)
!852 = !DILocation(line: 686, column: 17, scope: !847)
!853 = !DILocation(line: 687, column: 27, scope: !847)
!854 = !DILocation(line: 688, column: 32, scope: !847)
!855 = !DILocation(line: 688, column: 30, scope: !847)
!856 = !DILocation(line: 689, column: 17, scope: !847)
!857 = !DILocation(line: 690, column: 33, scope: !847)
!858 = !DILocation(line: 690, column: 17, scope: !847)
!859 = !DILocation(line: 691, column: 17, scope: !847)
!860 = !DILocation(line: 692, column: 24, scope: !847)
!861 = !DILocation(line: 692, column: 33, scope: !847)
!862 = !DILocation(line: 692, column: 17, scope: !847)
!863 = !DILocation(line: 693, column: 24, scope: !847)
!864 = !DILocation(line: 693, column: 31, scope: !847)
!865 = !DILocation(line: 693, column: 17, scope: !847)
!866 = !DILocation(line: 694, column: 26, scope: !847)
!867 = !DILocation(line: 695, column: 24, scope: !847)
!868 = !DILocation(line: 696, column: 13, scope: !847)
!869 = !DILocation(line: 0, scope: !496)
!870 = !DILocation(line: 0, scope: !501)
!871 = !DILocation(line: 697, column: 24, scope: !497)
!872 = !DILocation(line: 697, column: 19, scope: !497)
!873 = !DILocation(line: 698, column: 13, scope: !497)
!874 = !DILocation(line: 699, column: 24, scope: !497)
!875 = !{!876, !411, i64 0}
!876 = !{!"atom_t", !411, i64 0, !411, i64 8, !536, i64 16, !536, i64 20, !405, i64 24, !411, i64 56, !717, i64 64, !717, i64 72, !717, i64 80, !717, i64 88, !411, i64 96, !536, i64 104, !717, i64 112, !717, i64 120, !536, i64 128, !536, i64 132, !411, i64 136, !405, i64 144, !717, i64 168}
!877 = !DILocation(line: 699, column: 36, scope: !497)
!878 = !DILocation(line: 699, column: 13, scope: !497)
!879 = !DILocation(line: 700, column: 17, scope: !497)
!880 = !DILocation(line: 700, column: 24, scope: !497)
!881 = !{!876, !536, i64 16}
!882 = !DILocation(line: 701, column: 17, scope: !497)
!883 = !DILocation(line: 701, column: 27, scope: !497)
!884 = !{!876, !411, i64 56}
!885 = !DILocation(line: 702, column: 13, scope: !497)
!886 = !DILocation(line: 702, column: 26, scope: !497)
!887 = !DILocation(line: 703, column: 13, scope: !497)
!888 = !DILocation(line: 703, column: 26, scope: !497)
!889 = !DILocation(line: 704, column: 13, scope: !497)
!890 = !DILocation(line: 704, column: 26, scope: !497)
!891 = !DILocation(line: 705, column: 28, scope: !497)
!892 = !DILocation(line: 705, column: 17, scope: !497)
!893 = !DILocation(line: 705, column: 26, scope: !497)
!894 = !{!876, !717, i64 64}
!895 = !DILocation(line: 706, column: 28, scope: !497)
!896 = !DILocation(line: 706, column: 17, scope: !497)
!897 = !DILocation(line: 706, column: 26, scope: !497)
!898 = !{!876, !717, i64 72}
!899 = !DILocation(line: 707, column: 17, scope: !497)
!900 = !DILocation(line: 707, column: 23, scope: !497)
!901 = !{!876, !717, i64 88}
!902 = !DILocation(line: 708, column: 17, scope: !497)
!903 = !DILocation(line: 708, column: 25, scope: !497)
!904 = !{!876, !717, i64 80}
!905 = !DILocation(line: 709, column: 19, scope: !497)
!906 = !DILocation(line: 711, column: 9, scope: !497)
!907 = !DILocation(line: 711, column: 35, scope: !908)
!908 = distinct !DILexicalBlock(scope: !498, file: !3, line: 711, column: 20)
!909 = !DILocation(line: 711, column: 20, scope: !908)
!910 = !DILocation(line: 711, column: 44, scope: !908)
!911 = !DILocation(line: 711, column: 20, scope: !498)
!912 = !DILocation(line: 712, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 712, column: 17)
!914 = distinct !DILexicalBlock(scope: !908, file: !3, line: 711, column: 50)
!915 = !DILocation(line: 712, column: 24, scope: !913)
!916 = !DILocation(line: 712, column: 17, scope: !914)
!917 = !DILocation(line: 713, column: 28, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !3, line: 712, column: 29)
!919 = !DILocation(line: 713, column: 39, scope: !918)
!920 = !DILocation(line: 713, column: 17, scope: !918)
!921 = !DILocation(line: 714, column: 28, scope: !918)
!922 = !DILocation(line: 714, column: 37, scope: !918)
!923 = !DILocation(line: 714, column: 17, scope: !918)
!924 = !DILocation(line: 715, column: 27, scope: !918)
!925 = !DILocation(line: 716, column: 32, scope: !918)
!926 = !DILocation(line: 716, column: 30, scope: !918)
!927 = !DILocation(line: 717, column: 17, scope: !918)
!928 = !DILocation(line: 718, column: 33, scope: !918)
!929 = !DILocation(line: 718, column: 17, scope: !918)
!930 = !DILocation(line: 719, column: 17, scope: !918)
!931 = !DILocation(line: 720, column: 24, scope: !918)
!932 = !DILocation(line: 721, column: 13, scope: !918)
!933 = !DILocation(line: 723, column: 13, scope: !914)
!934 = !DILocation(line: 723, column: 22, scope: !914)
!935 = !DILocation(line: 724, column: 13, scope: !914)
!936 = !DILocation(line: 724, column: 20, scope: !914)
!937 = !DILocation(line: 726, column: 9, scope: !914)
!938 = !DILocation(line: 726, column: 35, scope: !939)
!939 = distinct !DILexicalBlock(scope: !908, file: !3, line: 726, column: 20)
!940 = !DILocation(line: 726, column: 20, scope: !939)
!941 = !DILocation(line: 726, column: 44, scope: !939)
!942 = !DILocation(line: 726, column: 20, scope: !908)
!943 = !DILocation(line: 0, scope: !498)
!944 = distinct !{!944, !945, !946}
!945 = !DILocation(line: 496, column: 5, scope: !501)
!946 = !DILocation(line: 728, column: 5, scope: !501)
!947 = !DILocation(line: 729, column: 9, scope: !948)
!948 = distinct !DILexicalBlock(scope: !454, file: !3, line: 729, column: 9)
!949 = !DILocation(line: 729, column: 16, scope: !948)
!950 = !DILocation(line: 729, column: 9, scope: !454)
!951 = !DILocation(line: 730, column: 20, scope: !952)
!952 = distinct !DILexicalBlock(scope: !948, file: !3, line: 729, column: 21)
!953 = !DILocation(line: 730, column: 31, scope: !952)
!954 = !DILocation(line: 730, column: 9, scope: !952)
!955 = !DILocation(line: 731, column: 20, scope: !952)
!956 = !DILocation(line: 731, column: 29, scope: !952)
!957 = !DILocation(line: 731, column: 9, scope: !952)
!958 = !DILocation(line: 732, column: 19, scope: !952)
!959 = !DILocation(line: 733, column: 24, scope: !952)
!960 = !DILocation(line: 733, column: 22, scope: !952)
!961 = !DILocation(line: 734, column: 9, scope: !952)
!962 = !DILocation(line: 735, column: 25, scope: !952)
!963 = !DILocation(line: 735, column: 9, scope: !952)
!964 = !DILocation(line: 736, column: 9, scope: !952)
!965 = !DILocation(line: 737, column: 5, scope: !952)
!966 = !DILocation(line: 739, column: 10, scope: !454)
!967 = !DILocation(line: 739, column: 19, scope: !454)
!968 = !{!809, !536, i64 120}
!969 = !DILocation(line: 742, column: 1, scope: !454)
!970 = !DILocation(line: 741, column: 5, scope: !454)
!971 = !DILocation(line: 0, scope: !2)
!972 = !DILocation(line: 162, column: 5, scope: !2)
!973 = !DILocation(line: 162, column: 10, scope: !2)
!974 = !DILocation(line: 163, column: 12, scope: !2)
!975 = !DILocation(line: 168, column: 5, scope: !2)
!976 = !DILocation(line: 169, column: 15, scope: !977)
!977 = distinct !DILexicalBlock(scope: !2, file: !3, line: 169, column: 9)
!978 = !DILocation(line: 169, column: 23, scope: !977)
!979 = !DILocation(line: 169, column: 26, scope: !977)
!980 = !DILocation(line: 169, column: 33, scope: !977)
!981 = !DILocation(line: 169, column: 9, scope: !2)
!982 = !DILocation(line: 170, column: 17, scope: !983)
!983 = distinct !DILexicalBlock(scope: !977, file: !3, line: 169, column: 42)
!984 = !DILocation(line: 170, column: 9, scope: !983)
!985 = !DILocation(line: 172, column: 9, scope: !983)
!986 = !DILocation(line: 173, column: 17, scope: !987)
!987 = distinct !DILexicalBlock(scope: !977, file: !3, line: 173, column: 16)
!988 = !DILocation(line: 173, column: 16, scope: !977)
!989 = !DILocation(line: 174, column: 14, scope: !987)
!990 = !DILocation(line: 174, column: 9, scope: !987)
!991 = !DILocation(line: 175, column: 20, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !3, line: 175, column: 14)
!993 = !DILocation(line: 175, column: 39, scope: !992)
!994 = !DILocation(line: 175, column: 14, scope: !987)
!995 = !DILocation(line: 176, column: 17, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !3, line: 175, column: 48)
!997 = !DILocation(line: 176, column: 9, scope: !996)
!998 = !DILocation(line: 178, column: 9, scope: !996)
!999 = !DILocation(line: 0, scope: !987)
!1000 = !DILocation(line: 180, column: 23, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 180, column: 5)
!1002 = distinct !DILexicalBlock(scope: !2, file: !3, line: 180, column: 5)
!1003 = !DILocation(line: 180, column: 17, scope: !1001)
!1004 = !DILocation(line: 180, column: 5, scope: !1002)
!1005 = distinct !{!1005, !1004, !1006}
!1006 = !DILocation(line: 201, column: 5, scope: !1002)
!1007 = !DILocation(line: 181, column: 13, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 181, column: 13)
!1009 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 180, column: 49)
!1010 = !DILocation(line: 181, column: 19, scope: !1008)
!1011 = !DILocation(line: 181, column: 13, scope: !1009)
!1012 = !DILocation(line: 184, column: 22, scope: !1009)
!1013 = !DILocation(line: 185, column: 23, scope: !1009)
!1014 = !DILocation(line: 185, column: 35, scope: !1009)
!1015 = !DILocation(line: 185, column: 47, scope: !1009)
!1016 = !DILocation(line: 185, column: 59, scope: !1009)
!1017 = !DILocation(line: 184, column: 15, scope: !1009)
!1018 = !DILocation(line: 190, column: 17, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 190, column: 13)
!1020 = !DILocation(line: 190, column: 13, scope: !1009)
!1021 = !DILocation(line: 191, column: 21, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 190, column: 23)
!1023 = !DILocation(line: 193, column: 23, scope: !1022)
!1024 = !DILocation(line: 191, column: 13, scope: !1022)
!1025 = !DILocation(line: 194, column: 13, scope: !1022)
!1026 = !DILocation(line: 196, column: 13, scope: !1022)
!1027 = !DILocation(line: 198, column: 10, scope: !1009)
!1028 = !DILocation(line: 199, column: 15, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 199, column: 13)
!1030 = !DILocation(line: 199, column: 13, scope: !1009)
!1031 = !DILocation(line: 200, column: 13, scope: !1029)
!1032 = !DILocation(line: 202, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !2, file: !3, line: 202, column: 9)
!1034 = !DILocation(line: 0, scope: !1002)
!1035 = !DILocation(line: 202, column: 9, scope: !2)
!1036 = !DILocation(line: 203, column: 17, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 202, column: 17)
!1038 = !DILocation(line: 203, column: 9, scope: !1037)
!1039 = !DILocation(line: 205, column: 9, scope: !1037)
!1040 = !DILocation(line: 207, column: 9, scope: !1037)
!1041 = !DILocation(line: 210, column: 3, scope: !2)
!1042 = !DILocation(line: 212, column: 12, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !2, file: !3, line: 212, column: 9)
!1044 = !DILocation(line: 212, column: 20, scope: !1043)
!1045 = !DILocation(line: 213, column: 9, scope: !1043)
!1046 = !DILocation(line: 217, column: 1, scope: !2)
!1047 = !DILocation(line: 216, column: 5, scope: !2)
!1048 = distinct !DISubprogram(name: "putpdb", scope: !3, file: !3, line: 225, type: !1049, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!37, !13, !391, !13}
!1051 = !{!1052, !1053, !1054, !1055, !1056}
!1052 = !DILocalVariable(name: "fname", arg: 1, scope: !1048, file: !3, line: 225, type: !13)
!1053 = !DILocalVariable(name: "mol", arg: 2, scope: !1048, file: !3, line: 225, type: !391)
!1054 = !DILocalVariable(name: "options", arg: 3, scope: !1048, file: !3, line: 225, type: !13)
!1055 = !DILocalVariable(name: "fp", scope: !1048, file: !3, line: 227, type: !371)
!1056 = !DILocalVariable(name: "ier", scope: !1048, file: !3, line: 228, type: !37)
!1057 = !DILocation(line: 0, scope: !1048)
!1058 = !DILocation(line: 230, column: 10, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 230, column: 9)
!1060 = !DILocation(line: 230, column: 9, scope: !1048)
!1061 = !DILocation(line: 231, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 231, column: 13)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 230, column: 15)
!1064 = !DILocation(line: 231, column: 28, scope: !1062)
!1065 = !DILocation(line: 231, column: 13, scope: !1063)
!1066 = !DILocation(line: 232, column: 21, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 231, column: 34)
!1068 = !DILocation(line: 232, column: 13, scope: !1067)
!1069 = !DILocation(line: 233, column: 9, scope: !1067)
!1070 = !DILocation(line: 238, column: 9, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 238, column: 9)
!1072 = !DILocation(line: 238, column: 24, scope: !1071)
!1073 = !DILocation(line: 238, column: 9, scope: !1048)
!1074 = !DILocation(line: 239, column: 14, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 239, column: 13)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 238, column: 30)
!1077 = !DILocation(line: 239, column: 13, scope: !1076)
!1078 = !DILocation(line: 240, column: 18, scope: !1075)
!1079 = !DILocation(line: 240, column: 13, scope: !1075)
!1080 = !DILocation(line: 241, column: 24, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 241, column: 18)
!1082 = !DILocation(line: 241, column: 43, scope: !1081)
!1083 = !DILocation(line: 241, column: 18, scope: !1075)
!1084 = !DILocation(line: 242, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 241, column: 52)
!1086 = !DILocation(line: 244, column: 9, scope: !1085)
!1087 = !DILocation(line: 0, scope: !1075)
!1088 = !DILocation(line: 245, column: 13, scope: !1076)
!1089 = !DILocation(line: 246, column: 13, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 245, column: 23)
!1091 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 245, column: 13)
!1092 = !DILocation(line: 247, column: 23, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 247, column: 17)
!1094 = !DILocation(line: 247, column: 20, scope: !1093)
!1095 = !DILocation(line: 247, column: 17, scope: !1090)
!1096 = !DILocation(line: 248, column: 17, scope: !1093)
!1097 = !DILocation(line: 251, column: 5, scope: !1048)
!1098 = !DILocation(line: 253, column: 5, scope: !1048)
!1099 = !DILocation(line: 254, column: 1, scope: !1048)
!1100 = distinct !DISubprogram(name: "fputpdb", scope: !3, file: !3, line: 849, type: !1101, scopeLine: 862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !371, !391, !13}
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1118, !1119, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1104 = !DILocalVariable(name: "fp", arg: 1, scope: !1100, file: !3, line: 849, type: !371)
!1105 = !DILocalVariable(name: "mol", arg: 2, scope: !1100, file: !3, line: 849, type: !391)
!1106 = !DILocalVariable(name: "options", arg: 3, scope: !1100, file: !3, line: 849, type: !13)
!1107 = !DILocalVariable(name: "r", scope: !1100, file: !3, line: 863, type: !37)
!1108 = !DILocalVariable(name: "tr", scope: !1100, file: !3, line: 863, type: !37)
!1109 = !DILocalVariable(name: "rn", scope: !1100, file: !3, line: 863, type: !37)
!1110 = !DILocalVariable(name: "a", scope: !1100, file: !3, line: 863, type: !37)
!1111 = !DILocalVariable(name: "ta", scope: !1100, file: !3, line: 863, type: !37)
!1112 = !DILocalVariable(name: "cid", scope: !1100, file: !3, line: 864, type: !14)
!1113 = !DILocalVariable(name: "sp", scope: !1100, file: !3, line: 865, type: !128)
!1114 = !DILocalVariable(name: "res", scope: !1100, file: !3, line: 866, type: !144)
!1115 = !DILocalVariable(name: "ap", scope: !1100, file: !3, line: 867, type: !190)
!1116 = !DILocalVariable(name: "rname", scope: !1100, file: !3, line: 868, type: !1117)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !200)
!1118 = !DILocalVariable(name: "aname", scope: !1100, file: !3, line: 869, type: !1117)
!1119 = !DILocalVariable(name: "rid", scope: !1100, file: !3, line: 870, type: !1120)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 7)
!1123 = !DILocalVariable(name: "loptions", scope: !1100, file: !3, line: 871, type: !375)
!1124 = !DILocalVariable(name: "opt_pqr", scope: !1100, file: !3, line: 872, type: !37)
!1125 = !DILocalVariable(name: "opt_nobocc", scope: !1100, file: !3, line: 873, type: !37)
!1126 = !DILocalVariable(name: "opt_brook", scope: !1100, file: !3, line: 874, type: !37)
!1127 = !DILocalVariable(name: "opt_wwpdb", scope: !1100, file: !3, line: 875, type: !37)
!1128 = !DILocalVariable(name: "opt_tr", scope: !1100, file: !3, line: 876, type: !37)
!1129 = !DILocalVariable(name: "opt_nocid", scope: !1100, file: !3, line: 877, type: !37)
!1130 = !DILocalVariable(name: "opt_allcid", scope: !1100, file: !3, line: 878, type: !37)
!1131 = !DILocalVariable(name: "cidstate", scope: !1100, file: !3, line: 879, type: !343)
!1132 = !DILocation(line: 0, scope: !1100)
!1133 = !DILocation(line: 868, column: 5, scope: !1100)
!1134 = !DILocation(line: 868, column: 10, scope: !1100)
!1135 = !DILocation(line: 869, column: 5, scope: !1100)
!1136 = !DILocation(line: 869, column: 10, scope: !1100)
!1137 = !DILocation(line: 870, column: 5, scope: !1100)
!1138 = !DILocation(line: 870, column: 10, scope: !1100)
!1139 = !DILocation(line: 871, column: 5, scope: !1100)
!1140 = !DILocation(line: 871, column: 10, scope: !1100)
!1141 = !DILocation(line: 881, column: 10, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 881, column: 9)
!1143 = !DILocation(line: 881, column: 9, scope: !1100)
!1144 = !DILocation(line: 882, column: 17, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 881, column: 15)
!1146 = !DILocation(line: 882, column: 9, scope: !1145)
!1147 = !DILocation(line: 883, column: 9, scope: !1145)
!1148 = !DILocation(line: 885, column: 10, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 885, column: 9)
!1150 = !DILocation(line: 885, column: 9, scope: !1100)
!1151 = !DILocation(line: 886, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 885, column: 14)
!1153 = !DILocation(line: 886, column: 9, scope: !1152)
!1154 = !DILocation(line: 887, column: 9, scope: !1152)
!1155 = !DILocation(line: 890, column: 17, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 890, column: 9)
!1157 = !DILocation(line: 890, column: 9, scope: !1100)
!1158 = !DILocation(line: 891, column: 9, scope: !1156)
!1159 = !DILocation(line: 891, column: 19, scope: !1156)
!1160 = !DILocation(line: 893, column: 17, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 892, column: 10)
!1162 = !DILocation(line: 893, column: 9, scope: !1161)
!1163 = !DILocation(line: 894, column: 9, scope: !1161)
!1164 = !DILocation(line: 894, column: 23, scope: !1161)
!1165 = !DILocation(line: 896, column: 22, scope: !1100)
!1166 = !DILocation(line: 896, column: 15, scope: !1100)
!1167 = !DILocation(line: 896, column: 40, scope: !1100)
!1168 = !DILocation(line: 897, column: 25, scope: !1100)
!1169 = !DILocation(line: 897, column: 18, scope: !1100)
!1170 = !DILocation(line: 897, column: 46, scope: !1100)
!1171 = !DILocation(line: 898, column: 24, scope: !1100)
!1172 = !DILocation(line: 898, column: 17, scope: !1100)
!1173 = !DILocation(line: 898, column: 44, scope: !1100)
!1174 = !DILocation(line: 899, column: 24, scope: !1100)
!1175 = !DILocation(line: 899, column: 17, scope: !1100)
!1176 = !DILocation(line: 899, column: 44, scope: !1100)
!1177 = !DILocation(line: 900, column: 21, scope: !1100)
!1178 = !DILocation(line: 900, column: 14, scope: !1100)
!1179 = !DILocation(line: 900, column: 38, scope: !1100)
!1180 = !DILocation(line: 901, column: 24, scope: !1100)
!1181 = !DILocation(line: 901, column: 17, scope: !1100)
!1182 = !DILocation(line: 901, column: 44, scope: !1100)
!1183 = !DILocation(line: 902, column: 25, scope: !1100)
!1184 = !DILocation(line: 902, column: 18, scope: !1100)
!1185 = !DILocation(line: 902, column: 46, scope: !1100)
!1186 = !DILocation(line: 903, column: 9, scope: !1100)
!1187 = !DILocation(line: 905, column: 16, scope: !1100)
!1188 = !DILocation(line: 911, column: 36, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 911, column: 5)
!1190 = !DILocation(line: 911, column: 5, scope: !1189)
!1191 = !DILocation(line: 920, column: 15, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 911, column: 68)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 911, column: 5)
!1194 = !DILocation(line: 921, column: 29, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 921, column: 9)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 921, column: 9)
!1197 = !{!816, !536, i64 32}
!1198 = !DILocation(line: 921, column: 23, scope: !1195)
!1199 = !DILocation(line: 921, column: 9, scope: !1196)
!1200 = !DILocation(line: 922, column: 23, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 921, column: 53)
!1202 = !DILocation(line: 922, column: 19, scope: !1201)
!1203 = !DILocation(line: 923, column: 20, scope: !1201)
!1204 = !DILocation(line: 923, column: 30, scope: !1201)
!1205 = !DILocation(line: 923, column: 25, scope: !1201)
!1206 = !DILocation(line: 923, column: 45, scope: !1201)
!1207 = !DILocation(line: 923, column: 13, scope: !1201)
!1208 = !DILocation(line: 924, column: 17, scope: !1201)
!1209 = !DILocation(line: 925, column: 32, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 924, column: 17)
!1211 = !DILocation(line: 925, column: 17, scope: !1210)
!1212 = !DILocation(line: 926, column: 22, scope: !1210)
!1213 = !DILocation(line: 927, column: 32, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 926, column: 22)
!1215 = !DILocation(line: 927, column: 17, scope: !1214)
!1216 = !DILocation(line: 929, column: 24, scope: !1214)
!1217 = !DILocation(line: 929, column: 36, scope: !1214)
!1218 = !DILocation(line: 929, column: 17, scope: !1214)
!1219 = !DILocation(line: 930, column: 34, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 930, column: 13)
!1221 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 930, column: 13)
!1222 = !DILocation(line: 930, column: 27, scope: !1220)
!1223 = !DILocation(line: 930, column: 13, scope: !1221)
!1224 = !DILocation(line: 931, column: 19, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 930, column: 49)
!1226 = !DILocation(line: 932, column: 28, scope: !1225)
!1227 = !{!646, !411, i64 120}
!1228 = !DILocation(line: 932, column: 23, scope: !1225)
!1229 = !DILocation(line: 934, column: 21, scope: !1225)
!1230 = !DILocation(line: 935, column: 36, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 934, column: 21)
!1232 = !DILocation(line: 935, column: 47, scope: !1231)
!1233 = !DILocation(line: 935, column: 59, scope: !1231)
!1234 = !DILocation(line: 935, column: 21, scope: !1231)
!1235 = !DILocation(line: 936, column: 26, scope: !1231)
!1236 = !DILocation(line: 937, column: 36, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 936, column: 26)
!1238 = !DILocation(line: 937, column: 47, scope: !1237)
!1239 = !DILocation(line: 937, column: 59, scope: !1237)
!1240 = !DILocation(line: 937, column: 21, scope: !1237)
!1241 = !DILocation(line: 939, column: 28, scope: !1237)
!1242 = !DILocation(line: 939, column: 39, scope: !1237)
!1243 = !DILocation(line: 939, column: 21, scope: !1237)
!1244 = !DILocation(line: 941, column: 29, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 941, column: 21)
!1246 = !DILocation(line: 941, column: 22, scope: !1245)
!1247 = !DILocation(line: 941, column: 38, scope: !1245)
!1248 = !DILocation(line: 948, column: 26, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 941, column: 49)
!1250 = !DILocation(line: 949, column: 28, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 949, column: 25)
!1252 = !DILocation(line: 949, column: 25, scope: !1249)
!1253 = !DILocation(line: 952, column: 37, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 949, column: 38)
!1255 = !DILocation(line: 952, column: 44, scope: !1254)
!1256 = !DILocation(line: 956, column: 33, scope: !1254)
!1257 = !DILocation(line: 957, column: 33, scope: !1254)
!1258 = !DILocation(line: 957, column: 47, scope: !1254)
!1259 = !DILocation(line: 957, column: 61, scope: !1254)
!1260 = !DILocation(line: 950, column: 25, scope: !1254)
!1261 = !DILocation(line: 958, column: 21, scope: !1254)
!1262 = !DILocation(line: 961, column: 36, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 958, column: 28)
!1264 = !DILocation(line: 961, column: 46, scope: !1263)
!1265 = !DILocation(line: 961, column: 53, scope: !1263)
!1266 = !DILocation(line: 965, column: 33, scope: !1263)
!1267 = !DILocation(line: 966, column: 33, scope: !1263)
!1268 = !DILocation(line: 966, column: 47, scope: !1263)
!1269 = !DILocation(line: 966, column: 61, scope: !1263)
!1270 = !DILocation(line: 959, column: 25, scope: !1263)
!1271 = !DILocation(line: 970, column: 28, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 970, column: 25)
!1273 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 968, column: 24)
!1274 = !DILocation(line: 970, column: 25, scope: !1273)
!1275 = !DILocation(line: 973, column: 37, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 970, column: 38)
!1277 = !DILocation(line: 973, column: 44, scope: !1276)
!1278 = !DILocation(line: 973, column: 51, scope: !1276)
!1279 = !DILocation(line: 974, column: 33, scope: !1276)
!1280 = !DILocation(line: 974, column: 47, scope: !1276)
!1281 = !DILocation(line: 974, column: 61, scope: !1276)
!1282 = !DILocation(line: 971, column: 25, scope: !1276)
!1283 = !DILocation(line: 975, column: 21, scope: !1276)
!1284 = !DILocation(line: 978, column: 36, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 975, column: 28)
!1286 = !DILocation(line: 978, column: 46, scope: !1285)
!1287 = !DILocation(line: 978, column: 53, scope: !1285)
!1288 = !DILocation(line: 978, column: 60, scope: !1285)
!1289 = !DILocation(line: 979, column: 33, scope: !1285)
!1290 = !DILocation(line: 979, column: 47, scope: !1285)
!1291 = !DILocation(line: 979, column: 61, scope: !1285)
!1292 = !DILocation(line: 976, column: 25, scope: !1285)
!1293 = !DILocation(line: 982, column: 21, scope: !1225)
!1294 = !DILocation(line: 985, column: 33, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 982, column: 30)
!1296 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 982, column: 21)
!1297 = !DILocation(line: 985, column: 47, scope: !1295)
!1298 = !DILocation(line: 984, column: 21, scope: !1295)
!1299 = !DILocation(line: 986, column: 17, scope: !1295)
!1300 = !DILocation(line: 986, column: 28, scope: !1296)
!1301 = !DILocation(line: 988, column: 33, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 986, column: 41)
!1303 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 986, column: 28)
!1304 = !DILocation(line: 988, column: 44, scope: !1302)
!1305 = !DILocation(line: 987, column: 21, scope: !1302)
!1306 = !DILocation(line: 989, column: 17, scope: !1302)
!1307 = !DILocation(line: 991, column: 32, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 991, column: 21)
!1309 = !DILocation(line: 992, column: 47, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 991, column: 74)
!1311 = !DILocation(line: 992, column: 21, scope: !1310)
!1312 = !DILocation(line: 993, column: 17, scope: !1310)
!1313 = !DILocation(line: 995, column: 17, scope: !1225)
!1314 = !DILocation(line: 930, column: 45, scope: !1220)
!1315 = distinct !{!1315, !1223, !1316}
!1316 = !DILocation(line: 997, column: 13, scope: !1221)
!1317 = !DILocation(line: 0, scope: !1189)
!1318 = !DILocation(line: 921, column: 43, scope: !1195)
!1319 = !DILocation(line: 921, column: 49, scope: !1195)
!1320 = distinct !{!1320, !1199, !1321}
!1321 = !DILocation(line: 999, column: 9, scope: !1196)
!1322 = !DILocation(line: 911, column: 13, scope: !1189)
!1323 = !DILocation(line: 1001, column: 9, scope: !1192)
!1324 = !DILocation(line: 911, column: 60, scope: !1193)
!1325 = distinct !{!1325, !1190, !1326}
!1326 = !DILocation(line: 1007, column: 5, scope: !1189)
!1327 = !DILocation(line: 1008, column: 5, scope: !1100)
!1328 = !DILocation(line: 1009, column: 1, scope: !1100)
!1329 = distinct !DISubprogram(name: "putcif", scope: !3, file: !3, line: 256, type: !1330, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!37, !13, !13, !391}
!1332 = !{!1333, !1334, !1335, !1336}
!1333 = !DILocalVariable(name: "fname", arg: 1, scope: !1329, file: !3, line: 256, type: !13)
!1334 = !DILocalVariable(name: "blockId", arg: 2, scope: !1329, file: !3, line: 256, type: !13)
!1335 = !DILocalVariable(name: "mol", arg: 3, scope: !1329, file: !3, line: 256, type: !391)
!1336 = !DILocalVariable(name: "fp", scope: !1329, file: !3, line: 258, type: !371)
!1337 = !DILocation(line: 0, scope: !1329)
!1338 = !DILocation(line: 260, column: 10, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 260, column: 9)
!1340 = !DILocation(line: 260, column: 9, scope: !1329)
!1341 = !DILocation(line: 261, column: 17, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 260, column: 15)
!1343 = !DILocation(line: 261, column: 9, scope: !1342)
!1344 = !DILocation(line: 262, column: 9, scope: !1342)
!1345 = !DILocation(line: 264, column: 10, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 264, column: 9)
!1347 = !DILocation(line: 264, column: 9, scope: !1329)
!1348 = !DILocation(line: 265, column: 14, scope: !1346)
!1349 = !DILocation(line: 265, column: 9, scope: !1346)
!1350 = !DILocation(line: 266, column: 20, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 266, column: 14)
!1352 = !DILocation(line: 266, column: 39, scope: !1351)
!1353 = !DILocation(line: 266, column: 14, scope: !1346)
!1354 = !DILocation(line: 267, column: 9, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 266, column: 48)
!1356 = !DILocation(line: 268, column: 9, scope: !1355)
!1357 = !DILocation(line: 0, scope: !1346)
!1358 = !DILocation(line: 270, column: 5, scope: !1329)
!1359 = !DILocation(line: 271, column: 15, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 271, column: 9)
!1361 = !DILocation(line: 271, column: 12, scope: !1360)
!1362 = !DILocation(line: 271, column: 9, scope: !1329)
!1363 = !DILocation(line: 272, column: 9, scope: !1360)
!1364 = !DILocation(line: 274, column: 1, scope: !1329)
!1365 = distinct !DISubprogram(name: "fputcif", scope: !3, file: !3, line: 1381, type: !1366, scopeLine: 1382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !371, !13, !391}
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1369 = !DILocalVariable(name: "fp", arg: 1, scope: !1365, file: !3, line: 1381, type: !371)
!1370 = !DILocalVariable(name: "blockId", arg: 2, scope: !1365, file: !3, line: 1381, type: !13)
!1371 = !DILocalVariable(name: "mol", arg: 3, scope: !1365, file: !3, line: 1381, type: !391)
!1372 = !DILocalVariable(name: "r", scope: !1365, file: !3, line: 1383, type: !37)
!1373 = !DILocalVariable(name: "tr", scope: !1365, file: !3, line: 1383, type: !37)
!1374 = !DILocalVariable(name: "a", scope: !1365, file: !3, line: 1383, type: !37)
!1375 = !DILocalVariable(name: "ta", scope: !1365, file: !3, line: 1383, type: !37)
!1376 = !DILocalVariable(name: "strandnum", scope: !1365, file: !3, line: 1383, type: !37)
!1377 = !DILocalVariable(name: "cid", scope: !1365, file: !3, line: 1384, type: !14)
!1378 = !DILocalVariable(name: "sp", scope: !1365, file: !3, line: 1385, type: !128)
!1379 = !DILocalVariable(name: "res", scope: !1365, file: !3, line: 1386, type: !144)
!1380 = !DILocalVariable(name: "ap", scope: !1365, file: !3, line: 1387, type: !190)
!1381 = !DILocation(line: 0, scope: !1365)
!1382 = !DILocation(line: 1389, column: 5, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1389, column: 5)
!1384 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1389, column: 5)
!1385 = !DILocation(line: 1389, column: 5, scope: !1384)
!1386 = !DILocation(line: 1390, column: 5, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 1390, column: 5)
!1388 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1390, column: 5)
!1389 = !DILocation(line: 1390, column: 5, scope: !1388)
!1390 = !DILocation(line: 1392, column: 17, scope: !1365)
!1391 = !{!809, !536, i64 96}
!1392 = !DILocation(line: 1392, column: 28, scope: !1365)
!1393 = !DILocation(line: 1392, column: 11, scope: !1365)
!1394 = !DILocation(line: 1396, column: 5, scope: !1365)
!1395 = !DILocation(line: 1397, column: 5, scope: !1365)
!1396 = !DILocation(line: 1398, column: 5, scope: !1365)
!1397 = !DILocation(line: 1399, column: 5, scope: !1365)
!1398 = !DILocation(line: 1400, column: 5, scope: !1365)
!1399 = !DILocation(line: 1401, column: 5, scope: !1365)
!1400 = !DILocation(line: 1402, column: 5, scope: !1365)
!1401 = !DILocation(line: 1403, column: 5, scope: !1365)
!1402 = !DILocation(line: 1404, column: 5, scope: !1365)
!1403 = !DILocation(line: 1407, column: 36, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1407, column: 5)
!1405 = !DILocation(line: 1407, column: 5, scope: !1404)
!1406 = !DILocation(line: 1408, column: 18, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1407, column: 68)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1407, column: 5)
!1409 = !DILocation(line: 1409, column: 29, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1409, column: 9)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1409, column: 9)
!1412 = !DILocation(line: 1409, column: 23, scope: !1410)
!1413 = !DILocation(line: 1409, column: 9, scope: !1411)
!1414 = !DILocation(line: 1410, column: 23, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1409, column: 53)
!1416 = !DILocation(line: 1410, column: 19, scope: !1415)
!1417 = !DILocation(line: 1411, column: 34, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1411, column: 13)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 1411, column: 13)
!1420 = !DILocation(line: 1411, column: 27, scope: !1418)
!1421 = !DILocation(line: 1411, column: 13, scope: !1419)
!1422 = !DILocation(line: 1412, column: 19, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1411, column: 49)
!1424 = !DILocation(line: 1413, column: 28, scope: !1423)
!1425 = !DILocation(line: 1423, column: 33, scope: !1423)
!1426 = !DILocation(line: 1423, column: 50, scope: !1423)
!1427 = !DILocation(line: 1423, column: 61, scope: !1423)
!1428 = !DILocation(line: 1423, column: 69, scope: !1423)
!1429 = !DILocation(line: 1424, column: 25, scope: !1423)
!1430 = !DILocation(line: 1424, column: 39, scope: !1423)
!1431 = !DILocation(line: 1424, column: 53, scope: !1423)
!1432 = !DILocation(line: 1421, column: 17, scope: !1423)
!1433 = !DILocation(line: 1411, column: 45, scope: !1418)
!1434 = distinct !{!1434, !1421, !1435}
!1435 = !DILocation(line: 1426, column: 13, scope: !1419)
!1436 = !DILocation(line: 0, scope: !1404)
!1437 = !DILocation(line: 1409, column: 43, scope: !1410)
!1438 = !DILocation(line: 1409, column: 49, scope: !1410)
!1439 = distinct !{!1439, !1413, !1440}
!1440 = !DILocation(line: 1427, column: 9, scope: !1411)
!1441 = !DILocation(line: 1407, column: 13, scope: !1404)
!1442 = !DILocation(line: 1428, column: 18, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1428, column: 13)
!1444 = !DILocation(line: 1428, column: 29, scope: !1443)
!1445 = !DILocation(line: 1428, column: 13, scope: !1407)
!1446 = !DILocation(line: 1407, column: 60, scope: !1408)
!1447 = distinct !{!1447, !1405, !1448}
!1448 = !DILocation(line: 1430, column: 5, scope: !1404)
!1449 = !DILocation(line: 1431, column: 1, scope: !1365)
!1450 = distinct !DISubprogram(name: "putbnd", scope: !3, file: !3, line: 276, type: !1451, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!37, !13, !391}
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1454 = !DILocalVariable(name: "fname", arg: 1, scope: !1450, file: !3, line: 276, type: !13)
!1455 = !DILocalVariable(name: "mol", arg: 2, scope: !1450, file: !3, line: 276, type: !391)
!1456 = !DILocalVariable(name: "fp", scope: !1450, file: !3, line: 278, type: !371)
!1457 = !DILocalVariable(name: "sp", scope: !1450, file: !3, line: 279, type: !128)
!1458 = !DILocalVariable(name: "res", scope: !1450, file: !3, line: 280, type: !144)
!1459 = !DILocalVariable(name: "a", scope: !1450, file: !3, line: 281, type: !37)
!1460 = !DILocalVariable(name: "ta", scope: !1450, file: !3, line: 281, type: !37)
!1461 = !DILocalVariable(name: "ai", scope: !1450, file: !3, line: 281, type: !37)
!1462 = !DILocalVariable(name: "aj", scope: !1450, file: !3, line: 281, type: !37)
!1463 = !DILocalVariable(name: "r", scope: !1450, file: !3, line: 281, type: !37)
!1464 = !DILocalVariable(name: "rj", scope: !1450, file: !3, line: 281, type: !37)
!1465 = !DILocalVariable(name: "tr", scope: !1450, file: !3, line: 281, type: !37)
!1466 = !DILocalVariable(name: "rval", scope: !1450, file: !3, line: 282, type: !37)
!1467 = !DILocalVariable(name: "aoff", scope: !1450, file: !3, line: 283, type: !109)
!1468 = !DILocalVariable(name: "b", scope: !1450, file: !3, line: 284, type: !37)
!1469 = !DILocalVariable(name: "ebp", scope: !1450, file: !3, line: 285, type: !160)
!1470 = !DILabel(scope: !1450, name: "clean_up", file: !3, line: 338)
!1471 = !DILocation(line: 0, scope: !1450)
!1472 = !DILocation(line: 287, column: 10, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 287, column: 9)
!1474 = !DILocation(line: 287, column: 9, scope: !1450)
!1475 = !DILocation(line: 288, column: 17, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 287, column: 15)
!1477 = !DILocation(line: 288, column: 9, scope: !1476)
!1478 = !DILocation(line: 289, column: 9, scope: !1476)
!1479 = !DILocation(line: 291, column: 15, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 291, column: 9)
!1481 = !DILocation(line: 291, column: 34, scope: !1480)
!1482 = !DILocation(line: 291, column: 9, scope: !1450)
!1483 = !DILocation(line: 292, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 291, column: 43)
!1485 = !DILocation(line: 293, column: 9, scope: !1484)
!1486 = !DILocation(line: 296, column: 28, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 296, column: 5)
!1488 = !DILocation(line: 296, column: 5, scope: !1487)
!1489 = !DILocation(line: 297, column: 19, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 296, column: 5)
!1491 = !DILocation(line: 297, column: 12, scope: !1490)
!1492 = !DILocation(line: 296, column: 52, scope: !1490)
!1493 = distinct !{!1493, !1488, !1494}
!1494 = !DILocation(line: 297, column: 19, scope: !1487)
!1495 = !DILocation(line: 0, scope: !1487)
!1496 = !DILocation(line: 299, column: 32, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 299, column: 9)
!1498 = !DILocation(line: 299, column: 35, scope: !1497)
!1499 = !DILocation(line: 299, column: 25, scope: !1497)
!1500 = !DILocation(line: 299, column: 17, scope: !1497)
!1501 = !DILocation(line: 299, column: 51, scope: !1497)
!1502 = !DILocation(line: 299, column: 9, scope: !1450)
!1503 = !DILocation(line: 300, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 299, column: 60)
!1505 = !DILocation(line: 302, column: 9, scope: !1504)
!1506 = !DILocation(line: 305, column: 36, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 305, column: 5)
!1508 = !DILocation(line: 305, column: 5, scope: !1507)
!1509 = !DILocation(line: 306, column: 9, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 305, column: 68)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 305, column: 5)
!1512 = !DILocation(line: 306, column: 18, scope: !1510)
!1513 = !DILocation(line: 307, column: 17, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 307, column: 13)
!1515 = !DILocation(line: 307, column: 29, scope: !1514)
!1516 = !DILocation(line: 307, column: 13, scope: !1510)
!1517 = !DILocation(line: 308, column: 23, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 307, column: 34)
!1519 = !DILocation(line: 308, column: 19, scope: !1518)
!1520 = !DILocation(line: 308, column: 38, scope: !1518)
!1521 = !DILocation(line: 308, column: 16, scope: !1518)
!1522 = !DILocation(line: 309, column: 18, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 309, column: 13)
!1524 = !DILocation(line: 309, column: 33, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 309, column: 13)
!1526 = !DILocation(line: 309, column: 27, scope: !1525)
!1527 = !DILocation(line: 309, column: 13, scope: !1523)
!1528 = !DILocation(line: 310, column: 25, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 309, column: 51)
!1530 = !DILocation(line: 310, column: 17, scope: !1529)
!1531 = !DILocation(line: 310, column: 30, scope: !1529)
!1532 = !DILocation(line: 311, column: 27, scope: !1529)
!1533 = !DILocation(line: 311, column: 23, scope: !1529)
!1534 = !DILocation(line: 311, column: 42, scope: !1529)
!1535 = !DILocation(line: 311, column: 20, scope: !1529)
!1536 = !DILocation(line: 309, column: 47, scope: !1525)
!1537 = distinct !{!1537, !1527, !1538}
!1538 = !DILocation(line: 312, column: 13, scope: !1523)
!1539 = !DILocation(line: 0, scope: !1518)
!1540 = !DILocation(line: 313, column: 23, scope: !1518)
!1541 = !DILocation(line: 313, column: 16, scope: !1518)
!1542 = !DILocation(line: 314, column: 9, scope: !1518)
!1543 = !DILocation(line: 0, scope: !1507)
!1544 = !DILocation(line: 305, column: 60, scope: !1511)
!1545 = distinct !{!1545, !1508, !1546}
!1546 = !DILocation(line: 315, column: 5, scope: !1507)
!1547 = !DILocation(line: 317, column: 28, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 317, column: 5)
!1549 = !DILocation(line: 317, column: 5, scope: !1548)
!1550 = !DILocation(line: 318, column: 14, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 318, column: 9)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 317, column: 60)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 317, column: 5)
!1554 = !DILocation(line: 318, column: 29, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 318, column: 9)
!1556 = !DILocation(line: 318, column: 23, scope: !1555)
!1557 = !DILocation(line: 318, column: 9, scope: !1551)
!1558 = !DILocation(line: 319, column: 23, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 318, column: 47)
!1560 = !DILocation(line: 319, column: 19, scope: !1559)
!1561 = !DILocation(line: 320, column: 24, scope: !1559)
!1562 = !DILocation(line: 320, column: 17, scope: !1559)
!1563 = !DILocation(line: 321, column: 34, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 321, column: 13)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 321, column: 13)
!1566 = !{!646, !536, i64 72}
!1567 = !DILocation(line: 321, column: 27, scope: !1564)
!1568 = !DILocation(line: 321, column: 13, scope: !1565)
!1569 = !DILocation(line: 323, column: 30, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 321, column: 52)
!1571 = !{!646, !411, i64 80}
!1572 = !DILocation(line: 323, column: 25, scope: !1570)
!1573 = !DILocation(line: 323, column: 47, scope: !1570)
!1574 = !DILocation(line: 324, column: 25, scope: !1570)
!1575 = !DILocation(line: 324, column: 47, scope: !1570)
!1576 = !DILocation(line: 322, column: 17, scope: !1570)
!1577 = !DILocation(line: 321, column: 48, scope: !1564)
!1578 = distinct !{!1578, !1568, !1579}
!1579 = !DILocation(line: 325, column: 13, scope: !1565)
!1580 = !DILocation(line: 326, column: 29, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 326, column: 13)
!1582 = !{!646, !411, i64 64}
!1583 = !DILocation(line: 326, column: 13, scope: !1581)
!1584 = !DILocation(line: 327, column: 32, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 327, column: 21)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 326, column: 66)
!1587 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 326, column: 13)
!1588 = !{!1589, !536, i64 12}
!1589 = !{!"extbond_t", !411, i64 0, !536, i64 8, !536, i64 12, !536, i64 16}
!1590 = !DILocation(line: 327, column: 41, scope: !1585)
!1591 = !DILocation(line: 327, column: 21, scope: !1586)
!1592 = !DILocation(line: 329, column: 30, scope: !1586)
!1593 = !DILocation(line: 329, column: 22, scope: !1586)
!1594 = !DILocation(line: 330, column: 30, scope: !1586)
!1595 = !DILocation(line: 330, column: 35, scope: !1586)
!1596 = !DILocation(line: 330, column: 22, scope: !1586)
!1597 = !DILocation(line: 332, column: 30, scope: !1586)
!1598 = !{!1589, !536, i64 8}
!1599 = !DILocation(line: 332, column: 38, scope: !1586)
!1600 = !DILocation(line: 332, column: 49, scope: !1586)
!1601 = !{!1589, !536, i64 16}
!1602 = !DILocation(line: 332, column: 58, scope: !1586)
!1603 = !DILocation(line: 331, column: 17, scope: !1586)
!1604 = !DILocation(line: 333, column: 13, scope: !1586)
!1605 = !DILocation(line: 326, column: 57, scope: !1587)
!1606 = !{!1589, !411, i64 0}
!1607 = distinct !{!1607, !1583, !1608}
!1608 = !DILocation(line: 333, column: 13, scope: !1581)
!1609 = !DILocation(line: 318, column: 43, scope: !1555)
!1610 = distinct !{!1610, !1557, !1611}
!1611 = !DILocation(line: 334, column: 9, scope: !1551)
!1612 = !DILocation(line: 335, column: 19, scope: !1552)
!1613 = !DILocation(line: 335, column: 12, scope: !1552)
!1614 = !DILocation(line: 317, column: 52, scope: !1553)
!1615 = distinct !{!1615, !1549, !1616}
!1616 = !DILocation(line: 336, column: 5, scope: !1548)
!1617 = !DILocation(line: 338, column: 3, scope: !1450)
!1618 = !DILocation(line: 339, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 339, column: 9)
!1620 = !DILocation(line: 339, column: 9, scope: !1450)
!1621 = !DILocation(line: 340, column: 9, scope: !1619)
!1622 = !DILocation(line: 342, column: 5, scope: !1450)
!1623 = !DILocation(line: 344, column: 5, scope: !1450)
!1624 = !DILocation(line: 345, column: 1, scope: !1450)
!1625 = distinct !DISubprogram(name: "putdist", scope: !3, file: !3, line: 347, type: !1626, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1628)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!37, !13, !391, !13, !13}
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646}
!1629 = !DILocalVariable(name: "fname", arg: 1, scope: !1625, file: !3, line: 347, type: !13)
!1630 = !DILocalVariable(name: "mol", arg: 2, scope: !1625, file: !3, line: 347, type: !391)
!1631 = !DILocalVariable(name: "aexp1", arg: 3, scope: !1625, file: !3, line: 347, type: !13)
!1632 = !DILocalVariable(name: "aexp2", arg: 4, scope: !1625, file: !3, line: 347, type: !13)
!1633 = !DILocalVariable(name: "fp", scope: !1625, file: !3, line: 349, type: !371)
!1634 = !DILocalVariable(name: "sp1", scope: !1625, file: !3, line: 350, type: !128)
!1635 = !DILocalVariable(name: "res1", scope: !1625, file: !3, line: 351, type: !144)
!1636 = !DILocalVariable(name: "res2", scope: !1625, file: !3, line: 351, type: !144)
!1637 = !DILocalVariable(name: "ap1", scope: !1625, file: !3, line: 352, type: !190)
!1638 = !DILocalVariable(name: "ap2", scope: !1625, file: !3, line: 352, type: !190)
!1639 = !DILocalVariable(name: "tr", scope: !1625, file: !3, line: 353, type: !37)
!1640 = !DILocalVariable(name: "r1", scope: !1625, file: !3, line: 353, type: !37)
!1641 = !DILocalVariable(name: "r2", scope: !1625, file: !3, line: 353, type: !37)
!1642 = !DILocalVariable(name: "a1", scope: !1625, file: !3, line: 353, type: !37)
!1643 = !DILocalVariable(name: "a2", scope: !1625, file: !3, line: 353, type: !37)
!1644 = !DILocalVariable(name: "res", scope: !1625, file: !3, line: 354, type: !143)
!1645 = !DILocalVariable(name: "cnt", scope: !1625, file: !3, line: 355, type: !37)
!1646 = !DILabel(scope: !1625, name: "clean_up", file: !3, line: 420)
!1647 = !DILocation(line: 0, scope: !1625)
!1648 = !DILocation(line: 357, column: 10, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 357, column: 9)
!1650 = !DILocation(line: 357, column: 9, scope: !1625)
!1651 = !DILocation(line: 358, column: 17, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 357, column: 15)
!1653 = !DILocation(line: 358, column: 9, scope: !1652)
!1654 = !DILocation(line: 359, column: 9, scope: !1652)
!1655 = !DILocation(line: 362, column: 5, scope: !1625)
!1656 = !DILocation(line: 363, column: 21, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 363, column: 5)
!1658 = !DILocation(line: 363, column: 5, scope: !1657)
!1659 = !DILocation(line: 364, column: 14, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 363, column: 56)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 363, column: 5)
!1662 = !DILocation(line: 364, column: 21, scope: !1660)
!1663 = !{!816, !536, i64 12}
!1664 = !DILocation(line: 365, column: 24, scope: !1660)
!1665 = !DILocation(line: 365, column: 14, scope: !1660)
!1666 = !DILocation(line: 365, column: 21, scope: !1660)
!1667 = !DILocation(line: 366, column: 32, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 366, column: 9)
!1669 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 366, column: 9)
!1670 = !DILocation(line: 366, column: 25, scope: !1668)
!1671 = !DILocation(line: 366, column: 9, scope: !1669)
!1672 = !DILocation(line: 367, column: 25, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 366, column: 51)
!1674 = !DILocation(line: 367, column: 20, scope: !1673)
!1675 = !DILocation(line: 368, column: 19, scope: !1673)
!1676 = !DILocation(line: 368, column: 26, scope: !1673)
!1677 = !{!646, !536, i64 40}
!1678 = !DILocation(line: 369, column: 29, scope: !1673)
!1679 = !DILocation(line: 369, column: 19, scope: !1673)
!1680 = !DILocation(line: 369, column: 26, scope: !1673)
!1681 = !DILocation(line: 370, column: 38, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 370, column: 13)
!1683 = !DILocation(line: 370, column: 58, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 370, column: 13)
!1685 = !DILocation(line: 370, column: 50, scope: !1684)
!1686 = !DILocation(line: 370, column: 13, scope: !1682)
!1687 = !DILocation(line: 372, column: 22, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 371, column: 31)
!1689 = !DILocation(line: 372, column: 29, scope: !1688)
!1690 = !DILocation(line: 373, column: 32, scope: !1688)
!1691 = !DILocation(line: 373, column: 22, scope: !1688)
!1692 = !DILocation(line: 373, column: 29, scope: !1688)
!1693 = !DILocation(line: 371, column: 20, scope: !1684)
!1694 = !DILocation(line: 371, column: 27, scope: !1684)
!1695 = distinct !{!1695, !1686, !1696}
!1696 = !DILocation(line: 374, column: 13, scope: !1682)
!1697 = !DILocation(line: 366, column: 47, scope: !1668)
!1698 = distinct !{!1698, !1671, !1699}
!1699 = !DILocation(line: 375, column: 9, scope: !1669)
!1700 = !DILocation(line: 363, column: 48, scope: !1661)
!1701 = distinct !{!1701, !1658, !1702}
!1702 = !DILocation(line: 376, column: 5, scope: !1657)
!1703 = !DILocation(line: 377, column: 5, scope: !1625)
!1704 = !DILocation(line: 379, column: 29, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 379, column: 5)
!1706 = !DILocation(line: 379, column: 5, scope: !1705)
!1707 = !DILocation(line: 380, column: 20, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 379, column: 5)
!1709 = !DILocation(line: 380, column: 12, scope: !1708)
!1710 = !DILocation(line: 379, column: 56, scope: !1708)
!1711 = distinct !{!1711, !1706, !1712}
!1712 = !DILocation(line: 380, column: 20, scope: !1705)
!1713 = !DILocation(line: 0, scope: !1705)
!1714 = !DILocation(line: 381, column: 38, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 381, column: 9)
!1716 = !DILocation(line: 381, column: 41, scope: !1715)
!1717 = !DILocation(line: 381, column: 31, scope: !1715)
!1718 = !DILocation(line: 381, column: 16, scope: !1715)
!1719 = !DILocation(line: 382, column: 9, scope: !1715)
!1720 = !DILocation(line: 381, column: 9, scope: !1625)
!1721 = !DILocation(line: 383, column: 17, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 382, column: 18)
!1723 = !DILocation(line: 383, column: 9, scope: !1722)
!1724 = !DILocation(line: 384, column: 9, scope: !1722)
!1725 = !DILocation(line: 386, column: 29, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 386, column: 5)
!1727 = !DILocation(line: 386, column: 5, scope: !1726)
!1728 = !DILocation(line: 387, column: 14, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 387, column: 9)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 386, column: 64)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 386, column: 5)
!1732 = !DILocation(line: 387, column: 32, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 387, column: 9)
!1734 = !DILocation(line: 387, column: 25, scope: !1733)
!1735 = !DILocation(line: 387, column: 9, scope: !1729)
!1736 = !DILocation(line: 388, column: 30, scope: !1733)
!1737 = !DILocation(line: 388, column: 25, scope: !1733)
!1738 = !DILocation(line: 388, column: 19, scope: !1733)
!1739 = !DILocation(line: 388, column: 13, scope: !1733)
!1740 = !DILocation(line: 388, column: 23, scope: !1733)
!1741 = !DILocation(line: 387, column: 47, scope: !1733)
!1742 = distinct !{!1742, !1735, !1743}
!1743 = !DILocation(line: 388, column: 43, scope: !1729)
!1744 = !DILocation(line: 386, column: 56, scope: !1731)
!1745 = distinct !{!1745, !1727, !1746}
!1746 = !DILocation(line: 389, column: 5, scope: !1726)
!1747 = !DILocation(line: 391, column: 15, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 391, column: 9)
!1749 = !DILocation(line: 391, column: 34, scope: !1748)
!1750 = !DILocation(line: 391, column: 9, scope: !1625)
!1751 = !DILocation(line: 392, column: 17, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 391, column: 43)
!1753 = !DILocation(line: 392, column: 9, scope: !1752)
!1754 = !DILocation(line: 393, column: 9, scope: !1752)
!1755 = !DILocation(line: 396, column: 10, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 396, column: 5)
!1757 = !DILocation(line: 396, column: 30, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 396, column: 5)
!1759 = !DILocation(line: 396, column: 5, scope: !1756)
!1760 = !DILocation(line: 397, column: 16, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 396, column: 42)
!1762 = !DILocation(line: 398, column: 33, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 398, column: 9)
!1764 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 398, column: 9)
!1765 = !DILocation(line: 398, column: 25, scope: !1763)
!1766 = !DILocation(line: 398, column: 9, scope: !1764)
!1767 = !DILocation(line: 399, column: 26, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 398, column: 49)
!1769 = !DILocation(line: 399, column: 20, scope: !1768)
!1770 = !DILocation(line: 400, column: 36, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 400, column: 17)
!1772 = !DILocation(line: 400, column: 29, scope: !1771)
!1773 = !DILocation(line: 400, column: 17, scope: !1768)
!1774 = !DILocation(line: 401, column: 33, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 401, column: 17)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 401, column: 17)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 400, column: 44)
!1778 = !DILocation(line: 401, column: 17, scope: !1776)
!1779 = !DILocation(line: 402, column: 28, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 401, column: 45)
!1781 = !DILocation(line: 403, column: 45, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 403, column: 21)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 403, column: 21)
!1784 = !DILocation(line: 403, column: 37, scope: !1782)
!1785 = !DILocation(line: 403, column: 21, scope: !1783)
!1786 = !DILocation(line: 404, column: 38, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 403, column: 61)
!1788 = !DILocation(line: 404, column: 32, scope: !1787)
!1789 = !DILocation(line: 405, column: 46, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 405, column: 29)
!1791 = !DILocation(line: 405, column: 39, scope: !1790)
!1792 = !DILocation(line: 405, column: 29, scope: !1787)
!1793 = !DILocation(line: 408, column: 51, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 405, column: 54)
!1795 = !DILocation(line: 409, column: 42, scope: !1794)
!1796 = !DILocation(line: 410, column: 43, scope: !1794)
!1797 = !DILocation(line: 410, column: 59, scope: !1794)
!1798 = !DILocation(line: 411, column: 37, scope: !1794)
!1799 = !DILocation(line: 406, column: 29, scope: !1794)
!1800 = !DILocation(line: 412, column: 32, scope: !1794)
!1801 = !DILocation(line: 413, column: 25, scope: !1794)
!1802 = !DILocation(line: 0, scope: !1756)
!1803 = !DILocation(line: 403, column: 57, scope: !1782)
!1804 = distinct !{!1804, !1785, !1805}
!1805 = !DILocation(line: 414, column: 21, scope: !1783)
!1806 = !DILocation(line: 401, column: 41, scope: !1775)
!1807 = distinct !{!1807, !1778, !1808}
!1808 = !DILocation(line: 415, column: 17, scope: !1776)
!1809 = !DILocation(line: 396, column: 14, scope: !1756)
!1810 = !DILocation(line: 398, column: 45, scope: !1763)
!1811 = distinct !{!1811, !1766, !1812}
!1812 = !DILocation(line: 417, column: 9, scope: !1764)
!1813 = !DILocation(line: 396, column: 38, scope: !1758)
!1814 = distinct !{!1814, !1759, !1815}
!1815 = !DILocation(line: 418, column: 5, scope: !1756)
!1816 = !DILocation(line: 420, column: 3, scope: !1625)
!1817 = !DILocation(line: 421, column: 9, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 421, column: 9)
!1819 = !DILocation(line: 421, column: 9, scope: !1625)
!1820 = !DILocation(line: 422, column: 9, scope: !1818)
!1821 = !DILocation(line: 425, column: 1, scope: !1625)
!1822 = distinct !DISubprogram(name: "dist", scope: !3, file: !3, line: 839, type: !1823, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!10, !190, !190}
!1825 = !{!1826, !1827, !1828, !1829, !1830}
!1826 = !DILocalVariable(name: "ap1", arg: 1, scope: !1822, file: !3, line: 839, type: !190)
!1827 = !DILocalVariable(name: "ap2", arg: 2, scope: !1822, file: !3, line: 839, type: !190)
!1828 = !DILocalVariable(name: "dx", scope: !1822, file: !3, line: 841, type: !10)
!1829 = !DILocalVariable(name: "dy", scope: !1822, file: !3, line: 841, type: !10)
!1830 = !DILocalVariable(name: "dz", scope: !1822, file: !3, line: 841, type: !10)
!1831 = !DILocation(line: 0, scope: !1822)
!1832 = !DILocation(line: 843, column: 10, scope: !1822)
!1833 = !DILocation(line: 843, column: 26, scope: !1822)
!1834 = !DILocation(line: 843, column: 24, scope: !1822)
!1835 = !DILocation(line: 844, column: 10, scope: !1822)
!1836 = !DILocation(line: 844, column: 26, scope: !1822)
!1837 = !DILocation(line: 844, column: 24, scope: !1822)
!1838 = !DILocation(line: 845, column: 10, scope: !1822)
!1839 = !DILocation(line: 845, column: 26, scope: !1822)
!1840 = !DILocation(line: 845, column: 24, scope: !1822)
!1841 = !DILocation(line: 846, column: 21, scope: !1822)
!1842 = !DILocation(line: 846, column: 31, scope: !1822)
!1843 = !DILocation(line: 846, column: 26, scope: !1822)
!1844 = !DILocation(line: 846, column: 41, scope: !1822)
!1845 = !DILocation(line: 846, column: 36, scope: !1822)
!1846 = !DILocation(line: 846, column: 13, scope: !1822)
!1847 = !DILocation(line: 846, column: 5, scope: !1822)
!1848 = distinct !DISubprogram(name: "putmatrix", scope: !3, file: !3, line: 427, type: !1849, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1853)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!37, !13, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !184)
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1854 = !DILocalVariable(name: "fname", arg: 1, scope: !1848, file: !3, line: 427, type: !13)
!1855 = !DILocalVariable(name: "mat", arg: 2, scope: !1848, file: !3, line: 427, type: !1851)
!1856 = !DILocalVariable(name: "fp", scope: !1848, file: !3, line: 429, type: !371)
!1857 = !DILocalVariable(name: "i", scope: !1848, file: !3, line: 430, type: !37)
!1858 = !DILocalVariable(name: "j", scope: !1848, file: !3, line: 430, type: !37)
!1859 = !DILocalVariable(name: "err", scope: !1848, file: !3, line: 431, type: !37)
!1860 = !DILabel(scope: !1848, name: "CLEAN_UP", file: !3, line: 451)
!1861 = !DILocation(line: 0, scope: !1848)
!1862 = !DILocation(line: 433, column: 15, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 433, column: 9)
!1864 = !DILocation(line: 433, column: 23, scope: !1863)
!1865 = !DILocation(line: 433, column: 26, scope: !1863)
!1866 = !DILocation(line: 433, column: 33, scope: !1863)
!1867 = !DILocation(line: 433, column: 9, scope: !1848)
!1868 = !DILocation(line: 434, column: 17, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 433, column: 42)
!1870 = !DILocation(line: 434, column: 9, scope: !1869)
!1871 = !DILocation(line: 436, column: 9, scope: !1869)
!1872 = !DILocation(line: 437, column: 17, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 437, column: 16)
!1874 = !DILocation(line: 437, column: 16, scope: !1863)
!1875 = !DILocation(line: 438, column: 14, scope: !1873)
!1876 = !DILocation(line: 438, column: 9, scope: !1873)
!1877 = !DILocation(line: 439, column: 20, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 439, column: 14)
!1879 = !DILocation(line: 439, column: 39, scope: !1878)
!1880 = !DILocation(line: 439, column: 14, scope: !1873)
!1881 = !DILocation(line: 440, column: 17, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 439, column: 48)
!1883 = !DILocation(line: 440, column: 9, scope: !1882)
!1884 = !DILocation(line: 442, column: 9, scope: !1882)
!1885 = !DILocation(line: 0, scope: !1873)
!1886 = !DILocation(line: 445, column: 5, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 445, column: 5)
!1888 = !DILocation(line: 446, column: 9, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 446, column: 9)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 445, column: 29)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 445, column: 5)
!1892 = !DILocation(line: 447, column: 32, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 446, column: 9)
!1894 = !DILocation(line: 447, column: 13, scope: !1893)
!1895 = !DILocation(line: 446, column: 29, scope: !1893)
!1896 = !DILocation(line: 446, column: 23, scope: !1893)
!1897 = distinct !{!1897, !1888, !1898}
!1898 = !DILocation(line: 447, column: 41, scope: !1889)
!1899 = !DILocation(line: 448, column: 9, scope: !1890)
!1900 = !DILocation(line: 445, column: 25, scope: !1891)
!1901 = !DILocation(line: 445, column: 19, scope: !1891)
!1902 = distinct !{!1902, !1886, !1903}
!1903 = !DILocation(line: 449, column: 5, scope: !1887)
!1904 = !DILocation(line: 451, column: 3, scope: !1848)
!1905 = !DILocation(line: 453, column: 12, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 453, column: 9)
!1907 = !DILocation(line: 453, column: 20, scope: !1906)
!1908 = !DILocation(line: 454, column: 9, scope: !1906)
!1909 = !DILocation(line: 455, column: 5, scope: !1848)
!1910 = distinct !DISubprogram(name: "initres", scope: !3, file: !3, line: 750, type: !354, scopeLine: 751, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !38)
!1911 = !DILocation(line: 753, column: 5, scope: !1910)
!1912 = !DILocation(line: 754, column: 13, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 754, column: 9)
!1914 = !DILocation(line: 754, column: 23, scope: !1913)
!1915 = !DILocation(line: 754, column: 9, scope: !1910)
!1916 = !DILocation(line: 755, column: 34, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 754, column: 32)
!1918 = !DILocation(line: 755, column: 23, scope: !1917)
!1919 = !DILocation(line: 756, column: 27, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 756, column: 13)
!1921 = !DILocation(line: 756, column: 13, scope: !1917)
!1922 = !DILocation(line: 757, column: 21, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 756, column: 36)
!1924 = !DILocation(line: 757, column: 13, scope: !1923)
!1925 = !DILocation(line: 758, column: 13, scope: !1923)
!1926 = !DILocation(line: 761, column: 13, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 761, column: 9)
!1928 = !DILocation(line: 761, column: 21, scope: !1927)
!1929 = !DILocation(line: 761, column: 9, scope: !1910)
!1930 = !DILocation(line: 762, column: 32, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 761, column: 30)
!1932 = !DILocation(line: 762, column: 21, scope: !1931)
!1933 = !DILocation(line: 763, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 763, column: 13)
!1935 = !DILocation(line: 763, column: 13, scope: !1931)
!1936 = !DILocation(line: 764, column: 21, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 763, column: 34)
!1938 = !DILocation(line: 764, column: 13, scope: !1937)
!1939 = !DILocation(line: 765, column: 13, scope: !1937)
!1940 = !DILocation(line: 768, column: 20, scope: !1910)
!1941 = !DILocation(line: 768, column: 18, scope: !1910)
!1942 = !DILocation(line: 769, column: 17, scope: !1910)
!1943 = !DILocation(line: 770, column: 1, scope: !1910)
!1944 = !DILocation(line: 778, column: 10, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !353, file: !3, line: 778, column: 9)
!1946 = !DILocation(line: 778, column: 9, scope: !353)
!1947 = !DILocation(line: 0, scope: !353)
!1948 = !DILocation(line: 781, column: 35, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 780, column: 54)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 780, column: 5)
!1951 = distinct !DILexicalBlock(scope: !353, file: !3, line: 780, column: 5)
!1952 = !DILocation(line: 781, column: 13, scope: !1949)
!1953 = !DILocation(line: 781, column: 24, scope: !1949)
!1954 = !DILocation(line: 782, column: 28, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 782, column: 13)
!1956 = !DILocation(line: 782, column: 13, scope: !1949)
!1957 = !DILocation(line: 783, column: 21, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 782, column: 37)
!1959 = !DILocation(line: 783, column: 13, scope: !1958)
!1960 = !DILocation(line: 784, column: 13, scope: !1958)
!1961 = !DILocation(line: 786, column: 14, scope: !1949)
!1962 = !DILocation(line: 786, column: 25, scope: !1949)
!1963 = !DILocation(line: 787, column: 13, scope: !1949)
!1964 = !DILocation(line: 787, column: 24, scope: !1949)
!1965 = !{!876, !411, i64 8}
!1966 = !DILocation(line: 788, column: 13, scope: !1949)
!1967 = !DILocation(line: 788, column: 23, scope: !1949)
!1968 = !{!876, !411, i64 96}
!1969 = !DILocation(line: 789, column: 13, scope: !1949)
!1970 = !DILocation(line: 789, column: 24, scope: !1949)
!1971 = !{!876, !411, i64 136}
!1972 = !DILocation(line: 780, column: 44, scope: !1950)
!1973 = !DILocation(line: 780, column: 50, scope: !1950)
!1974 = !DILocation(line: 780, column: 30, scope: !1950)
!1975 = !DILocation(line: 780, column: 5, scope: !1951)
!1976 = distinct !{!1976, !1975, !1977}
!1977 = !DILocation(line: 790, column: 5, scope: !1951)
!1978 = !DILocation(line: 791, column: 10, scope: !353)
!1979 = !DILocation(line: 792, column: 1, scope: !353)
!1980 = distinct !DISubprogram(name: "atof", scope: !1981, file: !1981, line: 25, type: !1982, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1986)
!1981 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!10, !1984}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1980, file: !1981, line: 25, type: !1984)
!1988 = !DILocation(line: 0, scope: !1980)
!1989 = !DILocation(line: 27, column: 10, scope: !1980)
!1990 = !DILocation(line: 27, column: 3, scope: !1980)
!1991 = distinct !DISubprogram(name: "makebonds", scope: !3, file: !3, line: 794, type: !1992, scopeLine: 795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !144}
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002}
!1995 = !DILocalVariable(name: "res", arg: 1, scope: !1991, file: !3, line: 794, type: !144)
!1996 = !DILocalVariable(name: "a1", scope: !1991, file: !3, line: 796, type: !37)
!1997 = !DILocalVariable(name: "a2", scope: !1991, file: !3, line: 796, type: !37)
!1998 = !DILocalVariable(name: "ap1", scope: !1991, file: !3, line: 797, type: !190)
!1999 = !DILocalVariable(name: "ap2", scope: !1991, file: !3, line: 797, type: !190)
!2000 = !DILocalVariable(name: "ih1", scope: !1991, file: !3, line: 798, type: !37)
!2001 = !DILocalVariable(name: "ih2", scope: !1991, file: !3, line: 798, type: !37)
!2002 = !DILocalVariable(name: "d", scope: !1991, file: !3, line: 799, type: !10)
!2003 = !DILocation(line: 0, scope: !1991)
!2004 = !DILocation(line: 801, column: 28, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 801, column: 5)
!2006 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 801, column: 5)
!2007 = !DILocation(line: 801, column: 21, scope: !2005)
!2008 = !DILocation(line: 801, column: 5, scope: !2006)
!2009 = !DILocation(line: 802, column: 21, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 801, column: 44)
!2011 = !DILocation(line: 803, column: 14, scope: !2010)
!2012 = !DILocation(line: 803, column: 25, scope: !2010)
!2013 = !{!876, !536, i64 20}
!2014 = !DILocation(line: 801, column: 40, scope: !2005)
!2015 = distinct !{!2015, !2008, !2016}
!2016 = !DILocation(line: 804, column: 5, scope: !2006)
!2017 = !DILocation(line: 806, column: 28, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 806, column: 5)
!2019 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 806, column: 5)
!2020 = !DILocation(line: 806, column: 21, scope: !2018)
!2021 = !DILocation(line: 806, column: 5, scope: !2019)
!2022 = !DILocation(line: 807, column: 21, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 806, column: 48)
!2024 = !DILocation(line: 807, column: 16, scope: !2023)
!2025 = !DILocation(line: 808, column: 13, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 808, column: 13)
!2027 = !{!2028, !2028, i64 0}
!2028 = !{!"short", !405, i64 0}
!2029 = !DILocation(line: 808, column: 13, scope: !2023)
!2030 = !DILocation(line: 809, column: 24, scope: !2026)
!2031 = !DILocation(line: 809, column: 19, scope: !2026)
!2032 = !DILocation(line: 809, column: 38, scope: !2026)
!2033 = !DILocation(line: 809, column: 45, scope: !2026)
!2034 = !DILocation(line: 809, column: 53, scope: !2026)
!2035 = !DILocation(line: 809, column: 48, scope: !2026)
!2036 = !DILocation(line: 809, column: 67, scope: !2026)
!2037 = !DILocation(line: 809, column: 13, scope: !2026)
!2038 = !DILocation(line: 811, column: 25, scope: !2026)
!2039 = !DILocation(line: 811, column: 19, scope: !2026)
!2040 = !DILocation(line: 811, column: 36, scope: !2026)
!2041 = !DILocation(line: 811, column: 43, scope: !2026)
!2042 = !DILocation(line: 811, column: 52, scope: !2026)
!2043 = !DILocation(line: 811, column: 46, scope: !2026)
!2044 = !DILocation(line: 811, column: 63, scope: !2026)
!2045 = !DILocation(line: 812, column: 37, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 812, column: 9)
!2047 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 812, column: 9)
!2048 = !DILocation(line: 812, column: 30, scope: !2046)
!2049 = !DILocation(line: 812, column: 9, scope: !2047)
!2050 = !DILocation(line: 813, column: 25, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 812, column: 53)
!2052 = !DILocation(line: 813, column: 20, scope: !2051)
!2053 = !DILocation(line: 814, column: 17, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 814, column: 17)
!2055 = !DILocation(line: 814, column: 17, scope: !2051)
!2056 = !DILocation(line: 815, column: 28, scope: !2054)
!2057 = !DILocation(line: 815, column: 23, scope: !2054)
!2058 = !DILocation(line: 815, column: 42, scope: !2054)
!2059 = !DILocation(line: 815, column: 49, scope: !2054)
!2060 = !DILocation(line: 816, column: 26, scope: !2054)
!2061 = !DILocation(line: 816, column: 21, scope: !2054)
!2062 = !DILocation(line: 816, column: 40, scope: !2054)
!2063 = !DILocation(line: 815, column: 17, scope: !2054)
!2064 = !DILocation(line: 818, column: 29, scope: !2054)
!2065 = !DILocation(line: 818, column: 23, scope: !2054)
!2066 = !DILocation(line: 818, column: 40, scope: !2054)
!2067 = !DILocation(line: 818, column: 47, scope: !2054)
!2068 = !DILocation(line: 818, column: 56, scope: !2054)
!2069 = !DILocation(line: 818, column: 50, scope: !2054)
!2070 = !DILocation(line: 818, column: 67, scope: !2054)
!2071 = !DILocation(line: 819, column: 17, scope: !2051)
!2072 = !DILocation(line: 820, column: 21, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 820, column: 17)
!2074 = !DILocation(line: 821, column: 23, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 821, column: 21)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 820, column: 29)
!2077 = !DILocation(line: 821, column: 21, scope: !2076)
!2078 = !DILocation(line: 822, column: 30, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 822, column: 25)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 821, column: 37)
!2081 = !DILocation(line: 822, column: 41, scope: !2079)
!2082 = !DILocation(line: 822, column: 58, scope: !2079)
!2083 = !DILocation(line: 823, column: 30, scope: !2079)
!2084 = !DILocation(line: 823, column: 41, scope: !2079)
!2085 = !DILocation(line: 822, column: 25, scope: !2080)
!2086 = !DILocation(line: 824, column: 45, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 823, column: 59)
!2088 = !DILocation(line: 824, column: 55, scope: !2087)
!2089 = !DILocation(line: 824, column: 25, scope: !2087)
!2090 = !DILocation(line: 824, column: 59, scope: !2087)
!2091 = !DILocation(line: 825, column: 45, scope: !2087)
!2092 = !DILocation(line: 825, column: 55, scope: !2087)
!2093 = !DILocation(line: 825, column: 25, scope: !2087)
!2094 = !DILocation(line: 825, column: 59, scope: !2087)
!2095 = !DILocation(line: 826, column: 21, scope: !2087)
!2096 = !DILocation(line: 828, column: 26, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 828, column: 24)
!2098 = !DILocation(line: 828, column: 24, scope: !2073)
!2099 = !DILocation(line: 829, column: 26, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 829, column: 21)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 828, column: 39)
!2102 = !DILocation(line: 829, column: 37, scope: !2100)
!2103 = !DILocation(line: 829, column: 54, scope: !2100)
!2104 = !DILocation(line: 830, column: 26, scope: !2100)
!2105 = !DILocation(line: 830, column: 37, scope: !2100)
!2106 = !DILocation(line: 829, column: 21, scope: !2101)
!2107 = !DILocation(line: 831, column: 41, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 830, column: 55)
!2109 = !DILocation(line: 831, column: 51, scope: !2108)
!2110 = !DILocation(line: 831, column: 21, scope: !2108)
!2111 = !DILocation(line: 831, column: 55, scope: !2108)
!2112 = !DILocation(line: 832, column: 41, scope: !2108)
!2113 = !DILocation(line: 832, column: 51, scope: !2108)
!2114 = !DILocation(line: 832, column: 21, scope: !2108)
!2115 = !DILocation(line: 832, column: 55, scope: !2108)
!2116 = !DILocation(line: 833, column: 17, scope: !2108)
!2117 = !DILocation(line: 812, column: 49, scope: !2046)
!2118 = distinct !{!2118, !2049, !2119}
!2119 = !DILocation(line: 835, column: 9, scope: !2047)
!2120 = !DILocation(line: 806, column: 44, scope: !2018)
!2121 = !DILocation(line: 806, column: 5, scope: !2018)
!2122 = !DILocation(line: 806, column: 37, scope: !2018)
!2123 = distinct !{!2123, !2021, !2124}
!2124 = !DILocation(line: 836, column: 5, scope: !2019)
!2125 = !DILocation(line: 837, column: 1, scope: !1991)
!2126 = distinct !DISubprogram(name: "isnewres", scope: !3, file: !3, line: 744, type: !2127, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!37, !13, !13, !37, !37}
!2129 = !{!2130, !2131, !2132, !2133}
!2130 = !DILocalVariable(name: "l_rname", arg: 1, scope: !2126, file: !3, line: 744, type: !13)
!2131 = !DILocalVariable(name: "rname", arg: 2, scope: !2126, file: !3, line: 744, type: !13)
!2132 = !DILocalVariable(name: "l_rnum", arg: 3, scope: !2126, file: !3, line: 744, type: !37)
!2133 = !DILocalVariable(name: "rnum", arg: 4, scope: !2126, file: !3, line: 744, type: !37)
!2134 = !DILocation(line: 0, scope: !2126)
!2135 = !DILocation(line: 747, column: 13, scope: !2126)
!2136 = !DILocation(line: 747, column: 36, scope: !2126)
!2137 = !DILocation(line: 747, column: 5, scope: !2126)
!2138 = distinct !DISubprogram(name: "initcid", scope: !3, file: !3, line: 1021, type: !2139, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!343, !37, !37, !391}
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149}
!2142 = !DILocalVariable(name: "nocid", arg: 1, scope: !2138, file: !3, line: 1021, type: !37)
!2143 = !DILocalVariable(name: "allcid", arg: 2, scope: !2138, file: !3, line: 1021, type: !37)
!2144 = !DILocalVariable(name: "mol", arg: 3, scope: !2138, file: !3, line: 1021, type: !391)
!2145 = !DILocalVariable(name: "cid", scope: !2138, file: !3, line: 1023, type: !343)
!2146 = !DILocalVariable(name: "c", scope: !2138, file: !3, line: 1024, type: !37)
!2147 = !DILocalVariable(name: "sp", scope: !2138, file: !3, line: 1025, type: !128)
!2148 = !DILocalVariable(name: "err", scope: !2138, file: !3, line: 1026, type: !37)
!2149 = !DILabel(scope: !2138, name: "CLEAN_UP", file: !3, line: 1067)
!2150 = !DILocation(line: 0, scope: !2138)
!2151 = !DILocation(line: 1028, column: 9, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 1028, column: 9)
!2153 = !DILocation(line: 1028, column: 9, scope: !2138)
!2154 = !DILocation(line: 1031, column: 21, scope: !2138)
!2155 = !DILocation(line: 1031, column: 11, scope: !2138)
!2156 = !DILocation(line: 1032, column: 13, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 1032, column: 9)
!2158 = !DILocation(line: 1032, column: 9, scope: !2138)
!2159 = !DILocation(line: 1033, column: 17, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 1032, column: 22)
!2161 = !DILocation(line: 1033, column: 9, scope: !2160)
!2162 = !DILocation(line: 1035, column: 9, scope: !2160)
!2163 = !DILocation(line: 1037, column: 28, scope: !2138)
!2164 = !DILocation(line: 1037, column: 10, scope: !2138)
!2165 = !DILocation(line: 1037, column: 17, scope: !2138)
!2166 = !{!2167, !411, i64 8}
!2167 = !{!"cid_t", !536, i64 0, !536, i64 4, !411, i64 8}
!2168 = !DILocation(line: 1038, column: 21, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 1038, column: 9)
!2170 = !DILocation(line: 1038, column: 9, scope: !2138)
!2171 = !DILocation(line: 1039, column: 17, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 1038, column: 30)
!2173 = !DILocation(line: 1039, column: 9, scope: !2172)
!2174 = !DILocation(line: 1041, column: 9, scope: !2172)
!2175 = !DILocation(line: 1043, column: 10, scope: !2138)
!2176 = !DILocation(line: 1043, column: 17, scope: !2138)
!2177 = !{!2167, !536, i64 0}
!2178 = !DILocation(line: 1044, column: 10, scope: !2138)
!2179 = !DILocation(line: 1044, column: 17, scope: !2138)
!2180 = !{!2167, !536, i64 4}
!2181 = !DILocation(line: 1045, column: 37, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 1045, column: 5)
!2183 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 1045, column: 5)
!2184 = !DILocation(line: 1045, column: 5, scope: !2183)
!2185 = !DILocation(line: 1046, column: 14, scope: !2182)
!2186 = !DILocation(line: 1046, column: 9, scope: !2182)
!2187 = !DILocation(line: 1046, column: 24, scope: !2182)
!2188 = !DILocation(line: 1045, column: 46, scope: !2182)
!2189 = !DILocation(line: 1045, column: 29, scope: !2182)
!2190 = distinct !{!2190, !2184, !2191}
!2191 = !DILocation(line: 1046, column: 26, scope: !2183)
!2192 = !DILocation(line: 1048, column: 9, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 1048, column: 9)
!2194 = !DILocation(line: 1048, column: 9, scope: !2138)
!2195 = !DILocation(line: 1049, column: 17, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 1049, column: 13)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 1048, column: 17)
!2198 = !DILocation(line: 1049, column: 13, scope: !2197)
!2199 = !DILocation(line: 1050, column: 21, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 1049, column: 26)
!2201 = !DILocation(line: 1050, column: 13, scope: !2200)
!2202 = !DILocation(line: 1052, column: 13, scope: !2200)
!2203 = !DILocation(line: 1054, column: 24, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 1054, column: 9)
!2205 = !DILocation(line: 1054, column: 9, scope: !2204)
!2206 = !DILocation(line: 1055, column: 28, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1055, column: 17)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 1054, column: 56)
!2209 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 1054, column: 9)
!2210 = !DILocation(line: 1055, column: 17, scope: !2207)
!2211 = !DILocation(line: 1055, column: 42, scope: !2207)
!2212 = !DILocation(line: 1055, column: 17, scope: !2208)
!2213 = !DILocation(line: 1056, column: 26, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 1055, column: 48)
!2215 = !DILocation(line: 1056, column: 21, scope: !2214)
!2216 = !DILocation(line: 1057, column: 30, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 1057, column: 21)
!2218 = !DILocation(line: 1058, column: 26, scope: !2217)
!2219 = !DILocation(line: 1058, column: 21, scope: !2217)
!2220 = !DILocation(line: 1058, column: 36, scope: !2217)
!2221 = !DILocation(line: 1054, column: 48, scope: !2209)
!2222 = distinct !{!2222, !2205, !2223}
!2223 = !DILocation(line: 1060, column: 9, scope: !2204)
!2224 = !DILocation(line: 1061, column: 21, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 1061, column: 9)
!2226 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 1061, column: 9)
!2227 = !DILocation(line: 1061, column: 36, scope: !2225)
!2228 = !DILocation(line: 1061, column: 28, scope: !2225)
!2229 = !DILocation(line: 1061, column: 9, scope: !2226)
!2230 = !DILocation(line: 1062, column: 23, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 1062, column: 17)
!2232 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 1061, column: 59)
!2233 = !DILocation(line: 1062, column: 35, scope: !2231)
!2234 = !DILocation(line: 1062, column: 18, scope: !2231)
!2235 = !DILocation(line: 1062, column: 17, scope: !2232)
!2236 = !DILocation(line: 1061, column: 49, scope: !2225)
!2237 = !DILocation(line: 1061, column: 55, scope: !2225)
!2238 = distinct !{!2238, !2229, !2239}
!2239 = !DILocation(line: 1064, column: 9, scope: !2226)
!2240 = !DILocation(line: 1067, column: 3, scope: !2138)
!2241 = !DILocation(line: 1069, column: 9, scope: !2138)
!2242 = !DILocation(line: 1070, column: 9, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 1069, column: 14)
!2244 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 1069, column: 9)
!2245 = !DILocation(line: 1072, column: 5, scope: !2243)
!2246 = !DILocation(line: 1075, column: 1, scope: !2138)
!2247 = distinct !DISubprogram(name: "nextcid", scope: !3, file: !3, line: 1077, type: !2248, scopeLine: 1078, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!37, !343, !37, !37, !128}
!2250 = !{!2251, !2252, !2253, !2254, !2255}
!2251 = !DILocalVariable(name: "cid", arg: 1, scope: !2247, file: !3, line: 1077, type: !343)
!2252 = !DILocalVariable(name: "nocid", arg: 2, scope: !2247, file: !3, line: 1077, type: !37)
!2253 = !DILocalVariable(name: "allcid", arg: 3, scope: !2247, file: !3, line: 1077, type: !37)
!2254 = !DILocalVariable(name: "sp", arg: 4, scope: !2247, file: !3, line: 1077, type: !128)
!2255 = !DILocalVariable(name: "c", scope: !2247, file: !3, line: 1079, type: !37)
!2256 = !DILocation(line: 0, scope: !2247)
!2257 = !DILocation(line: 1081, column: 9, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1081, column: 9)
!2259 = !DILocation(line: 1081, column: 9, scope: !2247)
!2260 = !DILocation(line: 1084, column: 13, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1084, column: 9)
!2262 = !DILocation(line: 1084, column: 9, scope: !2247)
!2263 = !DILocation(line: 1085, column: 17, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 1084, column: 22)
!2265 = !DILocation(line: 1085, column: 9, scope: !2264)
!2266 = !DILocation(line: 1086, column: 9, scope: !2264)
!2267 = !DILocation(line: 1087, column: 21, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 1087, column: 16)
!2269 = !DILocation(line: 1087, column: 35, scope: !2268)
!2270 = !DILocation(line: 1087, column: 28, scope: !2268)
!2271 = !DILocation(line: 1087, column: 16, scope: !2261)
!2272 = !DILocation(line: 1089, column: 14, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 1089, column: 14)
!2274 = !DILocation(line: 1089, column: 14, scope: !2268)
!2275 = !DILocation(line: 1090, column: 24, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1090, column: 13)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 1089, column: 22)
!2278 = !DILocation(line: 1090, column: 13, scope: !2276)
!2279 = !DILocation(line: 1090, column: 38, scope: !2276)
!2280 = !DILocation(line: 1090, column: 13, scope: !2277)
!2281 = !DILocation(line: 1091, column: 22, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 1090, column: 44)
!2283 = !DILocation(line: 1091, column: 17, scope: !2282)
!2284 = !DILocation(line: 1092, column: 26, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1092, column: 17)
!2286 = !DILocation(line: 1095, column: 18, scope: !2277)
!2287 = !DILocation(line: 1096, column: 14, scope: !2277)
!2288 = !DILocation(line: 1096, column: 9, scope: !2277)
!2289 = !DILocation(line: 1096, column: 34, scope: !2277)
!2290 = !DILocation(line: 1097, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 1097, column: 9)
!2292 = !DILocation(line: 1097, column: 14, scope: !2291)
!2293 = !DILocation(line: 1097, column: 49, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1097, column: 9)
!2295 = !DILocation(line: 1097, column: 41, scope: !2294)
!2296 = !DILocation(line: 1097, column: 9, scope: !2291)
!2297 = !DILocation(line: 1098, column: 23, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 1098, column: 17)
!2299 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 1097, column: 72)
!2300 = !DILocation(line: 1098, column: 35, scope: !2298)
!2301 = !DILocation(line: 1098, column: 18, scope: !2298)
!2302 = !DILocation(line: 1098, column: 17, scope: !2299)
!2303 = !DILocation(line: 1097, column: 62, scope: !2294)
!2304 = !DILocation(line: 1097, column: 68, scope: !2294)
!2305 = distinct !{!2305, !2296, !2306}
!2306 = !DILocation(line: 1100, column: 9, scope: !2291)
!2307 = !DILocation(line: 1103, column: 18, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 1102, column: 12)
!2309 = !DILocation(line: 1104, column: 14, scope: !2308)
!2310 = !DILocation(line: 1104, column: 20, scope: !2308)
!2311 = !DILocation(line: 1105, column: 9, scope: !2308)
!2312 = !DILocation(line: 1107, column: 1, scope: !2247)
!2313 = distinct !DISubprogram(name: "mk_brook_rname", scope: !3, file: !3, line: 1109, type: !2314, scopeLine: 1110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !13, !144}
!2316 = !{!2317, !2318}
!2317 = !DILocalVariable(name: "rname", arg: 1, scope: !2313, file: !3, line: 1109, type: !13)
!2318 = !DILocalVariable(name: "res", arg: 2, scope: !2313, file: !3, line: 1109, type: !144)
!2319 = !DILocation(line: 0, scope: !2313)
!2320 = !DILocation(line: 1112, column: 24, scope: !2313)
!2321 = !DILocation(line: 1112, column: 5, scope: !2313)
!2322 = !DILocation(line: 1114, column: 10, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1114, column: 9)
!2324 = !DILocation(line: 1114, column: 9, scope: !2313)
!2325 = !DILocation(line: 1115, column: 9, scope: !2323)
!2326 = !DILocation(line: 1116, column: 10, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1116, column: 9)
!2328 = !DILocation(line: 1116, column: 9, scope: !2313)
!2329 = !DILocation(line: 1117, column: 9, scope: !2327)
!2330 = !DILocation(line: 1118, column: 10, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1118, column: 9)
!2332 = !DILocation(line: 1118, column: 9, scope: !2313)
!2333 = !DILocation(line: 1119, column: 9, scope: !2331)
!2334 = !DILocation(line: 1120, column: 10, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1120, column: 9)
!2336 = !DILocation(line: 1120, column: 9, scope: !2313)
!2337 = !DILocation(line: 1121, column: 9, scope: !2335)
!2338 = !DILocation(line: 1122, column: 10, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1122, column: 9)
!2340 = !DILocation(line: 1122, column: 9, scope: !2313)
!2341 = !DILocation(line: 1123, column: 9, scope: !2339)
!2342 = !DILocation(line: 1125, column: 10, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1125, column: 9)
!2344 = !DILocation(line: 1125, column: 9, scope: !2313)
!2345 = !DILocation(line: 1126, column: 9, scope: !2343)
!2346 = !DILocation(line: 1127, column: 10, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1127, column: 9)
!2348 = !DILocation(line: 1127, column: 9, scope: !2313)
!2349 = !DILocation(line: 1128, column: 9, scope: !2347)
!2350 = !DILocation(line: 1129, column: 10, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1129, column: 9)
!2352 = !DILocation(line: 1129, column: 9, scope: !2313)
!2353 = !DILocation(line: 1130, column: 9, scope: !2351)
!2354 = !DILocation(line: 1131, column: 10, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1131, column: 9)
!2356 = !DILocation(line: 1131, column: 9, scope: !2313)
!2357 = !DILocation(line: 1132, column: 9, scope: !2355)
!2358 = !DILocation(line: 1134, column: 10, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1134, column: 9)
!2360 = !DILocation(line: 1134, column: 9, scope: !2313)
!2361 = !DILocation(line: 1135, column: 9, scope: !2359)
!2362 = !DILocation(line: 1136, column: 10, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1136, column: 9)
!2364 = !DILocation(line: 1136, column: 9, scope: !2313)
!2365 = !DILocation(line: 1137, column: 9, scope: !2363)
!2366 = !DILocation(line: 1138, column: 10, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1138, column: 9)
!2368 = !DILocation(line: 1138, column: 9, scope: !2313)
!2369 = !DILocation(line: 1139, column: 9, scope: !2367)
!2370 = !DILocation(line: 1140, column: 10, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1140, column: 9)
!2372 = !DILocation(line: 1140, column: 9, scope: !2313)
!2373 = !DILocation(line: 1141, column: 9, scope: !2371)
!2374 = !DILocation(line: 1143, column: 10, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1143, column: 9)
!2376 = !DILocation(line: 1143, column: 9, scope: !2313)
!2377 = !DILocation(line: 1144, column: 9, scope: !2375)
!2378 = !DILocation(line: 1145, column: 10, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1145, column: 9)
!2380 = !DILocation(line: 1145, column: 9, scope: !2313)
!2381 = !DILocation(line: 1146, column: 9, scope: !2379)
!2382 = !DILocation(line: 1147, column: 10, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1147, column: 9)
!2384 = !DILocation(line: 1147, column: 9, scope: !2313)
!2385 = !DILocation(line: 1148, column: 9, scope: !2383)
!2386 = !DILocation(line: 1149, column: 10, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1149, column: 9)
!2388 = !DILocation(line: 1149, column: 9, scope: !2313)
!2389 = !DILocation(line: 1150, column: 9, scope: !2387)
!2390 = !DILocation(line: 1152, column: 10, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1152, column: 9)
!2392 = !DILocation(line: 1152, column: 9, scope: !2313)
!2393 = !DILocation(line: 1153, column: 9, scope: !2391)
!2394 = !DILocation(line: 1154, column: 10, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1154, column: 9)
!2396 = !DILocation(line: 1154, column: 9, scope: !2313)
!2397 = !DILocation(line: 1155, column: 9, scope: !2395)
!2398 = !DILocation(line: 1156, column: 10, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1156, column: 9)
!2400 = !DILocation(line: 1156, column: 9, scope: !2313)
!2401 = !DILocation(line: 1157, column: 9, scope: !2399)
!2402 = !DILocation(line: 1158, column: 10, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1158, column: 9)
!2404 = !DILocation(line: 1158, column: 9, scope: !2313)
!2405 = !DILocation(line: 1159, column: 9, scope: !2403)
!2406 = !DILocation(line: 1161, column: 10, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1161, column: 9)
!2408 = !DILocation(line: 1161, column: 9, scope: !2313)
!2409 = !DILocation(line: 1162, column: 9, scope: !2407)
!2410 = !DILocation(line: 1163, column: 10, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1163, column: 9)
!2412 = !DILocation(line: 1163, column: 9, scope: !2313)
!2413 = !DILocation(line: 1164, column: 9, scope: !2411)
!2414 = !DILocation(line: 1165, column: 10, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1165, column: 9)
!2416 = !DILocation(line: 1165, column: 9, scope: !2313)
!2417 = !DILocation(line: 1166, column: 9, scope: !2415)
!2418 = !DILocation(line: 1167, column: 10, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1167, column: 9)
!2420 = !DILocation(line: 1167, column: 9, scope: !2313)
!2421 = !DILocation(line: 1168, column: 9, scope: !2419)
!2422 = !DILocation(line: 1170, column: 10, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1170, column: 9)
!2424 = !DILocation(line: 1170, column: 9, scope: !2313)
!2425 = !DILocation(line: 1171, column: 9, scope: !2423)
!2426 = !DILocation(line: 1172, column: 10, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1172, column: 9)
!2428 = !DILocation(line: 1172, column: 9, scope: !2313)
!2429 = !DILocation(line: 1173, column: 9, scope: !2427)
!2430 = !DILocation(line: 1174, column: 10, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1174, column: 9)
!2432 = !DILocation(line: 1174, column: 9, scope: !2313)
!2433 = !DILocation(line: 1175, column: 9, scope: !2431)
!2434 = !DILocation(line: 1176, column: 10, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1176, column: 9)
!2436 = !DILocation(line: 1176, column: 9, scope: !2313)
!2437 = !DILocation(line: 1177, column: 9, scope: !2435)
!2438 = !DILocation(line: 1179, column: 10, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1179, column: 9)
!2440 = !DILocation(line: 1179, column: 9, scope: !2313)
!2441 = !DILocation(line: 1180, column: 9, scope: !2439)
!2442 = !DILocation(line: 1181, column: 10, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1181, column: 9)
!2444 = !DILocation(line: 1181, column: 9, scope: !2313)
!2445 = !DILocation(line: 1182, column: 9, scope: !2443)
!2446 = !DILocation(line: 1183, column: 10, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1183, column: 9)
!2448 = !DILocation(line: 1183, column: 9, scope: !2313)
!2449 = !DILocation(line: 1184, column: 9, scope: !2447)
!2450 = !DILocation(line: 1185, column: 10, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1185, column: 9)
!2452 = !DILocation(line: 1185, column: 9, scope: !2313)
!2453 = !DILocation(line: 1186, column: 9, scope: !2451)
!2454 = !DILocation(line: 1187, column: 10, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1187, column: 9)
!2456 = !DILocation(line: 1187, column: 9, scope: !2313)
!2457 = !DILocation(line: 1188, column: 9, scope: !2455)
!2458 = !DILocation(line: 1189, column: 10, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1189, column: 9)
!2460 = !DILocation(line: 1189, column: 9, scope: !2313)
!2461 = !DILocation(line: 1190, column: 9, scope: !2459)
!2462 = !DILocation(line: 1192, column: 1, scope: !2313)
!2463 = distinct !DISubprogram(name: "mk_wwpdb_rname", scope: !3, file: !3, line: 1194, type: !2314, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2464)
!2464 = !{!2465, !2466}
!2465 = !DILocalVariable(name: "rname", arg: 1, scope: !2463, file: !3, line: 1194, type: !13)
!2466 = !DILocalVariable(name: "res", arg: 2, scope: !2463, file: !3, line: 1194, type: !144)
!2467 = !DILocation(line: 0, scope: !2463)
!2468 = !DILocation(line: 1197, column: 24, scope: !2463)
!2469 = !DILocation(line: 1197, column: 5, scope: !2463)
!2470 = !DILocation(line: 1199, column: 10, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1199, column: 9)
!2472 = !DILocation(line: 1199, column: 9, scope: !2463)
!2473 = !DILocation(line: 1200, column: 9, scope: !2471)
!2474 = !DILocation(line: 1201, column: 10, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1201, column: 9)
!2476 = !DILocation(line: 1201, column: 9, scope: !2463)
!2477 = !DILocation(line: 1202, column: 9, scope: !2475)
!2478 = !DILocation(line: 1203, column: 10, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1203, column: 9)
!2480 = !DILocation(line: 1203, column: 9, scope: !2463)
!2481 = !DILocation(line: 1204, column: 9, scope: !2479)
!2482 = !DILocation(line: 1205, column: 10, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1205, column: 9)
!2484 = !DILocation(line: 1205, column: 9, scope: !2463)
!2485 = !DILocation(line: 1206, column: 9, scope: !2483)
!2486 = !DILocation(line: 1207, column: 10, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1207, column: 9)
!2488 = !DILocation(line: 1207, column: 9, scope: !2463)
!2489 = !DILocation(line: 1208, column: 9, scope: !2487)
!2490 = !DILocation(line: 1210, column: 10, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1210, column: 9)
!2492 = !DILocation(line: 1210, column: 9, scope: !2463)
!2493 = !DILocation(line: 1211, column: 9, scope: !2491)
!2494 = !DILocation(line: 1212, column: 10, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1212, column: 9)
!2496 = !DILocation(line: 1212, column: 9, scope: !2463)
!2497 = !DILocation(line: 1213, column: 9, scope: !2495)
!2498 = !DILocation(line: 1214, column: 10, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1214, column: 9)
!2500 = !DILocation(line: 1214, column: 9, scope: !2463)
!2501 = !DILocation(line: 1215, column: 9, scope: !2499)
!2502 = !DILocation(line: 1216, column: 10, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1216, column: 9)
!2504 = !DILocation(line: 1216, column: 9, scope: !2463)
!2505 = !DILocation(line: 1217, column: 9, scope: !2503)
!2506 = !DILocation(line: 1219, column: 10, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1219, column: 9)
!2508 = !DILocation(line: 1219, column: 9, scope: !2463)
!2509 = !DILocation(line: 1220, column: 9, scope: !2507)
!2510 = !DILocation(line: 1221, column: 10, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1221, column: 9)
!2512 = !DILocation(line: 1221, column: 9, scope: !2463)
!2513 = !DILocation(line: 1222, column: 9, scope: !2511)
!2514 = !DILocation(line: 1223, column: 10, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1223, column: 9)
!2516 = !DILocation(line: 1223, column: 9, scope: !2463)
!2517 = !DILocation(line: 1224, column: 9, scope: !2515)
!2518 = !DILocation(line: 1225, column: 10, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1225, column: 9)
!2520 = !DILocation(line: 1225, column: 9, scope: !2463)
!2521 = !DILocation(line: 1226, column: 9, scope: !2519)
!2522 = !DILocation(line: 1228, column: 10, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1228, column: 9)
!2524 = !DILocation(line: 1228, column: 9, scope: !2463)
!2525 = !DILocation(line: 1229, column: 9, scope: !2523)
!2526 = !DILocation(line: 1230, column: 10, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1230, column: 9)
!2528 = !DILocation(line: 1230, column: 9, scope: !2463)
!2529 = !DILocation(line: 1231, column: 9, scope: !2527)
!2530 = !DILocation(line: 1232, column: 10, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1232, column: 9)
!2532 = !DILocation(line: 1232, column: 9, scope: !2463)
!2533 = !DILocation(line: 1233, column: 9, scope: !2531)
!2534 = !DILocation(line: 1234, column: 10, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1234, column: 9)
!2536 = !DILocation(line: 1234, column: 9, scope: !2463)
!2537 = !DILocation(line: 1235, column: 9, scope: !2535)
!2538 = !DILocation(line: 1237, column: 10, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1237, column: 9)
!2540 = !DILocation(line: 1237, column: 9, scope: !2463)
!2541 = !DILocation(line: 1238, column: 9, scope: !2539)
!2542 = !DILocation(line: 1239, column: 10, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1239, column: 9)
!2544 = !DILocation(line: 1239, column: 9, scope: !2463)
!2545 = !DILocation(line: 1240, column: 9, scope: !2543)
!2546 = !DILocation(line: 1241, column: 10, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1241, column: 9)
!2548 = !DILocation(line: 1241, column: 9, scope: !2463)
!2549 = !DILocation(line: 1242, column: 9, scope: !2547)
!2550 = !DILocation(line: 1243, column: 10, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1243, column: 9)
!2552 = !DILocation(line: 1243, column: 9, scope: !2463)
!2553 = !DILocation(line: 1244, column: 9, scope: !2551)
!2554 = !DILocation(line: 1246, column: 10, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1246, column: 9)
!2556 = !DILocation(line: 1246, column: 9, scope: !2463)
!2557 = !DILocation(line: 1247, column: 9, scope: !2555)
!2558 = !DILocation(line: 1248, column: 10, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1248, column: 9)
!2560 = !DILocation(line: 1248, column: 9, scope: !2463)
!2561 = !DILocation(line: 1249, column: 9, scope: !2559)
!2562 = !DILocation(line: 1250, column: 10, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1250, column: 9)
!2564 = !DILocation(line: 1250, column: 9, scope: !2463)
!2565 = !DILocation(line: 1251, column: 9, scope: !2563)
!2566 = !DILocation(line: 1252, column: 10, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1252, column: 9)
!2568 = !DILocation(line: 1252, column: 9, scope: !2463)
!2569 = !DILocation(line: 1253, column: 9, scope: !2567)
!2570 = !DILocation(line: 1255, column: 10, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1255, column: 9)
!2572 = !DILocation(line: 1255, column: 9, scope: !2463)
!2573 = !DILocation(line: 1256, column: 9, scope: !2571)
!2574 = !DILocation(line: 1257, column: 10, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1257, column: 9)
!2576 = !DILocation(line: 1257, column: 9, scope: !2463)
!2577 = !DILocation(line: 1258, column: 9, scope: !2575)
!2578 = !DILocation(line: 1259, column: 10, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1259, column: 9)
!2580 = !DILocation(line: 1259, column: 9, scope: !2463)
!2581 = !DILocation(line: 1260, column: 9, scope: !2579)
!2582 = !DILocation(line: 1261, column: 10, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1261, column: 9)
!2584 = !DILocation(line: 1261, column: 9, scope: !2463)
!2585 = !DILocation(line: 1262, column: 9, scope: !2583)
!2586 = !DILocation(line: 1264, column: 10, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1264, column: 9)
!2588 = !DILocation(line: 1264, column: 9, scope: !2463)
!2589 = !DILocation(line: 1265, column: 9, scope: !2587)
!2590 = !DILocation(line: 1266, column: 10, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1266, column: 9)
!2592 = !DILocation(line: 1266, column: 9, scope: !2463)
!2593 = !DILocation(line: 1267, column: 9, scope: !2591)
!2594 = !DILocation(line: 1268, column: 10, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1268, column: 9)
!2596 = !DILocation(line: 1268, column: 9, scope: !2463)
!2597 = !DILocation(line: 1269, column: 9, scope: !2595)
!2598 = !DILocation(line: 1270, column: 10, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1270, column: 9)
!2600 = !DILocation(line: 1270, column: 9, scope: !2463)
!2601 = !DILocation(line: 1271, column: 9, scope: !2599)
!2602 = !DILocation(line: 1272, column: 10, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1272, column: 9)
!2604 = !DILocation(line: 1272, column: 9, scope: !2463)
!2605 = !DILocation(line: 1273, column: 9, scope: !2603)
!2606 = !DILocation(line: 1274, column: 10, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1274, column: 9)
!2608 = !DILocation(line: 1274, column: 9, scope: !2463)
!2609 = !DILocation(line: 1275, column: 9, scope: !2607)
!2610 = !DILocation(line: 1277, column: 1, scope: !2463)
!2611 = distinct !DISubprogram(name: "mk_brook_aname", scope: !3, file: !3, line: 1279, type: !2612, scopeLine: 1280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !13, !13, !13}
!2614 = !{!2615, !2616, !2617}
!2615 = !DILocalVariable(name: "aname", arg: 1, scope: !2611, file: !3, line: 1279, type: !13)
!2616 = !DILocalVariable(name: "name", arg: 2, scope: !2611, file: !3, line: 1279, type: !13)
!2617 = !DILocalVariable(name: "rname", arg: 3, scope: !2611, file: !3, line: 1279, type: !13)
!2618 = !DILocation(line: 0, scope: !2611)
!2619 = !DILocation(line: 1285, column: 14, scope: !2611)
!2620 = !DILocation(line: 1287, column: 9, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1287, column: 9)
!2622 = !DILocation(line: 1287, column: 22, scope: !2621)
!2623 = !DILocation(line: 1287, column: 27, scope: !2621)
!2624 = !DILocation(line: 1287, column: 30, scope: !2621)
!2625 = !DILocation(line: 1287, column: 38, scope: !2621)
!2626 = !DILocation(line: 1287, column: 9, scope: !2611)
!2627 = !DILocation(line: 1288, column: 20, scope: !2621)
!2628 = !DILocation(line: 1288, column: 18, scope: !2621)
!2629 = !DILocation(line: 1288, column: 9, scope: !2621)
!2630 = !DILocation(line: 1289, column: 16, scope: !2611)
!2631 = !DILocation(line: 1289, column: 5, scope: !2611)
!2632 = !DILocation(line: 1289, column: 14, scope: !2611)
!2633 = !DILocation(line: 1290, column: 16, scope: !2611)
!2634 = !DILocation(line: 1290, column: 5, scope: !2611)
!2635 = !DILocation(line: 1290, column: 14, scope: !2611)
!2636 = !DILocation(line: 1291, column: 16, scope: !2611)
!2637 = !DILocation(line: 1291, column: 5, scope: !2611)
!2638 = !DILocation(line: 1291, column: 14, scope: !2611)
!2639 = !DILocation(line: 1292, column: 18, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1292, column: 9)
!2641 = !DILocation(line: 1292, column: 9, scope: !2611)
!2642 = !DILocation(line: 1293, column: 9, scope: !2640)
!2643 = !DILocation(line: 1293, column: 18, scope: !2640)
!2644 = !DILocation(line: 1294, column: 5, scope: !2611)
!2645 = !DILocation(line: 1294, column: 14, scope: !2611)
!2646 = !DILocation(line: 1297, column: 10, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1297, column: 9)
!2648 = !DILocation(line: 1297, column: 34, scope: !2647)
!2649 = !DILocation(line: 1298, column: 10, scope: !2647)
!2650 = !DILocation(line: 1298, column: 19, scope: !2647)
!2651 = !DILocation(line: 1298, column: 26, scope: !2647)
!2652 = !DILocation(line: 1298, column: 29, scope: !2647)
!2653 = !DILocation(line: 1298, column: 38, scope: !2647)
!2654 = !DILocation(line: 1298, column: 45, scope: !2647)
!2655 = !DILocation(line: 1298, column: 48, scope: !2647)
!2656 = !DILocation(line: 1298, column: 57, scope: !2647)
!2657 = !DILocation(line: 1298, column: 65, scope: !2647)
!2658 = !DILocation(line: 1299, column: 11, scope: !2647)
!2659 = !DILocation(line: 1299, column: 36, scope: !2647)
!2660 = !DILocation(line: 1303, column: 17, scope: !2647)
!2661 = !DILocation(line: 1303, column: 26, scope: !2647)
!2662 = !DILocation(line: 1305, column: 14, scope: !2647)
!2663 = !DILocation(line: 1297, column: 9, scope: !2611)
!2664 = !DILocation(line: 1306, column: 20, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1305, column: 41)
!2666 = !DILocation(line: 1306, column: 18, scope: !2665)
!2667 = !DILocation(line: 1307, column: 9, scope: !2665)
!2668 = !DILocation(line: 1307, column: 18, scope: !2665)
!2669 = !DILocation(line: 1308, column: 5, scope: !2665)
!2670 = !DILocation(line: 1313, column: 1, scope: !2611)
!2671 = distinct !DISubprogram(name: "mk_wwpdb_aname", scope: !3, file: !3, line: 1315, type: !2612, scopeLine: 1316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2672)
!2672 = !{!2673, !2674, !2675}
!2673 = !DILocalVariable(name: "aname", arg: 1, scope: !2671, file: !3, line: 1315, type: !13)
!2674 = !DILocalVariable(name: "name", arg: 2, scope: !2671, file: !3, line: 1315, type: !13)
!2675 = !DILocalVariable(name: "rname", arg: 3, scope: !2671, file: !3, line: 1315, type: !13)
!2676 = !DILocation(line: 0, scope: !2671)
!2677 = !DILocation(line: 1329, column: 9, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1329, column: 9)
!2679 = !DILocation(line: 1329, column: 22, scope: !2678)
!2680 = !DILocation(line: 1329, column: 27, scope: !2678)
!2681 = !DILocation(line: 1329, column: 30, scope: !2678)
!2682 = !DILocation(line: 1329, column: 38, scope: !2678)
!2683 = !DILocation(line: 1329, column: 9, scope: !2671)
!2684 = !DILocation(line: 1330, column: 9, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1329, column: 45)
!2686 = !DILocation(line: 1331, column: 5, scope: !2685)
!2687 = !DILocation(line: 1332, column: 18, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1331, column: 12)
!2689 = !DILocation(line: 1333, column: 23, scope: !2688)
!2690 = !DILocation(line: 1333, column: 9, scope: !2688)
!2691 = !DILocation(line: 1334, column: 9, scope: !2688)
!2692 = !DILocation(line: 1334, column: 18, scope: !2688)
!2693 = !DILocation(line: 1337, column: 9, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1337, column: 9)
!2695 = !DILocation(line: 1337, column: 18, scope: !2694)
!2696 = !DILocation(line: 1337, column: 9, scope: !2671)
!2697 = !DILocation(line: 1337, column: 28, scope: !2694)
!2698 = !DILocation(line: 1337, column: 37, scope: !2694)
!2699 = !DILocation(line: 1338, column: 9, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1338, column: 9)
!2701 = !DILocation(line: 1338, column: 18, scope: !2700)
!2702 = !DILocation(line: 1338, column: 9, scope: !2671)
!2703 = !DILocation(line: 1338, column: 28, scope: !2700)
!2704 = !DILocation(line: 1338, column: 37, scope: !2700)
!2705 = !DILocation(line: 1339, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1339, column: 9)
!2707 = !DILocation(line: 1339, column: 18, scope: !2706)
!2708 = !DILocation(line: 1339, column: 9, scope: !2671)
!2709 = !DILocation(line: 1339, column: 28, scope: !2706)
!2710 = !DILocation(line: 1339, column: 37, scope: !2706)
!2711 = !DILocation(line: 1346, column: 10, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1346, column: 9)
!2713 = !DILocation(line: 1346, column: 9, scope: !2671)
!2714 = !DILocation(line: 1346, column: 37, scope: !2712)
!2715 = !DILocation(line: 1347, column: 10, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1347, column: 9)
!2717 = !DILocation(line: 1347, column: 9, scope: !2671)
!2718 = !DILocation(line: 1347, column: 37, scope: !2716)
!2719 = !DILocation(line: 1348, column: 10, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1348, column: 9)
!2721 = !DILocation(line: 1348, column: 9, scope: !2671)
!2722 = !DILocation(line: 1348, column: 37, scope: !2720)
!2723 = !DILocation(line: 1349, column: 10, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1349, column: 9)
!2725 = !DILocation(line: 1349, column: 9, scope: !2671)
!2726 = !DILocation(line: 1349, column: 37, scope: !2724)
!2727 = !DILocation(line: 1350, column: 10, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1350, column: 9)
!2729 = !DILocation(line: 1350, column: 9, scope: !2671)
!2730 = !DILocation(line: 1350, column: 37, scope: !2728)
!2731 = !DILocation(line: 1351, column: 10, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1351, column: 9)
!2733 = !DILocation(line: 1351, column: 9, scope: !2671)
!2734 = !DILocation(line: 1351, column: 37, scope: !2732)
!2735 = !DILocation(line: 1352, column: 10, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1352, column: 9)
!2737 = !DILocation(line: 1352, column: 9, scope: !2671)
!2738 = !DILocation(line: 1352, column: 37, scope: !2736)
!2739 = !DILocation(line: 1353, column: 10, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1353, column: 9)
!2741 = !DILocation(line: 1353, column: 9, scope: !2671)
!2742 = !DILocation(line: 1353, column: 37, scope: !2740)
!2743 = !DILocation(line: 1359, column: 10, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1359, column: 9)
!2745 = !DILocation(line: 1359, column: 36, scope: !2744)
!2746 = !DILocation(line: 1359, column: 40, scope: !2744)
!2747 = !DILocation(line: 1359, column: 66, scope: !2744)
!2748 = !DILocation(line: 1360, column: 10, scope: !2744)
!2749 = !DILocation(line: 1360, column: 36, scope: !2744)
!2750 = !DILocation(line: 1360, column: 40, scope: !2744)
!2751 = !DILocation(line: 1360, column: 66, scope: !2744)
!2752 = !DILocation(line: 1361, column: 10, scope: !2744)
!2753 = !DILocation(line: 1361, column: 36, scope: !2744)
!2754 = !DILocation(line: 1361, column: 40, scope: !2744)
!2755 = !DILocation(line: 1361, column: 66, scope: !2744)
!2756 = !DILocation(line: 1362, column: 10, scope: !2744)
!2757 = !DILocation(line: 1362, column: 36, scope: !2744)
!2758 = !DILocation(line: 1362, column: 40, scope: !2744)
!2759 = !DILocation(line: 1362, column: 66, scope: !2744)
!2760 = !DILocation(line: 1363, column: 10, scope: !2744)
!2761 = !DILocation(line: 1363, column: 36, scope: !2744)
!2762 = !DILocation(line: 1363, column: 40, scope: !2744)
!2763 = !DILocation(line: 1363, column: 66, scope: !2744)
!2764 = !DILocation(line: 1364, column: 10, scope: !2744)
!2765 = !DILocation(line: 1364, column: 36, scope: !2744)
!2766 = !DILocation(line: 1364, column: 40, scope: !2744)
!2767 = !DILocation(line: 1364, column: 66, scope: !2744)
!2768 = !DILocation(line: 1365, column: 10, scope: !2744)
!2769 = !DILocation(line: 1365, column: 36, scope: !2744)
!2770 = !DILocation(line: 1365, column: 40, scope: !2744)
!2771 = !DILocation(line: 1365, column: 66, scope: !2744)
!2772 = !DILocation(line: 1366, column: 10, scope: !2744)
!2773 = !DILocation(line: 1366, column: 36, scope: !2744)
!2774 = !DILocation(line: 1366, column: 40, scope: !2744)
!2775 = !DILocation(line: 1359, column: 9, scope: !2671)
!2776 = !DILocation(line: 1367, column: 20, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1366, column: 67)
!2778 = !DILocation(line: 1367, column: 18, scope: !2777)
!2779 = !DILocation(line: 1368, column: 20, scope: !2777)
!2780 = !DILocation(line: 1368, column: 9, scope: !2777)
!2781 = !DILocation(line: 1368, column: 18, scope: !2777)
!2782 = !DILocation(line: 1369, column: 20, scope: !2777)
!2783 = !DILocation(line: 1369, column: 9, scope: !2777)
!2784 = !DILocation(line: 1369, column: 18, scope: !2777)
!2785 = !DILocation(line: 1370, column: 9, scope: !2777)
!2786 = !DILocation(line: 1370, column: 18, scope: !2777)
!2787 = !DILocation(line: 1371, column: 5, scope: !2777)
!2788 = !DILocation(line: 1373, column: 1, scope: !2671)
!2789 = distinct !DISubprogram(name: "freecid", scope: !3, file: !3, line: 1011, type: !2790, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !15, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !343}
!2792 = !{!2793}
!2793 = !DILocalVariable(name: "cid", arg: 1, scope: !2789, file: !3, line: 1011, type: !343)
!2794 = !DILocation(line: 0, scope: !2789)
!2795 = !DILocation(line: 1014, column: 13, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 1014, column: 9)
!2797 = !DILocation(line: 1014, column: 9, scope: !2789)
!2798 = !DILocation(line: 1015, column: 18, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1015, column: 13)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 1014, column: 22)
!2801 = !DILocation(line: 1015, column: 25, scope: !2799)
!2802 = !DILocation(line: 1015, column: 13, scope: !2800)
!2803 = !DILocation(line: 1016, column: 23, scope: !2799)
!2804 = !DILocation(line: 1016, column: 13, scope: !2799)
!2805 = !DILocation(line: 1017, column: 14, scope: !2800)
!2806 = !DILocation(line: 1017, column: 9, scope: !2800)
!2807 = !DILocation(line: 1018, column: 5, scope: !2800)
!2808 = !DILocation(line: 1019, column: 1, scope: !2789)
