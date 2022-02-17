; ModuleID = 'molic.ll'
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
@getmatrix.mat = internal global [4 x [4 x double]] zeroinitializer, align 16
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
@n_atab = internal global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"ATOM\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"C5M\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"C7\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"O2'\00", align 1
@res = internal global %struct.residue_t zeroinitializer, align 8
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
@atab = internal global [1000 x %struct.atom_t] zeroinitializer, align 16
@.str.49 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"initres: can't allocate res->r_resname.\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"initres: can't allocate res->r_resid.\0A\00", align 1
@init_atab.init = internal global i32 1, align 4
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
define dso_local %struct.molecule_t* @getpdb(i8* %0, i8* %1) #0 {
  %3 = icmp ne i8* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4, %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %30

9:                                                ; preds = %4
  %10 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %29

14:                                               ; preds = %9
  %15 = call i32 @get_mytaskid()
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %0)
  br label %23

23:                                               ; preds = %20, %17
  %.0 = phi i32 [ -1, %20 ], [ 0, %17 ]
  br label %24

24:                                               ; preds = %23, %14
  %.01 = phi %struct._IO_FILE* [ %18, %23 ], [ null, %14 ]
  %.1 = phi i32 [ %.0, %23 ], [ 0, %14 ]
  call void @reducerror(i32 %.1)
  %25 = call i32 @get_mytaskid()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %24
  %.12 = phi %struct._IO_FILE* [ null, %27 ], [ %.01, %24 ]
  br label %29

29:                                               ; preds = %28, %12
  %.2 = phi %struct._IO_FILE* [ %.12, %28 ], [ %13, %12 ]
  br label %30

30:                                               ; preds = %29, %7
  %.3 = phi %struct._IO_FILE* [ %.2, %29 ], [ %8, %7 ]
  %31 = call %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %.3, i8* %1)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %33 = icmp ne %struct._IO_FILE* %.3, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = call i32 @get_mytaskid()
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @fclose(%struct._IO_FILE* %.3)
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %39, %30
  ret %struct.molecule_t* %31
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_mytaskid() #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local void @reducerror(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.molecule_t* @fgetpdb(%struct._IO_FILE* %0, i8* %1) #0 {
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
  %15 = icmp eq i8* %1, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %17, align 16
  br label %21

18:                                               ; preds = %2
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %20 = call i8* @strcpy(i8* %19, i8* %1) #8
  br label %21

21:                                               ; preds = %18, %16
  call void @initres()
  call void @init_atab()
  %22 = call %struct.molecule_t* @newmolecule()
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %23, align 1
  store i32 0, i32* @n_atab, align 4
  %24 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0
  %25 = call i8* @ggets(i8* %24, i32 82, %struct._IO_FILE* %0)
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %.lr.ph52

.lr.ph52:                                         ; preds = %21
  br label %28

._crit_edge53:                                    ; preds = %411
  %split54 = phi i32 [ %.4, %411 ]
  br label %27

27:                                               ; preds = %._crit_edge53, %21
  %.016.lcssa = phi i32 [ %split54, %._crit_edge53 ], [ 0, %21 ]
  br label %414

28:                                               ; preds = %.lr.ph52, %411
  %.0449 = phi i32 [ 0, %.lr.ph52 ], [ %.3, %411 ]
  %.0747 = phi i32 [ 0, %.lr.ph52 ], [ %.29, %411 ]
  %.01645 = phi i32 [ 0, %.lr.ph52 ], [ %.4, %411 ]
  %29 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0
  %30 = call i64 @strlen(i8* %29) #7
  %31 = trunc i64 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %32, 80
  br i1 %33, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %28
  br label %34

34:                                               ; preds = %.lr.ph, %36
  %indvars.iv25 = phi i64 [ %32, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %35 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 %indvars.iv25
  store i8 32, i8* %35, align 1
  br label %36

36:                                               ; preds = %34
  %indvars.iv.next = add nsw i64 %indvars.iv25, 1
  %37 = icmp slt i64 %indvars.iv.next, 80
  br i1 %37, label %34, label %._crit_edge

._crit_edge:                                      ; preds = %36
  br label %38

38:                                               ; preds = %._crit_edge, %28
  %39 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 80
  store i8 0, i8* %39, align 16
  %40 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0
  %41 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %40, i64 4) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0
  %45 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %44, i64 6) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %384

47:                                               ; preds = %43, %38
  %.0450 = phi i32 [ %.0449, %43 ], [ %.0449, %38 ]
  %.0748 = phi i32 [ %.0747, %43 ], [ %.0747, %38 ]
  %.01646 = phi i32 [ %.01645, %43 ], [ %.01645, %38 ]
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %49 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 12
  %50 = call i8* @strncpy(i8* %48, i8* %49, i64 4) #8
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 4
  store i8 0, i8* %51, align 1
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %.lr.ph29, label %67

.lr.ph29:                                         ; preds = %47
  br label %55

55:                                               ; preds = %.lr.ph29, %63
  %.01027 = phi i8* [ %52, %.lr.ph29 ], [ %64, %63 ]
  %.01226 = phi i8* [ %52, %.lr.ph29 ], [ %.113, %63 ]
  %56 = load i8, i8* %.01027, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 32
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8, i8* %.01027, align 1
  %61 = getelementptr inbounds i8, i8* %.01226, i32 1
  store i8 %60, i8* %.01226, align 1
  br label %62

62:                                               ; preds = %59, %55
  %.113 = phi i8* [ %61, %59 ], [ %.01226, %55 ]
  br label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds i8, i8* %.01027, i32 1
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %55, label %._crit_edge30

._crit_edge30:                                    ; preds = %63
  %split = phi i8* [ %.113, %63 ]
  br label %67

67:                                               ; preds = %._crit_edge30, %47
  %.012.lcssa = phi i8* [ %split, %._crit_edge30 ], [ %52, %47 ]
  store i8 0, i8* %.012.lcssa, align 1
  %68 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 49
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 50
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 51
  br i1 %81, label %82, label %105

82:                                               ; preds = %77, %72, %67
  %83 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %86 = call i64 @strlen(i8* %85) #7
  %87 = trunc i64 %86 to i32
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 0, %89
  br i1 %90, label %.lr.ph33, label %101

.lr.ph33:                                         ; preds = %82
  br label %91

91:                                               ; preds = %.lr.ph33, %95
  %indvars.iv2331 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next24, %95 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv2331, 1
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %indvars.iv.next24
  %93 = load i8, i8* %92, align 1
  %94 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %indvars.iv2331
  store i8 %93, i8* %94, align 1
  br label %95

95:                                               ; preds = %91
  %96 = call i64 @strlen(i8* %85) #7
  %97 = trunc i64 %96 to i32
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %indvars.iv.next24, %99
  br i1 %100, label %91, label %._crit_edge34

._crit_edge34:                                    ; preds = %95
  %split35 = phi i64 [ %indvars.iv.next24, %95 ]
  br label %101

101:                                              ; preds = %._crit_edge34, %82
  %.1.lcssa.wide = phi i64 [ %split35, %._crit_edge34 ], [ 0, %82 ]
  %102 = trunc i64 %.1.lcssa.wide to i32
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 %103
  store i8 %84, i8* %104, align 1
  br label %105

105:                                              ; preds = %101, %77
  %106 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 42
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2
  store i8 39, i8* %111, align 1
  br label %112

112:                                              ; preds = %110, %105
  %113 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #7
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %118 = call i8* @strcpy(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0)) #8
  br label %119

119:                                              ; preds = %116, %112
  %120 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %121 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 17
  %122 = call i8* @strncpy(i8* %120, i8* %121, i64 3) #8
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 3
  store i8 0, i8* %123, align 1
  %124 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %.lr.ph39, label %139

.lr.ph39:                                         ; preds = %119
  br label %127

127:                                              ; preds = %.lr.ph39, %135
  %.11137 = phi i8* [ %124, %.lr.ph39 ], [ %136, %135 ]
  %.21436 = phi i8* [ %124, %.lr.ph39 ], [ %.315, %135 ]
  %128 = load i8, i8* %.11137, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 32
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i8, i8* %.11137, align 1
  %133 = getelementptr inbounds i8, i8* %.21436, i32 1
  store i8 %132, i8* %.21436, align 1
  br label %134

134:                                              ; preds = %131, %127
  %.315 = phi i8* [ %133, %131 ], [ %.21436, %127 ]
  br label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds i8, i8* %.11137, i32 1
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %127, label %._crit_edge40

._crit_edge40:                                    ; preds = %135
  %split41 = phi i8* [ %.315, %135 ]
  br label %139

139:                                              ; preds = %._crit_edge40, %119
  %.214.lcssa = phi i8* [ %split41, %._crit_edge40 ], [ %124, %119 ]
  store i8 0, i8* %.214.lcssa, align 1
  %140 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #7
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  store i32 2, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 7), align 4
  br label %144

144:                                              ; preds = %143, %139
  %145 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0)) #7
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 7), align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %153 = call i8* @strcpy(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0)) #8
  br label %154

154:                                              ; preds = %151, %148, %144
  %155 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #7
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %160 = call i8* @strcpy(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #8
  br label %161

161:                                              ; preds = %158, %154
  %162 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0)) #7
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %167 = call i8* @strcpy(i8* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #8
  br label %168

168:                                              ; preds = %165, %161
  %169 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #7
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %174 = call i8* @strcpy(i8* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #8
  br label %175

175:                                              ; preds = %172, %168
  %176 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0)) #7
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %181 = call i8* @strcpy(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #8
  br label %182

182:                                              ; preds = %179, %175
  %183 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %184 = call i32 @strcmp(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0)) #7
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %188 = call i8* @strcpy(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #8
  br label %189

189:                                              ; preds = %186, %182
  %190 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %191 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 21
  %192 = call i8* @strncpy(i8* %190, i8* %191, i64 6) #8
  %193 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 6
  store i8 0, i8* %193, align 1
  %194 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 21
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 22
  %198 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32* %11) #8
  %199 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %200 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 30
  %201 = call i8* @strncpy(i8* %199, i8* %200, i64 8) #8
  %202 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8
  store i8 0, i8* %202, align 1
  %203 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %204 = call double @atof(i8* %203) #7
  %205 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %206 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 38
  %207 = call i8* @strncpy(i8* %205, i8* %206, i64 8) #8
  %208 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8
  store i8 0, i8* %208, align 1
  %209 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %210 = call double @atof(i8* %209) #7
  %211 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %212 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 46
  %213 = call i8* @strncpy(i8* %211, i8* %212, i64 8) #8
  %214 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 8
  store i8 0, i8* %214, align 1
  %215 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %216 = call double @atof(i8* %215) #7
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %218 = call i8* @strstr(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #7
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %189
  %221 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 54
  %222 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), double* %12, double* %13) #8
  br label %272

223:                                              ; preds = %189
  %224 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %225 = call i32 @strncmp(i8* %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i64 1) #7
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  store double 1.200000e+00, double* %13, align 8
  br label %259

228:                                              ; preds = %223
  %229 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %230 = call i32 @strncmp(i8* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1) #7
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  store double 1.700000e+00, double* %13, align 8
  br label %258

233:                                              ; preds = %228
  %234 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %235 = call i32 @strncmp(i8* %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i64 1) #7
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  store double 1.550000e+00, double* %13, align 8
  br label %257

238:                                              ; preds = %233
  %239 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %240 = call i32 @strncmp(i8* %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), i64 1) #7
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  store double 1.500000e+00, double* %13, align 8
  br label %256

243:                                              ; preds = %238
  %244 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %245 = call i32 @strncmp(i8* %244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i64 1) #7
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  store double 1.800000e+00, double* %13, align 8
  br label %255

248:                                              ; preds = %243
  %249 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %250 = call i32 @strncmp(i8* %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i64 1) #7
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %248
  store double 1.850000e+00, double* %13, align 8
  br label %254

253:                                              ; preds = %248
  store double 1.700000e+00, double* %13, align 8
  br label %254

254:                                              ; preds = %253, %252
  br label %255

255:                                              ; preds = %254, %247
  br label %256

256:                                              ; preds = %255, %242
  br label %257

257:                                              ; preds = %256, %237
  br label %258

258:                                              ; preds = %257, %232
  br label %259

259:                                              ; preds = %258, %227
  store double 0.000000e+00, double* %12, align 8
  %260 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %261 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 54
  %262 = call i8* @strncpy(i8* %260, i8* %261, i64 6) #8
  %263 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6
  store i8 0, i8* %263, align 1
  %264 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %265 = call double @atof(i8* %264) #7
  %266 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %267 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 60
  %268 = call i8* @strncpy(i8* %266, i8* %267, i64 6) #8
  %269 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 6
  store i8 0, i8* %269, align 1
  %270 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %271 = call double @atof(i8* %270) #7
  br label %272

272:                                              ; preds = %259, %220
  %.06 = phi double [ 1.000000e+00, %220 ], [ %265, %259 ]
  %.03 = phi double [ 0.000000e+00, %220 ], [ %271, %259 ]
  %273 = icmp ne i32 %196, %.0450
  br i1 %273, label %274, label %336

274:                                              ; preds = %272
  %275 = load i32, i32* @n_atab, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %274
  %278 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %279 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %280 = call i8* @strcpy(i8* %278, i8* %279) #8
  %281 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %282 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %283 = call i8* @strcpy(i8* %281, i8* %282) #8
  store i32 %.01646, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8
  %284 = load i32, i32* @n_atab, align 4
  store i32 %284, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  call void @makebonds(%struct.residue_t* @res)
  %285 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %286 = call i32 @addresidue(%struct.molecule_t* %22, i8* %285, %struct.residue_t* @res)
  call void @initres()
  store i32 0, i32* @n_atab, align 4
  br label %287

287:                                              ; preds = %277, %274
  %288 = add nsw i32 %.0748, 1
  %289 = icmp eq i32 %196, 32
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %292 = call i32 (i8*, i8*, ...) @sprintf(i8* %291, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %288) #8
  br label %297

293:                                              ; preds = %287
  %294 = trunc i32 %196 to i8
  %295 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  store i8 %294, i8* %295, align 1
  %296 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 1
  store i8 0, i8* %296, align 1
  br label %297

297:                                              ; preds = %293, %290
  %298 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %299 = call i32 @addstrand(%struct.molecule_t* %22, i8* %298)
  %300 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %22, i32 0, i32 2
  %301 = load %struct.strand_t*, %struct.strand_t** %300, align 8
  %302 = icmp ne %struct.strand_t* %301, null
  br i1 %302, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %297
  br label %303

303:                                              ; preds = %.lr.ph44, %311
  %.042 = phi %struct.strand_t* [ %301, %.lr.ph44 ], [ %313, %311 ]
  %304 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.042, i32 0, i32 0
  %305 = load i8*, i8** %304, align 8
  %306 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %307 = call i32 @strcmp(i8* %305, i8* %306) #7
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %303
  %.0.lcssa20 = phi %struct.strand_t* [ %.042, %303 ]
  br label %315

310:                                              ; preds = %303
  br label %311

311:                                              ; preds = %310
  %312 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.042, i32 0, i32 4
  %313 = load %struct.strand_t*, %struct.strand_t** %312, align 8
  %314 = icmp ne %struct.strand_t* %313, null
  br i1 %314, label %303, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %311
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %297
  br label %315

315:                                              ; preds = %.loopexit, %309
  %.01 = phi %struct.strand_t* [ %.0.lcssa20, %309 ], [ null, %.loopexit ]
  %316 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 6
  store i32 10000, i32* %316, align 4
  %317 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = mul i64 %319, 128
  %321 = call noalias i8* @malloc(i64 %320) #8
  %322 = bitcast i8* %321 to %struct.residue_t**
  %323 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7
  store %struct.residue_t** %322, %struct.residue_t*** %323, align 8
  %324 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01, i32 0, i32 7
  %325 = load %struct.residue_t**, %struct.residue_t*** %324, align 8
  %326 = icmp eq %struct.residue_t** %325, null
  br i1 %326, label %327, label %328

327:                                              ; preds = %315
  br label %328

328:                                              ; preds = %327, %315
  %329 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %330 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %331 = call i8* @strcpy(i8* %329, i8* %330) #8
  %332 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %333 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %334 = call i8* @strcpy(i8* %332, i8* %333) #8
  %335 = load i32, i32* %11, align 4
  br label %360

336:                                              ; preds = %272
  %337 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %338 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %339 = load i32, i32* %11, align 4
  %340 = call i32 @isnewres(i8* %337, i8* %338, i32 %.01646, i32 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %359

342:                                              ; preds = %336
  %343 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %344 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %345 = call i8* @strcpy(i8* %343, i8* %344) #8
  %346 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %347 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %348 = call i8* @strcpy(i8* %346, i8* %347) #8
  store i32 %.01646, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8
  %349 = load i32, i32* @n_atab, align 4
  store i32 %349, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  call void @makebonds(%struct.residue_t* @res)
  %350 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %351 = call i32 @addresidue(%struct.molecule_t* %22, i8* %350, %struct.residue_t* @res)
  call void @initres()
  %352 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %353 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %354 = call i8* @strcpy(i8* %352, i8* %353) #8
  %355 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %356 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %357 = call i8* @strcpy(i8* %355, i8* %356) #8
  %358 = load i32, i32* %11, align 4
  store i32 0, i32* @n_atab, align 4
  br label %359

359:                                              ; preds = %342, %336
  %.117 = phi i32 [ %358, %342 ], [ %.01646, %336 ]
  br label %360

360:                                              ; preds = %359, %328
  %.218 = phi i32 [ %335, %328 ], [ %.117, %359 ]
  %.18 = phi i32 [ %288, %328 ], [ %.0748, %359 ]
  %.15 = phi i32 [ %196, %328 ], [ %.0450, %359 ]
  %361 = load i32, i32* @n_atab, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 %362
  call void @NAB_initatom(%struct.atom_t* %363, i32 0)
  %364 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %367 = call i8* @strcpy(i8* %365, i8* %366) #8
  %368 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 2
  store i32 0, i32* %368, align 8
  %369 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 5
  store %struct.residue_t* null, %struct.residue_t** %369, align 8
  %370 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 17
  %371 = getelementptr inbounds [3 x double], [3 x double]* %370, i64 0, i64 0
  store double %204, double* %371, align 8
  %372 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 17
  %373 = getelementptr inbounds [3 x double], [3 x double]* %372, i64 0, i64 1
  store double %210, double* %373, align 8
  %374 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 17
  %375 = getelementptr inbounds [3 x double], [3 x double]* %374, i64 0, i64 2
  store double %216, double* %375, align 8
  %376 = load double, double* %12, align 8
  %377 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 6
  store double %376, double* %377, align 8
  %378 = load double, double* %13, align 8
  %379 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 7
  store double %378, double* %379, align 8
  %380 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 9
  store double %.06, double* %380, align 8
  %381 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %363, i32 0, i32 8
  store double %.03, double* %381, align 8
  %382 = load i32, i32* @n_atab, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* @n_atab, align 4
  br label %411

384:                                              ; preds = %43
  %385 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0
  %386 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* %385, i64 3) #7
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %404

388:                                              ; preds = %384
  %389 = load i32, i32* @n_atab, align 4
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %401

391:                                              ; preds = %388
  %392 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %393 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %394 = call i8* @strcpy(i8* %392, i8* %393) #8
  %395 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %396 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %397 = call i8* @strcpy(i8* %395, i8* %396) #8
  store i32 %.01645, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8
  %398 = load i32, i32* @n_atab, align 4
  store i32 %398, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  call void @makebonds(%struct.residue_t* @res)
  %399 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %400 = call i32 @addresidue(%struct.molecule_t* %22, i8* %399, %struct.residue_t* @res)
  call void @initres()
  store i32 0, i32* @n_atab, align 4
  br label %401

401:                                              ; preds = %391, %388
  %402 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %402, align 1
  %403 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %403, align 1
  br label %410

404:                                              ; preds = %384
  %405 = getelementptr inbounds [82 x i8], [82 x i8]* %3, i64 0, i64 0
  %406 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* %405, i64 3) #7
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %404
  %.016.lcssa21 = phi i32 [ %.01645, %404 ]
  br label %414

409:                                              ; preds = %404
  br label %410

410:                                              ; preds = %409, %401
  %.319 = phi i32 [ 0, %401 ], [ %.01645, %409 ]
  %.2 = phi i32 [ 0, %401 ], [ %.0449, %409 ]
  br label %411

411:                                              ; preds = %410, %360
  %.4 = phi i32 [ %.218, %360 ], [ %.319, %410 ]
  %.29 = phi i32 [ %.18, %360 ], [ %.0747, %410 ]
  %.3 = phi i32 [ %.15, %360 ], [ %.2, %410 ]
  %412 = call i8* @ggets(i8* %24, i32 82, %struct._IO_FILE* %0)
  %413 = icmp eq i8* %412, null
  br i1 %413, label %._crit_edge53, label %28

414:                                              ; preds = %408, %27
  %.01622 = phi i32 [ %.016.lcssa21, %408 ], [ %.016.lcssa, %27 ]
  %415 = load i32, i32* @n_atab, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %427

417:                                              ; preds = %414
  %418 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %419 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %420 = call i8* @strcpy(i8* %418, i8* %419) #8
  %421 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %422 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %423 = call i8* @strcpy(i8* %421, i8* %422) #8
  store i32 %.01622, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 1), align 8
  %424 = load i32, i32* @n_atab, align 4
  store i32 %424, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  call void @makebonds(%struct.residue_t* @res)
  %425 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %426 = call i32 @addresidue(%struct.molecule_t* %22, i8* %425, %struct.residue_t* @res)
  call void @initres()
  br label %427

427:                                              ; preds = %417, %414
  %428 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %22, i32 0, i32 5
  store i32 0, i32* %428, align 8
  ret %struct.molecule_t* %22
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local [4 x [4 x double]]* @getmatrix(i8* %0) #0 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false)
  %3 = icmp eq i8* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i8, i8* %0, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4, %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %65

11:                                               ; preds = %4
  %12 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %23

16:                                               ; preds = %11
  %17 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %0)
  br label %65

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %14
  %.0 = phi %struct._IO_FILE* [ %17, %22 ], [ %15, %14 ]
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %26 = call i8* @fgets(i8* %25, i32 256, %struct._IO_FILE* %.0)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %.lr.ph.lr.ph, label %.outer..loopexit_crit_edge

.lr.ph.lr.ph:                                     ; preds = %24
  br label %.lr.ph

.outer:                                           ; preds = %55
  %indvars.iv = phi i64 [ %indvars.iv.next, %55 ]
  %28 = call i8* @fgets(i8* %25, i32 256, %struct._IO_FILE* %.0)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %.lr.ph, label %.outer..outer..loopexit_crit_edge_crit_edge

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %indvars.iv8 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv, %.outer ]
  br label %33

30:                                               ; preds = %33
  %31 = call i8* @fgets(i8* %25, i32 256, %struct._IO_FILE* %.0)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %..loopexit_crit_edge

33:                                               ; preds = %.lr.ph, %30
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 35
  br i1 %37, label %30, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %40 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv8
  %41 = getelementptr inbounds [4 x double], [4 x double]* %40, i64 0, i64 0
  %42 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv8
  %43 = getelementptr inbounds [4 x double], [4 x double]* %42, i64 0, i64 1
  %44 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv8
  %45 = getelementptr inbounds [4 x double], [4 x double]* %44, i64 0, i64 2
  %46 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @getmatrix.mat, i64 0, i64 %indvars.iv8
  %47 = getelementptr inbounds [4 x double], [4 x double]* %46, i64 0, i64 3
  %48 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double* %41, double* %43, double* %45, double* %47) #8
  %49 = icmp ne i32 %48, 4
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %.01.ph.lcssa.wide = phi i64 [ %indvars.iv8, %38 ]
  %.lcssa = phi i32 [ %48, %38 ]
  %51 = trunc i64 %.01.ph.lcssa.wide to i32
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = add nsw i32 %51, 1
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %53, i32 %.lcssa)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false)
  br label %65

55:                                               ; preds = %38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1
  %exitcond = icmp eq i64 %indvars.iv8, 3
  br i1 %exitcond, label %56, label %.outer

56:                                               ; preds = %55
  %57 = trunc i64 4 to i32
  br label %59

.outer..outer..loopexit_crit_edge_crit_edge:      ; preds = %.outer
  %split9 = phi i64 [ %indvars.iv, %.outer ]
  br label %.outer..loopexit_crit_edge

.outer..loopexit_crit_edge:                       ; preds = %.outer..outer..loopexit_crit_edge_crit_edge, %24
  %split = phi i64 [ %split9, %.outer..outer..loopexit_crit_edge_crit_edge ], [ 0, %24 ]
  br label %.loopexit

..loopexit_crit_edge:                             ; preds = %30
  %split7 = phi i64 [ %indvars.iv8, %30 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.outer..loopexit_crit_edge
  %.01.ph.lcssa6.wide = phi i64 [ %split7, %..loopexit_crit_edge ], [ %split, %.outer..loopexit_crit_edge ]
  %58 = trunc i64 %.01.ph.lcssa6.wide to i32
  br label %59

59:                                               ; preds = %.loopexit, %56
  %.12 = phi i32 [ %57, %56 ], [ %58, %.loopexit ]
  %60 = icmp ne i32 %.12, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %.12)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*), i8 0, i64 128, i1 false)
  br label %65

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %61, %50, %19, %8
  %.1 = phi %struct._IO_FILE* [ null, %8 ], [ %17, %19 ], [ %.0, %50 ], [ %.0, %61 ], [ %.0, %64 ]
  %66 = icmp ne %struct._IO_FILE* %.1, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %69 = icmp ne %struct._IO_FILE* %.1, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @fclose(%struct._IO_FILE* %.1)
  br label %72

72:                                               ; preds = %70, %67, %65
  %73 = bitcast i8* bitcast ([4 x [4 x double]]* @getmatrix.mat to i8*) to [4 x [4 x double]]*
  ret [4 x [4 x double]]* %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putpdb(i8* %0, %struct.molecule_t* %1, i8* %2) #0 {
  %4 = icmp ne %struct.molecule_t* %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = call i32 @get_mytaskid()
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %5
  br label %36

12:                                               ; preds = %3
  %13 = call i32 @get_mytaskid()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %26

20:                                               ; preds = %15
  %21 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0)
  br label %25

25:                                               ; preds = %23, %20
  %.01 = phi i32 [ -1, %23 ], [ 0, %20 ]
  br label %26

26:                                               ; preds = %25, %18
  %.02 = phi %struct._IO_FILE* [ %21, %25 ], [ %19, %18 ]
  %.1 = phi i32 [ %.01, %25 ], [ 0, %18 ]
  %27 = icmp sge i32 %.1, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  call void @fputpdb(%struct._IO_FILE* %.02, %struct.molecule_t* %1, i8* %2)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = icmp ne %struct._IO_FILE* %.02, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @fclose(%struct._IO_FILE* %.02)
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %33, %26
  br label %35

35:                                               ; preds = %34, %12
  %.2 = phi i32 [ %.1, %34 ], [ 0, %12 ]
  call void @reducerror(i32 %.2)
  br label %36

36:                                               ; preds = %35, %11
  ret i32 0
}

declare dso_local i32 @rt_errormsg_s(i32, i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fputpdb(%struct._IO_FILE* %0, %struct.molecule_t* %1, i8* %2) #0 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [7 x i8], align 1
  %7 = alloca [256 x i8], align 16
  %8 = icmp ne %struct.molecule_t* %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0))
  br label %252

12:                                               ; preds = %3
  %13 = icmp ne %struct._IO_FILE* %0, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0))
  br label %252

17:                                               ; preds = %12
  %18 = icmp eq i8* %2, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %20, align 16
  br label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %23 = call i8* @strncpy(i8* %22, i8* %2, i64 255) #8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %21, %19
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %27 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)) #7
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)) #7
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0)) #7
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0)) #7
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %43 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #7
  %44 = icmp ne i8* %43, null
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0)) #7
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %51 = call i8* @strstr(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #7
  %52 = icmp ne i8* %51, null
  %53 = zext i1 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %25
  br label %56

56:                                               ; preds = %55, %25
  %.0 = phi i32 [ 0, %55 ], [ %49, %25 ]
  %57 = call %struct.cid_t* @initcid(i32 %.0, i32 %53, %struct.molecule_t* %1)
  %58 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2
  %59 = load %struct.strand_t*, %struct.strand_t** %58, align 8
  %60 = icmp ne %struct.strand_t* %59, null
  br i1 %60, label %.lr.ph24, label %251

.lr.ph24:                                         ; preds = %56
  br label %61

61:                                               ; preds = %.lr.ph24, %247
  %.0222 = phi i32 [ 0, %.lr.ph24 ], [ %.1.lcssa, %247 ]
  %.0421 = phi i32 [ 0, %.lr.ph24 ], [ %.15.lcssa, %247 ]
  %.0620 = phi %struct.strand_t* [ %59, %.lr.ph24 ], [ %249, %247 ]
  %62 = call i32 @nextcid(%struct.cid_t* %57, i32 %.0, i32 %53, %struct.strand_t* %.0620)
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0620, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 0, %66
  br i1 %67, label %.lr.ph16, label %245

.lr.ph16:                                         ; preds = %61
  br label %68

68:                                               ; preds = %.lr.ph16, %240
  %.114 = phi i32 [ %.0222, %.lr.ph16 ], [ %241, %240 ]
  %.1513 = phi i32 [ %.0421, %.lr.ph16 ], [ %.2.lcssa, %240 ]
  %indvars.iv711 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next8, %240 ]
  %69 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0620, i32 0, i32 7
  %70 = load %struct.residue_t**, %struct.residue_t*** %69, align 8
  %71 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %70, i64 %indvars.iv711
  %72 = load %struct.residue_t*, %struct.residue_t** %71, align 8
  %73 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %74 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  br label %81

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i8* [ %79, %77 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0), %80 ]
  %83 = call i8* @strcpy(i8* %73, i8* %82) #8
  %84 = icmp ne i32 %37, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  call void @mk_brook_rname(i8* %86, %struct.residue_t* %72)
  br label %97

87:                                               ; preds = %81
  %88 = icmp ne i32 %41, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %87
  %90 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  call void @mk_wwpdb_rname(i8* %90, %struct.residue_t* %72)
  br label %96

91:                                               ; preds = %87
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %93 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @strcpy(i8* %92, i8* %94) #8
  br label %96

96:                                               ; preds = %91, %89
  br label %97

97:                                               ; preds = %96, %85
  %98 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i32 0, i32 15
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 0, %100
  br i1 %101, label %.lr.ph, label %239

.lr.ph:                                           ; preds = %97
  br label %102

102:                                              ; preds = %.lr.ph, %235
  %.210 = phi i32 [ %.1513, %.lr.ph ], [ %103, %235 ]
  %indvars.iv9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %235 ]
  %103 = add nsw i32 %.210, 1
  %104 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %72, i32 0, i32 17
  %105 = load %struct.atom_t*, %struct.atom_t** %104, align 8
  %106 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %105, i64 %indvars.iv9
  %107 = icmp ne i32 %37, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %110 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  call void @mk_brook_aname(i8* %109, i8* %111, i8* %112)
  br label %126

113:                                              ; preds = %102
  %114 = icmp ne i32 %41, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %113
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %117 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  call void @mk_wwpdb_aname(i8* %116, i8* %118, i8* %119)
  br label %125

120:                                              ; preds = %113
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %122 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strcpy(i8* %121, i8* %123) #8
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %108
  %127 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.62, i64 0, i64 0)) #7
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = icmp ne i32 %45, 0
  br i1 %131, label %132, label %172

132:                                              ; preds = %130, %126
  %133 = icmp ne i32 %45, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = add nsw i32 %.114, 1
  br label %139

136:                                              ; preds = %132
  %137 = add nuw nsw i64 %indvars.iv711, 1
  %138 = trunc i64 %137 to i32
  br label %139

139:                                              ; preds = %136, %134
  %140 = phi i32 [ %135, %134 ], [ %138, %136 ]
  %141 = icmp slt i32 %103, 100000
  br i1 %141, label %142, label %156

142:                                              ; preds = %139
  %143 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %144 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %145 = sext i8 %63 to i32
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %147 = getelementptr inbounds [3 x double], [3 x double]* %146, i64 0, i64 0
  %148 = load double, double* %147, align 8
  %149 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %150 = getelementptr inbounds [3 x double], [3 x double]* %149, i64 0, i64 1
  %151 = load double, double* %150, align 8
  %152 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %153 = getelementptr inbounds [3 x double], [3 x double]* %152, i64 0, i64 2
  %154 = load double, double* %153, align 8
  %155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.63, i64 0, i64 0), i32 %103, i8* %143, i8* %144, i32 %145, i32 %140, double %148, double %151, double %154)
  br label %171

156:                                              ; preds = %139
  %157 = srem i32 %103, 100000
  %158 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %159 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %160 = sext i8 %63 to i32
  %161 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %162 = getelementptr inbounds [3 x double], [3 x double]* %161, i64 0, i64 0
  %163 = load double, double* %162, align 8
  %164 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %165 = getelementptr inbounds [3 x double], [3 x double]* %164, i64 0, i64 1
  %166 = load double, double* %165, align 8
  %167 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %168 = getelementptr inbounds [3 x double], [3 x double]* %167, i64 0, i64 2
  %169 = load double, double* %168, align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i32 %157, i8* %158, i8* %159, i32 %160, i32 %140, double %163, double %166, double %169)
  br label %171

171:                                              ; preds = %156, %142
  br label %204

172:                                              ; preds = %130
  %173 = icmp slt i32 %103, 100000
  br i1 %173, label %174, label %188

174:                                              ; preds = %172
  %175 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %176 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %177 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %178 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %179 = getelementptr inbounds [3 x double], [3 x double]* %178, i64 0, i64 0
  %180 = load double, double* %179, align 8
  %181 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %182 = getelementptr inbounds [3 x double], [3 x double]* %181, i64 0, i64 1
  %183 = load double, double* %182, align 8
  %184 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %185 = getelementptr inbounds [3 x double], [3 x double]* %184, i64 0, i64 2
  %186 = load double, double* %185, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.65, i64 0, i64 0), i32 %103, i8* %175, i8* %176, i8* %177, double %180, double %183, double %186)
  br label %203

188:                                              ; preds = %172
  %189 = srem i32 %103, 100000
  %190 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %191 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %192 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %193 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %194 = getelementptr inbounds [3 x double], [3 x double]* %193, i64 0, i64 0
  %195 = load double, double* %194, align 8
  %196 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %197 = getelementptr inbounds [3 x double], [3 x double]* %196, i64 0, i64 1
  %198 = load double, double* %197, align 8
  %199 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 17
  %200 = getelementptr inbounds [3 x double], [3 x double]* %199, i64 0, i64 2
  %201 = load double, double* %200, align 8
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.66, i64 0, i64 0), i32 %189, i8* %190, i8* %191, i8* %192, double %195, double %198, double %201)
  br label %203

203:                                              ; preds = %188, %174
  br label %204

204:                                              ; preds = %203, %171
  %205 = icmp ne i32 %29, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %204
  %207 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 6
  %208 = load double, double* %207, align 8
  %209 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 7
  %210 = load double, double* %209, align 8
  %211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i64 0, i64 0), double %208, double %210)
  br label %221

212:                                              ; preds = %204
  %213 = icmp ne i32 %33, 0
  br i1 %213, label %220, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 9
  %216 = load double, double* %215, align 8
  %217 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 8
  %218 = load double, double* %217, align 8
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), double %216, double %218)
  br label %220

220:                                              ; preds = %214, %212
  br label %221

221:                                              ; preds = %220, %206
  %222 = icmp ne i32 %37, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %221
  %224 = icmp ne i32 %41, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %223, %221
  %226 = icmp ne i32 %29, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %225
  %228 = icmp ne i32 %33, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %106, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), i8* %231)
  br label %233

233:                                              ; preds = %229, %227, %225, %223
  %234 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1
  %236 = load i32, i32* %98, align 8
  %237 = sext i32 %236 to i64
  %238 = icmp slt i64 %indvars.iv.next, %237
  br i1 %238, label %102, label %._crit_edge

._crit_edge:                                      ; preds = %235
  %split = phi i32 [ %103, %235 ]
  br label %239

239:                                              ; preds = %._crit_edge, %97
  %indvars.iv712 = phi i64 [ %indvars.iv711, %._crit_edge ], [ %indvars.iv711, %97 ]
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.1513, %97 ]
  br label %240

240:                                              ; preds = %239
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv712, 1
  %241 = add nsw i32 %.114, 1
  %242 = load i32, i32* %64, align 8
  %243 = sext i32 %242 to i64
  %244 = icmp slt i64 %indvars.iv.next8, %243
  br i1 %244, label %68, label %._crit_edge17

._crit_edge17:                                    ; preds = %240
  %split18 = phi i32 [ %.2.lcssa, %240 ]
  %split19 = phi i32 [ %241, %240 ]
  br label %245

245:                                              ; preds = %._crit_edge17, %61
  %.15.lcssa = phi i32 [ %split18, %._crit_edge17 ], [ %.0421, %61 ]
  %.1.lcssa = phi i32 [ %split19, %._crit_edge17 ], [ %.0222, %61 ]
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0620, i32 0, i32 4
  %249 = load %struct.strand_t*, %struct.strand_t** %248, align 8
  %250 = icmp ne %struct.strand_t* %249, null
  br i1 %250, label %61, label %._crit_edge25

._crit_edge25:                                    ; preds = %247
  br label %251

251:                                              ; preds = %._crit_edge25, %56
  call void @freecid(%struct.cid_t* %57)
  br label %252

252:                                              ; preds = %251, %14, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putcif(i8* %0, i8* %1, %struct.molecule_t* %2) #0 {
  %4 = icmp ne %struct.molecule_t* %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %25

8:                                                ; preds = %3
  %9 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %19

13:                                               ; preds = %8
  %14 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0)
  call void @exit(i32 1) #9
  unreachable

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %11
  %.01 = phi %struct._IO_FILE* [ %14, %18 ], [ %12, %11 ]
  call void @fputcif(%struct._IO_FILE* %.01, i8* %1, %struct.molecule_t* %2)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = icmp ne %struct._IO_FILE* %.01, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @fclose(%struct._IO_FILE* %.01)
  br label %24

24:                                               ; preds = %22, %19
  br label %25

25:                                               ; preds = %24, %5
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fputcif(%struct._IO_FILE* %0, i8* %1, %struct.molecule_t* %2) #0 {
  %4 = icmp ne %struct.molecule_t* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.158, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1389, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #9
  unreachable

7:                                                ; preds = %5
  %8 = icmp ne %struct._IO_FILE* %0, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.160, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), i32 1390, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.fputcif, i64 0, i64 0)) #9
  unreachable

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  %15 = select i1 %14, i32 65, i32 46
  %16 = trunc i32 %15 to i8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.161, i64 0, i64 0), i8* %1)
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.162, i64 0, i64 0))
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.163, i64 0, i64 0), i8* %1)
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.164, i64 0, i64 0))
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.165, i64 0, i64 0))
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.166, i64 0, i64 0))
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.167, i64 0, i64 0))
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.168, i64 0, i64 0))
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.169, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 2
  %27 = load %struct.strand_t*, %struct.strand_t** %26, align 8
  %28 = icmp ne %struct.strand_t* %27, null
  br i1 %28, label %.lr.ph28, label %88

.lr.ph28:                                         ; preds = %11
  br label %29

29:                                               ; preds = %.lr.ph28, %84
  %.026 = phi %struct.strand_t* [ %27, %.lr.ph28 ], [ %86, %84 ]
  %.0125 = phi i8 [ %16, %.lr.ph28 ], [ %.1, %84 ]
  %.0224 = phi i32 [ 0, %.lr.ph28 ], [ %30, %84 ]
  %.0423 = phi i32 [ 0, %.lr.ph28 ], [ %.15.lcssa, %84 ]
  %.0722 = phi i32 [ 0, %.lr.ph28 ], [ %.18.lcssa, %84 ]
  %30 = add nuw nsw i32 %.0224, 1
  %31 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 0, %33
  br i1 %34, label %.lr.ph18, label %77

.lr.ph18:                                         ; preds = %29
  br label %35

35:                                               ; preds = %.lr.ph18, %72
  %.1516 = phi i32 [ %.0423, %.lr.ph18 ], [ %73, %72 ]
  %.1815 = phi i32 [ %.0722, %.lr.ph18 ], [ %.2.lcssa, %72 ]
  %indvars.iv913 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next10, %72 ]
  %36 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 7
  %37 = load %struct.residue_t**, %struct.residue_t*** %36, align 8
  %38 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %37, i64 %indvars.iv913
  %39 = load %struct.residue_t*, %struct.residue_t** %38, align 8
  %40 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 0, %42
  br i1 %43, label %.lr.ph, label %71

.lr.ph:                                           ; preds = %35
  br label %44

44:                                               ; preds = %.lr.ph, %67
  %.212 = phi i32 [ %.1815, %.lr.ph ], [ %45, %67 ]
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %67 ]
  %45 = add nsw i32 %.212, 1
  %46 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 17
  %47 = load %struct.atom_t*, %struct.atom_t** %46, align 8
  %48 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %47, i64 %indvars.iv11
  %49 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %39, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = sext i8 %.0125 to i32
  %54 = add nsw i32 %.1516, 1
  %55 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 17
  %56 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 0, i64 0
  %57 = load double, double* %56, align 8
  %58 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 17
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 1
  %60 = load double, double* %59, align 8
  %61 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %48, i32 0, i32 17
  %62 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 0, i64 2
  %63 = load double, double* %62, align 8
  %64 = add nuw nsw i64 %indvars.iv913, 1
  %65 = trunc i64 %64 to i32
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.170, i64 0, i64 0), i32 %45, i8* %50, i8* %52, i32 %53, i32 %54, double %57, double %60, double %63, i32 %30, i32 %65)
  br label %67

67:                                               ; preds = %44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1
  %68 = load i32, i32* %40, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %indvars.iv.next, %69
  br i1 %70, label %44, label %._crit_edge

._crit_edge:                                      ; preds = %67
  %split = phi i32 [ %45, %67 ]
  br label %71

71:                                               ; preds = %._crit_edge, %35
  %indvars.iv914 = phi i64 [ %indvars.iv913, %._crit_edge ], [ %indvars.iv913, %35 ]
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ %.1815, %35 ]
  br label %72

72:                                               ; preds = %71
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv914, 1
  %73 = add nsw i32 %.1516, 1
  %74 = load i32, i32* %31, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %indvars.iv.next10, %75
  br i1 %76, label %35, label %._crit_edge19

._crit_edge19:                                    ; preds = %72
  %split20 = phi i32 [ %.2.lcssa, %72 ]
  %split21 = phi i32 [ %73, %72 ]
  br label %77

77:                                               ; preds = %._crit_edge19, %29
  %.18.lcssa = phi i32 [ %split20, %._crit_edge19 ], [ %.0722, %29 ]
  %.15.lcssa = phi i32 [ %split21, %._crit_edge19 ], [ %.0423, %29 ]
  %78 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = add i8 %.0125, 1
  br label %83

83:                                               ; preds = %81, %77
  %.1 = phi i8 [ %82, %81 ], [ %.0125, %77 ]
  br label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 4
  %86 = load %struct.strand_t*, %struct.strand_t** %85, align 8
  %87 = icmp ne %struct.strand_t* %86, null
  br i1 %87, label %29, label %._crit_edge29

._crit_edge29:                                    ; preds = %84
  br label %88

88:                                               ; preds = %._crit_edge29, %11
  %89 = zext i1 %14 to i64
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putbnd(i8* %0, %struct.molecule_t* %1) #0 {
  %3 = icmp ne %struct.molecule_t* %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %170

7:                                                ; preds = %2
  %8 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %0)
  call void @exit(i32 1) #9
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2
  %14 = load %struct.strand_t*, %struct.strand_t** %13, align 8
  %15 = icmp ne %struct.strand_t* %14, null
  br i1 %15, label %.lr.ph, label %24

.lr.ph:                                           ; preds = %12
  br label %16

16:                                               ; preds = %.lr.ph, %20
  %.0318 = phi %struct.strand_t* [ %14, %.lr.ph ], [ %22, %20 ]
  %.0517 = phi i32 [ 0, %.lr.ph ], [ %19, %20 ]
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0318, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %.0517, %18
  br label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.0318, i32 0, i32 4
  %22 = load %struct.strand_t*, %struct.strand_t** %21, align 8
  %23 = icmp ne %struct.strand_t* %22, null
  br i1 %23, label %16, label %._crit_edge

._crit_edge:                                      ; preds = %20
  %split = phi i32 [ %19, %20 ]
  br label %24

24:                                               ; preds = %._crit_edge, %12
  %.05.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %12 ]
  %25 = sext i32 %.05.lcssa to i64
  %26 = mul i64 %25, 4
  %27 = call noalias i8* @malloc(i64 %26) #8
  %28 = bitcast i8* %27 to i32*
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @rt_errormsg_s(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %164

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2
  %34 = load %struct.strand_t*, %struct.strand_t** %33, align 8
  %35 = icmp ne %struct.strand_t* %34, null
  br i1 %35, label %.lr.ph29, label %78

.lr.ph29:                                         ; preds = %32
  br label %36

36:                                               ; preds = %.lr.ph29, %74
  %.127 = phi %struct.strand_t* [ %34, %.lr.ph29 ], [ %76, %74 ]
  %.1626 = phi i32 [ 0, %.lr.ph29 ], [ %.27, %74 ]
  %.0825 = phi i32 [ 0, %.lr.ph29 ], [ %.210, %74 ]
  %37 = sext i32 %.1626 to i64
  %38 = getelementptr inbounds i32, i32* %28, i64 %37
  store i32 %.0825, i32* %38, align 4
  %39 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 7
  %44 = load %struct.residue_t**, %struct.residue_t*** %43, align 8
  %45 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %44, i64 0
  %46 = load %struct.residue_t*, %struct.residue_t** %45, align 8
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %46, i32 0, i32 15
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %.0825, %48
  %50 = sext i32 %.1626 to i64
  %51 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 1, %53
  br i1 %54, label %.lr.ph22, label %69

.lr.ph22:                                         ; preds = %42
  br label %55

55:                                               ; preds = %.lr.ph22, %65
  %.1920 = phi i32 [ %49, %.lr.ph22 ], [ %64, %65 ]
  %indvars.iv19 = phi i64 [ 1, %.lr.ph22 ], [ %indvars.iv.next, %65 ]
  %56 = add nsw i64 %50, %indvars.iv19
  %57 = getelementptr inbounds i32, i32* %28, i64 %56
  store i32 %.1920, i32* %57, align 4
  %58 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 7
  %59 = load %struct.residue_t**, %struct.residue_t*** %58, align 8
  %60 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %59, i64 %indvars.iv19
  %61 = load %struct.residue_t*, %struct.residue_t** %60, align 8
  %62 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %61, i32 0, i32 15
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %.1920, %63
  br label %65

65:                                               ; preds = %55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv19, 1
  %66 = load i32, i32* %51, align 8
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %indvars.iv.next, %67
  br i1 %68, label %55, label %._crit_edge23

._crit_edge23:                                    ; preds = %65
  %split24 = phi i32 [ %64, %65 ]
  br label %69

69:                                               ; preds = %._crit_edge23, %42
  %.19.lcssa = phi i32 [ %split24, %._crit_edge23 ], [ %49, %42 ]
  %70 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %.1626, %71
  br label %73

73:                                               ; preds = %69, %36
  %.210 = phi i32 [ %.19.lcssa, %69 ], [ %.0825, %36 ]
  %.27 = phi i32 [ %72, %69 ], [ %.1626, %36 ]
  br label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.127, i32 0, i32 4
  %76 = load %struct.strand_t*, %struct.strand_t** %75, align 8
  %77 = icmp ne %struct.strand_t* %76, null
  br i1 %77, label %36, label %._crit_edge30

._crit_edge30:                                    ; preds = %74
  br label %78

78:                                               ; preds = %._crit_edge30, %32
  %79 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2
  %80 = load %struct.strand_t*, %struct.strand_t** %79, align 8
  %81 = icmp ne %struct.strand_t* %80, null
  br i1 %81, label %.lr.ph48, label %163

.lr.ph48:                                         ; preds = %78
  br label %82

82:                                               ; preds = %.lr.ph48, %159
  %.246 = phi %struct.strand_t* [ %80, %.lr.ph48 ], [ %161, %159 ]
  %.345 = phi i32 [ 0, %.lr.ph48 ], [ %158, %159 ]
  %83 = sext i32 %.345 to i64
  %84 = sext i32 %.345 to i64
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.246, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 0, %87
  br i1 %88, label %.lr.ph43, label %155

.lr.ph43:                                         ; preds = %82
  br label %89

89:                                               ; preds = %.lr.ph43, %151
  %indvars.iv1540 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next16, %151 ]
  %90 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.246, i32 0, i32 7
  %91 = load %struct.residue_t**, %struct.residue_t*** %90, align 8
  %92 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %91, i64 %indvars.iv1540
  %93 = load %struct.residue_t*, %struct.residue_t** %92, align 8
  %94 = add nsw i64 %indvars.iv1540, %83
  %95 = getelementptr inbounds i32, i32* %28, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %93, i32 0, i32 11
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 0, %99
  br i1 %100, label %.lr.ph33, label %119

.lr.ph33:                                         ; preds = %89
  br label %101

101:                                              ; preds = %.lr.ph33, %115
  %indvars.iv1331 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next14, %115 ]
  %102 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %93, i32 0, i32 12
  %103 = load [2 x i32]*, [2 x i32]** %102, align 8
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i64 %indvars.iv1331
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %104, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %96
  %108 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %93, i32 0, i32 12
  %109 = load [2 x i32]*, [2 x i32]** %108, align 8
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %109, i64 %indvars.iv1331
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %110, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %96
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %101
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv1331, 1
  %116 = load i32, i32* %97, align 8
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %indvars.iv.next14, %117
  br i1 %118, label %101, label %._crit_edge34

._crit_edge34:                                    ; preds = %115
  br label %119

119:                                              ; preds = %._crit_edge34, %89
  %120 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %93, i32 0, i32 10
  %121 = load %struct.extbond_t*, %struct.extbond_t** %120, align 8
  %122 = icmp ne %struct.extbond_t* %121, null
  br i1 %122, label %.lr.ph38, label %150

.lr.ph38:                                         ; preds = %119
  br label %123

123:                                              ; preds = %.lr.ph38, %146
  %.0135 = phi %struct.extbond_t* [ %121, %.lr.ph38 ], [ %148, %146 ]
  %124 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0135, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nuw nsw i64 %indvars.iv1540, 1
  %127 = sext i32 %125 to i64
  %128 = icmp slt i64 %127, %126
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %146

130:                                              ; preds = %123
  %131 = add nsw i64 %84, %indvars.iv1540
  %132 = getelementptr inbounds i32, i32* %28, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %.345, %125
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %28, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0135, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, %133
  %142 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0135, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %138
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %130, %129
  %.0136 = phi %struct.extbond_t* [ %.0135, %130 ], [ %.0135, %129 ]
  %147 = getelementptr inbounds %struct.extbond_t, %struct.extbond_t* %.0136, i32 0, i32 0
  %148 = load %struct.extbond_t*, %struct.extbond_t** %147, align 8
  %149 = icmp ne %struct.extbond_t* %148, null
  br i1 %149, label %123, label %._crit_edge39

._crit_edge39:                                    ; preds = %146
  br label %150

150:                                              ; preds = %._crit_edge39, %119
  %indvars.iv1541 = phi i64 [ %indvars.iv1540, %._crit_edge39 ], [ %indvars.iv1540, %119 ]
  br label %151

151:                                              ; preds = %150
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv1541, 1
  %152 = load i32, i32* %85, align 8
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %indvars.iv.next16, %153
  br i1 %154, label %89, label %._crit_edge44

._crit_edge44:                                    ; preds = %151
  br label %155

155:                                              ; preds = %._crit_edge44, %82
  %156 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.246, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %.345, %157
  br label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.246, i32 0, i32 4
  %161 = load %struct.strand_t*, %struct.strand_t** %160, align 8
  %162 = icmp ne %struct.strand_t* %161, null
  br i1 %162, label %82, label %._crit_edge49

._crit_edge49:                                    ; preds = %159
  br label %163

163:                                              ; preds = %._crit_edge49, %78
  br label %164

164:                                              ; preds = %163, %30
  %.04 = phi i32 [ 1, %30 ], [ 0, %163 ]
  %165 = icmp ne i32* %28, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %164
  %167 = bitcast i32* %28 to i8*
  call void @free(i8* %167) #8
  br label %168

168:                                              ; preds = %166, %164
  %169 = call i32 @fclose(%struct._IO_FILE* %8)
  br label %170

170:                                              ; preds = %168, %4
  %.0 = phi i32 [ %.04, %168 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putdist(i8* %0, %struct.molecule_t* %1, i8* %2, i8* %3) #0 {
  %5 = icmp ne %struct.molecule_t* %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  br label %205

9:                                                ; preds = %4
  call void @select_atoms(%struct.molecule_t* %1, i8* %2)
  %10 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2
  %11 = load %struct.strand_t*, %struct.strand_t** %10, align 8
  %12 = icmp ne %struct.strand_t* %11, null
  br i1 %12, label %.lr.ph36, label %80

.lr.ph36:                                         ; preds = %9
  br label %13

13:                                               ; preds = %.lr.ph36, %76
  %.01134 = phi %struct.strand_t* [ %11, %.lr.ph36 ], [ %78, %76 ]
  %14 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01134, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -3
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01134, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %20, i32 2, i32 0
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01134, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01134, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 0, %27
  br i1 %28, label %.lr.ph32, label %74

.lr.ph32:                                         ; preds = %13
  br label %29

29:                                               ; preds = %.lr.ph32, %70
  %indvars.iv30 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next, %70 ]
  %30 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01134, i32 0, i32 7
  %31 = load %struct.residue_t**, %struct.residue_t*** %30, align 8
  %32 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %31, i64 %indvars.iv30
  %33 = load %struct.residue_t*, %struct.residue_t** %32, align 8
  %34 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, -3
  store i32 %36, i32* %34, align 8
  %37 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %40, i32 2, i32 0
  %42 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 8
  %45 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 17
  %46 = load %struct.atom_t*, %struct.atom_t** %45, align 8
  %47 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %33, i32 0, i32 15
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 0, %48
  br i1 %49, label %.lr.ph, label %68

.lr.ph:                                           ; preds = %29
  br label %50

50:                                               ; preds = %.lr.ph, %63
  %.0329 = phi i32 [ 0, %.lr.ph ], [ %64, %63 ]
  %.01528 = phi %struct.atom_t* [ %46, %.lr.ph ], [ %65, %63 ]
  %51 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01528, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, -3
  store i32 %53, i32* %51, align 8
  %54 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01528, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 2, i32 0
  %60 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01528, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %50
  %64 = add nuw nsw i32 %.0329, 1
  %65 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.01528, i32 1
  %66 = load i32, i32* %47, align 8
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %50, label %._crit_edge

._crit_edge:                                      ; preds = %63
  br label %68

68:                                               ; preds = %._crit_edge, %29
  %69 = zext i1 %40 to i64
  br label %70

70:                                               ; preds = %68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv30, 1
  %71 = load i32, i32* %25, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %indvars.iv.next, %72
  br i1 %73, label %29, label %._crit_edge33

._crit_edge33:                                    ; preds = %70
  br label %74

74:                                               ; preds = %._crit_edge33, %13
  %75 = zext i1 %20 to i64
  br label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.01134, i32 0, i32 4
  %78 = load %struct.strand_t*, %struct.strand_t** %77, align 8
  %79 = icmp ne %struct.strand_t* %78, null
  br i1 %79, label %13, label %._crit_edge37

._crit_edge37:                                    ; preds = %76
  br label %80

80:                                               ; preds = %._crit_edge37, %9
  call void @select_atoms(%struct.molecule_t* %1, i8* %3)
  %81 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2
  %82 = load %struct.strand_t*, %struct.strand_t** %81, align 8
  %83 = icmp ne %struct.strand_t* %82, null
  br i1 %83, label %.lr.ph41, label %92

.lr.ph41:                                         ; preds = %80
  br label %84

84:                                               ; preds = %.lr.ph41, %88
  %.11239 = phi %struct.strand_t* [ %82, %.lr.ph41 ], [ %90, %88 ]
  %.01438 = phi i32 [ 0, %.lr.ph41 ], [ %87, %88 ]
  %85 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.11239, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %.01438, %86
  br label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.11239, i32 0, i32 4
  %90 = load %struct.strand_t*, %struct.strand_t** %89, align 8
  %91 = icmp ne %struct.strand_t* %90, null
  br i1 %91, label %84, label %._crit_edge42

._crit_edge42:                                    ; preds = %88
  %split = phi i32 [ %87, %88 ]
  br label %92

92:                                               ; preds = %._crit_edge42, %80
  %.014.lcssa = phi i32 [ %split, %._crit_edge42 ], [ 0, %80 ]
  %93 = sext i32 %.014.lcssa to i64
  %94 = mul i64 %93, 8
  %95 = call noalias i8* @malloc(i64 %94) #8
  %96 = bitcast i8* %95 to %struct.residue_t**
  %97 = icmp eq %struct.residue_t** %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %200

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %1, i32 0, i32 2
  %103 = load %struct.strand_t*, %struct.strand_t** %102, align 8
  %104 = icmp ne %struct.strand_t* %103, null
  br i1 %104, label %.lr.ph52, label %127

.lr.ph52:                                         ; preds = %101
  br label %105

105:                                              ; preds = %.lr.ph52, %123
  %.0550 = phi i32 [ 0, %.lr.ph52 ], [ %122, %123 ]
  %.21349 = phi %struct.strand_t* [ %103, %.lr.ph52 ], [ %125, %123 ]
  %106 = sext i32 %.0550 to i64
  %107 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21349, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 0, %109
  br i1 %110, label %.lr.ph46, label %121

.lr.ph46:                                         ; preds = %105
  br label %111

111:                                              ; preds = %.lr.ph46, %117
  %indvars.iv1644 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next17, %117 ]
  %indvars.iv1843 = phi i64 [ %106, %.lr.ph46 ], [ %indvars.iv.next19, %117 ]
  %112 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21349, i32 0, i32 7
  %113 = load %struct.residue_t**, %struct.residue_t*** %112, align 8
  %114 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %113, i64 %indvars.iv1644
  %115 = load %struct.residue_t*, %struct.residue_t** %114, align 8
  %indvars.iv.next19 = add nsw i64 %indvars.iv1843, 1
  %116 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %96, i64 %indvars.iv1843
  store %struct.residue_t* %115, %struct.residue_t** %116, align 8
  br label %117

117:                                              ; preds = %111
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv1644, 1
  %118 = load i32, i32* %107, align 8
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %indvars.iv.next17, %119
  br i1 %120, label %111, label %._crit_edge47

._crit_edge47:                                    ; preds = %117
  %split48 = phi i64 [ %indvars.iv.next19, %117 ]
  br label %121

121:                                              ; preds = %._crit_edge47, %105
  %.16.lcssa.wide = phi i64 [ %split48, %._crit_edge47 ], [ %106, %105 ]
  %122 = trunc i64 %.16.lcssa.wide to i32
  br label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.21349, i32 0, i32 4
  %125 = load %struct.strand_t*, %struct.strand_t** %124, align 8
  %126 = icmp ne %struct.strand_t* %125, null
  br i1 %126, label %105, label %._crit_edge53

._crit_edge53:                                    ; preds = %123
  br label %127

127:                                              ; preds = %._crit_edge53, %101
  %128 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %129 = icmp eq %struct._IO_FILE* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %0)
  br label %200

133:                                              ; preds = %127
  %134 = sext i32 %.014.lcssa to i64
  %135 = icmp slt i64 0, %134
  br i1 %135, label %.lr.ph78, label %199

.lr.ph78:                                         ; preds = %133
  br label %136

136:                                              ; preds = %.lr.ph78, %197
  %.0176 = phi i32 [ 0, %.lr.ph78 ], [ %.1.lcssa, %197 ]
  %indvars.iv2674 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next27, %197 ]
  %137 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %96, i64 %indvars.iv2674
  %138 = load %struct.residue_t*, %struct.residue_t** %137, align 8
  %139 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %138, i32 0, i32 15
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 0, %141
  br i1 %142, label %.lr.ph71, label %196

.lr.ph71:                                         ; preds = %136
  br label %143

143:                                              ; preds = %.lr.ph71, %192
  %.169 = phi i32 [ %.0176, %.lr.ph71 ], [ %.5, %192 ]
  %indvars.iv2468 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next25, %192 ]
  %144 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %138, i32 0, i32 17
  %145 = load %struct.atom_t*, %struct.atom_t** %144, align 8
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %145, i64 %indvars.iv2468
  %147 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = and i32 2, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %191

151:                                              ; preds = %143
  %wide.trip.count = zext i32 %.014.lcssa to i64
  %exitcond60 = icmp ne i64 0, %wide.trip.count
  br i1 %exitcond60, label %.lr.ph65, label %190

.lr.ph65:                                         ; preds = %151
  br label %152

152:                                              ; preds = %.lr.ph65, %189
  %.263 = phi i32 [ %.169, %.lr.ph65 ], [ %.3.lcssa, %189 ]
  %indvars.iv2261 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next23, %189 ]
  %153 = getelementptr inbounds %struct.residue_t*, %struct.residue_t** %96, i64 %indvars.iv2261
  %154 = load %struct.residue_t*, %struct.residue_t** %153, align 8
  %155 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %154, i32 0, i32 15
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 0, %157
  br i1 %158, label %.lr.ph57, label %188

.lr.ph57:                                         ; preds = %152
  br label %159

159:                                              ; preds = %.lr.ph57, %184
  %.355 = phi i32 [ %.263, %.lr.ph57 ], [ %.4, %184 ]
  %indvars.iv2054 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next21, %184 ]
  %160 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %154, i32 0, i32 17
  %161 = load %struct.atom_t*, %struct.atom_t** %160, align 8
  %162 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %161, i64 %indvars.iv2054
  %163 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 1, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %159
  %168 = add nuw nsw i64 %indvars.iv2674, 1
  %169 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %138, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %146, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = add nuw nsw i64 %indvars.iv2261, 1
  %174 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %154, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %162, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call double @dist(%struct.atom_t* %146, %struct.atom_t* %162)
  %179 = trunc i64 %173 to i32
  %180 = trunc i64 %168 to i32
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 %180, i8* %170, i8* %172, i32 %179, i8* %175, i8* %177, double %178)
  %182 = add nsw i32 %.355, 1
  br label %183

183:                                              ; preds = %167, %159
  %.4 = phi i32 [ %182, %167 ], [ %.355, %159 ]
  br label %184

184:                                              ; preds = %183
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv2054, 1
  %185 = load i32, i32* %155, align 8
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %indvars.iv.next21, %186
  br i1 %187, label %159, label %._crit_edge58

._crit_edge58:                                    ; preds = %184
  %split59 = phi i32 [ %.4, %184 ]
  br label %188

188:                                              ; preds = %._crit_edge58, %152
  %indvars.iv2262 = phi i64 [ %indvars.iv2261, %._crit_edge58 ], [ %indvars.iv2261, %152 ]
  %.3.lcssa = phi i32 [ %split59, %._crit_edge58 ], [ %.263, %152 ]
  br label %189

189:                                              ; preds = %188
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv2262, 1
  %exitcond = icmp ne i64 %indvars.iv.next23, %wide.trip.count
  br i1 %exitcond, label %152, label %._crit_edge66

._crit_edge66:                                    ; preds = %189
  %split67 = phi i32 [ %.3.lcssa, %189 ]
  br label %190

190:                                              ; preds = %._crit_edge66, %151
  %.2.lcssa = phi i32 [ %split67, %._crit_edge66 ], [ %.169, %151 ]
  br label %191

191:                                              ; preds = %190, %143
  %.5 = phi i32 [ %.2.lcssa, %190 ], [ %.169, %143 ]
  br label %192

192:                                              ; preds = %191
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv2468, 1
  %193 = load i32, i32* %139, align 8
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %indvars.iv.next25, %194
  br i1 %195, label %143, label %._crit_edge72

._crit_edge72:                                    ; preds = %192
  %split73 = phi i32 [ %.5, %192 ]
  br label %196

196:                                              ; preds = %._crit_edge72, %136
  %indvars.iv2675 = phi i64 [ %indvars.iv2674, %._crit_edge72 ], [ %indvars.iv2674, %136 ]
  %.1.lcssa = phi i32 [ %split73, %._crit_edge72 ], [ %.0176, %136 ]
  br label %197

197:                                              ; preds = %196
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv2675, 1
  %198 = icmp slt i64 %indvars.iv.next27, %134
  br i1 %198, label %136, label %._crit_edge79

._crit_edge79:                                    ; preds = %197
  %split80 = phi i32 [ %.1.lcssa, %197 ]
  br label %199

199:                                              ; preds = %._crit_edge79, %133
  %.01.lcssa = phi i32 [ %split80, %._crit_edge79 ], [ 0, %133 ]
  br label %200

200:                                              ; preds = %199, %130, %98
  %.6 = phi i32 [ 0, %98 ], [ 0, %130 ], [ %.01.lcssa, %199 ]
  %201 = icmp ne %struct.residue_t** %96, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %200
  %203 = bitcast %struct.residue_t** %96 to i8*
  call void @free(i8* %203) #8
  br label %204

204:                                              ; preds = %202, %200
  br label %205

205:                                              ; preds = %204, %6
  %.0 = phi i32 [ %.6, %204 ], [ 0, %6 ]
  ret i32 %.0
}

declare dso_local void @select_atoms(%struct.molecule_t*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal double @dist(%struct.atom_t* %0, %struct.atom_t* %1) #0 {
  %3 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17
  %4 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i32 0, i32 17
  %7 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %8 = load double, double* %7, align 8
  %9 = fsub double %5, %8
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17
  %11 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 1
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i32 0, i32 17
  %14 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0, i64 1
  %15 = load double, double* %14, align 8
  %16 = fsub double %12, %15
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %0, i32 0, i32 17
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 2
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %1, i32 0, i32 17
  %21 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 2
  %22 = load double, double* %21, align 8
  %23 = fsub double %19, %22
  %24 = fmul double %9, %9
  %25 = fmul double %16, %16
  %26 = fadd double %24, %25
  %27 = fmul double %23, %23
  %28 = fadd double %26, %27
  %29 = call double @sqrt(double %28) #8
  ret double %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @putmatrix(i8* %0, [4 x double]* %1) #0 {
  %3 = icmp eq i8* %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i8, i8* %0, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4, %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  br label %36

11:                                               ; preds = %4
  %12 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %23

16:                                               ; preds = %11
  %17 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %0)
  br label %36

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %14
  %.02 = phi %struct._IO_FILE* [ %17, %22 ], [ %15, %14 ]
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %34
  %indvars.iv48 = phi i64 [ 0, %24 ], [ %indvars.iv.next5, %34 ]
  br label %26

26:                                               ; preds = %25, %31
  %indvars.iv7 = phi i64 [ 0, %25 ], [ %indvars.iv.next, %31 ]
  %27 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 %indvars.iv48
  %28 = getelementptr inbounds [4 x double], [4 x double]* %27, i64 0, i64 %indvars.iv7
  %29 = load double, double* %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.02, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double %29)
  br label %31

31:                                               ; preds = %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %26, label %32

32:                                               ; preds = %31
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.02, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond6 = icmp ne i64 %indvars.iv.next5, 4
  br i1 %exitcond6, label %25, label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35, %19, %8
  %.1 = phi %struct._IO_FILE* [ null, %8 ], [ %17, %19 ], [ %.02, %35 ]
  %.0 = phi i32 [ 1, %8 ], [ 1, %19 ], [ 0, %35 ]
  %37 = icmp ne %struct._IO_FILE* %.1, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = icmp ne %struct._IO_FILE* %.1, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @fclose(%struct._IO_FILE* %.1)
  br label %43

43:                                               ; preds = %41, %38, %36
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initres() #0 {
  call void @NAB_initres(%struct.residue_t* @res, i32 0)
  %1 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = call noalias i8* @malloc(i64 8) #8
  store i8* %4, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 4), align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = call noalias i8* @malloc(i64 8) #8
  store i8* %15, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 5), align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i32, i32* @n_atab, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 15), align 8
  store %struct.atom_t* getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %struct.atom_t** getelementptr inbounds (%struct.residue_t, %struct.residue_t* @res, i32 0, i32 17), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_atab() #0 {
  %1 = load i32, i32* @init_atab.init, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %24

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %20
  %.03 = phi i32 [ 0, %4 ], [ %21, %20 ]
  %.012 = phi %struct.atom_t* [ getelementptr inbounds ([1000 x %struct.atom_t], [1000 x %struct.atom_t]* @atab, i64 0, i64 0), %4 ], [ %22, %20 ]
  %6 = call noalias i8* @malloc(i64 8) #8
  %7 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.012, i32 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.012, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.012, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.012, i32 0, i32 1
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.012, i32 0, i32 10
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.012, i32 0, i32 16
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %.03, 1
  %22 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %.012, i32 1
  %exitcond = icmp ne i32 %21, 1000
  br i1 %exitcond, label %5, label %23

23:                                               ; preds = %20
  store i32 0, i32* @init_atab.init, align 4
  br label %24

24:                                               ; preds = %23, %3
  ret void
}

declare dso_local %struct.molecule_t* @newmolecule() #2

declare dso_local i8* @ggets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makebonds(%struct.residue_t* %0) #0 {
  %2 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %3 = load i32, i32* %2, align 8
  %4 = sext i32 %3 to i64
  %5 = icmp slt i64 0, %4
  br i1 %5, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %1
  br label %6

6:                                                ; preds = %.lr.ph, %11
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ]
  %7 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %8 = load %struct.atom_t*, %struct.atom_t** %7, align 8
  %9 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %8, i64 %indvars.iv10
  %10 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %9, i32 0, i32 3
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 1
  %12 = load i32, i32* %2, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %indvars.iv.next, %13
  br i1 %14, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %11
  br label %15

15:                                               ; preds = %._crit_edge, %1
  %16 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 0, %19
  br i1 %20, label %.lr.ph25, label %194

.lr.ph25:                                         ; preds = %15
  br label %21

21:                                               ; preds = %.lr.ph25, %188
  %22 = phi i64 [ 1, %.lr.ph25 ], [ %189, %188 ]
  %indvars.iv423 = phi i32 [ 1, %.lr.ph25 ], [ %indvars.iv.next5, %188 ]
  %indvars.iv821 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next9, %188 ]
  %23 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %24 = load %struct.atom_t*, %struct.atom_t** %23, align 8
  %25 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %24, i64 %indvars.iv821
  %26 = call i16** @__ctype_b_loc() #10
  %27 = load i16*, i16** %26, align 8
  %28 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, i16* %27, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 2048
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %21
  %39 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 72
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 104
  br label %52

52:                                               ; preds = %45, %38
  %53 = phi i1 [ true, %38 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  br label %70

55:                                               ; preds = %21
  %56 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 72
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 104
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i1 [ true, %55 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %67, %52
  %.03 = phi i32 [ %54, %52 ], [ %69, %67 ]
  %71 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 15
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %22, %73
  br i1 %74, label %.lr.ph19, label %187

.lr.ph19:                                         ; preds = %70
  br label %75

75:                                               ; preds = %.lr.ph19, %183
  %indvars.iv611 = phi i64 [ %22, %.lr.ph19 ], [ %indvars.iv.next7, %183 ]
  %76 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %0, i32 0, i32 17
  %77 = load %struct.atom_t*, %struct.atom_t** %76, align 8
  %78 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %77, i64 %indvars.iv611
  %79 = call i16** @__ctype_b_loc() #10
  %80 = load i16*, i16** %79, align 8
  %81 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %80, i64 %85
  %87 = load i16, i16* %86, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 2048
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 72
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 104
  br label %105

105:                                              ; preds = %98, %91
  %106 = phi i1 [ true, %91 ], [ %104, %98 ]
  %107 = zext i1 %106 to i32
  br label %123

108:                                              ; preds = %75
  %109 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 72
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 104
  br label %120

120:                                              ; preds = %114, %108
  %121 = phi i1 [ true, %108 ], [ %119, %114 ]
  %122 = zext i1 %121 to i32
  br label %123

123:                                              ; preds = %120, %105
  %.0 = phi i32 [ %107, %105 ], [ %122, %120 ]
  %124 = call double @dist(%struct.atom_t* %25, %struct.atom_t* %78)
  %125 = icmp ne i32 %.03, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = icmp ne i32 %.0, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %126, %123
  %indvars.iv612 = phi i64 [ %indvars.iv611, %126 ], [ %indvars.iv611, %123 ]
  %129 = fcmp ole double %124, 1.200000e+00
  br i1 %129, label %130, label %154

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %138, label %153

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 4
  %140 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %139, i64 0, i64 %143
  %145 = trunc i64 %indvars.iv612 to i32
  store i32 %145, i32* %144, align 4
  %146 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 4
  %147 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %146, i64 0, i64 %150
  %152 = trunc i64 %indvars.iv821 to i32
  store i32 %152, i32* %151, align 4
  br label %153

153:                                              ; preds = %138, %134, %130
  %indvars.iv615 = phi i64 [ %indvars.iv612, %138 ], [ %indvars.iv612, %134 ], [ %indvars.iv612, %130 ]
  br label %154

154:                                              ; preds = %153, %128
  %indvars.iv614 = phi i64 [ %indvars.iv615, %153 ], [ %indvars.iv612, %128 ]
  br label %182

155:                                              ; preds = %126
  %156 = fcmp ole double %124, 1.850000e+00
  br i1 %156, label %157, label %181

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 8
  br i1 %160, label %161, label %180

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %163, 8
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 4
  %167 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %25, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %166, i64 0, i64 %170
  %172 = trunc i64 %indvars.iv611 to i32
  store i32 %172, i32* %171, align 4
  %173 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 4
  %174 = getelementptr inbounds %struct.atom_t, %struct.atom_t* %78, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %173, i64 0, i64 %177
  %179 = trunc i64 %indvars.iv821 to i32
  store i32 %179, i32* %178, align 4
  br label %180

180:                                              ; preds = %165, %161, %157
  %indvars.iv617 = phi i64 [ %indvars.iv611, %165 ], [ %indvars.iv611, %161 ], [ %indvars.iv611, %157 ]
  br label %181

181:                                              ; preds = %180, %155
  %indvars.iv616 = phi i64 [ %indvars.iv617, %180 ], [ %indvars.iv611, %155 ]
  br label %182

182:                                              ; preds = %181, %154
  %indvars.iv613 = phi i64 [ %indvars.iv616, %181 ], [ %indvars.iv614, %154 ]
  br label %183

183:                                              ; preds = %182
  %indvars.iv.next7 = add nsw i64 %indvars.iv613, 1
  %184 = load i32, i32* %71, align 8
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %indvars.iv.next7, %185
  br i1 %186, label %75, label %._crit_edge20

._crit_edge20:                                    ; preds = %183
  br label %187

187:                                              ; preds = %._crit_edge20, %70
  %indvars.iv822 = phi i64 [ %indvars.iv821, %._crit_edge20 ], [ %indvars.iv821, %70 ]
  br label %188

188:                                              ; preds = %187
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv822, 1
  %indvars.iv.next5 = add nuw i32 %indvars.iv423, 1
  %189 = sext i32 %indvars.iv.next5 to i64
  %190 = load i32, i32* %16, align 8
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %indvars.iv.next9, %192
  br i1 %193, label %21, label %._crit_edge26

._crit_edge26:                                    ; preds = %188
  br label %194

194:                                              ; preds = %._crit_edge26, %15
  ret void
}

declare dso_local i32 @addresidue(%struct.molecule_t*, i8*, %struct.residue_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

declare dso_local i32 @addstrand(%struct.molecule_t*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isnewres(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = call i32 @strcmp(i8* %0, i8* %1) #7
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = icmp ne i32 %2, %3
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i1 [ true, %4 ], [ %8, %7 ]
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local void @NAB_initatom(%struct.atom_t*, i32) #2

declare dso_local void @NAB_initres(%struct.residue_t*, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cid_t* @initcid(i32 %0, i32 %1, %struct.molecule_t* %2) #0 {
  %4 = icmp ne i32 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %105

6:                                                ; preds = %3
  %7 = call noalias i8* @malloc(i64 16) #8
  %8 = bitcast i8* %7 to %struct.cid_t*
  %9 = icmp eq %struct.cid_t* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i64 0, i64 0))
  br label %101

13:                                               ; preds = %6
  %14 = call noalias i8* @malloc(i64 128) #8
  %15 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0))
  br label %101

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0
  store i32 65, i32* %23, align 8
  %24 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 1
  store i32 90, i32* %24, align 4
  %25 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %22
  br label %32

32:                                               ; preds = %.lr.ph, %36
  %indvars.iv5 = phi i64 [ %27, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %33 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %indvars.iv5
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %32
  %indvars.iv.next = add i64 %indvars.iv5, 1
  %37 = load i32, i32* %28, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp sle i64 %indvars.iv.next, %38
  br i1 %39, label %32, label %._crit_edge

._crit_edge:                                      ; preds = %36
  br label %40

40:                                               ; preds = %._crit_edge, %22
  %41 = icmp ne i32 %1, 0
  br i1 %41, label %42, label %100

42:                                               ; preds = %40
  %43 = icmp eq %struct.molecule_t* %2, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.73, i64 0, i64 0))
  br label %101

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.molecule_t, %struct.molecule_t* %2, i32 0, i32 2
  %49 = load %struct.strand_t*, %struct.strand_t** %48, align 8
  %50 = icmp ne %struct.strand_t* %49, null
  br i1 %50, label %.lr.ph8, label %75

.lr.ph8:                                          ; preds = %47
  br label %51

51:                                               ; preds = %.lr.ph8, %71
  %.026 = phi %struct.strand_t* [ %49, %.lr.ph8 ], [ %73, %71 ]
  %52 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strlen(i8* %53) #7
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %60, 65
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = icmp sle i32 %60, 90
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = sext i32 %60 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 1, i8* %68, align 1
  br label %69

69:                                               ; preds = %64, %62, %56
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %.026, i32 0, i32 4
  %73 = load %struct.strand_t*, %struct.strand_t** %72, align 8
  %74 = icmp ne %struct.strand_t* %73, null
  br i1 %74, label %51, label %._crit_edge9

._crit_edge9:                                     ; preds = %71
  br label %75

75:                                               ; preds = %._crit_edge9, %47
  %76 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sle i32 %77, %79
  br i1 %80, label %.lr.ph11, label %.loopexit

.lr.ph11:                                         ; preds = %75
  br label %81

81:                                               ; preds = %.lr.ph11, %92
  %82 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %99

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* %76, align 8
  %97 = load i32, i32* %78, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %81, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %92
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %75
  br label %99

99:                                               ; preds = %.loopexit, %90
  br label %100

100:                                              ; preds = %99, %40
  br label %101

101:                                              ; preds = %100, %44, %19, %10
  %.01 = phi i32 [ 1, %10 ], [ 1, %19 ], [ 1, %44 ], [ 0, %100 ]
  %102 = icmp ne i32 %.01, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  call void @freecid(%struct.cid_t* %8)
  br label %104

104:                                              ; preds = %103, %101
  %.04 = phi %struct.cid_t* [ null, %103 ], [ %8, %101 ]
  br label %105

105:                                              ; preds = %104, %5
  %.0 = phi %struct.cid_t* [ null, %5 ], [ %.04, %104 ]
  ret %struct.cid_t* %.0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextcid(%struct.cid_t* %0, i32 %1, i32 %2, %struct.strand_t* %3) #0 {
  %5 = icmp ne i32 %1, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %78

7:                                                ; preds = %4
  %8 = icmp eq %struct.cid_t* %0, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i64 0, i64 0))
  br label %78

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %78

19:                                               ; preds = %12
  %20 = icmp ne i32 %2, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* %23) #7
  %25 = icmp eq i64 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.strand_t, %struct.strand_t* %3, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 65
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = icmp sle i32 %30, 90
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  br label %78

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %21
  %37 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 1, i8* %44, align 1
  %45 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %49, %51
  br i1 %52, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %36
  br label %53

53:                                               ; preds = %.lr.ph, %64
  %54 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %71

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %48, align 8
  %69 = load i32, i32* %50, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %53, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %64
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %36
  br label %71

71:                                               ; preds = %.loopexit, %62
  br label %78

72:                                               ; preds = %19
  %73 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %71, %34, %18, %9, %6
  %.0 = phi i32 [ 32, %6 ], [ 32, %9 ], [ 32, %18 ], [ %30, %34 ], [ %38, %71 ], [ %74, %72 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_brook_rname(i8* %0, %struct.residue_t* %1) #0 {
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1, i32 0, i32 4
  %4 = load i8*, i8** %3, align 8
  %5 = call i8* @strcpy(i8* %0, i8* %4) #8
  %6 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #7
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %10

10:                                               ; preds = %8, %2
  %11 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #7
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %20

20:                                               ; preds = %18, %15
  %21 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #7
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %30

30:                                               ; preds = %28, %25
  %31 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #7
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %35

35:                                               ; preds = %33, %30
  %36 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #7
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %40

40:                                               ; preds = %38, %35
  %41 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #7
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %50

50:                                               ; preds = %48, %45
  %51 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #7
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %55

55:                                               ; preds = %53, %50
  %56 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #7
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %60

60:                                               ; preds = %58, %55
  %61 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #7
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %65

65:                                               ; preds = %63, %60
  %66 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #7
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %70

70:                                               ; preds = %68, %65
  %71 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #7
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %75

75:                                               ; preds = %73, %70
  %76 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #7
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %80

80:                                               ; preds = %78, %75
  %81 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #7
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #7
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %90

90:                                               ; preds = %88, %85
  %91 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #7
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %95

95:                                               ; preds = %93, %90
  %96 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #7
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %100

100:                                              ; preds = %98, %95
  %101 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #7
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %105

105:                                              ; preds = %103, %100
  %106 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #7
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %110

110:                                              ; preds = %108, %105
  %111 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #7
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %115

115:                                              ; preds = %113, %110
  %116 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #7
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %120

120:                                              ; preds = %118, %115
  %121 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #7
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %125

125:                                              ; preds = %123, %120
  %126 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #7
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %130

130:                                              ; preds = %128, %125
  %131 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #7
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %135

135:                                              ; preds = %133, %130
  %136 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #7
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %140

140:                                              ; preds = %138, %135
  %141 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #7
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %145

145:                                              ; preds = %143, %140
  %146 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #7
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %150

150:                                              ; preds = %148, %145
  %151 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #7
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %155

155:                                              ; preds = %153, %150
  %156 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #7
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %160

160:                                              ; preds = %158, %155
  %161 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #7
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %165

165:                                              ; preds = %163, %160
  %166 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #7
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #8
  br label %170

170:                                              ; preds = %168, %165
  %171 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #7
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #8
  br label %175

175:                                              ; preds = %173, %170
  %176 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #7
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #8
  br label %180

180:                                              ; preds = %178, %175
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_wwpdb_rname(i8* %0, %struct.residue_t* %1) #0 {
  %3 = getelementptr inbounds %struct.residue_t, %struct.residue_t* %1, i32 0, i32 4
  %4 = load i8*, i8** %3, align 8
  %5 = call i8* @strcpy(i8* %0, i8* %4) #8
  %6 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #7
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0)) #8
  br label %10

10:                                               ; preds = %8, %2
  %11 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #7
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0)) #8
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #7
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #8
  br label %20

20:                                               ; preds = %18, %15
  %21 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #7
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0)) #8
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #7
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0)) #8
  br label %30

30:                                               ; preds = %28, %25
  %31 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0)) #7
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %35

35:                                               ; preds = %33, %30
  %36 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)) #7
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #8
  br label %40

40:                                               ; preds = %38, %35
  %41 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0)) #7
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #8
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i64 0, i64 0)) #7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #8
  br label %50

50:                                               ; preds = %48, %45
  %51 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0)) #7
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #8
  br label %55

55:                                               ; preds = %53, %50
  %56 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0)) #7
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #8
  br label %60

60:                                               ; preds = %58, %55
  %61 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #7
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #8
  br label %65

65:                                               ; preds = %63, %60
  %66 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0)) #7
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #8
  br label %70

70:                                               ; preds = %68, %65
  %71 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #7
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %75

75:                                               ; preds = %73, %70
  %76 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #7
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #8
  br label %80

80:                                               ; preds = %78, %75
  %81 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0)) #7
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #8
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0)) #7
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #8
  br label %90

90:                                               ; preds = %88, %85
  %91 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #7
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #8
  br label %95

95:                                               ; preds = %93, %90
  %96 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0)) #7
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #8
  br label %100

100:                                              ; preds = %98, %95
  %101 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0)) #7
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #8
  br label %105

105:                                              ; preds = %103, %100
  %106 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0)) #7
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #8
  br label %110

110:                                              ; preds = %108, %105
  %111 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i64 0, i64 0)) #7
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0)) #8
  br label %115

115:                                              ; preds = %113, %110
  %116 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0)) #7
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #8
  br label %120

120:                                              ; preds = %118, %115
  %121 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i64 0, i64 0)) #7
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i64 0, i64 0)) #8
  br label %125

125:                                              ; preds = %123, %120
  %126 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0)) #7
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i64 0, i64 0)) #8
  br label %130

130:                                              ; preds = %128, %125
  %131 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0)) #7
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0)) #8
  br label %135

135:                                              ; preds = %133, %130
  %136 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #7
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.118, i64 0, i64 0)) #8
  br label %140

140:                                              ; preds = %138, %135
  %141 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #7
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0)) #8
  br label %145

145:                                              ; preds = %143, %140
  %146 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #7
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i64 0, i64 0)) #8
  br label %150

150:                                              ; preds = %148, %145
  %151 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #7
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %155

155:                                              ; preds = %153, %150
  %156 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i64 0, i64 0)) #7
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %160

160:                                              ; preds = %158, %155
  %161 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0)) #7
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %165

165:                                              ; preds = %163, %160
  %166 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)) #7
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)) #8
  br label %170

170:                                              ; preds = %168, %165
  %171 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)) #7
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #8
  br label %175

175:                                              ; preds = %173, %170
  %176 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #7
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0)) #8
  br label %180

180:                                              ; preds = %178, %175
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_brook_aname(i8* %0, i8* %1, i8* %2) #0 {
  %4 = getelementptr inbounds i8, i8* %0, i64 0
  store i8 32, i8* %4, align 1
  %5 = call i64 @strlen(i8* %1) #7
  %6 = icmp uge i64 %5, 4
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, i8* %1, i64 3
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 32
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, i8* %1, i64 3
  %14 = load i8, i8* %13, align 1
  %15 = getelementptr inbounds i8, i8* %0, i64 0
  store i8 %14, i8* %15, align 1
  br label %16

16:                                               ; preds = %12, %7, %3
  %17 = getelementptr inbounds i8, i8* %1, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %1, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds i8, i8* %1, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds i8, i8* %0, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 39
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 42, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %16
  %33 = getelementptr inbounds i8, i8* %0, i64 4
  store i8 0, i8* %33, align 1
  %34 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i64 2) #7
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, i8* %0, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 49
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, i8* %0, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 50
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, i8* %0, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 51
  br i1 %50, label %51, label %68

51:                                               ; preds = %46, %41, %36
  %52 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.122, i64 0, i64 0), i64 3) #7
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.123, i64 0, i64 0)
  br i1 %55, label %56, label %68

56:                                               ; preds = %54
  %57 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i64 0, i64 0)
  br i1 %57, label %58, label %68

58:                                               ; preds = %56
  %59 = icmp ne i8* %2, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0)
  br i1 %59, label %60, label %68

60:                                               ; preds = %58
  %61 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i64 0, i64 0), i64 2) #7
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60, %51
  %64 = getelementptr inbounds i8, i8* %0, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = getelementptr inbounds i8, i8* %0, i64 0
  store i8 %65, i8* %66, align 1
  %67 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 32, i8* %67, align 1
  br label %68

68:                                               ; preds = %63, %60, %58, %56, %54, %46, %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mk_wwpdb_aname(i8* %0, i8* %1, i8* %2) #0 {
  %4 = call i64 @strlen(i8* %1) #7
  %5 = icmp uge i64 %4, 4
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %1, i64 3
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 32
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i8* @strncpy(i8* %0, i8* %1, i64 5) #8
  br label %18

13:                                               ; preds = %6, %3
  %14 = getelementptr inbounds i8, i8* %0, i64 0
  store i8 32, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %0, i64 1
  %16 = call i8* @strncpy(i8* %15, i8* %1, i64 3) #8
  %17 = getelementptr inbounds i8, i8* %0, i64 4
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %13, %11
  %19 = getelementptr inbounds i8, i8* %0, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 32, i8* %24, align 1
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds i8, i8* %0, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 32, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %25
  %33 = getelementptr inbounds i8, i8* %0, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 32, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %32
  %40 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i64 4) #7
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i64 5) #8
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), i64 4) #7
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.130, i64 0, i64 0), i64 5) #8
  br label %49

49:                                               ; preds = %47, %44
  %50 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4) #7
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i64 5) #8
  br label %54

54:                                               ; preds = %52, %49
  %55 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0), i64 4) #7
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 5) #8
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i64 4) #7
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i64 0, i64 0), i64 5) #8
  br label %64

64:                                               ; preds = %62, %59
  %65 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.136, i64 0, i64 0), i64 4) #7
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.137, i64 0, i64 0), i64 5) #8
  br label %69

69:                                               ; preds = %67, %64
  %70 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i64 0, i64 0), i64 4) #7
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), i64 5) #8
  br label %74

74:                                               ; preds = %72, %69
  %75 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.140, i64 0, i64 0), i64 4) #7
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i8* @strncpy(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), i64 5) #8
  br label %79

79:                                               ; preds = %77, %74
  %80 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), i64 4) #7
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i64 4) #7
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %127

85:                                               ; preds = %82
  %86 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i64 0, i64 0), i64 4) #7
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %85
  %89 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 4) #7
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %127

91:                                               ; preds = %88
  %92 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i64 4) #7
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %91
  %95 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #7
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %127

97:                                               ; preds = %94
  %98 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.148, i64 0, i64 0), i64 4) #7
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %97
  %101 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), i64 4) #7
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.150, i64 0, i64 0), i64 4) #7
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), i64 4) #7
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %106
  %110 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i64 4) #7
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.153, i64 0, i64 0), i64 4) #7
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i64 0, i64 0), i64 4) #7
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i64 4) #7
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i64 0, i64 0), i64 4) #7
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 4) #7
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %124, %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79
  %128 = getelementptr inbounds i8, i8* %0, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = getelementptr inbounds i8, i8* %0, i64 0
  store i8 %129, i8* %130, align 1
  %131 = getelementptr inbounds i8, i8* %0, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %132, i8* %133, align 1
  %134 = getelementptr inbounds i8, i8* %0, i64 3
  %135 = load i8, i8* %134, align 1
  %136 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 %135, i8* %136, align 1
  %137 = getelementptr inbounds i8, i8* %0, i64 3
  store i8 32, i8* %137, align 1
  br label %138

138:                                              ; preds = %127, %124
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freecid(%struct.cid_t* %0) #0 {
  %2 = icmp ne %struct.cid_t* %0, null
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cid_t, %struct.cid_t* %0, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* %9) #8
  br label %10

10:                                               ; preds = %7, %3
  %11 = bitcast %struct.cid_t* %0 to i8*
  call void @free(i8* %11) #8
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
